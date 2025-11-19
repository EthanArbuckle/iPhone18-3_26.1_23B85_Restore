void *sub_1002A8BA4(const void *a1, void *a2)
{
  v6 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D7870);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1002A8CCC(uint64_t a1)
{
  v3 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_1002A8DD0(const void *a1, void *a2)
{
  v7 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006D7870);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006D7870);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

void sub_1002A8FF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v17 = a1;
  v15 = a3;
  v16 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v29 = 0;
  v19 = type metadata accessor for AttributeContainer();
  v20 = *(v19 - 8);
  v21 = v20;
  v3 = __chkstk_darwin(v17);
  v22 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v22;
  v32 = v3;
  v23 = v5 + 16;
  v31 = v5 + 16;
  v24 = &v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v25 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v14 = v25;
    v6 = v25;
    v13 = v25;
    v29 = v25;
    (*(v21 + 16))(v22, v17, v19);
    KeyPath = swift_getKeyPath();
    v9[0] = v9;
    v9[2] = 8;
    v9[-2] = __chkstk_darwin(KeyPath);
    v9[1] = swift_getKeyPath();
    v28 = (*((*v6 & swift_isaMask) + 0x130))();
    sub_10001607C();
    AttributeContainer.subscript.setter();
    v8 = swift_getKeyPath();
    v9[3] = v9;
    v9[-2] = __chkstk_darwin(v8);
    v12 = swift_getKeyPath();
    v10 = [objc_opt_self() whiteColor];
    v11 = [v10 colorWithAlphaComponent:0.6];

    v27 = v11;
    sub_100016004();
    AttributeContainer.subscript.setter();
    (*(v21 + 32))(v15, v22, v19);
  }

  else
  {
    (*(v21 + 16))(v15, v17, v19);
  }
}

BOOL sub_1002A9330()
{

  sub_10025C9B0(&unk_1006D7900);
  v1 = dispatch thunk of static Equatable.== infix(_:_:)();

  return (v1 & 1) != 0;
}

void sub_1002A9454()
{

  sub_10001607C();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

void sub_1002A9488(uint64_t a1)
{
  v2[1] = a1;
  v1 = type metadata accessor for AttributeScopes.UIKitAttributes();
  v4 = *(v1 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  (*(v4 + 16))(v2 - v3);
  AttributeScopes.UIKitAttributes.font.getter();
  __break(1u);
}

BOOL sub_1002A952C()
{

  sub_10025C9B0(&qword_1006D78F8);
  v1 = dispatch thunk of static Equatable.== infix(_:_:)();

  return (v1 & 1) != 0;
}

void sub_1002A9650()
{

  sub_100016004();
  AttributeDynamicLookup.subscript.getter();
  __break(1u);
}

void sub_1002A9684(uint64_t a1)
{
  v2[1] = a1;
  v1 = type metadata accessor for AttributeScopes.UIKitAttributes();
  v4 = *(v1 - 8);
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  (*(v4 + 16))(v2 - v3);
  AttributeScopes.UIKitAttributes.foregroundColor.getter();
  __break(1u);
}

uint64_t sub_1002A9728(uint64_t a1)
{
  v10 = a1;
  v14 = 0;
  v13 = 0;
  v4 = (*(*(sub_10025C9B0(&qword_1006D7870) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = &v3 - v4;
  v14 = __chkstk_darwin(v10);
  v13 = v1;
  v11 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  (*(v8 + 16))(v5, v10);
  (*(v8 + 56))(v5, 0, 1, v11);
  v6 = (v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView____lazy_storage___titleTextAttributesTransformer);
  v7 = &v12;
  swift_beginAccess();
  sub_1002A8DD0(v5, v6);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

void (*sub_1002A98AC(void *a1))(void **a1, char a2)
{
  v6 = sub_100294700(0x28uLL);
  *a1 = v6;
  *v6 = v1;
  v2 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = sub_100294700(v5);
  v8 = sub_100294700(v5);
  v6[4] = v8;
  sub_1002A87A8(v8);
  return sub_1002A99C4;
}

void sub_1002A99C4(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1002A9728(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1002A9728(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

id sub_1002A9AC0()
{
  result = [objc_opt_self() whiteColor];
  qword_1006EFE48 = result;
  return result;
}

uint64_t *sub_1002A9AFC()
{
  if (qword_1006D5DF0 != -1)
  {
    swift_once();
  }

  return &qword_1006EFE48;
}

void *sub_1002A9B5C()
{
  v1 = *sub_1002A9AFC();
  _objc_retain(v1);
  return v1;
}

UIColor sub_1002A9BE8()
{
  sub_1002A9C44();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.17294, 0.19882, 0.23412, 1.0).super.isa;
  qword_1006EFE50 = result.super.isa;
  return result;
}

unint64_t sub_1002A9C44()
{
  v2 = qword_1006DBC80;
  if (!qword_1006DBC80)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DBC80);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1002A9CA8()
{
  if (qword_1006D5DF8 != -1)
  {
    swift_once();
  }

  return &qword_1006EFE50;
}

void *sub_1002A9D08()
{
  v1 = *sub_1002A9CA8();
  _objc_retain(v1);
  return v1;
}

UIColor sub_1002A9D94()
{
  sub_1002A9C44();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.42106, 0.43918, 0.46388, 1.0).super.isa;
  qword_1006EFE58 = result.super.isa;
  return result;
}

uint64_t *sub_1002A9DF0()
{
  if (qword_1006D5E00 != -1)
  {
    swift_once();
  }

  return &qword_1006EFE58;
}

void *sub_1002A9E50()
{
  v1 = *sub_1002A9DF0();
  _objc_retain(v1);
  return v1;
}

id sub_1002A9F48()
{
  v0 = [objc_opt_self() systemFontOfSize:78.0 weight:UIFontWeightBold];

  return v0;
}

id sub_1002AA01C()
{
  v0 = [objc_opt_self() systemFontOfSize:13.0 weight:UIFontWeightMedium];

  return v0;
}

uint64_t sub_1002AA0F4()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006D7800);
  sub_1000208F4(v1, qword_1006D7800);
  type metadata accessor for ConversationSenderHeaderView();
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t type metadata accessor for ConversationSenderHeaderView()
{
  v1 = qword_1006D78C8;
  if (!qword_1006D78C8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002AA1D0()
{
  if (qword_1006D5E08 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006D7800);
}

uint64_t sub_1002AA23C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002AA1D0();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

char *sub_1002AA2A8(double a1, double a2, double a3, double a4)
{
  v25 = 0;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_viewModel = 0;
  *&v25[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_minimumHeight] = 0;
  *&v25[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_maximumHeight] = 0;
  v13 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView;
  sub_1002649B4();
  *&v25[v13] = sub_10025C704();
  v14 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel;
  sub_100264928();
  *&v25[v14] = sub_10025C704();
  v15 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton;
  sub_100015CD8();
  *&v25[v15] = sub_10025C704();
  v16 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView;
  sub_1002AA63C();
  *&v25[v16] = sub_10025C704();
  v17 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView;
  *&v25[v17] = sub_10025C704();
  v18 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView____lazy_storage___titleTextAttributesTransformer;
  v4 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v4 - 8) + 56))(&v25[v18], 1);
  if (MUISolariumFeatureEnabled())
  {
    sub_1002939E0();
    sub_1002913A4();
    _allocateUninitializedArray<A>(_:)();
    v19 = sub_1002A7800();
    _objc_retain(v19);
    *&v25[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarController] = v19;
    v5 = [v19 view];
    *&v25[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView] = v5;
    _objc_release(v19);
  }

  else
  {
    *&v25[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarController] = 0;
    v8 = *&v25[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView];
    _objc_retain(v8);
    *&v25[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView] = v8;
  }

  v20.receiver = v25;
  v20.super_class = type metadata accessor for ConversationSenderHeaderView();
  v7 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  _objc_retain(v7);
  v25 = v7;
  sub_1002AE6B8();
  _objc_release(v25);
  return v7;
}

unint64_t sub_1002AA63C()
{
  v2 = qword_1006D7888;
  if (!qword_1006D7888)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7888);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1002AA6EC()
{
  swift_unknownObjectWeakInit();
  *OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_viewModel = 0;
  *OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_minimumHeight = 0;
  *OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_maximumHeight = 0;
  v1 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView;
  sub_1002649B4();
  *v1 = sub_10025C704();
  v2 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel;
  sub_100264928();
  *v2 = sub_10025C704();
  v3 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton;
  sub_100015CD8();
  *v3 = sub_10025C704();
  v4 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView;
  sub_1002AA63C();
  *v4 = sub_10025C704();
  v5 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_contentView;
  *v5 = sub_10025C704();
  v6 = OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView____lazy_storage___titleTextAttributesTransformer;
  v0 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v0 - 8) + 56))(v6, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002AA978(char *a1)
{
  v52 = a1;
  v51 = v1;
  _objc_retain(a1);
  sub_1002A7EB8(a1);
  if (MUISolariumFeatureEnabled())
  {
    v38 = &a1[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
    swift_beginAccess();
    v39 = *v38;
    _objc_retain(*v38);
    swift_endAccess();
    v42 = v39;
    sub_10026A58C(&v42);
    if (v39)
    {
      v37 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarController);
      _objc_retain(v37);
      if (v37)
      {
        v35 = &a1[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
        swift_beginAccess();
        v36 = *v35;
        _objc_retain(*v35);
        swift_endAccess();
        [v37 updateWithResult:v36];
        _objc_release(v36);
        _objc_release(v37);
      }
    }

    else
    {
      v34 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarController);
      _objc_retain(v34);
      if (v34)
      {
        sub_1002913A4();
        _allocateUninitializedArray<A>(_:)();
        *v2 = sub_10025C704();
        sub_1002612B0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v34 updateContacts:isa];
        _objc_release(isa);
        _objc_release(v34);
      }
    }
  }

  else
  {
    v31 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView);
    _objc_retain(v31);
    v32 = &a1[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
    swift_beginAccess();
    if (*v32)
    {
      v28 = *v32;
      _objc_retain(*v32);
      swift_endAccess();
      v29 = [v28 image];
      _objc_release(v28);
      v30 = v29;
    }

    else
    {
      swift_endAccess();
      v30 = 0;
    }

    [v31 setImage:?];
    _objc_release(v30);
    _objc_release(v31);
    v25 = objc_opt_self();
    v27 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView);
    _objc_retain(v27);
    v24 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView);
    _objc_retain(v24);
    [v24 bounds];
    v47 = v3;
    v48 = v4;
    v49 = v5;
    v50 = v6;
    v26 = v6;
    _objc_release(v24);
    [v25 roundAvatarView:v27 withBorder:0 size:v26];
    _objc_release(v27);
  }

  v21 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel);
  _objc_retain(v21);
  swift_beginAccess();

  swift_endAccess();
  v20 = String._bridgeToObjectiveC()();

  [v21 setText:v20];
  _objc_release(v20);
  _objc_release(v21);
  v22 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel);
  _objc_retain(v22);
  v23 = &a1[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
  swift_beginAccess();
  if (*v23)
  {
    v16 = *v23;
    _objc_retain(*v23);
    swift_endAccess();
    v17 = [v16 headerColors];
    _objc_release(v16);
    v18 = [v17 textColor];
    _objc_release(v17);
    v19 = v18;
  }

  else
  {
    swift_endAccess();
    v19 = 0;
  }

  v45 = v19;
  if (v19)
  {
    v46 = v45;
  }

  else
  {
    v46 = [objc_opt_self() whiteColor];
    if (v45)
    {
      sub_10026A58C(&v45);
    }
  }

  v13 = v46;
  [v22 setTextColor:?];
  _objc_release(v13);
  _objc_release(v22);
  sub_1002ACAB4(a1);
  v14 = *(v40 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_backgroundView);
  _objc_retain(v14);
  v15 = &a1[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
  swift_beginAccess();
  if (*v15)
  {
    v9 = *v15;
    _objc_retain(*v15);
    swift_endAccess();
    v10 = [v9 headerColors];
    _objc_release(v9);
    v11 = [v10 contrastingBackgroundColor];
    _objc_release(v10);
    v12 = v11;
  }

  else
  {
    swift_endAccess();
    v12 = 0;
  }

  v43 = v12;
  if (v12)
  {
    v44 = v43;
  }

  else
  {
    v8 = *sub_1002A9CA8();
    _objc_retain(v8);
    v44 = v8;
    if (v43)
    {
      sub_10026A58C(&v43);
    }
  }

  [v14 setBackgroundColor:v44];
  _objc_release(v7);
  _objc_release(v14);
}

uint64_t sub_1002AB258()
{
  v62 = 0;
  v61 = 0;
  v1 = sub_10025C9B0(&qword_1006D7890);
  v44 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v45 = &v15 - v44;
  v2 = sub_10025C9B0(&qword_1006D7870);
  v46 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v47 = &v15 - v46;
  v48 = type metadata accessor for UIButton.Configuration();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v48);
  v52 = &v15 - v51;
  v62 = &v15 - v51;
  v61 = v0;
  v56 = &qword_1006D7000;
  v53 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_avatarView);
  _objc_retain(v53);
  v54 = 1;
  [v53 setOverrideUserInterfaceStyle:?];
  _objc_release(v53);
  v55 = *(v0 + v56[264]);
  _objc_retain(v55);
  LODWORD(v3) = *sub_1002A78D0();
  [v55 setContentCompressionResistancePriority:v54 forAxis:v3];
  _objc_release(v55);
  v60 = *(v0 + v56[264]);
  _objc_retain(v60);
  v58 = MSAccessibilityIdentifierSenderHeaderAvatar;
  _objc_retain(MSAccessibilityIdentifierSenderHeaderAvatar);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v4;
  v59 = String._bridgeToObjectiveC()();

  _objc_release(v58);
  [v60 setAccessibilityIdentifier:v59];
  _objc_release(v59);
  _objc_release(v60);
  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    v5 = v43;
    v40 = &qword_1006D7000;
    v39 = *(v43 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_imageView);
    _objc_retain(v39);
    [v39 setOverrideUserInterfaceStyle:1];
    _objc_release(v39);
    v41 = objc_opt_self();
    v42 = *(v5 + v40[265]);
    _objc_retain(v42);
    [v41 roundAvatarView:v42 withBorder:0 size:sub_1002AA0D4()];
    _objc_release(v42);
  }

  v6 = v43;
  v26 = &qword_1006D7000;
  v17 = *(v43 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel);
  _objc_retain(v17);
  v16 = [objc_opt_self() whiteColor];
  [v17 setTextColor:?];
  _objc_release(v16);
  _objc_release(v17);
  v19 = *(v6 + v26[266]);
  v7 = _objc_retain(v19);
  v8 = (*((*v6 & swift_isaMask) + 0x128))(v7);
  v9 = v43;
  v18 = v8;
  [v19 setFont:?];
  _objc_release(v18);
  _objc_release(v19);
  v20 = *(v9 + v26[266]);
  _objc_retain(v20);
  LODWORD(v10) = *sub_1002A7968();
  v36 = &selRef_secondsFromGMT;
  v37 = 1;
  [v20 setContentCompressionResistancePriority:v10 forAxis:?];
  _objc_release(v20);
  v24 = *(v9 + v26[266]);
  _objc_retain(v24);
  v22 = MSAccessibilityIdentifierSenderHeaderTitle;
  _objc_retain(MSAccessibilityIdentifierSenderHeaderTitle);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v11;
  v23 = String._bridgeToObjectiveC()();

  _objc_release(v22);
  [v24 setAccessibilityIdentifier:v23];
  _objc_release(v23);
  _objc_release(v24);
  v25 = *(v9 + v26[266]);
  _objc_retain(v25);
  [v25 setNumberOfLines:v37];
  _objc_release(v25);
  v27 = *(v9 + v26[266]);
  _objc_retain(v27);
  [v27 setTextAlignment:v37];
  _objc_release(v27);
  static UIButton.Configuration.plain()();
  v30 = 0;
  sub_1002AE7B0(0);
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  sub_1002A75C8();
  v28 = MFImageGlyphSenderHeaderMenu;
  _objc_retain(MFImageGlyphSenderHeaderMenu);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = sub_1002A7840();
  _objc_release(v28);
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  UIButton.Configuration.contentInsets.setter();
  sub_1002A87A8(v47);
  v12 = *(*(type metadata accessor for UIConfigurationTextAttributesTransformer() - 8) + 56);
  v31 = 0;
  v33 = 1;
  v12(v47);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  UIButton.Configuration.titleLineBreakMode.setter();
  v35 = &qword_1006D7000;
  v32 = *(v43 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton);
  _objc_retain(v32);
  (*(v49 + 16))(v45, v52, v48);
  (*(v49 + 56))(v45, v31, v33, v48);
  UIButton.configuration.setter();
  _objc_release(v32);
  v34 = *(v43 + v35[267]);
  _objc_retain(v34);
  [v34 setShowsMenuAsPrimaryAction:v33 & 1];
  _objc_release(v34);
  v38 = *(v43 + v35[267]);
  _objc_retain(v38);
  LODWORD(v13) = *sub_1002A7A00();
  [v38 v36[369]];
  _objc_release(v38);
  return (*(v49 + 8))(v52, v48);
}

uint64_t sub_1002ABE34()
{
  v50 = 0;
  v57 = sub_1002AE940;
  v59 = sub_10026EE84;
  v64 = sub_1002AE948;
  v68 = sub_10026EE84;
  v70 = sub_10026434C;
  v72 = sub_10026434C;
  v74 = sub_10026EF2C;
  v76 = sub_10026434C;
  v78 = sub_10026434C;
  v81 = sub_10026EF2C;
  v92 = 0;
  v41 = 0;
  v54 = type metadata accessor for Logger();
  v52 = *(v54 - 8);
  v53 = v54 - 8;
  v42 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v54);
  v47 = v32 - v42;
  v92 = v0;
  v48 = &qword_1006D7000;
  v45 = *(v0 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_titleLabel);
  _objc_retain(v45);
  object = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Apple", 5uLL, 1)._object;
  v44 = String._bridgeToObjectiveC()();

  v49 = &selRef_setOriginalLocations_;
  [v45 setText:v44];
  _objc_release(v44);
  _objc_release(v45);
  v1 = *v0;
  v46 = &swift_isaMask;
  v2 = (*((v1 & swift_isaMask) + 0x158))();
  v3 = sub_1002A80D0(v2);
  v4 = (*((*v56 & *v46) + 0x160))(v3);
  sub_1002A82BC(v4);
  v5 = v47;
  v51 = *&v56[v48[266]];
  _objc_retain(v51);
  [v51 v49[453]];
  _objc_release(v51);
  v6 = sub_1002AA1D0();
  (*(v52 + 16))(v5, v6, v54);
  _objc_retain(v56);
  v55 = 24;
  v66 = 7;
  v7 = swift_allocObject();
  v8 = v56;
  v58 = v7;
  *(v7 + 16) = v56;
  _objc_retain(v8);
  v67 = swift_allocObject();
  *(v67 + 16) = v56;
  v85 = Logger.logObject.getter();
  v86 = static os_log_type_t.default.getter();
  v62 = 17;
  v71 = swift_allocObject();
  v61 = 32;
  *(v71 + 16) = 32;
  v73 = swift_allocObject();
  v63 = 8;
  *(v73 + 16) = 8;
  v65 = 32;
  v9 = swift_allocObject();
  v10 = v58;
  v60 = v9;
  *(v9 + 16) = v57;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v60;
  v75 = v11;
  *(v11 + 16) = v59;
  *(v11 + 24) = v12;
  v77 = swift_allocObject();
  *(v77 + 16) = v61;
  v79 = swift_allocObject();
  *(v79 + 16) = v63;
  v13 = swift_allocObject();
  v14 = v67;
  v69 = v13;
  *(v13 + 16) = v64;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v69;
  v82 = v15;
  *(v15 + 16) = v68;
  *(v15 + 24) = v16;
  v84 = sub_10025C9B0(&unk_1006D7720);
  v80 = _allocateUninitializedArray<A>(_:)();
  v83 = v17;

  v18 = v71;
  v19 = v83;
  *v83 = v70;
  v19[1] = v18;

  v20 = v73;
  v21 = v83;
  v83[2] = v72;
  v21[3] = v20;

  v22 = v75;
  v23 = v83;
  v83[4] = v74;
  v23[5] = v22;

  v24 = v77;
  v25 = v83;
  v83[6] = v76;
  v25[7] = v24;

  v26 = v79;
  v27 = v83;
  v83[8] = v78;
  v27[9] = v26;

  v28 = v82;
  v29 = v83;
  v83[10] = v81;
  v29[11] = v28;
  sub_1002612B0();

  if (os_log_type_enabled(v85, v86))
  {
    v30 = v41;
    v33 = static UnsafeMutablePointer.allocate(capacity:)();
    v32[5] = sub_10025C9B0(&qword_1006D7290);
    v34 = sub_1002641E8(0);
    v35 = sub_1002641E8(2);
    v37 = &v91;
    v91 = v33;
    v38 = &v90;
    v90 = v34;
    v39 = &v89;
    v89 = v35;
    v36 = 2;
    sub_10026423C(2, &v91);
    sub_10026423C(v36, v37);
    v87 = v70;
    v88 = v71;
    sub_100264250(&v87, v37, v38, v39);
    v40 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v87 = v72;
      v88 = v73;
      sub_100264250(&v87, &v91, &v90, &v89);
      v32[3] = 0;
      v87 = v74;
      v88 = v75;
      sub_100264250(&v87, &v91, &v90, &v89);
      v32[2] = 0;
      v87 = v76;
      v88 = v77;
      sub_100264250(&v87, &v91, &v90, &v89);
      v32[1] = 0;
      v87 = v78;
      v88 = v79;
      sub_100264250(&v87, &v91, &v90, &v89);
      v32[0] = 0;
      v87 = v81;
      v88 = v82;
      sub_100264250(&v87, &v91, &v90, &v89);
      _os_log_impl(&_mh_execute_header, v85, v86, "Update Heights - max=%s, min=%s", v33, 0x16u);
      sub_10026429C(v34);
      sub_10026429C(v35);
      UnsafeMutablePointer.deallocate()();
    }
  }

  else
  {
  }

  _objc_release(v85);
  return (*(v52 + 8))(v47, v54);
}

uint64_t sub_1002AC914()
{
  sub_1002A8200();
  sub_1002AEF78();
  return BinaryFloatingPoint.formatted()()._countAndFlagsBits;
}

uint64_t sub_1002AC95C()
{
  sub_1002A8014();
  sub_1002AEF78();
  return BinaryFloatingPoint.formatted()()._countAndFlagsBits;
}

uint64_t sub_1002AC9F4(double a1)
{
  v1 = sub_1002A813C();
  *v2 = *v2 + a1;
  v1();
  v3 = sub_1002A8328();
  *v4 = *v4 + a1;
  return v3();
}

uint64_t sub_1002ACAB4(uint64_t a1)
{
  v104 = a1;
  v101 = sub_1002AEC9C;
  v102 = sub_1002AECA8;
  ObjectType = swift_getObjectType();
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v119 = 0;
  v115 = 0;
  v105 = (*(*(sub_10025C9B0(&qword_1006D7890) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v104);
  v106 = v29 - v105;
  v107 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v109 = v29 - v107;
  v123 = v29 - v107;
  v122 = v4;
  v121 = v1;
  v108 = *(v1 + OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton);
  _objc_retain(v108);
  UIButton.configuration.getter();
  _objc_release(v108);
  v110 = type metadata accessor for UIButton.Configuration();
  v5 = *(v110 - 8);
  v111 = *(v5 + 48);
  v112 = v5 + 48;
  if (v111(v109, 1) == 0)
  {
    v96 = (v104 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_informationButtonTitle);
    v97 = &v114;
    swift_beginAccess();
    v98 = *v96;
    v99 = v96[1];

    swift_endAccess();
    UIButton.Configuration.title.setter();
  }

  if ((v111)(v109, 1, v110) == 0)
  {
    v94 = (v104 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult);
    swift_beginAccess();
    if (*v94)
    {
      v90 = *v94;
      _objc_retain(v90);
      swift_endAccess();
      v91 = [v90 headerColors];
      _objc_release(v90);
      v92 = [v91 secondaryTextColor];
      _objc_release(v91);
      v93 = v92;
    }

    else
    {
      swift_endAccess();
      v93 = 0;
    }

    v88 = v93;
    v89 = sub_1002AE7B0(v93);
    _objc_release(v88);
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  }

  v70 = *&v100[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v70);
  sub_10001637C(v109, v106);
  UIButton.configuration.setter();
  _objc_release(v70);
  v82 = 0;
  v71 = sub_100015D3C();
  v72 = 1;
  v6 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Show All Messages", 0x11uLL, 1);
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;
  v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Localizable-BlackPearl", 0x16uLL, v72 & 1);
  v73 = v7._countAndFlagsBits;
  v80 = v7._object;
  v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Menu title", 0xAuLL, v72 & 1);
  v74 = v8._countAndFlagsBits;
  v79 = v8._object;
  v78.super.isa = sub_10028FEB4();
  v9 = sub_100015E30();
  v10.value._countAndFlagsBits = v73;
  v125._countAndFlagsBits = v74;
  v10.value._object = v80;
  v11._countAndFlagsBits = v9;
  v12._countAndFlagsBits = countAndFlagsBits;
  v11._object = v13;
  v12._object = object;
  v76 = v11._object;
  v125._object = v79;
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v10, v78, v11, v125);

  _objc_release(v78.super.isa);

  sub_1002A75C8();
  v83 = MFImageGlyphEnvelope;
  _objc_retain(MFImageGlyphEnvelope);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = sub_1002A7840();
  _objc_release(v83);
  v85 = (v104 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected);
  v86 = &v120;
  swift_beginAccess();
  v87 = *v85;
  swift_endAccess();
  v69 = (v87 & 1) == 0;
  v50 = v69;
  v49 = 7;
  v52 = swift_allocObject();
  v47 = v52 + 16;
  _objc_retain(v100);
  v48 = v100;
  swift_unknownObjectWeakInit();
  _objc_release(v48);

  v63 = 32;
  v14 = swift_allocObject();
  v15 = ObjectType;
  v51 = v14;
  *(v14 + 16) = v52;
  *(v14 + 24) = v15;
  sub_100015E5C();
  v53 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v119 = v53;
  v57 = &OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_bucket;
  v54 = (v104 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_bucket);
  v55 = &v118;
  v64 = 0;
  swift_beginAccess();
  v56 = *v54;
  swift_endAccess();
  v58 = MUIBucket.localizedTitle.getter();
  v59 = v16;
  v60 = (v104 + *v57);
  v61 = &v117;
  swift_beginAccess();
  v62 = *v60;
  swift_endAccess();
  v65 = MUIBucket.image.getter();
  v66 = (v104 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected);
  v67 = &v116;
  swift_beginAccess();
  v68 = *v66;
  swift_endAccess();
  v46 = (v68 & 1) != 0;
  v32 = v46;
  v31 = 7;
  v34 = swift_allocObject();
  v29[1] = v34 + 16;
  _objc_retain(v100);
  v30 = v100;
  swift_unknownObjectWeakInit();
  _objc_release(v30);

  v17 = swift_allocObject();
  v18 = ObjectType;
  v33 = v17;
  *(v17 + 16) = v34;
  *(v17 + 24) = v18;
  sub_100015E5C();
  v40 = 0;
  v45 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

  v115 = v45;
  v44 = *&v100[OBJC_IVAR____TtC10MobileMail28ConversationSenderHeaderView_subtitleButton];
  _objc_retain(v44);
  sub_1002AECB4();
  v36 = sub_1002A7738();
  v37 = _allocateUninitializedArray<A>(_:)();
  v35 = v19;
  _objc_retain(v53);
  v20 = v45;
  *v35 = v53;
  _objc_retain(v20);
  v21 = v37;
  v35[1] = v45;
  sub_1002612B0();
  preferredElementSize = v21;
  v42 = sub_100015E30();
  v39 = v22;
  v41.value = sub_1002AE634();
  v23 = sub_1002AE664();
  v24._object = v39;
  v124.is_nil = v40;
  v25 = v23;
  v24._countAndFlagsBits = v42;
  v26.value._countAndFlagsBits = v40;
  v26.value._object = v40;
  v124.value.super.isa = v40;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v24, v26, v124, v41, v25, preferredElementSize, v28).super.super.isa;
  [v44 setMenu:?];
  _objc_release(isa);
  _objc_release(v44);
  _objc_release(v45);
  _objc_release(v53);
  return sub_1000164A4(v109);
}

uint64_t sub_1002AD7F8(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v49 = a1;
  v48 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v47 = 0;
  v51 = type metadata accessor for Logger();
  v52 = *(v51 - 8);
  v53 = v52;
  v2 = __chkstk_darwin(v49);
  v54 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v2;
  v55 = v4 + 16;
  v69 = v4 + 16;
  v56 = &v68;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v47;
  }

  v46 = v57;
  v44 = v57;
  v67 = v57;
  v5 = sub_1002A7DE0();
  v45 = v5;
  if (!v5)
  {

    return v47;
  }

  v43 = v45;
  v39 = v45;
  v66 = v45;
  v40 = &v45[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected];
  v41 = &v65;
  swift_beginAccess();
  v42 = *v40;
  swift_endAccess();
  if (v42 == 1)
  {
    v61[0] = sub_1002A7DE0();
    if (v61[0])
    {
      v38 = v61[0];
      v6 = v61[0];
      sub_10026A58C(v61);
      v36 = &v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected];
      v37 = &v59;
      swift_beginAccess();
      *v36 = 0;
      swift_endAccess();
    }

    else
    {
      sub_10026A58C(v61);
    }

    v60 = sub_1002A7B80();
    if (v60)
    {
      v35 = v60;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_getObjectType();
      [v35 showAllMessagesForConversationSenderHeaderView:v44];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
    }

    return v47;
  }

  else
  {
    v7 = v54;
    v8 = sub_1002AA1D0();
    (*(v53 + 16))(v7, v8, v51);
    v32 = Logger.logObject.getter();
    v29 = v32;
    v31 = static os_log_type_t.default.getter();
    v30 = v31;
    sub_10025C9B0(&unk_1006D7720);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v32, v31))
    {
      v9 = v47;
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = v20;
      v17 = sub_10025C9B0(&qword_1006D7290);
      v18 = 0;
      v21 = sub_1002641E8(0);
      v19 = v21;
      v22 = sub_1002641E8(v18);
      v64 = v20;
      v63 = v21;
      v62 = v22;
      v23 = 0;
      v24 = &v64;
      sub_10026423C(0, &v64);
      sub_10026423C(v23, v24);
      v61[2] = v33;
      v25 = &v12;
      __chkstk_darwin(&v12);
      v26 = &v12 - 6;
      *(&v12 - 4) = v10;
      *(&v12 - 3) = &v63;
      *(&v12 - 2) = &v62;
      v27 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v28 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v29, v30, "Ignore selection - Show All Messages is already selected", v16, 2u);
        v14 = 0;
        sub_10026429C(v19);
        sub_10026429C(v22);
        UnsafeMutablePointer.deallocate()();

        v15 = v28;
      }
    }

    else
    {

      v15 = v47;
    }

    v13 = v15;

    (*(v53 + 8))(v54, v51);
    return v13;
  }
}

uint64_t sub_1002ADF18(uint64_t a1, uint64_t a2)
{
  v50 = a2;
  v49 = a1;
  v48 = 0;
  v70 = 0;
  v69 = 0;
  v67 = 0;
  v66 = 0;
  v47 = 0;
  v51 = type metadata accessor for Logger();
  v52 = *(v51 - 8);
  v53 = v52;
  v2 = __chkstk_darwin(v49);
  v54 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v2;
  v55 = v4 + 16;
  v69 = v4 + 16;
  v56 = &v68;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v57 = Strong;
  swift_endAccess();
  if (!Strong)
  {
    return v47;
  }

  v46 = v57;
  v44 = v57;
  v67 = v57;
  v5 = sub_1002A7DE0();
  v45 = v5;
  if (!v5)
  {

    return v47;
  }

  v43 = v45;
  v39 = v45;
  v66 = v45;
  v40 = &v45[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected];
  v41 = &v65;
  swift_beginAccess();
  v42 = *v40;
  swift_endAccess();
  if (v42)
  {
    v7 = v54;
    v8 = sub_1002AA1D0();
    (*(v53 + 16))(v7, v8, v51);
    v32 = Logger.logObject.getter();
    v29 = v32;
    v31 = static os_log_type_t.default.getter();
    v30 = v31;
    sub_10025C9B0(&unk_1006D7720);
    v33 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v32, v31))
    {
      v9 = v47;
      v20 = static UnsafeMutablePointer.allocate(capacity:)();
      v16 = v20;
      v17 = sub_10025C9B0(&qword_1006D7290);
      v18 = 0;
      v21 = sub_1002641E8(0);
      v19 = v21;
      v22 = sub_1002641E8(v18);
      v64 = v20;
      v63 = v21;
      v62 = v22;
      v23 = 0;
      v24 = &v64;
      sub_10026423C(0, &v64);
      sub_10026423C(v23, v24);
      v61[2] = v33;
      v25 = &v12;
      __chkstk_darwin(&v12);
      v26 = &v12 - 6;
      *(&v12 - 4) = v10;
      *(&v12 - 3) = &v63;
      *(&v12 - 2) = &v62;
      v27 = sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();
      v28 = v9;
      if (v9)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&_mh_execute_header, v29, v30, "Ignore selection - Category is already selected", v16, 2u);
        v14 = 0;
        sub_10026429C(v19);
        sub_10026429C(v22);
        UnsafeMutablePointer.deallocate()();

        v15 = v28;
      }
    }

    else
    {

      v15 = v47;
    }

    v13 = v15;

    (*(v53 + 8))(v54, v51);
    return v13;
  }

  else
  {
    v61[0] = sub_1002A7DE0();
    if (v61[0])
    {
      v38 = v61[0];
      v6 = v61[0];
      sub_10026A58C(v61);
      v36 = &v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected];
      v37 = &v59;
      swift_beginAccess();
      *v36 = 1;
      swift_endAccess();
    }

    else
    {
      sub_10026A58C(v61);
    }

    v60 = sub_1002A7B80();
    if (v60)
    {
      v35 = v60;
      swift_unknownObjectRetain();
      sub_100294754();
      swift_getObjectType();
      [v35 showCategoryMessagesForConversationSenderHeaderView:v44];
      swift_unknownObjectRelease();
    }

    else
    {
      sub_100294754();
    }

    return v47;
  }
}

uint64_t sub_1002AE634()
{
  sub_1002AEBF0(0);

  return 0;
}

uint64_t sub_1002AE664()
{
  if (sub_10047E218(17, 0, 0))
  {
    return -1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1002AE6B8()
{
  v1 = (*((*v0 & swift_isaMask) + 0x148))();
  v2 = (*((*v4 & swift_isaMask) + 0x150))(v1);
  return (*((*v4 & swift_isaMask) + 0x168))(v2);
}

id sub_1002AE7B0(void *a1)
{
  v11 = 0;
  v13 = a1;
  v12 = v1;
  sub_1002AED18();
  v2 = (*((*v1 & swift_isaMask) + 0x130))();
  v6 = sub_1002AE950(v2, 1);
  v11 = v6;
  _objc_retain(a1);
  v9 = a1;
  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v5 = *sub_1002A9DF0();
    _objc_retain(v5);
    v10 = v5;
  }

  v8 = sub_1002AE9B4(v10);
  _objc_retain(v8);
  v4 = [v6 configurationByApplyingConfiguration:v8];
  _objc_release(v8);
  _objc_release(v8);
  _objc_release(v6);
  return v4;
}

id sub_1002AE950(void *a1, uint64_t a2)
{
  v4 = [swift_getObjCClassFromMetadata() configurationWithFont:a1 scale:a2];
  _objc_release(a1);
  return v4;
}

id sub_1002AE9B4(void *a1)
{
  v3 = [swift_getObjCClassFromMetadata() configurationWithHierarchicalColor:a1];
  _objc_release(a1);
  return v3;
}

id sub_1002AEA10()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConversationSenderHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1002AEB7C()
{
  sub_1002913A4();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithContacts:?];
  _objc_release(isa);

  return v3;
}

unint64_t sub_1002AEBF0(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Options();
    v1 = static Array._allocateBufferUninitialized(minimumCapacity:)();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

unint64_t sub_1002AECB4()
{
  v2 = qword_1006D7898;
  if (!qword_1006D7898)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7898);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002AED18()
{
  v2 = qword_1006DBC60;
  if (!qword_1006DBC60)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DBC60);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002AED98()
{
  updated = sub_1002AEEDC();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1002AEEDC()
{
  v4 = qword_1006D78D8;
  if (!qword_1006D78D8)
  {
    type metadata accessor for UIConfigurationTextAttributesTransformer();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D78D8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1002AEF78()
{
  v2 = qword_1006D78E0;
  if (!qword_1006D78E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D78E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002AEFF8(uint64_t a1)
{
  v3 = *(a1 + 32);

  v3(v1);
}

uint64_t sub_1002AF0B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

void sub_1002AF184(void *a1)
{
  _objc_retain(a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  _objc_release(a1);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1002AF288()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  return Strong;
}

uint64_t sub_1002AF350()
{
  swift_unknownObjectRetain();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1002AF42C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_currentExpansionStatus);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002AF4E8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_currentExpansionStatus);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

double sub_1002AF5AC()
{
  v2 = sub_1002AF600();
  [v2 constant];
  v3 = v0;
  _objc_release(v2);
  return v3;
}

id sub_1002AF600()
{
  v8 = (v0 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator____lazy_storage___heightConstraint);
  swift_beginAccess();
  v9 = *v8;
  _objc_retain(*v8);
  swift_endAccess();
  if (v9)
  {
    return v9;
  }

  v3 = swift_allocObject();
  _objc_retain(v7);
  swift_unknownObjectWeakInit();
  _objc_release(v7);

  v5 = sub_1002AF97C(v3);

  _objc_retain(v5);
  v4 = &v7[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator____lazy_storage___heightConstraint];
  swift_beginAccess();
  v1 = *v4;
  *v4 = v5;
  _objc_release(v1);
  swift_endAccess();
  return v5;
}

uint64_t sub_1002AF84C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_previousContentOffset);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002AF8CC(uint64_t a1, uint64_t a2, char a3)
{
  v8 = v3 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_previousContentOffset;
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return swift_endAccess();
}

uint64_t sub_1002AF97C(uint64_t a1)
{
  v7[4] = (a1 + 16);
  swift_beginAccess();
  v7[0] = swift_unknownObjectWeakLoadStrong();
  if (v7[0])
  {
    v4 = v7[0];
    _objc_retain(v7[0]);
    sub_10026A58C(v7);
    swift_endAccess();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    _objc_release(v4);
    v6 = Strong;
  }

  else
  {
    sub_10026A58C(v7);
    swift_endAccess();
    v6 = 0;
  }

  if (v6)
  {
    _objc_retain(v6);
    v2 = [v6 heightAnchor];
    _objc_release(v6);
    v3 = [v2 constraintEqualToConstant:0.0];
    _objc_release(v2);
    [v3 setActive:1];
    _objc_release(v6);
    return v3;
  }

  else
  {
    sub_1003C05A4();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_1002AFBB4(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator____lazy_storage___heightConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1002AFC4C()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_shouldScrollHeader);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1002AFCB4(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_shouldScrollHeader);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1002AFD28()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002AFD8C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id sub_1002AFE34(void *a1)
{
  ObjectType = swift_getObjectType();
  v8 = a1;
  v9 = v1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_currentExpansionStatus] = 2;
  v2 = &v9[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_previousContentOffset];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  *&v9[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator____lazy_storage___heightConstraint] = 0;
  v9[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_shouldScrollHeader] = 0;
  v9[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow] = 2;
  _objc_retain(a1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  _objc_release(a1);
  swift_endAccess();
  v7.receiver = v9;
  v7.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v7, "init");
  _objc_retain(v6);
  v9 = v6;
  _objc_release(a1);
  _objc_release(v9);
  return v6;
}

void sub_1002B0034(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v9 = COERCE_DOUBLE(sub_1002D5558(a1));
    if (v1)
    {
      _objc_release(Strong);
    }

    else
    {
      swift_beginAccess();
      swift_endAccess();
      sub_1002B03E4();
      v7 = dispatch thunk of static Equatable.== infix(_:_:)() ^ 1;
      v8 = &v11[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_currentExpansionStatus];
      swift_beginAccess();
      *v8 = a1;
      swift_endAccess();
      sub_1002D5628(v9);
      if (v9 == 0.0)
      {
        sub_1002D5ED0();
      }

      sub_1002B045C();
      if (== infix<A>(_:_:)())
      {
        _objc_retain(Strong);
        v5 = sub_1002A8200();
        _objc_release(Strong);
        v6 = v5;
      }

      else
      {
        _objc_retain(Strong);
        v4 = sub_1002A8014();
        _objc_release(Strong);
        v6 = v4;
      }

      _objc_retain(v11);
      v3 = (v7 & 1) != 0 || sub_1002AF5AC() != v6;
      _objc_release(v11);
      v2 = sub_1002AF600();
      [v2 setConstant:v6];
      _objc_release(v2);
      if (v3)
      {
        [Strong setNeedsLayout];
      }

      [Strong layoutIfNeeded];
      _objc_release(Strong);
    }
  }
}

unint64_t sub_1002B03E4()
{
  v2 = qword_1006D7948;
  if (!qword_1006D7948)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7948);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002B045C()
{
  v2 = qword_1006D7950;
  if (!qword_1006D7950)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7950);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002B0618(void *a1)
{
  [a1 contentOffset];
  v5 = v2;
  v6 = v3;
  v7 = v1 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_previousContentOffset;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  *(v7 + 16) = 0;
  swift_endAccess();
  v8 = (v1 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow);
  swift_beginAccess();
  *v8 = 2;
  return swift_endAccess();
}

void sub_1002B0778(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    goto LABEL_53;
  }

  swift_beginAccess();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    swift_unknownObjectRetain();
    sub_100294754();
    swift_endAccess();
    swift_getObjectType();
    v42 = [v51 layoutInformationForConversationSenderHeaderViewAnimator:v45];
    swift_unknownObjectRelease();
    v43 = v42;
  }

  else
  {
    sub_100294754();
    swift_endAccess();
    v43 = 0;
  }

  if (!v43)
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unable to configure header without layout information", 0x35uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_53:
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Unable to animate header without header", 0x27uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v41 = [a1 isTracking];
  _objc_retain(a1);
  if (v41)
  {
    v40 = 1;
  }

  else
  {
    v40 = [a1 isDecelerating];
  }

  _objc_release(a1);
  if ((v40 & 1) == 0)
  {
    goto LABEL_46;
  }

  v37 = v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_previousContentOffset;
  swift_beginAccess();
  v38 = *(v37 + 8);
  v39 = *(v37 + 16);
  swift_endAccess();
  if ((v39 & 1) == 0)
  {
    swift_beginAccess();
    v50 = swift_unknownObjectWeakLoadStrong();
    if (v50)
    {
      swift_unknownObjectRetain();
      sub_100294754();
      swift_endAccess();
      swift_getObjectType();
      v35 = [v50 shouldForceCollapseHeaderForConversationSenderHeaderViewAnimator:v45];
      swift_unknownObjectRelease();
      v36 = v35;
    }

    else
    {
      sub_100294754();
      swift_endAccess();
      v36 = 2;
    }

    if (v36 != 2)
    {
      [a1 contentOffset];
      v29 = v1;
      v30 = v2;
      v34 = v38 - v2;
      v31 = v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_previousContentOffset;
      swift_beginAccess();
      *v31 = v29;
      *(v31 + 8) = v30;
      *(v31 + 16) = 0;
      swift_endAccess();
      v32 = sub_1002AF600();
      [v32 constant];
      v33 = v3;
      _objc_release(v32);
      if (v34 >= 0.0)
      {
        sub_1002B14DC(2);
        if (v30 >= -v6)
        {
          v24 = 0;
        }

        else
        {
          v24 = v36 ^ 1;
        }

        if (v24)
        {
          _objc_retain(Strong);
          sub_1002A8200();
          _objc_release(Strong);
          sub_1002B18F8();
          sub_1002B1970();
          abs<A>(_:)();
          min<A>(_:_:)();
          v22 = (v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow);
          swift_beginAccess();
          *v22 = 1;
          swift_endAccess();
          v23 = v48;
        }

        else
        {
          _objc_retain(Strong);
          v21 = sub_1002A8014();
          _objc_release(Strong);
          if (v21 >= v33)
          {
            v20 = v33;
          }

          else
          {
            _objc_retain(Strong);
            sub_1002A8014();
            _objc_release(Strong);
            sub_1002B18F8();
            sub_1002B1970();
            abs<A>(_:)();
            max<A>(_:_:)();
            v19 = (v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow);
            swift_beginAccess();
            *v19 = 0;
            swift_endAccess();
            v20 = v49;
          }

          v23 = v20;
        }

        v26 = v23;
LABEL_32:
        if (v26 - v33 >= 0.0)
        {
          v18 = v26 - v33;
        }

        else
        {
          v18 = -(v26 - v33);
        }

        if (v18 >= 2.22044605e-16)
        {
          v16 = sub_1002AF600();
          [v16 setConstant:v26];
          _objc_release(v16);
          v17 = sub_1002B1784(v26);
          sub_1002D5628(v17);
          if (v17 - 1.0 >= 0.0)
          {
            v15 = v17 - 1.0;
          }

          else
          {
            v15 = -(v17 - 1.0);
          }

          if (v15 >= 2.22044605e-16)
          {
            if (v17 - 0.0 >= 0.0)
            {
              v13 = v17 - 0.0;
            }

            else
            {
              v13 = -(v17 - 0.0);
            }

            if (v13 < 2.22044605e-16)
            {
              v12 = (v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_currentExpansionStatus);
              swift_beginAccess();
              *v12 = 2;
              swift_endAccess();
            }
          }

          else
          {
            v14 = (v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_currentExpansionStatus);
            swift_beginAccess();
            *v14 = 1;
            swift_endAccess();
          }
        }

        goto LABEL_46;
      }

      v28 = MUISolariumFeatureEnabled();
      _objc_retain(a1);
      if (v28)
      {
        [a1 adjustedContentInset];
        v27 = v4 + v30 >= 0.0;
      }

      else
      {
        v27 = 1;
      }

      _objc_release(a1);
      if (v27)
      {
        sub_1002B14DC(1);
        if (-v5 < v30)
        {
          _objc_retain(Strong);
          sub_1002A8014();
          _objc_release(Strong);
          sub_1002B18F8();
          sub_1002B1970();
          abs<A>(_:)();
          max<A>(_:_:)();
          v25 = (v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow);
          swift_beginAccess();
          *v25 = 0;
          swift_endAccess();
          v26 = v47;
          goto LABEL_32;
        }
      }
    }

LABEL_46:
    _objc_release(v43);
    _objc_release(Strong);
    return;
  }

  [a1 contentOffset];
  v9 = v7;
  v10 = v8;
  v11 = v45 + OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_previousContentOffset;
  swift_beginAccess();
  *v11 = v9;
  *(v11 + 8) = v10;
  *(v11 + 16) = 0;
  swift_endAccess();
  _objc_release(v43);
  _objc_release(Strong);
}

void sub_1002B14DC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        if (a1 == 2)
        {
          _objc_retain(Strong);
          sub_1002A8014();
          _objc_release(Strong);
        }

        else
        {
          _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
          __break(1u);
        }

        goto LABEL_9;
      }
    }

    else
    {
      String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cannot calculate header height for none expansion status", 0x38uLL, 1);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    _objc_retain(Strong);
    sub_1002A8200();
    _objc_release(Strong);
LABEL_9:
    _objc_release(Strong);
    return;
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Cannot calculate height without header", 0x26uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1002B1784(double a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (!Strong)
  {
    return 0.0;
  }

  _objc_retain(Strong);
  v2 = sub_1002A8014();
  _objc_release(Strong);
  _objc_retain(Strong);
  v4 = sub_1002A8200();
  _objc_release(Strong);
  _objc_retain(Strong);
  v3 = sub_1002A8014();
  _objc_release(Strong);
  _objc_release(Strong);
  return (a1 - v2) / (v4 - v3);
}

unint64_t sub_1002B18F8()
{
  v2 = qword_1006D7958;
  if (!qword_1006D7958)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7958);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002B1970()
{
  v2 = qword_1006D7960;
  if (!qword_1006D7960)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7960);
    return WitnessTable;
  }

  return v2;
}

void sub_1002B1A60(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0.0;
  v28 = 0;
  v37 = a1;
  v35 = a3;
  v36 = a4;
  v34 = a2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v32 = Strong;
    v17 = &v19[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow];
    swift_beginAccess();
    v18 = *v17;
    swift_endAccess();
    if (v18 == 2 || (v31 = v18 & 1, !sub_1002B1EB8()))
    {
      _objc_release(Strong);
    }

    else
    {
      v4 = sub_1002AF5AC();
      v16 = sub_1002B1784(v4);
      v30 = v16;
      if (v18)
      {
        if (v16 <= 0.1)
        {
          v29 = 2;
          v15 = 2;
        }

        else
        {
          v29 = 1;
          v15 = 1;
        }

        v14 = v15;
      }

      else
      {
        if (v16 >= 1.0)
        {
          v29 = 1;
          v13 = 1;
        }

        else
        {
          v29 = 2;
          v13 = 2;
        }

        v14 = v13;
      }

      v10 = &v19[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_currentExpansionStatus];
      swift_beginAccess();
      *v10 = v14;
      swift_endAccess();
      v11 = &v19[OBJC_IVAR____TtC10MobileMail36ConversationSenderHeaderViewAnimator_didGrow];
      swift_beginAccess();
      *v11 = 2;
      swift_endAccess();
      v12 = sub_1002D5558(v14);
      if ((v5 & 1) == 0)
      {
        v28 = v12;
        v8 = objc_opt_self();
        v7 = swift_allocObject();
        _objc_retain(v19);
        swift_unknownObjectUnownedInit();
        _objc_release(v19);

        _objc_retain(Strong);
        v6 = swift_allocObject();
        v6[2] = v7;
        v6[3] = v14;
        v6[4] = Strong;
        v6[5] = v12;
        v26 = sub_1002B20BC;
        v27 = v6;
        aBlock = _NSConcreteStackBlock;
        v22 = 1107296256;
        v23 = 0;
        v24 = sub_1002AEFF8;
        v25 = &unk_100659178;
        v9 = _Block_copy(&aBlock);

        [v8 animateWithDuration:v9 animations:0.25];
        _Block_release(v9);
      }

      _objc_release(Strong);
    }
  }
}

BOOL sub_1002B1EB8()
{
  v0 = sub_1002AF5AC();
  v3 = sub_1002B1784(v0);
  return v3 > 0.0 && v3 < 1.0;
}

id sub_1002B1F44(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = sub_1002AF600();
  _objc_release(Strong);
  sub_1002B045C();
  if (== infix<A>(_:_:)())
  {
    _objc_retain(a4);
    v6 = sub_1002A8200();
    _objc_release(a4);
    v7 = v6;
  }

  else
  {
    _objc_retain(a4);
    v5 = sub_1002A8014();
    _objc_release(a4);
    v7 = v5;
  }

  [v11 setConstant:{v7, *&v5}];
  _objc_release(v11);
  sub_1002D5628(a1);
  return [a4 layoutIfNeeded];
}

uint64_t sub_1002B20D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

char *sub_1002B2338(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = a2;
  v11 = v2;
  *&v2[OBJC_IVAR____TtC10MobileMail45ConversationSenderHeaderViewLayoutInformation_statusBarHeight] = a1;
  *&v11[OBJC_IVAR____TtC10MobileMail45ConversationSenderHeaderViewLayoutInformation_contentInset] = a2;
  v8.receiver = v11;
  v8.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v8, "init");
  _objc_retain(v7);
  v11 = v7;
  _objc_release(v7);
  return v7;
}

uint64_t sub_1002B2534()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_itemID);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1002B25FC(uint64_t a1)
{
  swift_unknownObjectRetain();
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_itemID);
  swift_beginAccess();
  *v3 = a1;
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

id sub_1002B26EC()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002B27C4(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1002B28E8()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_title);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1002B29D8(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_title);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1002B2AD4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_bucket);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1002B2B90(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_bucket);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1002B2C64()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1002B2D2C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1002B2E68()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_informationButtonTitle);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1002B2FB0(uint64_t a1, uint64_t a2)
{

  v5 = (v2 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_informationButtonTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  swift_endAccess();
}

uint64_t sub_1002B30B4()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_forceCollapsed);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1002B317C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_forceCollapsed);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

id sub_1002B329C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_100438E9C(a5, a6 & 1, a7, 0, a8, 0, a10, 0, v22, a9, 0);
  v16 = sub_1004394F4();
  v17 = v11;
  swift_getObjectType();
  swift_unknownObjectRetain();
  _objc_retain(a2);

  v21 = sub_1002B35B8(a1, a2, a3, a4, a5, a6 & 1, v16, v17, a11);
  _objc_retain(v21);
  swift_getObjectType();
  swift_deallocPartialClassInstance();

  _objc_release(a2);
  swift_unknownObjectRelease();
  _objc_release(v21);
  return v21;
}

id sub_1002B3644(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  ObjectType = swift_getObjectType();
  v37 = a1;
  v36 = a2;
  v34 = a3;
  v35 = a4;
  v33 = a5;
  v32 = a6 & 1;
  v30 = a7;
  v31 = a8;
  v29 = a9 & 1;
  v38 = v9;
  *&v9[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult] = 0;
  v10 = &v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_informationButtonTitle];
  *v10 = 0;
  v10[1] = 0;
  swift_unknownObjectRetain();
  *&v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_itemID] = a1;
  _objc_retain(a2);
  v14 = &v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult];
  swift_beginAccess();
  v11 = *v14;
  *v14 = a2;
  _objc_release(v11);
  swift_endAccess();
  v15 = v38;

  v12 = &v15[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_title];
  *v12 = a3;
  v12[1] = a4;
  *&v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_bucket] = a5;
  v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected] = a6;
  v19 = v38;

  v21 = &v19[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_informationButtonTitle];
  swift_beginAccess();
  *v21 = a7;
  v21[1] = a8;

  swift_endAccess();
  v38[OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_forceCollapsed] = a9;
  v28.receiver = v38;
  v28.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v28, "init");
  _objc_retain(v27);
  v38 = v27;

  _objc_release(a2);
  swift_unknownObjectRelease();
  _objc_release(v38);
  return v27;
}

id sub_1002B3934@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_itemID);
  swift_beginAccess();
  v11 = *v3;
  swift_unknownObjectRetain();
  swift_endAccess();
  v4 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_avatarResult);
  swift_beginAccess();
  v12 = *v4;
  _objc_retain(*v4);
  swift_endAccess();
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_title);
  swift_beginAccess();
  v13 = *v5;
  v14 = v5[1];

  swift_endAccess();
  v6 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_bucket);
  swift_beginAccess();
  v15 = *v6;
  swift_endAccess();
  v7 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_isBucketSelected);
  swift_beginAccess();
  v16 = *v7;
  swift_endAccess();
  v8 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_informationButtonTitle);
  swift_beginAccess();
  v17 = *v8;
  v18 = v8[1];

  swift_endAccess();
  v9 = (v1 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_forceCollapsed);
  swift_beginAccess();
  v10 = *v9;
  swift_endAccess();
  result = sub_1002B35B8(v11, v12, v13, v14, v15, v16 & 1, v17, v18, v10);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1002B3CE4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_100438E9C(a1, a2 & 1, a3, 0, a4, 0, a5, 0, v12, a6, 0);
  v9 = sub_1004394F4();
  v11 = v6;
  v10 = (v8 + OBJC_IVAR____TtC10MobileMail33ConversationSenderHeaderViewModel_informationButtonTitle);
  swift_beginAccess();
  *v10 = v9;
  v10[1] = v11;

  return swift_endAccess();
}

uint64_t sub_1002B3F94()
{
  type metadata accessor for UIAppIntentInteraction();
  swift_allocObject();
  _objc_retain(v1);
  swift_unknownObjectUnownedInit();
  _objc_release(v1);

  sub_1002B4484();
  return UIAppIntentInteraction.__allocating_init<A>(intent:perform:)();
}

uint64_t sub_1002B4078(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[6] = a3;
  v3[5] = a1;
  v3[2] = v3;
  v3[3] = 0;
  v3[4] = 0;
  v4 = type metadata accessor for NavigateSequentiallyDirection();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = *a2;
  v3[10] = *a2;
  v3[3] = v5;
  v3[4] = a3 + 16;

  return _swift_task_switch(sub_1002B419C, 0);
}

uint64_t sub_1002B419C()
{
  v8 = v0[9];
  v7 = v0[8];
  v9 = v0[7];
  v0[2] = v0;
  sub_10035F9D8();
  v10 = (*(v7 + 88))(v8, v9);
  if (v10 == enum case for NavigateSequentiallyDirection.next(_:))
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong navigateToMessageInDirection:1];
    _objc_release(Strong);
  }

  else if (v10 == enum case for NavigateSequentiallyDirection.previous(_:))
  {
    v4 = swift_unknownObjectUnownedLoadStrong();
    [v4 navigateToMessageInDirection:0xFFFFFFFFLL];
    _objc_release(v4);
  }

  else
  {
    (*(v6[8] + 8))(v6[9], v6[7]);
  }

  v3 = v6[5];
  v3[3] = sub_10025C9B0(&qword_1006D7C40);
  v3[4] = sub_100282234();
  sub_10026AC9C(v3);
  static IntentResult.result<>()();

  v1 = *(v6[2] + 8);

  return v1();
}

uint64_t sub_1002B43C0(uint64_t a1, uint64_t *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1002B4078(a1, a2, v7);
}

unint64_t sub_1002B4484()
{
  v2 = qword_1006DAB20;
  if (!qword_1006DAB20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAB20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002B44FC(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v2[9] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[8] = 0;
  v3 = type metadata accessor for Logger();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for NavigateSequentiallyDirection();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[3] = a2;

  return _swift_task_switch(sub_1002B4668, 0);
}

uint64_t sub_1002B4668()
{
  v0[2] = v0;
  sub_1003B8B48();
  v0[17] = type metadata accessor for MainActor();
  v0[18] = static MainActor.shared.getter();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B4714, v1);
}

uint64_t sub_1002B4714()
{
  *(v0 + 16) = v0;
  *(v0 + 152) = sub_1003B8BA4();

  return _swift_task_switch(sub_1002B479C, 0);
}

uint64_t sub_1002B479C()
{
  v1 = *(v0 + 152);
  *(v0 + 16) = v0;
  if (v1)
  {
    v22 = *(v23 + 152);
    swift_getObjectType();
    *(v23 + 160) = [v22 messageListViewController];
    swift_unknownObjectRelease();
    *(v23 + 168) = static MainActor.shared.getter();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002B4EB0, v2);
  }

  else
  {
    *(v23 + 184) = 0;
    v3 = *(v23 + 104);
    v18 = *(v23 + 88);
    v17 = *(v23 + 96);
    v4 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v17 + 16))(v3, v4, v18);
    oslog = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v21 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v19))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v14 = sub_1002641E8(0);
      v15 = sub_1002641E8(0);
      *(v23 + 32) = buf;
      *(v23 + 40) = v14;
      *(v23 + 48) = v15;
      sub_10026423C(0, (v23 + 32));
      sub_10026423C(0, (v23 + 32));
      *(v23 + 56) = v21;
      v16 = swift_task_alloc();
      v16[2] = v23 + 32;
      v16[3] = v23 + 40;
      v16[4] = v23 + 48;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v19, "Failed to find the conversation view controller", buf, 2u);
      sub_10026429C(v14);
      sub_10026429C(v15);
      UnsafeMutablePointer.deallocate()();
    }

    v9 = *(v23 + 104);
    v10 = *(v23 + 88);
    v11 = *(v23 + 80);
    v8 = *(v23 + 96);
    _objc_release(oslog);
    (*(v8 + 8))(v9, v10);
    sub_10028B33C();
    swift_allocError();
    v12 = v5;

    *(v12 + 24) = &unk_10065CF60;
    *(v12 + 32) = sub_1002B4484();
    *v12 = v11;
    *(v12 + 40) = 0;
    swift_willThrow();

    v6 = *(*(v23 + 16) + 8);

    return v6();
  }
}

uint64_t sub_1002B4EB0()
{
  v1 = v0[20];
  v0[2] = v0;
  v0[22] = [v1 conversationViewController];

  return _swift_task_switch(sub_1002B4F4C, 0);
}

uint64_t sub_1002B4F4C()
{
  v34 = v0[22];
  v1 = v0[20];
  v0[2] = v0;
  _objc_release(v1);
  v0[23] = v34;
  if (!v34)
  {
    v4 = *(v33 + 104);
    v19 = *(v33 + 88);
    v18 = *(v33 + 96);
    v5 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v18 + 16))(v4, v5, v19);
    oslog = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    sub_10025C9B0(&unk_1006D7720);
    v22 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(oslog, v20))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v15 = sub_1002641E8(0);
      v16 = sub_1002641E8(0);
      *(v33 + 32) = buf;
      *(v33 + 40) = v15;
      *(v33 + 48) = v16;
      sub_10026423C(0, (v33 + 32));
      sub_10026423C(0, (v33 + 32));
      *(v33 + 56) = v22;
      v17 = swift_task_alloc();
      v17[2] = v33 + 32;
      v17[3] = v33 + 40;
      v17[4] = v33 + 48;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, oslog, v20, "Failed to find the conversation view controller", buf, 2u);
      sub_10026429C(v15);
      sub_10026429C(v16);
      UnsafeMutablePointer.deallocate()();
    }

    v10 = *(v33 + 104);
    v11 = *(v33 + 88);
    v12 = *(v33 + 80);
    v9 = *(v33 + 96);
    _objc_release(oslog);
    (*(v9 + 8))(v10, v11);
    sub_10028B33C();
    swift_allocError();
    v13 = v6;

    *(v13 + 24) = &unk_10065CF60;
    *(v13 + 32) = sub_1002B4484();
    *v13 = v12;
    *(v13 + 40) = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  v30 = *(v33 + 128);
  v31 = *(v33 + 112);
  v29 = *(v33 + 120);
  *(v33 + 64) = v34;
  sub_10035F9D8();
  v32 = (*(v29 + 88))(v30, v31);
  if (v32 == enum case for NavigateSequentiallyDirection.next(_:))
  {
    *(v33 + 200) = 1;
    v28 = 1;
  }

  else
  {
    if (v32 != enum case for NavigateSequentiallyDirection.previous(_:))
    {
      v26 = *(v33 + 128);
      v27 = *(v33 + 112);
      v23 = *(v33 + 80);
      v25 = *(v33 + 120);
      sub_10028B33C();
      swift_allocError();
      v24 = v2;

      *(v24 + 24) = &unk_10065CF60;
      *(v24 + 32) = sub_1002B4484();
      *v24 = v23;
      *(v24 + 40) = 2;
      swift_willThrow();
      (*(v25 + 8))(v26, v27);
      _objc_release(v34);
LABEL_13:

      v7 = *(*(v33 + 16) + 8);

      return v7();
    }

    *(v33 + 200) = -1;
    v28 = -1;
  }

  *(v33 + 204) = v28;
  *(v33 + 192) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002B55B4, v3);
}

uint64_t sub_1002B55B4()
{
  v1 = *(v0 + 204);
  v2 = *(v0 + 184);
  *(v0 + 16) = v0;
  [v2 navigateToMessageInDirection:v1];

  return _swift_task_switch(sub_1002B5644, 0);
}

uint64_t sub_1002B5644()
{
  v3 = *(v0 + 184);
  *(v0 + 16) = v0;
  static IntentResult.result<>()();
  _objc_release(v3);

  v1 = *(*(v0 + 16) + 8);

  return v1();
}

void *sub_1002B5710@<X0>(void *a1@<X8>)
{
  _objc_retain(v1);

  sub_10037D05C(v1);
  return memcpy(a1, v4, 0x88uLL);
}

void *sub_1002B57A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _objc_retain(v3);

  sub_1002CA140(v3, a1, a2, v8);
  return memcpy(a3, v8, 0x48uLL);
}

void *sub_1002B5840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  _objc_retain(v3);

  sub_1003856C0(v3, a1, a2, v8);
  return memcpy(a3, v8, 0x80uLL);
}

uint64_t sub_1002B58D8()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006EFE60);
  sub_1000208F4(v1, qword_1006EFE60);
  sub_1002B5940();
  return static Logger.mailUILogger<A>(for:)();
}

unint64_t sub_1002B5940()
{
  v2 = qword_1006D7B50;
  if (!qword_1006D7B50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7B50);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002B59A4()
{
  if (qword_1006D5E10 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006EFE60);
}

uint64_t sub_1002B5A10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002B59A4();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002B5A7C()
{
  v6 = [v0 recipientEmailAddresses];
  if (v6)
  {
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {

    sub_100264880();
    v2 = sub_1002B5BDC();

    v3 = v2;
  }

  else
  {
    sub_100264880();
    v3 = 0;
  }

  if (v3)
  {
    return v3;
  }

  else
  {
    return _allocateUninitializedArray<A>(_:)();
  }
}

uint64_t sub_1002B5BDC()
{
  v2 = sub_10025C9B0(&unk_1006D69B0);
  v0 = sub_1002B76F0();
  return sub_10025E9D8(sub_1002B767C, 0, v2, &unk_10065AB70, &type metadata for Never, v0, &protocol witness table for Never, v3);
}

uint64_t sub_1002B5C98()
{
  if (CSSearchableItemAttributeSet.additionalRecipientEmailAddresses.getter())
  {
    v1 = sub_1002B5BDC();

    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return _allocateUninitializedArray<A>(_:)();
  }
}

uint64_t sub_1002B5D64()
{
  if (CSSearchableItemAttributeSet.hiddenAdditionalRecipientEmailAddresses.getter())
  {
    v1 = sub_1002B5BDC();

    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return _allocateUninitializedArray<A>(_:)();
  }
}

uint64_t sub_1002B5E30()
{
  v190 = sub_1002B9C28;
  v191 = sub_10026EE84;
  v192 = sub_10026434C;
  v193 = sub_10026434C;
  v194 = sub_10026EF2C;
  v195 = sub_1002B9C1C;
  v196 = sub_10026EE84;
  v197 = sub_10026434C;
  v198 = sub_10026434C;
  v199 = sub_10026EF2C;
  v200 = sub_1002B77BC;
  v201 = sub_10026EE84;
  v202 = sub_10026434C;
  v203 = sub_10026434C;
  v204 = sub_10026EF2C;
  v250 = 0;
  v247 = 0u;
  v248 = 0u;
  v243 = 0;
  v244 = 0;
  v205 = 0;
  v233 = 0;
  v234 = 0;
  v224 = 0;
  v207 = type metadata accessor for Logger();
  v208 = *(v207 - 8);
  v209 = v207 - 8;
  v210 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v0 = __chkstk_darwin(v206);
  v211 = v60 - v210;
  v212 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v0);
  v213 = v60 - v212;
  v214 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v2);
  v215 = v60 - v214;
  v250 = v4;
  v216 = [v4 authors];
  if (v216)
  {
    v189 = v216;
    v186 = v216;
    sub_1002B9CB8();
    v187 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    _objc_release(v186);
    v188 = v187;
  }

  else
  {
    v188 = 0;
  }

  v249 = v188;
  if (v188)
  {
    v181 = &v249;
    v183 = v249;

    sub_100264880();
    v218 = v183;
    v182 = sub_10025C9B0(&qword_1006D7B58);
    sub_1002B9C30();
    Collection.first.getter();
    v184 = v217;

    v185 = v184;
  }

  else
  {
    sub_100264880();
    v185 = 0;
  }

  v180 = v185;
  if (v185)
  {
    v179 = v180;
    v5 = v215;
    v165 = v180;
    v224 = v180;
    v6 = sub_1002B59A4();
    (*(v208 + 16))(v5, v6, v207);
    _objc_retain(v165);
    v168 = 7;
    v169 = swift_allocObject();
    *(v169 + 16) = v165;
    v177 = Logger.logObject.getter();
    v178 = static os_log_type_t.info.getter();
    v166 = 17;
    v171 = swift_allocObject();
    *(v171 + 16) = 32;
    v172 = swift_allocObject();
    *(v172 + 16) = 8;
    v167 = 32;
    v7 = swift_allocObject();
    v8 = v169;
    v170 = v7;
    *(v7 + 16) = v190;
    *(v7 + 24) = v8;
    v9 = swift_allocObject();
    v10 = v170;
    v174 = v9;
    *(v9 + 16) = v191;
    *(v9 + 24) = v10;
    v176 = sub_10025C9B0(&unk_1006D7720);
    v173 = _allocateUninitializedArray<A>(_:)();
    v175 = v11;

    v12 = v171;
    v13 = v175;
    *v175 = v192;
    v13[1] = v12;

    v14 = v172;
    v15 = v175;
    v175[2] = v193;
    v15[3] = v14;

    v16 = v174;
    v17 = v175;
    v175[4] = v194;
    v17[5] = v16;
    sub_1002612B0();

    if (os_log_type_enabled(v177, v178))
    {
      v18 = v205;
      v158 = static UnsafeMutablePointer.allocate(capacity:)();
      v157 = sub_10025C9B0(&qword_1006D7290);
      v159 = sub_1002641E8(0);
      v160 = sub_1002641E8(1);
      v161 = &v223;
      v223 = v158;
      v162 = &v222;
      v222 = v159;
      v163 = &v221;
      v221 = v160;
      sub_10026423C(2, &v223);
      sub_10026423C(1, v161);
      v219 = v192;
      v220 = v171;
      sub_100264250(&v219, v161, v162, v163);
      v164 = v18;
      if (v18)
      {

        __break(1u);
      }

      else
      {
        v219 = v193;
        v220 = v172;
        sub_100264250(&v219, &v223, &v222, &v221);
        v156 = 0;
        v219 = v194;
        v220 = v174;
        sub_100264250(&v219, &v223, &v222, &v221);
        _os_log_impl(&_mh_execute_header, v177, v178, "#SiriMail CSSearchableItemAttributeSet author: %s", v158, 0xCu);
        sub_10026429C(v159);
        sub_10026429C(v160);
        UnsafeMutablePointer.deallocate()();
      }
    }

    else
    {
    }

    _objc_release(v177);
    (*(v208 + 8))(v215, v207);
    *&v152 = sub_1002B7444();
    *(&v152 + 1) = v19;
    *&v153 = v20;
    *(&v153 + 1) = v21;
    _objc_release(v165);
    v154 = v152;
    v155 = v153;
  }

  else
  {
    v150 = 0;
    v22 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    *&v247 = sub_10034E760(v150, v150, v22._countAndFlagsBits, v22._object);
    *(&v247 + 1) = v23;
    *&v248 = v24;
    *(&v248 + 1) = v25;
    v151 = [v206 authorEmailAddresses];
    if (v151)
    {
      v149 = v151;
      v146 = v151;
      v147 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v146);
      v148 = v147;
    }

    else
    {
      v148 = 0;
    }

    v246 = v148;
    if (v148)
    {
      v139 = &v246;
      v141 = v246;

      sub_100264880();
      v227 = v141;
      v140 = sub_10025C9B0(&unk_1006D69B0);
      sub_1002B76F0();
      Collection.first.getter();
      v142 = v225;
      v143 = v226;

      v144 = v142;
      v145 = v143;
    }

    else
    {
      sub_100264880();
      v144 = 0;
      v145 = 0;
    }

    v137 = v145;
    v138 = v144;
    if (v145)
    {
      v135 = v138;
      v136 = v137;
      v26 = v213;
      *(&v120 + 1) = v137;
      *&v120 = v138;
      v233 = v138;
      v234 = v137;
      v27 = sub_1002B59A4();
      (*(v208 + 16))(v26, v27, v207);

      v122 = 32;
      v123 = 7;
      v28 = swift_allocObject();
      v29 = *(&v120 + 1);
      v124 = v28;
      *(v28 + 16) = v120;
      *(v28 + 24) = v29;
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.info.getter();
      v121 = 17;
      v126 = swift_allocObject();
      *(v126 + 16) = 32;
      v127 = swift_allocObject();
      *(v127 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v124;
      v125 = v30;
      *(v30 + 16) = v195;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v125;
      v129 = v32;
      *(v32 + 16) = v196;
      *(v32 + 24) = v33;
      v131 = sub_10025C9B0(&unk_1006D7720);
      v128 = _allocateUninitializedArray<A>(_:)();
      v130 = v34;

      v35 = v126;
      v36 = v130;
      *v130 = v197;
      v36[1] = v35;

      v37 = v127;
      v38 = v130;
      v130[2] = v198;
      v38[3] = v37;

      v39 = v129;
      v40 = v130;
      v130[4] = v199;
      v40[5] = v39;
      sub_1002612B0();

      if (os_log_type_enabled(v132, v133))
      {
        v41 = v205;
        v113 = static UnsafeMutablePointer.allocate(capacity:)();
        v112 = sub_10025C9B0(&qword_1006D7290);
        v114 = sub_1002641E8(0);
        v115 = sub_1002641E8(1);
        v116 = &v232;
        v232 = v113;
        v117 = &v231;
        v231 = v114;
        v118 = &v230;
        v230 = v115;
        sub_10026423C(2, &v232);
        sub_10026423C(1, v116);
        v228 = v197;
        v229 = v126;
        sub_100264250(&v228, v116, v117, v118);
        v119 = v41;
        if (v41)
        {

          __break(1u);
        }

        else
        {
          v228 = v198;
          v229 = v127;
          sub_100264250(&v228, &v232, &v231, &v230);
          v110 = 0;
          v228 = v199;
          v229 = v129;
          sub_100264250(&v228, &v232, &v231, &v230);
          v109 = 0;
          _os_log_impl(&_mh_execute_header, v132, v133, "#SiriMail CSSearchableItemAttributeSet authorEmailAddress: %s", v113, 0xCu);
          sub_10026429C(v114);
          sub_10026429C(v115);
          UnsafeMutablePointer.deallocate()();

          v111 = v109;
        }
      }

      else
      {
        v42 = v205;

        v111 = v42;
      }

      v108 = v111;
      _objc_release(v132);
      (*(v208 + 8))(v213, v207);
      v106 = v247;
      v107 = v248;

      sub_10034EBDC();

      v247 = v120;

      v134 = v108;
    }

    else
    {
      v134 = v205;
    }

    v104 = v134;
    v105 = [v206 authorNames];
    if (v105)
    {
      v103 = v105;
      v100 = v105;
      v101 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      _objc_release(v100);
      v102 = v101;
    }

    else
    {
      v102 = 0;
    }

    v245 = v102;
    if (v102)
    {
      v93 = &v245;
      v95 = v245;

      sub_100264880();
      v237 = v95;
      v94 = sub_10025C9B0(&unk_1006D69B0);
      sub_1002B76F0();
      Collection.first.getter();
      v96 = v235;
      v97 = v236;

      v98 = v96;
      v99 = v97;
    }

    else
    {
      sub_100264880();
      v98 = 0;
      v99 = 0;
    }

    v91 = v99;
    v92 = v98;
    if (v99)
    {
      v89 = v92;
      v90 = v91;
      v43 = v211;
      v75 = v91;
      v74 = v92;
      v243 = v92;
      v244 = v91;
      v44 = sub_1002B59A4();
      (*(v208 + 16))(v43, v44, v207);

      v77 = 32;
      v78 = 7;
      v45 = swift_allocObject();
      v46 = v75;
      v79 = v45;
      *(v45 + 16) = v74;
      *(v45 + 24) = v46;
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.info.getter();
      v76 = 17;
      v81 = swift_allocObject();
      *(v81 + 16) = 32;
      v82 = swift_allocObject();
      *(v82 + 16) = 8;
      v47 = swift_allocObject();
      v48 = v79;
      v80 = v47;
      *(v47 + 16) = v200;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v80;
      v84 = v49;
      *(v49 + 16) = v201;
      *(v49 + 24) = v50;
      v86 = sub_10025C9B0(&unk_1006D7720);
      v83 = _allocateUninitializedArray<A>(_:)();
      v85 = v51;

      v52 = v81;
      v53 = v85;
      *v85 = v202;
      v53[1] = v52;

      v54 = v82;
      v55 = v85;
      v85[2] = v203;
      v55[3] = v54;

      v56 = v84;
      v57 = v85;
      v85[4] = v204;
      v57[5] = v56;
      sub_1002612B0();

      if (os_log_type_enabled(v87, v88))
      {
        v58 = v104;
        v67 = static UnsafeMutablePointer.allocate(capacity:)();
        v66 = sub_10025C9B0(&qword_1006D7290);
        v68 = sub_1002641E8(0);
        v69 = sub_1002641E8(1);
        v70 = &v242;
        v242 = v67;
        v71 = &v241;
        v241 = v68;
        v72 = &v240;
        v240 = v69;
        sub_10026423C(2, &v242);
        sub_10026423C(1, v70);
        v238 = v202;
        v239 = v81;
        sub_100264250(&v238, v70, v71, v72);
        v73 = v58;
        if (v58)
        {

          __break(1u);
        }

        else
        {
          v238 = v203;
          v239 = v82;
          sub_100264250(&v238, &v242, &v241, &v240);
          v65 = 0;
          v238 = v204;
          v239 = v84;
          sub_100264250(&v238, &v242, &v241, &v240);
          _os_log_impl(&_mh_execute_header, v87, v88, "#SiriMail CSSearchableItemAttributeSet authorName: %s", v67, 0xCu);
          sub_10026429C(v68);
          sub_10026429C(v69);
          UnsafeMutablePointer.deallocate()();
        }
      }

      else
      {
      }

      _objc_release(v87);
      (*(v208 + 8))(v211, v207);
      v63 = v247;
      v64 = v248;

      sub_10034EC78();
    }

    v60[1] = &v247;
    v61 = v247;
    v62 = v248;

    sub_1002B7778();
    v154 = v61;
    v155 = v62;
  }

  return v154;
}

uint64_t sub_1002B73A4(void *a1)
{
  _objc_retain(a1);
  v3 = [a1 debugDescription];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  _objc_release(a1);
  v4 = String.partiallyRedactedString.getter();

  _objc_release(v3);
  return v4;
}

uint64_t sub_1002B7444()
{
  v8 = [v0 displayName];
  if (v8)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v1;
    _objc_release(v8);
    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v3 = [v0 handles];
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10025C9B0(&unk_1006D69B0);
  sub_1002B76F0();
  Collection.first.getter();

  if (v9._object)
  {
    v10 = v9;
  }

  else
  {
    v10 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("<nil>", 5uLL, 1);
  }

  _objc_release(v3);
  return sub_10034E760(v6, v7, v10._countAndFlagsBits, v10._object);
}

uint64_t sub_1002B7614()
{
  String.partiallyRedactedAddress.getter();
  sub_10025C9B0(&unk_1006D7340);
  return String.init<A>(describing:)();
}

uint64_t sub_1002B767C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];

  result = sub_10034E760(0, 0, v6, v7);
  *a2 = result;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  return result;
}

unint64_t sub_1002B76F0()
{
  v2 = qword_1006DAFF0;
  if (!qword_1006DAFF0)
  {
    sub_10025CAA4(&unk_1006D69B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DAFF0);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1002B7778()
{
}

uint64_t sub_1002B77C8()
{
  v1 = type metadata accessor for Logger();
  sub_10002094C(v1, qword_1006EFE78);
  sub_1000208F4(v1, qword_1006EFE78);
  return static Logger.mailUILogger<A>(for:)();
}

uint64_t sub_1002B7824()
{
  if (qword_1006D5E18 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  return sub_1000208F4(v0, qword_1006EFE78);
}

uint64_t sub_1002B7890@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002B7824();
  v1 = type metadata accessor for Logger();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002B78F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return _swift_task_switch(sub_1002B7958, 0);
}

uint64_t sub_1002B7958()
{
  v7 = v0[10];
  v6 = v0[9];
  v0[6] = v0;

  v9 = swift_allocObject();
  v0[11] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v1 = swift_task_alloc();
  v8[12] = v1;
  v2 = sub_10027EAAC();
  *v1 = v8[6];
  v1[1] = sub_1002B7A94;
  v3 = v8[8];
  v4 = v8[7];

  return sub_1002B7D58(v4, v3, 0, sub_1002B9D1C, v9, &unk_10065C028, v2);
}

uint64_t sub_1002B7A94(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 48) = *v2;
  *(v6 + 104) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002B7C44, 0);
  }

  else
  {

    v3 = *(*(v6 + 48) + 8);

    return v3(a1);
  }
}

uint64_t sub_1002B7C44()
{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_1002B7D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a7;
  v7[14] = a6;
  v7[13] = a5;
  v7[12] = a4;
  v7[11] = a3;
  v7[10] = a2;
  v7[9] = a1;
  v7[6] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[7] = 0;
  v7[4] = 0;
  v7[5] = 0;
  v7[2] = a1;
  v7[3] = a2;
  v7[7] = a3;
  v7[4] = a4;
  v7[5] = a5;
  return _swift_task_switch(sub_1002B7DEC, 0);
}

uint64_t sub_1002B7DEC()
{
  v5 = v0[15];
  v11 = v0[14];
  v10 = v0[13];
  v9 = v0[12];
  v8 = v0[11];
  v7 = v0[10];
  v6 = v0[9];
  v0[6] = v0;
  v1 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("execute(queryString:queryContext:_:)", 0x24uLL, 1);
  v0[16] = v1._object;

  _objc_retain(v8);

  v13 = swift_task_alloc();
  v0[17] = v13;
  v13[2] = v11;
  v13[3] = v5;
  v13[4] = v6;
  v13[5] = v7;
  v13[6] = v8;
  v13[7] = v9;
  v13[8] = v10;
  v2 = swift_task_alloc();
  *(v12 + 144) = v2;
  v3 = type metadata accessor for Array();
  *v2 = *(v12 + 48);
  v2[1] = sub_1002B7FBC;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12 + 64, 0, 0, v1._countAndFlagsBits, v1._object, sub_1002B9D28, v13, v3);
}

uint64_t sub_1002B7FBC()
{
  v5 = *v1;
  v5[6] = *v1;
  v5[19] = v0;

  if (v0)
  {
    v2 = sub_1002B81D0;
  }

  else
  {
    v4 = v5[11];

    v2 = sub_1002B8178;
  }

  return _swift_task_switch(v2, 0);
}

uint64_t sub_1002B81D0()
{
  v3 = *(v0 + 88);
  *(v0 + 48) = v0;

  _objc_release(v3);

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_1002B82C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return _swift_task_switch(sub_1002B8324, 0);
}

uint64_t sub_1002B8324()
{
  v7 = v0[10];
  v6 = v0[9];
  v0[6] = v0;
  type metadata accessor for CSQueryBuilder();
  v9 = static CSQueryBuilder.searchIndexerQueryContext.getter();
  v0[11] = v9;

  v10 = swift_allocObject();
  v0[12] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v1 = swift_task_alloc();
  v8[13] = v1;
  v2 = sub_10027EAAC();
  *v1 = v8[6];
  v1[1] = sub_1002B8480;
  v3 = v8[8];
  v4 = v8[7];

  return sub_1002B7D58(v4, v3, v9, sub_1002B9D1C, v10, &unk_10065C028, v2);
}

uint64_t sub_1002B8480(uint64_t a1)
{
  v7 = *v2;
  v7[6] = *v2;
  v7[14] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1002B8640, 0);
  }

  else
  {
    v5 = v7[11];

    v3 = *(v7[6] + 8);

    return v3(a1);
  }
}

uint64_t sub_1002B8640()
{
  v3 = *(v0 + 88);
  *(v0 + 48) = v0;

  _objc_release(v3);
  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_1002B86FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return _swift_task_switch(sub_1002B8760, 0);
}

uint64_t sub_1002B8760()
{
  v7 = v0[10];
  v6 = v0[9];
  v0[6] = v0;

  v9 = swift_allocObject();
  v0[11] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v1 = swift_task_alloc();
  v8[12] = v1;
  v2 = sub_1002B9D60();
  *v1 = v8[6];
  v1[1] = sub_1002B7A94;
  v3 = v8[8];
  v4 = v8[7];

  return sub_1002B7D58(v4, v3, 0, sub_1002B9D54, v9, &unk_100659B80, v2);
}

uint64_t sub_1002B890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return _swift_task_switch(sub_1002B8970, 0);
}

uint64_t sub_1002B8970()
{
  v7 = v0[10];
  v6 = v0[9];
  v0[6] = v0;
  type metadata accessor for CSQueryBuilder();
  v9 = static CSQueryBuilder.searchIndexerQueryContext.getter();
  v0[11] = v9;

  v10 = swift_allocObject();
  v0[12] = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v1 = swift_task_alloc();
  v8[13] = v1;
  v2 = sub_1002B9D60();
  *v1 = v8[6];
  v1[1] = sub_1002B8480;
  v3 = v8[8];
  v4 = v8[7];

  return sub_1002B7D58(v4, v3, v9, sub_1002B9D54, v10, &unk_100659B80, v2);
}

uint64_t sub_1002B8ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[9] = a3;
  v4[8] = a2;
  v4[7] = a1;
  v4[6] = v4;
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return _swift_task_switch(sub_1002B8B30, 0);
}

uint64_t sub_1002B8B30()
{
  v7 = v0[10];
  v6 = v0[9];
  v0[6] = v0;

  v9 = swift_allocObject();
  v0[11] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v7;
  v1 = swift_task_alloc();
  v8[12] = v1;
  v2 = sub_1002B9DE4();
  *v1 = v8[6];
  v1[1] = sub_1002B7A94;
  v3 = v8[8];
  v4 = v8[7];

  return sub_1002B7D58(v4, v3, 0, sub_1002B9DD8, v9, &unk_10065BD90, v2);
}

uint64_t sub_1002B8CDC(uint64_t a1, uint64_t a2)
{
  v2[4] = v2;
  v2[2] = 0;
  v2[3] = 0;
  v2[2] = a1;
  v2[3] = a2;
  v3 = swift_task_alloc();
  *(v6 + 40) = v3;
  v4 = sub_1002B9E5C();
  *v3 = *(v6 + 32);
  v3[1] = sub_1002B8DE8;

  return sub_1002B7D58(a1, a2, 0, sub_1002B8F8C, 0, &unk_10065AB70, v4);
}

uint64_t sub_1002B8DE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = *v2;
  v8 = v3 + 32;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

void sub_1002B8F8C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = [a1 attributeSet];
  *a2 = sub_1002B5E30();
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  _objc_release(v6);
}

uint64_t sub_1002B9008(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a1;
  v58 = a2;
  v57 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v55 = a7;
  v40 = a8;
  v41 = sub_1002B9F4C;
  v42 = sub_1002B9FD4;
  v83 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  v78 = 0;
  v79 = 0;
  v77 = 0;
  v73 = 0;
  v84 = a7;
  v43 = type metadata accessor for Array();
  sub_10025CAA4(&unk_1006DCA70);
  v48 = type metadata accessor for CheckedContinuation();
  v50 = *(v48 - 8);
  v49 = v48 - 8;
  v51 = v50;
  v52 = *(v50 + 64);
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
  v54 = &v29 - v53;
  v83 = __chkstk_darwin(v47);
  v81 = v8;
  v82 = v9;
  v80 = v10;
  v78 = v11;
  v79 = v12;
  v56 = swift_allocObject();
  v77 = v56 + 16;
  *(v56 + 16) = Array.init()();
  if (String.isEmpty.getter())
  {
    v29 = *(v56 + 16);

    v76 = v29;
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    v39 = sub_1002B9EE8();

    _objc_retain(v44);
    v74 = v44;
    if (v44)
    {
      v75 = v74;
    }

    else
    {
      type metadata accessor for CSQueryBuilder();
      v75 = static CSQueryBuilder.queryContext.getter();
      if (v74)
      {
        sub_10026A58C(&v74);
      }
    }

    v38 = sub_1002B9690(v58, v57, v75);
    v73 = v38;
    _objc_retain(v38);

    v32 = 7;
    v13 = swift_allocObject();
    v14 = v45;
    v15 = v46;
    v16 = v41;
    v17 = v40;
    v18 = v56;
    v13[2] = v55;
    v13[3] = v17;
    v13[4] = v18;
    v13[5] = v14;
    v13[6] = v15;
    v71 = v16;
    v72 = v13;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v67 = 1107296256;
    v68 = 0;
    v69 = sub_1002B98DC;
    v70 = &unk_100659558;
    v30 = _Block_copy(&aBlock);

    [v38 setFoundItemsHandler:v30];
    _Block_release(v30);
    _objc_release(v38);
    _objc_retain(v38);
    v31 = v51;
    (*(v50 + 16))(v54, v47, v48);

    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = (v33 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    v20 = v40;
    v21 = v33;
    v22 = v50;
    v23 = v54;
    v24 = v48;
    v35 = v19;
    *(v19 + 16) = v55;
    *(v19 + 24) = v20;
    (*(v22 + 32))(v19 + v21, v23, v24);
    v25 = v42;
    v26 = v35;
    v27 = v36;
    *(v35 + v34) = v56;
    v64 = v25;
    v65 = v26;
    v59 = _NSConcreteStackBlock;
    v60 = v27;
    v61 = 0;
    v62 = sub_1002B9AFC;
    v63 = &unk_1006595A8;
    v37 = _Block_copy(&v59);

    [v38 setCompletionHandler:v37];
    _Block_release(v37);
    _objc_release(v38);
    [v38 start];
    _objc_release(v38);
  }
}

uint64_t sub_1002B96E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v25 = a1;
  v24 = a2 + 16;
  v22 = a3;
  v23 = a4;
  v21 = a1;

  v16 = a5;
  v17 = a6;
  v18 = a3;
  v19 = a4;
  v12 = sub_10025C9B0(&qword_1006D7B98);
  v6 = sub_1002BA1D8();
  v8 = sub_10025E9D8(sub_1002BA194, v15, v12, a5, &type metadata for Never, v6, &protocol witness table for Never, v14);

  v20 = v8;
  swift_beginAccess();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Array.append<A>(contentsOf:)();
  return swift_endAccess();
}

uint64_t sub_1002B98DC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  sub_1002BA130();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3();

  _objc_release(a2);
}

uint64_t sub_1002B9970(uint64_t a1)
{
  swift_errorRetain();
  if (a1)
  {
    swift_errorRetain();
    type metadata accessor for Array();
    sub_10025CAA4(&unk_1006DCA70);
    type metadata accessor for CheckedContinuation();
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    swift_beginAccess();

    swift_endAccess();
    type metadata accessor for Array();
    sub_10025CAA4(&unk_1006DCA70);
    type metadata accessor for CheckedContinuation();
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1002B9AFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  _objc_retain(a2);
  v3();
}

id sub_1002B9BA0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 initWithQueryString:? queryContext:?];
  _objc_release(a3);
  _objc_release(v6);

  return v7;
}

unint64_t sub_1002B9C30()
{
  v2 = qword_1006D7B60;
  if (!qword_1006D7B60)
  {
    sub_10025CAA4(&qword_1006D7B58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7B60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002B9CB8()
{
  v2 = qword_1006D7B68;
  if (!qword_1006D7B68)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7B68);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002B9D60()
{
  v2 = qword_1006D7B70;
  if (!qword_1006D7B70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7B70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002B9DE4()
{
  v2 = qword_1006D7B78;
  if (!qword_1006D7B78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7B78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002B9E5C()
{
  v2 = qword_1006D7B80;
  if (!qword_1006D7B80)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7B80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002B9EE8()
{
  v2 = qword_1006D7B88;
  if (!qword_1006D7B88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7B88);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1002B9F70(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1002B9FD4(uint64_t a1)
{
  type metadata accessor for Array();
  sub_10025CAA4(&unk_1006DCA70);
  type metadata accessor for CheckedContinuation();

  return sub_1002B9970(a1);
}

uint64_t sub_1002BA0CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1002BA130()
{
  v2 = qword_1006D7B90;
  if (!qword_1006D7B90)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7B90);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002BA1D8()
{
  v2 = qword_1006D7BA0;
  if (!qword_1006D7BA0)
  {
    sub_10025CAA4(&qword_1006D7B98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002BA260@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Delete one or more email drafts";
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
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete Draft", 0xCuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 31;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1002BA444@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006D7BB0);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&qword_1006D7BB8);
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
  v25 = sub_1002BA768();
  v12 = 7;
  v24 = &unk_1006596D8;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7BC8);
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

unint64_t sub_1002BA768()
{
  v2 = qword_1006D7BC0;
  if (!qword_1006D7BC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7BC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002BA7E4()
{

  v1 = IntentParameter.projectedValue.getter();

  return v1;
}

uint64_t sub_1002BA844@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10027ECA8(a1, &v4);
  *a2 = sub_1002BA7E4();
}

uint64_t sub_1002BA89C()
{

  IntentParameter.wrappedValue.getter();

  return v1;
}

uint64_t sub_1002BA900()
{

  IntentParameter.wrappedValue.setter();
}

uint64_t sub_1002BA97C()
{

  AppDependency.wrappedValue.getter();

  return v1;
}

void sub_1002BA9E0(void *a1)
{

  _objc_retain(a1);
  AppDependency.wrappedValue.setter();

  _objc_release(a1);
}

uint64_t sub_1002BAA6C()
{

  v1 = AppDependency.projectedValue.getter();

  return v1;
}

uint64_t sub_1002BAACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 424) = a3;
  *(v3 + 416) = a2;
  *(v3 + 408) = a1;
  *(v3 + 224) = v3;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0;
  *(v3 + 217) = 0;
  *(v3 + 232) = 0;
  *(v3 + 312) = 0;
  *(v3 + 352) = 0;
  v4 = type metadata accessor for Logger();
  *(v3 + 432) = v4;
  *(v3 + 440) = *(v4 - 8);
  *(v3 + 448) = swift_task_alloc();
  *(v3 + 456) = swift_task_alloc();
  *(v3 + 464) = swift_task_alloc();
  *(v3 + 472) = swift_task_alloc();
  *(v3 + 144) = a2;
  *(v3 + 152) = a3;
  type metadata accessor for MainActor();
  *(v3 + 480) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 488) = v9;
  *(v3 + 496) = v5;

  return _swift_task_switch(sub_1002BAC6C, v9);
}

uint64_t sub_1002BAC6C()
{
  *(v0 + 224) = v0;
  v27 = sub_1002BA97C();
  sub_10035277C();
  _objc_release(v27);
  *(v26 + 217) = 1;
  v24 = sub_1002BA97C();
  v25 = sub_10035333C();
  if (v25)
  {
    v1 = *(v26 + 472);
    v20 = *(v26 + 432);
    v19 = *(v26 + 440);
    *(v26 + 352) = v25;
    _objc_release(v24);
    v2 = Logger.appIntentLogger.unsafeMutableAddressor();
    (*(v19 + 16))(v1, v2, v20);
    v22 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    sub_10025C9B0(&unk_1006D7720);
    v23 = _allocateUninitializedArray<A>(_:)();
    if (os_log_type_enabled(v22, v21))
    {
      buf = static UnsafeMutablePointer.allocate(capacity:)();
      sub_10025C9B0(&qword_1006D7290);
      v15 = sub_1002641E8(0);
      v16 = sub_1002641E8(0);
      *(v26 + 376) = buf;
      *(v26 + 384) = v15;
      *(v26 + 392) = v16;
      sub_10026423C(0, (v26 + 376));
      sub_10026423C(0, (v26 + 376));
      *(v26 + 400) = v23;
      v17 = swift_task_alloc();
      v17[2] = v26 + 376;
      v17[3] = v26 + 384;
      v17[4] = v26 + 392;
      sub_10025C9B0(&qword_1006D72C0);
      sub_10026E6E0();
      Sequence.forEach(_:)();

      _os_log_impl(&_mh_execute_header, v22, v21, "#SiriMail DeleteDraftIntent: Found an active email composition, deleting that now", buf, 2u);
      sub_10026429C(v15);
      sub_10026429C(v16);
      UnsafeMutablePointer.deallocate()();
    }

    v11 = *(v26 + 472);
    v12 = *(v26 + 432);
    v10 = *(v26 + 440);
    _objc_release(v22);
    (*(v10 + 8))(v11, v12);
    [v25 setIsDirty:0];
    v13 = [v25 mailComposeView];
    if (!v13)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v9 = [v13 composeWebView];
    _objc_release(v13);
    if (!v9)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    [v9 setDirty:0];
    _objc_release(v9);
    [v25 setResolution:3];
    *(v26 + 360) = [v25 compositionType];
    *(v26 + 368) = 2;
    type metadata accessor for MailComposeType();
    sub_1002BD02C();
    v4 = == infix<A>(_:_:)();
    if (v4)
    {
      [v25 close];
    }

    else
    {
      [v25 finishPopoverAlertClosingComposition:1];
    }

    *(v26 + 217) = 0;
    _objc_release(v25);
    v18 = 0;
  }

  else
  {
    _objc_release(v24);
    v18 = 1;
  }

  *(v26 + 218) = v18 & 1;
  v5 = *(v26 + 424);
  *(v26 + 160) = *(v26 + 416);
  *(v26 + 168) = v5;
  v8 = sub_1002BA89C();
  *(v26 + 504) = v8;
  v7 = sub_1002BA97C();
  *(v26 + 512) = v7;
  v6 = swift_task_alloc();
  *(v26 + 520) = v6;
  *(v26 + 528) = sub_10028F684();
  *v6 = *(v26 + 224);
  v6[1] = sub_1002BB4C0;

  return sub_10028E6A0(v8, v7);
}

uint64_t sub_1002BB4C0(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 224) = *v2;
  *(v6 + 536) = a1;
  *(v6 + 544) = v1;

  if (v1)
  {
    v3 = *(v6 + 488);
    v4 = sub_1002BC658;
  }

  else
  {

    v3 = *(v6 + 488);
    v4 = sub_1002BB660;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1002BB660()
{
  v1 = v0[67];
  v0[28] = v0;
  v0[29] = v1;
  v0[30] = v1;
  sub_10025C9B0(&unk_1006DCAF0);
  sub_1002BC750();
  if (Collection.isEmpty.getter())
  {
    if (*(v60 + 218))
    {
      v6 = *(v60 + 456);
      v36 = *(v60 + 432);
      v35 = *(v60 + 440);
      v7 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v35 + 16))(v6, v7, v36);
      oslog = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      sub_10025C9B0(&unk_1006D7720);
      v39 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(oslog, v37))
      {
        v8 = *(v60 + 544);
        buf = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v32 = sub_1002641E8(0);
        v33 = sub_1002641E8(0);
        *(v60 + 280) = buf;
        *(v60 + 288) = v32;
        *(v60 + 296) = v33;
        sub_10026423C(0, (v60 + 280));
        sub_10026423C(0, (v60 + 280));
        *(v60 + 304) = v39;
        v34 = swift_task_alloc();
        v34[2] = v60 + 280;
        v34[3] = v60 + 288;
        v34[4] = v60 + 296;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v8)
        {
        }

        _os_log_impl(&_mh_execute_header, oslog, v37, "#SiriMail DeleteDraftIntent: Found no persisted drafts to delete, throwing noMessagesFound error", buf, 2u);
        sub_10026429C(v32);
        sub_10026429C(v33);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v28 = *(v60 + 456);
      v29 = *(v60 + 432);
      v27 = *(v60 + 440);
      _objc_release(oslog);
      (*(v27 + 8))(v28, v29);
      v30 = type metadata accessor for ToolboxErrors();
      sub_100281ED4();
      swift_allocError();
      (*(*(v30 - 8) + 104))(v9, enum case for ToolboxErrors.noMessagesFound(_:));
      swift_willThrow();

      v10 = *(*(v60 + 224) + 8);
    }

    else
    {
      v11 = *(v60 + 448);
      v23 = *(v60 + 432);
      v22 = *(v60 + 440);
      v12 = Logger.appIntentLogger.unsafeMutableAddressor();
      (*(v22 + 16))(v11, v12, v23);
      log = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      sub_10025C9B0(&unk_1006D7720);
      v26 = _allocateUninitializedArray<A>(_:)();
      if (os_log_type_enabled(log, v24))
      {
        v13 = *(v60 + 544);
        v18 = static UnsafeMutablePointer.allocate(capacity:)();
        sub_10025C9B0(&qword_1006D7290);
        v19 = sub_1002641E8(0);
        v20 = sub_1002641E8(0);
        *(v60 + 248) = v18;
        *(v60 + 256) = v19;
        *(v60 + 264) = v20;
        sub_10026423C(0, (v60 + 248));
        sub_10026423C(0, (v60 + 248));
        *(v60 + 272) = v26;
        v21 = swift_task_alloc();
        v21[2] = v60 + 248;
        v21[3] = v60 + 256;
        v21[4] = v60 + 264;
        sub_10025C9B0(&qword_1006D72C0);
        sub_10026E6E0();
        Sequence.forEach(_:)();
        if (v13)
        {
        }

        _os_log_impl(&_mh_execute_header, log, v24, "#SiriMail DeleteDraftIntent: Found no persisted drafts to delete but already deleted a temporary draft, returning early", v18, 2u);
        sub_10026429C(v19);
        sub_10026429C(v20);
        UnsafeMutablePointer.deallocate()();
      }

      else
      {
      }

      v16 = *(v60 + 448);
      v17 = *(v60 + 432);
      v15 = *(v60 + 440);
      _objc_release(log);
      (*(v15 + 8))(v16, v17);
      static IntentResult.result<>()();

      v10 = *(*(v60 + 224) + 8);
    }

    return v10();
  }

  v2 = *(v60 + 464);
  v56 = *(v60 + 432);
  v55 = *(v60 + 440);
  v3 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v55 + 16))(v2, v3, v56);
  v58 = Logger.logObject.getter();
  v57 = static os_log_type_t.info.getter();
  sub_10025C9B0(&unk_1006D7720);
  v59 = _allocateUninitializedArray<A>(_:)();
  if (!os_log_type_enabled(v58, v57))
  {

    goto LABEL_7;
  }

  v4 = *(v60 + 544);
  v51 = static UnsafeMutablePointer.allocate(capacity:)();
  sub_10025C9B0(&qword_1006D7290);
  v52 = sub_1002641E8(0);
  v53 = sub_1002641E8(0);
  *(v60 + 320) = v51;
  *(v60 + 328) = v52;
  *(v60 + 336) = v53;
  sub_10026423C(0, (v60 + 320));
  sub_10026423C(0, (v60 + 320));
  *(v60 + 344) = v59;
  v54 = swift_task_alloc();
  v54[2] = v60 + 320;
  v54[3] = v60 + 328;
  v54[4] = v60 + 336;
  sub_10025C9B0(&qword_1006D72C0);
  sub_10026E6E0();
  Sequence.forEach(_:)();
  if (v4)
  {
  }

  _os_log_impl(&_mh_execute_header, v58, v57, "#SiriMail DeleteDraftIntent: Deleting messages from Drafts mailbox", v51, 2u);
  sub_10026429C(v52);
  sub_10026429C(v53);
  UnsafeMutablePointer.deallocate()();

LABEL_7:
  v48 = *(v60 + 536);
  v41 = *(v60 + 464);
  v42 = *(v60 + 432);
  v45 = *(v60 + 424);
  v44 = *(v60 + 416);
  v40 = *(v60 + 440);
  _objc_release(v58);
  (*(v40 + 8))(v41, v42);
  sub_1002BCF88();

  v43 = sub_1002BA97C();
  v46 = sub_100353058();
  _objc_release(v43);
  *(v60 + 176) = v44;
  *(v60 + 184) = v45;
  v47 = sub_10028E57C();
  *(v60 + 192) = v44;
  *(v60 + 200) = v45;
  v5 = sub_10028E5B4();
  v50 = sub_10027D364(v48, v46, v47, v5);
  *(v60 + 552) = v50;
  *(v60 + 312) = v50;
  [v50 setTargetMailboxType:3];
  *(v60 + 16) = *(v60 + 224);
  *(v60 + 56) = v60 + 208;
  *(v60 + 24) = sub_1002BC410;
  v49 = swift_continuation_init();
  *(v60 + 136) = sub_10025C9B0(&unk_1006D7CE0);
  *(v60 + 112) = v49;
  *(v60 + 80) = _NSConcreteStackBlock;
  *(v60 + 88) = 1107296256;
  *(v60 + 92) = 0;
  *(v60 + 96) = sub_10027D41C;
  *(v60 + 104) = &unk_1006595D0;
  [v50 performInteractionWithCompletion:?];

  return _swift_continuation_await(v60 + 16);
}

uint64_t sub_1002BC410()
{
  v3 = *v0;
  *(*v0 + 224) = *v0;
  v1 = *(v3 + 488);

  return _swift_task_switch(sub_1002BC528, v1);
}

uint64_t sub_1002BC528()
{
  v3 = *(v0 + 552);
  *(v0 + 224) = v0;
  _objc_release(*(v0 + 208));
  static IntentResult.result<>()();
  _objc_release(v3);

  v1 = *(*(v0 + 224) + 8);

  return v1();
}

uint64_t sub_1002BC658()
{
  v1 = *(v0 + 512);
  *(v0 + 224) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 224) + 8);

  return v2();
}

unint64_t sub_1002BC750()
{
  v2 = qword_1006D7BD0;
  if (!qword_1006D7BD0)
  {
    sub_10025CAA4(&unk_1006DCAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002BC7D8()
{
  v26 = &v31;
  v31 = 0;
  v32 = 0;
  v24 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v8 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v22 = &v7 - v8;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v21 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v20 = &v7 - v10;
  v3 = sub_10025C9B0(&qword_1006D6280);
  v11 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v18 = &v7 - v11;
  sub_10025C9B0(&unk_1006D7C48);
  v4 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 56);
  v12 = 1;
  v4(v18, 1);
  v19 = &v30;
  v30 = 0;
  v13 = type metadata accessor for IntentDialog();
  v5 = *(v13 - 8);
  v15 = *(v5 + 56);
  v14 = v5 + 56;
  v15(v20, v12);
  (v15)(v21, v12, v12, v13);
  v17 = sub_10025C9B0(&qword_1006D74E0);
  v16 = sub_1002BD504();
  v23 = sub_1002B9D60();
  sub_1003BD8F8(v22);
  v28 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v31 = v28;
  sub_10025C9B0(&unk_1006D7090);
  v25 = v29;
  memset(v29, 0, sizeof(v29));
  sub_10000B074();
  sub_1003DC7F0();
  v27 = AppDependency.__allocating_init(key:manager:)();

  v32 = v27;
  sub_10027EB24();
  return v28;
}

uint64_t sub_1002BCB44()
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
  v6 = qword_1006EFE90;
  sub_10002094C(v7, qword_1006EFE90);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1002BCC84();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1002BCC84()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DeleteDraftIntent", 0x11uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1002BCD5C()
{
  if (qword_1006D5E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006EFE90);
}

uint64_t sub_1002BCDC8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002BCD5C();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002BCE5C(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1002BAACC(a1, v6, v7);
}

uint64_t sub_1002BCF28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BC7D8();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1002BCF88()
{
  v2 = qword_1006D7BE0;
  if (!qword_1006D7BE0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006D7BE0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1002BD02C()
{
  v2 = qword_1006D7BF0;
  if (!qword_1006D7BF0)
  {
    type metadata accessor for MailComposeType();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7BF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BD0AC(uint64_t a1)
{
  result = sub_1002BD0D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1002BD0D8()
{
  v2 = qword_1006D7BF8;
  if (!qword_1006D7BF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7BF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BD16C()
{
  v2 = qword_1006D7C00;
  if (!qword_1006D7C00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BD200(uint64_t a1)
{
  result = sub_1002BA768();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002BD25C()
{
  v2 = qword_1006D7C10;
  if (!qword_1006D7C10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BD2F0()
{
  v2 = qword_1006D7C18;
  if (!qword_1006D7C18)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BD384()
{
  v2 = qword_1006D7C20;
  if (!qword_1006D7C20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BD47C()
{
  v2 = qword_1006D7C28;
  if (!qword_1006D7C28)
  {
    sub_10025CAA4(&unk_1006D7C30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BD504()
{
  v2 = qword_1006D7C58;
  if (!qword_1006D7C58)
  {
    sub_10025CAA4(&qword_1006D74E0);
    sub_10028D658();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002BD59C@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Delete one or more email messages";
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
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete Message", 0xEuLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 33;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1002BD78C@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10025C9B0(&qword_1006D7C78);
  v8 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v26 = &v7 - v8;
  v19 = sub_10025C9B0(&qword_1006D7C80);
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
  v25 = sub_1002BDAB0();
  v12 = 7;
  v24 = &unk_1006597C0;
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22 = 1;
  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete ", v12, 1);
  object = v4._object;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);

  KeyPath = swift_getKeyPath();
  sub_10025C9B0(&qword_1006D7C90);
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

unint64_t sub_1002BDAB0()
{
  v2 = qword_1006D7C88;
  if (!qword_1006D7C88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002BDB2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[56] = a3;
  v3[55] = a2;
  v3[54] = a1;
  v3[48] = v3;
  v3[38] = 0;
  v3[39] = 0;
  v3[49] = 0;
  v3[50] = 0;
  memset(v3 + 10, 0, 0x50uLL);
  v3[38] = a2;
  v3[39] = a3;
  type metadata accessor for MainActor();
  v3[57] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[58] = v8;
  v3[59] = v4;

  return _swift_task_switch(sub_1002BDC28, v8);
}

uint64_t sub_1002BDC28()
{
  *(v0 + 384) = v0;
  v8 = sub_10027A534();
  sub_10035277C();
  v3 = v7[56];
  v4 = v7[55];
  _objc_release(v8);
  v7[40] = v4;
  v7[41] = v3;
  v6 = sub_10027A6E8();
  v7[60] = v6;
  v5 = sub_10027A534();
  v7[61] = v5;
  v1 = swift_task_alloc();
  v7[62] = v1;
  v7[63] = sub_1002BE7D4();
  *v1 = v7[48];
  v1[1] = sub_1002BDE1C;

  return sub_10045F520(v6, v5);
}

uint64_t sub_1002BDE1C(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[48] = *v2;
  v7[64] = a1;
  v7[65] = v1;

  if (v1)
  {
    v3 = *(v6 + 448);
    v4 = sub_1002BE71C;
  }

  else
  {

    v3 = *(v6 + 448);
    v4 = sub_1002BDFC0;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1002BDFC0()
{
  v1 = v0[65];
  v14 = v0[64];
  v0[48] = v0;
  v0[49] = v14;
  v15 = sub_10027A534();
  sub_100352C0C(v14);
  v0[66] = v1;
  if (v1)
  {
    _objc_release(v15);

    v3 = *(*(v13 + 384) + 8);

    return v3();
  }

  else
  {
    v10 = *(v13 + 512);
    v7 = *(v13 + 448);
    v6 = *(v13 + 440);
    _objc_release(v15);
    sub_1002BCF88();

    v5 = sub_10027A534();
    v8 = sub_100353058();
    _objc_release(v5);
    *(v13 + 336) = v6;
    *(v13 + 344) = v7;
    v9 = sub_10028E57C();
    *(v13 + 352) = v6;
    *(v13 + 360) = v7;
    v2 = sub_10028E5B4();
    v12 = sub_10027D364(v10, v8, v9, v2);
    *(v13 + 536) = v12;
    *(v13 + 400) = v12;
    [v12 setTargetMailboxType:3];
    *(v13 + 16) = *(v13 + 384);
    *(v13 + 56) = v13 + 368;
    *(v13 + 24) = sub_1002BE314;
    v11 = swift_continuation_init();
    *(v13 + 296) = sub_10025C9B0(&unk_1006D7CE0);
    *(v13 + 272) = v11;
    *(v13 + 240) = _NSConcreteStackBlock;
    *(v13 + 248) = 1107296256;
    *(v13 + 252) = 0;
    *(v13 + 256) = sub_10027D41C;
    *(v13 + 264) = &unk_1006596F0;
    [v12 performInteractionWithCompletion:?];

    return _swift_continuation_await(v13 + 16);
  }
}

uint64_t sub_1002BE314()
{
  v3 = *v0;
  *(*v0 + 384) = *v0;
  v1 = *(v3 + 464);

  return _swift_task_switch(sub_1002BE42C, v1);
}

uint64_t sub_1002BE42C()
{
  *(v0 + 384) = v0;
  _objc_release(*(v0 + 368));
  *(v0 + 408) = sub_10035D3CC(3);
  sub_10025C9B0(&qword_1006D7020);
  sub_10027D50C();
  Collection.first.getter();
  if (*(v0 + 168))
  {
    v1 = v5[66];
    memcpy(v5 + 10, v5 + 20, 0x50uLL);

    v5[53] = sub_10027A6E8();
    *(swift_task_alloc() + 16) = v5 + 10;
    sub_10025C9B0(&unk_1006D6FF0);
    sub_10027D6A0();
    Sequence.forEach(_:)();
    if (v1)
    {
    }

    sub_100264880();
    sub_10027D728((v5 + 10));
  }

  else
  {
    sub_10027D594((v5 + 20));
  }

  v4 = v5[67];
  v5[52] = sub_10027A6E8();
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D124();
  static IntentResult.result<A>(value:)();
  sub_100264880();
  _objc_release(v4);

  v2 = *(v5[48] + 8);

  return v2();
}

uint64_t sub_1002BE71C()
{
  v1 = *(v0 + 488);
  *(v0 + 384) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 384) + 8);

  return v2();
}

unint64_t sub_1002BE7D4()
{
  v2 = qword_1006D7C98;
  if (!qword_1006D7C98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7C98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002BE890()
{
  v26 = &v31;
  v31 = 0;
  v32 = 0;
  v13 = 0;
  v0 = type metadata accessor for InputConnectionBehavior();
  v8 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v24 = &v7 - v8;
  v1 = sub_10025C9B0(&unk_1006D7080);
  v9 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v23 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v7 - v9);
  v22 = &v7 - v10;
  v3 = sub_10025C9B0(&qword_1006D6280);
  v11 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v20 = &v7 - v11;
  sub_10025C9B0(&unk_1006D7090);
  v12 = v30;
  memset(v30, 0, sizeof(v30));
  sub_10000B074();
  sub_1003DC7F0();
  v28 = AppDependency.__allocating_init(key:manager:)();

  v31 = v28;
  sub_10025C9B0(&unk_1006D70A0);
  v4 = *(*(type metadata accessor for LocalizedStringResource() - 8) + 56);
  v14 = 1;
  v4(v20, 1);
  v21 = &v29;
  v29 = 0;
  v15 = type metadata accessor for IntentDialog();
  v5 = *(v15 - 8);
  v17 = *(v5 + 56);
  v16 = v5 + 56;
  v17(v22, v14);
  (v17)(v23, v14, v14, v15);
  v19 = sub_10025C9B0(&unk_1006D6FF0);
  v18 = sub_10027D124();
  v25 = sub_10027EAAC();
  sub_1003BD8F8(v24);
  v27 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v32 = v27;
  sub_10027EB24();
  return v28;
}

uint64_t sub_1002BEBDC()
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
  v6 = qword_1006EFEA8;
  sub_10002094C(v7, qword_1006EFEA8);
  v11 = sub_1000208F4(v7, v6);
  sub_10027DF0C();
  sub_1002BED1C();
  (*(v8 + 8))(v10, v13);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_1002BED1C()
{
  if (!sub_10047E218(18, 0, 0))
  {
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Do not reference schema types directly", 0x26uLL, 1);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("DeleteMailIntent", 0x10uLL, 1);
  return AssistantSchema.IntentSchema.init(_:)();
}

uint64_t sub_1002BEDF4()
{
  if (qword_1006D5E28 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();
  return sub_1000208F4(v0, qword_1006EFEA8);
}

uint64_t sub_1002BEE60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002BEDF4();
  v1 = type metadata accessor for AssistantSchema();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002BEEF4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1002BDB2C(a1, v6, v7);
}

uint64_t sub_1002BEFC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002BE890();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1002BF020(uint64_t a1)
{
  result = sub_1002BDAB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002BF064()
{
  v2 = qword_1006D7CA0;
  if (!qword_1006D7CA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BF128()
{
  v2 = qword_1006D7CA8;
  if (!qword_1006D7CA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BF1BC()
{
  v2 = qword_1006D7CB0;
  if (!qword_1006D7CB0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BF250()
{
  v2 = qword_1006D7CB8;
  if (!qword_1006D7CB8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BF34C()
{
  v2 = qword_1006D7CC0;
  if (!qword_1006D7CC0)
  {
    sub_10025CAA4(&qword_1006D7CC8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002BF3D4()
{
  v2 = qword_1006DBA20;
  if (!qword_1006DBA20)
  {
    sub_10025CAA4(&qword_1006DCCB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006DBA20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002BF474@<X0>(uint64_t a1@<X8>)
{
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete the read later reminder on one or more email messages", 0x3CuLL, 1);
  IntentDescription.init(stringLiteral:)();
  v1 = type metadata accessor for IntentDescription();
  return (*(*(v1 - 8) + 56))(a1, 0, 1);
}

uint64_t sub_1002BF4FC@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v9 = "Delete the read later reminder on one or more email messages";
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
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Delete Read Later", 0x11uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v12 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v8 & 1);
  sub_100015CC0();
  sub_10025D410(v14);
  v15 = v9;
  v16 = 60;
  v17 = 2;
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1002BF6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[40] = a3;
  v3[39] = a2;
  v3[38] = a1;
  v3[34] = v3;
  v3[22] = 0;
  v3[23] = 0;
  v3[35] = 0;
  v3[36] = 0;
  v3[22] = a2;
  v3[23] = a3;
  type metadata accessor for MainActor();
  v3[41] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[42] = v6;
  v3[43] = v4;

  return _swift_task_switch(sub_1002BF7B8, v6);
}

uint64_t sub_1002BF7B8()
{
  *(v0 + 272) = v0;
  v8 = sub_10027A534();
  sub_10035277C();
  v3 = v7[40];
  v4 = v7[39];
  _objc_release(v8);
  v7[24] = v4;
  v7[25] = v3;
  v6 = sub_10027A6E8();
  v7[44] = v6;
  v5 = sub_10027A534();
  v7[45] = v5;
  v1 = swift_task_alloc();
  v7[46] = v1;
  v7[47] = sub_1002C0510();
  *v1 = v7[34];
  v1[1] = sub_1002BF9AC;

  return sub_10045F520(v6, v5);
}

uint64_t sub_1002BF9AC(uint64_t a1)
{
  v7 = *v2;
  v6 = *v2 + 16;
  v7[34] = *v2;
  v7[48] = a1;
  v7[49] = v1;

  if (v1)
  {
    v3 = *(v6 + 320);
    v4 = sub_1002C0458;
  }

  else
  {

    v3 = *(v6 + 320);
    v4 = sub_1002BFB50;
  }

  return _swift_task_switch(v4, v3);
}

uint64_t sub_1002BFB50()
{
  v1 = v0[49];
  v15 = v0[48];
  v0[34] = v0;
  v0[35] = v15;
  v16 = sub_10027A534();
  sub_100352C0C(v15);
  v0[50] = v1;
  if (v1)
  {
    _objc_release(v16);

    v3 = *(*(v14 + 272) + 8);

    return v3();
  }

  else
  {
    v11 = *(v14 + 384);
    v7 = *(v14 + 320);
    v6 = *(v14 + 312);
    _objc_release(v16);
    sub_1002C058C();

    v5 = sub_10027A534();
    v8 = sub_100353058();
    _objc_release(v5);
    *(v14 + 208) = v6;
    *(v14 + 216) = v7;
    v9 = sub_10028E57C();
    *(v14 + 224) = v6;
    *(v14 + 232) = v7;
    v10 = sub_10028E5B4();
    type metadata accessor for MFReadLaterTriageInteractionState();
    v2 = sub_1003C8B80();
    v13 = sub_1002C05F0(v11, v8, v9, v10, v2);
    *(v14 + 408) = v13;
    *(v14 + 288) = v13;
    *(v14 + 16) = *(v14 + 272);
    *(v14 + 56) = v14 + 256;
    *(v14 + 24) = sub_1002BFEA4;
    v12 = swift_continuation_init();
    *(v14 + 136) = sub_10025C9B0(&unk_1006D7CE0);
    *(v14 + 112) = v12;
    *(v14 + 80) = _NSConcreteStackBlock;
    *(v14 + 88) = 1107296256;
    *(v14 + 92) = 0;
    *(v14 + 96) = sub_10027D41C;
    *(v14 + 104) = &unk_1006597D8;
    [v13 performInteractionWithCompletion:?];

    return _swift_continuation_await(v14 + 16);
  }
}

uint64_t sub_1002BFEA4()
{
  v3 = *v0;
  *(*v0 + 272) = *v0;
  v1 = *(v3 + 336);

  return _swift_task_switch(sub_1002BFFBC, v1);
}

uint64_t sub_1002BFFBC()
{
  *(v0 + 272) = v0;
  _objc_release(*(v0 + 256));
  v16 = [objc_opt_self() defaultCenter];
  _objc_retain(@"AppIntentDidDeleteReminder");
  *(v0 + 144) = 0;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  if (*(v0 + 168))
  {
    object = v15[10]._object;
    v9 = sub_10027EC3C(&v15[9]._countAndFlagsBits, object);
    v10 = *(object - 8);
    v12 = swift_task_alloc();
    (*(v10 + 16))(v12, v9, object);
    v13 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v12, object);

    sub_1000160F4(&v15[9]);
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  countAndFlagsBits = v15[25]._countAndFlagsBits;
  sub_10025C9B0(&unk_1006DB9F0);
  _allocateUninitializedArray<A>(_:)();
  v7 = v2;
  v15[15] = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailMessageIDs", 0xEuLL, 1);
  _convertToAnyHashable<A>(_:)();
  v15[18]._object = sub_10027A6E8();
  sub_10025C9B0(&unk_1006D6FF0);
  sub_10027D6A0();
  result = Sequence.compactMap<A>(_:)();
  v8 = result;
  if (!countAndFlagsBits)
  {
    v6 = v15[25]._object;
    sub_100264880();
    *(v7 + 64) = sub_10025C9B0(&unk_1006D69B0);
    *(v7 + 40) = v8;
    sub_1002612B0();
    sub_100268744();
    Dictionary.init(dictionaryLiteral:)();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v16 postNotificationName:@"AppIntentDidDeleteReminder" object:v14 userInfo:isa];
    _objc_release(isa);
    swift_unknownObjectRelease();
    _objc_release(@"AppIntentDidDeleteReminder");
    _objc_release(v16);
    static IntentResult.result<>()();
    _objc_release(v6);

    v4 = *(v15[17]._countAndFlagsBits + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1002C0458()
{
  v1 = *(v0 + 360);
  *(v0 + 272) = v0;
  _objc_release(v1);

  v2 = *(*(v0 + 272) + 8);

  return v2();
}

unint64_t sub_1002C0510()
{
  v2 = qword_1006D7CD0;
  if (!qword_1006D7CD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7CD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C058C()
{
  v2 = qword_1006DC5F0;
  if (!qword_1006DC5F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1006DC5F0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1002C05F0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_10025C9B0(&unk_1006D7220);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v11 = [swift_getObjCClassFromMetadata() interactionWithMessageListItems:isa undoManager:a2 origin:a3 actor:a4 state:a5];
  _objc_release(a5);
  _objc_release(a2);
  _objc_release(isa);

  return v11;
}

uint64_t sub_1002C0700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v12 = a2;
  v13 = a1;
  v21 = 0;
  v2 = sub_10025C9B0(&qword_1006D7DF0);
  v14 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v17 = &v9 - v14;
  v15 = *v3;
  v16 = v3[1];
  v21 = v3;

  MailMessageEntityID.init(with:)();
  v18 = type metadata accessor for MailMessageEntityID();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  if ((*(v19 + 48))(v17, 1) == 1)
  {
    result = sub_1002C1698(v17);
    v5 = v12;
    *v12 = 0;
    v5[1] = 0;
  }

  else
  {
    v10 = MailMessageEntityID.mailMessageID.getter();
    v11 = v6;
    (*(v19 + 8))(v17, v18);
    result = v10;
    v7 = v12;
    v8 = v11;
    *v12 = v10;
    v7[1] = v8;
  }

  return result;
}

uint64_t sub_1002C0890()
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

uint64_t sub_1002C09C4(id *a1)
{
  v5 = *a1;
  _objc_retain(*a1);
  if (swift_dynamicCastObjCProtocolConditional())
  {
    swift_unknownObjectRelease();
    v4 = 1;
  }

  else
  {
    _objc_release(v5);
    v4 = 0;
  }

  _objc_retain(v5);
  if (v4)
  {
    v3 = 1;
  }

  else
  {
    _objc_retain(v5);
    if (swift_dynamicCastObjCProtocolConditional())
    {
      swift_unknownObjectRelease();
      v2 = 1;
    }

    else
    {
      _objc_release(v5);
      v2 = 0;
    }

    v3 = v2;
  }

  _objc_release(v5);
  return v3 & 1;
}

uint64_t sub_1002C0B54()
{
  v16 = "Email messages to remove read later reminder";
  v14 = "Email messages to remove read later reminder";
  v42 = &v51;
  v51 = 0;
  v52 = 0;
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
  v13 = v50;
  memset(v50, 0, sizeof(v50));
  sub_10000B074();
  sub_1003DC7F0();
  v44 = AppDependency.__allocating_init(key:manager:)();

  v51 = v44;
  sub_10025C9B0(&unk_1006D70A0);
  *&v29[1] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Messages", 8uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  v18 = "AppIntents";
  v19 = 10;
  v15 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("AppIntents", 0xAuLL, v29[1] & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v47 = v14;
  v17 = 44;
  v48 = 44;
  v49 = 2;
  v26 = 0;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v16, v17, v29[1] & 1);
  String.LocalizationValue.init(stringLiteral:)();
  v21 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v18, v19, v29[1] & 1);
  sub_100015CC0();
  sub_10025D410(v23);
  v45[1] = 0;
  v45[2] = 0;
  v46 = *v29 & 0x100;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v24 + 56))(v36, v26, *&v29[1], v27);
  v37 = v45;
  v45[0] = 0;
  v30 = type metadata accessor for IntentDialog();
  v3 = *(v30 - 8);
  v32 = *(v3 + 56);
  v31 = v3 + 56;
  v32(v38, *&v29[1]);
  (v32)(v39, *&v29[1], *&v29[1], v30);
  v34 = sub_10025C9B0(&unk_1006D6FF0);
  v33 = sub_10027D124();
  v41 = sub_10027EAAC();
  sub_1003BD8F8(v40);
  v43 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();

  v52 = v43;
  sub_10027EB24();
  return v44;
}

uint64_t sub_1002C1298(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *v1;
  v7 = v1[1];
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002609F0;

  return sub_1002BF6E0(a1, v6, v7);
}

uint64_t sub_1002C1364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C0B54();
  *a1 = result;
  a1[1] = v2;
  return result;
}

unint64_t sub_1002C1424()
{
  v2 = qword_1006D7D08;
  if (!qword_1006D7D08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7D08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C14B4(uint64_t a1)
{
  result = sub_1002C1424();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002C14F8()
{
  v2 = qword_1006D7D20;
  if (!qword_1006D7D20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7D20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C158C()
{
  v2 = qword_1006D7D28;
  if (!qword_1006D7D28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7D28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002C1698(uint64_t a1)
{
  v3 = type metadata accessor for MailMessageEntityID();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1002C1740()
{
  v9 = "Will appear in Shortcuts or Siri as a reference to the mailbox list or message list. eg: The list named mailbox list";
  v0 = sub_10025C9B0(&qword_1006D6280);
  v2 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v0);
  v20 = &v2 - v2;
  v11 = 0;
  v3 = (*(*(type metadata accessor for LocalizedStringResource.BundleDescription() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v13 = &v2 - v3;
  v4 = (*(*(type metadata accessor for Locale() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v12 = &v2 - v4;
  v5 = (*(*(type metadata accessor for String.LocalizationValue() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v10 = &v2 - v5;
  v17 = type metadata accessor for LocalizedStringResource();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v19 = &v2 - v6;
  v8 = type metadata accessor for TypeDisplayRepresentation();
  v7 = qword_1006EFEC0;
  sub_10002094C(v8, qword_1006EFEC0);
  v18 = sub_1000208F4(v8, v7);
  v16 = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("List", 4uLL, 1);
  String.LocalizationValue.init(stringLiteral:)();
  sub_100015CC0();
  sub_10025D410(v13);
  v21 = v9;
  v22 = 116;
  v23 = 2;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v14 + 56))(v20, v16, v16, v17);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1002C1A3C()
{
  if (qword_1006D5E30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  return sub_1000208F4(v0, qword_1006EFEC0);
}

uint64_t sub_1002C1AA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1002C1A3C();
  v1 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1002C1B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1 || a1 == 1)
  {
    result = nullsub_13(a1);
    *(a2 + 24) = &unk_10065B768;
    *(a2 + 32) = &off_10065B788;
  }

  else
  {
    result = sub_1003B8B48();
    *(a2 + 24) = &unk_10065D040;
    *(a2 + 32) = &off_10065D060;
  }

  return result;
}

uint64_t sub_1002C1BC8(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v2 = _allocateUninitializedArray<A>(_:)();
  *v3 = "mailboxes";
  *(v3 + 8) = 9;
  *(v3 + 16) = 2;
  *(v3 + 24) = "mailbox list";
  *(v3 + 32) = 12;
  *(v3 + 40) = 2;
  *(v3 + 48) = "messages";
  *(v3 + 56) = 8;
  *(v3 + 64) = 2;
  *(v3 + 72) = "message list";
  *(v3 + 80) = 12;
  *(v3 + 88) = 2;
  sub_1002612B0();
  v8 = _findStringSwitchCase(cases:string:)(v2, v7);

  switch(v8)
  {
    case 0:
      v6 = 0;
LABEL_10:

      return v6;
    case 1:
      v6 = 1;
      goto LABEL_10;
    case 2:
      v6 = 2;
      goto LABEL_10;
    case 3:
      v6 = 3;
      goto LABEL_10;
  }

  return 4;
}

uint64_t sub_1002C1D8C()
{
  result = _allocateUninitializedArray<A>(_:)();
  *v1 = 0;
  v1[1] = 1;
  v1[2] = 2;
  v1[3] = 3;
  sub_1002612B0();
  return result;
}

uint64_t sub_1002C1DEC(char a1)
{
  switch(a1)
  {
    case 0:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailboxes", 9uLL, 1)._countAndFlagsBits;
    case 1:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("mailbox list", 0xCuLL, 1)._countAndFlagsBits;
    case 2:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("messages", 8uLL, 1)._countAndFlagsBits;
    default:
      return String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("message list", 0xCuLL, 1)._countAndFlagsBits;
  }
}

unint64_t sub_1002C1F40()
{
  v2 = qword_1006D7DF8;
  if (!qword_1006D7DF8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7DF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002C208C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002C1BC8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1002C20C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C1DEC(*v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1002C2148()
{
  v2 = qword_1006D7E00;
  if (!qword_1006D7E00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002C21DC()
{
  v1 = *sub_1002C2470();

  return v1;
}

uint64_t sub_1002C220C()
{
  sub_1002C24D0();
  sub_1002C254C();
  return CaseDisplayRepresentable<>.localizedStringResource.getter();
}

uint64_t sub_1002C2250@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002C1D8C();
  *a1 = result;
  return result;
}

uint64_t sub_1002C227C()
{
  v4 = sub_10025C9B0(&qword_1006D7E18);
  _allocateUninitializedArray<A>(_:)();
  v3 = v0;
  *v0 = 0;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailboxes", 9uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v2 = *(*(v4 - 8) + 72);
  v3[v2] = 1;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailbox List", 0xCuLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[2 * v2] = 2;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Messages", 8uLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  v3[3 * v2] = 3;
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message List", 0xCuLL, 1);
  DisplayRepresentation.init(stringLiteral:)();
  sub_1002612B0();
  type metadata accessor for DisplayRepresentation();
  sub_1002C25C8();
  result = Dictionary.init(dictionaryLiteral:)();
  qword_1006EFED8 = result;
  return result;
}

uint64_t *sub_1002C2470()
{
  if (qword_1006D5E38 != -1)
  {
    swift_once();
  }

  return &qword_1006EFED8;
}

unint64_t sub_1002C24D0()
{
  v2 = qword_1006D7E08;
  if (!qword_1006D7E08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C254C()
{
  v2 = qword_1006D7E10;
  if (!qword_1006D7E10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C25C8()
{
  v2 = qword_1006D7E20;
  if (!qword_1006D7E20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002C2644@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v73 = a1;
  v82 = 0;
  v81 = 0;
  v2 = sub_10025C9B0(&unk_1006D9D00);
  v69 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v70 = &v34 - v69;
  v3 = sub_10025C9B0(&qword_1006D6280);
  v71 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v72 = &v34 - v71;
  v74 = type metadata accessor for LocalizedStringResource();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v73);
  v78 = &v34 - v77;
  v79 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = __chkstk_darwin(v4);
  v80 = &v34 - v79;
  v82 = &v34 - v79;
  v81 = v6;
  if (v6)
  {
    if (v73 == 1)
    {
      v52 = 1;
      v13 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailbox List", 0xCuLL, 1);
      countAndFlagsBits = v13._countAndFlagsBits;
      object = v13._object;
      v14 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The view where you are looking at the list of mailboxes in Mail. Will appear in shortcuts or Siri", 0x61uLL, v52 & 1);
      v53 = v14._countAndFlagsBits;
      v57 = v14._object;
      v56.super.isa = sub_10028FEB4();
      v15 = sub_100015E30();
      v84._countAndFlagsBits = v53;
      v16._countAndFlagsBits = v15;
      v17._countAndFlagsBits = countAndFlagsBits;
      v16._object = v18;
      v17._object = object;
      v55 = v16._object;
      v84._object = v57;
      v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v56, v16, v84);

      _objc_release(v56.super.isa);

      LocalizedStringResource.init(stringLiteral:)();
      (*(v75 + 32))(v80, v78, v74);
    }

    else
    {
      if (v73 == 2)
      {
        v44 = 1;
        v19 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Messages", 8uLL, 1);
        v46 = v19._countAndFlagsBits;
        v50 = v19._object;
        v20 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The view where you are looking at the list of messages in Mail. Will appear in shortcuts or Siri", 0x60uLL, v44 & 1);
        v45 = v20._countAndFlagsBits;
        v49 = v20._object;
        v48.super.isa = sub_10028FEB4();
        v21 = sub_100015E30();
        v85._countAndFlagsBits = v45;
        v22._countAndFlagsBits = v21;
        v23._countAndFlagsBits = v46;
        v22._object = v24;
        v23._object = v50;
        v47 = v22._object;
        v85._object = v49;
        v51 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v48, v22, v85);

        _objc_release(v48.super.isa);
      }

      else
      {
        v36 = 1;
        v25 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Message List", 0xCuLL, 1);
        v38 = v25._countAndFlagsBits;
        v42 = v25._object;
        v26 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The view where you are looking at the list of messages in Mail. Will appear in shortcuts or Siri", 0x60uLL, v36 & 1);
        v37 = v26._countAndFlagsBits;
        v41 = v26._object;
        v40.super.isa = sub_10028FEB4();
        v27 = sub_100015E30();
        v86._countAndFlagsBits = v37;
        v28._countAndFlagsBits = v27;
        v29._countAndFlagsBits = v38;
        v28._object = v30;
        v29._object = v42;
        v39 = v28._object;
        v86._object = v41;
        v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, 0, v40, v28, v86);

        _objc_release(v40.super.isa);
      }

      LocalizedStringResource.init(stringLiteral:)();
      (*(v75 + 32))(v80, v78, v74);
    }
  }

  else
  {
    v60 = 1;
    v7 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("Mailboxes", 9uLL, 1);
    v62 = v7._countAndFlagsBits;
    v66 = v7._object;
    v8 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("The view where you are looking at the list of mailboxes in Mail. Will appear in shortcuts or Siri", 0x61uLL, v60 & 1);
    v61 = v8._countAndFlagsBits;
    v65 = v8._object;
    v64.super.isa = sub_10028FEB4();
    v9 = sub_100015E30();
    v83._countAndFlagsBits = v61;
    v10._countAndFlagsBits = v9;
    v11._countAndFlagsBits = v62;
    v10._object = v12;
    v11._object = v66;
    v63 = v10._object;
    v83._object = v65;
    v67 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v64, v10, v83);

    _objc_release(v64.super.isa);

    LocalizedStringResource.init(stringLiteral:)();
    (*(v75 + 32))(v80, v78, v74);
  }

  (*(v75 + 16))(v78, v80, v74);
  v31 = *(v75 + 56);
  v35 = 1;
  v31(v72, 1, 1, v74);
  v32 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v32 - 8) + 56))(v70, v35);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v75 + 8))(v80, v74);
}

unint64_t sub_1002C2E44()
{
  v2 = qword_1006D7E28;
  if (!qword_1006D7E28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C2ED8()
{
  v2 = qword_1006D7E30;
  if (!qword_1006D7E30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C2F6C()
{
  v2 = qword_1006D7E38;
  if (!qword_1006D7E38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C3024()
{
  v2 = qword_1006D7E40;
  if (!qword_1006D7E40)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C30B8()
{
  v2 = qword_1006D7E48;
  if (!qword_1006D7E48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C314C()
{
  v2 = qword_1006D7E50;
  if (!qword_1006D7E50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C3254()
{
  v2 = qword_1006D7E58;
  if (!qword_1006D7E58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C32E8()
{
  v2 = qword_1006D7E60;
  if (!qword_1006D7E60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C3394()
{
  v2 = qword_1006D7E68;
  if (!qword_1006D7E68)
  {
    sub_10025CAA4(&qword_1006D7E70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7E68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002C3440(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFC)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 3) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 252;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 4;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1002C35A8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFC)
  {
    v5 = ((a3 + 3) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFC)
  {
    v4 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

void *sub_1002C37C8()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView);
  _objc_retain(v2);
  return v2;
}

void *sub_1002C3810()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel);
  _objc_retain(v2);
  return v2;
}

void *sub_1002C3858()
{
  v2 = *(v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel);
  _objc_retain(v2);
  return v2;
}

id sub_1002C38A0()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageHeightSizeConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002C3910(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageHeightSizeConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002C39A8()
{
  v2 = (v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageWidthSizeConstraint);
  swift_beginAccess();
  v3 = *v2;
  _objc_retain(*v2);
  swift_endAccess();
  return v3;
}

void sub_1002C3A18(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageWidthSizeConstraint);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

id sub_1002C3B64()
{
  v7 = (v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v8 = *v7;
  _objc_retain(*v7);
  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v4 = sub_100290D4C();
  _objc_retain(v4);
  v3 = (v6 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v1 = *v3;
  *v3 = v4;
  _objc_release(v1);
  swift_endAccess();
  return v4;
}

void sub_1002C3C6C(void *a1)
{
  _objc_retain(a1);
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell____lazy_storage___avatarViewController);
  swift_beginAccess();
  v2 = *v3;
  *v3 = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_1002C3D04()
{
  v8 = 0;
  v1 = sub_10025C9B0(&qword_1006D7ED0);
  v3 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v6 = &v3 - v3;
  v8 = v0;
  v4 = (v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem);
  v5 = &v7;
  swift_beginAccess();
  sub_1002C3DD4(v4, v6);
  swift_endAccess();
  sub_1002C3EFC(v6);
  return sub_1002C5128(v6);
}

void *sub_1002C3DD4(const void *a1, void *a2)
{
  v6 = type metadata accessor for SearchItem.Document();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D7ED0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1002C3EFC(const void *a1)
{
  v109 = a1;
  v91 = &protocol witness table for MainActor;
  v92 = &unk_100500710;
  v93 = "Fatal error";
  v94 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v95 = "MobileMail/DocumentConfigurationCell.swift";
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v2 = sub_10025C9B0(&qword_1006D7ED8);
  v96 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v97 = &v29 - v96;
  v3 = sub_10025C9B0(&qword_1006D7250);
  v98 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v3);
  v99 = &v29 - v98;
  v100 = type metadata accessor for URL();
  v102 = *(v100 - 8);
  v101 = v100 - 8;
  v103 = v102;
  v104 = *(v102 + 64);
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v100);
  v106 = &v29 - v105;
  v107 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v29 - v105);
  v108 = &v29 - v107;
  v138 = &v29 - v107;
  v110 = (*(*(sub_10025C9B0(&qword_1006D7ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v109);
  v111 = &v29 - v110;
  v112 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v5);
  v113 = &v29 - v112;
  v114 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = __chkstk_darwin(v7);
  v115 = &v29 - v114;
  v116 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = __chkstk_darwin(v9);
  v117 = &v29 - v116;
  v118 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = __chkstk_darwin(v11);
  v119 = &v29 - v118;
  v137 = v13;
  v136 = v1;
  v127 = &qword_1006D7000;
  v120 = *&v1[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v120);
  v128 = &selRef_interactionWithContentRequest_scene_delegate_;
  v126 = [v120 layer];
  _objc_release(v120);
  _objc_retain(v1);
  v121 = [v1 traitCollection];
  _objc_release(v1);
  [v121 displayScale];
  v122 = v14;
  _objc_release(v121);
  v123 = 1.0 / v122;
  _objc_retain(v1);
  v124 = v1;
  UIRoundToViewScale();
  v125 = v15;
  _objc_release(v124);
  [v126 setBorderWidth:v125];
  _objc_release(v126);
  v129 = *&v1[v127[463]];
  _objc_retain(v129);
  v130 = [v129 v128[388]];
  _objc_release(v129);
  v131 = [objc_opt_self() mailSearchImageBorderColor];
  if (v131)
  {
    v89 = v131;
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v81 = v89;
  v82 = [v89 CGColor];
  _objc_release(v81);
  [v130 setBorderColor:v82];
  _objc_release(v82);
  _objc_release(v130);
  v83 = *&v90[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v83);
  sub_1002C3DD4(v109, v119);
  v84 = type metadata accessor for SearchItem.Document();
  v85 = *(v84 - 8);
  v86 = v84 - 8;
  v87 = *(v85 + 48);
  v88 = v85 + 48;
  if (v87(v119, 1) == 1)
  {
    sub_1002C5128(v119);
    v79 = 0;
    v80 = 0;
  }

  else
  {
    v77 = SearchItem.Document.name.getter();
    v78 = v16;
    (*(v85 + 8))(v119, v84);
    v79 = v77;
    v80 = v78;
  }

  v134 = v79;
  v135 = v80;
  v76 = v80 == 0;
  v73 = v76;
  sub_100268744();
  v75 = 1;
  [v83 setHidden:v73];
  _objc_release(v83);
  v74 = *&v90[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v74);
  sub_1002C3DD4(v109, v117);
  if ((v87)(v117, v75, v84) == 1)
  {
    sub_1002C5128(v117);
    v71 = 0;
    v72 = 0;
  }

  else
  {
    v69 = SearchItem.Document.name.getter();
    v70 = v17;
    (*(v85 + 8))(v117, v84);
    v71 = v69;
    v72 = v70;
  }

  v67 = v72;
  v68 = v71;
  if (v72)
  {
    v65 = v68;
    v66 = v67;
    v62 = v67;
    v63 = String._bridgeToObjectiveC()();

    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v60 = v64;
  [v74 setText:?];
  _objc_release(v60);
  _objc_release(v74);
  v61 = *&v90[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v61);
  sub_1002C3DD4(v109, v115);
  if ((v87)(v115, 1, v84) == 1)
  {
    sub_1002C5128(v115);
    v58 = 0;
    v59 = 0;
  }

  else
  {
    v56 = SearchItem.Document.date.getter();
    v57 = v18;
    (*(v85 + 8))(v115, v84);
    v58 = v56;
    v59 = v57;
  }

  v132 = v58;
  v133 = v59;
  v55 = v59 == 0;
  v52 = v55;
  sub_100268744();
  v54 = 1;
  [v61 setHidden:v52];
  _objc_release(v61);
  v53 = *&v90[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v53);
  sub_1002C3DD4(v109, v113);
  if ((v87)(v113, v54, v84) == 1)
  {
    sub_1002C5128(v113);
    v50 = 0;
    v51 = 0;
  }

  else
  {
    v48 = SearchItem.Document.date.getter();
    v49 = v19;
    (*(v85 + 8))(v113, v84);
    v50 = v48;
    v51 = v49;
  }

  v46 = v51;
  v47 = v50;
  if (v51)
  {
    v44 = v47;
    v45 = v46;
    v41 = v46;
    v42 = String._bridgeToObjectiveC()();

    v43 = v42;
  }

  else
  {
    v43 = 0;
  }

  v40 = v43;
  [v53 setText:?];
  _objc_release(v40);
  _objc_release(v53);
  sub_1002C3DD4(v109, v111);
  if ((v87)(v111, 1, v84) == 1)
  {
    sub_1002C5128(v111);
    (*(v102 + 56))(v99, 1, 1, v100);
  }

  else
  {
    SearchItem.Document.fileURL.getter();
    (*(v85 + 8))(v111, v84);
    (*(v102 + 56))(v99, 0, 1, v100);
  }

  if ((*(v102 + 48))(v99, 1, v100) == 1)
  {
    return sub_100286140(v99);
  }

  v31 = v103;
  v36 = *(v102 + 32);
  v35 = v102 + 32;
  v36(v108, v99, v100);
  v38 = 0;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v97, 1);
  v32 = 7;
  v37 = swift_allocObject();
  v29 = v37 + 16;
  _objc_retain(v90);
  v30 = v90;
  swift_unknownObjectWeakInit();
  _objc_release(v30);

  (*(v102 + 16))(v106, v108, v100);
  type metadata accessor for MainActor();
  v33 = static MainActor.shared.getter();
  v34 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v22 = swift_allocObject();
  v23 = v91;
  v24 = v34;
  v25 = v106;
  v26 = v36;
  v27 = v37;
  v28 = v100;
  v39 = v22;
  v22[2] = v33;
  v22[3] = v23;
  v22[4] = v27;
  v26(v22 + v24, v25, v28);

  sub_1002C7DB4(v38, v38, v97, v92, v39, &type metadata for () + 8);

  return (*(v102 + 8))(v108, v100);
}

uint64_t sub_1002C5128(uint64_t a1)
{
  v3 = type metadata accessor for SearchItem.Document();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1002C51D0@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem);
  swift_beginAccess();
  sub_1002C3DD4(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1002C5234(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v3 = (*(*(sub_10025C9B0(&qword_1006D7ED0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = &v3 - v3;
  v10 = __chkstk_darwin(v7);
  v9 = v1;
  sub_1002C3DD4(v10, &v3 - v3);
  v5 = (v1 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem);
  v6 = &v8;
  swift_beginAccess();
  sub_1002C8380(v4, v5);
  swift_endAccess();
  sub_1002C3D04();
  return sub_1002C5128(v7);
}

char *sub_1002C531C(double a1, double a2, double a3, double a4)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  *&v13 = a3;
  *(&v13 + 1) = a4;
  ObjectType = swift_getObjectType();
  v16 = v12;
  v17 = v13;
  v18 = v4;
  v7 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView;
  sub_1002649B4();
  *&v4[v7] = sub_10025C704();
  v8 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel;
  sub_100264928();
  *&v18[v8] = sub_10025C704();
  v9 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel;
  *&v18[v9] = sub_10025C704();
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageHeightSizeConstraint] = 0;
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageWidthSizeConstraint] = 0;
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_senderImageViewWidth] = 0x4041000000000000;
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding] = 2.0;
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_avatarTopPadding] = 4.0;
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_avatarTrailingPadding] = 4.0;
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_bottomPadding] = 4.0;
  *&v18[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell____lazy_storage___avatarViewController] = 0;
  v10 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem;
  v5 = type metadata accessor for SearchItem.Document();
  (*(*(v5 - 8) + 56))(&v18[v10], 1);
  v15.receiver = v18;
  v15.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v15, "initWithFrame:", v12, v13);
  _objc_retain(v14);
  v18 = v14;
  _objc_retain(v14);
  [v14 setIsAccessibilityElement:1];
  _objc_release(v14);
  sub_1002C55D4();
  _objc_release(v18);
  return v14;
}

void sub_1002C55D4()
{
  v5 = sub_1002C3B64();
  v114 = [v5 view];
  _objc_release(v5);
  [v114 setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v6);
  [v35 addSubview:v6];
  _objc_release(v6);
  v7 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v7);
  [v35 insertSubview:v114 aboveSubview:v7];
  _objc_release(v7);
  v8 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v8);
  [v35 addSubview:v8];
  _objc_release(v8);
  v9 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v9);
  [v35 addSubview:v9];
  _objc_release(v9);
  v10 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v10);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v10);
  v11 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v11);
  [v11 setContentMode:?];
  _objc_release(v11);
  v12 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v12);
  v13 = [v12 layer];
  _objc_release(v12);
  [v13 setCornerRadius:5.0];
  _objc_release(v13);
  v14 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v14);
  [v14 setClipsToBounds:1];
  _objc_release(v14);
  v15 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v15);
  [v15 setHidden:1];
  _objc_release(v15);
  v16 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v16);
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v16);
  v19 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v19);
  v17 = objc_opt_self();
  _objc_retain(UIFontTextStyleCaption1);
  v18 = [v17 preferredFontForTextStyle:UIFontTextStyleCaption1];
  _objc_release(UIFontTextStyleCaption1);
  UILabel.contentSizeAdjustingFont(_:)(v18);
  _objc_release(v18);
  _objc_release(v19);
  v20 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v20);
  [v20 setNumberOfLines:2];
  _objc_release(v20);
  v21 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v21);
  [v21 setTextAlignment:1];
  _objc_release(v21);
  v23 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v23);
  v22 = [objc_opt_self() labelColor];
  [v23 setTextColor:?];
  _objc_release(v22);
  _objc_release(v23);
  v24 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v24);
  [v24 setHidden:1];
  _objc_release(v24);
  v25 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v25);
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  _objc_release(v25);
  v28 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v28);
  v26 = objc_opt_self();
  _objc_retain(UIFontTextStyleCaption2);
  v27 = [v26 preferredFontForTextStyle:UIFontTextStyleCaption2];
  _objc_release(UIFontTextStyleCaption2);
  UILabel.contentSizeAdjustingFont(_:)(v27);
  _objc_release(v27);
  _objc_release(v28);
  v29 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v29);
  [v29 setNumberOfLines:1];
  _objc_release(v29);
  v30 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v30);
  [v30 setTextAlignment:1];
  _objc_release(v30);
  v32 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v32);
  v31 = [objc_opt_self() labelColor];
  [v32 setTextColor:?];
  _objc_release(v31);
  _objc_release(v32);
  v33 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v33);
  [v33 setHidden:1];
  _objc_release(v33);
  v34 = [objc_opt_self() sharedApplication];
  v113 = [v34 preferredContentSizeCategory];
  _objc_release(v34);
  v42 = sub_1002C86C8(v113);
  v37 = v0;
  v36 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v36);
  v38 = [v36 heightAnchor];
  _objc_release(v36);
  v40 = [v38 constraintEqualToConstant:v37];
  _objc_release(v38);
  v39 = &v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageHeightSizeConstraint];
  swift_beginAccess();
  v1 = *v39;
  *v39 = v40;
  _objc_release(v1);
  swift_endAccess();
  v41 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v41);
  v43 = [v41 widthAnchor];
  _objc_release(v41);
  v45 = [v43 constraintEqualToConstant:v42];
  _objc_release(v43);
  v44 = &v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageWidthSizeConstraint];
  swift_beginAccess();
  v2 = *v44;
  *v44 = v45;
  _objc_release(v2);
  swift_endAccess();
  v46 = objc_opt_self();
  sub_10025C9B0(&unk_1006DB860);
  _allocateUninitializedArray<A>(_:)();
  v111 = v3;
  v47 = &v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageHeightSizeConstraint];
  swift_beginAccess();
  sub_1002935A0(v47, v111);
  swift_endAccess();
  v48 = &v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageWidthSizeConstraint];
  swift_beginAccess();
  sub_1002935A0(v48, v111 + 1);
  swift_endAccess();
  v49 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v49);
  v51 = [v49 topAnchor];
  _objc_release(v49);
  _objc_retain(v35);
  v50 = [v35 topAnchor];
  _objc_release(v35);
  v52 = [v51 constraintEqualToAnchor:v50 constant:4.0];
  _objc_release(v50);
  _objc_release(v51);
  v111[2] = v52;
  v53 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v53);
  v55 = [v53 centerXAnchor];
  _objc_release(v53);
  _objc_retain(v35);
  v54 = [v35 centerXAnchor];
  _objc_release(v35);
  v56 = [v55 constraintEqualToAnchor:v54];
  _objc_release(v54);
  _objc_release(v55);
  v111[3] = v56;
  v57 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v57);
  v59 = [v57 leadingAnchor];
  _objc_release(v57);
  _objc_retain(v35);
  v58 = [v35 leadingAnchor];
  _objc_release(v35);
  v60 = [v59 constraintGreaterThanOrEqualToAnchor:v58 constant:*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding]];
  _objc_release(v58);
  _objc_release(v59);
  v111[4] = v60;
  v61 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v61);
  v63 = [v61 trailingAnchor];
  _objc_release(v61);
  _objc_retain(v35);
  v62 = [v35 trailingAnchor];
  _objc_release(v35);
  v64 = [v63 constraintLessThanOrEqualToAnchor:v62 constant:-*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding]];
  _objc_release(v62);
  _objc_release(v63);
  v111[5] = v64;
  v65 = [v114 widthAnchor];
  v66 = [v65 constraintEqualToConstant:*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_senderImageViewWidth]];
  _objc_release(v65);
  v111[6] = v66;
  v68 = [v114 heightAnchor];
  v67 = [v114 widthAnchor];
  v69 = [v68 constraintEqualToAnchor:?];
  _objc_release(v67);
  _objc_release(v68);
  v111[7] = v69;
  v72 = [v114 topAnchor];
  v70 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v70);
  v71 = [v70 topAnchor];
  _objc_release(v70);
  v73 = [v72 constraintEqualToAnchor:v71 constant:*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_avatarTopPadding]];
  _objc_release(v71);
  _objc_release(v72);
  v111[8] = v73;
  v76 = [v114 trailingAnchor];
  v74 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v74);
  v75 = [v74 trailingAnchor];
  _objc_release(v74);
  v77 = [v76 constraintEqualToAnchor:v75 constant:-*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_avatarTrailingPadding]];
  _objc_release(v75);
  _objc_release(v76);
  v111[9] = v77;
  v78 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v78);
  v81 = [v78 topAnchor];
  _objc_release(v78);
  v79 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView];
  _objc_retain(v79);
  v80 = [v79 bottomAnchor];
  _objc_release(v79);
  v82 = [v81 constraintEqualToSystemSpacingBelowAnchor:v80 multiplier:?];
  _objc_release(v80);
  _objc_release(v81);
  v111[10] = v82;
  v83 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v83);
  v85 = [v83 leadingAnchor];
  _objc_release(v83);
  _objc_retain(v35);
  v84 = [v35 leadingAnchor];
  _objc_release(v35);
  v86 = [v85 constraintEqualToAnchor:v84 constant:*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding]];
  _objc_release(v84);
  _objc_release(v85);
  v111[11] = v86;
  v87 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v87);
  v89 = [v87 centerXAnchor];
  _objc_release(v87);
  _objc_retain(v35);
  v88 = [v35 centerXAnchor];
  _objc_release(v35);
  v90 = [v89 constraintEqualToAnchor:v88];
  _objc_release(v88);
  _objc_release(v89);
  v111[12] = v90;
  v91 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v91);
  v93 = [v91 trailingAnchor];
  _objc_release(v91);
  _objc_retain(v35);
  v92 = [v35 trailingAnchor];
  _objc_release(v35);
  v94 = [v93 constraintLessThanOrEqualToAnchor:v92 constant:-*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding]];
  _objc_release(v92);
  _objc_release(v93);
  v111[13] = v94;
  v95 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v95);
  v98 = [v95 topAnchor];
  _objc_release(v95);
  v96 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel];
  _objc_retain(v96);
  v97 = [v96 bottomAnchor];
  _objc_release(v96);
  v99 = [v98 constraintEqualToSystemSpacingBelowAnchor:v97 multiplier:1.0];
  _objc_release(v97);
  _objc_release(v98);
  v111[14] = v99;
  v100 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v100);
  v102 = [v100 leadingAnchor];
  _objc_release(v100);
  _objc_retain(v35);
  v101 = [v35 leadingAnchor];
  _objc_release(v35);
  v103 = [v102 constraintEqualToAnchor:v101 constant:*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding]];
  _objc_release(v101);
  _objc_release(v102);
  v111[15] = v103;
  v104 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v104);
  v106 = [v104 trailingAnchor];
  _objc_release(v104);
  _objc_retain(v35);
  v105 = [v35 trailingAnchor];
  _objc_release(v35);
  v107 = [v106 constraintEqualToAnchor:v105 constant:-*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding]];
  _objc_release(v105);
  _objc_release(v106);
  v111[16] = v107;
  v108 = *&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel];
  _objc_retain(v108);
  v110 = [v108 bottomAnchor];
  _objc_release(v108);
  _objc_retain(v35);
  v109 = [v35 bottomAnchor];
  _objc_release(v35);
  v112 = [v110 constraintEqualToAnchor:v109 constant:-*&v35[OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_bottomPadding]];
  _objc_release(v109);
  _objc_release(v110);
  v111[17] = v112;
  sub_1002612B0();
  sub_10025C9B0(&qword_1006D75A8);
  sub_100293824();
  sub_100293888();
  Sequence.compactMap<A>(_:)();
  sub_100264880();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v46 activateConstraints:isa];
  _objc_release(isa);
  _objc_release(v113);
  _objc_release(v114);
}

void sub_1002C6F08()
{
  v1 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView;
  sub_1002649B4();
  *v1 = sub_10025C704();
  v2 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel;
  sub_100264928();
  *v2 = sub_10025C704();
  v3 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel;
  *v3 = sub_10025C704();
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageHeightSizeConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageWidthSizeConstraint = 0;
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_senderImageViewWidth = 0x4041000000000000;
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_horizontalPadding = 2.0;
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_avatarTopPadding = 4.0;
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_avatarTrailingPadding = 4.0;
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_bottomPadding = 4.0;
  *OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell____lazy_storage___avatarViewController = 0;
  v4 = OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem;
  v0 = type metadata accessor for SearchItem.Document();
  (*(*(v0 - 8) + 56))(v4, 1);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("init(coder:) has not been implemented", 0x25uLL, 1);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002C7238()
{
  sub_10025C9B0(&unk_1006D7340);
  _allocateUninitializedArray<A>(_:)();
  v8 = v1;
  v9 = v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem;
  swift_beginAccess();
  v10 = type metadata accessor for SearchItem.Document();
  v11 = *(*(v10 - 8) + 48);
  if (v11(v9, 1))
  {
    swift_endAccess();
    *v8 = 0;
    v8[1] = 0;
  }

  else
  {
    *v8 = SearchItem.Document.name.getter();
    v8[1] = v2;
    swift_endAccess();
  }

  v6 = v7 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem;
  swift_beginAccess();
  if ((v11)(v6, 1, v10))
  {
    swift_endAccess();
    v8[2] = 0;
    v8[3] = 0;
  }

  else
  {
    v8[2] = SearchItem.Document.date.getter();
    v8[3] = v3;
    swift_endAccess();
  }

  sub_1002612B0();
  sub_10025C9B0(&qword_1006D7EE0);
  sub_1002C8BF0();
  Sequence.compactMap<A>(_:)();
  sub_100264880();
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", ", 2uLL, 1);
  sub_10025C9B0(&unk_1006D69B0);
  sub_1002C8C78();
  v5 = BidirectionalCollection<>.joined(separator:)();

  sub_100264880();
  return v5;
}

uint64_t sub_1002C764C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v5 = a1[1];

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_1002C76A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a5;
  v5[10] = a4;
  v5[5] = v5;
  v5[6] = 0;
  v5[7] = 0;
  v5[8] = 0;
  v5[9] = 0;
  v5[6] = a4 + 16;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[12] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v8;
  v5[14] = v6;

  return _swift_task_switch(sub_1002C777C, v8);
}

uint64_t sub_1002C777C()
{
  *(v0 + 40) = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v9[8] = Strong;
    type metadata accessor for DocumentThumbnailGenerator();
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v8 = v1;
    _objc_release(v7);
    v2 = swift_task_alloc();
    v3.n128_u64[0] = v8;
    v9[16] = v2;
    *v2 = v9[5];
    v2[1] = sub_1002C795C;
    v4 = v9[11];

    return static DocumentThumbnailGenerator.generateThumbnail(url:scale:)(v4, v3);
  }

  else
  {

    v5 = *(v9[5] + 8);

    return v5();
  }
}

uint64_t sub_1002C795C(uint64_t a1)
{
  v5 = *v1;
  v4 = *v1;
  *(v4 + 40) = *v1;
  *(v4 + 136) = a1;

  v2 = *(v5 + 104);

  return _swift_task_switch(sub_1002C7AA0, v2);
}

uint64_t sub_1002C7AA0()
{
  v9 = v0[17];
  v7 = v0[15];
  v0[5] = v0;
  v0[9] = v9;
  v6 = *(v7 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView);
  _objc_retain(v6);
  [v6 setImage:v9];
  _objc_release(v6);
  v8 = *(v7 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView);
  _objc_retain(v8);
  v4 = v5[15];
  [v8 setHidden:{v9 == 0, v5[17]}];
  _objc_release(v8);
  _objc_release(v3);
  _objc_release(v4);

  v1 = *(v5[5] + 8);

  return v1();
}

uint64_t sub_1002C7C94(uint64_t a1)
{
  v6 = v2;
  *(v2 + 16) = v2;
  v3 = *(type metadata accessor for URL() - 8);
  v10 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_10025FAC4;

  return sub_1002C76A4(a1, v7, v8, v9, v1 + v10);
}

uint64_t sub_1002C7DB4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v46 = a2;
  v54 = a3;
  v55 = a4;
  v56 = a5;
  v47 = a6;
  v48 = "Fatal error";
  v49 = "Unexpectedly found nil while unwrapping an Optional value";
  v50 = "_Concurrency/arm64e-apple-ios.private.swiftinterface";
  v51 = &unk_100500780;
  v52 = 0;
  v65 = a6;
  v53 = (*(*(sub_10025C9B0(&qword_1006D7ED8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v56);
  v57 = &v14 - v53;

  v63 = v55;
  v64 = v56;
  sub_1002C90F4(v54, v57);
  v58 = type metadata accessor for TaskPriority();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  if ((*(v59 + 48))(v57, 1) == 1)
  {
    sub_1002C921C(v57);
    v44 = 0;
  }

  else
  {
    v43 = TaskPriority.rawValue.getter();
    (*(v59 + 8))(v57, v58);
    v44 = v43;
  }

  v40 = v44 | 0x1C00;
  v42 = *(v56 + 16);
  v41 = *(v56 + 24);
  swift_unknownObjectRetain();

  if (v42)
  {
    v38 = v42;
    v39 = v41;
    v32 = v41;
    v33 = v42;
    swift_getObjectType();
    v34 = dispatch thunk of Actor.unownedExecutor.getter();
    v35 = v6;
    swift_unknownObjectRelease();
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

  if (v46)
  {
    v28 = v45;
    v29 = v46;
    v7 = v52;
    v25 = v46;
    v26 = String.utf8CString.getter();

    sub_1002C92C4(v26 + 32, &v63, v47, &v61);
    if (v7)
    {
      __break(1u);
    }

    v24 = v61;

    v27 = v24;
  }

  else
  {
    v27 = 0;
  }

  v23 = v27;
  if (v27)
  {
    v17 = v23;
    v16 = v23;
    sub_1002C921C(v54);

    v18 = v16;
  }

  else
  {

    sub_1002C921C(v54);
    v19 = v63;
    v20 = v64;

    v8 = swift_allocObject();
    v9 = v19;
    v10 = v20;
    v11 = v31;
    v12 = v30;
    v21 = v8;
    v8[2] = v47;
    v8[3] = v9;
    v8[4] = v10;
    v22 = 0;
    if (v11 != 0 || v12 != 0)
    {
      v62[0] = 0;
      v62[1] = 0;
      v62[2] = v31;
      v62[3] = v30;
      v22 = v62;
    }

    v18 = swift_task_create();
  }

  v15 = v18;

  return v15;
}

void *sub_1002C8380(const void *a1, void *a2)
{
  v7 = type metadata accessor for SearchItem.Document();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if ((v9)(a2, 1))
  {
    if (v9(a1, 1, v7))
    {
      v3 = sub_10025C9B0(&qword_1006D7ED0);
      memcpy(a2, a1, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(a2, a1, v7);
      (*(v8 + 56))(a2, 0, 1, v7);
    }
  }

  else if (v9(a1, 1, v7))
  {
    (*(v8 + 8))(a2, v7);
    v2 = sub_10025C9B0(&qword_1006D7ED0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v8 + 40))(a2, a1, v7);
  }

  return a2;
}

uint64_t sub_1002C85A8(uint64_t a1)
{

  if (!a1)
  {
    sub_1002913A4();
    _allocateUninitializedArray<A>(_:)();
  }

  v3 = sub_1002C3B64();

  sub_1002913A4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 updateContacts:isa];
  _objc_release(isa);
  _objc_release(v3);
}

double sub_1002C86C8(void *a1)
{
  v14[1] = 0;
  v14[2] = a1;
  _objc_retain(a1);
  if (UIContentSizeCategory.isAccessibilityCategory.getter())
  {
    _objc_release(a1);
    _objc_retain(a1);
    _objc_retain(UIContentSizeCategoryAccessibilityMedium);
    v14[0] = UIContentSizeCategoryAccessibilityMedium;
    v13[1] = a1;
    type metadata accessor for UIContentSizeCategory();
    sub_100266AEC();
    v7 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_10026A58C(v14);
    if (v7)
    {
      _objc_release(a1);
      return 72.0;
    }

    else
    {
      _objc_release(a1);
      _objc_retain(a1);
      _objc_retain(UIContentSizeCategoryAccessibilityLarge);
      v13[0] = UIContentSizeCategoryAccessibilityLarge;
      v12[1] = a1;
      v6 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_10026A58C(v13);
      if (v6)
      {
        _objc_release(a1);
        return 79.0;
      }

      else
      {
        _objc_release(a1);
        _objc_retain(a1);
        _objc_retain(UIContentSizeCategoryAccessibilityExtraLarge);
        v12[0] = UIContentSizeCategoryAccessibilityExtraLarge;
        v11[1] = a1;
        v5 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_10026A58C(v12);
        if (v5)
        {
          _objc_release(a1);
          return 86.0;
        }

        else
        {
          _objc_release(a1);
          _objc_retain(a1);
          _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraLarge);
          v11[0] = UIContentSizeCategoryAccessibilityExtraExtraLarge;
          v10[1] = a1;
          v4 = dispatch thunk of static Equatable.== infix(_:_:)();
          sub_10026A58C(v11);
          if (v4)
          {
            _objc_release(a1);
            return 94.0;
          }

          else
          {
            _objc_release(a1);
            _objc_retain(a1);
            _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
            v10[0] = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
            v3 = dispatch thunk of static Equatable.== infix(_:_:)();
            sub_10026A58C(v10);
            if (v3)
            {
              _objc_release(a1);
              return 101.0;
            }

            else
            {
              _objc_release(a1);
              _objc_retain(a1);
              _objc_retain(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
              v2 = static UIContentSizeCategory.> infix(_:_:)();
              _objc_release(UIContentSizeCategoryAccessibilityExtraExtraExtraLarge);
              _objc_release(a1);
              if (v2)
              {
                return 108.0;
              }

              else
              {
                return 65.0;
              }
            }
          }
        }
      }
    }
  }

  else
  {
    _objc_release(a1);
    return 65.0;
  }
}

unint64_t sub_1002C8BF0()
{
  v2 = qword_1006D7EE8;
  if (!qword_1006D7EE8)
  {
    sub_10025CAA4(&qword_1006D7EE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7EE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1002C8C78()
{
  v2 = qword_1006D7EF0;
  if (!qword_1006D7EF0)
  {
    sub_10025CAA4(&unk_1006D69B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1006D7EF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1002C8D00()
{
  _objc_release(*(v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageView));
  _objc_release(*(v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_nameLabel));
  _objc_release(*(v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_dateLabel));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageHeightSizeConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_imageWidthSizeConstraint));
  sub_10026A58C((v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell____lazy_storage___avatarViewController));
  return sub_1002C5128(v0 + OBJC_IVAR____TtC10MobileMail25DocumentConfigurationCell_searchItem);
}

uint64_t type metadata accessor for DocumentConfigurationCell()
{
  v1 = qword_1006D7F20;
  if (!qword_1006D7F20)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_1002C8F18()
{
  updated = sub_1002C9058();
  if (v0 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_1002C9058()
{
  v4 = qword_1006D7F30;
  if (!qword_1006D7F30)
  {
    type metadata accessor for SearchItem.Document();
    v3 = type metadata accessor for Optional();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1006D7F30);
      return v1;
    }
  }

  return v4;
}

void *sub_1002C90F4(const void *a1, void *a2)
{
  v6 = type metadata accessor for TaskPriority();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_10025C9B0(&qword_1006D7ED8);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1002C921C(uint64_t a1)
{
  v3 = type metadata accessor for TaskPriority();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1002C92C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X5>, uint64_t a3@<X6>, uint64_t *a4@<X8>)
{
  if (!a1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v5 = *a2;
  v6 = a2[1];

  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v5;
  v7[4] = v6;
  result = swift_task_create();
  *a4 = result;
  return result;
}

uint64_t sub_1002C9484(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1002C9598;

  return v6(a1);
}

uint64_t sub_1002C9598()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1002C96C4(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_10025FAC4;

  return sub_1002C9484(a1, v6);
}

__n128 sub_1002C97B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  v85 = v131;
  v103 = a8;
  v102 = a7;
  v101 = a6;
  v100 = a5;
  v99 = a4;
  v98 = a3;
  *(&v105 + 1) = a2;
  *&v105 = a1;
  v86 = a9;
  v104 = a13;
  v87 = a13;
  v111 = a12;
  v88 = a12;
  v110 = a11;
  v89 = a11;
  v109 = a10;
  v90 = a10;
  v119 = 0;
  v151 = 0;
  v150 = 0u;
  v149 = 0u;
  v148 = 0u;
  v147 = 0u;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v140 = 0;
  v139 = 0;
  v138 = 0;
  v137 = 0;
  v136 = 0;
  v135 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v91 = 0;
  v92 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v93 = v70 - v92;
  v94 = type metadata accessor for UUID();
  v95 = *(v94 - 8);
  v96 = v95;
  __chkstk_darwin(v119);
  v97 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for Logger();
  v106 = v116;
  v107 = *(v116 - 8);
  v115 = v107;
  v108 = v107;
  v14 = __chkstk_darwin(v105);
  v114 = v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v114;
  v145 = v14;
  v146 = v16;
  v144 = v17;
  v143 = v18;
  v142 = v19;
  v140 = v20;
  v141 = v21;
  v139 = v22;
  v138 = v109;
  v135 = v110;
  v136 = v111;
  v137 = v23;
  v113 = sub_10025C9B0(&qword_1006D7F38);
  *&v148 = EntityProperty<>.init()();
  *(&v148 + 1) = EntityProperty<>.init()();
  *&v149 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0);
  *(&v149 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40);
  *&v150 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48);
  *(&v150 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50);
  sub_100264788();
  v24 = EntityProperty<>.init()();
  v25 = v114;
  v151 = v24;
  v26 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v115 + 16))(v25, v26, v116);
  v121 = Logger.logObject.getter();
  v117 = v121;
  v120 = static os_log_type_t.info.getter();
  v118 = v120;
  sub_10025C9B0(&unk_1006D7720);
  v122 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v121, v120))
  {
    v27 = v91;
    v76 = static UnsafeMutablePointer.allocate(capacity:)();
    v72 = v76;
    v73 = sub_10025C9B0(&qword_1006D7290);
    v74 = 0;
    v77 = sub_1002641E8(0);
    v75 = v77;
    v78 = sub_1002641E8(v74);
    v126 = v76;
    v125 = v77;
    v124 = v78;
    v79 = 0;
    v80 = &v126;
    sub_10026423C(0, &v126);
    sub_10026423C(v79, v80);
    v123 = v122;
    v81 = v70;
    __chkstk_darwin(v70);
    v82 = &v70[-6];
    v70[-4] = v28;
    v70[-3] = &v125;
    v70[-2] = &v124;
    v83 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v84 = v27;
    if (v27)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v117, v118, "#SiriMail DraftMessageEntity.init(autosaveId:)", v72, 2u);
      v70[3] = 0;
      sub_10026429C(v75);
      sub_10026429C(v78);
      UnsafeMutablePointer.deallocate()();

      v71 = v84;
    }
  }

  else
  {

    v71 = v91;
  }

  (*(v108 + 8))(v112, v106);

  v133 = v105;
  if (*(&v105 + 1))
  {
    v134 = v133;
  }

  else
  {
    UUID.init()();
    *&v134 = UUID.uuidString.getter();
    *(&v134 + 1) = v29;
    (*(v96 + 8))(v97, v94);
    if (*(&v133 + 1))
    {
      sub_100268744();
    }
  }

  v30 = v85;
  v147 = v134;
  v85[48] = v85[13];
  v31 = v30[14];
  v32 = v30[15];
  v33 = v30[16];
  v158 = v151;
  v30[51] = v33;
  v30[50] = v32;
  v30[49] = v31;

  sub_1002CCA28();
  v34 = v85;
  v85[43] = v85[13];
  v35 = v34[14];
  v36 = v34[15];
  v37 = v34[16];
  v157 = v151;
  v34[46] = v37;
  v34[45] = v36;
  v34[44] = v35;

  sub_1002CCB50();
  v38 = v85;
  v85[38] = v85[13];
  v39 = v38[14];
  v40 = v38[15];
  v41 = v38[16];
  v156 = v151;
  v38[41] = v41;
  v38[40] = v40;
  v38[39] = v39;

  sub_1002CCC78();
  v42 = v85;
  v85[33] = v85[13];
  v43 = v42[14];
  v44 = v42[15];
  v45 = v42[16];
  v155 = v151;
  v42[36] = v45;
  v42[35] = v44;
  v42[34] = v43;

  sub_1002CCD44();
  v46 = v103;
  v47 = v93;
  v48 = v85;
  v85[28] = v85[13];
  v49 = v48[14];
  v50 = v48[15];
  v51 = v48[16];
  v154 = v151;
  v48[31] = v51;
  v48[30] = v50;
  v48[29] = v49;
  sub_100289B6C(v46, v47);
  sub_1002CCE78(v93);
  v52 = v85;
  v85[23] = v85[13];
  v53 = v52[14];
  v54 = v52[15];
  v55 = v52[16];
  v153 = v151;
  v52[26] = v55;
  v52[25] = v54;
  v52[24] = v53;

  sub_1002CD004();
  sub_1002882C8(v89);
  if (v89)
  {
    v70[0] = v89;
    v70[1] = v88;
    v70[2] = v87;
    v56 = v85;
    v57 = v89;
    v127 = v89;
    v128 = v88;
    v129 = v87;
    v85[18] = v85[13];
    v58 = v56[14];
    v59 = v56[15];
    v60 = v56[16];
    v152 = v151;
    v56[21] = v60;
    v56[20] = v59;
    v56[19] = v58;
    sub_1002CD24C(v57);
  }

  v61 = v85;
  *v85 = v85[13];
  v62 = v61[14];
  v63 = v61[15];
  v64 = v61[16];
  v132 = v151;
  v61[3] = v64;
  v61[2] = v63;
  v61[1] = v62;
  sub_1002CD078(v131, v130);
  sub_100289E1C(v89);

  sub_100285F68(v103);

  sub_10028D6D0();
  v65 = v85;
  v66 = v86;
  *v86 = *v85;
  result = v65[1];
  v68 = v65[2];
  v69 = v65[3];
  *(v66 + 8) = v132;
  v66[3] = v69;
  v66[2] = v68;
  v66[1] = result;
  return result;
}

__n128 sub_1002CA140@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v163 = v197;
  v174 = a3;
  v176 = a2;
  v175 = a1;
  v164 = a4;
  v187 = 0;
  v223 = 0;
  v222 = 0;
  v165 = 0u;
  v221 = 0u;
  v220 = 0u;
  v219 = 0u;
  v218 = 0u;
  v217 = 0;
  v216 = 0;
  v215 = 0;
  v214 = 0;
  v202 = 0;
  v166 = 0;
  v201 = 0;
  v200 = 0;
  v199 = 0;
  v198 = 0;
  memset(v197, 0, sizeof(v197));
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v167 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = (*(*(sub_10025C9B0(&unk_1006D7380) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v187);
  v169 = &v72 - v168;
  v170 = type metadata accessor for MailMessageEntityID();
  v171 = *(v170 - 8);
  v172 = v171;
  __chkstk_darwin(v187);
  v173 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = v173;
  v184 = type metadata accessor for Logger();
  v177 = v184;
  v178 = *(v184 - 8);
  v183 = v178;
  v179 = v178;
  v7 = __chkstk_darwin(v175);
  v182 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v182;
  v217 = v7;
  v215 = v9;
  v216 = v10;
  v181 = sub_10025C9B0(&qword_1006D7F38);
  *&v219 = EntityProperty<>.init()();
  *(&v219 + 1) = EntityProperty<>.init()();
  *&v220 = EntityProperty<>.init()();
  sub_10025C9B0(&unk_1006DA2D0);
  *(&v220 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F40);
  *&v221 = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F48);
  *(&v221 + 1) = EntityProperty<>.init()();
  sub_10025C9B0(&qword_1006D7F50);
  sub_100264788();
  v11 = EntityProperty<>.init()();
  v12 = v182;
  v222 = v11;
  v13 = Logger.appIntentLogger.unsafeMutableAddressor();
  (*(v183 + 16))(v12, v13, v184);
  v189 = Logger.logObject.getter();
  v185 = v189;
  v188 = static os_log_type_t.info.getter();
  v186 = v188;
  sub_10025C9B0(&unk_1006D7720);
  v190 = _allocateUninitializedArray<A>(_:)();
  if (os_log_type_enabled(v189, v188))
  {
    v14 = v166;
    v154 = static UnsafeMutablePointer.allocate(capacity:)();
    v150 = v154;
    v151 = sub_10025C9B0(&qword_1006D7290);
    v152 = 0;
    v155 = sub_1002641E8(0);
    v153 = v155;
    v156 = sub_1002641E8(v152);
    v194 = v154;
    v193 = v155;
    v192 = v156;
    v157 = 0;
    v158 = &v194;
    sub_10026423C(0, &v194);
    sub_10026423C(v157, v158);
    v191 = v190;
    v159 = &v72;
    __chkstk_darwin(&v72);
    v160 = &v72 - 6;
    v161 = sub_10025C9B0(&qword_1006D72C0);
    sub_10026E6E0();
    Sequence.forEach(_:)();
    v162 = v14;
    if (v14)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&_mh_execute_header, v185, v186, "#SiriMail DraftMessageEntity.init(searchableItem:existingId:)", v150, 2u);
      v148 = 0;
      sub_10026429C(v153);
      sub_10026429C(v156);
      UnsafeMutablePointer.deallocate()();

      v149 = v162;
    }
  }

  else
  {

    v149 = v166;
  }

  v15 = v175;
  v146 = v149;

  (*(v179 + 8))(v180, v177);
  v147 = [v15 attributeSet];
  v214 = v147;
  CSSearchableItem.mailMessageEntityID.getter();

  *&v212 = v176;
  *(&v212 + 1) = v174;
  if (v174)
  {
    v213 = v212;
  }

  else
  {
    *&v213 = MailMessageEntityID.encodedID.getter();
    *(&v213 + 1) = v16;
    if (*(&v212 + 1))
    {
      sub_100268744();
    }
  }

  v17 = v163;
  v218 = v213;
  v163[65] = v163[25];
  v18 = v17[26];
  v19 = v17[27];
  v20 = v17[28];
  v231 = v222;
  v17[68] = v20;
  v17[67] = v19;
  v17[66] = v18;
  CSSearchableItem.toIntentPersons.getter();
  sub_1002CCA28();
  v21 = v163;
  v163[60] = v163[25];
  v22 = v21[26];
  v23 = v21[27];
  v24 = v21[28];
  v230 = v222;
  v21[63] = v24;
  v21[62] = v23;
  v21[61] = v22;
  CSSearchableItem.ccIntentPersons.getter();
  sub_1002CCB50();
  v25 = v163;
  v163[55] = v163[25];
  v26 = v25[26];
  v27 = v25[27];
  v28 = v25[28];
  v229 = v222;
  v25[58] = v28;
  v25[57] = v27;
  v25[56] = v26;
  CSSearchableItem.bccIntentPersons.getter();
  sub_1002CCC78();
  v145 = [v147 subject];
  if (v145)
  {
    v144 = v145;
    v139 = v145;
    v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v141 = v29;

    v142 = v140;
    v143 = v141;
  }

  else
  {
    v142 = 0;
    v143 = 0;
  }

  v30 = v163;
  v163[50] = v163[25];
  v31 = v30[26];
  v32 = v30[27];
  v33 = v30[28];
  v228 = v222;
  v30[53] = v33;
  v30[52] = v32;
  v30[51] = v31;
  sub_1002CCD44();
  v138 = [v147 mailboxIdentifiers];
  if (v138)
  {
    v137 = v138;
    v134 = v138;
    v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v136 = v135;
  }

  else
  {
    v136 = 0;
  }

  v133 = v136;
  if (v136)
  {
    v132 = v133;
    v129 = v133;
    v198 = v133;
    v130 = sub_10035E52C(v133);
    v196 = v130;
    v131 = sub_10025C9B0(&qword_1006D7020);
    sub_10027D50C();
    Collection.first.getter();
    if (*(&v195[0] + 1))
    {
      v34 = v163;
      v197[0] = v195[0];
      v35 = v195[1];
      v36 = v195[2];
      v37 = v195[3];
      v163[4] = v195[4];
      v34[3] = v37;
      v34[2] = v36;
      v34[1] = v35;

      v128 = v197;
      v38 = sub_10035EFF8();
      v39 = v163;
      v163[45] = v163[25];
      v40 = v39[26];
      v41 = v39[27];
      v42 = v39[28];
      v227 = v222;
      v39[48] = v42;
      v39[47] = v41;
      v39[46] = v40;
      sub_1002CD24C(v38);
      sub_10027D728(v128);
    }

    else
    {
      sub_10027D594(v195);
    }
  }

  v127 = [v147 attachmentPaths];
  if (v127)
  {
    v126 = v127;
    v123 = v127;
    v124 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v125 = v124;
  }

  else
  {
    v125 = 0;
  }

  v122 = v125;
  if (v125)
  {
    v121 = v122;
    v47 = v163;
    v118 = v122;
    v199 = v122;
    v163[35] = v163[25];
    v48 = v47[26];
    v49 = v47[27];
    v50 = v47[28];
    v225 = v222;
    v47[38] = v50;
    v47[37] = v49;
    v47[36] = v48;
    Array<A>.asIntentFiles.getter();
    sub_1002CD004();
  }

  else
  {
    v43 = v163;
    v163[40] = v163[25];
    v44 = v43[26];
    v45 = v43[27];
    v46 = v43[28];
    v226 = v222;
    v43[43] = v46;
    v43[42] = v45;
    v43[41] = v44;
    v119 = 0;
    v120 = type metadata accessor for IntentFile();
    _allocateUninitializedArray<A>(_:)();
    sub_1002CD004();
  }

  v117 = [v147 textContent];
  if (v117)
  {
    v116 = v117;
    v111 = v117;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v113 = v51;

    v114 = v112;
    v115 = v113;
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v208 = v114;
  v209 = v115;
  v52 = v147;
  if (v209)
  {
    v163[20] = v163[19];
  }

  else
  {
    v110 = [v147 contentSnippet];
    if (v110)
    {
      v109 = v110;
      v104 = v110;
      v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v53;

      v107 = v105;
      v108 = v106;
    }

    else
    {
      v107 = 0;
      v108 = 0;
    }

    v210 = v107;
    v211 = v108;
    if (v209)
    {
      sub_100268744();
    }
  }

  v206 = v210;
  v207 = v211;
  v103 = v211 != 0;
  v102 = v103;
  sub_100268744();
  if (v102)
  {
    v100 = [objc_opt_self() sharedApplication];
    v99 = v100;
    objc_opt_self();
    v101 = swift_dynamicCastObjCClass();
    if (v101)
    {
      v98 = v101;
    }

    else
    {

      v98 = 0;
    }

    v97 = v98;
    if (v98)
    {
      v96 = v97;
      v93 = v97;
      v202 = v97;
      v54 = [v97 daemonInterface];
      v94 = v54;
      if (v54)
      {
        v92 = v94;
      }

      else
      {
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }

      v55 = v146;
      v87 = v92;
      v56 = EMDaemonInterface.getMessageBody(mailMessageEntityID:)();
      v88 = v55;
      v89 = v56;
      v90 = v57;
      v91 = v55;
      if (v55)
      {
        v72 = v91;
        v73 = 0;
        v74 = 0;

        v84 = v73;
        v85 = v73;
        v86 = v74;
      }

      else
      {
        v83 = v90;
        v82 = v89;

        v84 = v82;
        v85 = v83;
        v86 = v88;
      }

      v79 = v86;
      v80 = v85;
      v81 = v84;
      if (v85)
      {
        v77 = v81;
        v78 = v80;
        v58 = v163;
        v76 = v80;
        v75 = v81;
        v200 = v81;
        v201 = v80;
        v163[30] = v163[25];
        v59 = v58[26];
        v60 = v58[27];
        v61 = v58[28];
        v224 = v222;
        v58[33] = v61;
        v58[32] = v60;
        v58[31] = v59;
        sub_10037ECF8();
        AttributedString.init(_:attributes:)();
        v62 = type metadata accessor for AttributedString();
        (*(*(v62 - 8) + 56))(v169, 0, 1);
        sub_1002CCE78(v169);
      }

      v95 = v79;
    }

    else
    {
      v95 = v146;
    }
  }

  else
  {
    v95 = v146;
  }

  (*(v172 + 8))(v173, v170, v95);

  v63 = v163;
  v163[13] = v163[25];
  v64 = v63[26];
  v65 = v63[27];
  v66 = v63[28];
  v205 = v222;
  v63[16] = v66;
  v63[15] = v65;
  v63[14] = v64;
  sub_1002CD078(v204, v203);

  sub_10028D6D0();
  v67 = v163;
  v68 = v164;
  *v164 = v163[13];
  result = v67[14];
  v70 = v67[15];
  v71 = v67[16];
  *(v68 + 8) = v205;
  v68[3] = v71;
  v68[2] = v70;
  v68[1] = result;
  return result;
}

uint64_t sub_1002CB140@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_10025C9B0(&qword_1006D7F58);
  v17 = *(v19 - 8);
  v18 = v19 - 8;
  v6 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19);
  v22 = &v6 - v6;
  v7 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v6);
  v16 = &v6 - v7;
  v8 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v6 - v7);
  v20 = &v6 - v8;
  v24 = sub_1002B9D60();
  v13 = 0;
  v23 = &unk_100659B80;
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12 = "";
  v14 = 1;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", v13, 1);
  object = v3._object;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);

  KeyPath = swift_getKeyPath();
  v10 = sub_10025C9B0(&qword_1006D7F60);
  sub_1002D39F0();
  EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(v12, v13, v14 & 1);
  v15 = v4._object;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);

  (*(v17 + 16))(v16, v20, v19);
  (*(v17 + 32))(v22, v16, v19);
  (*(v17 + 8))(v20, v19);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1002CB3CC()
{
  v26 = &unk_100500820;
  v27 = &unk_100500810;
  v28 = &unk_100500830;
  v42 = 0;
  v36 = 0;
  v37 = 0;
  v1 = sub_10025C9B0(&qword_1006D7DF0);
  v29 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v30 = &v7 - v29;
  v42 = v0;
  v43 = *v0;
  sub_100268860(&v43, &v41);
  v33 = &v40;
  v40 = v43;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://document/", 0x18uLL, 1);
  v32 = &v39;
  v39 = v2;
  v31 = sub_1002D3A78();
  sub_1002D3AF0();
  v34 = BidirectionalCollection<>.starts<A>(with:)();
  sub_100268744();
  sub_100268744();
  if (v34)
  {
    sub_10025C9B0(&qword_1006D7F70);
    sub_1002CD078(v25, v35);
    v23 = swift_allocObject();
    memcpy((v23 + 16), v25, 0x48uLL);
    return _EntityDeferredPropertyValue.__allocating_init(get:)();
  }

  else
  {
    v18 = *v25;
    v19 = v25[1];

    MailMessageEntityID.init(with:)();
    v20 = type metadata accessor for MailMessageEntityID();
    v21 = *(v20 - 8);
    v22 = v20 - 8;
    if ((*(v21 + 48))(v30, 1) == 1)
    {
      sub_1002C1698(v30);
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v14 = MailMessageEntityID.uniqueIdentifier.getter();
      v15 = v3;
      (*(v21 + 8))(v30, v20);
      v16 = v14;
      v17 = v15;
    }

    v12 = v17;
    v13 = v16;
    if (v17)
    {
      v10 = v13;
      v11 = v12;
      v9 = v12;
      v8 = v13;
      v36 = v13;
      v37 = v12;
      sub_10025C9B0(&qword_1006D7F70);
      v4 = swift_allocObject();
      v5 = v9;
      *(v4 + 16) = v8;
      *(v4 + 24) = v5;
    }

    else
    {
      sub_10025C9B0(&qword_1006D7F70);
      sub_1002CD078(v25, &v38);
      v7 = swift_allocObject();
      memcpy((v7 + 16), v25, 0x48uLL);
    }

    return _EntityDeferredPropertyValue.__allocating_init(get:)();
  }
}

_BYTE *sub_1002CB8CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1002CD078(a1, v5);
  memcpy(__dst, v5, sizeof(__dst));
  v2 = sub_1002CB3CC();
  result = __dst;
  *a2 = v2;
  sub_10028D6D0();
  return result;
}

uint64_t sub_1002CB934(uint64_t a1, void *a2, uint64_t a3)
{
  v3[18] = a3;
  v3[17] = a1;
  v3[15] = v3;
  memset(v3 + 2, 0, 0x48uLL);
  v3[16] = 0;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v3[2] = *a2;
  v3[3] = v4;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v7;
  v3[7] = v8;
  v3[8] = v9;
  v3[9] = v10;
  v3[10] = v11;
  v3[16] = a3;

  return _swift_task_switch(sub_1002CBA28, 0);
}

uint64_t sub_1002CBA28()
{
  v1 = v0[18];
  v4 = v0[17];
  v0[15] = v0;
  *(v0 + 11) = *v1;
  sub_100268860(v0 + 11, v0 + 13);
  *v4 = *(v0 + 11);
  v2 = *(v0[15] + 8);

  return v2();
}

uint64_t sub_1002CBAE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a4;
  v4[19] = a3;
  v4[18] = a1;
  v4[17] = v4;
  memset(v4 + 2, 0, 0x48uLL);
  v4[11] = 0;
  v4[12] = 0;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v12 = a2[8];
  v4[2] = *a2;
  v4[3] = v5;
  v4[4] = v6;
  v4[5] = v7;
  v4[6] = v8;
  v4[7] = v9;
  v4[8] = v10;
  v4[9] = v11;
  v4[10] = v12;
  v4[11] = a3;
  v4[12] = a4;

  return _swift_task_switch(sub_1002CBBE8, 0);
}

uint64_t sub_1002CBBE8()
{
  v8 = v0[20];
  v7 = v0[19];
  v9 = v0[18];
  v0[17] = v0;
  v0[13] = DefaultStringInterpolation.init(literalCapacity:interpolationCount:)();
  v0[14] = v1;
  v2 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("x-apple-mail://message/", 0x17uLL, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v2);

  v0[15] = v7;
  v0[16] = v8;
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
  DefaultStringInterpolation.appendLiteral(_:)(v3);

  sub_100268744();
  *v9 = String.init(stringInterpolation:)();
  v9[1] = v4;
  v5 = *(v0[17] + 8);

  return v5();
}

uint64_t sub_1002CBD78(uint64_t a1, void *a2, uint64_t a3)
{
  v3[22] = a3;
  v3[21] = a1;
  v3[19] = v3;
  memset(v3 + 2, 0, 0x48uLL);
  v3[20] = 0;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];
  v3[2] = *a2;
  v3[3] = v4;
  v3[4] = v5;
  v3[5] = v6;
  v3[6] = v7;
  v3[7] = v8;
  v3[8] = v9;
  v3[9] = v10;
  v3[10] = v11;
  v3[20] = a3;

  return _swift_task_switch(sub_1002CBE6C, 0);
}