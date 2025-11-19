void sub_10001771C(void *a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A15A0, &v10);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_1000199B4;
  v15 = v7;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100017F7C;
  v13 = &unk_1000C79D0;
  v8 = _Block_copy(&v10);

  v14 = sub_100017FDC;
  v15 = 0;
  v10 = _NSConcreteStackBlock;
  v11 = 1107296256;
  v12 = sub_100017F7C;
  v13 = &unk_1000C79F8;
  v9 = _Block_copy(&v10);
  [a1 animateAlongsideTransition:v8 completion:v9];
  _Block_release(v9);
  _Block_release(v8);
}

uint64_t sub_1000179A8()
{
  result = type metadata accessor for ActivityDisplayContext(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100017A84()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DA480);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Transition animation starting", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_100017C3C(1);
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = *(v6 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v8 = v6;
    sub_10000B16C(v7);

    if (v7)
    {
      v7();
      sub_10000B17C(v7);
    }
  }

  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = (v9 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v12 = *(v9 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock);
    v11 = *(v9 + OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock + 8);
    *v10 = 0;
    v10[1] = 0;
    v13 = v9;
    sub_10000B17C(v12);
  }
}

void sub_100017C3C(char a1)
{
  v2 = v1;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000DA480);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000343F8(0xD00000000000001FLL, 0x80000001000A1580, &v23);
    *(v7 + 12) = 2080;
    v8 = String.init<A>(describing:)();
    v10 = sub_1000343F8(v8, v9, &v23);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: state=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if ((a1 & 1) == 0)
  {
    [*(v2 + OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView) setEffect:0];
    return;
  }

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v11 = qword_1000F3C58;
  v12 = *(qword_1000F3C58 + 616);
  v13 = sub_100025A44();

  if ((v13 & 1) == 0)
  {
    v21 = *(v11 + 624);
    v22 = sub_100025A58();

    v17 = [objc_opt_self() effectWithStyle:v22];
    goto LABEL_15;
  }

  v14 = *(v11 + 632);
  sub_100025A38();
  v16 = v15;

  v17 = [objc_opt_self() effectWithBlurRadius:v16];
  if (v17)
  {
LABEL_15:
    [*(v2 + OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView) setEffect:v17];

    return;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "### Could not create UIBlurEffect", v20, 2u);
  }
}

uint64_t sub_100017F7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100017FDC()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DA480);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Transition animation ended", v3, 2u);
  }

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, "@KPI NearbyInteraction.card-ui-did-appear", v5, 2u);
  }
}

void sub_100018138(void *a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = [a1 initiallyInteractive];
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, v3, v4, "Dismiss animation starting: initiallyInteractive=%{BOOL}d", v5, 8u);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100017C3C(0);
  }
}

void sub_100018294(void *a1)
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000DA480);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = [a1 isCancelled];
    swift_unknownObjectRelease();
    _os_log_impl(&_mh_execute_header, oslog, v3, "Dismiss animation ended: isCancelled=%{BOOL}d", v4, 8u);
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

unint64_t sub_1000183E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *((swift_isaMask & *v2) + qword_1000F3C10 + 16);
  *(v3 + v6) = [objc_allocWithZone(type metadata accessor for AdaptivePresentationControllerDelegate()) init];
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000DB2F0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Init", v10, 2u);
  }

  v11 = (v3 + *((swift_isaMask & *v3) + qword_1000F3C60 + 16));
  *v11 = 0;
  v11[1] = 0;
  v12 = UIHostingController.init(rootView:)();
  v13 = [v12 presentationController:a1];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

LABEL_19:
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "### Could not get UISheetPresentationController", v31, 2u);
    }

    v14 = v12;
    goto LABEL_25;
  }

  v16 = v15;
  v17 = [objc_opt_self() currentTraitCollection];
  [v17 displayCornerRadius];
  v19 = v18;

  UISheetPresentationController.preferredCornerRadius.setter();
  [v16 _setCornerRadiusForPresentationAndDismissal:v19];
  [v16 setDelegate:*(&v12->isa + *((swift_isaMask & v12->isa) + qword_1000F3C10 + 16))];
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v20 = *(qword_1000F3C58 + 640);
  v21 = sub_100025508();

  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = [v16 detents];
  sub_10000ED88(0, &qword_1000DA8C0, UISheetPresentationControllerDetent_ptr);
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v23 >> 62))
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  if (!v24)
  {
LABEL_23:

LABEL_24:
    v29 = v12;
    goto LABEL_25;
  }

LABEL_12:
  v25 = __OFSUB__(v24, 1);
  result = v24 - 1;
  if (v25)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v23 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v23 + 8 * result + 32);
LABEL_17:
    v28 = v27;

    v29 = [v28 identifier];
    [v16 setLargestUndimmedDetentIdentifier:v29];

LABEL_25:
    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100018880(char a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v28 = a1;
  if (a2)
  {
    v26 = a2(&v28);
    v27 = v14;
  }

  else
  {
    LOBYTE(v26) = a1 & 1;
  }

  v15 = String.init<A>(describing:)();
  v17 = v16;
  v26 = a4;
  v27 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v20 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = sub_1000343F8(a4, v20, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
    sub_10000529C(v23);
  }

  else
  {
  }

  return a1 & 1;
}

uint64_t sub_100018A40(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v28 = a1;
  if (a2)
  {
    v26 = a2(&v28);
    v27 = v14;
  }

  else
  {
    LOBYTE(v26) = a1;
  }

  v15 = String.init<A>(describing:)();
  v17 = v16;
  v26 = a4;
  v27 = a5;

  v18._countAndFlagsBits = v15;
  v18._object = v17;
  String.append(_:)(v18);

  v19._countAndFlagsBits = a6;
  v19._object = a7;
  String.append(_:)(v19);

  v20 = a5;
  v21 = Logger.logObject.getter();
  if (os_log_type_enabled(v21, a9))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26 = v23;
    *v22 = 136315138;
    v24 = sub_1000343F8(a4, v20, &v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v21, a9, "%s", v22, 0xCu);
    sub_10000529C(v23);
  }

  else
  {
  }

  return a1;
}

float sub_100018BFC(uint64_t (*a1)(float *), float a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, uint64_t a8, os_log_type_t a9)
{
  v29 = a2;
  if (a1)
  {
    v27 = a1(&v29);
    v28 = v15;
  }

  else
  {
    *&v27 = a2;
  }

  v16 = String.init<A>(describing:)();
  v18 = v17;
  v27 = a4;
  v28 = a5;

  v19._countAndFlagsBits = v16;
  v19._object = v18;
  String.append(_:)(v19);

  v20._countAndFlagsBits = a6;
  v20._object = a7;
  String.append(_:)(v20);

  v21 = a5;
  v22 = Logger.logObject.getter();
  if (os_log_type_enabled(v22, a9))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    v25 = sub_1000343F8(a4, v21, &v27);

    *(v23 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v22, a9, "%s", v23, 0xCu);
    sub_10000529C(v24);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_100018DC4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v59._object = a7;
  v60 = a8;
  v58 = a3;
  v59._countAndFlagsBits = a6;
  v62 = a9;
  v61 = a10;
  v14 = type metadata accessor for ActivityDisplayContext(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v21);
  v23 = &v56 - v22;
  v24 = sub_1000056EC(&qword_1000DA898, &qword_100091B38);
  v25 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24 - 8, v26);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v30);
  v32 = &v56 - v31;
  if (!a2)
  {
    v56 = a4;
    v57 = a5;
    v58 = a1;
    sub_10001A5E0(a1, &v56 - v31, type metadata accessor for ActivityDisplayContext);
    (*(v15 + 56))(v32, 0, 1, v14);
    sub_10001A510(v32, v29, &qword_1000DA898, &qword_100091B38);
    if ((*(v15 + 48))(v29, 1, v14) == 1)
    {
      v42 = 0xE300000000000000;
      v43 = 7104878;
    }

    else
    {
      sub_10001A648(v29, v23, type metadata accessor for ActivityDisplayContext);
      sub_10001A5E0(v23, v20, type metadata accessor for ActivityDisplayContext);
      v43 = String.init<A>(describing:)();
      v42 = v44;
      sub_10001A6B0(v23, type metadata accessor for ActivityDisplayContext);
    }

    object = v59._object;
    countAndFlagsBits = v59._countAndFlagsBits;
    v48 = v56;
    v47 = v57;
    sub_10000A628(v32, &qword_1000DA898, &qword_100091B38);
    v63 = v48;
    v64 = v47;

    v49._countAndFlagsBits = v43;
    v49._object = v42;
    String.append(_:)(v49);

    v50._countAndFlagsBits = countAndFlagsBits;
    v50._object = object;
    String.append(_:)(v50);

    v39 = v63;
    v38 = v64;
    v40 = Logger.logObject.getter();
    v41 = v61;
    v51 = os_log_type_enabled(v40, v61);
    a1 = v58;
    if (!v51)
    {

      return sub_10001A5E0(a1, v62, type metadata accessor for ActivityDisplayContext);
    }

    goto LABEL_8;
  }

  v63 = a2(a1);
  v64 = v33;
  v34 = String.init<A>(describing:)();
  v36 = v35;
  v63 = a4;
  v64 = a5;

  v37._countAndFlagsBits = v34;
  v37._object = v36;
  String.append(_:)(v37);

  String.append(_:)(v59);

  v39 = v63;
  v38 = v64;
  v40 = Logger.logObject.getter();
  v41 = v61;
  if (os_log_type_enabled(v40, v61))
  {
LABEL_8:
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v63 = v53;
    *v52 = 136315138;
    v54 = sub_1000343F8(v39, v38, &v63);

    *(v52 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s", v52, 0xCu);
    sub_10000529C(v53);

    return sub_10001A5E0(a1, v62, type metadata accessor for ActivityDisplayContext);
  }

  return sub_10001A5E0(a1, v62, type metadata accessor for ActivityDisplayContext);
}

uint64_t sub_1000192B4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1000192E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000056EC(&qword_1000DA898, &qword_100091B38);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for ActivityDisplayContext(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC13PCViewService13CardPresenter_headerView] = 0;
  v17 = OBJC_IVAR____TtC13PCViewService13CardPresenter__isAnimatingIn;
  sub_1000056EC(&qword_1000DA8A0, &qword_100091B40);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *&v3[v17] = v18;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_animatingInListener] = 0;
  v19 = OBJC_IVAR____TtC13PCViewService13CardPresenter_cardViewController;
  v20 = type metadata accessor for CardViewModel();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1000271BC();
  sub_100019B48(&qword_1000DA8A8, type metadata accessor for CardViewModel);
  v23 = ObservedObject.init(wrappedValue:)();
  v25 = v24;
  v26 = objc_allocWithZone(sub_1000056EC(&qword_1000DA8B0, &qword_100091B48));
  *&v3[v19] = sub_1000183E4(v23, v25);
  v27 = OBJC_IVAR____TtC13PCViewService13CardPresenter_blurView;
  *&v3[v27] = [objc_allocWithZone(UIVisualEffectView) init];
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandle] = 0;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___homeAccessoryViewHandleModel] = 0;
  v28 = OBJC_IVAR____TtC13PCViewService13CardPresenter_homeAccessoryViewHandleState;
  type metadata accessor for HomeAccessoryViewHandleState();
  v29 = swift_allocObject();
  v30 = sub_1000056EC(&qword_1000DA8B8, &qword_100091B50);
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  *(v29 + 16) = PassthroughSubject.init()();
  *&v3[v28] = v29;
  v33 = &v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_cardPresentingAnimationBlock];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter____lazy_storage___proximityCardHeaderViewModel] = 0;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_tasks] = &_swiftEmptySetSingleton;
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000047A0(v34, qword_1000DA480);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Init", v37, 2u);
  }

  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_model] = a1;
  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_state] = a2;
  v38 = *(a1 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel__activityDisplayContext);
  v39 = *(v38 + 24);

  CurrentValueSubject.value.getter();
  v40 = *(v12 + 48);
  if (v40(v10, 1, v11) == 1)
  {
    v41 = *(v38 + 16);
    CurrentValueSubject.value.getter();

    if (v40(v10, 1, v11) != 1)
    {
      sub_10000A628(v10, &qword_1000DA898, &qword_100091B38);
    }
  }

  else
  {

    sub_10001A648(v10, v16, type metadata accessor for ActivityDisplayContext);
  }

  sub_10001A648(v16, &v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_initialActivityDisplayContext], type metadata accessor for ActivityDisplayContext);
  v42 = *(a1 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_deviceAssetType);
  v43 = a1 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_localDeviceModel;
  v44 = *(a1 + OBJC_IVAR____TtC13PCViewService18CardPresenterModel_localDeviceModel);
  v45 = *(v43 + 8);
  v46 = type metadata accessor for HandoffFeatureEducationViewModel();
  v47 = *(v46 + 48);
  v48 = *(v46 + 52);
  swift_allocObject();

  *&v3[OBJC_IVAR____TtC13PCViewService13CardPresenter_educationViewModel] = sub_10001C5B8(v42, v44, v45);
  v49 = type metadata accessor for CardPresenter(0);
  v51.receiver = v3;
  v51.super_class = v49;
  return objc_msgSendSuper2(&v51, "init");
}

void sub_1000197E0()
{
  if (qword_1000D9740 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DA480);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_1000343F8(0x6164696C61766E69, 0xEC00000029286574, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000529C(v3);
  }
}

uint64_t sub_10001992C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_100019944(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001995C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001999C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000199BC()
{
  v1 = v0[2];

  v2 = v0[4];

  if (v0[5])
  {
    v3 = v0[6];
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100019A2C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019A8C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100019AB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019AF4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100019B48(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100019C0C()
{
  v1 = *(v0 + 16);
  sub_10000538C();
  return result;
}

unint64_t sub_100019C14()
{
  result = qword_1000DA918;
  if (!qword_1000DA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA918);
  }

  return result;
}

uint64_t sub_100019C68()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100019CC8()
{
  result = qword_1000DA928;
  if (!qword_1000DA928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA928);
  }

  return result;
}

uint64_t sub_100019D1C()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100019DC8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100019E10(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

id sub_100019E1C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t *sub_100019E28(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_100019E8C()
{
  result = qword_1000DA960;
  if (!qword_1000DA960)
  {
    sub_100005818(&qword_1000DA958, &qword_100091D18);
    sub_100019F44();
    sub_10000EE58(&qword_1000DA970, &qword_1000DA978, &qword_100091D20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA960);
  }

  return result;
}

unint64_t sub_100019F44()
{
  result = qword_1000DA968;
  if (!qword_1000DA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DA968);
  }

  return result;
}

void sub_100019FD8(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_100019FE8(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

unint64_t sub_10001A020()
{
  result = qword_1000DAA48;
  if (!qword_1000DAA48)
  {
    sub_10000ED88(255, &qword_1000DA460, OS_dispatch_queue_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAA48);
  }

  return result;
}

uint64_t sub_10001A08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  return sub_100018DC4(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, a2, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_10001A170()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10001A1B0(float *a1@<X0>, float *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_100018BFC(*(v2 + 16), *a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

unint64_t sub_10001A258()
{
  result = qword_1000DAAF0;
  if (!qword_1000DAAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAAF0);
  }

  return result;
}

uint64_t sub_10001A2AC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_100018A40(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  return result;
}

uint64_t sub_10001A360()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 2))
  {
    v5 = *(v0 + 3);
  }

  v6 = (v3 + 64) & ~v3;
  v7 = *(v0 + 5);

  v8 = *(v0 + 7);

  (*(v2 + 8))(&v0[v6], v1);

  return _swift_deallocObject(v0, v4 + v6 + 1, v3 | 7);
}

uint64_t sub_10001A440@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_100018880(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result & 1;
  return result;
}

uint64_t sub_10001A510(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000056EC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001A5E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A648(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001A6B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001A724()
{
  result = qword_1000DAB58;
  if (!qword_1000DAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAB58);
  }

  return result;
}

uint64_t sub_10001A7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001A8BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000056EC(&qword_1000DABD8, &unk_100092030);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for CAImage()
{
  result = qword_1000DAC38;
  if (!qword_1000DAC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A9D0()
{
  sub_10001AA74();
  if (v0 <= 0x3F)
  {
    sub_10001AACC();
    if (v1 <= 0x3F)
    {
      sub_10001AB30();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001AA74()
{
  if (!qword_1000DAC48)
  {
    type metadata accessor for ColorScheme();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC48);
    }
  }
}

void sub_10001AACC()
{
  if (!qword_1000DAC50)
  {
    sub_100005818(&qword_1000DAC58, &qword_100097C10);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC50);
    }
  }
}

void sub_10001AB30()
{
  if (!qword_1000DAC60)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DAC60);
    }
  }
}

uint64_t sub_10001AB9C()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DABC0);
  sub_1000047A0(v0, qword_1000DABC0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001AC14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = (&v19 - v13);
  sub_10001B7E0(v2, &v19 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ColorScheme();
    return (*(*(v15 - 8) + 32))(a1, v14, v15);
  }

  else
  {
    v17 = *v14;
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v4);
  }
}

uint64_t sub_10001ADFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CAImage();
  v5 = v4 - 8;
  v37 = *(v4 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v4, v7);
  v8 = type metadata accessor for OpacityTransition();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v15);
  v17 = &v32 - v16;
  v18 = static Alignment.center.getter();
  v35 = v19;
  v36 = v18;
  sub_10001B3A4(v2, &v40);
  v34 = v40;
  v33 = BYTE8(v40);
  v20 = v2 + *(v5 + 28);
  v21 = *(v20 + 16);
  v40 = *v20;
  v41 = v21;
  sub_1000056EC(&qword_1000DAC98, &qword_1000920A0);
  State.wrappedValue.getter();
  v22 = v39;
  v32 = v38;
  OpacityTransition.init()();
  (*(v9 + 16))(v14, v17, v8);
  sub_10001B4A4();
  v23 = AnyTransition.init<A>(_:)();
  (*(v9 + 8))(v17, v8);
  v24 = a1 + *(sub_1000056EC(&qword_1000DACA8, &qword_1000920A8) + 36);
  sub_10001AC14(v24);
  sub_10001B4FC(v2, &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v26 = swift_allocObject();
  sub_10001B564(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v27 = (v24 + *(sub_1000056EC(&qword_1000DACB8, &qword_1000920B0) + 36));
  *v27 = sub_10001B5C8;
  v27[1] = v26;
  v28 = v35;
  *a1 = v36;
  *(a1 + 8) = v28;
  *(a1 + 16) = v34;
  *(a1 + 24) = v33;
  *(a1 + 32) = v32;
  *(a1 + 40) = v22;
  *(a1 + 48) = v23;
  sub_10001B4FC(v2, &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = swift_allocObject();
  sub_10001B564(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v25);
  result = sub_1000056EC(&qword_1000DACC0, &qword_1000920B8);
  v31 = (a1 + *(result + 36));
  *v31 = sub_10001B780;
  v31[1] = v29;
  v31[2] = 0;
  v31[3] = 0;
  return result;
}

uint64_t sub_10001B130()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAImage();
  v8 = (v0 + v7[7]);
  v9 = v8[1];
  if (!v9)
  {
    goto LABEL_5;
  }

  v10 = *v8;
  (*(v2 + 104))(v6, enum case for ColorScheme.dark(_:), v1);

  v11 = static ColorScheme.== infix(_:_:)();
  (*(v2 + 8))(v6, v1);
  if ((v11 & 1) == 0)
  {

LABEL_5:
    v14 = (v0 + v7[6]);
    v16 = *v14;
    v15 = v14[1];
    v17 = (v0 + v7[5]);
    v18 = *(v17 + 2);
    v22 = *v17;
    v23 = v18;
    v20 = v16;
    v21 = v15;

    goto LABEL_6;
  }

  v12 = (v0 + v7[5]);
  v13 = *(v12 + 2);
  v22 = *v12;
  v23 = v13;
  v20 = v10;
  v21 = v9;
LABEL_6:
  sub_1000056EC(&qword_1000DAC98, &qword_1000920A0);
  return State.wrappedValue.setter();
}

uint64_t sub_10001B2D8()
{
  v0 = type metadata accessor for ColorScheme();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001AC14(v5);
  sub_10001B130();
  return (*(v1 + 8))(v5, v0);
}

uint64_t sub_10001B3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for CAImage() + 20));
  v6 = *v3;
  v7 = *(v3 + 2);
  sub_1000056EC(&qword_1000DAC98, &qword_1000920A0);
  State.wrappedValue.getter();
  if (*(&v5 + 1))
  {
    v6 = v5;
    sub_10001B850();
  }

  AnyView.init<A>(_:)();
  result = _ConditionalContent<>.init(storage:)();
  *a2 = v6;
  *(a2 + 8) = BYTE8(v6);
  return result;
}

unint64_t sub_10001B4A4()
{
  result = qword_1000DACA0;
  if (!qword_1000DACA0)
  {
    type metadata accessor for OpacityTransition();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACA0);
  }

  return result;
}

uint64_t sub_10001B4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAImage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAImage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B5C8()
{
  v1 = *(type metadata accessor for CAImage() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_10001B130();
}

uint64_t sub_10001B62C()
{
  v1 = type metadata accessor for CAImage();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ColorScheme();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + v1[5];
  v9 = *(v8 + 1);

  v10 = *(v8 + 2);

  v11 = *(v5 + v1[6] + 8);

  v12 = *(v5 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10001B780()
{
  v0 = *(*(type metadata accessor for CAImage() - 8) + 80);

  return sub_10001B2D8();
}

uint64_t sub_10001B7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B850()
{
  result = qword_1000DACC8;
  if (!qword_1000DACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACC8);
  }

  return result;
}

uint64_t sub_10001B8A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10001B8EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001B93C()
{
  result = qword_1000DACD0;
  if (!qword_1000DACD0)
  {
    sub_100005818(&qword_1000DACC0, &qword_1000920B8);
    sub_10001B9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACD0);
  }

  return result;
}

unint64_t sub_10001B9C8()
{
  result = qword_1000DACD8;
  if (!qword_1000DACD8)
  {
    sub_100005818(&qword_1000DACA8, &qword_1000920A8);
    sub_10001BA80();
    sub_10000EE58(&qword_1000DAD10, &qword_1000DACB8, &qword_1000920B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACD8);
  }

  return result;
}

unint64_t sub_10001BA80()
{
  result = qword_1000DACE0;
  if (!qword_1000DACE0)
  {
    sub_100005818(&qword_1000DACE8, &qword_1000920F0);
    sub_10000EE58(&qword_1000DACF0, &qword_1000DACF8, &qword_1000920F8);
    sub_10000EE58(&qword_1000DAD00, &qword_1000DAD08, &qword_100092100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DACE0);
  }

  return result;
}

void sub_10001BB68(__objc2_class_ro *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (qword_1000D9748 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v7 = type metadata accessor for Logger();
    sub_1000047A0(v7, qword_1000DABC0);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v48 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000343F8(a3, a4, &v48);
      _os_log_impl(&_mh_execute_header, v8, v9, "Loading Mica file %s.", v10, 0xCu);
      sub_10000529C(v11);
    }

    v12 = [objc_opt_self() mainBundle];
    v13 = objc_allocWithZone(BSUICAPackageView);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithPackageName:v14 inBundle:v12];

    if (!v15)
    {

      oslog = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(oslog, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v48 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1000343F8(a3, a4, &v48);
        _os_log_impl(&_mh_execute_header, oslog, v23, "Couldn't load file named %s.", v24, 0xCu);
        sub_10000529C(v25);

        goto LABEL_26;
      }

      goto LABEL_24;
    }

    v45 = v15;
    [v45 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [(__objc2_class_ro *)a1 subviews];
    sub_10000ED88(0, &qword_1000DAD20, UIView_ptr);
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = a4;
    v44 = a3;
    v18 = a1;
    if (v17 >> 62)
    {
      break;
    }

    v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_21;
    }

LABEL_7:
    v20 = 0;
    a3 = v17 & 0xC000000000000001;
    a1 = &Spring;
    while (1)
    {
      if (a3)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v21 = *(v17 + 8 * v20 + 32);
      }

      v22 = v21;
      a4 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      [v21 removeFromSuperview];

      ++v20;
      if (a4 == v19)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    swift_once();
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (v19)
  {
    goto LABEL_7;
  }

LABEL_21:

  [(__objc2_class_ro *)v18 addSubview:v45];
  v26 = objc_opt_self();
  sub_1000056EC(&qword_1000DA8E0, &qword_100091BB8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100092020;
  v28 = [(__objc2_class_ro *)v18 topAnchor];
  v29 = [v45 topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v27 + 32) = v30;
  v31 = [(__objc2_class_ro *)v18 bottomAnchor];
  v32 = [v45 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v27 + 40) = v33;
  v34 = [(__objc2_class_ro *)v18 rightAnchor];
  v35 = [v45 rightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];

  *(v27 + 48) = v36;
  v37 = [(__objc2_class_ro *)v18 leftAnchor];
  v38 = [v45 leftAnchor];

  v39 = [v37 constraintEqualToAnchor:v38];
  *(v27 + 56) = v39;
  sub_10000ED88(0, &qword_1000DAD28, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 activateConstraints:isa];

  oslog = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    *v42 = 136315138;
    *(v42 + 4) = sub_1000343F8(v44, v46, &v48);
    _os_log_impl(&_mh_execute_header, oslog, v41, "Mica file %s was loaded.", v42, 0xCu);
    sub_10000529C(v43);

    goto LABEL_26;
  }

LABEL_24:

LABEL_26:
}

id sub_10001C22C()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

uint64_t sub_10001C270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C360();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001C2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001C360();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001C338()
{
  sub_10001C360();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001C360()
{
  result = qword_1000DAD18;
  if (!qword_1000DAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAD18);
  }

  return result;
}

uint64_t sub_10001C3BC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DAD30);
  sub_1000047A0(v0, qword_1000DAD30);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10001C43C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

float sub_10001C4B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001C54C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10001C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v71 = a2;
  v72 = a3;
  v70 = a1;
  v5 = sub_1000056EC(&qword_1000DA9E0, &qword_100091D88);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v81 = v69 - v8;
  v83 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v80 = *(v83 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v83, v10);
  v78 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000056EC(&qword_1000DAF70, &qword_100092280);
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  __chkstk_darwin(v12, v14);
  v73 = v69 - v15;
  v79 = sub_1000056EC(&qword_1000DAF78, &qword_100092288);
  v77 = *(v79 - 8);
  v16 = *(v77 + 64);
  __chkstk_darwin(v79, v17);
  v74 = v69 - v18;
  v19 = sub_1000056EC(&qword_1000DAF80, &unk_100092290);
  v84 = *(v19 - 8);
  v85 = v19;
  v20 = *(v84 + 64);
  __chkstk_darwin(v19, v21);
  v82 = v69 - v22;
  v69[0] = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v23 = *(v69[0] - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v69[0], v25);
  v27 = v69 - v26;
  v28 = sub_1000056EC(&qword_1000DAF90, &qword_1000922A0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28, v31);
  v33 = v69 - v32;
  v34 = sub_1000056EC(&qword_1000DAF98, &qword_1000922A8);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34, v37);
  v39 = v69 - v38;
  v40 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__state;
  LOBYTE(v86) = 0;
  Published.init(initialValue:)();
  v41 = *(v35 + 32);
  v69[1] = v34;
  v41(v4 + v40, v39, v34);
  v42 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__progress;
  LODWORD(v86) = 0;
  Published.init(initialValue:)();
  (*(v29 + 32))(v4 + v42, v33, v28);
  v43 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_educationViewEventSubject;
  v44 = sub_1000056EC(&qword_1000DA9F8, &qword_1000922B0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  *(v4 + v43) = PassthroughSubject.init()();
  v47 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isViewPresenting;
  LOBYTE(v86) = 0;
  Published.init(initialValue:)();
  v48 = *(v23 + 32);
  v49 = v69[0];
  v48(v4 + v47, v27, v69[0]);
  v50 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isIntroAnimationComplete;
  LOBYTE(v86) = 0;
  Published.init(initialValue:)();
  v48(v4 + v50, v27, v49);
  *(v4 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_tasks) = &_swiftEmptySetSingleton;
  if (qword_1000D9750 != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  sub_1000047A0(v51, qword_1000DAD30);
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Init", v54, 2u);
  }

  v55 = v71;
  *(v4 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_deviceAssetType) = v70;
  v56 = (v4 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_localDeviceModel);
  v57 = v72;
  *v56 = v55;
  v56[1] = v57;
  swift_beginAccess();
  v58 = v73;
  Published.projectedValue.getter();
  swift_endAccess();
  v59 = v78;
  static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
  sub_10000FE40();
  v60 = static OS_dispatch_queue.main.getter();
  v86 = v60;
  v61 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v62 = v81;
  (*(*(v61 - 8) + 56))(v81, 1, 1, v61);
  sub_10000EE58(&qword_1000DAFA0, &qword_1000DAF70, &qword_100092280);
  sub_10001F128(&qword_1000DAA48, sub_10000FE40);
  v63 = v74;
  v64 = v76;
  Publisher.debounce<A>(for:scheduler:options:)();
  sub_10000A628(v62, &qword_1000DA9E0, &qword_100091D88);

  (*(v80 + 8))(v59, v83);
  (*(v75 + 8))(v58, v64);
  sub_10000EE58(&qword_1000DAFA8, &qword_1000DAF78, &qword_100092288);
  v65 = v82;
  v66 = v79;
  Publisher.filter(_:)();
  (*(v77 + 8))(v63, v66);
  swift_allocObject();
  swift_weakInit();
  sub_10000EE58(&qword_1000DAFB0, &qword_1000DAF80, &unk_100092290);
  v67 = v85;
  Publisher<>.sink(receiveValue:)();

  (*(v84 + 8))(v65, v67);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_10001CEE8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10001CF6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_educationViewEventSubject);
  PassthroughSubject.send(_:)();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v3 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10001D048()
{
  v1 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__state;
  v2 = sub_1000056EC(&qword_1000DAF98, &qword_1000922A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__progress;
  v4 = sub_1000056EC(&qword_1000DAF90, &qword_1000922A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_localDeviceModel + 8);

  v6 = *(v0 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_educationViewEventSubject);

  v7 = OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isViewPresenting;
  v8 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel__isIntroAnimationComplete, v8);
  v10 = *(v0 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_tasks);

  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v11, v12);
}

uint64_t type metadata accessor for HandoffFeatureEducationViewModel()
{
  result = qword_1000DADA0;
  if (!qword_1000DADA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001D240()
{
  sub_10001D3A8(319, &qword_1000DADB0);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10001D3A8(319, &qword_1000DADB8);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10001D3A8(319, &qword_1000DADC0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10001D3A8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Published();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10001D400@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for HandoffFeatureEducationViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001D440()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001D480@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47[1] = a2;
  v3 = sub_1000056EC(&qword_1000DAFC8, &qword_1000924B0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3, v6);
  v8 = (v47 - v7);
  v9 = sub_1000056EC(&qword_1000DAFD0, &qword_1000924B8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v12);
  v14 = v47 - v13;
  v15 = sub_1000056EC(&qword_1000DAFD8, &qword_1000924C0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v18);
  v20 = v47 - v19;
  v47[0] = sub_1000056EC(&qword_1000DAFE0, &qword_1000924C8);
  v21 = *(*(v47[0] - 8) + 64);
  __chkstk_darwin(v47[0], v22);
  v24 = v47 - v23;
  *v8 = static Alignment.bottom.getter();
  v8[1] = v25;
  v26 = sub_1000056EC(&qword_1000DAFE8, &qword_1000924D0);
  sub_10001D960(a1, v8 + *(v26 + 44));
  v27 = static Edge.Set.bottom.getter();
  v28 = static SafeAreaRegions.all.getter();
  v29 = v8 + *(v4 + 44);
  *v29 = v28;
  v29[8] = v27;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10001F170(v8, v14, &qword_1000DAFC8, &qword_1000924B0);
  v30 = &v14[*(v10 + 44)];
  v31 = v54;
  *(v30 + 4) = v53;
  *(v30 + 5) = v31;
  *(v30 + 6) = v55;
  v32 = v50;
  *v30 = v49;
  *(v30 + 1) = v32;
  v33 = v52;
  *(v30 + 2) = v51;
  *(v30 + 3) = v33;
  v34 = *a1;
  v56 = *(a1 + 16);
  v57[0] = v34;
  v36 = *(a1 + 32);
  v35 = *(a1 + 40);
  v37 = swift_allocObject();
  v38 = *(a1 + 16);
  *(v37 + 1) = *a1;
  *(v37 + 2) = v38;
  *(v37 + 3) = *(a1 + 32);
  sub_10001F170(v14, v20, &qword_1000DAFD0, &qword_1000924B8);
  v39 = &v20[*(v16 + 44)];
  *v39 = sub_10001EC74;
  v39[1] = v37;
  v39[2] = 0;
  v39[3] = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v57, v48, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v56, v48, &qword_1000DAFC0, &qword_100092670);
  sub_10000B16C(v36);
  static Published.subscript.getter();

  v40 = v48[0];
  v41 = swift_allocObject();
  v42 = *(a1 + 16);
  v41[1] = *a1;
  v41[2] = v42;
  v41[3] = *(a1 + 32);
  sub_10001F170(v20, v24, &qword_1000DAFD8, &qword_1000924C0);
  v43 = &v24[*(v47[0] + 36)];
  *v43 = v40;
  *(v43 + 1) = sub_10001EC7C;
  *(v43 + 2) = v41;
  v44 = swift_allocObject();
  v45 = *(a1 + 16);
  v44[1] = *a1;
  v44[2] = v45;
  v44[3] = *(a1 + 32);
  sub_10001A510(v57, v48, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v56, v48, &qword_1000DAFC0, &qword_100092670);
  sub_10000B16C(v36);
  sub_10001A510(v57, v48, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v56, v48, &qword_1000DAFC0, &qword_100092670);
  sub_10000B16C(v36);
  sub_10001EC8C();
  View.onTapGesture(count:perform:)();

  return sub_10000A628(v24, &qword_1000DAFE0, &qword_1000924C8);
}

uint64_t sub_10001D960@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpacityTransition();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v81 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v9);
  v82 = &v77 - v10;
  v11 = sub_1000056EC(&qword_1000DB030, &qword_1000924E8);
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  __chkstk_darwin(v11, v13);
  v78 = &v77 - v14;
  v95 = sub_1000056EC(&qword_1000DB038, &qword_1000924F0);
  v92 = *(v95 - 8);
  v15 = *(v92 + 64);
  __chkstk_darwin(v95, v16);
  v18 = &v77 - v17;
  v19 = sub_1000056EC(&qword_1000DB040, &qword_1000924F8);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v94 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v96 = &v77 - v25;
  v141 = *a1;
  v26 = *(&v141 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v27 = *(v26 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_deviceAssetType);
  v100 = v109;
  v28 = *(v26 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_localDeviceModel + 8);
  v102 = *(v26 + OBJC_IVAR____TtC13PCViewService32HandoffFeatureEducationViewModel_localDeviceModel);
  v103 = v27;
  swift_getKeyPath();
  swift_getKeyPath();
  v101 = v28;

  static Published.subscript.getter();

  v29 = *&v109;
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v30 = *(qword_1000F3C58 + 168);
  v91 = sub_100025A58();

  *&v104 = 0;
  sub_1000056EC(&qword_1000DB048, &qword_100092500);
  State.init(wrappedValue:)();
  v99 = *(&v109 + 1);
  v93 = v109;
  LOBYTE(v104) = 0;
  State.init(wrappedValue:)();
  v97 = v109;
  v98 = *(&v109 + 1);
  static Alignment.center.getter();
  v31 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v90 = v134;
  v89 = v135;
  v88 = v136;
  v87 = v137;
  v85 = v139;
  v86 = v138;
  v140 = a1[1];
  v109 = a1[1];
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  if (v104 == 1)
  {
    v32 = [objc_opt_self() localizedStringForKey:21];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    *&v109 = v33;
    *(&v109 + 1) = v35;
    v36 = *(a1 + 4);
    v37 = *(a1 + 5);
    v38 = swift_allocObject();
    v39 = a1[1];
    v38[1] = *a1;
    v38[2] = v39;
    v38[3] = a1[2];
    sub_10001A510(&v141, &v104, &qword_1000DAFB8, &unk_1000924A0);
    sub_10001A510(&v140, &v104, &qword_1000DAFC0, &qword_100092670);
    sub_10000B16C(v36);
    sub_10001F080();
    v40 = v78;
    Button<>.init<A>(_:action:)();
    *&v109 = 0x4020000000000000;
    BYTE8(v109) = 1;
    sub_10000EE58(&qword_1000DB068, &qword_1000DB030, &qword_1000924E8);
    sub_10001F0D4();
    v41 = v80;
    View.buttonStyle<A>(_:)();
    (*(v79 + 8))(v40, v41);
    v42 = v82;
    OpacityTransition.init()();
    v44 = v83;
    v43 = v84;
    (*(v83 + 16))(v81, v42, v84);
    sub_10001F128(&qword_1000DACA0, &type metadata accessor for OpacityTransition);
    v45 = AnyTransition.init<A>(_:)();
    (*(v44 + 8))(v42, v43);
    *&v18[*(sub_1000056EC(&qword_1000DB078, &qword_100092518) + 36)] = v45;
    LOBYTE(v45) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = &v18[*(sub_1000056EC(&qword_1000DB080, &qword_100092520) + 36)];
    *v54 = v45;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    LOBYTE(v45) = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v55 = v96;
    v56 = &v18[*(v95 + 36)];
    *v56 = v45;
    *(v56 + 1) = v57;
    *(v56 + 2) = v58;
    *(v56 + 3) = v59;
    *(v56 + 4) = v60;
    v56[40] = 0;
    sub_10001F170(v18, v55, &qword_1000DB038, &qword_1000924F0);
    v31 = 0;
  }

  v61 = v96;
  (*(v92 + 56))(v96, v31, 1, v95);
  v62 = powf(v29, v91);
  v63 = v94;
  sub_10001EF90(v61, v94);
  LOBYTE(v104) = v100;
  *(&v104 + 1) = *v133;
  DWORD1(v104) = *&v133[3];
  *(&v104 + 1) = v103;
  *&v105 = v102;
  *(&v105 + 1) = v101;
  *&v106 = v62;
  v64 = v93;
  *(&v106 + 1) = v93;
  *&v107 = v99;
  BYTE8(v107) = v97;
  *(&v107 + 9) = *v132;
  HIDWORD(v107) = *&v132[3];
  *v108 = v98;
  *&v108[104] = v131;
  *&v108[8] = v125;
  *&v108[40] = v127;
  *&v108[24] = v126;
  *&v108[88] = v130;
  *&v108[72] = v129;
  *&v108[56] = v128;
  v65 = v104;
  v66 = v105;
  v67 = v107;
  *(a2 + 32) = v106;
  *(a2 + 48) = v67;
  *a2 = v65;
  *(a2 + 16) = v66;
  v68 = *v108;
  v69 = *&v108[16];
  v70 = *&v108[48];
  *(a2 + 96) = *&v108[32];
  *(a2 + 112) = v70;
  *(a2 + 64) = v68;
  *(a2 + 80) = v69;
  v71 = *&v108[64];
  v72 = *&v108[96];
  v73 = *&v108[112];
  *(a2 + 144) = *&v108[80];
  *(a2 + 160) = v72;
  *(a2 + 128) = v71;
  *(a2 + 176) = v73;
  *(a2 + 184) = 0x4008000000000000;
  *(a2 + 192) = v90;
  *(a2 + 200) = v89;
  *(a2 + 208) = v88;
  *(a2 + 216) = v87;
  v74 = v85;
  *(a2 + 224) = v86;
  *(a2 + 232) = v74;
  v75 = sub_1000056EC(&qword_1000DB050, &qword_100092508);
  sub_10001EF90(v63, a2 + *(v75 + 64));
  sub_10001A510(&v104, &v109, &qword_1000DB058, &qword_100092510);
  sub_10000A628(v61, &qword_1000DB040, &qword_1000924F8);
  sub_10000A628(v63, &qword_1000DB040, &qword_1000924F8);
  v112 = v62;
  v121 = v128;
  v122 = v129;
  v123 = v130;
  v124 = v131;
  v118 = v125;
  v119 = v126;
  LOBYTE(v109) = v100;
  *(&v109 + 1) = *v133;
  DWORD1(v109) = *&v133[3];
  *(&v109 + 1) = v103;
  v110 = v102;
  v111 = v101;
  v113 = v64;
  v114 = v99;
  v115 = v97;
  *v116 = *v132;
  *&v116[3] = *&v132[3];
  v117 = v98;
  v120 = v127;
  return sub_10000A628(&v109, &qword_1000DB058, &qword_100092510);
}

uint64_t sub_10001E384(uint64_t a1)
{
  v1 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v8 == 2)
  {
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v3 = *(qword_1000F3C58 + 288);
    v4 = sub_100025F80();

    if (v4)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
    }

    v6 = static Animation.easeInOut.getter();
    __chkstk_darwin(v6, v7);
    withAnimation<A>(_:_:)();
  }

  return result;
}

_BYTE *sub_10001E508(_BYTE *result)
{
  if (*result == 2)
  {
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v1 = *(qword_1000F3C58 + 288);
    v2 = sub_100025F80();

    if (v2)
    {
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
    }

    v4 = static Animation.easeInOut.getter();
    __chkstk_darwin(v4, v5);
    withAnimation<A>(_:_:)();
  }

  return result;
}

void sub_10001E648(uint64_t a1)
{
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v2 = qword_1000F3C58;
  v3 = *(qword_1000F3C58 + 288);
  v4 = sub_100025F80();

  if (v4)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  v6 = *(v2 + 208);
  v7 = sub_100025508();

  if (v7)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(a1 + 40);
      v8();
    }
  }
}

uint64_t sub_10001E73C@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 5);
  v5 = v1[1];
  v10 = *v1;
  v11 = v5;
  v6 = swift_allocObject();
  v7 = v1[1];
  *(v6 + 16) = *v1;
  *(v6 + 32) = v7;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *a1 = sub_10001EC6C;
  a1[1] = v6;
  sub_10001A510(&v10, v9, &qword_1000DAFB8, &unk_1000924A0);
  sub_10001A510(&v11, v9, &qword_1000DAFC0, &qword_100092670);
  return sub_10000B16C(v3);
}

float sub_10001E7F0@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_10001E870(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10001E8EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001E96C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10001E9E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001EA5C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_10001EB7C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10001EB94(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10001EBA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10001EBF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001EC8C()
{
  result = qword_1000DAFF0;
  if (!qword_1000DAFF0)
  {
    sub_100005818(&qword_1000DAFE0, &qword_1000924C8);
    sub_10001ED44();
    sub_10000EE58(&qword_1000DB020, &qword_1000DB028, &qword_1000924E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAFF0);
  }

  return result;
}

unint64_t sub_10001ED44()
{
  result = qword_1000DAFF8;
  if (!qword_1000DAFF8)
  {
    sub_100005818(&qword_1000DAFD8, &qword_1000924C0);
    sub_10001EDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DAFF8);
  }

  return result;
}

unint64_t sub_10001EDD0()
{
  result = qword_1000DB000;
  if (!qword_1000DB000)
  {
    sub_100005818(&qword_1000DAFD0, &qword_1000924B8);
    sub_10001EE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB000);
  }

  return result;
}

unint64_t sub_10001EE5C()
{
  result = qword_1000DB008;
  if (!qword_1000DB008)
  {
    sub_100005818(&qword_1000DAFC8, &qword_1000924B0);
    sub_10000EE58(&qword_1000DB010, &qword_1000DB018, &qword_1000924D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB008);
  }

  return result;
}

uint64_t sub_10001EF2C()
{
  v2 = *(*(v0 + 16) + 16);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  return State.wrappedValue.setter();
}

uint64_t sub_10001EF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DB040, &qword_1000924F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F000()
{
  v1 = v0[3];

  v2 = v0[5];

  if (v0[6])
  {
    v3 = v0[7];
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10001F050()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 56);
    return v1();
  }

  return result;
}

unint64_t sub_10001F080()
{
  result = qword_1000DB060;
  if (!qword_1000DB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB060);
  }

  return result;
}

unint64_t sub_10001F0D4()
{
  result = qword_1000DB070;
  if (!qword_1000DB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB070);
  }

  return result;
}

uint64_t sub_10001F128(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001F170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000056EC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001F24C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001F2C4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_10001F400(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_10001F5D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  type metadata accessor for Subtitle();
  type metadata accessor for Array();
  if (v3 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      sub_10000FE8C();
      if (v5 <= 0x3F)
      {
        sub_10001FA20(319, &qword_1000DB198);
        if (v6 <= 0x3F)
        {
          sub_10001FA20(319, &qword_1000DB1A0);
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10001F6E4(uint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_10001F834(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_10001FA20(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for State();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_10001FAB0@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 1);
  v7 = *(v2 + 16);
  v8 = *(v2 + 3);
  v9 = *(v2 + 4);
  v10 = *(v2 + 40);
  v11 = *a1;
  v12 = *(a1 + 1);
  v45 = *v2;
  v5 = v45;
  v46 = *(v2 + 16);
  v44 = v8;
  v13 = *(v2 + 4);
  v43 = *(v2 + 40);
  v42 = v13;
  v34[0] = v7 & 1;
  v15 = *(a1 + 2);
  v14 = *(a1 + 3);
  sub_100022488(&v45, v78);
  sub_10001A510(&v44, v78, &qword_1000DB2B0, &qword_1000926D8);
  sub_10001A510(&v42, v78, &qword_1000DB250, &qword_100092660);
  static UnitPoint.center.getter();
  v17 = v16;
  v19 = v18;
  *&v47 = v5;
  *(&v47 + 1) = v6;
  LOBYTE(v48) = v34[0];
  *(&v48 + 1) = v8;
  *&v49 = v9;
  BYTE8(v49) = v10;
  *&v50 = v11;
  *(&v50 + 1) = v12;
  v51 = v15;
  v72 = v49;
  v73 = v50;
  *&v74 = v15;
  v70 = v47;
  v71 = v48;
  v52[0] = v5;
  v52[1] = v6;
  v53 = v34[0];
  v54 = v8;
  v55 = v9;
  v56 = v10;
  v57 = v11;
  v58 = v12;
  v59 = v15;
  sub_10001A510(&v47, v78, &qword_1000DB220, &qword_100092648);
  sub_10000A628(v52, &qword_1000DB220, &qword_100092648);
  *&v61 = v74;
  *(&v62 + 1) = v17;
  v63 = v19;
  v41 = v19;
  v60[0] = v70;
  v60[1] = v71;
  v35 = v70;
  v60[2] = v72;
  v60[3] = v73;
  *(&v61 + 1) = v14;
  *&v62 = v14;
  v36 = v71;
  v37 = v72;
  v39 = v61;
  v40 = v62;
  v20 = *(a1 + 4);
  v38 = v73;
  v65 = v74;
  v64[2] = v72;
  v64[3] = v73;
  v64[0] = v70;
  v64[1] = v71;
  v66 = v14;
  v67 = v14;
  v68 = v17;
  v69 = v19;
  sub_10001A510(v60, v78, &qword_1000DB210, &qword_100092640);
  sub_10000A628(v64, &qword_1000DB210, &qword_100092640);
  v21 = a1[5] * 0.0174532925;
  static UnitPoint.center.getter();
  *&v76 = v19;
  v22 = v38;
  v24 = v39;
  v23 = v40;
  v74 = v39;
  v75 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v23;
  v25 = v36;
  v26 = v36;
  v27 = v37;
  v28 = v38;
  v72 = v37;
  v73 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v28;
  v29 = v35;
  v30 = v35;
  v70 = v35;
  v71 = v25;
  *(&v76 + 1) = v20;
  v77 = 0;
  *(a2 + 112) = 0;
  *a2 = v29;
  *(a2 + 16) = v25;
  *(a2 + 96) = v76;
  *(a2 + 120) = v21;
  *(a2 + 128) = 0x3FF0000000000000;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = v31;
  *(a2 + 160) = v32;
  *(a2 + 168) = xmmword_100092540;
  v78[0] = v30;
  v78[1] = v26;
  v79 = v19;
  v78[4] = v24;
  v78[5] = v40;
  v78[2] = v27;
  v78[3] = v22;
  v80 = v20;
  v81 = 0;
  sub_10001A510(&v70, v34, &qword_1000DB200, &qword_100092638);
  return sub_10000A628(v78, &qword_1000DB200, &qword_100092638);
}

uint64_t sub_10001FDA4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, float a6@<S1>)
{
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);

  static UnitPoint.center.getter();
  v16 = *(a1 + 4);
  *&v40 = a5;
  *(&v40 + 1) = a2;
  *&v41 = a3;
  *(&v41 + 2) = a6;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  *&v44 = v15;
  *(&v44 + 1) = v17;
  v45 = v18;
  *v46 = a5;
  v36 = v42;
  v37 = v43;
  v38 = v44;
  v39 = v18;
  v34 = v40;
  v35 = v41;
  v46[1] = a2;
  v46[2] = a3;
  v47 = a6;
  v48 = v12;
  v49 = v13;
  v50 = v14;
  v51 = v15;
  v52 = v15;
  v53 = v17;
  v54 = v18;
  sub_10001A510(&v40, v58, &qword_1000DB2D8, &qword_100092700);
  sub_10000A628(v46, &qword_1000DB2D8, &qword_100092700);
  v19 = a1[5] * 0.0174532925;
  static UnitPoint.center.getter();
  v20 = v39;
  *&v56 = v39;
  v22 = v37;
  v21 = v38;
  v23 = v35;
  v25 = v34;
  v24 = v35;
  v55[0] = v34;
  v55[1] = v35;
  *a4 = v34;
  *(a4 + 16) = v23;
  v26 = v36;
  v27 = v37;
  v28 = v36;
  v55[3] = v37;
  v55[4] = v21;
  v55[2] = v36;
  *(&v56 + 1) = v16;
  v57 = 0;
  *(a4 + 96) = 0;
  *(a4 + 32) = v26;
  *(a4 + 48) = v27;
  v29 = v56;
  *(a4 + 64) = v21;
  *(a4 + 80) = v29;
  *(a4 + 104) = v19;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 112) = 0x3FF0000000000000;
  *(a4 + 136) = v30;
  *(a4 + 144) = v31;
  *(a4 + 152) = xmmword_100092540;
  v58[0] = v25;
  v58[1] = v24;
  v59 = v20;
  v58[3] = v22;
  v58[4] = v38;
  v58[2] = v28;
  v60 = v16;
  v61 = 0;
  sub_10001A510(v55, v33, &qword_1000DB2E0, qword_100092708);
  return sub_10000A628(v58, &qword_1000DB2E0, qword_100092708);
}

uint64_t sub_10001FF80@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 1);
  v43 = *(v2 + 2);
  v44 = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = *(v2 + 24);
  v10 = *(v2 + 8);
  v11 = v2[5];
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = v9 & 1;
  v15 = *(a1 + 2);
  sub_1000224E4(&v44, v75);
  sub_10001A510(&v43, v75, &qword_1000DB2B8, &qword_1000926E0);
  v16 = *(a1 + 3);
  static UnitPoint.center.getter();
  v18 = v17;
  v20 = v19;
  *&v45 = v6;
  *(&v45 + 1) = v7;
  *&v46 = v8;
  BYTE8(v46) = v14;
  LODWORD(v47) = v10;
  *(&v47 + 1) = v11;
  *&v48 = v12;
  *(&v48 + 1) = v13;
  v49 = v15;
  v50[0] = v6;
  v69 = v47;
  v70 = v48;
  *&v71 = v15;
  v67 = v45;
  v68 = v46;
  v50[1] = v7;
  v50[2] = v8;
  v51 = v14;
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v55 = v13;
  v56 = v15;
  sub_10001A510(&v45, v75, &qword_1000DB2C0, &qword_1000926E8);
  sub_10000A628(v50, &qword_1000DB2C0, &qword_1000926E8);
  *&v58 = v71;
  *(&v59 + 1) = v18;
  v60 = v20;
  v42 = v20;
  v57[0] = v67;
  v57[1] = v68;
  v36 = v67;
  v57[2] = v69;
  v57[3] = v70;
  *(&v58 + 1) = v16;
  *&v59 = v16;
  v37 = v68;
  v38 = v69;
  v40 = v58;
  v41 = v59;
  v21 = *(a1 + 4);
  v39 = v70;
  v62 = v71;
  v61[2] = v69;
  v61[3] = v70;
  v61[0] = v67;
  v61[1] = v68;
  v63 = v16;
  v64 = v16;
  v65 = v18;
  v66 = v20;
  sub_10001A510(v57, v75, &qword_1000DB2C8, &qword_1000926F0);
  sub_10000A628(v61, &qword_1000DB2C8, &qword_1000926F0);
  v22 = a1[5] * 0.0174532925;
  static UnitPoint.center.getter();
  *&v73 = v20;
  v23 = v39;
  v25 = v40;
  v24 = v41;
  v71 = v40;
  v72 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v24;
  v26 = v37;
  v27 = v37;
  v28 = v38;
  v29 = v39;
  v69 = v38;
  v70 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v29;
  v30 = v36;
  v31 = v36;
  v67 = v36;
  v68 = v26;
  *(&v73 + 1) = v21;
  v74 = 0;
  *(a2 + 112) = 0;
  *a2 = v30;
  *(a2 + 16) = v26;
  *(a2 + 96) = v73;
  *(a2 + 120) = v22;
  *(a2 + 128) = 0x3FF0000000000000;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = v32;
  *(a2 + 160) = v33;
  *(a2 + 168) = xmmword_100092540;
  v75[0] = v31;
  v75[1] = v27;
  v76 = v20;
  v75[4] = v25;
  v75[5] = v41;
  v75[2] = v28;
  v75[3] = v23;
  v77 = v21;
  v78 = 0;
  sub_10001A510(&v67, v35, &qword_1000DB2D0, &qword_1000926F8);
  return sub_10000A628(v75, &qword_1000DB2D0, &qword_1000926F8);
}

uint64_t sub_100020240@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v4 = sub_1000056EC(&qword_1000DB1A8, &qword_100092610);
  v69 = v4;
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  v7 = __chkstk_darwin(v4, v6);
  v78 = &v58 - v8;
  v83 = *(a1 - 8);
  v81 = *(v83 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1000056EC(&qword_1000DB1B0, &qword_100092618);
  v12 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74, v13);
  v60 = &v58 - v14;
  v75 = sub_1000056EC(&qword_1000DB1B8, &qword_100092620);
  v15 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75, v16);
  v82 = &v58 - v17;
  v63 = a1;
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  v76 = *(v18 + 8);
  type metadata accessor for _ValueActionModifier();
  v20 = type metadata accessor for ModifiedContent();
  v77 = *(v20 - 8);
  v21 = *(v77 + 64);
  __chkstk_darwin(v20, v22);
  v73 = &v58 - v23;
  v24 = sub_1000219BC();
  v67 = v24;
  WitnessTable = swift_getWitnessTable();
  v91 = v24;
  v92 = WitnessTable;
  v68 = v20;
  v26 = swift_getWitnessTable();
  v71 = v26;
  v70 = sub_10000EE58(&qword_1000DB1D0, &qword_1000DB1A8, &qword_100092610);
  v87 = v20;
  v88 = v4;
  v89 = v26;
  v90 = v70;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v66 + 64);
  v29 = __chkstk_darwin(OpaqueTypeMetadata2, v28);
  v64 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v31);
  v65 = &v58 - v32;
  static Alignment.top.getter();
  v33 = v19;
  v59 = v19;
  v84 = v19;
  v85 = v18;
  v34 = v18;
  v61 = v18;
  v35 = v2;
  v86 = v2;
  sub_1000056EC(&qword_1000DB1D8, &qword_100092628);
  sub_100021A80();
  ZStack.init(alignment:content:)();
  v36 = v83;
  v62 = *(v83 + 16);
  v37 = v63;
  v62(v11, v35, v63);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = v33;
  *(v39 + 24) = v34;
  v40 = *(v36 + 32);
  v83 = v36 + 32;
  v40(v39 + v38, v11, v37);
  sub_10000EE58(&qword_1000DB1C8, &qword_1000DB1B0, &qword_100092618);
  v41 = v60;
  View.onAppear(perform:)();

  sub_10000A628(v41, &qword_1000DB1B0, &qword_100092618);
  v42 = *(v37 + 36);
  v62(v11, v35, v37);
  v43 = swift_allocObject();
  v44 = v61;
  *(v43 + 16) = v59;
  *(v43 + 24) = v44;
  v40(v43 + v38, v11, v37);
  v45 = v73;
  v46 = v82;
  View.onChange<A>(of:perform:)();

  sub_10000A628(v46, &qword_1000DB1B8, &qword_100092620);
  v47 = v78;
  sub_1000211D0(v37, v48, v78);
  static GestureMask.all.getter();
  v49 = v64;
  v50 = v68;
  v51 = v69;
  View.gesture<A>(_:including:)();
  (*(v79 + 8))(v47, v51);
  (*(v77 + 8))(v45, v50);
  v52 = v66;
  v53 = *(v66 + 16);
  v54 = v65;
  v55 = OpaqueTypeMetadata2;
  v53(v65, v49, OpaqueTypeMetadata2);
  v56 = *(v52 + 8);
  v56(v49, v55);
  v53(v80, v54, v55);
  return (v56)(v54, v55);
}

uint64_t sub_1000209B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v28 = a1;
  v29 = a3;
  v31 = a4;
  v6 = type metadata accessor for MultipleSubtitles();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v28 - v10;
  v12 = sub_1000056EC(&qword_1000DB1D8, &qword_100092628);
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v30 = &v28 - v20;
  v34 = *a1;
  type metadata accessor for Subtitle();
  type metadata accessor for Array();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  v32 = v33;
  swift_getKeyPath();
  (*(v7 + 16))(v11, v28, v6);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v23 = v29;
  *(v22 + 16) = a2;
  *(v22 + 24) = v23;
  (*(v7 + 32))(v22 + v21, v11, v6);
  sub_1000056EC(&qword_1000DB298, &qword_1000926A0);
  sub_1000056EC(&qword_1000DB1F0, &qword_100092630);
  sub_100022390();
  sub_100021B04();
  ForEach<>.init(_:id:content:)();
  sub_100021A80();
  v24 = v13[2];
  v25 = v30;
  v24(v30, v18, v12);
  v26 = v13[1];
  v26(v18, v12);
  v24(v31, v25, v12);
  return (v26)(v25, v12);
}

double sub_100020CFC@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v8 = type metadata accessor for Subtitle();
  v9 = *(v8 - 8);
  v43 = v8;
  v44 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v36 - v12;
  v42 = &v36 - v12;
  v38 = *a1;
  v14 = *a2;
  Array.subscript.getter();
  v15 = &v13[*(v8 + 36)];
  v16 = v15[1];
  v56[0] = *v15;
  v56[1] = v16;
  sub_10001F080();

  v17 = Text.init<A>(_:)();
  v19 = v18;
  v21 = v20;
  static Font.body.getter();
  v22 = Text.font(_:)();
  v24 = v23;
  v26 = v25;
  v37 = v27;

  sub_100022470(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  *&v56[6] = v22;
  *&v56[7] = v24;
  v57 = v26 & 1;
  v58 = v37;
  v59 = KeyPath;
  v60 = 1;
  v29 = type metadata accessor for MultipleSubtitles();
  sub_100020F50(v38, v29, v56);
  sub_10001FAB0(v56, v45);
  sub_100022470(v22, v24, v26 & 1);

  (*(v44 + 8))(v42, v43);
  v30 = v53;
  *(a5 + 128) = v52;
  *(a5 + 144) = v30;
  *(a5 + 160) = v54;
  *(a5 + 176) = v55;
  v31 = v49;
  *(a5 + 64) = v48;
  *(a5 + 80) = v31;
  v32 = v51;
  *(a5 + 96) = v50;
  *(a5 + 112) = v32;
  v33 = v45[1];
  *a5 = v45[0];
  *(a5 + 16) = v33;
  result = *&v46;
  v35 = v47;
  *(a5 + 32) = v46;
  *(a5 + 48) = v35;
  return result;
}

double sub_100020F50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v6 = (v3 + *(a2 + 48));
  v10 = *v6;
  v11 = v6[1];
  sub_1000056EC(&qword_1000DB280, &unk_100092678);
  State.wrappedValue.getter();
  v7 = 1.0 - vabdd_f64(v5, v9);
  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  *a3 = v7;
  *(a3 + 8) = (v5 - v9) * 100.0;
  *(a3 + 16) = xmmword_100092550;
  result = 1.0 - v7 + 1.0 - v7;
  *(a3 + 32) = result;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_100021008(uint64_t a1, uint64_t a2)
{
  v16 = *v2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for Subtitle();
  type metadata accessor for Array();

  swift_getWitnessTable();
  Collection.firstIndex(where:)();

  v6 = v14;
  if (v15)
  {
    v6 = 0;
  }

  v14 = v6;
  sub_1000220A8();
  v7 = sub_100021618(&v14, &type metadata for Int);
  if (*(v2 + *(a2 + 44)) == 1)
  {
    v8 = static Animation.easeOut.getter();
    __chkstk_darwin(v8, v9);
    withAnimation<A>(_:_:)();
  }

  else
  {
    v11 = (v2 + *(a2 + 48));
    v12 = *v11;
    v13 = v11[1];
    v14 = v12;
    v15 = v13;
    v16 = v7;
    sub_1000056EC(&qword_1000DB280, &unk_100092678);
    return State.wrappedValue.setter();
  }
}

uint64_t sub_1000211D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v46 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1, a2);
  v38 = v7;
  v8 = type metadata accessor for LocalCoordinateSpace();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v11 = type metadata accessor for DragGesture();
  v12 = *(v11 - 8);
  v42 = v11;
  v43 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000056EC(&qword_1000DB258, &qword_100092668);
  v18 = *(v17 - 8);
  v44 = v17;
  v45 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v39 = &v33 - v21;
  static CoordinateSpaceProtocol<>.local.getter();
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  v40 = *(v6 + 16);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40(v34, v4, a1);
  v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  v36 = *(a1 + 24);
  v25 = v36;
  v37 = v24;
  *(v23 + 16) = v24;
  *(v23 + 24) = v25;
  v35 = *(v6 + 32);
  v35(v23 + v22, &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100021F6C(&qword_1000DB260, &type metadata accessor for DragGesture);
  sub_100021F6C(&qword_1000DB268, &type metadata accessor for DragGesture.Value);
  v26 = v39;
  v27 = v42;
  Gesture<>.onChanged(_:)();

  (*(v43 + 8))(v16, v27);
  v28 = v34;
  v40(v34, v41, a1);
  v29 = swift_allocObject();
  v30 = v36;
  *(v29 + 16) = v37;
  *(v29 + 24) = v30;
  v35(v29 + v22, v28, a1);
  sub_10000EE58(&qword_1000DB270, &qword_1000DB258, &qword_100092668);
  v31 = v44;
  Gesture.onEnded(_:)();

  return (*(v45 + 8))(v26, v31);
}

double sub_100021618(char *a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1, a2);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, a2);
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    v10 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v11 = dispatch thunk of BinaryInteger._lowWord.getter();
    v12 = *(v4 + 8);
    v12(a1, a2);
    v12(v7, a2);
    if (v10)
    {
      return v11;
    }

    else
    {
      return v11;
    }
  }

  else
  {
    sub_100022120();
    sub_100022174();
    static BinaryFloatingPoint<>._convert<A>(from:)();
    v8 = *(v4 + 8);
    v8(a1, a2);
    v8(v7, a2);
    return *&v13[1];
  }
}

uint64_t sub_1000217D0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MultipleSubtitles() + 48));
  v3 = *v1;
  v4 = v1[1];
  sub_1000056EC(&qword_1000DB280, &unk_100092678);
  return State.wrappedValue.setter();
}

uint64_t sub_100021854(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MultipleSubtitles();
  v4 = (a2 + *(v3 + 52));
  v5 = *v4;
  v6 = *(v4 + 1);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  result = State.wrappedValue.getter();
  if ((v11 & 1) == 0)
  {
    result = DragGesture.Value.translation.getter();
    if (v8 >= 30.0)
    {
      v9 = a2 + *(v3 + 40);
      if (*v9)
      {
        v10 = *(v9 + 8);
        (*v9)(result);
      }

      return State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_100021940(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for MultipleSubtitles() + 52));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  return State.wrappedValue.setter();
}

unint64_t sub_1000219BC()
{
  result = qword_1000DB1C0;
  if (!qword_1000DB1C0)
  {
    sub_100005818(&qword_1000DB1B8, &qword_100092620);
    sub_10000EE58(&qword_1000DB1C8, &qword_1000DB1B0, &qword_100092618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1C0);
  }

  return result;
}

unint64_t sub_100021A80()
{
  result = qword_1000DB1E0;
  if (!qword_1000DB1E0)
  {
    sub_100005818(&qword_1000DB1D8, &qword_100092628);
    sub_100021B04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1E0);
  }

  return result;
}

unint64_t sub_100021B04()
{
  result = qword_1000DB1E8;
  if (!qword_1000DB1E8)
  {
    sub_100005818(&qword_1000DB1F0, &qword_100092630);
    sub_100021B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1E8);
  }

  return result;
}

unint64_t sub_100021B90()
{
  result = qword_1000DB1F8;
  if (!qword_1000DB1F8)
  {
    sub_100005818(&qword_1000DB200, &qword_100092638);
    sub_100021C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB1F8);
  }

  return result;
}

unint64_t sub_100021C1C()
{
  result = qword_1000DB208;
  if (!qword_1000DB208)
  {
    sub_100005818(&qword_1000DB210, &qword_100092640);
    sub_100021CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB208);
  }

  return result;
}

unint64_t sub_100021CA8()
{
  result = qword_1000DB218;
  if (!qword_1000DB218)
  {
    sub_100005818(&qword_1000DB220, &qword_100092648);
    sub_100021D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB218);
  }

  return result;
}

unint64_t sub_100021D34()
{
  result = qword_1000DB228;
  if (!qword_1000DB228)
  {
    sub_100005818(&qword_1000DB230, &qword_100092650);
    sub_100021DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB228);
  }

  return result;
}

unint64_t sub_100021DC0()
{
  result = qword_1000DB238;
  if (!qword_1000DB238)
  {
    sub_100005818(&qword_1000DB240, &qword_100092658);
    sub_10000EE58(&qword_1000DB248, &qword_1000DB250, &qword_100092660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB238);
  }

  return result;
}

uint64_t sub_100021E7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for MultipleSubtitles();
  return sub_100021008(v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80)) + *(v3 + 36), v3);
}

uint64_t sub_100021EE8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for MultipleSubtitles();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return sub_100021008(a1, v5);
}

uint64_t sub_100021F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100021FCC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for MultipleSubtitles() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return a2(a1, v7, v4, v5);
}

uint64_t sub_10002206C()
{
  v1 = v0[4];
  v2 = *(v0[3] + 8);
  v3 = v0[2];
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

unint64_t sub_1000220A8()
{
  result = qword_1000DB278;
  if (!qword_1000DB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB278);
  }

  return result;
}

uint64_t sub_1000220FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  return sub_1000217D0(v0[4]);
}

unint64_t sub_100022120()
{
  result = qword_1000DB288;
  if (!qword_1000DB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB288);
  }

  return result;
}

unint64_t sub_100022174()
{
  result = qword_1000DB290;
  if (!qword_1000DB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB290);
  }

  return result;
}

uint64_t sub_1000221C8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = type metadata accessor for MultipleSubtitles();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = *(v0 + v5);

  (*(*(v2 - 8) + 8))(v0 + v5 + v3[9], v2);
  v9 = (v0 + v5 + v3[10]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = *(v7 + v3[12] + 8);

  v12 = *(v7 + v3[13] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

double sub_1000222F4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for MultipleSubtitles() - 8);
  v8 = (v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return sub_100020CFC(a1, v8, v5, v6, a2);
}

unint64_t sub_100022390()
{
  result = qword_1000DB2A0;
  if (!qword_1000DB2A0)
  {
    sub_100005818(&qword_1000DB298, &qword_1000926A0);
    sub_10002241C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB2A0);
  }

  return result;
}

unint64_t sub_10002241C()
{
  result = qword_1000DB2A8;
  if (!qword_1000DB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB2A8);
  }

  return result;
}

uint64_t sub_100022470(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100022540(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_100005818(&qword_1000DB1B8, &qword_100092620);
  v3 = *(v2 + 8);
  type metadata accessor for _ValueActionModifier();
  type metadata accessor for ModifiedContent();
  sub_100005818(&qword_1000DB1A8, &qword_100092610);
  sub_1000219BC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10000EE58(&qword_1000DB1D0, &qword_1000DB1A8, &qword_100092610);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100022734()
{
  result = qword_1000DB2E8;
  if (!qword_1000DB2E8)
  {
    type metadata accessor for PCActivityType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB2E8);
  }

  return result;
}

uint64_t sub_100022814()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DB2F0);
  sub_1000047A0(v0, qword_1000DB2F0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100022894(uint64_t a1)
{
  v2 = v1;
  v4 = swift_isaMask & *v1;
  v5 = *(v4 + qword_1000F3C10 + 16);
  *(v2 + v5) = [objc_allocWithZone(type metadata accessor for AdaptivePresentationControllerDelegate()) init];
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000DB2F0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  v10 = sub_10004F728(a1);
  v11 = [v10 presentationController];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {

LABEL_19:
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "### Could not get UISheetPresentationController", v30, 2u);
    }

    goto LABEL_22;
  }

  v14 = v13;
  v15 = [objc_opt_self() currentTraitCollection];
  [v15 displayCornerRadius];
  v17 = v16;

  UISheetPresentationController.preferredCornerRadius.setter();
  [v14 _setCornerRadiusForPresentationAndDismissal:v17];
  [v14 setDelegate:*(v10 + *((swift_isaMask & *v10) + qword_1000F3C10 + 16))];
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v18 = *(qword_1000F3C58 + 640);
  v19 = sub_100025508();

  if ((v19 & 1) == 0)
  {
    (*(*(*(v4 + qword_1000F3C10) - 8) + 8))(a1);
LABEL_26:

    return v10;
  }

  v20 = [v14 detents];
  sub_1000236E8();
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  if (!v22)
  {
LABEL_25:
    (*(*(*(v4 + qword_1000F3C10) - 8) + 8))(a1);

    goto LABEL_26;
  }

LABEL_12:
  v23 = __OFSUB__(v22, 1);
  result = v22 - 1;
  if (v23)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v21 + 8 * result + 32);
LABEL_17:
    v26 = v25;

    v27 = [v26 identifier];
    [v14 setLargestUndimmedDetentIdentifier:v27];

LABEL_22:
    (*(*(*(v4 + qword_1000F3C10) - 8) + 8))(a1);
    return v10;
  }

  __break(1u);
  return result;
}

id sub_100022DE4()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000047A0(v3, qword_1000DB2F0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "deinit", v6, 2u);
  }

  v7 = *(v2 + qword_1000F3C10);
  v8 = *(v2 + qword_1000F3C10 + 8);
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CardHostingController();
  return objc_msgSendSuper2(&v10, "dealloc");
}

void sub_100022FA8()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v1 + qword_1000F3C10);
  v3 = *(v1 + qword_1000F3C10 + 8);
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CardHostingController();
  objc_msgSendSuper2(&v10, "viewDidLoad");
  if (qword_1000D9758 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000DB2F0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0x4C64694477656976, 0xED0000292864616FLL, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }
}

void sub_100023148(void *a1)
{
  v1 = a1;
  sub_100022FA8();
}

uint64_t sub_1000231D8()
{
  v1 = OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate____lazy_storage___publisher;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate____lazy_storage___publisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate____lazy_storage___publisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate_subject);
    sub_1000056EC(&qword_1000DB420, &unk_1000928A0);
    sub_1000235C8();
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1000232A4(char *a1, uint64_t a2, void *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC13PCViewService38AdaptivePresentationControllerDelegate_subject];
  v5 = a3;
  v6 = a1;
  PassthroughSubject.send(_:)();
}

id sub_100023408()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdaptivePresentationControllerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000234AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000234D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100023530(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_10002358C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_1000235C8()
{
  result = qword_1000DB428;
  if (!qword_1000DB428)
  {
    sub_100005818(&qword_1000DB420, &unk_1000928A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB428);
  }

  return result;
}

void sub_10002362C()
{
  v1 = *((swift_isaMask & *v0) + qword_1000F3C10 + 16);
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for AdaptivePresentationControllerDelegate()) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1000236E8()
{
  result = qword_1000DA8C0;
  if (!qword_1000DA8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DA8C0);
  }

  return result;
}

unint64_t sub_100023748()
{
  v1 = *v0;
  v2 = 0x44497472656C61;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x736E6F69746361;
  }

  v4 = 0x6C65694674786574;
  if (v1 != 3)
  {
    v4 = 0x74756F656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100023830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100024E2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100023864(uint64_t a1)
{
  v2 = sub_100023BD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000238A0(uint64_t a1)
{
  v2 = sub_100023BD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PCUserAlertPresentationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000DB430, &qword_1000928B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v27[-v9];
  v11 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100023BD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v34 = 0;
  type metadata accessor for UUID();
  sub_100024350(&qword_1000DB440, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for PCUserAlertPresentationContext();
    v13 = (v3 + v12[5]);
    v14 = *v13;
    v15 = v13[1];
    v33 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = (v3 + v12[6]);
    v17 = *v16;
    v18 = v16[1];
    v32 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v3 + v12[7]);
    v20 = *v19;
    v21 = v19[1];
    v31 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = (v3 + v12[8]);
    v23 = *v22;
    v24 = *(v22 + 8);
    v30 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + v12[9]);
    v29 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v3 + v12[10]);
    v27[15] = 6;
    sub_1000056EC(&qword_1000DB448, &qword_1000928B8);
    sub_1000241A0(&qword_1000DB450);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

unint64_t sub_100023BD8()
{
  result = qword_1000DB438;
  if (!qword_1000DB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB438);
  }

  return result;
}

uint64_t type metadata accessor for PCUserAlertPresentationContext()
{
  result = qword_1000DB558;
  if (!qword_1000DB558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PCUserAlertPresentationContext.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = type metadata accessor for UUID();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  __chkstk_darwin(v4, v6);
  v39 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1000056EC(&qword_1000DB458, &qword_1000928C0);
  v37 = *(v41 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v41, v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for PCUserAlertPresentationContext();
  v13 = *(*(v12 - 1) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100023BD8();
  v40 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000529C(a1);
  }

  v18 = v16;
  v20 = v37;
  v19 = v38;
  v49 = 0;
  sub_100024350(&qword_1000DB460, &type metadata accessor for UUID);
  v21 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(v18, v21, v4);
  v48 = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v4;
  v23 = (v18 + v12[5]);
  *v23 = v22;
  v23[1] = v24;
  v47 = 2;
  v39 = 0;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = (v18 + v12[6]);
  *v26 = v25;
  v26[1] = v27;
  v46 = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = (v18 + v12[7]);
  *v29 = v28;
  v29[1] = v30;
  v45 = 4;
  v31 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v32 = v18 + v12[8];
  *v32 = v31;
  *(v32 + 8) = v33 & 1;
  v44 = 5;
  *(v18 + v12[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_1000056EC(&qword_1000DB448, &qword_1000928B8);
  v43 = 6;
  sub_1000241A0(&qword_1000DB468);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v40, v41);
  *(v18 + v12[10]) = v42;
  sub_10002420C(v18, v36);
  sub_10000529C(a1);
  return sub_100024270(v18);
}

uint64_t sub_1000241A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100005818(&qword_1000DB448, &qword_1000928B8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002420C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCUserAlertPresentationContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100024270(uint64_t a1)
{
  v2 = type metadata accessor for PCUserAlertPresentationContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000242CC(uint64_t a1)
{
  *(a1 + 8) = sub_100024350(&qword_1000DB470, type metadata accessor for PCUserAlertPresentationContext);
  result = sub_100024350(qword_1000DB478, type metadata accessor for PCUserAlertPresentationContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100024350(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000243C8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100024404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100024428(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100024470(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000244F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000245C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

void sub_100024678()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1000247A8(319, &qword_1000DAC60, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000247A8(319, &qword_1000DB568, &type metadata for Double, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000247A8(319, &unk_1000DB570, &type metadata for String, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000247A8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100024800(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1000247A8(319, &qword_1000DAC60, &type metadata for String, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000248AC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1000249F0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PCUserAlertPresentationContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PCUserAlertPresentationContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100024D28()
{
  result = qword_1000DB638;
  if (!qword_1000DB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB638);
  }

  return result;
}

unint64_t sub_100024D80()
{
  result = qword_1000DB640;
  if (!qword_1000DB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB640);
  }

  return result;
}

unint64_t sub_100024DD8()
{
  result = qword_1000DB648;
  if (!qword_1000DB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB648);
  }

  return result;
}

uint64_t sub_100024E2C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497472656C61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65694674786574 && a2 == 0xEF74706D6F725064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A1B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100025080()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v10 = (v0 + *(v1 + 96));
LABEL_7:
    v9 = *v10;
    v11 = v10[1];

    return v9;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v35, v34);
  sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v13 = String._bridgeToObjectiveC()();
    v14 = [v6 stringForKey:v13];

    if (v14)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10000529C(v35);
      return v9;
    }

    v15 = String._bridgeToObjectiveC()();
    v16 = [v6 dataForKey:v15];

    if (v16)
    {
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v20 = *((swift_isaMask & *v0) + 0x80);
      v21 = v0;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v32 = v19;
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v34[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_1000343F8(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v24, 0xCu);
        sub_10000529C(v25);

        sub_100008A9C(v17, v32);
      }

      else
      {

        sub_100008A9C(v17, v19);
      }

      sub_10000529C(v35);
      v31 = *((swift_isaMask & *v21) + 0x60);
    }

    else
    {
      v26 = *((swift_isaMask & *v0) + 0x80);
      v21 = v0;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v34[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_1000343F8(v5, v4, v34);
        _os_log_impl(&_mh_execute_header, v27, v28, "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}", v29, 0xCu);
        sub_10000529C(v30);
      }

      sub_10000529C(v35);
      v31 = *((swift_isaMask & *v21) + 0x60);
    }

    v10 = (v21 + v31);
    goto LABEL_7;
  }

  sub_10000529C(v35);

  return v33;
}

uint64_t sub_100025508()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
    return v9 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v36, v35);
  if (swift_dynamicCast())
  {
    sub_10000529C(v36);

    v9 = v34;
    return v9 & 1;
  }

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_100009F88();
    if (v13 != 2)
    {
      v9 = v13;
      sub_10000529C(v36);

      return v9 & 1;
    }

    v14 = *((swift_isaMask & *v0) + 0x80);
    v15 = v0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000343F8(v5, v4, v35);
      v20 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v16, v17, v20, v18, 0xCu);
      sub_10000529C(v19);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v6 dataForKey:v21];

  if (!v22)
  {
    v32 = *((swift_isaMask & *v0) + 0x80);
    v15 = v0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1000343F8(v5, v4, v35);
      v20 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_18;
    }

LABEL_19:

    sub_10000529C(v36);
    v9 = *(v15 + *((swift_isaMask & *v15) + 0x60));
    return v9 & 1;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = *((swift_isaMask & *v0) + 0x80);
  v27 = v0;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v33 = v25;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v35[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000343F8(v5, v4, v35);
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v30, 0xCu);
    sub_10000529C(v31);

    sub_100008A9C(v23, v33);
  }

  else
  {

    sub_100008A9C(v23, v25);
  }

  sub_10000529C(v36);
  v9 = *(v27 + *((swift_isaMask & *v27) + 0x60));
  return v9 & 1;
}

uint64_t sub_100025A58()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    return *(v0 + *(v1 + 96));
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
    return *(v0 + *(v1 + 96));
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v40, v39);
  if (swift_dynamicCast())
  {
    sub_10000529C(v40);

    return v38;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_100009C88(v12, v14);
    if ((v16 & 1) == 0)
    {
      v35 = v15;
      sub_10000529C(v40);

      return v35;
    }

    v17 = *((swift_isaMask & *v0) + 0x80);
    v18 = v0;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000343F8(v5, v4, v39);
    v23 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_18;
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = [v6 dataForKey:v24];

  if (!v25)
  {
    v36 = *((swift_isaMask & *v0) + 0x80);
    v18 = v0;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v19, v20))
    {
LABEL_19:

      sub_10000529C(v40);
      return *(v18 + *((swift_isaMask & *v18) + 0x60));
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39[0] = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_1000343F8(v5, v4, v39);
    v23 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v19, v20, v23, v21, 0xCu);
    sub_10000529C(v22);

    goto LABEL_19;
  }

  v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = *((swift_isaMask & *v0) + 0x80);
  v30 = v0;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v37 = v28;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39[0] = v34;
    *v33 = 136315138;
    *(v33 + 4) = sub_1000343F8(v5, v4, v39);
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v33, 0xCu);
    sub_10000529C(v34);

    sub_100008A9C(v26, v37);
  }

  else
  {

    sub_100008A9C(v26, v28);
  }

  sub_10000529C(v40);
  return *(v30 + *((swift_isaMask & *v30) + 0x60));
}

uint64_t sub_100025F94(uint64_t a1, Swift::OpaquePointer a2)
{
  v3 = swift_isaMask & *v2;
  v4 = *(v2 + *(v3 + 0x70));
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = (v2 + *((swift_isaMask & *v2) + 0x68));
  v8 = *v6;
  v7 = v6[1];
  v9 = v4;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 objectForKey:v10];

  if (!v11)
  {

    v3 = swift_isaMask & *v2;
LABEL_6:
    v12 = *(v2 + *(v3 + 96));
    return v12 & 1;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v43, v42);
  if (swift_dynamicCast())
  {
    sub_10000529C(v43);

    v12 = v41;
    return v12 & 1;
  }

  v14 = String._bridgeToObjectiveC()();
  v15 = [v9 stringForKey:v14];

  if (v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    v19._countAndFlagsBits = v16;
    v19._object = v18;
    v20 = _findStringSwitchCase(cases:string:)(a2, v19);

    if (!v20)
    {
      v12 = 0;
      goto LABEL_16;
    }

    if (v20 == 1)
    {
      v12 = 1;
LABEL_16:
      sub_10000529C(v43);

      return v12 & 1;
    }

    v32 = *((swift_isaMask & *v2) + 0x80);
    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000343F8(v8, v7, v42);
      v38 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
LABEL_21:
      _os_log_impl(&_mh_execute_header, v34, v35, v38, v36, 0xCu);
      sub_10000529C(v37);

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v21 = String._bridgeToObjectiveC()();
  v22 = [v9 dataForKey:v21];

  if (!v22)
  {
    v39 = *((swift_isaMask & *v2) + 0x80);
    v33 = v2;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v42[0] = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1000343F8(v8, v7, v42);
      v38 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
      goto LABEL_21;
    }

LABEL_22:

    sub_10000529C(v43);
    v12 = *(v33 + *((swift_isaMask & *v33) + 0x60));
    return v12 & 1;
  }

  v23 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v26 = *((swift_isaMask & *v2) + 0x80);
  v27 = v2;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v40 = v25;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v42[0] = v31;
    *v30 = 136315138;
    *(v30 + 4) = sub_1000343F8(v8, v7, v42);
    _os_log_impl(&_mh_execute_header, v28, v29, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v30, 0xCu);
    sub_10000529C(v31);

    sub_100008A9C(v23, v40);
  }

  else
  {

    sub_100008A9C(v23, v25);
  }

  sub_10000529C(v43);
  v12 = *(v27 + *((swift_isaMask & *v27) + 0x60));
  return v12 & 1;
}

void sub_1000264EC()
{
  v1 = swift_isaMask & *v0;
  v2 = *(v0 + *(v1 + 0x70));
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = (v0 + *((swift_isaMask & *v0) + 0x68));
  v5 = *v3;
  v4 = v3[1];
  v6 = v2;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    v1 = swift_isaMask & *v0;
LABEL_6:
    v9 = *(v0 + *(v1 + 96));
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10000A150(v39, v38);
  if (swift_dynamicCast())
  {
    sub_10000529C(v39);

    return;
  }

  v10 = String._bridgeToObjectiveC()();
  v11 = [v6 stringForKey:v10];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v38[0] = 0;
    v15 = sub_10002A76C(v12, v14);

    if (v15)
    {

      sub_10000529C(v39);
      return;
    }

    v27 = *((swift_isaMask & *v0) + 0x80);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
      goto LABEL_18;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1000343F8(v5, v4, v38);
    v33 = "Failed to create value from stored UserDefault. Returning default value {key: %s}";
    goto LABEL_17;
  }

  v16 = String._bridgeToObjectiveC()();
  v17 = [v6 dataForKey:v16];

  if (!v17)
  {
    v34 = *((swift_isaMask & *v0) + 0x80);
    v28 = v0;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v29, v30))
    {
LABEL_18:

      sub_10000529C(v39);
      v35 = *(v28 + *((swift_isaMask & *v28) + 0x60));
      return;
    }

    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v38[0] = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_1000343F8(v5, v4, v38);
    v33 = "Failed to cast value or get string from stored UserDefault. Returning default value {key: %s}";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v29, v30, v33, v31, 0xCu);
    sub_10000529C(v32);

    goto LABEL_18;
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = *((swift_isaMask & *v0) + 0x80);
  v22 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v37 = v20;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1000343F8(v5, v4, v38);
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed to create value from stored UserDefault. Returning default value {key: %s}", v25, 0xCu);
    sub_10000529C(v26);

    sub_100008A9C(v18, v37);
  }

  else
  {

    sub_100008A9C(v18, v20);
  }

  sub_10000529C(v39);
  v36 = *(v22 + *((swift_isaMask & *v22) + 0x60));
}

uint64_t sub_100026A34()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

Swift::Int sub_100026AAC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100026B18()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100026B58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100026BF8()
{
  v1 = OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher;
  if (*(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher);
  }

  else
  {
    v6 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel_cardEventSubject);
    sub_1000056EC(&qword_1000DBA00, &qword_100092F78);
    sub_10000EE58(&qword_1000DBA08, &qword_1000DBA00, &qword_100092F78);
    v3 = v0;
    v2 = Publisher.eraseToAnyPublisher()();
    v4 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100026CD4()
{
  v1 = OBJC_IVAR____TtC13PCViewService13CardViewModel__header;
  v2 = sub_1000056EC(&qword_1000DB9F8, &qword_100092F70);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13PCViewService13CardViewModel__content;
  v4 = sub_1000056EC(&qword_1000DB9F0, &qword_100092F68);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13PCViewService13CardViewModel__closeButtonEnabled;
  v6 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel__enablePaddingForCloseButton, v6);
  v8 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel_cardEventSubject);

  v9 = *(v0 + OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher);

  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v10, v11);
}

uint64_t type metadata accessor for CardViewModel()
{
  result = qword_1000DB6A0;
  if (!qword_1000DB6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100026EB8()
{
  sub_100027004(319, &qword_1000DB6B0, &qword_1000DA920, &qword_100091C70);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100027004(319, &unk_1000DB6B8, &qword_1000DA930, &qword_100091D08);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100027058();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100027004(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005818(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_100027058()
{
  if (!qword_1000DADC0)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_1000DADC0);
    }
  }
}

uint64_t getEnumTagSinglePayload for CardViewEvent(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CardViewEvent(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1000271BC()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v30 = *(v2 - 8);
  v31 = v2;
  v3 = *(v30 + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v29 - v5;
  v29 = sub_1000056EC(&qword_1000DB9F0, &qword_100092F68);
  v7 = *(v29 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v29, v9);
  v11 = &v29 - v10;
  v12 = sub_1000056EC(&qword_1000DB9F8, &qword_100092F70);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v29 - v16;
  v18 = OBJC_IVAR____TtC13PCViewService13CardViewModel__header;
  *&v35 = 0;
  v33 = 0u;
  v34 = 0u;
  sub_10001A510(&v33, v32, &qword_1000DA920, &qword_100091C70);
  sub_1000056EC(&qword_1000DA920, &qword_100091C70);
  Published.init(initialValue:)();
  sub_10000A628(&v33, &qword_1000DA920, &qword_100091C70);
  (*(v13 + 32))(v1 + v18, v17, v12);
  v19 = OBJC_IVAR____TtC13PCViewService13CardViewModel__content;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  sub_10001A510(&v33, v32, &qword_1000DA930, &qword_100091D08);
  sub_1000056EC(&qword_1000DA930, &qword_100091D08);
  Published.init(initialValue:)();
  sub_10000A628(&v33, &qword_1000DA930, &qword_100091D08);
  (*(v7 + 32))(v1 + v19, v11, v29);
  v20 = OBJC_IVAR____TtC13PCViewService13CardViewModel__closeButtonEnabled;
  LOBYTE(v33) = 1;
  Published.init(initialValue:)();
  v21 = v31;
  v22 = *(v30 + 32);
  v22(v1 + v20, v6, v31);
  v23 = OBJC_IVAR____TtC13PCViewService13CardViewModel__enablePaddingForCloseButton;
  LOBYTE(v33) = 1;
  Published.init(initialValue:)();
  v22(v1 + v23, v6, v21);
  v24 = OBJC_IVAR____TtC13PCViewService13CardViewModel_cardEventSubject;
  v25 = sub_1000056EC(&qword_1000DBA00, &qword_100092F78);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v1 + v24) = PassthroughSubject.init()();
  *(v1 + OBJC_IVAR____TtC13PCViewService13CardViewModel____lazy_storage___cardEventPublisher) = 0;
  return v1;
}

uint64_t sub_100027544@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CardViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100027584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v47 = sub_1000056EC(&qword_1000DB840, &qword_100092D08);
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47, v6);
  v8 = &v45 - v7;
  v48 = sub_1000056EC(&qword_1000DB848, &qword_100092D10);
  v9 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48, v10);
  v46 = &v45 - v11;
  v12 = sub_1000056EC(&qword_1000DB850, &qword_100092D18);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8, v14);
  v16 = &v45 - v15;
  v17 = sub_1000056EC(&qword_1000DB858, &qword_100092D20);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v45 - v20;
  v22 = sub_1000056EC(&qword_1000DB860, &qword_100092D28);
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22 - 8, v24);
  v27 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v28);
  v30 = &v45 - v29;
  *v16 = static HorizontalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v31 = sub_1000056EC(&qword_1000DB868, &qword_100092D30);
  sub_100027AAC(a1, a2, &v16[*(v31 + 44)]);
  v32 = static Animation.default.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v51)
  {
    v34 = v52;
    v33 = v53;
  }

  else
  {
    v34 = 0;
    v33 = 0;
  }

  sub_10000A628(v50, &qword_1000DA930, &qword_100091D08);
  sub_10001F170(v16, v21, &qword_1000DB850, &qword_100092D18);
  v35 = &v21[*(v17 + 36)];
  *v35 = v32;
  v35[1] = v34;
  v35[2] = v33;
  v36 = static Color.red.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v37 = *(qword_1000F3C58 + 136);
  v38 = sub_100025508();

  if (v38)
  {
    v39 = v46;
    sub_100029ADC(v36, &qword_1000DB858, &qword_100092D20, &qword_1000DB848, &qword_100092D10, v46);
    sub_10001A510(v39, v8, &qword_1000DB848, &qword_100092D10);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB870, &qword_1000DB848, &qword_100092D10, sub_10002A660);
    sub_10002A660();
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v39, &qword_1000DB848, &qword_100092D10);
  }

  else
  {
    sub_10001A510(v21, v8, &qword_1000DB858, &qword_100092D20);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB870, &qword_1000DB848, &qword_100092D10, sub_10002A660);
    sub_10002A660();
    _ConditionalContent<>.init(storage:)();
  }

  sub_10000A628(v21, &qword_1000DB858, &qword_100092D20);
  sub_10001F170(v27, v30, &qword_1000DB860, &qword_100092D28);
  v40 = static SafeAreaRegions.container.getter();
  v41 = static Edge.Set.all.getter();
  v42 = v49;
  sub_10001F170(v30, v49, &qword_1000DB860, &qword_100092D28);
  result = sub_1000056EC(&qword_1000DB8A8, &qword_100092D88);
  v44 = v42 + *(result + 36);
  *v44 = v40;
  *(v44 + 8) = v41;
  return result;
}

uint64_t sub_100027AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v89 = sub_1000056EC(&qword_1000DB8B8, &qword_100092D98);
  v5 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89, v6);
  v8 = &v86 - v7;
  v90 = sub_1000056EC(&qword_1000DB8C0, &qword_100092DA0);
  v9 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90, v10);
  v87 = &v86 - v11;
  v12 = sub_1000056EC(&qword_1000DB8C8, &qword_100092DA8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = (&v86 - v15);
  v17 = sub_1000056EC(&qword_1000DB8D0, &qword_100092DB0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v86 - v20;
  v22 = sub_1000056EC(&qword_1000DB8D8, &qword_100092DB8);
  v23 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22 - 8, v24);
  v93 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v88 = &v86 - v29;
  __chkstk_darwin(v28, v30);
  v95 = &v86 - v31;
  *v16 = static Alignment.topTrailing.getter();
  v16[1] = v32;
  v33 = v16 + *(sub_1000056EC(&qword_1000DB8E0, &qword_100092DC0) + 44);
  v91 = a1;
  v92 = a2;
  sub_1000287F8(a1, a2, v33);
  v34 = static Edge.Set.top.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v35 = qword_1000F3C58;
  v36 = *(qword_1000F3C58 + 648);
  sub_1000264EC();

  EdgeInsets.init(_all:)();
  v37 = v16 + *(v12 + 36);
  *v37 = v34;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  *(v37 + 4) = v41;
  v37[40] = 0;
  sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_100092B80;
  v43 = static Edge.Set.leading.getter();
  *(v42 + 32) = v43;
  v44 = static Edge.Set.trailing.getter();
  *(v42 + 33) = v44;
  v45 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v43)
  {
    v45 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v44)
  {
    v45 = Edge.Set.init(rawValue:)();
  }

  v46 = *(v35 + 656);
  sub_1000264EC();

  EdgeInsets.init(_all:)();
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_10001F170(v16, v21, &qword_1000DB8C8, &qword_100092DA8);
  v55 = &v21[*(v17 + 36)];
  *v55 = v45;
  *(v55 + 1) = v48;
  *(v55 + 2) = v50;
  *(v55 + 3) = v52;
  *(v55 + 4) = v54;
  v55[40] = 0;
  v56 = static Color.green.getter();
  v57 = *(v35 + 136);
  v58 = sub_100025508();

  if (v58)
  {
    v86 = v35;
    v59 = v87;
    sub_100029ADC(v56, &qword_1000DB8D0, &qword_100092DB0, &qword_1000DB8C0, &qword_100092DA0, v87);
    sub_10001A510(v59, v8, &qword_1000DB8C0, &qword_100092DA0);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB8F0, &qword_1000DB8C0, &qword_100092DA0, sub_10002A914);
    sub_10002A914();
    v60 = v88;
    v35 = v86;
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v59, &qword_1000DB8C0, &qword_100092DA0);
  }

  else
  {
    sub_10001A510(v21, v8, &qword_1000DB8D0, &qword_100092DB0);
    swift_storeEnumTagMultiPayload();
    sub_10002A864(&qword_1000DB8F0, &qword_1000DB8C0, &qword_100092DA0, sub_10002A914);
    sub_10002A914();
    v60 = v88;
    _ConditionalContent<>.init(storage:)();
  }

  sub_10000A628(v21, &qword_1000DB8D0, &qword_100092DB0);
  sub_10001F170(v60, v95, &qword_1000DB8D8, &qword_100092DB8);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v89 = v139;
  v90 = v137;
  v87 = v142;
  v88 = v141;
  v136 = 1;
  v135 = v138;
  v134 = v140;
  sub_10002852C(v132);
  v62 = v132[0];
  v61 = v132[1];
  v63 = v133;
  v64 = static Color.blue.getter();
  v65 = *(v35 + 136);
  v66 = sub_100025508();

  if (v66)
  {
    sub_100029910(v64, v62, v61, v63, &v126);
    v112 = v130;
    v113[0] = v131[0];
    *&v113[1] = *&v131[1];
    v108 = v126;
    v109 = v127;
    v110 = v128;
    v111 = v129;
    v114 = v126;
    v115 = v127;
    v116 = v128;
    v117 = v129;
    v118 = v130;
    v119[0] = v131[0];
    *&v119[1] = *&v131[1];
    sub_10001A510(&v108, &v120, &qword_1000DB918, &qword_100092DD0);
    sub_10000A628(&v114, &qword_1000DB918, &qword_100092DD0);
    v124 = v112;
    v125[0] = v113[0];
    *&v125[1] = *&v113[1];
    v120 = v108;
    v121 = v109;
    v122 = v110;
    v123 = v111;
    LOBYTE(v102) = 0;
    BYTE8(v125[1]) = 0;
    sub_10001A510(&v108, &v126, &qword_1000DB918, &qword_100092DD0);
    sub_10001A510(&v108, &v126, &qword_1000DB918, &qword_100092DD0);
    sub_1000056EC(&qword_1000DB918, &qword_100092DD0);
    sub_1000056EC(&qword_1000DB920, &qword_100092DD8);
    sub_10002A864(&qword_1000DB928, &qword_1000DB918, &qword_100092DD0, sub_10002AA58);
    sub_10002AA58();
    _ConditionalContent<>.init(storage:)();
    sub_10002AB9C(v62, v61, v63);

    sub_10000A628(&v108, &qword_1000DB918, &qword_100092DD0);
    sub_10000A628(&v108, &qword_1000DB918, &qword_100092DD0);
  }

  else
  {
    LOBYTE(v114) = v63;
    LOBYTE(v108) = 1;
    *&v120 = v62;
    *(&v120 + 1) = v61;
    LOBYTE(v121) = v63;
    BYTE8(v125[1]) = 1;
    sub_1000056EC(&qword_1000DB918, &qword_100092DD0);
    sub_1000056EC(&qword_1000DB920, &qword_100092DD8);
    sub_10002A864(&qword_1000DB928, &qword_1000DB918, &qword_100092DD0, sub_10002AA58);
    sub_10002AA58();
    _ConditionalContent<>.init(storage:)();
  }

  v106 = v130;
  v107[0] = v131[0];
  *(v107 + 9) = *(v131 + 9);
  v102 = v126;
  v103 = v127;
  v104 = v128;
  v105 = v129;
  v108 = v126;
  v109 = v127;
  *(v113 + 9) = *(v131 + 9);
  v112 = v130;
  v113[0] = v131[0];
  v110 = v128;
  v111 = v129;
  sub_10001A510(&v102, &v120, &qword_1000DB948, &qword_100092DE8);
  sub_10000A628(&v108, &qword_1000DB948, &qword_100092DE8);
  v67 = v95;
  v68 = v93;
  sub_10001A510(v95, v93, &qword_1000DB8D8, &qword_100092DB8);
  v69 = v136;
  v70 = v135;
  v71 = v134;
  v100 = v106;
  v101[0] = v107[0];
  *(v101 + 9) = *(v107 + 9);
  v96 = v102;
  v97 = v103;
  v98 = v104;
  v99 = v105;
  v72 = v94;
  sub_10001A510(v68, v94, &qword_1000DB8D8, &qword_100092DB8);
  v73 = sub_1000056EC(&qword_1000DB950, &qword_100092DF0);
  v74 = v72 + v73[12];
  *v74 = 0;
  *(v74 + 8) = v69;
  v75 = v89;
  *(v74 + 16) = v90;
  *(v74 + 24) = v70;
  *(v74 + 32) = v75;
  *(v74 + 40) = v71;
  v76 = v87;
  *(v74 + 48) = v88;
  *(v74 + 56) = v76;
  v77 = v73[16];
  v78 = v97;
  v114 = v96;
  v115 = v97;
  v79 = v98;
  v80 = v99;
  v116 = v98;
  v117 = v99;
  v81 = v100;
  v82 = v101[0];
  v118 = v100;
  v119[0] = v101[0];
  *(v119 + 9) = *(v101 + 9);
  v83 = (v72 + v77);
  *v83 = v96;
  v83[1] = v78;
  *(v83 + 89) = *(v101 + 9);
  v83[4] = v81;
  v83[5] = v82;
  v83[2] = v79;
  v83[3] = v80;
  v84 = v72 + v73[20];
  *v84 = 0;
  *(v84 + 8) = 0;
  sub_10001A510(&v114, &v120, &qword_1000DB948, &qword_100092DE8);
  sub_10000A628(v67, &qword_1000DB8D8, &qword_100092DB8);
  v124 = v100;
  v125[0] = v101[0];
  *(v125 + 9) = *(v101 + 9);
  v120 = v96;
  v121 = v97;
  v122 = v98;
  v123 = v99;
  sub_10000A628(&v120, &qword_1000DB948, &qword_100092DE8);
  return sub_10000A628(v68, &qword_1000DB8D8, &qword_100092DB8);
}

uint64_t sub_10002852C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(&v8 + 1))
  {
    v12 = v8;
    v13 = v9;
    v11 = v7;
    v14 = v10;
    sub_100006768(&v11, *(&v8 + 1));
    sub_10006AC84(*(&v8 + 1), v9);
    sub_1000056EC(&qword_1000DB958, &qword_100092DF8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100092B80;
    sub_10002AC24();
    *(inited + 32) = static AnyTransition.modifier<A>(active:identity:)();
    *(inited + 40) = static AnyTransition.opacity.getter();
    AnyTransition.init(arrayLiteral:)(inited);
    v3 = swift_initStackObject();
    *(v3 + 16) = xmmword_100092B90;
    *&v7 = 0x4024000000000000;
    BYTE8(v7) = 0;
    *(v3 + 32) = static AnyTransition.modifier<A>(active:identity:)();
    *(v3 + 40) = static AnyTransition.opacity.getter();
    *(v3 + 48) = static AnyTransition.scale.getter();
    AnyTransition.init(arrayLiteral:)(v3);
    static AnyTransition.asymmetric(insertion:removal:)();

    sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
    sub_10002AAE4();
    _ConditionalContent<>.init(storage:)();
    v4 = v8;
    result = sub_10000A628(&v11, &qword_1000DB968, &qword_100092E00);
    v6 = v7;
  }

  else
  {
    sub_10000A628(&v7, &qword_1000DA930, &qword_100091D08);
    v7 = AnyView.init<A>(_:)();
    LOBYTE(v8) = 1;
    sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
    sub_10002AAE4();
    result = _ConditionalContent<>.init(storage:)();
    v6 = v11;
    v4 = v12;
  }

  *a1 = v6;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_1000287F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v92 = a1;
  v106 = a3;
  v97 = sub_1000056EC(&qword_1000DB970, &qword_100092E08);
  v4 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97, v5);
  v102 = &v87 - v6;
  v101 = sub_1000056EC(&qword_1000DB978, &qword_100092E10);
  v7 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101, v8);
  v88 = &v87 - v9;
  v10 = sub_1000056EC(&qword_1000DB980, &qword_100092E18);
  v93 = *(v10 - 8);
  v94 = v10;
  v11 = *(v93 + 64);
  __chkstk_darwin(v10, v12);
  v103 = &v87 - v13;
  v104 = sub_1000056EC(&qword_1000DB988, &qword_100092E20);
  v14 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104, v15);
  v17 = &v87 - v16;
  v18 = sub_1000056EC(&qword_1000DB990, &qword_100092E28);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v95 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v98 = &v87 - v24;
  v25 = sub_1000056EC(&qword_1000DB998, &qword_100092E30);
  v105 = *(v25 - 8);
  v26 = *(v105 + 64);
  v28 = __chkstk_darwin(v25, v27);
  v100 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28, v30);
  v99 = &v87 - v31;
  v32 = sub_1000056EC(&qword_1000DB9A0, &qword_100092E38);
  v33 = *(*(v32 - 8) + 64);
  v35 = __chkstk_darwin(v32 - 8, v34);
  v37 = &v87 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v38);
  v40 = &v87 - v39;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v96 = v17;
  if (*&v124[24])
  {
    v87 = a2;
    v90 = v40;
    v91 = v37;
    sub_10002AF0C(v124, v125);
    v41 = v126;
    v42 = v127;
    sub_100006768(v125, v126);
    v43 = sub_10006AC84(v41, v42);
    sub_1000056EC(&qword_1000DB958, &qword_100092DF8);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_100092B80;
    *&v135[0] = 0x4024000000000000;
    BYTE8(v135[0]) = 0;
    *v124 = 0;
    v124[8] = 0;
    sub_10002AC24();
    *(v44 + 32) = static AnyTransition.modifier<A>(active:identity:)();
    *(v44 + 40) = static AnyTransition.opacity.getter();
    v45 = AnyTransition.init(arrayLiteral:)(v44);
    v46 = static Color.green.getter();
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v89 = v25;
    v47 = *(qword_1000F3C58 + 136);
    v48 = sub_100025508();

    if (v48)
    {
      sub_100029CC4(v46, v43, v45, v135);
      *&v122[32] = v135[2];
      *&v122[48] = v135[3];
      *&v122[64] = v135[4];
      *&v122[80] = v135[5];
      *v122 = v135[0];
      *&v122[16] = v135[1];
      *&v124[32] = v135[2];
      *&v124[48] = v135[3];
      *&v124[64] = v135[4];
      *&v124[80] = v135[5];
      *v124 = v135[0];
      *&v124[16] = v135[1];
      sub_10001A510(v122, v123, &qword_1000DB9D8, &qword_100092EE0);
      sub_10000A628(v124, &qword_1000DB9D8, &qword_100092EE0);
      v135[2] = *&v122[32];
      v135[3] = *&v122[48];
      v135[4] = *&v122[64];
      v135[5] = *&v122[80];
      v135[0] = *v122;
      v135[1] = *&v122[16];
      LOBYTE(v128) = 0;
      LOBYTE(v135[6]) = 0;
      sub_10001A510(v122, v123, &qword_1000DB9D8, &qword_100092EE0);
      sub_10001A510(v122, v123, &qword_1000DB9D8, &qword_100092EE0);
      sub_1000056EC(&qword_1000DB9D8, &qword_100092EE0);
      sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
      sub_10002A864(&qword_1000DB9E0, &qword_1000DB9D8, &qword_100092EE0, sub_10002AAE4);
      sub_10002AAE4();
      _ConditionalContent<>.init(storage:)();

      sub_10000A628(v122, &qword_1000DB9D8, &qword_100092EE0);
      sub_10000A628(v122, &qword_1000DB9D8, &qword_100092EE0);
    }

    else
    {
      v124[0] = 1;
      *&v135[0] = v43;
      *(&v135[0] + 1) = v45;
      LOBYTE(v135[6]) = 1;
      sub_1000056EC(&qword_1000DB9D8, &qword_100092EE0);
      sub_1000056EC(&qword_1000DB940, &qword_100092DE0);
      sub_10002A864(&qword_1000DB9E0, &qword_1000DB9D8, &qword_100092EE0, sub_10002AAE4);
      sub_10002AAE4();
      _ConditionalContent<>.init(storage:)();
    }

    v132 = *&v123[64];
    v133 = *&v123[80];
    LOBYTE(v134) = v123[96];
    v128 = *v123;
    v129 = *&v123[16];
    v131 = *&v123[48];
    v130 = *&v123[32];
    *v122 = *v123;
    *&v122[16] = *&v123[16];
    v122[96] = v123[96];
    *&v122[32] = *&v123[32];
    *&v122[48] = *&v123[48];
    *&v122[64] = *&v123[64];
    *&v122[80] = *&v123[80];
    sub_10001A510(&v128, v135, &qword_1000DB9E8, &qword_100092EE8);
    sub_10000A628(v122, &qword_1000DB9E8, &qword_100092EE8);
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v111 = v132;
    v112 = v133;
    LOBYTE(v113) = v134;
    v107 = v128;
    v108 = v129;
    v109 = v130;
    v110 = v131;
    v50 = static Edge.Set.trailing.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    a2 = v87;
    static Published.subscript.getter();

    EdgeInsets.init(_all:)();
    v121 = 0;
    *&v124[160] = v117;
    *&v124[176] = v118;
    *&v124[192] = v119;
    *&v124[208] = v120;
    *&v124[96] = v113;
    *&v124[112] = v114;
    *&v124[128] = v115;
    *&v124[144] = v116;
    *&v124[32] = v109;
    *&v124[48] = v110;
    *&v124[64] = v111;
    *&v124[80] = v112;
    *v124 = v107;
    *&v124[16] = v108;
    v124[216] = v50;
    *&v124[224] = v51;
    *&v124[232] = v52;
    *&v124[240] = v53;
    *&v124[248] = v54;
    v124[256] = 0;
    nullsub_1(v51, v52, v53, v54);
    sub_10000529C(v125);
    memcpy(v135, v124, 0x101uLL);
    v49 = v106;
    v40 = v90;
    v37 = v91;
    v25 = v89;
  }

  else
  {
    sub_10000A628(v124, &qword_1000DA920, &qword_100091C70);
    sub_10002AD00(v135);
    v49 = v106;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v124[0] == 1)
  {
    v55 = swift_allocObject();
    *(v55 + 16) = v92;
    *(v55 + 24) = a2;
    type metadata accessor for CloseButtonView();
    sub_10002ADFC();

    Button.init(action:label:)();
    sub_1000056EC(&qword_1000DB8E8, &unk_10009AC10);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100092B80;
    v57 = static Edge.Set.top.getter();
    *(v56 + 32) = v57;
    v58 = static Edge.Set.trailing.getter();
    *(v56 + 33) = v58;
    v59 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v57)
    {
      v59 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v58)
    {
      v59 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v96;
    (*(v93 + 32))(v96, v103, v94);
    v69 = v68 + *(v104 + 36);
    *v69 = v59;
    *(v69 + 8) = v61;
    *(v69 + 16) = v63;
    *(v69 + 24) = v65;
    *(v69 + 32) = v67;
    *(v69 + 40) = 0;
    v70 = static Color.purple.getter();
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v71 = *(qword_1000F3C58 + 136);
    v72 = sub_100025508();

    if (v72)
    {
      v73 = v88;
      sub_100029ADC(v70, &qword_1000DB988, &qword_100092E20, &qword_1000DB978, &qword_100092E10, v88);
      sub_10001A510(v73, v102, &qword_1000DB978, &qword_100092E10);
      swift_storeEnumTagMultiPayload();
      sub_10002A864(&qword_1000DB9C0, &qword_1000DB978, &qword_100092E10, sub_10002AE54);
      sub_10002AE54();
      v74 = v95;
      _ConditionalContent<>.init(storage:)();

      sub_10000A628(v73, &qword_1000DB978, &qword_100092E10);
    }

    else
    {
      sub_10001A510(v68, v102, &qword_1000DB988, &qword_100092E20);
      swift_storeEnumTagMultiPayload();
      sub_10002A864(&qword_1000DB9C0, &qword_1000DB978, &qword_100092E10, sub_10002AE54);
      sub_10002AE54();
      v74 = v95;
      _ConditionalContent<>.init(storage:)();
    }

    v49 = v106;
    sub_10000A628(v68, &qword_1000DB988, &qword_100092E20);
    v76 = v98;
    sub_10001F170(v74, v98, &qword_1000DB990, &qword_100092E28);
    static Alignment.trailing.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v77 = v76;
    v78 = v100;
    sub_10001F170(v77, v100, &qword_1000DB990, &qword_100092E28);
    v79 = (v78 + *(v25 + 36));
    v80 = v133;
    v79[4] = v132;
    v79[5] = v80;
    v79[6] = v134;
    v81 = v129;
    *v79 = v128;
    v79[1] = v81;
    v82 = v131;
    v79[2] = v130;
    v79[3] = v82;
    v83 = v78;
    v84 = v99;
    sub_10001F170(v83, v99, &qword_1000DB998, &qword_100092E30);
    sub_10001F170(v84, v40, &qword_1000DB998, &qword_100092E30);
    v75 = 0;
  }

  else
  {
    v75 = 1;
  }

  (*(v105 + 56))(v40, v75, 1, v25);
  memcpy(v122, v135, sizeof(v122));
  sub_10001A510(v40, v37, &qword_1000DB9A0, &qword_100092E38);
  memcpy(v123, v122, sizeof(v123));
  memcpy(v49, v122, 0x101uLL);
  v85 = sub_1000056EC(&qword_1000DB9A8, &qword_100092ED0);
  sub_10001A510(v37, v49 + *(v85 + 48), &qword_1000DB9A0, &qword_100092E38);
  sub_10001A510(v123, v124, &qword_1000DB9B0, &qword_100092ED8);
  sub_10000A628(v40, &qword_1000DB9A0, &qword_100092E38);
  sub_10000A628(v37, &qword_1000DB9A0, &qword_100092E38);
  memcpy(v124, v122, sizeof(v124));
  return sub_10000A628(v124, &qword_1000DB9B0, &qword_100092ED8);
}

uint64_t sub_1000296D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Color.RGBColorSpace();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for CloseButtonView();
  v9 = v8[5];
  v10 = enum case for Color.RGBColorSpace.sRGB(_:);
  v11 = *(v3 + 104);
  v11(v7, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  *(a1 + v9) = Color.init(_:white:opacity:)();
  v12 = v8[6];
  v11(v7, v10, v2);
  *(a1 + v12) = Color.init(_:white:opacity:)();
  v13 = v8[7];
  v11(v7, v10, v2);
  *(a1 + v13) = Color.init(_:white:opacity:)();
  v14 = v8[8];
  v11(v7, v10, v2);
  result = Color.init(_:white:opacity:)();
  *(a1 + v14) = result;
  return result;
}

unint64_t sub_1000298BC()
{
  result = qword_1000DB838;
  if (!qword_1000DB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB838);
  }

  return result;
}

uint64_t sub_100029910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v10 = v34;
  v11 = v34 * 0.5;
  v12 = v35;
  v13 = DWORD1(v35);
  v14 = *(&v35 + 1);
  v15 = v36;

  v16 = static Alignment.center.getter();
  *v37 = v34 * 0.5;
  *(v37 + 1) = v34;
  v37[1] = v35;
  *v38 = v36;
  *&v38[16] = a1;
  *&v38[24] = 256;
  v32 = v35;
  *v33 = v36;
  *&v33[10] = *&v38[10];
  v31 = v37[0];
  v17 = *v33;
  v18 = *&v33[16];
  v40 = *v33;
  v41 = *&v33[16];
  v39[0] = v37[0];
  v39[1] = v35;
  *&v42 = v16;
  *(&v42 + 1) = v19;
  v20 = v35;
  *(a5 + 24) = v37[0];
  v21 = v41;
  *(a5 + 88) = v42;
  v22 = v40;
  *(a5 + 72) = v21;
  *a5 = a2;
  *(a5 + 8) = a3;
  a4 &= 1u;
  *(a5 + 16) = a4;
  *(a5 + 56) = v22;
  *(a5 + 40) = v20;
  v43[2] = v17;
  v43[3] = v18;
  v43[0] = v31;
  v43[1] = v32;
  v44 = v16;
  v45 = v19;
  sub_10001A510(v37, v24, &qword_1000DB8B0, &qword_100092D90);
  sub_10002ABE8(a2, a3, a4);
  sub_10001A510(v39, v24, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v43, &qword_1000DB8A0, &qword_10009AAA0);
  *v24 = v11;
  *&v24[1] = v10;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = a1;
  v30 = 256;
  return sub_10000A628(v24, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_100029ADC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = v6;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v12 = v37;
  v13 = v37 * 0.5;
  v15 = v38;
  v14 = DWORD1(v38);
  v16 = *(&v38 + 1);
  v17 = v39;

  v18 = static Alignment.center.getter();
  v20 = v19;
  *v40 = v37 * 0.5;
  *(v40 + 1) = v37;
  v40[1] = v38;
  *v41 = v39;
  *&v41[16] = a1;
  *&v41[24] = 256;
  v35 = v38;
  *v36 = v39;
  *&v36[10] = *&v41[10];
  v34 = v40[0];
  v44 = *v36;
  v45 = *&v36[16];
  v42 = v40[0];
  v43 = v38;
  *&v46 = v18;
  *(&v46 + 1) = v19;
  sub_10001A510(v9, a6, a2, a3);
  v21 = (a6 + *(sub_1000056EC(a4, a5) + 36));
  v22 = *&v36[16];
  v21[2] = *v36;
  v21[3] = v22;
  v21[4] = v46;
  v23 = v43;
  *v21 = v42;
  v21[1] = v23;
  v47[2] = *v36;
  v47[3] = *&v36[16];
  v47[0] = v34;
  v47[1] = v35;
  v48 = v18;
  v49 = v20;
  sub_10001A510(v40, v27, &qword_1000DB8B0, &qword_100092D90);
  sub_10001A510(&v42, v27, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v47, &qword_1000DB8A0, &qword_10009AAA0);
  *v27 = v13;
  *&v27[1] = v12;
  v28 = v15;
  v29 = v14;
  v30 = v16;
  v31 = v17;
  v32 = a1;
  v33 = 256;
  return sub_10000A628(v27, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_100029CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v8 = v31;
  v9 = v31 * 0.5;
  v10 = v32;
  v11 = DWORD1(v32);
  v12 = *(&v32 + 1);
  v13 = v33;

  v14 = static Alignment.center.getter();
  *v34 = v31 * 0.5;
  *(v34 + 1) = v31;
  v34[1] = v32;
  *v35 = v33;
  *&v35[16] = a1;
  *&v35[24] = 256;
  *v30 = v33;
  *&v30[10] = *&v35[10];
  v15 = *v30;
  v16 = *&v30[16];
  v38 = *v30;
  v39 = *&v30[16];
  v28 = v34[0];
  v29 = v32;
  v36 = v34[0];
  v37 = v32;
  *&v40 = v14;
  *(&v40 + 1) = v17;
  *a4 = a2;
  *(a4 + 8) = a3;
  v18 = v40;
  *(a4 + 64) = v39;
  *(a4 + 80) = v18;
  v19 = v38;
  *(a4 + 32) = v37;
  *(a4 + 48) = v19;
  *(a4 + 16) = v36;
  v41[2] = v15;
  v41[3] = v16;
  v41[0] = v28;
  v41[1] = v29;
  v42 = v14;
  v43 = v17;
  sub_10001A510(v34, v21, &qword_1000DB8B0, &qword_100092D90);

  sub_10001A510(&v36, v21, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v41, &qword_1000DB8A0, &qword_10009AAA0);
  *v21 = v9;
  *&v21[1] = v8;
  v22 = v10;
  v23 = v11;
  v24 = v12;
  v25 = v13;
  v26 = a1;
  v27 = 256;
  return sub_10000A628(v21, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_100029E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = v29;
  v6 = v29 * 0.5;
  v7 = v30;
  v8 = DWORD1(v30);
  v9 = *(&v30 + 1);
  v10 = v31;
  v11 = v32;

  v12 = static Alignment.center.getter();
  v14 = v13;
  *v33 = v29 * 0.5;
  *(v33 + 1) = v29;
  v33[1] = v30;
  *v34 = v31;
  *&v34[8] = v32;
  *&v34[16] = a1;
  *&v34[24] = 256;
  v27 = v30;
  v28[0] = *v34;
  *(v28 + 10) = *&v34[10];
  v26 = v33[0];
  v37 = v28[0];
  v38 = v28[1];
  v35 = v33[0];
  v36 = v30;
  *&v39 = v12;
  *(&v39 + 1) = v13;
  memcpy(a2, v2, 0x161uLL);
  v15 = v28[1];
  *(a2 + 392) = v28[0];
  *(a2 + 408) = v15;
  *(a2 + 424) = v39;
  v16 = v36;
  *(a2 + 360) = v35;
  *(a2 + 376) = v16;
  v40[0] = v26;
  v40[1] = v27;
  v40[2] = v28[0];
  v40[3] = v28[1];
  v41 = v12;
  v42 = v14;
  sub_10001A510(v33, v18, &qword_1000DB8B0, &qword_100092D90);
  sub_10001A510(v2, v18, &qword_1000DBA20, &qword_10009AA90);
  sub_10001A510(&v35, v18, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v40, &qword_1000DB8A0, &qword_10009AAA0);
  *v18 = v6;
  *&v18[1] = v5;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a1;
  v25 = 256;
  return sub_10000A628(v18, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_10002A0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v5 = v33;
  v6 = v33 * 0.5;
  v7 = v34;
  v8 = DWORD1(v34);
  v9 = *(&v34 + 1);
  v10 = v35;

  v11 = static Alignment.center.getter();
  *v41 = v33 * 0.5;
  *(v41 + 1) = v33;
  v41[1] = v34;
  *v42 = v35;
  *&v42[16] = a1;
  *&v42[24] = 256;
  v31 = v34;
  *v32 = v35;
  *&v32[10] = *&v42[10];
  v30 = v41[0];
  v12 = *v32;
  v13 = *&v32[16];
  v45 = *v32;
  v46 = *&v32[16];
  v43 = v41[0];
  v44 = v34;
  *&v47 = v11;
  *(&v47 + 1) = v14;
  v15 = v2[1];
  v39 = *v2;
  v36 = v2[2];
  v16 = *v2;
  v17 = v2[2];
  *(a2 + 16) = v15;
  *(a2 + 32) = v17;
  *a2 = v16;
  v18 = v44;
  *(a2 + 56) = v43;
  v19 = v46;
  *(a2 + 120) = v47;
  v20 = v45;
  *(a2 + 104) = v19;
  v21 = *(v2 + 3);
  v40 = *(v2 + 16);
  v38 = v21;
  v37 = *(v2 + 48);
  *(a2 + 48) = *(v2 + 48);
  *(a2 + 88) = v20;
  *(a2 + 72) = v18;
  v48[2] = v12;
  v48[3] = v13;
  v48[0] = v30;
  v48[1] = v31;
  v49 = v11;
  v50 = v14;
  sub_10001A510(v41, v23, &qword_1000DB8B0, &qword_100092D90);
  sub_100022488(&v39, v23);
  sub_10001A510(&v38, v23, &qword_1000DB2B0, &qword_1000926D8);
  sub_10001A510(&v36, v23, &qword_1000DBA28, &qword_100092F80);
  sub_10001A510(&v43, v23, &qword_1000DB8A0, &qword_10009AAA0);
  sub_10000A628(v48, &qword_1000DB8A0, &qword_10009AAA0);
  *v23 = v6;
  *&v23[1] = v5;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v27 = v10;
  v28 = a1;
  v29 = 256;
  return sub_10000A628(v23, &qword_1000DB8B0, &qword_100092D90);
}

uint64_t sub_10002A320(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10002A3E8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002A464(uint64_t a1, uint64_t *a2)
{
  sub_10001A510(a1, v6, &qword_1000DA920, &qword_100091C70);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v6, &v5, &qword_1000DA920, &qword_100091C70);

  static Published.subscript.setter();
  return sub_10000A628(v6, &qword_1000DA920, &qword_100091C70);
}

uint64_t sub_10002A520(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10002A5A0(uint64_t a1, uint64_t *a2)
{
  sub_10001A510(a1, v6, &qword_1000DA930, &qword_100091D08);
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A510(v6, &v5, &qword_1000DA930, &qword_100091D08);

  static Published.subscript.setter();
  return sub_10000A628(v6, &qword_1000DA930, &qword_100091D08);
}

unint64_t sub_10002A660()
{
  result = qword_1000DB878;
  if (!qword_1000DB878)
  {
    sub_100005818(&qword_1000DB858, &qword_100092D20);
    sub_10000EE58(&qword_1000DB880, &qword_1000DB850, &qword_100092D18);
    sub_10000EE58(&qword_1000DB888, &qword_1000DB890, &qword_100092D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB878);
  }

  return result;
}

BOOL sub_10002A76C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_10002A864(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005818(a2, a3);
    a4();
    sub_10000EE58(&qword_1000DB898, &qword_1000DB8A0, &qword_10009AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002A914()
{
  result = qword_1000DB8F8;
  if (!qword_1000DB8F8)
  {
    sub_100005818(&qword_1000DB8D0, &qword_100092DB0);
    sub_10002A9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB8F8);
  }

  return result;
}

unint64_t sub_10002A9A0()
{
  result = qword_1000DB900;
  if (!qword_1000DB900)
  {
    sub_100005818(&qword_1000DB8C8, &qword_100092DA8);
    sub_10000EE58(&qword_1000DB908, &qword_1000DB910, &qword_100092DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB900);
  }

  return result;
}

unint64_t sub_10002AA58()
{
  result = qword_1000DB930;
  if (!qword_1000DB930)
  {
    sub_100005818(&qword_1000DB920, &qword_100092DD8);
    sub_10002AAE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB930);
  }

  return result;
}

unint64_t sub_10002AAE4()
{
  result = qword_1000DB938;
  if (!qword_1000DB938)
  {
    sub_100005818(&qword_1000DB940, &qword_100092DE0);
    sub_10000EE58(&qword_1000DAD00, &qword_1000DAD08, &qword_100092100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB938);
  }

  return result;
}

uint64_t sub_10002AB9C(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10002ABE8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }
}

unint64_t sub_10002AC24()
{
  result = qword_1000DB960;
  if (!qword_1000DB960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB960);
  }

  return result;
}

_BYTE *sub_10002AC78@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

double sub_10002AD00(uint64_t a1)
{
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 255;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 241) = 0u;
  return result;
}

uint64_t sub_10002AD94()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10002ADFC()
{
  result = qword_1000DB9B8;
  if (!qword_1000DB9B8)
  {
    type metadata accessor for CloseButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB9B8);
  }

  return result;
}

unint64_t sub_10002AE54()
{
  result = qword_1000DB9C8;
  if (!qword_1000DB9C8)
  {
    sub_100005818(&qword_1000DB988, &qword_100092E20);
    sub_10000EE58(&qword_1000DB9D0, &qword_1000DB980, &qword_100092E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DB9C8);
  }

  return result;
}

uint64_t sub_10002AF0C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10002AFA0()
{
  result = qword_1000DBA10;
  if (!qword_1000DBA10)
  {
    sub_100005818(&qword_1000DB8A8, &qword_100092D88);
    sub_10002B02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA10);
  }

  return result;
}

unint64_t sub_10002B02C()
{
  result = qword_1000DBA18;
  if (!qword_1000DBA18)
  {
    sub_100005818(&qword_1000DB860, &qword_100092D28);
    sub_10002A864(&qword_1000DB870, &qword_1000DB848, &qword_100092D10, sub_10002A660);
    sub_10002A660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA18);
  }

  return result;
}

uint64_t sub_10002B0E4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002B108(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002B164(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10002B1C0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    v2 = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2;
  }

  *result = v2;
  return result;
}

uint64_t sub_10002B1FC(void *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v27 = a3;
  v4 = sub_1000056EC(&qword_1000DBAA8, &qword_1000930A0);
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  __chkstk_darwin(v4, v6);
  v28 = &v26 - v7;
  v8 = sub_1000056EC(&qword_1000DBAB0, &qword_1000930A8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v26 - v12;
  v14 = sub_1000056EC(&qword_1000DBAB8, &qword_1000930B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v26 - v18;
  v20 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10002C0A8();
  v21 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21 == 1)
  {
    LOBYTE(v34) = 0;
    sub_10002C1A4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v9 + 8))(v13, v8);
    return (*(v15 + 8))(v19, v14);
  }

  else
  {
    LOBYTE(v34) = 1;
    sub_10002C0FC();
    v23 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v34 = v21;
    v33 = 0;
    sub_10002C1F8();
    v24 = v30;
    v25 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v25)
    {
      v34 = v27;
      v33 = 1;
      type metadata accessor for PCInteractionDirection(0);
      sub_10002C24C(&qword_1000DBAC8);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v29 + 8))(v23, v24);
    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_10002B5B4()
{
  if (*v0)
  {
    result = 0x726566736E617274;
  }

  else
  {
    result = 0x736E617254746F6ELL;
  }

  *v0;
  return result;
}

uint64_t sub_10002B604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E617254746F6ELL && a2 == 0xEF676E6972726566;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xEC000000676E6972)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10002B6EC(uint64_t a1)
{
  v2 = sub_10002C0A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B728(uint64_t a1)
{
  v2 = sub_10002C0A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B770@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10002B7AC(uint64_t a1)
{
  v2 = sub_10002C1A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B7E8(uint64_t a1)
{
  v2 = sub_10002C1A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B824()
{
  if (*v0)
  {
    result = 0x6F69746365726964;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_10002B858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10002B934(uint64_t a1)
{
  v2 = sub_10002C0FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002B970(uint64_t a1)
{
  v2 = sub_10002C0FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002B9AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10002BADC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

BOOL sub_10002BA08(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == 1)
  {
    return a3 == 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v6 = a4;
    v7 = a2;
    sub_10002C290();
    sub_100019FE8(a3);
    sub_100019FE8(a1);
    v9 = static NSObject.== infix(_:_:)();
    sub_100019FD8(a3);
    sub_100019FD8(a1);
    a2 = v7;
    a4 = v6;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  return a2 == a4;
}

uint64_t sub_10002BADC(uint64_t *a1)
{
  v2 = sub_1000056EC(&qword_1000DBA60, &qword_100093080);
  v3 = *(v2 - 8);
  v34 = v2;
  v35 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v33 - v6;
  v8 = sub_1000056EC(&qword_1000DBA68, &qword_100093088);
  v36 = *(v8 - 8);
  v9 = *(v36 + 8);
  __chkstk_darwin(v8, v10);
  v12 = &v33 - v11;
  v13 = sub_1000056EC(&qword_1000DBA70, &unk_100093090);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v33 - v17;
  v19 = a1[3];
  v20 = a1[4];
  v38 = a1;
  sub_100006768(a1, v19);
  sub_10002C0A8();
  v21 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v22 = v36;
    v37 = v14;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v41 = v23;
    v42 = v23 + 32;
    v43 = 0;
    v44 = v24;
    v25 = sub_10007482C();
    if (v25 == 2 || v43 != v44 >> 1)
    {
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      v12 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
      *v29 = &type metadata for MediaTransferStatus;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v27 - 8) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v27);
      swift_willThrow();
      (*(v37 + 8))(v18, v13);
      swift_unknownObjectRelease();
    }

    else if (v25)
    {
      LOBYTE(v45) = 1;
      sub_10002C0FC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v37;
      v36 = v18;
      LOBYTE(v40) = 0;
      sub_10002C150();
      v32 = v34;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v12 = v45;
      type metadata accessor for PCInteractionDirection(0);
      v39 = 1;
      sub_10002C24C(&qword_1000DBA98);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v35 + 8))(v7, v32);
      (*(v26 + 8))(v36, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      LOBYTE(v45) = 0;
      sub_10002C1A4();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v31 = v37;
      (*(v22 + 1))(v12, v8);
      (*(v31 + 8))(v18, v13);
      swift_unknownObjectRelease();
      v12 = 1;
    }
  }

  sub_10000529C(v38);
  return v12;
}

unint64_t sub_10002C0A8()
{
  result = qword_1000DBA78;
  if (!qword_1000DBA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA78);
  }

  return result;
}

unint64_t sub_10002C0FC()
{
  result = qword_1000DBA88;
  if (!qword_1000DBA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA88);
  }

  return result;
}

unint64_t sub_10002C150()
{
  result = qword_1000DBA90;
  if (!qword_1000DBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBA90);
  }

  return result;
}

unint64_t sub_10002C1A4()
{
  result = qword_1000DBAA0;
  if (!qword_1000DBAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAA0);
  }

  return result;
}

unint64_t sub_10002C1F8()
{
  result = qword_1000DBAC0;
  if (!qword_1000DBAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAC0);
  }

  return result;
}

uint64_t sub_10002C24C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PCInteractionDirection(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002C290()
{
  result = qword_1000DBAD0;
  if (!qword_1000DBAD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000DBAD0);
  }

  return result;
}

unint64_t sub_10002C310()
{
  result = qword_1000DBAD8;
  if (!qword_1000DBAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAD8);
  }

  return result;
}

unint64_t sub_10002C368()
{
  result = qword_1000DBAE0;
  if (!qword_1000DBAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAE0);
  }

  return result;
}

unint64_t sub_10002C3C0()
{
  result = qword_1000DBAE8;
  if (!qword_1000DBAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAE8);
  }

  return result;
}

unint64_t sub_10002C418()
{
  result = qword_1000DBAF0;
  if (!qword_1000DBAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAF0);
  }

  return result;
}

unint64_t sub_10002C470()
{
  result = qword_1000DBAF8;
  if (!qword_1000DBAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBAF8);
  }

  return result;
}

unint64_t sub_10002C4C8()
{
  result = qword_1000DBB00;
  if (!qword_1000DBB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB00);
  }

  return result;
}

unint64_t sub_10002C520()
{
  result = qword_1000DBB08;
  if (!qword_1000DBB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB08);
  }

  return result;
}

unint64_t sub_10002C578()
{
  result = qword_1000DBB10;
  if (!qword_1000DBB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBB10);
  }

  return result;
}

uint64_t sub_10002C5CC()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000DBB20);
  sub_1000047A0(v0, qword_1000DBB20);
  return Logger.init(subsystem:category:)();
}

id sub_10002C720()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  v5 = type metadata accessor for AppDelegate();
  v6 = NSStringFromClass(v5);
  UIApplicationMain(argc, argv, 0, v6);

  return 0;
}

uint64_t sub_10002C7D4()
{
  if (qword_1000D9760 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000DBB20);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;

    sub_1000056EC(&qword_1000DBBC8, qword_1000933D8);
    v5 = String.init<A>(describing:)();
    v7 = sub_1000343F8(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Did finish launching with options: %s", v3, 0xCu);
    sub_10000529C(v4);
  }

  return 1;
}

unint64_t sub_10002C94C()
{
  result = qword_1000DBBC0;
  if (!qword_1000DBBC0)
  {
    type metadata accessor for LaunchOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBBC0);
  }

  return result;
}

uint64_t sub_10002C9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002CA38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for NearbySharingInteractionViewServiceContext()
{
  result = qword_1000DBC28;
  if (!qword_1000DBC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002CAF4()
{
  result = type metadata accessor for NearbySharingInteractionDisplayContext();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002CB60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000056EC(&qword_1000DBC68, &qword_100093488);
  v23 = *(v8 - 8);
  v9 = *(v23 + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for NearbySharingInteractionViewServiceContext();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10002D110();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19 = v22;
    sub_10002D1CC(&qword_1000DBC78, type metadata accessor for NearbySharingInteractionDisplayContext);
    v20 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v12, v8);
    sub_10002D164(v20, v17, type metadata accessor for NearbySharingInteractionDisplayContext);
    sub_10002D164(v17, v19, type metadata accessor for NearbySharingInteractionViewServiceContext);
  }

  return sub_10000529C(a1);
}

uint64_t sub_10002CDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000002DLL && 0x80000001000A1C60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10002CE84(uint64_t a1)
{
  v2 = sub_10002D110();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10002CEC0(uint64_t a1)
{
  v2 = sub_10002D110();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10002CF14(void *a1)
{
  v2 = sub_1000056EC(&qword_1000DBC80, &qword_100093490);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10002D110();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NearbySharingInteractionDisplayContext();
  sub_10002D1CC(&qword_1000DBC88, type metadata accessor for NearbySharingInteractionDisplayContext);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v7, v2);
}

uint64_t sub_10002D08C(uint64_t a1)
{
  *(a1 + 8) = sub_10002D1CC(&qword_1000DA1B8, type metadata accessor for NearbySharingInteractionViewServiceContext);
  result = sub_10002D1CC(&qword_1000DBC60, type metadata accessor for NearbySharingInteractionViewServiceContext);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10002D110()
{
  result = qword_1000DBC70;
  if (!qword_1000DBC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBC70);
  }

  return result;
}

uint64_t sub_10002D164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002D1CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002D228()
{
  result = qword_1000DBC90;
  if (!qword_1000DBC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBC90);
  }

  return result;
}

unint64_t sub_10002D280()
{
  result = qword_1000DBC98;
  if (!qword_1000DBC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBC98);
  }

  return result;
}

unint64_t sub_10002D2D8()
{
  result = qword_1000DBCA0;
  if (!qword_1000DBCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCA0);
  }

  return result;
}

unint64_t UIBlurEffectStyle.description.getter(uint64_t a1)
{
  result = 0x67694C6172747865;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x746867696CLL;
      break;
    case 2:
      result = 1802658148;
      break;
    case 3:
      result = 0x7261446172747865;
      break;
    case 4:
      result = 0x72616C75676572;
      break;
    case 5:
      result = 0x6E656E696D6F7270;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
    case 18:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x614D6D6574737973;
      break;
    case 9:
    case 13:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
    case 20:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    default:
      _StringGuts.grow(_:)(19);

      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_10002D670()
{
  result = qword_1000DBCA8;
  if (!qword_1000DBCA8)
  {
    sub_100005818(&qword_1000DBCB0, qword_1000935B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCA8);
  }

  return result;
}

unint64_t sub_10002D79C()
{
  result = qword_1000DBCB8;
  if (!qword_1000DBCB8)
  {
    type metadata accessor for Style(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBCB8);
  }

  return result;
}

uint64_t sub_10002D7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002D83C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002D8B4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for CAImage();
  v4 = *(*(v3 - 1) + 64);
  __chkstk_darwin(v3, v5);
  v7 = (&v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1000056EC(&qword_1000DBCD0, &qword_100093758);
  v8 = *(*(v51 - 8) + 64);
  v10 = __chkstk_darwin(v51, v9);
  v53 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = &v50 - v13;
  if (qword_1000D97E0 != -1)
  {
    swift_once();
  }

  if (byte_1000F3CF8)
  {
    v15 = "hand_holding_iphone_gen2";
  }

  else
  {
    v15 = "systemUltraThinMaterial";
  }

  v16 = v15 | 0x8000000000000000;
  v17 = *a1 / 152.0;
  *&v71 = 0xD000000000000018;
  *(&v71 + 1) = v15 | 0x8000000000000000;

  v18._countAndFlagsBits = 0x746867696C5FLL;
  v50 = a1;
  v18._object = 0xE600000000000000;
  String.append(_:)(v18);
  v19 = v71;
  *&v71 = 0xD000000000000018;
  *(&v71 + 1) = v16;

  v20._countAndFlagsBits = 0x6B7261645FLL;
  v20._object = 0xE500000000000000;
  String.append(_:)(v20);

  v21 = v71;
  *v7 = swift_getKeyPath();
  sub_1000056EC(&qword_1000DACB0, &unk_100093790);
  swift_storeEnumTagMultiPayload();
  v22 = v7 + v3[5];
  *v70 = 0;
  *&v70[8] = 0;
  sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
  State.init(wrappedValue:)();
  v23 = v72;
  *v22 = v71;
  *(v22 + 2) = v23;
  v24 = (v7 + v3[7]);
  *(v7 + v3[6]) = v19;
  *v24 = v21;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10001B4FC(v7, v14);
  v25 = &v14[*(sub_1000056EC(&qword_1000DBCD8, &qword_1000937A0) + 36)];
  v26 = v112;
  *v25 = v111;
  *(v25 + 1) = v26;
  *(v25 + 2) = v113;
  sub_10002E680(v7);
  sub_1000056EC(&qword_1000DBCE0, &qword_1000937A8);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100092B80;
  static Color.clear.getter();
  *(v27 + 32) = Gradient.Stop.init(color:location:)();
  *(v27 + 40) = v28;
  static Color.red.getter();
  *(v27 + 48) = Gradient.Stop.init(color:location:)();
  *(v27 + 56) = v29;
  static UnitPoint.bottom.getter();
  static UnitPoint.top.getter();
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v30 = v114;
  v31 = &v14[*(sub_1000056EC(&qword_1000DBCE8, &qword_1000937B0) + 36)];
  *v31 = v30;
  v32 = v115;
  *(v31 + 24) = v116;
  *(v31 + 8) = v32;
  v33 = &v14[*(v51 + 36)];
  *v33 = v17 * -2.5;
  *(v33 + 1) = 0;
  v34 = static Color.white.getter();
  v35 = static Alignment.center.getter();
  v37 = v36;
  v38 = v50;
  sub_10002E1AC(v50, v34, &v71);
  v106 = v81;
  v107 = v82;
  v102 = v77;
  v103 = v78;
  v105 = v80;
  v104 = v79;
  v98 = v73;
  v99 = v74;
  v100 = v75;
  v101 = v76;
  v96 = v71;
  v97 = v72;
  v109[10] = v81;
  v109[11] = v82;
  v109[6] = v77;
  v109[7] = v78;
  v109[9] = v80;
  v109[8] = v79;
  v109[2] = v73;
  v109[3] = v74;
  v109[5] = v76;
  v109[4] = v75;
  v108 = v83;
  v110 = v83;
  v109[1] = v72;
  v109[0] = v71;
  sub_10001A510(&v96, v70, &qword_1000DBCF0, &qword_1000937B8);
  sub_10000A628(v109, &qword_1000DBCF0, &qword_1000937B8);
  v67 = v106;
  v68 = v107;
  v69 = v108;
  v63 = v102;
  v64 = v103;
  v65 = v104;
  v66 = v105;
  v59 = v98;
  v60 = v99;
  v61 = v100;
  v62 = v101;
  v57 = v96;
  v58 = v97;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();

  if (*(v38 + 24))
  {
    v39 = 0.0;
  }

  else
  {
    v39 = 10.0;
  }

  if (*(v38 + 24))
  {
    v40 = v17;
  }

  else
  {
    v40 = 0.0;
  }

  static UnitPoint.center.getter();
  v42 = v41;
  v44 = v43;
  v45 = v17 * -70.0;
  v46 = v53;
  sub_10001A510(v14, v53, &qword_1000DBCD0, &qword_100093758);
  v47 = v52;
  sub_10001A510(v46, v52, &qword_1000DBCD0, &qword_100093758);
  v48 = *(sub_1000056EC(&qword_1000DBCF8, &qword_1000937C0) + 48);
  *&v70[176] = v67;
  *&v70[192] = v68;
  *&v70[112] = v63;
  *&v70[128] = v64;
  *&v70[144] = v65;
  *&v70[160] = v66;
  *&v70[48] = v59;
  *&v70[64] = v60;
  *&v70[80] = v61;
  *&v70[96] = v62;
  *&v70[16] = v57;
  *&v70[32] = v58;
  *&v70[216] = v54;
  *v70 = v35;
  *&v70[8] = v37;
  *&v70[208] = v69;
  *&v70[232] = v55;
  *&v70[248] = v56;
  *&v70[264] = v39;
  v70[272] = 0;
  *&v70[280] = v40;
  *&v70[288] = v40;
  *&v70[296] = v42;
  *&v70[304] = v44;
  *&v70[312] = 0;
  *&v70[320] = v45;
  memcpy((v47 + v48), v70, 0x148uLL);
  sub_10001A510(v70, &v71, &qword_1000DBD00, &qword_1000937C8);
  sub_10000A628(v14, &qword_1000DBCD0, &qword_100093758);
  v82 = v67;
  v83 = v68;
  v78 = v63;
  v79 = v64;
  v80 = v65;
  v81 = v66;
  v74 = v59;
  v75 = v60;
  v76 = v61;
  v77 = v62;
  v72 = v57;
  v73 = v58;
  v85 = v54;
  *&v71 = v35;
  *(&v71 + 1) = v37;
  v84 = v69;
  v86 = v55;
  v87 = v56;
  v88 = v39;
  v89 = 0;
  v90 = v40;
  v91 = v40;
  v92 = v42;
  v93 = v44;
  v94 = 0;
  v95 = v45;
  sub_10000A628(&v71, &qword_1000DBD00, &qword_1000937C8);
  return sub_10000A628(v46, &qword_1000DBCD0, &qword_100093758);
}

_BYTE *sub_10002DFF4(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    if (qword_1000D9778 != -1)
    {
      swift_once();
    }

    v3 = qword_1000F3C58;
    v4 = *(qword_1000F3C58 + 288);
    v5 = sub_100025F80();

    if (v5)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    v10 = *(a2 + 32);
    sub_1000056EC(&qword_1000DB2B8, &qword_1000926E0);
    State.wrappedValue.setter();
    v7 = *(v3 + 160);
    sub_1000264E0();

    static Animation.linear(duration:)();
    Animation.delay(_:)();

    __chkstk_darwin(v8, v9);
    withAnimation<A>(_:_:)();
  }

  return result;
}

uint64_t sub_10002E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000056EC(&qword_1000DBD08, &qword_1000937D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v31 - v9;
  v48[0] = *(a1 + 32);
  sub_1000056EC(&qword_1000DB2B8, &qword_1000926E0);
  State.wrappedValue.getter();
  v11 = *v39;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v12 = static Alignment.center.getter();
  v14 = v13;
  static UnitPoint.center.getter();
  v16 = v15;
  v18 = v17;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = Image.init(systemName:)();
  static Font.Weight.bold.getter();
  v20 = type metadata accessor for Font.Design();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  v21 = static Font.system(size:weight:design:)();
  sub_10000A628(v10, &qword_1000DBD08, &qword_1000937D0);
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  *&v39[0] = 0;
  *(v39 + 1) = v11;
  v39[1] = v36;
  v40 = v37;
  *&v41 = v38;
  *(&v41 + 1) = a2;
  LOWORD(v42) = 256;
  *(&v42 + 2) = v34;
  WORD3(v42) = v35;
  *(&v42 + 1) = v12;
  *&v43 = v14;
  *(&v43 + 1) = 0xBFF921FB54442D18;
  *&v44 = v16;
  *(&v44 + 1) = v18;
  v46 = v32;
  v47 = v33;
  v45 = v31;
  v24 = v36;
  *a3 = v39[0];
  *(a3 + 16) = v24;
  v25 = v40;
  v26 = v41;
  v27 = v43;
  *(a3 + 64) = v42;
  *(a3 + 80) = v27;
  *(a3 + 32) = v25;
  *(a3 + 48) = v26;
  v28 = v45;
  *(a3 + 96) = v44;
  *(a3 + 112) = v28;
  v29 = v47;
  *(a3 + 128) = v46;
  *(a3 + 144) = v29;
  *(a3 + 160) = v19;
  *(a3 + 168) = KeyPath;
  *(a3 + 176) = v21;
  *(a3 + 184) = v23;
  *(a3 + 192) = a2;

  sub_10001A510(v39, v48, &qword_1000DBD10, &qword_100093838);
  *&v48[0] = 0;
  *(v48 + 1) = v11;
  v48[1] = v36;
  v48[2] = v37;
  v49 = v38;
  v50 = a2;
  v51 = 256;
  v52 = v34;
  v53 = v35;
  v54 = v12;
  v55 = v14;
  v56 = 0xBFF921FB54442D18;
  v57 = v16;
  v58 = v18;
  v60 = v32;
  v61 = v33;
  v59 = v31;
  return sub_10000A628(v48, &qword_1000DBD10, &qword_100093838);
}

uint64_t sub_10002E4CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  *v12 = *v1;
  *&v12[16] = v3;
  v13 = v1[2];
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_1000056EC(&qword_1000DBCC0, &qword_100093740);
  sub_10002D8B4(v12, a1 + *(v5 + 44));
  v6 = v12[24];
  v14 = *&v12[8];
  v15 = v13;
  v7 = swift_allocObject();
  v8 = *&v12[16];
  v7[1] = *v12;
  v7[2] = v8;
  v7[3] = v13;
  v9 = a1 + *(sub_1000056EC(&qword_1000DBCC8, &unk_100093748) + 36);
  *v9 = v6;
  *(v9 + 1) = sub_10002E610;
  *(v9 + 2) = v7;
  sub_1000224E4(&v14, v11);
  return sub_10001A510(&v15, v11, &qword_1000DB2B8, &qword_1000926E0);
}

uint64_t sub_10002E5D0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002E618()
{
  v2 = *(*(v0 + 16) + 32);
  sub_1000056EC(&qword_1000DB2B8, &qword_1000926E0);
  return State.wrappedValue.setter();
}

uint64_t sub_10002E680(uint64_t a1)
{
  v2 = type metadata accessor for CAImage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002E6E4@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E710@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10002E73C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

uint64_t sub_10002E768(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.foregroundColor.setter();
}

unint64_t sub_10002E798()
{
  result = qword_1000DBD18;
  if (!qword_1000DBD18)
  {
    sub_100005818(&qword_1000DBCC8, &unk_100093748);
    sub_10000EE58(&qword_1000DBD20, &qword_1000DBD28, &qword_100093840);
    sub_10000EE58(&qword_1000DBD30, &qword_1000DBD38, &qword_100093848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000DBD18);
  }

  return result;
}