Swift::Int sub_100695E40()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1006964DC(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100695EE4()
{
  type metadata accessor for UUID();
  sub_1006964DC(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return String.hash(into:)();
}

Swift::Int sub_100695F84()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1006964DC(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100696024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F33E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1005B981C(&qword_1019F33E8);
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for CRLFolderIdentifierStorage(0);
  v15 = *(v14 + 20);
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v43 = type metadata accessor for CRLFolder();
  v20 = *(v43 + 20);
  v21 = *(v11 + 48);
  sub_10069646C(a1 + v20, v13);
  sub_10069646C(a2 + v20, &v13[v21]);
  v22 = *(v5 + 48);
  if (v22(v13, 1, v4) != 1)
  {
    sub_10069646C(v13, v10);
    if (v22(&v13[v21], 1, v4) != 1)
    {
      sub_100696524(&v13[v21], v7, type metadata accessor for CRLFolderIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v24 = *(v14 + 20);
        v25 = *&v10[v24];
        v26 = *&v10[v24 + 8];
        v27 = &v7[v24];
        v28 = v25 == *v27 && v26 == *(v27 + 1);
        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          sub_1006965F4(v7, type metadata accessor for CRLFolderIdentifier);
          sub_1006965F4(v10, type metadata accessor for CRLFolderIdentifier);
          goto LABEL_20;
        }
      }

      sub_1006965F4(v7, type metadata accessor for CRLFolderIdentifier);
      sub_1006965F4(v10, type metadata accessor for CRLFolderIdentifier);
      v23 = &qword_1019F33E0;
LABEL_25:
      sub_10000CAAC(v13, v23);
      return 0;
    }

    sub_1006965F4(v10, type metadata accessor for CRLFolderIdentifier);
LABEL_12:
    v23 = &qword_1019F33E8;
    goto LABEL_25;
  }

  if (v22(&v13[v21], 1, v4) != 1)
  {
    goto LABEL_12;
  }

LABEL_20:
  sub_10000CAAC(v13, &qword_1019F33E0);
  v29 = v43;
  v30 = *(v43 + 24);
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31)
  {
    if (!v32)
    {
      return 0;
    }

    sub_100006370(0, &qword_1019F52C0);
    v33 = v32;
    v34 = v31;
    v35 = static NSObject.== infix(_:_:)();

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v32)
  {
    return 0;
  }

  if ((sub_1005CD7F0() & 1) == 0)
  {
    return 0;
  }

  v37 = *(v29 + 32);
  v38 = a1 + v37;
  v39 = *(a1 + v37);
  v40 = a2 + v37;
  if (v39 != *v40 || *(v38 + 8) != *(v40 + 8) || *(v38 + 16) != *(v40 + 16))
  {
    return 0;
  }

  if ((*(v38 + 32) & 1) == 0)
  {
    if (*(v38 + 24) == *(v40 + 24))
    {
      v41 = *(v40 + 32);
    }

    else
    {
      v41 = 1;
    }

    return (v41 & 1) == 0;
  }

  return (*(v40 + 32) & 1) != 0;
}

uint64_t sub_10069646C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F33E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006964DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100696524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10069658C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006965F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100696654(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F33E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100696750()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_isTornDown) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 34;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "teardown not called for CRLScenesViewController_iv", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:34 isFatal:0 format:v24 args:v21];
  }

  v26.receiver = v1;
  v26.super_class = type metadata accessor for CRLScenesViewController_iv();
  return objc_msgSendSuper2(&v26, "dealloc");
}

void sub_100696BA4()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v42.receiver = v0;
  v42.super_class = type metadata accessor for CRLScenesViewController_iv();
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v3 = OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_hostingController;
  v4 = [*&v0[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_hostingController] view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = *&v0[v3];
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v7 = [v0 view];
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = v7;
  v9 = [*&v1[v3] view];
  if (!v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v8 addSubview:v9];

  [v1 addChildViewController:*&v1[v3]];
  [*&v1[v3] didMoveToParentViewController:v1];
  sub_1005B981C(&unk_1019F4D60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146E8B0;
  v12 = [*&v1[v3] view];
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v11 + 32) = v18;
  v19 = [*&v1[v3] view];
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = [v19 trailingAnchor];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = [v22 trailingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v11 + 40) = v25;
  v26 = [*&v1[v3] view];
  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  v28 = [v26 topAnchor];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = [v28 constraintEqualToAnchor:v31];
  *(v11 + 48) = v32;
  v33 = [*&v1[v3] view];
  if (!v33)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v1 view];
  if (v36)
  {
    v37 = v36;
    v38 = objc_opt_self();
    v39 = [v37 bottomAnchor];

    v40 = [v35 constraintEqualToAnchor:v39];
    *(v11 + 56) = v40;
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v38 activateConstraints:isa];

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_100697070()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_isTornDown;
  if (*(v0 + OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_isTornDown) == 1)
  {
    v25 = objc_opt_self();
    v3 = [v25 _atomicIncrementAssertCount];
    v26 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v26);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 56;
    v15 = v26;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "Should not call tearDown twice.", 31, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v25 handleFailureInFunction:v22 file:v23 lineNumber:56 isFatal:0 format:v24 args:v21];
  }

  *(v1 + v2) = 1;
}

id sub_10069742C(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    return 0;
  }

  sub_100601584(a2, v16);
  v6 = v17;
  if (v17)
  {
    v7 = sub_100020E58(v16, v17);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_100005070(v16);
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for CRLScenesViewController_iv();
  v15.receiver = v2;
  v15.super_class = v13;
  v14 = objc_msgSendSuper2(&v15, "canPerformAction:withSender:", a1, v12);
  swift_unknownObjectRelease();
  return v14;
}

void sub_10069762C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_scenesPopoverState);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  static Published.subscript.getter();

  if ((v5 & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {

      v4 = sub_1006765F4(v3);

      sub_10104B498(v4);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10069778C(uint64_t a1)
{
  sub_100601584(a1, v10);
  v2 = v11;
  if (v11)
  {
    v3 = sub_100020E58(v10, v11);
    v4 = *(v2 - 8);
    v5 = __chkstk_darwin(v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    sub_100005070(v10);
  }

  else
  {
    v8 = 0;
  }

  [v1 delete:v8];
  return swift_unknownObjectRelease();
}

void sub_100697B40(void *a1, uint64_t a2, Class isa)
{
  type metadata accessor for CRLiOSBoardViewController();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v22 = a1;
  v9 = [v8 presentedViewController];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for CRLScenesViewController_iv();
    if (swift_dynamicCastClass() || ([v10 isBeingPresented] & 1) != 0)
    {

LABEL_12:

      return;
    }

    v11 = [v10 isBeingDismissed];

    if (v11)
    {
      goto LABEL_12;
    }
  }

  [v3 setModalPresentationStyle:7];
  v12 = [v3 popoverPresentationController];
  if (!v12)
  {
    goto LABEL_12;
  }

  v13 = v12;
  [v12 setSourceView:a2];
  if (isa)
  {
    sub_100006370(0, &qword_1019F6D00);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v13 setPassthroughViews:isa];

  [v13 setPermittedArrowDirections:2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v15 = *&v3[OBJC_IVAR____TtC8Freeform26CRLScenesViewController_iv_scenesPopoverState];
  v16 = sub_100B05884(Strong);
  v18 = v17;
  swift_unknownObjectRelease();

  [v3 setPreferredContentSize:{v16, v18}];
  v19 = [objc_opt_self() isReduceMotionEnabled];
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100699748;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_101880270;
  v21 = _Block_copy(aBlock);

  [v8 presentViewController:v3 animated:v19 ^ 1 completion:v21];
  _Block_release(v21);
}

void sub_100697E2C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong becomeFirstResponder];
  }
}

id sub_1006980B4()
{
  v1 = v0;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_isTornDown) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = [v2 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v12;
    v13 = sub_1005CF04C();
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 172;
    v15 = v27;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "teardown not called for CRLCompactScenesViewController_i", 56, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v2 handleFailureInFunction:v22 file:v23 lineNumber:172 isFatal:0 format:v24 args:v21];
  }

  v26.receiver = v1;
  v26.super_class = type metadata accessor for CRLCompactScenesViewController_i();
  return objc_msgSendSuper2(&v26, "dealloc");
}

void sub_1006984F8()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v1];

  v3 = OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_isTornDown;
  if (*(v1 + OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_isTornDown) == 1)
  {
    v26 = objc_opt_self();
    v4 = [v26 _atomicIncrementAssertCount];
    v27 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v27);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v4;
    v13 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v13;
    v14 = sub_1005CF04C();
    *(inited + 104) = v14;
    *(inited + 72) = v5;
    *(inited + 136) = &type metadata for String;
    v15 = sub_1000053B0();
    *(inited + 112) = v8;
    *(inited + 120) = v10;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v15;
    *(inited + 152) = 178;
    v16 = v27;
    *(inited + 216) = v13;
    *(inited + 224) = v14;
    *(inited + 192) = v16;
    v17 = v5;
    v18 = v16;
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v11, &_mh_execute_header, v20, "Should not call tearDown twice.", 31, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v21 = swift_allocObject();
    v21[2] = 8;
    v21[3] = 0;
    v21[4] = 0;
    v21[5] = 0;
    v22 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v23 file:v24 lineNumber:178 isFatal:0 format:v25 args:v22];
  }

  *(v1 + v3) = 1;
}

id sub_1006988E4()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  v40.receiver = v0;
  v40.super_class = type metadata accessor for CRLCompactScenesViewController_i();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v3 = OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_hostingController;
  result = [*&v0[OBJC_IVAR____TtC8Freeform32CRLCompactScenesViewController_i_hostingController] view];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = *&v0[v3];
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  result = [v0 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  result = [*&v1[v3] view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  [v7 addSubview:result];

  [v1 addChildViewController:*&v1[v3]];
  [*&v1[v3] didMoveToParentViewController:v1];
  sub_1005B981C(&unk_1019F4D60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146E8B0;
  result = [*&v1[v3] view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = [result leadingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = result;
  v13 = [result leadingAnchor];

  v14 = [v11 constraintEqualToAnchor:v13];
  *(v9 + 32) = v14;
  result = [*&v1[v3] view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = result;
  v16 = [result trailingAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = result;
  v18 = [result trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v9 + 40) = v19;
  result = [*&v1[v3] view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = result;
  v21 = [result topAnchor];

  result = [v1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = result;
  v23 = [result topAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v9 + 48) = v24;
  result = [*&v1[v3] view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = result;
  v26 = [result bottomAnchor];

  result = [v1 view];
  if (result)
  {
    v27 = result;
    v28 = objc_opt_self();
    v29 = [v27 bottomAnchor];

    v30 = [v26 constraintEqualToAnchor:v29];
    *(v9 + 56) = v30;
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints:isa];

    v32 = UIAccessibilityVoiceOverStatusDidChangeNotification;
    v33 = UIAccessibilitySwitchControlStatusDidChangeNotification;
    v34 = objc_opt_self();
    v35 = v32;
    v36 = [v34 defaultCenter];
    [v36 addObserver:v1 selector:"updateSheetPresentationDetents" name:v35 object:0];

    v37 = objc_opt_self();
    v38 = v33;
    v39 = [v37 defaultCenter];
    [v39 addObserver:v1 selector:"updateSheetPresentationDetents" name:v38 object:0];

    sub_1005B981C(&qword_1019F8048);
    return swift_arrayDestroy();
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_100698F6C(void *a1)
{
  type metadata accessor for CRLCompactScenesViewController_i();
  if (!swift_dynamicCastClass() && ([a1 isBeingPresented] & 1) == 0 && (objc_msgSend(a1, "isBeingDismissed") & 1) == 0)
  {
    [v1 setModalPresentationStyle:1];
    v3 = [v1 sheetPresentationController];
    if (v3)
    {
      v4 = v3;
      sub_100699634();
      sub_100006370(0, &qword_1019FB500);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v4 setDetents:isa];
    }

    v6 = [v1 sheetPresentationController];
    if (v6)
    {
      v7 = v6;
      [v6 setLargestUndimmedDetentIdentifier:UISheetPresentationControllerDetentIdentifierMedium];
    }

    type metadata accessor for CRLiOSBoardViewController();
    v16 = swift_dynamicCastClass();
    if (v16 && (v8 = a1, (v9 = [v16 presentedViewController]) != 0))
    {
      v10 = v9;
      v11 = [objc_opt_self() isReduceMotionEnabled];
      v12 = swift_allocObject();
      *(v12 + 16) = v16;
      *(v12 + 24) = v1;
      aBlock[4] = sub_1006995D4;
      aBlock[5] = v12;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018801D0;
      v13 = _Block_copy(aBlock);
      v14 = v8;
      v15 = v1;

      [v10 dismissViewControllerAnimated:v11 ^ 1 completion:v13];
      _Block_release(v13);
    }

    else
    {
      [a1 presentViewController:v1 animated:objc_msgSend(objc_opt_self() completion:{"isReduceMotionEnabled") ^ 1, 0}];
    }
  }
}

void sub_100699288(void *a1)
{
  v2 = objc_opt_self();
  v4 = a1;
  v3 = [v2 isReduceMotionEnabled];
  if (([v4 isBeingDismissed] & 1) == 0)
  {
    [v4 dismissViewControllerAnimated:v3 ^ 1 completion:0];
  }
}

void sub_100699328(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (([v4 isBeingDismissed] & 1) == 0)
  {
    if (a2)
    {
      v10[4] = a2;
      v10[5] = a3;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = *"";
      v10[2] = sub_100007638;
      v10[3] = a4;
      v9 = _Block_copy(v10);
    }

    else
    {
      v9 = 0;
    }

    [v4 dismissViewControllerAnimated:a1 & 1 completion:v9];
    _Block_release(v9);
  }
}

id sub_1006995D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_opt_self() isReduceMotionEnabled] ^ 1;

  return [v1 presentViewController:v2 animated:v3 completion:0];
}

uint64_t sub_100699634()
{
  v0 = objc_opt_self();
  if (([v0 isVoiceOverOrSwitchControlEnabled] & 1) != 0 || objc_msgSend(v0, "isVoiceControlEnabled"))
  {
    sub_1005B981C(&unk_1019F4D60);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_101465920;
    v2 = (v1 + 32);
    v3 = objc_opt_self();
  }

  else
  {
    sub_1005B981C(&unk_1019F4D60);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_10146CE00;
    v4 = objc_opt_self();
    v5 = [v4 mediumDetent];
    v3 = v4;
    *(v1 + 32) = v5;
    v2 = (v1 + 40);
  }

  *v2 = [v3 largeDetent];
  return v1;
}

uint64_t TSContentLanguage.Models.CanvasObject.aspectRatioLockedDefault.getter()
{
  v1 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  __chkstk_darwin(v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10069980C(v0, v3);
  v4 = 6u >> swift_getEnumCaseMultiPayload();
  sub_100699870(v3);
  return v4 & 1;
}

uint64_t sub_10069980C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100699870(uint64_t a1)
{
  v2 = type metadata accessor for TSContentLanguage.Models.CanvasObject();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1006998CC(uint64_t a1)
{
  v35 = type metadata accessor for UUID();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v27 = v1;
    v39 = _swiftEmptyArrayStorage;
    sub_100034080(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = UUID.uuidString.getter();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = v38[2];
      v17 = v38[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_100034080((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      v16[2] = v18 + 1;
      v19 = &v16[2 * v18];
      v19[4] = v37;
      v19[5] = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000341AC(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1000341AC(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void *sub_100699BD4()
{
  v1 = [*(v0 + 112) allObjects];
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:
    v5 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

LABEL_23:
  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v7 = *(v2 + 8 * v6 + 32);
        swift_unknownObjectRetain();
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        if (v7)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
      ++v6;
      if (v4 == v3)
      {
        goto LABEL_25;
      }
    }

    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_100B37404(0, v5[2] + 1, 1, v5);
    }

    v12 = v5[2];
    v11 = v5[3];
    if (v12 >= v11 >> 1)
    {
      v5 = sub_100B37404((v11 > 1), v12 + 1, 1, v5);
    }

    v5[2] = v12 + 1;
    v13 = &v5[2 * v12];
    v13[4] = v7;
    v13[5] = v9;
  }

  while (v4 != v3);
LABEL_25:

  return v5;
}

uint64_t sub_100699D9C()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_100699DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 48);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_beginAccess();
  v7 = sub_10069A09C(a2, a1, a3);
  swift_endAccess();
  if (*(v7 + 16))
  {
    if (qword_1019F2270 == -1)
    {
LABEL_4:
      v14 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C4D0;
      v16 = sub_1006998CC(v7);
      *(inited + 56) = sub_1005B981C(&unk_1019F4D80);
      *(inited + 64) = sub_10001A2F8(&unk_101A10AA0, &unk_1019F4D80);
      *(inited + 32) = v16;
      v17 = UUID.uuidString.getter();
      v19 = v18;
      *(inited + 96) = &type metadata for String;
      v20 = sub_1000053B0();
      *(inited + 104) = v20;
      *(inited + 72) = v17;
      *(inited + 80) = v19;
      v21 = UUID.uuidString.getter();
      *(inited + 136) = &type metadata for String;
      *(inited + 144) = v20;
      *(inited + 112) = v21;
      *(inited + 120) = v22;
      v23 = static os_log_type_t.default.getter();
      sub_100005404(v14, &_mh_execute_header, v23, "removed from asset upload tracker: assets: %{public}@, item: %{public}@, board: %{public}@", 90, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      return v7;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v7;
}

void *sub_10069A09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  if (!*(a2 + 16))
  {
    return _swiftEmptySetSingleton;
  }

  v43 = a1;
  v20 = *v3;
  if (!*(*v3 + 16))
  {
    return _swiftEmptySetSingleton;
  }

  v42 = v3;
  v21 = sub_1000486F0(a3);
  if ((v22 & 1) == 0)
  {
    return _swiftEmptySetSingleton;
  }

  v23 = *(*(v20 + 56) + 8 * v21);
  if (!*(v23 + 16))
  {
    return _swiftEmptySetSingleton;
  }

  v24 = sub_10003E994(v43);
  if ((v25 & 1) == 0)
  {
LABEL_11:

    return _swiftEmptySetSingleton;
  }

  v26 = *(*(v23 + 56) + 8 * v24);
  swift_bridgeObjectRetain_n();

  v27 = sub_10119E374(a2, v26);
  v28 = v27[2];
  if (!v28)
  {

    goto LABEL_11;
  }

  if (v28 <= v26[2] >> 3)
  {
    v45[0] = v26;
    v29 = v27;
    sub_1012D4DC4(v27);
    v30 = v45[0];
  }

  else
  {
    v29 = v27;
    v30 = sub_1012D5CC4(v27, v26);
  }

  if (v30[2])
  {
    sub_10000C494(a3, v13, type metadata accessor for CRLBoardIdentifier);
    v33 = sub_101125728(v45, v13);
    if (*v32)
    {
      v34 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = *v34;
      *v34 = 0x8000000000000000;
      sub_100A9D660(v30, v43, isUniquelyReferenced_nonNull_native);
      *v34 = v44;
    }

    else
    {
    }

    (v33)(v45, 0);
    sub_100025B48(v13, type metadata accessor for CRLBoardIdentifier);
    return v29;
  }

  else
  {

    sub_10000C494(a3, v19, type metadata accessor for CRLBoardIdentifier);
    v36 = sub_101125728(v45, v19);
    if (*v37)
    {
      (*(v8 + 16))(v10, v43, v7);
      sub_100BC31EC(0, v10);
    }

    (v36)(v45, 0);
    sub_100025B48(v19, type metadata accessor for CRLBoardIdentifier);
    v38 = *v42;
    if (*(*v42 + 16) && (v39 = sub_1000486F0(a3), (v40 & 1) != 0) && *(*(*(v38 + 56) + 8 * v39) + 16))
    {
      return v29;
    }

    else
    {
      sub_10000C494(a3, v16, type metadata accessor for CRLBoardIdentifier);
      sub_100BC33AC(0, v16);
      return v29;
    }
  }
}

uint64_t sub_10069A48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v26 = a3;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v3 + 48);
  (*(v13 + 16))(v15, v25, v12);
  sub_10000C494(v26, v11, type metadata accessor for CRLBoardIdentifier);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v9 + 80) + v16) & ~*(v9 + 80);
  v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  (*(v13 + 32))(v19 + v16, v15, v12);
  sub_100025328(v11, v19 + v17, type metadata accessor for CRLBoardIdentifier);
  *(v19 + v18) = v4;
  aBlock[4] = sub_10069DC1C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = &unk_1018804A0;
  v20 = _Block_copy(aBlock);

  v21 = v27;
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100006400(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  v22 = v29;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v21, v32);
}

uint64_t sub_10069A920(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 16))
  {
    v5 = result;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v15 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    v7 = sub_1006998CC(v5);
    *(inited + 56) = sub_1005B981C(&unk_1019F4D80);
    *(inited + 64) = sub_10001A2F8(&unk_101A10AA0, &unk_1019F4D80);
    *(inited + 32) = v7;
    v8 = UUID.uuidString.getter();
    v10 = v9;
    *(inited + 96) = &type metadata for String;
    v11 = sub_1000053B0();
    *(inited + 104) = v11;
    *(inited + 72) = v8;
    *(inited + 80) = v10;
    v12 = UUID.uuidString.getter();
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v11;
    *(inited + 112) = v12;
    *(inited + 120) = v13;
    v14 = static os_log_type_t.default.getter();
    sub_100005404(v15, &_mh_execute_header, v14, "adding to asset upload tracker: assets: %{public}@, item: %{public}@, board: %{public}@", 87, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    swift_beginAccess();
    sub_10069AB14(a2, v5, a3);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10069AB14(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v4 = v3;
    v7 = result;
    v8 = *v3;
    if (*(v8 + 16) && (v9 = sub_1000486F0(a3), (v10 & 1) != 0))
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (!v11[2])
      {
        goto LABEL_9;
      }
    }

    else
    {
      v11 = _swiftEmptyDictionarySingleton;
      if (!_swiftEmptyDictionarySingleton[2])
      {
        goto LABEL_9;
      }
    }

    v12 = sub_10003E994(v7);
    if (v13)
    {
      v14 = *(v11[7] + 8 * v12);

LABEL_10:

      v15 = sub_1010ACAA4(v14, a2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_100A9D660(v15, v7, isUniquelyReferenced_nonNull_native);

      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v4;
      sub_100A9D64C(v11, a3, v17);

      *v4 = v18;
      return result;
    }

LABEL_9:
    v14 = _swiftEmptySetSingleton;
    goto LABEL_10;
  }

  return result;
}

void sub_10069AC64(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v47 = objc_opt_self();
    v2 = [v47 _atomicIncrementAssertCount];
    v49 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v49);
    StaticString.description.getter();
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_1005CF000();
    *(inited + 96) = v11;
    v12 = sub_100006400(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 93;
    v14 = v49;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "CRLAssetUploadTracker.willApplySaveResults called multiple times before a call to didApplySaveResults", 101, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    [v47 handleFailureInFunction:v21 file:v22 lineNumber:93 isFatal:0 format:v23 args:v20];
  }

  swift_beginAccess();
  if (*(*(a1 + 32) + 16))
  {
    v24 = objc_opt_self();
    v25 = [v24 _atomicIncrementAssertCount];
    v48 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v48);
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    v28 = [v27 lastPathComponent];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v32 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_10146CA70;
    *(v33 + 56) = &type metadata for Int32;
    *(v33 + 64) = &protocol witness table for Int32;
    *(v33 + 32) = v25;
    v34 = sub_1005CF000();
    *(v33 + 96) = v34;
    v35 = sub_100006400(&qword_1019F52E0, sub_1005CF000);
    *(v33 + 104) = v35;
    *(v33 + 72) = v26;
    *(v33 + 136) = &type metadata for String;
    v36 = sub_1000053B0();
    *(v33 + 112) = v29;
    *(v33 + 120) = v31;
    *(v33 + 176) = &type metadata for UInt;
    *(v33 + 144) = v36;
    *(v33 + 152) = 94;
    v37 = v48;
    *(v33 + 216) = v34;
    *(v33 + 224) = v35;
    *(v33 + 184) = &protocol witness table for UInt;
    *(v33 + 192) = v37;
    v38 = v26;
    v39 = v37;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v33);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v41, "CRLAssetUploadTracker.willApplySaveResults called while assetsThatJustFinishedUploading is not empty", 100, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v42 = swift_allocObject();
    v42[2] = 8;
    v42[3] = 0;
    v42[4] = 0;
    v42[5] = 0;
    v43 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v45 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v46 = String._bridgeToObjectiveC()();

    [v24 handleFailureInFunction:v44 file:v45 lineNumber:94 isFatal:0 format:v46 args:v43];
  }

  *(a1 + 40) = 1;
}

uint64_t sub_10069B3F0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v29 = objc_opt_self();
    v3 = [v29 _atomicIncrementAssertCount];
    v30 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v30);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_100006400(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 100;
    v15 = v30;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "CRLAssetUploadTracker.serverSyncedBoardItemLocalRecordDidMerge called without ongoing apply save results", 104, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v22 file:v23 lineNumber:100 isFatal:0 format:v24 args:v21];

    [v29 logFullBacktrace];
  }

  v25 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
  v26 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
  v27 = sub_100699DD4(*(a2 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedAssetUUIDs), a2 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, a2 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);
  swift_beginAccess();
  sub_10069AB14(a2 + v25, v27, a2 + v26);
  swift_endAccess();
}

uint64_t sub_10069B864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v13 = *(v20 - 8);
  __chkstk_darwin(v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v7 + 48);
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = a1;
  aBlock[4] = a3;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a4;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_100006400(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_10069BB30(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v31 = objc_opt_self();
    v3 = [v31 _atomicIncrementAssertCount];
    v32 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v32);
    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_1005CF000();
    *(inited + 96) = v12;
    v13 = sub_100006400(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 110;
    v15 = v32;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "CRLAssetUploadTracker.serverSyncedBoardItemRemoteRecordDidMerge called without ongoing apply save results", 105, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    [v31 handleFailureInFunction:v22 file:v23 lineNumber:110 isFatal:0 format:v24 args:v21];

    [v31 logFullBacktrace];
  }

  swift_beginAccess();

  v26 = sub_100EA61FC(v25);
  v27 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
  v28 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
  v29 = sub_100699DD4(v26, a2 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, a2 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);

  swift_beginAccess();
  sub_10069AB14(a2 + v27, v29, a2 + v28);
  swift_endAccess();
}

uint64_t sub_10069BFC4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v9 = *(v15 - 8);
  __chkstk_darwin(v15);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = *(v2 + 48);
  aBlock[4] = a1;
  v18 = v2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100007638;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v16 = _swiftEmptyArrayStorage;
  sub_100006400(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1005B981C(&unk_1019FF400);
  sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v15);
}

uint64_t sub_10069C268(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  result = swift_beginAccess();
  v6 = *(a1 + 32);
  if (*(v6 + 16))
  {
    *(a1 + 32) = _swiftEmptyDictionarySingleton;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = a1;
    v8[5] = v6;

    sub_10064191C(0, 0, v4, &unk_1014711C8, v8);
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_10069C3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  sub_1005B981C(&qword_1019FB750);
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_10069C450, 0, 0);
}

uint64_t sub_10069C450()
{
  v1 = *(*(v0 + 48) + 16);
  *(v0 + 80) = v1;
  return _swift_task_switch(sub_10069C474, v1, 0);
}

uint64_t sub_10069C474()
{
  *(v0 + 88) = sub_100699BD4();

  return _swift_task_switch(sub_10069C4E0, 0, 0);
}

uint64_t sub_10069C4E0()
{
  v1 = v0[11];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v22 = *(v5 + 56);
    v20 = v4;
    v21 = (v5 + 48);
    v19 = (v5 + 8);
    do
    {
      v8 = v0[8];
      v7 = v0[9];
      v9 = v0[7];
      v23 = *v3;
      v22(v7, 1, 1, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = v9;
      *(v10 + 40) = v23;
      sub_10000BE14(v7, v8, &qword_1019FB750);
      LODWORD(v8) = (*v21)(v8, 1, v4);
      swift_unknownObjectRetain_n();

      v11 = v0[8];
      if (v8 == 1)
      {
        sub_10000CAAC(v0[8], &qword_1019FB750);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v19)(v11, v4);
      }

      v12 = *(v10 + 16);
      swift_unknownObjectRetain();

      if (v12)
      {
        swift_getObjectType();
        v13 = dispatch thunk of Actor.unownedExecutor.getter();
        v15 = v14;
        swift_unknownObjectRelease();
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = swift_allocObject();
      *(v16 + 16) = &unk_1014711D8;
      *(v16 + 24) = v10;
      if (v15 | v13)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v13;
        v0[5] = v15;
      }

      v6 = v0[9];
      swift_task_create();
      swift_unknownObjectRelease();
      sub_10000CAAC(v6, &qword_1019FB750);

      ++v3;
      --v2;
      v4 = v20;
    }

    while (v2);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_10069C7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  sub_1005B981C(&qword_1019FB750);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v6 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  sub_1005B981C(&qword_101A08DF0);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for CRLBoardIdentifierStorage(0);
  v5[21] = swift_task_alloc();
  type metadata accessor for CRLBoardCRDTData(0);
  v5[22] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[23] = v7;
  v8 = *(v7 - 8);
  v5[24] = v8;
  v5[25] = *(v8 + 64);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  sub_1005B981C(&qword_1019F8270);
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  sub_1005B981C(&qword_1019F8278);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();

  return _swift_task_switch(sub_10069CAF8, 0, 0);
}

uint64_t sub_10069CAF8()
{
  v106 = v0 + 2;
  v103 = v0[32];
  v1 = v0[24];
  v2 = v0[12];
  v111 = v0[13];
  v112 = v0[20];
  v101 = v2 + 64;
  v3 = -1 << *(v2 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v2 + 64);
  v100 = (63 - v3) >> 6;
  v120 = (v1 + 16);
  v128 = (v1 + 32);
  v110 = v0[24];
  v6 = (v1 + 8);
  v107 = v0[25] + 7;
  v108 = (v0[17] + 48);
  v102 = v0[12];

  v8 = 0;
  v119 = v0;
  v118 = v6;
LABEL_6:
  if (v5)
  {
    v10 = v8;
LABEL_14:
    v12 = v0[36];
    v13 = v0[37];
    v105 = (v5 - 1) & v5;
    v14 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_10000C494(*(v102 + 48) + *(v103 + 72) * v14, v12, type metadata accessor for CRLBoardIdentifier);
    v15 = *(*(v102 + 56) + 8 * v14);
    v16 = sub_1005B981C(&qword_1019F8280);
    v17 = *(v16 + 48);
    sub_100025328(v12, v13, type metadata accessor for CRLBoardIdentifier);
    *(v13 + v17) = v15;
    (*(*(v16 - 8) + 56))(v13, 0, 1, v16);

    v104 = v10;
  }

  else
  {
    if (v100 <= v8 + 1)
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = v100;
    }

    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v10 >= v100)
      {
        break;
      }

      v5 = *(v101 + 8 * v10);
      ++v8;
      if (v5)
      {
        goto LABEL_14;
      }
    }

    v104 = v11 - 1;
    v97 = v0[37];
    v98 = sub_1005B981C(&qword_1019F8280);
    (*(*(v98 - 8) + 56))(v97, 1, 1, v98);
    v105 = 0;
  }

  v18 = v0[38];
  sub_10003DFF8(v0[37], v18, &qword_1019F8278);
  v19 = sub_1005B981C(&qword_1019F8280);
  v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  v21 = v0[38];
  if (v20 == 1)
  {
    goto LABEL_60;
  }

  v22 = *(v21 + *(v19 + 48));
  sub_100025328(v21, v0[35], type metadata accessor for CRLBoardIdentifier);
  v23 = 0;
  v24 = v22 + 64;
  v109 = v22;
  v25 = -1 << *(v22 + 32);
  if (-v25 < 64)
  {
    v26 = ~(-1 << -v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v22 + 64);
  v28 = (63 - v25) >> 6;
  v113 = v28;
  v114 = v22 + 64;
  while (v27)
  {
    v30 = v23;
LABEL_32:
    v34 = v0[29];
    v33 = v0[30];
    v35 = v0[23];
    v126 = (v27 - 1) & v27;
    v36 = __clz(__rbit64(v27)) | (v30 << 6);
    (*(v110 + 16))(v34, *(v109 + 48) + *(v110 + 72) * v36, v35);
    v37 = *(*(v109 + 56) + 8 * v36);
    v38 = sub_1005B981C(&qword_1019F8288);
    v39 = *(v38 + 48);
    (*(v110 + 32))(v33, v34, v35);
    *(v33 + v39) = v37;
    (*(*(v38 - 8) + 56))(v33, 0, 1, v38);

LABEL_33:
    v40 = v0[31];
    sub_10003DFF8(v0[30], v40, &qword_1019F8270);
    v41 = sub_1005B981C(&qword_1019F8288);
    if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
    {
      v9 = v0[35];

      result = sub_100025B48(v9, type metadata accessor for CRLBoardIdentifier);
      v8 = v104;
      v5 = v105;
      goto LABEL_6;
    }

    v42 = v0[31];
    v43 = v0[27];
    v44 = v0[28];
    v124 = v0[26];
    v46 = v0[22];
    v45 = v0[23];

    v127 = *v128;
    (*v128)(v44, v42, v45);
    v116 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
    v117 = *(v111 + 16);
    v47 = *(v117 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
    v48 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v49 = *&v47[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v50 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10000C494(v49 + v50, v46, type metadata accessor for CRLBoardCRDTData);
    v51 = v47;
    sub_1005B981C(&unk_1019F5250);
    CRRegister.wrappedValue.getter();
    sub_100025B48(v46, type metadata accessor for CRLBoardCRDTData);
    v52 = (*&v47[v48] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v53 = *v52;
    v54 = v52[1];
    v55 = *v120;
    (*v120)(v124, v43, v45);
    v57 = v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v56;
    v115 = v55;
    v122 = v51;
    if (v57 || (v58 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v58 & 1) != 0))
    {

      v53 = 0;
      v54 = 0xE000000000000000;
    }

    v0 = v119;
    v59 = v119[34];
    v60 = v119[33];
    v61 = v119[26];
    v62 = v119[23];
    v63 = v119[21];
    v125 = *v118;
    (*v118)(v119[27], v62);
    v127(v63, v61, v62);
    v64 = (v63 + *(v112 + 20));
    *v64 = v53;
    v64[1] = v54;
    sub_100025328(v63, v60, type metadata accessor for CRLBoardIdentifierStorage);
    sub_100025328(v60, v59, type metadata accessor for CRLBoardIdentifier);

    if ((static UUID.== infix(_:_:)() & 1) == 0)
    {
      v29 = v119[34];
      v125(v119[28], v119[23]);
      sub_100025B48(v29, type metadata accessor for CRLBoardIdentifier);
      goto LABEL_21;
    }

    v65 = v119[34];
    v66 = *(v112 + 20);
    v67 = (v119[35] + v66);
    if (*(v65 + v66) == *v67 && *(v65 + v66 + 8) == v67[1])
    {
      sub_100025B48(v119[34], type metadata accessor for CRLBoardIdentifier);
    }

    else
    {
      v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100025B48(v65, type metadata accessor for CRLBoardIdentifier);
      if ((v68 & 1) == 0)
      {
        v125(v119[28], v119[23]);
        goto LABEL_21;
      }
    }

    v69 = v119[19];
    v70 = v119[16];
    v71 = *(v117 + v116);
    v72 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
    swift_beginAccess();
    sub_10000BE14(v71 + v72, v69, &qword_101A08DF0);
    if ((*v108)(v69, 1, v70))
    {
      v73 = v119[19];
      v125(v119[28], v119[23]);
      sub_10000CAAC(v73, &qword_101A08DF0);
    }

    else
    {
      v76 = v119[29];
      v77 = v119[23];
      v78 = v119[19];
      v79 = v119[18];
      v80 = v119[15];
      v121 = v119[28];
      v123 = v119[14];
      sub_10000C494(v78, v79, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      sub_10000CAAC(v78, &qword_101A08DF0);
      v81 = *v79;

      sub_100025B48(v79, type metadata accessor for CRLBoard.RealTimeSessionInfo);
      v82 = type metadata accessor for TaskPriority();
      v83 = *(v82 - 8);
      (*(v83 + 56))(v80, 1, 1, v82);
      v84 = v76;
      v115(v76, v121, v77);
      v85 = (*(v110 + 80) + 32) & ~*(v110 + 80);
      v86 = swift_allocObject();
      *(v86 + 16) = 0;
      *(v86 + 24) = 0;
      v87 = v84;
      v0 = v119;
      v127(v86 + v85, v87, v77);
      *(v86 + ((v107 + v85) & 0xFFFFFFFFFFFFFFF8)) = v81;
      sub_10000BE14(v80, v123, &qword_1019FB750);
      LODWORD(v85) = (*(v83 + 48))(v123, 1, v82);

      v88 = v119[14];
      if (v85 == 1)
      {
        sub_10000CAAC(v119[14], &qword_1019FB750);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v83 + 8))(v88, v82);
      }

      v89 = *(v86 + 16);
      swift_unknownObjectRetain();

      if (v89)
      {
        swift_getObjectType();
        v90 = dispatch thunk of Actor.unownedExecutor.getter();
        v92 = v91;
        swift_unknownObjectRelease();
      }

      else
      {
        v90 = 0;
        v92 = 0;
      }

      v93 = swift_allocObject();
      *(v93 + 16) = &unk_101471208;
      *(v93 + 24) = v86;
      if (v92 | v90)
      {
        *v106 = 0;
        v106[1] = 0;
        v119[4] = v90;
        v119[5] = v92;
      }

      v94 = v119[28];
      v95 = v119[23];
      v96 = v119[15];
      swift_task_create();

      sub_10000CAAC(v96, &qword_1019FB750);
      v125(v94, v95);
    }

LABEL_21:
    v28 = v113;
    v24 = v114;
    v27 = v126;
  }

  if (v28 <= v23 + 1)
  {
    v31 = v23 + 1;
  }

  else
  {
    v31 = v28;
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v30 >= v28)
    {
      v74 = v0[30];
      v75 = sub_1005B981C(&qword_1019F8288);
      (*(*(v75 - 8) + 56))(v74, 1, 1, v75);
      v126 = 0;
      v23 = v32;
      goto LABEL_33;
    }

    v27 = *(v24 + 8 * v30);
    ++v23;
    if (v27)
    {
      v23 = v30;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_60:

  v99 = v0[1];

  return v99();
}

uint64_t sub_10069D84C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10069D8A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10069C3A8(a1, v4, v5, v7, v6);
}

uint64_t sub_10069D964(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10069C7D4(a1, v4, v5, v6, v7);
}

uint64_t sub_10069DA2C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D3D4;

  return sub_1010E6F60(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10069DB4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_10002C9A4(a1, v4);
}

uint64_t sub_10069DC1C()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10069A920(v5, v0 + v2, v6);
}

uint64_t CRLAnalyticsDataStore.supportsEndToEndEncryption.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
  swift_beginAccess();
  return *(v0 + v1);
}

char *CRLAnalyticsDataStore.__allocating_init(queue:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_10000E7B0(a1);

  return v4;
}

char *CRLAnalyticsDataStore.init(queue:)(void *a1)
{
  v2 = sub_10000E7B0(a1);

  return v2;
}

void sub_10069DDE4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10069E58C();
  }
}

void sub_10069DE40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10000FAC4();
  }
}

id CRLAnalyticsDataStore.__deallocating_deinit()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:NSUbiquitousKeyValueStoreDidChangeExternallyNotification object:*&v0[OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs]];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:CKAccountChangedNotification object:0];

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CRLAnalyticsDataStore();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10069E00C(unsigned __int8 a1)
{
  v1 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  Date.init()();
  v13 = (v3 + 16);
  v19 = &type metadata for String;
  v18[0] = v10;
  v18[1] = v12;
  if (v1 > 1)
  {
    sub_10069E290(v18, 2u);
    sub_10000CAAC(v18, &unk_1019F4D00);
    v19 = v2;
    v16 = sub_10002C58C(v18);
    (*v13)(v16, v5, v2);
    v15 = 3;
  }

  else
  {
    sub_10069E290(v18, 0);
    sub_10000CAAC(v18, &unk_1019F4D00);
    v19 = v2;
    v14 = sub_10002C58C(v18);
    (*v13)(v14, v5, v2);
    v15 = 1;
  }

  sub_10069E290(v18, v15);
  (*(v3 + 8))(v5, v2);
  return sub_10000CAAC(v18, &unk_1019F4D00);
}

uint64_t sub_10069E290(uint64_t a1, unsigned __int8 a2)
{
  sub_10000BE14(a1, &v20, &unk_1019F4D00);
  if (v21)
  {
    v4 = 0xD00000000000001BLL;
    sub_10000BF3C(&v20, &v22);
    if (a2 > 1u)
    {
      if (qword_1019F2110 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAnalytics;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      v13 = inited;
      *(inited + 16) = xmmword_10146C6B0;
      if (a2 == 3)
      {
        v4 = 0xD00000000000002BLL;
        v14 = "CRLAnalyticsActiveUseUserID";
      }

      else
      {
        v14 = " KVS after quota violation";
      }

      v15 = v14 | 0x8000000000000000;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(v13 + 32) = v4;
      *(v13 + 40) = v15;
      v16 = static os_log_type_t.default.getter();
      sub_100005404(v11, &_mh_execute_header, v16, "Setting value in iCloud KVS for key: %@", 39, 2, v13);
      swift_setDeallocating();
      sub_100005070(v13 + 32);
      v17 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs);
      if (!v17)
      {
        return sub_100005070(&v22);
      }

      sub_100020E58(&v22, v23);
      v18 = v17;
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      v7 = String._bridgeToObjectiveC()();

      [v18 setObject:v19 forKey:v7];
    }

    else
    {
      v5 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_userDefaults);
      sub_100020E58(&v22, v23);
      v6 = _bridgeAnythingToObjectiveC<A>(_:)();
      v7 = String._bridgeToObjectiveC()();

      [v5 setObject:v6 forKey:v7];
    }

    swift_unknownObjectRelease();

    return sub_100005070(&v22);
  }

  sub_10000CAAC(&v20, &unk_1019F4D00);
  if (qword_1019F2110 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlAnalytics;
  v9 = static os_log_type_t.error.getter();
  return sub_100005404(v8, &_mh_execute_header, v9, "Attempted to set nil value in data store", 40, 2, &_swiftEmptyArrayStorage);
}

void sub_10069E58C()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_11;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = sub_1000640CC(v9), (v3 & 1) == 0))
  {

    sub_100064234(v9);
LABEL_11:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_12;
  }

  sub_100064288(*(v1 + 56) + 32 * v2, &v10);
  sub_100064234(v9);

  if (!*(&v11 + 1))
  {
LABEL_12:
    sub_10000CAAC(&v10, &unk_1019F4D00);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.crlAnalytics;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    isa = Notification._bridgeToObjectiveC()().super.isa;
    *(inited + 56) = sub_100006370(0, &qword_1019F8308);
    *(inited + 64) = sub_10000FE24(&qword_1019F8310, &qword_1019F8308);
    *(inited + 32) = isa;
    v8 = static os_log_type_t.error.getter();
    sub_100005404(v5, &_mh_execute_header, v8, "Unable to get NSUbiquitousKeyValueStoreChangeReasonKey from notification: %@", 76, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    return;
  }

  if (v9[0] < 2uLL)
  {
    v4 = 1;
    goto LABEL_18;
  }

  if (v9[0] == 2)
  {
    sub_10069E8B4();
  }

  else if (v9[0] == 3)
  {
    v4 = 0;
LABEL_18:
    sub_10000FE74(v4);
  }
}

void sub_10069E8B4()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvsSetAttempts;
  if (*(v0 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvsSetAttempts) <= 2)
  {
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.crlAnalytics;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "Setting user ID values in iCloud KVS after quota violation", 58, 2, &_swiftEmptyArrayStorage);
    v8 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs;
    v9 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_kvs);
    if (v9)
    {
      v10 = v9;
      sub_100015188();
      if (v11)
      {
        v12 = String._bridgeToObjectiveC()();
      }

      else
      {
        v12 = 0;
      }

      v13 = String._bridgeToObjectiveC()();
      [v10 setString:v12 forKey:v13];

      v14 = *(v1 + v8);
      if (v14)
      {
        v15 = v14;
        sub_100015370(v4);
        v16 = type metadata accessor for Date();
        v17 = *(v16 - 8);
        isa = 0;
        if ((*(v17 + 48))(v4, 1, v16) != 1)
        {
          isa = Date._bridgeToObjectiveC()().super.isa;
          (*(v17 + 8))(v4, v16);
        }

        v19 = String._bridgeToObjectiveC()();
        [v15 setObject:isa forKey:v19];

        swift_unknownObjectRelease();
      }
    }

    v20 = *(v1 + v5);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      __break(1u);
      return;
    }

    *(v1 + v5) = v22;
  }

  v23 = [objc_opt_self() defaultCenter];
  if (qword_1019F1420 != -1)
  {
    swift_once();
  }

  [v23 postNotificationName:qword_101AD60E0 object:v1 userInfo:0];
}

void sub_10069EBB8()
{
  sub_100015188();
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserID + 8);
    if (v2 && (v3 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserID), , v4 = String._bridgeToObjectiveC()(), , v5 = String._bridgeToObjectiveC()(), v6 = [v4 isEqual:v5], v4, v5, (v6 & 1) == 0) && sub_10069EDFC())
    {
      v7 = [objc_opt_self() defaultCenter];
      if (qword_1019F1418 != -1)
      {
        swift_once();
      }

      v8 = qword_101AD60D8;
      sub_1005B981C(&qword_1019FB8A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for String;
      *(inited + 72) = v3;
      *(inited + 80) = v2;
      sub_100078EA4(inited);
      swift_setDeallocating();
      sub_10000CAAC(inited + 32, &unk_1019FB8B0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v7 postNotificationName:v8 object:v0 userInfo:isa];
    }

    else
    {
    }
  }
}

BOOL sub_10069EDFC()
{
  v1 = type metadata accessor for Calendar();
  v45 = *(v1 - 8);
  v46 = v1;
  __chkstk_darwin(v1);
  v48 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DateComponents();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A0A320);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v42 - v16;
  sub_100015370(v11);
  v18 = *(v13 + 48);
  if (v18(v11, 1, v12) == 1)
  {
    sub_10000CAAC(v11, &qword_101A0A320);
    return 0;
  }

  v42 = v4;
  v43 = v3;
  v19 = *(v13 + 32);
  v19(v17, v11, v12);
  v20 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_lastSeenUserIDRotationDate;
  swift_beginAccess();
  sub_10000BE14(v0 + v20, v9, &qword_101A0A320);
  if (v18(v9, 1, v12) == 1)
  {
    (*(v13 + 8))(v17, v12);
    sub_10000CAAC(v9, &qword_101A0A320);
    return 0;
  }

  v21 = v44;
  v19(v44, v9, v12);
  static Calendar.current.getter();
  sub_1005B981C(&qword_1019F5528);
  v22 = type metadata accessor for Calendar.Component();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10146BDE0;
  v27 = *(v23 + 104);
  v27(v26 + v25, enum case for Calendar.Component.year(_:), v22);
  v27(v26 + v25 + v24, enum case for Calendar.Component.month(_:), v22);
  sub_10001644C(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v29 = v47;
  v28 = v48;
  Calendar.dateComponents(_:from:to:)();

  (*(v45 + 8))(v28, v46);
  v30 = DateComponents.year.getter();
  if (v31 & 1) != 0 || (v32 = v30, v33 = DateComponents.month.getter(), (v34))
  {
    v35 = v42;
    if (qword_1019F2110 != -1)
    {
      swift_once();
    }

    v36 = static OS_os_log.crlAnalytics;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v36, &_mh_execute_header, v37, "Unable to generate date components for ID conflict check", 56, 2, &_swiftEmptyArrayStorage);
    (*(v35 + 8))(v29, v43);
    v38 = *(v13 + 8);
    v38(v21, v12);
    v38(v17, v12);
    return 0;
  }

  v40 = v33;
  (*(v42 + 8))(v29, v43);
  v41 = *(v13 + 8);
  v41(v21, v12);
  v41(v17, v12);
  return (v32 | v40) == 0;
}

id CRLDeviceManagementRestrictionsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_10069F4D0(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v109 = a8;
  v101 = a7;
  v98 = a6;
  v102 = a5;
  v97 = a4;
  v108 = a3;
  v107 = a2;
  v10 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v10 - 8);
  v110 = &v93 - v11;
  v114 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v115 = *(v114 - 8);
  v12 = __chkstk_darwin(v114);
  v105 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v111 = &v93 - v15;
  v104 = v16;
  __chkstk_darwin(v14);
  v18 = &v93 - v17;
  v19 = sub_1005B981C(&qword_1019F33E0);
  v99 = *(v19 - 8);
  v20 = __chkstk_darwin(v19 - 8);
  v103 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v21;
  __chkstk_darwin(v20);
  v23 = &v93 - v22;
  v24 = type metadata accessor for CRLFolderIdentifier(0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v117 = &v93 - v33;
  v106 = a1;
  sub_10000BE14(a1, v23, &qword_1019F33E0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_10000CAAC(v23, &qword_1019F33E0);
    *v18 = 1;
    swift_storeEnumTagMultiPayload();
    sub_100F87E04(v32);
    v34 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v35 = v18;
  }

  else
  {
    sub_100065B48(v23, v27, type metadata accessor for CRLFolderIdentifier);
    (*(v29 + 16))(v32, v27, v28);
    v34 = type metadata accessor for CRLFolderIdentifier;
    v35 = v27;
  }

  sub_10000B8C4(v35, v34);
  v112 = v29;
  v36 = *(v29 + 32);
  v37 = v117;
  v113 = v28;
  v36(v117, v32, v28);
  v38 = v116[2] + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v39 = *(v38 + 16);
  v124 = *v38;
  v40 = *(v38 + 32);
  v125 = v39;
  v126 = v40;
  v127 = v124;
  v128 = v39;
  v129 = v40;
  sub_10000BE14(&v127, &aBlock, &unk_101A23CC0);
  sub_10000BE14(&v127 + 8, &aBlock, &unk_101A23CC0);
  sub_10000BE14(&v128, &aBlock, &qword_1019F66A8);
  sub_10000BE14(&v128 + 8, &aBlock, &unk_101A23CD0);
  sub_10000BE14(&v129, &aBlock, &qword_1019FFF30);
  sub_10000BE14(&v129 + 8, &aBlock, &unk_101A23CE0);
  v41 = v110;
  sub_100825120(v37, v110);
  sub_10000CAAC(&v127, &unk_101A23CC0);
  sub_10000CAAC(&v127 + 8, &unk_101A23CC0);
  sub_10000CAAC(&v128, &qword_1019F66A8);
  sub_10000CAAC(&v128 + 8, &unk_101A23CD0);
  sub_10000CAAC(&v129, &qword_1019FFF30);
  sub_10000CAAC(&v129 + 8, &unk_101A23CE0);
  if ((*(v115 + 48))(v41, 1, v114) == 1)
  {
    sub_10000CAAC(v41, &unk_101A15B20);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v42 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_1006A3C20();
    v44 = v117;
    v45 = v113;
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    v48 = v47;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v46;
    *(inited + 40) = v48;
    v49 = static os_log_type_t.error.getter();
    sub_100005404(v42, &_mh_execute_header, v49, "Trying to create new folder, but could not find its parent node with item identifier %@.", 88, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
  }

  else
  {
    v94 = a9;
    v93 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v50 = v111;
    sub_100065B48(v41, v111, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v51 = v97;
    if (!v102)
    {
      v51 = 0x646C6F462077654ELL;
    }

    v96 = v51;
    v52 = 0xEA00000000007265;
    if (v102)
    {
      v52 = v102;
    }

    v95 = v52;
    v53 = 0x80000001015591F0;
    v54 = 0xD00000000000001DLL;
    if (v101)
    {
      v54 = v98;
    }

    v98 = v54;
    if (v101)
    {
      v53 = v101;
    }

    v97 = v53;
    v55 = *(v38 + 24);

    v114 = sub_100831CE8(0x646C6F462077654ELL, 0xEA00000000007265, v50, v55);
    v110 = v56;

    v57 = v105;
    sub_1006A3BB8(v50, v105, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v58 = v103;
    sub_10000BE14(v106, v103, &qword_1019F33E0);
    v59 = (*(v115 + 80) + 24) & ~*(v115 + 80);
    v60 = (v104 + *(v99 + 80) + v59) & ~*(v99 + 80);
    v61 = (v100 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
    v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    *(v63 + 16) = v116;
    sub_100065B48(v57, v63 + v59, v93);
    sub_1006A3C78(v58, v63 + v60);
    *(v63 + v61) = v107;
    v64 = (v63 + v62);
    v65 = v109;
    v66 = v94;
    *v64 = v109;
    v64[1] = v66;
    v67 = v108;
    *(v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8)) = v108;

    v116 = v67;
    sub_10002E7A8(v65);
    v68 = String._bridgeToObjectiveC()();

    v69 = String._bridgeToObjectiveC()();

    v70 = [objc_opt_self() alertControllerWithTitle:v68 message:v69 preferredStyle:1];

    v71 = objc_opt_self();
    sub_1006A2D28();
    v72 = swift_allocObject();
    *(v72 + 16) = 0;
    *(v72 + 24) = sub_100631078;
    *(v72 + 32) = v63;
    *(v72 + 40) = v70;
    v73 = v70;

    v74 = String._bridgeToObjectiveC()();

    v122 = sub_10063185C;
    v123 = v72;
    aBlock = _NSConcreteStackBlock;
    v119 = *"";
    v120 = sub_10068B39C;
    v121 = &unk_101880780;
    v75 = _Block_copy(&aBlock);

    v76 = [v71 actionWithTitle:v74 style:0 handler:v75];
    _Block_release(v75);

    [v73 addAction:v76];
    [v73 setPreferredAction:v76];

    v77 = [objc_opt_self() mainBundle];
    v78 = String._bridgeToObjectiveC()();
    v79 = String._bridgeToObjectiveC()();
    v80 = [v77 localizedStringForKey:v78 value:v79 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v81 = swift_allocObject();
    *(v81 + 16) = 1;
    *(v81 + 24) = sub_100631078;
    *(v81 + 32) = v63;
    *(v81 + 40) = v73;
    v82 = v73;

    v83 = String._bridgeToObjectiveC()();

    v122 = sub_10063185C;
    v123 = v81;
    aBlock = _NSConcreteStackBlock;
    v119 = *"";
    v120 = sub_10068B39C;
    v121 = &unk_1018807D0;
    v84 = _Block_copy(&aBlock);

    v85 = [v71 actionWithTitle:v83 style:1 handler:v84];
    _Block_release(v84);

    [v82 addAction:v85];
    v86 = swift_allocObject();
    v87 = v110;
    *(v86 + 16) = v114;
    *(v86 + 24) = v87;
    v122 = sub_1006A3F38;
    v123 = v86;
    aBlock = _NSConcreteStackBlock;
    v119 = *"";
    v120 = sub_10068B39C;
    v121 = &unk_101880820;
    v88 = _Block_copy(&aBlock);

    [v82 addTextFieldWithConfigurationHandler:v88];
    _Block_release(v88);
    v89 = swift_allocObject();
    *(v89 + 16) = v82;
    v122 = sub_100631840;
    v123 = v89;
    aBlock = _NSConcreteStackBlock;
    v119 = *"";
    v120 = sub_100007638;
    v121 = &unk_101880870;
    v90 = _Block_copy(&aBlock);
    v91 = v82;

    [v116 presentViewController:v91 animated:1 completion:v90];
    _Block_release(v90);
    sub_1011047E4(v91);

    sub_10000B8C4(v111, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v45 = v113;
    v44 = v117;
  }

  return (*(v112 + 8))(v44, v45);
}

void sub_1006A048C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = a4;
  v15 = sub_1005B981C(&qword_1019F83E8);
  __chkstk_darwin(v15 - 8);
  v72 = v62 - v16;
  v17 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  v70 = *(v17 - 8);
  v71 = v17;
  __chkstk_darwin(v17);
  v19 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1005B981C(&qword_1019F33E0);
  v68 = *(v20 - 8);
  v21 = *(v68 + 64);
  __chkstk_darwin(v20 - 8);
  v73 = v62 - v22;
  v23 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v23 - 8);
  v25 = v62 - v24;
  if (a2)
  {
    v66 = a6;
    v67 = v25;
    v62[1] = v19;
    v62[2] = a3;
    v64 = a5;
    v65 = a7;
    v69 = a8;
    v63 = *(a3 + 16);
    v26 = *(v63 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);

    v74 = sub_1008320CC(a1, a2, v74, v26);
    v72 = v50;

    v51 = type metadata accessor for TaskPriority();
    (*(*(v51 - 8) + 56))(v67, 1, 1, v51);
    sub_10000BE14(v64, v73, &qword_1019F33E0);
    type metadata accessor for MainActor();
    v52 = v65;
    sub_10002E7A8(v65);
    v53 = v63;
    swift_unknownObjectRetain();
    v54 = v66;

    v55 = static MainActor.shared.getter();
    v56 = (*(v68 + 80) + 56) & ~*(v68 + 80);
    v57 = (v21 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v58[2] = v55;
    v58[3] = &protocol witness table for MainActor;
    v59 = v69;
    v58[4] = v52;
    v58[5] = v59;
    v58[6] = v53;
    sub_1006A3C78(v73, v58 + v56);
    *(v58 + v57) = v54;
    v60 = (v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8));
    v61 = v72;
    *v60 = v74;
    v60[1] = v61;
    sub_100796D84(0, 0, v67, &unk_101471340, v58);
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 _atomicIncrementAssertCount];
    v75 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v75);
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v37 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v37;
    v38 = sub_1005CF04C();
    *(inited + 104) = v38;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 41;
    v40 = v75;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 192) = v40;
    v41 = v29;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v47 file:v48 lineNumber:41 isFatal:0 format:v49 args:v46];
  }
}

uint64_t sub_1006A0E30(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v84 = a8;
  v81 = a7;
  v75 = a6;
  v74 = a5;
  v76 = a4;
  v72 = a3;
  v83 = a2;
  v88 = a1;
  v79 = type metadata accessor for CRLFolderIdentifier(0);
  v77 = *(v79 - 8);
  v9 = __chkstk_darwin(v79);
  v73 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v10;
  __chkstk_darwin(v9);
  v80 = &v70 - v11;
  v12 = sub_1005B981C(&unk_101A15B20);
  __chkstk_darwin(v12 - 8);
  v14 = &v70 - v13;
  v86 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v85 = *(v86 - 8);
  v15 = *(v85 + 64);
  v16 = __chkstk_darwin(v86);
  v71 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v87 = &v70 - v17;
  v82 = v8;
  v18 = (*(v8 + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v19 = v18[1];
  v95 = *v18;
  v20 = v18[2];
  v96 = v19;
  v97 = v20;
  v98 = v95;
  v99 = v19;
  v100 = v20;
  sub_10000BE14(&v98, &aBlock, &unk_101A23CC0);
  sub_10000BE14(&v98 + 8, &aBlock, &unk_101A23CC0);
  sub_10000BE14(&v99, &aBlock, &qword_1019F66A8);
  sub_10000BE14(&v99 + 8, &aBlock, &unk_101A23CD0);
  sub_10000BE14(&v100, &aBlock, &qword_1019FFF30);
  sub_10000BE14(&v100 + 8, &aBlock, &unk_101A23CE0);
  sub_100825120(v88, v14);
  sub_10000CAAC(&v98, &unk_101A23CC0);
  v21 = v85;
  sub_10000CAAC(&v98 + 8, &unk_101A23CC0);
  sub_10000CAAC(&v99, &qword_1019F66A8);
  sub_10000CAAC(&v99 + 8, &unk_101A23CD0);
  sub_10000CAAC(&v100, &qword_1019FFF30);
  sub_10000CAAC(&v100 + 8, &unk_101A23CE0);
  if ((*(v21 + 48))(v14, 1, v86) == 1)
  {
    v22 = v88;
    sub_10000CAAC(v14, &unk_101A15B20);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v23 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_1006A3BB8(v22, v73, type metadata accessor for CRLFolderIdentifier);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v25;
    *(inited + 40) = v27;
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v28, "Trying to rename folder, but could not find its node with folder identifier %@.", 79, 2, inited);
    swift_setDeallocating();
    return sub_100005070(inited + 32);
  }

  else
  {
    v30 = v87;
    sub_100065B48(v14, v87, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v31 = 0x4620656D616E6552;
    if (v76)
    {
      v31 = v72;
    }

    v72 = v31;
    v32 = 0x8000000101559140;
    v33 = 0xD000000000000021;
    if (v75)
    {
      v33 = v74;
    }

    v74 = v33;
    if (v75)
    {
      v32 = v75;
    }

    v73 = v32;

    v86 = sub_100F88220();
    v79 = v34;
    v35 = v30;
    v36 = v71;
    sub_1006A3BB8(v35, v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v37 = v80;
    sub_1006A3BB8(v88, v80, type metadata accessor for CRLFolderIdentifier);
    v38 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v39 = (v15 + *(v77 + 80) + v38) & ~*(v77 + 80);
    v40 = (v78 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = v82;
    sub_100065B48(v36, v41 + v38, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100065B48(v37, v41 + v39, type metadata accessor for CRLFolderIdentifier);
    v42 = (v41 + v40);
    v43 = v84;
    *v42 = v81;
    v42[1] = v43;
    v44 = v83;
    *(v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8)) = v83;
    v45 = v41;

    v88 = v44;
    v46 = String._bridgeToObjectiveC()();

    v47 = String._bridgeToObjectiveC()();

    v48 = [objc_opt_self() alertControllerWithTitle:v46 message:v47 preferredStyle:1];

    v49 = objc_opt_self();
    sub_1006A2D28();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = sub_10063009C;
    *(v50 + 32) = v45;
    *(v50 + 40) = v48;
    v51 = v48;

    v52 = String._bridgeToObjectiveC()();

    v93 = sub_1006301C0;
    v94 = v50;
    aBlock = _NSConcreteStackBlock;
    v90 = *"";
    v91 = sub_10068B39C;
    v92 = &unk_1018805F0;
    v53 = _Block_copy(&aBlock);

    v54 = [v49 actionWithTitle:v52 style:0 handler:v53];
    _Block_release(v53);

    [v51 addAction:v54];
    [v51 setPreferredAction:v54];

    v55 = [objc_opt_self() mainBundle];
    v56 = String._bridgeToObjectiveC()();
    v57 = String._bridgeToObjectiveC()();
    v58 = [v55 localizedStringForKey:v56 value:v57 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = swift_allocObject();
    *(v59 + 16) = 1;
    *(v59 + 24) = sub_10063009C;
    *(v59 + 32) = v45;
    *(v59 + 40) = v51;
    v60 = v51;

    v61 = String._bridgeToObjectiveC()();

    v93 = sub_10063185C;
    v94 = v59;
    aBlock = _NSConcreteStackBlock;
    v90 = *"";
    v91 = sub_10068B39C;
    v92 = &unk_101880640;
    v62 = _Block_copy(&aBlock);

    v63 = [v49 actionWithTitle:v61 style:1 handler:v62];
    _Block_release(v62);

    [v60 addAction:v63];
    v64 = swift_allocObject();
    v65 = v79;
    *(v64 + 16) = v86;
    *(v64 + 24) = v65;
    v93 = sub_1006A3A60;
    v94 = v64;
    aBlock = _NSConcreteStackBlock;
    v90 = *"";
    v91 = sub_10068B39C;
    v92 = &unk_101880690;
    v66 = _Block_copy(&aBlock);

    [v60 addTextFieldWithConfigurationHandler:v66];
    _Block_release(v66);
    v67 = swift_allocObject();
    *(v67 + 16) = v60;
    v93 = sub_1006301CC;
    v94 = v67;
    aBlock = _NSConcreteStackBlock;
    v90 = *"";
    v91 = sub_100007638;
    v92 = &unk_1018806E0;
    v68 = _Block_copy(&aBlock);
    v69 = v60;

    [v88 presentViewController:v69 animated:1 completion:v68];
    _Block_release(v68);
    sub_1011047E4(v69);

    return sub_10000B8C4(v87, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }
}

void sub_1006A1AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v72 = a4;
  v15 = sub_1005B981C(&qword_1019F83E8);
  __chkstk_darwin(v15 - 8);
  v71 = v61 - v16;
  v17 = _s13CacheSnapshotV20TitleValidationErrorOMa(0);
  v69 = *(v17 - 8);
  v70 = v17;
  __chkstk_darwin(v17);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for CRLFolderIdentifier(0);
  v67 = *(v20 - 8);
  v21 = *(v67 + 64);
  __chkstk_darwin(v20 - 8);
  v68 = v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v22 - 8);
  v24 = v61 - v23;
  if (a2)
  {
    v63 = v24;
    v64 = a5;
    v61[1] = v19;
    v61[2] = a8;
    v65 = a6;
    v66 = a7;
    v61[3] = a3;
    v62 = *(a3 + 16);
    v25 = *(v62 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 40);

    v26 = sub_100832858(a1, a2, v72, v25);
    v71 = v50;
    v72 = v26;

    v51 = type metadata accessor for TaskPriority();
    v52 = v63;
    (*(*(v51 - 8) + 56))(v63, 1, 1, v51);
    v53 = v68;
    sub_1006A3BB8(v64, v68, type metadata accessor for CRLFolderIdentifier);
    type metadata accessor for MainActor();
    v54 = v66;

    v55 = v62;
    swift_unknownObjectRetain();
    v56 = static MainActor.shared.getter();
    v57 = (*(v67 + 80) + 56) & ~*(v67 + 80);
    v58 = swift_allocObject();
    v58[2] = v56;
    v58[3] = &protocol witness table for MainActor;
    v58[4] = v65;
    v58[5] = v54;
    v58[6] = v55;
    sub_100065B48(v53, v58 + v57, type metadata accessor for CRLFolderIdentifier);
    v59 = (v58 + ((v21 + v57 + 7) & 0xFFFFFFFFFFFFFFF8));
    v60 = v71;
    *v59 = v72;
    v59[1] = v60;
    sub_100796D84(0, 0, v52, &unk_101471330, v58);
  }

  else
  {
    v27 = objc_opt_self();
    v28 = [v27 _atomicIncrementAssertCount];
    v73 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v73);
    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    v31 = [v30 lastPathComponent];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v28;
    v37 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v37;
    v38 = sub_1005CF04C();
    *(inited + 104) = v38;
    *(inited + 72) = v29;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v32;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 80;
    v40 = v73;
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 192) = v40;
    v41 = v29;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    [v27 handleFailureInFunction:v47 file:v48 lineNumber:80 isFatal:0 format:v49 args:v46];
  }
}

uint64_t sub_1006A2434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1006A24D0, v7, v6);
}

uint64_t sub_1006A24D0()
{
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A255C, v2, v1);
}

uint64_t sub_1006A255C()
{

  sub_1006A3EB0();
  v0[9] = swift_allocError();
  *v1 = 11;
  swift_willThrow();
  v2 = v0[6];
  v3 = v0[7];

  return _swift_task_switch(sub_1006A3F1C, v2, v3);
}

uint64_t sub_1006A25F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1006A2694, v7, v6);
}

uint64_t sub_1006A2694()
{
  *(v0 + 64) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1006A2720, v2, v1);
}

uint64_t sub_1006A2720()
{

  sub_1006A3EB0();
  v0[9] = swift_allocError();
  *v1 = 11;
  swift_willThrow();
  v2 = v0[6];
  v3 = v0[7];

  return _swift_task_switch(sub_1006A27BC, v2, v3);
}

uint64_t sub_1006A27BC()
{
  v1 = v0[9];
  v2 = v0[2];

  swift_errorRetain();
  v2(v1, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006A2854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 48) = a8;
  *(v8 + 56) = v13;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  _s4NodeVMa(0);
  *(v8 + 64) = swift_task_alloc();
  *(v8 + 72) = sub_1005B981C(&qword_1019F6720);
  *(v8 + 80) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 88) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 96) = v10;
  *(v8 + 104) = v9;

  return _swift_task_switch(sub_1006A296C, v10, v9);
}

uint64_t sub_1006A296C()
{
  v1 = *(v0 + 128);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1006A2A14;
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);

  return sub_1010D1D2C(v3, v5, v6, v4, v1 & 1);
}

uint64_t sub_1006A2A14()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_1006A2C2C;
  }

  else
  {
    v5 = sub_1006A2B50;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1006A2B50()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);

  sub_100065B48(v2, v1, _s4NodeVMa);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 80);
  (*(v0 + 16))(v3);
  sub_10000CAAC(v3, &qword_1019F6720);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1006A2C2C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 80);

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 80);
  (*(v0 + 16))(v3);
  sub_10000CAAC(v3, &qword_1019F6720);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1006A2CF0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1006A2D28()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_1006A2E0C(int a1, char a2, void (*a3)(id, uint64_t), int a4, id a5)
{
  if (a2)
  {
    return;
  }

  v6 = [a5 textFields];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  sub_100006370(0, &qword_1019F7690);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_12:

LABEL_13:
    v6 = 0;
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 text];

  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v6 = v12;
LABEL_15:
  a3(v6, v14);
}

void sub_1006A2F78(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 setText:v2];
}

void sub_1006A2FD8(void *a1)
{
  v1 = [a1 textFields];
  if (!v1)
  {
    return;
  }

  v2 = v1;
  sub_100006370(0, &qword_1019F7690);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;

  [v5 selectAll:0];
}

uint64_t sub_1006A3104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  _s4NodeVMa(0);
  v11 = swift_task_alloc();
  v8[5] = v11;
  v8[6] = sub_1005B981C(&qword_1019F6720);
  v8[7] = swift_task_alloc();
  v8[8] = type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v8[10] = v12;
  *v12 = v8;
  v12[1] = sub_1006A3264;

  return sub_1010CF78C(v11, a7, a8, v15, v16);
}

uint64_t sub_1006A3264()
{
  *(*v1 + 88) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1006A34D4;
  }

  else
  {
    v4 = sub_1006A33C0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1006A33C0()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  sub_100065B48(v2, v3, _s4NodeVMa);
  sub_1006A3BB8(v3, v1, _s4NodeVMa);
  swift_storeEnumTagMultiPayload();
  if (v4)
  {
    (v0[3])(v0[7]);
  }

  sub_10000CAAC(v0[7], &qword_1019F6720);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006A34D4()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[3];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  if (v3)
  {
    v4 = v0[7];
    v5 = v0[3];
    swift_errorRetain();
    v5(v4);
  }

  else
  {
    swift_errorRetain();
  }

  sub_10000CAAC(v0[7], &qword_1019F6720);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1006A35C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  _s4NodeVMa(0);
  v11 = swift_task_alloc();
  v8[5] = v11;
  v8[6] = sub_1005B981C(&qword_1019F6720);
  v8[7] = swift_task_alloc();
  v8[8] = type metadata accessor for MainActor();
  v8[9] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v8[10] = v12;
  *v12 = v8;
  v12[1] = sub_1006A371C;

  return sub_1010D0BB8(v11, a7, a8, v15);
}

uint64_t sub_1006A371C()
{
  *(*v1 + 88) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1006A397C;
  }

  else
  {
    v4 = sub_1006A3878;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1006A3878()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  sub_100065B48(v2, v3, _s4NodeVMa);
  sub_1006A3BB8(v3, v1, _s4NodeVMa);
  swift_storeEnumTagMultiPayload();
  v4(v1);
  sub_10000CAAC(v1, &qword_1019F6720);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1006A397C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[3];

  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_errorRetain();
  v3(v2);
  sub_10000CAAC(v2, &qword_1019F6720);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1006A3A64(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002D3D4;

  return sub_1006A35C8(a1, v5, v6, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1006A3BB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1006A3C20()
{
  result = qword_101A02180;
  if (!qword_101A02180)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A02180);
  }

  return result;
}

uint64_t sub_1006A3C78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F33E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1006A3CE8(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 setText:v2];
}

uint64_t sub_1006A3D44(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_1019F33E0) - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = v1[6];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1006A3104(a1, v12, v5, v6, v7, v9, v1 + v4, v8);
}

unint64_t sub_1006A3EB0()
{
  result = qword_1019F83F0;
  if (!qword_1019F83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F83F0);
  }

  return result;
}

uint64_t sub_1006A3F3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 169))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A3F5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 168) = 0;
    *result = (a2 - 1);
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

  *(result + 169) = v3;
  return result;
}

uint64_t sub_1006A3FC4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = *(v2 + 120);
    v7 = *(v2 + 152);
    *&v35.m41 = *(v2 + 136);
    *&v35.m43 = v7;
    v36 = *(v2 + 168);
    v8 = *(v2 + 56);
    v9 = *(v2 + 88);
    *&v35.m21 = *(v2 + 72);
    *&v35.m23 = v9;
    *&v35.m31 = *(v2 + 104);
    *&v35.m33 = v6;
    *&v35.m11 = *(v2 + 40);
    *&v35.m13 = v8;
    v10 = *(v2 + 120);
    v11 = *(v2 + 152);
    v37[6] = *(v2 + 136);
    v37[7] = v11;
    v38 = *(v2 + 168);
    v12 = *(v2 + 56);
    v13 = *(v2 + 88);
    v37[2] = *(v2 + 72);
    v37[3] = v13;
    v37[4] = *(v2 + 104);
    v37[5] = v10;
    v37[0] = *(v2 + 40);
    v37[1] = v12;
    if (sub_1006A42F0(v37) == 1)
    {
      [v5 transform];
    }

    else
    {
      v34 = v35;
    }

    v14 = *(v2 + 8);
    v15 = *(v2 + 16);
    v33 = v34;
    CATransform3DTranslate(&v32, &v33, v14, v15, 1.0);
    v16 = *(v2 + 24);
    v17 = *(v2 + 32);
    v31 = v34;
    CATransform3DTranslate(&v33, &v31, v16, v17, 1.0);
    type metadata accessor for CATransform3D(0);
    v19 = v18;
    v31.m14 = v18;
    v20 = swift_allocObject();
    *&v30[3] = v19;
    *&v31.m11 = v20;
    v21 = *&v32.m33;
    v20[5] = *&v32.m31;
    v20[6] = v21;
    v22 = *&v32.m43;
    v20[7] = *&v32.m41;
    v20[8] = v22;
    v23 = *&v32.m13;
    v20[1] = *&v32.m11;
    v20[2] = v23;
    v24 = *&v32.m23;
    v20[3] = *&v32.m21;
    v20[4] = v24;
    v25 = swift_allocObject();
    v30[0] = v25;
    v26 = *&v33.m33;
    v25[5] = *&v33.m31;
    v25[6] = v26;
    v27 = *&v33.m43;
    v25[7] = *&v33.m41;
    v25[8] = v27;
    v28 = *&v33.m13;
    v25[1] = *&v33.m11;
    v25[2] = v28;
    v29 = *&v33.m23;
    v25[3] = *&v33.m21;
    v25[4] = v29;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 64) = 26;

    *(a1 + 72) = 0x726F66736E617274;
    *(a1 + 80) = 0xE90000000000006DLL;
    sub_1006A430C(&v31, a1);
    return sub_1006A430C(v30, a1 + 32);
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

__n128 sub_1006A421C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  v3 = *(v1 + 120);
  v4 = *(v1 + 152);
  *(a1 + 128) = *(v1 + 136);
  *(a1 + 144) = v4;
  *(a1 + 160) = *(v1 + 168);
  v5 = *(v1 + 56);
  v6 = *(v1 + 88);
  *(a1 + 64) = *(v1 + 72);
  *(a1 + 80) = v6;
  *(a1 + 96) = *(v1 + 104);
  *(a1 + 112) = v3;
  result = *(v1 + 40);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  *(a1 + 256) = 75;
  return result;
}

unint64_t sub_1006A4274(uint64_t a1)
{
  result = sub_1006A429C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1006A429C()
{
  result = qword_1019F83F8;
  if (!qword_1019F83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F83F8);
  }

  return result;
}

uint64_t sub_1006A42F0(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006A430C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_1019F4D00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006A437C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v40 = v2;
  v41 = v3;
  v8 = *(a1 + 120);
  v9 = *(a1 + 152);
  v37 = *(a1 + 136);
  v38 = v9;
  v39 = *(a1 + 168);
  v10 = *(a1 + 56);
  v11 = *(a1 + 88);
  v33 = *(a1 + 72);
  v34 = v11;
  v35 = *(a1 + 104);
  v36 = v8;
  v31 = *(a1 + 40);
  v32 = v10;
  if (sub_1006A42F0(&v31) != 1)
  {
    v16 = *(a2 + 120);
    v17 = *(a2 + 152);
    v28 = *(a2 + 136);
    v29 = v17;
    v30 = *(a2 + 168);
    v18 = *(a2 + 56);
    v19 = *(a2 + 88);
    v24 = *(a2 + 72);
    v25 = v19;
    v26 = *(a2 + 104);
    v27 = v16;
    v22 = *(a2 + 40);
    v23 = v18;
    if (sub_1006A42F0(&v22) != 1)
    {
      v21[0] = v31;
      v21[1] = v32;
      v21[2] = v33;
      v21[3] = v34;
      v21[4] = v35;
      v21[5] = v36;
      v21[6] = v37;
      v21[7] = v38;
      v20[0] = v22;
      v20[1] = v23;
      v20[2] = v24;
      v20[3] = v25;
      v20[4] = v26;
      v20[5] = v27;
      v20[6] = v28;
      v20[7] = v29;
      return sub_10013A608(v21, v20, 0.0);
    }

    return 0;
  }

  v12 = *(a2 + 120);
  v13 = *(a2 + 152);
  v28 = *(a2 + 136);
  v29 = v13;
  v30 = *(a2 + 168);
  v14 = *(a2 + 56);
  v15 = *(a2 + 88);
  v24 = *(a2 + 72);
  v25 = v15;
  v26 = *(a2 + 104);
  v27 = v12;
  v22 = *(a2 + 40);
  v23 = v14;
  result = sub_1006A42F0(&v22);
  if (result != 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1006A450C()
{
  result = _UISolariumEnabled();
  v1 = 81.0;
  if (result)
  {
    v1 = 78.0;
  }

  qword_1019F8400 = *&v1;
  return result;
}

uint64_t sub_1006A454C()
{
  result = _UISolariumEnabled();
  qword_1019F8408 = 0x4046000000000000;
  return result;
}

void sub_1006A458C()
{
  v0 = _UISolariumEnabled();
  v1 = objc_opt_self();
  v2 = &selRef_labelColor;
  if (!v0)
  {
    v2 = &selRef_accentColor;
  }

  v3 = [v1 *v2];
  v4 = [v3 colorWithAlphaComponent:0.4];

  qword_1019F8418 = v4;
}

id sub_1006A4630(uint64_t a1, SEL *a2, SEL *a3, void *a4)
{
  v7 = _UISolariumEnabled();
  v8 = objc_opt_self();
  if (v7)
  {
    v9 = a2;
  }

  else
  {
    v9 = a3;
  }

  result = [v8 *v9];
  *a4 = result;
  return result;
}

uint64_t sub_1006A46C0()
{
  result = _UISolariumEnabled();
  v1 = 10.0;
  if (result)
  {
    v1 = 22.0;
  }

  qword_1019F8438 = *&v1;
  return result;
}

uint64_t sub_1006A4708()
{
  result = sub_1004A48FC();
  v1 = 5;
  if (result)
  {
    v1 = 10;
  }

  qword_1019F8448 = v1;
  return result;
}

id sub_1006A4738()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button);
  }

  else
  {
    v4 = sub_1006A4798();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1006A4798()
{
  v1 = v0;
  type metadata accessor for CRLiOSCanvasZoomControlViewController.ZoomButton();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    v5 = v2;
    [v4 viewScale];
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = v2;
  }

  v7 = objc_opt_self();
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v9 = [v7 localizedStringFromNumber:isa numberStyle:3];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  [v2 setTitle:v9 forState:0];

  if (qword_1019F1440 != -1)
  {
    swift_once();
  }

  [v2 setTitleColor:qword_1019F8410 forState:0];
  if (qword_1019F1448 != -1)
  {
    swift_once();
  }

  [v2 setTitleColor:qword_1019F8418 forState:1];
  v10 = [v2 titleLabel];

  if (v10)
  {
    v11 = sub_1006A8B48();
    [v10 setFont:v11];

    [v10 setTextAlignment:1];
  }

  else
  {
    v43 = v7;
    v42 = objc_opt_self();
    v12 = [v42 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v44);
    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v14 = String._bridgeToObjectiveC()();

    v15 = [v14 lastPathComponent];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v12;
    v21 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v21;
    v22 = sub_1005CF04C();
    *(inited + 104) = v22;
    *(inited + 72) = v13;
    *(inited + 136) = &type metadata for String;
    v23 = sub_1000053B0();
    *(inited + 112) = v16;
    *(inited + 120) = v18;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v23;
    *(inited + 152) = 158;
    v24 = v44;
    *(inited + 216) = v21;
    *(inited + 224) = v22;
    *(inited + 192) = v24;
    v25 = v13;
    v26 = v24;
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v28 = static os_log_type_t.error.getter();
    sub_100005404(v19, &_mh_execute_header, v28, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v29 = swift_allocObject();
    v29[2] = 8;
    v29[3] = 0;
    v29[4] = 0;
    v29[5] = 0;
    v30 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v33 = String._bridgeToObjectiveC()();

    [v42 handleFailureInFunction:v31 file:v32 lineNumber:158 isFatal:0 format:v33 args:v30];

    v7 = v43;
  }

  v34 = v2;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v35 = *(v1 + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu);
  [v34 setMenu:v35];

  [v34 setShowsMenuAsPrimaryAction:1];
  [v34 setPreferredMenuElementOrder:2];

  [v34 setPointerInteractionEnabled:1];
  [v34 setShowsLargeContentViewer:1];
  v36 = swift_unknownObjectWeakLoadStrong();
  if (v36)
  {
    [*(v36 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) viewScale];
    swift_unknownObjectRelease();
  }

  v37 = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v38 = [v7 localizedStringFromNumber:v37 numberStyle:3];

  if (!v38)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = String._bridgeToObjectiveC()();
  }

  [v34 setLargeContentTitle:v38];

  v39 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v34 addInteraction:v39];

  v40 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  return v34;
}

Class sub_1006A4EF0()
{
  v36 = _swiftEmptyArrayStorage;
  v0 = objc_opt_self();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_1006A8E40;
  v35 = v1;
  aBlock = _NSConcreteStackBlock;
  v31 = *"";
  v32 = sub_100646688;
  v33 = &unk_1018809E0;
  v2 = _Block_copy(&aBlock);

  v3 = [v0 elementWithUncachedProvider:v2];
  _Block_release(v2);
  sub_100006370(0, &qword_1019F6C00);
  sub_1005B981C(&unk_1019F4D60);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_101465920;
  *(preferredElementSize + 32) = v3;
  v29 = v3;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v37.value.super.isa = 0;
  v37.is_nil = 0;
  v6 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v5, 0, v37, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v27).super.super.isa;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_1006A8E48;
  v35 = v7;
  aBlock = _NSConcreteStackBlock;
  v31 = *"";
  v32 = sub_100646688;
  v33 = &unk_101880A08;
  v8 = _Block_copy(&aBlock);

  v9 = [v0 elementWithUncachedProvider:v8];
  _Block_release(v8);
  v10 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = sub_1006A8E50;
  v35 = v11;
  aBlock = _NSConcreteStackBlock;
  v31 = *"";
  v32 = sub_100646688;
  v33 = &unk_101880A30;
  v12 = _Block_copy(&aBlock);

  v13 = [v0 elementWithUncachedProvider:v12];
  _Block_release(v12);
  v14 = v13;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v15 = v36;
  v33 = &type metadata for CRLFeatureFlags;
  v34 = sub_100004D60();
  LOBYTE(aBlock) = 10;
  v16 = isFeatureEnabled(_:)();
  sub_100005070(&aBlock);
  if ((v16 & 1) == 0)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = sub_1006A8E58;
    v35 = v17;
    aBlock = _NSConcreteStackBlock;
    v31 = *"";
    v32 = sub_100646688;
    v33 = &unk_101880A58;
    v18 = _Block_copy(&aBlock);

    v19 = [v0 elementWithUncachedProvider:v18];
    _Block_release(v18);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101465920;
    *(v20 + 32) = v19;
    v21 = v19;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v38.value.super.isa = 0;
    v38.is_nil = 0;
    v23 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, 0, v38, 1, 0xFFFFFFFFFFFFFFFFLL, v20, v28).super.super.isa;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v15 = v36;
  }

  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v39.value.super.isa = 0;
  v39.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, 0, v39, 0, 0xFFFFFFFFFFFFFFFFLL, v15, v28).super.super.isa;

  return isa;
}

uint64_t sub_1006A54E8(uint64_t (*a1)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

    return a1(_swiftEmptyArrayStorage);
  }

  v5 = v4;
  v46 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController;
  v6 = [*(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) editingCoordinator];
  if (v6)
  {
    v7 = v6;
    v8 = *&v6[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];

    v49 = sub_1008FB7A4();
  }

  else
  {
    v49 = 0;
  }

  v10 = *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_viewScaleDetents];
  v11 = *(v10 + 16);
  v48 = v3;
  if (v11)
  {
    v47 = v5;
    v45 = a1;
    a1 = objc_opt_self();
    sub_100006370(0, &qword_1019F6190);

    v12 = 32;
    while (1)
    {
      v13 = *(v10 + v12);
      isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
      v15 = [a1 localizedStringFromNumber:isa numberStyle:3];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      [*(v47 + v46) viewScale];
      v17 = (v16 == v13) & (v49 ^ 1u);
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v13;
      v44 = v19;
      v43 = v17;
      v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      sub_1005B981C(&unk_1019F61D0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_10146C6B0;
      v22 = v13 * 100.0;
      if (COERCE__INT64(fabs(v13 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_22;
      }

      if (v22 >= 9.22337204e18)
      {
        goto LABEL_23;
      }

      v23 = v21;
      v24 = v22;
      v25 = objc_allocWithZone(NSNumber);
      v26 = v20;
      v27 = [v25 initWithInteger:{v24, 0, 0, v43, sub_1006A8EB4, v44}];
      v28 = [a1 localizedStringFromNumber:v27 numberStyle:0];

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      *(v23 + 32) = v29;
      *(v23 + 40) = v31;
      v32 = Array._bridgeToObjectiveC()().super.isa;

      [v26 setAccessibilityUserInputLabels:v32];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 += 8;
      --v11;
      v3 = v48;
      if (!v11)
      {

        a1 = v45;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_17:
    if ((v49 & 1) == 0)
    {
LABEL_20:
      a1(_swiftEmptyArrayStorage);

      return swift_unknownObjectRelease();
    }

    v33 = [objc_opt_self() mainBundle];
    v34 = String._bridgeToObjectiveC()();
    v35 = String._bridgeToObjectiveC()();
    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    sub_100006370(0, &qword_1019F6190);

    v40 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_1005B981C(&unk_1019F61D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10146C6B0;
    *(v41 + 32) = v37;
    *(v41 + 40) = v39;
    v20 = v40;
    v42 = Array._bridgeToObjectiveC()().super.isa;

    [v20 setAccessibilityUserInputLabels:{v42, 0, 0, 1, SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:), 0}];

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_19:
      sub_1006799C8(0, 0, v20);

      v3 = v48;
      goto LABEL_20;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_1006A5AF8(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_shouldRefocusZoomButtonUponNextZoomChange] = 1;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1010107F4(a1);
      sub_1006A8220();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1006A5BC8(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_delegate;
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v3 + 8);

    if (v5)
    {
      if ([*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) hasSelection])
      {
        v7 = [objc_opt_self() mainBundle];
        v8 = String._bridgeToObjectiveC()();
        v9 = String._bridgeToObjectiveC()();
        v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100006370(0, &qword_1019F6190);
        v11 = swift_allocObject();
        *(v11 + 24) = v6;
        swift_unknownObjectWeakInit();
        v12 = swift_allocObject();
        swift_beginAccess();
        v13 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakInit();

        v14 = swift_allocObject();
        *(v14 + 16) = v12;
        *(v14 + 24) = v11;
        v15 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        sub_1005B981C(&unk_1019F4D60);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_101465920;
        *(v16 + 32) = v15;
        v17 = v15;
        a1(v16);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return (a1)(_swiftEmptyArrayStorage);
}

uint64_t sub_1006A5E8C(void (*a1)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_delegate;
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = *(v3 + 8);

    if (v5)
    {
      v7 = [*(v5 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) board];
      if (v7)
      {
        v8 = v7;
        v9 = *&v7[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

        v10 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
        v11 = *&v9[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
        if (!v11)
        {
          sub_10096C7D4();
          v11 = *&v9[v10];
        }

        v12 = (v11 ? v11 : _swiftEmptyArrayStorage);

        v13 = v12 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13 >= 1)
        {
          v14 = [objc_opt_self() mainBundle];
          v15 = String._bridgeToObjectiveC()();
          v16 = String._bridgeToObjectiveC()();
          v17 = [v14 localizedStringForKey:v15 value:v16 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100006370(0, &qword_1019F6190);
          v18 = swift_allocObject();
          *(v18 + 24) = v6;
          swift_unknownObjectWeakInit();
          v19 = swift_allocObject();
          swift_beginAccess();
          v20 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();

          v21 = swift_allocObject();
          *(v21 + 16) = v19;
          *(v21 + 24) = v18;
          v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          sub_1005B981C(&unk_1019F4D60);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_101465920;
          *(v23 + 32) = v22;
          v24 = v22;
          a1(v23);
          swift_unknownObjectRelease();
        }
      }

      swift_unknownObjectRelease();
    }
  }

  return (a1)(_swiftEmptyArrayStorage);
}

uint64_t sub_1006A61E0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_shouldRefocusZoomButtonUponNextZoomChange] = 1;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) *a4];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006A6294(uint64_t (*a1)(void *))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();

  if (!v4)
  {
    return a1(_swiftEmptyArrayStorage);
  }

  v5 = OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled;
  v6 = *(v4 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController__isCanvasDotGridEnabled);
  if (v6 == 2)
  {
    LOBYTE(v6) = sub_10102983C();
    *(v4 + v5) = v6 & 1;
  }

  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 localizedStringForKey:v9 value:v10 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = [v7 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100006370(0, &qword_1019F6190);
  v16 = swift_allocObject();
  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v6 & 1;
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_1005B981C(&unk_1019F4D60);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_101465920;
  *(v20 + 32) = v19;
  v21 = v19;
  a1(v20);
  swift_unknownObjectRelease();
}

void sub_1006A65DC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      sub_101028E9C((a3 & 1) == 0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1006A6664()
{
  v1 = v0;
  v90.receiver = v0;
  v90.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController();
  objc_msgSendSuper2(&v90, "viewDidLoad");
  v2 = sub_1006A4EF0();
  v3 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu;
  v4 = *&v0[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu];
  *&v0[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu] = v2;

  v5 = sub_1006A4738();
  v6 = *&v1[v3];
  [v5 setMenu:v6];

  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v8 = v7;
  v83 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button;
  [v7 addSubview:*&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button]];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController) viewScale];
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    aBlock = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &aBlock);
    StaticString.description.getter();
    v12 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v13 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v18 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v11;
    v20 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v20;
    v21 = sub_1005CF04C();
    *(inited + 104) = v21;
    *(inited + 72) = v12;
    *(inited + 136) = &type metadata for String;
    v22 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v17;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v22;
    *(inited + 152) = 288;
    v23 = aBlock;
    *(inited + 216) = v20;
    *(inited + 224) = v21;
    *(inited + 192) = v23;
    v24 = v12;
    v25 = v23;
    v26 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v27 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v27, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v28[4] = 0;
    v28[5] = 0;
    v29 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:288 isFatal:0 format:v32 args:v29];
  }

  sub_1006A8220();
  v33 = objc_opt_self();
  v34 = [v33 defaultCenter];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = sub_1006A8EC0;
  v89 = v35;
  aBlock = _NSConcreteStackBlock;
  v85 = *"";
  v86 = sub_100059694;
  v87 = &unk_101880B48;
  v36 = _Block_copy(&aBlock);

  v37 = [v34 addObserverForName:@"CRLCanvasUpdateZoomNotification" object:0 queue:0 usingBlock:v36];
  _Block_release(v36);

  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_zoomUpdateObserver] = v37;
  swift_unknownObjectRelease();
  v38 = [v33 defaultCenter];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = sub_1006A8EC8;
  v89 = v39;
  aBlock = _NSConcreteStackBlock;
  v85 = *"";
  v86 = sub_100059694;
  v87 = &unk_101880B70;
  v40 = _Block_copy(&aBlock);

  v41 = [v38 addObserverForName:@"CRLCanvasDidZoomNotification" object:0 queue:0 usingBlock:v40];
  _Block_release(v40);

  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_zoomDidChangeObserver] = v41;
  swift_unknownObjectRelease();
  v42 = [v33 defaultCenter];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = sub_1006A8ED0;
  v89 = v43;
  aBlock = _NSConcreteStackBlock;
  v85 = *"";
  v86 = sub_100059694;
  v87 = &unk_101880B98;
  v44 = _Block_copy(&aBlock);

  v45 = [v42 addObserverForName:UIContentSizeCategoryDidChangeNotification object:0 queue:0 usingBlock:v44];
  _Block_release(v44);

  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_contentSizeCategoryChangeObserver] = v45;
  swift_unknownObjectRelease();
  v46 = [*&v1[v83] widthAnchor];
  if (qword_1019F1430 != -1)
  {
    swift_once();
  }

  v47 = [v46 constraintEqualToConstant:*&qword_1019F8400];

  v48 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonWidthConstraint;
  v49 = *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonWidthConstraint];
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonWidthConstraint] = v47;

  v50 = [*&v1[v83] heightAnchor];
  if (qword_1019F1438 != -1)
  {
    swift_once();
  }

  v51 = [v50 constraintEqualToConstant:*&qword_1019F8408];

  v52 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonHeightConstraint;
  v53 = *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonHeightConstraint];
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonHeightConstraint] = v51;

  sub_1005B981C(&unk_1019F4D60);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_101471410;
  v55 = *&v1[v48];
  if (!v55)
  {
    goto LABEL_19;
  }

  v56 = v54;
  *(v54 + 32) = v55;
  v57 = *&v1[v52];
  if (!v57)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v54 + 40) = v57;
  v58 = *&v1[v83];
  v59 = v57;
  v60 = v55;
  v61 = [v58 topAnchor];
  v62 = [v1 view];
  if (!v62)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v63 = v62;
  v64 = [v62 topAnchor];

  v65 = [v61 constraintEqualToAnchor:v64];
  v56[6] = v65;
  v66 = [*&v1[v83] leadingAnchor];
  v67 = [v1 view];
  if (!v67)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v68 = v67;
  v69 = [v67 leadingAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  v56[7] = v70;
  v71 = [*&v1[v83] trailingAnchor];
  v72 = [v1 view];
  if (!v72)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v73 = v72;
  v74 = [v72 trailingAnchor];

  v75 = [v71 constraintEqualToAnchor:v74];
  v56[8] = v75;
  v76 = [*&v1[v83] bottomAnchor];
  v77 = [v1 view];
  if (v77)
  {
    v78 = v77;
    v79 = objc_opt_self();
    v80 = [v78 bottomAnchor];

    v81 = [v76 constraintEqualToAnchor:v80];
    v56[9] = v81;
    sub_100006370(0, &qword_1019F4D70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v79 activateConstraints:isa];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1006A71A4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (!v2)
    {
LABEL_12:

      return;
    }

    v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    swift_unknownObjectRelease();
    Notification.object.getter();
    if (v28[3])
    {
      sub_100006370(0, &qword_1019F8508);
      if (swift_dynamicCast())
      {
        v4 = v27;
        sub_100006370(0, &qword_1019F54D0);
        if (static NSObject.== infix(_:_:)())
        {
          [v27 currentViewScale];
          sub_1006A8220();
        }

LABEL_11:

        v1 = v4;
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000CAAC(v28, &unk_1019F4D00);
    }

    v26 = objc_opt_self();
    v5 = [v26 _atomicIncrementAssertCount];
    v28[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v28);
    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v7 = String._bridgeToObjectiveC()();

    v8 = [v7 lastPathComponent];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v5;
    v14 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v14;
    v15 = sub_1005CF04C();
    *(inited + 104) = v15;
    *(inited + 72) = v6;
    *(inited + 136) = &type metadata for String;
    v16 = sub_1000053B0();
    *(inited + 112) = v9;
    *(inited + 120) = v11;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v16;
    *(inited + 152) = 294;
    v17 = v28[0];
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 192) = v17;
    v18 = v6;
    v19 = v17;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v22 = swift_allocObject();
    v22[2] = 8;
    v22[3] = 0;
    v22[4] = 0;
    v22[5] = 0;
    v23 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v24 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v4 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v24 file:v25 lineNumber:294 isFatal:0 format:v4 args:v23];

    v1 = v24;
    v3 = v25;
    goto LABEL_11;
  }
}

void sub_1006A7660()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
      swift_unknownObjectRelease();
      Notification.object.getter();
      if (v32[3])
      {
        sub_100006370(0, &qword_1019F8508);
        if (swift_dynamicCast())
        {
          sub_100006370(0, &qword_1019F54D0);
          if ((static NSObject.== infix(_:_:)() & 1) != 0 && ([v31 currentViewScale], sub_1006A8220(), v4 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_shouldRefocusZoomButtonUponNextZoomChange, v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_shouldRefocusZoomButtonUponNextZoomChange] == 1))
          {
            v5 = UIAccessibilityLayoutChangedNotification;
            v6 = sub_1006A4738();
            UIAccessibilityPostNotification(v5, v6);

            v1[v4] = 0;
          }

          else
          {

            v1 = v31;
          }

          goto LABEL_14;
        }

        v30 = v3;
      }

      else
      {
        v30 = v3;
        sub_10000CAAC(v32, &unk_1019F4D00);
      }

      v7 = objc_opt_self();
      v8 = [v7 _atomicIncrementAssertCount];
      v32[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v32);
      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v10 = String._bridgeToObjectiveC()();

      v11 = [v10 lastPathComponent];

      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v15 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v8;
      v17 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v17;
      v18 = sub_1005CF04C();
      *(inited + 104) = v18;
      *(inited + 72) = v9;
      *(inited + 136) = &type metadata for String;
      v19 = sub_1000053B0();
      *(inited + 112) = v12;
      *(inited + 120) = v14;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v19;
      *(inited + 152) = 305;
      v20 = v32[0];
      *(inited + 216) = v17;
      *(inited + 224) = v18;
      *(inited + 192) = v20;
      v21 = v9;
      v22 = v20;
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v23, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v24 = static os_log_type_t.error.getter();
      sub_100005404(v15, &_mh_execute_header, v24, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v25 = swift_allocObject();
      v25[2] = 8;
      v25[3] = 0;
      v25[4] = 0;
      v25[5] = 0;
      v26 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v29 = String._bridgeToObjectiveC()();

      [v7 handleFailureInFunction:v27 file:v28 lineNumber:305 isFatal:0 format:v29 args:v26];

      v1 = v29;
    }

LABEL_14:
  }
}

void sub_1006A7B7C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1006A7EEC();
  }
}

void sub_1006A7C70()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 layer];

  if (qword_1019F1450 != -1)
  {
    swift_once();
  }

  v4 = [qword_1019F8420 CGColor];
  [v3 setBackgroundColor:v4];

  v5 = [v0 view];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = v5;
  v7 = [v5 layer];

  if (qword_1019F1468 != -1)
  {
    swift_once();
  }

  [v7 setCornerRadius:*&qword_1019F8438];

  v8 = [v0 view];
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = v8;
  v10 = [v8 layer];

  if (qword_1019F1470 != -1)
  {
    swift_once();
  }

  [v10 setCornerCurve:qword_1019F8440];

  v11 = [v0 view];
  if (!v11)
  {
    goto LABEL_19;
  }

  v12 = v11;
  v13 = [v11 layer];

  if (qword_1019F1478 != -1)
  {
    swift_once();
  }

  [v13 setMaskedCorners:qword_1019F8448];
}

void sub_1006A7EEC()
{
  v1.super.super.isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v2 = sub_1006A8B48();
  v3 = [objc_opt_self() localizedStringFromNumber:v1.super.super.isa numberStyle:3];
  if (!v3)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v4 = v3;
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_100006370(0, &qword_101A0DE60);
  *(inited + 40) = v2;
  v6 = NSFontAttributeName;
  v7 = v2;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_101A0DE70);
  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v4 boundingRectWithSize:0 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (qword_1019F1430 != -1)
  {
    swift_once();
  }

  v17 = *&qword_1019F8400;
  v28.origin.x = v10;
  v28.origin.y = v12;
  v28.size.width = v14;
  v28.size.height = v16;
  v18 = ceil(CGRectGetWidth(v28)) + 32.0;
  if (v17 <= v18)
  {
    v17 = v18;
  }

  if (qword_1019F1438 != -1)
  {
    swift_once();
  }

  v19 = *&qword_1019F8408;
  v29.origin.x = v10;
  v29.origin.y = v12;
  v29.size.width = v14;
  v29.size.height = v16;
  Height = CGRectGetHeight(v29);

  v21 = ceil(Height) + 10.0;
  if (v19 > v21)
  {
    v22 = v19;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonWidthConstraint);
  if (!v23)
  {
    goto LABEL_17;
  }

  [v23 setConstant:v17];
  v24 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonHeightConstraint);
  if (!v24)
  {
LABEL_18:
    __break(1u);
    return;
  }

  [v24 setConstant:v22];
  v25 = sub_1006A4738();
  v26 = [v25 titleLabel];

  if (v26)
  {
    v27 = sub_1006A8B48();
    [v26 setFont:v27];
  }
}

void sub_1006A8220()
{
  v1 = v0;
  v2 = objc_opt_self();
  isa = CGFloat._bridgeToObjectiveC()().super.super.isa;
  v4 = [v2 localizedStringFromNumber:isa numberStyle:3];

  v5 = v4;
  if (!v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = String._bridgeToObjectiveC()();
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = sub_1006A4738();
  [v9 setTitle:v5 forState:0];

  sub_1005B981C(&unk_1019F61D0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10146BDE0;
  *(v10 + 32) = v6;
  *(v10 + 40) = v8;
  v11 = objc_opt_self();
  v12 = [v11 mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 localizedStringForKey:v13 value:v14 table:0];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v10 + 48) = v16;
  *(v10 + 56) = v18;
  v19 = OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button;
  v20 = *(v1 + OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button);
  sub_1005B981C(&unk_1019F4D80);
  sub_100613214();
  BidirectionalCollection<>.joined(separator:)();

  v21 = String._bridgeToObjectiveC()();

  [v20 setAccessibilityLabel:v21];

  v22 = *(v1 + v19);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_10146C6B0;
  v24 = v22;
  v25 = [v11 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  *(v23 + 32) = v29;
  *(v23 + 40) = v31;
  v32 = Array._bridgeToObjectiveC()().super.isa;

  [v24 setAccessibilityUserInputLabels:v32];
}

id sub_1006A8710(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_defaultViewScale] = 0x3FF0000000000000;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_viewScaleDetents] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_zoomUpdateObserver] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_zoomDidChangeObserver] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonWidthConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_contentSizeCategoryChangeObserver] = 0;
  v3[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_shouldRefocusZoomButtonUponNextZoomChange] = 0;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController();
  v7 = objc_msgSendSuper2(&v9, "initWithNibName:bundle:", v6, a3);

  return v7;
}

id sub_1006A88AC(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_defaultViewScale] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_viewScaleDetents] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_zoomUpdateObserver] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_zoomDidChangeObserver] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController____lazy_storage___button] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_menu] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonWidthConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_buttonHeightConstraint] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_contentSizeCategoryChangeObserver] = 0;
  v1[OBJC_IVAR____TtC8Freeform37CRLiOSCanvasZoomControlViewController_shouldRefocusZoomButtonUponNextZoomChange] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1006A89FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1006A8B48()
{
  sub_1005B981C(&unk_1019F4D60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101465920;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 currentTraitCollection];
  v2 = [v1 currentTraitCollection];
  v3 = [v2 preferredContentSizeCategory];

  if (qword_1019F1458 != -1)
  {
    swift_once();
  }

  v4 = qword_1019F8428;
  v5 = static UIContentSizeCategory.< infix(_:_:)();

  if (v5)
  {
    goto LABEL_7;
  }

  v6 = [v1 currentTraitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (qword_1019F1460 != -1)
  {
    swift_once();
  }

  v4 = qword_1019F8430;
  v8 = static UIContentSizeCategory.> infix(_:_:)();

  if (v8)
  {
LABEL_7:
    v9 = [v1 traitCollectionWithPreferredContentSizeCategory:v4];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_100006370(0, &qword_1019F66C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v1 traitCollectionWithTraitsFromCollections:isa];

  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle:UIFontTextStyleHeadline compatibleWithTraitCollection:v11];
  [v13 pointSize];
  v14 = [v12 monospacedDigitSystemFontOfSize:? weight:?];

  return v14;
}

Swift::Int sub_1006A8EFC()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100041B58(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1006A8FEC()
{
  type metadata accessor for UUID();
  sub_100041B58(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1006A90C4()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_100041B58(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLBoardIdentifierStorage(0);
  String.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1006A91B0(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static UUID.== infix(_:_:)();
}

uint64_t sub_1006A9260(uint64_t a1, char *a2)
{
  v161 = a2;
  v151 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v151);
  v150 = v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v134 = v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v133 = v132 - v7;
  __chkstk_darwin(v8);
  v149 = v132 - v9;
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v154 = v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for UUID();
  v12 = *(v163 - 8);
  __chkstk_darwin(v163);
  v153 = v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v160 = v132 - v15;
  __chkstk_darwin(v16);
  v159 = v132 - v17;
  v18 = type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest();
  v147 = *(v18 - 8);
  v148 = v18;
  __chkstk_darwin(v18);
  v135 = v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v158 = v132 - v21;
  v136 = v22;
  __chkstk_darwin(v23);
  v164 = v132 - v24;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLAsset();
    sub_100041B58(qword_1019F8678, type metadata accessor for CRLAsset);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v168;
    v26 = v169;
    v28 = v170;
    v27 = v171;
    v29 = v172;
  }

  else
  {
    v30 = -1 << *(a1 + 32);
    v26 = a1 + 56;
    v28 = ~v30;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v29 = v32 & *(a1 + 56);

    v27 = 0;
  }

  v132[1] = v28;
  v33 = (v28 + 64) >> 6;
  v146 = (v12 + 16);
  v157 = (v12 + 8);
  v34 = _swiftEmptyArrayStorage;
  v144 = CKCurrentUserDefaultName;
  v145 = (v12 + 32);
  v143 = xmmword_10146C6B0;
  v141 = v26;
  v142 = a1;
  v140 = v33;
  while (a1 < 0)
  {
    v40 = __CocoaSet.Iterator.next()();
    if (!v40 || (v166 = v40, type metadata accessor for CRLAsset(), swift_dynamicCast(), v39 = v167, v37 = v27, v38 = v29, !v167))
    {
LABEL_37:
      sub_100035F90();
      v103 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v104 = v161;
      v105 = *&v161[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
      v106 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      v107 = v105 + v106;
      v108 = v154;
      sub_10004FD2C(v107, v154, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      v109 = v153;
      CRRegister.wrappedValue.getter();
      sub_10003D51C(v108, type metadata accessor for CRLBoardCRDTData);
      v110 = (*&v104[v103] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v111 = *v110;
      v112 = v110[1];

      v113 = v133;
      sub_10084BD4C(v109, v111, v112, v133);
      v114 = v139;
      swift_beginAccess();
      v115 = *(v114 + 112);
      if (*(v115 + 16))
      {

        v116 = sub_1000486F0(v113);
        if (v117)
        {
          v118 = *(*(v115 + 56) + 8 * v116);

          sub_10003D51C(v113, type metadata accessor for CRLBoardIdentifier);

LABEL_42:
          v119 = v161;
          v120 = *&v161[v103];
          v121 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
          swift_beginAccess();
          v122 = v120 + v121;
          v123 = v154;
          sub_10004FD2C(v122, v154, type metadata accessor for CRLBoardCRDTData);
          v124 = v153;
          CRRegister.wrappedValue.getter();
          sub_10003D51C(v123, type metadata accessor for CRLBoardCRDTData);
          v125 = (*&v119[v103] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
          v126 = *v125;
          v127 = v125[1];

          v128 = v134;
          sub_10084BD4C(v124, v126, v127, v134);
          v129 = sub_101104BB0(v34, v118);

          v130 = v139;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v165 = *(v130 + 112);
          *(v130 + 112) = 0x8000000000000000;
          sub_100A9D674(v129, v128, isUniquelyReferenced_nonNull_native);
          sub_10003D51C(v128, type metadata accessor for CRLBoardIdentifier);
          *(v130 + 112) = v165;
          return swift_endAccess();
        }
      }

      sub_10003D51C(v113, type metadata accessor for CRLBoardIdentifier);
      v118 = _swiftEmptySetSingleton;
      goto LABEL_42;
    }

LABEL_19:
    v155 = v38;
    v41 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v42 = *(v148 + 24);
    v43 = v39;
    v152 = v42;
    UUID.init()();
    v162 = v43;
    v44 = &v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage];
    v45 = *&v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24];
    v46 = *&v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 32];
    sub_100020E58(&v43[OBJC_IVAR____TtC8Freeform8CRLAsset_storage], v45);
    (*(v46 + 24))(v45, v46);
    v47 = v161;
    v48 = *&v161[v41];
    v49 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    v50 = v48 + v49;
    v51 = v154;
    sub_10004FD2C(v50, v154, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250);
    v52 = v159;
    CRRegister.wrappedValue.getter();
    sub_10003D51C(v51, type metadata accessor for CRLBoardCRDTData);
    v53 = (*&v47[v41] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v54 = *v53;
    v55 = v53[1];
    (*v146)(v160, v52, v163);
    v57 = v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56;
    if (v57 || (v58 = _stringCompareWithSmolCheck(_:_:expecting:)(), , , (v58 & 1) != 0))
    {

      v54 = 0;
      v55 = 0xE000000000000000;
    }

    v59 = *v157;
    v60 = v163;
    (*v157)(v159, v163);
    v61 = v150;
    (*v145)(v150, v160, v60);
    v62 = (v61 + *(v151 + 20));
    *v62 = v54;
    v62[1] = v55;
    v63 = v149;
    sub_100046100(v61, v149, type metadata accessor for CRLBoardIdentifierStorage);
    v64 = v63;
    v65 = v164;
    sub_100046100(v64, v164, type metadata accessor for CRLBoardIdentifier);
    sub_10004FD2C(v65, v158, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_100B37450(0, v34[2] + 1, 1, v34);
    }

    v67 = v34[2];
    v66 = v34[3];
    if (v67 >= v66 >> 1)
    {
      v34 = sub_100B37450(v66 > 1, v67 + 1, 1, v34);
    }

    v34[2] = v67 + 1;
    v68 = *(v147 + 80);
    sub_100046100(v158, v34 + ((v68 + 32) & ~v68) + *(v147 + 72) * v67, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    v69 = *(v44 + 3);
    v70 = *(v44 + 4);
    sub_100020E58(v44, v69);
    v71 = (*(v70 + 64))(v69, v70);
    v156 = v34;
    if (v71)
    {
      v72 = v59;
      if (qword_1019F22C0 != -1)
      {
        swift_once();
      }

      v138 = ~v68;
      v137 = static OS_os_log.assetManagement;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = v143;
      v74 = *(v44 + 3);
      v75 = *(v44 + 4);
      sub_100020E58(v44, v74);
      v76 = v153;
      (*(v75 + 24))(v74, v75);
      v77 = UUID.uuidString.getter();
      v79 = v78;
      v72(v76, v163);
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v77;
      *(inited + 40) = v79;
      v80 = static os_log_type_t.default.getter();
      sub_100005404(v137, &_mh_execute_header, v80, "Observing on asset download for asset: %{public}@", 49, 2, inited);
      swift_setDeallocating();
      sub_100005070(inited + 32);
      v81 = v135;
      sub_10004FD2C(v164, v135, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      v82 = (v68 + 40) & v138;
      v83 = swift_allocObject();
      v84 = v161;
      v85 = v162;
      v83[2] = v139;
      v83[3] = v84;
      v83[4] = v85;
      sub_100046100(v81, v83 + v82, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
      v86 = *(v44 + 3);
      v87 = *(v44 + 4);
      sub_100020E58(v44, v86);
      v138 = *(v87 + 72);
      v88 = v85;

      v89 = v161;
      (v138)(v164 + v152, 14, sub_1006AA490, v83, v86, v87);

      v90 = *(v44 + 3);
      v91 = *(v44 + 4);
      sub_100020E58(v44, v90);
      if ((*(v91 + 64))(v90, v91))
      {
        v92 = *(v44 + 3);
        v93 = *(v44 + 4);
        sub_100020E58(v44, v92);
        (*(v93 + 88))(v92, v93);
      }
    }

    else
    {
      if (qword_1019F22C0 != -1)
      {
        swift_once();
      }

      v94 = static OS_os_log.assetManagement;
      sub_1005B981C(&qword_1019F54E0);
      v95 = swift_initStackObject();
      *(v95 + 16) = v143;
      v96 = *(v44 + 3);
      v97 = *(v44 + 4);
      sub_100020E58(v44, v96);
      v98 = v153;
      (*(v97 + 24))(v96, v97);
      v99 = UUID.uuidString.getter();
      v101 = v100;
      v59(v98, v163);
      *(v95 + 56) = &type metadata for String;
      *(v95 + 64) = sub_1000053B0();
      *(v95 + 32) = v99;
      *(v95 + 40) = v101;
      v102 = static os_log_type_t.default.getter();
      sub_100005404(v94, &_mh_execute_header, v102, "We are trying to registerAssetsNeedingDownload when the needsDownload is false for asset: %{public}@", 100, 2, v95);

      swift_setDeallocating();
      sub_100005070(v95 + 32);
    }

    v26 = v141;
    a1 = v142;
    v29 = v155;
    v34 = v156;
    v33 = v140;
    result = sub_10003D51C(v164, type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest);
    v27 = v37;
  }

  v35 = v27;
  v36 = v29;
  v37 = v27;
  if (v29)
  {
LABEL_15:
    v38 = (v36 - 1) & v36;
    v39 = *(*(a1 + 48) + ((v37 << 9) | (8 * __clz(__rbit64(v36)))));
    if (!v39)
    {
      goto LABEL_37;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v37 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v37 >= v33)
    {
      goto LABEL_37;
    }

    v36 = *(v26 + 8 * v37);
    ++v35;
    if (v36)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1006AA0E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (a1 == 1)
    {
      v32 = a2;
      v31 = [objc_opt_self() defaultCenter];
      if (qword_1019F1480 != -1)
      {
        swift_once();
      }

      v30 = qword_101AD60F0;
      sub_1005B981C(&qword_1019FB8A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      v33 = 0x6564496472616F62;
      v34 = 0xEF7265696669746ELL;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = type metadata accessor for CRLBoardIdentifier(0);
      v17 = sub_10002C58C((inited + 72));
      v18 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
      v19 = *(a3 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
      v20 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
      swift_beginAccess();
      sub_10004FD2C(v19 + v20, v12, type metadata accessor for CRLBoardCRDTData);
      sub_1005B981C(&unk_1019F5250);
      CRRegister.wrappedValue.getter();
      sub_10003D51C(v12, type metadata accessor for CRLBoardCRDTData);
      v21 = (*(a3 + v18) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      v22 = *v21;
      v23 = v21[1];

      sub_10084BD4C(v15, v22, v23, v17);
      sub_100078EA4(inited);
      swift_setDeallocating();
      sub_1006AA508(inited + 32);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v25 = v31;
      [v31 postNotificationName:v30 object:v32 userInfo:isa];
    }

    v26 = *(type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest() + 24);
    v27 = (a4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage);
    v28 = *(a4 + OBJC_IVAR____TtC8Freeform8CRLAsset_storage + 24);
    v29 = v27[4];
    sub_100020E58(v27, v28);
    (*(v29 + 80))(a5 + v26, v28, v29);
  }
}

uint64_t sub_1006AA430()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

void sub_1006AA490(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1006AA0E8(a1, v4, v5, v6, v7);
}

uint64_t sub_1006AA508(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019FB8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1006AA570()
{
  type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for CRLWPAttributeDictionary();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1006AA684(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v18[2] = a2;
  v18[3] = a3;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - v8;
  v10 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v13 - 8);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a4;
  *a4 = a1;
  v16 = *&a1[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (v16)
  {
    type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
    (*(*v16 + 896))();
    sub_1005E0A78(&v12[*(v10 + 20)], v15);
    v17 = a1;
    sub_1005E0ADC(v12, type metadata accessor for CRLWPShapeItemCRDTData);
    (*(v7 + 16))(v9, v15, v6);
    sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
    CRAttributedString.cursor(range:)();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    __break(1u);
  }
}

void sub_1006AA8F4(void *a1, uint64_t a2)
{
  v5 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v2;
  if (*v2 == *a1)
  {
    v30 = v2;
    v31 = a2;
    v28 = a1;
    v29 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
    v17 = *(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
    if (v17)
    {
      (*(*v17 + 896))(v13);
      sub_1005E0A78(&v11[*(v9 + 20)], v15);
      sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
      v27 = *(v6 + 16);
      v27(v8, v15, v5);
      sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
      v30 = CRAttributedString.range(of:)();
      v26 = v18;
      v20 = v19;
      v21 = *(v6 + 8);
      v22 = v21(v8, v5);
      if (v20)
      {
        return;
      }

      v25 = v21;
      v23 = *(v16 + v29);
      if (v23)
      {
        (*(*v23 + 896))(v22);
        sub_1005E0A78(&v11[*(v9 + 20)], v15);
        sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
        v27(v8, v15, v5);
        sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
        CRAttributedString.range(of:)();
        v25(v8, v5);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1006AAC74@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0xD8);
  swift_beginAccess();
  type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_1006AAD54(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0xD8);
  swift_beginAccess();
  type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

void sub_1006AAE3C(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  HIDWORD(v24) = a3;
  v26 = a2;
  v5 = *v3;
  v6 = swift_isaMask;
  v7 = (swift_isaMask & *v3);
  v8 = v7[25];
  v9 = v7[26];
  v10 = type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
  v11 = type metadata accessor for Optional();
  __chkstk_darwin(v11 - 8);
  v13 = (&v24 - v12);
  v14 = *(v4 + *((v6 & v5) + 0xE8));
  v15 = OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage;
  v16 = *(v14 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v16)
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = (v4 + v7[30]);
  v19 = *v17;
  v18 = v17[1];
  sub_1006AA684(v16, *v17, v18, v13);
  (*(*(v10 - 8) + 56))(v13, 0, 1, v10);
  sub_1006AAD54(v13);
  v20 = v25;
  sub_1012E0400(v14, &off_10188FE10);
  if (v20)
  {
    return;
  }

  v25 = 0;
  v21 = *(v14 + v15);
  if (!v21)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v22 = *((swift_isaMask & *v4) + 0xF8);
  v23 = v21;
  sub_100A33528(v4 + v22, v19, v18, v8, v9);

  sub_1012CF6CC(v14, &off_10188FE10, SBYTE4(v24));
}

uint64_t sub_1006AB090()
{
  v1 = [v0 debugDescription];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id sub_1006AB100(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t sub_1006AB170()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CRLWPFormatTextCommand();
  v1 = objc_msgSendSuper2(&v8, "description");
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v9 = v2;
  v10 = v4;
  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6._countAndFlagsBits = sub_1006AB718();
  String.append(_:)(v6);

  return v9;
}

uint64_t sub_1006AB244(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
  v5 = type metadata accessor for Optional();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = *(v4 - 8);
  __chkstk_darwin(v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  type metadata accessor for CRLWPFormatTextCommand();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = v18;
  v43 = a1;
  v44 = v17;
  sub_1006AAC74(v10);
  v20 = *(v11 + 48);
  if (v20(v10, 1, v4) == 1)
  {
    (*(v45 + 8))(v10, v46);
LABEL_18:
    v37 = 0;
    return v37 & 1;
  }

  v42 = v14;
  v21 = v44;
  v22 = v10;
  v23 = v4;
  v41 = *(v11 + 32);
  v41(v44, v22, v4);
  sub_1006AAC74(v7);
  if (v20(v7, 1, v4) == 1)
  {
    (*(v11 + 8))(v21, v4);
    (*(v45 + 8))(v7, v46);
    goto LABEL_18;
  }

  v24 = v11;
  v25 = v42;
  v41(v42, v7, v4);
  if (*(v19 + *((swift_isaMask & *v19) + 0xE8)) != *(v2 + *((*v2 & swift_isaMask) + 0xE8)))
  {
    v26 = *(v11 + 8);
    v26(v25, v23);
LABEL_17:
    v26(v44, v23);
    goto LABEL_18;
  }

  v27 = *(v2 + *((*v2 & swift_isaMask) + 0xF8));
  v28 = v43;

  v30 = sub_100BC5BA8(v29, v27);

  if ((v30 & 1) == 0)
  {

    v26 = *(v24 + 8);
    v26(v42, v23);
    goto LABEL_17;
  }

  v31 = *(v2 + *((swift_isaMask & *v2) + 0xE0));
  if (*(v27 + 16) <= v31[2] >> 3)
  {
    v47 = *(v2 + *((swift_isaMask & *v2) + 0xE0));

    sub_1012D5030(v27);
    v32 = v47;
  }

  else
  {

    v32 = sub_1012D7244(v27, v31);
  }

  v33 = v32[2];

  v34 = v42;
  if (!v33)
  {

    v26 = *(v24 + 8);
    v26(v34, v23);
    goto LABEL_17;
  }

  v35 = v44;
  sub_1006AA8F4(v42, v23);
  v37 = v36;

  v38 = *(v24 + 8);
  v38(v34, v23);
  v38(v35, v23);
  return v37 & 1;
}

uint64_t sub_1006AB718()
{
  v1 = *(v0 + *((swift_isaMask & *v0) + 0xF8));
  if (*(v1 + 16) >= 2uLL)
  {
    goto LABEL_2;
  }

  v8 = sub_100BC17F8(v1);
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  v11 = v8;
  v12 = v8 == 1684828002 && v9 == 0xE400000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v11 == 0x6E696C7265646E75 ? (v18 = v10 == 0xE900000000000065) : (v18 = 0), v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v11 == 0x63696C617469 ? (v19 = v10 == 0xE600000000000000) : (v19 = 0), v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v11 == 0x6874656B69727473 ? (v20 = v10 == 0xED00006867756F72) : (v20 = 0), v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))))
  {

    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:v5];
LABEL_11:
    v7 = v16;

    goto LABEL_12;
  }

  v21 = v11 == 0x657A6953746E6F66 && v10 == 0xE800000000000000;
  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    goto LABEL_39;
  }

  v27 = v11 == 0x656D614E746E6F66 && v10 == 0xE800000000000000;
  if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];
    goto LABEL_3;
  }

  if (v11 == 0x6574636172616863 && v10 == 0xED00006C6C694672 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11 == 0x6C7974537473696CLL && v10 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
LABEL_39:

    v22 = [objc_opt_self() mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];
LABEL_40:
    v7 = v26;

    goto LABEL_13;
  }

  if ((v11 != 0xD000000000000012 || 0x8000000101551650 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v11 == 0x7061726761726170 && v10 == 0xEE006C6576654C68)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        return 0;
      }
    }

    v13 = [objc_opt_self() mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:v5];
    goto LABEL_11;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  swift_getKeyPath();
  type metadata accessor for CRLWPAttributeDictionary();
  sub_1006ACAD4();
  sub_100A1E6C4();

  if (v31 == 255 || (v31 & 1) != 0)
  {
    return 0;
  }

  v10 = 0;
  if (v30 <= 1)
  {
    if (!v30)
    {
      goto LABEL_2;
    }

    if (v30 != 1)
    {
      return v10;
    }

LABEL_64:
    v22 = [objc_opt_self() mainBundle];
    v23 = String._bridgeToObjectiveC()();
    v24 = String._bridgeToObjectiveC()();
    v25 = String._bridgeToObjectiveC()();
    v26 = [v22 localizedStringForKey:v23 value:v24 table:v25];
    goto LABEL_40;
  }

  if (v30 == 2)
  {
    goto LABEL_64;
  }

  if (v30 != 3)
  {
    if (v30 != 4)
    {
      return v10;
    }

    goto LABEL_64;
  }

LABEL_2:
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];
LABEL_3:
  v7 = v6;

LABEL_12:
LABEL_13:
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_1006AC56C()
{
  v1 = *((swift_isaMask & *v0) + 0xD8);
  type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  v3 = *((swift_isaMask & *v0) + 0xF8);
  v4 = type metadata accessor for CRLWPAttributeDictionary();
  v5 = *(*(v4 - 8) + 8);

  return v5(&v0[v3], v4);
}

id sub_1006AC6E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPFormatTextCommand();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006AC750(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0xD8);
  type metadata accessor for CRLWPFormatTextCommand.CoalescingData();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(&a1[v2], v3);

  v4 = *((swift_isaMask & *a1) + 0xF8);
  v5 = type metadata accessor for CRLWPAttributeDictionary();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

void sub_1006AC8F8()
{
  type metadata accessor for CRLWPStorage();
  if (v0 <= 0x3F)
  {
    sub_1006AC9A4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1006AC9A4()
{
  if (!qword_1019F8788)
  {
    sub_1005C4E5C(&qword_1019F8790);
    sub_1006ACA60(&qword_1019F8798);
    sub_1006ACA60(&qword_1019F87A0);
    v0 = type metadata accessor for CursorRange();
    if (!v1)
    {
      atomic_store(v0, &qword_1019F8788);
    }
  }
}

uint64_t sub_1006ACA60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1005C4E5C(&qword_1019F8790);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1006ACAD4()
{
  result = qword_1019F87A8;
  if (!qword_1019F87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F87A8);
  }

  return result;
}

uint64_t sub_1006ACB58()
{
  if (*v0)
  {
    return 0x695474736574616CLL;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1006ACB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x695474736574616CLL && a2 == 0xEF706D617473656DLL)
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

uint64_t sub_1006ACC7C@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1006ACCA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006ADC28();
  v5 = sub_1006ADC80();

  return static CodingKey<>.intCases.getter(a1, a2, v4, v5);
}

uint64_t sub_1006ACD00(uint64_t a1)
{
  v2 = sub_1006ADC80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1006ACD3C(uint64_t a1)
{
  v2 = sub_1006ADC80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1006ACD78(void *a1)
{
  v3 = sub_1005B981C(&qword_1019F8A98);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1006ADC80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_1006ADA54(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLBoardInteractionOwner(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1006ACF30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v20 = type metadata accessor for UUID();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1005B981C(&qword_1019F8A90);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for CRLBoardInteractionOwner(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1006ADC80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v16 = v10;
  v11 = v18;
  v23 = 0;
  sub_1006ADA54(&qword_1019F43A8, &type metadata accessor for UUID);
  v12 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v16;
  (*(v11 + 32))(v16, v5, v12);
  v22 = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v19 + 8))(v7, v21);
  *(v13 + *(v8 + 20)) = v14;
  sub_1006ADE34(v13, v17);
  sub_100005070(a1);
  return sub_1006ADE98(v13);
}

Swift::Int sub_1006AD26C(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1006ADA54(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + *(a1 + 20)));
  return Hasher._finalize()();
}

void sub_1006AD310(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  sub_1006ADA54(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
}

Swift::Int sub_1006AD39C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1006ADA54(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_1006AD4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1006ADA54(&qword_1019F8A30, type metadata accessor for CRLBoardInteractionOwner);
  v7 = sub_1006ADA54(&qword_1019F8A88, type metadata accessor for CRLBoardInteractionOwner);

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_1006AD690(uint64_t a1)
{
  v2 = sub_1006ADA54(&qword_1019F8AA0, type metadata accessor for CRLBoardInteractionOwner);

  return CRValueStruct.minEncodingVersion.getter(a1, v2);
}

uint64_t sub_1006AD70C()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1006AD7B8()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1006AD84C()
{
  sub_1006AD8C0();
  if (v0 <= 0x3F)
  {
    sub_1006AD940();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1006AD8C0()
{
  if (!qword_1019F89E0)
  {
    type metadata accessor for CRLBoardInteractionOwner(255);
    sub_1005C4E5C(&qword_1019F89E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1019F89E0);
    }
  }
}

void sub_1006AD940()
{
  if (!qword_1019F89F0)
  {
    type metadata accessor for CRLBoardInteractionOwner(255);
    sub_1005C4E5C(&qword_1019F89E8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1019F89F0);
    }
  }
}

uint64_t sub_1006ADA54(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1006ADB78()
{
  result = qword_1019F8A48;
  if (!qword_1019F8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8A48);
  }

  return result;
}

unint64_t sub_1006ADBD0()
{
  result = qword_1019F8A50;
  if (!qword_1019F8A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8A50);
  }

  return result;
}

unint64_t sub_1006ADC28()
{
  result = qword_1019F8A58;
  if (!qword_1019F8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8A58);
  }

  return result;
}

unint64_t sub_1006ADC80()
{
  result = qword_1019F8A60;
  if (!qword_1019F8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8A60);
  }

  return result;
}

unint64_t sub_1006ADCD8()
{
  result = qword_1019F8A68;
  if (!qword_1019F8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8A68);
  }

  return result;
}

unint64_t sub_1006ADD30()
{
  result = qword_1019F8A70;
  if (!qword_1019F8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8A70);
  }

  return result;
}

unint64_t sub_1006ADD88()
{
  result = qword_1019F8A78;
  if (!qword_1019F8A78)
  {
    sub_1005C4E5C(&qword_1019F8A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8A78);
  }

  return result;
}

uint64_t sub_1006ADE34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardInteractionOwner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006ADE98(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardInteractionOwner(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1006ADF08()
{
  result = qword_1019F8AA8;
  if (!qword_1019F8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8AA8);
  }

  return result;
}

unint64_t sub_1006ADF60()
{
  result = qword_1019F8AB0;
  if (!qword_1019F8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8AB0);
  }

  return result;
}

unint64_t sub_1006ADFB8()
{
  result = qword_1019F8AB8;
  if (!qword_1019F8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8AB8);
  }

  return result;
}

uint64_t sub_1006AE0B4@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v56 = type metadata accessor for InputConnectionBehavior();
  v60 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v37[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v2 = sub_1005B981C(&qword_1019F6260);
  __chkstk_darwin(v2 - 8);
  v49 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v54 = &v37[-v5];
  v6 = sub_1005B981C(&qword_1019F6268);
  __chkstk_darwin(v6 - 8);
  v48 = &v37[-v7];
  v8 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v8 - 8);
  v10 = &v37[-v9];
  v11 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v52 = type metadata accessor for LocalizedStringResource();
  v59 = *(v52 - 8);
  __chkstk_darwin(v52);
  v53 = &v37[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v51 = &v37[-v19];
  v41 = sub_1005B981C(&qword_1019F6278);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38 = v20;
  v39 = v11;
  v40 = v12 + 104;
  v21(v14, v20, v11);
  v50 = v21;
  v58 = v10;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v22 = *(v59 + 56);
  v59 += 56;
  v42 = v22;
  v22(v10, 0, 1, v52);
  v23 = type metadata accessor for CRLBoardEntity();
  (*(*(v23 - 8) + 56))(v48, 1, 1, v23);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v14, v20, v11);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = v54;
  IntentDialog.init(_:)();
  v25 = type metadata accessor for IntentDialog();
  v45 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v47 = v26 + 56;
  v46 = v27;
  v27(v24, 0, 1, v25);
  v27(v49, 1, 1, v25);
  v43 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v60 + 104);
  v60 += 104;
  v44 = v28;
  v28(v55);
  sub_1006B0634(&qword_1019F6290, type metadata accessor for CRLBoardEntity);
  *v57 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F8AF8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29 = v38;
  v30 = v39;
  v31 = v50;
  v50(v14, v38, v39);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v31(v14, v29, v30);
  v32 = v58;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v42(v32, 0, 1, v52);
  v63 = 0;
  sub_1005B981C(&qword_101A054A0);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_10146C6B0;
  static UTType.item.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v50(v14, v29, v30);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v33 = v54;
  IntentDialog.init(_:)();
  v46(v33, 0, 1, v45);
  v44(v55, v43, v56);
  v34 = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v35 = v57;
  v57[1] = v34;
  sub_1005B981C(&qword_1019F6280);
  v61 = 0xD00000000000001FLL;
  v62 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v35[2] = AppDependency.__allocating_init(key:manager:)();
  v35[6] = &type metadata for CRLInsertFilesToBoardIntentPerformer;
  v35[7] = &off_101887238;
  result = swift_allocObject();
  v35[3] = result;
  *(result + 40) = &type metadata for CRLAppIntentsBoardItemsImporter;
  *(result + 48) = &off_101891740;
  return result;
}

uint64_t sub_1006AEB6C@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v1 - 8);
  v30 = &v25 - v2;
  v3 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v3 - 8);
  v29 = &v25 - v4;
  v26 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v27 = *(v11 - 8);
  v28 = v11;
  __chkstk_darwin(v11);
  v25 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0x656C694620646441;
  v13._object = 0xED0000206F742073;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  type metadata accessor for CRLBoardEntity();
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v32);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v5 + 104);
  v17 = v7;
  v18 = v7;
  v19 = v26;
  v16(v18, enum case for LocalizedStringResource.BundleDescription.main(_:), v26);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0x656C694620646441;
  v20._object = 0xED0000206F742073;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v32);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v21);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  v16(v17, v15, v19);
  v22 = v29;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v27 + 56))(v22, 0, 1, v28);
  v23 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_1006AF06C(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = type metadata accessor for CRLBoardEntity();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260);
  v2[17] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[21] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[22] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource();
  v2[23] = swift_task_alloc();
  v4 = type metadata accessor for IntentDialog();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v5 = type metadata accessor for UTType();
  v2[27] = v5;
  v2[28] = *(v5 - 8);
  v2[29] = swift_task_alloc();
  sub_1005B981C(&unk_1019F8DB0);
  v2[30] = swift_task_alloc();
  v6 = type metadata accessor for IntentFile();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1006AF3A0, 0, 0);
}

uint64_t sub_1006AF3A0()
{
  result = IntentParameter.wrappedValue.getter();
  v2 = v0[7];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = v0[32];
    v6 = v0[28];
    v39 = (v6 + 48);
    v35 = (v6 + 8);
    v33 = (v5 + 32);
    v37 = (v5 + 8);
    v7 = _swiftEmptyArrayStorage;
    v34 = v5;
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = v0[30];
      v9 = v0[27];
      v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v42 = *(v5 + 72);
      (*(v5 + 16))(v0[34], v2 + v10 + v42 * v4, v0[31]);
      IntentFile.type.getter();
      v11 = (*v39)(v8, 1, v9);
      v12 = v0[30];
      if (v11 == 1)
      {
        sub_10000CAAC(v0[30], &unk_1019F8DB0);
      }

      else
      {
        v36 = v10;
        v13 = v0[29];
        v14 = v0[27];
        static UTType.data.getter();
        v38 = UTType.conforms(to:)();
        v15 = v3;
        v16 = v2;
        v17 = v7;
        v18 = *v35;
        (*v35)(v13, v14);
        v18(v12, v14);
        v7 = v17;
        v2 = v16;
        v3 = v15;
        v5 = v34;
        if (v38)
        {
          v19 = *v33;
          (*v33)(v0[33], v0[34], v0[31]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1007769E4(0, v7[2] + 1, 1);
          }

          v21 = v7[2];
          v20 = v7[3];
          if (v21 >= v20 >> 1)
          {
            sub_1007769E4(v20 > 1, v21 + 1, 1);
          }

          v22 = v0[33];
          v23 = v0[31];
          v7[2] = v21 + 1;
          result = v19(v7 + v36 + v21 * v42, v22, v23);
          goto LABEL_5;
        }
      }

      result = (*v37)(v0[34], v0[31]);
LABEL_5:
      if (v3 == ++v4)
      {
        goto LABEL_15;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_15:
  v0[35] = v7;

  if (v7[2])
  {
    v24 = v0[10];
    sub_100020E58(v24 + 3, v24[6]);
    v0[36] = *v24;
    IntentParameter.wrappedValue.getter();
    AppDependency.wrappedValue.getter();
    v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
    v0[6] = &off_1018AD9D0;
    v25 = swift_task_alloc();
    v0[37] = v25;
    *v25 = v0;
    v25[1] = sub_1006AF99C;
    v26 = v0[16];

    return sub_1007D0658(v7, v26, (v0 + 2));
  }

  else
  {
    v27 = v0[25];
    v40 = v0[26];
    v41 = v0[24];
    v28 = v0[19];
    v29 = v0[20];
    v31 = v0[17];
    v30 = v0[18];

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v28 + 104))(v29, enum case for LocalizedStringResource.BundleDescription.main(_:), v30);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentDialog.init(_:)();
    IntentParameter.projectedValue.getter();
    (*(v27 + 16))(v31, v40, v41);
    (*(v27 + 56))(v31, 0, 1, v41);
    type metadata accessor for AppIntentError();
    sub_1006B0634(&qword_1019F8B08, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_10000CAAC(v31, &qword_1019F6260);
    swift_willThrow();
    (*(v27 + 8))(v40, v41);

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_1006AF99C()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    sub_100689004(*(v2 + 128));

    v3 = sub_1006AFCF0;
  }

  else
  {
    v4 = *(v2 + 128);

    sub_100689004(v4);
    sub_100005070(v2 + 16);
    v3 = sub_1006AFAF8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006AFAF8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  IntentParameter.wrappedValue.getter();
  IntentParameter.wrappedValue.getter();
  v5 = sub_100B0768C();
  sub_1006B05D0(v1, v4);
  sub_1006B05D0(v4, v3);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v4);
  sub_100689004(v1);
  v0[8] = v5;
  sub_1006B0634(&qword_1019F7410, type metadata accessor for CRLBoardEntity);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1006AFCF0()
{
  sub_100005070(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006AFE1C()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD60F8);
  sub_1005EB3DC(v6, qword_101AD60F8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1006B0014()
{
  v0 = sub_1005B981C(&qword_1019F8B10);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_1019F8B18);
  __chkstk_darwin(v1);
  sub_1006B035C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 543450177;
  v2._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_1019F8B20);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(qword_1019F8B28);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1006B0210@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1488 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD60F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1006B02BC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_1006AF06C(a1);
}

unint64_t sub_1006B035C()
{
  result = qword_1019F8AC0;
  if (!qword_1019F8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8AC0);
  }

  return result;
}

uint64_t sub_1006B03CC()
{
  v0 = sub_1005B981C(&qword_1019F8AD0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  swift_getKeyPath();
  sub_1006B035C();
  IntentPrediction.init<A, B>(parameters:displayRepresentation:)();
  sub_10001A2F8(&qword_1019F8AC8, &qword_1019F8AD0);
  static IntentPredictionsBuilder.buildExpression<A>(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  static IntentPredictionsBuilder.buildBlock<A>(_:)();
  return (v7)(v6, v0);
}

uint64_t sub_1006B0584(uint64_t a1)
{
  v2 = sub_1006B035C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1006B05D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006B0634(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006B067C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1006B0734(uint64_t a1, uint64_t a2, int a3)
{
  v5 = v3;
  v7 = (swift_isaMask & *v3);
  v8 = v7[28];
  swift_beginAccess();
  v9 = *(v5 + v8);
  sub_1012E0400(v9, &off_10188FE10);

  if (!v4)
  {
    v16 = &v13;
    __chkstk_darwin(v10);
    swift_beginAccess();
    v13 = (*(v7[27] + 40))(v15, v7[25], v7[27]);
    v14 = a3;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    type metadata accessor for Capsule();
    Capsule.mutate<A>(_:)();
    v13(v15, 0);
    swift_endAccess();
    v11 = *((swift_isaMask & *v5) + 0xE0);
    swift_beginAccess();
    v12 = *(v5 + v11);
    sub_1012CF6CC(v12, &off_10188FE10, v14);
  }
}

uint64_t sub_1006B09C4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  (*(v4 + 16))(&v9[-v6], v5 + *((v3 & v2) + 0xE8), v1);
  v7 = Capsule.Ref.root.modify();
  swift_setAtWritableKeyPath();
  return v7(v9, 0);
}

uint64_t sub_1006B0B5C()
{
  v1 = *v0;
  v2 = swift_isaMask;

  (*(*(*((v2 & v1) + 0xD0) - 8) + 8))(&v0[*((swift_isaMask & *v0) + 0xE8)]);
}

id sub_1006B0C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetCapsuleValue();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1006B0CE4(char *a1)
{
  v2 = *a1;
  v3 = swift_isaMask;

  (*(*(*((v3 & v2) + 0xD0) - 8) + 8))(&a1[*((swift_isaMask & *a1) + 0xE8)]);
}

unint64_t sub_1006B0E04()
{
  result = qword_1019F8BB0;
  if (!qword_1019F8BB0)
  {
    _s15CapsuleDatabaseVMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1019F8BB0);
  }

  return result;
}

uint64_t sub_1006B0E5C()
{
  v0 = sub_1006B1814();

  return v0;
}

void (*sub_1006B0E98(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x90uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = sub_1005B981C(&unk_101A2C890);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[11] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v11 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v4[13] = v9;
  v4[14] = v11;
  v4[15] = type metadata accessor for CRLTableItemData();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = qword_101AD9268;
  swift_beginAccess();
  v14 = *(v7 + 16);
  v4[16] = v14;
  v4[17] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v10, v12 + v13, v5);
  return sub_1006B1038;
}

void sub_1006B1038(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 96);
  v3 = *(*a1 + 104);
  if (a2)
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);
    (*(v2 + 128))(*(v2 + 96), *(v2 + 104), v5);
    v7 = swift_dynamicCastClassUnconditional();
    v8 = qword_101AD9268;
    swift_beginAccess();
    v9 = *(v6 + 40);

    v9(v7 + v8, v4, v5);
    swift_endAccess();

    (*(v6 + 8))(v3, v5);
  }

  else
  {
    v10 = *(v2 + 80);
    v11 = *(v2 + 88);
    v12 = swift_dynamicCastClassUnconditional();
    v13 = qword_101AD9268;
    swift_beginAccess();
    v14 = *(v11 + 40);

    v14(v12 + v13, v3, v10);
    swift_endAccess();
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t sub_1006B11D8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CRLTableItemData();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = qword_101AD9268;
  swift_beginAccess();
  v4 = sub_1005B981C(&unk_101A2C890);
  return (*(*(v4 - 8) + 16))(a1, v2 + v3, v4);
}

uint64_t sub_1006B12A8(uint64_t a1)
{
  type metadata accessor for CRLTableItemData();
  v2 = swift_dynamicCastClassUnconditional();
  v3 = qword_101AD9268;
  swift_beginAccess();

  v4 = sub_1005B981C(&unk_101A2C890);
  (*(*(v4 - 8) + 40))(v2 + v3, a1, v4);
  swift_endAccess();
}

void (*sub_1006B1390(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1006B0E98(v2);
  return sub_1006B1404;
}

void sub_1006B1404(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1006B144C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_101AD9268;
  swift_beginAccess();
  v5 = sub_1005B981C(&unk_101A2C890);
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1006B14E8(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_101AD9268;
  swift_beginAccess();
  v5 = sub_1005B981C(&unk_101A2C890);
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

void (*sub_1006B158C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1005B981C(&unk_101A2C890);
  v4[9] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[10] = v6;
  v8 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[11] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[11] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v10 = v9;
  v4[12] = v9;
  v11 = *v1;
  v12 = qword_101AD9268;
  v4[13] = v11;
  v4[14] = v12;
  swift_beginAccess();
  v13 = *(v7 + 16);
  v4[15] = v13;
  v4[16] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v10, v11 + v12, v5);
  return sub_1006B16F8;
}

void sub_1006B16F8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 104);
  v3 = *(*a1 + 112);
  v6 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 80);
  if (a2)
  {
    (*(v2 + 120))(*(v2 + 88), *(v2 + 96), *(v2 + 72));
    swift_beginAccess();
    (*(v8 + 40))(v4 + v3, v6, v7);
    swift_endAccess();
    (*(v8 + 8))(v5, v7);
  }

  else
  {
    swift_beginAccess();
    (*(v8 + 40))(v4 + v3, v5, v7);
    swift_endAccess();
  }

  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_1006B1898(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6572756C6961662ELL;
    }

    if (a1 == 3)
    {
      return 0x6C6C65636E61632ELL;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x72676F72506E692ELL;
    }

    if (a1 == 1)
    {
      return 0x737365636375732ELL;
    }
  }

  type metadata accessor for CRLAssetDownloadObserverStatus(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t sub_1006B1964()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x72676F72506E692ELL;
    }

    if (v1 == 1)
    {
      return 0x737365636375732ELL;
    }

    goto LABEL_11;
  }

  if (v1 == 2)
  {
    return 0x6572756C6961662ELL;
  }

  if (v1 != 3)
  {
LABEL_11:
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  return 0x6C6C65636E61632ELL;
}

uint64_t sub_1006B1A34(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5, uint64_t a6)
{
  v66 = a6;
  v72 = a4;
  v73 = a5;
  v9 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v9 - 8);
  v70 = &v61 - v10;
  v11 = type metadata accessor for UUID();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v61 - v15;
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v71 = &v61 - v22;
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v61 - v25;
  v67 = a3;
  [a3 setCompletedUnitCount:{1, v24}];
  sub_10001ACF0(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_10000CAAC(v16, &unk_1019F33C0);
    if (a2)
    {
      v27 = a2;
    }

    else
    {
      sub_1006B305C();
      v27 = swift_allocError();
      *v57 = 10;
    }

    swift_errorRetain();
    v72(v27, 0, 1);
  }

  else
  {
    v65 = *(v18 + 32);
    v65(v26, v16, v17);
    v28 = objc_allocWithZone(CRLTemporaryDirectory);
    v74 = 0;
    v29 = [v28 initWithError:&v74];
    if (v29)
    {
      v30 = v29;
      v63 = v18 + 32;
      v31 = v74;
      v64 = v30;
      v32 = [v30 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init()();
      UUID.uuidString.getter();
      (*(v68 + 8))(v13, v69);
      URL.appendingPathComponent(_:)();

      v68 = *(v18 + 8);
      v69 = v18 + 8;
      (v68)(v20, v17);
      v33 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v34);
      v36 = v35;
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      v74 = 0;
      v40 = [v33 copyItemAtURL:v36 toURL:v38 error:&v74];

      v41 = v74;
      if (v40)
      {
        v42 = type metadata accessor for TaskPriority();
        (*(*(v42 - 8) + 56))(v70, 1, 1, v42);
        (*(v18 + 16))(v20, v71, v17);
        v43 = (*(v18 + 80) + 40) & ~*(v18 + 80);
        v44 = (v19 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        v45 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
        v46 = swift_allocObject();
        *(v46 + 2) = 0;
        *(v46 + 3) = 0;
        v62 = v26;
        v47 = v65;
        *(v46 + 4) = v66;
        v47(&v46[v43], v20, v17);
        v48 = v67;
        *&v46[v44] = v67;
        v49 = &v46[v45];
        v50 = v73;
        *v49 = v72;
        *(v49 + 1) = v50;
        v51 = v64;
        *&v46[(v45 + 23) & 0xFFFFFFFFFFFFFFF8] = v64;
        v52 = v41;

        v53 = v48;

        v54 = v51;
        sub_10064191C(0, 0, v70, &unk_101471F98, v46);

        v55 = v68;
        (v68)(v71, v17);
        return v55(v62, v17);
      }

      v60 = v74;
      v59 = _convertNSErrorToError(_:)();

      swift_willThrow();
      (v68)(v71, v17);
    }

    else
    {
      v58 = v74;
      v59 = _convertNSErrorToError(_:)();

      swift_willThrow();
    }

    swift_errorRetain();
    v72(v59, 0, 1);

    return (*(v18 + 8))(v26, v17);
  }
}

uint64_t sub_1006B20C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1006B216C;

  return sub_1006B23D4(a5);
}

uint64_t sub_1006B216C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_1006B2340;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_1006B22A0;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1006B22A0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  [*(v0 + 16) setCompletedUnitCount:2];
  v3 = swift_unknownObjectRetain();
  v2(v3, v1, 0);
  swift_unknownObjectRelease_n();
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1006B2340()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1, 0, 1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006B23D4(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for URL();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_1006B2494, 0, 0);
}

uint64_t sub_1006B2494()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  (*(v2 + 16))(v1, *(v0 + 72), v3);
  CoordinatorChannelProvider = type metadata accessor for CRLItemProviderReadAssistant.ReadCoordinatorChannelProvider();
  v6 = swift_allocObject();
  *(v0 + 112) = v6;
  (*(v2 + 32))(v6 + OBJC_IVAR____TtCC8Freeform28CRLItemProviderReadAssistantP33_EF9C16D469B33CFEED27B42BD64D986830ReadCoordinatorChannelProvider_directoryURL, v1, v3);
  v8 = *(v4 + 16);
  v7 = *(v4 + 24);
  *(v0 + 40) = CoordinatorChannelProvider;
  *(v0 + 48) = &off_101880F30;
  *(v0 + 16) = v6;
  type metadata accessor for CRLSerializableObjectReadCoordinator();
  v9 = swift_allocObject();
  *(v0 + 120) = v9;
  v10 = OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata;
  v11 = type metadata accessor for CRLProto_ObjectMetadata(0);
  (*(*(v11 - 8) + 56))(&v9[v10], 1, 1, v11);
  sub_10000630C(v0 + 16, (v9 + 16));
  *(v9 + 7) = v8;
  *(v9 + 8) = v7;
  *(v9 + 9) = 7;
  v12 = type metadata accessor for CRLUUIDRemapHelper();
  v13 = objc_allocWithZone(v12);
  *&v13[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_objectUUIDMap] = _swiftEmptyDictionarySingleton;
  *&v13[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_assetUUIDMap] = _swiftEmptyDictionarySingleton;
  v13[OBJC_IVAR____TtC8Freeform18CRLUUIDRemapHelper_shouldResetObjectUUIDs] = 1;
  *(v0 + 56) = v13;
  *(v0 + 64) = v12;

  v14 = v8;
  v15 = v7;
  v16 = objc_msgSendSuper2((v0 + 56), "init");
  sub_100005070(v0 + 16);
  *(v9 + 10) = v16;
  v17 = swift_task_alloc();
  *(v0 + 128) = v17;
  *v17 = v0;
  v17[1] = sub_1006B26B8;

  return sub_100D34EEC();
}

uint64_t sub_1006B26B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1006B28E8;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1006B27EC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1006B27EC()
{
  v1 = v0[15];
  swift_setDeallocating();
  sub_100005070((v1 + 2));

  sub_10000CAAC(v1 + OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata, &qword_1019F8DA8);
  swift_deallocClassInstance();

  v2 = v0[1];
  v4 = v0[18];
  v3 = v0[19];

  return v2(v3, v4);
}

uint64_t sub_1006B28E8()
{
  v1 = *(v0 + 120);
  swift_setDeallocating();
  sub_100005070((v1 + 2));

  sub_10000CAAC(v1 + OBJC_IVAR____TtC8Freeform36CRLSerializableObjectReadCoordinator_metadata, &qword_1019F8DA8);
  swift_deallocClassInstance();

  v2 = *(v0 + 8);

  return v2();
}

id sub_1006B29E0()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v17 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v7 pathExtension];

  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();
  }

  v9 = [v6 stringByAppendingPathComponent:v8];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URL.appendingPathComponent(_:)();

  v10 = URL.checkResourceIsReachable()();
  if (v11)
  {
    (*(v1 + 8))(v5, v0);

    return 0;
  }

  else if (v10)
  {
    v13 = v17;
    (*(v1 + 16))(v17, v5, v0);
    v14 = objc_allocWithZone(CRLFileIOChannel);
    v15 = sub_100AD54AC(v13);
    (*(v1 + 8))(v5, v0);
    return v15;
  }

  else
  {
    (*(v1 + 8))(v5, v0);
    return 0;
  }
}

uint64_t sub_1006B2C7C()
{
  v1 = OBJC_IVAR____TtCC8Freeform28CRLItemProviderReadAssistantP33_EF9C16D469B33CFEED27B42BD64D986830ReadCoordinatorChannelProvider_directoryURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1006B2D70()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  URL.appendingPathComponent(_:)();
  (*(v2 + 16))(v4, v7, v1);
  v8 = objc_allocWithZone(CRLFileIOChannel);
  v9 = sub_100AD54AC(v4);
  if (v0)
  {
    return (*(v2 + 8))(v7, v1);
  }

  v11 = v9;
  (*(v2 + 8))(v7, v1);
  return v11;
}

uint64_t sub_1006B2F14()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLItemProviderReadAssistant.ReadCoordinatorChannelProvider()
{
  result = qword_1019F8D08;
  if (!qword_1019F8D08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006B2FCC()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1006B305C()
{
  result = qword_101A05100;
  if (!qword_101A05100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A05100);
  }

  return result;
}

uint64_t sub_1006B30B0(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = *(v1 + v6);
  v12 = *(v1 + v6 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_10002D3D4;

  return sub_1006B20C4(a1, v7, v8, v9, v1 + v4, v10, v11, v12);
}

uint64_t sub_1006B3330(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, void *a8)
{
  v124 = a8;
  v128 = a7;
  v129 = a6;
  v120 = a3;
  v121 = a5;
  v118 = a4;
  v127 = type metadata accessor for URL();
  v130 = *(v127 - 1);
  __chkstk_darwin(v127);
  v125 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v117 = &v116 - v11;
  __chkstk_darwin(v12);
  v14 = &v116 - v13;
  v122 = _s24ImportableRichTextObjectOMa(0);
  __chkstk_darwin(v122);
  v123 = (&v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v126 = (&v116 - v17);
  v18 = sub_1005B981C(&qword_1019F8DD8);
  __chkstk_darwin(v18);
  v20 = (&v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v23 = &v116 - v22;
  v24 = _s18LoadedRichTextTypeOMa(0);
  __chkstk_darwin(v24);
  v26 = (&v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27);
  v29 = &v116 - v28;
  __chkstk_darwin(v30);
  v131 = &v116 - v31;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v33 = result;
  sub_10000BE14(a1, v23, &qword_1019F8DD8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v119 = v33;
  if (EnumCaseMultiPayload != 1)
  {
LABEL_30:
    v72 = v131;
    sub_1006B605C(v23, v131);
    v73 = [v120 suggestedName];
    if (v73)
    {
      v74 = v73;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;
    }

    else
    {
      v76 = 0;
    }

    v81 = v121;
    sub_1006B60C0(v72, v29, _s18LoadedRichTextTypeOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v82 = *(v29 + *(sub_1005B981C(&qword_1019F8DE0) + 48));
      v83 = v29;
      v84 = v127;
      v130[1](v83, v127);
    }

    else
    {
      v82 = *v29;
      v84 = v127;
    }

    if ([v82 length] <= v81)
    {

      v86 = v126;
      *v126 = v82;
    }

    else
    {
      sub_1006B60C0(v72, v26, _s18LoadedRichTextTypeOMa);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v99 = v82;
        sub_1006B6128(v26, _s18LoadedRichTextTypeOMa);
        if (!v76)
        {
          v100 = [v119 defaultTextFileName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v88 = v124;
        v87 = v125;
        v101 = v118;
        v102 = String._bridgeToObjectiveC()();

        v132[0] = 0;
        v103 = [v99 crl_writeToFileUsingName:v102 type:v101 error:v132];

        v104 = v132[0];
        if (v103)
        {
          v105 = v117;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          v106 = v104;

          v86 = v126;
          v107 = v105;
          v84 = v127;
          (v130[4])(v126, v107, v127);
        }

        else
        {
          v108 = v132[0];
          v109 = _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100006370(0, &qword_1019F6EE0);
          v110 = static OS_os_log.default.getter();
          sub_1005B981C(&qword_1019F54E0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          v132[0] = v109;
          swift_errorRetain();
          sub_1005B981C(&unk_1019F6B40);
          v112 = String.init<A>(describing:)();
          v114 = v113;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v112;
          *(inited + 40) = v114;
          v115 = static os_log_type_t.error.getter();
          sub_100005404(v110, &_mh_execute_header, v115, "Error trying to write long string to a file", 43, 2, inited);

          swift_setDeallocating();
          sub_100005070(inited + 32);
          v86 = v126;
          v84 = v127;
          *v126 = v99;
        }

        goto LABEL_43;
      }

      v85 = v130[4];
      (v85)(v14, v26, v84);
      v86 = v126;
      (v85)(v126, v14, v84);
    }

    v88 = v124;
    v87 = v125;
LABEL_43:
    swift_storeEnumTagMultiPayload();
    v89 = v123;
    sub_1006B60C0(v86, v123, _s24ImportableRichTextObjectOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v90 = *v89;
      v91 = [v88 providersForBoardItemsFromImportedRichText:*v89];
      sub_1005B981C(&qword_1019F8DC0);
      v92 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v129(v92);
    }

    else
    {
      v93 = v130;
      (v130[4])(v87, v89, v84);
      sub_1005B981C(&unk_1019F6B30);
      v94 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_10146C6B0;
      (v93[2])(v95 + v94, v87, v84);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v97 = [v88 providersForBoardItemsFromURLs:isa];

      if (v97)
      {
        sub_1005B981C(&qword_1019F8DC0);
        v98 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        v98 = _swiftEmptyArrayStorage;
      }

      v129(v98);

      v130[1](v87, v84);
    }

    sub_1006B6128(v86, _s24ImportableRichTextObjectOMa);
    return sub_1006B6128(v131, _s18LoadedRichTextTypeOMa);
  }

  sub_10000CAAC(v23, &qword_1019F8DD8);
  sub_10000BE14(a1, v20, &qword_1019F8DD8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    return sub_10000CAAC(v20, &qword_1019F8DD8);
  }

  v35 = *v20;
  sub_1005B981C(&qword_1019F54E0);
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_10146C6B0;
  v132[0] = v35;
  v130 = v35;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40);
  v36 = String.init<A>(describing:)();
  v38 = v37;
  *(v29 + 56) = &type metadata for String;
  v39 = sub_1000053B0();
  *(v29 + 32) = v36;
  v40 = v29 + 32;
  v131 = v39;
  *(v29 + 64) = v39;
  *(v29 + 40) = v38;
  v127 = objc_opt_self();
  LODWORD(v14) = [v127 _atomicIncrementAssertCount];
  v132[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(v29, v132);
  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v41 = String._bridgeToObjectiveC()();

  v42 = [v41 lastPathComponent];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_60;
  }

LABEL_5:
  v46 = static OS_os_log.crlAssert;
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_10146CA70;
  *(v47 + 56) = &type metadata for Int32;
  *(v47 + 64) = &protocol witness table for Int32;
  *(v47 + 32) = v14;
  v48 = sub_100006370(0, &qword_1019F4D30);
  *(v47 + 96) = v48;
  v49 = sub_1005CF04C();
  *(v47 + 72) = v26;
  v50 = v131;
  *(v47 + 136) = &type metadata for String;
  *(v47 + 144) = v50;
  *(v47 + 104) = v49;
  *(v47 + 112) = v43;
  *(v47 + 120) = v45;
  *(v47 + 176) = &type metadata for UInt;
  *(v47 + 184) = &protocol witness table for UInt;
  *(v47 + 152) = 54;
  v51 = v132[0];
  *(v47 + 216) = v48;
  *(v47 + 224) = v49;
  *(v47 + 192) = v51;
  v52 = v26;
  v53 = v51;
  v54 = static os_log_type_t.error.getter();
  sub_100005404(v46, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v47);
  swift_setDeallocating();
  v126 = sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v55 = static os_log_type_t.error.getter();
  sub_100005404(v46, &_mh_execute_header, v55, "Error importing rich text file: %@", 34, 2, v29);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v45 = v26 + 3;
  v26[4] = 0;
  v26[5] = 0;
  v131 = v29;
  v14 = *(v29 + 16);
  if (v14)
  {
    v56 = 0;
    v29 = 40;
    while (1)
    {
      v57 = (v40 + 40 * v56);
      v43 = v57[3];
      sub_100020E58(v57, v43);
      v58 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v23 = *v45;
      v59 = *(v58 + 16);
      v60 = __OFADD__(*v45, v59);
      v61 = *v45 + v59;
      if (v60)
      {
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        swift_once();
        goto LABEL_5;
      }

      v62 = v26[4];
      if (v62 >= v61)
      {
        goto LABEL_22;
      }

      if (v62 + 0x4000000000000000 < 0)
      {
        goto LABEL_58;
      }

      v43 = v26[5];
      if (2 * v62 > v61)
      {
        v61 = 2 * v62;
      }

      v26[4] = v61;
      if ((v61 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_59;
      }

      v63 = v40;
      v64 = v58;
      v65 = swift_slowAlloc();
      v66 = v65;
      v26[5] = v65;
      if (v43)
      {
        break;
      }

      v58 = v64;
      v40 = v63;
      v29 = 40;
      if (!v66)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

LABEL_23:
      v68 = *(v58 + 16);
      if (v68)
      {
        v69 = (v58 + 32);
        v70 = *v45;
        while (1)
        {
          v71 = *v69++;
          *&v66[8 * v70] = v71;
          v70 = *v45 + 1;
          if (__OFADD__(*v45, 1))
          {
            break;
          }

          *v45 = v70;
          if (!--v68)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_7:

      if (++v56 == v14)
      {
        goto LABEL_33;
      }
    }

    if (v65 != v43 || v65 >= &v43[8 * v23])
    {
      memmove(v65, v43, 8 * v23);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v58 = v64;
    v40 = v63;
    v29 = 40;
LABEL_22:
    v66 = v26[5];
    if (!v66)
    {
      goto LABEL_29;
    }

    goto LABEL_23;
  }

LABEL_33:
  v77 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v78 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v79 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v80 = String._bridgeToObjectiveC()();

  [v127 handleFailureInFunction:v78 file:v79 lineNumber:54 isFatal:0 format:v80 args:v77];

  swift_setDeallocating();
  swift_arrayDestroy();
  v129(_swiftEmptyArrayStorage);
}