uint64_t sub_100001DC0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005A168);
  v1 = sub_100005D84(v0, qword_10005A168);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000021D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionSceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t variable initialization expression of APUISystemApertureElement._state()
{
  type metadata accessor for APUISystemApertureLayoutState();
  sub_100004B50(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);

  return EnvironmentObject.init()();
}

id variable initialization expression of APUISystemApertureElementHostingController.expandedUITransitionCoordinator()
{
  v0 = objc_allocWithZone(type metadata accessor for APUISystemApertureElementTransitionCoordinator());

  return [v0 init];
}

uint64_t variable initialization expression of APUISystemApertureElementHostingController.expandedUIHostingControllerLayoutState()
{
  v0 = type metadata accessor for APUISystemApertureLayoutState();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  Published.init(initialValue:)();
  Published.init(initialValue:)();
  return v3;
}

void sub_1000023D8(uint64_t a1)
{
  *&v1[direct field offset for APUISystemApertureElementHostingController.activeLayoutMode] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.contentRole] = 2;
  *&v1[direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode] = 3;
  *&v1[direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode] = 4;
  v3 = &v1[direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.elementIdentifier] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress] = &_swiftEmptySetSingleton;
  v4 = qword_10005AA50;
  *&v1[v4] = [objc_allocWithZone(type metadata accessor for APUISystemApertureElementTransitionCoordinator()) init];
  *&v1[qword_10005AA58] = 0;
  v5 = qword_10005AA60;
  v6 = type metadata accessor for APUISystemApertureLayoutState();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v117 = xmmword_10003DD50;
  v118 = xmmword_10003DD50;
  Published.init(initialValue:)();
  v116 = 0uLL;
  LOBYTE(v117) = 0;
  Published.init(initialValue:)();
  *&v1[v5] = v9;
  *&v1[direct field offset for APUISystemApertureElementHostingController.leadingView] = 0;
  *&v1[qword_10005AA68] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.trailingView] = 0;
  *&v1[qword_10005AA70] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.minimalView] = 0;
  *&v1[qword_10005AA78] = 0;
  *&v1[direct field offset for APUISystemApertureElementHostingController.presentationBehaviors] = 1;
  v111.receiver = v1;
  v111.super_class = sub_100005D3C(&unk_10005A5C0, &qword_10003E480);
  v10 = objc_msgSendSuper2(&v111, "initWithNibName:bundle:", 0, 0);
  sub_100007FC8(a1, v112);
  v11 = *&v10[qword_10005AA60];
  sub_100004B50(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);

  v12 = static ObservableObject.environmentStore.getter();
  v104 = v112[2];
  v105 = v113;
  v106 = v114;
  *&v107 = v115;
  v102 = v112[0];
  v103 = v112[1];
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v15 = *&v10[qword_10005AA50];
  v116 = v102;
  v117 = v103;
  v119 = v105;
  v120 = v106;
  v118 = v104;
  *&v121 = v107;
  *(&v121 + 1) = v12;
  *&v122 = v11;
  *(&v122 + 1) = KeyPath;
  LOBYTE(v123) = 1;
  *(&v123 + 1) = *v101;
  DWORD1(v123) = *&v101[3];
  *(&v123 + 1) = v14;
  v124 = v15;
  v107 = v121;
  v108 = v122;
  v109 = v123;
  v110 = v15;
  v16 = v15;
  sub_100005E7C(v112, v101);
  sub_1000064B0(&v116, v101, &qword_10005A5D0, &unk_10003E4E0);
  sub_100005D3C(&qword_10005A5D0, &unk_10003E4E0);
  sub_100005ED8();
  AnyView.init<A>(_:)();
  v17 = type metadata accessor for APUISystemApertureAccessoryViewController();
  v18 = objc_allocWithZone(v17);
  v19 = type metadata accessor for APUISystemApertureAccessoryView();
  v20 = objc_allocWithZone(v19);

  *&v18[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v21);
  v100.receiver = v18;
  v100.super_class = v17;
  v22 = objc_msgSendSuper2(&v100, "initWithNibName:bundle:", 0, 0);

  v23 = *&v10[qword_10005AA58];
  *&v10[qword_10005AA58] = v22;
  v24 = v22;

  v25 = v10;
  v26 = v24;
  [v25 addChildViewController:v26];
  v27 = [v25 view];
  if (!v27)
  {
    __break(1u);
    goto LABEL_42;
  }

  v28 = v27;
  v29 = [v26 view];

  if (!v29)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v28 addSubview:v29];

  [v26 didMoveToParentViewController:v25];
  v30 = objc_allocWithZone(v17);
  v31 = objc_allocWithZone(v19);
  v32 = swift_retain_n();
  *&v30[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v32);
  v99.receiver = v30;
  v99.super_class = v17;
  v33 = objc_msgSendSuper2(&v99, "initWithNibName:bundle:", 0, 0);

  v34 = *&v25[qword_10005AA68];
  *&v25[qword_10005AA68] = v33;
  v35 = v33;

  v36 = *&v35[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v37 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v38 = *&v25[v37];
  *&v25[v37] = v36;
  v39 = v36;

  v40 = v35;
  [v25 addChildViewController:v40];
  v41 = [v25 view];

  if (!v41)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v96 = v26;
  v42 = [v40 view];

  if (!v42)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v41 addSubview:v42];

  [v40 didMoveToParentViewController:v25];
  v43 = objc_allocWithZone(v17);
  v44 = objc_allocWithZone(v19);
  v45 = swift_retain_n();
  *&v43[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v45);
  v98.receiver = v43;
  v98.super_class = v17;
  v46 = objc_msgSendSuper2(&v98, "initWithNibName:bundle:", 0, 0);

  v47 = *&v25[qword_10005AA70];
  *&v25[qword_10005AA70] = v46;
  v48 = v46;

  v49 = *&v48[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v50 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v51 = *&v25[v50];
  *&v25[v50] = v49;
  v52 = v49;

  v53 = v48;
  [v25 addChildViewController:v53];
  v54 = [v25 view];

  if (!v54)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v55 = [v53 view];

  if (!v55)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v54 addSubview:v55];

  [v53 didMoveToParentViewController:v25];
  v56 = objc_allocWithZone(v17);
  v57 = objc_allocWithZone(v19);
  v58 = swift_retain_n();
  *&v56[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v58);
  v97.receiver = v56;
  v97.super_class = v17;
  v59 = objc_msgSendSuper2(&v97, "initWithNibName:bundle:", 0, 0);

  v60 = *&v25[qword_10005AA78];
  *&v25[qword_10005AA78] = v59;
  v61 = v59;

  v62 = *&v61[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v63 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  v64 = *&v25[v63];
  *&v25[v63] = v62;
  v65 = v62;

  v66 = v61;
  [v25 addChildViewController:v66];
  v67 = [v25 view];

  if (!v67)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v68 = [v66 view];

  if (!v68)
  {
LABEL_48:
    __break(1u);
    return;
  }

  [v67 addSubview:v68];

  [v66 didMoveToParentViewController:v25];
  if (v113)
  {
    v69 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v70 = *&v25[v69];
    if ((v70 & 8) == 0)
    {
      *&v25[v69] = v70 | 8;
    }
  }

  if (BYTE1(v113))
  {
    v71 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v72 = *&v25[v71];
    if ((v72 & 0x10) == 0)
    {
      *&v25[v71] = v72 | 0x10;
    }
  }

  if (BYTE2(v113))
  {
    v73 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v74 = *&v25[v73];
    if ((v74 & 0x40) == 0)
    {
      *&v25[v73] = v74 | 0x40;
    }
  }

  if (BYTE3(v113))
  {
    v75 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v76 = *&v25[v75];
    if ((v76 & 2) == 0)
    {
      *&v25[v75] = v76 | 2;
    }
  }

  v77 = *(&v113 + 1);
  v78 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  v79 = *&v25[v78];
  if (!v77)
  {
    if (!v79)
    {
      goto LABEL_31;
    }

LABEL_30:
    *&v25[v78] = v77;
    v85 = v77;

    goto LABEL_31;
  }

  if (!v79)
  {
    goto LABEL_30;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
  {

    goto LABEL_31;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v84 & 1) == 0)
  {
    v79 = *&v25[v78];
    goto LABEL_30;
  }

LABEL_31:
  v86 = v114;
  v87 = &v25[direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier];
  swift_beginAccess();
  v88 = *(v87 + 1);
  if (*(&v86 + 1))
  {
    v89 = v96;
    if (v88)
    {
      if (v86 == *v87)
      {
        goto LABEL_38;
      }

      v90 = *(v87 + 1);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_38;
      }
    }
  }

  else
  {
    v89 = v96;
    if (!v88)
    {
      goto LABEL_38;
    }
  }

  *v87 = v86;

LABEL_38:
  v91 = v115;
  v92 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  v93 = *&v25[v92];

  v94 = sub_10000DBC8(v91, v93);

  sub_10000619C(&v116, &qword_10005A5D0, &unk_10003E4E0);
  if (v94)
  {

    sub_1000061FC(v112);
  }

  else
  {
    v95 = *&v25[v92];
    *&v25[v92] = v91;

    sub_1000061FC(v112);
  }
}

uint64_t variable initialization expression of APUIRemoteAlertPresentationRequest.id()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v5 = UUID.uuidString.getter();
  (*(v1 + 8))(v4, v0);
  return v5;
}

id variable initialization expression of APUIUIViewController.homeScreenService()
{
  v0 = objc_allocWithZone(SBSHomeScreenService);

  return [v0 init];
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.delegate@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.screenWidth()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.animationPositionTransformYOffset()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;

  return v2 / 3.0;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.cornerRadius()
{
  v0 = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  [v0 maximumContinuousCornerRadius];
  v2 = v1;

  return v2;
}

double variable initialization expression of APUISystemApertureElementTransitionCoordinator.systemApertureEdgeInset()
{
  v0 = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  [v0 minimumScreenEdgeInsets];
  v2 = v1;

  return v2;
}

void sub_10000323C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for UIHostingControllerSizingOptions() - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = objc_allocWithZone(sub_100005D3C(&qword_10005A640, &qword_10003E518));
  v62 = a1;
  v63 = a2;
  v64 = a3 & 1;
  sub_100006258();
  v11 = UIHostingController.init(rootView:)();
  sub_100005D3C(&qword_10005A648, &unk_10003E520);
  v12 = *(v8 + 72);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10003DD60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v62 = v14;
  sub_100004B50(&qword_10005A650, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_100005D3C(&qword_10005A658, qword_10003ED60);
  sub_100006260(&qword_10005A660, &qword_10005A658, qword_10003ED60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v4[qword_10005C450] = v11;
  v15 = v11;
  v61.receiver = v4;
  v61.super_class = sub_100005D3C(&qword_10005A638, &qword_10003E510);
  v16 = objc_msgSendSuper2(&v61, "initWithNibName:bundle:", 0, 0);
  v17 = [v16 view];
  if (!v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v18 = v17;
  v19 = qword_10005C450;
  v20 = [*&v16[qword_10005C450] view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  [v18 addSubview:v20];

  [v16 addChildViewController:*&v16[v19]];
  v22 = [v16 view];
  if (!v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  [v23 setBackgroundColor:v25];

  v26 = v15;
  v27 = [v26 view];
  if (!v27)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v24 clearColor];
  [v28 setBackgroundColor:v29];

  v30 = [v26 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = v30;
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10003DD70;
  v33 = [v26 view];
  if (!v33)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v34 = v33;
  v35 = [v33 topAnchor];

  v36 = [v16 view];
  if (!v36)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = v36;
  v38 = [v36 topAnchor];

  v39 = [v35 constraintEqualToAnchor:v38];
  *(v32 + 32) = v39;
  v40 = [v26 view];
  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [v16 view];
  if (!v43)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 constraintEqualToAnchor:v45];
  *(v32 + 40) = v46;
  v47 = [v26 view];
  if (!v47)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v16 view];
  if (!v50)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v51 = v50;
  v52 = [v50 trailingAnchor];

  v53 = [v49 constraintEqualToAnchor:v52];
  *(v32 + 48) = v53;
  v54 = [v26 view];

  if (!v54)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v55 = [v54 bottomAnchor];

  v56 = [v16 view];
  if (v56)
  {
    sub_1000062A8();
    v57 = objc_opt_self();
    v58 = [v56 bottomAnchor];

    v59 = [v55 constraintEqualToAnchor:v58];
    *(v32 + 56) = v59;
    sub_1000062B0();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v57 activateConstraints:isa];

    return;
  }

LABEL_27:
  __break(1u);
}

BOOL sub_100003958(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000039BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000039D8(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100003A50(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100003AD0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100003B28@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_100003B88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100003BB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100003C78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_100003D04(uint64_t a1)
{
  v2 = sub_100004B50(&qword_10005A578, type metadata accessor for STBackgroundActivityIdentifier);
  v3 = sub_100004B50(&qword_10005A580, type metadata accessor for STBackgroundActivityIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003DC0(uint64_t a1)
{
  v2 = sub_100004B50(&qword_10005A568, type metadata accessor for SBUISystemApertureElementIdentifier);
  v3 = sub_100004B50(&qword_10005A570, type metadata accessor for SBUISystemApertureElementIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003E7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100005D04(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100003EBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100003F04(uint64_t a1)
{
  v2 = sub_100004B50(&qword_10005A6B0, type metadata accessor for ProgressUserInfoKey);
  v3 = sub_100004B50(&qword_10005A6B8, type metadata accessor for ProgressUserInfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003FC0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100003FFC()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100004050()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

void sub_1000040C4()
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005D84(v0, qword_10005A168);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    type metadata accessor for UUID();
    sub_100004B50(&qword_10005B5C0, &type metadata accessor for UUID);
    v5 = dispatch thunk of CustomStringConvertible.description.getter();
    v7 = sub_100029504(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Creating system aperture view controller for background activity with ID: %s", v3, 0xCu);
    sub_100005E20(v4);
  }

  v8 = objc_allocWithZone(sub_100005D3C(&unk_10005A5C0, &qword_10003E480));

  sub_1000023D8(v9);
}

void sub_10000429C(uint64_t a1)
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005A168);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    type metadata accessor for UUID();
    sub_100004B50(&qword_10005B5C0, &type metadata accessor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = sub_100029504(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Creating live activities view controller for background activity with ID: %s", v5, 0xCu);
    sub_100005E20(v6);
  }

  v10 = objc_allocWithZone(sub_100005D3C(&qword_10005A638, &qword_10003E510));

  sub_10000323C(sub_100006250, a1, 0);
}

unint64_t sub_100004490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&unk_10005A5B0, &qword_10003E440);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100029C3C(v5, v6);
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

unint64_t sub_1000045B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005A5A8, &qword_10003E438);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100029C3C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000046E0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_100005D3C(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_100005D3C(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1000064B0(v17, v13, a2, v28);
      result = sub_100029BB8(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_1000048C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005A678, &qword_10003E538);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100029C3C(v5, v6);
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

__n128 sub_1000049EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000049F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004A18(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100004B50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100004E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005A6C0, &qword_10003E700);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000064B0(v4, &v13, &qword_10005A6C8, &unk_10003E708);
      v5 = v13;
      v6 = v14;
      result = sub_100029C3C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006518(&v15, (v3[7] + 32 * result));
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

void sub_100004F50(void *a1, void *a2)
{
  v3 = v2;
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005D84(v6, qword_10005A168);
  v7 = a2;
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v71[0] = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v7 role];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100029504(v13, v15, v71);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v17 = v73) != 0))
    {
      v18 = v72;
    }

    else
    {

      v17 = 0xE500000000000000;
      v18 = 0x3E6C696E3CLL;
    }

    v19 = sub_100029504(v18, v17, v71);

    *(v11 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v9, v10, "SessionSceneDelegate: Scene will connect called with role: %s, activity identifier: %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for ActivityScene();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    v44 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v44, v49, "SessionSceneDelegate: Received a UIScene that is not of type SessionScene.", v50, 2u);
    }

LABEL_26:

    return;
  }

  v21 = v20;
  v22 = v8;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v70 = v3;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v72 = v26;
    *v25 = 136315138;
    v27 = [v21 description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100029504(v28, v30, &v72);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "SessionSceneDelegate: Connecting session scene: %s", v25, 0xCu);
    sub_100005E20(v26);
  }

  swift_getKeyPath();
  dispatch thunk of ActivityScene.subscript.getter();

  v32 = v73;
  if (!v73)
  {
    goto LABEL_21;
  }

  v33 = v72;
  if (qword_10005A1A0 != -1)
  {
    v69 = v72;
    swift_once();
    v33 = v69;
  }

  v34 = sub_100018B68(v33, v32);

  if (!v34)
  {
LABEL_21:
    v43 = v22;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      *(v46 + 4) = v21;
      *v47 = v21;
      v48 = v43;
      _os_log_impl(&_mh_execute_header, v44, v45, "Unable to find a background activity to represent with session scene: %@", v46, 0xCu);
      sub_10000619C(v47, &qword_10005BC80, &qword_10003E860);

      return;
    }

    goto LABEL_26;
  }

  swift_unknownObjectWeakAssign();
  v35 = v22;
  v36 = [v21 SBUI_isHostedBySystemAperture];
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.default.getter();
  v39 = os_log_type_enabled(v37, v38);
  if (v36)
  {
    if (v39)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "SessionSceneDelegate: Received ActivityKit scene hosted by system aperture", v40, 2u);
    }

    swift_getKeyPath();
    dispatch thunk of ActivityScene.subscript.getter();

    v41 = v73;
    if (v73)
    {
      v42 = v72;
    }

    else
    {
      v56 = [v21 session];
      v57 = [v56 persistentIdentifier];

      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v58;
    }

    v59 = OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_systemApertureElementProvidersByID;
    swift_beginAccess();
    v60 = *(v70 + v59);
    if (*(v60 + 16))
    {
      v61 = *(v70 + v59);

      v62 = sub_100029C3C(v42, v41);
      if (v63)
      {
        v64 = *(*(v60 + 56) + 8 * v62);
        swift_unknownObjectRetain_n();

        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 0;
          _os_log_impl(&_mh_execute_header, v65, v66, "SessionSceneDelegate: using cachedSystemApertureElementProvider", v67, 2u);
        }

        goto LABEL_38;
      }
    }

    sub_1000040C4();
    v64 = v68;
    swift_unknownObjectRetain();
LABEL_38:
    [v21 setSystemApertureElementViewControllerProvider:v64];

    swift_beginAccess();
    sub_100027628(v64, v42, v41);
    swift_endAccess();

    swift_unknownObjectRelease();
    return;
  }

  if (v39)
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "SessionSceneDelegate: Received ActivityKit scene not hosted in system aperture", v51, 2u);
  }

  sub_10000429C(v34);
  v53 = v52;
  v54 = [objc_allocWithZone(type metadata accessor for APUISecureWindow()) initWithWindowScene:v21];

  [v54 setRootViewController:v53];
  [v54 makeKeyAndVisible];

  v55 = *(v70 + OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_window);
  *(v70 + OBJC_IVAR____TtC18ActivityProgressUI20SessionSceneDelegate_window) = v54;
}

void sub_1000057D8(void *a1)
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005D84(v2, qword_10005A168);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = [v3 session];
    v8 = [v7 role];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_100029504(v9, v11, &v19);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v13 = v18) != 0))
    {
      v14 = v17;
    }

    else
    {

      v13 = 0xE500000000000000;
      v14 = 0x3E6C696E3CLL;
    }

    v15 = sub_100029504(v14, v13, &v19);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "SessionSceneDelegate: sceneDidBecomeActive with role: %s, activity identifier: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  v16 = qword_10005C670;
  if (*(qword_10005C670 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation) == 1)
  {
    *(qword_10005C670 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation) = 0;
    [*(v16 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator) notificationOccurred:0];
  }
}

void sub_100005A8C(void *a1, const char *a2)
{
  if (qword_10005A160 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005A168);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = [v5 session];
    v9 = [v8 role];

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100029504(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2080;
    type metadata accessor for ActivityScene();
    if (swift_dynamicCastClass() && (swift_getKeyPath(), dispatch thunk of ActivityScene.subscript.getter(), , (v14 = v19) != 0))
    {
      v15 = v18;
    }

    else
    {

      v14 = 0xE500000000000000;
      v15 = 0x3E6C696E3CLL;
    }

    v16 = sub_100029504(v15, v14, &v20);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_100005D04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100005D3C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100005D84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100005DBC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100005E20(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100005ED8()
{
  result = qword_10005A5D8;
  if (!qword_10005A5D8)
  {
    sub_100005F90(&qword_10005A5D0, &unk_10003E4E0);
    sub_100005FD8();
    sub_100006260(&qword_10005A628, &qword_10005A630, &qword_10003EB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A5D8);
  }

  return result;
}

uint64_t sub_100005F90(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100005FD8()
{
  result = qword_10005A5E0;
  if (!qword_10005A5E0)
  {
    sub_100005F90(&qword_10005A5E8, &unk_10003EAF0);
    sub_100006090();
    sub_100006260(&qword_10005A618, &qword_10005A620, &unk_10003E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A5E0);
  }

  return result;
}

unint64_t sub_100006090()
{
  result = qword_10005A5F0;
  if (!qword_10005A5F0)
  {
    sub_100005F90(&qword_10005A5F8, &unk_10003E4F0);
    sub_100006148();
    sub_100006260(&qword_10005A608, &qword_10005A610, &unk_10003EB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A5F0);
  }

  return result;
}

unint64_t sub_100006148()
{
  result = qword_10005A600;
  if (!qword_10005A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A600);
  }

  return result;
}

uint64_t sub_10000619C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100005D3C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006260(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000062B0()
{
  result = qword_10005A670;
  if (!qword_10005A670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005A670);
  }

  return result;
}

__n128 sub_100006310(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006330(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006350(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_10000638C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000064B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100005D3C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_100006518(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100006594()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005A790);
  v1 = sub_100005D84(v0, qword_10005A790);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000665C()
{
  type metadata accessor for PillActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_10005C620 = v0;
  return result;
}

uint64_t sub_100006698()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000066F8()
{
  if (qword_10005A188 != -1)
  {
    swift_once();
  }
}

void *sub_10000675C()
{
  v0[2] = String._bridgeToObjectiveC()();
  BSAuditTokenForCurrentProcess();
  v0[3] = [objc_allocWithZone(STActivityAttribution) initWithAuditToken:aBlock];
  v1 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainPublisher) init];
  v0[4] = v1;
  v0[5] = 0;
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006890;
  aBlock[3] = &unk_1000520F0;
  v2 = _Block_copy(aBlock);
  v3 = v1;
  [v3 handleUserInteractionsWithBlock:v2];
  _Block_release(v2);

  return v0;
}

void sub_100006890(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1000068F8()
{
  v0 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v12 - v2;
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = *(v12[1] + 16);

  if (v4)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = qword_10005A188;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_10005C620;
    v10 = sub_100007A28();
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v7;

    sub_100018ED4(0, 0, v3, &unk_10003E870, v11);
  }

  return result;
}

uint64_t sub_100006B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10005A188 != -1)
  {
    swift_once();
  }

  v5 = qword_10005C620;

  return _swift_task_switch(sub_100006BA4, v5, 0);
}

uint64_t sub_100006BA4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (!Strong[5])
    {
      v3 = [objc_allocWithZone(STBackgroundActivitiesStatusDomainBackgroundActivityAttribution) initWithBackgroundActivityIdentifier:Strong[2] activityAttribution:Strong[3] showsWhenForeground:1];
      sub_100006C70(v3);
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100006C70(void *a1)
{
  v2 = v1;
  if (qword_10005A180 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005D84(v4, qword_10005A790);
  v5 = a1;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412546;
    v10 = *(v2 + 40);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v10;
    v9[1] = a1;
    v11 = v5;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating status pill attribution from %@ to %@", v8, 0x16u);
    sub_100005D3C(&qword_10005BC80, &qword_10003E860);
    swift_arrayDestroy();
  }

  v23 = *(v2 + 32);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_100007C6C;
  *(v15 + 24) = v14;
  v28 = sub_100007C84;
  v29 = v15;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_1000073E8;
  v27 = &unk_100052050;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  v28 = sub_100007D04;
  v29 = v19;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_100007578;
  v27 = &unk_1000520A0;
  v20 = _Block_copy(&aBlock);
  v21 = v17;

  [v23 updateVolatileData:v16 completion:v20];
  _Block_release(v20);
  _Block_release(v16);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100006FF8()
{
  v0 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v12 - v2;
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = *(v12[1] + 16);

  if (!v4)
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = qword_10005A188;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = qword_10005C620;
    v10 = sub_100007A28();
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = v7;

    sub_100018ED4(0, 0, v3, &unk_10003E858, v11);
  }

  return result;
}

uint64_t sub_10000720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  if (qword_10005A188 != -1)
  {
    swift_once();
  }

  v5 = qword_10005C620;

  return _swift_task_switch(sub_1000072A4, v5, 0);
}

uint64_t sub_1000072A4()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 40))
    {
      sub_100006C70(0);
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10000733C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 40))
    {
      [a1 removeAttribution:?];
    }

    if (a4)
    {
      [a1 addAttribution:a4];
    }

    [a2 setUserInitiated:1];
  }

  return result;
}

void sub_1000073E8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_100007454(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 40);
    *(Strong + 40) = a2;
    v5 = a2;

    if (qword_10005A180 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100005D84(v6, qword_10005A790);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Updated status pill attribution", v9, 2u);
    }
  }
}

uint64_t sub_100007578(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

id *sub_1000075BC()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = qword_10005A180;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005D84(v5, qword_10005A790);
  v6 = v4;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v2;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "Status pill controller deinitialized with non-nil attribution: %@, removing...", v9, 0xCu);
    sub_100007E58(v10);
  }

  v12 = v1[4];
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = swift_allocObject();
  v15 = sub_100007E48;
  *(v14 + 16) = sub_100007E48;
  *(v14 + 24) = v13;
  v25 = sub_100007ED0;
  v26 = v14;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000073E8;
  v24 = &unk_100052168;
  v16 = _Block_copy(&v21);
  v17 = v6;
  v18 = v12;

  v25 = sub_1000078E4;
  v26 = 0;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100007578;
  v24 = &unk_100052190;
  v19 = _Block_copy(&v21);
  [v18 updateVolatileData:v16 completion:v19];

  _Block_release(v19);
  _Block_release(v16);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_8:
    v15 = 0;
  }

  sub_100007E00(v15);
  return v1;
}

void sub_1000078E4()
{
  if (qword_10005A180 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005D84(v0, qword_10005A790);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Status pill attribution removed", v2, 2u);
  }
}

uint64_t sub_1000079CC()
{
  sub_1000075BC();

  return swift_deallocClassInstance();
}

unint64_t sub_100007A28()
{
  result = qword_10005A900;
  if (!qword_10005A900)
  {
    type metadata accessor for PillActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A900);
  }

  return result;
}

uint64_t sub_100007A84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007AC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007B74;

  return sub_10000720C(a1, v4, v5, v6);
}

uint64_t sub_100007B74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007C84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100007CAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007CC4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007D0C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100007D4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100007EE0;

  return sub_100006B0C(a1, v4, v5, v6);
}

uint64_t sub_100007E00(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007E10()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007E58(uint64_t a1)
{
  v2 = sub_100005D3C(&qword_10005BC80, &qword_10003E860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007F44@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_100007FC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100013584();
  v17 = v4;
  if (v5 == 0xD000000000000011 && 0x8000000100044410 == v4)
  {
    v18 = 1;
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  type metadata accessor for APUISystemApertureLayoutState();
  sub_1000085F8();
  v6 = EnvironmentObject.init()();
  v16 = v7;
  *&v35 = sub_1000088C4;
  *(&v35 + 1) = a1;
  LOBYTE(v36) = 0;
  sub_100008650();

  v8 = AnyView.init<A>(_:)();
  sub_1000082E0(a1, &v35);
  sub_100005D3C(&qword_10005A910, &qword_10003E910);
  sub_1000086A4();
  v9 = AnyView.init<A>(_:)();
  *&v35 = sub_1000088C4;
  *(&v35 + 1) = a1;
  LOBYTE(v36) = 0;
  sub_100008784();

  v10 = AnyView.init<A>(_:)();
  sub_1000082E0(a1, &v35);
  v11 = AnyView.init<A>(_:)();

  *&v20 = v6;
  *(&v20 + 1) = v16;
  *&v21 = v8;
  *(&v21 + 1) = v9;
  *&v22 = v10;
  *(&v22 + 1) = v11;
  LODWORD(v23) = 257;
  *(&v23 + 1) = 0;
  *&v24 = v5;
  *(&v24 + 1) = v17;
  v25 = &_swiftEmptySetSingleton;
  v26[0] = v6;
  v26[1] = v16;
  v26[2] = v8;
  v26[3] = v9;
  v26[4] = v10;
  v26[5] = v11;
  v27 = 257;
  v28 = 0;
  v29 = v5;
  v30 = v17;
  v31 = &_swiftEmptySetSingleton;
  sub_100005E7C(&v20, &v35);
  sub_1000061FC(v26);
  sub_100005D3C(&qword_10005A930, &qword_10003E918);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10003DD60;
  *(v12 + 32) = String._bridgeToObjectiveC()();
  v13 = sub_10001679C(v12);
  swift_setDeallocating();
  sub_1000087D8(v12 + 32);
  swift_deallocClassInstance();

  v37 = v22;
  v38 = v23;
  v39 = v24;
  v35 = v20;
  v36 = v21;
  *v34 = v22;
  *&v34[16] = v23;
  *&v34[32] = v24;
  v32 = v20;
  v33 = v21;
  *&v34[48] = v13;
  v40 = v13;
  sub_100005E7C(&v32, v19);
  sub_1000061FC(&v35);
  v14 = v33;
  *a2 = v32;
  *(a2 + 16) = v14;
  *(a2 + 32) = *v34;
  *(a2 + 47) = *&v34[15];
  *(a2 + 51) = v18 & 1;
  *(a2 + 52) = *&v34[20];
  result = *&v34[36];
  *(a2 + 68) = *&v34[36];
  *(a2 + 84) = *&v34[52];
  return result;
}

__n128 sub_1000082E0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v10 = *(a1 + v9);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  (*(v5 + 16))(v8, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
  v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (!*(v12 + 16))
  {
LABEL_6:
    (*(v5 + 8))(v8, v4);
LABEL_7:
    v24 = 1;
    HIBYTE(v23) = 1;
    sub_100008730();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_8;
  }

  v13 = sub_100029BB8(v8);
  if ((v14 & 1) == 0)
  {

    goto LABEL_6;
  }

  v15 = *(*(v12 + 56) + 8 * v13);

  v18[16] = 0;
  v18[8] = 0;
  v24 = 0;
  *&v25 = sub_100006250;
  *(&v25 + 1) = v15;
  v26.n128_u8[0] = 0;
  v26.n128_u64[1] = sub_1000088C4;
  *&v27 = a1;
  BYTE8(v27) = 0;
  v28 = xmmword_10003E900;
  v29 = 1;
  sub_100008730();

  _ConditionalContent<>.init(storage:)();
  (*(v5 + 8))(v8, v4);
  v27 = v21;
  v28 = v22;
  v29 = v23;
  v25 = v19;
  v26 = v20;
LABEL_8:
  v16 = v28;
  *(a2 + 32) = v27;
  *(a2 + 48) = v16;
  *(a2 + 64) = v29;
  result = v26;
  *a2 = v25;
  *(a2 + 16) = result;
  return result;
}

double sub_10000859C@<D0>(uint64_t a1@<X8>)
{
  sub_100007FC8(*v1, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

unint64_t sub_1000085F8()
{
  result = qword_10005A250;
  if (!qword_10005A250)
  {
    type metadata accessor for APUISystemApertureLayoutState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A250);
  }

  return result;
}

unint64_t sub_100008650()
{
  result = qword_10005A908;
  if (!qword_10005A908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A908);
  }

  return result;
}

unint64_t sub_1000086A4()
{
  result = qword_10005A918;
  if (!qword_10005A918)
  {
    sub_100005F90(&qword_10005A910, &qword_10003E910);
    sub_100008730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A918);
  }

  return result;
}

unint64_t sub_100008730()
{
  result = qword_10005A920;
  if (!qword_10005A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A920);
  }

  return result;
}

unint64_t sub_100008784()
{
  result = qword_10005A928;
  if (!qword_10005A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A928);
  }

  return result;
}

uint64_t sub_1000087D8(uint64_t a1)
{
  type metadata accessor for STBackgroundActivityIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100008848(uint64_t a1)
{
  result = sub_100008870();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100008870()
{
  result = qword_10005A938;
  if (!qword_10005A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A938);
  }

  return result;
}

void sub_1000088C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 publishedObjectWithName:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    sub_100009E1C(0, &qword_10005A9B8, CAShapeLayer_ptr);
    if (swift_dynamicCast())
    {
      [*(v0 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress) fractionCompleted];
      [v5 setStrokeStart:1.0 - v4];
    }
  }

  else
  {
    sub_100009798(v8);
  }

  sub_100009170();
}

void sub_100008A04(id a1)
{
  if (a1)
  {
    v3 = [a1 identifier];
    v4 = (v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    if (!v5)
    {
      if (!v3)
      {
        return;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v4 = (v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    v5 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
    if (!v5)
    {
      return;
    }

    v3 = 0;
  }

  v6 = [v5 identifier];
  v7 = v6;
  if (!v3)
  {
    if (!v6)
    {
      return;
    }

    goto LABEL_17;
  }

  if (!v6)
  {
LABEL_15:
    v7 = v3;
LABEL_17:

LABEL_18:
    if (*v4)
    {
      v14 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
      v15 = *v4;
      [v14 addAction:v15 forControlEvents:0x2000];
      [v14 setHidden:0];
    }

    if (a1)
    {
      v16 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
      v17 = a1;
      [v16 removeAction:? forControlEvents:?];
      if (!*v4)
      {
        [v16 setHidden:1];
      }
    }

    return;
  }

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (v8 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v10 != v11)
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v13)
    {
      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_100008C2C()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  swift_beginAccess();
  return *(v0 + v1);
}

id sub_100008C74(char a1)
{
  v3 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  v4 = 1;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_100009170();
  if (*(v1 + v3) == 1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) == 0;
  }

  return [*(v1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton) setHidden:v4];
}

void (*sub_100008D0C(uint64_t *a1))(void *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = APUISystemApertureView.expanded.modify();
  return sub_100008D80;
}

void sub_100008D80(void *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    v4 = v3[4];
    sub_100009170();
    v5 = *(v4 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
    v6 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
    swift_beginAccess();
    v7 = *(v4 + v6) != 1 || *(v3[4] + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) == 0;
    [v5 setHidden:v7];
  }

  free(v3);
}

void sub_100008F04()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = objc_opt_self();
  v5 = &selRef_systemWhiteColor;
  if (v3 != 2)
  {
    v5 = &selRef_systemBlackColor;
  }

  v6 = [v4 *v5];
  v7 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.701960784 blue:0.301960784 alpha:1.0];
  v8 = v7;
  if (v1[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled])
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  v10 = kCAFilterMultiplyColor;
  v11 = objc_allocWithZone(CAFilter);
  v12 = v9;
  v13 = [v11 initWithType:v10];
  [v13 setName:v10];
  v14 = [v12 CGColor];
  v15 = String._bridgeToObjectiveC()();
  [v13 setValue:v14 forKey:v15];

  v16 = [*&v1[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView] layer];
  sub_100005D3C(&qword_10005A9A0, &qword_10003EA58);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10003DD60;
  *(v17 + 56) = sub_100009E1C(0, &qword_10005A9A8, CAFilter_ptr);
  *(v17 + 32) = v13;
  v18 = v13;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setFilters:isa];
}

void sub_100009170()
{
  v1 = *(*(type metadata accessor for Locale() - 8) + 64);
  __chkstk_darwin();
  v2 = *(*(type metadata accessor for String.LocalizationValue() - 8) + 64);
  __chkstk_darwin();
  v3 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  swift_beginAccess();
  v4 = v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled];
  if (v0[v3] == 1)
  {
    if ((v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled] & 1) == 0)
    {
      v5 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
      if (([*&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress] isIndeterminate] & 1) == 0)
      {
        [*&v0[v5] fractionCompleted];
        if (v6 >= 0.00001)
        {
          [*&v0[v5] fractionCompleted];
          if (v13 >= 1.0)
          {
            v14 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton];
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            v15 = String._bridgeToObjectiveC()();

            [v14 setAccessibilityLabel:v15];
          }

          else
          {
            v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_isTouchingDownButton];
            v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_isTouchingDownButton];
          }
        }
      }
    }
  }

  else
  {
    if ((v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled] & 1) == 0)
    {
      v7 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
      if (([*&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress] isIndeterminate] & 1) == 0)
      {
        [*&v0[v7] fractionCompleted];
        if (v8 >= 0.00001)
        {
          [*&v0[v7] fractionCompleted];
        }
      }
    }

    String.LocalizationValue.init(_:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v9 = String._bridgeToObjectiveC()();

    [v0 setAccessibilityLabel:v9];

    [objc_msgSend(v0 "systemApertureElementContext")];
    swift_unknownObjectRelease();
    v10 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_didPostAccessibilityLayoutChangeNotification;
    if ((v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_didPostAccessibilityLayoutChangeNotification] & 1) == 0)
    {
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v0);
      v0[v10] = 1;
    }
  }

  v11 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView];
  v12 = String._bridgeToObjectiveC()();

  [v11 setState:v12];
}

void sub_100009674()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton);
}

id sub_1000096D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BackgroundActivityProgressMicaView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100009798(uint64_t a1)
{
  v2 = sub_100005D3C(&qword_10005A9B0, &qword_10003EA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100009824(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = type metadata accessor for Locale();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for UIButton.Configuration();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
  *&v3[v11] = [objc_opt_self() progressWithTotalUnitCount:1000];
  v12 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction;
  *&v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction] = 0;
  v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_isTouchingDownButton] = 0;
  v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_didPostAccessibilityLayoutChangeNotification] = 0;
  type metadata accessor for BackgroundActivitySession(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v15 = objc_allocWithZone(BSUICAPackageView);
  v16 = v14;
  v17 = String._bridgeToObjectiveC()();
  v18 = [v15 initWithPackageName:v17 inBundle:v16];

  v40 = v16;
  if (v18)
  {
    v19 = v18;
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 setFrame:{0.0, 0.0, 23.0, 23.0}];

    v20 = String._bridgeToObjectiveC()();
    [v19 setState:v20];

    *&v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progressMicaView] = v19;
    sub_100009E1C(0, &qword_10005A9C0, UIButton_ptr);
    v21 = v19;
    static UIButton.Configuration.plain()();
    v22 = a2;
    v23 = UIButton.init(configuration:primaryAction:)();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v24 = String._bridgeToObjectiveC()();

    [v23 setAccessibilityLabel:v24];

    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    *&v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton] = v23;
    v25 = *&v3[v12];
    *&v3[v12] = a2;
    v26 = v22;
    v27 = v23;

    v3[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled] = 0;
    v41.receiver = v3;
    v41.super_class = type metadata accessor for BackgroundActivityProgressMicaView();
    v28 = objc_msgSendSuper2(&v41, "init");
    [v28 addSubview:v21];
    [v28 addSubview:v27];
    APUISystemApertureView.createConstraints(forSubview:offset:alignedToEdge:)(v21, a1, 0.0);
    sub_100009E1C(0, &qword_10005A670, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 addConstraints:isa];

    APUISystemApertureView.createConstraints(forSubview:offset:alignedToEdge:)(v27, a1, 0.0);
    v30 = Array._bridgeToObjectiveC()().super.isa;

    [v28 addConstraints:v30];

    v31 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton;
    v32 = *&v28[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton];
    if (a2)
    {
      v33 = v26;
      [v32 addAction:v33 forControlEvents:{0x2000, v21}];
      v34 = *&v28[v31];
      v35 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
      swift_beginAccess();
      [v34 setHidden:(v28[v35] & 1) == 0];
    }

    else
    {
      [*&v28[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton] setHidden:{1, v21}];
    }

    v36 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton;
    [*&v28[OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton] addTarget:v28 action:"touchedDownCancelButton" forControlEvents:17];
    [*&v28[v36] addTarget:v28 action:"touchedUpCancelButton" forControlEvents:480];
    sub_100008F04();
    sub_100005D3C(&unk_10005A9C8, &qword_10003EA68);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_10003DD60;
    *(v37 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
    *(v37 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100009E1C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t APUISystemApertureElement.init<A, B, C>(expanded:compactLeading:compactTrailing:)@<X0>(void (*a1)(void)@<X0>, void (*a2)(void)@<X2>, void (*a3)(void)@<X4>, uint64_t a4@<X8>, uint64_t a5)
{
  v7 = *(*(a5 - 8) + 64);
  v8 = __chkstk_darwin(a1);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v11);
  type metadata accessor for APUISystemApertureLayoutState();
  sub_10000E4DC(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
  v14 = EnvironmentObject.init()();
  v20 = v15;
  v21 = v14;
  a1();
  v16 = AnyView.init<A>(_:)();
  a2();
  v17 = AnyView.init<A>(_:)();
  a3();
  v18 = AnyView.init<A>(_:)();
  a2();
  result = AnyView.init<A>(_:)();
  *a4 = v21;
  *(a4 + 8) = v20;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  *(a4 + 40) = result;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = &_swiftEmptySetSingleton;
  return result;
}

double APUISystemApertureElement.showsOnCoverSheet(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13 = *v2;
  v14 = v5;
  v15 = *(v2 + 32);
  v6 = *(v2 + 65);
  v11 = *(v2 + 49);
  v12[0] = v6;
  *(v12 + 15) = *(v2 + 80);
  sub_100005E7C(v2, v10);
  v7 = v14;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v15;
  *(a2 + 48) = a1;
  result = *&v11;
  v9 = v12[0];
  *(a2 + 49) = v11;
  *(a2 + 65) = v9;
  *(a2 + 80) = *(v12 + 15);
  return result;
}

double APUISystemApertureElement.disablesTapToApp(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13 = *v2;
  v14 = v5;
  v15 = *(v2 + 32);
  v16 = *(v2 + 48);
  v6 = *(v2 + 66);
  v11 = *(v2 + 50);
  v12[0] = v6;
  *(v12 + 14) = *(v2 + 80);
  sub_100005E7C(v2, v10);
  v7 = v14;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v15;
  result = *&v11;
  v9 = v12[0];
  *(a2 + 50) = v11;
  *(a2 + 48) = v16;
  *(a2 + 49) = a1;
  *(a2 + 66) = v9;
  *(a2 + 80) = *(v12 + 14);
  return result;
}

double APUISystemApertureElement.associatedAppBundleIdentifier(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v4 + 16);
  v16 = *v4;
  v17 = v8;
  v9 = *(v4 + 48);
  v18 = *(v4 + 32);
  v10 = *(v4 + 64);
  v19 = v9;
  v20 = v10;
  v11 = *(v4 + 80);
  sub_100005E7C(v4, v27);

  sub_10000619C(&v20, &qword_10005A9D8, &qword_10003EA78);
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v24 = v19;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v26 = v11;
  v27[0] = v16;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  v28 = a1;
  v29 = a2;
  v30 = v11;
  sub_100005E7C(&v21, v15);
  sub_1000061FC(v27);
  v12 = v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = v12;
  *(a3 + 64) = v25;
  *(a3 + 80) = v26;
  result = *&v21;
  v14 = v22;
  *a3 = v21;
  *(a3 + 16) = v14;
  return result;
}

double APUISystemApertureElement.suppressingBackgroundActivities(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18 = *(v3 + 80);
  v6 = *(v3 + 32);
  v7 = *(v3 + 64);
  v16 = *(v3 + 48);
  v17 = v7;
  v8 = *v3;
  v14 = *(v3 + 16);
  v15 = v6;
  v13 = v8;
  sub_100005E7C(v3, v25);

  sub_10000619C(&v18, &qword_10005A9E0, &qword_10003EA80);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v19 = v13;
  v20 = v14;
  v24 = a1;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[0] = v13;
  v25[1] = v14;
  v26 = a1;
  sub_100005E7C(&v19, v12);
  sub_1000061FC(v25);
  v9 = v22;
  *(a2 + 32) = v21;
  *(a2 + 48) = v9;
  *(a2 + 64) = v23;
  *(a2 + 80) = v24;
  result = *&v19;
  v11 = v20;
  *a2 = v19;
  *(a2 + 16) = v11;
  return result;
}

double APUISystemApertureElement.showsOverAssociatedAppBundleIdentifier(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v14 = *v2;
  v15 = v5;
  v16[0] = *(v2 + 32);
  *(v16 + 15) = *(v2 + 47);
  v6 = *(v2 + 68);
  v11 = *(v2 + 52);
  v12 = v6;
  v13 = *(v2 + 84);
  sub_100005E7C(v2, v10);
  v7 = v15;
  *a2 = v14;
  *(a2 + 16) = v7;
  *(a2 + 32) = v16[0];
  result = *&v11;
  v9 = v12;
  *(a2 + 52) = v11;
  *(a2 + 47) = *(v16 + 15);
  *(a2 + 51) = a1;
  *(a2 + 68) = v9;
  *(a2 + 84) = v13;
  return result;
}

uint64_t EnvironmentValues.isHostedBySystemAperture.getter()
{
  sub_10000C8BC();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t (*EnvironmentValues.isHostedBySystemAperture.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_10000C8BC();
  EnvironmentValues.subscript.getter();
  *(a1 + 16) = *(a1 + 17);
  return sub_10000A578;
}

uint64_t sub_10000A578(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  *(a1 + 17) = *(a1 + 16);
  return EnvironmentValues.subscript.setter();
}

uint64_t APUISystemApertureElement.init<A, B, C, D>(expanded:compactLeading:compactTrailing:minimal:)@<X0>(void (*a1)(void)@<X0>, void (*a2)(void)@<X2>, void (*a3)(void)@<X4>, void (*a4)(void)@<X6>, uint64_t a5@<X8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(*(a9 - 8) + 64);
  v11 = (__chkstk_darwin)();
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v11);
  v15 = *(*(a7 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v17 = *(*(a6 - 8) + 64);
  __chkstk_darwin(v16);
  type metadata accessor for APUISystemApertureLayoutState();
  sub_10000E4DC(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);
  v18 = EnvironmentObject.init()();
  v20 = v19;
  a1();
  v21 = AnyView.init<A>(_:)();
  a2();
  v22 = AnyView.init<A>(_:)();
  a3();
  v23 = AnyView.init<A>(_:)();
  a4();
  result = AnyView.init<A>(_:)();
  *a5 = v18;
  *(a5 + 8) = v20;
  *(a5 + 16) = v21;
  *(a5 + 24) = v22;
  *(a5 + 32) = v23;
  *(a5 + 40) = result;
  *(a5 + 48) = 0;
  *(a5 + 56) = 0;
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = &_swiftEmptySetSingleton;
  return result;
}

double APUISystemApertureElement.init<A, B>(expanded:compactLeading:)@<D0>(void (*a1)(void)@<X0>, void (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  APUISystemApertureElement.init<A, B, C>(expanded:compactLeading:compactTrailing:)(a1, a2, nullsub_1, v7, &type metadata for EmptyView);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

double APUISystemApertureElement.init<A>(expanded:)@<D0>(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  APUISystemApertureElement.init<A, B, C>(expanded:compactLeading:compactTrailing:)(a1, nullsub_1, nullsub_1, v6, &type metadata for EmptyView);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

double APUISystemApertureElement.undimsScreenIfNecessary(_:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v13 = *v2;
  v14 = v5;
  v15 = *(v2 + 32);
  v16 = *(v2 + 48);
  v6 = *(v2 + 67);
  v11 = *(v2 + 51);
  v12[0] = v6;
  *(v12 + 13) = *(v2 + 80);
  sub_100005E7C(v2, v10);
  v7 = v14;
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 32) = v15;
  result = *&v11;
  v9 = v12[0];
  *(a2 + 51) = v11;
  *(a2 + 48) = v16;
  *(a2 + 50) = a1;
  *(a2 + 67) = v9;
  *(a2 + 80) = *(v12 + 13);
  return result;
}

double APUISystemApertureElement.elementIdentifier(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(v3 + 56);
  v19 = *(v3 + 48);
  v20 = v6;
  v7 = *(v3 + 16);
  v16 = *v3;
  v8 = *(v3 + 32);
  v17 = v7;
  v18 = v8;
  v14 = *(v3 + 64);
  v15 = *(v3 + 80);
  sub_100005E7C(v3, v27);
  v9 = a1;
  sub_10000619C(&v20, &qword_10005A9F0, &qword_10003EA88);
  v25 = v14;
  v21 = v16;
  v22 = v17;
  v23 = v18;
  v26 = v15;
  *&v24 = v19;
  *(&v24 + 1) = a1;
  v27[1] = v17;
  v27[2] = v18;
  v27[0] = v16;
  v28 = v19;
  v29 = a1;
  v31 = v15;
  v30 = v14;
  sub_100005E7C(&v21, v13);
  sub_1000061FC(v27);
  v10 = v24;
  *(a2 + 32) = v23;
  *(a2 + 48) = v10;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  result = *&v21;
  v12 = v22;
  *a2 = v21;
  *(a2 + 16) = v12;
  return result;
}

uint64_t APUISystemApertureElementHostingController.activeLayoutMode.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.activeLayoutMode.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t APUISystemApertureElementHostingController.contentRole.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.contentRole;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.contentRole.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.contentRole;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t APUISystemApertureElementHostingController.preferredLayoutMode.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.preferredLayoutMode.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t APUISystemApertureElementHostingController.maximumLayoutMode.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t APUISystemApertureElementHostingController.maximumLayoutMode.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_10000B010()
{
  sub_10000DDFC();
  if (v0)
  {

    v1 = String._bridgeToObjectiveC()();
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t APUISystemApertureElementHostingController.associatedAppBundleIdentifier.getter()
{
  v0 = sub_10000DDFC();

  return v0;
}

void sub_10000B0B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  APUISystemApertureElementHostingController.associatedAppBundleIdentifier.setter(v4, v6);
}

uint64_t APUISystemApertureElementHostingController.associatedAppBundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

id sub_10000B1F4()
{
  v0 = sub_10000DE44();

  return v0;
}

void *APUISystemApertureElementHostingController.elementIdentifier.getter()
{
  v0 = sub_10000DE44();
  v1 = v0;
  return v0;
}

void sub_10000B254(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.elementIdentifier.setter(a3);
}

void APUISystemApertureElementHostingController.elementIdentifier.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Class sub_10000B368()
{
  sub_10000DE88();
  type metadata accessor for STBackgroundActivityIdentifier(0);
  sub_10000E4DC(&qword_10005A578, type metadata accessor for STBackgroundActivityIdentifier);

  v0.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v0.super.isa;
}

uint64_t APUISystemApertureElementHostingController.backgroundActivitiesToSuppress.getter()
{
  sub_10000DE88();
}

void sub_10000B438(void *a1)
{
  type metadata accessor for STBackgroundActivityIdentifier(0);
  sub_10000E4DC(&qword_10005A578, type metadata accessor for STBackgroundActivityIdentifier);
  v2 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = a1;
  APUISystemApertureElementHostingController.backgroundActivitiesToSuppress.setter(v2);
}

uint64_t APUISystemApertureElementHostingController.backgroundActivitiesToSuppress.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000B5A4()
{
  v0 = sub_10000DECC();

  return v0;
}

void *APUISystemApertureElementHostingController.leadingView.getter()
{
  v0 = sub_10000DECC();
  v1 = v0;
  return v0;
}

void sub_10000B604(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.leadingView.setter(a3);
}

void APUISystemApertureElementHostingController.leadingView.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000B718()
{
  v0 = sub_10000DF10();

  return v0;
}

void *APUISystemApertureElementHostingController.trailingView.getter()
{
  v0 = sub_10000DF10();
  v1 = v0;
  return v0;
}

void sub_10000B778(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.trailingView.setter(a3);
}

void APUISystemApertureElementHostingController.trailingView.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000B88C()
{
  v0 = sub_10000DF54();

  return v0;
}

void *APUISystemApertureElementHostingController.minimalView.getter()
{
  v0 = sub_10000DF54();
  v1 = v0;
  return v0;
}

void sub_10000B8EC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  APUISystemApertureElementHostingController.minimalView.setter(a3);
}

void APUISystemApertureElementHostingController.minimalView.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_10000BA00()
{
  v0 = sub_10000DF98();

  return v0;
}

id APUISystemApertureElementHostingController.systemApertureElementViewController.getter()
{
  v0 = sub_10000DF98();

  return v0;
}

uint64_t APUISystemApertureElementHostingController.presentationBehaviors.getter()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_10000BAD0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  APUISystemApertureElementHostingController.presentationBehaviors.setter(a3);
}

uint64_t APUISystemApertureElementHostingController.presentationBehaviors.setter(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_10000BB7C(v4);
}

uint64_t sub_10000BB7C(uint64_t a1)
{
  v3 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  result = swift_beginAccess();
  if (*&v1[v3] != a1)
  {
    [objc_msgSend(v1 "systemApertureElementContext")];
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*APUISystemApertureElementHostingController.presentationBehaviors.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return sub_10000BC98;
}

void sub_10000BC98(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  v4 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = v3;
  sub_10000BB7C(v5);

  free(v1);
}

void APUISystemApertureElementHostingController.init(elementProvider:)(uint64_t a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.activeLayoutMode) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.contentRole) = 2;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.preferredLayoutMode) = 3;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.maximumLayoutMode) = 4;
  v5 = (v1 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier);
  *v5 = 0;
  v5[1] = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.elementIdentifier) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress) = &_swiftEmptySetSingleton;
  v6 = qword_10005AA50;
  *(v1 + v6) = [objc_allocWithZone(type metadata accessor for APUISystemApertureElementTransitionCoordinator()) init];
  *(v1 + qword_10005AA58) = 0;
  v7 = qword_10005AA60;
  v8 = type metadata accessor for APUISystemApertureLayoutState();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v124 = xmmword_10003DD50;
  v125 = xmmword_10003DD50;
  Published.init(initialValue:)();
  v123 = 0uLL;
  LOBYTE(v124) = 0;
  Published.init(initialValue:)();
  *(v1 + v7) = v11;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.leadingView) = 0;
  *(v1 + qword_10005AA68) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.trailingView) = 0;
  *(v1 + qword_10005AA70) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.minimalView) = 0;
  *(v1 + qword_10005AA78) = 0;
  *(v1 + direct field offset for APUISystemApertureElementHostingController.presentationBehaviors) = 1;
  v12 = *((v4 & v3) + 0x98);
  v13 = *((v4 & v3) + 0xA0);
  v118.receiver = v1;
  v118.super_class = type metadata accessor for APUISystemApertureElementHostingController();
  v14 = objc_msgSendSuper2(&v118, "initWithNibName:bundle:", 0, 0);
  v15 = *(v13 + 8);
  v16 = v14;
  v102 = v12;
  v103 = a1;
  dispatch thunk of View.body.getter();
  v17 = *&v16[qword_10005AA60];
  sub_10000E4DC(&qword_10005A250, type metadata accessor for APUISystemApertureLayoutState);

  v18 = static ObservableObject.environmentStore.getter();
  v111 = v119[2];
  v112 = v120;
  v113 = v121;
  *&v114 = v122;
  v109 = v119[0];
  v110 = v119[1];
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v21 = *&v16[qword_10005AA50];
  v123 = v109;
  v124 = v110;
  v126 = v112;
  v127 = v113;
  v125 = v111;
  *&v128 = v114;
  *(&v128 + 1) = v18;
  *&v129 = v17;
  *(&v129 + 1) = KeyPath;
  LOBYTE(v130) = 1;
  *(&v130 + 1) = *v108;
  DWORD1(v130) = *&v108[3];
  *(&v130 + 1) = v20;
  v131 = v21;
  v114 = v128;
  v115 = v129;
  v116 = v130;
  v117 = v21;
  v22 = v21;
  sub_100005E7C(v119, v108);
  sub_10000E0A8(&v123, v108);
  sub_100005D3C(&qword_10005A5D0, &unk_10003E4E0);
  sub_100005ED8();
  AnyView.init<A>(_:)();
  v23 = type metadata accessor for APUISystemApertureAccessoryViewController();
  v24 = objc_allocWithZone(v23);
  v25 = type metadata accessor for APUISystemApertureAccessoryView();
  v26 = objc_allocWithZone(v25);

  *&v24[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v27);
  v107.receiver = v24;
  v107.super_class = v23;
  v28 = objc_msgSendSuper2(&v107, "initWithNibName:bundle:", 0, 0);

  v29 = *&v16[qword_10005AA58];
  *&v16[qword_10005AA58] = v28;
  v30 = v28;

  v31 = v16;
  v32 = v30;
  [v31 addChildViewController:v32];
  v33 = [v31 view];
  if (!v33)
  {
    __break(1u);
    goto LABEL_42;
  }

  v34 = v33;
  v35 = [v32 view];

  if (!v35)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v34 addSubview:v35];

  [v32 didMoveToParentViewController:v31];
  v36 = objc_allocWithZone(v23);
  v37 = objc_allocWithZone(v25);
  v38 = swift_retain_n();
  *&v36[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v38);
  v106.receiver = v36;
  v106.super_class = v23;
  v39 = objc_msgSendSuper2(&v106, "initWithNibName:bundle:", 0, 0);

  v40 = *&v31[qword_10005AA68];
  *&v31[qword_10005AA68] = v39;
  v41 = v39;

  v42 = *&v41[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v43 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v44 = *&v31[v43];
  *&v31[v43] = v42;
  v45 = v42;

  v46 = v41;
  [v31 addChildViewController:v46];
  v47 = [v31 view];

  if (!v47)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v101 = v32;
  v48 = [v46 view];

  if (!v48)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  [v47 addSubview:v48];

  [v46 didMoveToParentViewController:v31];
  v49 = objc_allocWithZone(v23);
  v50 = objc_allocWithZone(v25);
  v51 = swift_retain_n();
  *&v49[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v51);
  v105.receiver = v49;
  v105.super_class = v23;
  v52 = objc_msgSendSuper2(&v105, "initWithNibName:bundle:", 0, 0);

  v53 = *&v31[qword_10005AA70];
  *&v31[qword_10005AA70] = v52;
  v54 = v52;

  v55 = *&v54[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v56 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v57 = *&v31[v56];
  *&v31[v56] = v55;
  v58 = v55;

  v59 = v54;
  [v31 addChildViewController:v59];
  v60 = [v31 view];

  if (!v60)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v61 = [v59 view];

  if (!v61)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  [v60 addSubview:v61];

  [v59 didMoveToParentViewController:v31];
  v62 = objc_allocWithZone(v23);
  v63 = objc_allocWithZone(v25);
  v64 = swift_retain_n();
  *&v62[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view] = sub_10000D47C(v64);
  v104.receiver = v62;
  v104.super_class = v23;
  v65 = objc_msgSendSuper2(&v104, "initWithNibName:bundle:", 0, 0);

  v66 = *&v31[qword_10005AA78];
  *&v31[qword_10005AA78] = v65;
  v67 = v65;

  v68 = *&v67[OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view];
  v69 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  v70 = *&v31[v69];
  *&v31[v69] = v68;
  v71 = v68;

  v72 = v67;
  [v31 addChildViewController:v72];
  v73 = [v31 view];

  if (!v73)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v74 = [v72 view];

  if (!v74)
  {
LABEL_48:
    __break(1u);
    return;
  }

  [v73 addSubview:v74];

  [v72 didMoveToParentViewController:v31];
  if (v120 == 1)
  {
    v75 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v76 = *&v31[v75];
    if ((v76 & 8) == 0)
    {
      *&v31[v75] = v76 | 8;
    }
  }

  if (BYTE1(v120) == 1)
  {
    v77 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v78 = *&v31[v77];
    if ((v78 & 0x10) == 0)
    {
      *&v31[v77] = v78 | 0x10;
    }
  }

  if (BYTE2(v120) == 1)
  {
    v79 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v80 = *&v31[v79];
    if ((v80 & 0x40) == 0)
    {
      *&v31[v79] = v80 | 0x40;
    }
  }

  if (BYTE3(v120) == 1)
  {
    v81 = direct field offset for APUISystemApertureElementHostingController.presentationBehaviors;
    swift_beginAccess();
    v82 = *&v31[v81];
    if ((v82 & 2) == 0)
    {
      *&v31[v81] = v82 | 2;
    }
  }

  v83 = *(&v120 + 1);
  v84 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  v85 = *&v31[v84];
  if (!v83)
  {
    if (!v85)
    {
      goto LABEL_31;
    }

LABEL_30:
    *&v31[v84] = v83;
    v91 = v83;

    goto LABEL_31;
  }

  if (!v85)
  {
    goto LABEL_30;
  }

  v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v88 = v87;
  if (v86 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v88 == v89)
  {

    goto LABEL_31;
  }

  v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v90 & 1) == 0)
  {
    v85 = *&v31[v84];
    goto LABEL_30;
  }

LABEL_31:
  v92 = v121;
  v93 = &v31[direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier];
  swift_beginAccess();
  v94 = *(v93 + 1);
  if (*(&v92 + 1))
  {
    if (v94)
    {
      if (v92 == *v93)
      {
        goto LABEL_38;
      }

      v95 = *(v93 + 1);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_38;
      }
    }
  }

  else if (!v94)
  {
    goto LABEL_38;
  }

  *v93 = v92;

LABEL_38:
  v96 = v122;
  v97 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  v98 = *&v31[v97];

  v99 = sub_10000DBC8(v96, v98);

  sub_10000619C(&v123, &qword_10005A5D0, &unk_10003E4E0);
  (*(*(v102 - 8) + 8))(v103);
  if (v99)
  {

    sub_1000061FC(v119);
  }

  else
  {
    v100 = *&v31[v97];
    *&v31[v97] = v96;

    sub_1000061FC(v119);
  }
}

unint64_t sub_10000C8BC()
{
  result = qword_10005A9E8;
  if (!qword_10005A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005A9E8);
  }

  return result;
}

uint64_t sub_10000C910@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C8BC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000C960(char *a1)
{
  v2 = *a1;
  sub_10000C8BC();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_10000C9AC@<X0>(void *a1@<X8>)
{
  sub_10000E524();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000C9FC(uint64_t *a1)
{
  v2 = *a1;
  sub_10000E524();
  swift_unknownObjectRetain();
  return EnvironmentValues.subscript.setter();
}

id APUISystemApertureElementHostingController.layoutSystemApertureAccessoryViews()()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  swift_beginAccess();
  if (*&v0[v1] != 4)
  {
    v18 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
    swift_beginAccess();
    if (*&v0[v18] == 3)
    {
      v19 = direct field offset for APUISystemApertureElementHostingController.leadingView;
      swift_beginAccess();
      v20 = *&v0[v19];
      if (v20)
      {
        v21 = v20;
        result = [v0 view];
        if (!result)
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v22 = result;
        v23 = [result SBUISA_systemApertureLeadingConcentricContentLayoutGuide];

        [v23 layoutFrame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        v54.origin.x = v25;
        v54.origin.y = v27;
        v54.size.width = v29;
        v54.size.height = v31;
        MidX = CGRectGetMidX(v54);
        [v21 center];
        [v21 setCenter:MidX];
      }

      v33 = direct field offset for APUISystemApertureElementHostingController.trailingView;
      swift_beginAccess();
      v34 = *&v0[v33];
      if (v34)
      {
        v15 = v34;
        result = [v0 view];
        if (result)
        {
          v35 = result;
          v36 = [result SBUISA_systemApertureTrailingConcentricContentLayoutGuide];

          [v36 layoutFrame];
          v38 = v37;
          v40 = v39;
          v42 = v41;
          v44 = v43;

          v55.origin.x = v38;
          v55.origin.y = v40;
          v55.size.width = v42;
          v55.size.height = v44;
          v16 = CGRectGetMidX(v55);
          [v15 center];
          goto LABEL_15;
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    goto LABEL_16;
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *&v0[qword_10005AA58];
  if (!v12)
  {
    goto LABEL_16;
  }

  result = [v12 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = result;
  [result frame];
  [v13 setFrame:?];

  v14 = *&v0[qword_10005AA58];
  if (v14)
  {
    result = [v14 view];
    if (result)
    {
      v15 = result;
      v52.origin.x = v5;
      v52.origin.y = v7;
      v52.size.width = v9;
      v52.size.height = v11;
      v16 = CGRectGetMidX(v52);
      v53.origin.x = v5;
      v53.origin.y = v7;
      v53.size.width = v9;
      v53.size.height = v11;
      MidY = CGRectGetMidY(v53);
LABEL_15:
      [v15 setCenter:{v16, MidY}];

      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_16:
  v45 = direct field offset for APUISystemApertureElementHostingController.activeLayoutMode;
  swift_beginAccess();
  v46 = *&v0[v45];
  v47 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  v48 = *&v0[v47];
  if (v48)
  {
    [v48 setHidden:v46 == 4];
  }

  v49 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  v50 = *&v0[v49];
  if (v50)
  {
    [v50 setHidden:v46 == 4];
  }

  v51 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  result = *&v0[v51];
  if (result)
  {
    return [result setHidden:v46 == 4];
  }

  return result;
}

void APUISystemApertureElementHostingController.viewWillLayoutSubviews(with:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_10000E198;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10000CFE0;
  v6[3] = &unk_100052238;
  v4 = _Block_copy(v6);
  v5 = v1;

  [a1 animateAlongsideTransition:v4 completion:0];
  _Block_release(v4);
}

id sub_10000CF1C(uint64_t a1, void *a2)
{
  v3 = *(a2 + qword_10005AA60);
  v4 = swift_isaMask & *a2;
  v5 = *(v4 + 0x98);
  v6 = *(v4 + 160);
  type metadata accessor for APUISystemApertureElementHostingController();

  sub_100026EE0(a2);

  v7 = *(a2 + qword_10005AA50);
  sub_10002F478(a2, v7);

  return APUISystemApertureElementHostingController.layoutSystemApertureAccessoryViews()();
}

uint64_t sub_10000CFE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_10000D040(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  APUISystemApertureElementHostingController.viewWillLayoutSubviews(with:)(a3);
  swift_unknownObjectRelease();
}

void sub_10000D0B4(void *a1)
{
  swift_unknownObjectRetain();
  v2 = a1;
  _s18ActivityProgressUI42APUISystemApertureElementHostingControllerC29preferredContentSizeDidChange08forChildJ9ContainerySo09UIContentP0_p_tF_0();
  swift_unknownObjectRelease();
}

id APUISystemApertureElementHostingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void APUISystemApertureElementHostingController.init(nibName:bundle:)()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *((swift_isaMask & *v0) + 0xA0);
  sub_10000E304();
}

void sub_10000D1C8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *((swift_isaMask & *a1) + 0x98);
  v5 = *((swift_isaMask & *a1) + 0xA0);
  v6 = a4;

  sub_10000E304();
}

void sub_10000D238()
{
  v1 = *(v0 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier + 8);

  v2 = *(v0 + direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress);

  v3 = *(v0 + qword_10005AA60);

  v4 = *(v0 + qword_10005AA78);
}

id APUISystemApertureElementHostingController.__deallocating_deinit()
{
  v1 = *((swift_isaMask & *v0) + 0x98);
  v2 = *((swift_isaMask & *v0) + 0xA0);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for APUISystemApertureElementHostingController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10000D38C(uint64_t a1)
{
  v2 = *(a1 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier + 8);

  v3 = *(a1 + direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress);

  v4 = *(a1 + qword_10005AA60);

  v5 = *(a1 + qword_10005AA78);
}

char *sub_10000D47C(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for UIHostingControllerSizingOptions() - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = objc_allocWithZone(sub_100005D3C(&qword_10005ABD0, &unk_10003ED50));
  v25 = a1;

  v7 = UIHostingController.init(rootView:)();
  sub_100005D3C(&qword_10005A648, &unk_10003E520);
  v8 = *(v4 + 72);
  v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10003DD60;
  static UIHostingControllerSizingOptions.preferredContentSize.getter();
  v25 = v10;
  sub_10000E4DC(&qword_10005A650, &type metadata accessor for UIHostingControllerSizingOptions);
  sub_100005D3C(&qword_10005A658, qword_10003ED60);
  sub_100006260(&qword_10005A660, &qword_10005A658, qword_10003ED60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  *&v2[OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController] = v7;
  v11 = v7;
  [v11 preferredContentSize];
  v13 = v12;
  v15 = v14;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for APUISystemApertureAccessoryView();
  v16 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, v13, v15);
  v17 = OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController;
  result = [*&v16[OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController] view];
  if (result)
  {
    v19 = result;
    [v16 addSubview:result];

    if (SBSIsSystemApertureAvailable())
    {
LABEL_5:

      return v16;
    }

    v20 = objc_opt_self();
    v21 = [v20 clearColor];
    [v16 setBackgroundColor:v21];

    result = [*&v16[v17] view];
    if (result)
    {
      v22 = result;
      v23 = [v20 clearColor];
      [v22 setBackgroundColor:v23];

      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_10000DB80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000DBC8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v26 = v8;
  v27 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      v14 = *(a2 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v13;
      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = *(*(a2 + 48) + 8 * v17);
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
        if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
        {

          goto LABEL_24;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v26;
      result = v27;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10000DDFC()
{
  v1 = (v0 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier);
  swift_beginAccess();
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_10000DE44()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.elementIdentifier;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DE88()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.backgroundActivitiesToSuppress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DECC()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.leadingView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DF10()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.trailingView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DF54()
{
  v1 = direct field offset for APUISystemApertureElementHostingController.minimalView;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10000DFB8@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C8BC();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000E008(char *a1)
{
  v2 = *a1;
  sub_10000C8BC();
  return EnvironmentValues.subscript.setter();
}

uint64_t sub_10000E054@<X0>(void *a1@<X8>)
{
  sub_10000E524();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10000E0A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005A5D0, &unk_10003E4E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000E160()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000E1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id _s18ActivityProgressUI42APUISystemApertureElementHostingControllerC29preferredContentSizeDidChange08forChildJ9ContainerySo09UIContentP0_p_tF_0()
{
  [v0 preferredContentSize];
  v2 = v1;
  v4 = v3;
  v5 = *&v0[qword_10005AA58];
  if (v5)
  {
    [*(*(v5 + OBJC_IVAR____TtC18ActivityProgressUI41APUISystemApertureAccessoryViewController__view) + OBJC_IVAR____TtC18ActivityProgressUI31APUISystemApertureAccessoryView_hostingController) preferredContentSize];
  }

  else
  {
    v6 = 0.0;
    v7 = 0.0;
  }

  [v0 setPreferredContentSize:{v6, v7}];
  result = [v0 preferredContentSize];
  if (v2 != v10 || v4 != v9)
  {
    v12 = [v0 systemApertureElementContext];
    v14[4] = nullsub_1;
    v14[5] = 0;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100007578;
    v14[3] = &unk_100052408;
    v13 = _Block_copy(v14);
    [v12 setElementNeedsUpdateWithCoordinatedAnimations:v13];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

__n128 sub_10000E360(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000E384(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10000E3CC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_10000E4DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000E524()
{
  result = qword_10005ABD8;
  if (!qword_10005ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ABD8);
  }

  return result;
}

id sub_10000E648()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for AppDelegate();
  static CommandLine.unsafeArgv.getter();
  static CommandLine.argc.getter();
  static CommandLine.argc.getter();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = NSStringFromClass(ObjCClassFromMetadata);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LODWORD(v4) = UIApplicationMain(_:_:_:_:)();

  exit(v4);
}

uint64_t sub_10000E73C()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005AC70);
  v1 = sub_100005D84(v0, qword_10005AC70);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000E810@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10000E84C(uint64_t a1)
{
  v2 = sub_100015AD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000E888(uint64_t a1)
{
  v2 = sub_100015AD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000E8EC(void *a1)
{
  v2 = sub_100005D3C(&qword_10005B290, &qword_10003F0E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100015A8C(a1, a1[3]);
  sub_100015AD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10000EA6C(void *a1, uint64_t a2)
{
  v4 = sub_100005D3C(&qword_10005B2C8, &qword_10003F100);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100015A8C(a1, a1[3]);
  sub_100016B4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_100005D3C(&qword_10005B2B0, &qword_10003F0F8);
  sub_100016BE8(&qword_10005B2D0, &qword_10005B2D8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10000EC50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000ECBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

Swift::Int sub_10000ED44()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10000EDB0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_10000EE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6564496B736174 && a2 == 0xEF73726569666974)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10000EEB0(uint64_t a1)
{
  v2 = sub_100016B4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000EEEC(uint64_t a1)
{
  v2 = sub_100016B4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10000EF28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_100016990(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10000EF84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10000F02C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

id sub_10000F0AC()
{
  v1 = [v0 userInfo];
  type metadata accessor for ProgressUserInfoKey(0);
  sub_100016BA0(&qword_10005A6B0, type metadata accessor for ProgressUserInfoKey);
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v2 + 16))
  {
    goto LABEL_6;
  }

  v3 = @"HideProgressCircleInUI";
  v4 = sub_100029CB4(@"HideProgressCircleInUI");
  if ((v5 & 1) == 0)
  {

LABEL_6:

    return 0;
  }

  sub_100016CE8(*(v2 + 56) + 32 * v4, v9);

  sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);
  if (swift_dynamicCast())
  {
    v6 = [v8 BOOLValue];

    return v6;
  }

  return 0;
}

uint64_t sub_10000F20C()
{
  v1 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__taskIdentifier;
  v2 = sub_100005D3C(&qword_10005B3A0, &qword_10003F510);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__bundleID;
  v4 = sub_100005D3C(&qword_10005B3A8, &qword_10003F518);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__title, v4);
  v5(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__subtitle, v4);
  v6 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__progress;
  v7 = sub_100005D3C(&qword_10005B3B0, &qword_10003F520);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__icon;
  v9 = sub_100005D3C(&unk_10005B660, &qword_10003F528);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__iconImageOverride;
  v11 = sub_100005D3C(&qword_10005B3B8, &qword_10003F530);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__shouldHideProgressUI;
  v13 = sub_100005D3C(&qword_10005B3C0, &qword_10003F538);
  v14 = *(*(v13 - 8) + 8);
  v14(v0 + v12, v13);
  v14(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__canceling, v13);
  v14(v0 + OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__failed, v13);
  v15 = OBJC_IVAR____TtC18ActivityProgressUI29BackgroundActivitySessionTask__startTime;
  v16 = sub_100005D3C(&qword_10005B3C8, &qword_10003F540);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  return v0;
}

void sub_10000F508()
{
  sub_10000F894(319, &qword_10005AD18, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    v14 = *(v0 - 8) + 64;
    sub_10000F848(319, &qword_10005AD20);
    if (v3 <= 0x3F)
    {
      v15 = *(v2 - 8) + 64;
      sub_10000F78C();
      if (v5 <= 0x3F)
      {
        v16 = *(v4 - 8) + 64;
        sub_10000F7F4(319, &qword_10005AD38, &qword_10005AD40, "ʎ");
        if (v7 <= 0x3F)
        {
          v17 = *(v6 - 8) + 64;
          sub_10000F7F4(319, &qword_10005AD48, &unk_10005B650, &qword_10003FCE0);
          if (v9 <= 0x3F)
          {
            v18 = *(v8 - 8) + 64;
            sub_10000F848(319, &qword_10005AD50);
            if (v11 <= 0x3F)
            {
              v19 = *(v10 - 8) + 64;
              sub_10000F894(319, &unk_10005AD58, &type metadata accessor for Date);
              if (v13 <= 0x3F)
              {
                v20 = *(v12 - 8) + 64;
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10000F78C()
{
  if (!qword_10005AD28)
  {
    sub_100009E1C(255, &qword_10005AD30, NSProgress_ptr);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10005AD28);
    }
  }
}

void sub_10000F7F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100005F90(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_10000F848(uint64_t a1, unint64_t *a2)
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

void sub_10000F894(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Published();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10000F8E8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackgroundActivitySessionTask(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10000F93C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10000FB88(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v53 = a1;
  v7 = type metadata accessor for APKDeviceLockState();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  Date.init()();
  UUID.init()();
  *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion) = 0;
  v15 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle;
  *(v4 + v15) = SBSIsSystemApertureAvailable();
  *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession) = a2;
  v16 = v8[2];
  v52 = a3;
  v16(v14, a3, v7);
  swift_beginAccess();
  v16(v12, v14, v7);
  Published.init(initialValue:)();
  v17 = v8[1];
  v50 = v7;
  v51 = v8 + 1;
  v18 = v7;
  v19 = v17;
  v17(v14, v18);
  swift_endAccess();
  if (a2)
  {
    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier) = sub_100004594(&_swiftEmptyArrayStorage);
    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers) = &_swiftEmptyArrayStorage;
    sub_10001196C(v53);
  }

  else
  {
    sub_100005D3C(&qword_10005B2E0, &qword_10003F108);
    v20 = v53;
    v21 = (sub_100005D3C(&qword_10005A588, &qword_10003F110) - 8);
    v22 = *(*v21 + 72);
    v23 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
    v24 = swift_allocObject();
    v48 = xmmword_10003DD60;
    *(v24 + 16) = xmmword_10003DD60;
    v25 = v24 + v23;
    v26 = v21[14];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v25 + v26) = v20;

    v27 = sub_100004594(v24);
    swift_setDeallocating();
    sub_10000619C(v25, &qword_10005A588, &qword_10003F110);
    swift_deallocClassInstance();
    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier) = v27;
    sub_100005D3C(&qword_10005B2E8, &qword_10003F160);
    v28 = *(type metadata accessor for UUID() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = v48;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers) = v31;
  }

  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100005D84(v32, qword_10005AC70);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54 = v36;
    *v35 = 136315138;
    v37 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
    swift_beginAccess();
    v38 = *(v4 + v37);
    type metadata accessor for UUID();

    v39 = Array.description.getter();
    v41 = v40;

    v42 = sub_100029504(v39, v41, &v54);

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "Background activity session created for task identifiers %s", v35, 0xCu);
    sub_100005E20(v36);
  }

  v43 = v49;
  v44 = sub_10001068C();
  if (v43)
  {

    v19(v52, v50);
  }

  else
  {
    v45 = v44;
    v19(v52, v50);

    v46 = *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity);
    *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity) = v45;
  }

  return v4;
}

uint64_t sub_1000101A0()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005D3C(&qword_10005B2F0, &qword_10003F168);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity;
  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity))
  {
    v12 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);

    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v6, v2);
    sub_10000619C(v10, &qword_10005B2F0, &qword_10003F168);
  }

  v13 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_startTime;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 8))(v1 + v13, v14);
  v15 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_id;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);

  v17 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers);

  v18 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier);

  v19 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession__lockState;
  v20 = sub_100005D3C(&qword_10005B398, &qword_10003F508);
  (*(*(v20 - 8) + 8))(v1 + v19, v20);
  v21 = *(v1 + v11);

  swift_unknownObjectWeakDestroy();
  return v1;
}

uint64_t sub_100010480(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100010504(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001053C()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10000F894(319, &unk_10005B078, &type metadata accessor for APKDeviceLockState);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_10001068C()
{
  v1 = v0;
  v2 = sub_100005D3C(&qword_10005B370, &qword_10003F388);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v62 = v61 - v4;
  v5 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  __chkstk_darwin(v5);
  v8 = v61 - v7;
  v63 = type metadata accessor for ActivityPresentationOptions();
  v9 = *(v63 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v63);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v67 = v12;
  v13 = type metadata accessor for Logger();
  v14 = sub_100005D84(v13, qword_10005AC70);

  v61[1] = v14;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v61[0] = swift_slowAlloc();
    v68 = v61[0];
    *v17 = 136315138;
    v18 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
    swift_beginAccess();
    v19 = v9;
    v20 = v8;
    v21 = *(v1 + v18);
    type metadata accessor for UUID();

    v22 = Array.description.getter();
    v24 = v23;
    v8 = v20;
    v9 = v19;

    v25 = sub_100029504(v22, v24, &v68);

    *(v17 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "Creating ActivityKit activity for task identifiers: %s", v17, 0xCu);
    sub_100005E20(v61[0]);
  }

  v26 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isGroupedSession);
  sub_100005D3C(&qword_10005B380, &qword_10003F4B0);
  v27 = type metadata accessor for ActivityPresentationOptions.ActivityPresentationDestination();
  v28 = *(v27 - 8);
  v29 = *(v28 + 72);
  v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_10003DD60;
  v32 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.systemAperture(_:);
  if (!v26)
  {
    v32 = &enum case for ActivityPresentationOptions.ActivityPresentationDestination.lockscreen(_:);
  }

  (*(v28 + 104))(v31 + v30, *v32, v27);
  v33 = v67;
  ActivityPresentationOptions.init(destinations:)();
  ActivityPresentationOptions.shouldShowSystemAperture.setter();
  ActivityPresentationOptions.shouldSuppressAlertContentOnLockScreen.setter();
  v34 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v35 = *(v1 + v34);
  sub_100005D3C(&qword_10005B388, &qword_10003F4B8);
  v69 = v35;
  v36 = type metadata accessor for Date();
  (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
  sub_1000157FC();
  sub_100015854();
  sub_1000158AC();

  v37 = v33;
  ActivityContent.init(state:staleDate:relevanceScore:)();
  v38 = v66;
  v39 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)();
  if (v38)
  {
    (*(v64 + 8))(v8, v65);
    (*(v9 + 8))(v33, v63);

    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v39;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v69 = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v45 = Error.localizedDescription.getter();
      v47 = sub_100029504(v45, v46, &v69);

      *(v43 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Error requesting activity %s", v43, 0xCu);
      sub_100005E20(v44);

      v39 = v42;
    }

    swift_willThrow();
  }

  else
  {
    v66 = v9;
    (*(v64 + 8))(v8, v65);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v65 = v39;
      v52 = v51;
      v69 = v51;
      *v50 = 136315138;
      v53 = Activity.id.getter();
      v55 = sub_100029504(v53, v54, &v69);

      *(v50 + 4) = v55;
      v37 = v67;
      _os_log_impl(&_mh_execute_header, v48, v49, "Requested activity successfully: %s", v50, 0xCu);
      sub_100005E20(v52);
      v39 = v65;
    }

    Activity.id.getter();
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = swift_allocObject();
    *(v57 + 16) = v39;
    *(v57 + 24) = v56;
    objc_allocWithZone(type metadata accessor for ProminentPresentationAssertion());

    v58 = ProminentPresentationAssertion.init(explanation:activityIdentifier:duration:invalidationHandler:)();
    (*(v66 + 8))(v37, v63);

    v59 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion);
    *(v1 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion) = v58;
  }

  return v39;
}

void sub_100010EF4()
{
  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005D84(v0, qword_10005AC70);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136315138;
    v5 = Activity.id.getter();
    v7 = sub_100029504(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Prominent assertion invalidated: %s", v3, 0xCu);
    sub_100005E20(v4);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = *(Strong + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion);
    *(Strong + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_assertion) = 0;
  }
}

void sub_1000110B4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (*(v7 + 16))
  {

    v8 = sub_100029BB8(a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (v12)
      {
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        v11 = a1;

        static Published.subscript.setter();
        type metadata accessor for BackgroundActivitySession(0);
        sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10001125C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  result = swift_beginAccess();
  v8 = *(v2 + v6);
  if (*(v8 + 16))
  {

    v9 = sub_100029BB8(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_100009E1C(0, &qword_10005AD30, NSProgress_ptr);
      v12 = static NSObject.== infix(_:_:)();

      if ((v12 & 1) == 0)
      {
        if (qword_10005A190 != -1)
        {
          swift_once();
        }

        v13 = type metadata accessor for Logger();
        sub_100005D84(v13, qword_10005AC70);

        v14 = a1;
        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v28 = v27;
          *v17 = 136315394;
          v18 = *(v3 + v6);
          type metadata accessor for UUID();
          type metadata accessor for BackgroundActivitySessionTask(0);
          sub_100016BA0(&qword_10005B288, &type metadata accessor for UUID);

          v19 = Dictionary.description.getter();
          v21 = v20;

          v22 = sub_100029504(v19, v21, &v28);

          *(v17 + 4) = v22;
          *(v17 + 12) = 2112;
          *(v17 + 14) = v14;
          *v26 = v14;
          v23 = v14;
          _os_log_impl(&_mh_execute_header, v15, v16, "Updating progress for task identifiers %s to: %@", v17, 0x16u);
          sub_10000619C(v26, &qword_10005BC80, &qword_10003E860);

          sub_100005E20(v27);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v24 = v28;
        [v28 setTotalUnitCount:{objc_msgSend(v14, "totalUnitCount")}];

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v25 = v28;
        [v28 setCompletedUnitCount:{objc_msgSend(v14, "completedUnitCount")}];

        LOBYTE(v25) = sub_10000F0AC();
        swift_getKeyPath();
        swift_getKeyPath();
        LOBYTE(v28) = v25 & 1;

        static Published.subscript.setter();
        type metadata accessor for BackgroundActivitySession(0);
        sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100011718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  result = swift_beginAccess();
  v13 = *(v5 + v11);
  if (*(v13 + 16))
  {

    v14 = sub_100029BB8(a5);
    if ((v15 & 1) == 0)
    {
    }

    v16 = *(*(v13 + 56) + 8 * v14);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v19 == a1 && v20 == a2)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
LABEL_13:
        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.setter();
        swift_getKeyPath();
        swift_getKeyPath();

        return static Published.subscript.setter();
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v19 == a3 && v20 == a4)
    {
    }

    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v18)
    {
    }

    goto LABEL_13;
  }

  return result;
}

uint64_t sub_10001196C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v13 = *(v2 + v12);
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v14 = sub_100011ED8(v11, v13);

  v36 = *(v5 + 8);
  v37 = v4;
  v35 = v5 + 8;
  result = v36(v11, v4);
  if (!v14)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16 = *(v2 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v12) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_100016120(0, v16[2] + 1, 1, v16);
      *(v2 + v12) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = sub_100016120(v18 > 1, v19 + 1, 1, v16);
    }

    v16[2] = v19 + 1;
    v20 = v37;
    (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v9, v37);
    *(v2 + v12) = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v21 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
    swift_beginAccess();

    v22 = *(v2 + v21);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v2 + v21);
    *(v2 + v21) = 0x8000000000000000;
    sub_100022C1C(a1, v11, v23);
    v36(v11, v20);
    *(v2 + v21) = v38;
    swift_endAccess();
    sub_10001398C();
    if (qword_10005A190 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005D84(v24, qword_10005AC70);

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39 = v34;
      *v27 = 136315138;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID);
      v28 = v37;
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      v36(v11, v28);
      v32 = sub_100029504(v29, v31, &v39);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Updating Jindo with new task identifier: %s", v27, 0xCu);
      sub_100005E20(v34);
    }

    type metadata accessor for BackgroundActivitySession(0);
    sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  return result;
}

BOOL sub_100011ED8(uint64_t a1, uint64_t a2)
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

    v6 = *(type metadata accessor for UUID() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_100016BA0(&qword_10005BBA0, &type metadata accessor for UUID);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_100011FE4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v4 = v3;
  v94 = a2;
  v95 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v6 - 8);
  v7 = *(v88 + 64);
  __chkstk_darwin(v6);
  v86 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for DispatchTimeInterval();
  v80 = *(v81 - 8);
  v11 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = (&v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = type metadata accessor for DispatchTime();
  v83 = *(v93 - 8);
  v13 = *(v83 + 64);
  v14 = __chkstk_darwin(v93);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v82 = &v75 - v17;
  v18 = type metadata accessor for Date();
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  v20 = __chkstk_darwin(v18);
  v90 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v75 - v22;
  v23 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v78 = &v75 - v25;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v30 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v75 - v31;
  v33 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  result = swift_beginAccess();
  v35 = *(v4 + v33);
  if (*(v35 + 16))
  {

    v36 = sub_100029BB8(a1);
    if (v37)
    {
      v77 = v16;
      v76 = v6;
      v38 = *(*(v35 + 56) + 8 * v36);

      v39 = *(v27 + 16);
      v39(v32, a1, v26);
      v39(v30, v32, v26);
      v40 = v38;
      v41 = (*(v27 + 80) + 24) & ~*(v27 + 80);
      v42 = swift_allocObject();
      *(v42 + 16) = v4;
      (*(v27 + 32))(v42 + v41, v32, v26);
      v43 = (v42 + ((v28 + v41 + 7) & 0xFFFFFFFFFFFFFFF8));
      v45 = v94;
      v44 = v95;
      *v43 = v94;
      v43[1] = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1000177A8(v45);

      static Published.subscript.getter();

      v46 = aBlock[0];
      LODWORD(v41) = [aBlock[0] isFinished];

      if (!v41)
      {
        goto LABEL_5;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v47 = aBlock[0];
      v48 = [aBlock[0] isCancelled];

      if (v48)
      {
LABEL_5:
        sub_1000131D0(v4, v30, v45, v44);

        return (*(v27 + 8))(v30, v26);
      }

      (*(v27 + 8))(v30, v26);
      v49 = *(v4 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity);
      if (v49)
      {
        v50 = type metadata accessor for TaskPriority();
        v51 = v78;
        (*(*(v50 - 8) + 56))(v78, 1, 1, v50);
        type metadata accessor for MainActor();
        swift_retain_n();

        v52 = static MainActor.shared.getter();
        v53 = swift_allocObject();
        v53[2] = v52;
        v53[3] = &protocol witness table for MainActor;
        v53[4] = v40;
        v53[5] = v49;
        sub_100018ED4(0, 0, v51, &unk_10003F378, v53);
      }

      v54 = v89;
      Date.init()();
      swift_getKeyPath();
      swift_getKeyPath();
      v55 = v90;
      static Published.subscript.getter();

      Date.timeIntervalSince(_:)();
      v57 = v56;
      v58 = v56;
      v59 = *(v91 + 8);
      v60 = v55;
      v61 = v92;
      v59(v60, v92);
      result = (v59)(v54, v61);
      v62 = v77;
      if ((*&v58 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v57 > -9.22337204e18)
      {
        if (v57 < 9.22337204e18)
        {
          v63 = v57;
          v75 = v40;
          if (v57 > 3)
          {
            v64 = 10;
LABEL_16:
            sub_100009E1C(0, &qword_10005B680, OS_dispatch_queue_ptr);
            v94 = static OS_dispatch_queue.main.getter();
            static DispatchTime.now()();
            v65 = v79;
            *v79 = v64;
            v66 = v80;
            v67 = v81;
            (*(v80 + 104))(v65, enum case for DispatchTimeInterval.seconds(_:), v81);
            v68 = v82;
            + infix(_:_:)();
            (*(v66 + 8))(v65, v67);
            v95 = *(v83 + 8);
            v95(v62, v93);
            v69 = swift_allocObject();
            v69[2] = sub_100017714;
            v69[3] = v42;
            aBlock[4] = sub_100017854;
            aBlock[5] = v69;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100007578;
            aBlock[3] = &unk_100052548;
            v70 = _Block_copy(aBlock);

            v71 = v84;
            static DispatchQoS.unspecified.getter();
            v96 = &_swiftEmptyArrayStorage;
            sub_100016BA0(&qword_10005B300, &type metadata accessor for DispatchWorkItemFlags);
            sub_100005D3C(&qword_10005BD10, &qword_100040A60);
            sub_100006260(&qword_10005B308, &qword_10005BD10, &qword_100040A60);
            v72 = v86;
            v73 = v76;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v74 = v94;
            OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
            _Block_release(v70);

            (*(v88 + 8))(v72, v73);
            (*(v85 + 8))(v71, v87);
            v95(v68, v93);
          }

          v64 = 3 - v63;
          if (!__OFSUB__(3, v63))
          {
            goto LABEL_16;
          }

          goto LABEL_20;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_100012AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = *(*(sub_100005D3C(&qword_10005B368, &qword_10003F380) - 8) + 64) + 15;
  v5[6] = swift_task_alloc();
  v7 = *(*(sub_100005D3C(&qword_10005B370, &qword_10003F388) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v8 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v10 = *(v9 + 64) + 15;
  v5[10] = swift_task_alloc();
  v11 = *(*(type metadata accessor for AlertConfiguration.AlertSound() - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v13 = type metadata accessor for AlertConfiguration();
  v5[14] = v13;
  v14 = *(v13 - 8);
  v5[15] = v14;
  v15 = *(v14 + 64) + 15;
  v5[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[17] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[18] = v17;
  v5[19] = v16;

  return _swift_task_switch(sub_100012D08, v17, v16);
}

uint64_t sub_100012D08()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v17 = v0[10];
  v6 = v0[7];
  v18 = v0[6];
  v19 = v0[14];
  v7 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = v0[2];
  v9 = v0[3];
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  static AlertConfiguration.AlertSound.default.getter();
  AlertConfiguration.init(title:body:sound:)();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  sub_1000157FC();
  sub_100015854();
  sub_1000158AC();
  ActivityContent.init(state:staleDate:relevanceScore:)();
  (*(v1 + 16))(v18, v2, v19);
  (*(v1 + 56))(v18, 0, 1, v19);
  v11 = *(&async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:) + 1);
  v20 = (&async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:) + async function pointer to dispatch thunk of Activity.update(_:alertConfiguration:));
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_100012F40;
  v13 = v0[10];
  v15 = v0[5];
  v14 = v0[6];

  return v20(v13, v14);
}

uint64_t sub_100012F40()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);
  v5 = *(*v0 + 64);
  v6 = *(*v0 + 48);
  v10 = *v0;

  sub_10000619C(v6, &qword_10005B368, &qword_10003F380);
  (*(v4 + 8))(v3, v5);
  v7 = *(v1 + 152);
  v8 = *(v1 + 144);

  return _swift_task_switch(sub_1000130F0, v8, v7);
}

uint64_t sub_1000130F0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v5 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[6];
  v9 = v0[7];

  (*(v4 + 8))(v2, v3);

  v11 = v0[1];

  return v11();
}

void sub_1000131D0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v28[1] = a4;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  v12 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v13 = sub_1000162F8(sub_100017984, v29);
  v14 = *(*(a1 + v12) + 16);
  if (v14 < v13)
  {
    __break(1u);
  }

  else
  {
    sub_100017210(v13, v14);
    swift_endAccess();
    v12 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
    swift_beginAccess();
    sub_1000191C4(a2);
    swift_endAccess();

    sub_10001398C();
    if (qword_10005A190 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  sub_100005D84(v15, qword_10005AC70);
  (*(v8 + 16))(v11, a2, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = a3;
    v20 = v19;
    v31[0] = v19;
    *v18 = 136315138;
    sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v22 = v7;
    v23 = v12;
    v25 = v24;
    (*(v8 + 8))(v11, v22);
    v26 = sub_100029504(v21, v25, v31);
    v12 = v23;

    *(v18 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "Updating Jindo with removed task identifier: %s", v18, 0xCu);
    sub_100005E20(v20);
    a3 = v28[0];
  }

  else
  {

    v27 = (*(v8 + 8))(v11, v7);
  }

  if (*(*(a1 + v12) + 16))
  {
    type metadata accessor for BackgroundActivitySession(0);
    sub_100016BA0(&qword_10005B378, type metadata accessor for BackgroundActivitySession);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  if (a3)
  {
    a3(v27);
  }
}

unint64_t sub_100013584()
{
  v1 = 0xD00000000000002DLL;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_isInJindoStyle) != 1)
  {
    return v1;
  }

  v7 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if (!*(v8 + 16))
  {
    return v1;
  }

  (*(v3 + 16))(v6, v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
  v9 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (!*(v10 + 16))
  {
LABEL_21:
    (*(v3 + 8))(v6, v2);
    return v1;
  }

  v11 = v0;
  v12 = *(v0 + v9);

  v13 = sub_100029BB8(v6);
  if ((v14 & 1) == 0)
  {

    goto LABEL_21;
  }

  v33 = v3;
  v34 = 0x8000000100045120;
  v15 = *(*(v10 + 56) + 8 * v13);

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v16 = v39;
  v36 = v38;
  v17 = *(v11 + v9);
  v37 = &_swiftEmptyArrayStorage;
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  v35 = v17;

  v23 = 0;
  while (v21)
  {
    v24 = v23;
LABEL_14:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(v35 + 56) + ((v24 << 9) | (8 * v25)));
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (v38 == v36 && v39 == v16)
    {

      v23 = v24;
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v28 = *(v37 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      v23 = v24;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_14;
    }
  }

  if ((v37 & 0x8000000000000000) == 0 && (v37 & 0x4000000000000000) == 0)
  {
    v30 = *(v37 + 16);
    goto LABEL_26;
  }

LABEL_30:
  v30 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  v1 = 0xD00000000000002DLL;
  v31 = v33;

  (*(v31 + 8))(v6, v2);
  if (v30 <= 0)
  {
    return v36;
  }

  return v1;
}

void sub_10001398C()
{
  v0 = sub_100013584();
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, v5 = [Strong systemApertureElementViewControllerProvider], v4, v5))
  {
    v11 = [v5 systemApertureElementViewController];
    swift_unknownObjectRelease();
    sub_100005D3C(&unk_10005A5C0, &qword_10003E480);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = (v6 + direct field offset for APUISystemApertureElementHostingController.associatedAppBundleIdentifier);
      swift_beginAccess();
      v8 = v7[1];
      if (v8 && (*v7 == v0 ? (v9 = v8 == v2) : (v9 = 0), v9 || (v10 = v7[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
      {
      }

      else
      {
        *v7 = v0;
        v7[1] = v2;
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

uint64_t sub_100013B28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v23 = *(v9 - 8);
  v24 = v9;
  v10 = *(v23 + 64);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100009E1C(0, &qword_10005B680, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  (*(v14 + 16))(&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v13);
  v16 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  (*(v14 + 32))(v17 + v16, &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);
  *(v17 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_100016E14;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100007578;
  aBlock[3] = &unk_100052480;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v26 = &_swiftEmptyArrayStorage;
  sub_100016BA0(&qword_10005B300, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005D3C(&qword_10005BD10, &qword_100040A60);
  sub_100006260(&qword_10005B308, &qword_10005BD10, &qword_100040A60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19 = v22;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v25 + 8))(v8, v5);
  (*(v23 + 8))(v12, v24);
}

void sub_100013EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v104 = a3;
  v5 = type metadata accessor for UUID();
  v103 = *(v5 - 8);
  v6 = *(v103 + 64);
  v7 = __chkstk_darwin(v5);
  v102 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v8;
  __chkstk_darwin(v7);
  v100 = &v90 - v9;
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v99 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v94 = *(v13 - 8);
  v14 = *(v94 + 64);
  __chkstk_darwin(v13);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  v95 = *(v17 - 8);
  v18 = *(v95 + 64);
  __chkstk_darwin(v17);
  v98 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100005D3C(&qword_10005B310, &qword_10003F180);
  v96 = *(v97 - 8);
  v20 = *(v96 + 64);
  v21 = __chkstk_darwin(v97);
  v23 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v90 - v25;
  __chkstk_darwin(v24);
  v28 = &v90 - v27;
  v29 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
  swift_beginAccess();
  v30 = *(a1 + v29);
  if (*(v30 + 16))
  {

    v93 = a2;
    v31 = sub_100029BB8(a2);
    if (v32)
    {
      v91 = v5;
      v92 = a1;
      v33 = *(*(v30 + 56) + 8 * v31);

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v34 = aBlock;
      v35 = [aBlock isCancelled];

      if (v35 & 1) != 0 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , (aBlock))
      {
      }

      else
      {
        v90 = v33;
        if ((v104 - 1) >= 6)
        {
          if (v104)
          {
            aBlock = 0;
            v106 = 0xE000000000000000;
            _StringGuts.grow(_:)(22);

            aBlock = 0x20746E657645;
            v106 = 0xE600000000000000;
            v88._countAndFlagsBits = 0x6E776F6E6B6E75;
            v88._object = 0xE700000000000000;
            String.append(_:)(v88);

            v89._countAndFlagsBits = 0x70757320746F6E20;
            v89._object = 0xEE00646574726F70;
            String.append(_:)(v89);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }

          else
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v36 = aBlock;
            [aBlock fractionCompleted];
            v38 = v37;

            v111 = v38;
            v39 = v98;
            static Locale.autoupdatingCurrent.getter();
            sub_100016F1C();
            FloatingPointFormatStyle.Percent.init(locale:)();
            static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
            v40 = v97;
            FloatingPointFormatStyle.Percent.precision(_:)();
            (*(v94 + 8))(v16, v13);
            v41 = *(v96 + 8);
            v41(v23, v40);
            static Locale.current.getter();
            FloatingPointFormatStyle.Percent.locale(_:)();
            (*(v95 + 8))(v39, v17);
            v41(v26, v40);
            sub_100006260(&qword_10005B320, &qword_10005B310, &qword_10003F180);
            BinaryFloatingPoint.formatted<A>(_:)();
            v41(v28, v40);
            v42 = aBlock;
            v43 = v106;
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            String.init(localized:table:bundle:locale:comment:)();
            sub_100005D3C(&qword_10005B328, &qword_10003F260);
            v44 = swift_allocObject();
            v104 = xmmword_10003ED90;
            *(v44 + 16) = xmmword_10003ED90;
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter();

            v45 = aBlock;
            v46 = v106;
            *(v44 + 56) = &type metadata for String;
            v47 = sub_100016F78();
            *(v44 + 32) = v45;
            *(v44 + 40) = v46;
            *(v44 + 96) = &type metadata for String;
            *(v44 + 104) = v47;
            *(v44 + 64) = v47;
            *(v44 + 72) = v42;
            *(v44 + 80) = v43;
            v97 = String.init(format:_:)();
            v96 = v48;

            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v49 = String.init(localized:table:bundle:locale:comment:)();
            v51 = v50;
            String.LocalizationValue.init(stringLiteral:)();
            static Locale.current.getter();
            v52 = String.init(localized:table:bundle:locale:comment:)();
            v54 = v53;
            sub_100005D3C(&qword_10005B338, &qword_10003F2B0);
            v55 = swift_allocObject();
            *(v55 + 16) = v104;
            *(v55 + 32) = v49;
            *(v55 + 40) = v51;
            *(v55 + 48) = v52;
            *(v55 + 56) = v54;
            sub_100005D3C(&qword_10005B340, &qword_10003F2B8);
            inited = swift_initStackObject();
            *(inited + 16) = v104;
            *(inited + 32) = v49;
            *(inited + 40) = v51;
            sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);

            *(inited + 48) = NSNumber.init(integerLiteral:)(1);
            *(inited + 56) = v52;
            *(inited + 64) = v54;
            *(inited + 72) = NSNumber.init(integerLiteral:)(2);
            sub_1000045B8(inited);
            swift_setDeallocating();
            sub_100005D3C(&qword_10005B348, &qword_10003F2C0);
            swift_arrayDestroy();
            v57 = v103;
            v58 = v100;
            v59 = v91;
            *&v104 = *(v103 + 16);
            (v104)(v100, v93, v91);
            v60 = (*(v57 + 80) + 24) & ~*(v57 + 80);
            v61 = swift_allocObject();
            *(v61 + 16) = 0;
            (*(v57 + 32))(v61 + v60, v58, v59);
            v62 = objc_allocWithZone(APKActivityProgressEventAction);
            v63 = String._bridgeToObjectiveC()();

            isa = Array._bridgeToObjectiveC()().super.isa;

            v65 = Dictionary._bridgeToObjectiveC()().super.isa;

            v109 = sub_100017054;
            v110 = v61;
            aBlock = _NSConcreteStackBlock;
            v106 = 1107296256;
            v107 = sub_1000160CC;
            v108 = &unk_1000524D0;
            v66 = _Block_copy(&aBlock);
            v67 = [v62 initWithType:0 title:v63 buttons:isa buttonToResults:v65 handler:v66];

            _Block_release(v66);

            if (qword_10005A190 != -1)
            {
              swift_once();
            }

            v68 = type metadata accessor for Logger();
            sub_100005D84(v68, qword_10005AC70);
            v69 = v102;
            (v104)(v102, v93, v59);
            v70 = v67;
            v71 = Logger.logObject.getter();
            v72 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v71, v72))
            {
              v73 = v69;
              v74 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              aBlock = v76;
              *v74 = 138412546;
              *(v74 + 4) = v70;
              *v75 = v70;
              *(v74 + 12) = 2080;
              sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID);
              v77 = v70;
              v78 = dispatch thunk of CustomStringConvertible.description.getter();
              v80 = v79;
              (*(v103 + 8))(v73, v59);
              v81 = sub_100029504(v78, v80, &aBlock);

              *(v74 + 14) = v81;
              _os_log_impl(&_mh_execute_header, v71, v72, "Sending event action: %@ for identifier: %s", v74, 0x16u);
              sub_10000619C(v75, &qword_10005BC80, &qword_10003E860);

              sub_100005E20(v76);
            }

            else
            {

              (*(v103 + 8))(v69, v59);
            }

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v83 = Strong;
              v84 = [Strong _FBSScene];

              sub_100005D3C(&qword_10005BFE0, &qword_10003E530);
              v85 = swift_initStackObject();
              *(v85 + 16) = xmmword_10003EDA0;
              *(v85 + 32) = v70;
              v70 = v70;
              sub_1000172D0(v85);
              swift_setDeallocating();
              v86 = *(v85 + 16);
              swift_arrayDestroy();
              sub_100009E1C(0, &qword_10005B350, BSAction_ptr);
              sub_1000175C0();
              v87 = Set._bridgeToObjectiveC()().super.isa;

              [v84 sendActions:v87];
            }
          }
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(aBlock) = 1;
          static Published.subscript.setter();
        }
      }
    }

    else
    {
    }
  }
}

void sub_100014E34(Swift::Int a1, Swift::Int a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005A190 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100005D84(v11, qword_10005AC70);
  (*(v7 + 16))(v10, a3, v6);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v12, v13))
  {

    (*(v7 + 8))(v10, v6);
    goto LABEL_32;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  *v14 = 136315650;
  v32 = a1;
  v33 = v15;
  v31[0] = v15;
  v31[1] = a3;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v16 = 0xEC00000073736572;
        v17 = 0x676F7250776F6C73;
        goto LABEL_21;
      case 1:
        v16 = 0xE800000000000000;
        v17 = 0x6E69617244436F53;
        goto LABEL_21;
      case 2:
        v16 = 0x8000000100045070;
        v17 = 0xD000000000000011;
        goto LABEL_21;
    }

LABEL_17:
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E75;
    goto LABEL_21;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v16 = 0x8000000100045010;
      v17 = 0xD000000000000016;
      goto LABEL_21;
    }

    if (a2 == 6)
    {
      v17 = 0xD000000000000010;
      v16 = 0x8000000100044FF0;
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if (a2 == 3)
  {
    v16 = 0x8000000100045050;
    v17 = 0xD000000000000014;
  }

  else
  {
    v16 = 0x8000000100045030;
    v17 = 0xD000000000000012;
  }

LABEL_21:
  v18 = sub_100029504(v17, v16, &v33);

  *(v14 + 4) = v18;
  *(v14 + 12) = 2080;
  sub_100016BA0(&qword_10005B5C0, &type metadata accessor for UUID);
  v19 = dispatch thunk of CustomStringConvertible.description.getter();
  v21 = v20;
  (*(v7 + 8))(v10, v6);
  v22 = sub_100029504(v19, v21, &v33);

  *(v14 + 14) = v22;
  *(v14 + 22) = 2080;
  a1 = v32;
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v23 = 0xE600000000000000;
      v24 = 0x6465696E6564;
      goto LABEL_31;
    }

    if (v32 == 3)
    {
      v23 = 0xED00006465776F6CLL;
      v24 = 0x6C41737961776C61;
      goto LABEL_31;
    }

LABEL_28:
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
    goto LABEL_31;
  }

  if (!v32)
  {
    v23 = 0xEC00000064656E69;
    v24 = 0x6D72657465646E75;
    goto LABEL_31;
  }

  if (v32 != 1)
  {
    goto LABEL_28;
  }

  v23 = 0xE700000000000000;
  v24 = 0x6465776F6C6C61;
LABEL_31:
  v25 = sub_100029504(v24, v23, &v33);

  *(v14 + 24) = v25;
  _os_log_impl(&_mh_execute_header, v12, v13, "Activity event %s for identifier: %s received result %s", v14, 0x20u);
  swift_arrayDestroy();

LABEL_32:
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  v26 = *(qword_10005C670 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient);
  if (v26)
  {
    v27 = *(qword_10005C670 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient);
    swift_unknownObjectRetain();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    sub_100009E1C(0, &unk_10005B640, NSNumber_ptr);
    v29 = NSNumber.init(integerLiteral:)(a2).super.super.isa;
    v30 = NSNumber.init(integerLiteral:)(a1).super.super.isa;
    [v26 eventResultReceivedForActivity:isa event:v29 result:v30];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000153A0()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityUIDismissalPolicy();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_100005D3C(&qword_10005B2F0, &qword_10003F168);
  v8 = *(*(v7 - 8) + 64);
  result = __chkstk_darwin(v7 - 8);
  v11 = &v32[-v10];
  v12 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity;
  if (*(v0 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity))
  {
    v13 = qword_10005A190;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100005D84(v14, qword_10005AC70);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v35 = v3;
      v18 = v17;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v18 = 136315394;
      v33 = v16;
      v19 = Activity.id.getter();
      v21 = sub_100029504(v19, v20, &v37);
      v36 = v2;
      v22 = v21;

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_taskIdentifiers;
      swift_beginAccess();
      v24 = *(v1 + v23);
      type metadata accessor for UUID();

      v25 = Array.description.getter();
      v27 = v26;

      v28 = v25;
      v2 = v36;
      v29 = sub_100029504(v28, v27, &v37);

      *(v18 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v15, v33, "Ending activity %s for task identifiers: %s", v18, 0x16u);
      swift_arrayDestroy();

      v3 = v35;
    }

    v30 = sub_100005D3C(&qword_10005B2F8, &unk_10003F170);
    (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
    static ActivityUIDismissalPolicy.immediate.getter();
    dispatch thunk of Activity.endSync(_:dismissalPolicy:)();

    (*(v3 + 8))(v6, v2);
    sub_10000619C(v11, &qword_10005B2F0, &qword_10003F168);
    v31 = *(v1 + v12);
    *(v1 + v12) = 0;
  }

  return result;
}

unint64_t sub_10001574C()
{
  result = qword_10005B258;
  if (!qword_10005B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B258);
  }

  return result;
}

unint64_t sub_1000157A4()
{
  result = qword_10005B260;
  if (!qword_10005B260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B260);
  }

  return result;
}

unint64_t sub_1000157FC()
{
  result = qword_10005B268;
  if (!qword_10005B268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B268);
  }

  return result;
}

unint64_t sub_100015854()
{
  result = qword_10005B270;
  if (!qword_10005B270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B270);
  }

  return result;
}

unint64_t sub_1000158AC()
{
  result = qword_10005B278;
  if (!qword_10005B278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B278);
  }

  return result;
}

unint64_t sub_100015904()
{
  result = qword_10005B280;
  if (!qword_10005B280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B280);
  }

  return result;
}

uint64_t sub_1000159A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackgroundActivitySession(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100015A04@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_100015A8C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100015AD0()
{
  result = qword_10005B298;
  if (!qword_10005B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B298);
  }

  return result;
}

uint64_t sub_100015B60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_100015BE0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100015CA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100015D30(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_100015DE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_100015E70(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100015EE0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100015F58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = *(v8 + 16);
  v15(&v18 - v13, a1, v7);
  v16 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v15(v12, v14, v7);

  static Published.subscript.setter();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_1000160CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

size_t sub_100016120(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005D3C(&qword_10005B2E8, &qword_10003F160);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1000162F8(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v40 - v12;
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = *v2;
  v17 = v54;
  result = sub_10001669C(a1, a2, *v2);
  if (!v17)
  {
    v50 = v15;
    v54 = 0;
    if (v19)
    {
      return *(v16 + 16);
    }

    v20 = v5;
    v42 = v10;
    v43 = v13;
    v47 = a1;
    v41 = v2;
    v52 = result;
    v21 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = v16;
      v24 = (v16 + 16);
      v23 = *(v16 + 16);
      v25 = v50;
      if (v21 == v23)
      {
        return v52;
      }

      v26 = v20;
      v49 = v6 + 16;
      v45 = v6;
      v46 = (v6 + 8);
      v40 = (v6 + 40);
      v44 = a2;
      while (v21 < v23)
      {
        v27 = *(v6 + 80);
        v53 = v22;
        v48 = (v27 + 32) & ~v27;
        v28 = v22 + v48;
        v29 = *(v6 + 72);
        v30 = *(v6 + 16);
        v51 = v29 * v21;
        v30(v25, &v28[v29 * v21], v26);
        v31 = v54;
        v32 = v47(v25);
        v54 = v31;
        if (v31)
        {
          return (*v46)(v25, v26);
        }

        v33 = v32;
        result = (*v46)(v25, v26);
        if (v33)
        {
          v6 = v45;
          v25 = v50;
          v22 = v53;
        }

        else
        {
          v34 = v52;
          if (v21 == v52)
          {
            v6 = v45;
            v25 = v50;
            v22 = v53;
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v35 = *v24;
            if (v52 >= v35)
            {
              goto LABEL_27;
            }

            v36 = v29 * v52;
            result = (v30)(v43, &v28[v36], v26);
            if (v21 >= v35)
            {
              goto LABEL_28;
            }

            v37 = v42;
            v30(v42, &v28[v51], v26);
            v22 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_100016788(v22);
            }

            v38 = v22 + v48;
            v39 = *v40;
            result = (*v40)(v22 + v48 + v36, v37, v26);
            v6 = v45;
            if (v21 >= v22[2])
            {
              goto LABEL_29;
            }

            result = v39(&v38[v51], v43, v26);
            *v41 = v22;
            v34 = v52;
            v25 = v50;
          }

          v52 = v34 + 1;
        }

        ++v21;
        v24 = v22 + 2;
        v23 = v22[2];
        if (v21 == v23)
        {
          return v52;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10001669C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_10001679C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100005D3C(&qword_10005B3D0, &qword_10003F548);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100016990(uint64_t *a1)
{
  v3 = sub_100005D3C(&qword_10005B2A0, &qword_10003F0F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100015A8C(a1, a1[3]);
  sub_100016B4C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005E20(a1);
  }

  else
  {
    sub_100005D3C(&qword_10005B2B0, &qword_10003F0F8);
    sub_100016BE8(&qword_10005B2B8, &qword_10005B2C0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100005E20(a1);
  }

  return v9;
}

unint64_t sub_100016B4C()
{
  result = qword_10005B2A8;
  if (!qword_10005B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B2A8);
  }

  return result;
}

uint64_t sub_100016BA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100016BE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100005F90(&qword_10005B2B0, &qword_10003F0F8);
    sub_100016BA0(a2, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100016CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100016D44()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100016E14()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100013EF8(v3, v0 + v2, v4);
}

uint64_t sub_100016EA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100016F1C()
{
  result = qword_10005B318;
  if (!qword_10005B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B318);
  }

  return result;
}

unint64_t sub_100016F78()
{
  result = qword_10005B330;
  if (!qword_10005B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B330);
  }

  return result;
}

uint64_t sub_100016FCC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100017054(Swift::Int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_100014E34(a1, v4, v5);
}

unint64_t sub_1000170C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for UUID();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100017210(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v9 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_100016120(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_1000170C8(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1000172D0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_100005D3C(&qword_10005B360, &unk_10003F2C8);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009E1C(0, &qword_10005B350, BSAction_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009E1C(0, &qword_10005B350, BSAction_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_1000175C0()
{
  result = qword_10005B358;
  if (!qword_10005B358)
  {
    sub_100009E1C(255, &qword_10005B350, BSAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B358);
  }

  return result;
}

uint64_t sub_100017630()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

void sub_100017714()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  sub_1000131D0(v3, v0 + v2, v5, v6);
}

uint64_t sub_1000177A8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001781C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100017854()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10001787C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000178C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100007B74;

  return sub_100012AD8(a1, v4, v5, v7, v6);
}

uint64_t sub_100017AB0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100017AE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100017B28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100010EF4();
}

uint64_t getEnumTagSinglePayload for BackgroundActivityAttributes.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BackgroundActivityAttributes.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_100017C3C()
{
  result = qword_10005B3D8;
  if (!qword_10005B3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3D8);
  }

  return result;
}

unint64_t sub_100017C94()
{
  result = qword_10005B3E0;
  if (!qword_10005B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3E0);
  }

  return result;
}

unint64_t sub_100017CEC()
{
  result = qword_10005B3E8;
  if (!qword_10005B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3E8);
  }

  return result;
}

unint64_t sub_100017D44()
{
  result = qword_10005B3F0;
  if (!qword_10005B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3F0);
  }

  return result;
}

unint64_t sub_100017D9C()
{
  result = qword_10005B3F8;
  if (!qword_10005B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B3F8);
  }

  return result;
}

__n128 sub_100017E10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_100017E24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 19))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100017E6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_100017EC8()
{
  result = qword_10005B400;
  if (!qword_10005B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B400);
  }

  return result;
}

uint64_t sub_100017F1C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = (a4 >> 8) & 1;
  v5 = sub_1000180C8(a2, a3, a4 & 0x10101);
  objc_allocWithZone(type metadata accessor for BackgroundActivityProgressMicaView());
  v6 = v5;
  sub_100009824(8, v5);
  v8 = v7;
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v9 = *(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress);
  *(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress) = v14;
  v10 = v14;

  sub_1000088C8();
  v11 = OBJC_IVAR____TtC18ActivityProgressUI22APUISystemApertureView_expanded;
  v12 = 1;
  swift_beginAccess();
  *(v8 + v11) = v4;
  sub_100009170();
  if (*(v8 + v11) == 1)
  {
    v12 = *(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) == 0;
  }

  [*(v8 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_transparentCancelButton) setHidden:v12];

  return v8;
}

uint64_t sub_1000180C8(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) == 0)
  {
    return 0;
  }

  v18 = v9;
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v19)
  {
    return 0;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = v19;
  v13 = [v19 isCancellable];

  if (!v13)
  {
    return 0;
  }

  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v19;
  v15 = [v19 isFinished];

  result = 0;
  if ((v15 & 1) == 0)
  {
    sub_100018A9C();
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    UUID.uuidString.getter();
    (*(v7 + 8))(v11, v18);
    String._bridgeToObjectiveC()();

    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    *(v17 + 32) = a3 & 1;
    *(v17 + 33) = 1;
    *(v17 + 34) = BYTE2(a3) & 1;
    sub_100006258();
    return UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  }

  return result;
}

void sub_100018468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v19 == 1)
  {
    *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_disabled) = 1;
    v9 = OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress;
    v10 = *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress);
    [v10 setCompletedUnitCount:0];
    v11 = *(a1 + v9);
    *(a1 + v9) = v10;
    v12 = v10;

    sub_1000088C8();
    sub_100009170();
    sub_100008F04();
  }

  else
  {
    StateObject.wrappedValue.getter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v13 = *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress);
    *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_progress) = v18;
    v14 = v18;

    sub_1000088C8();
  }

  v15 = sub_1000180C8(a3, a4, a5 & 0x10101);
  v16 = *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction);
  *(a1 + OBJC_IVAR____TtC18ActivityProgressUI34BackgroundActivityProgressMicaView_cancelAction) = v15;
  v17 = v15;
  sub_100008A04(v16);
}

uint64_t sub_100018680()
{
  if (qword_10005A1A0 != -1)
  {
    swift_once();
  }

  sub_100005D3C(&qword_10005B2E8, &qword_10003F160);
  v0 = *(type metadata accessor for UUID() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10003DD60;
  type metadata accessor for BackgroundActivitySessionTask(0);
  sub_100018A34();
  StateObject.wrappedValue.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_1000192B8(v3);
}

uint64_t sub_100018818(uint64_t a1)
{
  if (*(v1 + 18))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_100017F1C(a1, *v1, *(v1 + 8), v2 | v3 | *(v1 + 16));
}

void sub_100018854(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 18))
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v2 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  sub_100018468(a1, a2, *v2, *(v2 + 8), v3 | v4 | *(v2 + 16));
}

uint64_t sub_1000188F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000189E0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100018954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000189E0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000189B8()
{
  sub_1000189E0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1000189E0()
{
  result = qword_10005B408;
  if (!qword_10005B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B408);
  }

  return result;
}

unint64_t sub_100018A34()
{
  result = qword_10005B410;
  if (!qword_10005B410)
  {
    type metadata accessor for BackgroundActivitySessionTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005B410);
  }

  return result;
}

unint64_t sub_100018A9C()
{
  result = qword_10005B418;
  if (!qword_10005B418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005B418);
  }

  return result;
}

uint64_t sub_100018AF0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1000062A8();

  return _swift_deallocObject(v0, 35, 7);
}

uint64_t sub_100018B2C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 33);
  *(v0 + 34);
  return sub_100018680();
}

uint64_t sub_100018B68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = *(v24 + 16);
  if (v4)
  {
    v5 = sub_1000219D4(*(v24 + 16), 0);
    v6 = sub_100023598(&v24, (v5 + 32), v4, v24);
    sub_1000236EC();
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_5:
  v24 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v23)
  {

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v21 = a1;
      v22 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      a1 = v21;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v24;
  }

  if (v5 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        goto LABEL_19;
      }

      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v9 = *(v5 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

LABEL_19:
      if (*(v9 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity))
      {
        v11 = *(v9 + OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_activity);

        v12 = a1;
        v13 = a2;
        v14 = Activity.id.getter();
        v16 = v15;

        v17 = v14;
        a2 = v13;
        if (v17 == v12 && v16 == v13)
        {

LABEL_27:

          return v9;
        }

        a1 = v12;
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_27;
        }
      }

      ++v8;
      if (v10 == i)
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

  return 0;
}

uint64_t sub_100018E60()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100018ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100005D3C(&qword_10005B590, &qword_10003E800);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_100021A5C(a3, v27 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000619C(v12, &qword_10005B590, &qword_10003E800);
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

      sub_10000619C(a3, &qword_10005B590, &qword_10003E800);

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

  sub_10000619C(a3, &qword_10005B590, &qword_10003E800);
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

uint64_t sub_1000191D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = *v3;
  v8 = sub_100029BB8(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v10 = v8;
  v11 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v6;
  v18 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000231B0(a2, a3);
    v13 = v18;
  }

  v14 = *(v13 + 48);
  v15 = type metadata accessor for UUID();
  (*(*(v15 - 8) + 8))(v14 + *(*(v15 - 8) + 72) * v10, v15);
  v16 = *(*(v13 + 56) + 8 * v10);
  sub_100022780(v10, v13);
  *v6 = v13;
  return v16;
}

void sub_1000192B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005A198 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005D84(v9, qword_10005B420);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v43 = v5;
    v14 = v13;
    v45[0] = v13;
    *v12 = 136315138;
    v15 = Array.description.getter();
    v17 = sub_100029504(v15, v16, v45);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Requested cancel for task identifiers: %s", v12, 0xCu);
    sub_100005E20(v14);
    v5 = v43;
  }

  v42 = a1;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v5 + 16);
    v43 = v5 + 16;
    v44 = v19;
    v20 = v42 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v21 = *(v5 + 72);
    v22 = (v5 + 8);
    v19(v8, v20, v4);
    while (1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v24 = v46;
      if (*(v46 + 16) && (v25 = sub_100029BB8(v8), (v26 & 1) != 0))
      {
        v27 = *(*(v24 + 56) + 8 * v25);

        v28 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
        swift_beginAccess();
        v29 = *(v27 + v28);
        if (*(v29 + 16))
        {

          v30 = sub_100029BB8(v8);
          if (v31)
          {
            v32 = *(*(v29 + 56) + 8 * v30);

            swift_getKeyPath();
            swift_getKeyPath();
            LOBYTE(v46) = 1;
            static Published.subscript.setter();
          }

          else
          {
          }
        }
      }

      else
      {
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v33 = v46;
      if (v46)
      {
        v34 = OBJC_IVAR____TtC18ActivityProgressUI25BackgroundActivitySession_tasksByIdentifier;
        swift_beginAccess();
        v35 = *(v33 + v34);
        if (!*(v35 + 16))
        {
          goto LABEL_8;
        }

        v36 = sub_100029BB8(v8);
        if (v37)
        {
          v23 = *(*(v35 + 56) + 8 * v36);

          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v46) = 1;
          static Published.subscript.setter();
LABEL_8:

          goto LABEL_9;
        }
      }

LABEL_9:
      (*v22)(v8, v4);
      v20 += v21;
      if (!--v18)
      {
        break;
      }

      v44(v8, v20, v4);
    }
  }

  v38 = *(v2 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient);
  if (v38)
  {
    v39 = objc_allocWithZone(APKActivityProgressTasksSpecifier);
    swift_unknownObjectRetain();
    isa = Array._bridgeToObjectiveC()().super.isa;
    v41 = [v39 initWithTaskIdentifiers:isa];

    [v38 cancelActivities:v41];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1000197B0()
{
  v0 = type metadata accessor for Logger();
  sub_100005DBC(v0, qword_10005B420);
  v1 = sub_100005D84(v0, qword_10005B420);
  if (qword_10005A230 != -1)
  {
    swift_once();
  }

  v2 = sub_100005D84(v0, qword_10005C708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100019878()
{
  result = [objc_allocWithZone(type metadata accessor for BackgroundActivitySessionsController()) init];
  qword_10005C670 = result;
  return result;
}

uint64_t sub_1000198AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_10001992C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v3;
  return static Published.subscript.setter();
}

uint64_t sub_1000199A4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

char *sub_100019A18()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  __chkstk_darwin(v1);
  v41 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v40[1] = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100005D3C(&qword_10005B670, &qword_10003FD88);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v40 - v12;
  v14 = sub_100005D3C(&qword_10005B678, &qword_10003FD90);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v40 - v17;
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_connection] = 0;
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_activityProgressUIClient] = 0;
  v19 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController__backgroundActivitySessionsByTaskID;
  aBlock[0] = sub_1000046BC(&_swiftEmptyArrayStorage);
  sub_100005D3C(&qword_10005B4B8, &qword_10003F9E0);
  Published.init(initialValue:)();
  (*(v15 + 32))(&v0[v19], v18, v14);
  v20 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController__groupJindoSession;
  aBlock[0] = 0;
  sub_100005D3C(&qword_10005B4C8, &qword_10003F9E8);
  Published.init(initialValue:)();
  (*(v10 + 32))(&v0[v20], v13, v9);
  v21 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_hapticGenerator;
  *&v0[v21] = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
  v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_shouldPlayHapticOnSceneActivation] = 0;
  v22 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_queue;
  sub_100009E1C(0, &qword_10005B680, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000247B8(&qword_10005B688, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005D3C(&qword_10005B690, qword_10003FD98);
  sub_100024754();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v42 + 104))(v41, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v43);
  *&v0[v22] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = type metadata accessor for APKLockStateMonitor();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_lockStateMonitor] = APKLockStateMonitor.init()();
  type metadata accessor for BackgroundActivitySystemPillController();
  swift_allocObject();
  *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_pillController] = sub_10000675C();
  v26 = ObjectType;
  v49.receiver = v0;
  v49.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v49, "init");
  v28 = *&v27[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_lockStateMonitor];
  sub_1000247B8(&qword_10005B6A0, type metadata accessor for BackgroundActivitySessionsController);
  v29 = v27;

  dispatch thunk of APKLockStateMonitor.delegate.setter();

  v46 = v29;
  v47 = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100024800;
  *(v30 + 24) = &v45;
  aBlock[4] = sub_100024854;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024850;
  aBlock[3] = &unk_100052A60;
  v31 = _Block_copy(aBlock);
  v32 = objc_opt_self();

  v33 = [v32 listenerWithConfigurator:v31];
  _Block_release(v31);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }

  else
  {
    v26 = OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener;
    v34 = *&v29[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener];
    *&v29[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener] = v33;

    if (qword_10005A198 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v35 = type metadata accessor for Logger();
  sub_100005D84(v35, qword_10005B420);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "BackgroundActivitySessionsController listener is activating...", v38, 2u);
  }

  result = *&v29[v26];
  if (result)
  {
    [result activate];

    return v29;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10001A144(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

void sub_10001A228()
{
  v1 = *&v0[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_listener];
  if (v1)
  {
    ObjectType = swift_getObjectType();
    [v1 invalidate];
    v3.receiver = v0;
    v3.super_class = ObjectType;
    objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for BackgroundActivitySessionsController()
{
  result = qword_10005B4A0;
  if (!qword_10005B4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A498()
{
  sub_10000F7F4(319, &qword_10005B4B0, &qword_10005B4B8, &qword_10003F9E0);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10000F7F4(319, &qword_10005B4C0, &qword_10005B4C8, &qword_10003F9E8);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10001A5C8()
{
  v1 = v0;
  v2 = type metadata accessor for APKDeviceLockState();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v14 = v41;
  if (v41[2] && (v15 = sub_100029BB8(v13), (v16 & 1) != 0))
  {
    v17 = *(v14[7] + 8 * v15);
    KeyPath = *(v7 + 8);
    v18 = KeyPath;

    v18(v13, v6);

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v19 = v41;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10001125C(v19, v11);

    return (KeyPath)(v11, v6);
  }

  else
  {

    v21 = *(v7 + 8);
    v22 = v13;
    v23 = v6;
    v21(v22, v6);
    v24 = *(v0 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_lockStateMonitor);
    dispatch thunk of APKLockStateMonitor.lockState.getter();
    v25 = type metadata accessor for BackgroundActivitySession(0);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();

    v29 = v40;
    result = sub_10000FB88(v28, 0, v5);
    if (!v29)
    {
      v30 = result;
      v40 = 0;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      KeyPath = swift_getKeyPath();
      swift_getKeyPath();

      v38 = static Published.subscript.modify();
      v31 = v21;
      v33 = v32;
      v34 = *v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = *v33;
      *v33 = 0x8000000000000000;
      sub_100022C30(v30, v11, isUniquelyReferenced_nonNull_native, &qword_10005A5A0, &qword_10003E430);
      v31(v11, v23);
      *v33 = v42;
      v38(&v41, 0);

      v36 = *(v1 + OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_pillController);
      sub_1000068F8();
    }
  }

  return result;
}

uint64_t sub_10001AA34(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for APKDeviceLockState();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v18)
  {
    sub_10001196C(a1);
  }

  else
  {
    v10 = *&v1[OBJC_IVAR____TtC18ActivityProgressUI36BackgroundActivitySessionsController_lockStateMonitor];
    dispatch thunk of APKLockStateMonitor.lockState.getter();
    v11 = type metadata accessor for BackgroundActivitySession(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    result = sub_10000FB88(v14, 1, v8);
    if (!v2)
    {
      v15 = result;
      swift_getKeyPath();
      swift_getKeyPath();
      v18 = v15;
      v16 = v3;
      return static Published.subscript.setter();
    }
  }

  return result;
}