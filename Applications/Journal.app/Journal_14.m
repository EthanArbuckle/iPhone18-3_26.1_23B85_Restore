void sub_10018E15C()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:1];

  qword_100B2F4B8 = v2;
}

void sub_10018E1DC()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:1];

  qword_100B2F4C0 = v2;
}

void sub_10018E25C()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:1];

  qword_100B2F4C8 = v2;
}

void sub_10018E2DC()
{
  v0 = objc_allocWithZone(CSCustomAttributeKey);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithKeyName:v1 searchable:1 searchableByDefault:1 unique:1 multiValued:0];

  qword_100B2F4D0 = v2;
}

void sub_10018E35C(uint64_t a1)
{
  if (qword_100ACFA10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  if (qword_100B2F4B8)
  {
    if (a1)
    {
      v2 = qword_100B2F4B8;
      sub_1000F24EC(&qword_100AD60A0);
      sub_1000F24EC(&unk_100AD9A70);
      if (swift_dynamicCast())
      {
        [v1 setValue:v4 forCustomKey:v2];

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  else
  {
  }
}

uint64_t sub_10018E47C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD60A8);
  v1 = sub_10000617C(v0, qword_100AD60A8);
  if (qword_100AD0258 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B301A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10018E544(void *a1)
{
  *&v1[OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_locationUpdatesTask] = 0;
  v1[OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_enableUserTrackingButton] = 0;
  result = [objc_opt_self() buttonWithMapView:a1];
  if (result)
  {
    v4 = OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_userLocationButton;
    *&v1[OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_userLocationButton] = result;
    [result setTranslatesAutoresizingMaskIntoConstraints:0];
    [*&v1[v4] _setSelectsWhenTracking:0];
    v5 = *&v1[v4];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 labelColor];
    v9 = [v8 colorWithAlphaComponent:0.64];

    [v7 setTintColor:v9];
    v10 = [*&v1[v4] widthAnchor];
    v11 = [v10 constraintGreaterThanOrEqualToConstant:28.0];

    [v11 setActive:1];
    v15.receiver = v1;
    v15.super_class = type metadata accessor for MapUserTrackingBarButtonItem();
    v12 = objc_msgSendSuper2(&v15, "init");
    v13 = *&v12[OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_userLocationButton];
    v14 = v12;
    [v14 setCustomView:v13];
    sub_10018E764();

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10018E764()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_locationUpdatesTask;
  if (!*(v0 + OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_locationUpdatesTask))
  {
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v7 = v0;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;

    *(v7 + v4) = sub_1003E9628(0, 0, v3, &unk_100944C80, v9);
  }
}

uint64_t sub_10018E8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = type metadata accessor for CLServiceSession.Diagnostic();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6100);
  v4[19] = swift_task_alloc();
  v6 = type metadata accessor for CLServiceSession.Diagnostics.Iterator();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for CLServiceSession.AuthorizationRequirement();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v4[26] = type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return _swift_task_switch(sub_10018EAC8, v9, v8);
}

uint64_t sub_10018EAC8()
{
  (*(v0[24] + 104))(v0[25], enum case for CLServiceSession.AuthorizationRequirement.whenInUse(_:), v0[23]);
  type metadata accessor for CLServiceSession();
  swift_allocObject();
  v0[30] = CLServiceSession.init(authorization:fullAccuracyPurposeKey:)();
  CLServiceSession.diagnostics.getter();
  CLServiceSession.Diagnostics.makeAsyncIterator()();

  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v0[31] = static MainActor.shared.getter();
  v1 = sub_10018F59C();
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_10018EC4C;
  v3 = v0[19];
  v4 = v0[20];

  return dispatch thunk of AsyncIteratorProtocol.next()(v3, v4, v1);
}

uint64_t sub_10018EC4C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 248);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10018F184;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_10018EDE4;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_10018EDE4()
{

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return _swift_task_switch(sub_10018EE48, v1, v2);
}

uint64_t sub_10018EE48()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));

    CLServiceSession.invalidate()();

    v4 = *(v0 + 8);

    return v4();
  }

  (*(v3 + 32))(*(v0 + 144), v1, v2);
  if ((CLServiceSession.Diagnostic.authorizationDenied.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationDeniedGlobally.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationRequestInProgress.getter() & 1) == 0 && (CLServiceSession.Diagnostic.authorizationRestricted.getter() & 1) == 0 && (CLServiceSession.Diagnostic.serviceSessionRequired.getter() & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_13;
    }

    v7 = Strong;
    *(Strong + OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_enableUserTrackingButton) = 1;
    [Strong setHidden:0];
    goto LABEL_12;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    *(v6 + OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_enableUserTrackingButton) = 0;
    [v6 setHidden:1];
LABEL_12:
  }

LABEL_13:
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = *(v8 + OBJC_IVAR____TtC7Journal28MapUserTrackingBarButtonItem_enableUserTrackingButton);
    if (qword_100ACFB30 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = sub_1000F24EC(&qword_100AEE0E0);
    sub_10000617C(v14, qword_100B2F5B8);
    *(v0 + 272) = v10;
    swift_beginAccess();
    Tips.Parameter.wrappedValue.setter();
    swift_endAccess();

    (*(v12 + 8))(v11, v13);
  }

  else
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
  }

  *(v0 + 248) = static MainActor.shared.getter();
  v15 = sub_10018F59C();
  v16 = swift_task_alloc();
  *(v0 + 256) = v16;
  *v16 = v0;
  v16[1] = sub_10018EC4C;
  v17 = *(v0 + 152);
  v18 = *(v0 + 160);

  return dispatch thunk of AsyncIteratorProtocol.next()(v17, v18, v15);
}

uint64_t sub_10018F184()
{
  v0[14] = v0[33];
  sub_1000F24EC(&qword_100AD5BC0);
  swift_willThrowTypedImpl();

  v1 = v0[28];
  v2 = v0[29];

  return _swift_task_switch(sub_10018F220, v1, v2);
}

uint64_t sub_10018F220()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  CLServiceSession.invalidate()();

  if (qword_100ACFA30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000617C(v4, qword_100AD60A8);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "error occurred while trying to stream current location: %@", v7, 0xCu);
    sub_10012B714(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

id sub_10018F444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapUserTrackingBarButtonItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10018F4E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10018E8E0(a1, v4, v5, v6);
}

unint64_t sub_10018F59C()
{
  result = qword_100AEE0D0;
  if (!qword_100AEE0D0)
  {
    type metadata accessor for CLServiceSession.Diagnostics.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE0D0);
  }

  return result;
}

uint64_t sub_10018F750()
{
  swift_getObjectType();
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor:v2];

  [v0 setScrollEnabled:0];
  [v0 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v3 = [v0 textContainer];
  [v3 setLineFragmentPadding:0.0];

  [v0 setAllowsEditingTextAttributes:0];
  v4 = [v0 _placeholderLabel];
  if (v4)
  {
    v5 = v4;
    [v4 setIsAccessibilityElement:0];
  }

  if (qword_100AD0840 != -1)
  {
    swift_once();
  }

  v6 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityLabel:v6];

  v7 = [v0 traitCollection];
  v8 = sub_10010BCB8(v7);

  [v0 setFont:v8];
  [v0 setAdjustsFontForContentSizeCategory:1];
  v9 = [v1 labelColor];
  [v0 setTextColor:v9];

  if (qword_100AD0488 != -1)
  {
    swift_once();
  }

  v10 = objc_allocWithZone(NSAttributedString);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithString:v11 attributes:0];

  [v0 setAttributedPlaceholder:v12];
  [v0 setPasteDelegate:v0];
  sub_1000F24EC(&unk_100AEBEC0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100940080;
  *(v13 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v13 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940050;
  *(v14 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v14 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v14 + 48) = type metadata accessor for UITraitLegibilityWeight();
  *(v14 + 56) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();
}

void sub_10018FAE8()
{
  v1 = v0;
  v2 = type metadata accessor for MergeResult();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD6258);
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v61 = &v54 - v5;
  v6 = type metadata accessor for MergeableEntryAttributes();
  v63 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&qword_100AD6260);
  __chkstk_darwin(v9 - 8);
  v11 = &v54 - v10;
  v65 = sub_1000F24EC(&unk_100AD6240);
  v62 = *(v65 - 8);
  __chkstk_darwin(v65);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v54 - v15;
  __chkstk_darwin(v17);
  v64 = &v54 - v18;
  v19 = type metadata accessor for JournalFeatureFlags();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 104))(v23, enum case for JournalFeatureFlags.enhancedSync(_:), v19, v21);
  v24 = JournalFeatureFlags.isEnabled.getter();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v25 = [v1 textStorage];
    sub_1000F24EC(&qword_100AEBDF0);
    v26 = swift_dynamicCastClass();
    if (!v26)
    {
LABEL_5:

      goto LABEL_6;
    }

    v27 = v26;
    v55 = v25;
    v28 = *&v1[OBJC_IVAR____TtC7Journal22CanvasMomentsTitleView_journalEntry];
    v29 = OBJC_IVAR____TtC7Journal14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_10007BD08(v28 + v29, v11);
    v30 = v63;
    if (v63[6](v11, 1, v6))
    {
      sub_100004F84(v11, &qword_100AD6260);
      v25 = v55;
      goto LABEL_5;
    }

    v30[2](v8, v11, v6);
    sub_100004F84(v11, &qword_100AD6260);
    MergeableEntryAttributes.title.getter();
    (v30[1])(v8, v6);
    v35 = v62;
    v36 = v65;
    (*(v62 + 32))(v64, v16, v65);
    v37 = *((swift_isaMask & *v27) + 0x68);
    swift_beginAccess();
    v38 = *(v35 + 16);
    (v38)(v13, v27 + v37, v36);
    v39 = [v1 selectedRange];
    v54 = v1;
    v40 = [v1 selectedRange];
    v42 = __OFADD__(v40, v41);
    v43 = &v40[v41];
    if (v42)
    {
      __break(1u);
    }

    else
    {
      v44 = v61;
      if (v43 >= v39)
      {
        v45 = v65;
        CRAttributedString.cursor(range:)();
        v46 = *(v35 + 8);
        v46(v13, v45);
        (v38)(v13, v27 + v37, v45);
        swift_beginAccess();
        v63 = v38;
        v47 = v58;
        CRAttributedString.merge(_:)();
        swift_endAccess();
        (*(v59 + 8))(v47, v60);
        sub_1002D0A44(v13);
        v46(v13, v45);
        (v63)(v13, v27 + v37, v45);
        v48 = CRAttributedString.range(of:)();
        v50 = v49;
        v52 = v51;
        v46(v13, v45);
        v53 = v55;
        if (v52)
        {
LABEL_14:

          (*(v56 + 8))(v44, v57);
          v46(v64, v65);
          return;
        }

        if (!__OFSUB__(v50, v48))
        {
          [v54 setSelectedRange:{v48, v50 - v48}];
          goto LABEL_14;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_6:
  v31 = sub_1000819F8();
  if (v31)
  {
    v32 = v31;
    v33 = [v31 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v34 = String._bridgeToObjectiveC()();

  [v1 setText:v34];
}

void sub_100190240(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD6238);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_1000F24EC(&unk_100AD6240);
  v8 = *(v7 - 8);
  *&v9 = __chkstk_darwin(v7).n128_u64[0];
  v11 = &v18 - v10;
  v19 = [v2 textStorage];
  sub_1000F24EC(&qword_100AEBDF0);
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = *((swift_isaMask & *v12) + 0x68);
    v14 = v12;
    swift_beginAccess();
    (*(v8 + 16))(v11, &v14[v13], v7);
    v15 = sub_1000F24EC(&qword_100AD6250);
    v16 = *(v15 - 8);
    (*(v16 + 16))(v6, a1, v15);
    (*(v16 + 56))(v6, 0, 1, v15);
    swift_beginAccess();
    CRAttributedString.apply(_:)();
    swift_endAccess();
    sub_100004F84(v6, &qword_100AD6238);
    sub_1002D0A44(v11);

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v17 = v19;
  }
}

void sub_100190518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    sub_1000777B4();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v9.receiver = v5;
  v9.super_class = type metadata accessor for CanvasMomentsTitleView();
  objc_msgSendSuper2(&v9, "setMarkedText:selectedRange:", v8, a3, a4);
}

void sub_100190680(uint64_t a1, uint64_t a2)
{
  if (a1 == 9 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = sub_100658B00();
      [v8 becomeFirstResponder];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v14 = a1;
    v15 = a2;
    v12 = 10;
    v13 = 0xE100000000000000;
    v10 = 32;
    v11 = 0xE100000000000000;
    v7 = sub_1000777B4();
    v5 = v2;
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v6 = String._bridgeToObjectiveC()();

    v9.receiver = v5;
    v9.super_class = type metadata accessor for CanvasMomentsTitleView();
    objc_msgSendSuper2(&v9, "insertText:", v6, &type metadata for String, v7, v7, v7);
  }
}

double sub_100190830@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 isFirstResponder];
  v4 = type metadata accessor for CanvasMomentsTitleView();
  if (v3)
  {
    *(a1 + 24) = v4;
    *a1 = v7;

    v5 = v7;
  }

  else
  {
    v10.receiver = v7;
    v10.super_class = v4;
    if (objc_msgSendSuper2(&v10, "_accessibilityResponderElement"))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    result = *&v8;
    *a1 = v8;
    *(a1 + 16) = v9;
  }

  return result;
}

id sub_100190A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasMomentsTitleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100190B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  result = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v15 = result;
      sub_1000065A8(0, &qword_100AD6210);
      v21 = v7;
      swift_unknownObjectRetain();
      v20 = static OS_dispatch_queue.main.getter();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v15;
      v17[4] = a4;
      aBlock[4] = sub_10019143C;
      aBlock[5] = v17;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A5FCC8;
      v18 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1000826D8();
      sub_1000F24EC(&unk_100AD6220);
      sub_100006610();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v19 = v20;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v18);
      swift_unknownObjectRelease();

      (*(v21 + 8))(v9, v6);
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

void sub_100190E0C(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a2 string];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    aBlock = v8;
    v36 = v10;
    v43 = 10;
    v44 = 0xE100000000000000;
    v41 = 32;
    v42 = 0xE100000000000000;
    v32 = sub_1000777B4();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    v11 = objc_allocWithZone(NSAttributedString);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 initWithString:{v12, &type metadata for String, v32, v32, v32}];

    v14 = [v6 traitCollection];
    v15 = v13;
    v16 = [v6 font];
    v17 = v15;
    v18 = [v17 string];
    if (!v18)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = String._bridgeToObjectiveC()();
    }

    v19 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v18];

    v20 = [objc_opt_self() labelColor];
    v21 = sub_10010BBF4(v14);
    v22 = [v17 length];
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v23 = v14;
      v24 = v22;
      v33 = a3;
      v34 = v23;
      v25 = swift_allocObject();
      v25[2] = v21;
      v25[3] = v20;
      v25[4] = 0;
      v25[5] = v16;
      v25[6] = v19;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_100080490;
      *(v26 + 24) = v25;
      v39 = sub_100080460;
      v40 = v26;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10007F714;
      v38 = &unk_100A5FD40;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v20;
      v30 = v16;
      v31 = v19;

      [v17 enumerateAttributesInRange:0 options:v24 usingBlock:{0, v27}];

      _Block_release(v27);
      LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

      if ((v28 & 1) == 0)
      {
        [v33 setAttributedStringResult:v31];

        return;
      }
    }

    __break(1u);
  }
}

void sub_100191250(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_10010BCB8(v2);

  [a1 setFont:v3];
}

void sub_1001912C4(void *a1)
{
  v3 = [a1 itemProvider];
  sub_1000065A8(0, &qword_100AE4890);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [v3 canLoadObjectOfClass:ObjCClassFromMetadata];

  if (v5)
  {
    v6 = [a1 itemProvider];
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = a1;
    v11[4] = sub_100191434;
    v11[5] = v7;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1006AD5D8;
    v11[3] = &unk_100A5FC50;
    v8 = _Block_copy(v11);
    v9 = v1;
    swift_unknownObjectRetain();

    v10 = [v6 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v8];
    _Block_release(v8);
  }
}

uint64_t sub_100191458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, a2);
  type metadata accessor for MainActor();
  v14 = v3;
  v15 = static MainActor.shared.getter();
  v16 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v15;
  *(v18 + 3) = &protocol witness table for MainActor;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v16], v9, a2);
  *&v18[v17] = v14;
  sub_1003E9628(0, 0, v12, &unk_100944D20, v18);
}

uint64_t sub_100191668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Tips.Status();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD4CD0);
  v7[10] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AD4CD8);
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AD4CE0);
  v7[14] = v10;
  v7[15] = *(v10 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = type metadata accessor for MainActor();
  v7[18] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[19] = v12;
  v7[20] = v11;

  return _swift_task_switch(sub_100191878, v12, v11);
}

uint64_t sub_100191878()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  Tip.statusUpdates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 184) = enum case for Tips.Status.available(_:);
  v4 = static MainActor.shared.getter();
  *(v0 + 168) = v4;
  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_100191998;
  v6 = *(v0 + 112);
  v7 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v7, v4, &protocol witness table for MainActor, v6);
}

uint64_t sub_100191998()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return _swift_task_switch(sub_100191ADC, v3, v2);
}

uint64_t sub_100191ADC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
LABEL_2:
    v4 = *(v0 + 24);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));

    [v4 dismissViewControllerAnimated:1 completion:0];

    v5 = *(v0 + 8);

    return v5();
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 64);
  (*(v3 + 32))(*(v0 + 72), v1, v2);
  (*(v3 + 104))(v8, v7, v2);
  sub_100191FA0();
  LOBYTE(v7) = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v3 + 8);
  v9(v8, v2);
  v10 = *(v0 + 72);
  v11 = *(v0 + 48);
  if (v7)
  {
    v9(*(v0 + 72), *(v0 + 48));
  }

  else
  {
    v12 = [*(v0 + 24) isBeingDismissed];
    v9(v10, v11);
    if ((v12 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v13 = static MainActor.shared.getter();
  *(v0 + 168) = v13;
  v14 = swift_task_alloc();
  *(v0 + 176) = v14;
  *v14 = v0;
  v14[1] = sub_100191998;
  v15 = *(v0 + 112);
  v16 = *(v0 + 80);

  return AsyncStream.Iterator.next(isolation:)(v16, v13, &protocol witness table for MainActor, v15);
}

void *sub_100191D64(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[3] = a7;
  v18[4] = a9;
  v12 = sub_10001A770(v18);
  (*(*(a7 - 8) + 32))(v12, a1, a7);
  sub_100086C04(v18, &v17);

  v13 = TipUIPopoverViewController.__allocating_init(_:sourceItem:actionHandler:)();
  v14 = v13;
  if (a2)
  {
    v15 = v13;
    sub_100191458(v12, a7, a9);
  }

  else
  {
  }

  sub_10000BA7C(v18);
  return v14;
}

uint64_t sub_100191E74(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100032ECC;

  return sub_100191668(a1, v7, v8, v1 + v6, v9, v4, v5);
}

unint64_t sub_100191FA0()
{
  result = qword_100AD4CE8;
  if (!qword_100AD4CE8)
  {
    type metadata accessor for Tips.Status();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4CE8);
  }

  return result;
}

unint64_t sub_100191FFC()
{
  result = qword_100AD6268;
  if (!qword_100AD6268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6268);
  }

  return result;
}

unint64_t sub_100192050()
{
  result = qword_100AD6270;
  if (!qword_100AD6270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6270);
  }

  return result;
}

unint64_t sub_1001920A8()
{
  result = qword_100AD6278;
  if (!qword_100AD6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6278);
  }

  return result;
}

uint64_t sub_1001920FC(uint64_t a1)
{
  v1[2] = a1;
  sub_1000F24EC(&qword_100AE46A0);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[7] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100192228, v4, v3);
}

uint64_t sub_100192228()
{

  if (qword_100ACFED0 != -1)
  {
    swift_once();
  }

  v1 = qword_100B2FA60;
  if (swift_unknownObjectWeakLoadStrong() && (v2 = *(v1 + 24), ObjectType = swift_getObjectType(), LOBYTE(v2) = sub_100885D80(ObjectType, v2), swift_unknownObjectRelease(), (v2 & 1) != 0))
  {
    sub_1001928AC();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();

    v5 = v0[1];
  }

  else
  {
    UUID.init()();
    UUID.uuidString.getter();

    v6 = [objc_opt_self() sharedApplication];
    v7 = sub_100510628();

    if (v7)
    {
      v8 = v0[3];
      v9 = sub_1000F24EC(&qword_100AD62A0);
      v10 = *(v9 + 48);
      v11 = *(v9 + 64);
      *v8 = 0;
      v8[1] = 0;
      *(v8 + v10) = 1;
      v12 = type metadata accessor for CanvasContentInputType();
      swift_storeEnumTagMultiPayload();
      (*(*(v12 - 8) + 56))(v8 + v10, 0, 1, v12);
      v13 = type metadata accessor for WidgetFamily();
      (*(*(v13 - 8) + 56))(v8 + v11, 1, 1, v13);
      v14 = type metadata accessor for AppLaunchAction();
      swift_storeEnumTagMultiPayload();
      (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
      sub_1001F05E8(v8);

      sub_100192844(v8);
    }

    v16 = v0[5];
    v15 = v0[6];
    v17 = v0[4];
    static IntentResult.result<>()();
    (*(v16 + 8))(v15, v17);

    v5 = v0[1];
  }

  return v5();
}

unint64_t sub_100192514()
{
  result = qword_100AD6280;
  if (!qword_100AD6280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6280);
  }

  return result;
}

unint64_t sub_10019256C()
{
  result = qword_100AD6288;
  if (!qword_100AD6288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6288);
  }

  return result;
}

uint64_t sub_10019262C(uint64_t a1)
{
  v2 = sub_100192900();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_10019267C@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for IntentAuthenticationPolicy.requiresLocalDeviceAuthentication(_:);
  v3 = type metadata accessor for IntentAuthenticationPolicy();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1001926FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return sub_1001920FC(a1);
}

uint64_t sub_100192794(uint64_t a1)
{
  v2 = sub_100192050();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1001927E0()
{
  result = qword_100AD6290;
  if (!qword_100AD6290)
  {
    sub_1000F2A18(&qword_100AD6298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD6290);
  }

  return result;
}

uint64_t sub_100192844(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE46A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001928AC()
{
  result = qword_100AD62A8;
  if (!qword_100AD62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD62A8);
  }

  return result;
}

unint64_t sub_100192900()
{
  result = qword_100AD62B0;
  if (!qword_100AD62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD62B0);
  }

  return result;
}

uint64_t sub_100192958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1001929AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100192A10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_audioAsset;
  swift_beginAccess();
  sub_1001939F4(a1, v1 + v3);
  swift_endAccess();
  sub_100193984(v1 + v3, &v5);
  if (v6)
  {
    sub_100018480(&v5, v7);
    sub_100192B64(v7);
    sub_10019385C(a1);
    return sub_10000BA7C(v7);
  }

  else
  {
    sub_10019385C(a1);
    return sub_10019385C(&v5);
  }
}

uint64_t sub_100192ABC()
{
  v1 = OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_audioAsset;
  swift_beginAccess();
  sub_100193984(v0 + v1, v4);
  if (v5)
  {
    sub_1000F24EC(&qword_100AD6308);
    type metadata accessor for Asset();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10019385C(v4);
    return 0;
  }
}

void sub_100192B64(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RecordingView(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  sub_100086C04(a1, v49);
  type metadata accessor for TranscriptionCoordinator(0);
  swift_allocObject();
  v11 = sub_100241630(v49);
  *(v1 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcriptionCoordinator) = v11;

  v12 = type metadata accessor for AudioPlayer();
  v13 = a1[3];
  v14 = a1[4];
  v15 = sub_10000CA14(a1, v13);
  v16 = sub_1004CCA74(v15, v12, v13, v14);
  v18 = v17;
  ObjectType = swift_getObjectType();
  sub_100086C04(a1, v49);
  sub_1003609D8(v49, ObjectType, v18);
  sub_10019385C(v49);
  sub_100086C04(a1, v49);

  v20 = sub_10057F2F8(v49, v11);
  type metadata accessor for RecordingViewModel();

  swift_unknownObjectRetain();

  v46[1] = v20;
  v21 = sub_1005ED718(v16, v20, v11, 1, 1, ObjectType, v18);
  sub_1001937E4();

  Bindable<A>.init(wrappedValue:)();
  v22 = &v10[v5[7]];
  v48 = 0;
  State.init(wrappedValue:)();
  v23 = v50;
  *v22 = v49[0];
  *(v22 + 1) = v23;
  v24 = &v10[v5[8]];
  v48 = 0;
  State.init(wrappedValue:)();
  v25 = v50;
  *v24 = v49[0];
  *(v24 + 1) = v25;
  v26 = &v10[v5[9]];
  v48 = 0;
  State.init(wrappedValue:)();
  v27 = v50;
  *v26 = v49[0];
  *(v26 + 1) = v27;
  sub_1001938C4(v10, v7);
  v28 = objc_allocWithZone(sub_1000F24EC(&qword_100AD6300));
  v29 = UIHostingController.init(rootView:)();
  UIHostingController.safeAreaRegions.setter();
  v30 = type metadata accessor for TranscribingAudioAssetView();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC7Journal26TranscribingAudioAssetView_hostingController] = v29;
  v47.receiver = v31;
  v47.super_class = v30;
  v32 = v29;
  v33 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1002E4BB4();

  v34 = v33[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v33[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v35 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  v36 = v33[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated];
  v46[0] = v16;
  if (v36 != 1)
  {
    v37 = v21;
    v38 = v32;
    v39 = v33;
LABEL_11:
    v33[v35] = 1;

    goto LABEL_12;
  }

  if (v34 > 3)
  {
    if (v34 > 5)
    {
      if (v34 != 6)
      {

        goto LABEL_13;
      }

      v37 = v21;
      v38 = v32;
    }

    else
    {
      v37 = v21;
      v38 = v32;
    }
  }

  else
  {
    v37 = v21;
    v38 = v32;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v41 = v33;

  if ((v40 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  v32 = v38;
  v21 = v37;
LABEL_13:
  v42 = *(v2 + OBJC_IVAR____TtC7Journal33FullScreenAssetCollectionViewCell_maskedContentView);
  v43 = v33;
  [v42 addSubview:{v43, v46[0]}];
  sub_100013178(0.0);

  v44 = [objc_opt_self() systemBackgroundColor];
  [v43 setBackgroundColor:v44];

  swift_unknownObjectRelease();
  sub_100193928(v10);
  *(v2 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_recordingViewModel) = v21;

  v45 = *(v2 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcribingAudioAssetView);
  *(v2 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcribingAudioAssetView) = v43;
}

id sub_100193218()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    v3 = 3.0;
  }

  else
  {
    v3 = 2.0;
  }

  if (v2 == 2)
  {
    v4 = 4.0;
  }

  else
  {
    v4 = 3.0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v3;
  v9 = v4;
  v5 = v0;
  static UIView.Invalidating.subscript.setter();
  v7.receiver = v5;
  v7.super_class = type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
  return objc_msgSendSuper2(&v7, "updateConstraints");
}

uint64_t sub_100193338()
{

  v1 = v0 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_audioAsset;

  return sub_10019385C(v1);
}

id sub_100193398()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FullScreenAudioTranscriptionCollectionViewCell()
{
  result = qword_100AD62E8;
  if (!qword_100AD62E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1001934E0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_transcribingAudioAssetView);
  v2 = v1;
  return v1;
}

void sub_100193538()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_recordingViewModel);
  if (v1)
  {
    swift_getKeyPath();
    sub_1001937E4();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 64);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 136))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

void sub_1001935F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal46FullScreenAudioTranscriptionCollectionViewCell_recordingViewModel);
  if (v1)
  {
    swift_getKeyPath();
    sub_1001937E4();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v2 = *(v1 + 64);
    swift_unknownObjectRetain();

    ObjectType = swift_getObjectType();
    (*(v2 + 128))(ObjectType, v2);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1001936C0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001937E4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
  return swift_unknownObjectRetain();
}

uint64_t sub_100193740()
{
  swift_getKeyPath();
  sub_1001937E4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t sub_1001937E4()
{
  result = qword_100AD62F8;
  if (!qword_100AD62F8)
  {
    type metadata accessor for RecordingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD62F8);
  }

  return result;
}

uint64_t sub_10019385C(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AE9D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001938C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193928(uint64_t a1)
{
  v2 = type metadata accessor for RecordingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100193984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AE9D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001939F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AE9D30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193A64()
{
  type metadata accessor for AppleAccountManager();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return static AppleAccountManager.setDataclassEnabled(_:)(1);
}

id sub_100193B04()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = OBJC_IVAR____TtC7Journal28SyncOnboardingViewController_backgroundView;
  type metadata accessor for GradientView();
  *&v0[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v0[OBJC_IVAR____TtC7Journal28SyncOnboardingViewController____lazy_storage___onboardingAsset] = 0;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v4 = String._bridgeToObjectiveC()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v5 = String._bridgeToObjectiveC()();

  v12.receiver = v0;
  v12.super_class = type metadata accessor for SyncOnboardingViewController();
  v6 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v4, v5, 0, 1);

  v7 = v6;
  result = [v7 view];
  if (result)
  {
    v9 = result;

    [v9 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];

    v10 = [v7 buttonTray];
    v11 = [objc_opt_self() clearColor];
    [v10 setBackgroundColor:v11];

    sub_100193F74();
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100193DA0()
{
  v1 = v0;
  v2 = type metadata accessor for ImageResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7Journal28SyncOnboardingViewController____lazy_storage___onboardingAsset;
  v7 = *(v1 + OBJC_IVAR____TtC7Journal28SyncOnboardingViewController____lazy_storage___onboardingAsset);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC7Journal28SyncOnboardingViewController____lazy_storage___onboardingAsset);
  }

  else
  {
    sub_1000065A8(0, &qword_100AE9450);
    if (qword_100AD0D90 != -1)
    {
      swift_once();
    }

    v9 = sub_10000617C(v2, qword_100B317C0);
    (*(v3 + 16))(v5, v9, v2);
    v10 = UIImage.init(resource:)();
    v11 = [objc_allocWithZone(UIImageView) initWithImage:v10];

    v12 = v11;
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setContentMode:2];
    [v12 setClipsToBounds:1];

    v13 = *(v1 + v6);
    *(v1 + v6) = v12;
    v8 = v12;

    v7 = 0;
  }

  v14 = v7;
  return v8;
}

void sub_100193F74()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    [v4 setAccessibilityViewIsModal:1];

    v6 = [v1 contentView];
    v7 = sub_100193DA0();
    [v6 addSubview:v7];

    v8 = *&v1[OBJC_IVAR____TtC7Journal28SyncOnboardingViewController____lazy_storage___onboardingAsset];
    sub_100013178(0.0);

    v9 = objc_opt_self();
    v10 = [v9 boldButton];
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 systemIndigoColor];
    [v12 setTintColor:v13];

    [v12 addTarget:v1 action:"notNowButtonTapped" forControlEvents:64];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v14 = String._bridgeToObjectiveC()();

    [v12 setTitle:v14 forState:0];

    v15 = [v1 buttonTray];
    [v15 addButton:v12];

    v16 = [v9 boldButton];
    v17 = [v11 systemIndigoColor];
    [v16 setTintColor:v17];

    [v16 addTarget:v1 action:"turnOniCloudButtonTapped" forControlEvents:64];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v18 = String._bridgeToObjectiveC()();

    [v16 setTitle:v18 forState:0];

    v19 = [v1 buttonTray];
    [v19 addButton:v16];

    v20 = [v1 buttonTray];
    v21 = [v11 clearColor];
    [v20 setBackgroundColor:v21];
  }

  else
  {
    __break(1u);
  }
}

void sub_1001943AC()
{
  v1 = v0;
  if (qword_100ACFA38 != -1)
  {
    swift_once();
  }

  sub_1000065A8(0, &qword_100AE1A30);
  v2 = static NSUserDefaults.shared.getter();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = String._bridgeToObjectiveC()();
  [v2 setObject:v3 forKey:{v4, 0x776F4E746F6ELL, 0xE600000000000000}];

  swift_unknownObjectRelease();
  v5 = [v1 presentingViewController];
  if (v5)
  {
    v6 = v5;
    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_10019462C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncOnboardingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1001946D0()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = v9 - v1;
  sub_1000065A8(0, &qword_100AE1A30);
  v3 = static NSUserDefaults.shared.getter();
  v9[0] = 0x79536E4F6E727574;
  v9[1] = 0xEA0000000000636ELL;
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = String._bridgeToObjectiveC()();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_1003E9628(0, 0, v2, &unk_100945098, v7);
}

uint64_t sub_100194868()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100032ECC;

  return sub_100193A64();
}

uint64_t sub_100194914()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  StateOfMindAssetMetadata.valenceClassification.getter();
  StateOfMindAssetMetadata.reflectiveInterval.getter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:defaultValue:table:bundle:locale:comment:)();
}

uint64_t sub_100194FF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10019509C(uint64_t (*a1)(_OWORD *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v14[0] = *(v7 - 2);
      v14[1] = v9;
      v15 = v8;
      v10 = v8;
      v11 = a1(v14);

      if (v3)
      {
        break;
      }

      v12 = v6-- == 0;
      v7 += 5;
    }

    while (((v11 | v12) & 1) == 0);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11 & 1;
}

id sub_100195154(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3, void (*a4)(void *__return_ptr, void))
{
  v5 = v4;
  v9 = a3 & 0xFFFFFFFFFFFFFF8;
  v10 = a3 & 0xC000000000000001;
  v27 = a3 + 32;

  v11 = 0;
  v24 = v9;
  v25 = a4;
  v23 = v10;
  while (1)
  {
    if (!(a3 >> 62))
    {
      result = *(v9 + 16);
      if (v11 == result)
      {
        break;
      }

      goto LABEL_17;
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (v11 == result)
    {
      break;
    }

LABEL_17:
    if (v10)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = __OFADD__(v11, 1);
      v18 = (v11 + 1);
      if (v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_33;
      }

      v14 = *(v27 + 8 * v11);

      v17 = __OFADD__(v11, 1);
      v18 = (v11 + 1);
      if (v17)
      {
LABEL_26:
        __break(1u);
LABEL_27:

        return (v22 & 1);
      }
    }

    v29 = v14;
    a4(&v28, &v29);

    v19 = v18;
    v20 = v28;

    v21 = v20;
    v11 = v19;
    if (v21)
    {
      v26 = v19;
      v12 = 0;
      if (!(v21 >> 62))
      {
LABEL_3:
        result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 == result)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }

      while (1)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (v12 == result)
        {
          break;
        }

LABEL_4:
        if ((v21 & 0xC000000000000001) != 0)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          result = *(v21 + 8 * v12 + 32);
        }

        v14 = result;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          return result;
        }

        v29 = result;
        v15 = a1(&v29);
        if (v5)
        {
          goto LABEL_27;
        }

        v16 = v15;

        if (v16)
        {

          v22 = 1;
          return (v22 & 1);
        }

        ++v12;
        if (!(v21 >> 62))
        {
          goto LABEL_3;
        }
      }

LABEL_14:
      v9 = v24;
      a4 = v25;
      v10 = v23;
      v11 = v26;
    }
  }

  v22 = 0;
  return (v22 & 1);
}

uint64_t sub_1001953D4(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = _CocoaArrayWrapper.endIndex.getter();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_10019552C(uint64_t (*a1)(void))
{
  result = a1();
  v2 = result;
  v3 = 0;
  v4 = result + 5;
  v5 = result[2];
  v14 = result + 5;
LABEL_2:
  v6 = &v4[2 * v3];
  while (1)
  {
    if (v5 == v3)
    {

      return _swiftEmptyArrayStorage;
    }

    if (v3 >= v2[2])
    {
      break;
    }

    ++v3;
    v7 = v6 + 2;
    v9 = *(v6 - 1);
    v8 = *v6;
    v10 = *v6 >> 60;
    if (v10 <= 0xE)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10 <= 0xE)
    {
      v12 = v8;
    }

    else
    {
      v12 = 0xC000000000000000;
    }

    sub_1000065A8(0, &qword_100AD4C70);
    sub_100199918(v9, v8);
    sub_100199918(v9, v8);
    v13 = static NSCoding<>.create(from:)();
    sub_1000340DC(v11, v12);
    result = sub_10003A5C8(v9, v8);
    v6 = v7;
    if (v13)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v4 = v14;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001956A8(int a1)
{
  v49 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v48[1] = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v48[0] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = StateOfMindAssetMetadata.labels.getter();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];
  if (v8)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v8, 0);
    v9 = 0;
    v10 = v52;
    while (v9 < v7[2])
    {
      v50 = v7[v9 + 4];
      sub_100195C3C(&v50, v51);
      v1 = v51[0];
      v11 = v51[1];
      v52 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_1001999C0((v12 > 1), v13 + 1, 1);
        v10 = v52;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 40);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = *&v10[v24 + 40];
          v27 = (v26 & 0x2000000000000000) != 0 ? HIBYTE(v26) & 0xF : *&v10[v24 + 32] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 16;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return result;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_10009BCC8(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v51[0] = v10;
              }

              sub_10019B958(v25, v28, 0);
              String.LocalizationValue.init(stringLiteral:)();
              static Locale.current.getter();
              result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v45 = result;
            v46 = v16;
            v47 = sub_10009BCC8((v27 > 1), v17, 1, v10);
            v16 = v46;
            v10 = v47;
            result = v45;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[16 * v1];
            *(v31 + 4) = result;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v41 = *&v10[v24 + 48];
          v40 = *&v10[v24 + 56];
          v27 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v27 = v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v42 = &v10[16 * v25 + 32];
              v1 = *v42;
              v43 = v42[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_100692980(v10);
              }

              v44 = &v10[16 * v25];
              *(v44 + 4) = v41;
              *(v44 + 5) = v40;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v39 = &v10[v24];
              *(v39 + 6) = v1;
              *(v39 + 7) = v43;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 16;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v49 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_100AD04C0 != -1)
      {
        swift_once();
      }

      sub_1000F24EC(&unk_100AD5B10);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100940050;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_100031B20();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      v38 = static String.localizedStringWithFormat(_:_:)();
      goto LABEL_59;
    }

    v52 = v10;
    if (qword_100AD0418 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_1000F24EC(&qword_100AD60A0);
  sub_10009BDD4();
  v38 = BidirectionalCollection<>.joined(separator:)();
LABEL_59:

  return v38;
}

uint64_t sub_100195C3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1ALL:
    case 0x1BLL:
    case 0x1CLL:
    case 0x1DLL:
    case 0x1ELL:
    case 0x1FLL:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_100196950(int a1)
{
  v49 = a1;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v48[1] = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v48[0] = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = StateOfMindAssetMetadata.domains.getter();
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = v7[2];
  if (v8)
  {
    v52 = _swiftEmptyArrayStorage;
    sub_1001999C0(0, v8, 0);
    v9 = 0;
    v10 = v52;
    while (v9 < v7[2])
    {
      v50 = v7[v9 + 4];
      sub_100196EE4(&v50, v51);
      v1 = v51[0];
      v11 = v51[1];
      v52 = v10;
      v13 = *(v10 + 2);
      v12 = *(v10 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_1001999C0((v12 > 1), v13 + 1, 1);
        v10 = v52;
      }

      ++v9;
      *(v10 + 2) = v13 + 1;
      v14 = &v10[16 * v13];
      *(v14 + 4) = v1;
      *(v14 + 5) = v11;
      if (v8 == v9)
      {

        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    swift_once();
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
LABEL_12:
    v17 = *(v10 + 2);
    v18 = (v10 + 40);
    v19 = v17 + 1;
    while (--v19)
    {
      v21 = *(v18 - 1);
      v20 = *v18;
      v18 += 2;
      v22 = v21 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v23 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v23 = v22;
      }

      if (!v23)
      {
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v26 = *&v10[v24 + 40];
          v27 = (v26 & 0x2000000000000000) != 0 ? HIBYTE(v26) & 0xF : *&v10[v24 + 32] & 0xFFFFFFFFFFFFLL;
          if (!v27)
          {
            break;
          }

          ++v25;
          v24 += 16;
          if (v17 == v25)
          {
            v28 = *(v10 + 2);
            v25 = v28;
            goto LABEL_30;
          }
        }

        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return result;
        }

        if (v28 == v17)
        {
          v28 = *(v10 + 2);
LABEL_28:
          if (v28 < v25)
          {
            __break(1u);
          }

          else if ((v25 & 0x8000000000000000) == 0)
          {
LABEL_30:
            v27 = v25 - v28;
            v1 = v25;
            if (!__OFADD__(v28, v25 - v28))
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v51[0] = v10;
              if (!isUniquelyReferenced_nonNull_native || v25 > *(v10 + 3) >> 1)
              {
                if (v28 <= v25)
                {
                  v30 = v25;
                }

                else
                {
                  v30 = v28;
                }

                v10 = sub_10009BCC8(isUniquelyReferenced_nonNull_native, v30, 1, v10);
                v51[0] = v10;
              }

              sub_10019B958(v25, v28, 0);
              String.LocalizationValue.init(stringLiteral:)();
              static Locale.current.getter();
              result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
              v1 = *(v10 + 2);
              v27 = *(v10 + 3);
              v17 = v1 + 1;
              if (v1 < v27 >> 1)
              {
                goto LABEL_38;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            v45 = result;
            v46 = v16;
            v47 = sub_10009BCC8((v27 > 1), v17, 1, v10);
            v16 = v46;
            v10 = v47;
            result = v45;
LABEL_38:
            *(v10 + 2) = v17;
            v31 = &v10[16 * v1];
            *(v31 + 4) = result;
            *(v31 + 5) = v16;
            break;
          }

          __break(1u);
          goto LABEL_67;
        }

        while (v28 < v17)
        {
          v41 = *&v10[v24 + 48];
          v40 = *&v10[v24 + 56];
          v27 = HIBYTE(v40) & 0xF;
          if ((v40 & 0x2000000000000000) == 0)
          {
            v27 = v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v27)
          {
            if (v28 != v25)
            {
              if (v25 >= v17)
              {
                goto LABEL_62;
              }

              v42 = &v10[16 * v25 + 32];
              v1 = *v42;
              v43 = v42[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_100692980(v10);
              }

              v44 = &v10[16 * v25];
              *(v44 + 4) = v41;
              *(v44 + 5) = v40;

              if (v28 >= *(v10 + 2))
              {
                goto LABEL_63;
              }

              v39 = &v10[v24];
              *(v39 + 6) = v1;
              *(v39 + 7) = v43;
            }

            ++v25;
          }

          ++v28;
          v17 = *(v10 + 2);
          v24 += 16;
          if (v28 == v17)
          {
            goto LABEL_28;
          }
        }

        goto LABEL_61;
      }
    }

    if ((v49 & 1) != 0 && v17 >= 3)
    {
      v33 = *(v10 + 4);
      v32 = *(v10 + 5);
      v35 = *(v10 + 6);
      v34 = *(v10 + 7);

      if (qword_100AD04C0 != -1)
      {
        swift_once();
      }

      sub_1000F24EC(&unk_100AD5B10);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100940050;
      *(v36 + 56) = &type metadata for String;
      v37 = sub_100031B20();
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(v36 + 96) = &type metadata for String;
      *(v36 + 104) = v37;
      *(v36 + 64) = v37;
      *(v36 + 72) = v35;
      *(v36 + 80) = v34;
      v38 = static String.localizedStringWithFormat(_:_:)();
      goto LABEL_59;
    }

    v52 = v10;
    if (qword_100AD0418 != -1)
    {
      goto LABEL_64;
    }
  }

  sub_1000F24EC(&qword_100AD60A0);
  sub_10009BDD4();
  v38 = BidirectionalCollection<>.joined(separator:)();
LABEL_59:

  return v38;
}

uint64_t sub_100196EE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  switch(*a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xALL:
    case 0xBLL:
    case 0xCLL:
    case 0xDLL:
    case 0xELL:
    case 0xFLL:
    case 0x10:
    case 0x11:
    case 0x12:
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      result = String.init(localized:defaultValue:table:bundle:locale:comment:)();
      break;
    default:
      result = 0;
      v7 = 0xE000000000000000;
      break;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_1001975A4()
{
  v1 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for StateOfMindAssetMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {

    sub_10025BAFC(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_1000F24EC(&qword_100AD38F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100942000;
      *(inited + 32) = sub_100194914();
      *(inited + 40) = v9;
      *(inited + 48) = sub_1001956A8(1);
      *(inited + 56) = v10;
      *(inited + 64) = sub_100196950(1);
      *(inited + 72) = v11;
      sub_10009BB20(8236, 0xE200000000000000, inited);
      v13 = v12;
      swift_setDeallocating();
      sub_1000F24EC(&unk_100AE4870);
      swift_arrayDestroy();
      (*(v5 + 8))(v7, v4);
      return v13;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_100004F84(v3, &qword_100AE6680);
  return 0;
}

id sub_100197824()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StateOfMindAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StateOfMindAsset()
{
  result = qword_100AD6440;
  if (!qword_100AD6440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100197950(void *a1)
{
  v3 = type metadata accessor for StateOfMindAssetMetadata();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v7 - 8);
  v9 = &v13 - v8;
  if (!*(v1 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    return 0;
  }

  sub_10025BAFC(v9);

  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_100004F84(v9, &qword_100AE6680);
    return 0;
  }

  (*(v4 + 16))(v6, v9, v3);
  sub_100004F84(v9, &qword_100AE6680);
  if ([a1 userInterfaceStyle] == 1)
  {
    v11 = &StateOfMindAssetMetadata.backgroundColorsLight.getter;
  }

  else
  {
    v11 = &StateOfMindAssetMetadata.backgroundColorsDark.getter;
  }

  v12 = sub_10019552C(v11);
  (*(v4 + 8))(v6, v3);
  return v12;
}

uint64_t sub_100197B50()
{
  v1 = v0;
  v2 = type metadata accessor for StateOfMindAssetMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE6680);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v28 - v10;
  v12 = [objc_opt_self() mainBundle];
  v30._object = 0x80000001008E3840;
  v13._countAndFlagsBits = 0x402520B7C2204025;
  v14._object = 0x80000001008E3800;
  v30._countAndFlagsBits = 0x100000000000005ALL;
  v14._countAndFlagsBits = 0x1000000000000035;
  v13._object = 0xA800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v12, v13, v30);

  v15 = sub_100197FB8();
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || !*(v1 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
LABEL_8:

LABEL_9:

    goto LABEL_10;
  }

  v29 = v15;
  v18 = v16;

  sub_10025BAFC(v11);

  if (!(*(v3 + 48))(v11, 1, v2))
  {
    (*(v3 + 16))(v5, v11, v2);
    sub_100004F84(v11, &qword_100AE6680);
    v21 = sub_100196950(1);
    v23 = v22;
    (*(v3 + 8))(v5, v2);
    v24 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      sub_1000F24EC(&unk_100AD5B10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_100940050;
      *(v25 + 56) = &type metadata for String;
      v26 = sub_100031B20();
      *(v25 + 32) = v29;
      *(v25 + 40) = v18;
      *(v25 + 96) = &type metadata for String;
      *(v25 + 104) = v26;
      *(v25 + 64) = v26;
      *(v25 + 72) = v21;
      *(v25 + 80) = v23;
      v27 = static String.localizedStringWithFormat(_:_:)();

      return v27;
    }

    goto LABEL_8;
  }

  sub_100004F84(v11, &qword_100AE6680);
LABEL_10:
  result = sub_100197FB8();
  if (v20)
  {
    return result;
  }

  if (!*(v1 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    return 0;
  }

  sub_10025BAFC(v9);

  if ((*(v3 + 48))(v9, 1, v2))
  {
    sub_100004F84(v9, &qword_100AE6680);
    return 0;
  }

  (*(v3 + 16))(v5, v9, v2);
  sub_100004F84(v9, &qword_100AE6680);
  v27 = sub_100196950(1);
  (*(v3 + 8))(v5, v2);
  return v27;
}

uint64_t sub_100197FB8()
{
  v1 = v0;
  v2 = type metadata accessor for StateOfMindAssetMetadata();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE6680);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v20 - v10;
  v12 = OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata;
  if (!*(v0 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    return 0;
  }

  sub_10025BAFC(v11);

  v13 = *(v3 + 48);
  if (v13(v11, 1, v2))
  {
    sub_100004F84(v11, &qword_100AE6680);
    if (!*(v0 + v12))
    {
      return 0;
    }

LABEL_11:

    sub_10025BAFC(v9);

    if (!v13(v9, 1, v2))
    {
      (*(v3 + 16))(v5, v9, v2);
      sub_100004F84(v9, &qword_100AE6680);
      v19 = sub_100194914();
      (*(v3 + 8))(v5, v2);
      return v19;
    }

    sub_100004F84(v9, &qword_100AE6680);
    return 0;
  }

  (*(v3 + 16))(v5, v11, v2);
  sub_100004F84(v11, &qword_100AE6680);
  v14 = sub_1001956A8(1);
  v16 = v15;
  (*(v3 + 8))(v5, v2);
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == 0xE000000000000000;
  }

  if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return v14;
  }

  if (*(v1 + v12))
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1001982D8()
{
  v1 = type metadata accessor for StateOfMindAssetMetadata();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v5 - 8);
  v7 = &v10 - v6;
  if (!*(v0 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    return 0;
  }

  sub_10025BAFC(v7);

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_100004F84(v7, &qword_100AE6680);
    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_100004F84(v7, &qword_100AE6680);
  v9 = sub_100196950(1);
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_1001984A8()
{
  v1 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v28 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date.FormatStyle.DateStyle();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for StateOfMindAssetMetadata();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_6;
  }

  sub_10025BAFC(v14);

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
LABEL_6:
    v19 = &qword_100AE6680;
    v20 = v14;
    goto LABEL_7;
  }

  (*(v16 + 32))(v18, v14, v15);
  StateOfMindAssetMetadata.date.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v19 = &unk_100AD4790;
    v20 = v7;
LABEL_7:
    sub_100004F84(v20, v19);
    return 0;
  }

  (*(v9 + 32))(v11, v7, v8);
  v22 = StateOfMindAssetMetadata.reflectiveInterval.getter();
  if ((v23 & 1) == 0 && v22 == 1)
  {
    static Date.FormatStyle.DateStyle.omitted.getter();
    v24 = v28;
    static Date.FormatStyle.TimeStyle.shortened.getter();
    v25 = Date.formatted(date:time:)();
    (*(v30 + 8))(v24, v31);
    (*(v27 + 8))(v4, v29);
    (*(v9 + 8))(v11, v8);
    (*(v16 + 8))(v18, v15);
    return v25;
  }

  (*(v9 + 8))(v11, v8);
  (*(v16 + 8))(v18, v15);
  return 0;
}

uint64_t sub_10019897C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  v6 = type metadata accessor for StateOfMindAssetMetadata();
  v4[4] = v6;
  v4[5] = *(v6 - 8);
  v4[6] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE6680);
  v4[7] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  return _swift_task_switch(sub_100198AAC, v7, v9);
}

uint64_t sub_100198AAC()
{
  if (!*(v0[3] + OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata))
  {
    goto LABEL_4;
  }

  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];

  sub_10025BAFC(v1);

  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[7];
  if (v4)
  {
    sub_100004F84(v0[7], &qword_100AE6680);
LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v9 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[7], v0[4]);
  sub_100004F84(v5, &qword_100AE6680);
  if ([v9 userInterfaceStyle] == 1)
  {
    v10 = &StateOfMindAssetMetadata.backgroundColorsLight.getter;
  }

  else
  {
    v10 = &StateOfMindAssetMetadata.backgroundColorsDark.getter;
  }

  v11 = sub_10019552C(v10);
  (*(v0[5] + 8))(v0[6], v0[4]);
  if (!v11)
  {
    goto LABEL_4;
  }

  if (v11 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_14;
    }

LABEL_19:

    goto LABEL_4;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_19;
  }

LABEL_14:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v11 + 32);
  }

  v6 = v12;

LABEL_5:

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_100198CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[6] = v5;
  v4[7] = v7;

  return _swift_task_switch(sub_100198D44, v5, v7);
}

uint64_t sub_100198D44()
{
  v1 = [*(v0 + 32) userInterfaceStyle] != 1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_100198E00;
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_100284150(v5, v4, v1, 0, 6, v3);
}

uint64_t sub_100198E00(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_100198F28, v4, v3);
}

uint64_t sub_100198F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_100198FF0;

  return sub_10019897C(a1, a2, a3);
}

uint64_t sub_100198FF0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  if (v4)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v3 + 40) = a1;

  return _swift_task_switch(sub_10019913C, v5, v7);
}

id sub_100199154()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v47[2] = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v47[1] = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000F24EC(&unk_100AD4790);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v47 - v9;
  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100AE6680);
  __chkstk_darwin(v15 - 8);
  v17 = v47 - v16;
  v18 = type metadata accessor for StateOfMindAssetMetadata();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = v0;
  sub_1006AAF14(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_100004F84(v17, &qword_100AE6680);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_1001956A8(0);
  v24 = v23;

  v25 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  static UTType.item.getter();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_1001956A8(0);
  v29 = String._bridgeToObjectiveC()();

  [v28 setDisplayName:v29];

  sub_100196950(0);
  v30 = String._bridgeToObjectiveC()();

  [v28 setContentDescription:v30];

  StateOfMindAssetMetadata.date.getter();
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v8, 1, v31) == 1)
  {
    v34 = *(v47[0] + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v34)
    {
      v47[0] = v33;
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        JournalEntryMO.displayDate.getter();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v33 = v47[0];
    }

    else
    {
      v37 = 1;
    }

    (*(v32 + 56))(v10, v37, 1, v31);
    if (v33(v8, 1, v31) != 1)
    {
      sub_100004F84(v8, &unk_100AD4790);
    }
  }

  else
  {
    (*(v32 + 32))(v10, v8, v31);
    (*(v32 + 56))(v10, 0, 1, v31);
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v38 = String.init(localized:table:bundle:locale:comment:)();
  v40 = v39;
  sub_1000F24EC(&unk_100AD9A60);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100940080;
  v42 = sub_10012C00C(v38, v40, v10);
  v44 = v43;

  *(v41 + 32) = v42;
  *(v41 + 40) = v44;
  v45 = Array._bridgeToObjectiveC()().super.isa;

  [v28 setAlternateNames:v45];

  sub_100004F84(v10, &unk_100AD4790);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_100199868(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StateOfMindAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001998AC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1000065A8(0, &qword_100AD4C70);
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

uint64_t sub_100199918(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100049ED8(a1, a2);
  }

  return a1;
}

double *sub_10019992C(double *result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for VisitAssetMetadata();
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 2) = v1;
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    type metadata accessor for VisitAssetMetadata();
    return v2;
  }

  return result;
}

char *sub_1001999C0(char *a1, int64_t a2, char a3)
{
  result = sub_10019A2D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1001999E0(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6578, &unk_100945250, type metadata accessor for Loc);
  *v3 = result;
  return result;
}

char *sub_100199A24(char *a1, int64_t a2, char a3)
{
  result = sub_10019A3DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100199A44(size_t a1, int64_t a2, char a3)
{
  result = sub_1000AF828(a1, a2, a3, *v3, &qword_100AD6680, &unk_100945380, &unk_100AEED30);
  *v3 = result;
  return result;
}

size_t sub_100199A84(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &unk_100AD4C50, &unk_100943660, &type metadata accessor for SidebarPreferences.Brick);
  *v3 = result;
  return result;
}

size_t sub_100199AC8(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6648, &unk_100945330, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  *v3 = result;
  return result;
}

size_t sub_100199B0C(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6678, &unk_100945378, type metadata accessor for JournalSidebarViewModel);
  *v3 = result;
  return result;
}

size_t sub_100199B50(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD64A0, &unk_100945168, &type metadata accessor for IndexPath);
  *v3 = result;
  return result;
}

size_t sub_100199B94(size_t a1, int64_t a2, char a3)
{
  result = sub_1000AF828(a1, a2, a3, *v3, &qword_100AD6590, &unk_100945268, &qword_100AE4290);
  *v3 = result;
  return result;
}

double *sub_100199BD4(double *a1, int64_t a2, char a3)
{
  result = sub_10019A68C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_100199BF4(double *a1, int64_t a2, char a3)
{
  result = sub_10019A790(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100199C14(void *a1, int64_t a2, char a3)
{
  result = sub_10019A8E8(a1, a2, a3, *v3, &qword_100AD6658, &unk_100945338, &unk_100AD68B0);
  *v3 = result;
  return result;
}

void *sub_100199C54(void *a1, int64_t a2, char a3)
{
  result = sub_10019A8E8(a1, a2, a3, *v3, &qword_100AD6660, &unk_1009607B0, &qword_100AD6668);
  *v3 = result;
  return result;
}

double *sub_100199C94(double *a1, int64_t a2, char a3)
{
  result = sub_10019AA30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100199CB4(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6538, &unk_100945208, _s10RoutePointVMa);
  *v3 = result;
  return result;
}

size_t sub_100199CF8(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD64A8, &unk_100945170, &type metadata accessor for VisitAssetMetadata);
  *v3 = result;
  return result;
}

size_t sub_100199D3C(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &unk_100AE1A40, &unk_10094C3D0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

size_t sub_100199D80(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6518, &unk_1009451E0, _s30MOSuggestionAssetMapsClustererC7ClusterVMa);
  *v3 = result;
  return result;
}

char *sub_100199DC4(char *a1, int64_t a2, char a3)
{
  result = sub_10019AB98(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100199DE4(char *a1, int64_t a2, char a3)
{
  result = sub_10019AF14(a1, a2, a3, *v3, &qword_100AD6520);
  *v3 = result;
  return result;
}

double *sub_100199E14(double *a1, int64_t a2, char a3)
{
  result = sub_10019B49C(a1, a2, a3, *v3, &qword_100AD6570);
  *v3 = result;
  return result;
}

char *sub_100199E4C(char *a1, int64_t a2, char a3)
{
  result = sub_10019ACC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100199E6C(void *a1, int64_t a2, char a3)
{
  result = sub_10019ADE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100199E8C(char *a1, int64_t a2, char a3)
{
  result = sub_10019AF14(a1, a2, a3, *v3, &qword_100AD6640);
  *v3 = result;
  return result;
}

char *sub_100199EBC(char *a1, int64_t a2, char a3)
{
  result = sub_10019B010(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100199EDC(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6528, &unk_1009451F0, &type metadata accessor for CKSyncEngine.PendingRecordZoneChange);
  *v3 = result;
  return result;
}

size_t sub_100199F20(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6638, &unk_100945318, type metadata accessor for CanvasPromptPickerController.Item);
  *v3 = result;
  return result;
}

size_t sub_100199F64(size_t a1, int64_t a2, char a3)
{
  result = sub_1000AF828(a1, a2, a3, *v3, &qword_100AD6630, &unk_100945308, &qword_100AD1420);
  *v3 = result;
  return result;
}

double *sub_100199FA4(double *a1, int64_t a2, char a3)
{
  result = sub_10019B27C(a1, a2, a3, *v3, &qword_100AD6620, &unk_1009452F8, &qword_100AD6628);
  *v3 = result;
  return result;
}

double *sub_100199FE4(double *a1, int64_t a2, char a3)
{
  result = sub_10006E540(a1, a2, a3, *v3, &qword_100AD6618);
  *v3 = result;
  return result;
}

size_t sub_10019A01C(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6610, &unk_1009452E8, type metadata accessor for Suggestion.ItemContent);
  *v3 = result;
  return result;
}

double *sub_10019A060(double *a1, int64_t a2, char a3)
{
  result = sub_10019B27C(a1, a2, a3, *v3, &qword_100AD64B0, &unk_100945178, &qword_100AD64B8);
  *v3 = result;
  return result;
}

size_t sub_10019A0A0(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD65F0, &unk_1009452C8, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

char *sub_10019A0E4(char *a1, int64_t a2, char a3)
{
  result = sub_10019B3B0(a1, a2, a3, *v3, &qword_100AD6568);
  *v3 = result;
  return result;
}

size_t sub_10019A114(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD64F0, &unk_1009451B8, &type metadata accessor for PHPickerResult);
  *v3 = result;
  return result;
}

size_t sub_10019A158(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6690, &unk_100945398, &type metadata accessor for MergeableTextList);
  *v3 = result;
  return result;
}

size_t sub_10019A19C(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD65D0, &unk_1009452A8, &type metadata accessor for DenylistDescriptor);
  *v3 = result;
  return result;
}

char *sub_10019A1E0(char *a1, int64_t a2, char a3)
{
  result = sub_10019B3B0(a1, a2, a3, *v3, &qword_100AD65E8);
  *v3 = result;
  return result;
}

size_t sub_10019A210(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD65D8, &unk_1009452B0, type metadata accessor for ManagedObjectBrowser.Item);
  *v3 = result;
  return result;
}

double *sub_10019A254(double *a1, int64_t a2, char a3)
{
  result = sub_10019B49C(a1, a2, a3, *v3, &qword_100AD65A0);
  *v3 = result;
  return result;
}

size_t sub_10019A28C(size_t a1, int64_t a2, char a3)
{
  result = sub_100029588(a1, a2, a3, *v3, &qword_100AD6580, &unk_100945258, type metadata accessor for SidebarInsightsBrickViewModel.MetricType);
  *v3 = result;
  return result;
}

char *sub_10019A2D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&unk_100AD9A60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10019A3DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD65E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10019A4E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD65C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10019A68C(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&unk_100AD8A90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_10019A790(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000F24EC(&qword_100AD64D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(&qword_100AD64D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10019A8E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000F24EC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F24EC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

double *sub_10019AA30(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD6500);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10019AB98(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD6510);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10019ACC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD6558);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10019ADE0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1000F24EC(&qword_100AD65B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000F24EC(&qword_100AD65C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10019AF14(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000F24EC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[16 * v9])
    {
      memmove(v14, v15, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 16 * v9);
  }

  return v11;
}

char *sub_10019B010(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000F24EC(&qword_100AD6650);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_10019B138(double *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000F24EC(&qword_100AD6608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10019B27C(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = *(a4 + 3);
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *(a4 + 2);
  if (v11 <= v12)
  {
    v13 = *(a4 + 2);
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1000F24EC(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *(v14 + 2) = v12;
    *(v14 + 3) = 2 * (v16 >> 4);
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[2 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 16 * v12);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000F24EC(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

char *sub_10019B3B0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000F24EC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

double *sub_10019B49C(double *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 16);
  if (v8 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    sub_1000F24EC(a5);
    v11 = swift_allocObject();
    v12 = j__malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v13 = (v11 + 4);
  v14 = (a4 + 32);
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[24 * v9])
    {
      memmove(v13, v14, 24 * v9);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v11;
}

unint64_t sub_10019B5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for Loc(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_100004F84(a4, &qword_100AD6598);
  }

  if (v17 < 1)
  {
    return sub_100004F84(a4, &qword_100AD6598);
  }

  result = sub_10010EE80(a4, v15);
  if (v12 >= v17)
  {
    return sub_100004F84(a4, &qword_100AD6598);
  }

LABEL_23:
  __break(1u);
  return result;
}

char *sub_10019B758(char *result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = &result[v7 + 32];
  if (v6)
  {
    v9 = *(v7 + 16);
    v10 = __OFSUB__(v9, a2);
    v11 = v9 - a2;
    if (!v10)
    {
      result = &v8[a3];
      v12 = (v7 + 32 + a2);
      if (&v8[a3] != v12 || result >= &v12[v11])
      {
        v14 = a3;
        v15 = a4;
        result = memmove(result, v12, v11);
        a3 = v14;
        a4 = v15;
      }

      v16 = *(v7 + 16);
      v10 = __OFADD__(v16, v6);
      v17 = v16 + v6;
      if (!v10)
      {
        *(v7 + 16) = v17;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 >= 1)
  {
    *v8 = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

char *sub_10019B814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v13 = *v6;
  v14 = (v13 + 32 + 24 * a1);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(a3, v7);
  v17 = a3 - v7;
  if (v16)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = *(v13 + 16);
  v16 = __OFSUB__(v18, a2);
  v19 = v18 - a2;
  if (v16)
  {
    goto LABEL_21;
  }

  result = &v14[3 * a3];
  v20 = (v13 + 32 + 24 * a2);
  if (result != v20 || result >= &v20[24 * v19])
  {
    result = memmove(result, v20, 24 * v19);
  }

  v22 = *(v13 + 16);
  v16 = __OFADD__(v22, v17);
  v23 = v22 + v17;
  if (v16)
  {
    goto LABEL_22;
  }

  *(v13 + 16) = v23;
LABEL_13:
  if (a3 >= 1)
  {
    *v14 = a4;
    v14[1] = a5;
    v14[2] = a6;
    if (a3 == 1)
    {
      return result;
    }

LABEL_23:

    __break(1u);
    return result;
  }
}

unint64_t sub_10019B958(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_10019BA44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

double *sub_10019BB28(uint64_t a1, void *a2, char *a3)
{
  v164 = a3;
  v148 = a2;
  v161 = a1;
  v149 = sub_1000F24EC(&qword_100AD64C0);
  __chkstk_darwin(v149);
  v150 = &v143 - v3;
  v4 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v4 - 8);
  v162 = &v143 - v5;
  v147 = type metadata accessor for StateOfMindAssetMetadata();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v145 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v143);
  v144 = (&v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v168 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider.ImageScale();
  v158 = *(v168 - 8);
  __chkstk_darwin(v168);
  v156 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = type metadata accessor for StateOfMindVisualization.ValenceImageProvider();
  v155 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = type metadata accessor for UUID();
  v167 = *(v163 - 8);
  v10 = v167;
  __chkstk_darwin(v163);
  v160 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v166 = &v143 - v13;
  v14 = type metadata accessor for AssetSource();
  v165 = *(v14 - 8);
  v15 = v165;
  __chkstk_darwin(v14);
  v159 = (&v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v143 - v18;
  v153 = &v143 - v18;
  v20 = type metadata accessor for AssetType();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v24);
  v27 = &v143 - v26;
  v28 = *(v21 + 104);
  v151 = v20;
  v28(&v143 - v26, enum case for AssetType.stateOfMind(_:), v20, v25);
  v152 = *(v15 + 16);
  v152(v19, v161, v14);
  v29 = v166;
  UUID.init()();
  v30 = objc_allocWithZone(type metadata accessor for StateOfMindAsset());
  *&v30[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = 0;
  v31 = v10[2];
  v32 = v160;
  v33 = v163;
  v31(v160, v29, v163);
  (*(v21 + 16))(v23, v27, v20);
  v34 = v159;
  v35 = v153;
  v152(v159, v153, v14);
  v36 = v164;
  v160 = sub_100285908(v32, v23, v34);
  v37 = v167[1];
  ++v167;
  v159 = v37;
  v37(v166, v33);
  v38 = *(v165 + 8);
  v153 = v14;
  v165 += 8;
  v38(v35, v14);
  (*(v21 + 8))(v27, v151);
  v152 = v38;
  if (v36)
  {
    [v36 valence];
  }

  (v158)[13](v156, enum case for StateOfMindVisualization.ValenceImageProvider.ImageScale.confirmationView(_:), v168);
  v39 = v154;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)();
  v40 = StateOfMindVisualization.ValenceImageProvider.uiImage.getter();
  (*(v155 + 8))(v39, v157);
  v41 = [v40 imageAsset];
  v158 = v40;
  if (v41)
  {
    v42 = v41;
    v43 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
    v44 = [v42 imageWithTraitCollection:v43];

    if (v44)
    {
      v45 = v144;
      *v144 = v44;
      swift_storeEnumTagMultiPayload();
      v46 = v44;
      v47 = v166;
      UUID.init()();
      v48 = UUID.uuidString.getter();
      v50 = v49;
      v159(v47, v163);
      type metadata accessor for AssetAttachment(0);
      v51 = swift_allocObject();
      *(v51 + 16) = 0;
      sub_1001700CC(v45, v51 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
      v52 = (v51 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v52 = v48;
      v52[1] = v50;
      v53 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      v54 = v160;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v54[v53] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v54[v53] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v36 = v164;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v40 = v158;
    }
  }

  v55 = [v40 imageAsset];
  if (v55)
  {
    v56 = v55;
    v57 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
    v58 = [v56 imageWithTraitCollection:v57];

    if (v58)
    {
      v59 = v144;
      *v144 = v58;
      swift_storeEnumTagMultiPayload();
      v60 = v58;
      v61 = v166;
      UUID.init()();
      v62 = UUID.uuidString.getter();
      v64 = v63;
      v159(v61, v163);
      type metadata accessor for AssetAttachment(0);
      v65 = swift_allocObject();
      *(v65 + 16) = 1;
      sub_1001700CC(v59, v65 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
      v66 = (v65 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v66 = v62;
      v66[1] = v64;
      v67 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      v68 = v160;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v68[v67] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v68[v67] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }
  }

  if (v36)
  {
    [v36 valence];
  }

  sub_1000065A8(0, &qword_100AD64F8);
  v69 = static CAGradientLayer.gradientLayerForValence(_:style:)();
  v70 = [v69 colors];

  if (v70)
  {
    v71 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = sub_10058491C(v71);

    if (!v36)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v72 = 0;
  if (v36)
  {
LABEL_17:
    [v36 valence];
  }

LABEL_19:
  v73 = v162;
  v74 = static CAGradientLayer.gradientLayerForValence(_:style:)();
  v75 = [v74 colors];

  if (v75)
  {
    v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v77 = sub_10058491C(v76);

    v78 = v77;
  }

  else
  {
    v78 = 0;
  }

  v79 = _swiftEmptyArrayStorage;
  v168 = v78;
  if (!v72)
  {
    goto LABEL_36;
  }

  if (v72 >> 62)
  {
    v96 = v78;
    v97 = _CocoaArrayWrapper.endIndex.getter();
    v78 = v96;
    v80 = v97;
    if (v97)
    {
      goto LABEL_25;
    }

LABEL_35:
    v98 = v78;

    v78 = v98;
    goto LABEL_36;
  }

  v80 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v80)
  {
    goto LABEL_35;
  }

LABEL_25:
  v169 = _swiftEmptyArrayStorage;
  result = sub_100199BF4(0, v80 & ~(v80 >> 63), 0);
  if (v80 < 0)
  {
    __break(1u);
    goto LABEL_68;
  }

  v82 = 0;
  v79 = v169;
  v83 = v72;
  v84 = v72 & 0xC000000000000001;
  v85 = v72;
  do
  {
    v86 = v79;
    if (v84)
    {
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v87 = *(v83 + 8 * v82 + 32);
    }

    v88 = v87;
    v89 = [objc_allocWithZone(UIColor) initWithCGColor:v87];
    sub_1000065A8(0, &qword_100AD4C70);
    v90 = NSCoding<>.toData.getter();
    v92 = v91;

    v79 = v86;
    v169 = v86;
    v93 = *(v86 + 2);
    v94 = *(v79 + 3);
    if (v93 >= v94 >> 1)
    {
      sub_100199BF4((v94 > 1), v93 + 1, 1);
      v79 = v169;
    }

    ++v82;
    *(v79 + 2) = v93 + 1;
    v95 = &v79[2 * v93];
    *(v95 + 4) = v90;
    *(v95 + 5) = v92;
    v83 = v85;
  }

  while (v80 != v82);

  v73 = v162;
  v78 = v168;
LABEL_36:
  v157 = v79;
  if (!v78)
  {
    v114 = v164;
    if (v164)
    {
      goto LABEL_50;
    }

LABEL_65:
    v136 = type metadata accessor for Date();
    (*(*(v136 - 8) + 56))(v73, 1, 1, v136);
    v128 = v114;
LABEL_66:
    v137 = v145;
    StateOfMindAssetMetadata.init(stateOfMindIdentifier:date:reflectiveInterval:labels:domains:valenceClassification:backgroundColorsLight:backgroundColorsDark:)();

    (v152)(v161, v153);
    v138 = v150;
    (*(v146 + 32))(v150, v137, v147);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD64C8);
    v139 = swift_allocObject();
    v140 = *(*v139 + 104);
    v141 = sub_1000F24EC(&qword_100AE6680);
    (*(*(v141 - 8) + 56))(v139 + v140, 1, 1, v141);
    *(v139 + *(*v139 + 112)) = xmmword_100941EE0;
    sub_10019D9AC(v138, v139 + *(*v139 + 120));
    v142 = v160;
    *&v160[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = v139;

    return v142;
  }

  if (!(v78 >> 62))
  {
    v99 = v78;
    v100 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v100)
    {
      goto LABEL_39;
    }

    goto LABEL_64;
  }

  v99 = v78;
  v100 = _CocoaArrayWrapper.endIndex.getter();
  if (!v100)
  {
LABEL_64:

    v114 = v164;
    if (v164)
    {
      goto LABEL_50;
    }

    goto LABEL_65;
  }

LABEL_39:
  v169 = _swiftEmptyArrayStorage;
  result = sub_100199BF4(0, v100 & ~(v100 >> 63), 0);
  if ((v100 & 0x8000000000000000) == 0)
  {
    v101 = 0;
    v102 = v169;
    v103 = v99;
    v104 = v99 & 0xC000000000000001;
    do
    {
      if (v104)
      {
        v105 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v105 = *(v103 + 8 * v101 + 32);
      }

      v106 = v105;
      v107 = [objc_allocWithZone(UIColor) initWithCGColor:v105];
      sub_1000065A8(0, &qword_100AD4C70);
      v108 = NSCoding<>.toData.getter();
      v110 = v109;

      v169 = v102;
      v112 = *(v102 + 2);
      v111 = *(v102 + 3);
      if (v112 >= v111 >> 1)
      {
        sub_100199BF4((v111 > 1), v112 + 1, 1);
        v102 = v169;
      }

      ++v101;
      *(v102 + 2) = v112 + 1;
      v113 = &v102[2 * v112];
      *(v113 + 4) = v108;
      *(v113 + 5) = v110;
      v103 = v168;
    }

    while (v100 != v101);

    v73 = v162;
    v114 = v164;
    if (!v164)
    {
      goto LABEL_65;
    }

LABEL_50:
    v115 = [v114 UUID];
    v116 = v166;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v156 = UUID.uuidString.getter();
    v168 = v117;
    v159(v116, v163);
    v118 = [v114 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v119 = type metadata accessor for Date();
    (*(*(v119 - 8) + 56))(v73, 0, 1, v119);
    v167 = [v114 reflectiveInterval];
    v120 = v114;
    v121 = HKStateOfMind.labels.getter();

    v122 = *(v121 + 16);
    if (v122)
    {
      v169 = _swiftEmptyArrayStorage;
      sub_100199BD4(0, v122, 0);
      v123 = v169;
      v124 = *(v169 + 2);
      v125 = 32;
      do
      {
        v126 = *(v121 + v125);
        v169 = v123;
        v127 = *(v123 + 3);
        if (v124 >= v127 >> 1)
        {
          sub_100199BD4((v127 > 1), v124 + 1, 1);
          v123 = v169;
        }

        *(v123 + 2) = v124 + 1;
        v123[v124 + 4] = v126;
        v125 += 8;
        ++v124;
        --v122;
      }

      while (v122);
    }

    v128 = v120;
    v129 = HKStateOfMind.associations.getter();

    v130 = *(v129 + 16);
    if (v130)
    {
      v166 = v128;
      v169 = _swiftEmptyArrayStorage;
      sub_100199BD4(0, v130, 0);
      v131 = v169;
      v132 = *(v169 + 2);
      v133 = 32;
      do
      {
        v134 = *(v129 + v133);
        v169 = v131;
        v135 = *(v131 + 3);
        if (v132 >= v135 >> 1)
        {
          sub_100199BD4((v135 > 1), v132 + 1, 1);
          v131 = v169;
        }

        *(v131 + 2) = v132 + 1;
        v131[v132 + 4] = v134;
        v133 += 8;
        ++v132;
        --v130;
      }

      while (v130);

      v128 = v166;
    }

    else
    {
    }

    [v128 valenceClassification];
    goto LABEL_66;
  }

LABEL_68:
  __break(1u);
  return result;
}

char *sub_10019CD80(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char *a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, char *a14)
{
  v104 = a8;
  v105 = a5;
  v106 = a7;
  v114 = a6;
  v103 = a4;
  v117 = a3;
  v118 = a2;
  v115 = a1;
  v98 = a13;
  v107 = sub_1000F24EC(&qword_100AD64C0);
  __chkstk_darwin(v107);
  v108 = &v96 - v14;
  v15 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v15 - 8);
  v113 = &v96 - v16;
  v102 = type metadata accessor for StateOfMindAssetMetadata();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v109);
  v110 = (&v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v116 = type metadata accessor for UUID();
  v120 = *(v116 - 8);
  v19 = v120;
  __chkstk_darwin(v116);
  v121 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v112 = &v96 - v22;
  v23 = type metadata accessor for AssetSource();
  v119 = *(v23 - 8);
  v24 = v119;
  __chkstk_darwin(v23);
  v111 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v96 - v27;
  v99 = &v96 - v27;
  v29 = type metadata accessor for AssetType();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v33);
  v36 = &v96 - v35;
  v37 = *(v30 + 104);
  v96 = v29;
  v37(&v96 - v35, enum case for AssetType.stateOfMind(_:), v29, v34);
  v97 = *(v24 + 16);
  v97(v28, v115, v23);
  v38 = v112;
  UUID.init()();
  v39 = objc_allocWithZone(type metadata accessor for StateOfMindAsset());
  *&v39[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = 0;
  v40 = v121;
  (*(v19 + 16))(v121, v38, v116);
  (*(v30 + 16))(v32, v36, v29);
  v41 = v111;
  v42 = v99;
  v97(v111, v99, v23);
  v43 = sub_100285908(v40, v32, v41);
  v44 = *(v120 + 8);
  v45 = v112;
  v120 += 8;
  v44();
  v46 = *(v119 + 8);
  v99 = v23;
  v119 += 8;
  v97 = v46;
  (v46)(v42, v23);
  (*(v30 + 8))(v36, v96);
  v111 = v43;
  if (v118)
  {
    v47 = v118;
    v48 = v110;
    *v110 = v118;
    swift_storeEnumTagMultiPayload();
    v49 = v47;
    UUID.init()();
    v50 = UUID.uuidString.getter();
    v52 = v51;
    (v44)(v45, v116);
    type metadata accessor for AssetAttachment(0);
    v53 = swift_allocObject();
    *(v53 + 16) = 0;
    sub_1001700CC(v48, v53 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
    v54 = (v53 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v54 = v50;
    v54[1] = v52;
    v55 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v43[v55] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v43[v55] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v121 = a14;
  v56 = v98;
  if (v117)
  {
    v57 = v117;
    v58 = v110;
    *v110 = v117;
    swift_storeEnumTagMultiPayload();
    v59 = v57;
    UUID.init()();
    v60 = UUID.uuidString.getter();
    v62 = v61;
    (v44)(v45, v116);
    type metadata accessor for AssetAttachment(0);
    v63 = swift_allocObject();
    *(v63 + 16) = 1;
    v64 = v111;
    sub_1001700CC(v58, v63 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType);
    v65 = (v63 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v65 = v60;
    v65[1] = v62;
    v66 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v64[v66] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v64[v66] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  v120 = a11;
  v116 = a10;
  v112 = a9;
  sub_100088AC8(v114, v113);
  v67 = *(v56 + 16);
  if (v67)
  {
    v122 = _swiftEmptyArrayStorage;
    sub_100199BF4(0, v67, 0);
    v68 = 32;
    v69 = v122;
    do
    {
      v70 = *(v56 + v68);
      if (v70)
      {
        sub_1000065A8(0, &qword_100AD4C70);
        v71 = v70;
        v72 = NSCoding<>.toData.getter();
        v74 = v73;
      }

      else
      {
        v72 = 0;
        v74 = 0xF000000000000000;
      }

      v122 = v69;
      v76 = *(v69 + 2);
      v75 = *(v69 + 3);
      if (v76 >= v75 >> 1)
      {
        sub_100199BF4((v75 > 1), v76 + 1, 1);
        v69 = v122;
      }

      *(v69 + 2) = v76 + 1;
      v77 = &v69[2 * v76];
      *(v77 + 4) = v72;
      *(v77 + 5) = v74;
      v68 += 8;
      --v67;
    }

    while (v67);
  }

  v78 = *(v121 + 2);
  if (v78)
  {
    LODWORD(v110) = a12;
    v122 = _swiftEmptyArrayStorage;
    sub_100199BF4(0, v78, 0);
    v79 = v121;
    v80 = v122;
    v81 = 32;
    do
    {
      v82 = *&v79[v81];
      if (v82)
      {
        sub_1000065A8(0, &qword_100AD4C70);
        v83 = v82;
        v82 = NSCoding<>.toData.getter();
        v85 = v84;

        v79 = v121;
      }

      else
      {
        v85 = 0xF000000000000000;
      }

      v122 = v80;
      v87 = *(v80 + 2);
      v86 = *(v80 + 3);
      if (v87 >= v86 >> 1)
      {
        sub_100199BF4((v86 > 1), v87 + 1, 1);
        v79 = v121;
        v80 = v122;
      }

      *(v80 + 2) = v87 + 1;
      v88 = &v80[2 * v87];
      *(v88 + 4) = v82;
      *(v88 + 5) = v85;
      v81 += 8;
      --v78;
    }

    while (v78);
  }

  v89 = v100;
  StateOfMindAssetMetadata.init(stateOfMindIdentifier:date:reflectiveInterval:labels:domains:valenceClassification:backgroundColorsLight:backgroundColorsDark:)();

  sub_100004F84(v114, &unk_100AD4790);
  (v97)(v115, v99);
  v90 = v108;
  (*(v101 + 32))(v108, v89, v102);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD64C8);
  v91 = swift_allocObject();
  v92 = *(*v91 + 104);
  v93 = sub_1000F24EC(&qword_100AE6680);
  (*(*(v93 - 8) + 56))(v91 + v92, 1, 1, v93);
  *(v91 + *(*v91 + 112)) = xmmword_100941EE0;
  sub_10019D9AC(v90, v91 + *(*v91 + 120));
  v94 = v111;
  *&v111[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = v91;

  return v94;
}

uint64_t sub_10019D8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for Asset();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_10019D9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AD64C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_10019DA30(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unint64_t *a5)
{
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v9 = a4;
  v5 = a3;
  v8 = a2;
  v13 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v10 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_1000065A8(0, a5);
  result = swift_arrayDestroy();
  v15 = __OFSUB__(v5, v12);
  v12 = v5 - v12;
  if (v15)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v12)
  {
    v11 = v13 >> 62;
    if (!(v13 >> 62))
    {
      result = v6[2];
      v16 = &result[-v8];
      if (!__OFSUB__(result, v8))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = &result[-v8];
    if (!__OFSUB__(result, v8))
    {
LABEL_6:
      v17 = &v7[v5];
      v18 = &v10[v8];
      if (v17 != v18 || v17 >= &v18[8 * v16])
      {
        memmove(v17, v18, 8 * v16);
      }

      if (v11)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v6[2];
      }

      if (!__OFADD__(result, v12))
      {
        v6[2] = &result[v12];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v5 > 0)
  {
    *v7 = v9;
    result = v9;
    if (v5 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_10019DB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1000065A8(0, &unk_100ADC630);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_10019DC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
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
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_10019DDDC(uint64_t a1, uint64_t *a2)
{
  v39 = a2;
  v3 = sub_1000F24EC(&qword_100AD6908);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = type metadata accessor for TokenTypeIdentifier();
  v35 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v40 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = (v35 + 48);
  v37 = v5;
  v38 = (v35 + 32);
  v34[1] = v35 + 16;
  v36 = (v35 + 8);
  for (i = a1 + 40; ; i += 16)
  {
    swift_bridgeObjectRetain_n();
    TokenTypeIdentifier.init(rawValue:)();
    if ((*v10)(v5, 1, v6) == 1)
    {
      sub_100004F84(v5, &qword_100AD6908);
      goto LABEL_4;
    }

    v12 = v40;
    v13 = v5;
    v14 = v6;
    (*v38)(v40, v13, v6);
    v15 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *v15;
    v17 = v41;
    *v15 = 0x8000000000000000;
    v19 = sub_100362118(v12);
    v20 = *(v17 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (*(v17 + 24) >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100822044();
        v17 = v41;
      }
    }

    else
    {
      sub_10081D4F4(v22, isUniquelyReferenced_nonNull_native);
      v17 = v41;
      v24 = sub_100362118(v40);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_21;
      }

      v19 = v24;
    }

    v6 = v14;
    v26 = v39;
    *v39 = v17;

    v27 = *v26;
    if ((v23 & 1) == 0)
    {
      v27[(v19 >> 6) + 8] |= 1 << v19;
      (*(v35 + 16))(v27[6] + *(v35 + 72) * v19, v40, v6);
      *(v27[7] + 8 * v19) = 0;
      v28 = v27[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v27[2] = v30;
    }

    v31 = v27[7];
    v32 = *(v31 + 8 * v19);
    v29 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v29)
    {
      goto LABEL_19;
    }

    *(v31 + 8 * v19) = v33;
    (*v36)(v40, v6);
    v5 = v37;
LABEL_4:

    if (!--v9)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10019E120(uint64_t a1, uint64_t *a2)
{
  v38 = a2;
  v3 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v3 - 8);
  v5 = v33 - v4;
  v6 = type metadata accessor for UUID();
  v34 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v39 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    return result;
  }

  v10 = (v34 + 48);
  v36 = v5;
  v37 = (v34 + 32);
  v33[1] = v34 + 16;
  v35 = (v34 + 8);
  for (i = a1 + 40; ; i += 16)
  {

    UUID.init(uuidString:)();
    if ((*v10)(v5, 1, v6) == 1)
    {
      sub_100004F84(v5, &qword_100AD1420);
      goto LABEL_4;
    }

    v12 = v39;
    v13 = v6;
    (*v37)(v39, v5, v6);
    v14 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v14;
    v16 = v40;
    *v14 = 0x8000000000000000;
    v18 = sub_100361E08(v12);
    v19 = *(v16 + 16);
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (*(v16 + 24) >= v21)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100821358();
        v16 = v40;
      }
    }

    else
    {
      sub_10081BC14(v21, isUniquelyReferenced_nonNull_native);
      v16 = v40;
      v23 = sub_100361E08(v39);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

      v18 = v23;
    }

    v6 = v13;
    v25 = v38;
    *v38 = v16;

    v26 = *v25;
    if ((v22 & 1) == 0)
    {
      v26[(v18 >> 6) + 8] |= 1 << v18;
      (*(v34 + 16))(v26[6] + *(v34 + 72) * v18, v39, v6);
      *(v26[7] + 8 * v18) = 0;
      v27 = v26[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_20;
      }

      v26[2] = v29;
    }

    v30 = v26[7];
    v31 = *(v30 + 8 * v18);
    v28 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v28)
    {
      goto LABEL_19;
    }

    *(v30 + 8 * v18) = v32;
    (*v35)(v39, v6);
    v5 = v36;
LABEL_4:

    if (!--v9)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10019E460(int a1, char a2)
{
  v43 = a1;
  v4 = type metadata accessor for EntryListType();
  __chkstk_darwin(v4 - 8);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() userQueryContextWithCurrentSuggestion:*(v2 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion)];
  v7 = v6;
  if (a2)
  {
    v8 = 15;
  }

  else
  {
    v8 = 6;
  }

  [v6 setMaxSuggestionCount:v8];
  v44 = v7;
  [v7 setEnableSuggestionTokens:1];
  v9 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
  swift_beginAccess();
  v42 = v2;
  v10 = *(v2 + v9);
  v11 = 1 << *(v10 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v10 + 56);
  v14 = (v11 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  if (v13)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_31:
      v16 = sub_10009BCC8(0, *(v16 + 2) + 1, 1, v16);
      goto LABEL_21;
    }

    if (v17 >= v14)
    {
      break;
    }

    v13 = *(v10 + 56 + 8 * v17);
    ++v15;
    if (v13)
    {
      v15 = v17;
      do
      {
LABEL_11:
        v18 = *(v10 + 48) + 88 * (__clz(__rbit64(v13)) | (v15 << 6));
        v19 = *(v18 + 32);
        v20 = *(v18 + 40);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_10009BCC8(0, *(v16 + 2) + 1, 1, v16);
        }

        v22 = *(v16 + 2);
        v21 = *(v16 + 3);
        if (v22 >= v21 >> 1)
        {
          v16 = sub_10009BCC8((v21 > 1), v22 + 1, 1, v16);
        }

        v13 &= v13 - 1;
        *(v16 + 2) = v22 + 1;
        v23 = &v16[16 * v22];
        *(v23 + 4) = v19;
        *(v23 + 5) = v20;
      }

      while (v13);
    }
  }

  v24 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_entryListType;
  v25 = sub_1000F24EC(&qword_100AD47A0);
  v26 = v41;
  (*(*(v25 - 8) + 56))(v41, 1, 2, v25);
  v27 = sub_100023858(v42 + v24, v26);
  sub_1001A973C(v26, type metadata accessor for EntryListType);
  if (v27)
  {
    v13 = v44;
    if ((v43 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = v44;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v30 = *(v16 + 2);
  v29 = *(v16 + 3);
  if (v30 >= v29 >> 1)
  {
    v16 = sub_10009BCC8((v29 > 1), v30 + 1, 1, v16);
  }

  *(v16 + 2) = v30 + 1;
  v31 = &v16[16 * v30];
  *(v31 + 4) = 0xD000000000000028;
  *(v31 + 5) = 0x80000001008E3A70;
  if (v43)
  {
LABEL_24:
    v32 = v13;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v32 setFetchAttributes:isa];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_10009BCC8(0, *(v16 + 2) + 1, 1, v16);
    }

    v35 = *(v16 + 2);
    v34 = *(v16 + 3);
    if (v35 >= v34 >> 1)
    {
      v16 = sub_10009BCC8((v34 > 1), v35 + 1, 1, v16);
    }

    *(v16 + 2) = v35 + 1;
    v36 = &v16[16 * v35];
    *(v36 + 4) = 0xD000000000000025;
    *(v36 + 5) = 0x80000001008E3AA0;
  }

LABEL_29:
  v37 = v13;
  v38 = Array._bridgeToObjectiveC()().super.isa;

  [v37 setFilterQueries:v38];

  return v37;
}

uint64_t sub_10019E8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 1976) = v5;
  *(v6 + 2096) = a5;
  *(v6 + 1968) = a4;
  *(v6 + 1960) = a3;
  *(v6 + 1952) = a2;
  *(v6 + 1944) = a1;
  v7 = type metadata accessor for CharacterSet();
  *(v6 + 1984) = v7;
  *(v6 + 1992) = *(v7 - 8);
  *(v6 + 2000) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6920);
  *(v6 + 2008) = swift_task_alloc();
  v8 = type metadata accessor for CoreSpotlightSearchSuggestionItem(0);
  *(v6 + 2016) = v8;
  *(v6 + 2024) = *(v8 - 8);
  *(v6 + 2032) = swift_task_alloc();

  return _swift_task_switch(sub_10019EA30, v5, 0);
}

uint64_t sub_10019EA30()
{
  v1 = *(v0 + 1952);
  if (!v1)
  {
    goto LABEL_44;
  }

  v2 = *(v0 + 1944) & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
LABEL_44:
    if (!*(*(v0 + 1960) + 16))
    {
      sub_1001A3398();
    }
  }

  v3 = *(v0 + 2024);
  sub_1000082B4(*(v0 + 1968), v0 + 1720, &unk_100AE4E00);
  v4 = (v3 + 56);
  if (*(v0 + 1744))
  {
    v5 = *(v0 + 2024);
    v6 = *(v0 + 2016);
    v7 = *(v0 + 2008);
    sub_1000F24EC(&qword_100AD6668);
    v8 = swift_dynamicCast();
    (*v4)(v7, v8 ^ 1u, 1, v6);
    if ((*(v5 + 48))(v7, 1, v6) != 1)
    {
      v9 = *(v0 + 1976);
      sub_100018228(*(v0 + 2008), *(v0 + 2032), type metadata accessor for CoreSpotlightSearchSuggestionItem);
      v10 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion;
      v11 = *(v9 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion);
      v12 = v11;
      if (v1)
      {
        v13 = String._bridgeToObjectiveC()();
      }

      else
      {
        v13 = 0;
      }

      isa = [*(*(v0 + 2032) + *(*(v0 + 2016) + 20)) suggestionTokens];
      if (!isa)
      {
        sub_1001A91CC();
        static Array._unconditionallyBridgeFromObjectiveC(_:)();
        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      v48 = *(v0 + 2032);
      v49 = [objc_opt_self() updatedSuggestionWithCurrentSuggestion:v11 userString:v13 tokens:isa];

      v50 = *(v9 + v10);
      *(v9 + v10) = v49;

      sub_1001A973C(v48, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      goto LABEL_36;
    }
  }

  else
  {
    v14 = *(v0 + 2016);
    v15 = *(v0 + 2008);
    sub_100004F84(v0 + 1720, &unk_100AE4E00);
    (*v4)(v15, 1, 1, v14);
  }

  v16 = (v0 + 1800);
  v17 = *(v0 + 1968);
  sub_100004F84(*(v0 + 2008), &unk_100AD6920);
  sub_1000082B4(v17, v0 + 1840, &unk_100AE4E00);
  if (!*(v0 + 1864))
  {
    sub_100004F84(v0 + 1840, &unk_100AE4E00);
    *v16 = 0u;
    *(v0 + 1816) = 0u;
    *(v0 + 1832) = 0;
    goto LABEL_20;
  }

  sub_1000F24EC(&qword_100AD6668);
  sub_1000F24EC(&unk_100AD68B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 1832) = 0;
    *v16 = 0u;
    *(v0 + 1816) = 0u;
    goto LABEL_20;
  }

  if (!*(v0 + 1824))
  {
LABEL_20:
    sub_100004F84(v0 + 1800, &qword_100AD6930);
    goto LABEL_21;
  }

  v18 = *(v0 + 1976);
  sub_100018480((v0 + 1800), v0 + 1760);
  v19 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion;
  v71 = v18;
  v20 = *(v18 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion);
  v21 = *(v0 + 1784);
  v22 = *(v0 + 1792);
  sub_10000CA14((v0 + 1760), v21);
  v23 = *(v22 + 8);
  v24 = *(v23 + 32);
  v25 = v20;
  v24(v21, v23);

  sub_1001A911C(v0 + 1592);
  v26 = *(v0 + 1784);
  v27 = *(v0 + 1792);
  sub_10000CA14((v0 + 1760), v26);
  (*(*(v27 + 8) + 32))(v26);

  sub_1001A911C(v0 + 1464);
  v28 = *(v0 + 1784);
  v29 = *(v0 + 1792);
  sub_10000CA14((v0 + 1760), v28);
  (*(*(v29 + 8) + 32))(v28);

  sub_1001A911C(v0 + 1336);
  v30 = String._bridgeToObjectiveC()();

  v31 = String._bridgeToObjectiveC()();

  v32 = String._bridgeToObjectiveC()();

  v33 = objc_opt_self();
  v34 = [v33 suggestionWithCurrentSuggestion:v25 userQueryString:v30 suggestionText:v31 queryString:v32];

  if (v34)
  {
    v35 = v71;
    v36 = *(v71 + v19);
    v37 = v36;
    if (v1)
    {
      v38 = String._bridgeToObjectiveC()();
    }

    else
    {
      v38 = 0;
    }

    v51 = [v34 suggestionTokens];
    if (!v51)
    {
      sub_1001A91CC();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = Array._bridgeToObjectiveC()().super.isa;
    }

    v52 = [v33 updatedSuggestionWithCurrentSuggestion:v36 userString:v38 tokens:v51];

    v53 = *(v35 + v19);
    *(v35 + v19) = v52;

    sub_10000BA7C(v0 + 1760);
    goto LABEL_36;
  }

  sub_10000BA7C(v0 + 1760);
LABEL_21:
  v39 = *(v0 + 1976);
  v40 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion;
  v41 = *(v39 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion);
  v42 = v41;
  if (v1)
  {
    v43 = String._bridgeToObjectiveC()();
    v42 = *(v39 + v40);
  }

  else
  {
    v43 = 0;
  }

  v44 = [v42 currentTokens];
  if (!v44)
  {
    sub_1001A91CC();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = Array._bridgeToObjectiveC()().super.isa;
  }

  v45 = [objc_opt_self() updatedSuggestionWithCurrentSuggestion:v41 userString:v43 tokens:v44];

  v46 = *(v39 + v40);
  *(v39 + v40) = v45;

LABEL_36:
  v54 = *(v0 + 1976);

  v56 = sub_100890CD0(v55);

  v57 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
  swift_beginAccess();
  *(v54 + v57) = v56;

  if (v1)
  {
    v58 = *(v0 + 2000);
    v59 = *(v0 + 1992);
    v60 = *(v0 + 1984);
    v61 = *(v0 + 1952);
    *(v0 + 1920) = *(v0 + 1944);
    *(v0 + 1928) = v61;

    static CharacterSet.whitespacesAndNewlines.getter();
    sub_1000777B4();
    v62 = StringProtocol.trimmingCharacters(in:)();
    v64 = v63;
    (*(v59 + 8))(v58, v60);
  }

  else
  {
    v64 = 0;
    v62 = *(v0 + 1944);
  }

  *(v0 + 2040) = v64;
  v65 = *(v0 + 1976);
  v66 = *(v0 + 2096);
  v67 = *(v0 + 1968);
  v68 = swift_task_alloc();
  *(v0 + 2048) = v68;
  v68[2] = v65;
  v68[3] = v62;
  v68[4] = v64;
  v68[5] = v67;
  sub_1000F24EC(&qword_100AD6938);
  swift_asyncLet_begin();
  v69 = swift_task_alloc();
  *(v0 + 2056) = v69;
  *(v69 + 16) = v65;
  *(v69 + 24) = v62;
  *(v69 + 32) = v64;
  *(v69 + 40) = v67;
  *(v69 + 48) = v66;
  sub_1000F24EC(&qword_100AD6940);
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 1904, sub_10019F2B8, v0 + 1296);
}

uint64_t sub_10019F2B8()
{
  v1 = v0[238];
  v0[258] = v1;
  v0[259] = v0[239];
  sub_1001A9408(v1);

  return _swift_asyncLet_get(v0 + 82, v0 + 242, sub_10019F330, v0 + 178);
}

uint64_t sub_10019F34C()
{
  v1 = *(v0 + 2064);
  v2 = *(v0 + 1936);
  if (v1 == 1)
  {
  }

  else
  {
    sub_1001A9408(*(v0 + 2064));

    if (v1)
    {
      v3 = *(*(v0 + 2064) + 16);

      v4 = v3;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = sub_1001A9450(v2, v4, *(v0 + 2096));

  if (v1 == 1)
  {
    *(v0 + 2080) = sub_1001A9670(0, v5, *(v0 + 2096));

    v6 = 0;
  }

  else
  {

    *(v0 + 2080) = sub_1001A9670(v7, v5, *(v0 + 2096));

    v6 = *(v0 + 2064);
  }

  *(v0 + 2088) = v6;

  return _swift_asyncLet_finish(v0 + 656, v0 + 1936, sub_10019F498, v0 + 1552);
}

uint64_t sub_10019F4B4()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 1904, sub_10019F520, v0 + 1680);
}

uint64_t sub_10019F53C()
{

  v1 = v0[1];
  v2 = v0[261];
  v3 = v0[260];

  return v1(v2, v3);
}

uint64_t sub_10019F5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  return _swift_task_switch(sub_10019F604, 0, 0);
}

uint64_t sub_10019F604()
{
  v13 = v0;
  sub_1000082B4(*(v0 + 264), v0 + 192, &unk_100AE4E00);
  v1 = *(v0 + 216);
  if (v1)
  {
    v2 = *(v0 + 224);
    sub_10000CA14((v0 + 192), *(v0 + 216));
    (*(v2 + 32))(v11, v1, v2);
    sub_10000BA7C(v0 + 192);
    v3 = v11[3];
    *(v0 + 48) = v11[2];
    *(v0 + 64) = v3;
    *(v0 + 80) = v11[4];
    *(v0 + 96) = v12;
    v4 = v11[1];
    *(v0 + 16) = v11[0];
    *(v0 + 32) = v4;
  }

  else
  {
    sub_100004F84(v0 + 192, &unk_100AE4E00);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0;
  }

  v5 = *(v0 + 64);
  *(v0 + 136) = *(v0 + 48);
  *(v0 + 152) = v5;
  *(v0 + 168) = *(v0 + 80);
  *(v0 + 184) = *(v0 + 96);
  v6 = *(v0 + 32);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v6;
  v7 = swift_task_alloc();
  *(v0 + 272) = v7;
  *v7 = v0;
  v7[1] = sub_10019F780;
  v9 = *(v0 + 248);
  v8 = *(v0 + 256);

  return sub_10019FC20(v9, v8, v0 + 104);
}

uint64_t sub_10019F780(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = a2;

  sub_100004F84(v3 + 16, &qword_100AD68D0);

  return _swift_task_switch(sub_10019F898, 0, 0);
}

uint64_t sub_10019F8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 288) = a6;
  *(v6 + 256) = a4;
  *(v6 + 264) = a5;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  *(v6 + 232) = a1;
  return _swift_task_switch(sub_10019F8EC, 0, 0);
}

uint64_t sub_10019F8EC()
{
  v16 = v0;
  v1 = *(v0 + 256);
  sub_1000082B4(*(v0 + 264), v0 + 192, &unk_100AE4E00);
  v2 = *(v0 + 216);
  if (v2)
  {
    v3 = *(v0 + 224);
    sub_10000CA14((v0 + 192), *(v0 + 216));
    v4 = *(v3 + 32);

    v4(v14, v2, v3);
    sub_10000BA7C(v0 + 192);
    v5 = v14[3];
    *(v0 + 136) = v14[2];
    *(v0 + 152) = v5;
    *(v0 + 168) = v14[4];
    *(v0 + 184) = v15;
    v6 = v14[1];
    *(v0 + 104) = v14[0];
    *(v0 + 120) = v6;
  }

  else
  {

    sub_100004F84(v0 + 192, &unk_100AE4E00);
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 136) = 0u;
    *(v0 + 152) = 0u;
    *(v0 + 168) = 0u;
    *(v0 + 184) = 0;
  }

  if (*(v0 + 256))
  {
    v7 = v1;
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  if (*(v0 + 256))
  {
    v8 = *(v0 + 248);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(v0 + 152);
  *(v0 + 48) = *(v0 + 136);
  *(v0 + 64) = v9;
  *(v0 + 80) = *(v0 + 168);
  *(v0 + 96) = *(v0 + 184);
  v10 = *(v0 + 120);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v10;
  v11 = swift_task_alloc();
  *(v0 + 272) = v11;
  *v11 = v0;
  v11[1] = sub_10019FAB8;
  v12 = *(v0 + 288);

  return sub_1001A1320(v8, v7, v0 + 16, v12);
}

uint64_t sub_10019FAB8(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 280) = a1;

  sub_100004F84(v2 + 104, &qword_100AD68D0);

  return _swift_task_switch(sub_10019FBFC, 0, 0);
}

uint64_t sub_10019FC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = *(a3 + 24);
  *(v4 + 64) = *(a3 + 8);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(a3 + 40);
  *(v4 + 88) = *(a3 + 56);
  *(v4 + 104) = *(a3 + 80);
  sub_1000F24EC(&unk_100AD6DD0);
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v7 = type metadata accessor for CSUserQuery.Item();
  *(v4 + 152) = v7;
  *(v4 + 160) = *(v7 - 8);
  *(v4 + 168) = swift_task_alloc();
  v8 = type metadata accessor for CoreSpotlightSearchSuggestionItem(0);
  *(v4 + 176) = v8;
  *(v4 + 184) = *(v8 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v9 = type metadata accessor for CSUserQuery.Suggestion();
  *(v4 + 208) = v9;
  *(v4 + 216) = *(v9 - 8);
  *(v4 + 224) = swift_task_alloc();
  v10 = type metadata accessor for CSUserQuery.Responses.Response();
  *(v4 + 232) = v10;
  *(v4 + 240) = *(v10 - 8);
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();
  *(v4 + 264) = swift_task_alloc();
  sub_1000F24EC(&qword_100AD6910);
  *(v4 + 272) = swift_task_alloc();
  v11 = type metadata accessor for CSUserQuery.Responses();
  *(v4 + 280) = v11;
  *(v4 + 288) = *(v11 - 8);
  *(v4 + 296) = swift_task_alloc();
  v12 = type metadata accessor for CSUserQuery.Responses.Iterator();
  *(v4 + 304) = v12;
  *(v4 + 312) = *(v12 - 8);
  *(v4 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_10019FFD0, v3, 0);
}

uint64_t sub_10019FFD0()
{
  v1 = *(v0 + 40);
  v2 = sub_10019E460(0, 0);
  *(v0 + 328) = v2;
  if (v1)
  {
    v1 = String._bridgeToObjectiveC()();
  }

  v3 = *(v0 + 56);
  v4 = [objc_allocWithZone(CSUserQuery) initWithUserQueryString:v1 userQueryContext:v2];
  *(v0 + 336) = v4;

  sub_1000F24EC(&qword_100AD4E80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100940080;
  *(v5 + 32) = NSFileProtectionCompleteUnlessOpen;
  type metadata accessor for FileProtectionType(0);
  v6 = v4;
  v7 = NSFileProtectionCompleteUnlessOpen;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setProtectionClasses:isa];

  v9 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentResultsQuery;
  v10 = *(v3 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentResultsQuery);
  v11 = v6;
  if (v10)
  {
    [v10 cancel];
    v12 = *(v3 + v9);
  }

  else
  {
    v12 = 0;
  }

  v14 = *(v0 + 288);
  v13 = *(v0 + 296);
  v15 = *(v0 + 280);
  *(v3 + v9) = v6;

  CSUserQuery.responses.getter();
  CSUserQuery.Responses.makeAsyncIterator()();
  (*(v14 + 8))(v13, v15);
  v16 = sub_10004B8B8(&qword_100AD68F0, type metadata accessor for SpotlightSearchSession);
  v17 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_logger;
  *(v0 + 344) = v16;
  *(v0 + 352) = v17;
  *(v0 + 392) = enum case for CSUserQuery.Responses.Response.item(_:);
  *(v0 + 396) = enum case for CSUserQuery.Responses.Response.suggestion(_:);
  *(v0 + 360) = _swiftEmptyArrayStorage;
  *(v0 + 368) = _swiftEmptyArrayStorage;
  v18 = sub_10004B8B8(&qword_100AD6918, &type metadata accessor for CSUserQuery.Responses.Iterator);
  v19 = swift_task_alloc();
  *(v0 + 376) = v19;
  *v19 = v0;
  v19[1] = sub_1001A028C;
  v20 = *(v0 + 304);
  v21 = *(v0 + 272);

  return dispatch thunk of AsyncIteratorProtocol.next()(v21, v20, v18);
}

uint64_t sub_1001A028C()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    if (*(v2 + 56))
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1001A0CD0;
    v7 = v3;
  }

  else
  {
    v6 = sub_1001A03F8;
    v7 = *(v2 + 56);
    v5 = 0;
  }

  return _swift_task_switch(v6, v7, v5);
}

uint64_t sub_1001A03F8()
{
  v93 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 360);
    v7 = *(v0 + 368);
    if (v6)
    {
      v9 = swift_slowAlloc();
      *v9 = 134218240;
      *(v9 + 4) = *(v7 + 16);
      *(v9 + 12) = 2048;
      *(v9 + 14) = *(v8 + 16);

      _os_log_impl(&_mh_execute_header, v4, v5, "CoreSpotlight found %ld results and %ld suggestions", v9, 0x16u);

      v10 = v4;
      v4 = *(v0 + 328);
    }

    else
    {

      v10 = *(v0 + 328);
    }

    v86 = *(v0 + 360);
    v90 = *(v0 + 368);
    v29 = *(v0 + 336);

    v30 = *(v0 + 8);

    return v30(v90, v86);
  }

  v11 = *(v0 + 392);
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  (*(v3 + 32))(v12, v1, v2);
  v14 = *(v3 + 16);
  v14(v13, v12, v2);
  v15 = (*(v3 + 88))(v13, v2);
  if (v15 == v11)
  {
    v16 = *(v0 + 256);
    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 152);
    v20 = *(v0 + 120);
    v21 = *(v0 + 128);
    v22 = *(v0 + 112);
    (*(*(v0 + 240) + 96))(v16, *(v0 + 232));
    (*(v18 + 32))(v17, v16, v19);
    v23 = CSUserQuery.Item.item.getter();
    v24 = [v23 uniqueIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    URL.init(string:)();

    if ((*(v21 + 48))(v22, 1, v20) != 1)
    {
      v53 = *(v0 + 136);
      v52 = *(v0 + 144);
      v54 = *(v0 + 120);
      v55 = *(v0 + 128);
      v88 = *(v55 + 32);
      v88(v52, *(v0 + 112), v54);
      (*(v55 + 16))(v53, v52, v54);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v51 = *(v0 + 368);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v51 = sub_1003E4AE0(0, v51[2] + 1, 1, *(v0 + 368));
      }

      v58 = v51[2];
      v57 = v51[3];
      if (v58 >= v57 >> 1)
      {
        v51 = sub_1003E4AE0(v57 > 1, v58 + 1, 1, v51);
      }

      v59 = *(v0 + 232);
      v60 = *(v0 + 240);
      v62 = *(v0 + 160);
      v61 = *(v0 + 168);
      v63 = *(v0 + 152);
      v64 = *(v0 + 128);
      v84 = *(v0 + 264);
      v85 = *(v0 + 136);
      v65 = *(v0 + 120);
      (*(v64 + 8))(*(v0 + 144), v65);
      (*(v62 + 8))(v61, v63);
      (*(v60 + 8))(v84, v59);
      v51[2] = v58 + 1;
      v88(v51 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v58, v85, v65);
      v41 = *(v0 + 360);
      goto LABEL_27;
    }

    v25 = *(v0 + 264);
    v26 = *(v0 + 232);
    v27 = *(v0 + 240);
    v28 = *(v0 + 112);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    (*(v27 + 8))(v25, v26);
    sub_100004F84(v28, &unk_100AD6DD0);
  }

  else
  {
    if (v15 == *(v0 + 396))
    {
      v32 = *(v0 + 256);
      v34 = *(v0 + 216);
      v33 = *(v0 + 224);
      v36 = *(v0 + 200);
      v35 = *(v0 + 208);
      v37 = *(v0 + 192);
      v38 = *(v0 + 176);
      (*(*(v0 + 240) + 96))(v32, *(v0 + 232));
      (*(v34 + 32))(v33, v32, v35);
      v39 = CSUserQuery.Suggestion.suggestion.getter();
      UUID.init()();
      *(v36 + *(v38 + 20)) = v39;
      sub_1001A9218(v36, v37, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      v40 = swift_isUniquelyReferenced_nonNull_native();
      v41 = *(v0 + 360);
      if ((v40 & 1) == 0)
      {
        v41 = sub_1003E4E40(0, v41[2] + 1, 1, *(v0 + 360));
      }

      v43 = v41[2];
      v42 = v41[3];
      if (v43 >= v42 >> 1)
      {
        v41 = sub_1003E4E40(v42 > 1, v43 + 1, 1, v41);
      }

      v44 = *(v0 + 264);
      v45 = *(v0 + 232);
      v46 = *(v0 + 240);
      v47 = *(v0 + 216);
      v48 = *(v0 + 224);
      v49 = *(v0 + 208);
      v50 = *(v0 + 184);
      v87 = *(v0 + 192);
      sub_1001A973C(*(v0 + 200), type metadata accessor for CoreSpotlightSearchSuggestionItem);
      (*(v47 + 8))(v48, v49);
      (*(v46 + 8))(v44, v45);
      v41[2] = v43 + 1;
      sub_100018228(v87, v41 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v43, type metadata accessor for CoreSpotlightSearchSuggestionItem);
      v51 = *(v0 + 368);
      goto LABEL_27;
    }

    v14(*(v0 + 248), *(v0 + 264), *(v0 + 232));
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    v68 = os_log_type_enabled(v66, v67);
    v69 = *(v0 + 264);
    v70 = *(v0 + 240);
    v71 = *(v0 + 248);
    v72 = *(v0 + 232);
    if (v68)
    {
      v91 = *(v0 + 264);
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v92 = v74;
      *v73 = 136315138;
      v89 = CSUserQuery.Responses.Response.id.getter();
      v76 = v75;
      v77 = *(v70 + 8);
      v77(v71, v72);
      v78 = sub_100008458(v89, v76, &v92);

      *(v73 + 4) = v78;
      _os_log_impl(&_mh_execute_header, v66, v67, "Unknown element in query response: %s", v73, 0xCu);
      sub_10000BA7C(v74);

      v79 = v91;
    }

    else
    {

      v77 = *(v70 + 8);
      v77(v71, v72);
      v79 = v69;
    }

    v77(v79, v72);
    v77(*(v0 + 256), *(v0 + 232));
  }

  v41 = *(v0 + 360);
  v51 = *(v0 + 368);
LABEL_27:
  *(v0 + 360) = v41;
  *(v0 + 368) = v51;
  v80 = sub_10004B8B8(&qword_100AD6918, &type metadata accessor for CSUserQuery.Responses.Iterator);
  v81 = swift_task_alloc();
  *(v0 + 376) = v81;
  *v81 = v0;
  v81[1] = sub_1001A028C;
  v82 = *(v0 + 304);
  v83 = *(v0 + 272);

  return dispatch thunk of AsyncIteratorProtocol.next()(v83, v82, v80);
}

uint64_t sub_1001A0CD0()
{
  v1 = v0[7];
  v0[2] = v0[48];
  sub_1000F24EC(&qword_100AD5BC0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1001A0D84, v1, 0);
}

uint64_t sub_1001A0D84()
{
  v39 = v0;
  (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  _s3__C4CodeOMa_0(0);
  *(v0 + 24) = -2003;
  swift_errorRetain();
  sub_10004B8B8(&qword_100AD1A08, _s3__C4CodeOMa_0);
  v1 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v1)
  {
    v2 = *(v0 + 48);

    if (v2[1])
    {
      v4 = v2[2];
      v3 = v2[3];
      v5 = *(v0 + 96);

      v6 = v5;
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.error.getter();
      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v0 + 328);
      v10 = *(v0 + 336);
      v12 = *(v0 + 48);
      if (!v9)
      {

        sub_100004F84(v12, &qword_100AD68D0);
        goto LABEL_17;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v38 = v14;
      *v13 = 136315138;

      v15 = sub_100008458(v4, v3, &v38);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Query for attributes for selection of %s was cancelled", v13, 0xCu);
      sub_10000BA7C(v14);

      sub_100004F84(v12, &qword_100AD68D0);
    }

    else
    {
      v23 = *(v0 + 40);
      if (v23)
      {

        v7 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v7, v24))
        {
          v26 = *(v0 + 328);
          v25 = *(v0 + 336);
          v27 = *(v0 + 32);
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v38 = v29;
          *v28 = 136315138;
          *(v28 + 4) = sub_100008458(v27, v23, &v38);
          _os_log_impl(&_mh_execute_header, v7, v24, "Query for attributes for text %s was cancelled", v28, 0xCu);
          sub_10000BA7C(v29);
        }

        else
        {
          v35 = *(v0 + 336);
        }
      }

      else
      {
        v7 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        v31 = os_log_type_enabled(v7, v30);
        v33 = *(v0 + 328);
        v32 = *(v0 + 336);
        if (v31)
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v7, v30, "Query for attributes was cancelled", v34, 2u);
        }
      }
    }
  }

  else
  {
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    v17 = os_log_type_enabled(v7, v16);
    v19 = *(v0 + 328);
    v18 = *(v0 + 336);
    if (!v17)
    {

      goto LABEL_17;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v22;
    *v21 = v22;
    _os_log_impl(&_mh_execute_header, v7, v16, "Encountered an error while waiting for query response: %@", v20, 0xCu);
    sub_100004F84(v21, &unk_100AD4BB0);
  }

LABEL_17:

  v36 = *(v0 + 8);

  return v36(1, 0);
}

uint64_t sub_1001A1320(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 472) = a4;
  *(v5 + 240) = a3;
  *(v5 + 248) = v4;
  *(v5 + 224) = a1;
  *(v5 + 232) = a2;
  v6 = *(a3 + 24);
  *(v5 + 256) = *(a3 + 8);
  *(v5 + 264) = v6;
  *(v5 + 272) = *(a3 + 40);
  *(v5 + 280) = *(a3 + 56);
  *(v5 + 296) = *(a3 + 80);
  v7 = type metadata accessor for CSSearchQuery.Results.Item();
  *(v5 + 304) = v7;
  *(v5 + 312) = *(v7 - 8);
  *(v5 + 320) = swift_task_alloc();
  sub_1000F24EC(&unk_100AD68E0);
  *(v5 + 328) = swift_task_alloc();
  v8 = type metadata accessor for CSSearchQuery.Results();
  *(v5 + 336) = v8;
  *(v5 + 344) = *(v8 - 8);
  *(v5 + 352) = swift_task_alloc();
  v9 = type metadata accessor for CSSearchQuery.Results.Iterator();
  *(v5 + 360) = v9;
  *(v5 + 368) = *(v9 - 8);
  *(v5 + 376) = swift_task_alloc();

  return _swift_task_switch(sub_1001A1500, v4, 0);
}

uint64_t sub_1001A1500()
{
  v1 = *(v0 + 248);
  v2 = sub_10019E460(1, *(v0 + 472));
  *(v0 + 384) = v2;
  v3 = objc_allocWithZone(CSUserQuery);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithQueryString:v4 queryContext:v2];
  *(v0 + 392) = v5;

  sub_1000F24EC(&qword_100AD4E80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  *(v6 + 32) = NSFileProtectionCompleteUnlessOpen;
  type metadata accessor for FileProtectionType(0);
  v7 = v5;
  v8 = NSFileProtectionCompleteUnlessOpen;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 setProtectionClasses:isa];

  v10 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentSuggestionAttributesQuery;
  v11 = *(v1 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentSuggestionAttributesQuery);
  v12 = v7;
  if (v11)
  {
    [v11 cancel];
    v13 = *(v1 + v10);
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v0 + 344);
  v14 = *(v0 + 352);
  v16 = *(v0 + 336);
  *(v1 + v10) = v7;

  *(v0 + 112) = &_swiftEmptyDictionarySingleton;
  *(v0 + 120) = &_swiftEmptyDictionarySingleton;
  CSSearchQuery.results.getter();

  CSSearchQuery.Results.makeAsyncIterator()();
  (*(v15 + 8))(v14, v16);
  v17 = sub_10004B8B8(&qword_100AD68F0, type metadata accessor for SpotlightSearchSession);
  *(v0 + 440) = &_swiftEmptyDictionarySingleton;
  *(v0 + 448) = &_swiftEmptyDictionarySingleton;
  *(v0 + 424) = &_swiftEmptyDictionarySingleton;
  *(v0 + 432) = &_swiftEmptyDictionarySingleton;
  *(v0 + 408) = &_swiftEmptyDictionarySingleton;
  *(v0 + 416) = &_swiftEmptyDictionarySingleton;
  *(v0 + 400) = v17;
  v18 = sub_10004B8B8(&unk_100AD68F8, &type metadata accessor for CSSearchQuery.Results.Iterator);
  v19 = swift_task_alloc();
  *(v0 + 456) = v19;
  *v19 = v0;
  v19[1] = sub_1001A17A4;
  v20 = *(v0 + 360);
  v21 = *(v0 + 328);

  return dispatch thunk of AsyncIteratorProtocol.next()(v21, v20, v18);
}

uint64_t sub_1001A17A4()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    if (*(v2 + 248))
    {
      swift_getObjectType();
      v3 = dispatch thunk of Actor.unownedExecutor.getter();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    v6 = sub_1001A2730;
    v7 = v3;
  }

  else
  {
    v6 = sub_1001A1910;
    v7 = *(v2 + 248);
    v5 = 0;
  }

  return _swift_task_switch(v6, v7, v5);
}

uint64_t sub_1001A1910()
{
  v113 = v0;
  v1 = v0[20].i64[1];
  v2 = v0[19].i64[0];
  v3 = v0[19].i64[1];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[23].i64[0] + 8))(v0[23].i64[1], v0[22].i64[1]);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v112[0] = swift_slowAlloc();
      *v6 = 136315906;
      swift_beginAccess();
      type metadata accessor for TokenTypeIdentifier();
      sub_10004B8B8(&qword_100AE0030, &type metadata accessor for TokenTypeIdentifier);

      v7 = Dictionary.description.getter();
      v9 = v8;

      v10 = sub_100008458(v7, v9, v112);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      swift_beginAccess();
      type metadata accessor for UUID();
      sub_10004B8B8(&qword_100AD4B40, &type metadata accessor for UUID);

      v11 = Dictionary.description.getter();
      v13 = v12;

      v14 = sub_100008458(v11, v13, v112);

      *(v6 + 14) = v14;
      *(v6 + 22) = 2080;

      v15 = Dictionary.description.getter();
      v17 = v16;

      v18 = sub_100008458(v15, v17, v112);

      *(v6 + 24) = v18;
      *(v6 + 32) = 2080;

      v19 = Dictionary.description.getter();
      v21 = v20;

      v22 = sub_100008458(v19, v21, v112);

      *(v6 + 34) = v22;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found the following tokens from this result set:\n- Custom token type identifiers: %s\n- Custom Journal IDs: %s\n- Places: %s\n- Activities: %s", v6, 0x2Au);
      swift_arrayDestroy();
    }

    v24 = v0[27].i64[1];
    v23 = v0[28].i64[0];
    v25 = v0[29].u8[8];
    v27 = v0[14].i64[0];
    v26 = v0[14].i64[1];
    swift_beginAccess();
    v28 = v0[7].i64[0];
    swift_beginAccess();
    v29 = v0[7].i64[1];

    v30 = sub_1001A344C(v28, v29, v23, v24, v27, v26, v25);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    v33 = os_log_type_enabled(v31, v32);
    v35 = v0[24].i64[0];
    v34 = v0[24].i64[1];
    if (v33)
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v112[0] = v37;
      *v36 = 134218242;
      *(v36 + 4) = v30[2];

      *(v36 + 12) = 2080;
      sub_1000F24EC(&unk_100AD68B0);
      v38 = Array.description.getter();
      v40 = sub_100008458(v38, v39, v112);

      *(v36 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v31, v32, "Generated our own %ld suggestions: %s", v36, 0x16u);
      sub_10000BA7C(v37);
    }

    else
    {
    }

    v47 = v0->i64[1];

    return v47(v30);
  }

  (*(v3 + 32))(v0[20].i64[0], v1, v2);
  v41 = CSSearchQuery.Results.Item.item.getter();
  v42 = &selRef_setRegion_;
  v43 = [v41 attributeSet];

  if (qword_100ACFA08 != -1)
  {
LABEL_84:
    swift_once();
  }

  v44 = &selRef_setRegion_;
  if (qword_100B2F4B0)
  {
    v45 = qword_100B2F4B0;
    v46 = [v43 valueForCustomKey:v45];

    if (v46)
    {
      v0[13].i64[0] = v46;
      sub_1000F24EC(&unk_100AD9A70);
      sub_1000F24EC(&qword_100AD60A0);
      if (swift_dynamicCast())
      {
        sub_10019DDDC(v0[13].i64[1], v0[7].i64);
      }
    }
  }

  else
  {
  }

  v49 = CSSearchQuery.Results.Item.item.getter();
  v50 = [v49 v42[304]];

  if (qword_100ACFA10 != -1)
  {
    swift_once();
  }

  if (qword_100B2F4B8)
  {
    v51 = qword_100B2F4B8;
    v52 = [v50 valueForCustomKey:v51];

    if (v52)
    {
      v0[12].i64[0] = v52;
      sub_1000F24EC(&unk_100AD9A70);
      sub_1000F24EC(&qword_100AD60A0);
      if (swift_dynamicCast())
      {
        sub_10019E120(v0[12].i64[1], &v0[7].i64[1]);
      }
    }
  }

  else
  {
  }

  v53 = CSSearchQuery.Results.Item.item.getter();
  v54 = [v53 v42[304]];

  if (qword_100ACFA18 != -1)
  {
    swift_once();
  }

  if (!qword_100B2F4C0)
  {

LABEL_44:
    v59 = v0[27].i64[1];
    v111 = v0[26];
    goto LABEL_45;
  }

  v55 = qword_100B2F4C0;
  v56 = [v54 valueForCustomKey:v55];

  if (!v56)
  {
    goto LABEL_44;
  }

  v0[10].i64[1] = v56;
  sub_1000F24EC(&unk_100AD9A70);
  sub_1000F24EC(&qword_100AD60A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_44;
  }

  v57 = v0[11].i64[0];
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = v0[26].i64[0];
    v60 = (v57 + 40);
    while (1)
    {
      v62 = *(v60 - 1);
      v61 = *v60;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v0[11].i64[1] = v59;
      v43 = v59;
      v64 = sub_100094E98(v62, v61);
      v66 = v59[2];
      v67 = (v65 & 1) == 0;
      v68 = __OFADD__(v66, v67);
      v69 = v66 + v67;
      if (v68)
      {
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      v42 = v65;
      if (v59[3] < v69)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v43 = &v0[11].i64[1];
      v71 = v64;
      sub_1008222E0();
      v64 = v71;
      v59 = v0[11].i64[1];
      if ((v42 & 1) == 0)
      {
LABEL_38:
        v59[(v64 >> 6) + 8] |= 1 << v64;
        v72 = (v59[6] + 16 * v64);
        *v72 = v62;
        v72[1] = v61;
        *(v59[7] + 8 * v64) = 0;
        v73 = v59[2];
        v68 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v68)
        {
          goto LABEL_82;
        }

        v59[2] = v74;
        goto LABEL_40;
      }

LABEL_36:
      v43 = v64;

      v64 = v43;
LABEL_40:
      v75 = v59[7];
      v76 = *(v75 + 8 * v64);
      v68 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v68)
      {
        goto LABEL_79;
      }

      *(v75 + 8 * v64) = v77;

      v60 += 2;
      if (!--v58)
      {
        v111 = vdupq_n_s64(v59);
        v44 = &selRef_setRegion_;
        v42 = &selRef_setRegion_;
        goto LABEL_75;
      }
    }

    sub_10081D8B4(v69, isUniquelyReferenced_nonNull_native);
    v43 = v0[11].i64[1];
    v64 = sub_100094E98(v62, v61);
    if ((v42 & 1) != (v70 & 1))
    {
LABEL_71:

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

LABEL_35:
    v59 = v0[11].i64[1];
    if ((v42 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v59 = v0[27].i64[1];
  v111 = v0[26];
LABEL_75:

LABEL_45:
  v78 = CSSearchQuery.Results.Item.item.getter();
  v79 = [v78 v42[304]];

  if (qword_100ACFA20 != -1)
  {
    swift_once();
  }

  if (!qword_100B2F4C8)
  {
    v105 = v0[19].i64[1];
    v104 = v0[20].i64[0];
    v106 = v0[19].i64[0];

    (*(v105 + 8))(v104, v106);
    goto LABEL_67;
  }

  v80 = qword_100B2F4C8;
  v81 = [v79 v44[459]];

  if (!v81 || (v0[9].i64[0] = v81, sub_1000F24EC(&unk_100AD9A70), sub_1000F24EC(&qword_100AD60A0), (swift_dynamicCast() & 1) == 0))
  {
    (*(v0[19].i64[1] + 8))(v0[20].i64[0], v0[19].i64[0]);
LABEL_67:
    v103 = v0[28].i64[0];
    v102 = v0[27].i64[0];
    v43 = v0[25].i64[1];
    goto LABEL_68;
  }

  v82 = v0[9].i64[1];
  v83 = *(v82 + 16);
  if (v83)
  {
    v43 = v0[25].i64[1];
    v84 = (v82 + 40);
    while (1)
    {
      v86 = *(v84 - 1);
      v85 = *v84;
      swift_bridgeObjectRetain_n();
      v87 = swift_isUniquelyReferenced_nonNull_native();
      v0[10].i64[0] = v43;
      v88 = sub_100094E98(v86, v85);
      v90 = v43[2];
      v91 = (v89 & 1) == 0;
      v68 = __OFADD__(v90, v91);
      v92 = v90 + v91;
      if (v68)
      {
        goto LABEL_80;
      }

      v42 = v89;
      if (v43[3] < v92)
      {
        break;
      }

      if (v87)
      {
        goto LABEL_57;
      }

      v95 = v88;
      sub_1008222E0();
      v88 = v95;
      v43 = v0[10].i64[0];
      if ((v42 & 1) == 0)
      {
LABEL_60:
        v43[(v88 >> 6) + 8] |= 1 << v88;
        v96 = (v43[6] + 16 * v88);
        *v96 = v86;
        v96[1] = v85;
        *(v43[7] + 8 * v88) = 0;
        v97 = v43[2];
        v68 = __OFADD__(v97, 1);
        v98 = v97 + 1;
        if (v68)
        {
          goto LABEL_83;
        }

        v43[2] = v98;
        goto LABEL_62;
      }

LABEL_58:
      v94 = v88;

      v88 = v94;
LABEL_62:
      v99 = v43[7];
      v100 = *(v99 + 8 * v88);
      v68 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v68)
      {
        goto LABEL_81;
      }

      *(v99 + 8 * v88) = v101;

      v84 += 2;
      v102 = v43;
      v103 = v43;
      if (!--v83)
      {
        goto LABEL_77;
      }
    }

    sub_10081D8B4(v92, v87);
    v88 = sub_100094E98(v86, v85);
    if ((v42 & 1) != (v93 & 1))
    {
      goto LABEL_71;
    }

LABEL_57:
    v43 = v0[10].i64[0];
    if ((v42 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v103 = v0[28].i64[0];
  v102 = v0[27].i64[0];
  v43 = v0[25].i64[1];
LABEL_77:
  (*(v0[19].i64[1] + 8))(v0[20].i64[0], v0[19].i64[0]);

LABEL_68:
  v0[27].i64[1] = v59;
  v0[28].i64[0] = v103;
  v0[27].i64[0] = v102;
  v0[26] = v111;
  v0[25].i64[1] = v43;
  v107 = sub_10004B8B8(&unk_100AD68F8, &type metadata accessor for CSSearchQuery.Results.Iterator);
  v108 = swift_task_alloc();
  v0[28].i64[1] = v108;
  *v108 = v0;
  v108[1] = sub_1001A17A4;
  v109 = v0[22].i64[1];
  v110 = v0[20].i64[1];

  return dispatch thunk of AsyncIteratorProtocol.next()(v110, v109, v107);
}

uint64_t sub_1001A2730()
{
  v1 = v0[31];
  v0[16] = v0[58];
  sub_1000F24EC(&qword_100AD5BC0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_1001A27C8, v1, 0);
}

uint64_t sub_1001A27C8()
{
  v36 = v0;
  (*(v0[46] + 8))(v0[47], v0[45]);
  _s3__C4CodeOMa_0(0);
  v0[17] = -2003;
  swift_errorRetain();
  sub_10004B8B8(&qword_100AD1A08, _s3__C4CodeOMa_0);
  v1 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v1 & 1) == 0)
  {
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[48];
    v19 = v0[49];
    if (v18)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      swift_errorRetain();
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Encountered an error while waiting for query response: %@", v21, 0xCu);
      sub_100004F84(v22, &unk_100AD4BB0);
    }

    else
    {
    }

    goto LABEL_14;
  }

  v2 = v0[30];

  if (v2[1])
  {
    v4 = v2[2];
    v3 = v2[3];
    v5 = v0[36];

    v6 = v5;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[48];
    v11 = v0[49];
    v12 = v0[30];
    if (v9)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v13 = 136315138;

      v15 = sub_100008458(v4, v3, &v35);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Query for attributes for selection of %s was cancelled", v13, 0xCu);
      sub_10000BA7C(v14);

      sub_100004F84(v12, &qword_100AD68D0);
LABEL_11:

      goto LABEL_14;
    }

    sub_100004F84(v12, &qword_100AD68D0);
  }

  else
  {

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v0[48];
    v28 = v0[49];
    if (v26)
    {
      v30 = v0[28];
      v29 = v0[29];
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_100008458(v30, v29, &v35);
      _os_log_impl(&_mh_execute_header, v24, v25, "Query for attributes for text %s was cancelled", v31, 0xCu);
      sub_10000BA7C(v32);

      goto LABEL_11;
    }
  }

LABEL_14:

  v33 = v0[1];

  return v33(0);
}

uint64_t sub_1001A2CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[99] = v3;
  v4[98] = a3;
  v4[97] = a2;
  v4[96] = a1;
  return _swift_task_switch(sub_1001A2D0C, v3, 0);
}

uint64_t sub_1001A2D0C()
{
  v59 = v0;
  v49 = *(v0 + 768);
  if (v49)
  {
    v1 = *(v49 + 16);
    if (v1)
    {
      v50 = (v0 + 544);
      v2 = *(v0 + 792);
      v3 = objc_opt_self();
      v4 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion;
      v5 = v49 + 32;
      v51 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion;
      v52 = v3;
      do
      {
        v10 = *(v5 + 32);
        v11 = *(v5 + 48);
        v12 = *(v5 + 64);
        *(v0 + 96) = *(v5 + 80);
        *(v0 + 64) = v11;
        *(v0 + 80) = v12;
        *(v0 + 48) = v10;
        v13 = *(v5 + 16);
        *(v0 + 16) = *v5;
        *(v0 + 32) = v13;
        v14 = *(v2 + v4);
        sub_1001A9170(v0 + 16, v0 + 456);
        v15 = v2;
        v16 = String._bridgeToObjectiveC()();
        v17 = String._bridgeToObjectiveC()();
        v18 = String._bridgeToObjectiveC()();
        v19 = [v52 suggestionWithCurrentSuggestion:v14 userQueryString:v16 suggestionText:v17 queryString:v18];

        if (v19)
        {
          v20 = *(v15 + v51);
          v21 = String._bridgeToObjectiveC()();
          isa = [v19 suggestionTokens];
          v2 = v15;
          if (!isa)
          {
            sub_1001A91CC();
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            isa = Array._bridgeToObjectiveC()().super.isa;
          }

          v6 = [v52 updatedSuggestionWithCurrentSuggestion:v20 userString:v21 tokens:isa];

          v7 = *(v15 + v51);
          *(v15 + v51) = v6;

          swift_beginAccess();
          sub_1001A9170(v0 + 16, v0 + 632);
          sub_100288704(&v53, v0 + 16);
          swift_endAccess();

          sub_1001A911C(v0 + 16);
          v8 = v56;
          *(v0 + 576) = v55;
          *(v0 + 592) = v8;
          *(v0 + 608) = v57;
          *(v0 + 624) = v58;
          v9 = v54;
          *v50 = v53;
          *(v0 + 560) = v9;
          sub_1001A911C(v50);
          v4 = v51;
        }

        else
        {
          sub_1001A911C(v0 + 16);
          v2 = v15;
          v4 = v51;
        }

        v5 += 88;
        --v1;
      }

      while (v1);
    }
  }

  if (*(v0 + 784))
  {
    v23 = *(v0 + 792);
    v24 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion;
    v25 = *(v23 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion);
    v26 = String._bridgeToObjectiveC()();
    v27 = [*(v23 + v24) currentTokens];
    if (!v27)
    {
      sub_1001A91CC();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = Array._bridgeToObjectiveC()().super.isa;
    }

    v28 = [objc_opt_self() updatedSuggestionWithCurrentSuggestion:v25 userString:v26 tokens:v27];

    v29 = *(v23 + v24);
    *(v23 + v24) = v28;
  }

  if (v49 && (v30 = *(v0 + 768), (v31 = *(v30 + 16)) != 0))
  {
    v32 = v30 + 88 * v31;
    v33 = *(v32 - 40);
    *(v0 + 280) = *(v32 - 56);
    *(v0 + 296) = v33;
    v34 = *(v32 - 24);
    v35 = *(v32 - 8);
    v36 = *(v32 + 8);
    *(v0 + 360) = *(v32 + 24);
    *(v0 + 328) = v35;
    *(v0 + 344) = v36;
    *(v0 + 312) = v34;
    v37 = *(v32 - 40);
    v53 = *(v32 - 56);
    v54 = v37;
    v38 = *(v32 - 24);
    v39 = *(v32 - 8);
    v40 = *(v32 + 8);
    v58 = *(v32 + 24);
    v56 = v39;
    v57 = v40;
    v55 = v38;
    sub_1001A9170(v0 + 280, v0 + 368);
    v41 = v56;
    *(v0 + 224) = v55;
    *(v0 + 240) = v41;
    *(v0 + 256) = v57;
    *(v0 + 272) = v58;
    v42 = v54;
    *(v0 + 192) = v53;
    *(v0 + 208) = v42;
  }

  else
  {
    *(v0 + 272) = 0;
    *(v0 + 240) = 0u;
    *(v0 + 256) = 0u;
    *(v0 + 208) = 0u;
    *(v0 + 224) = 0u;
    *(v0 + 192) = 0u;
  }

  v43 = *(v0 + 240);
  *(v0 + 136) = *(v0 + 224);
  *(v0 + 152) = v43;
  *(v0 + 168) = *(v0 + 256);
  *(v0 + 184) = *(v0 + 272);
  v44 = *(v0 + 208);
  *(v0 + 104) = *(v0 + 192);
  *(v0 + 120) = v44;
  v45 = swift_task_alloc();
  *(v0 + 800) = v45;
  *v45 = v0;
  v45[1] = sub_1001A31C0;
  v46 = *(v0 + 784);
  v47 = *(v0 + 776);

  return sub_10019FC20(v47, v46, v0 + 104);
}

uint64_t sub_1001A31C0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[93] = v2;
  v4[94] = a1;
  v4[95] = a2;
  v5 = v3[99];
  v4[101] = a1;

  sub_100004F84((v4 + 24), &qword_100AD68D0);

  return _swift_task_switch(sub_1001A32FC, v5, 0);
}

uint64_t sub_1001A32FC()
{
  v1 = v0[101];
  if (v1 == 1)
  {
    v2 = 0;
    v1 = 0;
  }

  else if (v0[95])
  {
    v3 = sub_100604ED0(v0[95]);

    v2 = v3;
    v1 = v0[101];
  }

  else
  {
    v2 = 0;
  }

  v4 = v0[1];

  return v4(v1, v2);
}

uint64_t sub_1001A3398()
{
  [*(v0 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentResultsQuery) cancel];
  [*(v0 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentSuggestionAttributesQuery) cancel];
  v1 = [objc_opt_self() emptySuggestion];
  v2 = *(v0 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion);
  *(v0 + OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentCSSuggestion) = v1;

  v3 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_currentlySelectedSearchTokenSet;
  swift_beginAccess();
  *(v0 + v3) = &_swiftEmptySetSingleton;
}

void *sub_1001A344C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v190 = a7;
  v188 = a5;
  v189 = a6;
  v187 = a3;
  v179 = a2;
  v10 = sub_1000F24EC(&qword_100AD6870);
  __chkstk_darwin(v10 - 8);
  v12 = &v151 - v11;
  v180 = type metadata accessor for CustomActivityTypeSearchSuggestionItem(0);
  v155 = *(v180 - 8);
  v13 = __chkstk_darwin(v180);
  v162 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v151 = &v151 - v15;
  v16 = sub_1000F24EC(&qword_100AD6878);
  __chkstk_darwin(v16 - 8);
  v18 = &v151 - v17;
  v181 = type metadata accessor for CustomPlaceSearchSuggestionItem(0);
  v156 = *(v181 - 8);
  v19 = __chkstk_darwin(v181);
  v164 = &v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v152 = &v151 - v21;
  v168 = sub_1000F24EC(&qword_100AD6880);
  v22 = __chkstk_darwin(v168);
  v167 = &v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v166 = &v151 - v25;
  __chkstk_darwin(v24);
  v165 = &v151 - v26;
  v184 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v157 = *(v184 - 1);
  v27 = __chkstk_darwin(v184);
  v29 = &v151 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v153 = &v151 - v30;
  v183 = type metadata accessor for UUID();
  v176 = *(v183 - 1);
  __chkstk_darwin(v183);
  v182 = &v151 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000F24EC(&qword_100AD6888);
  __chkstk_darwin(v32 - 8);
  v174 = &v151 - v33;
  v34 = type metadata accessor for CustomTokenSearchSuggestionItem(0);
  v158 = *(v34 - 8);
  v35 = __chkstk_darwin(v34);
  v37 = &v151 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v154 = &v151 - v38;
  v39 = type metadata accessor for TokenTypeIdentifier();
  v178 = *(v39 - 8);
  v40 = __chkstk_darwin(v39);
  v185 = &v151 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v151 - v42;
  v186 = a1;
  if (!*(a1 + 16) && !*(v179 + 16) && !*(v187 + 16) && !*(a4 + 16))
  {
    return _swiftEmptyArrayStorage;
  }

  v160 = v29;
  v163 = v18;
  v161 = v12;
  v175 = a4;
  v191 = v7;

  v45 = sub_10088F594(v44);
  v46 = v45 + 56;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 56);
  v50 = (v47 + 63) >> 6;
  v173 = (v178 + 2);
  v172 = (v178 + 4);
  v171 = (v178 + 1);
  v170 = (v158 + 56);
  v169 = (v158 + 48);
  v177 = v45;

  v52 = 0;
  v159 = _swiftEmptyArrayStorage;
  while (1)
  {
    v53 = v52;
    if (!v49)
    {
      break;
    }

LABEL_12:
    v54 = v178[2];
    v54(v43, *(v177 + 48) + v178[9] * (__clz(__rbit64(v49)) | (v52 << 6)), v39);
    v54(v185, v43, v39);
    if (*(v186 + 16) && (v55 = sub_100362118(v43), (v56 & 1) != 0))
    {
      v57 = 0;
      v58 = *(*(v186 + 56) + 8 * v55);
    }

    else
    {
      v58 = 0;
      v57 = 1;
    }

    UUID.init()();
    (*v172)(&v37[*(v34 + 20)], v185, v39);
    v59 = &v37[*(v34 + 24)];
    *v59 = v58;
    v59[8] = v57;
    v60 = sub_1001A6A80(v37, v188, v189, v190 & 1, v191);
    (*v171)(v43, v39);
    if (v60)
    {
      v61 = v174;
      sub_100018228(v37, v174, type metadata accessor for CustomTokenSearchSuggestionItem);
      v62 = 0;
    }

    else
    {
      sub_1001A973C(v37, type metadata accessor for CustomTokenSearchSuggestionItem);
      v62 = 1;
      v61 = v174;
    }

    v49 &= v49 - 1;
    (*v170)(v61, v62, 1, v34);
    if ((*v169)(v61, 1, v34) == 1)
    {
      result = sub_100004F84(v61, &qword_100AD6888);
    }

    else
    {
      sub_100018228(v61, v154, type metadata accessor for CustomTokenSearchSuggestionItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v159 = sub_1003E504C(0, v159[2] + 1, 1, v159);
      }

      v64 = v159[2];
      v63 = v159[3];
      if (v64 >= v63 >> 1)
      {
        v159 = sub_1003E504C(v63 > 1, v64 + 1, 1, v159);
      }

      v65 = v159;
      v159[2] = v64 + 1;
      result = sub_100018228(v154, v65 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v64, type metadata accessor for CustomTokenSearchSuggestionItem);
    }
  }

  while (1)
  {
    v52 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    if (v52 >= v50)
    {
      break;
    }

    v49 = *(v46 + 8 * v52);
    ++v53;
    if (v49)
    {
      goto LABEL_12;
    }
  }

  v67 = sub_10088F7F4(v66);
  v68 = (v67 + 56);
  v69 = 1 << *(v67 + 32);
  v70 = -1;
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  v71 = v70 & *(v67 + 56);
  v177 = OBJC_IVAR____TtC7Journal22SpotlightSearchSession_managedObjectContext;
  v72 = (v69 + 63) >> 6;
  v174 = v176 + 16;
  v185 = (v157 + 48);
  v173 = (v157 + 56);
  v172 = (v176 + 8);
  v178 = v67;

  v73 = 0;
  v186 = 0;
  v170 = _swiftEmptyArrayStorage;
  v74 = v187;
  v171 = v68;
  while (v71)
  {
    v75 = v73;
LABEL_34:
    v76 = v182;
    v77 = (*(v176 + 16))(v182, v178[6] + *(v176 + 72) * (__clz(__rbit64(v71)) | (v75 << 6)), v183);
    v78 = v191;
    __chkstk_darwin(v77);
    *(&v151 - 4) = v76;
    *(&v151 - 3) = v78;
    *(&v151 - 2) = v179;
    v79 = v166;
    v80 = v186;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v186 = v80;
    v81 = v167;
    sub_1000082B4(v79, v167, &qword_100AD6880);
    v82 = *v185;
    if ((*v185)(v81, 1, v184) == 1)
    {
      sub_100004F84(v79, &qword_100AD6880);
      sub_100004F84(v81, &qword_100AD6880);
      v83 = 1;
      v84 = v165;
    }

    else
    {
      v85 = v160;
      sub_100018228(v81, v160, type metadata accessor for CustomJournalSearchSuggestionItem);
      v86 = sub_1001A73A0(v85, v188, v189, v190 & 1, v78);
      sub_100004F84(v79, &qword_100AD6880);
      if (v86)
      {
        v84 = v165;
        sub_100018228(v85, v165, type metadata accessor for CustomJournalSearchSuggestionItem);
        v83 = 0;
      }

      else
      {
        sub_1001A973C(v85, type metadata accessor for CustomJournalSearchSuggestionItem);
        v83 = 1;
        v84 = v165;
      }
    }

    v71 &= v71 - 1;
    v87 = v184;
    (*v173)(v84, v83, 1, v184);
    (*v172)(v182, v183);
    if (v82(v84, 1, v87) == 1)
    {
      result = sub_100004F84(v84, &qword_100AD6880);
      v73 = v75;
      v74 = v187;
      v68 = v171;
    }

    else
    {
      sub_100018228(v84, v153, type metadata accessor for CustomJournalSearchSuggestionItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_1003E5024(0, v170[2] + 1, 1, v170);
      }

      v68 = v171;
      v89 = v170[2];
      v88 = v170[3];
      if (v89 >= v88 >> 1)
      {
        v170 = sub_1003E5024(v88 > 1, v89 + 1, 1, v170);
      }

      v90 = v170;
      v170[2] = v89 + 1;
      result = sub_100018228(v153, v90 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v89, type metadata accessor for CustomJournalSearchSuggestionItem);
      v73 = v75;
      v74 = v187;
    }
  }

  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_95;
    }

    if (v75 >= v72)
    {
      break;
    }

    v71 = v68[v75];
    ++v73;
    if (v71)
    {
      goto LABEL_34;
    }
  }

  v92 = sub_100891C98(v91);
  v93 = v92;
  v94 = v92 + 56;
  v95 = 1 << *(v92 + 32);
  v96 = -1;
  if (v95 < 64)
  {
    v96 = ~(-1 << v95);
  }

  v97 = v96 & *(v92 + 56);
  v98 = (v95 + 63) >> 6;
  v184 = (v156 + 48);
  v185 = (v156 + 56);

  v99 = 0;
  v183 = _swiftEmptyArrayStorage;
  while (v97)
  {
    v100 = v99;
LABEL_54:
    v101 = (*(v93 + 48) + ((v100 << 10) | (16 * __clz(__rbit64(v97)))));
    v103 = *v101;
    v102 = v101[1];
    v104 = *(v74 + 16);

    if (!v104)
    {
      goto LABEL_58;
    }

    v105 = sub_100094E98(v103, v102);
    if ((v106 & 1) == 0)
    {
      v104 = 0;
LABEL_58:
      v107 = 1;
      goto LABEL_59;
    }

    v107 = 0;
    v104 = *(*(v74 + 56) + 8 * v105);
LABEL_59:
    v108 = v164;
    UUID.init()();
    v109 = v181;
    v110 = (v108 + *(v181 + 20));
    *v110 = v103;
    v110[1] = v102;
    v111 = v108 + *(v109 + 24);
    *v111 = v104;
    *(v111 + 8) = v107;
    if (sub_1001A7D90(v108, v188, v189, v190 & 1, v191))
    {
      v112 = v163;
      sub_100018228(v108, v163, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v113 = 0;
      v74 = v187;
    }

    else
    {
      sub_1001A973C(v108, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v113 = 1;
      v74 = v187;
      v112 = v163;
    }

    v97 &= v97 - 1;
    v114 = v181;
    (*v185)(v112, v113, 1, v181);
    if ((*v184)(v112, 1, v114) == 1)
    {
      result = sub_100004F84(v112, &qword_100AD6878);
      v99 = v100;
    }

    else
    {
      sub_100018228(v112, v152, type metadata accessor for CustomPlaceSearchSuggestionItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v183 = sub_1003E4FFC(0, v183[2] + 1, 1, v183);
      }

      v116 = v183[2];
      v115 = v183[3];
      if (v116 >= v115 >> 1)
      {
        v183 = sub_1003E4FFC(v115 > 1, v116 + 1, 1, v183);
      }

      v117 = v183;
      v183[2] = v116 + 1;
      result = sub_100018228(v152, v117 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + *(v156 + 72) * v116, type metadata accessor for CustomPlaceSearchSuggestionItem);
      v99 = v100;
      v74 = v187;
    }
  }

  while (1)
  {
    v100 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      goto LABEL_96;
    }

    if (v100 >= v98)
    {
      break;
    }

    v97 = *(v94 + 8 * v100);
    ++v99;
    if (v97)
    {
      goto LABEL_54;
    }
  }

  v119 = sub_100891C98(v118);
  v120 = v119;
  v121 = v119 + 56;
  v122 = 1 << *(v119 + 32);
  v123 = -1;
  if (v122 < 64)
  {
    v123 = ~(-1 << v122);
  }

  v124 = v123 & *(v119 + 56);
  v125 = (v122 + 63) >> 6;
  v187 = v155 + 56;
  v185 = (v155 + 48);

  v126 = 0;
  v184 = _swiftEmptyArrayStorage;
  while (2)
  {
    if (v124)
    {
      v127 = v126;
LABEL_77:
      v128 = (*(v120 + 48) + ((v127 << 10) | (16 * __clz(__rbit64(v124)))));
      v130 = *v128;
      v129 = v128[1];
      v131 = v175;
      v132 = *(v175 + 16);

      if (v132)
      {
        v133 = sub_100094E98(v130, v129);
        if (v134)
        {
          v135 = 0;
          v132 = *(*(v131 + 56) + 8 * v133);
          goto LABEL_82;
        }

        v132 = 0;
      }

      v135 = 1;
LABEL_82:
      v136 = v162;
      UUID.init()();
      v137 = v180;
      v138 = (v136 + *(v180 + 20));
      *v138 = v130;
      v138[1] = v129;
      v139 = v136 + *(v137 + 24);
      *v139 = v132;
      *(v139 + 8) = v135;
      if (sub_1001A870C(v136, v188, v189, v190 & 1, v191))
      {
        v140 = v136;
        v141 = v161;
        sub_100018228(v140, v161, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
        v142 = 0;
      }

      else
      {
        sub_1001A973C(v136, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
        v142 = 1;
        v141 = v161;
      }

      v124 &= v124 - 1;
      v143 = v180;
      (*v187)(v141, v142, 1, v180);
      if ((*v185)(v141, 1, v143) == 1)
      {
        result = sub_100004F84(v141, &qword_100AD6870);
        v126 = v127;
      }

      else
      {
        sub_100018228(v141, v151, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v184 = sub_1003E4FD4(0, v184[2] + 1, 1, v184);
        }

        v145 = v184[2];
        v144 = v184[3];
        if (v145 >= v144 >> 1)
        {
          v184 = sub_1003E4FD4(v144 > 1, v145 + 1, 1, v184);
        }

        v146 = v184;
        v184[2] = v145 + 1;
        result = sub_100018228(v151, v146 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v145, type metadata accessor for CustomActivityTypeSearchSuggestionItem);
        v126 = v127;
      }

      continue;
    }

    break;
  }

  while (1)
  {
    v127 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      break;
    }

    if (v127 >= v125)
    {

      v147 = sub_100605098(v159);

      v148 = sub_100605260(v170);

      v192 = v147;
      sub_1006AD9B8(v148);
      v149 = sub_100605428(v183);

      sub_1006AD9B8(v149);
      v150 = sub_1006055F0(v184);

      sub_1006AD9B8(v150);
      return v192;
    }

    v124 = *(v121 + 8 * v127);
    ++v126;
    if (v124)
    {
      goto LABEL_77;
    }
  }

LABEL_97:
  __break(1u);
  return result;
}

uint64_t sub_1001A48B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v62 = a2;
  v65 = a3;
  v4 = type metadata accessor for MergeableColor();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&unk_100AD68C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v63 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v51 - v14;
  type metadata accessor for JournalMO();
  sub_10004B8B8(&qword_100AD4C68, &type metadata accessor for JournalMO);
  v16 = v64;
  v17 = static Identifiable<>.fetch(id:context:)();
  if (v16)
  {

LABEL_3:
    v18 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
    return (*(*(v18 - 8) + 56))(v65, 1, 1, v18);
  }

  v58 = v9;
  v59 = v13;
  v60 = v15;
  v20 = a1;
  v21 = v63;
  v64 = v10;
  if (!v17)
  {
    goto LABEL_3;
  }

  v22 = v17;
  v23 = JournalMO.title.getter();
  if (!v24)
  {

    goto LABEL_3;
  }

  v55 = v24;
  v56 = v23;
  v25 = v21;
  v26 = *(v21 + 16);
  v27 = v20;
  v26(v60, v20, v64);
  v28 = v58;
  v57 = v22;
  JournalMO.color.getter();
  v29 = v61;
  if ((*(v61 + 48))(v28, 1, v4))
  {
    sub_100004F84(v28, &unk_100AD68C0);
    v58 = 0;
  }

  else
  {
    (*(v29 + 16))(v6, v28, v4);
    sub_100004F84(v28, &unk_100AD68C0);
    v58 = sub_10007C744();
    (*(v29 + 8))(v6, v4);
  }

  v61 = JournalMO.symbolName.getter();
  v54 = v30;
  v31 = JournalMO.emoji.getter();
  v52 = v32;
  v53 = v31;
  v33 = v62;
  v34 = v60;
  if (*(v62 + 16))
  {
    v35 = sub_100361E08(v27);
    v36 = v64;
    if (v37)
    {
      v38 = 0;
      v39 = *(*(v33 + 56) + 8 * v35);
    }

    else
    {
      v39 = 0;
      v38 = 1;
    }
  }

  else
  {
    v39 = 0;
    v38 = 1;
    v36 = v64;
  }

  v40 = v59;
  UUID.init()();

  v41 = *(v25 + 32);
  v42 = v65;
  v41(v65, v40, v36);
  v43 = type metadata accessor for CustomJournalSearchSuggestionItem(0);
  v41(v42 + v43[5], v34, v36);
  v44 = (v42 + v43[6]);
  v45 = v55;
  *v44 = v56;
  v44[1] = v45;
  *(v42 + v43[7]) = v58;
  v46 = (v42 + v43[8]);
  v47 = v53;
  v48 = v54;
  *v46 = v61;
  v46[1] = v48;
  v49 = (v42 + v43[9]);
  *v49 = v47;
  v49[1] = v52;
  v50 = v42 + v43[10];
  *v50 = v39;
  *(v50 + 8) = v38;
  return (*(*(v43 - 1) + 56))(v42, 0, 1, v43);
}