uint64_t sub_100457778()
{
  sub_10025C9B0(&qword_1006DC768);
  UIViewControllerRepresentableContext.coordinator.getter();
  sub_10044A528();
  if (v0)
  {

    sub_100268744();
    _objc_release(v2);
    String.partiallyRedactedString.getter();
  }

  else
  {
    sub_100268744();
    _objc_release(v2);
  }

  sub_10025C9B0(&unk_1006D7340);
  return String.init<A>(describing:)();
}

uint64_t sub_1004578A8@<X0>(uint64_t *a1@<X8>)
{
  result = _SiriMailMessage.Account.address.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

void sub_1004578F8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 handles];
  *a2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v3);
}

uint64_t sub_10045796C@<X0>(uint64_t *a1@<X8>)
{
  v4 = sub_10025C9B0(&unk_1006D69B0);
  v1 = sub_1002B76F0();
  result = sub_10025E9D8(sub_100457A28, 0, v4, &type metadata for String, &type metadata for Never, v1, &protocol witness table for Never, v5);
  *a1 = result;
  return result;
}

uint64_t sub_100457A28@<X0>(uint64_t *a1@<X8>)
{
  result = String.partiallyRedactedString.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_100457A7C()
{
  sub_10025C9B0(&qword_1006DC770);
  sub_100451AA0();
  sub_100458204();
  return Sequence.compactMap<A>(_:)();
}

id sub_100457BEC@<X0>(void *a1@<X8>)
{
  result = sub_10045344C();
  *a1 = result;
  return result;
}

void sub_100457D50()
{
  sub_10045828C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_100457D78(id *a1@<X8>)
{
  sub_100458784();
  v6 = sub_10025C704();
  _SiriMailMessage.Account.name.getter();
  if (!v1)
  {
    _SiriMailMessage.Account.address.getter();
  }

  v3 = String._bridgeToObjectiveC()();

  [v6 setGivenName:v3];
  _objc_release(v3);
  sub_100451AA0();
  _objc_retain(v6);
  v4 = _SiriMailMessage.Account.address.getter();
  *a1 = sub_100457ED8(v6, v4, v2);
  _objc_release(v6);
}

id sub_100457F58(void *a1)
{
  v4 = [v1 initWithCompositionContext:? options:?];
  _objc_release(a1);
  return v4;
}

id sub_100457FAC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v7 = String._bridgeToObjectiveC()();

    v3 = [v9 initWithContact:a1 address:v7 kind:?];
  }

  else
  {
    v3 = [v9 initWithContact:a1 address:0 kind:?];
  }

  v6 = v3;
  _objc_release(v5);
  _objc_release(a1);
  return v6;
}

unint64_t sub_10045807C()
{
  v2 = qword_1006DC778;
  if (!qword_1006DC778)
  {
    sub_10025CAA4(&qword_1006DC770);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC778);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100458104()
{
  v2 = qword_1006DC780;
  if (!qword_1006DC780)
  {
    sub_10025CAA4(&qword_1006D7B58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC780);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100458194()
{
  sub_10025C9B0(&qword_1006DC768);

  return sub_100457778();
}

unint64_t sub_100458204()
{
  v2 = qword_1006DC788;
  if (!qword_1006DC788)
  {
    sub_10025CAA4(&qword_1006DC770);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC788);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10045828C()
{
  v2 = qword_1006DC790;
  if (!qword_1006DC790)
  {
    type metadata accessor for SiriMailComposeViewRepresentable();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC790);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10045830C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFE && *(a1 + 16))
    {
      v5 = *a1 + 2147483646;
    }

    else
    {
      v4 = -1;
      if (*a1 < &_mh_execute_header)
      {
        v4 = *a1;
      }

      v2 = v4 - 1;
      if (v4 - 1 < 0)
      {
        v2 = -1;
      }

      v5 = v2;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10045845C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100458694()
{
  v2 = sub_1004521B8();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_100458784()
{
  v2 = qword_1006DC828;
  if (!qword_1006DC828)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC828);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_100458854()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail13SiriMailScene_window);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_10045892C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail13SiriMailScene_window);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_100458A30()
{
  v3 = 0;
  *OBJC_IVAR____TtC10MobileMail13SiriMailScene_window = 0;
  v2.receiver = v3;
  v2.super_class = type metadata accessor for SiriMailScene();
  v1 = objc_msgSendSuper2(&v2, "init");
  _objc_retain(v1);
  v3 = v1;
  _objc_release(v1);
  return v1;
}

id sub_100458AE4()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriMailScene();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100458B64(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v39 = a2;
  v38 = a1;
  v47 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v36 = 0;
  v40 = type metadata accessor for Logger();
  v41 = *(v40 - 8);
  v42 = v41;
  v43 = *(v41 + 64);
  v44 = v13 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v38);
  v59 = v3;
  v58 = v4;
  v57 = v5;
  static Logger.siriMail.getter();
  v49 = Logger.logObject.getter();
  v45 = v49;
  v48 = static os_log_type_t.debug.getter();
  v46 = v48;
  sub_10025C9B0(&unk_1006D7720);
  v50 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v49, v48))
  {
    v6 = v36;
    v27 = static UnsafeMutablePointer.allocate(capacity:)();
    v23 = v27;
    v24 = sub_10025C9B0(&qword_1006D7290);
    v25 = 0;
    v28 = sub_1002641E8(0);
    v26 = v28;
    v29 = sub_1002641E8(v25);
    v54[0] = v27;
    v53 = v28;
    v52 = v29;
    v30 = 0;
    v31 = v54;
    sub_10026423C(0, v54);
    sub_10026423C(v30, v31);
    v51 = v50;
    v32 = v13;
    __chkstk_darwin(v13);
    v33 = &v13[-6];
    v13[-4] = v7;
    v13[-3] = &v53;
    v13[-2] = &v52;
    v34 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v35 = v6;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v45, v46, "#SiriMailScene scene:willConnectTo:connectionOptions", v23, 2u);
      v21 = 0;
      sub_10026429C(v26);
      sub_10026429C(v29);
      UnsafeMutablePointer.deallocate()();

      v22 = v35;
    }
  }

  else
  {

    v22 = v36;
  }

  (*(v42 + 8))(v44, v40);
  v8 = v38;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v19 = v20;
  }

  else
  {

    v19 = 0;
  }

  v18 = v19;
  if (v19)
  {
    v17 = v18;
    v16 = v18;
    v56 = v18;
    v13[1] = 0;
    sub_1003C6E30();
    v9 = v16;
    v15 = sub_100459138(v16);
    v55 = v15;
    sub_10025C9B0(&qword_1006DC848);
    v10 = v38;
    v54[1] = sub_100453098();
    v54[2] = v11;
    v13[2] = type metadata accessor for _SiriMailMessage();
    sub_100459178();
    v14 = _SnippetClientController.__allocating_init<A>(scene:rootView:modelType:)();
    [v15 setRootViewController:?];

    [v15 makeKeyAndVisible];
    v12 = v15;
    sub_10045892C(v15);
  }
}

unint64_t sub_100459178()
{
  v2 = qword_1006DC850;
  if (!qword_1006DC850)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC850);
    return WitnessTable;
  }

  return v2;
}

void sub_1004592B8(uint64_t a1)
{
  v21 = a1;
  v29 = 0;
  v39 = 0;
  v38 = 0;
  v20 = 0;
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  v24 = v23;
  v25 = *(v23 + 64);
  v26 = v5 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v21);
  v38 = v1;
  static Logger.siriMail.getter();
  v31 = Logger.logObject.getter();
  v27 = v31;
  v30 = static os_log_type_t.debug.getter();
  v28 = v30;
  sub_10025C9B0(&unk_1006D7720);
  v32 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v31, v30))
  {
    v2 = v20;
    v11 = static UnsafeMutablePointer.allocate(capacity:)();
    v7 = v11;
    v8 = sub_10025C9B0(&qword_1006D7290);
    v9 = 0;
    v12 = sub_1002641E8(0);
    v10 = v12;
    v13 = sub_1002641E8(v9);
    v36 = v11;
    v35 = v12;
    v34 = v13;
    v14 = 0;
    v15 = &v36;
    sub_10026423C(0, &v36);
    sub_10026423C(v14, v15);
    v33 = v32;
    v16 = v5;
    __chkstk_darwin(v5);
    v17 = &v5[-6];
    v5[-4] = v3;
    v5[-3] = &v35;
    v5[-2] = &v34;
    v18 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v19 = v2;
    if (v2)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v27, v28, "#SiriMailScene sceneDidDisconnect", v7, 2u);
      v5[1] = 0;
      sub_10026429C(v10);
      sub_10026429C(v13);
      UnsafeMutablePointer.deallocate()();

      v6 = v19;
    }
  }

  else
  {

    v6 = v20;
  }

  (*(v24 + 8))(v26, v22);
  v37 = sub_100458854();
  if (v37)
  {
    v5[0] = v37;
    v4 = v37;
    sub_10026A58C(&v37);
    [v5[0] setRootViewController:0];
  }

  else
  {
    sub_10026A58C(&v37);
  }

  sub_10045892C(0);
}

id sub_10045974C(void *a1)
{
  v4 = [v1 initWithWindowScene:?];
  _objc_release(a1);
  return v4;
}

double sub_100459814(uint64_t a1)
{
  if (!a1)
  {
    return 8.0;
  }

  if (a1 == 1)
  {
    return 0.0;
  }

  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return v2;
}

unint64_t sub_1004598F4()
{
  v2 = qword_1006DC950;
  if (!qword_1006DC950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100459A9C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

void sub_100459B58(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v5 = *v2;
  swift_endAccess();
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  *v3 = a1;
  swift_endAccess();
  sub_100459C10(v5);
}

void sub_100459C10(uint64_t a1)
{
  v18 = 0;
  v19 = a1;
  v6 = (v1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v7 = *v6;
  swift_endAccess();
  v17 = v7;
  v16 = a1;
  sub_100459DD8();
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v3 = objc_opt_self();
    _objc_retain(v5);
    v2 = swift_allocObject();
    *(v2 + 16) = v5;
    v14 = sub_100459F34;
    v15 = v2;
    aBlock = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = 0;
    v12 = sub_1002AEFF8;
    v13 = &unk_1006618C0;
    v4 = _Block_copy(&aBlock);

    [v3 animateWithDuration:4 delay:v4 options:0 animations:0.25 completion:0.0];
    _Block_release(v4);
  }
}

unint64_t sub_100459DD8()
{
  v2 = qword_1006DC958;
  if (!qword_1006DC958)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC958);
    return WitnessTable;
  }

  return v2;
}

void sub_100459E54(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView);
  _objc_retain(v1);
  v5 = [v1 layer];
  _objc_release(v1);
  v3 = (a1 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance);
  swift_beginAccess();
  v4 = *v3;
  swift_endAccess();
  [v5 setCornerRadius:sub_100459814(v4)];
  _objc_release(v5);
}

uint64_t sub_100459F3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_100459FA0()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_stackView);
  _objc_retain(v2);
  return v2;
}

void *sub_100459FE8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView);
  _objc_retain(v2);
  return v2;
}

id sub_10045A09C()
{
  v2 = objc_opt_self();
  _objc_retain(UIFontTextStyleBody);
  v3 = [v2 _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightBold];
  _objc_release(UIFontTextStyleBody);
  if (v3)
  {
    return v3;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return v1;
}

id sub_10045A224()
{
  v1 = objc_opt_self();
  _objc_retain(UIFontTextStyleFootnote);
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleFootnote];
  _objc_release(UIFontTextStyleFootnote);
  return v2;
}

void sub_10045A2AC()
{
  ObjectType = swift_getObjectType();
  v9 = v0;
  _objc_retain(v0);
  v8.receiver = v0;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "layoutSubviews");
  _objc_release(v0);
  v5 = objc_opt_self();
  _objc_retain(v0);
  v7 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v7);
  _objc_release(v0);
  _objc_retain(v0);
  v4 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v4);
  _objc_release(v3);
  [v4 bounds];
  v6 = v1;
  _objc_release(v4);
  [v5 roundAvatarView:v7 withBorder:0 size:v6];
  _objc_release(v7);
}

void sub_10045A46C(char *a1)
{
  v16 = a1;
  v15 = v1;
  _objc_retain(v1);
  sub_1002AA978(a1);
  _objc_release(v8);
  v9 = *&v8[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v9);
  v11 = OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult;
  v12 = &a1[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
  swift_beginAccess();
  if (*v12)
  {
    v4 = *&a1[v11];
    _objc_retain(v4);
    swift_endAccess();
    v5 = [v4 headerColors];
    _objc_release(v4);
    v6 = [v5 contrastingBackgroundColor];
    _objc_release(v5);
    v7 = v6;
  }

  else
  {
    swift_endAccess();
    v7 = 0;
  }

  v13 = v7;
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v3 = *sub_1002A9CA8();
    _objc_retain(v3);
    v14 = v3;
  }

  [v9 setBackgroundColor:v14];
  _objc_release(v2);
  _objc_release(v9);
}

void sub_10045A6E4()
{
  _objc_retain(v0);
  sub_1002AB258();
  _objc_release(v29);
  _objc_retain(v29);
  v4 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v4);
  _objc_release(v29);
  [v4 setAdjustsFontForContentSizeCategory:1];
  _objc_release(v4);
  _objc_retain(v29);
  v5 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v5);
  _objc_release(v29);
  [v5 setTextAlignment:?];
  _objc_release(v5);
  _objc_retain(v29);
  v6 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v6);
  _objc_release(v29);
  type metadata accessor for UILayoutPriority();
  sub_10045B0A8();
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  LODWORD(v1) = v33;
  [v6 setContentCompressionResistancePriority:0 forAxis:v1];
  _objc_release(v6);
  _objc_retain(v29);
  v7 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v7);
  _objc_release(v29);
  [v7 setNumberOfLines:?];
  _objc_release(v7);
  _objc_retain(v29);
  v8 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v8);
  _objc_release(v29);
  v9 = [v8 layer];
  _objc_release(v8);
  [v9 setMasksToBounds:1];
  _objc_release(v9);
  _objc_retain(v29);
  v10 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v10);
  _objc_release(v29);
  v11 = [v10 layer];
  _objc_release(v10);
  [v11 setCornerRadius:?];
  _objc_release(v11);
  _objc_retain(v29);
  v12 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v12);
  _objc_release(v29);
  v13 = [v12 layer];
  _objc_release(v12);
  _objc_retain(kCACornerCurveContinuous);
  [v13 setCornerCurve:kCACornerCurveContinuous];
  _objc_release(kCACornerCurveContinuous);
  _objc_release(v13);
  _objc_retain(v29);
  v14 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v14);
  _objc_release(v29);
  v15 = [v14 layer];
  _objc_release(v14);
  type metadata accessor for CACornerMask();
  _allocateUninitializedArray<A>(_:)();
  *v2 = 1;
  v2[1] = 2;
  sub_1002612B0();
  sub_1002676CC();
  SetAlgebra<>.init(arrayLiteral:)();
  [v15 setMaskedCorners:v32];
  _objc_release(v15);
  v16 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v16);
  v17 = [v16 layer];
  _objc_release(v16);
  [v17 setMasksToBounds:1];
  _objc_release(v17);
  v18 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v18);
  v19 = [v18 layer];
  _objc_release(v18);
  [v19 setCornerRadius:8.0];
  _objc_release(v19);
  v20 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v20);
  v21 = [v20 layer];
  _objc_release(v20);
  _objc_retain(kCACornerCurveContinuous);
  [v21 setCornerCurve:kCACornerCurveContinuous];
  _objc_release(kCACornerCurveContinuous);
  _objc_release(v21);
  v22 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v22);
  v23 = [v22 layer];
  _objc_release(v22);
  _allocateUninitializedArray<A>(_:)();
  *v3 = 4;
  v3[1] = 8;
  sub_1002612B0();
  SetAlgebra<>.init(arrayLiteral:)();
  [v23 setMaskedCorners:v31];
  _objc_release(v23);
  _objc_retain(v29);
  v24 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v24);
  _objc_release(v29);
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v24);
  v25 = *&v29[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v25);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v25);
  _objc_retain(v29);
  v26 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v26);
  _objc_release(v29);
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v26);
  _objc_retain(v29);
  v27 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v27);
  _objc_release(v29);
  [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v27);
  _objc_retain(v29);
  v28 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v28);
  _objc_release(v29);
  [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v28);
  _objc_retain(v29);
  v30 = *&v29[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v30);
  _objc_release(v29);
  [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v30);
}

unint64_t sub_10045B0A8()
{
  v2 = qword_1006DC970;
  if (!qword_1006DC970)
  {
    type metadata accessor for UILayoutPriority();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC970);
    return WitnessTable;
  }

  return v2;
}

void sub_10045B178()
{
  _objc_retain(v0);
  v3 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v3);
  _objc_release(v0);
  _objc_retain(v0);
  v2 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v2);
  _objc_release(v0);
  [v3 addSubview:v2];
  _objc_release(v2);
  _objc_release(v3);
  _objc_retain(v0);
  v5 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v5);
  _objc_release(v0);
  v4 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v4);
  [v5 addSubview:v4];
  _objc_release(v4);
  _objc_release(v5);
  _objc_retain(v0);
  v7 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v7);
  _objc_release(v0);
  _objc_retain(v0);
  v6 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v6);
  _objc_release(v0);
  [v7 addSubview:v6];
  _objc_release(v6);
  _objc_release(v7);
  _objc_retain(v0);
  v9 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v9);
  _objc_release(v0);
  _objc_retain(v0);
  v8 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v8);
  _objc_release(v0);
  [v9 addSubview:v8];
  _objc_release(v8);
  _objc_release(v9);
  _objc_retain(v0);
  v11 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v11);
  _objc_release(v0);
  _objc_retain(v0);
  v10 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v10);
  _objc_release(v0);
  [v11 addSubview:v10];
  _objc_release(v10);
  _objc_release(v11);
  _objc_retain(v0);
  v12 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v12);
  _objc_release(v0);
  [v0 addSubview:v12];
  _objc_release(v12);
  v117 = objc_opt_self();
  sub_100293824();
  _allocateUninitializedArray<A>(_:)();
  v116 = v1;
  _objc_retain(v0);
  v13 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v13);
  _objc_release(v0);
  v16 = [v13 topAnchor];
  _objc_release(v13);
  _objc_retain(v0);
  v14 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v14);
  _objc_release(v0);
  v15 = [v14 topAnchor];
  _objc_release(v14);
  v17 = [v16 constraintEqualToAnchor:v15];
  _objc_release(v15);
  _objc_release(v16);
  *v116 = v17;
  _objc_retain(v0);
  v18 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v18);
  _objc_release(v0);
  v21 = [v18 leadingAnchor];
  _objc_release(v18);
  _objc_retain(v0);
  v19 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v19);
  _objc_release(v0);
  v20 = [v19 leadingAnchor];
  _objc_release(v19);
  v22 = [v21 constraintEqualToAnchor:v20];
  _objc_release(v20);
  _objc_release(v21);
  v116[1] = v22;
  _objc_retain(v0);
  v23 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v23);
  _objc_release(v0);
  v26 = [v23 trailingAnchor];
  _objc_release(v23);
  _objc_retain(v0);
  v24 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v24);
  _objc_release(v0);
  v25 = [v24 trailingAnchor];
  _objc_release(v24);
  v27 = [v26 constraintEqualToAnchor:v25];
  _objc_release(v25);
  _objc_release(v26);
  v116[2] = v27;
  _objc_retain(v0);
  v28 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView];
  _objc_retain(v28);
  _objc_release(v0);
  v30 = [v28 heightAnchor];
  _objc_release(v28);
  _objc_retain(v0);
  v29 = [v0 heightAnchor];
  _objc_release(v0);
  v31 = [v30 constraintEqualToAnchor:v29 multiplier:0.55];
  _objc_release(v29);
  _objc_release(v30);
  v116[3] = v31;
  v32 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v32);
  v35 = [v32 bottomAnchor];
  _objc_release(v32);
  _objc_retain(v0);
  v33 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v33);
  _objc_release(v0);
  v34 = [v33 bottomAnchor];
  _objc_release(v33);
  v36 = [v35 constraintEqualToAnchor:v34];
  _objc_release(v34);
  _objc_release(v35);
  v116[4] = v36;
  v37 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v37);
  v40 = [v37 leadingAnchor];
  _objc_release(v37);
  _objc_retain(v0);
  v38 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v38);
  _objc_release(v0);
  v39 = [v38 leadingAnchor];
  _objc_release(v38);
  v41 = [v40 constraintEqualToAnchor:v39];
  _objc_release(v39);
  _objc_release(v40);
  v116[5] = v41;
  v42 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v42);
  v45 = [v42 trailingAnchor];
  _objc_release(v42);
  _objc_retain(v0);
  v43 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v43);
  _objc_release(v0);
  v44 = [v43 trailingAnchor];
  _objc_release(v43);
  v46 = [v45 constraintEqualToAnchor:v44];
  _objc_release(v44);
  _objc_release(v45);
  v116[6] = v46;
  v47 = *&v0[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView];
  _objc_retain(v47);
  v49 = [v47 heightAnchor];
  _objc_release(v47);
  _objc_retain(v0);
  v48 = [v0 heightAnchor];
  _objc_release(v0);
  v50 = [v49 constraintEqualToAnchor:v48 multiplier:0.55];
  _objc_release(v48);
  _objc_release(v49);
  v116[7] = v50;
  _objc_retain(v0);
  v51 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v51);
  _objc_release(v0);
  v52 = [v51 heightAnchor];
  _objc_release(v51);
  v53 = [v52 constraintEqualToConstant:38.0];
  _objc_release(v52);
  v116[8] = v53;
  _objc_retain(v0);
  v54 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v54);
  _objc_release(v0);
  v57 = [v54 widthAnchor];
  _objc_release(v54);
  _objc_retain(v0);
  v55 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v55);
  _objc_release(v0);
  v56 = [v55 heightAnchor];
  _objc_release(v55);
  v58 = [v57 constraintEqualToAnchor:v56];
  _objc_release(v56);
  _objc_release(v57);
  v116[9] = v58;
  _objc_retain(v0);
  v59 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v59);
  _objc_release(v0);
  v62 = [v59 leadingAnchor];
  _objc_release(v59);
  _objc_retain(v0);
  v60 = [v0 layoutMarginsGuide];
  _objc_release(v0);
  v61 = [v60 leadingAnchor];
  _objc_release(v60);
  v63 = [v62 constraintEqualToAnchor:v61];
  _objc_release(v61);
  _objc_release(v62);
  v116[10] = v63;
  _objc_retain(v0);
  v64 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v64);
  _objc_release(v0);
  v67 = [v64 topAnchor];
  _objc_release(v64);
  _objc_retain(v0);
  v65 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v65);
  _objc_release(v0);
  v66 = [v65 topAnchor];
  _objc_release(v65);
  v68 = [v67 constraintEqualToAnchor:v66 constant:16.0];
  _objc_release(v66);
  _objc_release(v67);
  v116[11] = v68;
  _objc_retain(v0);
  v69 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v69);
  _objc_release(v0);
  v72 = [v69 bottomAnchor];
  _objc_release(v69);
  _objc_retain(v0);
  v70 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v70);
  _objc_release(v0);
  v71 = [v70 bottomAnchor];
  _objc_release(v70);
  v73 = [v72 constraintEqualToAnchor:v71 constant:-16.0];
  _objc_release(v71);
  _objc_release(v72);
  v116[12] = v73;
  _objc_retain(v0);
  v74 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v74);
  _objc_release(v0);
  v77 = [v74 centerYAnchor];
  _objc_release(v74);
  _objc_retain(v0);
  v75 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v75);
  _objc_release(v0);
  v76 = [v75 centerYAnchor];
  _objc_release(v75);
  v78 = [v77 constraintEqualToAnchor:v76];
  _objc_release(v76);
  _objc_release(v77);
  v116[13] = v78;
  _objc_retain(v0);
  v79 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v79);
  _objc_release(v0);
  v82 = [v79 leadingAnchor];
  _objc_release(v79);
  _objc_retain(v0);
  v80 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView];
  _objc_retain(v80);
  _objc_release(v0);
  v81 = [v80 trailingAnchor];
  _objc_release(v80);
  v83 = [v82 constraintEqualToAnchor:v81 constant:12.0];
  _objc_release(v81);
  _objc_release(v82);
  v116[14] = v83;
  _objc_retain(v0);
  v84 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v84);
  _objc_release(v0);
  v87 = [v84 firstBaselineAnchor];
  _objc_release(v84);
  _objc_retain(v0);
  v85 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v85);
  _objc_release(v0);
  v86 = [v85 firstBaselineAnchor];
  _objc_release(v85);
  v88 = [v87 constraintEqualToAnchor:v86];
  _objc_release(v86);
  _objc_release(v87);
  v116[15] = v88;
  _objc_retain(v0);
  v89 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v89);
  _objc_release(v0);
  v92 = [v89 leadingAnchor];
  _objc_release(v89);
  _objc_retain(v0);
  v90 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel];
  _objc_retain(v90);
  _objc_release(v0);
  v91 = [v90 trailingAnchor];
  _objc_release(v90);
  v93 = [v92 constraintGreaterThanOrEqualToAnchor:v91 constant:8.0];
  _objc_release(v91);
  _objc_release(v92);
  v116[16] = v93;
  _objc_retain(v0);
  v94 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v94);
  _objc_release(v0);
  v97 = [v94 trailingAnchor];
  _objc_release(v94);
  _objc_retain(v0);
  v95 = [v0 layoutMarginsGuide];
  _objc_release(v0);
  v96 = [v95 trailingAnchor];
  _objc_release(v95);
  v98 = [v97 constraintEqualToAnchor:v96];
  _objc_release(v96);
  _objc_release(v97);
  v116[17] = v98;
  _objc_retain(v0);
  v99 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v99);
  _objc_release(v0);
  v101 = [v99 topAnchor];
  _objc_release(v99);
  _objc_retain(v0);
  v100 = [v0 topAnchor];
  _objc_release(v0);
  v102 = [v101 constraintEqualToAnchor:v100];
  _objc_release(v100);
  _objc_release(v101);
  v116[18] = v102;
  _objc_retain(v0);
  v103 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v103);
  _objc_release(v0);
  v105 = [v103 leadingAnchor];
  _objc_release(v103);
  _objc_retain(v0);
  v104 = [v0 leadingAnchor];
  _objc_release(v0);
  v106 = [v105 constraintEqualToAnchor:v104];
  _objc_release(v104);
  _objc_release(v105);
  v116[19] = v106;
  _objc_retain(v0);
  v107 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v107);
  _objc_release(v0);
  v109 = [v107 bottomAnchor];
  _objc_release(v107);
  _objc_retain(v0);
  v108 = [v0 bottomAnchor];
  _objc_release(v0);
  v110 = [v109 constraintEqualToAnchor:v108];
  _objc_release(v108);
  _objc_release(v109);
  v116[20] = v110;
  _objc_retain(v0);
  v111 = *&v0[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView];
  _objc_retain(v111);
  _objc_release(v112);
  v114 = [v111 trailingAnchor];
  _objc_release(v111);
  _objc_retain(v112);
  v113 = [v112 trailingAnchor];
  _objc_release(v112);
  v115 = [v114 constraintEqualToAnchor:v113];
  _objc_release(v113);
  _objc_release(v114);
  v116[21] = v115;
  sub_1002612B0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v117 activateConstraints:isa];
  _objc_release(isa);
}

char *sub_10045CDF4(double a1, double a2, double a3, double a4)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  *&v10 = a3;
  *(&v10 + 1) = a4;
  ObjectType = swift_getObjectType();
  v13 = v9;
  v14 = v10;
  v15 = v4;
  *&v4[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance] = 0;
  v6 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_stackView;
  sub_100264A18();
  *&v15[v6] = sub_10025C704();
  v7 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView;
  sub_1002AA63C();
  *&v15[v7] = sub_10025C704();
  v12.receiver = v15;
  v12.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v12, "initWithFrame:", v9, v10);
  _objc_retain(v11);
  v15 = v11;
  _objc_release(v11);
  return v11;
}

char *sub_10045CFA8(void *a1)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v11 = v1;
  *&v1[OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_appearance] = 0;
  v4 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_stackView;
  sub_100264A18();
  *&v11[v4] = sub_10025C704();
  v5 = OBJC_IVAR____TtC10MobileMail34StaticConversationSenderHeaderView_bottomBackgroundView;
  sub_1002AA63C();
  *&v11[v5] = sub_10025C704();
  v9.receiver = v11;
  v9.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);
  if (v8)
  {
    _objc_retain(v8);
    v11 = v8;
    _objc_release(a1);
    _objc_release(v11);
    return v8;
  }

  else
  {
    _objc_release(0);
    _objc_release(a1);
    return 0;
  }
}

uint64_t type metadata accessor for StaticConversationSenderHeaderView()
{
  v1 = qword_1006DC9A0;
  if (!qword_1006DC9A0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_10045D2C4()
{
  updated = swift_updateClassMetadata2();
  if (!updated)
  {
    return 0;
  }

  return updated;
}

uint64_t sub_10045D374()
{
  v16 = "Email thread to summarize";
  v19 = "Email thread to summarize";
  v43 = &v53;
  v53 = 0;
  v54 = 0;
  v30 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v6 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v41 = &v5 - v6;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v40 = &v5 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v7);
  v39 = &v5 - v8;
  v9 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v37 = &v5 - v9;
  v10 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v25 = &v5 - v10;
  v11 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v24 = &v5 - v11;
  v12 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v30);
  v22 = &v5 - v12;
  v29 = type metadata accessor for LocalizedStringResource();
  v26 = *(v29 - 8);
  v27 = v29 - 8;
  v13 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v36 = &v5 - v13;
  sub_10025C9B0(&unk_1006D7090);
  v14 = v52;
  memset(v52, 0, sizeof(v52));
  sub_10000B074();
  sub_1003DC7F0();
  v45 = AppDependency.__allocating_init(key:manager:)();

  v53 = v45;
  sub_10025C9B0(&unk_1006DB320);
  v31 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Thread", 6uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v17 = "AppIntents";
  v18 = 10;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v31 & 1);
  sub_100015CC0();
  sub_10025D410(v25);
  v49 = v19;
  v20 = 25;
  v50 = 25;
  v21 = 2;
  v51 = 2;
  v28 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v16, v20, v31 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v23 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v17, v18, v31 & 1);
  sub_100015CC0();
  sub_10025D410(v25);
  v46[2] = v19;
  v46[3] = v20;
  v47 = v21;
  v48 = v28 & 1 & v31;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v26 + 56))(v37, v28, v31, v29);
  v38 = v46;
  v46[0] = 0;
  v46[1] = 0;
  v32 = type metadata accessor for IntentDialog();
  v3 = *(v32 - 8);
  v34 = *(v3 + 56);
  v33 = v3 + 56;
  v34(v39, v31);
  (v34)(v40, v31, v31, v32);
  v35 = sub_100341EC8();
  v42 = sub_1003A148C();
  sub_1003BD8F8(v41);
  v44 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v54 = v44;
  sub_10027EB24();
  return v45;
}

uint64_t sub_10045DA80()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10045DAF0()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_10045DBA4()
{
  v1 = sub_10045DB98();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_10045DBFC(char a1)
{
  v2 = sub_10045DB98();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t sub_10045DC50@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v9 = "Summarizes an email thread.";
  v11 = "Summarizes an email thread.";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v5 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v20 = &v5 - v5;
  v22 = 0;
  v6 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v16 = &v5 - v6;
  v7 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v15 = &v5 - v7;
  v8 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22);
  v13 = &v5 - v8;
  v19 = type metadata accessor for LocalizedStringResource();
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v10 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v9);
  v21 = &v5 - v10;
  v12 = 27;
  v23 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v2, 0x1BuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v23 & 1);
  sub_100015CC0();
  sub_10025D410(v16);
  v26 = v11;
  v27 = v12;
  v28 = 2;
  v24 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, v23, v23, v19);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v3 = type metadata accessor for IntentDescription();
  return (*(*(v3 - 8) + 56))(v25, v24, v23);
}

uint64_t sub_10045DF98@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v7 = "Summarize Thread";
  v10 = "Summarize Thread";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v16 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v15 = &v3 - v6;
  v8 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = __chkstk_darwin(v7);
  v13 = &v3 - v8;
  v11 = 16;
  v9 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v1, 0x10uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v9 & 1);
  sub_100015CC0();
  sub_10025D410(v16);
  v17 = v10;
  v18 = v11;
  v19 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10045E184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a3;
  v3[12] = a2;
  v3[11] = a1;
  v3[10] = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[6] = a2;
  v3[7] = a3;
  return _swift_task_switch(sub_10045E1D4, 0);
}

uint64_t sub_10045E1D4()
{
  v0[10] = v0;
  v0[14] = sub_10027A534();
  type metadata accessor for MainActor();
  v0[15] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045E284, v1);
}

uint64_t sub_10045E284()
{
  *(v0 + 80) = v0;
  sub_10035277C();
  *(v0 + 128) = 0;
  v2 = *(v3 + 112);

  _objc_release(v2);

  return _swift_task_switch(sub_10045E384, 0);
}

uint64_t sub_10045E384()
{
  v0[10] = v0;
  v16 = [objc_opt_self() defaultCenter];
  _objc_retain(@"AppIntentDidSummarize");
  v0[2] = 0;
  v0[3] = 0;
  v0[4] = 0;
  v0[5] = 0;
  if (v0[5])
  {
    object = v15[2]._object;
    v9 = sub_10027EC3C(&v15[1]._countAndFlagsBits, object);
    v10 = *(object - 8);
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, object);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v12, object);

    sub_1000160F4(&v15[1]);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_10025C9B0(&unk_1006DB9F0);
  _allocateUninitializedArray<A>(_:)();
  v7 = v1;
  v15[4] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("conversationID", 0xEuLL, 1);
  _convertToAnyHashable<A>(_:)();
  v5 = sub_10045DA80();
  v6 = v2;

  v7[8] = &type metadata for String;
  v7[5] = v5;
  v7[6] = v6;
  sub_1002612B0();
  sub_100268744();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v16 postNotificationName:@"AppIntentDidSummarize" object:v14 userInfo:isa];
  _objc_release(isa);
  swift_unknownObjectRelease();
  _objc_release(@"AppIntentDidSummarize");
  _objc_release(v16);
  static IntentResult.result<>()();
  v3 = *(v15[5]._countAndFlagsBits + 8);

  return v3();
}

uint64_t sub_10045E720()
{
  v3 = *(v0 + 112);
  *(v0 + 80) = v0;

  _objc_release(v3);
  v1 = *(*(v0 + 80) + 8);

  return v1();
}

uint64_t sub_10045E7D4()
{
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v1);
  return v3;
}

uint64_t sub_10045E954(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_10045E184(a1, v6, v7);
}

uint64_t sub_10045EA20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10045D374();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_10045EAA0()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0408;
  sub_10002094C(v7, qword_1006F0408);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10045EBE0();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10045EBE0()
{
  if (!sub_10047E218(26, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailSummarizeThread", 0x13uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10045ECB8()
{
  if (qword_1006D6120 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0408);
}

uint64_t sub_10045ED24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10045ECB8();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_10045EDA0()
{
  v2 = qword_1006DC9C0;
  if (!qword_1006DC9C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10045EE34()
{
  v2 = qword_1006DC9C8;
  if (!qword_1006DC9C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10045EF40(uint64_t a1)
{
  result = sub_1003402F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10045EF84()
{
  v2 = qword_1006DC9D0;
  if (!qword_1006DC9D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t SearchItem.TopHit.init(suggestion:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v25 = a1;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v22 = 0;
  v23 = (*(*(type metadata accessor for UUID() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v24 = v7 - v23;
  v26 = type metadata accessor for SearchItem.TopHit();
  v27 = *(v26 - 8);
  v28 = v26 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v25);
  v30 = v7 - v29;
  v31 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v32 = v7 - v31;
  v39 = v7 - v31;
  v38 = v4;
  v34 = [v4 category];
  v33 = [objc_opt_self() topHitsCategory];
  v35 = [v34 isGroupedInCategory:?];
  _objc_release(v33);
  _objc_release(v34);
  if ((v35 & 1) != 0 && ((_objc_retain(v25), objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) == 0) ? (_objc_release(v25), v19 = 0) : (v19 = v20), (v18 = v19) != 0))
  {
    v17 = v18;
    v15 = v18;
    v37 = v18;
    v13 = [v18 messageList];
    v12 = [v15 itemID];
    v14 = [v13 messageListItemForItemID:?];
    swift_unknownObjectRelease();
    _objc_release(v13);
    v36 = v14;
    UUID.init()();
    v5 = [v15 matchingHintsByGlobalMessageID];
    v16 = v5;
    if (v5)
    {
      v11 = v16;
      v8 = v16;
      v7[0] = sub_100278E2C();
      v7[1] = sub_10025C9B0(&qword_1006DBC40);
      sub_100408AB4();
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v8);
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    SearchItem.TopHit.init(id:message:matchingHintsByGlobalMessageID:)();
    (*(v27 + 32))(v32, v30, v26);
    _objc_release(v15);
    (*(v27 + 16))(v21, v32, v26);
    (*(v27 + 56))(v21, 0, 1, v26);
    _objc_release(v25);
    return (*(v27 + 8))(v32, v26);
  }

  else
  {
    _objc_release(v25);
    return (*(v27 + 56))(v21, 1, 1, v26);
  }
}

uint64_t sub_10045F520(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[10] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[7] = 0;
  v3[8] = 0;
  v4 = type metadata accessor for Logger();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[3] = a1;
  v3[4] = a2;
  v3[5] = v2;

  return _swift_task_switch(sub_10045F65C, 0);
}

uint64_t sub_10045F65C()
{
  v1 = v0[10];
  v0[2] = v0;
  v0[6] = v1;
  sub_10025C9B0(&unk_1006D6FF0);
  type metadata accessor for MailMessageEntityID();
  sub_10027D6A0();
  v5 = Sequence.compactMap<A>(_:)();
  v0[15] = v5;
  v0[16] = 0;
  v4[7] = v5;
  v4[17] = type metadata accessor for MainActor();
  v4[18] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10045F7DC, v2);
}

uint64_t sub_10045F7DC()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[19] = [v1 daemonInterface];

  return _swift_task_switch(sub_10045F878, 0);
}

uint64_t sub_10045F878()
{
  v35 = v0;
  v1 = *(v0 + 152);
  *(v0 + 16) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v26 = v29[19];
  v2 = v29[16];
  v27 = [v26 messageRepository];
  _objc_release(v26);
  v28 = EMMessageRepository.messageObjectIDs(forMailMessageEntityIDs:)();
  v29[20] = v28;
  if (v2)
  {
    _objc_release(v27);

    v8 = *(v29[2] + 8);

    return v8();
  }

  else
  {
    v4 = v29[14];
    v16 = v29[12];
    v15 = v29[13];
    _objc_release(v27);
    v29[8] = v28;
    v5 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v15 + 16))(v4, v5, v16);

    v17 = swift_allocObject();
    *(v17 + 16) = v28;

    v18 = swift_allocObject();
    *(v18 + 16) = sub_100278D34;
    *(v18 + 24) = v17;

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_100461818;
    *(v19 + 24) = v18;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_10026EE84;
    *(v22 + 24) = v19;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v23 = v6;

    *v23 = sub_10026434C;
    v23[1] = v20;

    v23[2] = sub_10026434C;
    v23[3] = v21;

    v23[4] = sub_10026EF2C;
    v23[5] = v22;
    sub_1002612B0();

    if (os_log_type_enabled(v24, v25))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v13 = sub_1002641E8(0);
      v14 = sub_1002641E8(1);
      v30 = buf;
      v31 = v13;
      v32 = v14;
      sub_10026423C(2, &v30);
      sub_10026423C(1, &v30);
      v33 = sub_10026434C;
      v34 = v20;
      sub_100264250(&v33, &v30, &v31, &v32);
      v33 = sub_10026434C;
      v34 = v21;
      sub_100264250(&v33, &v30, &v31, &v32);
      v33 = sub_10026EF2C;
      v34 = v22;
      sub_100264250(&v33, &v30, &v31, &v32);
      _os_log_impl(&_mh_execute_header, v24, v25, "#SiriMail messageListItems messageObjectIDs: %s", buf, 0xCu);
      sub_10026429C(v13);
      sub_10026429C(v14);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v29[21] = 0;
    v10 = v29[14];
    v11 = v29[12];
    v9 = v29[13];
    _objc_release(v24);
    (*(v9 + 8))(v10, v11);
    v29[22] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100460130, v7);
  }
}

uint64_t sub_100460130()
{
  v1 = v0[11];
  v0[2] = v0;
  v0[23] = [v1 daemonInterface];

  return _swift_task_switch(sub_1004601CC, 0);
}

uint64_t sub_1004601CC()
{
  v1 = *(v0 + 184);
  *(v0 + 16) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v6 = v14[23];
  v2 = v14[21];
  v8 = [v6 messageRepository];
  _objc_release(v6);

  sub_10028F43C();
  sub_10028F4A0();
  _arrayForceCast<A, B>(_:)();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = [v8 messageListItemsForObjectIDs:isa];
  _objc_release(isa);
  _objc_release(v8);
  sub_10025C9B0(&qword_1006D7500);
  v14[9] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10025C9B0(&unk_1006DCA10);
  v11 = sub_10025C9B0(&unk_1006D7220);
  v3 = sub_10028F554();
  result = sub_10025E9D8(sub_10028F504, 0, v10, v11, &type metadata for Never, v3, &protocol witness table for Never, v12);
  v13 = result;
  if (!v2)
  {
    sub_100264880();
    _objc_release(v9);

    v5 = *(v14[2] + 8);

    return v5(v13);
  }

  return result;
}

uint64_t sub_100460540(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_100260618;

  return sub_10045F520(a1, a2);
}

uint64_t sub_10046060C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_100287C54;

  return sub_1004606E0(a1, a2, a3);
}

uint64_t sub_1004606E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[32] = a2;
  v4[31] = a1;
  v4[22] = v4;
  v4[18] = 0;
  v4[19] = 0;
  v4[23] = 0;
  v4[24] = 0;
  v4[25] = 0;
  v4[26] = 0;
  v4[27] = 0;
  v4[18] = a1;
  v4[19] = a2;
  v4[23] = a3;
  v4[24] = v3;
  return _swift_task_switch(sub_100460760, 0);
}

uint64_t sub_100460760()
{
  *(v0 + 176) = v0;

  sub_1003847C8();
  FixedWidthInteger.init(_:)();
  v8 = *(v0 + 160);
  if (*(v0 + 168))
  {
    v3 = *(v7[22] + 8);

    return v3(0);
  }

  else
  {
    v7[25] = v8;
    v6 = [objc_opt_self() predicateForMessagesInConversation:v8];
    v7[34] = v6;
    v7[26] = v6;
    sub_10025C9B0(&qword_1006DCA38);
    v5 = sub_100461A18();
    _objc_retain(v6);
    sub_100461A7C();
    _allocateUninitializedArray<A>(_:)();
    v1 = sub_100461470(v5, v6);
    v7[35] = v1;
    v7[27] = v1;
    type metadata accessor for MainActor();
    v7[36] = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10046099C, v2);
  }
}

uint64_t sub_10046099C()
{
  v1 = v0[33];
  v0[22] = v0;
  v0[37] = [v1 daemonInterface];

  return _swift_task_switch(sub_100460A38, 0);
}

uint64_t sub_100460A38()
{
  v1 = *(v0 + 296);
  *(v0 + 176) = v0;
  if (!v1)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = *(v7 + 296);
  v5 = *(v7 + 280);
  v6 = [v3 messageRepository];
  *(v7 + 304) = v6;
  _objc_release(v3);
  *(v7 + 16) = *(v7 + 176);
  *(v7 + 56) = v7 + 224;
  *(v7 + 24) = sub_100460C94;
  v4 = swift_continuation_init();
  *(v7 + 136) = sub_10025C9B0(&qword_1006DCA50);
  *(v7 + 112) = v4;
  *(v7 + 80) = _NSConcreteStackBlock;
  *(v7 + 88) = 1107296256;
  *(v7 + 92) = 0;
  *(v7 + 96) = sub_1004614CC;
  *(v7 + 104) = &unk_100661AD0;
  [v6 performQuery:v5 limit:1 completionHandler:?];

  return _swift_continuation_await(v7 + 16);
}

uint64_t sub_100460C94()
{
  v4 = *v0;
  v4[22] = *v0;
  v1 = v4[6];
  v4[39] = v1;
  if (v1)
  {
    v2 = sub_100460FE8;
  }

  else
  {
    v2 = sub_100460DEC;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_100460DEC()
{
  v0[22] = v0;
  v0[29] = v0[28];
  sub_10025C9B0(&qword_1006DCA58);
  sub_100461B20();
  Collection.first.getter();
  v6 = v0[30];

  _objc_release(*(v5 + 304));
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v3 = *(v5 + 272);
  _objc_release(*(v5 + 280));
  _objc_release(v3);
  v1 = *(*(v5 + 176) + 8);

  return v1(v4);
}

uint64_t sub_100460FE8()
{
  v3 = *(v0 + 304);
  *(v0 + 176) = v0;
  swift_willThrow();
  _objc_release(v3);

  v4 = *(v0 + 272);
  _objc_release(*(v0 + 280));
  _objc_release(v4);
  v1 = *(*(v0 + 176) + 8);

  return v1(0);
}

uint64_t sub_100461134(void *a1)
{
  _objc_retain(a1);
  v5 = [a1 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(a1);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v5);
  if (!v7)
  {
    return 0;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    return v4;
  }

  _objc_release(v7);
  return 0;
}

id sub_100461304(void *a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48))();
  if (!v9)
  {
    goto LABEL_7;
  }

  _objc_retain(v9);
  v3 = [v9 undoManager];
  v7 = v3;
  if (!v3)
  {
    _objc_release(v9);
    _objc_release(v9);
LABEL_7:
    _objc_retain(a1);
    v5 = [a1 undoManager];
    _objc_release(a1);
    return v5;
  }

  _objc_release(v9);
  _objc_release(v9);
  return v7;
}

void sub_1004614CC(uint64_t a1, void *a2, void *a3)
{
  sub_10025C9B0(&qword_1006DCA68);
  _objc_retain(a2);
  _objc_retain(a3);
  v8 = *sub_10027EC3C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    swift_errorRetain();
    v4 = sub_10025C9B0(&qword_1006DCA58);
    sub_100461614(v8, a3, v4);
  }

  else
  {
    _objc_retain(a2);
    sub_100461A18();
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = sub_10025C9B0(&qword_1006DCA58);
    sub_100461678(v8, &v9, v3);
    _objc_release(a2);
  }

  _objc_release(a3);
  _objc_release(a2);
}

uint64_t sub_100461614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = sub_10025C9B0(&unk_1006DCA70);
  return sub_100461988(v7, a1, a3, v3);
}

uint64_t sub_1004616D4(id *a1)
{
  v3 = *a1;
  _objc_retain(*a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    _objc_release(v4);
    v2 = 1;
  }

  else
  {
    _objc_release(v3);
    v2 = 0;
  }

  return v2 & 1;
}

id sub_10046177C(uint64_t a1, void *a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100461A7C();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = [v4 initWithTargetClass:ObjCClassFromMetadata predicate:a2 sortDescriptors:?];
  _objc_release(isa);

  _objc_release(a2);
  return v7;
}

uint64_t sub_100461818()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_10025C9B0(&qword_1006DC9F0);
  v1 = sub_100461880();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_100461880()
{
  v2 = qword_1006DC9F8;
  if (!qword_1006DC9F8)
  {
    sub_10025CAA4(&qword_1006DC9F0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DC9F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100461988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v4, a1);
  return swift_continuation_throwingResumeWithError();
}

unint64_t sub_100461A18()
{
  v2 = qword_1006DCA40;
  if (!qword_1006DCA40)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCA40);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100461A7C()
{
  v2 = qword_1006DCA48;
  if (!qword_1006DCA48)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCA48);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_100461B20()
{
  v2 = qword_1006DCA60;
  if (!qword_1006DCA60)
  {
    sub_10025CAA4(&qword_1006DCA58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100461BDC(uint64_t a1, char a2)
{
  v2 = *sub_10027EC3C((a1 + 32), *(a1 + 56));
  v5 = a2;
  return sub_100461BA8(v2, &v5, &type metadata for Bool);
}

uint64_t sub_100461C24@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Undo an email message that has just been sent";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNDO_SEND_DESCRIPTION", 0x15uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 45;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_100461F64@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Undo an email message that has just been sent";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Undo Send Message", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 45;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_100462148(uint64_t a1, uint64_t a2)
{
  v2[25] = a2;
  v2[18] = v2;
  v2[19] = 0;
  v3 = type metadata accessor for Logger();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  sub_10025C9B0(&unk_1006D7080);
  v2[29] = swift_task_alloc();
  v2[19] = a2;
  type metadata accessor for MainActor();
  v2[30] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[31] = v7;
  v2[32] = v4;

  return _swift_task_switch(sub_1004622BC, v7);
}

uint64_t sub_1004622BC()
{
  *(v0 + 144) = v0;
  v7 = sub_1002813B0();
  sub_10035277C();
  *(v0 + 264) = 0;
  _objc_release(v7);
  v4 = sub_1002813B0();
  v5 = [v4 daemonInterface];
  _objc_release(v4);
  if (!v5)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v3 = [v5 outgoingMessageRepository];
  *(v6 + 272) = v3;
  _objc_release(v5);
  *(v6 + 16) = *(v6 + 144);
  *(v6 + 56) = v6 + 280;
  *(v6 + 24) = sub_1004625F4;
  v2 = swift_continuation_init();
  *(v6 + 136) = sub_10025C9B0(&qword_1006DC2D0);
  *(v6 + 112) = v2;
  *(v6 + 80) = _NSConcreteStackBlock;
  *(v6 + 88) = 1107296256;
  *(v6 + 92) = 0;
  *(v6 + 96) = sub_100461BDC;
  *(v6 + 104) = &unk_100661AF8;
  [v3 cancelLastDelayedMessage:?];

  return _swift_continuation_await(v6 + 16);
}

uint64_t sub_1004625F4()
{
  v3 = *v0;
  *(*v0 + 144) = *v0;
  v1 = *(v3 + 248);

  return _swift_task_switch(sub_10046270C, v1);
}

uint64_t sub_10046270C()
{
  v1 = *(v0 + 272);
  *(v0 + 144) = v0;
  v24 = *(v0 + 280);
  _objc_release(v1);
  if (v24)
  {
    v22 = *(v23 + 232);
    *(v23 + 192) = *(v23 + 200);
    v2 = type metadata accessor for IntentDialog();
    (*(*(v2 - 8) + 56))(v22, 1);
    type metadata accessor for AppIntentError();
    sub_1004631D0();
    swift_allocError();
    sub_100463250();
    ForegroundContinuableIntent.needsToContinueInForegroundError(_:requestConfirmation:continuation:)();
    sub_1004632CC(v22);
    swift_willThrow();
  }

  else
  {
    v3 = *(v23 + 224);
    v18 = *(v23 + 208);
    v17 = *(v23 + 216);
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v17 + 16))(v3, v4, v18);
    v20 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v20, v19))
    {
      v5 = *(v23 + 264);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v14 = sub_1002641E8(0);
      v15 = sub_1002641E8(0);
      *(v23 + 160) = buf;
      *(v23 + 168) = v14;
      *(v23 + 176) = v15;
      sub_10026423C(0, (v23 + 160));
      sub_10026423C(0, (v23 + 160));
      *(v23 + 184) = v21;
      v16 = swift_task_alloc();
      v16[2] = v23 + 160;
      v16[3] = v23 + 168;
      v16[4] = v23 + 176;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v5)
      {
      }

      _os_log_impl(&_mh_execute_header, v20, v19, "#SiriMail UndoSendMessageIntent - It's too late to undo the last email, throwing undoSendFailed", buf, 2u);
      sub_10026429C(v14);
      sub_10026429C(v15);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v10 = *(v23 + 224);
    v11 = *(v23 + 208);
    v9 = *(v23 + 216);
    _objc_release(v20);
    (*(v9 + 8))(v10, v11);
    v12 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v12 - 8) + 104))(v7, enum case for ToolboxErrors.undoSendFailed(_:));
    swift_willThrow();
  }

  v8 = *(*(v23 + 144) + 8);

  return v8();
}

uint64_t sub_100462C9C()
{
  *(v0 + 16) = v0;
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100462D3C, v1);
}

uint64_t sub_100462D3C()
{
  *(v0 + 16) = v0;

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

uint64_t sub_100462DF8(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_100462148(a1, v6);
}

uint64_t sub_100462EE8()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0420;
  sub_10002094C(v7, qword_1006F0420);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_100463028();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_100463028()
{
  if (!sub_10047E218(26, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailUndoSend", 0xCuLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_100463100()
{
  if (qword_1006D6128 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0420);
}

uint64_t sub_10046316C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100463100();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

unint64_t sub_1004631D0()
{
  v2 = qword_1006DCA80;
  if (!qword_1006DCA80)
  {
    type metadata accessor for AppIntentError();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100463250()
{
  v2 = qword_1006DCA88;
  if (!qword_1006DCA88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1004632CC(uint64_t a1)
{
  v3 = type metadata accessor for IntentDialog();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_10046338C()
{
  v2 = qword_1006DCA98;
  if (!qword_1006DCA98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100463420()
{
  v2 = qword_1006DCAA0;
  if (!qword_1006DCAA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCAA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100463544(uint64_t a1)
{
  result = sub_10032CD54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100463588()
{
  v2 = qword_1006DCAA8;
  if (!qword_1006DCAA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCAA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100463694()
{
  v17 = "Email messages to unsubscribe from";
  v42 = &v52;
  v52 = 0;
  v53 = 0;
  v28 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v5 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v40 = &v5 - v5;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v6 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v5 - v6;
  v7 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v5 - v6);
  v38 = &v5 - v7;
  v8 = (*(*(sub_10025C9B0(&qword_1006D6280) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v36 = &v5 - v8;
  v9 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v23 = &v5 - v9;
  v10 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v22 = &v5 - v10;
  v11 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v28);
  v20 = &v5 - v11;
  v27 = type metadata accessor for LocalizedStringResource();
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v27);
  v35 = &v5 - v12;
  sub_10025C9B0(&unk_1006D7090);
  v13 = v51;
  memset(v51, 0, sizeof(v51));
  sub_10000B074();
  sub_1003DC7F0();
  v44 = AppDependency.__allocating_init(key:manager:)();

  v52 = v44;
  sub_10025C9B0(&unk_1006D70A0);
  v29 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message", 7uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v15 = "AppIntents";
  v16 = 10;
  v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v48 = v17;
  v18 = 34;
  v49 = 34;
  v19 = 2;
  v50 = 2;
  v26 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSUBSCRIBE_MESSAGE_ENTITY_DESCRIPTION", 0x26uLL, v29 & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v15, v16, v29 & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v45[1] = v17;
  v45[2] = v18;
  v46 = v19;
  v47 = v26 & 1 & v29;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v24 + 56))(v36, v26, v29, v27);
  v37 = v45;
  v45[0] = 0;
  v30 = type metadata accessor for IntentDialog();
  v3 = *(v30 - 8);
  v32 = *(v3 + 56);
  v31 = v3 + 56;
  v32(v38, v29);
  (v32)(v39, v29, v29, v30);
  v34 = sub_10025C9B0(&unk_1006D6FF0);
  v33 = sub_10027D124();
  v41 = sub_10027EAAC();
  sub_1003BD8F8(v40);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v53 = v43;
  sub_10027EB24();
  return v44;
}

uint64_t sub_100463DA8()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mail", 4uLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1006F0438 = v1;
  return result;
}

__int128 *sub_100463DEC()
{
  if (qword_1006D6130 != -1)
  {
    swift_once();
  }

  return &xmmword_1006F0438;
}

uint64_t sub_100463E4C()
{
  v1 = *sub_100463DEC();

  return v1;
}

uint64_t sub_100463E88()
{
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MailUnsubscribe", 0xFuLL, 1);
  result = v1._countAndFlagsBits;
  xmmword_1006F0448 = v1;
  return result;
}

__int128 *sub_100463ECC()
{
  if (qword_1006D6138 != -1)
  {
    swift_once();
  }

  return &xmmword_1006F0448;
}

uint64_t sub_100463F2C()
{
  v1 = *sub_100463ECC();

  return v1;
}

uint64_t sub_100463F68@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v9 = "Unsubscribe from one or more email messages";
  v1 = sub_10025C9B0(&qword_1006D6280);
  v4 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v17 = &v4 - v4;
  v19 = 0;
  v5 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v13 = &v4 - v5;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v12 = &v4 - v6;
  v7 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v10 = &v4 - v7;
  v16 = type metadata accessor for LocalizedStringResource();
  v14 = *(v16 - 8);
  v15 = v16 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v18 = &v4 - v8;
  v20 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UNSUBSCRIBE_MESSAGE_DESCRIPTION", 0x1FuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v11 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v20 & 1);
  sub_100015CC0();
  sub_10025D410(v13);
  v23 = v9;
  v24 = 43;
  v25 = 2;
  v21 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, v20, v20, v16);
  sub_10027F040();
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v2 = type metadata accessor for IntentDescription();
  return (*(*(v2 - 8) + 56))(v22, v21, v20);
}

uint64_t sub_1004642A8@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Unsubscribe from one or more email messages";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsubscribe Message", 0x13uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 43;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10046448C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006DCAB8);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&unk_1006DCAC0);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v9 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v16 = &v7 - v10;
  v11 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v10);
  v20 = &v7 - v11;
  v25 = sub_100335D14();
  v12 = 12;
  v24 = &unk_100661CD8;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsubscribe ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&unk_1006DCAD0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, v22 & 1);
  v15 = v5._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v21, v16, v19);
  (*(v17 + 8))(v20, v19);
  ParameterSummaryString.init(stringInterpolation:)();
  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v22 & 1)._countAndFlagsBits;
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1004647B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[190] = a3;
  v3[189] = a2;
  v3[188] = a1;
  v3[174] = v3;
  v3[150] = 0;
  v3[151] = 0;
  v3[175] = 0;
  v3[156] = 0;
  v3[157] = 0;
  v3[162] = 0;
  v3[163] = 0;
  v3[179] = 0;
  v4 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v3[191] = v4;
  v3[192] = *(v4 - 8);
  v3[193] = swift_task_alloc();
  v3[194] = swift_task_alloc();
  v3[195] = swift_task_alloc();
  v5 = type metadata accessor for IntentDialog();
  v3[196] = v5;
  v3[197] = *(v5 - 8);
  v3[198] = swift_task_alloc();
  v6 = sub_10025C9B0(&qword_1006D6FD8);
  v3[199] = v6;
  v3[200] = *(v6 - 8);
  v3[201] = swift_task_alloc();
  type metadata accessor for LocalizedStringResource.BundleDescription();
  v3[202] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[203] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v3[204] = swift_task_alloc();
  v7 = type metadata accessor for LocalizedStringResource();
  v3[205] = v7;
  v3[206] = *(v7 - 8);
  v3[207] = swift_task_alloc();
  v3[208] = swift_task_alloc();
  v8 = type metadata accessor for ConfirmationActionName();
  v3[209] = v8;
  v3[210] = *(v8 - 8);
  v3[211] = swift_task_alloc();
  sub_10025C9B0(&qword_1006DCAE0);
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  v3[214] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v3[215] = v9;
  v3[216] = *(v9 - 8);
  v3[217] = swift_task_alloc();
  v3[218] = swift_task_alloc();
  v3[219] = swift_task_alloc();
  v3[150] = a2;
  v3[151] = a3;
  type metadata accessor for MainActor();
  v3[220] = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[221] = v14;
  v3[222] = v10;

  return _swift_task_switch(sub_100464CB8, v14);
}

uint64_t sub_100464CB8()
{
  *(v0 + 1392) = v0;
  v8 = sub_10027A534();
  sub_10035277C();
  v3 = v7[190];
  v4 = v7[189];
  _objc_release(v8);
  v7[152] = v4;
  v7[153] = v3;
  v6 = sub_10027A6E8();
  v7[223] = v6;
  v5 = sub_10027A534();
  v7[224] = v5;
  v1 = swift_task_alloc();
  v7[225] = v1;
  v7[226] = sub_100467CB4();
  *v1 = v7[174];
  v1[1] = sub_100464FBC;

  return sub_10045F520(v6, v5);
}

uint64_t sub_100464FBC(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[174] = *v2;
  v7[227] = a1;
  v7[228] = v1;

  if (v1)
  {
    v3 = *(v6 + 1752);
    v4 = sub_100467890;
  }

  else
  {

    v3 = *(v6 + 1752);
    v4 = sub_100465160;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_100465160()
{
  v0[174] = v0;
  v74 = sub_100467D30();
  v0[229] = v74;

  v0[175] = v74;
  v0[176] = v74;
  sub_10025C9B0(&unk_1006DCAF0);
  sub_1002BC750();
  if (Collection.isEmpty.getter())
  {
    v1 = *(v73 + 1752);
    v69 = *(v73 + 1720);
    v68 = *(v73 + 1728);
    v2 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v68 + 16))(v1, v2, v69);
    oslog = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v72 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v70))
    {
      v3 = *(v73 + 1824);
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v65 = sub_1002641E8(0);
      v66 = sub_1002641E8(0);
      *(v73 + 1472) = buf;
      *(v73 + 1480) = v65;
      *(v73 + 1488) = v66;
      sub_10026423C(0, (v73 + 1472));
      sub_10026423C(0, (v73 + 1472));
      *(v73 + 1496) = v72;
      v67 = swift_task_alloc();
      v67[2] = v73 + 1472;
      v67[3] = v73 + 1480;
      v67[4] = v73 + 1488;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      if (v3)
      {
      }

      _os_log_impl(&_mh_execute_header, oslog, v70, "#SiriMail Emails are not unsubscribable, throwing cannotUnsubscribe", buf, 2u);
      sub_10026429C(v65);
      sub_10026429C(v66);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v61 = *(v73 + 1752);
    v62 = *(v73 + 1720);
    v60 = *(v73 + 1728);
    _objc_release(oslog);
    (*(v60 + 8))(v61, v62);
    v63 = type metadata accessor for ToolboxErrors();
    sub_100281ED4();
    swift_allocError();
    (*(*(v63 - 8) + 104))(v5, enum case for ToolboxErrors.cannotUnsubscribe(_:));
    swift_willThrow();

    v6 = *(*(v73 + 1392) + 8);

    return v6();
  }

  else
  {
    *(v73 + 1416) = sub_10027A6E8();
    sub_10025C9B0(&unk_1006D6FF0);
    sub_10027D784();
    Collection.first.getter();
    memcpy((v73 + 336), (v73 + 464), 0x80uLL);

    memcpy((v73 + 208), (v73 + 336), 0x80uLL);
    if (sub_10027D80C(v73 + 208) == 1)
    {
      v23 = *(v73 + 1712);
      v22 = type metadata accessor for IntentPerson();
      (*(*(v22 - 8) + 56))(v23, 1);
    }

    else
    {
      v59 = *(v73 + 1712);
      memcpy((v73 + 80), (v73 + 208), 0x80uLL);
      sub_1003807AC();
      sub_10027D9CC();
      v7 = type metadata accessor for IntentPerson();
      (*(*(v7 - 8) + 56))(v59, 0, 1);
    }

    v55 = *(v73 + 1704);
    sub_100467DDC(*(v73 + 1712), v55);
    v56 = type metadata accessor for IntentPerson();
    v57 = *(v56 - 8);
    v58 = *(v57 + 48);
    if (v58(v55, 1) == 1)
    {
      sub_100387BA8(*(v73 + 1704));
      v53 = 0;
      v54 = 0;
    }

    else
    {
      v50 = *(v73 + 1704);
      v51 = IntentPerson.displayString.getter();
      v52 = v8;
      (*(v57 + 8))(v50, v56);
      v53 = v51;
      v54 = v52;
    }

    *(v73 + 1232) = v53;
    *(v73 + 1240) = v54;
    if (*(v73 + 1240))
    {
      v75 = *(v73 + 1232);
    }

    else
    {
      v75 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v73 + 1240))
      {
        sub_100268744();
      }
    }

    v9 = *(v73 + 1712);
    v10 = *(v73 + 1696);
    v49 = v10;
    *(v73 + 1840) = v75._object;
    *(v73 + 1248) = v75;
    sub_100467DDC(v9, v10);
    if ((v58)(v49, 1, v56) == 1)
    {
      sub_100387BA8(*(v73 + 1696));
      v47 = 0;
      v48 = 0;
    }

    else
    {
      v44 = *(v73 + 1696);
      v45 = sub_100286CA8();
      v46 = v11;
      (*(v57 + 8))(v44, v56);
      v47 = v45;
      v48 = v46;
    }

    *(v73 + 1280) = v47;
    *(v73 + 1288) = v48;
    if (*(v73 + 1288))
    {
      v12 = *(v73 + 1288);
      *(v73 + 1264) = *(v73 + 1280);
      *(v73 + 1272) = v12;
    }

    else
    {
      *(v73 + 1264) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
      if (*(v73 + 1288))
      {
        sub_100268744();
      }
    }

    v39 = *(v73 + 1664);
    v38 = *(v73 + 1656);
    v40 = *(v73 + 1640);
    v36 = *(v73 + 1616);
    v43 = *(v73 + 1520);
    v42 = *(v73 + 1512);
    v37 = *(v73 + 1648);
    v13 = *(v73 + 1264);
    *(v73 + 1848) = v13;
    v14 = *(v73 + 1272);
    *(v73 + 1856) = v14;
    *(v73 + 1296) = v13;
    *(v73 + 1304) = v14;
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unsubscribe", 0xBuLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v36);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    _allocateUninitializedArray<A>(_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cancel", 6uLL, 1);
    String.LocalizationValue.init(stringLiteral:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
    sub_100015CC0();
    sub_10025D410(v36);
    LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
    _allocateUninitializedArray<A>(_:)();
    static ConfirmationActionName.custom(acceptLabel:acceptAlternatives:denyLabel:denyAlternatives:destructive:)();

    v41 = *(v37 + 8);
    v41(v38, v40);

    v41(v39, v40);
    *(v73 + 1312) = v42;
    *(v73 + 1320) = v43;
    *(v73 + 1424) = sub_10027A6E8();
    Collection.first.getter();
    memcpy((v73 + 720), (v73 + 848), 0x80uLL);

    memcpy((v73 + 592), (v73 + 720), 0x80uLL);
    if (sub_10027D80C(v73 + 592) == 1)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      v29 = *(v73 + 1616);
      v31 = *(v73 + 1584);
      v32 = *(v73 + 1568);
      v27 = *(v73 + 1560);
      v25 = *(v73 + 1552);
      v28 = *(v73 + 1544);
      v26 = *(v73 + 1528);
      v30 = *(v73 + 1576);
      v24 = *(v73 + 1536);
      memcpy((v73 + 976), (v73 + 592), 0x80uLL);
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Just to confirm, do you want to unsubscribe from further “", 0x3CuLL, 0);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);

      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v75);
      v16 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("“ messages?", 0xDuLL, 0);
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);

      (*(v24 + 16))(v25, v27, v26);
      (*(v24 + 32))(v28, v25, v26);
      (*(v24 + 8))(v27, v26);
      String.LocalizationValue.init(stringInterpolation:)();
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
      sub_100015CC0();
      sub_10025D410(v29);
      LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
      IntentDialog.init(_:)();
      sub_10027D1BC();
      static IntentResult.result<A>(value:dialog:)();
      v17 = *(v30 + 8);
      *(v73 + 1864) = v17;
      *(v73 + 1872) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v17(v31, v32);
      sub_10027D9CC();
      v34 = sub_100335D14();
      v35 = sub_10027D944();
      v33 = sub_10027D2E4();
      v18 = swift_task_alloc();
      *(v73 + 1880) = v18;
      *v18 = *(v73 + 1392);
      v18[1] = sub_1004663E0;
      v19 = *(v73 + 1688);
      v20 = *(v73 + 1608);
      v21 = *(v73 + 1592);

      return AppIntent.requestConfirmation<A>(output:confirmationActionName:showPrompt:)(v20, v19, v33 & 1, &unk_100661CD8, v21, v34, v35);
    }
  }
}

uint64_t sub_1004663E0()
{
  v6 = *v1;
  v5 = (*v1 + 16);
  *(v6 + 1392) = *v1;
  *(v6 + 1888) = v0;

  if (v0)
  {
    v2 = v5[219];
    v3 = sub_100467A60;
  }

  else
  {
    (*(v5[198] + 8))(v5[199], v5[197]);
    v2 = v5[219];
    v3 = sub_100466580;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_100466580()
{
  v39 = v0;
  v25 = v0[229];
  v1 = v0[218];
  v23 = v0[216];
  v24 = v0[215];
  v0[174] = v0;
  v2 = Logger.appIntentLogger.unsafeMutableAddressor();
  v3 = *(v23 + 16);
  v0[237] = v3;
  v0[238] = (v23 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v3(v1, v2, v24);

  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_100467F44;
  *(v27 + 24) = v26;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10026E818;
  *(v30 + 24) = v27;
  v0[239] = sub_10025C9B0(&unk_1006D7720);
  _allocateUninitializedArray<A>(_:)();
  v31 = v4;

  *v31 = sub_10026434C;
  v31[1] = v28;

  v31[2] = sub_10026434C;
  v31[3] = v29;

  v31[4] = sub_10026EBF8;
  v31[5] = v30;
  sub_1002612B0();

  if (os_log_type_enabled(v32, v33))
  {
    v5 = *(v22 + 1888);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v20 = sub_1002641E8(0);
    v21 = sub_1002641E8(0);
    v34 = buf;
    v35 = v20;
    v36 = v21;
    sub_10026423C(0, &v34);
    sub_10026423C(1, &v34);
    v37 = sub_10026434C;
    v38 = v28;
    sub_100264250(&v37, &v34, &v35, &v36);
    if (v5)
    {
    }

    v37 = sub_10026434C;
    v38 = v29;
    sub_100264250(&v37, &v34, &v35, &v36);
    v37 = sub_10026EBF8;
    v38 = v30;
    sub_100264250(&v37, &v34, &v35, &v36);
    _os_log_impl(&_mh_execute_header, v32, v33, "#SiriMail UnsubscribeMessageIntent Unsubscribing from %ld message(s)", buf, 0xCu);
    sub_10026429C(v20);
    sub_10026429C(v21);
    UnsafeMutablePointer.deallocate()();

    v18 = 0;
  }

  else
  {

    v18 = *(v22 + 1888);
  }

  *(v22 + 1920) = v18;
  v13 = *(v22 + 1832);
  v10 = *(v22 + 1744);
  v11 = *(v22 + 1720);
  v14 = *(v22 + 1520);
  v15 = *(v22 + 1512);
  v9 = *(v22 + 1728);
  _objc_release(v32);
  v7 = *(v9 + 8);
  *(v22 + 1928) = v7;
  *(v22 + 1936) = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v10, v11);
  sub_100468530();

  *(v22 + 1328) = v15;
  *(v22 + 1336) = v14;
  v12 = sub_10028E57C();
  *(v22 + 1344) = v15;
  *(v22 + 1352) = v14;
  v8 = sub_10028E5B4();
  v17 = sub_100467F4C(v13, v12, v8, 0, 0);
  *(v22 + 1944) = v17;
  *(v22 + 1432) = v17;
  _objc_retain(v17);
  sub_10027A534();
  [v17 setDelegate:?];
  swift_unknownObjectRelease();
  _objc_release(v17);
  *(v22 + 16) = *(v22 + 1392);
  *(v22 + 56) = v22 + 1376;
  *(v22 + 24) = sub_100466DD0;
  v16 = swift_continuation_init();
  *(v22 + 1160) = sub_10025C9B0(&unk_1006D7CE0);
  *(v22 + 1136) = v16;
  *(v22 + 1104) = _NSConcreteStackBlock;
  *(v22 + 1112) = 1107296256;
  *(v22 + 1116) = 0;
  *(v22 + 1120) = sub_10027D41C;
  *(v22 + 1128) = &unk_100661C48;
  [v17 performInteractionWithCompletion:?];

  return _swift_continuation_await(v22 + 16);
}

uint64_t sub_100466DD0()
{
  v3 = *v0;
  *(*v0 + 1392) = *v0;
  v1 = *(v3 + 1768);

  return _swift_task_switch(sub_100466EE8, v1);
}

uint64_t sub_100466EE8()
{
  *(v0 + 1392) = v0;
  _objc_release(*(v0 + 1376));
  v39 = [objc_opt_self() defaultCenter];
  v40 = sub_100468010();
  *(v0 + 1168) = 0;
  *(v0 + 1176) = 0;
  *(v0 + 1184) = 0;
  *(v0 + 1192) = 0;
  if (*(v0 + 1192))
  {
    v34 = *(v38 + 1192);
    v32 = sub_10027EC3C((v38 + 1168), v34);
    v33 = *(v34 - 8);
    v35 = swift_task_alloc();
    (*(v33 + 16))(v35, v32, v34);
    v36 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v33 + 8))(v35, v34);

    sub_1000160F4(v38 + 1168);
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  v28 = *(v38 + 1896);
  v25 = *(v38 + 1856);
  v23 = *(v38 + 1848);
  v1 = *(v38 + 1736);
  v27 = *(v38 + 1720);
  sub_10025C9B0(&unk_1006DB9F0);
  _allocateUninitializedArray<A>(_:)();
  v24 = v2;
  *(v38 + 1360) = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("sender", 6uLL, 1);
  _convertToAnyHashable<A>(_:)();

  v24[8] = &type metadata for String;
  v24[5] = v23;
  v24[6] = v25;
  sub_1002612B0();
  sub_100268744();
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v39 postNotificationName:v40 object:v37 userInfo:isa];
  _objc_release(isa);
  swift_unknownObjectRelease();
  _objc_release(v40);
  _objc_release(v39);
  v3 = Logger.appIntentLogger.unsafeMutableAddressor();
  v28(v1, v3, v27);
  oslog = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  v31 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(oslog, v29))
  {
    v4 = *(v38 + 1920);
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v20 = sub_1002641E8(0);
    v21 = sub_1002641E8(0);
    *(v38 + 1440) = buf;
    *(v38 + 1448) = v20;
    *(v38 + 1456) = v21;
    sub_10026423C(0, (v38 + 1440));
    sub_10026423C(0, (v38 + 1440));
    *(v38 + 1464) = v31;
    v22 = swift_task_alloc();
    v22[2] = v38 + 1440;
    v22[3] = v38 + 1448;
    v22[4] = v38 + 1456;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    if (v4)
    {
    }

    _os_log_impl(&_mh_execute_header, oslog, v29, "#SiriMail UnsubscribeMessageIntent Unsubscribed successfully!", buf, 2u);
    sub_10026429C(v20);
    sub_10026429C(v21);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v11 = *(v38 + 1944);
  v8 = *(v38 + 1928);
  v10 = *(v38 + 1864);
  v14 = *(v38 + 1736);
  v7 = *(v38 + 1720);
  v15 = *(v38 + 1712);
  v16 = *(v38 + 1688);
  v13 = *(v38 + 1672);
  v17 = *(v38 + 1616);
  v18 = *(v38 + 1584);
  v9 = *(v38 + 1568);
  v12 = *(v38 + 1680);
  _objc_release(oslog);
  v8(v14, v7);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("OK, I've unsubscribed you.", 0x1AuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, 1);
  sub_100015CC0();
  sub_10025D410(v17);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  IntentDialog.init(_:)();
  static IntentResult.result<>(dialog:)();
  v10(v18, v9);
  _objc_release(v11);
  (*(v12 + 8))(v16, v13);

  sub_100387BA8(v15);

  v6 = *(*(v38 + 1392) + 8);

  return v6();
}

uint64_t sub_100467890()
{
  v1 = *(v0 + 1792);
  *(v0 + 1392) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 1392) + 8);

  return v2();
}

uint64_t sub_100467A60()
{
  v9 = v0[214];
  v7 = v0[211];
  v6 = v0[210];
  v8 = v0[209];
  v1 = v0[201];
  v2 = v0[200];
  v3 = v0[199];
  v0[174] = v0;
  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v7, v8);

  sub_100387BA8(v9);

  v4 = *(v0[174] + 8);

  return v4();
}

unint64_t sub_100467CB4()
{
  v2 = qword_1006DCAE8;
  if (!qword_1006DCAE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCAE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_100467D30()
{

  sub_10025C9B0(&unk_1006DCAF0);
  sub_1004685D4();
  return _ArrayProtocol.filter(_:)();
}

void *sub_100467DDC(const void *a1, void *a2)
{
  v6 = type metadata accessor for IntentPerson();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006DCAE0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id sub_100467F4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_10025C9B0(&unk_1006D7220);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = [swift_getObjCClassFromMetadata() interactionWithReferenceMessageListItemsAndConfirmation:isa origin:a2 actor:a3 shouldAskForConfirmation:a4 & 1 icloudMailCleanupService:a5];
  _objc_release(a5);
  _objc_release(isa);

  return v11;
}

NSString sub_100468010()
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntentUnsubscribed", 0x15uLL, 1);

  v1 = String._bridgeToObjectiveC()();
  _objc_retain(v1);

  _objc_release(v1);
  return v1;
}

uint64_t sub_1004680E0(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1004647B0(a1, v6, v7);
}

uint64_t sub_1004681AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100463694();
  *a1 = result;
  a1[1] = v2;
  return result;
}

UIViewController __swiftcall MailAppController.presentingViewController(for:)(MFTriageInteraction *a1)
{
  _objc_retain(v1);
  v5 = [v1 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v1);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v5);
  if (!v6)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClassUnconditional();
  v4 = [v3 dockContainer];
  _objc_release(v3);
  return v4;
}

BOOL sub_1004684C0(id *a1)
{
  v2 = *a1;
  swift_getObjectType();
  swift_unknownObjectRetain();
  v3 = [v2 unsubscribeType];
  swift_unknownObjectRelease();
  return (v3 & 5) == 0;
}

unint64_t sub_100468530()
{
  v2 = qword_1006DCB00;
  if (!qword_1006DCB00)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCB00);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1004685D4()
{
  v2 = qword_1006DCB08;
  if (!qword_1006DCB08)
  {
    sub_10025CAA4(&unk_1006DCAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_100468670()
{
  v2 = qword_1006DCB70;
  if (!qword_1006DCB70)
  {
    sub_10025CAA4(&qword_1006DCB78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004686F8(uint64_t a1)
{
  result = sub_100335D14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10046873C()
{
  v2 = qword_1006DCB90;
  if (!qword_1006DCB90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1004687D0()
{
  v2 = qword_1006DCB98;
  if (!qword_1006DCB98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCB98);
    return WitnessTable;
  }

  return v2;
}

void *sub_1004688B8@<X0>(void *a1@<X8>)
{
  v66 = a1;
  v63 = __b;
  v65 = 72;
  memset(__b, 0, sizeof(__b));
  v40 = sub_10025C9B0(&unk_1006D7380);
  v13 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v40);
  v41 = &v12 - v13;
  v1 = sub_10025C9B0(&unk_1006D8270);
  v14 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v39 = &v12 - v14;
  v50 = 0;
  v30 = type metadata accessor for IntentPerson.ParameterMode();
  v24 = *(v30 - 8);
  v25 = v30 - 8;
  v15 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v50);
  v36 = &v12 - v15;
  v2 = type metadata accessor for InputConnectionBehavior();
  v16 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v62 = &v12 - v16;
  v3 = sub_10025C9B0(&unk_1006D7080);
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v45 = &v12 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v12 - v17);
  v61 = &v12 - v18;
  v5 = sub_10025C9B0(&qword_1006D6280);
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v58 = &v12 - v19;
  sub_10025C9B0(&unk_1006D7090);
  v20 = v75;
  memset(v75, 0, sizeof(v75));
  sub_10000B074();
  sub_1003DC7F0();
  __b[0] = AppDependency.__allocating_init(key:manager:)();
  sub_10025C9B0(&unk_1006DCC10);
  v47 = type metadata accessor for LocalizedStringResource();
  v6 = *(v47 - 8);
  v49 = *(v6 + 56);
  v48 = v6 + 56;
  v53 = 1;
  v49(v58, 1);
  memset(__src, 0, sizeof(__src));
  v22 = v74;
  memcpy(v74, __src, v65);
  v54 = type metadata accessor for IntentDialog();
  v7 = *(v54 - 8);
  v56 = *(v7 + 56);
  v55 = v7 + 56;
  v56(v61, v53);
  (v56)(v45, v53, v53, v54);
  v21 = sub_10028D658();
  v23 = sub_1002B9D60();
  sub_1003BD8F8(v62);
  __b[1] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v28 = sub_10025C9B0(&unk_1006DCC20);
  (v49)(v58, v53, v53, v47);
  v26 = &v73;
  v73 = 0;
  v29 = &enum case for IntentPerson.ParameterMode.email(_:);
  v32 = *(v24 + 104);
  v31 = v24 + 104;
  v32(v36, enum case for IntentPerson.ParameterMode.email(_:), v30);
  (v56)(v61, v53, v53, v54);
  v33 = sub_10025C9B0(&qword_1006D9640);
  v34 = sub_100342530();
  sub_1003BD8F8(v62);
  __b[2] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v49)(v58, v53, v53, v47);
  v27 = &v72;
  v72 = 0;
  v32(v36, *v29, v30);
  (v56)(v61, v53, v53, v54);
  sub_1003BD8F8(v62);
  __b[3] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  (v49)(v58, v53, v53, v47);
  v35 = &v71;
  v71 = 0;
  v32(v36, *v29, v30);
  (v56)(v61, v53, v53, v54);
  sub_1003BD8F8(v62);
  __b[4] = IntentParameter<>.init(description:default:mode:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7430);
  (v49)(v58, v53, v53, v47);
  v38 = v70;
  v70[0] = 0;
  v70[1] = 0;
  v8 = type metadata accessor for String.IntentInputOptions();
  (*(*(v8 - 8) + 56))(v39, v53);
  (v56)(v61, v53, v53, v54);
  v37 = sub_10025C9B0(&unk_1006D7340);
  sub_10028DF54();
  sub_1003BD8F8(v62);
  __b[5] = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D7450);
  (v49)(v58, v53, v53, v47);
  v9 = type metadata accessor for AttributedString();
  (*(*(v9 - 8) + 56))(v41, v53);
  (v56)(v61, v53, v53, v54);
  sub_10028E064();
  sub_1003BD8F8(v62);
  __b[6] = IntentParameter<>.init(description:default:requestValueDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&unk_1006D82A0);
  (v49)(v58, v53, v53, v47);
  v44 = v69;
  memset(v69, 0, sizeof(v69));
  (v56)(v61, v53, v53, v54);
  (v56)(v45, v53, v53, v54);
  v43 = sub_10025C9B0(&unk_1006D7470);
  v42 = sub_10028E17C();
  v46 = sub_100264788();
  sub_1003BD8F8(v62);
  __b[7] = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10025C9B0(&qword_1006DCC38);
  (v49)(v58, v53, v53, v47);
  v59 = &v68;
  v68 = 0;
  v52 = type metadata accessor for UTType();
  v51 = _allocateUninitializedArray<A>(_:)();
  static UTType.item.getter();
  v10 = v51;
  sub_1002612B0();
  v60 = v10;
  (v56)(v61, v53, v53, v54);
  v57 = sub_10025C9B0(&qword_1006DCC40);
  sub_1003425C8();
  sub_1003BD8F8(v62);
  __b[8] = IntentParameter<>.init(description:default:supportedContentTypes:requestValueDialog:inputConnectionBehavior:)();
  v64 = __dst;
  memcpy(__dst, v63, v65);
  sub_1002E1A40(v64, v67);
  sub_1002E4218();
  return memcpy(v66, v64, v65);
}

uint64_t sub_100469360()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1004693C8()
{

  IntentParameter.wrappedValue.setter();
}

void *sub_100469450@<X0>(void *a1@<X8>)
{
  v5 = v1;

  IntentParameter.wrappedValue.getter();
  memcpy(__dst, v4, sizeof(__dst));

  return memcpy(a1, __dst, 0x48uLL);
}

void *sub_1004694D4(void *a1)
{
  v7 = a1;
  v6 = v1;

  sub_1002CD078(a1, v5);
  memcpy(__dst, a1, sizeof(__dst));
  IntentParameter.wrappedValue.setter();

  result = a1;
  sub_10028D6D0();
  return result;
}

uint64_t sub_10046955C()
{

  IntentParameter.wrappedValue.getter();
}

uint64_t sub_1004695B0(const void *a1)
{
  v6 = a1;
  v8 = 0;
  v7 = 0;
  v3 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v8 = __chkstk_darwin(v6);
  v7 = v1;
  v5 = *(v1 + 48);

  sub_100289B6C(v6, v4);
  IntentParameter.wrappedValue.setter();

  return sub_100285F68(v6);
}

uint64_t sub_100469688()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1004696E4()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100469758()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1004697B4()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_100469828()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

void *sub_10046989C(void *a1)
{

  sub_1002882C8(a1);
  IntentParameter.wrappedValue.setter();

  return sub_100289E1C(a1);
}

uint64_t sub_100469948()
{
  v2 = [objc_opt_self() sharedApplication];
  v1 = [v2 connectedScenes];
  sub_1002883E4();
  sub_100288448();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(v2);
  sub_10025C9B0(&unk_1006D72F0);
  sub_1002884C8();
  Sequence.first(where:)();
  sub_100264880();
  _objc_release(v1);
  return v3;
}

void (*sub_100469A98(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *(v1 + 8);

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_100469B30(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v2[81] = v2;
  v2[82] = 0;
  v2[83] = 0;
  v2[88] = 0;
  v3 = sub_10025C9B0(&qword_1006D7C40);
  v2[95] = v3;
  v2[96] = *(v3 - 8);
  v2[97] = swift_task_alloc();
  v2[98] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[99] = v4;
  v2[100] = *(v4 - 8);
  v2[101] = swift_task_alloc();
  v2[102] = swift_task_alloc();
  v2[82] = v1;
  type metadata accessor for MainActor();
  v2[103] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[104] = v7;
  v2[105] = v5;

  return _swift_task_switch(sub_100469D14, v7);
}

uint64_t sub_100469D14()
{
  *(v0 + 648) = v0;
  v53 = sub_100289454();
  sub_10035277C();
  _objc_release(v53);
  v1 = swift_allocObject();
  *(v52 + 848) = v1;
  *(v52 + 664) = v1 + 2;
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v50 = sub_100289454();
  v2 = sub_10035333C();
  v51 = v2;
  *(v52 + 856) = v2;
  if (!v2)
  {
    v12 = *(v52 + 808);
    v27 = *(v52 + 792);
    v26 = *(v52 + 800);
    _objc_release(v50);
    v13 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v26 + 16))(v12, v13, v27);
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v30 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v28))
    {
      v22 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v23 = sub_1002641E8(0);
      v24 = sub_1002641E8(0);
      *(v52 + 672) = v22;
      *(v52 + 680) = v23;
      *(v52 + 688) = v24;
      sub_10026423C(0, (v52 + 672));
      sub_10026423C(0, (v52 + 672));
      *(v52 + 696) = v30;
      v25 = swift_task_alloc();
      v25[2] = v52 + 672;
      v25[3] = v52 + 680;
      v25[4] = v52 + 688;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v28, "#SiriMail UpdateDraftIntent - no compose sheet onscreen, launching draft message", v22, 2u);
      sub_10026429C(v23);
      sub_10026429C(v24);
      UnsafeMutablePointer.deallocate()();
    }

    v17 = *(v52 + 808);
    v18 = *(v52 + 792);
    v16 = *(v52 + 800);
    _objc_release(oslog);
    (*(v16 + 8))(v17, v18);
    v19 = sub_100288E04();
    sub_1003DC448();
    v20 = nullsub_13(v19);
    v21 = v14;
    *(v52 + 896) = v20;
    *(v52 + 904) = v14;
    v15 = swift_task_alloc();
    v7 = v20;
    v8 = v21;
    *(v52 + 912) = v15;
    *v15 = *(v52 + 648);
    v15[1] = sub_10046AFE8;
    v9 = *(v52 + 776);

    return sub_1003DABB0(v9, v7, v8);
  }

  *(v52 + 704) = v2;
  _objc_release(v50);
  sub_100469450((v52 + 88));
  v47 = *(v52 + 88);
  v48 = *(v52 + 96);

  sub_10028D6D0();
  v49 = sub_10047E92C(v47, v48);

  if ((v49 & 1) == 0)
  {
    v3 = *(v52 + 816);
    v43 = *(v52 + 792);
    v42 = *(v52 + 800);
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v42 + 16))(v3, v4, v43);
    v45 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v46 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v45, v44))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v39 = sub_1002641E8(0);
      v40 = sub_1002641E8(0);
      *(v52 + 712) = buf;
      *(v52 + 720) = v39;
      *(v52 + 728) = v40;
      sub_10026423C(0, (v52 + 712));
      sub_10026423C(0, (v52 + 712));
      *(v52 + 736) = v46;
      v41 = swift_task_alloc();
      v41[2] = v52 + 712;
      v41[3] = v52 + 720;
      v41[4] = v52 + 728;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v45, v44, "#SiriMail UpdateDraftIntent - compose sheet onscreen but not the target one, launching draft message", buf, 2u);
      sub_10026429C(v39);
      sub_10026429C(v40);
      UnsafeMutablePointer.deallocate()();
    }

    v33 = *(v52 + 816);
    v34 = *(v52 + 792);
    v32 = *(v52 + 800);
    _objc_release(v45);
    (*(v32 + 8))(v33, v34);
    v35 = sub_100288E04();
    sub_1003DC448();
    v36 = nullsub_13(v35);
    v37 = v5;
    *(v52 + 864) = v36;
    *(v52 + 872) = v5;
    v6 = swift_task_alloc();
    v7 = v36;
    v8 = v37;
    *(v52 + 880) = v6;
    *v6 = *(v52 + 648);
    v6[1] = sub_10046A92C;
    v9 = *(v52 + 784);

    return sub_1003DABB0(v9, v7, v8);
  }

  v31 = [v51 composeWebView];
  if (!v31)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  [v31 becomeFirstResponder];
  _objc_release(v31);
  sub_10046BC14(v51);
  _objc_release(*(v52 + 856));
  sub_100469450((v52 + 16));
  memcpy((v52 + 232), (v52 + 16), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0();

  v11 = *(*(v52 + 648) + 8);

  return v11();
}

uint64_t sub_10046A92C()
{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 648) = *v1;
  *(v6 + 888) = v0;

  if (v0)
  {
    v2 = *(v5 + 816);
    v3 = sub_10046B674;
  }

  else
  {

    v2 = *(v5 + 816);
    v3 = sub_10046AAC4;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_10046AAC4()
{
  v1 = v0[98];
  v2 = v0[96];
  v3 = v0[95];
  v0[81] = v0;
  (*(v2 + 8))(v1, v3);
  v19 = [objc_opt_self() defaultCenter];
  v20 = MFMailComposeControllerDidLoadNotification;
  _objc_retain(MFMailComposeControllerDidLoadNotification);
  v0[71] = 0;
  v0[72] = 0;
  v0[73] = 0;
  v0[74] = 0;
  if (v0[74])
  {
    v14 = *(v18 + 592);
    v12 = sub_10027EC3C((v18 + 568), v14);
    v13 = *(v14 - 8);
    v15 = swift_task_alloc();
    (*(v13 + 16))(v15, v12, v14);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v14);

    sub_1000160F4(v18 + 568);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v8 = *(v18 + 848);
  __src = *(v18 + 752);
  v10 = [objc_opt_self() mainQueue];
  sub_1002E1A40(__src, (v18 + 304));

  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x48uLL);
  *(v7 + 88) = v8;
  *(v18 + 456) = sub_10046E178;
  *(v18 + 464) = v7;
  *(v18 + 424) = _NSConcreteStackBlock;
  *(v18 + 432) = 1107296256;
  *(v18 + 436) = 0;
  *(v18 + 440) = sub_10028C0DC;
  *(v18 + 448) = &unk_100661DD0;
  aBlock = _Block_copy((v18 + 424));

  v11 = [v19 addObserverForName:v20 object:v17 queue:v10 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v10);
  swift_unknownObjectRelease();
  _objc_release(v20);
  _objc_release(v19);
  *(v18 + 560) = swift_getObjectType();
  *(v18 + 536) = v11;
  swift_beginAccess();
  sub_10028D584((v18 + 536), v8 + 16);
  swift_endAccess();
  _objc_release(*(v18 + 856));
  sub_100469450((v18 + 16));
  memcpy((v18 + 232), (v18 + 16), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0();

  v4 = *(*(v18 + 648) + 8);

  return v4();
}

uint64_t sub_10046AFE8()
{
  v6 = *v1;
  v5 = *v1 + 16;
  *(v6 + 648) = *v1;
  *(v6 + 920) = v0;

  if (v0)
  {
    v2 = *(v5 + 816);
    v3 = sub_10046B794;
  }

  else
  {

    v2 = *(v5 + 816);
    v3 = sub_10046B180;
  }

  return _swift_task_switch(v3, v2);
}

uint64_t sub_10046B180()
{
  v1 = v0[97];
  v2 = v0[96];
  v3 = v0[95];
  v0[81] = v0;
  (*(v2 + 8))(v1, v3);
  v19 = [objc_opt_self() defaultCenter];
  v20 = MFMailComposeControllerDidLoadNotification;
  _objc_retain(MFMailComposeControllerDidLoadNotification);
  v0[63] = 0;
  v0[64] = 0;
  v0[65] = 0;
  v0[66] = 0;
  if (v0[66])
  {
    v14 = *(v18 + 528);
    v12 = sub_10027EC3C((v18 + 504), v14);
    v13 = *(v14 - 8);
    v15 = swift_task_alloc();
    (*(v13 + 16))(v15, v12, v14);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v14);

    sub_1000160F4(v18 + 504);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v8 = *(v18 + 848);
  __src = *(v18 + 752);
  v10 = [objc_opt_self() mainQueue];
  sub_1002E1A40(__src, (v18 + 160));

  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x48uLL);
  *(v7 + 88) = v8;
  *(v18 + 408) = sub_10046D0F4;
  *(v18 + 416) = v7;
  *(v18 + 376) = _NSConcreteStackBlock;
  *(v18 + 384) = 1107296256;
  *(v18 + 388) = 0;
  *(v18 + 392) = sub_10028C0DC;
  *(v18 + 400) = &unk_100661D80;
  aBlock = _Block_copy((v18 + 376));

  v11 = [v19 addObserverForName:v20 object:v17 queue:v10 usingBlock:aBlock];
  _Block_release(aBlock);
  _objc_release(v10);
  swift_unknownObjectRelease();
  _objc_release(v20);
  _objc_release(v19);
  *(v18 + 496) = swift_getObjectType();
  *(v18 + 472) = v11;
  swift_beginAccess();
  sub_10028D584((v18 + 472), v8 + 16);
  swift_endAccess();
  sub_100469450((v18 + 16));
  memcpy((v18 + 232), (v18 + 16), 0x48uLL);
  sub_10028D658();
  static IntentResult.result<A>(value:)();
  sub_10028D6D0();

  v4 = *(*(v18 + 648) + 8);

  return v4();
}

uint64_t sub_10046B674()
{
  v3 = *(v0 + 856);
  *(v0 + 648) = v0;

  _objc_release(v3);

  v1 = *(*(v0 + 648) + 8);

  return v1();
}

uint64_t sub_10046B794()
{
  *(v0 + 648) = v0;

  v1 = *(*(v0 + 648) + 8);

  return v1();
}

void sub_10046B898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v30 = 0;
  v33 = a1;
  v32 = a2;
  v21 = a3 + 16;
  v31 = a3 + 16;
  v22 = sub_100289454();
  v23 = sub_10035333C();
  if (v23)
  {
    v19 = v23;
    v17 = v23;
    v30 = v23;

    v3 = [v23 composeWebView];
    v18 = v3;
    if (v3)
    {
      v16 = v18;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v14 = v16;
    [v16 becomeFirstResponder];

    sub_10046BC14(v17);
    v15 = &v28;
    swift_beginAccess();
    sub_100015DA0(v21, v26);
    swift_endAccess();
    if (v27)
    {
      v13 = v29;
      sub_100014898(v26, v29);
      v12 = [objc_opt_self() defaultCenter];
      v10 = v24;
      sub_10026F5D4(v29, v24);
      v7 = v25;
      sub_10027EC3C(v24, v25);
      v5 = *(v7 - 8);
      v6 = v5;
      v9 = &v5;
      __chkstk_darwin(&v5);
      v8 = &v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v8);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v6 + 8))(v8, v7);
      sub_1000160F4(v10);
      [v12 removeObserver:{v11, v5}];
      swift_unknownObjectRelease();

      sub_1000160F4(v13);
    }

    else
    {
      sub_10000B0D8(v26);
    }
  }

  else
  {
  }
}

void *sub_10046BC14(void *a1)
{
  v161 = a1;
  v142 = "Fatal error";
  v143 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v144 = "MobileMail/UpdateDraftIntent.swift";
  v193 = 0;
  v192 = 0;
  v191 = 0;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  v186 = 0;
  v187 = 0;
  v185 = 0;
  v183 = 0;
  v181 = 0;
  v179 = 0;
  v176 = 0;
  v177 = 0;
  v173 = 0;
  v174 = 0;
  v171 = 0;
  v172 = 0;
  v2 = sub_10025C9B0(&qword_1006D7258);
  v145 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v146 = &v24 - v145;
  v147 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v24 - v145);
  v148 = &v24 - v147;
  v156 = 0;
  v149 = type metadata accessor for IntentFile();
  v150 = *(v149 - 8);
  v151 = v149 - 8;
  v152 = (*(v150 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v149);
  v153 = &v24 - v152;
  v193 = &v24 - v152;
  v4 = sub_10025C9B0(&unk_1006D7260);
  v154 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v4);
  v155 = &v24 - v154;
  v157 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v156);
  v158 = &v24 - v157;
  v159 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v160 = &v24 - v159;
  v168 = type metadata accessor for Locale();
  v164 = *(v168 - 8);
  v165 = v168 - 8;
  v162 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v161);
  v166 = &v24 - v162;
  v192 = v7;
  v191 = v1;
  v163 = sub_100469360();
  v169 = v8;
  sub_100015CC0();
  v167 = Optional<A>.capitalizedIfDesirable(locale:)();
  v170 = v9;
  (*(v164 + 8))(v166, v168);

  if (v170)
  {
    v140 = v167;
    v141 = v170;
    v138 = v170;
    v137 = v167;
    v171 = v167;
    v172 = v170;

    v136 = String._bridgeToObjectiveC()();

    [v161 setSubject:v136];
    _objc_release(v136);
    v139 = v194;
    sub_100469450(v194);
    sub_1002CCD44();
    sub_10028D6D0();
  }

  sub_10046955C();
  v134 = Optional<A>.htmlString.getter();
  v135 = v10;
  if (v10)
  {
    v132 = v134;
    v133 = v135;
    v129 = v135;
    v130 = v134;
    v173 = v134;
    v174 = v135;
    sub_100285F68(v160);
    v11 = [v161 mailComposeView];
    v131 = v11;
    if (v11)
    {
      v128 = v131;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v126 = v128;
    v127 = [v128 composeWebView];
    _objc_release(v126);
    if (v127)
    {
      v125 = v127;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v123 = v125;

    v122 = String._bridgeToObjectiveC()();

    [v123 setMarkupString:v122];
    _objc_release(v122);
    _objc_release(v123);
    v124 = v195;
    sub_100469450(v195);
    sub_10046955C();
    sub_1002CCE78(v158);
    sub_10028D6D0();
  }

  else
  {
    sub_100285F68(v160);
  }

  v121 = sub_100469758();
  if (v121)
  {
    v120 = v121;
    v117 = v121;
    v179 = v121;
    v178 = v121;
    v118 = sub_10025C9B0(&unk_1006D7270);
    v119 = sub_100286010();
    v12 = Collection.isEmpty.getter();
    if (v12)
    {
    }

    else
    {
      v116 = [v161 composeWebView];
      if (v116)
      {
        v115 = v116;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v114 = v115;
      [v115 removeAllAttachments];
      _objc_release(v114);

      v175 = v117;
      Collection<>.makeIterator()();
      while (1)
      {
        sub_10025C9B0(&unk_1006D7280);
        IndexingIterator.next()();
        if ((*(v150 + 48))(v155, 1, v149) == 1)
        {
          break;
        }

        (*(v150 + 32))(v153, v155, v149);
        v113 = [v161 composeWebView];
        if (v113)
        {
          v112 = v113;
        }

        else
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
        }

        v101 = v112;
        v103 = IntentFile.data.getter();
        v102 = v13;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_100288010(v103, v102);
        IntentFile.filename.getter();
        v105 = v14;
        v106 = String._bridgeToObjectiveC()();

        IntentFile.type.getter();
        v107 = type metadata accessor for UTType();
        v108 = *(v107 - 8);
        v109 = v107 - 8;
        v110 = *(v108 + 48);
        v111 = v108 + 48;
        if (v110(v148, 1) == 1)
        {
          sub_100286098(v148);
          v99 = 0;
          v100 = 0;
        }

        else
        {
          v97 = UTType.preferredMIMEType.getter();
          v98 = v15;
          (*(v108 + 8))(v148, v107);
          v99 = v97;
          v100 = v98;
        }

        v95 = v100;
        v96 = v99;
        if (v100)
        {
          v93 = v96;
          v94 = v95;
          v90 = v95;
          v91 = String._bridgeToObjectiveC()();

          v92 = v91;
        }

        else
        {
          v92 = 0;
        }

        v89 = v92;
        IntentFile.type.getter();
        if ((v110)(v146, 1, v107) == 1)
        {
          sub_100286098(v146);
          v87 = 0;
          v88 = 0;
        }

        else
        {
          v85 = UTType.identifier.getter();
          v86 = v16;
          (*(v108 + 8))(v146, v107);
          v87 = v85;
          v88 = v86;
        }

        v83 = v88;
        v84 = v87;
        if (v88)
        {
          v81 = v84;
          v82 = v83;
          v78 = v83;
          v79 = String._bridgeToObjectiveC()();

          v80 = v79;
        }

        else
        {
          v80 = 0;
        }

        v77 = v80;
        [v101 insertDocumentWithData:isa fileName:v106 mimeType:v89 contentID:?];
        _objc_release(v77);
        _objc_release(v89);
        _objc_release(v106);
        _objc_release(isa);
        _objc_release(v101);
        (*(v150 + 8))(v153, v149);
      }

      sub_100264880();
      v76 = v196;
      sub_100469450(v196);
      sub_1002CD004();
      sub_10028D6D0();
    }
  }

  v75 = sub_1002896B4();
  if (v75)
  {
    v74 = v75;
    v72 = v75;
    v181 = v75;
    v180 = v75;
    v73 = sub_10025C9B0(&unk_1006D7160);
    sub_1002D3DF0();
    v17 = Collection.isEmpty.getter();
    if (v17)
    {
    }

    else
    {
      v69 = Array<A>.emailAddresses.getter();
      v67 = &type metadata for Any + 8;
      v68 = _arrayForceCast<A, B>(_:)();
      v70 = Array._bridgeToObjectiveC()().super.isa;

      [v161 setToRecipients:v70];
      _objc_release(v70);
      v71 = v197;
      sub_100469450(v197);
      sub_1002CCA28();
      sub_10028D6D0();
    }
  }

  v66 = sub_1002897B0();
  if (v66)
  {
    v65 = v66;
    v63 = v66;
    v183 = v66;
    v182 = v66;
    v64 = sub_10025C9B0(&unk_1006D7160);
    sub_1002D3DF0();
    v18 = Collection.isEmpty.getter();
    if (v18)
    {
    }

    else
    {
      v60 = Array<A>.emailAddresses.getter();
      v58 = &type metadata for Any + 8;
      v59 = _arrayForceCast<A, B>(_:)();
      v61 = Array._bridgeToObjectiveC()().super.isa;

      [v161 setCcRecipients:v61];
      _objc_release(v61);
      v62 = v198;
      sub_100469450(v198);
      sub_1002CCB50();
      sub_10028D6D0();
    }
  }

  v57 = sub_100469688();
  if (v57)
  {
    v56 = v57;
    v54 = v57;
    v185 = v57;
    v184 = v57;
    v55 = sub_10025C9B0(&unk_1006D7160);
    sub_1002D3DF0();
    v19 = Collection.isEmpty.getter();
    if (v19)
    {
    }

    else
    {
      v51 = Array<A>.emailAddresses.getter();
      v49 = &type metadata for Any + 8;
      v50 = _arrayForceCast<A, B>(_:)();
      v52 = Array._bridgeToObjectiveC()().super.isa;

      [v161 setBccRecipients:v52];
      _objc_release(v52);
      v53 = v199;
      sub_100469450(v199);
      sub_1002CCC78();
      sub_10028D6D0();
    }
  }

  result = sub_100469828();
  v46 = result;
  v47 = v21;
  v48 = v22;
  if (result)
  {
    v43 = v46;
    v44 = v47;
    v45 = v48;
    v39 = v48;
    v40 = v47;
    v41 = v46;
    v188 = v46;
    v189 = v47;
    v190 = v48;
    _objc_retain(v46);
    v42 = [v41 identityEmailAddress];
    _objc_release(v41);
    if (v42)
    {
      v38 = v42;
      v32 = v42;
      v33 = [v42 stringValue];
      v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v23;
      _objc_release(v32);
      _objc_release(v33);
      v36 = v34;
      v37 = v35;
    }

    else
    {
      v36 = 0;
      v37 = 0;
    }

    v30 = v37;
    v31 = v36;
    if (v37)
    {
      v28 = v31;
      v29 = v30;
      v27 = v30;
      v24 = v31;
      v186 = v31;
      v187 = v30;

      v25 = String._bridgeToObjectiveC()();

      [v161 setSendingEmailAddress:v25];
      _objc_release(v25);
      v26 = v200;
      sub_100469450(v200);
      sub_1002CD24C(v41);
      sub_10028D6D0();
    }

    else
    {
      _objc_release(v41);
    }
  }

  return result;
}

void sub_10046CD78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v30 = 0;
  v33 = a1;
  v32 = a2;
  v21 = a3 + 16;
  v31 = a3 + 16;
  v22 = sub_100289454();
  v23 = sub_10035333C();
  if (v23)
  {
    v19 = v23;
    v17 = v23;
    v30 = v23;

    v3 = [v23 composeWebView];
    v18 = v3;
    if (v3)
    {
      v16 = v18;
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v14 = v16;
    [v16 becomeFirstResponder];

    sub_10046BC14(v17);
    v15 = &v28;
    swift_beginAccess();
    sub_100015DA0(v21, v26);
    swift_endAccess();
    if (v27)
    {
      v13 = v29;
      sub_100014898(v26, v29);
      v12 = [objc_opt_self() defaultCenter];
      v10 = v24;
      sub_10026F5D4(v29, v24);
      v7 = v25;
      sub_10027EC3C(v24, v25);
      v5 = *(v7 - 8);
      v6 = v5;
      v9 = &v5;
      __chkstk_darwin(&v5);
      v8 = &v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v8);
      v11 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v6 + 8))(v8, v7);
      sub_1000160F4(v10);
      [v12 removeObserver:{v11, v5}];
      swift_unknownObjectRelease();

      sub_1000160F4(v13);
    }

    else
    {
      sub_10000B0D8(v26);
    }
  }

  else
  {
  }
}

uint64_t sub_10046D100(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

void *sub_10046D164@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  sub_100469450(v4);
  return memcpy(a1, v4, 0x48uLL);
}

void *sub_10046D1C4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, __srca, sizeof(v4));
  return sub_1004694D4(__dst);
}

void (*sub_10046D224(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x70uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x48uLL);
  v3[13] = sub_100469A98(v3 + 9);
  return sub_10046D2BC;
}

void sub_10046D2BC(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 104))();
  free(v1);
}

uint64_t sub_10046D3F4()
{
  v2 = sub_10025C9B0(&unk_1006D7160);
  v0 = sub_1002D3DF0();
  return sub_10025E9D8(sub_10046D4B0, 0, v2, &unk_10065AB70, &type metadata for Never, v0, &protocol witness table for Never, v3);
}

Swift::String *sub_10046D4B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v36 = a1;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v62 = 0;
  v55 = 0;
  v3 = sub_10025C9B0(&unk_1006D7300);
  v37 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v38 = &v17 - v37;
  v4 = sub_10025C9B0(&unk_1006DCC00);
  v39 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v4);
  v40 = (&v17 - v39);
  v41 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v42 = &v17 - v41;
  v43 = 0;
  v44 = type metadata accessor for PersonNameComponents();
  v45 = *(v44 - 8);
  v46 = v44 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v48 = &v17 - v47;
  v62 = &v17 - v47;
  v53 = type metadata accessor for IntentPerson.Name();
  v50 = *(v53 - 8);
  v51 = v53 - 8;
  v49 = (*(v50 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v53);
  v52 = (&v17 - v49);
  v61 = a1;
  IntentPerson.name.getter();
  v54 = (*(v50 + 88))(v52, v53);
  if (v54 == enum case for IntentPerson.Name.displayName(_:))
  {
    (*(v50 + 96))(v52, v53);
    v33 = *v52;
    v55 = v33;

    v60 = v33;

    v34 = v33;
  }

  else if (v54 == enum case for IntentPerson.Name.components(_:))
  {
    v7 = v48;
    (*(v50 + 96))(v52, v53);
    (*(v45 + 32))(v7, v52, v44);
    v62 = v7;
    v32 = PersonNameComponents.formatted()();

    v60 = v32;
    (*(v45 + 8))(v48, v44);
    v34 = v32;
  }

  else
  {
    v31 = 0;
    v60 = 0;
    (*(v50 + 8))(v52, v53);
    v34._countAndFlagsBits = v31;
    v34._object = v31;
  }

  object = v34._object;
  countAndFlagsBits = v34._countAndFlagsBits;
  IntentPerson.handle.getter();
  v28 = type metadata accessor for IntentPerson.Handle();
  v29 = *(v28 - 8);
  v30 = v28 - 8;
  if ((*(v29 + 48))(v38, 1) == 1)
  {
    sub_100288550(v38);
    v8 = type metadata accessor for IntentPerson.Handle.Value();
    (*(*(v8 - 8) + 56))(v42, 1);
  }

  else
  {
    IntentPerson.Handle.value.getter();
    (*(v29 + 8))(v38, v28);
    v9 = type metadata accessor for IntentPerson.Handle.Value();
    (*(*(v9 - 8) + 56))(v42, 0, 1);
  }

  v23 = type metadata accessor for IntentPerson.Handle.Value();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  if ((*(v24 + 48))(v42, 1))
  {
    goto LABEL_13;
  }

  sub_10046E53C(v42, v40);
  if ((*(v24 + 88))(v40, v23) != enum case for IntentPerson.Handle.Value.emailAddress(_:))
  {
    (*(v24 + 8))(v40, v23);
LABEL_13:
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    v18 = v10._countAndFlagsBits;
    v17 = v10._object;

    v58 = v18;
    v59 = v17;
    sub_1002885F8(v42);
    v21 = v18;
    v22 = v17;
    goto LABEL_14;
  }

  (*(v24 + 96))(v40, v23);
  v20 = *v40;
  v19 = v40[1];
  v56 = v20;
  v57 = v19;

  v58 = v20;
  v59 = v19;

  sub_1002885F8(v42);
  v21 = v20;
  v22 = v19;
LABEL_14:
  v11 = sub_10034E760(countAndFlagsBits, object, v21, v22);
  v12 = v35;
  *v35 = v11;
  v12[1] = v13;
  v12[2] = v14;
  v12[3] = v15;
  sub_100268744();
  result = &v60;
  sub_100268744();
  return result;
}

uint64_t sub_10046DD20()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0458;
  sub_10002094C(v7, qword_1006F0458);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10046DE60();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10046DE60()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateDraftIntent", 0x11uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10046DF38()
{
  if (qword_1006D6140 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0458);
}

uint64_t sub_10046DFA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10046DF38();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10046E040(uint64_t a1)
{
  *(v2 + 88) = v2;
  memcpy((v2 + 16), v1, 0x48uLL);
  v3 = swift_task_alloc();
  *(v5 + 96) = v3;
  *v3 = *(v5 + 88);
  v3[1] = sub_1002E37D0;

  return sub_100469B30(a1);
}

uint64_t sub_10046E184(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_10046E1E8()
{
  v2 = qword_1006DCBC0;
  if (!qword_1006DCBC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10046E2AC(uint64_t a1)
{
  result = sub_100331E94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10046E2F0()
{
  v2 = qword_1006DCBE0;
  if (!qword_1006DCBE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10046E384()
{
  v2 = qword_1006DCBE8;
  if (!qword_1006DCBE8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10046E418()
{
  v2 = qword_1006DCBF0;
  if (!qword_1006DCBF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCBF0);
    return WitnessTable;
  }

  return v2;
}

void *sub_10046E53C(const void *a1, void *a2)
{
  v6 = type metadata accessor for IntentPerson.Handle.Value();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&unk_1006DCC00);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_10046E664@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v52 = __b;
  memset(__b, 0, sizeof(__b));
  v1 = sub_10025C9B0(&unk_1006DB310);
  v15 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v34 = &v15 - v15;
  v50 = 0;
  v2 = type metadata accessor for InputConnectionBehavior();
  v16 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v48 = &v15 - v16;
  v3 = sub_10025C9B0(&unk_1006D7080);
  v17 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v47 = &v15 - v17;
  v18 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v15 - v17);
  v46 = &v15 - v18;
  v5 = sub_10025C9B0(&qword_1006D6280);
  v19 = (*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v44 = &v15 - v19;
  sub_10025C9B0(&unk_1006D70A0);
  v35 = type metadata accessor for LocalizedStringResource();
  v6 = *(v35 - 8);
  v37 = *(v6 + 56);
  v36 = v6 + 56;
  v38 = 1;
  v37(v44, 1);
  v22 = &v65;
  v65 = 0;
  v39 = type metadata accessor for IntentDialog();
  v7 = *(v39 - 8);
  v41 = *(v7 + 56);
  v40 = v7 + 56;
  v41(v46, v38);
  (v41)(v47, v38, v38, v39);
  v21 = sub_10025C9B0(&unk_1006D6FF0);
  v20 = sub_10027D124();
  v23 = sub_10027EAAC();
  sub_1003BD8F8(v48);
  v53 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  __b[0] = v53;
  v26 = sub_10025C9B0(&qword_1006DCCB8);
  (v37)(v44, v38, v38, v35);
  v24 = &v64;
  v27 = 2;
  v64 = 2;
  v28 = type metadata accessor for Bool.IntentDisplayName();
  v8 = *(v28 - 8);
  v30 = *(v8 + 56);
  v29 = v8 + 56;
  v30(v34, v38);
  (v41)(v46, v38, v38, v39);
  v31 = sub_10025C9B0(&unk_1006DCCC0);
  v32 = sub_100342420();
  sub_1003BD8F8(v48);
  v54 = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  __b[1] = v54;
  (v37)(v44, v38, v38, v35);
  v25 = &v63;
  v63 = v27;
  (v30)(v34, v38, v38, v28);
  (v41)(v46, v38, v38, v39);
  sub_1003BD8F8(v48);
  v55 = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  __b[2] = v55;
  (v37)(v44, v38, v38, v35);
  v33 = &v62;
  v62 = v27;
  (v30)(v34, v38, v38, v28);
  (v41)(v46, v38, v38, v39);
  sub_1003BD8F8(v48);
  v56 = IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();

  __b[3] = v56;
  sub_10025C9B0(&qword_1006DCCD8);
  (v37)(v44, v38, v38, v35);
  v45 = v61;
  memset(v61, 0, sizeof(v61));
  (v41)(v46, v38, v38, v39);
  (v41)(v47, v38, v38, v39);
  v43 = sub_10025C9B0(&qword_1006DCCE0);
  v42 = sub_1003420CC();
  v49 = sub_1002DA854();
  sub_1003BD8F8(v48);
  v57 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  __b[4] = v57;
  sub_10025C9B0(&unk_1006D7090);
  v51 = v60;
  memset(v60, 0, sizeof(v60));
  sub_10000B074();
  sub_1003DC7F0();
  v59 = AppDependency.__allocating_init(key:manager:)();

  __b[5] = v59;
  sub_1003423B8();
  v9 = v54;
  v10 = v55;
  v11 = v56;
  v12 = v57;
  v13 = v58;
  result = v59;
  *v58 = v53;
  v13[1] = v9;
  v13[2] = v10;
  v13[3] = v11;
  v13[4] = v12;
  v13[5] = result;
  return result;
}

uint64_t sub_10046F058()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10046F0B4()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_10046F118()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10046F174()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_10046F1D8()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_10046F234()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_10046F298(void *a1)
{
  v6 = a1;
  v5 = v1;

  sub_1003421DC(a1, v4);
  IntentParameter.wrappedValue.setter();

  return sub_10027D594(a1);
}

uint64_t sub_10046F30C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Update one or more email messages";
  v5 = 0;
  v4 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v14 = &v3 - v4;
  v6 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v13 = &v3 - v6;
  v1 = type metadata accessor for String.LocalizationValue();
  v7 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v11 = &v3 - v7;
  v8 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Update Message", 0xEuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 33;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10046F4F0()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006F0470);
  sub_1000208F4(v1, qword_1006F0470);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_10046F54C()
{
  if (qword_1006D6148 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006F0470);
}

uint64_t sub_10046F5B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10046F54C();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

void (*sub_10046F61C(void *a1))(void **a1)
{
  v3 = sub_100294700(0x30uLL);
  *a1 = v3;
  v3[4] = *v1;

  v3[5] = IntentParameter.wrappedValue.modify();
  return sub_10034AFF4;
}

uint64_t sub_10046F6B4()
{

  AppDependency.wrappedValue.getter();

  return v1;
}

void sub_10046F710(void *a1)
{

  _objc_retain(a1);
  AppDependency.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_10046F794()
{

  v1 = AppDependency.projectedValue.getter();

  return v1;
}

uint64_t sub_10046F7EC(uint64_t a1)
{
  *(v2 + 1768) = v1;
  *(v2 + 1760) = a1;
  *(v2 + 1488) = v2;
  *(v2 + 1496) = 0;
  *(v2 + 1504) = 0;
  memset((v2 + 272), 0, 0x50uLL);
  *(v2 + 1520) = 0;
  *(v2 + 1408) = 0;
  *(v2 + 1416) = 0;
  *(v2 + 1560) = 0;
  *(v2 + 1568) = 0;
  *(v2 + 2088) = 0;
  *(v2 + 1616) = 0;
  *(v2 + 2096) = 0;
  *(v2 + 1664) = 0;
  *(v2 + 2104) = 0;
  *(v2 + 1712) = 0;
  sub_10025C9B0(&qword_1006D7250);
  *(v2 + 1776) = swift_task_alloc();
  v3 = type metadata accessor for URL();
  *(v2 + 1784) = v3;
  *(v2 + 1792) = *(v3 - 8);
  *(v2 + 1800) = swift_task_alloc();
  *(v2 + 1808) = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  *(v2 + 1816) = v4;
  *(v2 + 1824) = *(v4 - 8);
  *(v2 + 1832) = swift_task_alloc();
  *(v2 + 1840) = swift_task_alloc();
  *(v2 + 1848) = swift_task_alloc();
  *(v2 + 1856) = swift_task_alloc();
  *(v2 + 1864) = swift_task_alloc();
  *(v2 + 1872) = swift_task_alloc();
  *(v2 + 1880) = swift_task_alloc();
  *(v2 + 1888) = swift_task_alloc();
  *(v2 + 1896) = swift_task_alloc();
  *(v2 + 1904) = swift_task_alloc();
  *(v2 + 1912) = swift_task_alloc();
  *(v2 + 1920) = swift_task_alloc();
  *(v2 + 1496) = v1;
  type metadata accessor for MainActor();
  *(v2 + 1928) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 1936) = v7;
  *(v2 + 1944) = v5;

  return _swift_task_switch(sub_10046FB10, v7);
}

uint64_t sub_10046FB10()
{
  *(v0 + 1488) = v0;
  v7 = sub_10046F6B4();
  sub_10035277C();
  v1 = v6[221];
  _objc_release(v7);
  memcpy(v6 + 86, v1, 0x30uLL);
  v5 = sub_10043CEA4();
  v6[244] = v5;
  v4 = sub_10046F6B4();
  v6[245] = v4;
  v2 = swift_task_alloc();
  v6[246] = v2;
  v6[247] = sub_10047D62C();
  *v2 = v6[186];
  v2[1] = sub_10046FDF4;

  return sub_10045F520(v5, v4);
}

uint64_t sub_10046FDF4(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[186] = *v2;
  v7[248] = a1;
  v7[249] = v1;

  if (v1)
  {
    v3 = *(v6 + 1920);
    v4 = sub_10047D47C;
  }

  else
  {

    v3 = *(v6 + 1920);
    v4 = sub_10046FFA4;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_10046FFA4(uint64_t a1)
{
  v314 = v1;
  __chkstk_darwin(a1);
  v2 = *(v1 + 1992);
  v277 = *(v1 + 1984);
  *(v1 + 1488) = v1;
  *(v1 + 1504) = v277;
  v278 = sub_10046F6B4();
  sub_100352C0C(v277);
  if (v2)
  {
    _objc_release(v278);

    v40 = *(*(v1 + 1488) + 8);

    return v40();
  }

  else
  {
    _objc_release(v278);
    v276 = sub_10046F1D8();
    *(v1 + 1433) = v276;
    if (v276 != 2)
    {
      v3 = *(v1 + 1920);
      v265 = *(v1 + 1816);
      __src = *(v1 + 1768);
      v264 = *(v1 + 1824);
      *(v1 + 2104) = v276 & 1;
      v4 = sub_10046F54C();
      v266 = *(v264 + 16);
      v266(v3, v4, v265);
      sub_1003422F0(__src, (v1 + 1216));
      v268 = swift_allocObject();
      memcpy((v268 + 16), __src, 0x30uLL);
      oslog = Logger.logObject.getter();
      v275 = static os_log_type_t.info.getter();
      v270 = swift_allocObject();
      *(v270 + 16) = 0;
      v271 = swift_allocObject();
      *(v271 + 16) = 8;
      v269 = swift_allocObject();
      *(v269 + 16) = sub_10047D9B0;
      *(v269 + 24) = v268;
      v272 = swift_allocObject();
      *(v272 + 16) = sub_10026E818;
      *(v272 + 24) = v269;
      sub_10025C9B0(&unk_1006D7720);
      _allocateUninitializedArray<A>(_:)();
      v273 = v5;

      *v273 = sub_10026434C;
      v273[1] = v270;

      v273[2] = sub_10026434C;
      v273[3] = v271;

      v273[4] = sub_10026EBF8;
      v273[5] = v272;
      sub_1002612B0();

      if (os_log_type_enabled(oslog, v275))
      {
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v262 = sub_1002641E8(0);
        v263 = sub_1002641E8(0);
        v309 = buf;
        v310 = v262;
        v311 = v263;
        sub_10026423C(0, &v309);
        sub_10026423C(1, &v309);
        v312 = sub_10026434C;
        v313 = v270;
        sub_100264250(&v312, &v309, &v310, &v311);
        v312 = sub_10026434C;
        v313 = v271;
        sub_100264250(&v312, &v309, &v310, &v311);
        v312 = sub_10026EBF8;
        v313 = v272;
        sub_100264250(&v312, &v309, &v310, &v311);
        _os_log_impl(&_mh_execute_header, oslog, v275, "#SiriMail UpdateMessageIntent marking %ld messages as read", buf, 0xCu);
        sub_10026429C(v262);
        sub_10026429C(v263);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v258 = *(v1 + 1984);
      v251 = *(v1 + 1920);
      v252 = *(v1 + 1816);
      v255 = *(v1 + 1768);
      v250 = *(v1 + 1824);
      _objc_release(oslog);
      v253 = *(v250 + 8);
      v253(v251, v252);
      sub_10047E448();

      v254 = sub_10046F6B4();
      v256 = sub_100353058();
      _objc_release(v254);
      memcpy((v1 + 1264), v255, 0x30uLL);
      v257 = sub_10028E57C();
      memcpy((v1 + 1312), v255, 0x30uLL);
      v6 = sub_10028E5B4();
      v259 = sub_10027D364(v258, v256, v257, v6);
      *(v1 + 2000) = v259;
      *(v1 + 1712) = v259;
      _objc_retain(v259);
      v260 = [v259 flagState];
      _objc_release(v259);
      if (v260 != (v276 & 1))
      {
        v7 = *(v1 + 1912);
        v235 = *(v1 + 1816);
        v236 = *(v1 + 1768);
        v8 = sub_10046F54C();
        v266(v7, v8, v235);
        sub_1003422F0(v236, (v1 + 1360));
        v237 = swift_allocObject();
        memcpy((v237 + 16), v236, 0x30uLL);
        v239 = swift_allocObject();
        *(v239 + 16) = v276 & 1;
        log = Logger.logObject.getter();
        v249 = static os_log_type_t.info.getter();
        v241 = swift_allocObject();
        *(v241 + 16) = 0;
        v242 = swift_allocObject();
        *(v242 + 16) = 8;
        v238 = swift_allocObject();
        *(v238 + 16) = sub_10047D9B0;
        *(v238 + 24) = v237;
        v243 = swift_allocObject();
        *(v243 + 16) = sub_10026E818;
        *(v243 + 24) = v238;
        v244 = swift_allocObject();
        *(v244 + 16) = 32;
        v245 = swift_allocObject();
        *(v245 + 16) = 8;
        v240 = swift_allocObject();
        *(v240 + 16) = sub_10047E4AC;
        *(v240 + 24) = v239;
        v246 = swift_allocObject();
        *(v246 + 16) = sub_10026EE84;
        *(v246 + 24) = v240;
        _allocateUninitializedArray<A>(_:)();
        v247 = v9;

        *v247 = sub_10026434C;
        v247[1] = v241;

        v247[2] = sub_10026434C;
        v247[3] = v242;

        v247[4] = sub_10026EBF8;
        v247[5] = v243;

        v247[6] = sub_10026434C;
        v247[7] = v244;

        v247[8] = sub_10026434C;
        v247[9] = v245;

        v247[10] = sub_10026EF2C;
        v247[11] = v246;
        sub_1002612B0();

        if (os_log_type_enabled(log, v249))
        {
          v232 = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v233 = sub_1002641E8(0);
          v234 = sub_1002641E8(1);
          v304 = v232;
          v305 = v233;
          v306 = v234;
          sub_10026423C(2, &v304);
          sub_10026423C(2, &v304);
          v307 = sub_10026434C;
          v308 = v241;
          sub_100264250(&v307, &v304, &v305, &v306);
          v307 = sub_10026434C;
          v308 = v242;
          sub_100264250(&v307, &v304, &v305, &v306);
          v307 = sub_10026EBF8;
          v308 = v243;
          sub_100264250(&v307, &v304, &v305, &v306);
          v307 = sub_10026434C;
          v308 = v244;
          sub_100264250(&v307, &v304, &v305, &v306);
          v307 = sub_10026434C;
          v308 = v245;
          sub_100264250(&v307, &v304, &v305, &v306);
          v307 = sub_10026EF2C;
          v308 = v246;
          sub_100264250(&v307, &v304, &v305, &v306);
          _os_log_impl(&_mh_execute_header, log, v249, "#SiriMail UpdateMessageIntent marking %ld messages as %s", v232, 0x16u);
          sub_10026429C(v233);
          sub_10026429C(v234);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        *(v1 + 2008) = 0;
        v229 = *(v1 + 1912);
        v230 = *(v1 + 1816);
        _objc_release(log);
        v253(v229, v230);
        *(v1 + 208) = *(v1 + 1488);
        *(v1 + 248) = v1 + 1472;
        *(v1 + 216) = sub_1004751DC;
        v231 = swift_continuation_init();
        *(v1 + 680) = sub_10025C9B0(&unk_1006D7CE0);
        *(v1 + 656) = v231;
        *(v1 + 624) = _NSConcreteStackBlock;
        *(v1 + 632) = 1107296256;
        *(v1 + 636) = 0;
        *(v1 + 640) = sub_10027D41C;
        *(v1 + 648) = &unk_100662718;
        [v259 performInteractionWithCompletion:?];
        v10 = v1 + 208;

        return _swift_continuation_await(v10);
      }

      v11 = *(v1 + 1904);
      v225 = *(v1 + 1816);
      v12 = sub_10046F54C();
      v266(v11, v12, v225);
      v227 = Logger.logObject.getter();
      v226 = static os_log_type_t.info.getter();
      v228 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v227, v226))
      {
        v221 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v222 = sub_1002641E8(0);
        v223 = sub_1002641E8(0);
        *(v1 + 1720) = v221;
        *(v1 + 1728) = v222;
        *(v1 + 1736) = v223;
        sub_10026423C(0, (v1 + 1720));
        sub_10026423C(0, (v1 + 1720));
        *(v1 + 1744) = v228;
        v224 = swift_task_alloc();
        v224[2] = v1 + 1720;
        v224[3] = v1 + 1728;
        v224[4] = v1 + 1736;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v227, v226, "#SiriMail UpdateMessageIntent no op", v221, 2u);
        sub_10026429C(v222);
        sub_10026429C(v223);
        UnsafeMutablePointer.deallocate()();
      }

      v219 = *(v1 + 1904);
      v220 = *(v1 + 1816);
      _objc_release(v227);
      v253(v219, v220);
      _objc_release(*(v1 + 2000));
    }

    v218 = sub_10046F058();
    *(v1 + 1434) = v218;
    if (v218 != 2)
    {
      v13 = *(v1 + 1896);
      v202 = *(v1 + 1816);
      v204 = *(v1 + 1768);
      v201 = *(v1 + 1824);
      *(v1 + 2096) = v218 & 1;
      v14 = sub_10046F54C();
      v203 = *(v201 + 16);
      v203(v13, v14, v202);
      v205 = swift_allocObject();
      *(v205 + 16) = v218 & 1;
      sub_1003422F0(v204, (v1 + 1072));
      v207 = swift_allocObject();
      memcpy((v207 + 16), v204, 0x30uLL);
      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.info.getter();
      v209 = swift_allocObject();
      *(v209 + 16) = 32;
      v210 = swift_allocObject();
      *(v210 + 16) = 8;
      v206 = swift_allocObject();
      *(v206 + 16) = sub_10047E36C;
      *(v206 + 24) = v205;
      v211 = swift_allocObject();
      *(v211 + 16) = sub_10026EE84;
      *(v211 + 24) = v206;
      v212 = swift_allocObject();
      *(v212 + 16) = 0;
      v213 = swift_allocObject();
      *(v213 + 16) = 8;
      v208 = swift_allocObject();
      *(v208 + 16) = sub_10047D9B0;
      *(v208 + 24) = v207;
      v214 = swift_allocObject();
      *(v214 + 16) = sub_10026E818;
      *(v214 + 24) = v208;
      sub_10025C9B0(&unk_1006D7720);
      _allocateUninitializedArray<A>(_:)();
      v215 = v15;

      *v215 = sub_10026434C;
      v215[1] = v209;

      v215[2] = sub_10026434C;
      v215[3] = v210;

      v215[4] = sub_10026EF2C;
      v215[5] = v211;

      v215[6] = sub_10026434C;
      v215[7] = v212;

      v215[8] = sub_10026434C;
      v215[9] = v213;

      v215[10] = sub_10026EBF8;
      v215[11] = v214;
      sub_1002612B0();

      if (os_log_type_enabled(v216, v217))
      {
        v198 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v199 = sub_1002641E8(0);
        v200 = sub_1002641E8(1);
        v299 = v198;
        v300 = v199;
        v301 = v200;
        sub_10026423C(2, &v299);
        sub_10026423C(2, &v299);
        v302 = sub_10026434C;
        v303 = v209;
        sub_100264250(&v302, &v299, &v300, &v301);
        v302 = sub_10026434C;
        v303 = v210;
        sub_100264250(&v302, &v299, &v300, &v301);
        v302 = sub_10026EF2C;
        v303 = v211;
        sub_100264250(&v302, &v299, &v300, &v301);
        v302 = sub_10026434C;
        v303 = v212;
        sub_100264250(&v302, &v299, &v300, &v301);
        v302 = sub_10026434C;
        v303 = v213;
        sub_100264250(&v302, &v299, &v300, &v301);
        v302 = sub_10026EBF8;
        v303 = v214;
        sub_100264250(&v302, &v299, &v300, &v301);
        _os_log_impl(&_mh_execute_header, v216, v217, "#SiriMail UpdateMessageIntent %s %ld messages", v198, 0x16u);
        sub_10026429C(v199);
        sub_10026429C(v200);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v195 = *(v1 + 1984);
      v188 = *(v1 + 1896);
      v189 = *(v1 + 1816);
      v192 = *(v1 + 1768);
      v187 = *(v1 + 1824);
      _objc_release(v216);
      v190 = *(v187 + 8);
      v190(v188, v189);
      sub_10047E378();

      v191 = sub_10046F6B4();
      v193 = sub_100353058();
      _objc_release(v191);
      memcpy((v1 + 1120), v192, 0x30uLL);
      v194 = sub_10028E57C();
      memcpy((v1 + 1168), v192, 0x30uLL);
      v16 = sub_10028E5B4();
      v196 = sub_10027D364(v195, v193, v194, v16);
      *(v1 + 2016) = v196;
      *(v1 + 1664) = v196;
      _objc_retain(v196);
      v197 = [v196 flagState];
      _objc_release(v196);
      if (v197 != (v218 & 1))
      {
        v17 = *(v1 + 1888);
        v178 = *(v1 + 1816);
        v18 = sub_10046F54C();
        v203(v17, v18, v178);
        v179 = swift_allocObject();
        *(v179 + 16) = v218 & 1;
        v185 = Logger.logObject.getter();
        v186 = static os_log_type_t.info.getter();
        v181 = swift_allocObject();
        *(v181 + 16) = 32;
        v182 = swift_allocObject();
        *(v182 + 16) = 8;
        v180 = swift_allocObject();
        *(v180 + 16) = sub_10047E36C;
        *(v180 + 24) = v179;
        v183 = swift_allocObject();
        *(v183 + 16) = sub_10026EE84;
        *(v183 + 24) = v180;
        _allocateUninitializedArray<A>(_:)();
        v184 = v19;

        *v184 = sub_10026434C;
        v184[1] = v181;

        v184[2] = sub_10026434C;
        v184[3] = v182;

        v184[4] = sub_10026EF2C;
        v184[5] = v183;
        sub_1002612B0();

        if (os_log_type_enabled(v185, v186))
        {
          v175 = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v176 = sub_1002641E8(0);
          v177 = sub_1002641E8(1);
          v294 = v175;
          v295 = v176;
          v296 = v177;
          sub_10026423C(2, &v294);
          sub_10026423C(1, &v294);
          v297 = sub_10026434C;
          v298 = v181;
          sub_100264250(&v297, &v294, &v295, &v296);
          v297 = sub_10026434C;
          v298 = v182;
          sub_100264250(&v297, &v294, &v295, &v296);
          v297 = sub_10026EF2C;
          v298 = v183;
          sub_100264250(&v297, &v294, &v295, &v296);
          _os_log_impl(&_mh_execute_header, v185, v186, "#SiriMail UpdateMessageIntent %s messages", v175, 0xCu);
          sub_10026429C(v176);
          sub_10026429C(v177);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        *(v1 + 2024) = 0;
        v172 = *(v1 + 1888);
        v173 = *(v1 + 1816);
        _objc_release(v185);
        v190(v172, v173);
        *(v1 + 144) = *(v1 + 1488);
        *(v1 + 184) = v1 + 1456;
        *(v1 + 152) = sub_100478FCC;
        v174 = swift_continuation_init();
        *(v1 + 616) = sub_10025C9B0(&unk_1006D7CE0);
        *(v1 + 592) = v174;
        *(v1 + 560) = _NSConcreteStackBlock;
        *(v1 + 568) = 1107296256;
        *(v1 + 572) = 0;
        *(v1 + 576) = sub_10027D41C;
        *(v1 + 584) = &unk_100662498;
        [v196 performInteractionWithCompletion:?];
        v10 = v1 + 144;

        return _swift_continuation_await(v10);
      }

      v20 = *(v1 + 1880);
      v168 = *(v1 + 1816);
      v21 = sub_10046F54C();
      v203(v20, v21, v168);
      v170 = Logger.logObject.getter();
      v169 = static os_log_type_t.info.getter();
      v171 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v170, v169))
      {
        v164 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v165 = sub_1002641E8(0);
        v166 = sub_1002641E8(0);
        *(v1 + 1672) = v164;
        *(v1 + 1680) = v165;
        *(v1 + 1688) = v166;
        sub_10026423C(0, (v1 + 1672));
        sub_10026423C(0, (v1 + 1672));
        *(v1 + 1696) = v171;
        v167 = swift_task_alloc();
        v167[2] = v1 + 1672;
        v167[3] = v1 + 1680;
        v167[4] = v1 + 1688;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v170, v169, "#SiriMail UpdateMessageIntent no op", v164, 2u);
        sub_10026429C(v165);
        sub_10026429C(v166);
        UnsafeMutablePointer.deallocate()();
      }

      v162 = *(v1 + 1880);
      v163 = *(v1 + 1816);
      _objc_release(v170);
      v190(v162, v163);
      _objc_release(*(v1 + 2016));
    }

    v161 = sub_10046F118();
    *(v1 + 1435) = v161;
    if (v161 != 2)
    {
      v22 = *(v1 + 1872);
      v150 = *(v1 + 1816);
      v152 = *(v1 + 1768);
      v149 = *(v1 + 1824);
      *(v1 + 2088) = v161 & 1;
      v23 = sub_10046F54C();
      v151 = *(v149 + 16);
      v151(v22, v23, v150);
      sub_1003422F0(v152, (v1 + 880));
      v153 = swift_allocObject();
      memcpy((v153 + 16), v152, 0x30uLL);
      v159 = Logger.logObject.getter();
      v160 = static os_log_type_t.info.getter();
      v155 = swift_allocObject();
      *(v155 + 16) = 0;
      v156 = swift_allocObject();
      *(v156 + 16) = 8;
      v154 = swift_allocObject();
      *(v154 + 16) = sub_10047D9B0;
      *(v154 + 24) = v153;
      v157 = swift_allocObject();
      *(v157 + 16) = sub_10026E818;
      *(v157 + 24) = v154;
      sub_10025C9B0(&unk_1006D7720);
      _allocateUninitializedArray<A>(_:)();
      v158 = v24;

      *v158 = sub_10026434C;
      v158[1] = v155;

      v158[2] = sub_10026434C;
      v158[3] = v156;

      v158[4] = sub_10026EBF8;
      v158[5] = v157;
      sub_1002612B0();

      if (os_log_type_enabled(v159, v160))
      {
        v146 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v147 = sub_1002641E8(0);
        v148 = sub_1002641E8(0);
        v289 = v146;
        v290 = v147;
        v291 = v148;
        sub_10026423C(0, &v289);
        sub_10026423C(1, &v289);
        v292 = sub_10026434C;
        v293 = v155;
        sub_100264250(&v292, &v289, &v290, &v291);
        v292 = sub_10026434C;
        v293 = v156;
        sub_100264250(&v292, &v289, &v290, &v291);
        v292 = sub_10026EBF8;
        v293 = v157;
        sub_100264250(&v292, &v289, &v290, &v291);
        _os_log_impl(&_mh_execute_header, v159, v160, "#SiriMail UpdateMessageIntent junking %ld messages", v146, 0xCu);
        sub_10026429C(v147);
        sub_10026429C(v148);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v143 = *(v1 + 1984);
      v136 = *(v1 + 1872);
      v137 = *(v1 + 1816);
      v140 = *(v1 + 1768);
      v135 = *(v1 + 1824);
      _objc_release(v159);
      v138 = *(v135 + 8);
      v138(v136, v137);
      sub_10047E290();

      v139 = sub_10046F6B4();
      v141 = sub_100353058();
      _objc_release(v139);
      memcpy((v1 + 928), v140, 0x30uLL);
      v142 = sub_10028E57C();
      memcpy((v1 + 976), v140, 0x30uLL);
      v25 = sub_10028E5B4();
      v144 = sub_10027D364(v143, v141, v142, v25);
      *(v1 + 2032) = v144;
      *(v1 + 1616) = v144;
      _objc_retain(v144);
      v145 = [v144 flagState];
      _objc_release(v144);
      if (v145 != (v161 & 1))
      {
        v26 = *(v1 + 1864);
        v120 = *(v1 + 1816);
        v121 = *(v1 + 1768);
        v27 = sub_10046F54C();
        v151(v26, v27, v120);
        v122 = swift_allocObject();
        *(v122 + 16) = v161 & 1;
        sub_1003422F0(v121, (v1 + 1024));
        v124 = swift_allocObject();
        memcpy((v124 + 16), v121, 0x30uLL);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.info.getter();
        v126 = swift_allocObject();
        *(v126 + 16) = 32;
        v127 = swift_allocObject();
        *(v127 + 16) = 8;
        v123 = swift_allocObject();
        *(v123 + 16) = sub_10047E2F4;
        *(v123 + 24) = v122;
        v128 = swift_allocObject();
        *(v128 + 16) = sub_10026EE84;
        *(v128 + 24) = v123;
        v129 = swift_allocObject();
        *(v129 + 16) = 0;
        v130 = swift_allocObject();
        *(v130 + 16) = 8;
        v125 = swift_allocObject();
        *(v125 + 16) = sub_10047D9B0;
        *(v125 + 24) = v124;
        v131 = swift_allocObject();
        *(v131 + 16) = sub_10026E818;
        *(v131 + 24) = v125;
        _allocateUninitializedArray<A>(_:)();
        v132 = v28;

        *v132 = sub_10026434C;
        v132[1] = v126;

        v132[2] = sub_10026434C;
        v132[3] = v127;

        v132[4] = sub_10026EF2C;
        v132[5] = v128;

        v132[6] = sub_10026434C;
        v132[7] = v129;

        v132[8] = sub_10026434C;
        v132[9] = v130;

        v132[10] = sub_10026EBF8;
        v132[11] = v131;
        sub_1002612B0();

        if (os_log_type_enabled(v133, v134))
        {
          v117 = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v118 = sub_1002641E8(0);
          v119 = sub_1002641E8(1);
          v284 = v117;
          v285 = v118;
          v286 = v119;
          sub_10026423C(2, &v284);
          sub_10026423C(2, &v284);
          v287 = sub_10026434C;
          v288 = v126;
          sub_100264250(&v287, &v284, &v285, &v286);
          v287 = sub_10026434C;
          v288 = v127;
          sub_100264250(&v287, &v284, &v285, &v286);
          v287 = sub_10026EF2C;
          v288 = v128;
          sub_100264250(&v287, &v284, &v285, &v286);
          v287 = sub_10026434C;
          v288 = v129;
          sub_100264250(&v287, &v284, &v285, &v286);
          v287 = sub_10026434C;
          v288 = v130;
          sub_100264250(&v287, &v284, &v285, &v286);
          v287 = sub_10026EBF8;
          v288 = v131;
          sub_100264250(&v287, &v284, &v285, &v286);
          _os_log_impl(&_mh_execute_header, v133, v134, "#SiriMail UpdateMessageIntent %s %ld messages", v117, 0x16u);
          sub_10026429C(v118);
          sub_10026429C(v119);
          UnsafeMutablePointer.deallocate()();
        }

        else
        {
        }

        *(v1 + 2040) = 0;
        v114 = *(v1 + 1864);
        v115 = *(v1 + 1816);
        _objc_release(v133);
        v138(v114, v115);
        *(v1 + 80) = *(v1 + 1488);
        *(v1 + 120) = v1 + 1440;
        *(v1 + 88) = sub_10047B9C0;
        v116 = swift_continuation_init();
        *(v1 + 552) = sub_10025C9B0(&unk_1006D7CE0);
        *(v1 + 528) = v116;
        *(v1 + 496) = _NSConcreteStackBlock;
        *(v1 + 504) = 1107296256;
        *(v1 + 508) = 0;
        *(v1 + 512) = sub_10027D41C;
        *(v1 + 520) = &unk_100662218;
        [v144 performInteractionWithCompletion:?];
        v10 = v1 + 80;

        return _swift_continuation_await(v10);
      }

      v29 = *(v1 + 1856);
      v110 = *(v1 + 1816);
      v30 = sub_10046F54C();
      v151(v29, v30, v110);
      v112 = Logger.logObject.getter();
      v111 = static os_log_type_t.info.getter();
      v113 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v112, v111))
      {
        v106 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v107 = sub_1002641E8(0);
        v108 = sub_1002641E8(0);
        *(v1 + 1624) = v106;
        *(v1 + 1632) = v107;
        *(v1 + 1640) = v108;
        sub_10026423C(0, (v1 + 1624));
        sub_10026423C(0, (v1 + 1624));
        *(v1 + 1648) = v113;
        v109 = swift_task_alloc();
        v109[2] = v1 + 1624;
        v109[3] = v1 + 1632;
        v109[4] = v1 + 1640;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v112, v111, "#SiriMail UpdateMessageIntent no op", v106, 2u);
        sub_10026429C(v107);
        sub_10026429C(v108);
        UnsafeMutablePointer.deallocate()();
      }

      v104 = *(v1 + 1856);
      v105 = *(v1 + 1816);
      _objc_release(v112);
      v138(v104, v105);
      _objc_release(*(v1 + 2032));
    }

    sub_10043CE50();
    if (*(v1 + 360))
    {
      v31 = *(v1 + 1848);
      v93 = *(v1 + 1816);
      v95 = *(v1 + 1768);
      v92 = *(v1 + 1824);
      memcpy((v1 + 272), (v1 + 352), 0x50uLL);
      v32 = sub_10046F54C();
      v94 = *(v92 + 16);
      v94(v31, v32, v93);
      sub_1003422F0(v95, (v1 + 736));
      v96 = swift_allocObject();
      memcpy((v96 + 16), v95, 0x30uLL);
      v102 = Logger.logObject.getter();
      v103 = static os_log_type_t.info.getter();
      v98 = swift_allocObject();
      *(v98 + 16) = 0;
      v99 = swift_allocObject();
      *(v99 + 16) = 8;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_10047D9B0;
      *(v97 + 24) = v96;
      v100 = swift_allocObject();
      *(v100 + 16) = sub_10026E818;
      *(v100 + 24) = v97;
      sub_10025C9B0(&unk_1006D7720);
      _allocateUninitializedArray<A>(_:)();
      v101 = v33;

      *v101 = sub_10026434C;
      v101[1] = v98;

      v101[2] = sub_10026434C;
      v101[3] = v99;

      v101[4] = sub_10026EBF8;
      v101[5] = v100;
      sub_1002612B0();

      if (os_log_type_enabled(v102, v103))
      {
        v89 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v90 = sub_1002641E8(0);
        v91 = sub_1002641E8(0);
        v279 = v89;
        v280 = v90;
        v281 = v91;
        sub_10026423C(0, &v279);
        sub_10026423C(1, &v279);
        v282 = sub_10026434C;
        v283 = v98;
        sub_100264250(&v282, &v279, &v280, &v281);
        v282 = sub_10026434C;
        v283 = v99;
        sub_100264250(&v282, &v279, &v280, &v281);
        v282 = sub_10026EBF8;
        v283 = v100;
        sub_100264250(&v282, &v279, &v280, &v281);
        _os_log_impl(&_mh_execute_header, v102, v103, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", v89, 0xCu);
        sub_10026429C(v90);
        sub_10026429C(v91);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v82 = *(v1 + 1984);
      v75 = *(v1 + 1848);
      v76 = *(v1 + 1816);
      v88 = *(v1 + 1784);
      v87 = *(v1 + 1776);
      v79 = *(v1 + 1768);
      v74 = *(v1 + 1824);
      v86 = *(v1 + 1792);
      _objc_release(v102);
      v77 = *(v74 + 8);
      v77(v75, v76);
      sub_1002BCF88();

      v78 = sub_10046F6B4();
      v80 = sub_100353058();
      _objc_release(v78);
      memcpy((v1 + 784), v79, 0x30uLL);
      v81 = sub_10028E57C();
      memcpy((v1 + 832), v79, 0x30uLL);
      v34 = sub_10028E5B4();
      v83 = sub_10027D364(v82, v80, v81, v34);
      *(v1 + 2048) = v83;
      *(v1 + 1520) = v83;
      v84 = *(v1 + 272);
      v85 = *(v1 + 280);
      *(v1 + 2056) = v85;

      *(v1 + 1408) = v84;
      *(v1 + 1416) = v85;
      URL.init(string:)();
      if ((*(v86 + 48))(v87, 1, v88) != 1)
      {
        v69 = *(v1 + 1808);
        v70 = *(v1 + 1800);
        v68 = *(v1 + 1784);
        v67 = *(v1 + 1792);
        (*(v67 + 32))();
        sub_100365480();
        (*(v67 + 16))(v70, v69, v68);
        v71 = sub_10047D9B8(v70);
        *(v1 + 2064) = v71;
        *(v1 + 1560) = v71;
        v72 = sub_10046F6B4();
        v73 = [v72 daemonInterface];
        _objc_release(v72);
        if (!v73)
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v62 = *(v1 + 1840);
        v63 = *(v1 + 1816);
        v59 = [v73 mailboxRepository];
        _objc_release(v73);
        v60 = [v59 mailboxForObjectID:v71];
        *(v1 + 2072) = v60;
        _objc_release(v59);
        *(v1 + 1568) = v60;
        v61 = [v60 result];
        [v83 setTargetMailbox:?];
        _objc_release(v61);
        _objc_retain(v83);
        sub_10046F6B4();
        [v83 setDelegate:?];
        swift_unknownObjectRelease();
        _objc_release(v83);
        v35 = Logger.appIntentLogger.unsafeMutableAddressor();
        v94(v62, v35, v63);
        v65 = Logger.logObject.getter();
        v64 = static os_log_type_t.info.getter();
        v66 = _allocateUninitializedArray<A>(_:)();
        if (os_log_type_enabled(v65, v64))
        {
          v55 = static UnsafeMutablePointer.allocate(capacity:)();
          sub_10025C9B0(&qword_1006D7290);
          v56 = sub_1002641E8(0);
          v57 = sub_1002641E8(0);
          *(v1 + 1584) = v55;
          *(v1 + 1592) = v56;
          *(v1 + 1600) = v57;
          sub_10026423C(0, (v1 + 1584));
          sub_10026423C(0, (v1 + 1584));
          *(v1 + 1608) = v66;
          v58 = swift_task_alloc();
          v58[2] = v1 + 1584;
          v58[3] = v1 + 1592;
          v58[4] = v1 + 1600;
          sub_10025C9B0(&qword_1006D72C0);
          sub_10026E6E0();
          Sequence.forEach(_:)();

          _os_log_impl(&_mh_execute_header, v65, v64, "#SiriMail UpdateMessageIntent moving message to mailbox", v55, 2u);
          sub_10026429C(v56);
          sub_10026429C(v57);
          UnsafeMutablePointer.deallocate()();
        }

        *(v1 + 2080) = 0;
        v52 = *(v1 + 1840);
        v53 = *(v1 + 1816);
        _objc_release(v65);
        v77(v52, v53);
        *(v1 + 16) = *(v1 + 1488);
        *(v1 + 56) = v1 + 1424;
        *(v1 + 24) = sub_10047CF88;
        v54 = swift_continuation_init();
        *(v1 + 488) = sub_10025C9B0(&unk_1006D7CE0);
        *(v1 + 464) = v54;
        *(v1 + 432) = _NSConcreteStackBlock;
        *(v1 + 440) = 1107296256;
        *(v1 + 444) = 0;
        *(v1 + 448) = sub_10027D41C;
        *(v1 + 456) = &unk_100661F98;
        [v83 performInteractionWithCompletion:?];
        v10 = v1 + 16;

        return _swift_continuation_await(v10);
      }

      v37 = *(v1 + 1832);
      v48 = *(v1 + 1816);
      sub_100286140(*(v1 + 1776));
      v38 = Logger.appIntentLogger.unsafeMutableAddressor();
      v94(v37, v38, v48);
      v50 = Logger.logObject.getter();
      v49 = static os_log_type_t.info.getter();
      v51 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v50, v49))
      {
        v44 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v45 = sub_1002641E8(0);
        v46 = sub_1002641E8(0);
        *(v1 + 1528) = v44;
        *(v1 + 1536) = v45;
        *(v1 + 1544) = v46;
        sub_10026423C(0, (v1 + 1528));
        sub_10026423C(0, (v1 + 1528));
        *(v1 + 1552) = v51;
        v47 = swift_task_alloc();
        v47[2] = v1 + 1528;
        v47[3] = v1 + 1536;
        v47[4] = v1 + 1544;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v50, v49, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v44, 2u);
        sub_10026429C(v45);
        sub_10026429C(v46);
        UnsafeMutablePointer.deallocate()();
      }

      v41 = *(v1 + 1832);
      v42 = *(v1 + 1816);
      _objc_release(v50);
      v77(v41, v42);
      v43 = *(v1 + 2048);

      _objc_release(v43);
      sub_10027D728(v1 + 272);
    }

    else
    {
      sub_10027D594(v1 + 352);
    }

    *(v1 + 1512) = sub_10043CEA4();
    sub_10025C9B0(&unk_1006D6FF0);
    sub_10027D124();
    static IntentResult.result<A>(value:)();
    sub_100264880();

    v39 = *(*(v1 + 1488) + 8);

    return v39();
  }
}

uint64_t sub_1004751DC()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_1004752FC, v1);
}

uint64_t sub_1004752FC()
{
  v236 = v0;
  v1 = *(v0 + 2008);
  v210 = *(v0 + 1433);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1472));
  *(v0 + 1752) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v210 & 1;
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {
  }

  sub_100264880();
  _objc_release(*(v209 + 2000));
  v2 = sub_10046F058();
  v208 = v2;
  *(v209 + 1434) = v2;
  if (v2 != 2)
  {
    v3 = *(v209 + 1896);
    v192 = *(v209 + 1816);
    __src = *(v209 + 1768);
    v191 = *(v209 + 1824);
    *(v209 + 2096) = v2 & 1;
    v4 = sub_10046F54C();
    v193 = *(v191 + 16);
    v193(v3, v4, v192);
    v195 = swift_allocObject();
    *(v195 + 16) = v208 & 1;
    sub_1003422F0(__src, (v209 + 1072));
    v197 = swift_allocObject();
    memcpy((v197 + 16), __src, 0x30uLL);
    oslog = Logger.logObject.getter();
    v207 = static os_log_type_t.info.getter();
    v199 = swift_allocObject();
    *(v199 + 16) = 32;
    v200 = swift_allocObject();
    *(v200 + 16) = 8;
    v196 = swift_allocObject();
    *(v196 + 16) = sub_10047E36C;
    *(v196 + 24) = v195;
    v201 = swift_allocObject();
    *(v201 + 16) = sub_10026EE84;
    *(v201 + 24) = v196;
    v202 = swift_allocObject();
    *(v202 + 16) = 0;
    v203 = swift_allocObject();
    *(v203 + 16) = 8;
    v198 = swift_allocObject();
    *(v198 + 16) = sub_10047D9B0;
    *(v198 + 24) = v197;
    v204 = swift_allocObject();
    *(v204 + 16) = sub_10026E818;
    *(v204 + 24) = v198;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v205 = v5;

    *v205 = sub_10026434C;
    v205[1] = v199;

    v205[2] = sub_10026434C;
    v205[3] = v200;

    v205[4] = sub_10026EF2C;
    v205[5] = v201;

    v205[6] = sub_10026434C;
    v205[7] = v202;

    v205[8] = sub_10026434C;
    v205[9] = v203;

    v205[10] = sub_10026EBF8;
    v205[11] = v204;
    sub_1002612B0();

    if (os_log_type_enabled(oslog, v207))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v189 = sub_1002641E8(0);
      v190 = sub_1002641E8(1);
      v231 = buf;
      v232 = v189;
      v233 = v190;
      sub_10026423C(2, &v231);
      sub_10026423C(2, &v231);
      v234 = sub_10026434C;
      v235 = v199;
      sub_100264250(&v234, &v231, &v232, &v233);
      v234 = sub_10026434C;
      v235 = v200;
      sub_100264250(&v234, &v231, &v232, &v233);
      v234 = sub_10026EF2C;
      v235 = v201;
      sub_100264250(&v234, &v231, &v232, &v233);
      v234 = sub_10026434C;
      v235 = v202;
      sub_100264250(&v234, &v231, &v232, &v233);
      v234 = sub_10026434C;
      v235 = v203;
      sub_100264250(&v234, &v231, &v232, &v233);
      v234 = sub_10026EBF8;
      v235 = v204;
      sub_100264250(&v234, &v231, &v232, &v233);
      _os_log_impl(&_mh_execute_header, oslog, v207, "#SiriMail UpdateMessageIntent %s %ld messages", buf, 0x16u);
      sub_10026429C(v189);
      sub_10026429C(v190);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v185 = *(v209 + 1984);
    v178 = *(v209 + 1896);
    v179 = *(v209 + 1816);
    v182 = *(v209 + 1768);
    v177 = *(v209 + 1824);
    _objc_release(oslog);
    v180 = *(v177 + 8);
    v180(v178, v179);
    sub_10047E378();

    v181 = sub_10046F6B4();
    v183 = sub_100353058();
    _objc_release(v181);
    memcpy((v209 + 1120), v182, 0x30uLL);
    v184 = sub_10028E57C();
    memcpy((v209 + 1168), v182, 0x30uLL);
    v6 = sub_10028E5B4();
    v186 = sub_10027D364(v185, v183, v184, v6);
    *(v209 + 2016) = v186;
    *(v209 + 1664) = v186;
    _objc_retain(v186);
    v187 = [v186 flagState];
    _objc_release(v186);
    if (v187 != (v208 & 1))
    {
      v7 = *(v209 + 1888);
      v168 = *(v209 + 1816);
      v8 = sub_10046F54C();
      v193(v7, v8, v168);
      v169 = swift_allocObject();
      *(v169 + 16) = v208 & 1;
      log = Logger.logObject.getter();
      v176 = static os_log_type_t.info.getter();
      v171 = swift_allocObject();
      *(v171 + 16) = 32;
      v172 = swift_allocObject();
      *(v172 + 16) = 8;
      v170 = swift_allocObject();
      *(v170 + 16) = sub_10047E36C;
      *(v170 + 24) = v169;
      v173 = swift_allocObject();
      *(v173 + 16) = sub_10026EE84;
      *(v173 + 24) = v170;
      _allocateUninitializedArray<A>(_:)();
      v174 = v9;

      *v174 = sub_10026434C;
      v174[1] = v171;

      v174[2] = sub_10026434C;
      v174[3] = v172;

      v174[4] = sub_10026EF2C;
      v174[5] = v173;
      sub_1002612B0();

      if (os_log_type_enabled(log, v176))
      {
        v165 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v166 = sub_1002641E8(0);
        v167 = sub_1002641E8(1);
        v226 = v165;
        v227 = v166;
        v228 = v167;
        sub_10026423C(2, &v226);
        sub_10026423C(1, &v226);
        v229 = sub_10026434C;
        v230 = v171;
        sub_100264250(&v229, &v226, &v227, &v228);
        v229 = sub_10026434C;
        v230 = v172;
        sub_100264250(&v229, &v226, &v227, &v228);
        v229 = sub_10026EF2C;
        v230 = v173;
        sub_100264250(&v229, &v226, &v227, &v228);
        _os_log_impl(&_mh_execute_header, log, v176, "#SiriMail UpdateMessageIntent %s messages", v165, 0xCu);
        sub_10026429C(v166);
        sub_10026429C(v167);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      *(v209 + 2024) = 0;
      v162 = *(v209 + 1888);
      v163 = *(v209 + 1816);
      _objc_release(log);
      v180(v162, v163);
      *(v209 + 144) = *(v209 + 1488);
      *(v209 + 184) = v209 + 1456;
      *(v209 + 152) = sub_100478FCC;
      v164 = swift_continuation_init();
      *(v209 + 616) = sub_10025C9B0(&unk_1006D7CE0);
      *(v209 + 592) = v164;
      *(v209 + 560) = _NSConcreteStackBlock;
      *(v209 + 568) = 1107296256;
      *(v209 + 572) = 0;
      *(v209 + 576) = sub_10027D41C;
      *(v209 + 584) = &unk_100662498;
      [v186 performInteractionWithCompletion:?];
      v10 = v209 + 144;

      return _swift_continuation_await(v10);
    }

    v11 = *(v209 + 1880);
    v158 = *(v209 + 1816);
    v12 = sub_10046F54C();
    v193(v11, v12, v158);
    v160 = Logger.logObject.getter();
    v159 = static os_log_type_t.info.getter();
    v161 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v160, v159))
    {
      v154 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v155 = sub_1002641E8(0);
      v156 = sub_1002641E8(0);
      *(v209 + 1672) = v154;
      *(v209 + 1680) = v155;
      *(v209 + 1688) = v156;
      sub_10026423C(0, (v209 + 1672));
      sub_10026423C(0, (v209 + 1672));
      *(v209 + 1696) = v161;
      v157 = swift_task_alloc();
      v157[2] = v209 + 1672;
      v157[3] = v209 + 1680;
      v157[4] = v209 + 1688;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v160, v159, "#SiriMail UpdateMessageIntent no op", v154, 2u);
      sub_10026429C(v155);
      sub_10026429C(v156);
      UnsafeMutablePointer.deallocate()();
    }

    v152 = *(v209 + 1880);
    v153 = *(v209 + 1816);
    _objc_release(v160);
    v180(v152, v153);
    _objc_release(*(v209 + 2016));
  }

  v151 = sub_10046F118();
  *(v209 + 1435) = v151;
  if (v151 != 2)
  {
    v13 = *(v209 + 1872);
    v140 = *(v209 + 1816);
    v142 = *(v209 + 1768);
    v139 = *(v209 + 1824);
    *(v209 + 2088) = v151 & 1;
    v14 = sub_10046F54C();
    v141 = *(v139 + 16);
    v141(v13, v14, v140);
    sub_1003422F0(v142, (v209 + 880));
    v143 = swift_allocObject();
    memcpy((v143 + 16), v142, 0x30uLL);
    v149 = Logger.logObject.getter();
    v150 = static os_log_type_t.info.getter();
    v145 = swift_allocObject();
    *(v145 + 16) = 0;
    v146 = swift_allocObject();
    *(v146 + 16) = 8;
    v144 = swift_allocObject();
    *(v144 + 16) = sub_10047D9B0;
    *(v144 + 24) = v143;
    v147 = swift_allocObject();
    *(v147 + 16) = sub_10026E818;
    *(v147 + 24) = v144;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v148 = v15;

    *v148 = sub_10026434C;
    v148[1] = v145;

    v148[2] = sub_10026434C;
    v148[3] = v146;

    v148[4] = sub_10026EBF8;
    v148[5] = v147;
    sub_1002612B0();

    if (os_log_type_enabled(v149, v150))
    {
      v136 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v137 = sub_1002641E8(0);
      v138 = sub_1002641E8(0);
      v221 = v136;
      v222 = v137;
      v223 = v138;
      sub_10026423C(0, &v221);
      sub_10026423C(1, &v221);
      v224 = sub_10026434C;
      v225 = v145;
      sub_100264250(&v224, &v221, &v222, &v223);
      v224 = sub_10026434C;
      v225 = v146;
      sub_100264250(&v224, &v221, &v222, &v223);
      v224 = sub_10026EBF8;
      v225 = v147;
      sub_100264250(&v224, &v221, &v222, &v223);
      _os_log_impl(&_mh_execute_header, v149, v150, "#SiriMail UpdateMessageIntent junking %ld messages", v136, 0xCu);
      sub_10026429C(v137);
      sub_10026429C(v138);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v133 = *(v209 + 1984);
    v126 = *(v209 + 1872);
    v127 = *(v209 + 1816);
    v130 = *(v209 + 1768);
    v125 = *(v209 + 1824);
    _objc_release(v149);
    v128 = *(v125 + 8);
    v128(v126, v127);
    sub_10047E290();

    v129 = sub_10046F6B4();
    v131 = sub_100353058();
    _objc_release(v129);
    memcpy((v209 + 928), v130, 0x30uLL);
    v132 = sub_10028E57C();
    memcpy((v209 + 976), v130, 0x30uLL);
    v16 = sub_10028E5B4();
    v134 = sub_10027D364(v133, v131, v132, v16);
    *(v209 + 2032) = v134;
    *(v209 + 1616) = v134;
    _objc_retain(v134);
    v135 = [v134 flagState];
    _objc_release(v134);
    if (v135 != (v151 & 1))
    {
      v17 = *(v209 + 1864);
      v110 = *(v209 + 1816);
      v111 = *(v209 + 1768);
      v18 = sub_10046F54C();
      v141(v17, v18, v110);
      v112 = swift_allocObject();
      *(v112 + 16) = v151 & 1;
      sub_1003422F0(v111, (v209 + 1024));
      v114 = swift_allocObject();
      memcpy((v114 + 16), v111, 0x30uLL);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.info.getter();
      v116 = swift_allocObject();
      *(v116 + 16) = 32;
      v117 = swift_allocObject();
      *(v117 + 16) = 8;
      v113 = swift_allocObject();
      *(v113 + 16) = sub_10047E2F4;
      *(v113 + 24) = v112;
      v118 = swift_allocObject();
      *(v118 + 16) = sub_10026EE84;
      *(v118 + 24) = v113;
      v119 = swift_allocObject();
      *(v119 + 16) = 0;
      v120 = swift_allocObject();
      *(v120 + 16) = 8;
      v115 = swift_allocObject();
      *(v115 + 16) = sub_10047D9B0;
      *(v115 + 24) = v114;
      v121 = swift_allocObject();
      *(v121 + 16) = sub_10026E818;
      *(v121 + 24) = v115;
      _allocateUninitializedArray<A>(_:)();
      v122 = v19;

      *v122 = sub_10026434C;
      v122[1] = v116;

      v122[2] = sub_10026434C;
      v122[3] = v117;

      v122[4] = sub_10026EF2C;
      v122[5] = v118;

      v122[6] = sub_10026434C;
      v122[7] = v119;

      v122[8] = sub_10026434C;
      v122[9] = v120;

      v122[10] = sub_10026EBF8;
      v122[11] = v121;
      sub_1002612B0();

      if (os_log_type_enabled(v123, v124))
      {
        v107 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v108 = sub_1002641E8(0);
        v109 = sub_1002641E8(1);
        v216 = v107;
        v217 = v108;
        v218 = v109;
        sub_10026423C(2, &v216);
        sub_10026423C(2, &v216);
        v219 = sub_10026434C;
        v220 = v116;
        sub_100264250(&v219, &v216, &v217, &v218);
        v219 = sub_10026434C;
        v220 = v117;
        sub_100264250(&v219, &v216, &v217, &v218);
        v219 = sub_10026EF2C;
        v220 = v118;
        sub_100264250(&v219, &v216, &v217, &v218);
        v219 = sub_10026434C;
        v220 = v119;
        sub_100264250(&v219, &v216, &v217, &v218);
        v219 = sub_10026434C;
        v220 = v120;
        sub_100264250(&v219, &v216, &v217, &v218);
        v219 = sub_10026EBF8;
        v220 = v121;
        sub_100264250(&v219, &v216, &v217, &v218);
        _os_log_impl(&_mh_execute_header, v123, v124, "#SiriMail UpdateMessageIntent %s %ld messages", v107, 0x16u);
        sub_10026429C(v108);
        sub_10026429C(v109);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      *(v209 + 2040) = 0;
      v104 = *(v209 + 1864);
      v105 = *(v209 + 1816);
      _objc_release(v123);
      v128(v104, v105);
      *(v209 + 80) = *(v209 + 1488);
      *(v209 + 120) = v209 + 1440;
      *(v209 + 88) = sub_10047B9C0;
      v106 = swift_continuation_init();
      *(v209 + 552) = sub_10025C9B0(&unk_1006D7CE0);
      *(v209 + 528) = v106;
      *(v209 + 496) = _NSConcreteStackBlock;
      *(v209 + 504) = 1107296256;
      *(v209 + 508) = 0;
      *(v209 + 512) = sub_10027D41C;
      *(v209 + 520) = &unk_100662218;
      [v134 performInteractionWithCompletion:?];
      v10 = v209 + 80;

      return _swift_continuation_await(v10);
    }

    v20 = *(v209 + 1856);
    v100 = *(v209 + 1816);
    v21 = sub_10046F54C();
    v141(v20, v21, v100);
    v102 = Logger.logObject.getter();
    v101 = static os_log_type_t.info.getter();
    v103 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v102, v101))
    {
      v96 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v97 = sub_1002641E8(0);
      v98 = sub_1002641E8(0);
      *(v209 + 1624) = v96;
      *(v209 + 1632) = v97;
      *(v209 + 1640) = v98;
      sub_10026423C(0, (v209 + 1624));
      sub_10026423C(0, (v209 + 1624));
      *(v209 + 1648) = v103;
      v99 = swift_task_alloc();
      v99[2] = v209 + 1624;
      v99[3] = v209 + 1632;
      v99[4] = v209 + 1640;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v102, v101, "#SiriMail UpdateMessageIntent no op", v96, 2u);
      sub_10026429C(v97);
      sub_10026429C(v98);
      UnsafeMutablePointer.deallocate()();
    }

    v94 = *(v209 + 1856);
    v95 = *(v209 + 1816);
    _objc_release(v102);
    v128(v94, v95);
    _objc_release(*(v209 + 2032));
  }

  sub_10043CE50();
  if (*(v209 + 360))
  {
    v22 = *(v209 + 1848);
    v83 = *(v209 + 1816);
    v85 = *(v209 + 1768);
    v82 = *(v209 + 1824);
    memcpy((v209 + 272), (v209 + 352), 0x50uLL);
    v23 = sub_10046F54C();
    v84 = *(v82 + 16);
    v84(v22, v23, v83);
    sub_1003422F0(v85, (v209 + 736));
    v86 = swift_allocObject();
    memcpy((v86 + 16), v85, 0x30uLL);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.info.getter();
    v88 = swift_allocObject();
    *(v88 + 16) = 0;
    v89 = swift_allocObject();
    *(v89 + 16) = 8;
    v87 = swift_allocObject();
    *(v87 + 16) = sub_10047D9B0;
    *(v87 + 24) = v86;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_10026E818;
    *(v90 + 24) = v87;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v91 = v24;

    *v91 = sub_10026434C;
    v91[1] = v88;

    v91[2] = sub_10026434C;
    v91[3] = v89;

    v91[4] = sub_10026EBF8;
    v91[5] = v90;
    sub_1002612B0();

    if (os_log_type_enabled(v92, v93))
    {
      v79 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v80 = sub_1002641E8(0);
      v81 = sub_1002641E8(0);
      v211 = v79;
      v212 = v80;
      v213 = v81;
      sub_10026423C(0, &v211);
      sub_10026423C(1, &v211);
      v214 = sub_10026434C;
      v215 = v88;
      sub_100264250(&v214, &v211, &v212, &v213);
      v214 = sub_10026434C;
      v215 = v89;
      sub_100264250(&v214, &v211, &v212, &v213);
      v214 = sub_10026EBF8;
      v215 = v90;
      sub_100264250(&v214, &v211, &v212, &v213);
      _os_log_impl(&_mh_execute_header, v92, v93, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", v79, 0xCu);
      sub_10026429C(v80);
      sub_10026429C(v81);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v72 = *(v209 + 1984);
    v65 = *(v209 + 1848);
    v66 = *(v209 + 1816);
    v78 = *(v209 + 1784);
    v77 = *(v209 + 1776);
    v69 = *(v209 + 1768);
    v64 = *(v209 + 1824);
    v76 = *(v209 + 1792);
    _objc_release(v92);
    v67 = *(v64 + 8);
    v67(v65, v66);
    sub_1002BCF88();

    v68 = sub_10046F6B4();
    v70 = sub_100353058();
    _objc_release(v68);
    memcpy((v209 + 784), v69, 0x30uLL);
    v71 = sub_10028E57C();
    memcpy((v209 + 832), v69, 0x30uLL);
    v25 = sub_10028E5B4();
    v73 = sub_10027D364(v72, v70, v71, v25);
    *(v209 + 2048) = v73;
    *(v209 + 1520) = v73;
    v74 = *(v209 + 272);
    v75 = *(v209 + 280);
    *(v209 + 2056) = v75;

    *(v209 + 1408) = v74;
    *(v209 + 1416) = v75;
    URL.init(string:)();
    if ((*(v76 + 48))(v77, 1, v78) != 1)
    {
      v59 = *(v209 + 1808);
      v60 = *(v209 + 1800);
      v58 = *(v209 + 1784);
      v57 = *(v209 + 1792);
      (*(v57 + 32))();
      sub_100365480();
      (*(v57 + 16))(v60, v59, v58);
      v61 = sub_10047D9B8(v60);
      *(v209 + 2064) = v61;
      *(v209 + 1560) = v61;
      v62 = sub_10046F6B4();
      v63 = [v62 daemonInterface];
      _objc_release(v62);
      if (!v63)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v52 = *(v209 + 1840);
      v53 = *(v209 + 1816);
      v49 = [v63 mailboxRepository];
      _objc_release(v63);
      v50 = [v49 mailboxForObjectID:v61];
      *(v209 + 2072) = v50;
      _objc_release(v49);
      *(v209 + 1568) = v50;
      v51 = [v50 result];
      [v73 setTargetMailbox:?];
      _objc_release(v51);
      _objc_retain(v73);
      sub_10046F6B4();
      [v73 setDelegate:?];
      swift_unknownObjectRelease();
      _objc_release(v73);
      v26 = Logger.appIntentLogger.unsafeMutableAddressor();
      v84(v52, v26, v53);
      v55 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();
      v56 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v55, v54))
      {
        v45 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v46 = sub_1002641E8(0);
        v47 = sub_1002641E8(0);
        *(v209 + 1584) = v45;
        *(v209 + 1592) = v46;
        *(v209 + 1600) = v47;
        sub_10026423C(0, (v209 + 1584));
        sub_10026423C(0, (v209 + 1584));
        *(v209 + 1608) = v56;
        v48 = swift_task_alloc();
        v48[2] = v209 + 1584;
        v48[3] = v209 + 1592;
        v48[4] = v209 + 1600;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v55, v54, "#SiriMail UpdateMessageIntent moving message to mailbox", v45, 2u);
        sub_10026429C(v46);
        sub_10026429C(v47);
        UnsafeMutablePointer.deallocate()();
      }

      *(v209 + 2080) = 0;
      v42 = *(v209 + 1840);
      v43 = *(v209 + 1816);
      _objc_release(v55);
      v67(v42, v43);
      *(v209 + 16) = *(v209 + 1488);
      *(v209 + 56) = v209 + 1424;
      *(v209 + 24) = sub_10047CF88;
      v44 = swift_continuation_init();
      *(v209 + 488) = sub_10025C9B0(&unk_1006D7CE0);
      *(v209 + 464) = v44;
      *(v209 + 432) = _NSConcreteStackBlock;
      *(v209 + 440) = 1107296256;
      *(v209 + 444) = 0;
      *(v209 + 448) = sub_10027D41C;
      *(v209 + 456) = &unk_100661F98;
      [v73 performInteractionWithCompletion:?];
      v10 = v209 + 16;

      return _swift_continuation_await(v10);
    }

    v28 = *(v209 + 1832);
    v38 = *(v209 + 1816);
    sub_100286140(*(v209 + 1776));
    v29 = Logger.appIntentLogger.unsafeMutableAddressor();
    v84(v28, v29, v38);
    v40 = Logger.logObject.getter();
    v39 = static os_log_type_t.info.getter();
    v41 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v40, v39))
    {
      v34 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v35 = sub_1002641E8(0);
      v36 = sub_1002641E8(0);
      *(v209 + 1528) = v34;
      *(v209 + 1536) = v35;
      *(v209 + 1544) = v36;
      sub_10026423C(0, (v209 + 1528));
      sub_10026423C(0, (v209 + 1528));
      *(v209 + 1552) = v41;
      v37 = swift_task_alloc();
      v37[2] = v209 + 1528;
      v37[3] = v209 + 1536;
      v37[4] = v209 + 1544;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v40, v39, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v34, 2u);
      sub_10026429C(v35);
      sub_10026429C(v36);
      UnsafeMutablePointer.deallocate()();
    }

    v31 = *(v209 + 1832);
    v32 = *(v209 + 1816);
    _objc_release(v40);
    v67(v31, v32);
    v33 = *(v209 + 2048);

    _objc_release(v33);
    sub_10027D728(v209 + 272);
  }

  else
  {
    sub_10027D594(v209 + 352);
  }

  *(v209 + 1512) = sub_10043CEA4();
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D124();
  static IntentResult.result<A>(value:)();
  sub_100264880();

  v30 = *(*(v209 + 1488) + 8);

  return v30();
}

uint64_t sub_100478FCC()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_1004790EC, v1);
}

uint64_t sub_1004790EC()
{
  v160 = v0;
  v1 = *(v0 + 2024);
  v144 = *(v0 + 1434);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1456));
  *(v0 + 1704) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v144 & 1;
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {
  }

  sub_100264880();
  _objc_release(*(v143 + 2016));
  v2 = sub_10046F118();
  v142 = v2;
  *(v143 + 1435) = v2;
  if (v2 != 2)
  {
    v3 = *(v143 + 1872);
    v131 = *(v143 + 1816);
    __src = *(v143 + 1768);
    v130 = *(v143 + 1824);
    *(v143 + 2088) = v2 & 1;
    v4 = sub_10046F54C();
    v132 = *(v130 + 16);
    v132(v3, v4, v131);
    sub_1003422F0(__src, (v143 + 880));
    v134 = swift_allocObject();
    memcpy((v134 + 16), __src, 0x30uLL);
    oslog = Logger.logObject.getter();
    v141 = static os_log_type_t.info.getter();
    v136 = swift_allocObject();
    *(v136 + 16) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = 8;
    v135 = swift_allocObject();
    *(v135 + 16) = sub_10047D9B0;
    *(v135 + 24) = v134;
    v138 = swift_allocObject();
    *(v138 + 16) = sub_10026E818;
    *(v138 + 24) = v135;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v139 = v5;

    *v139 = sub_10026434C;
    v139[1] = v136;

    v139[2] = sub_10026434C;
    v139[3] = v137;

    v139[4] = sub_10026EBF8;
    v139[5] = v138;
    sub_1002612B0();

    if (os_log_type_enabled(oslog, v141))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v128 = sub_1002641E8(0);
      v129 = sub_1002641E8(0);
      v155 = buf;
      v156 = v128;
      v157 = v129;
      sub_10026423C(0, &v155);
      sub_10026423C(1, &v155);
      v158 = sub_10026434C;
      v159 = v136;
      sub_100264250(&v158, &v155, &v156, &v157);
      v158 = sub_10026434C;
      v159 = v137;
      sub_100264250(&v158, &v155, &v156, &v157);
      v158 = sub_10026EBF8;
      v159 = v138;
      sub_100264250(&v158, &v155, &v156, &v157);
      _os_log_impl(&_mh_execute_header, oslog, v141, "#SiriMail UpdateMessageIntent junking %ld messages", buf, 0xCu);
      sub_10026429C(v128);
      sub_10026429C(v129);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v124 = *(v143 + 1984);
    v117 = *(v143 + 1872);
    v118 = *(v143 + 1816);
    v121 = *(v143 + 1768);
    v116 = *(v143 + 1824);
    _objc_release(oslog);
    v119 = *(v116 + 8);
    v119(v117, v118);
    sub_10047E290();

    v120 = sub_10046F6B4();
    v122 = sub_100353058();
    _objc_release(v120);
    memcpy((v143 + 928), v121, 0x30uLL);
    v123 = sub_10028E57C();
    memcpy((v143 + 976), v121, 0x30uLL);
    v6 = sub_10028E5B4();
    v125 = sub_10027D364(v124, v122, v123, v6);
    *(v143 + 2032) = v125;
    *(v143 + 1616) = v125;
    _objc_retain(v125);
    v126 = [v125 flagState];
    _objc_release(v125);
    if (v126 != (v142 & 1))
    {
      v7 = *(v143 + 1864);
      v101 = *(v143 + 1816);
      v102 = *(v143 + 1768);
      v8 = sub_10046F54C();
      v132(v7, v8, v101);
      v103 = swift_allocObject();
      *(v103 + 16) = v142 & 1;
      sub_1003422F0(v102, (v143 + 1024));
      v105 = swift_allocObject();
      memcpy((v105 + 16), v102, 0x30uLL);
      log = Logger.logObject.getter();
      v115 = static os_log_type_t.info.getter();
      v107 = swift_allocObject();
      *(v107 + 16) = 32;
      v108 = swift_allocObject();
      *(v108 + 16) = 8;
      v104 = swift_allocObject();
      *(v104 + 16) = sub_10047E2F4;
      *(v104 + 24) = v103;
      v109 = swift_allocObject();
      *(v109 + 16) = sub_10026EE84;
      *(v109 + 24) = v104;
      v110 = swift_allocObject();
      *(v110 + 16) = 0;
      v111 = swift_allocObject();
      *(v111 + 16) = 8;
      v106 = swift_allocObject();
      *(v106 + 16) = sub_10047D9B0;
      *(v106 + 24) = v105;
      v112 = swift_allocObject();
      *(v112 + 16) = sub_10026E818;
      *(v112 + 24) = v106;
      _allocateUninitializedArray<A>(_:)();
      v113 = v9;

      *v113 = sub_10026434C;
      v113[1] = v107;

      v113[2] = sub_10026434C;
      v113[3] = v108;

      v113[4] = sub_10026EF2C;
      v113[5] = v109;

      v113[6] = sub_10026434C;
      v113[7] = v110;

      v113[8] = sub_10026434C;
      v113[9] = v111;

      v113[10] = sub_10026EBF8;
      v113[11] = v112;
      sub_1002612B0();

      if (os_log_type_enabled(log, v115))
      {
        v98 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v99 = sub_1002641E8(0);
        v100 = sub_1002641E8(1);
        v150 = v98;
        v151 = v99;
        v152 = v100;
        sub_10026423C(2, &v150);
        sub_10026423C(2, &v150);
        v153 = sub_10026434C;
        v154 = v107;
        sub_100264250(&v153, &v150, &v151, &v152);
        v153 = sub_10026434C;
        v154 = v108;
        sub_100264250(&v153, &v150, &v151, &v152);
        v153 = sub_10026EF2C;
        v154 = v109;
        sub_100264250(&v153, &v150, &v151, &v152);
        v153 = sub_10026434C;
        v154 = v110;
        sub_100264250(&v153, &v150, &v151, &v152);
        v153 = sub_10026434C;
        v154 = v111;
        sub_100264250(&v153, &v150, &v151, &v152);
        v153 = sub_10026EBF8;
        v154 = v112;
        sub_100264250(&v153, &v150, &v151, &v152);
        _os_log_impl(&_mh_execute_header, log, v115, "#SiriMail UpdateMessageIntent %s %ld messages", v98, 0x16u);
        sub_10026429C(v99);
        sub_10026429C(v100);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      *(v143 + 2040) = 0;
      v95 = *(v143 + 1864);
      v96 = *(v143 + 1816);
      _objc_release(log);
      v119(v95, v96);
      *(v143 + 80) = *(v143 + 1488);
      *(v143 + 120) = v143 + 1440;
      *(v143 + 88) = sub_10047B9C0;
      v97 = swift_continuation_init();
      *(v143 + 552) = sub_10025C9B0(&unk_1006D7CE0);
      *(v143 + 528) = v97;
      *(v143 + 496) = _NSConcreteStackBlock;
      *(v143 + 504) = 1107296256;
      *(v143 + 508) = 0;
      *(v143 + 512) = sub_10027D41C;
      *(v143 + 520) = &unk_100662218;
      [v125 performInteractionWithCompletion:?];
      v10 = v143 + 80;

      return _swift_continuation_await(v10);
    }

    v11 = *(v143 + 1856);
    v91 = *(v143 + 1816);
    v12 = sub_10046F54C();
    v132(v11, v12, v91);
    v93 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    v94 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v93, v92))
    {
      v87 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v88 = sub_1002641E8(0);
      v89 = sub_1002641E8(0);
      *(v143 + 1624) = v87;
      *(v143 + 1632) = v88;
      *(v143 + 1640) = v89;
      sub_10026423C(0, (v143 + 1624));
      sub_10026423C(0, (v143 + 1624));
      *(v143 + 1648) = v94;
      v90 = swift_task_alloc();
      v90[2] = v143 + 1624;
      v90[3] = v143 + 1632;
      v90[4] = v143 + 1640;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v93, v92, "#SiriMail UpdateMessageIntent no op", v87, 2u);
      sub_10026429C(v88);
      sub_10026429C(v89);
      UnsafeMutablePointer.deallocate()();
    }

    v85 = *(v143 + 1856);
    v86 = *(v143 + 1816);
    _objc_release(v93);
    v119(v85, v86);
    _objc_release(*(v143 + 2032));
  }

  sub_10043CE50();
  if (*(v143 + 360))
  {
    v13 = *(v143 + 1848);
    v74 = *(v143 + 1816);
    v76 = *(v143 + 1768);
    v73 = *(v143 + 1824);
    memcpy((v143 + 272), (v143 + 352), 0x50uLL);
    v14 = sub_10046F54C();
    v75 = *(v73 + 16);
    v75(v13, v14, v74);
    sub_1003422F0(v76, (v143 + 736));
    v77 = swift_allocObject();
    memcpy((v77 + 16), v76, 0x30uLL);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    v79 = swift_allocObject();
    *(v79 + 16) = 0;
    v80 = swift_allocObject();
    *(v80 + 16) = 8;
    v78 = swift_allocObject();
    *(v78 + 16) = sub_10047D9B0;
    *(v78 + 24) = v77;
    v81 = swift_allocObject();
    *(v81 + 16) = sub_10026E818;
    *(v81 + 24) = v78;
    sub_10025C9B0(&unk_1006D7720);
    _allocateUninitializedArray<A>(_:)();
    v82 = v15;

    *v82 = sub_10026434C;
    v82[1] = v79;

    v82[2] = sub_10026434C;
    v82[3] = v80;

    v82[4] = sub_10026EBF8;
    v82[5] = v81;
    sub_1002612B0();

    if (os_log_type_enabled(v83, v84))
    {
      v70 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v71 = sub_1002641E8(0);
      v72 = sub_1002641E8(0);
      v145 = v70;
      v146 = v71;
      v147 = v72;
      sub_10026423C(0, &v145);
      sub_10026423C(1, &v145);
      v148 = sub_10026434C;
      v149 = v79;
      sub_100264250(&v148, &v145, &v146, &v147);
      v148 = sub_10026434C;
      v149 = v80;
      sub_100264250(&v148, &v145, &v146, &v147);
      v148 = sub_10026EBF8;
      v149 = v81;
      sub_100264250(&v148, &v145, &v146, &v147);
      _os_log_impl(&_mh_execute_header, v83, v84, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", v70, 0xCu);
      sub_10026429C(v71);
      sub_10026429C(v72);
      UnsafeMutablePointer.deallocate()();
    }

    else
    {
    }

    v63 = *(v143 + 1984);
    v56 = *(v143 + 1848);
    v57 = *(v143 + 1816);
    v69 = *(v143 + 1784);
    v68 = *(v143 + 1776);
    v60 = *(v143 + 1768);
    v55 = *(v143 + 1824);
    v67 = *(v143 + 1792);
    _objc_release(v83);
    v58 = *(v55 + 8);
    v58(v56, v57);
    sub_1002BCF88();

    v59 = sub_10046F6B4();
    v61 = sub_100353058();
    _objc_release(v59);
    memcpy((v143 + 784), v60, 0x30uLL);
    v62 = sub_10028E57C();
    memcpy((v143 + 832), v60, 0x30uLL);
    v16 = sub_10028E5B4();
    v64 = sub_10027D364(v63, v61, v62, v16);
    *(v143 + 2048) = v64;
    *(v143 + 1520) = v64;
    v65 = *(v143 + 272);
    v66 = *(v143 + 280);
    *(v143 + 2056) = v66;

    *(v143 + 1408) = v65;
    *(v143 + 1416) = v66;
    URL.init(string:)();
    if ((*(v67 + 48))(v68, 1, v69) != 1)
    {
      v50 = *(v143 + 1808);
      v51 = *(v143 + 1800);
      v49 = *(v143 + 1784);
      v48 = *(v143 + 1792);
      (*(v48 + 32))();
      sub_100365480();
      (*(v48 + 16))(v51, v50, v49);
      v52 = sub_10047D9B8(v51);
      *(v143 + 2064) = v52;
      *(v143 + 1560) = v52;
      v53 = sub_10046F6B4();
      v54 = [v53 daemonInterface];
      _objc_release(v53);
      if (!v54)
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v43 = *(v143 + 1840);
      v44 = *(v143 + 1816);
      v40 = [v54 mailboxRepository];
      _objc_release(v54);
      v41 = [v40 mailboxForObjectID:v52];
      *(v143 + 2072) = v41;
      _objc_release(v40);
      *(v143 + 1568) = v41;
      v42 = [v41 result];
      [v64 setTargetMailbox:?];
      _objc_release(v42);
      _objc_retain(v64);
      sub_10046F6B4();
      [v64 setDelegate:?];
      swift_unknownObjectRelease();
      _objc_release(v64);
      v17 = Logger.appIntentLogger.unsafeMutableAddressor();
      v75(v43, v17, v44);
      v46 = Logger.logObject.getter();
      v45 = static os_log_type_t.info.getter();
      v47 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(v46, v45))
      {
        v36 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v37 = sub_1002641E8(0);
        v38 = sub_1002641E8(0);
        *(v143 + 1584) = v36;
        *(v143 + 1592) = v37;
        *(v143 + 1600) = v38;
        sub_10026423C(0, (v143 + 1584));
        sub_10026423C(0, (v143 + 1584));
        *(v143 + 1608) = v47;
        v39 = swift_task_alloc();
        v39[2] = v143 + 1584;
        v39[3] = v143 + 1592;
        v39[4] = v143 + 1600;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();

        _os_log_impl(&_mh_execute_header, v46, v45, "#SiriMail UpdateMessageIntent moving message to mailbox", v36, 2u);
        sub_10026429C(v37);
        sub_10026429C(v38);
        UnsafeMutablePointer.deallocate()();
      }

      *(v143 + 2080) = 0;
      v33 = *(v143 + 1840);
      v34 = *(v143 + 1816);
      _objc_release(v46);
      v58(v33, v34);
      *(v143 + 16) = *(v143 + 1488);
      *(v143 + 56) = v143 + 1424;
      *(v143 + 24) = sub_10047CF88;
      v35 = swift_continuation_init();
      *(v143 + 488) = sub_10025C9B0(&unk_1006D7CE0);
      *(v143 + 464) = v35;
      *(v143 + 432) = _NSConcreteStackBlock;
      *(v143 + 440) = 1107296256;
      *(v143 + 444) = 0;
      *(v143 + 448) = sub_10027D41C;
      *(v143 + 456) = &unk_100661F98;
      [v64 performInteractionWithCompletion:?];
      v10 = v143 + 16;

      return _swift_continuation_await(v10);
    }

    v19 = *(v143 + 1832);
    v29 = *(v143 + 1816);
    sub_100286140(*(v143 + 1776));
    v20 = Logger.appIntentLogger.unsafeMutableAddressor();
    v75(v19, v20, v29);
    v31 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    v32 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v31, v30))
    {
      v25 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v26 = sub_1002641E8(0);
      v27 = sub_1002641E8(0);
      *(v143 + 1528) = v25;
      *(v143 + 1536) = v26;
      *(v143 + 1544) = v27;
      sub_10026423C(0, (v143 + 1528));
      sub_10026423C(0, (v143 + 1528));
      *(v143 + 1552) = v32;
      v28 = swift_task_alloc();
      v28[2] = v143 + 1528;
      v28[3] = v143 + 1536;
      v28[4] = v143 + 1544;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v31, v30, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v25, 2u);
      sub_10026429C(v26);
      sub_10026429C(v27);
      UnsafeMutablePointer.deallocate()();
    }

    v22 = *(v143 + 1832);
    v23 = *(v143 + 1816);
    _objc_release(v31);
    v58(v22, v23);
    v24 = *(v143 + 2048);

    _objc_release(v24);
    sub_10027D728(v143 + 272);
  }

  else
  {
    sub_10027D594(v143 + 352);
  }

  *(v143 + 1512) = sub_10043CEA4();
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D124();
  static IntentResult.result<A>(value:)();
  sub_100264880();

  v21 = *(*(v143 + 1488) + 8);

  return v21();
}

uint64_t sub_10047B9C0()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_10047BAE0, v1);
}

uint64_t sub_10047BAE0()
{
  v81 = v0;
  v1 = *(v0 + 2040);
  v75 = *(v0 + 1435);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1440));
  *(v0 + 1656) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v75 & 1;
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {
  }

  sub_100264880();
  _objc_release(*(v74 + 2032));
  sub_10043CE50();
  if (!*(v74 + 360))
  {
    sub_10027D594(v74 + 352);
LABEL_19:
    *(v74 + 1512) = sub_10043CEA4();
    sub_10025C9B0(&unk_1006D6FF0);
    sub_10027D124();
    static IntentResult.result<A>(value:)();
    sub_100264880();

    v10 = *(*(v74 + 1488) + 8);

    return v10();
  }

  v2 = *(v74 + 1848);
  v63 = *(v74 + 1816);
  __src = *(v74 + 1768);
  v62 = *(v74 + 1824);
  memcpy((v74 + 272), (v74 + 352), 0x50uLL);
  v3 = sub_10046F54C();
  v64 = *(v62 + 16);
  v64(v2, v3, v63);
  sub_1003422F0(__src, (v74 + 736));
  v66 = swift_allocObject();
  memcpy((v66 + 16), __src, 0x30uLL);
  oslog = Logger.logObject.getter();
  v73 = static os_log_type_t.info.getter();
  v68 = swift_allocObject();
  *(v68 + 16) = 0;
  v69 = swift_allocObject();
  *(v69 + 16) = 8;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_10047D9B0;
  *(v67 + 24) = v66;
  v70 = swift_allocObject();
  *(v70 + 16) = sub_10026E818;
  *(v70 + 24) = v67;
  sub_10025C9B0(&unk_1006D7720);
  _allocateUninitializedArray<A>(_:)();
  v71 = v4;

  *v71 = sub_10026434C;
  v71[1] = v68;

  v71[2] = sub_10026434C;
  v71[3] = v69;

  v71[4] = sub_10026EBF8;
  v71[5] = v70;
  sub_1002612B0();

  if (os_log_type_enabled(oslog, v73))
  {
    buf = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v60 = sub_1002641E8(0);
    v61 = sub_1002641E8(0);
    v76 = buf;
    v77 = v60;
    v78 = v61;
    sub_10026423C(0, &v76);
    sub_10026423C(1, &v76);
    v79 = sub_10026434C;
    v80 = v68;
    sub_100264250(&v79, &v76, &v77, &v78);
    v79 = sub_10026434C;
    v80 = v69;
    sub_100264250(&v79, &v76, &v77, &v78);
    v79 = sub_10026EBF8;
    v80 = v70;
    sub_100264250(&v79, &v76, &v77, &v78);
    _os_log_impl(&_mh_execute_header, oslog, v73, "#SiriMail UpdateMessageIntent moving %ld messages to mailbox", buf, 0xCu);
    sub_10026429C(v60);
    sub_10026429C(v61);
    UnsafeMutablePointer.deallocate()();
  }

  else
  {
  }

  v52 = *(v74 + 1984);
  v45 = *(v74 + 1848);
  v46 = *(v74 + 1816);
  v58 = *(v74 + 1784);
  v57 = *(v74 + 1776);
  v49 = *(v74 + 1768);
  v44 = *(v74 + 1824);
  v56 = *(v74 + 1792);
  _objc_release(oslog);
  v47 = *(v44 + 8);
  v47(v45, v46);
  sub_1002BCF88();

  v48 = sub_10046F6B4();
  v50 = sub_100353058();
  _objc_release(v48);
  memcpy((v74 + 784), v49, 0x30uLL);
  v51 = sub_10028E57C();
  memcpy((v74 + 832), v49, 0x30uLL);
  v5 = sub_10028E5B4();
  v53 = sub_10027D364(v52, v50, v51, v5);
  *(v74 + 2048) = v53;
  *(v74 + 1520) = v53;
  v54 = *(v74 + 272);
  v55 = *(v74 + 280);
  *(v74 + 2056) = v55;

  *(v74 + 1408) = v54;
  *(v74 + 1416) = v55;
  URL.init(string:)();
  if ((*(v56 + 48))(v57, 1, v58) == 1)
  {
    v8 = *(v74 + 1832);
    v18 = *(v74 + 1816);
    sub_100286140(*(v74 + 1776));
    v9 = Logger.appIntentLogger.unsafeMutableAddressor();
    v64(v8, v9, v18);
    v20 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v20, v19))
    {
      v14 = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v15 = sub_1002641E8(0);
      v16 = sub_1002641E8(0);
      *(v74 + 1528) = v14;
      *(v74 + 1536) = v15;
      *(v74 + 1544) = v16;
      sub_10026423C(0, (v74 + 1528));
      sub_10026423C(0, (v74 + 1528));
      *(v74 + 1552) = v21;
      v17 = swift_task_alloc();
      v17[2] = v74 + 1528;
      v17[3] = v74 + 1536;
      v17[4] = v74 + 1544;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v20, v19, "#SiriMail UpdateMessageIntent failed to build URL from raw ID String, doing nothing", v14, 2u);
      sub_10026429C(v15);
      sub_10026429C(v16);
      UnsafeMutablePointer.deallocate()();
    }

    v11 = *(v74 + 1832);
    v12 = *(v74 + 1816);
    _objc_release(v20);
    v47(v11, v12);
    v13 = *(v74 + 2048);

    _objc_release(v13);
    sub_10027D728(v74 + 272);
    goto LABEL_19;
  }

  v39 = *(v74 + 1808);
  v40 = *(v74 + 1800);
  v38 = *(v74 + 1784);
  v37 = *(v74 + 1792);
  (*(v37 + 32))();
  sub_100365480();
  (*(v37 + 16))(v40, v39, v38);
  v41 = sub_10047D9B8(v40);
  *(v74 + 2064) = v41;
  *(v74 + 1560) = v41;
  v42 = sub_10046F6B4();
  v43 = [v42 daemonInterface];
  _objc_release(v42);
  if (!v43)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v32 = *(v74 + 1840);
  v33 = *(v74 + 1816);
  v29 = [v43 mailboxRepository];
  _objc_release(v43);
  v30 = [v29 mailboxForObjectID:v41];
  *(v74 + 2072) = v30;
  _objc_release(v29);
  *(v74 + 1568) = v30;
  v31 = [v30 result];
  [v53 setTargetMailbox:?];
  _objc_release(v31);
  _objc_retain(v53);
  sub_10046F6B4();
  [v53 setDelegate:?];
  swift_unknownObjectRelease();
  _objc_release(v53);
  v6 = Logger.appIntentLogger.unsafeMutableAddressor();
  v64(v32, v6, v33);
  log = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();
  v36 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(log, v34))
  {
    v25 = static UnsafeMutablePointer.allocate(capacity:)();
    sub_10025C9B0(&qword_1006D7290);
    v26 = sub_1002641E8(0);
    v27 = sub_1002641E8(0);
    *(v74 + 1584) = v25;
    *(v74 + 1592) = v26;
    *(v74 + 1600) = v27;
    sub_10026423C(0, (v74 + 1584));
    sub_10026423C(0, (v74 + 1584));
    *(v74 + 1608) = v36;
    v28 = swift_task_alloc();
    v28[2] = v74 + 1584;
    v28[3] = v74 + 1592;
    v28[4] = v74 + 1600;
    sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();

    _os_log_impl(&_mh_execute_header, log, v34, "#SiriMail UpdateMessageIntent moving message to mailbox", v25, 2u);
    sub_10026429C(v26);
    sub_10026429C(v27);
    UnsafeMutablePointer.deallocate()();
  }

  *(v74 + 2080) = 0;
  v22 = *(v74 + 1840);
  v23 = *(v74 + 1816);
  _objc_release(log);
  v47(v22, v23);
  *(v74 + 16) = *(v74 + 1488);
  *(v74 + 56) = v74 + 1424;
  *(v74 + 24) = sub_10047CF88;
  v24 = swift_continuation_init();
  *(v74 + 488) = sub_10025C9B0(&unk_1006D7CE0);
  *(v74 + 464) = v24;
  *(v74 + 432) = _NSConcreteStackBlock;
  *(v74 + 440) = 1107296256;
  *(v74 + 444) = 0;
  *(v74 + 448) = sub_10027D41C;
  *(v74 + 456) = &unk_100661F98;
  [v53 performInteractionWithCompletion:?];

  return _swift_continuation_await(v74 + 16);
}

uint64_t sub_10047CF88()
{
  v3 = *v0;
  *(*v0 + 1488) = *v0;
  v1 = *(v3 + 1936);

  return _swift_task_switch(sub_10047D0A8, v1);
}

uint64_t sub_10047D0A8()
{
  v1 = *(v0 + 2080);
  *(v0 + 1488) = v0;
  _objc_release(*(v0 + 1424));
  *(v0 + 1576) = sub_10043CEA4();
  *(swift_task_alloc() + 16) = v0 + 272;
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  Sequence.forEach(_:)();
  if (v1)
  {
  }

  v4 = v10[259];
  v5 = v10[258];
  v7 = v10[226];
  v8 = v10[223];
  v6 = v10[224];

  sub_100264880();
  _objc_release(v4);
  _objc_release(v5);
  (*(v6 + 8))(v7, v8);
  v9 = v10[256];

  _objc_release(v9);
  sub_10027D728((v10 + 34));
  v10[189] = sub_10043CEA4();
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D124();
  static IntentResult.result<A>(value:)();
  sub_100264880();

  v2 = *(v10[186] + 8);

  return v2();
}

uint64_t sub_10047D47C()
{
  v1 = *(v0 + 1960);
  *(v0 + 1488) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 1488) + 8);

  return v2();
}

unint64_t sub_10047D62C()
{
  v2 = qword_1006DCC48;
  if (!qword_1006DCC48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10047D6A8()
{
  sub_10043CEA4();
  v1 = Array.count.getter();

  return v1;
}

uint64_t sub_10047D6F8(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("read", 4uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unread", 6uLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10047D7E0(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("flagging", 8uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unflagging", 0xAuLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10047D8C8(char a1)
{
  if (a1)
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("junking", 7uLL, 1)._countAndFlagsBits;
  }

  else
  {
    return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("unjunking", 9uLL, 1)._countAndFlagsBits;
  }
}

uint64_t sub_10047D9F8@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, sizeof(__dst));
  result = sub_10043CEA4();
  *a1 = result;
  return result;
}

void (*sub_10047DA90(void *a1))(uint64_t a1)
{
  v3 = sub_100294700(0x58uLL);
  *a1 = v3;
  memcpy(v3, __src, 0x30uLL);
  v3[10] = sub_10046F61C(v3 + 6);
  return sub_10047DB28;
}

void sub_10047DB28(uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 80))();
  free(v1);
}

uint64_t sub_10047DBAC()
{
  v3[1] = 0;
  v13 = type metadata accessor for AssistantSchema.IntentSchema();
  v8 = *(v13 - 8);
  v9 = v13 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(0);
  v12 = v3 - v4;
  v5 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v10 = v3 - v5;
  v7 = type metadata accessor for AssistantSchema();
  v6 = qword_1006F0488;
  sub_10002094C(v7, qword_1006F0488);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_10047DCEC();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10047DCEC()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("UpdateMailIntent", 0x10uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_10047DDC4()
{
  if (qword_1006D6150 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006F0488);
}

uint64_t sub_10047DE30@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047DDC4();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047DEAC(uint64_t a1)
{
  *(v2 + 64) = v2;
  memcpy((v2 + 16), v1, 0x30uLL);
  v3 = swift_task_alloc();
  *(v5 + 72) = v3;
  *v3 = *(v5 + 64);
  v3[1] = sub_10047DF74;

  return sub_10046F7EC(a1);
}

uint64_t sub_10047DF74()
{
  v2 = *v1;
  *(v2 + 64) = *v1;
  v5 = v2 + 64;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

id sub_10047E174@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v6 = v3;
  v8 = [v2 initWithURL:?];
  _objc_release(v6);
  v4 = type metadata accessor for URL();
  (*(*(v4 - 8) + 8))(a1);
  return v8;
}

unint64_t sub_10047E290()
{
  v2 = qword_1006DCC50;
  if (!qword_1006DCC50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCC50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10047E378()
{
  v2 = qword_1006DCC58;
  if (!qword_1006DCC58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCC58);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10047E448()
{
  v2 = qword_1006DCC60;
  if (!qword_1006DCC60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DCC60);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_10047E524(uint64_t a1)
{
  result = sub_100337D04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10047E580()
{
  v2 = qword_1006DCC70;
  if (!qword_1006DCC70)
  {
    sub_10025CAA4(&unk_1006D6FF0);
    sub_10038F8F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E630()
{
  v2 = qword_1006DCC80;
  if (!qword_1006DCC80)
  {
    sub_10025CAA4(&unk_1006D6FF0);
    sub_10038F98C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E6E0()
{
  v2 = qword_1006DCC90;
  if (!qword_1006DCC90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E774()
{
  v2 = qword_1006DCC98;
  if (!qword_1006DCC98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCC98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_10047E808()
{
  v2 = qword_1006DCCA0;
  if (!qword_1006DCCA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCCA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_10047E92C(uint64_t a1, uint64_t a2)
{
  v100 = a1;
  v101 = a2;
  v77 = sub_10047F8F0;
  v78 = sub_10047F964;
  v79 = sub_10026EE84;
  v80 = sub_10035728C;
  v81 = sub_10026EE84;
  v82 = sub_10026434C;
  v83 = sub_10026434C;
  v84 = sub_10026EF2C;
  v85 = sub_10026434C;
  v86 = sub_10026434C;
  v87 = sub_10026EF2C;
  v88 = "Fatal error";
  v89 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v90 = "MobileMail/ViewIntegration.swift";
  v121 = 0;
  v119 = 0;
  v120 = 0;
  v118 = 0;
  v91 = 0;
  v97 = 0;
  v92 = type metadata accessor for Logger();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v92);
  v96 = &v34 - v95;
  v98 = (*(*(sub_10025C9B0(&qword_1006DCCE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v97);
  v99 = &v34 - v98;
  v102 = type metadata accessor for EntityIdentifier();
  v104 = *(v102 - 8);
  v103 = v102 - 8;
  v105 = v104;
  v107 = *(v104 + 64);
  v106 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v111);
  v108 = &v34 - v106;
  v109 = (v107 + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v2);
  v110 = &v34 - v109;
  v121 = &v34 - v109;
  v119 = v4;
  v120 = v5;
  v118 = v3;
  _objc_retain(v3);
  v112 = [v111 view];
  _objc_release(v111);
  if (v112)
  {
    v76 = v112;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v75 = v76;
  UIView.appEntityIdentifier.getter();
  if ((*(v104 + 48))(v99, 1, v102) == 1)
  {
    sub_10047F7E8(v99);
    _objc_release(v75);
    v36 = 0;
  }

  else
  {
    v50 = v105;
    v53 = *(v104 + 32);
    v52 = v104 + 32;
    v53(v110, v99, v102);
    _objc_release(v75);
    Logger.init()();
    (*(v104 + 16))(v108, v110, v102);
    v51 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v61 = 7;
    v54 = swift_allocObject();
    v53((v54 + v51), v108, v102);

    v60 = 32;
    v6 = swift_allocObject();
    v7 = v54;
    v55 = v6;
    *(v6 + 16) = v77;
    *(v6 + 24) = v7;

    v8 = swift_allocObject();
    v9 = v101;
    v62 = v8;
    *(v8 + 16) = v100;
    *(v8 + 24) = v9;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.info.getter();
    v58 = 17;
    v64 = swift_allocObject();
    v57 = 32;
    *(v64 + 16) = 32;
    v65 = swift_allocObject();
    v59 = 8;
    *(v65 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v55;
    v56 = v10;
    *(v10 + 16) = v78;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v56;
    v66 = v12;
    *(v12 + 16) = v79;
    *(v12 + 24) = v13;
    v67 = swift_allocObject();
    *(v67 + 16) = v57;
    v68 = swift_allocObject();
    *(v68 + 16) = v59;
    v14 = swift_allocObject();
    v15 = v62;
    v63 = v14;
    *(v14 + 16) = v80;
    *(v14 + 24) = v15;
    v16 = swift_allocObject();
    v17 = v63;
    v70 = v16;
    *(v16 + 16) = v81;
    *(v16 + 24) = v17;
    v72 = sub_10025C9B0(&unk_1006D7720);
    v69 = _allocateUninitializedArray<A>(_:)();
    v71 = v18;

    v19 = v64;
    v20 = v71;
    *v71 = v82;
    v20[1] = v19;

    v21 = v65;
    v22 = v71;
    v71[2] = v83;
    v22[3] = v21;

    v23 = v66;
    v24 = v71;
    v71[4] = v84;
    v24[5] = v23;

    v25 = v67;
    v26 = v71;
    v71[6] = v85;
    v26[7] = v25;

    v27 = v68;
    v28 = v71;
    v71[8] = v86;
    v28[9] = v27;

    v29 = v70;
    v30 = v71;
    v71[10] = v87;
    v30[11] = v29;
    sub_1002612B0();

    if (os_log_type_enabled(v73, v74))
    {
      v31 = v91;
      v42 = static UnsafeMutablePointer.allocate(capacity:)();
      v41 = sub_10025C9B0(&qword_1006D7290);
      v43 = sub_1002641E8(0);
      v44 = sub_1002641E8(2);
      v46 = &v117;
      v117 = v42;
      v47 = &v116;
      v116 = v43;
      v48 = &v115;
      v115 = v44;
      v45 = 2;
      sub_10026423C(2, &v117);
      sub_10026423C(v45, v46);
      v113 = v82;
      v114 = v64;
      sub_100264250(&v113, v46, v47, v48);
      v49 = v31;
      if (v31)
      {

        __break(1u);
      }

      else
      {
        v113 = v83;
        v114 = v65;
        sub_100264250(&v113, &v117, &v116, &v115);
        v40 = 0;
        v113 = v84;
        v114 = v66;
        sub_100264250(&v113, &v117, &v116, &v115);
        v39 = 0;
        v113 = v85;
        v114 = v67;
        sub_100264250(&v113, &v117, &v116, &v115);
        v38 = 0;
        v113 = v86;
        v114 = v68;
        sub_100264250(&v113, &v117, &v116, &v115);
        v37 = 0;
        v113 = v87;
        v114 = v70;
        sub_100264250(&v113, &v117, &v116, &v115);
        _os_log_impl(&_mh_execute_header, v73, v74, "#ViewIntegration current view entity: %s, test: %s", v42, 0x16u);
        sub_10026429C(v43);
        sub_10026429C(v44);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v73);
    (*(v93 + 8))(v96, v92);
    EntityIdentifier.identifier.getter();
    v34 = v32;
    v35 = static String.== infix(_:_:)();

    (*(v104 + 8))(v110, v102);
    v36 = v35;
  }

  return v36 & 1;
}

uint64_t sub_10047F7E8(uint64_t a1)
{
  v3 = type metadata accessor for EntityIdentifier();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_10047F8F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EntityIdentifier();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_10047F890(v3, a1);
}

uint64_t sub_10047F964()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for EntityIdentifier();
  v1 = sub_10047F9C0();

  return sub_10026E834(v5, v3, v4, v1);
}

unint64_t sub_10047F9C0()
{
  v2 = qword_1006DCCF0;
  if (!qword_1006DCCF0)
  {
    type metadata accessor for EntityIdentifier();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DCCF0);
    return WitnessTable;
  }

  return v2;
}

id sub_10047FAE0()
{
  sub_1003C8628();
  type metadata accessor for ResourceBundleClass();
  result = sub_1003C868C();
  qword_1006DCCF8 = result;
  return result;
}

uint64_t *sub_10047FB28()
{
  if (qword_1006D6158 != -1)
  {
    swift_once();
  }

  return &qword_1006DCCF8;
}

uint64_t sub_10047FB88()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04A0);
  sub_1000208F4(v1, qword_1006F04A0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-1", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10047FC20()
{
  if (qword_1006D6160 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04A0);
}

uint64_t sub_10047FC8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047FC20();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047FCF0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04B8);
  sub_1000208F4(v1, qword_1006F04B8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-10", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10047FD88()
{
  if (qword_1006D6168 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04B8);
}

uint64_t sub_10047FDF4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047FD88();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047FE58()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04D0);
  sub_1000208F4(v1, qword_1006F04D0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-11", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_10047FEF0()
{
  if (qword_1006D6170 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04D0);
}

uint64_t sub_10047FF5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10047FEF0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_10047FFC0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F04E8);
  sub_1000208F4(v1, qword_1006F04E8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-12", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480058()
{
  if (qword_1006D6178 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F04E8);
}

uint64_t sub_1004800C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480058();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480128()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0500);
  sub_1000208F4(v1, qword_1006F0500);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-13", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004801C0()
{
  if (qword_1006D6180 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0500);
}

uint64_t sub_10048022C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004801C0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480290()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0518);
  sub_1000208F4(v1, qword_1006F0518);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-14", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480328()
{
  if (qword_1006D6188 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0518);
}

uint64_t sub_100480394@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480328();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004803F8()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0530);
  sub_1000208F4(v1, qword_1006F0530);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-15", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480490()
{
  if (qword_1006D6190 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0530);
}

uint64_t sub_1004804FC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480490();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480560()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0548);
  sub_1000208F4(v1, qword_1006F0548);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-16", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004805F8()
{
  if (qword_1006D6198 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0548);
}

uint64_t sub_100480664@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004805F8();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004806C8()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0560);
  sub_1000208F4(v1, qword_1006F0560);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-17", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480760()
{
  if (qword_1006D61A0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0560);
}

uint64_t sub_1004807CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480760();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480830()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0578);
  sub_1000208F4(v1, qword_1006F0578);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-18", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004808C8()
{
  if (qword_1006D61A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0578);
}

uint64_t sub_100480934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004808C8();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480998()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0590);
  sub_1000208F4(v1, qword_1006F0590);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-19", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480A30()
{
  if (qword_1006D61B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0590);
}

uint64_t sub_100480A9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480A30();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480B00()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05A8);
  sub_1000208F4(v1, qword_1006F05A8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-2", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480B98()
{
  if (qword_1006D61B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05A8);
}

uint64_t sub_100480C04@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480B98();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480C68()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05C0);
  sub_1000208F4(v1, qword_1006F05C0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-3", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480D00()
{
  if (qword_1006D61C0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05C0);
}

uint64_t sub_100480D6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480D00();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480DD0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05D8);
  sub_1000208F4(v1, qword_1006F05D8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-4", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480E68()
{
  if (qword_1006D61C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05D8);
}

uint64_t sub_100480ED4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480E68();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100480F38()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F05F0);
  sub_1000208F4(v1, qword_1006F05F0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-5", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100480FD0()
{
  if (qword_1006D61D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F05F0);
}

uint64_t sub_10048103C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100480FD0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004810A0()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0608);
  sub_1000208F4(v1, qword_1006F0608);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-6", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100481138()
{
  if (qword_1006D61D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0608);
}

uint64_t sub_1004811A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481138();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481208()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0620);
  sub_1000208F4(v1, qword_1006F0620);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-7", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_1004812A0()
{
  if (qword_1006D61E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0620);
}

uint64_t sub_10048130C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004812A0();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481370()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0638);
  sub_1000208F4(v1, qword_1006F0638);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-8", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100481408()
{
  if (qword_1006D61E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0638);
}

uint64_t sub_100481474@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481408();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004814D8()
{
  v1 = type metadata accessor for ColorResource();
  sub_10002094C(v1, qword_1006F0650);
  sub_1000208F4(v1, qword_1006F0650);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/Color-9", 0xFuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ColorResource.init(name:bundle:)();
}

uint64_t sub_100481570()
{
  if (qword_1006D61F0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ColorResource();
  return sub_1000208F4(v0, qword_1006F0650);
}

uint64_t sub_1004815DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481570();
  v1 = type metadata accessor for ColorResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481640()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0668);
  sub_1000208F4(v1, qword_1006F0668);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/2.back", 0xEuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004816D8()
{
  if (qword_1006D61F8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0668);
}

uint64_t sub_100481744@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004816D8();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004817A8()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0680);
  sub_1000208F4(v1, qword_1006F0680);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/3.bottom", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481840()
{
  if (qword_1006D6200 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0680);
}

uint64_t sub_1004818AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481840();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481910()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0698);
  sub_1000208F4(v1, qword_1006F0698);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/4.top", 0xDuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004819A8()
{
  if (qword_1006D6208 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0698);
}

uint64_t sub_100481A14@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004819A8();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481A78()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06B0);
  sub_1000208F4(v1, qword_1006F06B0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIcon/5.text", 0xEuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481B10()
{
  if (qword_1006D6210 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06B0);
}

uint64_t sub_100481B7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481B10();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481BE0()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06C8);
  sub_1000208F4(v1, qword_1006F06C8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("visionOS App Icon/Back/Content", 0x1EuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481C78()
{
  if (qword_1006D6218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06C8);
}

uint64_t sub_100481CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481C78();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481D48()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06E0);
  sub_1000208F4(v1, qword_1006F06E0);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("visionOS App Icon/Middle/Content", 0x20uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481DE0()
{
  if (qword_1006D6220 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06E0);
}

uint64_t sub_100481E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481DE0();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100481EB0()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F06F8);
  sub_1000208F4(v1, qword_1006F06F8);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MFActionViewHeaderIcon", 0x16uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100481F48()
{
  if (qword_1006D6228 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F06F8);
}

uint64_t sub_100481FB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100481F48();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100482018()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0710);
  sub_1000208F4(v1, qword_1006F0710);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("MFMailMessageDragPreview", 0x18uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004820B0()
{
  if (qword_1006D6230 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0710);
}

uint64_t sub_10048211C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004820B0();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100482180()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0728);
  sub_1000208F4(v1, qword_1006F0728);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PhoneWithBuckets", 0x10uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100482218()
{
  if (qword_1006D6238 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0728);
}

uint64_t sub_100482284@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100482218();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004822E8()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0740);
  sub_1000208F4(v1, qword_1006F0740);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("PhoneWithNoBuckets", 0x12uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100482380()
{
  if (qword_1006D6240 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0740);
}

uint64_t sub_1004823EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100482380();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_100482450()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0758);
  sub_1000208F4(v1, qword_1006F0758);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("envelope", 8uLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_1004824E8()
{
  if (qword_1006D6248 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0758);
}

uint64_t sub_100482554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1004824E8();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004825B8()
{
  v1 = type metadata accessor for ImageResource();
  sub_10002094C(v1, qword_1006F0770);
  sub_1000208F4(v1, qword_1006F0770);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("custom.envelope.badge.minus", 0x1BuLL, 1);
  v2 = *sub_10047FB28();
  _objc_retain(v2);
  return ImageResource.init(name:bundle:)();
}

uint64_t sub_100482650()
{
  if (qword_1006D6250 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ImageResource();
  return sub_1000208F4(v0, qword_1006F0770);
}

uint64_t sub_1004826BC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100482650();
  v1 = type metadata accessor for ImageResource();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1004827B4(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1006EFDA8 == -1)
  {
    if (qword_1006EFDB0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10048DCCC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1006EFDB0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1006EFDA0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10048DCE4();
    a3 = v10;
    a4 = v9;
    v8 = dword_1006EFD90 < v11;
    if (dword_1006EFD90 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1006EFD94 > a3)
      {
        return 1;
      }

      if (dword_1006EFD94 >= a3)
      {
        return dword_1006EFD98 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1006EFD90 < a2;
  if (dword_1006EFD90 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100482948(uint64_t result)
{
  v1 = qword_1006EFDB0;
  if (qword_1006EFDB0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_1006EFDB0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1006EFD90, &dword_1006EFD94, &dword_1006EFD98);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100482CAC(void *a1, void *a2)
{
  [a2 bounds];

  sub_1000513A4(a2, v3, v4, v5, v6);
}

void sub_100482DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_100482EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void *sub_100483158(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[4];
    if (!v3)
    {
      v4 = objc_opt_new();
      v5 = v2[4];
      v2[4] = v4;

      v3 = v2[4];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_1004831B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[11];
  }

  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[10];
  }

  v7 = v6;
  if ([v3 isEqualToString:*(a1 + 40)] && objc_msgSend(v5, "isEqual:", *(a1 + 48)) && (objc_msgSend(v7, "isEqual:", *(a1 + 56)) & 1) != 0)
  {
    v8 = sub_100053E68();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v20) = 0;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Did not start new search. Criteria are identical.", &v20, 2u);
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 56) + 1;
      *(v9 + 56) = v10;
      v11 = *(a1 + 32);
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    sub_100483428(v11, *(a1 + 40));
    sub_100483438(*(a1 + 32), *(a1 + 48));
    sub_100483448(*(a1 + 32), *(a1 + 56));
    v12 = sub_100053E68();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 40);
      v14 = *(a1 + 48);
      v20 = 141558786;
      v21 = 1752392040;
      v22 = 2112;
      v23 = v13;
      v24 = 2114;
      v25 = v14;
      v26 = 2048;
      v27 = v10;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Begin message search with %{mask.hash}@, options: %{public}@, searchID: %lu", &v20, 0x2Au);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      Property = objc_getProperty(v16, v15, 64, 1);
    }

    else
    {
      Property = 0;
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), Property);
    v8 = sub_1000549E0(*(a1 + 32), v10);
    v19 = *(a1 + 32);
    if (v19)
    {
      objc_setProperty_atomic(v19, v18, v8, 64);
    }
  }
}

void sub_100483428(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_100483438(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_100483448(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

void sub_100483458(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_100007F50(a1, a2);
  }
}

void sub_100483464(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = *(v2 + 56);
  }

  if (*(a1 + 72) == v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v3 = sub_10005387C([_MessageSearchAggregationContext alloc], *(a1 + 40), *(a1 + 72), *(a1 + 32));
    v4 = *(*(a1 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = *(v6 + 120);
    }

    else
    {
      v7 = 0;
    }

    [v7 addObject:*(*(*(a1 + 64) + 8) + 40)];
    [*(a1 + 48) addCancelable:*(*(*(a1 + 64) + 8) + 40)];
    v8 = *(a1 + 32);
    if (v8)
    {
      v8 = v8[20];
    }

    v9 = v8;
    v10 = [NSNumber numberWithUnsignedInteger:*(a1 + 72)];
    [v9 addObject:v10];

    v11 = sub_100053E68();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 134349314;
      sub_100007E94();
      v15 = v12;
      sub_100056484(&_mh_execute_header, v11, v13, "search: %{public}lu is waiting on a loading controller, searches %{public}@ are waiting", v14);
    }
  }
}

id sub_10048360C(uint64_t a1, char a2, uint64_t a3)
{
  if (!a1 || (v6 = *(a1 + 144), v7 = dispatch_time(0, 5000000000), v8 = dispatch_semaphore_wait(v6, v7), v6, v8) && (v22 = 0, v23 = &v22, v24 = 0x2020000000, LOBYTE(v25) = -86, v9 = *(a1 + 96), block[0] = _NSConcreteStackBlock, block[1] = 3221225472, block[2] = sub_10005583C, block[3] = &unk_10064C950, block[4] = a1, block[5] = &v22, block[6] = a3, dispatch_sync(v9, block), v10 = *(v23 + 24), _Block_object_dispose(&v22, 8), (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1000549C8;
    v26 = sub_1000549D8;
    v27 = 0;
    v12 = *(a1 + 96);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000559D0;
    v21[3] = &unk_10064C950;
    v21[5] = &v22;
    v21[6] = a3;
    v21[4] = a1;
    dispatch_sync(v12, v21);
    sub_100007868();
    v15 = 3221225472;
    v16 = sub_100055AE4;
    v17 = &unk_10064CA38;
    v18 = a1;
    v19 = &v22;
    v20 = a2;
    dispatch_sync(&_dispatch_main_q, v14);
    v11 = v23[5];
    _Block_object_dispose(&v22, 8);
  }

  return v11;
}

void sub_1004838E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[15];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[15];
  }

  v5 = v4;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100483BF8;
  v30[3] = &unk_10064CA88;
  v30[4] = *(a1 + 32);
  v6 = [v5 indexesOfObjectsPassingTest:v30];
  [v3 removeObjectsAtIndexes:v6];

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(v7 + 24);
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = 0;
      if (v8)
      {
        goto LABEL_27;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = *(a1 + 32);
    if (!v9)
    {
      v10 = 0;
      goto LABEL_9;
    }

    v8 = 0;
  }

  if (v8 != *(v9 + 56))
  {
    goto LABEL_27;
  }

  v10 = *(v9 + 80);
LABEL_9:
  v11 = v10;
  v12 = *(a1 + 32);
  if (v12)
  {
    v12 = v12[9];
  }

  v13 = v12;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = [*(a1 + 40) allFoundRanges];
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v15)
  {
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(a1 + 40);
        if (v18)
        {
          v18 = v18[2];
        }

        v19 = *(*(&v26 + 1) + 8 * v17);
        v20 = v18;
        [v11 foundRange:v19 forSearchString:v13 inDocument:v20];

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v15);
  }

  v21 = *(a1 + 32);
  if (v21)
  {
    ++*(v21 + 128);
  }

  v22 = sub_100053E68();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a1 + 40);
    if (v24)
    {
      v24 = *(v24 + 16);
    }

    v25 = *(*(a1 + 32) + 56);
    v31 = 138412546;
    v32 = v24;
    v33 = 2048;
    v34 = v25;
    sub_100056484(&_mh_execute_header, v22, v23, "aggregation for item %@ finished for searchID: %lu@", &v31);
  }

  v9 = *(a1 + 32);
LABEL_27:
  sub_1000557A8(v9, *(a1 + 48));
}

BOOL sub_100483BF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 24);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = *(v3 + 56);
  }

  return v2 < v3;
}

id sub_100483C20(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return [*(v1 + 80) finishedSearching];
  }

  else
  {
    return [0 finishedSearching];
  }
}

id *sub_100483C38(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 5, a2);
  }

  return result;
}

uint64_t sub_100483C48(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

void sub_100483C54(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = *(v3 + 16);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = *(v4 + 24);
  }

  v5 = 138412546;
  v6 = v3;
  v7 = 2048;
  v8 = v4;
  sub_100056484(&_mh_execute_header, a2, a3, "_MessageSearchAggregationContext start search: itemID:%@, searchID: %lu", &v5);
}

void sub_100483CFC(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a3;
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error loading content for message search id: %lu, error: %{public}@", buf, 0x16u);
}

void sub_100483D64(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to get a loading controller for search %lu, itemID:%{public}@", &v3, 0x16u);
}

void sub_100483DEC(void ***block, void **a2)
{
  *block = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100483C20;
  block[3] = &unk_10064C7E8;
  block[4] = a2;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100483E58()
{
  v2[0] = 134349314;
  sub_100007E94();
  v3 = v0;
  sub_100056484(&_mh_execute_header, v1, v1, "search: %{public}lu is no longer waiting on a loading controller, searches %{public}@ are still waiting", v2);
}

id sub_100483EE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(*(a2 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = a1;

  if (*a4)
  {
    v8 = *(*a4 + 152);
  }

  else
  {
    v8 = 0;
  }

  return [v8 removeLastObject];
}

void sub_100483F34(const __CFString *a1, NSObject *a2)
{
  v2 = @"«empty»";
  if (a1)
  {
    v2 = a1;
  }

  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "[MCVLog] %{public}@", &v3, 0xCu);
}

uint64_t sub_100483FD0(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

void sub_10048405C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "setReferenceMessageListItem: Reload again since we failed to load item: %@", v5);
}

void sub_1004840A0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Skip update, collection stale:%@", v5);
}

void sub_1004840E4()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100484120()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Message future for conversation subject failed: %@", v5);
}

void sub_100484164()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1004841D4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Skip collectionDidFinishInitialLoad, collection stale: %@", v5);
}

void sub_100484218()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_100083FAC();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_100484264()
{
  sub_100007EA4();
  sub_100083FAC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004842D8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "%@ - try to automatically reload", v5);
}

void sub_10048431C()
{
  sub_100007EA4();
  sub_100083FAC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100484390()
{
  sub_100007F58();
  sub_100007888(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Error fetching message for itemID %@ for a change with error - %@", v4, v5);
}

void sub_100484448()
{
  sub_100007EA4();
  sub_100007EBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_1004844BC()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004844F8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No message in %@", v5);
}

void sub_10048453C(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2048;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "<%@: %p> [Quick Reply] Missing quick-reply animation context", a3, 0x16u);
}

void sub_1004845B4()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1004845F0()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484660()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "%@", v5);
}

void sub_1004846A4()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484714()
{
  sub_100007F58();
  *v2 = 67109378;
  *(v2 + 4) = v1 == 0;
  *(v2 + 8) = 2112;
  *(v2 + 10) = v3;
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to retrieve message from content request(nil:%{BOOL}d) for:%@", v4, 0x12u);
}

void sub_10048477C()
{
  sub_1000087E4();
  sub_100007EC8(v2, v3, 5.7779e-34);
  sub_100083FAC();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0xCu);
}

void sub_1004847CC()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "referenceMessageListItem is nil See rdar://problem/51331949\n referenceMessageList: %@, referenceMessageListQuery: %@", v5, 0x16u);
}

void sub_100484824()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Unknown Remind Me action. plist = %{public}@", v5);
}

void sub_100484868()
{
  sub_1000087E4();
  sub_100007EC8(v2, v3, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v4, v5, "Remind Me not available for selected items: %@", v6);
}

void sub_1004848B0()
{
  sub_100007F58();
  sub_100007888(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "No contentRequest for %@ in %@", v4, v5);
}

void sub_1004848F4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No targetMessageForBarButtonTriage in %@", v5);
}

void sub_100484938()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Send Again interaction not permitted for %@ in %@", v5, v6);
}

void sub_100484984()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "No messageItemId found for %@ in %@", v5, v6);
}

void sub_1004849D0()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Clear Time Sensitive interaction not permitted for %@ in %@", v5, v6);
}

void sub_100484A1C()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100484A58()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Missing property list for Remind Me command in %@", v5);
}

void sub_100484A9C()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484B0C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Missing property list for Categorize command in %@", v5);
}

void sub_100484B50()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484BC0()
{
  sub_100007F58();
  v2 = v1;
  sub_100007888(v1, v3, v4, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "Mute interaction not permitted for %@ in %@", v5, v6);
}

void sub_100484C0C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Missing property list for set Flag color command in %@", v5);
}

void sub_100484C50()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484CC0()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484D30()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "%@ - auto-mark-as-read interaction failed", v5);
}

void sub_100484D74()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100484DB0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Could not find any messageListItems in %@", v5);
}

void sub_100484DF4()
{
  sub_100007F58();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  sub_100007EE0(&_mh_execute_header, "Unable to get message count for query: %@ error: %{public}@", v4, v5);
}

void sub_100484E48()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484EB8()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100484FA0()
{
  sub_100007EA4();
  sub_100007EBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void sub_100485014(void *a1, uint64_t *a2, uint64_t a3, NSObject *a4)
{
  v5 = *a2;
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2048;
  *(a3 + 14) = v5;
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Attempting to clear the transferController when a new one is already set", a3, a4);
}

void sub_100485074()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to get message count due to error: %{public}@", v5);
}

void sub_1004850F8()
{
  sub_100007ED4();
  *v1 = 136315394;
  *(v1 + 4) = "[ConversationViewController datePickerViewControllerDidDeleteDate:]";
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048515C()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100485198()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.7779e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Restore state failed: %@", v5);
}

void sub_1004851DC()
{
  sub_1000087E4();
  sub_100007EC8(v2, v3, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v4, v5, "Failed to get reference item index path for app intent summarization for mailMessageIDs: %{public}@", v6);
}

void sub_100485224()
{
  sub_100007F68();
  sub_100007EBC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

uint64_t sub_1004852A4(uint64_t result)
{
  if (result)
  {
    return *(result + 360);
  }

  return result;
}

uint64_t sub_1004852B8(uint64_t result)
{
  if (result)
  {
    return (*(result + 36) >> 4) & 1;
  }

  return result;
}

uint64_t sub_1004852D0(uint64_t result)
{
  if (result)
  {
    return *(result + 368);
  }

  return result;
}

void sub_1004852E4(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 368);
  }
}

BOOL sub_1004852F8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 368) != 0;
  }

  return result;
}

void sub_100485314(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 360);
  }
}

void sub_100485380(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "\t\tindexPath: %@", &v2, 0xCu);
}

void sub_1004854E0(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "No pinned item. Using proposed content offset %02.f", &v2, 0xCu);
}

void sub_10048555C(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to upgrade state from Version=%li to currentStateVersion=%li", &v2, 0x16u);
}

void sub_1004855E4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Restoration data for %{public}@ is in valid.", &v2, 0xCu);
}

void sub_10048565C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error while decoding %{public}@: %{public}@", v4, 0x16u);
}

void sub_1004856B4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Querying reference item failed with error: %{public}@", buf, 0xCu);
}

void sub_10048570C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "An error occurred while fetching reference item for state restoration: %{public}@", buf, 0xCu);
}

void sub_100485764(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error encoding '%{public}@' for state restoration: %{public}@", v4, 0x16u);
}

void sub_1004857BC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Finished initial load for: %{public}@", buf, 0xCu);
}

void sub_100485858(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Checking for drafts to recover failed with error: %@", &v2, 0xCu);
}

void sub_1004858D0(void *a1, uint64_t a2, NSObject *a3)
{
  if (*a1 == 2)
  {
    v5 = @"Completing";
  }

  else
  {
    v5 = @"Idle";
  }

  if (*a1 == 1)
  {
    v6 = @"In Progress";
  }

  else
  {
    v6 = v5;
  }

  v7 = v6;
  if (a2 == 2)
  {
    v8 = @"Completing";
  }

  else
  {
    v8 = @"Idle";
  }

  if (a2 == 1)
  {
    v8 = @"In Progress";
  }

  v9 = v8;
  v10 = 138543618;
  v11 = v7;
  v12 = 2114;
  v13 = v9;
  _os_log_debug_impl(&_mh_execute_header, a3, OS_LOG_TYPE_DEBUG, "Docking transition state changed from %{public}@ to %{public}@", &v10, 0x16u);
}

void sub_100485D34(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v3 = 134217984;
  v4 = a1;
  sub_100007EFC(&_mh_execute_header, a2, a3, "Unexpected docked draft compatibility version %ld!", &v3);
}

void sub_100485DA4(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100007EFC(&_mh_execute_header, a3, a3, "Serialization failed with error: %{public}@", a2);
}

void sub_100485DF4(void *a1, uint8_t *a2, void *a3, NSObject *a4)
{
  *a2 = 138543362;
  *a3 = a1;
  sub_100007EFC(&_mh_execute_header, a4, a3, "Deserializing ID string failed with error: %{public}@", a2);
}

void sub_100485E48(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Deserializing ID string failed. Data is empty or nil.", buf, 2u);
}

void sub_100485E88(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_100007EFC(&_mh_execute_header, a3, a3, "Deserializing previously presented state failed with error: %{public}@", a2);
}

void sub_10048601C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Failed to create FavoriteItem_Account dictionary representation for %@", &v2, 0xCu);
}

void sub_1004860BC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Failed to create FavoriteItem_Inbox dictionary representation for %@", &v2, 0xCu);
}

void sub_100486400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  sub_100008F08(v16, v17, v18, v19, v20, v21, v22, v23);

  _Unwind_Resume(a1);
}

void sub_100486940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_1000AEA60(v22, v23, v24, v25, v26, v27);

  _Unwind_Resume(a1);
}

void sub_100486A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_1000AEA60(v23, v24, v25, v26, v27, v28);

  _Unwind_Resume(a1);
}

void sub_100486B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_1000AEA60(v22, v23, v24, v25, v26, v27);

  _Unwind_Resume(a1);
}

void sub_100486C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_1000AEA60(v23, v24, v25, v26, v27, v28);

  _Unwind_Resume(a1);
}

void sub_100486D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_100008D44(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_100486DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_100008D44(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_100486EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  sub_100008D44(a1, a2, a3, a4, a5, a6);

  _Unwind_Resume(v20);
}

void sub_100486F18(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "invalidateVisibleItems %@", &v2, 0xCu);
}

void sub_100486F90(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Favorites Failed to send follow up settings to Proactive SPI: %{public}@", buf, 0xCu);
}

void sub_100486FE8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Favorites Could not find collection for item:%@", &v2, 0xCu);
}

void sub_100487060(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000B8CE4;
    v5[3] = &unk_10064C660;
    v6 = v3;
    v7 = a1;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

void sub_1004870FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[14];
  }

  [WeakRetained synchronize];
  if ([*(a1 + 32) count])
  {
    v4 = *(a1 + 32);
  }

  else
  {
    if (v3)
    {
      v5 = v3[14];
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 dictionaryRepresentation];
    v4 = [v7 allKeys];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100487244;
  block[3] = &unk_10064CF10;
  block[4] = v3;
  v10 = v4;
  v11 = *(a1 + 48);
  v8 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100487244(uint64_t a1)
{
  v90 = 0;
  v91 = &v90;
  v92 = 0x2020000000;
  v93 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 120);
  }

  else
  {
    v3 = 0;
  }

  [v3 lock];
  v69 = [*(a1 + 40) copy];
  v74 = +[NSMutableDictionary dictionary];
  v75 = a1;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v69;
  v4 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
  if (v4)
  {
    v5 = *v87;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v87 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v86 + 1) + 8 * i);
        if ([v7 length] == 36)
        {
          v8 = *(v75 + 32);
          if (v8)
          {
            v8 = v8[14];
          }

          v9 = v8;
          v10 = [v9 objectForKey:v7];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v74 setObject:v10 forKey:v7];
          }

          else if (!v10 && *(v75 + 48) != 3)
          {
            v11 = +[NSNull null];
            [v74 setObject:v11 forKey:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
    }

    while (v4);
  }

  v12 = sub_100007718();
  v13 = &off_1004FB000;
  if (sub_1000209F0(v12))
  {
    v14 = [v74 count];
    v95 = 134217984;
    v96 = v14;
    sub_100007F44();
    _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
  }

  v20 = v75;
  [*(v75 + 32) mailboxesCollection];
  v81[0] = _NSConcreteStackBlock;
  v81[1] = 3221225472;
  v81[2] = sub_1000B751C;
  v70 = v81[3] = &unk_10064F0C0;
  v82 = v70;
  v83 = 0;
  v84 = *(v75 + 32);
  v85 = &v90;
  [v74 enumerateKeysAndObjectsUsingBlock:v81];
  if (*(v75 + 48) <= 1uLL)
  {
    v21 = sub_100007718();
    if (sub_1000209F0(v21))
    {
      v22 = *(v75 + 48);
      v95 = 134217984;
      v96 = v22;
      sub_100007F44();
      _os_log_impl(v23, v24, v25, v26, v27, 0xCu);
    }

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v72 = [v70 items];
    v28 = [v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
    if (v28)
    {
      v30 = *v78;
      *&v29 = 138412290;
      v71 = v29;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v78 != v30)
          {
            objc_enumerationMutation(v72);
          }

          v32 = *(*(&v77 + 1) + 8 * j);
          v33 = [v32 syncKey];
          if ([v32 shouldSync])
          {
            v34 = [v74 objectForKey:v33];
            if (v34)
            {
              v35 = [v32 representingMailbox];
              v4 = v35;
              if (v35)
              {
                v13 = MFMailboxUid;
                if (+[MFMailboxUid isStandardizedMailboxUidType:](MFMailboxUid, "isStandardizedMailboxUidType:", [v35 mailboxType]))
                {
                  v13 = [v34 objectForKey:@"mailboxType"];
                  v36 = [v13 integerValue];

                  if (!v36)
                  {
                    v37 = [v34 mutableCopy];
                    v38 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 mailboxType]);
                    [v37 setObject:v38 forKey:@"mailboxType"];

                    v39 = sub_100007718();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                    {
                      v40 = [EFPrivacy partiallyRedactedStringForString:v33];
                      sub_100007FB8(v40, v41, v42, v43, v44, v45, v46, v47, v69, v70, v71);
                      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Found new Favorite Mailbox to add %@", v48, 0xCu);
                    }

                    v49 = *(v75 + 32);
                    if (v49)
                    {
                      v49 = v49[14];
                    }

                    v50 = v49;
                    v13 = [v32 syncKey];
                    [v50 setObject:v37 forKey:v13];

                    goto LABEL_44;
                  }
                }
              }
            }

            else
            {
              v51 = sub_100007718();
              if (sub_1000209F0(v51))
              {
                v52 = [EFPrivacy partiallyRedactedStringForString:v33];
                sub_100007FB8(v52, v53, v54, v55, v56, v57, v58, v59, v69, v70, v71);
                sub_100007F44();
                _os_log_impl(v60, v61, v62, "Found new Favorite Mailbox to add %@", v63, 0xCu);
              }

              v13 = v75;
              v4 = sub_1000B71FC(*(v75 + 32), v32);
              v64 = *(v75 + 32);
              if (v64)
              {
                v64 = v64[14];
              }

              v37 = v64;
              [v37 setObject:v4 forKey:v33];
LABEL_44:
            }
          }
        }

        v28 = [v72 countByEnumeratingWithState:&v77 objects:v94 count:16];
      }

      while (v28);
    }

    v20 = v75;
  }

  if (*(v91 + 24) == 1)
  {
    sub_1000B5BC8(*(v20 + 32), @"_mergeExternalChanges");
  }

  v65 = +[EFScheduler globalAsyncScheduler];
  v76[0] = _NSConcreteStackBlock;
  v76[1] = 3221225472;
  v76[2] = sub_100487ABC;
  v76[3] = &unk_10064C7E8;
  v76[4] = *(v20 + 32);
  [v65 performBlock:v76];

  v66 = *(v75 + 32);
  if (v66)
  {
    v67 = *(v66 + 120);
  }

  else
  {
    v67 = 0;
  }

  [v67 unlock];
  if (*(v91 + 24) == 1)
  {
    v68 = *(v75 + 32);
    if (v68)
    {
      sub_100487060(v68, 0);
    }
  }

  _Block_object_dispose(&v90, 8);
}

id sub_100487ABC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 112);
  }

  else
  {
    v2 = 0;
  }

  return [v2 synchronize];
}

void sub_100487AD4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v3 = sub_100007718();
    if (sub_1000209F0(v3))
    {
      sub_100007F44();
      _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
    }

    sub_100006E64(*(a1 + 48));
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    sub_100487060(v9, 0);
  }
}

void sub_100487BA8(uint64_t a1)
{
  v3 = sub_100007718();
  if (sub_1000209F0(v3))
  {
    LOWORD(v13) = 0;
    sub_100007F44();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
  }

  sub_100006E64(*(a1 + 32));
  v9 = *(a1 + 32);
  if (v9)
  {
    sub_100487060(v9, 0);
  }

  v10 = +[NSNotificationCenter defaultCenter];
  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) userInfo];
  [v10 postNotificationName:@"FavoritesPersistenceFocusDidChangeNotification" object:v11 userInfo:v12];
}

void sub_100487C90(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2080;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not read %@: %s", buf, 0x16u);
}

void sub_100487D2C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "syncing key = %@; value = %@", buf, 0x16u);
}

void sub_100487D94(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "cannot create item for KV entry (possibly the account does not exist): %@ = %@", &v3, 0x16u);
}

void sub_100487E60(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Favorites Failed to get outbox predicate: %{public}@", buf, 0xCu);
}

BOOL sub_100487EF0(uint64_t a1, double a2)
{
  v4 = *(a1 + 72);
  [*(a1 + 32) frame];
  Width = CGRectGetWidth(v14);
  v6 = Width;
  if (v4 == 1)
  {
    v7 = Width - *(a1 + 48) - *(a1 + 56);
  }

  else
  {
    [*(a1 + 32) safeAreaInsets];
    v9 = v6 - (v8 + *(a1 + 48));
    [*(a1 + 32) safeAreaInsets];
    v7 = v9 - (v10 + *(a1 + 56));
  }

  if (*(a1 + 40))
  {
    v11 = MUISolariumFeatureEnabled();
    v12 = 8.0;
    if (v11)
    {
      v12 = 10.0;
    }
  }

  else
  {
    v12 = 0.0;
  }

  return floor((v7 - v12 * (a2 + -1.0)) / a2 + 5.0 * -2.0) <= ceil(*(a1 + 64));
}

void sub_100487FCC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No messageListItem in %{public}@", buf, 0xCu);
}

void sub_100488024(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No primaryMessage in %{public}@", buf, 0xCu);
}

void sub_10048807C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 320), a2);
  }
}

void sub_100488094(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D3D4C;
    block[3] = &unk_10064C598;
    v6 = v3;
    dispatch_async(v4, block);
  }
}

void sub_100488240(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Error creating the local diagnostics directory at %{public}@, error: %{public}@", v4, 0x16u);
}

void sub_100488298(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "<%@> Failed to dump diagnostics to %{public}@", v4, 0x16u);
}

void sub_1004882F0(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Skipping recovery of draft %@ because it is marked as active in scene session %@.", buf, 0x16u);
}

void sub_100488468(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "_createMailboxesFromUids returned no mailboxes; mailboxProvider: %@", buf, 0xCu);
}

void sub_1004884C8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#Favorites Apply snapshot %@", &v2, 0xCu);
}

void sub_100488540(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#Favorites Apply snapshot %@ for section %@", &v3, 0x16u);
}

void sub_1004885C8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "updateMailboxSelectionAnimated skipped selection since the data is out of sync with the UI - invalid lastSelectedIndexPath:%{public}@ for collectionView:%{public}@", &v3, 0x16u);
}

void sub_100488694(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a3;
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%@ - about to select item:%@ with nil indexPath", buf, 0x16u);
}

void sub_1004886FC(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "#Favorites _sharedMailboxControllerBadgeCountDidChange %@ sourceType:%lu", buf, 0x16u);
}

void sub_100488754(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "#Favorites _vipSendersDidChange %@", &v2, 0xCu);
}

void sub_100488810(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 88);
  }
}

void *sub_100488838(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[13];
    if (!v3)
    {
      v4 = objc_alloc_init(MSOpenComposeDelegateRequest);
      v5 = v2[13];
      v2[13] = v4;

      v3 = v2[13];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_1004888A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained = WeakRetained[11];
  }

  [WeakRetained setDelegate:*(a1 + 32)];
  v3 = v4;
  if (v4)
  {
    v3 = v4[11];
  }

  [v3 setEntitledDelegate:*(a1 + 40)];
}

void sub_100488934()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to decode MSOpenMailComposeViewControllerContext. %{public}@", v5);
}

void sub_100488978()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to decode composition values. %{public}@", v5);
}

void sub_1004889BC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "error checking in to receive remote delegate: %{public}@", v5);
}

void sub_100488A00()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "error sending message to remote delegate: %{public}@", v5);
}

void sub_100488A88(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Trying to dismiss compose controller that is not the active view controller. Aborting. ComposeController=%@ ActiveController=%@", &v3, 0x16u);
}

void sub_100488BD0(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not select favorite item at index: %lu", &v2, 0xCu);
}

void sub_100488C7C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "didFailToContinueUserActivityWithType: %{public}@, error: %{public}@", buf, 0x16u);
}

void sub_100488CE4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Contact Store access request finished with error: %{public}@", buf, 0xCu);
}

void sub_100488D70(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Authorization failed with error: %{public}@", &v2, 0xCu);
}

void sub_100488E9C(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Cannot load from dictionary. Dictionary version (%ld) is higher than current version (%ld). Will use default values.", &v2, 0x16u);
}

void sub_100489000(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error writing metadata at: %@ with error: %{public}@", buf, 0x16u);
}

void sub_100489070(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error serializing metadata: %{public}@", buf, 0xCu);
}

void sub_100489170(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to close quick look scene. Error: %{public}@", buf, 0xCu);
}

id sub_1004891C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = *(v10 + 56);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 dequeueConfiguredReusableCellWithRegistration:v11 forIndexPath:v8 item:v9];

  return v12;
}

void sub_1004892B0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Quick look item couldn't be copied to container. Error: %{public}@", v5);
}

void sub_100489328()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Disk space is critically low. Blocking URL routing request: %{public}@", v5);
}

void sub_10048936C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to open new window: %{public}@", v5);
}

void sub_1004893B0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to activate Message Viewer: %{public}@", v5);
}

void sub_100489428(char a1, char a2, os_log_t log)
{
  v3[0] = 67109376;
  v3[1] = a1 & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "WARNING: Background scene monitoring is disabled. This should only be used for testing purposes. isTesting=%{BOOL}d forceDisable=%{BOOL}d", v3, 0xEu);
}

void sub_1004894F8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Unknown free space state. Error:%{public}@", v5);
}

void sub_10048953C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Ignoring unsupported Asset Viewer editCompletedForHandler %@ url %@", &v3, 0x16u);
}

id sub_10048972C(id result)
{
  if (result)
  {
    v1 = result;
    result = MUISolariumFeatureEnabled();
    if (result)
    {
      [v1 setPreferredSupplementaryColumnWidth:402.0];

      return [v1 setMinimumSupplementaryColumnWidth:320.0];
    }
  }

  return result;
}

void sub_1004897D4(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a2;
  *(buf + 6) = 2082;
  *(buf + 14) = "[MailSplitViewController _MailKeyCommandRoutingForAction:usingCommand:]";
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "Unexpected display mode %ld in %{public}s", buf, 0x16u);
}

void sub_100489830(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Attempted to show indeterminate status (rdar://83262883) with empty status: %{public}@", buf, 0xCu);
}

void sub_100489888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "iCloud quota error loading offer: %@", &v2, 0xCu);
}

void sub_100489900(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[ICQ] Failed to fetch in app message with error: %{public}@", buf, 0xCu);
}

void sub_100489958(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "No name to report for account %{public}@ with error %{public}@", buf, 0x16u);
}

void *sub_1004899C8(void *a1)
{
  if (a1)
  {
    if ([a1 isHighlighted])
    {
      [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.2];
    }

    else
    {
      +[UIColor mailMessageListHighlightColor];
    }

    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10014F844;
    v5 = v4[3] = &unk_100651768;
    v1 = v5;
    v2 = objc_retainBlock(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_100489AC4(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 3.8521e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%p: Failed to generate an avatar with error %{public}@", v4, 0x16u);
}

void sub_100489B1C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Decoding visible message list items failed with error: %{public}@", v5);
}

void sub_100489B60()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Decoding selected item ID failed with error: %{public}@", v5);
}

void sub_100489BA4(uint64_t a1, NSObject *a2)
{
  v2 = 134218240;
  v3 = a1;
  v4 = 2048;
  v5 = 3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to upgrade state from Version=%li to currentStateVersion=%li", &v2, 0x16u);
}

void sub_100489C2C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Decoding mailbox object IDs failed with error: %{public}@", v5);
}

void sub_100489C70()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Mailbox request failed with error: %{public}@", v5);
}

void sub_100489CB4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Encoding visible items failed with error: %{public}@", v5);
}

void sub_100489CF8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Encoding last selected item ID failed with error: %{public}@", v5);
}

void sub_100489D80()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Message list initial load failed with error: %{public}@", v5);
}

void sub_100489DEC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Remote search failed with error %{public}@", buf, 0xCu);
}

void sub_100489E44(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Local and remote search failed with error %@", &v2, 0xCu);
}

void sub_100489F00(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218242;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%p: Skip reporting failed search for outdated collection %{public}@", &v3, 0x16u);
}

void sub_100489FCC(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 432);
  }
}

void sub_100489FE0(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 424);
  }
}

void *sub_10048A100(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[68];
    if (!v3)
    {
      v4 = [[FocusBannerView alloc] initWithDelegate:a1];
      v5 = v2[68];
      v2[68] = v4;

      v3 = v2[68];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_10048A174(uint64_t a1, void *a2)
{
  if (a1)
  {
    sub_1000078C8(a1, a2, 416);
  }
}

void sub_10048A188(void *a1)
{
  if (a1 && sub_10017E098(a1))
  {

    sub_10017AA50(a1);
  }
}

BOOL sub_10048A1D4(_BOOL8 result, char *a2)
{
  if (result)
  {
    return (sub_10012F538(MailSplitViewController, a2) & 1) != 0 || sub_10012F238(MailSplitViewController, a2) || "selectAll:" == a2;
  }

  return result;
}

void sub_10048A248(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to update last seen date - message list item future at indexPath: %{public}@ is nil", buf, 0xCu);
}

void sub_10048A2A0(void *a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = a2;
  sub_100007EE0(&_mh_execute_header, "Unable to update last seen date - date is nil - indexPath:%{public}@, messageListItem:%{public}@", a3, a4);
}

void sub_10048A304()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Unable to load more messages - failed to resolve any mailbox object ids", v4, v5);
}

void sub_10048A348()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Skip _updateSelectionModelDidSelectItemID since itemID is nil", v4, v5);
}

void sub_10048A38C()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> The refresh control should not be visible", v4, v5);
}

void sub_10048A3D0()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_10048A44C()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Scene is nil", v4, v5);
}

void sub_10048A490(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not activate scene from menu: %{public}@", buf, 0xCu);
}

void sub_10048A4E8()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048A524(void *a1, uint8_t *buf, os_log_t log, os_signpost_id_t a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, log, OS_SIGNPOST_EVENT, a4, "MessageListViewController Delete", "The user has selected to transfer all the messages to mailbox %@", buf, 0xCu);
}

void sub_10048A584()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Select All Button Pressed. But we don't have a selection model.", v4, v5);
}

void sub_10048A5C8()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Ignoring move action, no messages selected", v4, v5);
}

void sub_10048A60C()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Ignoring move action, favorite item is nil", v4, v5);
}

void sub_10048A650()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.7781e-34);
  *(v4 + 22) = 2080;
  *(v4 + 24) = "[MessageListViewController _expandCollapseThreadCommand:]";
  _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "<%@: %p> Missing property list for expand/collapse in %s", v5, 0x20u);
}

void sub_10048A6C8()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10048A738()
{
  sub_100007990();
  v2 = *v1;
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2048;
  *(v3 + 14) = v2;
  sub_100007EE0(&_mh_execute_header, "<%@: %p> Unable to apply change action - cell is nil", v5, v6);
}

void sub_10048A804()
{
  sub_100007990();
  sub_100007978(v1, v2, v3, 5.778e-34);
  sub_100007EE0(&_mh_execute_header, "<%@: %p> No indexPaths found. Returning nil for context menu", v4, v5);
}

void sub_10048A8C0()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048A8FC(uint64_t a1, void *a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138412546;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  sub_100007EE0(&_mh_execute_header, "_handleRowSelectionOnMoveOfItemID failed to get messageListItem for %@ error: %@", a3, a4);
}

void sub_10048A958()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048A994()
{
  sub_100007F68();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10048AA04()
{
  sub_100007F68();
  v3 = 2048;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%p: Attempted to provide feedback for an invalid feature %ld", v2, 0x16u);
}

void sub_10048AA88()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No message list for %{public}@", v5);
}

void sub_10048AACC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No contentRequest for %{public}@", v5);
}

void sub_10048AB10()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "No displayMessage for %{public}@", v5);
}

void sub_10048AB54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to create count predicate for favorite item: %@", &v2, 0xCu);
}

void sub_10048ABCC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to read data for content representation: %@ - Error: %@", &v3, 0x16u);
}

void sub_10048AC54(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Couldn't decode contacts from attachment data %@", &v2, 0xCu);
}

void sub_10048ACCC(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerator %p", &v3, 0x16u);
}

void sub_10048AD54(uint64_t a1, id a2, NSObject *a3)
{
  v5 = objc_retainBlock(a2);
  v6 = 134218240;
  v7 = a1;
  v8 = 2048;
  v9 = v5;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Unable to generate avatar image for missing context %p avatarGenerationBlock %p", &v6, 0x16u);
}

void sub_10048AE08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid presentation source: %{public}@", &v2, 0xCu);
}

void sub_10048AE80()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Could not activate compose scene from menu action: %{public}@", v5);
}

void sub_10048AEC4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Could not activate compose scene: %{public}@", v5);
}

void sub_10048AF08(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to archive composition values with error: %{public}@", &v2, 0xCu);
}

void sub_10048AF80(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to open message in new window:\n\t%{public}@\n\n\t%{public}@", buf, 0x16u);
}

void sub_10048B034()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to convert draft user activity to data. %{public}@", v5);
}

void sub_10048B078()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_1000078A0(&_mh_execute_header, v3, v4, "Failed to migrate draft. %{public}@", v5);
}

void sub_10048B0BC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Missing messageItemID for message list item %{public}@", buf, 0xCu);
}

void sub_10048B114(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to find message for item ID %{public}@ error %{public}@", buf, 0x16u);
}

void sub_10048B1C0(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Request %{public}@ has source message. Will setup sending account based on that message.", buf, 0xCu);
}

void sub_10048B218(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Request %{public}@ is either external or does not have a source message, will use default sending account.", buf, 0xCu);
}

void sub_10048B284(void *a1, uint8_t *buf, os_log_t log, void *a4)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to get content repressentation from %@", buf, 0xCu);
}

void sub_10048B2E4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to load message for itemID: %{public}@", buf, 0xCu);
}

void sub_10048B33C(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to find messageID for indexPath:%{public}@. Returning collapsed.", &v2, 0xCu);
}

void sub_10048B3B4(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get content representation for message: %{public}@ (%{public}@)", buf, 0x16u);
}

void sub_10048B424(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get message to configure handoff (%{public}@)", buf, 0xCu);
}

void sub_10048B47C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get persistentID for messageObjectID: %{public}@", buf, 0xCu);
}

id sub_10048B4D4(void *a1)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    return [a1 _addMessageInfoButton];
  }

  return result;
}

void sub_10048B53C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Unable to retrieve free space with error: %{public}@", buf, 0xCu);
}

uint64_t sub_10048B594(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((MUISolariumFeatureEnabled() & 1) != 0 || (+[UIDevice mf_isPadIdiom]& 1) != 0)
    {
      return 1;
    }

    else
    {
      return *(v1 + 80) ^ 1;
    }
  }

  return result;
}

void sub_10048B5EC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "File URL route received request for non-existent or unreadable file. request=%{public}@", buf, 0xCu);
}

void sub_10048B644(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Blocking file:// URL pointing into Library/Mail. request=%{public}@", buf, 0xCu);
}

void sub_10048B6B0()
{
  sub_100007990();
  sub_100007888(v1, v2, v3, 5.8382e-34);
  sub_100007EE0(&_mh_execute_header, "%{public}@: error unsubscribing from mailing list: %@", v4, v5);
}

void sub_10048B6F4(char a1, uint8_t *buf, os_log_t log, void *a4)
{
  v5 = "HTTPS POST";
  if (a1)
  {
    v5 = "mailto:";
  }

  *buf = 136315138;
  *(buf + 4) = v5;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Successfully unsubscribed from mailing list using %s.", buf, 0xCu);
}

void sub_10048B764()
{
  sub_100007990();
  v2 = *(v1 + 40);
  *v3 = 138543618;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  sub_100007EE0(&_mh_execute_header, "%{public}@: block attempted failed: %@", v5, v6);
}

void sub_10048B7BC()
{
  sub_100007990();
  sub_100007888(v1, v2, v3, 5.8382e-34);
  sub_100007EE0(&_mh_execute_header, "%{public}@: error ignoring unsubscribe: %@", v4, v5);
}

void sub_10048B88C()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048B8C8()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048B978()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048B9B4()
{
  sub_100007F74();
  sub_1000078BC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10048BA48(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000078A0(&_mh_execute_header, a2, a3, "Error getting address metadata: %{public}@", a2);
}

void sub_10048BA94(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000078A0(&_mh_execute_header, a2, a3, "Failed to save send later message (%{public}@)", a2);
}

void sub_10048BAE0(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  sub_1000078A0(&_mh_execute_header, a2, a3, "Failed to move cancelled message to drafts (%{public}@)", a2);
}

void sub_10048BB2C(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#PurgeableStorage Failed to compute size for %@ with error %{public}@", buf, 0x16u);
}

void sub_10048BBE4(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%p: canceling display request because it did not finish in time for request:%@", buf, 0x16u);
}

void sub_10048BC4C(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to find contact: %@, using key descriptors: %@", buf, 0x16u);
}

void sub_10048BCB4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No viewing options available for contentRepresentation [%@]", &v2, 0xCu);
}

void sub_10048BD2C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Quicklook can not handle the attachment. %@", &v2, 0xCu);
}

void sub_10048BDA4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Attachments Error unable to copy to container: %{public}@", buf, 0xCu);
}

void sub_10048BDFC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to get display message: %{public}@", buf, 0xCu);
}

void sub_10048BE54(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. Account did not return valid mailboxUid for mailboxURL: %@", &v3, 0xCu);
}

void sub_10048BED0(uint64_t a1, char a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2 & 1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "#Nano Attempt to recover mailboxUid for MFNanoBridgeSettingsAccountSpecificMailbox failed. (Id: %{public}@, Active: %lu)", buf, 0x16u);
}

void sub_10048BF2C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to handle OAuth redirect from request %{public}@", buf, 0xCu);
}

void sub_10048BFC4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "No mailboxes found for mailbox search suggestion predicate: %@", &v2, 0xCu);
}

void sub_10048C114(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#SearchSuggestions shouldReloadSearchSuggestion was unable to find suggestion: %@ in model: %@", v4, 0x16u);
}

void sub_10048C16C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.778e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#SearchSuggestions didRemoveSearchSuggestion was unable to find suggestion: %@ in model: %@", v4, 0x16u);
}

void sub_10048C1C4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error encoding search token: %{public}@", buf, 0xCu);
}

void sub_10048C21C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "error decoding search token data for UISearchToken: %{public}@", buf, 0xCu);
}

void sub_10048C2AC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Error requesting representation: %{public}@", buf, 0xCu);
}

void sub_10048C304(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Could not load product with URL: %@ error: %{public}@", buf, 0x16u);
}

void sub_10048C440(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Invalid display message for message: %{public}@", &v3, 0xCu);
}

void sub_10048C4BC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Load data for unexpected item (%@)", buf, 0xCu);
}

void sub_10048C528(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: unblock attempted failed: %@", v4, 0x16u);
}

void sub_10048C580(void *a1, uint64_t a2, uint64_t a3)
{
  sub_100007888(a1, a2, a3, 5.8382e-34);
  _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%{public}@: block attempted failed: %@", v4, 0x16u);
}

void sub_10048C5D8(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Routing failed with an error indicating that it should not continue. request=%{public}@ error=%{public}@", buf, 0x16u);
}

void sub_10048C648(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Request failed. Request=%{public}@ error=%{public}@", buf, 0x16u);
}

void sub_10048C780()
{
  sub_100007F68();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "#ReturnToSender return to sender activity failed. valid message with id %@, but file url is not reachable. NSURL error: %@", v2, 0x16u);
}

void sub_10048C86C(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to handle VIP request %{public}@. Unexpected URL scheme found", buf, 0xCu);
}

uint64_t sub_10048C8C4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_10048C964(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to obtain messageListItem for itemID:%@ in messageList:%{public}@", buf, 0x16u);
}

void sub_10048C9CC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Skip update, collection stale:%{public}@", buf, 0xCu);
}

void sub_10048CAB8()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxEncoder: Encoding generic mailbox: %{public}@", v5);
}

void sub_10048CAFC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxEncoder: Encoding smart mailbox: %{public}@", v5);
}

void sub_10048CB40()
{
  sub_100007ED4();
  *v1 = 134218242;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  sub_100007EE0(&_mh_execute_header, "RestorationMailboxEncoder: Unsupported MSSourceType (%lu) for smart mailbox: %{public}@", v4, v5);
}

void sub_10048CB98()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxEncoder: Encoding unified mailbox: %{public}@", v5);
}

void sub_10048CBDC()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10048CC28()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Failed to create NSKeyedUnarchiver");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048CC80()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Could not determine serialization type of data.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048CCD8()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"decodeMailboxData called with empty or nil data.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048CD98()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10048CDE4()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_10048CE30()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxDecoder: Mailbox was successfully returned from repository: %{public}@", v5);
}

void sub_10048CEA8(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1000078D0(a1, a2, a3, 5.8382e-34);
  sub_100007EE0(&_mh_execute_header, "RestorationMailboxDecoder: %{public}@ Error: %{public}@", v4, v5);
}

void sub_10048CEF4(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "RestorationMailboxDecoder: Decoded smart mailbox source type: %lu", &v2, 0xCu);
}

void sub_10048CF6C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxDecoder: Mailbox was successfully returned from controller: %{public}@", v5);
}

void sub_10048CFB0()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Failed to decode smart mailbox sourcetype.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048D03C()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Unified mailbox type not found in mailbox data.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_10048D094(uint64_t a1, NSObject *a2)
{
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "RestorationMailboxDecoder: Decoded unified mailbox type: %li", &v2, 0xCu);
}

void sub_10048D140()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "RestorationMailboxDecoder: Unified mailbox was successfully decoded: %{public}@", v5);
}

void sub_10048D184()
{
  sub_100007ED4();
  *v1 = 138543618;
  sub_1000079C4(v2, v1, @"Failed to create smart mailbox.");
  sub_100007EBC();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

uint64_t sub_10048D28C(uint64_t result, int a2, int a3, int a4)
{
  if (result)
  {
    v7 = result;
    v8 = +[SearchTopHitsSuggester log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(v7 + 13);
      v10[0] = 67109888;
      v10[1] = a2;
      v11 = 1024;
      v12 = v9;
      v13 = 1024;
      v14 = a3;
      v15 = 1024;
      v16 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Suggester finished with queryStatus: %d, hasQueryEmbedding: %{BOOL}d, hasKeywordResults: %{BOOL}d, hasEmbeddingResults: %{BOOL}d", v10, 0x1Au);
    }

    return (*(*(v7 + 40) + 16))();
  }

  return result;
}

void sub_10048D3A4(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to generate suggestions %@", buf, 0xCu);
}

void sub_10048D3FC(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "[instant answers] Failed to generate instant answers %@", buf, 0xCu);
}

void sub_10048D454(void *a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "[instant answers][Top Hit] final top hit item suggestions:%@ and their count:%ld after deduping with instant answers", buf, 0x16u);
}

void sub_10048D590(int a1, NSObject *a2, double a3)
{
  v3[0] = 67109376;
  v3[1] = a1;
  v4 = 2048;
  v5 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Determining most visible cell. ascending=%{BOOL}d preferredMinimumHeight=%0.1f", v3, 0x12u);
}

void sub_10048D614(uint8_t *buf, NSObject *a2, double a3, double a4)
{
  *buf = 134217984;
  *(buf + 4) = a4;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Current content offset: %0.1f", buf, 0xCu);
}

void sub_10048D658()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "CV safe visible bounds: %{public}@", v5);
}

void sub_10048D69C()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "Returning entirely visible cell. Index path: %{public}@", v5);
}

void sub_10048D6E0()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "Returning most visible cell. Index path: %{public}@", v5);
}

void sub_10048D918()
{
  sub_100007ED4();
  sub_100007EC8(v1, v2, 5.8381e-34);
  sub_10000795C(&_mh_execute_header, v3, v4, "Final dynamic offset representation: %{public}@", v5);
}

void sub_10048D95C()
{
  sub_100007ED4();
  *v1 = 134218242;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2114;
  *(v1 + 14) = v3;
  _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Calculating cell offset using dynamic offset on height %0.1f, dynamicOffset=%{public}@", v5, 0x16u);
}

void sub_10048DB00(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Calculating content offset for index path %{public}@ dynamicOffset=%{public}@", &v3, 0x16u);
}

uint64_t EntityProperty<>.init(title:)()
{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

{
  return EntityProperty<>.init(title:)();
}

uint64_t EntityProperty<>.init()()
{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

{
  return EntityProperty<>.init()();
}

uint64_t AssistantSchema.init<A>(_:)()
{
  return AssistantSchema.init<A>(_:)();
}

{
  return AssistantSchema.init<A>(_:)();
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall PersonNameComponents.formatted()()
{
  v0 = PersonNameComponents.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t GroupedSearchItems.subscript.getter()
{
  return GroupedSearchItems.subscript.getter();
}

{
  return GroupedSearchItems.subscript.getter();
}

uint64_t AppStorage.init<A>(wrappedValue:_:store:)()
{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)();
}

uint64_t ViewDimensions.subscript.getter()
{
  return ViewDimensions.subscript.getter();
}

{
  return ViewDimensions.subscript.getter();
}

uint64_t View.alignmentGuide(_:computeValue:)()
{
  return View.alignmentGuide(_:computeValue:)();
}

{
  return View.alignmentGuide(_:computeValue:)();
}

Swift::String __swiftcall BinaryFloatingPoint.formatted()()
{
  v0 = BinaryFloatingPoint.formatted()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Dictionary.subscript.getter()
{
  return Dictionary.subscript.getter();
}

{
  return Dictionary.subscript.getter();
}

uint64_t String.init<A>(describing:)()
{
  return String.init<A>(describing:)();
}

{
  return String.init<A>(describing:)();
}

{
  return String.init<A>(describing:)();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t _assertionFailure(_:_:file:line:flags:)()
{
  return _assertionFailure(_:_:file:line:flags:)();
}

{
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

{
  return DefaultStringInterpolation.appendInterpolation<A>(_:)();
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}