id sub_1002653B0()
{
  v1 = type metadata accessor for IndexPath();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView);
  IndexPath.init(row:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v4, v1);
  v7 = [v5 cellForRowAtIndexPath:isa];

  result = 0;
  if (v7)
  {
    type metadata accessor for FMEditableMessageTableViewCell();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC6FindMy30FMEditableMessageTableViewCell_textView);

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100265504(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  if (a2)
  {
    v11 = String.characterCount.getter();
  }

  else
  {
    v11 = 0;
  }

  result = (*((swift_isaMask & *v5) + 0x268))();
  if (v13)
  {
    return 0;
  }

  v14 = result;
  v15 = result - v11;
  if (__OFSUB__(result, v11))
  {
    __break(1u);
    goto LABEL_27;
  }

  v16 = 0;
  if (a2 && (a5 & 1) == 0)
  {
    if (a4 < 1)
    {
      goto LABEL_13;
    }

    v17 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v17 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
LABEL_13:
      if (v11 < result)
      {
        v18 = String.characterCount.getter();
        v19 = __OFSUB__(v15, v18);
        v15 -= v18;
        if (!v19)
        {
LABEL_19:
          v16 = 1;
          goto LABEL_20;
        }

        __break(1u);
      }

      v16 = 0;
      goto LABEL_20;
    }

    v19 = __OFADD__(v15, a4);
    v15 += a4;
    if (v19)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    goto LABEL_19;
  }

LABEL_20:
  v20 = [objc_opt_self() mainBundle];
  v34._object = 0x800000010058A360;
  v21._object = 0x800000010058A340;
  v34._countAndFlagsBits = 0xD00000000000002ALL;
  v21._countAndFlagsBits = 0xD000000000000018;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v34);

  sub_10007EBC0(&unk_1006B20B0);
  result = swift_allocObject();
  *(result + 16) = xmmword_100552210;
  if (__OFSUB__(v14, v15))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v23 = result;
  v33 = v16;
  v24 = dispatch thunk of CustomStringConvertible.description.getter();
  v26 = v25;
  v23[7] = &type metadata for String;
  v27 = sub_10008EE84();
  v23[8] = v27;
  v23[4] = v24;
  v23[5] = v26;
  v28 = dispatch thunk of CustomStringConvertible.description.getter();
  v23[12] = &type metadata for String;
  v23[13] = v27;
  v23[9] = v28;
  v23[10] = v29;
  String.init(format:_:)();

  v30 = *(v6 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_remainingCharsLabel);
  if (v30)
  {
    v31 = v30;
    String.init<A>(_:)();
    v32 = String._bridgeToObjectiveC()();

    [v31 setText:v32];
  }

  else
  {
  }

  return v33;
}

UIFontTextStyle sub_1002657F4()
{
  qword_1006D4348 = UIFontTextStyleBody;
  qword_1006D4350 = 0x4090000000000000;
  return UIFontTextStyleBody;
}

uint64_t sub_100265920()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v17 = sub_100266B9C;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_100631B18;
  v4 = _Block_copy(&v13);
  v5 = v0;

  v6 = [v2 addObserverForName:UIKeyboardWillHideNotification object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *&v5[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillHideObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v17 = sub_100266BE4;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_100631B68;
  v9 = _Block_copy(&v13);
  v10 = v5;

  v11 = [v7 addObserverForName:UIKeyboardWillChangeFrameNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  *&v10[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillChangeFrameObserver] = v11;
  return swift_unknownObjectRelease();
}

void sub_100265C08()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillHideObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillChangeFrameObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

void sub_100265DB8()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for FMEditableMessageViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  if ((*(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_originalHeight + 8) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight + 8))
    {
      if (*(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight))
      {
        return;
      }

      *(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight) = 1;
      v1 = [v0 scrollView];
      if (v1)
      {
        v2 = v1;
        [v1 contentSize];
        [v2 setContentSize:?];

        v3 = [v0 scrollView];
        if (v3)
        {
          v4 = v3;
LABEL_12:
          [v4 contentInset];
          [v4 setContentInset:?];

          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v5 = [v0 scrollView];
      if (v5)
      {
        v6 = v5;
        [v5 contentSize];
        [v6 setContentSize:?];

        if (*(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight))
        {
          return;
        }

        *(v0 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight) = 1;
        v7 = [v0 scrollView];
        if (v7)
        {
          v4 = v7;
          v8 = [v0 scrollView];
          if (v8)
          {
            v9 = v8;
            [v8 bounds];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v19.origin.x = v11;
            v19.origin.y = v13;
            v19.size.width = v15;
            v19.size.height = v17;
            CGRectGetMaxY(v19);
            goto LABEL_12;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

id sub_1002664B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMEditableMessageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002665E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100266630(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_10026667C()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_16;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10004CC50(v58), (v5 & 1) == 0))
  {

    sub_10004CDB8(v58);
LABEL_16:
    v59 = 0u;
    v60 = 0u;
    goto LABEL_17;
  }

  sub_100006004(*(v3 + 56) + 32 * v4, &v59);
  sub_10004CDB8(v58);

  if (!*(&v60 + 1))
  {
LABEL_17:
    sub_10000D2C0(&v59);
    return;
  }

  sub_10000905C(0, &unk_1006BC3F0);
  if (swift_dynamicCast())
  {
    v6 = v58[0];
    [v58[0] CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 window];

      if (!v17 || (v18 = [v17 screen], v17, v19 = objc_msgSend(v18, "coordinateSpace"), v18, !v19))
      {
        v20 = [objc_opt_self() mainScreen];
        v19 = [v20 coordinateSpace];
      }

      v21 = [v1 scrollView];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 coordinateSpace];

        [v19 convertRect:v23 toCoordinateSpace:{v8, v10, v12, v14}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        swift_unknownObjectRelease();
        v32 = [v1 buttonTray];
        [v32 frame];
        v34 = v33;
        v36 = v35;
        v38 = v37;
        v40 = v39;

        v61.origin.x = v25;
        v61.origin.y = v27;
        v61.size.width = v29;
        v61.size.height = v31;
        v64.origin.x = v34;
        v64.origin.y = v36;
        v64.size.width = v38;
        v64.size.height = v40;
        if (!CGRectIntersectsRect(v61, v64))
        {
          swift_unknownObjectRelease();

          v57 = &v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
          *v57 = 0;
          v57[8] = 1;
          v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
          return;
        }

        v41 = &v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
        if (v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight + 8] != 1)
        {

          swift_unknownObjectRelease();
          return;
        }

        v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
        v42 = [v1 scrollView];
        if (v42)
        {
          v43 = v42;
          [v42 contentSize];
          v45 = v44;

          v46 = &v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_originalHeight];
          *v46 = v45;
          v46[8] = 0;
          v62.origin.x = v25;
          v62.origin.y = v27;
          v62.size.width = v29;
          v62.size.height = v31;
          *&v1[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardMinY] = CGRectGetMinY(v62);
          v47 = [v1 buttonTray];
          [v47 frame];
          v49 = v48;
          v51 = v50;
          v53 = v52;
          v55 = v54;

          v63.origin.x = v49;
          v63.origin.y = v51;
          v63.size.width = v53;
          v63.size.height = v55;
          Height = CGRectGetHeight(v63);
          swift_unknownObjectRelease();

          *v41 = Height;
          *(v41 + 8) = 0;
          return;
        }

        goto LABEL_23;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }
}

char *sub_100266AAC()
{
  v1 = v0;
  v2 = [objc_allocWithZone(type metadata accessor for FMMessageTableViewHeaderView()) initWithReuseIdentifier:0];
  v3 = String._bridgeToObjectiveC()();
  [v2 setText:v3];

  sub_100424B98();
  v4 = *&v2[OBJC_IVAR____TtC6FindMy28FMMessageTableViewHeaderView_remainingCharsLabel];
  v5 = *(v1 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_remainingCharsLabel);
  *(v1 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_remainingCharsLabel) = v4;
  v6 = v4;

  v7 = *(v1 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message);
  v8 = *(v1 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message + 8);

  sub_100265504(v7, v8, v9, 0, 1);

  return v2;
}

void sub_100266B9C()
{
  v1 = *(v0 + 16);
  v2 = v1 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight) = 0;
  sub_10026667C();
}

BOOL sub_100266C10()
{
  v1 = v0;
  v2 = [v0 navigationBar];
  v3 = [v2 backgroundColor];

  v4 = [objc_opt_self() systemBackgroundColor];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      sub_10000905C(0, &qword_1006C0000);
      v6 = static NSObject.== infix(_:_:)();

      LOBYTE(v5) = v6 ^ 1;
      goto LABEL_8;
    }
  }

  else
  {
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  LOBYTE(v5) = 1;
LABEL_8:
  v7 = [v1 navigationBar];
  v8 = [v7 backgroundImageForBarMetrics:0];

  if (v8)
  {
  }

  v9 = [v1 navigationBar];
  v10 = [v9 shadowImage];

  if (v10)
  {

    return 0;
  }

  return !(v5 & 1 | (v8 != 0));
}

void sub_100266E70()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for FMTransparentNavigationController();
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v1 = [v0 navigationBar];
  [v1 setTranslucent:1];

  v2 = [v0 navigationBar];
  v3 = [objc_allocWithZone(UIImage) init];
  [v2 setBackgroundImage:v3 forBarMetrics:0];

  v4 = [v0 navigationBar];
  v5 = [objc_allocWithZone(UIImage) init];
  [v4 setShadowImage:v5];

  v6 = [v0 navigationBar];
  v7 = [objc_opt_self() clearColor];
  [v6 setBackgroundColor:v7];
}

void sub_100267028(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100267084(a1);
  }
}

void sub_100267084(void *a1)
{
  [a1 adjustedContentInset];
  v4 = -trunc(v3);
  [a1 contentOffset];
  if (v5 <= v4 || sub_100266C10())
  {
    [a1 contentOffset];
    if (v6 > v4 || !sub_100266C10())
    {
      return;
    }

    v7 = [v1 navigationBar];
    v8 = [objc_allocWithZone(UIImage) init];
    [v7 setBackgroundImage:v8 forBarMetrics:0];

    v9 = [v1 navigationBar];
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v10];

    v11 = [v1 navigationBar];
    v15 = [objc_allocWithZone(UIImage) init];
    [v11 setShadowImage:?];
  }

  else
  {
    v12 = [v1 navigationBar];
    v13 = [objc_opt_self() systemBackgroundColor];
    [v12 setBackgroundColor:v13];

    v14 = [v1 navigationBar];
    [v14 setBackgroundImage:0 forBarMetrics:0];

    v15 = [v1 navigationBar];
    [v15 setShadowImage:0];
  }
}

id sub_1002672F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMTransparentNavigationController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002673C0(void *a1)
{
  v12 = &type metadata for SolariumFeatureFlag;
  v13 = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  result = sub_100006060(v11);
  if ((v2 & 1) == 0)
  {
    v10 = a1;
    sub_10000905C(0, &qword_1006B87E0);
    v4 = a1;
    sub_10007EBC0(&qword_1006B87E8);
    if (swift_dynamicCast())
    {
      sub_100006A54(v8, v11);
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = v12;
      v7 = v13;
      sub_100267578(v11, v12);
      (*(v7 + 16))(sub_100267570, v5, v6, v7);
      return sub_100006060(v11);
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      return sub_100267508(v8);
    }
  }

  return result;
}

uint64_t sub_100267508(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B87F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100267578(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_1002675C8()
{
  sub_10003A898();
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_titleLabel);
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v21._object = 0x800000010058A490;
  v4._countAndFlagsBits = 0x43495645445F4F4ELL;
  v4._object = 0xEF454C5449545F45;
  v21._countAndFlagsBits = 0xD000000000000021;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v21);

  v6 = String._bridgeToObjectiveC()();

  [v1 setText:v6];

  v7 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_iconView);
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() imageNamed:v8];

  [v7 setImage:v9];
  v10 = *(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_messageLabel);
  v11 = [v2 mainBundle];
  v22._object = 0x800000010058A4E0;
  v12._object = 0x800000010058A4C0;
  v22._countAndFlagsBits = 0xD000000000000023;
  v12._countAndFlagsBits = 0xD000000000000011;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v22);

  v14 = String._bridgeToObjectiveC()();

  [v10 setText:v14];

  v15 = *(*(v0 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton) + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v16 = [v2 mainBundle];
  v23._object = 0x800000010058A530;
  v17._countAndFlagsBits = 0xD000000000000016;
  v17._object = 0x800000010058A510;
  v23._countAndFlagsBits = 0xD000000000000028;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v23);

  v19 = String._bridgeToObjectiveC()();

  [v15 setText:v19];
}

void sub_1002678CC()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMNoDeviceView: action tapped", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC6FindMy15FMEmptyListView_actionButton);
  v7 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  v8 = *(v6 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 mainBundle];
  v19._object = 0x800000010058A450;
  v12._object = 0x800000010058A430;
  v19._countAndFlagsBits = 0xD000000000000031;
  v12._countAndFlagsBits = 0xD00000000000001FLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v19);

  v14 = String._bridgeToObjectiveC()();

  [v10 setText:v14];

  *(v6 + OBJC_IVAR____TtC6FindMy17FMEmptyListButton_isEnabled) = 0;
  v15 = *(v6 + v7);
  v16 = [*(v6 + OBJC_IVAR____TtC6FindMy17FMEmptyListButton_textColor) colorWithAlphaComponent:0.5];
  [v15 setTextColor:v16];

  v17 = [objc_opt_self() sharedInstance];
}

id sub_100267C0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMNoDeviceView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100267C64@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10007EBC0(&qword_1006B8B78);
  v3 = __chkstk_darwin(v2 - 8);
  v59 = (&v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v3);
  v58 = &v56 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v56 - v8;
  __chkstk_darwin(v7);
  v11 = &v56 - v10;
  v12 = sub_10007EBC0(&unk_1006C1D10);
  v13 = __chkstk_darwin(v12 - 8);
  v57 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v56 - v16;
  __chkstk_darwin(v15);
  v19 = &v56 - v18;
  v20 = sub_10007EBC0(&unk_1006BB1C0);
  __chkstk_darwin(v20 - 8);
  v22 = &v56 - v21;
  v23 = type metadata accessor for FMIPItemGroup();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPDevice.itemGroup.getter();
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_100012DF0(v22, &unk_1006BB1C0);
    FMIPDevice.lostMetadata.getter();
    v27 = type metadata accessor for FMIPDeviceLostModeMetadata();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    if (v29(v11, 1, v27) == 1)
    {
      sub_100012DF0(v11, &qword_1006B8B78);
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v34 = FMIPDeviceLostModeMetadata.message.getter();
      v62 = v35;
      v63 = v34;
      (*(v28 + 8))(v11, v27);
    }

    FMIPDevice.lostMetadata.getter();
    v36 = v29(v9, 1, v27);
    v37 = v59;
    if (v36 == 1)
    {
      sub_100012DF0(v9, &qword_1006B8B78);
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v40 = FMIPDeviceLostModeMetadata.ownerNumber.getter();
      v60 = v41;
      v61 = v40;
      (*(v28 + 8))(v9, v27);
    }

    v42 = v58;
    FMIPDevice.lostMetadata.getter();
    if (v29(v42, 1, v27) == 1)
    {
      sub_100012DF0(v42, &qword_1006B8B78);
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v50 = FMIPDeviceLostModeMetadata.email.getter();
      v51 = v42;
      v43 = v50;
      v44 = v52;
      (*(v28 + 8))(v51, v27);
    }

    FMIPDevice.lostMetadata.getter();
    if (v29(v37, 1, v27) == 1)
    {
      result = sub_100012DF0(v37, &qword_1006B8B78);
      v49 = 0;
    }

    else
    {
      v49 = FMIPDeviceLostModeMetadata.isEmailUpdatesEnabled.getter();
      result = (*(v28 + 8))(v37, v27);
    }
  }

  else
  {
    (*(v24 + 32))(v26, v22, v23);
    FMIPItemGroup.lostMetadata.getter();
    v30 = type metadata accessor for FMIPItemLostModeMetadata();
    v31 = *(v30 - 8);
    v32 = *(v31 + 6);
    v33 = v32(v19, 1, v30);
    v59 = v31;
    if (v33 == 1)
    {
      sub_100012DF0(v19, &unk_1006C1D10);
      v62 = 0;
      v63 = 0;
    }

    else
    {
      v61 = v32;
      v38 = FMIPItemLostModeMetadata.message.getter();
      v62 = v39;
      v63 = v38;
      v32 = v61;
      (*(v31 + 1))(v19, v30);
    }

    FMIPItemGroup.lostMetadata.getter();
    if (v32(v17, 1, v30) == 1)
    {
      sub_100012DF0(v17, &unk_1006C1D10);
      v60 = 0;
      v61 = 0;
    }

    else
    {
      v45 = FMIPItemLostModeMetadata.ownerNumber.getter();
      v60 = v46;
      v61 = v45;
      v59[1](v17, v30);
    }

    v47 = v57;
    FMIPItemGroup.lostMetadata.getter();
    if (v32(v47, 1, v30) == 1)
    {
      (*(v24 + 8))(v26, v23);
      result = sub_100012DF0(v47, &unk_1006C1D10);
      v43 = 0;
      v44 = 0;
    }

    else
    {
      v43 = FMIPItemLostModeMetadata.email.getter();
      v44 = v53;
      (*(v24 + 8))(v26, v23);
      result = (v59[1])(v47, v30);
    }

    v49 = 0;
  }

  v54 = v62;
  *a1 = v63;
  *(a1 + 8) = v54;
  v55 = v60;
  *(a1 + 16) = v61;
  *(a1 + 24) = v55;
  *(a1 + 32) = v43;
  *(a1 + 40) = v44;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v49 & 1;
  return result;
}

uint64_t sub_100268354(uint64_t a1, __int16 a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 0x1FF;
  return a3(&v4);
}

id sub_100268398()
{
  v1 = v0;
  v2 = type metadata accessor for FMIPDevice();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_1006B8E50);
  sub_1000970F8(v1 + qword_1006D3E00, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v3 + 32))(v5, v8, v2);
    v11 = FMIPDevice.isConsideredAccessory.getter();
    (*(v3 + 8))(v5, v2);
    v12 = v11 ^ 1;
    sub_100012DF0(&v8[v10], &qword_1006B07D0);
  }

  else
  {
    sub_10009715C(v8);
    v12 = 0;
  }

  *(v9 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowEmailUpdates) = v12 & 1;
  v13 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView;
  [*(v9 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_sendEmailUpdatesView) setHidden:(v12 & 1) == 0];
  v14 = (v1 + qword_1006D4358);
  [*(*(v9 + v13) + OBJC_IVAR____TtC6FindMy27FMLostModeSummaryToggleView_toggle) setOn:*(v1 + qword_1006D4358 + 64) animated:0];
  v30 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView;
  v15 = v14[3];
  v16 = *(*(v9 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_phoneNumberView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView);
  v29 = v14[2];
  if (v15)
  {
    v17 = String._bridgeToObjectiveC()();
  }

  else
  {
    v17 = 0;
  }

  [v16 setText:{v17, v29}];

  sub_1002CFB70();
  v18 = v14[5];
  v19 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView;
  v20 = *(*(v9 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_emailView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView);
  if (v18)
  {
    v21 = v14[4];
    v22 = String._bridgeToObjectiveC()();
    [v20 setText:v22];

    sub_1002CFB70();
    if (v21 || v18 != 0xE000000000000000)
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    [v20 setText:0];
    sub_1002CFB70();
    v23 = 1;
  }

  if (v15 && (v29 || v15 != 0xE000000000000000))
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((v23 & 1) == 0)
  {
    v24 = 1;
    goto LABEL_20;
  }

  v24 = 0;
LABEL_20:
  v25 = OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowEmail;
  *(v9 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_shouldShowEmail) = v24 & 1;
  [*(v9 + v30) setHidden:?];
  [*(v9 + v19) setHidden:(*(v9 + v25) & 1) == 0];
  v26 = *(*(v9 + OBJC_IVAR____TtC6FindMy28FMLostModeSummaryContentView_messageView) + OBJC_IVAR____TtC6FindMy25FMLostModeSummaryTextView_contentTextView);
  if (v14[1])
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  [v26 setText:v27];

  return sub_1002CFB70();
}

void sub_100268794(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (!a1)
    {
LABEL_14:
      v18 = a2;
      v19 = objc_opt_self();
      v20 = [v19 mainBundle];
      v47 = 0x8000000100579A00;
      if (v18 == 1)
      {
        v21._countAndFlagsBits = 0xD000000000000032;
        v21._object = 0x800000010058A620;
        v22.value._object = 0x80000001005799E0;
        v23 = 0xD000000000000018;
        v22.value._countAndFlagsBits = 0xD000000000000013;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v21, v22, v20, v24, *(&v47 - 1));

        v25 = "CTION_FAILED_TITLE";
        v26 = [v19 mainBundle];
        v48 = 0x8000000100579A00;
        v27 = 0xD000000000000034;
      }

      else
      {
        v28._countAndFlagsBits = 0xD000000000000031;
        v28._object = 0x800000010058A6A0;
        v29.value._object = 0x80000001005799E0;
        v30 = 0xD000000000000018;
        v29.value._countAndFlagsBits = 0xD000000000000013;
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v20, v31, *(&v47 - 1));

        v25 = "TION_FAILED_TITLE";
        v26 = [v19 mainBundle];
        v48 = 0x8000000100579A00;
        v27 = 0xD000000000000033;
      }

      v32 = v25 | 0x8000000000000000;
      v33.value._object = 0x80000001005799E0;
      v34 = 0xD000000000000018;
      v33.value._countAndFlagsBits = 0xD000000000000013;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v27, v33, v26, v35, *(&v48 - 1));

      goto LABEL_18;
    }

    aBlock[0] = a1;
    v3 = a2;
    sub_10026B548(a1, a2);
    sub_10007EBC0(&unk_1006AF7B0);
    sub_10026B55C();
    if (swift_dynamicCast())
    {
      v4 = [v49 domain];
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;

      if (v5 == 0xD00000000000003BLL && 0x800000010058A5C0 == v7)
      {
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v9 & 1) == 0)
        {

          goto LABEL_10;
        }
      }

      v17 = [v49 code];

      a2 = v3;
      if (v17 == 1)
      {
        return;
      }

      goto LABEL_14;
    }

LABEL_10:
    a2 = v3;
    goto LABEL_14;
  }

  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v51._object = 0x800000010058A600;
  v12._object = 0xED0000454C544954;
  v51._countAndFlagsBits = 0xD00000000000001FLL;
  v12._countAndFlagsBits = 0x5F4552554C494146;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v51);

  v14 = [v10 mainBundle];
  v52._object = 0x800000010057D450;
  v15._object = 0xEF4547415353454DLL;
  v52._countAndFlagsBits = 0xD000000000000021;
  v15._countAndFlagsBits = 0x5F4552554C494146;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v52);

LABEL_18:
  v36 = String._bridgeToObjectiveC()();

  v37 = String._bridgeToObjectiveC()();

  v38 = [objc_opt_self() alertControllerWithTitle:v36 message:v37 preferredStyle:1];

  v39 = [objc_opt_self() mainBundle];
  v53._object = 0x8000000100579B60;
  v40._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v40._object = 0xEF454C5449545F4ELL;
  v53._countAndFlagsBits = 0xD000000000000021;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v40, 0, v39, v41, v53);

  v42 = swift_allocObject();
  *(v42 + 16) = v38;
  v43 = v38;
  v44 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_1000C9584;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100017328;
  aBlock[3] = &unk_100631DE8;
  v45 = _Block_copy(aBlock);

  v46 = [objc_opt_self() actionWithTitle:v44 style:1 handler:v45];
  _Block_release(v45);

  [v43 addAction:v46];
  [v2 presentViewController:v43 animated:1 completion:0];
}

uint64_t sub_100268D30(uint64_t a1)
{
  v29 = a1;
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FMIPItem();
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FMIPAnalyticsActionType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(v29, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v10 + 32))(v12, v15, v9);
    (*(v6 + 104))(v8, enum case for FMIPAnalyticsActionType.enableLostMode(_:), v5);
    sub_100269734(v12, v8);
    (*(v6 + 8))(v8, v5);
    v17 = *(v1 + qword_1006D4358 + 48);
    v33 = *(v1 + qword_1006D4358 + 32);
    v34 = v17;
    v35 = *(v1 + qword_1006D4358 + 64);
    v18 = *(v1 + qword_1006D4358 + 16);
    v31 = *(v1 + qword_1006D4358);
    v32 = v18;
    v19 = *(*(v1 + qword_1006B8E58) + 24);

    v20 = sub_10026A310(1, v12, &v31, v19, v1);

    (*(v10 + 8))(v12, v9);
    sub_100012DF0(&v15[v16], &qword_1006B07D0);
  }

  else
  {
    v22 = v27;
    v21 = v28;
    (*(v27 + 32))(v4, v15, v28);
    (*(v6 + 104))(v8, enum case for FMIPAnalyticsActionType.enableLostMode(_:), v5);
    sub_100269774(v4, v8);
    (*(v6 + 8))(v8, v5);
    v23 = *(v1 + qword_1006D4358 + 48);
    v33 = *(v1 + qword_1006D4358 + 32);
    v34 = v23;
    v35 = *(v1 + qword_1006D4358 + 64);
    v24 = *(v1 + qword_1006D4358 + 16);
    v31 = *(v1 + qword_1006D4358);
    v32 = v24;
    v25 = *(*(v1 + qword_1006B8E58) + 24);

    v20 = sub_10026A148(v4, &v31, v25);

    (*(v22 + 8))(v4, v21);
  }

  return v20;
}

uint64_t sub_100269160(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v12);
  v14 = &ObjectType - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v9 + 32))(v11, v14, v8);
    v16 = *(*(v2 + qword_1006B8E58) + 24);

    v17 = sub_10026A310(1, v11, v21, v16, v2);

    (*(v9 + 8))(v11, v8);
    sub_100012DF0(&v14[v15], &qword_1006B07D0);
  }

  else
  {
    (*(v5 + 32))(v7, v14, v4);
    v18 = *(*(v2 + qword_1006B8E58) + 24);

    v17 = sub_10026A588(1, v7, v21, v18);

    (*(v5 + 8))(v7, v4);
  }

  return v17;
}

uint64_t sub_100269438(uint64_t a1)
{
  v2 = v1;
  v23[1] = swift_getObjectType();
  v4 = type metadata accessor for FMIPItem();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMIPDevice();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMLostModeTrackable();
  __chkstk_darwin(v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000970F8(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(sub_10007EBC0(&qword_1006AFC80) + 48);
    (*(v9 + 32))(v11, v14, v8);
    v16 = *(v2 + qword_1006D4358 + 48);
    v24[2] = *(v2 + qword_1006D4358 + 32);
    v24[3] = v16;
    v25 = *(v2 + qword_1006D4358 + 64);
    v17 = *(v2 + qword_1006D4358 + 16);
    v24[0] = *(v2 + qword_1006D4358);
    v24[1] = v17;
    v18 = *(*(v2 + qword_1006B8E58) + 24);

    v19 = sub_10026A310(0, v11, v24, v18, v2);

    (*(v9 + 8))(v11, v8);
    sub_100012DF0(&v14[v15], &qword_1006B07D0);
  }

  else
  {
    (*(v5 + 32))(v7, v14, v4);
    v20 = *(*(v2 + qword_1006B8E58) + 24);

    v19 = sub_10026A78C(v7, v21, v20);

    (*(v5 + 8))(v7, v4);
  }

  return v19;
}

uint64_t sub_1002697B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), void (*a5)(char *))
{
  v32 = a5;
  v28 = a1;
  v29 = a4;
  v26 = a2;
  v5 = a3(0);
  v30 = *(v5 - 8);
  v31 = v5;
  __chkstk_darwin(v5);
  v27 = &v25 - v6;
  v7 = type metadata accessor for FMIPAnalyticsProductType();
  __chkstk_darwin(v7 - 8);
  v25 = type metadata accessor for FMIPAnalyticsOwnerContext();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMIPAnalyticsActionType();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FMIPActionEvent();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, v26, v11);

  v20 = v28;
  v21 = v29(v19);
  v22 = &enum case for FMIPAnalyticsOwnerContext.owner(_:);
  if ((v21 & 1) == 0)
  {
    v22 = &enum case for FMIPAnalyticsOwnerContext.shared(_:);
  }

  (*(v8 + 104))(v10, *v22, v25);
  v23 = v27;
  (*(v30 + 16))(v27, v20, v31);
  v32(v23);
  FMIPActionEvent.init(type:ownerContext:productType:)();
  FMIPManager.enqueue(actionEvent:)();
  (*(v16 + 8))(v18, v15);
}

uint64_t sub_100269B18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_10026B3B8(v7, v9) & 1;
}

BOOL sub_100269B74(uint64_t a1, unsigned __int8 a2)
{
  if (a2 > 2u || a1 == 0)
  {
    return 0;
  }

  sub_10026B548(a1, a2);
  sub_10007EBC0(&unk_1006AF7B0);
  sub_10026B55C();
  v4 = swift_dynamicCast();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [v12 domain];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == 0xD00000000000003BLL && 0x800000010058A5C0 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  v11 = [v12 code];

  return v11 == 1;
}

void sub_100269CB8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for FMLostModeSummaryViewController();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "viewDidLoad");
  sub_100268398();
}

uint64_t sub_100269D14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v19 = a2;
  v3 = sub_10007EBC0(&qword_1006B8B60);
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v18 - v4;
  v6 = sub_10007EBC0(&qword_1006B2938);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  v10 = sub_10007EBC0(&qword_1006B2940);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - v12;
  v14 = *a1;
  v15 = *(a1 + 8);
  if (sub_100269B74(v14, v15))
  {
    Just.init(_:)();
    sub_1001106B8();
    Just.setFailureType<A>(to:)();
    (*(v7 + 8))(v9, v6);
    sub_100004098(&qword_1006B2950, &qword_1006B2940);
    v16 = Publisher.eraseToAnyPublisher()();
    result = (*(v11 + 8))(v13, v10);
  }

  else
  {
    v20 = v14;
    v21 = v15;
    sub_10026B548(v14, v15);
    sub_1001106B8();
    Fail.init(error:)();
    sub_100004098(&qword_1006B8B68, &qword_1006B8B60);
    v16 = Publisher.eraseToAnyPublisher()();
    result = (*(v18 + 8))(v5, v3);
  }

  *v19 = v16;
  return result;
}

void sub_10026A05C(uint64_t a1, char *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *&a2[qword_1006D4360];
  v6 = v5;
  sub_1003EB538(v5);

  if (v4 == 255)
  {
    v7 = [a2 navigationController];
    if (v7)
    {
      v8 = v7;
      [v7 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    sub_100268794(v3, v4);
  }
}

uint64_t sub_10026A148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v5);
  (*(v7 + 16))(v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for FMIPLostModeItemAction();
  swift_allocObject();

  v8 = FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = v8;
  *(v9 + 32) = 1;
  *(v9 + 40) = v11[1];
  sub_10007EBC0(&qword_1006B28D8);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10026A310(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v9 = type metadata accessor for FMIPDevice();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(AKAppleIDAuthenticationInAppContext) init];
  [v13 setPresentingViewController:a5];
  (*(v10 + 16))(v12, a2, v9);
  v22 = a1;
  if (a1)
  {
    v21 = *(a3 + 48);
  }

  else
  {
    v21 = 0;
  }

  type metadata accessor for FMIPLostModeAction();
  swift_allocObject();
  v14 = v22 & 1;
  v15 = FMIPLostModeAction.init(device:message:phoneNumber:email:passcode:trackingEnabled:emailUpdatesEnabled:)();

  v16 = v13;
  dispatch thunk of FMIPDeviceAction.authenticationContext.setter();

  v17 = swift_allocObject();
  v18 = v23;
  *(v17 + 16) = v24;
  *(v17 + 24) = v15;
  *(v17 + 32) = v14;
  *(v17 + 40) = v18;
  sub_10007EBC0(&qword_1006B28D8);
  swift_allocObject();

  v19 = Future.init(_:)();

  return v19;
}

uint64_t sub_10026A588(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v7);
  (*(v9 + 16))(v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  if (a1)
  {
  }

  type metadata accessor for FMIPLostModeItemAction();
  swift_allocObject();
  v10 = a1 & 1;
  v11 = FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)();
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = v11;
  *(v12 + 32) = v10;
  *(v12 + 40) = v14[1];
  sub_10007EBC0(&qword_1006B28D8);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10026A78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for FMIPItem();
  __chkstk_darwin(v7);
  (*(v9 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  type metadata accessor for FMIPLostModeItemAction();
  swift_allocObject();
  v10 = FMIPLostModeItemAction.init(item:message:phoneNumber:email:trackingEnabled:emailUpdatesEnabled:)();
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = v4;
  sub_10007EBC0(&qword_1006B28D8);
  swift_allocObject();

  return Future.init(_:)();
}

uint64_t sub_10026A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = sub_10026B7C8;
  *(v12 + 32) = v11;
  *(v12 + 40) = a6;

  sub_1000D6A90(a4, sub_10026B648, v12);
}

uint64_t sub_10026A9E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  if (a3)
  {
    v10 = (a4 & 1) == 0;
  }

  else
  {
    v10 = -1;
  }

  swift_errorRetain();
  sub_10026AEA8(a5, a6, a1, a3, v10);
}

uint64_t sub_10026AA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = sub_10026B5B8;
  *(v12 + 32) = v11;
  *(v12 + 40) = a6;

  sub_1000D7218(a4, sub_10026B5BC, v12);
}

uint64_t sub_10026AB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(uint64_t, void), uint64_t a7)
{
  if (a3)
  {
    v11 = (a5 & 1) == 0;
  }

  else
  {
    v11 = -1;
  }

  swift_errorRetain();
  sub_10026B130(a6, a7, a1, a3, v11);
}

void sub_10026ABC0()
{

  v1 = *(v0 + qword_1006D4360);
}

id sub_10026AC48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMLostModeSummaryViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10026AC80(uint64_t a1)
{

  v2 = *(a1 + qword_1006D4360);
}

uint64_t type metadata accessor for FMLostModeSummaryViewController()
{
  result = qword_1006B8850;
  if (!qword_1006B8850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_10026ADB0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10026ADD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
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

  return (v4 + 1);
}

uint64_t sub_10026AE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10026AEA8(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = ~a5;
  v10 = type metadata accessor for FMIPItemActionStatus();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  (*(v11 + 16))(v21 - v15, a3, v10);
  if (v9)
  {
    sub_10026B548(a4, a5);
    (*(v11 + 8))(v16, v10);
    sub_10026B548(a4, a5);
    a1(a4, a5 | 0x100u);
    sub_10026B5CC(a4, a5);
    return sub_10026B5CC(a4, a5);
  }

  (*(v11 + 104))(v14, enum case for FMIPItemActionStatus.pending(_:), v10);
  sub_10026B658(&qword_1006B6898, &type metadata accessor for FMIPItemActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (v21[3] == v21[2])
  {
    v18(v16, v10);
  }

  else
  {
    v19 = FMIPItemActionStatus.isActionSuccessful.getter();
    v18(v16, v10);
    if ((v19 & 1) == 0)
    {
      v20 = 259;
      return (a1)(0, v20);
    }
  }

  v20 = 0;
  return (a1)(0, v20);
}

uint64_t sub_10026B130(void (*a1)(uint64_t, void), uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v9 = ~a5;
  v10 = type metadata accessor for FMIPActionStatus();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v21 - v15;
  (*(v11 + 16))(v21 - v15, a3, v10);
  if (v9)
  {
    sub_10026B548(a4, a5);
    (*(v11 + 8))(v16, v10);
    sub_10026B548(a4, a5);
    a1(a4, a5 | 0x100u);
    sub_10026B5CC(a4, a5);
    return sub_10026B5CC(a4, a5);
  }

  (*(v11 + 104))(v14, enum case for FMIPActionStatus.pending(_:), v10);
  sub_10026B658(&qword_1006C1D70, &type metadata accessor for FMIPActionStatus);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (v21[3] == v21[2])
  {
    v18(v16, v10);
  }

  else
  {
    v19 = FMIPActionStatus.isActionSuccessful.getter();
    v18(v16, v10);
    if ((v19 & 1) == 0)
    {
      v20 = 259;
      return (a1)(0, v20);
    }
  }

  v20 = 0;
  return (a1)(0, v20);
}

uint64_t sub_10026B3B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_31;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v3)
  {
    goto LABEL_31;
  }

  v9 = *(a1 + 24);
  v10 = *(a2 + 24);
  if (v9)
  {
    if (!v10)
    {
      goto LABEL_31;
    }

    if (*(a1 + 16) != *(a2 + 16) || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v10)
  {
    goto LABEL_31;
  }

  v15 = *(a1 + 40);
  v16 = *(a2 + 40);
  if (v15)
  {
    if (!v16)
    {
      goto LABEL_31;
    }

    if (*(a1 + 32) != *(a2 + 32) || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        goto LABEL_31;
      }
    }
  }

  else if (v16)
  {
    goto LABEL_31;
  }

  v21 = *(a1 + 56);
  v22 = *(a2 + 56);
  if (v21)
  {
    if (v22)
    {
      if (*(a1 + 48) == *(a2 + 48) && v21 == v22)
      {
        goto LABEL_29;
      }

      v23 = a1;
      v24 = a2;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if (v26)
      {
        goto LABEL_29;
      }
    }

LABEL_31:
    v27 = 0;
    return v27 & 1;
  }

  if (v22)
  {
    goto LABEL_31;
  }

LABEL_29:
  v27 = *(a1 + 64) ^ *(a2 + 64) ^ 1;
  return v27 & 1;
}

uint64_t sub_10026B548(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_10026B55C()
{
  result = qword_1006B8B70;
  if (!qword_1006B8B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006B8B70);
  }

  return result;
}

uint64_t sub_10026B5CC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_10026B5E0(a1, a2);
  }

  return a1;
}

uint64_t sub_10026B5E0(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_10026B604(uint64_t a1, __int16 a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 0x1FF;
  return v3(&v5);
}

uint64_t sub_10026B658(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10026B6A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10026B6E0(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_10026B6FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10026B710(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10026B758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_10026B79C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

void sub_10026B7CC(void *a1)
{
  v3 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v3)
  {
    goto LABEL_10;
  }

  v49 = v3;
  v4 = [a1 viewForKey:UITransitionContextToViewKey];
  if (!v4)
  {

LABEL_10:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100005B14(v21, qword_1006D4630);
    v49 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v49, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v49, v22, "FMCardPresentationTransition: Invalid presented view controller", v23, 2u);
    }

    goto LABEL_14;
  }

  v5 = v4;
  v6 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v6)
  {
LABEL_16:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100005B14(v25, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v26, "FMCardPresentationTransition: Invalid presenting view controller", v27, 2u);
    }

    v24 = oslog;
    goto LABEL_21;
  }

  v7 = v6;
  swift_getObjectType();
  v8 = swift_conformsToProtocol2();
  if (!v8 || (v9 = v8, (v10 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey]) == 0) || (v11 = v10, v12 = objc_msgSend(v10, "view"), v11, !v12))
  {

    goto LABEL_16;
  }

  sub_100375524(a1, v5);
  [v12 bounds];
  CGRectGetWidth(v57);
  [v12 bounds];
  CGRectGetHeight(v58);
  [v12 frame];
  v14 = v13;
  [v12 frame];
  [v5 setFrame:v14];
  v15 = [a1 containerView];
  [v15 addSubview:v5];

  [v5 layoutIfNeeded];
  v16 = [v12 window];
  if (v16)
  {
    v17 = v16;
    [v16 bounds];
    v19 = v18;

    v20 = v19 + 400.0;
  }

  else
  {
    v20 = 400.0;
  }

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  if (qword_1006D47A0 != 1)
  {
    v20 = -400.0;
  }

  [v12 frame];
  [v5 setFrame:v20];
  v28 = OBJC_IVAR____TtC6FindMy16FMCardTransition_duration;
  v29 = *&v1[OBJC_IVAR____TtC6FindMy16FMCardTransition_duration];
  v30 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v29 == 0.0)
  {
    if (v30)
    {
      v31 = v30;
      [v30 viewWillDisappear:0];
    }

    sub_10026C3AC(v7, v9, v12, v49);
    [a1 completeTransition:1];

LABEL_14:
    v24 = v49;
LABEL_21:

    return;
  }

  if (v30)
  {
    v32 = v30;
    [v30 viewWillDisappear:1];
  }

  v33 = swift_allocObject();
  *(v33 + 16) = a1;
  swift_unknownObjectRetain();
  [v12 bounds];
  Width = CGRectGetWidth(v59);
  [v12 bounds];
  Height = CGRectGetHeight(v60);
  v36 = objc_opt_self();
  v37 = *&v1[v28];
  v38 = *&v1[OBJC_IVAR____TtC6FindMy16FMCardTransition_delay];
  v39 = swift_allocObject();
  *(v39 + 2) = v1;
  *(v39 + 3) = v7;
  *(v39 + 4) = v9;
  *(v39 + 5) = v49;
  *(v39 + 6) = v12;
  v39[7] = Width;
  v39[8] = Height;
  v39[9] = 0.2;
  v54 = sub_10026C358;
  v55 = v39;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100004AE4;
  v53 = &unk_100631EF0;
  v40 = _Block_copy(&aBlock);
  v41 = v1;
  v42 = v7;
  v43 = v49;
  v44 = v12;

  v45 = swift_allocObject();
  *(v45 + 2) = v44;
  *(v45 + 3) = sub_1001A8698;
  *(v45 + 4) = v33;
  v54 = sub_10026C370;
  v55 = v45;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10037A044;
  v53 = &unk_100631F40;
  v46 = _Block_copy(&aBlock);
  v47 = v44;

  [v36 animateKeyframesWithDuration:0 delay:v40 options:v46 animations:v37 completion:v38];
  _Block_release(v46);
  _Block_release(v40);
}

void sub_10026BF60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8)
{
  v16 = objc_opt_self();
  v17 = OBJC_IVAR____TtC6FindMy16FMCardTransition_duration;
  v18 = *(a1 + OBJC_IVAR____TtC6FindMy16FMCardTransition_duration) / 1.5;
  v19 = swift_allocObject();
  v19[2] = a2;
  v19[3] = a3;
  v19[4] = a4;
  v35 = sub_10026C50C;
  v36 = v19;
  v31 = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100004AE4;
  v34 = &unk_100631F90;
  v20 = _Block_copy(&v31);
  swift_unknownObjectRetain();
  v21 = a4;

  [v16 addKeyframeWithRelativeStartTime:v20 relativeDuration:0.0 animations:v18];
  _Block_release(v20);
  v22 = *(a1 + v17);
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v23 + 24) = a5;
  *(v23 + 32) = a6;
  *(v23 + 40) = a7;
  v35 = sub_10026C56C;
  v36 = v23;
  v31 = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100004AE4;
  v34 = &unk_100631FE0;
  v24 = _Block_copy(&v31);
  v25 = v21;
  v26 = a5;

  [v16 addKeyframeWithRelativeStartTime:v24 relativeDuration:0.0 animations:v22];
  _Block_release(v24);
  v27 = *(a1 + v17);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  v35 = sub_10026C578;
  v36 = v28;
  v31 = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_100004AE4;
  v34 = &unk_100632030;
  v29 = _Block_copy(&v31);
  v30 = v26;

  [v16 addKeyframeWithRelativeStartTime:v29 relativeDuration:v27 animations:a8];
  _Block_release(v29);
}

void sub_10026C210(void *a1, void *a2)
{
  v5 = [a1 view];
  if (v5)
  {
    [a2 frame];
    v4 = v3;
    [a2 frame];
    [v5 setFrame:v4];
  }

  else
  {
    __break(1u);
  }
}

id sub_10026C300()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMCardPresentedRegularTransition();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10026C3AC(uint64_t a1, uint64_t a2, id a3, void *a4)
{
  [a3 bounds];
  CGRectGetWidth(v14);
  [a3 bounds];
  CGRectGetHeight(v15);
  v12 = [a4 view];
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(a1, a2, a4, ObjectType, a2);
  if (v12)
  {
    v9 = v12;
    [a3 frame];
    v11 = v10;
    [a3 frame];
    [v9 setFrame:v11];
  }

  [a3 setAlpha:0.0];
  [a3 setHidden:1];
}

uint64_t sub_10026C50C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(v1, v2, v3, ObjectType, v2);
}

uint64_t sub_10026C5A8()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v59[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __chkstk_darwin(v3);
  v8 = &v59[-v7];
  v9 = __chkstk_darwin(v6);
  v11 = &v59[-v10];
  __chkstk_darwin(v9);
  v13 = &v59[-v12];
  v14 = *(v0 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_sharingDefaults);
  if (!v14)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    if (!os_log_type_enabled(v25, v23))
    {
      goto LABEL_27;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64 = v27;
    *v26 = 136315138;
    v28 = "down our onboarding.";
    v29 = 0xD000000000000069;
    goto LABEL_26;
  }

  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 BOOLForKey:v15];

  if (v16)
  {
    v17 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    v19 = Logger.logObject.getter();
    if (os_log_type_enabled(v19, v17))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v64 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100005B4C(0xD00000000000003BLL, 0x800000010058AD80, &v64);
      _os_log_impl(&_mh_execute_header, v19, v17, "FMAccessoryDiscoveryCoordinator: %s", v20, 0xCu);
      sub_100006060(v21);
    }

    return 1;
  }

  v30 = String._bridgeToObjectiveC()();
  [v14 doubleForKey:v30];
  v32 = v31;

  if (v32 <= 0.0)
  {
    v23 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    sub_100005B14(v56, qword_1006D4630);
    v25 = Logger.logObject.getter();
    if (!os_log_type_enabled(v25, v23))
    {
      goto LABEL_27;
    }

    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v64 = v27;
    *v26 = 136315138;
    v28 = "latestTimestampForVisibleEduUI";
    v29 = 0xD000000000000057;
LABEL_26:
    *(v26 + 4) = sub_100005B4C(v29, v28 | 0x8000000000000000, &v64);
    _os_log_impl(&_mh_execute_header, v25, v23, "FMAccessoryDiscoveryCoordinator: %s", v26, 0xCu);
    sub_100006060(v27);

LABEL_27:

    return 0;
  }

  static Date.now.getter();
  Date.init(timeIntervalSinceReferenceDate:)();
  Date.timeIntervalSinceReferenceDate.getter();
  v34 = v33;
  v35 = *(v2 + 16);
  v35(v8, v11, v1);
  v35(v5, v13, v1);
  v36 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v37 = v34 - v32;
  v38 = type metadata accessor for Logger();
  v39 = sub_100005B14(v38, qword_1006D4630);
  v40 = Logger.logObject.getter();
  if (os_log_type_enabled(v40, v36))
  {
    v41 = swift_slowAlloc();
    v61 = v41;
    v42 = swift_slowAlloc();
    v62 = v42;
    *v41 = 136315138;
    v64 = 0;
    v65 = 0xE000000000000000;
    v66 = v42;
    v60 = v36;
    _StringGuts.grow(_:)(58);
    v43._countAndFlagsBits = 0xD000000000000029;
    v43._object = 0x800000010058AD50;
    String.append(_:)(v43);
    sub_10000A1E0(&qword_1006B8DF8, &type metadata accessor for Date);
    v63 = v39;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 0x3A776F6E20;
    v45._object = 0xE500000000000000;
    String.append(_:)(v45);
    v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v46);

    v47._countAndFlagsBits = 0x3A6666696420;
    v47._object = 0xE600000000000000;
    String.append(_:)(v47);
    Double.write<A>(to:)();
    v48 = sub_100005B4C(v64, v65, &v66);

    v49 = v61;
    *(v61 + 1) = v48;
    _os_log_impl(&_mh_execute_header, v40, v60, "FMAccessoryDiscoveryCoordinator: %s", v49, 0xCu);
    sub_100006060(v62);
  }

  v50 = *(v2 + 8);
  v50(v5, v1);
  v50(v8, v1);
  v51 = static os_log_type_t.default.getter();
  v52 = Logger.logObject.getter();
  v53 = os_log_type_enabled(v52, v51);
  if (v37 > 1.0)
  {
    if (v53)
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_100005B4C(0xD000000000000065, 0x800000010058ACE0, &v64);
      _os_log_impl(&_mh_execute_header, v52, v51, "FMAccessoryDiscoveryCoordinator: %s", v54, 0xCu);
      sub_100006060(v55);
    }

    v50(v11, v1);
    v50(v13, v1);
    return 1;
  }

  if (v53)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v64 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_100005B4C(0xD00000000000003ALL, 0x800000010058ACA0, &v64);
    _os_log_impl(&_mh_execute_header, v52, v51, "FMAccessoryDiscoveryCoordinator: %s", v57, 0xCu);
    sub_100006060(v58);
  }

  v50(v11, v1);
  v50(v13, v1);
  return 0;
}

id sub_10026CEB0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v0;
  v3 = String._bridgeToObjectiveC()();
  [v1 removeObserver:v2 name:v3 object:0];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for FMAccessoryDiscoveryCoordinator(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t sub_10026D14C(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v18 = *(v6 - 8);
  v19 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPAccessoryError();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100003E90();
  v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 16))(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v17;
  (*(v10 + 32))(v14 + v13, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_10027181C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006321A8;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A1E0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_10026D4D0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  __chkstk_darwin(v3);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for FMIPAccessoryError();
    (*(*(v8 - 8) + 16))(v5, a2, v8);
    swift_storeEnumTagMultiPayload();
    sub_10026E410(v5);

    return sub_10027172C(v5, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
  }

  return result;
}

id sub_10026D5EC()
{
  v0 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  if (os_log_type_enabled(v2, v0))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100005B4C(0xD000000000000064, 0x800000010058AB20, &v6);
    _os_log_impl(&_mh_execute_header, v2, v0, "FMAccessoryDiscoveryCoordinator: %s", v3, 0xCu);
    sub_100006060(v4);
  }

  return sub_10026D740(0);
}

id sub_10026D740(char a1)
{
  v2 = v1;
  v4 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100005B4C(0xD000000000000038, 0x800000010058A8E0, &v10);
    _os_log_impl(&_mh_execute_header, v6, v4, "FMAccessoryDiscoveryCoordinator: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  [*&v2[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_presenter] dismissViewControllerAnimated:a1 & 1 completion:0];

  return [v2 proxCardFlowDidDismiss];
}

uint64_t sub_10026D908(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v65 = *(v69 - 8);
  __chkstk_darwin(v69);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10007EBC0(&qword_1006B8DC0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v59 - v11;
  v60 = type metadata accessor for FMIPDiscoveredAccessory();
  v61 = *(v60 - 8);
  v13 = __chkstk_darwin(v60);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v59 - v16;
  v18 = sub_10007EBC0(&qword_1006B8DC8);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = (&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v23 = &v59 - v22;
  v67 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  v62 = *(v67 - 8);
  v24 = *(v62 + 64);
  v25 = __chkstk_darwin(v67);
  v63 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v70 = (&v59 - v26);
  swift_beginAccess();
  v68 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v41 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State(0);
    (*(*(v41 - 8) + 56))(v23, 1, 1, v41);
    return sub_100012DF0(v23, &qword_1006B8DC8);
  }

  v28 = Strong;
  v59 = v4;
  v29 = v3;
  v30 = OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_state;
  swift_beginAccess();
  sub_100271654(v28 + v30, v23, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);

  v31 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State(0);
  (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
  sub_1002716BC(v23, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    v21 = v70;
    v35 = v29;
    v42 = v68;
    v43 = v69;
    if (*(v71 + 16) == 1)
    {
      sub_1000F06F4(v71, v10);
      v44 = v61;
      v45 = v60;
      if ((*(v61 + 48))(v10, 1, v60) != 1)
      {
        (*(v44 + 32))(v15, v10, v45);
        FMIPDiscoveredAccessory.identifier.getter();
        (*(v44 + 8))(v15, v45);
        goto LABEL_20;
      }

      sub_100012DF0(v10, &qword_1006B8DC0);
    }

    *v21 = 0;
    v46 = enum case for FMIPAccessoryError.unknownDiscoveryError(_:);
    v47 = type metadata accessor for FMIPAccessoryError();
    (*(*(v47 - 8) + 104))(v21, v46, v47);
LABEL_20:
    swift_storeEnumTagMultiPayload();
    sub_100003E90();
    v52 = static OS_dispatch_queue.main.getter();
    v53 = v63;
    sub_100271654(v21, v63, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
    v54 = (*(v62 + 80) + 24) & ~*(v62 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = v42;
    sub_10027178C(v53, v55 + v54);
    aBlock[4] = sub_1002717F0;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100632158;
    v56 = _Block_copy(aBlock);

    v57 = v64;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A1E0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v58 = v66;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v56);

    (*(v59 + 8))(v58, v35);
    (*(v65 + 8))(v57, v43);
    v48 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event;
    return sub_10027172C(v21, v48);
  }

  v33 = v71;
  if (EnumCaseMultiPayload == 5)
  {
    v34 = *(v71 + 16);
    v35 = v29;
    v21 = v70;
    v36 = v61;
    if (v34 == 1)
    {
      sub_1000F06F4(v71, v12);
      v37 = v60;
      if ((*(v36 + 48))(v12, 1, v60) != 1)
      {
        v51 = *(v36 + 32);
        v51(v17, v12, v37);
        v51(v21, v17, v37);
LABEL_18:
        v42 = v68;
        v43 = v69;
        goto LABEL_20;
      }

      sub_100012DF0(v12, &qword_1006B8DC0);
      v34 = *(v33 + 16);
    }

    if (v34 < 2)
    {
      *v21 = 0;
      v49 = enum case for FMIPAccessoryError.unknownDiscoveryError(_:);
      v50 = type metadata accessor for FMIPAccessoryError();
      (*(*(v50 - 8) + 104))(v21, v49, v50);
    }

    else
    {
      v38 = sub_10008CBA0(v34, 0);
      v39 = sub_1004A2ED8(aBlock, &v38[(*(v36 + 80) + 32) & ~*(v36 + 80)], v34, v33);

      result = sub_10000BEC8();
      if (v39 != v34)
      {
        __break(1u);
        return result;
      }

      v21 = v70;
      *v70 = v38;
    }

    goto LABEL_18;
  }

  v48 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State;
  return sub_10027172C(v21, v48);
}

void sub_10026E258(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10026E410(a2);
  }
}

uint64_t sub_10026E2B4()
{
  v1 = v0;
  v2 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  v4 = Logger.logObject.getter();
  if (os_log_type_enabled(v4, v2))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100005B4C(0xD000000000000022, 0x800000010058AAF0, &v9);
    _os_log_impl(&_mh_execute_header, v4, v2, "FMAccessoryDiscoveryCoordinator: %s", v5, 0xCu);
    sub_100006060(v6);
  }

  v7 = (v1 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_initialEvent);

  return sub_10026E410(v7);
}

uint64_t sub_10026E410(void (*a1)(char *, uint64_t, uint64_t))
{
  v2 = v1;
  v151 = type metadata accessor for FMIPAccessoryError();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v141 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10007EBC0(&unk_1006BEF30);
  __chkstk_darwin(v5 - 8);
  v140 = &v136 - v6;
  v153 = type metadata accessor for UUID();
  v158 = *(v153 - 8);
  v7 = __chkstk_darwin(v153);
  v139 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = v8;
  __chkstk_darwin(v7);
  v159 = (&v136 - v9);
  v154 = type metadata accessor for FMIPDiscoveredAccessory();
  v157 = *(v154 - 8);
  v10 = __chkstk_darwin(v154);
  v138 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v142 = &v136 - v13;
  __chkstk_darwin(v12);
  v156 = &v136 - v14;
  Strong = type metadata accessor for FMAccessoryDiscoveryCoordinator.State(0);
  v15 = __chkstk_darwin(Strong);
  v17 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v136 - v18;
  v20 = sub_10007EBC0(&qword_1006B8DE0);
  __chkstk_darwin(v20);
  v22 = &v136 - v21;
  v23 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  v24 = __chkstk_darwin(v23);
  v149 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v147 = &v136 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = &v136 - v29;
  v30 = __chkstk_darwin(v28);
  v146 = &v136 - v31;
  v32 = __chkstk_darwin(v30);
  v145 = &v136 - v33;
  v34 = __chkstk_darwin(v32);
  v144 = &v136 - v35;
  __chkstk_darwin(v34);
  v37 = &v136 - v36;
  v160 = a1;
  sub_100271654(a1, &v136 - v36, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
  v38 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v143 = sub_100005B14(v39, qword_1006D4630);
  v40 = Logger.logObject.getter();
  if (os_log_type_enabled(v40, v38))
  {
    v41 = swift_slowAlloc();
    v152 = v1;
    v155 = v22;
    v42 = v41;
    v43 = swift_slowAlloc();
    v136 = v17;
    v44 = v43;
    v169 = v43;
    *v42 = 136315138;
    aBlock = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    v45._object = 0x800000010057F430;
    v45._countAndFlagsBits = 0xD000000000000010;
    String.append(_:)(v45);
    _print_unlocked<A, B>(_:_:)();
    v46 = v19;
    v47 = sub_100005B4C(aBlock, v164, &v169);

    *(v42 + 4) = v47;
    v19 = v46;
    _os_log_impl(&_mh_execute_header, v40, v38, "FMAccessoryDiscoveryCoordinator: %s", v42, 0xCu);
    sub_100006060(v44);
    v17 = v136;

    v22 = v155;
    v2 = v152;
  }

  sub_10027172C(v37, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
  v48 = OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_state;
  swift_beginAccess();
  v49 = *(v20 + 48);
  sub_100271654(&v2[v48], v22, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
  sub_100271654(v160, &v22[v49], type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_100271654(&v22[v49], v144, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
        v51 = swift_getEnumCaseMultiPayload();
        if (v51 == 2 || v51 == 3)
        {
          goto LABEL_39;
        }

        goto LABEL_31;
      }

      v78 = v145;
      sub_100271654(&v22[v49], v145, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_22;
      }

LABEL_28:
      v52 = v78;
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v78 = v146;
      sub_100271654(&v22[v49], v146, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
LABEL_22:
        v80 = v156;
        v79 = v157;
        v81 = v154;
        (*(v157 + 32))(v156, v78, v154);
        (*(v79 + 16))(v19, v80, v81);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100271A8C(v19, &v2[v48]);
        swift_endAccess();
        sub_100271654(&v2[v48], v17, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
        sub_10026FEB8(v17);
        sub_10027172C(v17, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
        sub_10027172C(v19, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
        (*(v79 + 8))(v80, v81);
        goto LABEL_40;
      }

      goto LABEL_28;
    }

    if (swift_getEnumCaseMultiPayload() == 5)
    {
LABEL_39:
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();
      sub_100271A8C(v19, &v2[v48]);
      swift_endAccess();
      sub_100271654(&v2[v48], v17, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
      sub_10026FEB8(v17);
      sub_10027172C(v17, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
      sub_10027172C(v19, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
      goto LABEL_40;
    }

LABEL_31:
    sub_10027172C(&v22[v49], type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
    v73 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State;
    v74 = v22;
    return sub_10027172C(v74, v73);
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v75 = v149;
      sub_100271654(&v22[v49], v149, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v89 = v150;
        v90 = v141;
        v91 = v75;
        v92 = v151;
        (*(v150 + 32))(v141, v91, v151);
        (*(v89 + 16))(v19, v90, v92);
        swift_storeEnumTagMultiPayload();
        swift_beginAccess();
        sub_100271A8C(v19, &v2[v48]);
        swift_endAccess();
        sub_100271654(&v2[v48], v17, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
        sub_10026FEB8(v17);
        sub_10027172C(v17, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
        sub_10027172C(v19, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
        (*(v89 + 8))(v90, v92);
        sub_10027172C(&v22[v49], type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
        v74 = v22;
        v73 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State;
        return sub_10027172C(v74, v73);
      }

      v76 = *(v150 + 8);
      v77 = v151;
      v76(v22, v151);
      v76(v75, v77);
LABEL_40:
      v73 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event;
      v74 = &v22[v49];
      return sub_10027172C(v74, v73);
    }

    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_39;
    }

    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v52 = v148;
    sub_100271654(&v22[v49], v148, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_29:
      sub_100012DF0(v52, &unk_1006B8DE8);
      goto LABEL_31;
    }

    v53 = v156;
    v54 = v157;
    v160 = *(v157 + 32);
    v55 = v154;
    v160(v156, v52, v154);
    Strong = swift_unknownObjectWeakLoadStrong();
    v153 = *&v2[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_presenter];
    v158 = *&v2[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_mediator];
    v151 = *&v2[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_discoveryController];
    v56 = *(v54 + 16);
    v57 = v142;
    v56(v142, v53, v55);
    v159 = type metadata accessor for FMAccessoryPairingCoordinator(0);
    v58 = objc_allocWithZone(v159);
    v155 = v22;
    v59 = v58;
    *&v58[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_devicesSubscription] = 0;
    Date.init()();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v59[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v152 = v2;
    type metadata accessor for FMAccessoryPairingCoordinator.State(0);
    swift_storeEnumTagMultiPayload();
    v56(&v59[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_accessory], v57, v55);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v60 = v151;
    *&v59[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_pairingController] = v151;
    *&v59[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_mediator] = v158;
    v61 = v138;
    v56(v138, v57, v55);
    type metadata accessor for FMAccessoryPairingWatchdog(0);
    v62 = swift_allocObject();
    v63 = OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_state;
    v64 = sub_10007EBC0(&qword_1006B3020);
    (*(*(v64 - 8) + 56))(v62 + v63, 1, 3, v64);
    v65 = (v62 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pendingFinalizeContext);
    *v65 = 0u;
    v65[1] = 0u;
    v65[2] = 0u;
    *(v62 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_pairingController) = v60;
    v160((v62 + OBJC_IVAR____TtC6FindMy26FMAccessoryPairingWatchdog_accessory), v61, v55);
    *&v59[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_pairingWatchdog] = v62;
    v162.receiver = v59;
    v162.super_class = v159;
    swift_retain_n();

    v66 = objc_msgSendSuper2(&v162, "init");
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = v66;

    v68 = dispatch thunk of FMIPAccessoryDiscoveryController.callbacks.modify();
    FMIPAccessoryDiscoveryController.Callbacks.errorHandler.setter();
    v68(&aBlock, 0);

    v69 = *(v157 + 8);
    v69(v142, v55);

    sub_100123CF0();

    v69(v156, v55);
    v70 = *&v152[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_pairingCoordinator];
    *&v152[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_pairingCoordinator] = v66;
    v71 = v67;

    *&v71[OBJC_IVAR____TtC6FindMy29FMAccessoryPairingCoordinator_delegate + 8] = &off_1006320E8;
    swift_unknownObjectWeakAssign();

    v72 = v155;
    v69(v155, v55);
    v73 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event;
    v74 = &v72[v49];
  }

  else
  {
    v82 = v147;
    sub_100271654(&v22[v49], v147, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
    v83 = *(v158 + 32);
    v84 = v153;
    v83(v159, v82, v153);
    if (*&v2[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_onboardingCoordinator])
    {
      v85 = static os_log_type_t.default.getter();
      v86 = Logger.logObject.getter();
      if (os_log_type_enabled(v86, v85))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        aBlock = v88;
        *v87 = 136315138;
        *(v87 + 4) = sub_100005B4C(0xD000000000000047, 0x800000010058AAA0, &aBlock);
        _os_log_impl(&_mh_execute_header, v86, v85, "FMAccessoryDiscoveryCoordinator: %s", v87, 0xCu);
        sub_100006060(v88);
      }

      (*(v158 + 8))(v159, v84);
      goto LABEL_31;
    }

    v155 = v22;
    v93 = sub_10026C5A8();
    v94 = static os_log_type_t.default.getter();
    v95 = Logger.logObject.getter();
    v96 = os_log_type_enabled(v95, v94);
    if (v93)
    {
      if (v96)
      {
        v97 = swift_slowAlloc();
        v98 = v2;
        v99 = swift_slowAlloc();
        aBlock = v99;
        *v97 = 136315138;
        *(v97 + 4) = sub_100005B4C(0xD000000000000049, 0x800000010058AA50, &aBlock);
        _os_log_impl(&_mh_execute_header, v95, v94, "FMAccessoryDiscoveryCoordinator: %s", v97, 0xCu);
        sub_100006060(v99);
        v2 = v98;
      }

      v100 = *&v2[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_presenter];
      v101 = [v100 presentedViewController];
      if (!v101)
      {
        v101 = v100;
      }

      v102 = type metadata accessor for TaskPriority();
      (*(*(v102 - 8) + 56))(v140, 1, 1, v102);
      v103 = v158;
      (*(v158 + 16))(v139, v159, v84);
      type metadata accessor for MainActor();
      v104 = v101;
      Strong = v2;
      v105 = static MainActor.shared.getter();
      v106 = (*(v103 + 80) + 40) & ~*(v103 + 80);
      v107 = (v137 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
      v108 = swift_allocObject();
      v108[2] = v105;
      v108[3] = &protocol witness table for MainActor;
      v108[4] = v104;
      v83((v108 + v106), v139, v84);
      *(v108 + v107) = Strong;
      sub_100170C90(0, 0, v140, &unk_10055AEF0, v108);

      (*(v103 + 8))(v159, v84);
    }

    else
    {
      v152 = v2;
      if (v96)
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        aBlock = v111;
        *v110 = 136315138;
        *(v110 + 4) = sub_100005B4C(0xD000000000000067, 0x800000010058A9E0, &aBlock);
        _os_log_impl(&_mh_execute_header, v95, v94, "FMAccessoryDiscoveryCoordinator: %s", v110, 0xCu);
        sub_100006060(v111);
      }

      v112 = objc_opt_self();
      v113 = [v112 mainBundle];
      v170._object = 0x80000001005797A0;
      v114._countAndFlagsBits = 0xD000000000000028;
      v114._object = 0x800000010058A980;
      v115.value._object = 0x8000000100579780;
      v170._countAndFlagsBits = 0xD000000000000015;
      v115.value._countAndFlagsBits = 0xD000000000000010;
      v116._countAndFlagsBits = 0;
      v116._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v114, v115, v113, v116, v170);

      v117 = [v112 mainBundle];
      v171._object = 0x80000001005797A0;
      v118._countAndFlagsBits = 0xD00000000000002BLL;
      v118._object = 0x800000010058A9B0;
      v119.value._object = 0x8000000100579780;
      v171._countAndFlagsBits = 0xD000000000000015;
      v119.value._countAndFlagsBits = 0xD000000000000010;
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v118, v119, v117, v120, v171);

      v121 = String._bridgeToObjectiveC()();

      v122 = String._bridgeToObjectiveC()();

      v123 = [objc_opt_self() alertControllerWithTitle:v121 message:v122 preferredStyle:1];

      v124 = [v112 mainBundle];
      v172._object = 0x8000000100579B60;
      v125._countAndFlagsBits = 0x4F545455425F4B4FLL;
      v125._object = 0xEF454C5449545F4ELL;
      v172._countAndFlagsBits = 0xD000000000000021;
      v126._countAndFlagsBits = 0;
      v126._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v125, 0, v124, v126, v172);

      v127 = swift_allocObject();
      v128 = v152;
      swift_unknownObjectWeakInit();

      v129 = String._bridgeToObjectiveC()();

      v167 = sub_100271AF0;
      v168 = v127;
      aBlock = _NSConcreteStackBlock;
      v164 = 1107296256;
      v165 = sub_100017328;
      v166 = &unk_1006321D0;
      v130 = _Block_copy(&aBlock);

      v131 = [objc_opt_self() actionWithTitle:v129 style:1 handler:v130];
      _Block_release(v130);

      [v123 addAction:v131];
      v132 = *&v128[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_presenter];
      v133 = [v132 presentedViewController];
      if (!v133)
      {
        v133 = v132;
      }

      v134 = v133;
      [v133 presentViewController:v123 animated:1 completion:0];

      (*(v158 + 8))(v159, v153);
    }

    v135 = v155;
    sub_10027172C(&v155[v49], type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
    v73 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State;
    v74 = v135;
  }

  return sub_10027172C(v74, v73);
}

void sub_10026FC14()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10026D740(1);
  }
}

uint64_t sub_10026FC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for UUID();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10026FD64, v9, v8);
}

uint64_t sub_10026FD64()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  (*(v3 + 16))(v1, v5, v2);
  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() imageNamed:v7];

  v9 = objc_allocWithZone(type metadata accessor for DiscoveredAccessory());
  DiscoveredAccessory.init(identifier:productType:productImage:)();
  v10 = objc_allocWithZone(type metadata accessor for AccessoryOnboardingCoordinator());
  v11 = v6;
  v12 = AccessoryOnboardingCoordinator.init(presenter:accessory:)();
  swift_unknownObjectRetain();
  AccessoryOnboardingCoordinator.delegate.setter();
  AccessoryOnboardingCoordinator.start()();
  v13 = *(v4 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_onboardingCoordinator);
  *(v4 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_onboardingCoordinator) = v12;

  v14 = v0[1];

  return v14();
}

void sub_10026FEB8(uint64_t a1)
{
  v2 = type metadata accessor for FMAccessoryDiscoveryAndPairingFailedCard.ViewModel();
  __chkstk_darwin(v2);
  v79 = &v69[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = type metadata accessor for FMIPAccessoryError();
  v80 = *(v72 - 8);
  __chkstk_darwin(v72);
  v78 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard.ViewModel(0);
  v5 = __chkstk_darwin(v73);
  v7 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v76 = &v69[-v8];
  v77 = type metadata accessor for FMIPDiscoveredAccessory();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v74 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v69[-v14];
  sub_100271654(a1, &v69[-v14], type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
  v16 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  v18 = Logger.logObject.getter();
  if (os_log_type_enabled(v18, v16))
  {
    v19 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v82 = v71;
    *v19 = 136315138;
    v86 = 0;
    v87 = 0xE000000000000000;
    v70 = v16;
    _StringGuts.grow(_:)(22);
    v20._object = 0x800000010057F3F0;
    v20._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v20);
    _print_unlocked<A, B>(_:_:)();
    v21 = v13;
    v22 = a1;
    v23 = v7;
    v24 = v2;
    v25 = sub_100005B4C(v86, v87, &v82);

    *(v19 + 4) = v25;
    v2 = v24;
    v7 = v23;
    a1 = v22;
    v13 = v21;
    _os_log_impl(&_mh_execute_header, v18, v70, "FMAccessoryDiscoveryCoordinator: %s", v19, 0xCu);
    sub_100006060(v71);
  }

  sub_10027172C(v15, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
  sub_100271654(a1, v13, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        v64 = v81;
        v65 = *(*&v81[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_mediator] + 64);
        v66 = *&v81[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_discoveryController];
        v67 = objc_allocWithZone(type metadata accessor for FMAccessoryDiscoveryFoundMultipleCard());
        swift_retain_n();
        swift_retain_n();
        v40 = sub_10033CC8C(v64, v65, v66);
        swift_allocObject();
        swift_unknownObjectWeakInit();

        v68 = dispatch thunk of FMIPAccessoryDiscoveryController.callbacks.modify();
        FMIPAccessoryDiscoveryController.Callbacks.errorHandler.setter();
        v68(&v86, 0);

        sub_1002709B4(v40);

        goto LABEL_20;
      }

      dispatch thunk of FMIPAccessoryDiscoveryController.startDiscovery(localFindable:completion:)();
      v47 = [objc_opt_self() defaultCenter];
      v48 = String._bridgeToObjectiveC()();
      [v47 postNotificationName:v48 object:0 userInfo:0 deliverImmediately:1];

      v49 = type metadata accessor for FMAccessoryDiscoveryAttachCard();
      v50 = objc_allocWithZone(v49);
      v51 = OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageViewContainer;
      *&v50[v51] = [objc_allocWithZone(UIView) init];
      v52 = OBJC_IVAR____TtC6FindMy30FMAccessoryDiscoveryAttachCard_imageView;
      *&v50[v52] = [objc_allocWithZone(UIImageView) init];
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v85.receiver = v50;
      v85.super_class = v49;
      v45 = objc_msgSendSuper2(&v85, "initWithContentView:", 0);
      v46 = v45;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v36 = v81;
        v37 = *&v81[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_mediator];
        v38 = objc_allocWithZone(type metadata accessor for FMAccessoryDiscoveryItemSearchingCard());

        v39 = v36;
        v40 = sub_1003F38DC(v36, v37);

        sub_1002709B4(v40);
LABEL_20:

        return;
      }

      dispatch thunk of FMIPAccessoryDiscoveryController.startDiscovery(localFindable:completion:)();
      v62 = type metadata accessor for FMAccessoryDiscoverySearchingCard();
      v63 = objc_allocWithZone(v62);
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      v84.receiver = v63;
      v84.super_class = v62;
      v45 = objc_msgSendSuper2(&v84, "initWithContentView:", 0);
      v46 = v45;
    }

LABEL_18:
    sub_1002709B4(v45);

    return;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return;
    }

    v41 = type metadata accessor for FMAccessoryDiscoveryFlowSelectionCard();
    v42 = objc_allocWithZone(v41);
    v43 = OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageViewContainer;
    *&v42[v43] = [objc_allocWithZone(UIView) init];
    v44 = OBJC_IVAR____TtC6FindMy37FMAccessoryDiscoveryFlowSelectionCard_imageView;
    *&v42[v44] = [objc_allocWithZone(UIImageView) init];
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v83.receiver = v42;
    v83.super_class = v41;
    v45 = objc_msgSendSuper2(&v83, "initWithContentView:", 0);
    v46 = v45;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    v53 = v80;
    v54 = v78;
    v55 = v72;
    (*(v80 + 32))(v78, v13, v72);
    v56 = v79;
    (*(v53 + 16))(v79, v54, v55);
    v57 = *(v2 + 20);
    v58 = type metadata accessor for URL();
    (*(*(v58 - 8) + 56))(v56 + v57, 1, 1, v58);
    v59 = type metadata accessor for FMAccessoryDiscoveryFailedCard();
    v60 = objc_allocWithZone(v59);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v88.receiver = v60;
    v88.super_class = v59;
    v61 = objc_msgSendSuper2(&v88, "initWithContentView:", 0);
    [v61 setDismissalType:3];
    sub_100249568(v56);
    sub_10024995C(v56);
    sub_10027172C(v56, type metadata accessor for FMAccessoryDiscoveryAndPairingFailedCard.ViewModel);
    sub_1002709B4(v61);

    (*(v53 + 8))(v54, v55);
  }

  else
  {
    v27 = v75;
    v28 = v13;
    v29 = v74;
    v30 = v77;
    (*(v75 + 32))(v74, v28, v77);
    v31 = v81;
    dispatch thunk of FMIPAccessoryDiscoveryController.stopDiscovery(localFindable:completion:)();
    v32 = v76;
    (*(v27 + 16))(v76, v29, v30);
    *(v32 + *(v73 + 20)) = *(*&v31[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_mediator] + 64);
    sub_100271654(v32, v7, type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard.ViewModel);
    v33 = objc_allocWithZone(type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard(0));
    v34 = v31;

    v35 = sub_10049007C(v34, v7);

    sub_1002709B4(v35);
    sub_10027172C(v32, type metadata accessor for FMAccessoryDiscoveryAccessoryConfirmationCard.ViewModel);
    (*(v27 + 8))(v29, v30);
  }
}

uint64_t sub_1002709B4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);
  v6 = Logger.logObject.getter();
  if (os_log_type_enabled(v6, v4))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v20 = v8;
    _StringGuts.grow(_:)(27);

    v9 = [v3 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14 = sub_100005B4C(0xD000000000000019, 0x800000010057F410, &v20);

    *(v7 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v4, "FMAccessoryDiscoveryCoordinator: %s", v7, 0xCu);
    sub_100006060(v8);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong navigationController];
    if (v17)
    {
      v18 = v17;
      [v17 pushViewController:v3 animated:1];
    }
  }

  else
  {
    v16 = [*(v2 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_presenter) presentProxCardFlowWithDelegate:v2 initialViewController:v3];
  }

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100270C50()
{
  result = type metadata accessor for FMAccessoryDiscoveryCoordinator.State(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_100270D78()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006B8DD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22[-v3];
  v5 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State(0);
  __chkstk_darwin(v5);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);
  v10 = Logger.logObject.getter();
  if (os_log_type_enabled(v10, v8))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005B4C(0xD000000000000037, 0x800000010058A920, v23);
    _os_log_impl(&_mh_execute_header, v10, v8, "FMAccessoryDiscoveryCoordinator: %s", v11, 0xCu);
    sub_100006060(v12);
  }

  v13 = *(v1 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_pairingCoordinator);
  if (v13)
  {
    [v13 proxCardFlowDidDismiss];
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1004857CC();
    swift_unknownObjectRelease();
  }

  v14 = OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_state;
  swift_beginAccess();
  sub_100271654(v1 + v14, v7, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    dispatch thunk of FMIPAccessoryDiscoveryController.stopDiscovery(localFindable:completion:)();
  }

  else
  {
    dispatch thunk of FMIPAccessoryDiscoveryController.stopDiscovery(localFindable:completion:)();
    sub_10027172C(v7, type metadata accessor for FMAccessoryDiscoveryCoordinator.State);
  }

  v15 = *(v1 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_onboardingCoordinator);
  *(v1 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_onboardingCoordinator) = 0;

  v16 = [objc_opt_self() defaultCenter];
  v17 = String._bridgeToObjectiveC()();
  [v16 postNotificationName:v17 object:0 userInfo:0 deliverImmediately:1];

  v18 = *(*(v1 + OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_mediator) + 56);
  v19 = type metadata accessor for FMSelectionPendingAction(0);
  (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
  v20 = OBJC_IVAR____TtC6FindMy21FMSelectionController_pendingAction;
  swift_beginAccess();

  sub_10008EC74(v4, v18 + v20);
  swift_endAccess();
}

void sub_100271210()
{
  sub_100029DBC(319, &qword_1006B8CC0, &type metadata accessor for FMIPDiscoveredAccessory);
  if (v0 <= 0x3F)
  {
    sub_100029DBC(319, &qword_1006B8CE0, &type metadata accessor for FMIPAccessoryError);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

unint64_t sub_1002712C0()
{
  result = qword_1006B8DB8;
  if (!qword_1006B8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B8DB8);
  }

  return result;
}

id sub_100271314(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_pairingCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_onboardingCoordinator] = 0;
  v9 = OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_sharingDefaults;
  v10 = objc_allocWithZone(NSUserDefaults);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithSuiteName:v11];

  *&v4[v9] = v12;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for FMAccessoryDiscoveryCoordinator.State(0);
  swift_storeEnumTagMultiPayload();
  *&v4[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_mediator] = a2;
  *&v4[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_discoveryController] = a3;
  *&v4[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_presenter] = a1;
  sub_100271654(a4, &v4[OBJC_IVAR____TtC6FindMy31FMAccessoryDiscoveryCoordinator_initialEvent], type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
  v22.receiver = v4;
  v22.super_class = type metadata accessor for FMAccessoryDiscoveryCoordinator(0);

  v13 = a1;
  v14 = objc_msgSendSuper2(&v22, "init");
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = v14;

  v16 = dispatch thunk of FMIPAccessoryDiscoveryController.callbacks.modify();
  FMIPAccessoryDiscoveryController.Callbacks.errorHandler.setter();
  v16(v21, 0);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = dispatch thunk of FMIPAccessoryDiscoveryController.callbacks.modify();
  FMIPAccessoryDiscoveryController.Callbacks.discoveredAccessoriesCallback.setter();
  v17(v21, 0);

  v18 = [objc_opt_self() defaultCenter];
  v19 = String._bridgeToObjectiveC()();
  [v18 addObserver:v15 selector:"systemOnboardingStarted" name:v19 object:0];

  sub_10027172C(a4, type metadata accessor for FMAccessoryDiscoveryCoordinator.Event);
  return v15;
}

uint64_t sub_100271654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002716BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B8DC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027172C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10027178C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryDiscoveryCoordinator.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100271848(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

id sub_1002718C8()
{
  v0 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100005B14(v1, qword_1006D4630);
  v2 = Logger.logObject.getter();
  if (os_log_type_enabled(v2, v0))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v8 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100005B4C(0xD00000000000003FLL, 0x800000010058A8A0, &v8);
    _os_log_impl(&_mh_execute_header, v2, v0, "FMAccessoryDiscoveryCoordinator: %s", v3, 0xCu);
    sub_100006060(v4);
  }

  v5 = [objc_opt_self() defaultCenter];
  v6 = String._bridgeToObjectiveC()();
  [v5 postNotificationName:v6 object:0 userInfo:0 deliverImmediately:1];

  return sub_10026D740(1);
}

uint64_t sub_100271A8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryDiscoveryCoordinator.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100271AF8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000E3478;

  return sub_10026FC6C(a1, v6, v7, v8, v1 + v5, v9);
}

BOOL sub_100271C38()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  if ([v0 code] < 500)
  {
    return 0;
  }

  return [v0 code] < 600;
}

id sub_100271D20(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v6, v4, a1);
  }

  v7 = _convertErrorToNSError(_:)();

  v8 = [v7 code];

  return v8;
}

uint64_t sub_100271E80(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v6, v4, a1);
  }

  v7 = _convertErrorToNSError(_:)();

  v8 = [v7 domain];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v9;
}

BOOL sub_100272000(uint64_t a1)
{
  v2 = *(a1 - 8);
  __chkstk_darwin(a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v5, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v2 + 8))(v4, a1);
  }

  else
  {
    swift_allocError();
    (*(v2 + 32))(v6, v4, a1);
  }

  v7 = _convertErrorToNSError(_:)();

  v8 = sub_100271C38();

  return v8;
}

int64_t sub_100272224(char a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for FMPopOverController();
  result = objc_msgSendSuper2(&v9, "viewWillDisappear:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC6FindMy19FMPopOverController_selectionSubscription];
  if (v4)
  {
    v5 = *(*&v1[OBJC_IVAR____TtC6FindMy19FMPopOverController_mediator] + 56);
    swift_beginAccess();

    result = sub_1003CD53C((v5 + 16), v4);
    v6 = *(v5 + 16);
    if (v6 >> 62)
    {
      v8 = result;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      result = v8;
      if (v7 >= v8)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7 >= result)
      {
LABEL_4:
        sub_1003CD570(result, v7);
        swift_endAccess();
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1002724C0()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy19FMPopOverController_sideBarView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  sub_10007EBC0(&qword_1006AFC30);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = [v1 topAnchor];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = [v4 topAnchor];

  v7 = [v3 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v1 bottomAnchor];
  v9 = [v0 view];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v9;
  v11 = [v9 bottomAnchor];

  v12 = [v8 constraintEqualToAnchor:v11];
  *(v2 + 40) = v12;
  v13 = [v1 leadingAnchor];
  v14 = [v0 view];
  if (!v14)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v14;
  v16 = [v14 leadingAnchor];

  v17 = [v13 constraintEqualToAnchor:v16];
  *(v2 + 48) = v17;
  v18 = [v1 trailingAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v20 trailingAnchor];

  v23 = [v18 constraintEqualToAnchor:v22];
  *(v2 + 56) = v23;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v21 activateConstraints:isa];
}

void sub_1002727B0(void *a1)
{
  v2 = v1;
  v4 = [a1 view];
  if (!v4)
  {
    return;
  }

  v5 = v4;
  sub_10004184C();
  [v1 addChildViewController:a1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setPreservesSuperviewLayoutMargins:1];
  v6 = *&v1[OBJC_IVAR____TtC6FindMy19FMPopOverController_sideBarView + 8];
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 8))(ObjectType, v6);
  [v8 addSubview:v5];

  [a1 didMoveToParentViewController:v2];
  sub_10007EBC0(&qword_1006AFC30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1005521F0;
  v10 = [v5 topAnchor];
  v11 = [v2 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [v11 topAnchor];

  v14 = [v10 constraintEqualToAnchor:v13];
  *(v9 + 32) = v14;
  v15 = [v5 bottomAnchor];
  v16 = [v2 view];
  if (!v16)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = v16;
  v18 = [v16 bottomAnchor];

  v19 = [v15 constraintEqualToAnchor:v18];
  *(v9 + 40) = v19;
  v20 = [v5 leadingAnchor];
  v21 = [v2 view];
  if (!v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v9 + 48) = v24;
  v25 = [v5 trailingAnchor];
  v26 = [v2 view];
  if (!v26)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 trailingAnchor];

  v30 = [v25 constraintEqualToAnchor:v29];
  *(v9 + 56) = v30;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v28 activateConstraints:isa];
}

id sub_100272B9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPopOverController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100272C68(uint64_t a1)
{
  v3 = type metadata accessor for FMSelectedSection();
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100062074(a1, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v16 = objc_allocWithZone(type metadata accessor for FMItemDetailContentViewController(0));

      v15 = sub_1003A78F0(v17);

      *&v15[OBJC_IVAR____TtC6FindMy33FMItemDetailContentViewController_playSoundDelegate + 8] = &off_100627CA8;
      swift_unknownObjectWeakAssign();
      goto LABEL_7;
    case 2:
      v13 = objc_allocWithZone(type metadata accessor for FMPersonDetailContentViewController());

      v15 = sub_10013D9A0(v14);

LABEL_7:
      sub_1002727B0(v15);

      return sub_10005D4E4(v5);
    case 0:
      v7 = *(sub_10007EBC0(&qword_1006BEEE0) + 48);
      v8 = objc_allocWithZone(type metadata accessor for FMDeviceDetailContentViewController(0));

      v10 = sub_1001D81C0(v9);
      *&v10[OBJC_IVAR____TtC6FindMy35FMDeviceDetailContentViewController_playSoundDelegate + 8] = &off_100627C90;
      swift_unknownObjectWeakAssign();
      sub_1002727B0(v10);

      sub_10008228C(&v5[v7]);
      v11 = type metadata accessor for FMIPDevice();
      return (*(*(v11 - 8) + 8))(v5, v11);
  }

  [v1 dismissViewControllerAnimated:1 completion:0];
  return sub_10005D4E4(v5);
}

uint64_t sub_100272EAC()
{
  *(v0 + OBJC_IVAR____TtC6FindMy19FMPopOverController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC6FindMy19FMPopOverController_selectionSubscription) = 0;
  v8 = &type metadata for SolariumFeatureFlag;
  v9 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v7);
  if (v1)
  {
    v2 = type metadata accessor for FMSideBarViewModern();
    v3 = &off_100641718;
  }

  else
  {
    v2 = type metadata accessor for FMSideBarViewLegacy();
    v3 = &off_10063BC68;
  }

  v4 = [objc_allocWithZone(v2) init];
  v5 = (v0 + OBJC_IVAR____TtC6FindMy19FMPopOverController_sideBarView);
  *v5 = v4;
  v5[1] = v3;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002730C0(uint64_t result, char a2)
{
  v3 = v2 + qword_1006B8E88;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002730F4(uint64_t result, char a2)
{
  v3 = v2 + qword_1006B8E90;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

void sub_100273130()
{
  sub_100273510();
  sub_100273690();
  sub_100273BA4();

  sub_100273C8C();
}

uint64_t sub_100273160()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v7 = *((v2 & v1) + 0x50);
  *(v6 + 16) = v7;
  *(v6 + 24) = v5;
  v20 = sub_100274D18;
  v21 = v6;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10046DEDC;
  v19 = &unk_1006323C8;
  v8 = _Block_copy(&v16);

  v9 = [v4 addObserverForName:UIKeyboardWillHideNotification object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  *(v0 + qword_1006B8E78) = v9;
  swift_unknownObjectRelease();
  v10 = [v3 defaultCenter];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v11;
  v20 = sub_100274CEC;
  v21 = v12;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10046DEDC;
  v19 = &unk_100632418;
  v13 = _Block_copy(&v16);

  v14 = [v10 addObserverForName:UIKeyboardWillChangeFrameNotification object:0 queue:0 usingBlock:v13];
  _Block_release(v13);

  *(v0 + qword_1006B8E70) = v14;
  return swift_unknownObjectRelease();
}

void sub_100273400()
{
  v1 = *(v0 + qword_1006B8E78);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + qword_1006B8E70);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

void sub_100273510()
{
  v1 = [v0 contentView];
  v2 = objc_opt_self();
  v3 = [v2 systemBackgroundColor];
  [v1 setBackgroundColor:v3];

  v4 = [v0 contentView];
  [v4 addSubview:*&v0[qword_1006B8E48]];

  v5 = [v0 secondaryContentView];
  if (v5)
  {
    v6 = v5;
    v7 = [v2 systemBackgroundColor];
    [v6 setBackgroundColor:v7];
  }

  v8 = [v0 secondaryContentView];
  if (v8)
  {
    v9 = v8;
    [v8 addSubview:*&v0[qword_1006B8E50]];
  }
}

void sub_100273690()
{
  v1 = v0;
  v2 = *&v0[qword_1006B8E48];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[qword_1006B8E50];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005521F0;
  v6 = [v2 topAnchor];
  v7 = [v1 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8];
  *(v5 + 32) = v9;
  v10 = [v2 leadingAnchor];
  v11 = [v1 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12];
  *(v5 + 40) = v13;
  v14 = [v2 trailingAnchor];
  v15 = [v1 contentView];
  v16 = [v15 trailingAnchor];

  v17 = [v14 constraintEqualToAnchor:v16];
  *(v5 + 48) = v17;
  v18 = [v2 bottomAnchor];
  v19 = [v1 contentView];
  v20 = [v19 bottomAnchor];

  v21 = [v18 constraintEqualToAnchor:v20];
  *(v5 + 56) = v21;
  sub_10000905C(0, &qword_1006B3A70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  v23 = [v1 secondaryContentView];
  if (v23)
  {
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1005521F0;
    v26 = [v3 topAnchor];
    v27 = [v24 topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:32.0];

    *(v25 + 32) = v28;
    v29 = [v3 bottomAnchor];
    v30 = [v24 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];

    *(v25 + 40) = v31;
    v32 = [v3 leadingAnchor];
    v33 = [v24 leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    *(v25 + 48) = v34;
    v35 = [v3 trailingAnchor];
    v36 = [v24 trailingAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];

    *(v25 + 56) = v37;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v4 activateConstraints:v38];
  }
}

void sub_100273BA4()
{
  v1 = objc_allocWithZone(UIBarButtonItem);
  type metadata accessor for FMProductActionBaseViewController();
  v2 = [v1 initWithBarButtonSystemItem:1 target:_bridgeAnythingToObjectiveC<A>(_:)() action:"cancelActionWithSender:"];
  swift_unknownObjectRelease();
  v3 = [v0 navigationItem];
  [v3 setLeftBarButtonItem:v2];
}

void sub_100273C8C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];
  }

  else
  {
    __break(1u);
  }
}

void sub_100273D24()
{
  if (*(v0 + qword_1006B8E68) == 1)
  {
    v1 = [v0 scrollView];
    if (v1)
    {
      v2 = v1;
      [v1 flashScrollIndicators];

      *(v0 + qword_1006B8E68) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100273D98()
{
  v1 = v0;
  v2 = Notification.userInfo.getter();
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = sub_10004CC50(v50), (v5 & 1) == 0))
  {

    sub_10004CDB8(v50);
LABEL_17:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_18;
  }

  sub_100006004(*(v3 + 56) + 32 * v4, &v51);
  sub_10004CDB8(v50);

  if (!*(&v52 + 1))
  {
LABEL_18:
    sub_10000D2C0(&v51);
    return;
  }

  sub_10000905C(0, &unk_1006BC3F0);
  if (swift_dynamicCast())
  {
    v6 = v50[0];
    [v50[0] CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v1 view];
    if (v15)
    {
      v16 = v15;
      v17 = [v15 window];

      if (!v17 || (v18 = [v17 screen], v17, v19 = objc_msgSend(v18, "coordinateSpace"), v18, !v19))
      {
        v20 = [objc_opt_self() mainScreen];
        v19 = [v20 coordinateSpace];
      }

      v21 = [v1 scrollView];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 coordinateSpace];

        [v19 convertRect:v23 toCoordinateSpace:{v8, v10, v12, v14}];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;
        swift_unknownObjectRelease();
        v32 = [v1 scrollView];
        if (v32)
        {
          v33 = v32;
          [v32 bounds];
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v53.origin.x = v25;
          v53.origin.y = v27;
          v53.size.width = v29;
          v53.size.height = v31;
          v56.origin.x = v35;
          v56.origin.y = v37;
          v56.size.width = v39;
          v56.size.height = v41;
          if (!CGRectIntersectsRect(v53, v56))
          {
            swift_unknownObjectRelease();

            v49 = &v1[qword_1006B8E90];
            *v49 = 0;
            v49[8] = 1;
            v1[qword_1006B8E80] = 0;
            return;
          }

          if (v1[qword_1006B8E90 + 8] != 1)
          {

            swift_unknownObjectRelease();
            return;
          }

          v1[qword_1006B8E80] = 0;
          v42 = [v1 scrollView];
          if (v42)
          {
            v43 = v42;
            [v42 contentSize];
            v45 = v44;

            v46 = &v1[qword_1006B8E88];
            *v46 = v45;
            v46[8] = 0;
            v54.origin.x = v25;
            v54.origin.y = v27;
            v54.size.width = v29;
            v54.size.height = v31;
            *&v1[qword_1006B8E98] = CGRectGetMinY(v54);
            v55.origin.x = v25;
            v55.origin.y = v27;
            v55.size.width = v29;
            v55.size.height = v31;
            Height = CGRectGetHeight(v55);
            swift_unknownObjectRelease();

            v48 = &v1[qword_1006B8E90];
            *v48 = Height;
            *(v48 + 8) = 0;
            return;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }
}

void sub_100274198()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for FMProductActionBaseViewController();
  objc_msgSendSuper2(&v1, "viewDidLoad");
  sub_100273130();
}

void sub_1002741F8(void *a1)
{
  v1 = a1;
  sub_100274198();
}

void sub_100274260(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002744AC(a3, &selRef_viewDidAppear_, sub_100273D24);
}

void sub_1002742D0()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for FMProductActionBaseViewController();
  objc_msgSendSuper2(&v5, "viewLayoutMarginsDidChange");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 safeAreaInsets];
    v4 = v3;

    if (v4 == 0.0)
    {
      [v0 systemMinimumLayoutMargins];
      [v0 additionalSafeAreaInsets];
      [v0 setAdditionalSafeAreaInsets:?];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002743B4(void *a1)
{
  v1 = a1;
  sub_1002742D0();
}

void sub_10027441C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002744AC(a3, &selRef_viewWillAppear_, sub_100273160);
}

uint64_t sub_1002744AC(char a1, SEL *a2, uint64_t (*a3)(id))
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FMProductActionBaseViewController();
  v7 = objc_msgSendSuper2(&v9, *a2, a1 & 1);
  return a3(v7);
}

void sub_10027452C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1002744AC(a3, &selRef_viewWillDisappear_, sub_100273400);
}

void sub_10027459C()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for FMProductActionBaseViewController();
  objc_msgSendSuper2(&v18, "viewDidLayoutSubviews");
  if ((*(v0 + qword_1006B8E88 + 8) & 1) == 0)
  {
    if (*(v0 + qword_1006B8E90 + 8))
    {
      if (*(v0 + qword_1006B8E80))
      {
        return;
      }

      *(v0 + qword_1006B8E80) = 1;
      v1 = [v0 scrollView];
      if (v1)
      {
        v2 = v1;
        [v1 contentSize];
        [v2 setContentSize:?];

        v3 = [v0 scrollView];
        if (v3)
        {
          v4 = v3;
LABEL_12:
          [v4 contentInset];
          [v4 setContentInset:?];

          return;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v5 = [v0 scrollView];
      if (v5)
      {
        v6 = v5;
        [v5 contentSize];
        [v6 setContentSize:?];

        if (*(v0 + qword_1006B8E80))
        {
          return;
        }

        *(v0 + qword_1006B8E80) = 1;
        v7 = [v0 scrollView];
        if (v7)
        {
          v4 = v7;
          v8 = [v0 scrollView];
          if (v8)
          {
            v9 = v8;
            [v8 bounds];
            v11 = v10;
            v13 = v12;
            v15 = v14;
            v17 = v16;

            v19.origin.x = v11;
            v19.origin.y = v13;
            v19.size.width = v15;
            v19.size.height = v17;
            CGRectGetMaxY(v19);
            goto LABEL_12;
          }

LABEL_18:
          __break(1u);
          return;
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }
}

void sub_1002747E0(void *a1)
{
  v1 = a1;
  sub_10027459C();
}

void sub_100274828(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100274C88();
}

void sub_100274888()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100273D98();
  }
}

void sub_1002748E4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100274BC0();
}

uint64_t sub_100274944(void *a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  sub_100273D98();

  return (*(v3 + 8))(v5, v2);
}

void sub_100274A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;

  sub_100274CBC();
}

id sub_100274ABC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMProductActionBaseViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100274B18(uint64_t a1)
{

  sub_10001835C(*(a1 + qword_1006B8E60));
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

void sub_100274BC0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v3[4] = sub_1000822F4;
  v3[5] = v1;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100004AE4;
  v3[3] = &unk_100632350;
  v2 = _Block_copy(v3);

  [v0 dismissViewControllerAnimated:1 completion:v2];
  _Block_release(v2);
}

uint64_t PushAlert.body.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PushAlert.locKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *FMItemShareViewModel.image.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t FMItemShareViewModel.expiry.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FMItemShareViewModel() + 28);

  return sub_100274E34(v3, a1);
}

uint64_t type metadata accessor for FMItemShareViewModel()
{
  result = qword_1006B8F88;
  if (!qword_1006B8F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100274E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B0000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void FMItemShareViewModel.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  String.hash(into:)();
  String.hash(into:)();
  v9 = *(v0 + 32);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    v10 = v9;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v11 = type metadata accessor for FMItemShareViewModel();
  sub_100274E34(v1 + *(v11 + 28), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_10027564C(&qword_1006B1480, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int FMItemShareViewModel.hashValue.getter()
{
  Hasher.init(_seed:)();
  FMItemShareViewModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10027511C()
{
  Hasher.init(_seed:)();
  FMItemShareViewModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _s6FindMy20FMItemShareViewModelV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B0000);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_10007EBC0(&unk_1006B00E0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_14;
  }

  v30 = v7;
  v14 = v5;
  v15 = a1[4];
  v16 = a2[4];
  if (!v15)
  {
    if (!v16)
    {
      goto LABEL_10;
    }

LABEL_14:
    v24 = 0;
    return v24 & 1;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  sub_100152B54();
  v17 = v16;
  v18 = v15;
  v19 = static NSObject.== infix(_:_:)();

  if ((v19 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  v20 = *(type metadata accessor for FMItemShareViewModel() + 28);
  v21 = *(v11 + 48);
  sub_100274E34(a1 + v20, v13);
  sub_100274E34(a2 + v20, &v13[v21]);
  v22 = v14;
  v23 = *(v14 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    sub_100274E34(v13, v10);
    if (v23(&v13[v21], 1, v4) != 1)
    {
      v26 = *(v14 + 32);
      v27 = v30;
      v26(v30, &v13[v21], v4);
      sub_10027564C(&qword_1006C1DC0, &type metadata accessor for Date);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v22 + 8);
      v28(v27, v4);
      v28(v10, v4);
      sub_100012DF0(v13, &unk_1006B0000);
      return v24 & 1;
    }

    (*(v14 + 8))(v10, v4);
    goto LABEL_18;
  }

  if (v23(&v13[v21], 1, v4) != 1)
  {
LABEL_18:
    sub_100012DF0(v13, &unk_1006B00E0);
    v24 = 0;
    return v24 & 1;
  }

  sub_100012DF0(v13, &unk_1006B0000);
  v24 = 1;
  return v24 & 1;
}

void sub_100275580()
{
  sub_10002C17C(319, &qword_1006B1398, sub_100152B54);
  if (v0 <= 0x3F)
  {
    sub_10002C17C(319, &qword_1006B3F80, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10027564C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100275694()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultSessionConfiguration];
  [v1 setHTTPShouldUsePipelining:1];

  v2 = [v0 defaultSessionConfiguration];
  v3 = [objc_opt_self() sessionWithConfiguration:v2];

  qword_1006B8FC8 = v3;
}

id sub_100275748(uint64_t a1)
{
  v3 = type metadata accessor for FMAccessoryProductImageRequest();
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D0420(a1, v1 + qword_1006B8FD0);
  v6 = type metadata accessor for FMAccessoryProductImageDownloadOperation();
  v21.receiver = v1;
  v21.super_class = v6;
  v7 = objc_msgSendSuper2(&v21, "init");
  sub_1000D0420(a1, v5);
  v8 = v7;
  v9 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = Logger.logObject.getter();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v18 = 0;
    v19 = 0xE000000000000000;
    v20 = v13;
    _StringGuts.grow(_:)(48);
    v14._object = 0x800000010058B090;
    v14._countAndFlagsBits = 0xD00000000000002ELL;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
    v15 = sub_100005B4C(v18, v19, &v20);

    *(v12 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v11, v9, "FMDiscoveredAccessoryImageDownloadOperation: %s", v12, 0xCu);
    sub_100006060(v13);
  }

  sub_1000D0484(a1);
  sub_1000D0484(v5);
  return v8;
}

uint64_t sub_100275998()
{
  v1[10] = v0;
  v2 = type metadata accessor for URL();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for URLRequest();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return _swift_task_switch(sub_100275AC0, 0, 0);
}

uint64_t sub_100275AC0()
{
  if (qword_1006AEB90 != -1)
  {
    swift_once();
  }

  (*(v0[12] + 16))(v0[13], v0[10] + qword_1006B8FD0, v0[11]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_100275BE0;
  v2 = v0[17];

  return NSURLSession.data(for:delegate:)(v2, 0);
}

uint64_t sub_100275BE0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *v4;
  v6[2] = v4;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = v3;
  v6[19] = v3;

  if (v3)
  {
    v7 = sub_100275F84;
  }

  else
  {

    v7 = sub_100275D08;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100275D08()
{
  v21 = v0;
  (*(v0[15] + 16))(v0[16], v0[17], v0[14]);
  v1 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = os_log_type_enabled(v3, v1);
  v5 = v0[16];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  if (v4)
  {
    v19 = v0[17];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20[0] = v10;
    *v9 = 136315138;
    _StringGuts.grow(_:)(44);

    v20[1] = 0xD00000000000002ALL;
    v20[2] = 0x800000010058B020;
    sub_100276404();
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12 = sub_100005B4C(0xD00000000000002ALL, 0x800000010058B020, v20);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v1, "FMDiscoveredAccessoryImageDownloadOperation: %s", v9, 0xCu);
    sub_100006060(v10);

    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v19;
  }

  else
  {

    v13 = *(v7 + 8);
    v13(v5, v8);
    v14 = v6;
  }

  v13(v14, v8);
  v16 = v0[3];
  v15 = v0[4];

  v17 = v0[1];

  return v17(v16, v15);
}

uint64_t sub_100275F84()
{
  v18 = v0;
  swift_errorRetain();
  v1 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = os_log_type_enabled(v3, v1);
  v5 = v0[19];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    v16 = 0;
    *v6 = 136315138;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);
    v0[7] = v16;
    v0[8] = 0xE000000000000000;
    v8._object = 0x800000010058AFF0;
    v8._countAndFlagsBits = 0xD000000000000027;
    String.append(_:)(v8);
    v0[9] = v5;
    sub_10007EBC0(&unk_1006AF7B0);
    _print_unlocked<A, B>(_:_:)();
    v9 = sub_100005B4C(v0[7], v0[8], &v15);

    *(v6 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v1, "FMDiscoveredAccessoryImageDownloadOperation: %s", v6, 0xCu);
    sub_100006060(v7);
  }

  v10 = v0[17];
  v11 = v0[14];
  v12 = v0[15];
  swift_willThrow();
  (*(v12 + 8))(v10, v11);

  v13 = v0[1];

  return v13();
}

id sub_100276208()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAccessoryProductImageDownloadOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100276250(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1002762E0;

  return sub_100275998();
}

uint64_t sub_1002762E0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

unint64_t sub_100276404()
{
  result = qword_1006B9140;
  if (!qword_1006B9140)
  {
    type metadata accessor for URLRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B9140);
  }

  return result;
}

void sub_100276484()
{
  v1 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"handleStatusRowTap"];
  [*(v0 + OBJC_IVAR____TtC6FindMy22FMDeviceMarkAsLostView_lostStatusRow) addGestureRecognizer:v1];
}

uint64_t sub_100276504()
{
  v1 = v0;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMDeviceMarkAsLostview: User pressed activate notify me", v5, 2u);
  }

  v6 = v1 + OBJC_IVAR____TtC6FindMy22FMDeviceMarkAsLostView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(v1, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100276748()
{
  sub_10005CD20(v0 + OBJC_IVAR____TtC6FindMy22FMDeviceMarkAsLostView_delegate);
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy22FMDeviceMarkAsLostView_lostStatusRow);
}

id sub_100276788()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDeviceMarkAsLostView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10027682C()
{
  v1 = type metadata accessor for FMPlatterIcon();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v38 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10007EBC0(&qword_1006B3298);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v40 = v0;
  *(v0 + OBJC_IVAR____TtC6FindMy22FMDeviceMarkAsLostView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v10 = *(v2 + 56);
  v39 = v9;
  v10(v9, 1, 1, v1);
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v11 = *&qword_1006D4798;
  v12 = type metadata accessor for FMMultiSettingsRowView();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_identifier];
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundView;
  *&v13[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
  *&v13[v16] = [objc_allocWithZone(UIImageView) init];
  v17 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_titleLabel;
  *&v13[v17] = [objc_allocWithZone(UILabel) init];
  v18 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  *&v13[v18] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_chevron;
  v20 = sub_1003DE824();
  v21 = [objc_allocWithZone(UIImageView) initWithImage:v20];

  *&v13[v19] = v21;
  v22 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separator;
  *&v13[v22] = [objc_allocWithZone(UIView) init];
  v23 = &v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_title];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitle];
  *v24 = 0;
  v24[1] = 0;
  v25 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleColor;
  *&v13[v25] = [objc_opt_self() secondaryLabelColor];
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_subtitleIsCopyToPasteboardEnabled] = 0;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_separated] = 1;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible] = 0;
  *v23 = 0;
  v23[1] = 0;

  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isBoldTitle] = 0;
  *&v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_backgroundOffset] = v11;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_fullWidthSeparator] = 0;
  v13[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_hiliteBackgroundWhenTapped] = 1;
  v44.receiver = v13;
  v44.super_class = v12;
  v26 = objc_msgSendSuper2(&v44, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v27 = v39;
  sub_100243148(v39, v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    v28 = v26;
    sub_10017D238(v7);
  }

  else
  {
    v29 = v38;
    sub_10015DA28(v7, v38);
    v30 = v26;
    v31 = sub_10043BBEC(v29, 0);
    v33 = v32;
    v34 = OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView;
    [*&v30[OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_iconView] setImage:v31];
    [*&v30[v34] setTintAdjustmentMode:1];
    v42 = &type metadata for SolariumFeatureFlag;
    v43 = sub_10000BD04();
    v35 = isFeatureEnabled(_:)();
    sub_100006060(v41);
    if (v35)
    {
      [*&v30[v34] setTintColor:v33];

      sub_1000D59F8(v29);
    }

    else
    {
      sub_1000D59F8(v29);
    }
  }

  v36 = OBJC_IVAR____TtC6FindMy22FMDeviceMarkAsLostView_lostStatusRow;
  [v26 setUserInteractionEnabled:1];
  *(v26 + OBJC_IVAR____TtC6FindMy22FMMultiSettingsRowView_isChevronVisible) = 1;
  sub_1004EE178();
  sub_1004EE5A4(v11);

  sub_10017D238(v27);
  *(v40 + v36) = v26;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100276DBC(void *a1)
{
  v2 = v1;
  if (IndexPath.row.getter())
  {
    goto LABEL_2;
  }

  v20 = [v1 navigationItem];
  v21 = [v20 searchController];

  if (v21)
  {
    v22 = [v21 searchBar];

    v23 = [v22 text];
    if (v23)
    {
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      v23 = (v24 & 0xFFFFFFFFFFFFLL);
      goto LABEL_17;
    }
  }

  else
  {
    v23 = 0;
  }

  v26 = 0xE000000000000000;
LABEL_17:

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v23;
  }

  if (v27)
  {
    v28 = String._bridgeToObjectiveC()();
    v6 = [a1 dequeueReusableCellWithIdentifier:v28];

    if (!v6)
    {
      v29 = objc_allocWithZone(UITableViewCell);
      v30 = String._bridgeToObjectiveC()();
      v6 = [v29 initWithStyle:0 reuseIdentifier:v30];
    }

    v31 = [v6 textLabel];
    if (v31)
    {
      v32 = v31;
      [v31 setText:0];
    }

    v33 = [v6 detailTextLabel];
    if (v33)
    {
      v34 = v33;
      [v33 setText:0];
    }

    [v6 setAccessoryView:0];
    v35 = [v6 textLabel];
    if (v35)
    {
      v36 = v35;
      v37 = [v2 navigationItem];
      v38 = [v37 searchController];

      if (v38)
      {
        v39 = [v38 searchBar];

        v40 = [v39 text];
        if (v40)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }
      }

      v48 = String._bridgeToObjectiveC()();

      [v36 setText:v48];
    }

    v49 = [v6 imageView];
    if (v49)
    {
      v50 = v49;
      v51 = String._bridgeToObjectiveC()();
      v52 = [objc_opt_self() imageNamed:v51];

      [v50 setImage:v52];
    }

    v57 = &type metadata for SolariumFeatureFlag;
    v58 = sub_10000BD04();
    v53 = isFeatureEnabled(_:)();
    sub_100006060(v56);
    if (v53)
    {
      v54 = objc_opt_self();
      v6 = v6;
      v55 = [v54 secondarySystemBackgroundColor];
      [v6 setBackgroundColor:v55];
    }

    return v6;
  }

LABEL_2:
  v4 = String._bridgeToObjectiveC()();
  v5 = [a1 dequeueReusableCellWithIdentifier:v4];

  if (!v5)
  {
LABEL_5:
    v7 = objc_allocWithZone(type metadata accessor for FMFenceMapTableViewCell());
    v8 = String._bridgeToObjectiveC()();
    v6 = [v7 initWithStyle:3 reuseIdentifier:v8];

    goto LABEL_6;
  }

  type metadata accessor for FMFenceMapTableViewCell();
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    goto LABEL_5;
  }

LABEL_6:
  v9 = [v1 tableView:a1 numberOfRowsInSection:IndexPath.section.getter()];
  if (IndexPath.row.getter() >= v9 || (v10 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords]) == 0)
  {
    v19 = *&v6[OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record];
    *&v6[OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record] = 0;

    sub_1003D1198();
    return v6;
  }

  v11 = IndexPath.row.getter();
  v12 = [v2 navigationItem];
  v13 = [v12 searchController];

  if (v13)
  {
    v14 = [v13 searchBar];

    v15 = [v14 text];
    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v15 = (v16 & 0xFFFFFFFFFFFFLL);
      goto LABEL_32;
    }
  }

  else
  {
    v15 = 0;
  }

  v18 = 0xE000000000000000;
LABEL_32:

  v41 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v41 = v15;
  }

  v42 = v41 != 0;
  result = v11 - v42;
  if (__OFSUB__(v11, v42))
  {
    __break(1u);
    goto LABEL_47;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_47:
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_39;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v44 = *(v10 + 8 * result + 32);
LABEL_39:
    v45 = v44;

    v46 = *&v6[OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record];
    *&v6[OBJC_IVAR____TtC6FindMy23FMFenceMapTableViewCell_record] = v45;
    v47 = v45;

    sub_1003D1198();
    return v6;
  }

  __break(1u);
  return result;
}

void **sub_10027761C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v96 = *(v4 - 8);
  v97 = v4;
  __chkstk_darwin(v4);
  v94 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for DispatchQoS();
  v93 = *(v95 - 1);
  __chkstk_darwin(v95);
  v92 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMFLocationAlertAddressType();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v89 - v12;
  v14 = &selRef_initWithScrollView_edge_;
  if (!IndexPath.row.getter())
  {
    v91 = v8;
    v25 = [v1 navigationItem];
    v26 = [v25 searchController];

    if (v26)
    {
      v27 = [v26 searchBar];

      v28 = [v27 text];
      if (v28)
      {
        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        v28 = (v29 & 0xFFFFFFFFFFFFLL);
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      v14 = &selRef_initWithScrollView_edge_;
    }

    else
    {
      v28 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v28;
    }

    if (v32)
    {
      v33 = [v1 navigationItem];
      v34 = [v33 searchController];

      if (v34 && (v35 = [v34 searchBar], v34, v36 = objc_msgSend(v35, "text"), v35, v36))
      {
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;
      }

      else
      {
        v37 = 0;
        v39 = 0xE000000000000000;
      }

      v40 = v91;
      (*(v91 + 104))(v13, enum case for FMFLocationAlertAddressType.custom(_:), v7);
      result = *&v2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_dragView];
      if (!result)
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      [result removeHandle:1];
      sub_100466954();
      v42 = [objc_allocWithZone(MKLocalSearchRequest) init];
      v43 = String._bridgeToObjectiveC()();
      v97 = v39;
      v44 = v43;
      [v42 setNaturalLanguageQuery:v43];

      result = *&v2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_mapView];
      v96 = v37;
      if (!result)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      [result region];
      [v42 setRegion:?];
      v95 = [objc_allocWithZone(MKLocalSearch) initWithRequest:v42];
      v45 = [objc_opt_self() sharedApplication];
      [v45 setNetworkActivityIndicatorVisible:1];

      (*(v40 + 16))(v11, v13, v7);
      v46 = v40;
      v47 = (*(v40 + 80) + 24) & ~*(v40 + 80);
      v48 = v47 + v9;
      v49 = swift_allocObject();
      *(v49 + 16) = v2;
      (*(v46 + 32))(v49 + v47, v11, v7);
      *(v49 + v48) = 1;
      v50 = v49 + (v48 & 0xFFFFFFFFFFFFFFF8);
      v51 = v97;
      *(v50 + 8) = v96;
      *(v50 + 16) = v51;
      v103 = sub_1002789D8;
      v104 = v49;
      aBlock = _NSConcreteStackBlock;
      v100 = 1107296256;
      v101 = sub_10012105C;
      v102 = &unk_1006324E0;
      v52 = _Block_copy(&aBlock);
      v53 = v2;

      v54 = v95;
      [v95 startWithCompletionHandler:v52];
      _Block_release(v52);

      (*(v46 + 8))(v13, v7);
      v14 = &selRef_initWithScrollView_edge_;
LABEL_40:
      v84 = [v2 navigationItem];
      v85 = [v84 v14[225]];

      if (v85)
      {
        v86 = [v85 searchBar];

        [v86 resignFirstResponder];
      }

      v87 = [v2 navigationItem];
      v88 = [v87 v14[225]];

      if (v88)
      {
        [v88 setActive:0];
      }

      result = *&v2[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_searchResultsTableView];
      if (result)
      {
        return [result setHidden:1];
      }

      __break(1u);
      goto LABEL_52;
    }
  }

  v15 = [v1 tableView:a1 numberOfRowsInSection:IndexPath.section.getter()];
  if (IndexPath.row.getter() >= v15)
  {
    goto LABEL_40;
  }

  v16 = *&v1[OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords];
  if (!v16)
  {
    goto LABEL_40;
  }

  v17 = IndexPath.row.getter();
  v18 = [v2 navigationItem];
  v19 = [v18 searchController];

  if (v19)
  {
    v7 = &selRef_initWithScrollView_edge_;
    v20 = [v19 searchBar];

    v21 = [v20 text];
    if (v21)
    {
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v21 = (v22 & 0xFFFFFFFFFFFFLL);
    }

    else
    {
      v24 = 0xE000000000000000;
    }

    v14 = &selRef_initWithScrollView_edge_;
  }

  else
  {
    v21 = 0;
    v24 = 0xE000000000000000;
  }

  v55 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v55 = v21;
  }

  v56 = v55 != 0;
  v57 = v17 - v56;
  if (__OFSUB__(v17, v56))
  {
    __break(1u);
  }

  else if ((v16 & 0xC000000000000001) == 0)
  {
    if ((v57 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v57 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v58 = *(v16 + 8 * v57 + 32);
      goto LABEL_33;
    }

    __break(1u);
LABEL_50:
    swift_once();
    goto LABEL_35;
  }

  v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_33:
  v7 = v58;

  v59 = (v7 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate);
  if ((*(v7 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_coordinate + 16) & 1) == 0)
  {
    v75 = *v59;
    v74 = v59[1];
    v91 = *(v7 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_completedGeoWorkGroup);
    sub_100003E90();
    v90 = static OS_dispatch_queue.main.getter();
    v76 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v77 = swift_allocObject();
    v77[2] = v76;
    v77[3] = v75;
    v77[4] = v74;
    v77[5] = v7;
    v103 = sub_1002789C8;
    v104 = v77;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_100004AE4;
    v102 = &unk_100632490;
    v78 = _Block_copy(&aBlock);

    v79 = v7;
    v80 = v92;
    static DispatchQoS.unspecified.getter();
    v98 = _swiftEmptyArrayStorage;
    sub_100037918();
    sub_10007EBC0(&unk_1006B0640);
    sub_100037970();
    v81 = v94;
    v82 = v97;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v83 = v90;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v78);

    (*(v96 + 8))(v81, v82);
    (*(v93 + 8))(v80, v95);

    goto LABEL_40;
  }

  if (qword_1006AEBE0 != -1)
  {
    goto LABEL_50;
  }

LABEL_35:
  v60 = type metadata accessor for Logger();
  sub_100005B14(v60, qword_1006D4630);
  v61 = v7;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v62, v63))
  {
LABEL_38:

    v69 = objc_opt_self();
    v70 = [objc_opt_self() mainBundle];
    v105._object = 0x800000010058B160;
    v71._object = 0x800000010058B140;
    v105._countAndFlagsBits = 0xD00000000000002CLL;
    v71._countAndFlagsBits = 0xD00000000000001ALL;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v105);

    v73 = String._bridgeToObjectiveC()();

    [v69 showSimpleAlertWithTitle:v73 message:0 sender:v2];

    v14 = &selRef_initWithScrollView_edge_;
    goto LABEL_40;
  }

  v64 = swift_slowAlloc();
  result = swift_slowAlloc();
  aBlock = result;
  *v64 = 136315138;
  v65 = *(v61 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress + 8);
  if (v65)
  {
    v66 = result;
    v67 = *(v61 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_displayAddress);

    v68 = sub_100005B4C(v67, v65, &aBlock);

    *(v64 + 4) = v68;
    _os_log_impl(&_mh_execute_header, v62, v63, "FMFenceMapViewController: Failed to geocode address string: %s", v64, 0xCu);
    sub_100006060(v66);

    goto LABEL_38;
  }

LABEL_54:
  __break(1u);
  return result;
}

void sub_100278220(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_10007EBC0(&qword_1006B0040);
  __chkstk_darwin(v7 - 8);
  v9 = &v52 - v8;
  v10 = sub_10007EBC0(&qword_1006B00C8);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    v14 = *(a4 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue + 8);
    if (v14)
    {
      v53 = *(a4 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_labelLocalizedValue);
      v15 = v14;
    }

    else
    {
      v15 = *(a4 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title + 8);
      v53 = *(a4 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_title);
    }

    v16 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_addressType;
    swift_beginAccess();
    sub_100007204(a4 + v16, v12, &qword_1006B00C8);
    v17 = type metadata accessor for FMFLocationAlertAddressType();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    v56 = v17;
    if (v19(v12, 1) == 1)
    {
      __break(1u);
      return;
    }

    v20 = OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_fmfPlacemark;
    swift_beginAccess();
    sub_100007204(a4 + v20, v9, &qword_1006B0040);
    v21 = *(a4 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius);
    v54 = *(a4 + OBJC_IVAR____TtC6FindMy25FMFenceMapTransientRecord_radius + 8);
    v22 = type metadata accessor for FMFenceMapAnnotation();
    v23 = objc_allocWithZone(v22);
    v24 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
    v25 = type metadata accessor for FMFAddress();
    v26 = *(v25 - 8);
    (*(v26 + 56))(&v23[v24], 1, 1, v25);
    *&v23[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_clPlacemark] = 0;
    v27 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup;

    *&v23[v27] = dispatch_group_create();
    v28 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_geocoder;
    *&v23[v28] = [objc_allocWithZone(CLGeocoder) init];
    v23[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didZoomOnSelection] = 0;
    *&v23[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = 0;
    v29 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius;
    if (qword_1006AED88 != -1)
    {
      swift_once();
    }

    v30 = *&qword_1006D4D20;
    *&v23[v29] = qword_1006D4D20;
    (*(v18 + 16))(&v23[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_addressType], v12, v56);
    v23[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_locationType] = 1;
    v57.receiver = v23;
    v57.super_class = v22;
    v31 = objc_msgSendSuper2(&v57, "init");
    v32 = v31;
    if (v15)
    {
      v33 = String._bridgeToObjectiveC()();
    }

    else
    {
      v33 = 0;
    }

    [v31 setTitle:v33];

    [v31 setSubtitle:0];
    [v31 setCoordinate:{a1, a2}];

    v34 = OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_fmfPlacemark;
    swift_beginAccess();
    sub_100278A8C(v9, &v31[v34]);
    swift_endAccess();
    if (qword_1006AED90 != -1)
    {
      swift_once();
    }

    if (v54)
    {
      v35 = v30;
    }

    else
    {
      v35 = v21;
    }

    if (v30 > v35)
    {
      v35 = v30;
    }

    if (v35 >= *&qword_1006D4D28)
    {
      v36 = *&qword_1006D4D28;
    }

    else
    {
      v36 = v35;
    }

    *&v31[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_customRadius] = v36;
    v37 = [objc_opt_self() circleWithCenterCoordinate:a1 radius:{a2, v36}];
    v38 = *&v31[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay];
    *&v31[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_overlay] = v37;

    v39 = v31;
    if ((*(v26 + 48))(v9, 1, v25) == 1)
    {
      goto LABEL_37;
    }

    v40 = [v31 title];
    if (v40)
    {
      v41 = v40;
      v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v44 = v43;

      v45 = sub_100486C44();
      v47 = v46;
      if (v44)
      {
        if (v46)
        {
          if (v42 == v45 && v46 == v44)
          {

            v39 = 0;
LABEL_33:

LABEL_36:
            [v31 setSubtitle:v39];

LABEL_37:
            dispatch_group_enter(*&v31[OBJC_IVAR____TtC6FindMy20FMFenceMapAnnotation_didReverseGeocodeGroup]);
            sub_100485F88();
            (*(v18 + 8))(v12, v56);
            sub_100278AFC(v9);
            v51 = v55;
            sub_10045FC64(v31);

            return;
          }

          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v50)
          {
LABEL_35:
            v39 = 0;
            goto LABEL_36;
          }

LABEL_31:
          sub_100486C44();
          if (v49)
          {
            v39 = String._bridgeToObjectiveC()();
            goto LABEL_33;
          }

          goto LABEL_35;
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    else
    {
      sub_100486C44();
      v47 = v48;
    }

    if (!v47)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }
}

void sub_1002789D8(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMFLocationAlertAddressType() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = v2 + (v7 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 8);
  v12 = *(v10 + 16);

  sub_1004605A0(a1, a2, v8, v2 + v6, v9, v11, v12);
}

uint64_t sub_100278A8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B0040);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100278AFC(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006B0040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100278B64()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy24FMFenceMapViewController_filteredSearchRecords);
  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_15;
    }

    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v2 = 0;
  }

  while (1)
  {
    v3 = [v0 navigationItem];
    v4 = [v3 searchController];

    if (v4)
    {
      v5 = [v4 searchBar];

      v6 = [v5 text];
      if (v6)
      {
        v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v0 = v8;

        v6 = (v7 & 0xFFFFFFFFFFFFLL);
        goto LABEL_10;
      }
    }

    else
    {
      v6 = 0;
    }

    v0 = 0xE000000000000000;
LABEL_10:

    v9 = HIBYTE(v0) & 0xF;
    if ((v0 & 0x2000000000000000) == 0)
    {
      v9 = v6;
    }

    v10 = v9 != 0;
    result = v2 + v10;
    if (!__OFADD__(v2, v10))
    {
      return result;
    }

    __break(1u);
LABEL_15:
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }
}

char *sub_100278C9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryBackground;
  *&v3[v6] = [objc_allocWithZone(UIVisualEffectView) init];
  v7 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator;
  *&v3[v7] = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView;
  *&v3[v8] = [objc_allocWithZone(type metadata accessor for FMScrollView()) init];
  v9 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel;
  *&v3[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel;
  *&v3[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v3[v11] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v13 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel;
  *&v3[v13] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v14 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel;
  *&v3[v14] = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel;
  *&v3[v15] = [objc_allocWithZone(UILabel) init];
  v16 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryRowStackView;
  *&v3[v16] = [objc_allocWithZone(UIStackView) init];
  v17 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsStackView;
  *&v3[v17] = [objc_allocWithZone(UIStackView) init];
  v18 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_headerBackground;
  *&v3[v18] = [objc_allocWithZone(UIView) init];
  v19 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView;
  type metadata accessor for FMBatteryWrapperView();
  *&v3[v19] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicatorHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorHeightConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollViewBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelTopConstraint] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket] = 0;
  v20 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator;
  *&v3[v20] = [objc_allocWithZone(UIActivityIndicatorView) init];
  v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating] = 0;
  v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed] = 0;
  v21 = &v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText];
  *v21 = 0;
  v21[1] = 0;
  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator] = a1;
  v22 = &v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide];
  v23 = *(a2 + 176);
  *(v22 + 10) = *(a2 + 160);
  *(v22 + 11) = v23;
  *(v22 + 12) = *(a2 + 192);
  v22[208] = *(a2 + 208);
  v24 = *(a2 + 112);
  *(v22 + 6) = *(a2 + 96);
  *(v22 + 7) = v24;
  v25 = *(a2 + 144);
  *(v22 + 8) = *(a2 + 128);
  *(v22 + 9) = v25;
  v26 = *(a2 + 48);
  *(v22 + 2) = *(a2 + 32);
  *(v22 + 3) = v26;
  v27 = *(a2 + 80);
  *(v22 + 4) = *(a2 + 64);
  *(v22 + 5) = v27;
  v28 = *(a2 + 16);
  *v22 = *a2;
  *(v22 + 1) = v28;
  v50 = &type metadata for SolariumFeatureFlag;
  v51 = sub_10000BD04();

  LOBYTE(a2) = isFeatureEnabled(_:)();
  sub_100006060(v49);
  if (a2)
  {
    v29 = type metadata accessor for FMPlatterBackgroundView();
    v30 = objc_allocWithZone(v29);
    v30[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 1;
    v47.receiver = v30;
    v47.super_class = v29;
    v31 = objc_msgSendSuper2(&v47, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    sub_10024610C();
  }

  else
  {
    v31 = [objc_allocWithZone(UIView) init];
  }

  *&v3[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground] = v31;
  v32 = type metadata accessor for FMBaseContentViewController();
  v48.receiver = v3;
  v48.super_class = v32;
  v33 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v34 = *&v33[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
  v35 = v33;
  v36 = v34;
  v37 = String._bridgeToObjectiveC()();
  [v36 setAccessibilityIdentifier:v37];

  v38 = *&v35[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel];
  v39 = String._bridgeToObjectiveC()();
  [v38 setAccessibilityIdentifier:v39];

  v40 = *&v35[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel];
  v41 = String._bridgeToObjectiveC()();
  [v40 setAccessibilityIdentifier:v41];

  v42 = *&v35[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel];
  v43 = String._bridgeToObjectiveC()();
  [v42 setAccessibilityIdentifier:v43];

  v44 = *&v35[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel];
  v45 = String._bridgeToObjectiveC()();
  [v44 setAccessibilityIdentifier:v45];

  return v35;
}

id sub_1002791F0()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = result;
  [result setPreservesSuperviewLayoutMargins:1];

  v4 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView];
  v5 = objc_opt_self();
  v6 = [v5 clearColor];
  [v4 setBackgroundColor:v6];

  [v4 setAlwaysBounceVertical:1];
  [v4 setVerticalScrollIndicatorInsets:{0.0, 0.0, 4.0, 3.0}];
  *&v97.d = &type metadata for SolariumFeatureFlag;
  v96 = sub_10000BD04();
  *&v97.tx = v96;
  LOBYTE(v6) = isFeatureEnabled(_:)();
  sub_100006060(&v97);
  if ((v6 & 1) == 0)
  {
    v7 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground];
    v8 = [v7 layer];
    [v8 setShouldRasterize:1];

    v9 = [v7 layer];
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
    v12 = v11;

    [v9 setRasterizationScale:v12];
    v13 = [v7 layer];
    result = [v1 view];
    if (!result)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    *&v97.d = &type metadata for SolariumFeatureFlag;
    *&v97.tx = v96;
    v14 = isFeatureEnabled(_:)();
    sub_100006060(&v97);
    v15 = _UISheetCornerRadius;
    if (v14)
    {
      v15 = 26.0;
    }

    [v13 setCornerRadius:v15];

    v16 = [v7 layer];
    [v16 setMasksToBounds:0];

    v17 = [v7 layer];
    v18 = [v5 blackColor];
    v19 = [v18 CGColor];

    [v17 setShadowColor:v19];
    v20 = [v7 layer];
    LODWORD(v21) = 1031127695;
    [v20 setShadowOpacity:v21];

    v22 = [v7 layer];
    [v22 setShadowRadius:16.0];

    v23 = [v7 layer];
    [v23 setShadowOffset:{0.0, 0.0}];

    v24 = [v7 layer];
    v25 = [v1 traitCollection];
    v26 = [v25 userInterfaceStyle];

    v27 = &selRef_clearColor;
    if (v26 != 2)
    {
      v27 = &selRef_whiteColor;
    }

    v28 = [v5 *v27];
    v29 = [v28 CGColor];

    [v24 setBackgroundColor:v29];
  }

  v30 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator];
  CGAffineTransformMakeScale(&v97, 0.75, 0.75);
  v95 = v30;
  [v30 setTransform:&v97];
  v31 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryBackground];
  v32 = [objc_opt_self() effectWithStyle:1100];
  [v31 setEffect:v32];

  v33 = String._bridgeToObjectiveC()();
  [v31 _setGroupName:v33];

  if (qword_1006AEC38 != -1)
  {
    swift_once();
  }

  [v31 _setCaptureView:qword_1006D47B8];
  v88 = v31;
  [v31 setAlpha:0.0];
  v34 = [objc_opt_self() sharedApplication];
  v35 = [v34 preferredContentSizeCategory];

  LOBYTE(v34) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v36 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
  if (v34)
  {
    v37 = 0;
  }

  else
  {
    v37 = 2;
  }

  v91 = v37;
  [*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel] setNumberOfLines:?];
  v38 = [v5 labelColor];
  [v36 setTextColor:v38];

  [v36 setAdjustsFontForContentSizeCategory:1];
  v39 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator];
  v40 = [v5 separatorColor];
  [v39 setBackgroundColor:v40];

  v89 = v39;
  [v39 setAlpha:0.0];
  v41 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel];
  [v41 setHidden:1];
  v42 = [v5 labelColor];
  [v41 setTextColor:v42];

  v43 = objc_opt_self();
  v44 = [v43 preferredFontForTextStyle:UIFontTextStyleHeadline];
  v94 = v41;
  [v41 setFont:v44];

  *&v97.d = &type metadata for SolariumFeatureFlag;
  *&v97.tx = v96;
  LOBYTE(v44) = isFeatureEnabled(_:)();
  sub_100006060(&v97);
  v90 = v36;
  if (v44)
  {
    v45 = [v43 preferredFontForTextStyle:UIFontTextStyleTitle1];
    v46 = sub_100039388(2);

    [v36 setFont:v46];
    v47 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel];
    v48 = UIFontTextStyleBody;
    v49 = [v43 preferredFontForTextStyle:UIFontTextStyleBody];
    [v47 setFont:v49];

    v50 = [v5 labelColor];
    [v47 setTextColor:v50];

    v51 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel];
    v52 = [v43 preferredFontForTextStyle:UIFontTextStyleBody];
    [v51 setFont:v52];
  }

  else
  {
    v53 = [v43 preferredFontForTextStyle:UIFontTextStyleTitle2];
    v54 = sub_100039388(0x8000);

    v55 = sub_100039388(2);
    [v36 setFont:v55];

    v47 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel];
    v56 = [v43 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v47 setFont:v56];

    v57 = [v5 secondaryLabelColor];
    [v47 setTextColor:v57];

    v51 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel];
    v58 = [v43 preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [v51 setFont:v58];

    v48 = UIFontTextStyleBody;
  }

  [v47 setNumberOfLines:v91];
  v93 = v47;
  [v47 setAdjustsFontForContentSizeCategory:1];
  [v51 setNumberOfLines:v91];
  v59 = [v5 secondaryLabelColor];
  [v51 setTextColor:v59];

  [v51 setAdjustsFontForContentSizeCategory:1];
  LODWORD(v60) = 1148846080;
  [v51 setContentCompressionResistancePriority:0 forAxis:v60];
  v61 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel];
  [v61 setHidden:0];
  v62 = [v5 secondaryLabelColor];
  [v61 setTextColor:v62];

  v63 = [v43 preferredFontForTextStyle:v48];
  [v61 setFont:v63];

  [v61 setNumberOfLines:1];
  v64 = String._bridgeToObjectiveC()();
  [v61 setText:v64];

  v65 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel];
  v66 = [v5 secondaryLabelColor];
  [v65 setTextColor:v66];

  v67 = String._bridgeToObjectiveC()();
  [v65 setText:v67];

  [v65 setTextAlignment:1];
  v68 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryRowStackView];
  [v68 setAxis:0];
  [v68 setAlignment:3];
  [v68 setDistribution:0];
  v69 = &v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide];
  [v68 setSpacing:*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 144]];
  v70 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsStackView];
  [v70 setAxis:1];
  [v70 setAlignment:1];
  v92 = v69;
  [v70 setSpacing:v69[19]];
  [v68 addArrangedSubview:v51];
  *&v97.d = &type metadata for SolariumFeatureFlag;
  *&v97.tx = v96;
  LOBYTE(v62) = isFeatureEnabled(_:)();
  sub_100006060(&v97);
  if (v62)
  {
    [v68 addArrangedSubview:v65];
  }

  [v68 addArrangedSubview:*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView]];
  [v68 addArrangedSubview:v95];
  [v70 addArrangedSubview:v94];
  [v70 addArrangedSubview:v93];
  [v70 addArrangedSubview:v68];
  [v70 addArrangedSubview:v61];
  result = [v1 view];
  if (!result)
  {
    goto LABEL_34;
  }

  v71 = result;
  [result addSubview:v4];

  *&v97.d = &type metadata for SolariumFeatureFlag;
  *&v97.tx = v96;
  LOBYTE(v71) = isFeatureEnabled(_:)();
  sub_100006060(&v97);
  if (v71)
  {
    [*&v4[OBJC_IVAR____TtC6FindMy12FMScrollView_content] addSubview:v90];
    v72 = objc_allocWithZone(type metadata accessor for FMScrollPocketView());
    v73 = sub_1001A2204(v4, 0, 0);
    v74 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket];
    *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket] = v73;
    v75 = v73;

    result = [v1 view];
    if (!result)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v76 = result;
    [result addSubview:v75];

    [*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_headerBackground] setAlpha:0.0];
  }

  else
  {
    result = [v1 view];
    if (!result)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v77 = result;
    [result addSubview:v88];

    result = [v1 view];
    if (!result)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v75 = result;
    [result addSubview:v90];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_35;
  }

  v78 = result;
  [result addSubview:v89];

  if (*(v92 + 208) != 1)
  {
LABEL_32:
    v87 = OBJC_IVAR____TtC6FindMy12FMScrollView_content;
    [*&v4[OBJC_IVAR____TtC6FindMy12FMScrollView_content] addSubview:*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_headerBackground]];
    [*&v4[v87] addSubview:v70];
    return [*&v4[v87] addSubview:*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground]];
  }

  v79 = [objc_opt_self() buttonWithType:1];
  [v79 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v79 setShowsMenuAsPrimaryAction:1];
  [v79 setPointerInteractionEnabled:1];
  v80 = v79;
  v81 = String._bridgeToObjectiveC()();
  [v80 setAccessibilityIdentifier:v81];

  v82 = [v80 layer];
  [v82 setCornerRadius:v92[25] * 0.5];

  v83 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton];
  *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton] = v80;
  v84 = v80;

  sub_10018D020(v84);
  sub_10008DBCC(v84);
  v85 = *&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket];
  if (v85)
  {
    v86 = v85;
LABEL_31:
    [v86 addSubview:v84];

    goto LABEL_32;
  }

  result = [v1 view];
  v86 = result;
  if (result)
  {
    goto LABEL_31;
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_10027A200()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v259 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryBackground];
  [v259 setTranslatesAutoresizingMaskIntoConstraints:0];
  v272 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
  [v272 setTranslatesAutoresizingMaskIntoConstraints:0];
  v261 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator];
  [v261 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v257 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel];
  [v257 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v246 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel];
  [v246 setTranslatesAutoresizingMaskIntoConstraints:0];
  v255 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator];
  [v255 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryRowStackView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsStackView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v254 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_headerBackground];
  [v254 setTranslatesAutoresizingMaskIntoConstraints:0];
  v266 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton];
  if (v4)
  {
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v5 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket];
  if (v6)
  {
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v265 = v3;
  v7 = [v1 bottomAnchor];
  v8 = [v0 view];
  if (!v8)
  {
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v9 = v8;
  v252 = v2;
  v10 = [v8 bottomAnchor];

  v271 = [v7 constraintEqualToAnchor:v10];
  v11 = *&v0[v5];
  p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
  v270 = v1;
  if (v11)
  {
    sub_10007EBC0(&qword_1006AFC30);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100552EF0;
    v14 = v11;
    v15 = [v14 topAnchor];
    v16 = [v0 view];
    if (!v16)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v17 = v16;
    v18 = [v16 topAnchor];

    v19 = [v15 constraintEqualToAnchor:v18];
    *(v13 + 32) = v19;
    v20 = [v14 leadingAnchor];
    v21 = [v0 view];
    if (!v21)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v22 = v21;
    v23 = [v21 leadingAnchor];

    v24 = [v20 constraintEqualToAnchor:v23];
    *(v13 + 40) = v24;
    v25 = [v14 trailingAnchor];

    v26 = [v0 view];
    if (!v26)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v27 = v26;
    v28 = objc_opt_self();
    v29 = [v27 trailingAnchor];

    v30 = [v25 constraintEqualToAnchor:v29];
    *(v13 + 48) = v30;
    sub_10000905C(0, &qword_1006B3A70);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v28 activateConstraints:isa];

    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  sub_10007EBC0(&qword_1006AFC30);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1005521F0;
  v33 = [v1 topAnchor];
  v34 = [v0 view];
  if (!v34)
  {
    goto LABEL_61;
  }

  v35 = v34;
  v36 = [v34 topAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v32 + 32) = v37;
  v38 = [v1 p_ivar_lyt[432]];
  v39 = [v0 view];
  if (!v39)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v40 = v39;
  v41 = [v39 p_ivar_lyt[432]];

  v42 = [v38 constraintEqualToAnchor:v41];
  *(v32 + 40) = v42;
  v43 = [v1 trailingAnchor];
  v44 = [v0 view];
  if (!v44)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v45 = v44;
  v46 = objc_opt_self();
  v47 = [v45 trailingAnchor];

  v48 = [v43 constraintEqualToAnchor:v47];
  *(v32 + 48) = v48;
  *(v32 + 56) = v271;
  sub_10000905C(0, &qword_1006B3A70);
  v49 = v271;
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v273 = v46;
  [v46 activateConstraints:v50];

  v51 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollViewBottomConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollViewBottomConstraint] = v49;
  v251 = v49;

  v52 = OBJC_IVAR____TtC6FindMy12FMScrollView_content;
  v53 = [*&v1[OBJC_IVAR____TtC6FindMy12FMScrollView_content] widthAnchor];
  v268 = v0;
  v54 = [v0 view];
  if (!v54)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v55 = v54;
  v56 = v1;
  v57 = [v54 widthAnchor];

  v58 = [v53 constraintEqualToAnchor:v57];
  LODWORD(v59) = 1132068864;
  [v58 setPriority:v59];
  v275 = &type metadata for SolariumFeatureFlag;
  v269 = sub_10000BD04();
  v276 = v269;
  LOBYTE(v57) = isFeatureEnabled(_:)();
  sub_100006060(v274);
  v264 = v52;
  v60 = [*&v56[v52] heightAnchor];
  if (v57)
  {
    v61 = [v56 heightAnchor];
    v62 = (&LocateDeviceIntentResponse__metaData + 16);
  }

  else
  {
    v63 = [v0 view];
    if (!v63)
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v64 = v63;
    v61 = [v63 heightAnchor];

    v62 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
  }

  v65 = [v60 constraintLessThanOrEqualToAnchor:v61];

  v66 = v65;
  LODWORD(v67) = 1132068864;
  [v66 setPriority:v67];
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_100552EE0;
  *(v68 + 32) = v58;
  *(v68 + 40) = v66;
  v249 = v58;
  v69 = Array._bridgeToObjectiveC()().super.isa;

  [v273 activateConstraints:v69];

  v70 = *&v0[v266];
  v250 = v66;
  if (v70)
  {
    v71 = v70;
    v72 = [v272 trailingAnchor];
    v73 = [v71 leadingAnchor];
    v74 = [v72 constraintEqualToAnchor:v73 constant:-*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 192]];
  }

  else
  {
    v73 = [v272 trailingAnchor];
    v75 = [v0 v62[433]];
    if (!v75)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v76 = v75;
    v77 = [v75 layoutMarginsGuide];

    v71 = [v77 trailingAnchor];
    v74 = [v73 constraintEqualToAnchor:v71 constant:-*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide]];
  }

  v275 = &type metadata for SolariumFeatureFlag;
  v276 = v269;
  v78 = v74;
  v79 = isFeatureEnabled(_:)();
  sub_100006060(v274);
  LODWORD(v80) = 1144750080;
  if (v79)
  {
    *&v80 = 1000.0;
  }

  v263 = v78;
  [v78 setPriority:v80];
  v275 = &type metadata for SolariumFeatureFlag;
  v276 = v269;
  v81 = isFeatureEnabled(_:)();
  sub_100006060(v274);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1005521F0;
  if (v81)
  {
    v83 = v261;
    v84 = [v261 topAnchor];
    v85 = [v272 bottomAnchor];
    v86 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 64];
    v87 = [v84 constraintEqualToAnchor:v85 constant:v86];

    *(v82 + 32) = v87;
    v88 = [v261 leadingAnchor];
    v89 = [v0 v62[433]];
    if (!v89)
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v90 = v89;
    v91 = [v89 leadingAnchor];

    v92 = [v88 constraintEqualToAnchor:v91];
    *(v82 + 40) = v92;
    v93 = [v261 trailingAnchor];
    v94 = v0;
    v95 = [v0 v62[433]];
    if (!v95)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v96 = v95;
    v97 = v273;
  }

  else
  {
    v98 = [v259 topAnchor];
    v99 = [v0 v62[433]];
    if (!v99)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v100 = v99;
    v101 = [v99 topAnchor];

    v102 = [v98 constraintEqualToAnchor:v101];
    *(v82 + 32) = v102;
    v103 = [v259 leadingAnchor];
    v104 = [v0 v62[433]];
    if (!v104)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v105 = v104;
    v106 = [v104 leadingAnchor];

    v107 = [v103 constraintEqualToAnchor:v106];
    *(v82 + 40) = v107;
    v108 = [v259 trailingAnchor];
    v109 = [v0 v62[433]];
    if (!v109)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    v110 = v109;
    v111 = [v109 trailingAnchor];

    v112 = [v108 constraintEqualToAnchor:v111];
    *(v82 + 48) = v112;
    v113 = [v259 bottomAnchor];
    v114 = [v272 bottomAnchor];
    v86 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 64];
    v115 = [v113 constraintEqualToAnchor:v114 constant:v86];

    *(v82 + 56) = v115;
    v116 = Array._bridgeToObjectiveC()().super.isa;

    [v273 activateConstraints:v116];

    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_1005521F0;
    v117 = [v261 topAnchor];
    v118 = [v259 bottomAnchor];
    v119 = [v117 constraintEqualToAnchor:v118];

    *(v82 + 32) = v119;
    v120 = [v261 leadingAnchor];
    v121 = [v0 v62[433]];
    if (!v121)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v122 = v121;
    v123 = [v121 leadingAnchor];

    v124 = [v120 constraintEqualToAnchor:v123];
    *(v82 + 40) = v124;
    v93 = [v261 trailingAnchor];
    v94 = v0;
    v125 = [v0 v62[433]];
    if (!v125)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v96 = v125;
    v62 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v97 = v273;
    v83 = v261;
  }

  v126 = [v96 trailingAnchor];

  v127 = [v93 constraintEqualToAnchor:v126];
  *(v82 + 48) = v127;
  v128 = [v83 heightAnchor];
  v129 = [objc_opt_self() mainScreen];
  [v129 scale];
  v131 = v130;

  v132 = [v128 constraintEqualToConstant:1.0 / v131];
  *(v82 + 56) = v132;
  v133 = Array._bridgeToObjectiveC()().super.isa;

  v134 = v97;
  [v97 activateConstraints:v133];

  v262 = &v94[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide];
  if (v94[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 176])
  {
    v135 = [v272 leadingAnchor];
    v136 = [v94 v62[433]];
    if (!v136)
    {
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v137 = v136;
    v138 = [v136 layoutMarginsGuide];

    v139 = [v138 leadingAnchor];
    v140 = [v135 constraintEqualToAnchor:v139];
    v141 = v94;
  }

  else
  {
    v142 = *&v94[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 168];
    v135 = [v272 leadingAnchor];
    v143 = [v94 v62[433]];
    if (!v143)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v144 = v143;
    v141 = v94;
    v139 = [v143 leadingAnchor];

    v140 = [v135 constraintEqualToAnchor:v139 constant:v142];
  }

  v145 = v140;

  v146 = *&v141[v266];
  v260 = v145;
  if (!v146)
  {
    v161 = v145;
    v162 = v270;
    v163 = v262;
    goto LABEL_50;
  }

  v275 = &type metadata for SolariumFeatureFlag;
  v276 = v269;
  v147 = v145;
  v148 = v146;
  v149 = isFeatureEnabled(_:)();
  sub_100006060(v274);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_1005521F0;
  v151 = v148;
  v152 = v151;
  if (v149)
  {
    v153 = [v151 topAnchor];
    v154 = [v141 view];
    v155 = v270;
    if (!v154)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v156 = v154;
    v157 = [v154 topAnchor];

    if (qword_1006AEBD0 != -1)
    {
      swift_once();
    }

    v158 = [v153 constraintEqualToAnchor:v157 constant:*&qword_1006D4510];

    *(v150 + 32) = v158;
    v159 = [v152 trailingAnchor];
    v160 = [v141 view];
    if (!v160)
    {
      goto LABEL_83;
    }

    goto LABEL_49;
  }

  v155 = v270;
  v164 = [v151 centerYAnchor];
  v165 = [v272 centerYAnchor];
  v166 = [v164 constraintEqualToAnchor:v165];

  *(v150 + 32) = v166;
  v159 = [v152 trailingAnchor];
  v160 = [v141 view];
  if (v160)
  {
LABEL_49:
    v167 = v160;
    v168 = [v160 trailingAnchor];

    v163 = v262;
    v169 = [v159 constraintEqualToAnchor:v168 constant:-v262[23]];

    *(v150 + 40) = v169;
    v170 = [v152 heightAnchor];
    v171 = v262[25];
    v172 = [v170 constraintEqualToConstant:v171];

    *(v150 + 48) = v172;
    v173 = [v152 widthAnchor];

    v174 = [v173 constraintEqualToConstant:v171];
    *(v150 + 56) = v174;
    v175 = Array._bridgeToObjectiveC()().super.isa;

    v134 = v273;
    [v273 activateConstraints:v175];

    v162 = v155;
LABEL_50:
    v176 = [v272 topAnchor];
    v177 = [*&v162[v264] topAnchor];
    v178 = v163[7];
    v179 = [v176 constraintEqualToAnchor:v177 constant:v178];

    v180 = *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelTopConstraint];
    *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelTopConstraint] = v179;
    v181 = v179;

    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_100552EF0;
    *(v182 + 32) = v181;
    *(v182 + 40) = v145;
    *(v182 + 48) = v263;
    v248 = v181;
    v183 = Array._bridgeToObjectiveC()().super.isa;

    [v134 activateConstraints:v183];

    v184 = [v257 font];
    if (v184)
    {
      v185 = v184;
      [v184 lineHeight];
      v187 = v186;

      v188 = [v255 heightAnchor];
      v189 = [v188 constraintEqualToConstant:v187];

      v190 = [v252 heightAnchor];
      v247 = [v190 constraintEqualToConstant:v187];

      v191 = [v252 heightAnchor];
      v258 = [v191 constraintEqualToConstant:v187];

      v192 = swift_allocObject();
      *(v192 + 16) = xmmword_100552EE0;
      v193 = [v255 widthAnchor];
      if (qword_1006AEB60 != -1)
      {
        swift_once();
      }

      v194 = [v193 constraintEqualToConstant:*&qword_1006D41C8 + *&qword_1006D41C8];

      *(v192 + 32) = v194;
      *(v192 + 40) = v189;
      v256 = v189;
      v195 = Array._bridgeToObjectiveC()().super.isa;

      [v273 activateConstraints:v195];

      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_100552EF0;
      v197 = OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView;
      v198 = [*&v252[OBJC_IVAR____TtC6FindMy20FMBatteryWrapperView_batteryView] widthAnchor];
      v199 = [v198 constraintEqualToConstant:v262[15]];

      *(v196 + 32) = v199;
      v200 = [*&v252[v197] heightAnchor];
      v201 = [v200 constraintEqualToConstant:v262[16]];

      *(v196 + 40) = v201;
      *(v196 + 48) = v247;
      v253 = v247;
      v202 = Array._bridgeToObjectiveC()().super.isa;

      [v273 activateConstraints:v202];

      v275 = &type metadata for SolariumFeatureFlag;
      v276 = v269;
      LOBYTE(v202) = isFeatureEnabled(_:)();
      sub_100006060(v274);
      if (v202)
      {
        v203 = swift_allocObject();
        *(v203 + 16) = xmmword_100552EE0;
        v204 = [v246 widthAnchor];
        v205 = [v204 constraintEqualToConstant:v262[17]];

        LODWORD(v206) = 1148846080;
        [v205 setPriority:v206];
        *(v203 + 32) = v205;
        *(v203 + 40) = v258;
        v207 = v258;
        v208 = Array._bridgeToObjectiveC()().super.isa;

        [v273 activateConstraints:v208];
      }

      v275 = &type metadata for SolariumFeatureFlag;
      v276 = v269;
      v209 = isFeatureEnabled(_:)();
      sub_100006060(v274);
      v210 = [v265 topAnchor];
      if (v209)
      {
        v211 = [v272 bottomAnchor];
        v212 = [v210 constraintEqualToAnchor:v211 constant:v86];
        v213 = (&LocateDeviceIntentResponse__metaData + 16);
      }

      else
      {
        v211 = [*&v270[v264] topAnchor];
        v213 = &LocateDeviceIntentResponse__metaData.ivar_lyt;
        v212 = [v210 constraintEqualToAnchor:v211];
      }

      v214 = v212;

      v215 = v214;
      v216 = [v265 trailingAnchor];
      v217 = [v268 view];
      if (v217)
      {
        v218 = v217;
        v219 = [v217 layoutMarginsGuide];

        v220 = [v219 trailingAnchor];
        v221 = [v216 constraintEqualToAnchor:v220 constant:-v178];

        LODWORD(v222) = 1144750080;
        [v221 setPriority:v222];
        v223 = swift_allocObject();
        *(v223 + 16) = xmmword_100552EF0;
        *(v223 + 32) = v215;
        *(v223 + 40) = v221;
        v267 = v221;
        v224 = [v265 leadingAnchor];
        v225 = [v272 leadingAnchor];
        v226 = [v224 v213[437]];

        *(v223 + 48) = v226;
        v227 = Array._bridgeToObjectiveC()().super.isa;

        [v273 activateConstraints:v227];

        v228 = v213;
        v229 = swift_allocObject();
        *(v229 + 16) = xmmword_1005521F0;
        v230 = [v254 topAnchor];
        v231 = [v270 topAnchor];
        v232 = [v230 v228[437]];

        *(v229 + 32) = v232;
        v233 = [v254 leadingAnchor];
        v234 = [v270 leadingAnchor];
        v235 = [v233 v228[437]];

        *(v229 + 40) = v235;
        v236 = [v254 trailingAnchor];
        v237 = [v270 trailingAnchor];
        v238 = [v236 v228[437]];

        *(v229 + 48) = v238;
        v239 = [v254 bottomAnchor];
        v240 = [v265 bottomAnchor];
        v241 = [v239 constraintEqualToAnchor:v240 constant:v86];

        *(v229 + 56) = v241;
        v242 = Array._bridgeToObjectiveC()().super.isa;

        [v273 activateConstraints:v242];

        v243 = *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorHeightConstraint];
        *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorHeightConstraint] = v253;

        v244 = *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicatorHeightConstraint];
        *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicatorHeightConstraint] = v256;

        v245 = *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint];
        *&v268[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint] = v215;

        return;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

void sub_10027C124(void *a1)
{
  [a1 contentOffset];
  if (v3 / 10.0 > 0.0)
  {
    v4 = v3 / 10.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryBackground);
  v27 = &type metadata for SolariumFeatureFlag;
  v6 = sub_10000BD04();
  v28 = v6;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v26);
  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v4;
  }

  [v5 setAlpha:v8];
  v9 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator);
  v27 = &type metadata for SolariumFeatureFlag;
  v28 = v6;
  v10 = isFeatureEnabled(_:)();
  sub_100006060(v26);
  if (v10)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v4;
  }

  [v9 setAlpha:v11];
  v12 = 1.0 / v4;
  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel) setAlpha:v12];
  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel) setAlpha:v12];
  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel) setAlpha:v12];
  if (*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating))
  {
    v13 = v12;
  }

  else
  {
    v13 = 0.0;
  }

  [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator) setAlpha:v13];
  v14 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket);
  if (v14)
  {
    v15 = v14;
    [a1 contentOffset];
    v15[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_isEnabled] = v16 >= 10.0;
    v17 = *&v15[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_interaction];
    if (v17)
    {
      [v17 _setActive:v16 >= 10.0];
    }

    [a1 contentOffset];
    v19 = v18;
    [*(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel) frame];
    MaxY = CGRectGetMaxY(v30);
    [*&v15[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel] alpha];
    if (v19 >= MaxY == v21 <= 0.0)
    {
      v22 = objc_opt_self();
      v23 = swift_allocObject();
      *(v23 + 16) = v15;
      *(v23 + 24) = v19 >= MaxY;
      v28 = sub_10027E1B4;
      v29 = v23;
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 1107296256;
      v26[2] = sub_100004AE4;
      v27 = &unk_100632680;
      v24 = _Block_copy(v26);
      v25 = v15;

      [v22 animateWithDuration:v24 animations:0.3];

      _Block_release(v24);
    }

    else
    {
    }
  }
}

void *sub_10027C438()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView);
  v2 = v1;
  return v1;
}

id sub_10027C468(id result)
{
  v2 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating);
  *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating) = result;
  if (v2 != (result & 1))
  {
    v3 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator);
    v4 = result;
    [v3 setHidden:(result & 1) == 0];
    v5 = &selRef_startAnimating;
    if ((v4 & 1) == 0)
    {
      v5 = &selRef_stopAnimating;
    }

    [v3 *v5];
    v6 = *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView);
    [v6 setNeedsLayout];

    return [v6 layoutIfNeeded];
  }

  return result;
}

id sub_10027C53C(char a1)
{
  v2 = v1;
  v29 = &type metadata for SolariumFeatureFlag;
  v30 = sub_10000BD04();
  v4 = isFeatureEnabled(_:)();
  result = sub_100006060(v28);
  if (v4)
  {
    if (a1 == 2)
    {
      v6 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel);
      [v6 setNumberOfLines:1];
      v7 = objc_opt_self();
      v8 = [v7 systemFontOfSize:17.0];
      v9 = sub_100039388(2);

      [v6 setFont:v9];
      v10 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel);
      v11 = [v7 systemFontOfSize:15.0];
      [v10 setFont:v11];

      v12 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel);
      v13 = [v7 systemFontOfSize:15.0];
      [v12 setFont:v13];

      v14 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint);
      if (v14)
      {
        [v14 setConstant:*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 80)];
      }

      result = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelTopConstraint);
      if (result)
      {
        v15 = 72;
        return [result setConstant:*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + v15)];
      }
    }

    else
    {
      v16 = [objc_opt_self() sharedApplication];
      v17 = [v16 preferredContentSizeCategory];

      LOBYTE(v16) = UIContentSizeCategory.isAccessibilityCategory.getter();
      v18 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel);
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = 2;
      }

      [*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel) setNumberOfLines:v19];
      v20 = objc_opt_self();
      v21 = [v20 preferredFontForTextStyle:UIFontTextStyleTitle1];
      v22 = sub_100039388(2);

      [v18 setFont:v22];
      v23 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel);
      v24 = [v20 preferredFontForTextStyle:UIFontTextStyleBody];
      [v23 setFont:v24];

      v25 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel);
      v26 = [v20 preferredFontForTextStyle:UIFontTextStyleBody];
      [v25 setFont:v26];

      v27 = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint);
      if (v27)
      {
        [v27 setConstant:*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 64)];
      }

      result = *(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelTopConstraint);
      if (result)
      {
        v15 = 56;
        return [result setConstant:*(v2 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + v15)];
      }
    }
  }

  return result;
}

uint64_t sub_10027C89C()
{
  v1 = type metadata accessor for FMSelectedSection();
  v2 = __chkstk_darwin(v1);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v55 = &v52 - v6;
  v7 = __chkstk_darwin(v5);
  v9 = &v52 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v52 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v52 - v14;
  __chkstk_darwin(v13);
  v17 = &v52 - v16;
  v56 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator;
  v57 = v0;
  v18 = *(*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_mediator) + 56);
  v19 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
  swift_beginAccess();
  sub_100062074(v18 + v19, v17);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100005B14(v20, qword_1006D4630);
  sub_100062074(v17, v15);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v58 = v1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v54 = v4;
    v26 = v25;
    v59[0] = v25;
    *v24 = 136315138;
    v60 = 0;
    v61 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v53 = v9;
    v27 = v12;
    v28 = v17;
    v30 = v60;
    v29 = v61;
    sub_10005D4E4(v15);
    v31 = sub_100005B4C(v30, v29, v59);

    *(v24 + 4) = v31;
    v17 = v28;
    v12 = v27;
    v9 = v53;
    _os_log_impl(&_mh_execute_header, v21, v22, "FMBaseContentViewController: previousSelection %s", v24, 0xCu);
    sub_100006060(v26);
    v4 = v54;
  }

  else
  {

    sub_10005D4E4(v15);
  }

  sub_100062074(v17, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 8)
  {
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "FMBaseContentViewController: UT ignores previous selection", v39, 2u);
    }

    v40 = v17;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload != 19)
  {
    if (EnumCaseMultiPayload == 16)
    {
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "FMBaseContentViewController: Map options ignores previous selection";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v41 = *(*(v57 + v56) + 56);
    v42 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v41 + v42, v9);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 == 19)
    {
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "FMBaseContentViewController: Ranging ignores previous selection", v49, 2u);
      }

      v9 = v17;
    }

    else
    {
      if (v43 == 8)
      {
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&_mh_execute_header, v44, v45, "FMBaseContentViewController: UT ignores previous selection", v46, 2u);
        }
      }

      else
      {
        v50 = v55;
        sub_100062074(v17, v55);
        sub_100062074(v41 + v42, v4);
        swift_beginAccess();

        sub_100058530(v50, v41 + v42);
        swift_endAccess();
        sub_100058594(v4);

        sub_10005D4E4(v4);
        sub_10005D4E4(v50);
      }

      sub_10005D4E4(v17);
    }

    v40 = v9;
LABEL_29:
    sub_10005D4E4(v40);
    return sub_10005D4E4(v12);
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "FMBaseContentViewController: Ranging ignores previous selection";
    goto LABEL_13;
  }

LABEL_14:

  v12 = v17;
  return sub_10005D4E4(v12);
}

uint64_t sub_10027CEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = a3;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v14 = *(v27 - 8);
  __chkstk_darwin(v27);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0);
  v26 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = v24;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a6;
  v18 = v25;
  v17[8] = v25;
  aBlock[4] = sub_10027E1C0;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006326D0;
  v19 = _Block_copy(aBlock);

  v20 = v18;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918();
  sub_10007EBC0(&unk_1006B0640);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v21 = v26;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v28 + 8))(v13, v11);
  return (*(v14 + 8))(v16, v27);
}

void sub_10027D190()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel);
  v2 = v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText;
  if (*(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText + 8))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket);
  if (v4)
  {
    v5 = *&v4[OBJC_IVAR____TtC6FindMy18FMScrollPocketView_titleLabel];
    if (*(v2 + 8))
    {
      v6 = v4;
      v7 = v5;

      v8 = String._bridgeToObjectiveC()();
    }

    else
    {
      v9 = v4;
      v10 = v5;
      v8 = 0;
    }

    v11 = v8;
    [v5 setText:?];
  }
}

id sub_10027D2F4()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for FMBaseContentViewController();
  v1 = objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = (*((swift_isaMask & *v0) + 0x258))(v1);
  v3 = (*((swift_isaMask & *v0) + 0x260))(v2);
  (*((swift_isaMask & *v0) + 0x268))(v3);
  v4 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating);
  v5 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator);
  [v5 setHidden:v4 ^ 1u];
  v6 = &selRef_startAnimating;
  if (!v4)
  {
    v6 = &selRef_stopAnimating;
  }

  [v5 *v6];
  v7 = *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView);
  [v7 setNeedsLayout];
  [v7 layoutIfNeeded];
  [v7 setDelegate:v0];
  v11 = &type metadata for SolariumFeatureFlag;
  v12 = sub_10000BD04();
  v8 = isFeatureEnabled(_:)();
  result = sub_100006060(v10);
  if (v8)
  {
    return [v7 setShowsVerticalScrollIndicator:0];
  }

  return result;
}

id sub_10027D518()
{
  v13.receiver = v0;
  v13.super_class = type metadata accessor for FMBaseContentViewController();
  objc_msgSendSuper2(&v13, "viewDidLayoutSubviews");
  v11 = &type metadata for SolariumFeatureFlag;
  v12 = sub_10000BD04();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if ((v1 & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel];
      v4 = v2;
      [v3 frame];
      v6 = v5;
      [v3 frame];
      [v4 setConstant:v6 + v7 + *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_styleGuide + 8]];
    }
  }

  v8 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel] bounds];
  return [v8 setPreferredMaxLayoutWidth:CGRectGetWidth(v14)];
}

void sub_10027D6EC(uint64_t a1)
{
  v20.receiver = v1;
  v20.super_class = type metadata accessor for FMBaseContentViewController();
  objc_msgSendSuper2(&v20, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v5 = objc_opt_self();
  v6 = UIFontTextStyleSubheadline;
  if (v3)
  {
    v5 = [v5 _preferredFontForTextStyle:UIFontTextStyleSubheadline maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = [v5 preferredFontForTextStyle:v6];
LABEL_5:
  v7 = v5;
  [v5 lineHeight];
  v9 = v8;

  [*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicatorHeightConstraint] setConstant:v9];
  [*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorHeightConstraint] setConstant:v9];
  v18 = &type metadata for SolariumFeatureFlag;
  v19 = sub_10000BD04();
  LOBYTE(v7) = isFeatureEnabled(_:)();
  sub_100006060(v17);
  if ((v7 & 1) == 0)
  {
    v10 = [*&v1[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionBackground] layer];
    v11 = [v1 traitCollection];
    v12 = [v11 userInterfaceStyle];

    v13 = objc_opt_self();
    v14 = &selRef_clearColor;
    if (v12 != 2)
    {
      v14 = &selRef_whiteColor;
    }

    v15 = [v13 *v14];
    v16 = [v15 CGColor];

    [v10 setBackgroundColor:v16];
  }
}

void sub_10027D984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() actionWithTitle:v11 style:0 handler:0];

  [v10 addAction:v12];
  [a7 presentViewController:v10 animated:1 completion:0];
}

id sub_10027DAD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBaseContentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10027DCBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10027DD00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 209))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 208);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10027DD54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 208) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 208) = a2 + 1;
    }
  }

  return result;
}

void sub_10027DF18()
{
  v1 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryBackground;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) init];
  v2 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for FMScrollView()) init];
  v4 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabel;
  *(v0 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryTitleLabel;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_secondaryLabel;
  type metadata accessor for FMCopyableLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v6) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel;
  *(v0 + v8) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v9 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_timestampLabel;
  *(v0 + v9) = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel;
  *(v0 + v10) = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryRowStackView;
  *(v0 + v11) = [objc_allocWithZone(UIStackView) init];
  v12 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsStackView;
  *(v0 + v12) = [objc_allocWithZone(UIStackView) init];
  v13 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_headerBackground;
  *(v0 + v13) = [objc_allocWithZone(UIView) init];
  v14 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView;
  type metadata accessor for FMBatteryWrapperView();
  *(v0 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_actionButton) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_labelsTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicatorHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorHeightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollViewBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollPocket) = 0;
  v15 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_locatingIndicator;
  *(v0 + v15) = [objc_allocWithZone(UIActivityIndicatorView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isLocating) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_isCollapsed) = 0;
  v16 = (v0 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText);
  *v16 = 0;
  v16[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10027E1D4()
{
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v20._object = 0x8000000100583630;
  v3._object = 0x800000010058B580;
  v4.value._object = 0x8000000100583610;
  v3._countAndFlagsBits = 0xD000000000000015;
  v4.value._countAndFlagsBits = 0xD000000000000010;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v20);

  v6 = [v1 mainBundle];
  v21._object = 0x8000000100583630;
  v7._countAndFlagsBits = 0xD000000000000018;
  v7._object = 0x800000010058B5A0;
  v8.value._object = 0x8000000100583610;
  v8.value._countAndFlagsBits = 0xD000000000000010;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v21._countAndFlagsBits = 0xD000000000000015;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v21);

  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() systemImageNamed:v10];

  if (v11)
  {
    v12 = [objc_opt_self() systemBlueColor];
    v13 = [v11 imageWithTintColor:v12 renderingMode:1];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_allocWithZone(v0);
  v15 = String._bridgeToObjectiveC()();

  v16 = String._bridgeToObjectiveC()();

  v17 = [v14 initWithTitle:v15 detailText:v16 icon:v13];

  v18 = v17;
  sub_10027E42C();

  return v18;
}

void sub_10027E42C()
{
  v1 = [objc_opt_self() boldButton];
  v2 = [objc_opt_self() mainBundle];
  v8._object = 0x800000010058B5E0;
  v3._object = 0x800000010058B5C0;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v8);

  v5 = String._bridgeToObjectiveC()();

  [v1 setTitle:v5 forState:0];

  [v1 addTarget:v0 action:"continue" forControlEvents:64];
  v6 = [v0 buttonTray];
  [v6 addButton:v1];
}

id sub_10027E6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v12 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = String._bridgeToObjectiveC()();

LABEL_6:
  v17.receiver = v7;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithTitle:detailText:symbolName:contentLayout:", v12, v13, v14, a7);

  return v15;
}

uint64_t sub_10027E994(char a1)
{
  _StringGuts.grow(_:)(34);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "NO_ITEMS_FOUND_NEARBY";
    }

    else
    {
      v2 = "DING_VIEW_BUTTON_";
    }

    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = "HELP_RETURN_LOST_ITEM";
    v3 = 0xD000000000000018;
  }

  v4 = v2 | 0x8000000000000000;
  String.append(_:)(*&v3);

  v5 = [objc_opt_self() mainBundle];
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v11._object = 0x8000000100579A00;
  v6.value._object = 0x80000001005799E0;
  v7._countAndFlagsBits = 0xD000000000000020;
  v7._object = 0x800000010058B850;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000018;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10027EAEC(char a1)
{
  _StringGuts.grow(_:)(45);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "NO_ITEMS_FOUND_NEARBY";
    }

    else
    {
      v2 = "DING_VIEW_BUTTON_";
    }

    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = "HELP_RETURN_LOST_ITEM";
    v3 = 0xD000000000000018;
  }

  v4 = v2 | 0x8000000000000000;
  String.append(_:)(*&v3);

  v5 = [objc_opt_self() mainBundle];
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v11._object = 0x8000000100579A00;
  v6.value._object = 0x80000001005799E0;
  v7._countAndFlagsBits = 0xD00000000000002BLL;
  v7._object = 0x800000010058B820;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000018;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

void sub_10027EC44(char a1)
{
  _StringGuts.grow(_:)(47);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "NO_ITEMS_FOUND_NEARBY";
    }

    else
    {
      v2 = "DING_VIEW_BUTTON_";
    }

    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = "HELP_RETURN_LOST_ITEM";
    v3 = 0xD000000000000018;
  }

  v4 = v2 | 0x8000000000000000;
  String.append(_:)(*&v3);

  v5 = [objc_opt_self() mainBundle];
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x8000000100579A00;
  v6.value._object = 0x80000001005799E0;
  v7._countAndFlagsBits = 0xD00000000000002DLL;
  v7._object = 0x800000010058B7C0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v27._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v27);

  v9 = objc_allocWithZone(NSMutableAttributedString);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithString:v10];

  v12 = [v11 mutableString];
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 rangeOfString:v13];
  v16 = v15;

  if (v14 == NSNotFound.getter())
  {
  }

  else
  {
    v17 = [objc_allocWithZone(NSTextAttachment) init];
    v18 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    v19 = [objc_opt_self() configurationWithFont:v18];

    v20 = v19;
    v21 = String._bridgeToObjectiveC()();
    v22 = [objc_opt_self() _systemImageNamed:v21 withConfiguration:v20];

    if (v22)
    {

      v23 = [objc_opt_self() labelColor];
      v24 = [v22 imageWithTintColor:v23];

      v25 = [v24 imageWithRenderingMode:1];
      [v17 setImage:v25];

      v26 = [objc_opt_self() attributedStringWithAttachment:v17];
      [v11 replaceCharactersInRange:v14 withAttributedString:{v16, v26}];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10027F018(char a1)
{
  _StringGuts.grow(_:)(35);

  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "NO_ITEMS_FOUND_NEARBY";
    }

    else
    {
      v2 = "DING_VIEW_BUTTON_";
    }

    v3 = 0xD000000000000015;
  }

  else
  {
    v2 = "HELP_RETURN_LOST_ITEM";
    v3 = 0xD000000000000018;
  }

  v4 = v2 | 0x8000000000000000;
  String.append(_:)(*&v3);

  v5 = [objc_opt_self() mainBundle];
  v6.value._countAndFlagsBits = 0xD000000000000013;
  v11._object = 0x8000000100579A00;
  v6.value._object = 0x80000001005799E0;
  v7._countAndFlagsBits = 0xD000000000000021;
  v7._object = 0x800000010058B730;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000018;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v6, v5, v8, v11)._countAndFlagsBits;

  return countAndFlagsBits;
}

id sub_10027F170()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

char *sub_10027F214(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentStackView;
  *(v1 + v3) = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentContainerView;
  *(v1 + v4) = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_heroImageView;
  *(v1 + v5) = [objc_allocWithZone(UIImageView) init];
  v6 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel;
  *(v1 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_primarySubtitleLabel;
  *(v1 + v7) = [objc_allocWithZone(UILabel) init];
  v8 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel;
  *(v1 + v8) = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButton;
  *(v1 + v9) = [objc_allocWithZone(UIButton) init];
  v10 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_spacerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButtonTopConstraint;
  *(v1 + v11) = [objc_allocWithZone(NSLayoutConstraint) init];
  *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_type) = 1;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_cardChangeSubscription) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_showsAdditionalContent) = 1;
  v26 = 0;
  __asm { FMOV            V1.2D, #4.0 }

  v19[0] = xmmword_100552160;
  v19[1] = _Q1;
  v19[2] = xmmword_100552170;
  v19[3] = xmmword_100552180;
  v19[4] = xmmword_100552190;
  v19[5] = xmmword_1005521A0;
  v19[6] = xmmword_1005521B0;
  v19[7] = xmmword_1005521C0;
  v19[8] = xmmword_1005521D0;
  v19[9] = xmmword_1005521E0;
  v20 = 0x4030000000000000;
  v21 = 0x403A000000000000;
  v22 = 0;
  __asm { FMOV            V0.2D, #16.0 }

  v23 = _Q0;
  v24 = 0x4046000000000000;
  v25 = 0;
  return sub_100278C9C(a1, v19);
}

id sub_10027F63C()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMUnknownItemsLandingViewController();
  objc_msgSendSuper2(&v12, "viewLayoutMarginsDidChange");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = result;
  [result layoutMargins];
  v4 = v3;

  [*&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentStackView] setSpacing:v4];
  [*&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentContainerView] setLayoutMargins:{v4, v4, v4, v4}];
  [*&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButtonTopConstraint] setConstant:v4];
  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [result safeAreaInsets];
  v7 = v6;

  if (v7 != 0.0)
  {
    result = [v0 view];
    if (result)
    {
      v8 = result;
      [result safeAreaInsets];
      v10 = v9;

      result = [v0 systemMinimumLayoutMargins];
      if (v11 >= v10)
      {
        return result;
      }

      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    return result;
  }

  [v0 systemMinimumLayoutMargins];
LABEL_7:
  [v0 additionalSafeAreaInsets];
  return [v0 setAdditionalSafeAreaInsets:?];
}

uint64_t sub_10027F8A0()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1006AEDB8 != -1)
  {
    swift_once();
  }

  v2 = qword_1006D4E20;
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7[4] = sub_1002824EC;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_10046DEDC;
  v7[3] = &unk_100632918;
  v4 = _Block_copy(v7);

  v5 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *(v0 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_cardChangeSubscription) = v5;
  return swift_unknownObjectRelease();
}

void sub_10027FA04()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_15;
  }

  v1 = v0;
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16))
  {
    goto LABEL_14;
  }

  v2 = sub_10004CC50(v12);
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

  sub_100006004(*(v1 + 56) + 32 * v2, &v13);
  sub_10004CDB8(v12);

  if (!*(&v14 + 1))
  {
LABEL_16:
    sub_100012DF0(&v13, &unk_1006B8740);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v4 = *v12;
  v5 = Notification.userInfo.getter();
  if (!v5)
  {
LABEL_15:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_16;
  }

  v6 = v5;
  AnyHashable.init<A>(_:)();
  if (!*(v6 + 16) || (v7 = sub_10004CC50(v12), (v8 & 1) == 0))
  {
LABEL_14:

    sub_10004CDB8(v12);
    goto LABEL_15;
  }

  sub_100006004(*(v6 + 56) + 32 * v7, &v13);
  sub_10004CDB8(v12);

  if (!*(&v14 + 1))
  {
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if (v12[0] == 0x75747365476E6170 && v12[1] == 0xEA00000000006572)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return;
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100281618(v4);
  }
}

uint64_t sub_10027FC48()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B9340);
  __chkstk_darwin(v2 - 8);
  v33 = &v32 - v3;
  v4 = sub_10007EBC0(&qword_1006B6D60);
  v5 = __chkstk_darwin(v4 - 8);
  v34 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v32 - v7;
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  v35 = type metadata accessor for AttributedString();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_heroImageView);
  v14 = OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_type;
  v15 = sub_10027F170();
  [v13 setImage:v15];

  v16 = [objc_opt_self() mainBundle];
  v17.value._countAndFlagsBits = 0xD000000000000013;
  v38._object = 0x8000000100579A00;
  v18._object = 0x800000010058B710;
  v17.value._object = 0x80000001005799E0;
  v18._countAndFlagsBits = 0xD000000000000018;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v38._countAndFlagsBits = 0xD000000000000018;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v38);

  *(v1 + OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryLabelText) = v20;

  sub_10027D190();
  v21 = *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel);
  sub_10027E994(*(v1 + v14));
  v22 = String._bridgeToObjectiveC()();

  [v21 setText:v22];

  v23 = *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_primarySubtitleLabel);
  sub_10027EAEC(*(v1 + v14));
  v24 = String._bridgeToObjectiveC()();

  [v23 setText:v24];

  v25 = *(v1 + OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel);
  sub_10027EC44(*(v1 + v14));
  v27 = v26;
  [v25 setAttributedText:v26];

  sub_10027F018(*(v1 + v14));
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v36 = 2;
  v37 = 0;
  sub_100282428();
  AttributedString.subscript.setter();
  UIButton.configuration.getter();
  v28 = type metadata accessor for UIButton.Configuration();
  if ((*(*(v28 - 8) + 48))(v8, 1, v28))
  {
    sub_10028247C(v8, v34);
    UIButton.configuration.setter();
    (*(v10 + 8))(v12, v35);
    return sub_100012DF0(v8, &qword_1006B6D60);
  }

  else
  {
    v30 = v33;
    v31 = v35;
    (*(v10 + 16))(v33, v12, v35);
    (*(v10 + 56))(v30, 0, 1, v31);
    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
    return (*(v10 + 8))(v12, v31);
  }
}

id sub_1002801A0()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B6D60);
  __chkstk_darwin(v2 - 8);
  v48 = &v43 - v3;
  sub_1002791F0();
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_batteryIndicatorView] setHidden:1];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_separatorDotLabel] setHidden:1];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primaryBackground] setAlpha:1.0];
  [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator] setAlpha:1.0];
  v4 = *(*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView] + OBJC_IVAR____TtC6FindMy12FMScrollView_content);
  v5 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentContainerView];
  [v4 addSubview:v5];
  v6 = *&v1[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentStackView];
  [v5 addSubview:v6];
  [v6 setAxis:1];
  v47 = *&v1[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_heroImageView];
  [v47 setContentMode:1];
  v7 = *&v1[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel];
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle:UIFontTextStyleTitle1];
  v10 = sub_100039388(2);

  [v7 setFont:v10];
  v11 = *&v1[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_primarySubtitleLabel];
  v12 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
  [v11 setFont:v12];

  v13 = *&v1[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel];
  v14 = [v8 preferredFontForTextStyle:UIFontTextStyleBody];
  [v13 setFont:v14];

  v46 = sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EF0;
  *(inited + 32) = v7;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  v16 = inited & 0xC000000000000001;
  p_ivar_lyt = (inited & 0xFFFFFFFFFFFFFF8);
  v18 = v7;
  v19 = v11;
  v20 = v13;
  v49 = v18;
  v45 = v19;
  v44 = v20;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_29;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  for (i = v49; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v22 = i;
    [i setNumberOfLines:0];
    [v22 setAdjustsFontForContentSizeCategory:1];
    [v22 setTextAlignment:1];

    if (v16)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (p_ivar_lyt[2] < 2uLL)
      {
        goto LABEL_28;
      }

      v23 = *(inited + 40);
    }

    v24 = v23;
    [v23 setNumberOfLines:0];
    [v24 setAdjustsFontForContentSizeCategory:1];
    [v24 setTextAlignment:1];

    if (v16)
    {
      break;
    }

    if (p_ivar_lyt[2] >= 3uLL)
    {
      v25 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    ;
  }

  v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v26 = v25;
  [v25 setNumberOfLines:0];
  [v26 setAdjustsFontForContentSizeCategory:1];
  [v26 setTextAlignment:1];

  swift_setDeallocating();
  swift_arrayDestroy();
  v27 = *&v1[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButton];
  v28 = v48;
  sub_100144DD0(2);
  v29 = type metadata accessor for UIButton.Configuration();
  (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
  UIButton.configuration.setter();
  [v27 addTarget:v1 action:"handleButtonTap:" forControlEvents:64];
  result = [v1 view];
  if (result)
  {
    v31 = result;
    [result addSubview:v27];

    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_100552F00;
    v33 = v47;
    *(v32 + 32) = v47;
    v34 = v45;
    *(v32 + 40) = v49;
    *(v32 + 48) = v34;
    *(v32 + 56) = v44;
    p_ivar_lyt = *&v1[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_spacerView];
    *(v32 + 64) = p_ivar_lyt;
    v35 = v32 & 0xC000000000000001;
    v16 = v32 & 0xFFFFFFFFFFFFFF8;
    v1 = v33;
    v36 = p_ivar_lyt;
    if ((v32 & 0xC000000000000001) == 0)
    {
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v37 = v1;
        goto LABEL_14;
      }

LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
    v1 = v37;
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    [v6 addArrangedSubview:v37];

    if (v35)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_27;
      }

      v38 = *(v32 + 40);
    }

    v1 = v38;
    [v6 addArrangedSubview:v38];

    if (v35)
    {
      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_27;
      }

      v39 = *(v32 + 48);
    }

    v1 = v39;
    [v6 addArrangedSubview:v39];

    if (v35)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_27;
      }

      v40 = *(v32 + 56);
    }

    v1 = v40;
    [v6 addArrangedSubview:v40];

    if (v35)
    {
      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_26;
    }

    if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 5uLL)
    {
      v41 = *(v32 + 64);
LABEL_26:
      v42 = v41;
      [v6 addArrangedSubview:v41];

      swift_setDeallocating();
      return swift_arrayDestroy();
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void sub_10028085C()
{
  sub_10027A200();
  sub_10007EBC0(&qword_1006AFC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100555120;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentContainerView];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_contentStackView];
  *(inited + 40) = v3;
  v4 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_heroImageView];
  *(inited + 48) = v4;
  v5 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_titleLabel];
  *(inited + 56) = v5;
  v6 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_primarySubtitleLabel];
  *(inited + 64) = v6;
  v7 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_secondarySubtitleLabel];
  *(inited + 72) = v7;
  v8 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButton];
  *(inited + 80) = v8;
  v9 = inited & 0xC000000000000001;
  v125 = v2;
  v121 = v3;
  v122 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

  for (i = v125; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v15 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_31;
      }

      v16 = *(inited + 40);
    }

    v17 = v16;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_31;
      }

      v18 = *(inited + 48);
    }

    v19 = v18;
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 4uLL)
      {
        goto LABEL_31;
      }

      v20 = *(inited + 56);
    }

    v21 = v20;
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 5uLL)
      {
        goto LABEL_31;
      }

      v22 = *(inited + 64);
    }

    v23 = v22;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];

    if (v9)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 6uLL)
      {
        goto LABEL_31;
      }

      v24 = *(inited + 72);
    }

    v25 = v24;
    [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

    v124 = v13;
    if (v9)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 7uLL)
    {
      v26 = *(inited + 80);
      goto LABEL_22;
    }

LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
  v27 = v26;
  [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v28 = [objc_allocWithZone(UILayoutGuide) init];
  v29 = [v0 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_40;
  }

  v30 = v29;
  [v29 addLayoutGuide:v28];

  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1005521F0;
  v32 = [v28 topAnchor];
  v33 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_primarySeparator] topAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v31 + 32) = v34;
  v35 = [v28 leadingAnchor];
  v36 = [v0 view];
  if (!v36)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v37 = v36;
  v38 = [v36 layoutMarginsGuide];

  v39 = [v38 leadingAnchor];
  v40 = [v35 constraintEqualToAnchor:v39];

  *(v31 + 40) = v40;
  v41 = [v28 trailingAnchor];
  v42 = [v0 view];
  if (!v42)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v43 = v42;
  v44 = objc_opt_self();
  v45 = [v43 layoutMarginsGuide];

  v46 = [v45 trailingAnchor];
  v47 = [v41 constraintEqualToAnchor:v46];

  *(v31 + 48) = v47;
  v48 = [v28 bottomAnchor];
  v49 = [v13 topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v31 + 56) = v50;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v123 = v44;
  [v44 activateConstraints:isa];

  v52 = OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollViewBottomConstraint;
  v53 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollViewBottomConstraint];
  if (v53)
  {
    [v53 setActive:0];
  }

  v54 = *&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_scrollView];
  v55 = [v54 bottomAnchor];
  v56 = [v13 topAnchor];
  v57 = [v55 constraintEqualToAnchor:v56];

  [v57 setActive:1];
  v58 = *&v0[v52];
  *&v0[v52] = v57;
  v120 = v57;

  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_100552F00;
  v60 = [v125 topAnchor];
  v61 = [*&v0[OBJC_IVAR____TtC6FindMy27FMBaseContentViewController_tertiaryLabel] bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:2.0];

  *(v59 + 32) = v62;
  v63 = [v125 leadingAnchor];
  v64 = [v0 view];
  if (!v64)
  {
    goto LABEL_42;
  }

  v65 = v64;
  v66 = [v64 leadingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66];
  *(v59 + 40) = v67;
  v68 = [v125 trailingAnchor];
  v69 = [v0 view];
  if (!v69)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v70 = v69;
  v71 = [v69 trailingAnchor];

  v72 = [v68 constraintEqualToAnchor:v71];
  *(v59 + 48) = v72;
  v73 = [v125 bottomAnchor];
  v74 = [*&v54[OBJC_IVAR____TtC6FindMy12FMScrollView_content] bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74];

  *(v59 + 56) = v75;
  v76 = [v125 heightAnchor];
  v77 = [v28 heightAnchor];
  v78 = [v76 constraintEqualToAnchor:v77];

  LODWORD(v79) = 1132068864;
  [v78 setPriority:v79];
  *(v59 + 64) = v78;
  v80 = Array._bridgeToObjectiveC()().super.isa;

  [v123 activateConstraints:v80];

  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_1005521F0;
  v82 = [v121 topAnchor];
  v83 = [v125 layoutMarginsGuide];
  v84 = [v83 topAnchor];

  v85 = [v82 constraintEqualToAnchor:v84];
  *(v81 + 32) = v85;
  v86 = [v121 bottomAnchor];
  v87 = [v125 layoutMarginsGuide];
  v88 = [v87 bottomAnchor];

  v89 = [v86 constraintEqualToAnchor:v88];
  *(v81 + 40) = v89;
  v90 = [v121 leadingAnchor];
  v91 = [v125 layoutMarginsGuide];
  v92 = [v91 leadingAnchor];

  v93 = [v90 constraintEqualToAnchor:v92];
  *(v81 + 48) = v93;
  v94 = [v121 trailingAnchor];
  v95 = [v125 layoutMarginsGuide];
  v96 = [v95 trailingAnchor];

  v97 = [v94 constraintEqualToAnchor:v96];
  *(v81 + 56) = v97;
  v98 = Array._bridgeToObjectiveC()().super.isa;

  [v123 activateConstraints:v98];

  v99 = [v124 topAnchor];
  v100 = [v122 bottomAnchor];
  v101 = [v99 constraintGreaterThanOrEqualToAnchor:v100];

  v102 = *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButtonTopConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy35FMUnknownItemsLandingViewController_searchButtonTopConstraint] = v101;
  v103 = v101;

  v104 = swift_allocObject();
  *(v104 + 16) = xmmword_1005521F0;
  *(v104 + 32) = v103;
  v105 = v103;
  v106 = [v124 bottomAnchor];
  v107 = [v0 view];
  if (v107)
  {
    v108 = v107;
    v109 = [v107 safeAreaLayoutGuide];

    v110 = [v109 bottomAnchor];
    v111 = [v106 constraintEqualToAnchor:v110];

    LODWORD(v112) = 1132068864;
    [v111 setPriority:v112];
    *(v104 + 40) = v111;
    v113 = [v124 leadingAnchor];
    v114 = [v28 leadingAnchor];
    v115 = [v113 constraintEqualToAnchor:v114];

    *(v104 + 48) = v115;
    v116 = [v124 trailingAnchor];
    v117 = [v28 trailingAnchor];
    v118 = [v116 constraintEqualToAnchor:v117];

    *(v104 + 56) = v118;
    v119 = Array._bridgeToObjectiveC()().super.isa;

    [v123 activateConstraints:v119];

    return;
  }

LABEL_44:
  __break(1u);
}