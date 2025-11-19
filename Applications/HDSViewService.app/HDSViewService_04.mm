id sub_100060AEC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100060BAC()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100060C10()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100108998);
  sub_100012AAC(v0, qword_100108998);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100060C94()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001036F0);
  v1 = sub_100012AAC(v0, qword_1001036F0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100060D5C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000144DC();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    swift_getObjectType();
    v10 = swift_conformsToProtocol2();
    if (v10)
    {
      if (a1)
      {
        v11 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation);
        if (v11)
        {
          v12 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation + 8);
          v13 = v10;
          v14 = a1;
          sub_100061704(v11);
          v11(v14, v13);
          sub_1000616F4(v11);
        }
      }
    }

    v15 = OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController;
    v16 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController);
    if (v16)
    {
      v17 = v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler;
      v18 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler);
      if (v18)
      {
        v19 = *(v17 + 8);
        sub_100061704(v18);
        v20 = v16;
        v21 = v18();
        if (v21)
        {
          v22 = v21;
          v23 = a1;
          v24 = v20;
          sub_100062CC8(v24, v22, v24, v23);

          sub_1000616F4(v18);
        }

        else
        {

          sub_1000616F4(v18);
        }
      }
    }

    else
    {
      v31[1] = &OBJC_PROTOCOL___PRXCardContentProviding;
      v25 = swift_dynamicCastObjCProtocolConditional();
      if (v25)
      {
        v26 = v25;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v28 = Strong;
          v29 = [Strong presentProxCardFlowWithDelegate:v2 initialViewController:v26];
        }

        else
        {
          v29 = 0;
        }

        v30 = *(v2 + v15);
        *(v2 + v15) = v29;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100061004(void *a1, void *a2, uint64_t a3)
{
  sub_1000754B8();
  [a2 pushViewController:a3 animated:1];
  v6 = [a1 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  v8 = [a1 view];
  if (!v8)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v9 = v8;
  [v8 layoutIfNeeded];
}

void sub_1000610CC(int a1, char a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) = 1;
    if (qword_100101678 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_1001036F0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = a1;
      *(v13 + 8) = 1024;
      *(v13 + 10) = a2 & 1;
      _os_log_impl(&_mh_execute_header, v11, v12, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupRouter: dismiss with type %d, animated: %{BOOL}d", v13, 0xEu);
    }

    v14 = *(v2 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController);
    if (v14)
    {
      sub_1000144DC();
      v15 = v14;
      *v9 = static OS_dispatch_queue.main.getter();
      (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
      v16 = _dispatchPreconditionTest(_:)();
      (*(v6 + 8))(v9, v5);
      if (v16)
      {
        [v15 dismissViewControllerAnimated:a2 & 1 completion:0];
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v21 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v21, v17, "HomePodSetupRouter: dismiss attempted while navigationController is nil", v18, 2u);
      }

      v19 = v21;
    }
  }
}

id sub_1000613B4()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_navigationController] = 0;
  v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed] = 0;
  v1 = &v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_prepareForPresentation];
  *v3 = 0;
  v3[1] = 0;
  v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_blockHardwareButtons] = 0;
  v0[OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_homePressed] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for HomePodSetupRouter();
  return objc_msgSendSuper2(&v5, "init");
}

id sub_100061480()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupRouter();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100061560()
{
  v1 = v0;
  if (qword_100101678 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_1001036F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "<loom:ViewService:matchHomePodSetupWarnings> HomePodSetupRouter: proxCardFlowDidDismiss called dismissing the flow", v5, 2u);
  }

  if ((*(v1 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_dismissed) & 1) == 0)
  {
    sub_1000610CC(0, 1);
  }

  v6 = v1 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss;
  v7 = *(v1 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_didDismiss);
  if (v7)
  {
    v8 = *(v6 + 8);

    v7(v9);

    sub_1000616F4(v7);
  }
}

uint64_t sub_1000616F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100061704(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

char *sub_1000617BC()
{
  v1 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_stackView;
  *&v0[v1] = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle;
  *&v0[v2] = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel;
  *&v0[v3] = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel;
  *&v0[v4] = [objc_allocWithZone(UILabel) init];
  v13.receiver = v0;
  v13.super_class = type metadata accessor for StereoPairButton();
  v5 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v6 = *&v5[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel];
  v7 = v5;
  v8 = v6;
  v9 = String._bridgeToObjectiveC()();

  [v8 setText:v9];

  v10 = *&v7[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel];
  v11 = String._bridgeToObjectiveC()();

  [v10 setText:v11];

  sub_100061A6C();
  return v7;
}

id sub_100061950(void *a1)
{
  v3 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_stackView;
  *&v1[v3] = [objc_allocWithZone(UIStackView) init];
  v4 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v11.receiver = v1;
  v11.super_class = type metadata accessor for StereoPairButton();
  v7 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    sub_100061A6C();
  }

  return v8;
}

id sub_100061A6C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_stackView];
  [v2 setAxis:1];
  [v2 setSpacing:6.0];
  [v2 setUserInteractionEnabled:0];
  [v0 addSubviewToBounds:v2 with:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v3 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle];
  [v2 addArrangedSubview:v3];
  v4 = [v3 layer];
  [v4 setBorderWidth:2.0];

  sub_1000831A0(1.0, 1.0, 750.0);
  v5 = *&v1[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel];
  v6 = [objc_opt_self() systemFontOfSize:36.0 weight:UIFontWeightSemibold];
  [v5 setFont:v6];

  [v5 setTextAlignment:1];
  sub_1000832FC(v5, 0.0, 0.0);
  v7 = *&v1[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel];
  [v7 setTextAlignment:1];

  return [v2 addArrangedSubview:v7];
}

void sub_100061C28()
{
  v1 = [v0 isHighlighted];
  v2 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_innerLabel];
  v3 = objc_opt_self();
  v4 = v3;
  v5 = &selRef_systemGrayColor;
  if (v1)
  {
    v6 = &selRef_systemBlueColor;
  }

  else
  {
    v6 = &selRef_systemGrayColor;
  }

  if (v1)
  {
    v5 = &selRef_systemBackgroundColor;
    v7 = &selRef_systemBlueColor;
  }

  else
  {
    v7 = &selRef_clearColor;
  }

  v8 = [v3 *v5];
  [v2 setTextColor:v8];

  v9 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_bottomLabel];
  v10 = [v4 *v6];
  [v9 setTextColor:v10];

  v11 = *&v0[OBJC_IVAR____TtC14HDSViewService16StereoPairButton_circle];
  v12 = [v4 *v7];
  [v11 setBackgroundColor:v12];

  v13 = [v11 layer];
  v14 = [v4 *v6];
  v15 = [v14 CGColor];

  [v13 setBorderColor:v15];
}

id sub_100061EC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StereoPairButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100061F84()
{
  result = [*v0 name];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100061FE4()
{
  result = [*v0 name];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6._countAndFlagsBits = v3;
    v6._object = v5;
    String.append(_:)(v6);

    return 0x666E696563696F76;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10006207C(void *a1)
{
  v22._countAndFlagsBits = 1031365995;
  v22._object = 0xE400000000000000;
  v1 = a1;
  result = [v1 name];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7._countAndFlagsBits = v4;
    v7._object = v6;
    String.append(_:)(v7);

    v8._countAndFlagsBits = String.init<A>(reflecting:)();
    String.append(_:)(v8);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v10._countAndFlagsBits = v22._countAndFlagsBits;
    object = v22._object;
    strcpy(&v22, "<VoiceOption ");
    HIWORD(v22._object) = -4864;
    v10._object = object;
    String.append(_:)(v10);

    countAndFlagsBits = v22._countAndFlagsBits;
    v12 = v22._object;
    _StringGuts.grow(_:)(16);

    strcpy(&v22, "displayValue=");
    HIWORD(v22._object) = -4864;
    result = [v1 name];
    if (result)
    {
      v14 = result;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v15._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 32;
      v16._object = 0xE100000000000000;
      String.append(_:)(v16);

      String.append(_:)(v22);

      strcpy(&v22, "voiceInfo=");
      BYTE3(v22._object) = 0;
      HIDWORD(v22._object) = -369098752;
      sub_100062340();
      v17._countAndFlagsBits = String.init<A>(reflecting:)();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = v22._object;
      v22._object = v12;

      v20._countAndFlagsBits = v22._countAndFlagsBits;
      v20._object = v19;
      String.append(_:)(v20);

      v21._countAndFlagsBits = 62;
      v21._object = 0xE100000000000000;
      String.append(_:)(v21);

      return countAndFlagsBits;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100062340()
{
  result = qword_100103428;
  if (!qword_100103428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100103428);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleAccountFeatureFlags(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppleAccountFeatureFlags(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for HomeDeviceSetupFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeDeviceSetupFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SharingFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006272C()
{
  result = qword_100103828;
  if (!qword_100103828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103828);
  }

  return result;
}

Swift::Int sub_100062780()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000627F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

const char *sub_10006284C()
{
  v1 = *v0;
  v2 = "psg_support";
  v3 = "sysdrop";
  v4 = "sysdrop_rp";
  if (v1 != 3)
  {
    v4 = "NetworkSelection";
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = "home_selection";
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000628E0()
{
  result = qword_100103830;
  if (!qword_100103830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103830);
  }

  return result;
}

unint64_t sub_100062938()
{
  result = qword_100103838;
  if (!qword_100103838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103838);
  }

  return result;
}

const char *sub_1000629A0()
{
  if (*v0)
  {
    return "HomePodUseAMSEarly";
  }

  else
  {
    return "HomePodUseAMS";
  }
}

Swift::Int sub_1000629D8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100062A44()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100062AAC()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103840);
  v1 = sub_100012AAC(v0, qword_100103840);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100062B74(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_100101680 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103840);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Performing deferred block after navigation controller transition", v6, 2u);
  }

  return a2();
}

uint64_t sub_100062C68(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100062CC8(void *a1, void *a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [a1 transitionCoordinator];
  if (v12)
  {
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_100062FE0;
    *(v14 + 24) = v8;
    aBlock[4] = sub_100063024;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100062C68;
    aBlock[3] = &unk_1000F0518;
    v15 = _Block_copy(aBlock);

    [v13 animateAlongsideTransition:0 completion:v15];
    _Block_release(v15);
    if (qword_100101680 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103840);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Navigation controller is in the middle of a transition, waiting for it to complete", v19, 2u);
    }

    swift_unknownObjectRelease();

    return;
  }

  sub_1000754B8();
  [v10 pushViewController:v11 animated:1];
  v20 = [v9 view];
  if (!v20)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  [v20 setNeedsLayout];

  v22 = [v9 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 layoutIfNeeded];
}

uint64_t sub_100062F98()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062FEC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006302C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100063044()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103858);
  v1 = sub_100012AAC(v0, qword_100103858);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006310C()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v45 - v12);
  v14 = type metadata accessor for HomePodSetupPickerViewController();
  v46.receiver = v1;
  v46.super_class = v14;
  objc_msgSendSuper2(&v46, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v15, v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
    if (qword_100101688 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103858);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupPicker: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    if (qword_100101688 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100103858);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v45 = v24;
      *v23 = 136315138;
      v25 = *v11;
      v26 = v11[1];

      sub_100016374(v11);
      v27 = sub_1000B08A0(v25, v26, &v45);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupPicker: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100016374(v11);
    }

    sub_100063A8C(v13);
    v28 = *(v13 + v6[10]);
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v28, sub_10006584C, v29);

    v30 = *(v13 + v6[19]);
    if ((v30 & 2) == 0)
    {
      v31 = (v13 + v6[20]);
      if (v31[1])
      {
        v33 = v31[6];
        v32 = v31[7];
        v35 = v31[4];
        v34 = v31[5];
        v37 = v31[2];
        v36 = v31[3];
        v38 = *v31;
        v39 = v30;
        v40 = String._bridgeToObjectiveC()();
        v41 = String._bridgeToObjectiveC()();
        v42 = String._bridgeToObjectiveC()();
        v43 = String._bridgeToObjectiveC()();
        v44 = [v1 dismissalConfirmationActionWithTitle:v40 message:v41 confirmButtonTitle:v42 cancelButtonTitle:v43];

        [v1 setDismissButtonAction:v44];
        v30 = v39;
      }
    }

    [v1 setDismissalType:v30];
    sub_100016374(v13);
  }
}

uint64_t sub_100063600(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = String._bridgeToObjectiveC()();
    [v5 showActivityIndicatorWithStatus:v6];
  }

  v7 = [v3 contentView];
  v8 = [v7 pickerView];

  v9 = [v8 selectedRowInComponent:0];
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = *&v3[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options];
  if (v9 >= *(v10 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000646E4(v10 + 40 * v9 + 32, v32);
  if (qword_100101688 != -1)
  {
LABEL_17:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100012AAC(v11, qword_100103858);
  sub_1000646E4(v32, &v28);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27[0] = swift_slowAlloc();
    *v14 = 136315394;
    v15 = sub_10000FEC4(v1);
    v17 = sub_1000B08A0(v15, v16, v27);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2080;
    v18 = v30;
    sub_10000EC1C(&v28, v30);
    v19 = (*(*(&v18 + 1) + 16))(v18, *(&v18 + 1));
    v21 = v20;
    sub_10000E70C(&v28);
    v22 = sub_1000B08A0(v19, v21, v27);

    *(v14 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v12, v13, "HomePodSetupPicker: User tapped on button: %s with selected option '%s'", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000E70C(&v28);
  }

  v23 = v33;
  v24 = v34;
  v25 = sub_10000EC1C(v32, v33);
  v27[3] = v23;
  v27[4] = *(v24 + 8);
  v26 = sub_100065854(v27);
  (*(*(v23 - 8) + 16))(v26, v25, v23);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  LOBYTE(v28) = v1;
  sub_100012DA0(v27, &v29, &qword_1001025D0, &unk_1000BD010);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007A070(&v28);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100012E08(&v28);
  return sub_10000E70C(v32);
}

void sub_100063A8C(int *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = *(*(v4 - 1) + 64);
  __chkstk_darwin(v4);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = String._bridgeToObjectiveC()();
  [v2 setTitle:v10];

  v11 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v13];

  p_type = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options;
  v15 = *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options];
  *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options] = *(a1 + v4[12]);

  if (qword_100101688 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103858);
    sub_100012AE4(a1, v7);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v47[0] = p_type;
      v20 = v19;
      v21 = swift_slowAlloc();
      v50[0] = v21;
      *v20 = 136315138;
      v22 = (v7 + v4[47]);
      v23 = *v22;
      v24 = v22[1];

      sub_100016374(v7);
      v25 = sub_1000B08A0(v23, v24, v50);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupPicker: systemNameIconForPickerView %s", v20, 0xCu);
      sub_10000E70C(v21);

      p_type = v47[0];
    }

    else
    {

      sub_100016374(v7);
    }

    v26 = (a1 + v4[47]);
    v27 = *v26;
    v28 = v26[1];
    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
      v30 = String._bridgeToObjectiveC()();
      v31 = [objc_opt_self() systemImageNamed:v30];
    }

    else
    {
      v31 = 0;
    }

    v32 = *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage];
    *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage] = v31;

    v33 = *(p_type + v2);

    v35 = sub_100063F58(v34);

    if (!v35)
    {
      break;
    }

    a1 = v35[2];
    if (!a1)
    {
LABEL_29:

      v4 = 0;
      goto LABEL_34;
    }

    v4 = 0;
    v7 = 32;
    p_type = &stru_1000F9FF0.type;
    do
    {
      if (v4 >= v35[2])
      {
        __break(1u);
        goto LABEL_36;
      }

      v36 = *(v35 + v7);
      if (v36 && [v36 homeLocationStatus] == 1)
      {
LABEL_17:

        goto LABEL_34;
      }

      v4 = (v4 + 1);
      v7 += 16;
    }

    while (a1 != v4);
    v4 = 0;
    v43 = 4;
    while (v35[2] != v4)
    {
      if (!v35[v43])
      {
        goto LABEL_17;
      }

      v4 = (v4 + 1);
      v43 += 2;
      if (a1 == v4)
      {
        goto LABEL_29;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

  sub_10000F25C(a1 + v4[14], &v48, &qword_100102350, &unk_1000BE1B0);
  if (v49)
  {
    v37 = sub_10000EC04(&v48, v50);
    v38 = *(p_type + v2);
    __chkstk_darwin(v37);
    v47[-2] = v50;

    v39 = *(v38 + 16);
    if (v39)
    {
      v4 = 0;
      v40 = (v38 + 32);
      while (1)
      {
        v41 = sub_1000646C4(v40);
        if (v41)
        {
          break;
        }

        v4 = (v4 + 1);
        v40 += 5;
        if (v39 == v4)
        {
          v4 = 0;
          break;
        }
      }

      v42 = v41 ^ 1;
    }

    else
    {
      v4 = 0;
      v42 = 1;
    }

    v44 = v42 & 1;

    sub_10000E70C(v50);
    if (v44)
    {
      v4 = 0;
    }
  }

  else
  {
    sub_10000EBA4(&v48, &qword_100102350, &unk_1000BE1B0);
    v4 = 0;
  }

LABEL_34:
  v45 = [v2 contentView];
  v46 = [v45 pickerView];

  [v46 selectRow:v4 inComponent:0 animated:0];
}

void *sub_100063F58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10008ECC8(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_1000646E4(i, v11);
      sub_10000E6C4(&qword_100102058, &unk_1000BD160);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10008ECC8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      *(v7 + 40) = v10 & 1;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_10006408C(void *a1, void *a2)
{
  v4 = a1[3];
  v3 = a1[4];
  sub_10000EC1C(a1, v4);
  v5 = (*(*(v3 + 8) + 8))(v4);
  v7 = v6;
  v9 = a2[3];
  v8 = a2[4];
  sub_10000EC1C(a2, v9);
  if (v5 == (*(*(v8 + 8) + 8))(v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

id sub_1000642D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupPickerViewController()
{
  result = qword_1001038A8;
  if (!qword_1001038A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000643D8()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100064488(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_1000644DC(int *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  if (qword_100101688 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100103858);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupPicker: presenter:didUpdate viewModel", v11, 2u);
  }

  sub_100012AE4(a1, v7);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v7, v2 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  if ([v2 isViewLoaded])
  {
    sub_100063A8C(a1);
  }
}

uint64_t sub_1000646E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100064748(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v122 - v9;
  v11 = [objc_allocWithZone(UIView) init];
  v12 = [objc_allocWithZone(UILabel) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v13 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options;
  v14 = *(v1 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_options);
  if (*(v14 + 16) <= a1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  sub_1000646E4(v14 + 40 * a1 + 32, v132);
  v15 = sub_10000E6C4(&qword_100102058, &unk_1000BD160);
  v16 = swift_dynamicCast();
  v127 = v13;
  v124 = v8;
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = v129;
  if (BYTE8(v129) != 1)
  {

LABEL_9:
    v21 = *&v13[v2];
    if (*(v21 + 16) > a1)
    {
      sub_1000646E4(v21 + 40 * a1 + 32, v132);
      v22 = v133;
      v23 = v134;
      sub_10000EC1C(v132, v133);
      (*(v23 + 16))(v22, v23);
      v17 = String._bridgeToObjectiveC()();

      sub_10000E70C(v132);
      [v12 setText:v17];
      goto LABEL_11;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v18 = String._bridgeToObjectiveC()();
  v19 = sub_100006658(v18);

  if (!v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
  }

  [v12 setText:v19];

  v20 = [objc_opt_self() systemBlueColor];
  [v12 setTextColor:v20];

LABEL_11:
  [v12 setTextAlignment:1];
  [v12 setAdjustsFontSizeToFitWidth:1];
  v24 = [objc_opt_self() systemFontOfSize:20.0];
  [v12 setFont:v24];

  v25 = &selRef_initWithSystemImageNamed_;
  v128 = v12;
  [v11 addSubview:v12];
  v26 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage;
  v27 = *(v2 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_defaultIconImage);
  if (!v27)
  {
    goto LABEL_15;
  }

  v125 = v15;
  v126 = v11;
  v28 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupPickerViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v2 + v28, v10, &qword_100103420, &unk_1000BCE90);
  v29 = type metadata accessor for HomePodSetupViewModel(0);
  v30 = *(*(v29 - 8) + 48);
  if (v30(v10, 1, v29))
  {
    sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
    v129 = 0u;
    v130 = 0u;
    v131 = 0;
LABEL_14:
    sub_10000EBA4(&v129, &qword_100102350, &unk_1000BE1B0);
    v11 = v126;
    goto LABEL_15;
  }

  sub_10000F25C(&v10[*(v29 + 56)], &v129, &qword_100102350, &unk_1000BE1B0);
  v65 = v27;
  sub_10000EBA4(v10, &qword_100103420, &unk_1000BCE90);
  if (!*(&v130 + 1))
  {

    goto LABEL_14;
  }

  v122 = v30;
  v123 = v65;
  sub_10000EC04(&v129, v132);
  v66 = *&v127[v2];
  if (*(v66 + 16) > a1)
  {
    sub_1000646E4(v66 + 40 * a1 + 32, &v129);
    v68 = *(&v130 + 1);
    v67 = v131;
    sub_10000EC1C(&v129, *(&v130 + 1));
    v69 = (*(*(v67 + 8) + 8))(v68);
    v71 = v70;
    v72 = v133;
    v73 = v134;
    sub_10000EC1C(v132, v133);
    if (v69 == (*(*(v73 + 8) + 8))(v72) && v71 == v74)
    {

      sub_10000E70C(&v129);
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_10000E70C(&v129);
      if ((v75 & 1) == 0)
      {

        sub_10000E70C(v132);
        v11 = v126;
        v25 = &selRef_initWithSystemImageNamed_;
LABEL_15:
        v133 = &type metadata for HomeDeviceSetupFeatureFlags;
        v134 = sub_100039FE0();
        LOBYTE(v132[0]) = 1;
        v31 = isFeatureEnabled(_:)();
        sub_10000E70C(v132);
        if ((v31 & 1) == 0 || (v32 = *(v2 + v26)) == 0)
        {
LABEL_33:
          v77 = objc_opt_self();
          sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_1000BD460;
          v79 = v128;
          v80 = [v128 topAnchor];
          v81 = [v11 topAnchor];
          v82 = [v80 constraintEqualToAnchor:v81];

          *(v78 + 32) = v82;
          v83 = [v79 leadingAnchor];
          v84 = [v11 leadingAnchor];
          v85 = [v83 constraintEqualToAnchor:v84];

          *(v78 + 40) = v85;
          v86 = [v79 bottomAnchor];
          v87 = [v11 bottomAnchor];
          v88 = [v86 constraintEqualToAnchor:v87];

          *(v78 + 48) = v88;
          v89 = [v79 trailingAnchor];

          v90 = [v11 trailingAnchor];
          v91 = [v89 constraintEqualToAnchor:v90];

          *(v78 + 56) = v91;
          sub_1000163D8();
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v77 activateConstraints:isa];

          return;
        }

        v33 = *&v127[v2];
        if (*(v33 + 16) > a1)
        {
          sub_1000646E4(v33 + 40 * a1 + 32, v132);
          v34 = v32;
          if (swift_dynamicCast())
          {
            v35 = v129;
            if (v129)
            {
              if ([v129 homeLocationStatus] == 1)
              {
                v36 = v25;
                v37 = [objc_allocWithZone(UIImageView) initWithImage:v34];
                [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
                [v37 setContentMode:1];
                [v11 v36[220]];
                v127 = objc_opt_self();
                sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
                v38 = v11;
                v39 = swift_allocObject();
                *(v39 + 16) = xmmword_1000BCF90;
                v40 = v128;
                v41 = [v128 topAnchor];
                v42 = [v38 topAnchor];
                v43 = [v41 constraintEqualToAnchor:v42];

                *(v39 + 32) = v43;
                v44 = [v40 centerXAnchor];
                v45 = [v38 centerXAnchor];
                v46 = [v44 constraintEqualToAnchor:v45];

                *(v39 + 40) = v46;
                v47 = [v40 bottomAnchor];
                v48 = [v38 bottomAnchor];
                v49 = [v47 constraintEqualToAnchor:v48];

                *(v39 + 48) = v49;
                v50 = [v40 trailingAnchor];

                v51 = [v37 leadingAnchor];
                v52 = [v50 constraintEqualToAnchor:v51];

                *(v39 + 56) = v52;
                v53 = [v37 topAnchor];
                v54 = [v38 topAnchor];
                v55 = [v53 constraintEqualToAnchor:v54 constant:2.0];

                *(v39 + 64) = v55;
                v56 = [v37 centerYAnchor];
                v57 = [v38 centerYAnchor];
                v58 = [v56 constraintEqualToAnchor:v57];

                *(v39 + 72) = v58;
                v59 = [v37 bottomAnchor];
                v60 = [v38 bottomAnchor];
                v61 = [v59 constraintLessThanOrEqualToAnchor:v60 constant:2.0];

                *(v39 + 80) = v61;
                v62 = [v37 widthAnchor];

                v63 = [v62 constraintEqualToConstant:35.0];
                *(v39 + 88) = v63;
                sub_1000163D8();
                v64 = Array._bridgeToObjectiveC()().super.isa;

                [v127 activateConstraints:v64];

                return;
              }
            }
          }

          goto LABEL_33;
        }

        goto LABEL_42;
      }
    }

    v76 = v124;
    sub_10000F25C(v2 + v28, v124, &qword_100103420, &unk_1000BCE90);
    v25 = &selRef_initWithSystemImageNamed_;
    if (v122(v76, 1, v29))
    {

      sub_10000EBA4(v76, &qword_100103420, &unk_1000BCE90);
      v11 = v126;
    }

    else
    {
      v93 = *(v76 + *(v29 + 192));
      sub_10000EBA4(v76, &qword_100103420, &unk_1000BCE90);
      v11 = v126;
      if (v93)
      {
        v94 = objc_allocWithZone(UIImageView);
        v95 = [v94 initWithImage:v123];
        [v95 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v95 setContentMode:1];
        [v11 addSubview:v95];
        v127 = objc_opt_self();
        sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
        v96 = swift_allocObject();
        *(v96 + 16) = xmmword_1000BCF90;
        v97 = v128;
        v98 = [v128 topAnchor];
        v99 = [v11 topAnchor];
        v100 = [v98 constraintEqualToAnchor:v99];

        *(v96 + 32) = v100;
        v101 = [v97 leadingAnchor];
        v102 = [v126 leadingAnchor];
        v103 = [v101 constraintEqualToAnchor:v102];

        *(v96 + 40) = v103;
        v104 = [v97 bottomAnchor];
        v105 = [v126 bottomAnchor];
        v106 = [v104 constraintEqualToAnchor:v105];

        *(v96 + 48) = v106;
        v107 = [v97 trailingAnchor];

        v108 = [v95 leadingAnchor];
        v109 = [v107 constraintEqualToAnchor:v108];

        *(v96 + 56) = v109;
        v110 = [v95 topAnchor];
        v111 = [v126 topAnchor];
        v112 = [v110 constraintEqualToAnchor:v111 constant:5.0];

        *(v96 + 64) = v112;
        v113 = [v95 centerYAnchor];
        v114 = [v126 centerYAnchor];
        v115 = [v113 constraintEqualToAnchor:v114];

        *(v96 + 72) = v115;
        v116 = [v95 bottomAnchor];
        v117 = [v126 bottomAnchor];
        v118 = [v116 constraintLessThanOrEqualToAnchor:v117 constant:5.0];

        *(v96 + 80) = v118;
        v119 = [v95 widthAnchor];

        v120 = [v119 constraintEqualToConstant:35.0];
        *(v96 + 88) = v120;
        sub_1000163D8();
        v121 = Array._bridgeToObjectiveC()().super.isa;

        [v127 activateConstraints:v121];

        sub_10000E70C(v132);
        return;
      }
    }

    sub_10000E70C(v132);
    goto LABEL_15;
  }

LABEL_43:
  __break(1u);
}

uint64_t sub_100065814()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100065854(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

__n128 sub_1000658B8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000658D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10006591C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100065980(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v13 = a1[6];
  v14 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v8 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v13 == v11 && v14 == v10)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_100065AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = String._bridgeToObjectiveC()();
  v10 = CUAddSuffixForCurrentDeviceClass();

  if (v10)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v11._countAndFlagsBits = 0x444F50454D4F485FLL;
    v11._object = 0xE800000000000000;
    String.append(_:)(v11);

    v12 = String._bridgeToObjectiveC()();
    v13 = sub_100006658(v12);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();

    v15 = sub_100006658(v14);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();

    v17 = String._bridgeToObjectiveC()();

    v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

    v19 = String._bridgeToObjectiveC()();
    v20 = sub_100006658(v19);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    v22[2] = a3;
    v22[3] = a4;
    v22[4] = v21;
    sub_100061704(a3);

    v23 = String._bridgeToObjectiveC()();

    v42 = sub_1000664FC;
    v43 = v22;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10003DFD0;
    v41 = &unk_1000F0670;
    v24 = _Block_copy(&aBlock);

    v25 = objc_opt_self();
    v26 = v5;
    v27 = [v25 actionWithTitle:v23 style:0 handler:v24];
    _Block_release(v24);

    [v18 addAction:v27];
    v28 = String._bridgeToObjectiveC()();
    v29 = sub_100006658(v28);

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = swift_allocObject();
    *(v30 + 16) = a1;
    *(v30 + 24) = a2;
    sub_100061704(a1);
    v31 = String._bridgeToObjectiveC()();

    v42 = sub_100066560;
    v43 = v30;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_10003DFD0;
    v41 = &unk_1000F06C0;
    v32 = _Block_copy(&aBlock);

    v33 = [v25 actionWithTitle:v31 style:1 handler:v32];
    _Block_release(v32);

    [v18 addAction:v33];
    [v18 setPreferredAction:v27];
    v34 = v26;
    v35 = [v34 presentedViewController];
    if (v35)
    {
      do
      {
        v36 = v35;

        v35 = [v36 presentedViewController];
        v34 = v36;
      }

      while (v35);
    }

    else
    {
      v36 = v34;
    }

    [v36 presentViewController:v18 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void sub_100065FD4(uint64_t a1, void (*a2)(void))
{
  if (a2)
  {
    a2();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v3 presentingViewController];
    v5 = v3;
    if (v4)
    {
      v6 = v3;
      do
      {
        v5 = v4;

        v4 = [v5 presentingViewController];
        v6 = v5;
      }

      while (v4);
    }

    [v5 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1000660A0(uint64_t *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = CUAddSuffixForCurrentDeviceClass();

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4._countAndFlagsBits = 0x444F50454D4F485FLL;
    v4._object = 0xE800000000000000;
    String.append(_:)(v4);

    v5 = String._bridgeToObjectiveC()();
    v6 = sub_100006658(v5);

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = String._bridgeToObjectiveC()();

    v11 = sub_100006658(v10);

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = String._bridgeToObjectiveC()();
    v16 = sub_100006658(v15);

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = String._bridgeToObjectiveC()();
    v21 = sub_100006658(v20);

    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *a1 = v7;
    a1[1] = v9;
    a1[2] = v12;
    a1[3] = v14;
    a1[4] = v17;
    a1[5] = v19;
    a1[6] = v22;
    a1[7] = v24;
    a1[8] = 0;
    a1[9] = 0xE000000000000000;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006629C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10000E6C4(&qword_100102388, qword_1000BE250);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000BD050;
  *(v8 + 56) = &type metadata for String;
  *(v8 + 64) = sub_100039F8C();
  *(v8 + 32) = a1;
  *(v8 + 40) = a2;

  v9 = String.init(format:_:)();
  v11 = v10;

  v12 = String._bridgeToObjectiveC()();
  v13 = sub_100006658(v12);

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = String._bridgeToObjectiveC()();
  v18 = sub_100006658(v17);

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  *a3 = v14;
  a3[1] = v16;
  a3[2] = v9;
  a3[3] = v11;
  a3[4] = v19;
  a3[5] = v21;
  a3[6] = v24;
  a3[7] = v26;
  a3[8] = 0;
  a3[9] = 0xE000000000000000;
}

uint64_t sub_10006647C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000664B4()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000664FC(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_100065FD4(a1, *(v1 + 16));
}

uint64_t sub_100066508(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100066520()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066560()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

unint64_t sub_1000665E8(uint64_t a1, void *a2)
{
  strcpy(&v15, "language_");

  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 1031365995;
  v7._object = 0xE400000000000000;
  String.append(_:)(v7);

  _StringGuts.grow(_:)(16);

  strcpy(&v14, "displayValue=");
  HIWORD(v14._object) = -4864;

  v8._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  String.append(_:)(v14);

  _StringGuts.grow(_:)(16);

  strcpy(&v15, "siriLanguage=");
  HIWORD(v15._object) = -4864;
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);

  String.append(_:)(v15);

  v12._countAndFlagsBits = 62;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);

  return 0xD000000000000010;
}

unint64_t sub_100066884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000665E8(*v0, *(v0 + 8));
}

void sub_1000668A0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100066918()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_1001038C0);
  v1 = sub_100012AAC(v0, qword_1001038C0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000669E0()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  v14 = type metadata accessor for HomePodSetupAppleMusicViewController();
  v29.receiver = v1;
  v29.super_class = v14;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v1 + v15, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000162A8(v5);
    if (qword_100101690 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_1001038C0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupAppleMusicViewController: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    if (qword_100101690 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_1001038C0);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136315138;
      v25 = *v11;
      v26 = v11[1];

      sub_100016374(v11);
      v27 = sub_1000B08A0(v25, v26, &v28);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupAppleMusicViewController: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100016374(v11);
    }

    [v1 setDismissalType:*&v13[*(v6 + 76)]];
    sub_100016374(v13);
  }
}

void sub_100066DE0(char a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for HomePodSetupAppleMusicViewController();
  objc_msgSendSuper2(&v25, "viewWillAppear:", a1 & 1);
  v23 = [objc_allocWithZone(SKCloudServiceSetupViewController) init];
  [v23 setDelegate:v1];
  sub_10000E6C4(&unk_100103980, &qword_1000BE388);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000BD310;
  *(inited + 32) = SKCloudServiceSetupOptionsActionKey;
  type metadata accessor for SKCloudServiceSetupAction(0);
  *(inited + 40) = SKCloudServiceSetupActionSubscribe;
  *(inited + 64) = v4;
  *(inited + 72) = SKCloudServiceSetupOptionsMessageIdentifierKey;
  type metadata accessor for SKCloudServiceSetupMessageIdentifier(0);
  *(inited + 80) = SKCloudServiceSetupMessageIdentifierJoin;
  v5 = _SKCloudServiceSetupOptionsAudioAccessorySerialNumberKey;
  *(inited + 104) = v6;
  *(inited + 112) = v5;
  v7 = v1;
  v22 = v1;
  v8 = *&v1[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceSerialNumber + 8];
  *(inited + 120) = *&v1[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceSerialNumber];
  *(inited + 128) = v8;
  v9 = _SKCloudServiceSetupOptionsAudioAccessoryUniqueDeviceIdentifierKey;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = v9;
  v10 = *&v7[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceGUID];
  v11 = *&v7[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_deviceGUID + 8];
  *(inited + 184) = &type metadata for String;
  *(inited + 160) = v10;
  *(inited + 168) = v11;
  v12 = SKCloudServiceSetupOptionsActionKey;
  v13 = SKCloudServiceSetupActionSubscribe;
  v14 = SKCloudServiceSetupOptionsMessageIdentifierKey;
  v15 = SKCloudServiceSetupMessageIdentifierJoin;
  v16 = v5;

  v17 = v9;

  sub_10000E758(inited);
  swift_setDeallocating();
  sub_10000E6C4(&qword_1001019A0, &qword_1000BC270);
  swift_arrayDestroy();
  type metadata accessor for SKCloudServiceSetupOptionsKey(0);
  sub_1000682C8();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100068358;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000668A0;
  aBlock[3] = &unk_1000F07E0;
  v20 = _Block_copy(aBlock);

  [v23 loadWithOptions:isa completionHandler:v20];
  _Block_release(v20);

  v21 = *&v22[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic];
  *&v22[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic] = v23;
}

void sub_1000670B8(char a1)
{
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_1001038C0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 67109378;
    *(v5 + 4) = a1 & 1;
    *(v5 + 8) = 2080;
    sub_10000E6C4(&unk_1001035D8, &unk_1000BDD90);
    v7 = Optional.debugDescription.getter();
    v9 = sub_1000B08A0(v7, v8, &v12);

    *(v5 + 10) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupAppleMusicViewController: AppleMusic load view Controller completion called with results:%{BOOL}d error:%s", v5, 0x12u);
    sub_10000E70C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_100067348();
  }
}

void sub_100067348()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v65 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  isa = v6[-1].isa;
  v8 = *(isa + 8);
  __chkstk_darwin(v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100012AAC(v11, qword_1001038C0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "HomePodSetupAppleMusicViewController: AppleMusic show StoreKit view\n", v14, 2u);
  }

  v15 = *&v0[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic];
  if (v15)
  {
    v16 = v15;
    v17 = [v16 view];
    if (v17)
    {
      v18 = v17;
      v66 = v10;
      [v0 addChildViewController:v16];
      v19 = [v0 contentView];
      [v19 addSubview:v18];

      [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v1 contentView];
      [v20 cardStyle];

      v21 = [v1 traitCollection];
      [v21 prx_cardSizeClass];

      PRXCardPreferredSize();
      v23 = v22;
      v68 = objc_opt_self();
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000BD420;
      v25 = [v1 contentView];
      v26 = [v25 heightAnchor];
      v69 = v6;
      v27 = v26;

      v28 = [v27 constraintEqualToConstant:v23];
      *(v24 + 32) = v28;
      v29 = [v18 topAnchor];
      v67 = v16;
      v30 = [v1 contentView];
      v31 = [v30 topAnchor];

      v32 = [v29 constraintEqualToAnchor:v31];
      *(v24 + 40) = v32;
      v33 = [v18 bottomAnchor];
      v34 = [v1 contentView];
      v35 = [v34 bottomAnchor];

      v36 = [v33 constraintEqualToAnchor:v35];
      *(v24 + 48) = v36;
      v37 = [v18 leadingAnchor];
      v38 = [v1 contentView];
      v39 = [v38 leadingAnchor];

      v40 = [v37 constraintEqualToAnchor:v39];
      *(v24 + 56) = v40;
      v41 = [v18 trailingAnchor];
      v42 = v67;
      v43 = [v1 contentView];
      v44 = [v43 trailingAnchor];

      v45 = [v41 constraintEqualToAnchor:v44];
      v46 = v69;
      *(v24 + 64) = v45;
      sub_1000163D8();
      v47 = Array._bridgeToObjectiveC()().super.isa;

      [v68 activateConstraints:v47];

      [v42 didMoveToParentViewController:v1];
      v48 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
      swift_beginAccess();
      sub_100016238(v1 + v48, v5);
      if ((*(isa + 6))(v5, 1, v46) == 1)
      {

        sub_1000162A8(v5);
      }

      else
      {
        v52 = v66;
        sub_100016310(v5, v66);
        if ((*(v52 + SHIDWORD(v46[9].isa)) & 2) == 0)
        {
          v53 = (v52 + SLODWORD(v46[10].isa));
          if (v53[1])
          {
            v55 = v53[6];
            v54 = v53[7];
            v56 = v53[4];
            v69 = v53[5];
            v58 = v53[2];
            v57 = v53[3];
            v59 = *v53;
            v60 = String._bridgeToObjectiveC()();
            v61 = String._bridgeToObjectiveC()();
            v62 = String._bridgeToObjectiveC()();
            v63 = String._bridgeToObjectiveC()();
            v64 = [v1 dismissalConfirmationActionWithTitle:v60 message:v61 confirmButtonTitle:v62 cancelButtonTitle:v63];

            [v1 setDismissButtonAction:v64];
          }
        }

        sub_100016374(v52);
      }

      return;
    }
  }

  v69 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v69, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v69, v49, "HomePodSetupAppleMusicViewController: AppleMusic controller was not initilized properly", v50, 2u);
  }

  v51 = v69;
}

id sub_100067AF4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupAppleMusicViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupAppleMusicViewController()
{
  result = qword_100103908;
  if (!qword_100103908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100067C04()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100067CB4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_100067D08()
{
  v1 = v0;
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_1001038C0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupAppleMusicViewController: AppleMusic hide StoreKit view\n", v5, 2u);
  }

  v6 = *&v0[OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_vcAppleMusic];
  if (v6)
  {
    v12 = v6;
    [v12 willMoveToParentViewController:0];
    v7 = [v12 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    [v7 removeFromSuperview];

    v9 = [v1 presentingViewController];
    [v9 removeFromParentViewController];

    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      memset(v16, 0, sizeof(v16));
      v15[0] = 1;
      sub_100012DA0(v13, v16, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(v15);

      swift_unknownObjectRelease();
      sub_100012E08(v15);
      return;
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v12, v10, "HomePodSetupAppleMusicViewController: AppleMusic controller was not initilized properly", v11, 2u);
    }
  }
}

id sub_100067FE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_1001038C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupAppleMusicViewController: presenter:didUpdate viewModel", v11, 2u);
  }

  sub_100012AE4(a1, v7);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupAppleMusicViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v7, v2 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    return [v2 setDismissalType:*(a1 + *(v12 + 76))];
  }

  return result;
}

void sub_1000681DC()
{
  if (qword_100101690 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_1001038C0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "HomePodSetupAppleMusicViewController: SKCloudServiceSetupViewController dismissed.\n", v3, 2u);
  }

  sub_100067D08();
}

unint64_t sub_1000682C8()
{
  result = qword_100103990;
  if (!qword_100103990)
  {
    type metadata accessor for SKCloudServiceSetupOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100103990);
  }

  return result;
}

uint64_t sub_100068320()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100068360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068378()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103998);
  v1 = sub_100012AAC(v0, qword_100103998);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100068440()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v79 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = (&v79 - v12);
  v14 = type metadata accessor for HomePodSetupLeftRightViewController();
  v84.receiver = v1;
  v84.super_class = v14;
  objc_msgSendSuper2(&v84, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_viewModel;
  swift_beginAccess();
  sub_100016238(&v1[v15], v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1000162A8(v5);
    if (qword_100101698 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103998);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupLeftRight: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    if (qword_100101698 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100103998);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v83 = v24;
      *v23 = 136315138;
      v25 = v6;
      v26 = *v11;
      v27 = v11[1];

      sub_100016374(v11);
      v28 = v26;
      v6 = v25;
      v29 = sub_1000B08A0(v28, v27, &v83);

      *(v23 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupLeftRight: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100016374(v11);
    }

    v82 = v6;
    v30 = *v13;
    v31 = v13[1];
    v32 = String._bridgeToObjectiveC()();
    [v1 setTitle:v32];

    v33 = v13[2];
    v34 = v13[3];
    v35 = String._bridgeToObjectiveC()();
    [v1 setSubtitle:v35];

    v81 = *(v13 + *(v6 + 76));
    [v1 setDismissalType:?];
    v36 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_buttonStackView];
    [v36 setAxis:0];
    [v36 setSpacing:20.0];
    [v36 setSemanticContentAttribute:2];
    v37 = [v1 contentView];
    [v37 addSubview:v36];

    v38 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_leftButton];
    v39 = objc_opt_self();
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v40 = swift_allocObject();
    v79 = xmmword_1000BCE00;
    *(v40 + 16) = xmmword_1000BCE00;
    v41 = [v38 widthAnchor];
    v42 = [v41 constraintEqualToConstant:96.0];

    *(v40 + 32) = v42;
    v80 = sub_1000163D8();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v39 activateConstraints:isa];

    [v38 addTarget:v1 action:"leftButtonPressed:" forControlEvents:64];
    [v36 addArrangedSubview:v38];
    v44 = *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_rightButton];
    v45 = swift_allocObject();
    *(v45 + 16) = v79;
    v46 = [v44 widthAnchor];
    v47 = [v46 constraintEqualToConstant:96.0];

    *(v45 + 32) = v47;
    v48 = Array._bridgeToObjectiveC()().super.isa;

    v49 = v39;
    [v39 activateConstraints:v48];

    [v44 addTarget:v1 action:"rightButtonPressed:" forControlEvents:64];
    [v36 addArrangedSubview:v44];
    v50 = [v1 contentView];
    v51 = [v50 mainContentGuide];

    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1000BD430;
    v53 = [v36 topAnchor];
    v54 = [v51 topAnchor];
    v55 = [v53 constraintGreaterThanOrEqualToAnchor:v54];

    *(v52 + 32) = v55;
    v56 = [v36 centerYAnchor];
    v57 = [v51 centerYAnchor];
    v58 = [v56 constraintEqualToAnchor:v57];

    *(v52 + 40) = v58;
    v59 = [v36 centerXAnchor];
    v60 = [v51 centerXAnchor];
    v61 = [v59 constraintEqualToAnchor:v60];

    *(v52 + 48) = v61;
    v62 = Array._bridgeToObjectiveC()().super.isa;
    v63 = v82;

    [v49 activateConstraints:v62];

    v64 = *(v13 + *(v63 + 40));
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v64, sub_1000699EC, v65);

    if ((v81 & 2) == 0)
    {
      v66 = (v13 + *(v63 + 80));
      if (v66[1])
      {
        v68 = v66[6];
        v67 = v66[7];
        v70 = v66[4];
        v69 = v66[5];
        v72 = v66[2];
        v71 = v66[3];
        v73 = *v66;
        v74 = String._bridgeToObjectiveC()();
        v75 = String._bridgeToObjectiveC()();
        v76 = String._bridgeToObjectiveC()();
        v77 = String._bridgeToObjectiveC()();
        v78 = [v1 dismissalConfirmationActionWithTitle:v74 message:v75 confirmButtonTitle:v76 cancelButtonTitle:v77];

        [v1 setDismissButtonAction:v78];
      }
    }

    sub_100016374(v13);
  }
}

void sub_100068D78(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = String._bridgeToObjectiveC()();
    [v3 showActivityIndicatorWithStatus:v4];
  }

  if (qword_100101698 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100103998);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = sub_10000FEC4(v1);
    v12 = sub_1000B08A0(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "HomePodSetupLeftRight: User tapped on button: %s", v8, 0xCu);
    sub_10000E70C(v9);
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    v15 = swift_unknownObjectWeakLoadStrong();

    if (v15)
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      memset(v19, 0, sizeof(v19));
      LOBYTE(v18) = v1;
      sub_100012DA0(v16, v19, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v18);
      swift_unknownObjectRelease();
      sub_100012E08(&v18);
    }
  }
}

id sub_1000691A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupLeftRightViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupLeftRightViewController()
{
  result = qword_1001039F8;
  if (!qword_1001039F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000692A8()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100069354(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_1000693A8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - v6;
  if (qword_100101698 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100103998);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupLeftRight: presenter:didUpdate viewModel", v11, 2u);
  }

  sub_100012AE4(a1, v7);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v7, v2 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    v15 = *a1;
    v16 = a1[1];
    v17 = String._bridgeToObjectiveC()();
    [v2 setTitle:v17];

    v18 = a1[2];
    v19 = a1[3];
    v20 = String._bridgeToObjectiveC()();
    [v2 setSubtitle:v20];

    return [v2 setDismissalType:*(a1 + *(v12 + 76))];
  }

  return result;
}

uint64_t sub_1000695E8(const char *a1, char a2)
{
  if (qword_100101698 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100012AAC(v4, qword_100103998);
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
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    memset(v12, 0, sizeof(v12));
    v11[0] = a2;
    sub_100012DA0(v9, v12, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v11);
    swift_unknownObjectRelease();
    return sub_100012E08(v11);
  }

  return result;
}

id sub_100069740(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_buttonStackView;
  *&v2[v4] = [objc_allocWithZone(UIStackView) init];
  v5 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_leftButton;
  v6 = String._bridgeToObjectiveC()();
  v7 = sub_100006658(v6);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = String._bridgeToObjectiveC()();
  v9 = sub_100006658(v8);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = type metadata accessor for StereoPairButton();
  v11 = objc_allocWithZone(v10);
  *&v2[v5] = sub_1000617BC();
  v12 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_rightButton;
  v13 = String._bridgeToObjectiveC()();
  v14 = sub_100006658(v13);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = sub_100006658(v15);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = objc_allocWithZone(v10);
  *&v2[v12] = sub_1000617BC();
  v18 = OBJC_IVAR____TtC14HDSViewService35HomePodSetupLeftRightViewController_viewModel;
  v19 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  v21.receiver = v2;
  v21.super_class = type metadata accessor for HomePodSetupLeftRightViewController();
  return objc_msgSendSuper2(&v21, "initWithContentView:", a1);
}

uint64_t sub_1000699B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000699F4()
{
  v44.receiver = v0;
  v44.super_class = type metadata accessor for HomePodPrivacyConsentViewController();
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = [objc_allocWithZone(type metadata accessor for HomePodSetupPrivacyConsentView()) init];
  v4 = OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView;
  v5 = *&v0[OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView];
  *&v0[OBJC_IVAR____TtC14HDSViewService35HomePodPrivacyConsentViewController_consentView] = v3;
  v6 = v3;

  v7 = v6;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [v0 view];
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  [v8 addSubview:v7];

  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000BD420;
  v11 = [v7 topAnchor];
  v12 = [v0 view];
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v12 topAnchor];

  v15 = [v11 constraintEqualToAnchor:v14];
  *(v10 + 32) = v15;
  v16 = [v7 leadingAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v18 = v17;
  v19 = [v17 leadingAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v10 + 40) = v20;
  v21 = [v7 bottomAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v22 bottomAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v10 + 48) = v25;
  v26 = [v7 trailingAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = v27;
  v29 = [v27 trailingAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v10 + 56) = v30;
  v31 = [v7 heightAnchor];

  v32 = [v0 view];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 heightAnchor];

  v36 = [v31 constraintEqualToAnchor:v35];
  *(v10 + 64) = v36;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  v38 = *&v0[v4];
  if (v38)
  {
    v39 = *(v38 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton);
    sub_10003AE18(0, &unk_100102630, UIAction_ptr);
    v40 = swift_allocObject();
    *(v40 + 16) = v0;
    v41 = v39;
    v42 = v0;
    v43 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    [v41 addAction:v43 forControlEvents:{64, 0, 0, 0, sub_100012D88, v40}];
  }
}

char *sub_10006A094()
{
  v1 = [objc_opt_self() buttonWithType:1];
  *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton] = v1;
  v2 = [objc_allocWithZone(PRXLabel) initWithStyle:0];
  *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_titleLabel] = v2;
  v3 = [objc_allocWithZone(PRXTextView) initWithStyle:3];
  *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_textView] = v3;
  v82.receiver = v0;
  v82.super_class = type metadata accessor for HomePodSetupPrivacyConsentView();
  v4 = objc_msgSendSuper2(&v82, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton;
  [*&v6[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_doneButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = *&v6[v8];
  v10 = String._bridgeToObjectiveC()();
  v11 = sub_100006658(v10);

  if (!v11)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = String._bridgeToObjectiveC()();
  }

  [v9 setTitle:v11 forState:0];

  v12 = *&v6[v8];
  v13 = [v5 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_titleLabel;
  [*&v6[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_titleLabel] setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = *&v6[v14];
  v16 = String._bridgeToObjectiveC()();
  v17 = sub_100006658(v16);

  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v15 setText:v17];

  [*&v6[v14] setAdjustsFontSizeToFitWidth:1];
  [*&v6[v14] setTextAlignment:1];
  v18 = *&v6[v14];
  v19 = [v5 secondarySystemBackgroundColor];
  [v18 setBackgroundColor:v19];

  v20 = [*&v6[v14] layer];
  [v20 setCornerRadius:10.0];

  v21 = [*&v6[v14] layer];
  [v21 setMasksToBounds:1];

  v22 = String._bridgeToObjectiveC()();
  v23 = sub_100006658(v22);

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24._countAndFlagsBits = 2570;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25 = String._bridgeToObjectiveC()();
  v26 = sub_100006658(v25);

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_textView;
  [*&v6[OBJC_IVAR____TtC14HDSViewService30HomePodSetupPrivacyConsentView_textView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *&v6[v31];
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  [*&v6[v31] setTextAlignment:0];
  v34 = *&v6[v31];
  v35 = [v5 secondarySystemBackgroundColor];
  [v34 setBackgroundColor:v35];

  v36 = [*&v6[v31] textContainer];
  [v36 setLineBreakMode:0];

  v37 = *&v6[v31];
  v38 = [v5 labelColor];
  [v37 setTextColor:v38];

  [*&v6[v31] setTextContainerInset:{30.0, 20.0, 10.0, 20.0}];
  [*&v6[v31] setScrollEnabled:1];
  v39 = *&v6[v31];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
  [v41 setFont:v42];

  v43 = [*&v6[v31] layer];
  [v43 setCornerRadius:10.0];

  v44 = [*&v6[v31] layer];
  [v44 setMasksToBounds:1];

  [v6 addSubview:*&v6[v8]];
  [v6 addSubview:*&v6[v14]];
  [v6 addSubview:*&v6[v31]];
  v81 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_1000BD020;
  v46 = [*&v6[v8] topAnchor];
  v47 = [v6 topAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:0.0];

  *(v45 + 32) = v48;
  v49 = [*&v6[v8] trailingAnchor];
  v50 = [v6 trailingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:-10.0];

  *(v45 + 40) = v51;
  v52 = [*&v6[v8] widthAnchor];
  v53 = [v52 constraintEqualToConstant:60.0];

  *(v45 + 48) = v53;
  v54 = [*&v6[v8] heightAnchor];
  v55 = [v54 constraintEqualToConstant:40.0];

  *(v45 + 56) = v55;
  v56 = [*&v6[v14] topAnchor];
  v57 = [*&v6[v8] bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:0.0];

  *(v45 + 64) = v58;
  v59 = [*&v6[v14] leadingAnchor];
  v60 = [v6 leadingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:10.0];

  *(v45 + 72) = v61;
  v62 = [*&v6[v14] trailingAnchor];
  v63 = [v6 trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-10.0];

  *(v45 + 80) = v64;
  v65 = [*&v6[v14] heightAnchor];
  v66 = [v65 constraintEqualToConstant:100.0];

  *(v45 + 88) = v66;
  v67 = [*&v6[v31] topAnchor];
  v68 = [*&v6[v14] bottomAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:10.0];

  *(v45 + 96) = v69;
  v70 = [*&v6[v31] leadingAnchor];
  v71 = [v6 leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:10.0];

  *(v45 + 104) = v72;
  v73 = [*&v6[v31] bottomAnchor];
  v74 = [v6 bottomAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:-20.0];

  *(v45 + 112) = v75;
  v76 = [*&v6[v31] trailingAnchor];
  v77 = [v6 trailingAnchor];

  v78 = [v76 constraintEqualToAnchor:v77 constant:-10.0];
  *(v45 + 120) = v78;
  sub_10003AE18(0, &qword_100102620, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v81 activateConstraints:isa];

  return v6;
}

id sub_10006AC9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10006AD54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006AD8C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103A78);
  v1 = sub_100012AAC(v0, qword_100103A78);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006AE54()
{
  v1 = v0;
  v2 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v85 - v4;
  v6 = type metadata accessor for AdjustedImage(0);
  v87 = *(v6 - 8);
  v88 = v6;
  v7 = *(v87 + 64);
  __chkstk_darwin(v6);
  v85 = (&v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v85 - v11;
  v13 = type metadata accessor for HomePodSetupViewModel(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = (&v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = (&v85 - v19);
  v21 = type metadata accessor for HomePodSetupSiriWelcomeViewController();
  v90.receiver = v1;
  v90.super_class = v21;
  objc_msgSendSuper2(&v90, "viewDidLoad");
  v22 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v22, v12, &qword_100103420, &unk_1000BCE90);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_10006CCD4(v12, v20, type metadata accessor for HomePodSetupViewModel);
    if (qword_1001016A0 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100012AAC(v27, qword_100103A78);
    sub_100012AE4(v20, v18);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v86 = v20;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v89 = v32;
      *v31 = 136315138;
      v34 = *v18;
      v33 = v18[1];

      sub_10003A960(v18, type metadata accessor for HomePodSetupViewModel);
      v35 = sub_1000B08A0(v34, v33, &v89);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "HomePodSetupSiriWelcome: viewDidLoad with title %s", v31, 0xCu);
      sub_10000E70C(v32);
      v20 = v86;
    }

    else
    {

      sub_10003A960(v18, type metadata accessor for HomePodSetupViewModel);
    }

    sub_10006BCE0(v20);
    v36 = *(v20 + v13[10]);
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v36, sub_10006CCCC, v37);

    v38 = v88;
    if ((*(v20 + v13[19]) & 2) == 0)
    {
      v39 = (v20 + v13[20]);
      if (v39[1])
      {
        v41 = v39[6];
        v40 = v39[7];
        v43 = v39[4];
        v42 = v39[5];
        v45 = v39[2];
        v44 = v39[3];
        v46 = *v39;
        v47 = String._bridgeToObjectiveC()();
        v48 = String._bridgeToObjectiveC()();
        v49 = String._bridgeToObjectiveC()();
        v20 = v86;
        v50 = String._bridgeToObjectiveC()();
        v51 = [v1 dismissalConfirmationActionWithTitle:v47 message:v48 confirmButtonTitle:v49 cancelButtonTitle:v50];

        v38 = v88;
        [v1 setDismissButtonAction:v51];
      }
    }

    sub_10000F25C(v20 + v13[28], v5, &unk_100102610, &unk_1000BD130);
    if ((*(v87 + 48))(v5, 1, v38) != 1)
    {
      v58 = v85;
      sub_10006CCD4(v5, v85, type metadata accessor for AdjustedImage);
      v59 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v58];
      sub_100083828(v58 + *(v38 + 20));
      [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
      v60 = [v1 contentView];
      [v60 addSubview:v59];

      sub_10003A960(v58, type metadata accessor for AdjustedImage);
      v52 = v59;
LABEL_28:
      v64 = [v1 contentView];
      v65 = [v64 mainContentGuide];

      v66 = objc_opt_self();
      sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
      v67 = swift_allocObject();
      *(v67 + 16) = xmmword_1000BD420;
      v68 = [v52 topAnchor];
      v69 = [v65 topAnchor];
      v70 = [v68 constraintEqualToAnchor:v69];

      *(v67 + 32) = v70;
      v71 = [v52 leadingAnchor];
      v72 = [v65 leadingAnchor];
      v73 = [v71 constraintGreaterThanOrEqualToAnchor:v72];

      *(v67 + 40) = v73;
      v74 = [v52 trailingAnchor];
      v75 = [v65 trailingAnchor];
      v76 = [v74 constraintLessThanOrEqualToAnchor:v75];

      *(v67 + 48) = v76;
      v77 = [v52 centerXAnchor];
      v78 = [v65 centerXAnchor];
      v79 = [v77 constraintEqualToAnchor:v78];

      *(v67 + 56) = v79;
      v80 = [v52 bottomAnchor];

      v81 = [v65 bottomAnchor];
      v82 = [v80 constraintEqualToAnchor:v81];

      *(v67 + 64) = v82;
      sub_1000163D8();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v66 activateConstraints:isa];

      sub_10003A960(v86, type metadata accessor for HomePodSetupViewModel);
      return;
    }

    sub_10000EBA4(v5, &unk_100102610, &unk_1000BD130);
    v52 = [objc_allocWithZone(UIImageView) init];
    v53 = *(v20 + v13[11]);
    if (v53 >> 62)
    {
      if (v53 < 0)
      {
        v61 = *(v20 + v13[11]);
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_18;
      }
    }

    else if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      if ((v53 & 0xC000000000000001) != 0)
      {
        v84 = v52;
        v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v54 = *(v53 + 32);
        v55 = v52;
        v56 = v54;
      }

      v57 = v56;
      goto LABEL_27;
    }

    v62 = v52;
    v57 = 0;
LABEL_27:
    [v52 setImage:v57];

    v63 = [v1 contentView];
    [v63 addSubview:v52];

    goto LABEL_28;
  }

  sub_10000EBA4(v12, &qword_100103420, &unk_1000BCE90);
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100012AAC(v23, qword_100103A78);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "HomePodSetupSiriWelcome: viewDidLoad failed because viewModel not set.", v26, 2u);
  }
}

void sub_10006B8D4(char *a1)
{
  v1 = *a1;
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103A78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = sub_10000FEC4(v1);
    v9 = sub_1000B08A0(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupSiriWelcome: User tapped on button: %s", v5, 0xCu);
    sub_10000E70C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      memset(v16, 0, sizeof(v16));
      LOBYTE(v15) = v1;
      sub_100012DA0(v13, v16, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v15);
      swift_unknownObjectRelease();
      sub_100012E08(&v15);
    }
  }
}

void sub_10006BB88(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HomePodSetupSiriWelcomeViewController();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103A78);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HomePodSetupSiriWelcome: viewWillDisappear was called.", v6, 2u);
  }
}

id sub_10006BCE0(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomePodSetupViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1 + *(v6 + 72);
  if (v9[4])
  {
    v10 = 0;
  }

  else
  {
    v10 = *v9;
  }

  sub_10006C400(v10);
  v11 = String.init(cString:)();
  v13 = v12;
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100012AAC(v14, qword_100103A78);
  sub_100012AE4(a1, v8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v17 = 136315394;
    v18 = v2;
    v29 = v11;
    v20 = *v8;
    v19 = v8[1];

    sub_10003A960(v8, type metadata accessor for HomePodSetupViewModel);
    v21 = v20;
    v2 = v18;
    v22 = sub_1000B08A0(v21, v19, &v31);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    v23 = sub_1000B08A0(v29, v13, &v31);

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "HomePodSetupSiriWelcome: configureUI called with title %s progressEvent=%s", v17, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10003A960(v8, type metadata accessor for HomePodSetupViewModel);
  }

  v24 = *a1;
  v25 = a1[1];
  v26 = String._bridgeToObjectiveC()();
  [v2 setTitle:v26];

  return [v2 setDismissalType:*(a1 + *(v4 + 76))];
}

id sub_10006C04C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupSiriWelcomeViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupSiriWelcomeViewController()
{
  result = qword_100103AC0;
  if (!qword_100103AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006C128()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10006C1C4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_10006C218(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  if (qword_1001016A0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100103A78);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupSiriWelcome: presenter:didUpdate viewModel", v11, 2u);
  }

  sub_100012AE4(a1, v7);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v7, v2 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v2 isViewLoaded];
  if (result)
  {
    return sub_10006BCE0(a1);
  }

  return result;
}

const char *sub_10006C400(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_10006CC94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CCD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10006CD3C()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103AD0);
  v1 = sub_100012AAC(v0, qword_100103AD0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10006CE04()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  sub_100012B48(v0, qword_100103AE8);
  *sub_100012AAC(v0, qword_100103AE8) = 1;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

id sub_10006CE94(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_viewModel;
  v10 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  v11 = objc_allocWithZone(type metadata accessor for SVSHomePodIDViewController());
  v12 = sub_1000916E8(v3 == 5);
  v13 = qword_1001016A8;
  v14 = v12;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = sub_100012AAC(v4, qword_100103AD0);
  v16 = *(v5 + 16);
  v16(v8, v15, v4);
  v16(&v2[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_log], v8, v4);
  type metadata accessor for SVSLPCActivityIndicatorViewController();
  *&v2[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_viewfinderViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v2[OBJC_IVAR____TtC14HDSViewService21ScannerViewController_scannerEngineViewController];
  *v17 = v14;
  *(v17 + 1) = &off_1000F08D0;
  v18 = [objc_allocWithZone(PRXCardContentView) initWithCardStyle:0];
  v19 = type metadata accessor for ScannerViewController();
  v26.receiver = v2;
  v26.super_class = v19;
  v20 = objc_msgSendSuper2(&v26, "initWithContentView:", v18);

  (*(v5 + 8))(v8, v4);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = &v14[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler];
  v23 = *&v14[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler];
  v24 = *&v14[OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_handler + 8];
  *v22 = sub_10006EF38;
  v22[1] = v21;

  sub_100061714(v23);

  return v20;
}

void sub_10006D170()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10006E274();
  }

  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103AD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupBaseScannerViewController handler called", v5, 2u);
  }
}

void sub_10006D280()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v44 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = type metadata accessor for HomePodSetupVisualAuthViewController();
  v45.receiver = v1;
  v45.super_class = v14;
  objc_msgSendSuper2(&v45, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_viewModel;
  swift_beginAccess();
  sub_100016238(v1 + v15, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016A8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103AD0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupVisualAuthViewController: failed in viewDidLoad because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100016310(v5, v13);
    if (qword_1001016A8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100103AD0);
    sub_100012AE4(v13, v11);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v23 = 136315138;
      v25 = *v11;
      v26 = v11[1];

      sub_100016374(v11);
      v27 = sub_1000B08A0(v25, v26, &v44);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupVisualAuthViewController: viewDidLoad called with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_100016374(v11);
    }

    v28 = *&v13[v6[10]];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v28, sub_10006EFBC, v29);

    v30 = *&v13[v6[19]];
    [v1 setDismissalType:v30];
    if ((v30 & 2) == 0)
    {
      v31 = &v13[v6[20]];
      if (*(v31 + 1))
      {
        v33 = *(v31 + 6);
        v32 = *(v31 + 7);
        v35 = *(v31 + 4);
        v34 = *(v31 + 5);
        v37 = *(v31 + 2);
        v36 = *(v31 + 3);
        v38 = *v31;
        v39 = String._bridgeToObjectiveC()();
        v40 = String._bridgeToObjectiveC()();
        v41 = String._bridgeToObjectiveC()();
        v42 = String._bridgeToObjectiveC()();
        v43 = [v1 dismissalConfirmationActionWithTitle:v39 message:v40 confirmButtonTitle:v41 cancelButtonTitle:v42];

        [v1 setDismissButtonAction:v43];
      }
    }

    sub_100016374(v13);
  }
}

void sub_10006D754(char *a1)
{
  v1 = *a1;
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103AD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = sub_10000FEC4(v1);
    v9 = sub_1000B08A0(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupVisualAuthViewController: User tapped on button: %s", v5, 0xCu);
    sub_10000E70C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      memset(v16, 0, sizeof(v16));
      LOBYTE(v15) = v1;
      sub_100012DA0(v13, v16, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v15);
      swift_unknownObjectRelease();
      sub_100012E08(&v15);
    }
  }
}

uint64_t sub_10006D980(char a1)
{
  v47 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v47 - 8);
  v3 = *(v54 + 64);
  __chkstk_darwin(v47);
  v46 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for DispatchQoS();
  v52 = *(v49 - 8);
  v5 = *(v52 + 64);
  __chkstk_darwin(v49);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTimeInterval();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for DispatchTime();
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v45 - v17;
  v18 = type metadata accessor for HomePodSetupVisualAuthViewController();
  v57.receiver = v1;
  v57.super_class = v18;
  objc_msgSendSuper2(&v57, "viewWillAppear:", a1 & 1);
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100012AAC(v19, qword_100103AD0);
  v20 = v1;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v55 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = v7;
    v25 = swift_slowAlloc();
    *v23 = 138412290;
    v26 = v55;
    *(v23 + 4) = v55;
    *v25 = v26;
    v27 = v26;
    _os_log_impl(&_mh_execute_header, v21, v22, "HomePod Setup %@ viewWillAppear", v23, 0xCu);
    sub_10000EBA4(v25, &qword_100101E38, &unk_1000BCF80);
    v7 = v24;
  }

  result = IsAppleInternalBuild();
  if (result)
  {
    if (qword_100101608 != -1)
    {
      result = swift_once();
    }

    v29 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode + 8);
    if ((v29 & 0x2000000000000000) != 0)
    {
      v30 = HIBYTE(v29) & 0xF;
    }

    else
    {
      v30 = *(qword_1001086C0 + OBJC_IVAR____TtC14HDSViewService22HomePodSetupAutomation_forcedPasscode) & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "HomePodSetupVisualAuthViewController: hasForcedPasscode so selecting manual pairing button.", v33, 2u);
      }

      sub_1000144DC();
      v45 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      *v11 = 2;
      (*(v8 + 104))(v11, enum case for DispatchTimeInterval.seconds(_:), v7);
      v34 = v48;
      + infix(_:_:)();
      (*(v8 + 8))(v11, v7);
      v35 = v51;
      v36 = *(v50 + 8);
      v36(v16, v51);
      v37 = swift_allocObject();
      v38 = v55;
      *(v37 + 16) = v55;
      aBlock[4] = sub_10006EF98;
      aBlock[5] = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100091194;
      aBlock[3] = &unk_1000F0988;
      v39 = _Block_copy(aBlock);
      v40 = v38;

      v41 = v53;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100014530();
      sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
      sub_100014588();
      v42 = v46;
      v43 = v47;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v44 = v45;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v39);

      (*(v54 + 8))(v42, v43);
      (*(v52 + 8))(v41, v49);
      return (v36)(v34, v35);
    }
  }

  return result;
}

void sub_10006E0B8(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for HomePodSetupVisualAuthViewController();
  objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103AD0);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "HomePod Setup %@ viewDidDisappear", v7, 0xCu);
    sub_10000EBA4(v8, &qword_100101E38, &unk_1000BCF80);
  }
}

uint64_t sub_10006E274()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v1 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  v6 = *(v25 + 64);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  v17 = *(*(v0 + OBJC_IVAR____TtC14HDSViewService21ScannerViewController_viewfinderViewController) + OBJC_IVAR____TtC14HDSViewService37SVSLPCActivityIndicatorViewController_v);
  sub_10008CC14();
  sub_1000144DC();
  v24 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  if (qword_1001016B0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for DispatchTimeInterval();
  sub_100012AAC(v18, qword_100103AE8);
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v14, v9);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10006EF40;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100091194;
  aBlock[3] = &unk_1000F0938;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100014530();
  sub_10000E6C4(&unk_100102600, &qword_1000BE4E0);
  sub_100014588();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v24;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v27 + 8))(v4, v1);
  (*(v25 + 8))(v8, v26);
  return (v19)(v16, v9);
}

void sub_10006E63C()
{
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103AD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "HomePodSetupVisualAuthViewController: detectedHomePod so selecting primary button.", v3, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
      memset(v10, 0, sizeof(v10));
      v9[0] = 1;
      sub_100012DA0(v7, v10, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(v9);
      swift_unknownObjectRelease();
      sub_100012E08(v9);
    }
  }
}

uint64_t sub_10006E7B8()
{
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103AD0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "HomePodSetupVisualAuthViewController: User tapped on manual pairing button.", v3, 2u);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = 0;
    memset(v5, 0, sizeof(v5));
    memset(v8, 0, sizeof(v8));
    v7[0] = 2;
    sub_100012DA0(v5, v8, &qword_1001025D0, &unk_1000BD010);
    sub_10007A070(v7);
    swift_unknownObjectRelease();
    return sub_100012E08(v7);
  }

  return result;
}

id sub_10006E94C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupVisualAuthViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupVisualAuthViewController()
{
  result = qword_100103B28;
  if (!qword_100103B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006EA28()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10006EAC4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

id sub_10006EB18()
{
  v1 = v0;
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103AD0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "SVSHomePodIDViewController: start was called", v5, 2u);
  }

  SVSHomePodIDViewController.configureEngine()();
  v6 = *(v1 + OBJC_IVAR____TtC14HDSViewService26SVSHomePodIDViewController_engine);

  return [v6 preheat];
}

void sub_10006EC24()
{
  if (qword_1001016A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103AD0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SVSHomePodIDViewController: stop was called", v2, 2u);
  }
}

void sub_10006ED0C(uint64_t *a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  sub_100012AE4(a1, &v21 - v5);
  v7 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupVisualAuthViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v1 + v8, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  v9 = *a1;
  v10 = a1[1];
  v11 = String._bridgeToObjectiveC()();
  [v1 setTitle:v11];

  v13 = a1[2];
  v12 = a1[3];
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithString:v15];

  if (v16)
  {
    v17 = objc_allocWithZone(PRXLabel);
    v18 = v16;
    v19 = [v17 initWithStyle:1];
    [v19 setAttributedText:v18];
    v20 = [v1 contentView];
    [v20 setSubtitleLabel:v19];
  }
}

uint64_t sub_10006EF00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006EF48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006EF60()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10006EFD4(uint64_t a1)
{
  type metadata accessor for PRXActionStyle(319);
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 16);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10006F06C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_10006F1F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 8) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

void sub_10006F468(double a1)
{
  v3 = [v1 contentView];
  v4 = [v3 auxiliaryViews];

  if (v4)
  {
    sub_10006F5B8();
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setAlpha:a1];

        ++v7;
        if (v10 == i)
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

  else
  {
    __break(1u);
  }
}

unint64_t sub_10006F5B8()
{
  result = qword_100103BB8;
  if (!qword_100103BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100103BB8);
  }

  return result;
}

uint64_t sub_10006F634()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103BC0);
  v1 = sub_100012AAC(v0, qword_100103BC0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10006F6FC()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v43 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = (&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v13 = &v43 - v12;
  v14 = type metadata accessor for HomePodSetupStereoViewController();
  v44.receiver = v1;
  v44.super_class = v14;
  objc_msgSendSuper2(&v44, "viewDidLoad");
  v15 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v15, v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103BC0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "HomePodSetupStereoViewController: viewDidLoad failed because viewModel not set.", v19, 2u);
    }
  }

  else
  {
    sub_100073554(v5, v13, type metadata accessor for HomePodSetupViewModel);
    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100012AAC(v20, qword_100103BC0);
    sub_10007361C(v13, v11, type metadata accessor for HomePodSetupViewModel);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43 = v24;
      *v23 = 136315138;
      v25 = *v11;
      v26 = v11[1];

      sub_1000735BC(v11, type metadata accessor for HomePodSetupViewModel);
      v27 = sub_1000B08A0(v25, v26, &v43);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "HomePodSetupStereoViewController: viewDidLoad with title %s", v23, 0xCu);
      sub_10000E70C(v24);
    }

    else
    {

      sub_1000735BC(v11, type metadata accessor for HomePodSetupViewModel);
    }

    (*((swift_isaMask & *v1) + 0xD8))(v13);
    v28 = *&v13[v6[10]];
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10009EA84(v28, sub_1000736BC, v29);

    if ((v13[v6[19]] & 2) == 0)
    {
      v30 = &v13[v6[20]];
      if (*(v30 + 1))
      {
        v32 = *(v30 + 6);
        v31 = *(v30 + 7);
        v34 = *(v30 + 4);
        v33 = *(v30 + 5);
        v36 = *(v30 + 2);
        v35 = *(v30 + 3);
        v37 = *v30;
        v38 = String._bridgeToObjectiveC()();
        v39 = String._bridgeToObjectiveC()();
        v40 = String._bridgeToObjectiveC()();
        v41 = String._bridgeToObjectiveC()();
        v42 = [v1 dismissalConfirmationActionWithTitle:v38 message:v39 confirmButtonTitle:v40 cancelButtonTitle:v41];

        [v1 setDismissButtonAction:v42];
      }
    }

    sub_1000735BC(v13, type metadata accessor for HomePodSetupViewModel);
  }
}

void sub_10006FC6C(char *a1)
{
  v1 = *a1;
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103BC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = sub_10000FEC4(v1);
    v9 = sub_1000B08A0(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupStereoViewController: User tapped on button: %s", v5, 0xCu);
    sub_10000E70C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      memset(v16, 0, sizeof(v16));
      LOBYTE(v15) = v1;
      sub_100012DA0(v13, v16, &qword_1001025D0, &unk_1000BD010);
      sub_10007A070(&v15);
      swift_unknownObjectRelease();
      sub_100012E08(&v15);
    }
  }
}

void sub_10006FF20(void *a1)
{
  v2 = v1;
  v4 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v74 - v6;
  v8 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v74 - v18;
  v20 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v74 - v22;
  if (v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_isConfigured])
  {
    return;
  }

  v77 = v7;
  v78 = v12;
  v79 = v9;
  v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_isConfigured] = 1;
  v24 = *a1;
  v25 = a1[1];
  v26 = String._bridgeToObjectiveC()();
  [v2 setTitle:v26];

  v27 = a1[2];
  v28 = a1[3];
  v29 = String._bridgeToObjectiveC()();
  [v2 setSubtitle:v29];

  v30 = type metadata accessor for HomePodSetupViewModel(0);
  v31 = v30;
  if (*(a1 + *(v30 + 228)) == 1)
  {
    [v2 setDismissalType:*(a1 + *(v30 + 76))];
  }

  v32 = (a1 + *(v31 + 28));
  v34 = *v32;
  v33 = v32[1];
  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v35)
  {
    v36 = [objc_allocWithZone(PRXLabel) initWithStyle:1];
    v37 = String._bridgeToObjectiveC()();
    [v36 setText:v37];

    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v38 = [v2 view];
    if (!v38)
    {
      __break(1u);
      return;
    }

    v39 = v38;
    [v38 addSubview:v36];

    v40 = *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel];
    *&v2[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel] = v36;
  }

  v80 = v17;
  v81 = v23;
  v41 = v2;
  v42 = v8;
  v43 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  v82 = v41;
  sub_10000F25C(&v41[v43], v19, &qword_100103420, &unk_1000BCE90);
  v44 = *(*(v31 - 8) + 48);
  if (v44(v19, 1, v31) || (v45 = *(v31 + 232), v46 = v79 + 48, v47 = *(v79 + 48), v47(&v19[v45], 1, v42)))
  {
    sub_10000EBA4(v19, &qword_100103420, &unk_1000BCE90);
    v48 = type metadata accessor for AdjustedImage(0);
    v49 = v81;
    (*(*(v48 - 8) + 56))(v81, 1, 1, v48);
    v50 = v42;
    goto LABEL_12;
  }

  v75 = v47;
  v76 = v46;
  v57 = v78;
  sub_10007361C(&v19[v45], v78, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
  sub_10000EBA4(v19, &qword_100103420, &unk_1000BCE90);
  v50 = v42;
  v49 = v81;
  sub_10000F25C(v57 + *(v42 + 20), v81, &unk_100102610, &unk_1000BD130);
  sub_1000735BC(v57, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
  v58 = type metadata accessor for AdjustedImage(0);
  if ((*(*(v58 - 8) + 48))(v49, 1, v58) == 1)
  {
LABEL_12:
    sub_10000EBA4(v49, &unk_100102610, &unk_1000BD130);
    v51 = v80;
    sub_10000F25C(&v82[v43], v80, &qword_100103420, &unk_1000BCE90);
    if (v44(v51, 1, v31) || (v52 = *(v31 + 232), (*(v79 + 48))(v51 + v52, 1, v50)))
    {
      sub_10000EBA4(v51, &qword_100103420, &unk_1000BCE90);
LABEL_15:
      if (qword_1001016B8 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100012AAC(v53, qword_100103BC0);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&_mh_execute_header, v54, v55, "HomePodSetupStereoViewController configureUI: stereoPairImages does not have a right, using single stereo constraints", v56, 2u);
      }

      sub_100070864();
      return;
    }

    v65 = v78;
    sub_10007361C(v51 + v52, v78, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
    sub_10000EBA4(v51, &qword_100103420, &unk_1000BCE90);
    v66 = *(v65 + *(v50 + 24));
    v67 = v66;
    sub_1000735BC(v65, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
    if (!v66)
    {
      goto LABEL_15;
    }

    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100012AAC(v68, qword_100103BC0);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v69, v70))
    {
LABEL_38:

      sub_1000718BC();
      return;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "HomePodSetupStereoViewController configureUI: stereoPairImages has no right image but has an appleTV";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v69, v70, v72, v71, 2u);

    goto LABEL_38;
  }

  sub_10000EBA4(v49, &unk_100102610, &unk_1000BD130);
  v59 = v77;
  sub_10000F25C(a1 + *(v31 + 232), v77, &qword_100101FC0, &unk_1000BE590);
  v60 = v75(v59, 1, v50);
  sub_10000EBA4(v59, &qword_100101FC0, &unk_1000BE590);
  if (v60 != 1)
  {
    if (qword_1001016B8 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    sub_100012AAC(v73, qword_100103BC0);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_38;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "HomePodSetupStereoViewController configureUI: stereoPairImages has a right, using pair stereo constraints";
    goto LABEL_37;
  }

  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_100012AAC(v61, qword_100103BC0);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&_mh_execute_header, v62, v63, "No stereo images found", v64, 2u);
  }
}

uint64_t sub_100070864()
{
  v1 = v0;
  v2 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v128 - v4;
  v6 = type metadata accessor for AdjustedImage(0);
  v131 = *(v6 - 1);
  v132 = v6;
  v7 = v131[8];
  __chkstk_darwin(v6);
  v130 = (&v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v128 - v14;
  v16 = type metadata accessor for HomePodSetupViewModel(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v21, v15, &qword_100103420, &unk_1000BCE90);
  v22 = *(v17 + 48);
  if (v22(v15, 1, v16) == 1)
  {
    v23 = &qword_100103420;
    v24 = &unk_1000BCE90;
    v25 = v15;
    return sub_10000EBA4(v25, v23, v24);
  }

  sub_100073554(v15, v20, type metadata accessor for HomePodSetupViewModel);
  sub_10000F25C(v1 + v21, v13, &qword_100103420, &unk_1000BCE90);
  if (v22(v13, 1, v16))
  {
    sub_1000735BC(v20, type metadata accessor for HomePodSetupViewModel);
    sub_10000EBA4(v13, &qword_100103420, &unk_1000BCE90);
    (v131[7])(v5, 1, 1, v132);
LABEL_7:
    v23 = &unk_100102610;
    v24 = &unk_1000BD130;
    v25 = v5;
    return sub_10000EBA4(v25, v23, v24);
  }

  sub_10000F25C(&v13[*(v16 + 112)], v5, &unk_100102610, &unk_1000BD130);
  sub_10000EBA4(v13, &qword_100103420, &unk_1000BCE90);
  v26 = v132;
  if ((v131[6])(v5, 1, v132) == 1)
  {
    sub_1000735BC(v20, type metadata accessor for HomePodSetupViewModel);
    goto LABEL_7;
  }

  v131 = v1;
  v28 = v130;
  sub_100073554(v5, v130, type metadata accessor for AdjustedImage);
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100012AAC(v29, qword_100103BC0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "HomePodSetupStereoViewController setUpFixedLayout, Setting up a single stereo image view", v32, 2u);
  }

  v33 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v28];
  sub_100083828(v28 + v26[5]);
  v34 = v33;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  p_type = &stru_1000F9FF0.type;
  v36 = [v131 contentView];
  [v36 addSubview:v34];

  v37 = v20[*(v16 + 116)];
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v132 = v34;
  if (v37 == 1)
  {
    v41 = v16;
    v128 = v20;
    if (v40)
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "HomePodSetupStereoViewController setUpFixedLayout using useSoloHomePodConstraints constraints", v42, 2u);
    }

    v43 = [objc_allocWithZone(UILayoutGuide) init];
    v44 = v131;
    v45 = [v131 contentView];
    [v45 addLayoutGuide:v43];

    v46 = [v44 contentView];
    v47 = [v46 mainContentGuide];

    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000BD320;
    v49 = [v43 topAnchor];
    v50 = [v47 topAnchor];
    v51 = [v49 constraintGreaterThanOrEqualToAnchor:v50];

    *(v48 + 32) = v51;
    v52 = [v43 bottomAnchor];
    v53 = [v47 bottomAnchor];
    v54 = [v52 constraintLessThanOrEqualToAnchor:v53];

    *(v48 + 40) = v54;
    v55 = [v43 centerYAnchor];
    v56 = [v47 centerYAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    *(v48 + 48) = v57;
    v58 = [v43 leadingAnchor];
    v129 = v47;
    v59 = [v47 leadingAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v48 + 56) = v60;
    v61 = [v43 trailingAnchor];
    v62 = [v47 trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    *(v48 + 64) = v63;
    v64 = [v43 heightAnchor];
    v65 = v41;
    v66 = *(v41 + 120);
    v67 = v128;
    v68 = *&v128[v66];
    v69 = [v64 constraintEqualToConstant:v68];

    *(v48 + 72) = v69;
    v34 = v132;
    v70 = [v132 centerYAnchor];
    v71 = [v43 centerYAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v48 + 80) = v72;
    v73 = [v34 centerXAnchor];
    v74 = [v43 centerXAnchor];
    v75 = [v73 constraintEqualToAnchor:v74];

    *(v48 + 88) = v75;
    v20 = v67;
    v76 = [v34 heightAnchor];
    v77 = [v76 constraintEqualToConstant:v68];

    *(v48 + 96) = v77;
    v78 = [v34 widthAnchor];
    v79 = [v78 constraintEqualToConstant:*&v67[*(v65 + 124)]];

    *(v48 + 104) = v79;
    p_type = (&stru_1000F9FF0 + 16);
  }

  else
  {
    if (v40)
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "HomePodSetupStereoViewController setUpFixedLayout NOT using useSoloHomePodConstraints constraints", v80, 2u);
    }

    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1000BD430;
    v81 = [v34 centerXAnchor];
    v44 = v131;
    v82 = [v131 contentView];
    v83 = [v82 mainContentGuide];

    v84 = [v83 centerXAnchor];
    v85 = [v81 constraintEqualToAnchor:v84];

    *(v48 + 32) = v85;
    v86 = [v34 topAnchor];
    v87 = [v44 contentView];
    v88 = [v87 mainContentGuide];

    v89 = [v88 topAnchor];
    v90 = [v86 constraintGreaterThanOrEqualToAnchor:v89];

    *(v48 + 40) = v90;
    v91 = [v34 bottomAnchor];
    v92 = [v44 contentView];
    v93 = [v92 mainContentGuide];

    v94 = [v93 bottomAnchor];
    v95 = [v91 constraintLessThanOrEqualToAnchor:v94];

    *(v48 + 48) = v95;
  }

  v133 = v48;
  if ((*((swift_isaMask & *v44) + 0xA0))())
  {
    v96 = [v34 centerYAnchor];
    v97 = [v131 p_type[229]];
    v98 = [v97 mainContentGuide];

    v99 = [v98 centerYAnchor];
    v100 = [v96 constraintEqualToAnchor:v99];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v133 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v127 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v101 = v131;
  v102 = *(v131 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel);
  if (v102)
  {
    sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BD460;
    v104 = v102;
    v105 = [v104 leadingAnchor];
    v106 = [v101 p_type[229]];
    v107 = p_type;
    v108 = [v106 mainContentGuide];

    v109 = [v108 leadingAnchor];
    v110 = [v105 constraintEqualToAnchor:v109];

    *(inited + 32) = v110;
    v111 = [v104 trailingAnchor];
    v112 = [v101 v107[229]];
    v113 = [v112 mainContentGuide];

    v114 = [v113 trailingAnchor];
    v115 = [v111 constraintEqualToAnchor:v114];

    *(inited + 40) = v115;
    v116 = [v104 topAnchor];
    v117 = [v132 bottomAnchor];

    v118 = [v116 constraintEqualToAnchor:v117 constant:10.0];
    *(inited + 48) = v118;
    v119 = [v104 bottomAnchor];

    v120 = v107[229];
    v34 = v132;
    v121 = [v101 v120];
    v122 = [v121 mainContentGuide];

    v123 = [v122 bottomAnchor];
    v124 = [v119 constraintEqualToAnchor:v123];

    *(inited + 56) = v124;
    sub_1000952D4(inited);
  }

  else
  {
  }

  v125 = objc_opt_self();
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v125 activateConstraints:isa];

  sub_1000735BC(v130, type metadata accessor for AdjustedImage);
  return sub_1000735BC(v20, type metadata accessor for HomePodSetupViewModel);
}

uint64_t sub_1000718BC()
{
  v1 = v0;
  v2 = sub_10000E6C4(&unk_100102610, &unk_1000BD130);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v179 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v177 = &v169 - v7;
  __chkstk_darwin(v6);
  v178 = (&v169 - v8);
  v9 = type metadata accessor for AdjustedImage(0);
  v181 = *(v9 - 8);
  v182 = v9;
  v10 = *(v181 + 64);
  __chkstk_darwin(v9);
  v12 = &v169 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v169 - v15;
  v17 = sub_10000E6C4(&qword_100101FC0, &unk_1000BE590);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v169 - v19;
  v21 = type metadata accessor for HomePodSetupViewModel.StereoPairImage(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v169 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v26, v16, &qword_100103420, &unk_1000BCE90);
  v27 = type metadata accessor for HomePodSetupViewModel(0);
  if ((*(*(v27 - 8) + 48))(v16, 1, v27))
  {
    sub_10000EBA4(v16, &qword_100103420, &unk_1000BCE90);
    (*(v22 + 56))(v20, 1, 1, v21);
    return sub_10000EBA4(v20, &qword_100101FC0, &unk_1000BE590);
  }

  v173 = v12;
  v180 = v25;
  sub_10000F25C(&v16[*(v27 + 232)], v20, &qword_100101FC0, &unk_1000BE590);
  sub_10000EBA4(v16, &qword_100103420, &unk_1000BCE90);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_10000EBA4(v20, &qword_100101FC0, &unk_1000BE590);
  }

  sub_100073554(v20, v180, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v172 = v21;
  v29 = type metadata accessor for Logger();
  v170 = sub_100012AAC(v29, qword_100103BC0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "HomePodSetupStereoViewController setUpCompositeLayout started", v32, 2u);
  }

  v33 = [objc_allocWithZone(UIView) init];
  [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
  v34 = [v1 contentView];
  [v34 addSubview:v33];

  v35 = v180;
  v36 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v180];
  sub_100083828(v35 + *(v182 + 20));
  v37 = v36;
  [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v33 addSubview:v37];
  v174 = sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000BDD00;
  v39 = [v37 leftAnchor];
  v40 = [v33 leftAnchor];
  v41 = [v39 constraintEqualToAnchor:v40];

  *(v38 + 32) = v41;
  v176 = v37;
  v42 = [v37 topAnchor];
  v43 = [v33 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v38 + 40) = v44;
  v45 = [v33 leftAnchor];
  v46 = [v1 contentView];
  v47 = [v46 mainContentGuide];

  v48 = [v47 leftAnchor];
  v49 = [v45 constraintGreaterThanOrEqualToAnchor:v48];

  *(v38 + 48) = v49;
  v50 = [v33 rightAnchor];
  v51 = [v1 contentView];
  v52 = [v51 mainContentGuide];

  v53 = [v52 rightAnchor];
  v54 = [v50 constraintLessThanOrEqualToAnchor:v53];

  *(v38 + 56) = v54;
  v55 = [v33 bottomAnchor];
  v56 = [v1 contentView];
  v57 = [v56 mainContentGuide];

  v58 = [v57 bottomAnchor];
  v59 = [v55 constraintLessThanOrEqualToAnchor:v58];

  *(v38 + 64) = v59;
  v60 = [v33 centerXAnchor];
  v61 = [v1 contentView];
  v62 = [v61 mainContentGuide];

  v63 = [v62 centerXAnchor];
  v64 = [v60 constraintEqualToAnchor:v63];

  *(v38 + 72) = v64;
  v183 = v38;
  LOBYTE(v60) = (*((swift_isaMask & *v1) + 0xA0))();
  v175 = v33;
  v65 = [v33 topAnchor];
  v66 = v1;
  v67 = [v1 contentView];
  v68 = [v67 mainContentGuide];

  v69 = [v68 topAnchor];
  v171 = v1;
  if (v60)
  {
    v70 = [v65 constraintGreaterThanOrEqualToAnchor:v69];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v71 = v173;
    v72 = v178;
    if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v167 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v73 = [v175 centerYAnchor];
    v74 = [v66 contentView];
    v75 = [v74 mainContentGuide];

    v76 = [v75 centerYAnchor];
    v77 = [v73 constraintEqualToAnchor:v76];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v78 = [v65 constraintEqualToAnchor:v69 constant:-15.0];

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v71 = v173;
    v72 = v178;
    if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_15:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v79 = v182;
  v80 = v172;
  v81 = v172[5];
  sub_10000F25C(v81 + v180, v72, &unk_100102610, &unk_1000BD130);
  v82 = v181 + 48;
  v178 = *(v181 + 48);
  v83 = v178(v72, 1, v79);
  v84 = v175;
  v181 = v82;
  v173 = v81;
  if (v83 == 1)
  {
    sub_10000EBA4(v72, &unk_100102610, &unk_1000BD130);
  }

  else
  {
    sub_100073554(v72, v71, type metadata accessor for AdjustedImage);
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "HomePodSetupStereoViewController: stereoImags has right image", v87, 2u);
    }

    v88 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:*v71];
    sub_100083828(v71 + *(v79 + 20));
    v89 = v88;
    [v89 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v84 addSubview:v89];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000BD430;
    v91 = [v89 topAnchor];
    v92 = v176;
    v93 = [v176 topAnchor];
    v94 = [v91 constraintEqualToAnchor:v93];

    *(inited + 32) = v94;
    v95 = [v89 leftAnchor];
    v96 = [v92 rightAnchor];
    v97 = [v95 constraintEqualToAnchor:v96 constant:10.0];

    *(inited + 40) = v97;
    v98 = [v89 rightAnchor];

    v99 = [v84 rightAnchor];
    v100 = [v98 constraintEqualToAnchor:v99];

    *(inited + 48) = v100;
    sub_1000952D4(inited);

    sub_1000735BC(v71, type metadata accessor for AdjustedImage);
    v80 = v172;
    v81 = v173;
  }

  v101 = v80[6];
  v102 = *(v180 + v101);
  if (v102)
  {
    v172 = *(v180 + v101);
    v103 = v102;
    v104 = Logger.logObject.getter();
    v105 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&_mh_execute_header, v104, v105, "HomePodSetupStereoViewController createStereoPairImages: stereoImags has apple tv image", v106, 2u);
    }

    v107 = [objc_allocWithZone(SFAdjustedImageView) initWithImage:v103];
    [v107 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v84 addSubview:v107];
    v108 = swift_initStackObject();
    v169 = xmmword_1000BD0A0;
    *(v108 + 16) = xmmword_1000BD0A0;
    v109 = [v107 centerYAnchor];
    v110 = v176;
    v111 = [v176 centerYAnchor];
    v170 = v103;
    v112 = [v109 constraintEqualToAnchor:v111 constant:45.0];

    *(v108 + 32) = v112;
    v113 = [v107 bottomAnchor];
    v114 = [v84 bottomAnchor];
    v115 = [v113 constraintEqualToAnchor:v114];

    *(v108 + 40) = v115;
    sub_1000952D4(v108);
    v116 = v180;
    v117 = v81 + v180;
    v118 = v177;
    sub_10000F25C(v117, v177, &unk_100102610, &unk_1000BD130);
    LODWORD(v115) = v178(v118, 1, v182);
    sub_10000EBA4(v118, &unk_100102610, &unk_1000BD130);
    if (v115 == 1)
    {
      v119 = swift_initStackObject();
      *(v119 + 16) = v169;
      v120 = [v107 centerXAnchor];
      v121 = [v110 centerXAnchor];
      v122 = [v120 constraintEqualToAnchor:v121 constant:57.0];

      *(v119 + 32) = v122;
      v123 = [v107 rightAnchor];

      v124 = [v84 rightAnchor];
      v125 = [v123 constraintEqualToAnchor:v124];

      *(v119 + 40) = v125;
      v126 = v180;
      sub_1000952D4(v119);
    }

    else
    {
      v131 = swift_initStackObject();
      *(v131 + 16) = xmmword_1000BCE00;
      v132 = [v107 centerXAnchor];

      v133 = [v175 centerXAnchor];
      v134 = [v132 constraintEqualToAnchor:v133];

      *(v131 + 32) = v134;
      v135 = v131;
      v84 = v175;
      sub_1000952D4(v135);

      v126 = v116;
    }

    v102 = v172;
    v81 = v173;
  }

  else
  {
    v127 = swift_initStackObject();
    *(v127 + 16) = xmmword_1000BCE00;
    v128 = [v176 bottomAnchor];
    v129 = [v84 bottomAnchor];
    v130 = [v128 constraintEqualToAnchor:v129];

    *(v127 + 32) = v130;
    v126 = v180;
    sub_1000952D4(v127);
  }

  v136 = v179;
  sub_10000F25C(v81 + v126, v179, &unk_100102610, &unk_1000BD130);
  v137 = v178(v136, 1, v182);
  v138 = v171;
  if (v137 == 1)
  {
    sub_10000EBA4(v136, &unk_100102610, &unk_1000BD130);
    if (v102)
    {
      v139 = v176;
    }

    else
    {
      v139 = v176;
      v140 = [v176 rightAnchor];

      v141 = [v84 rightAnchor];
      v142 = [v140 constraintEqualToAnchor:v141];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v183 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v168 = *((v183 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v138 = v171;
    }
  }

  else
  {
    v139 = v176;

    sub_10000EBA4(v136, &unk_100102610, &unk_1000BD130);
  }

  v143 = *&v138[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel];
  if (v143)
  {
    v144 = swift_initStackObject();
    *(v144 + 16) = xmmword_1000BD460;
    v145 = v143;
    v146 = [v145 leadingAnchor];
    v147 = v138;
    v148 = [v138 contentView];
    v149 = [v148 mainContentGuide];

    v150 = [v149 leadingAnchor];
    v151 = [v146 constraintEqualToAnchor:v150];

    *(v144 + 32) = v151;
    v152 = [v145 trailingAnchor];
    v153 = [v147 contentView];
    v154 = [v153 mainContentGuide];

    v84 = v175;
    v155 = [v154 trailingAnchor];

    v156 = [v152 constraintEqualToAnchor:v155];
    *(v144 + 40) = v156;
    v157 = [v145 bottomAnchor];
    v158 = [v147 contentView];
    v159 = [v158 mainContentGuide];

    v160 = [v159 bottomAnchor];
    v161 = [v157 constraintEqualToAnchor:v160];

    *(v144 + 48) = v161;
    v162 = [v145 topAnchor];

    v163 = [v84 bottomAnchor];
    v164 = [v162 constraintEqualToAnchor:v163 constant:10.0];

    *(v144 + 56) = v164;
    v126 = v180;
    sub_1000952D4(v144);

    v139 = v176;
  }

  v165 = objc_opt_self();
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v165 activateConstraints:isa];

  return sub_1000735BC(v126, type metadata accessor for HomePodSetupViewModel.StereoPairImage);
}

id sub_100073028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupStereoViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupStereoViewController()
{
  result = qword_100103C10;
  if (!qword_100103C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073120()
{
  sub_100012108();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000731D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_presenter + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_100073224(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = a4(&v7);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_10007326C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_1000732F0(uint64_t a1)
{
  v3 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  if (qword_1001016B8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100012AAC(v7, qword_100103BC0);
  v8 = v1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = [v8 isViewLoaded];

    _os_log_impl(&_mh_execute_header, v9, v10, "HomePodSetupStereoViewController: presenter:didUpdate viewModel, isViewloaded = %{BOOL}d", v11, 8u);
  }

  else
  {

    v9 = v8;
  }

  sub_10007361C(a1, v6, type metadata accessor for HomePodSetupViewModel);
  v12 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  v13 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  swift_beginAccess();
  sub_100012DA0(v6, v8 + v13, &qword_100103420, &unk_1000BCE90);
  swift_endAccess();
  result = [v8 isViewLoaded];
  if (result)
  {
    return (*((swift_isaMask & v8->isa) + 0xD8))(a1);
  }

  return result;
}

uint64_t sub_100073554(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000735BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007361C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100073684()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000736C4()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103C20);
  v1 = sub_100012AAC(v0, qword_100103C20);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10007378C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView);
  }

  else
  {
    type metadata accessor for HomePodSetupWiFiInfoTableView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_100073804()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v49 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HomePodSetupIntroViewController();
  v57.receiver = v1;
  v57.super_class = v14;
  objc_msgSendSuper2(&v57, "viewDidLoad");
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  Int64 = CFPrefs_GetInt64();

  if (Int64)
  {
    v18 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [v18 notificationOccurred:0];
    goto LABEL_16;
  }

  v19 = [objc_allocWithZone(CUAudioPlayer) init];
  v20 = String._bridgeToObjectiveC()();
  [v19 setLabel:v20];

  [v19 setEnableSmartRouting:2];
  [v19 activate];
  v21 = String._bridgeToObjectiveC()();
  v22 = [objc_opt_self() bundleWithIdentifier:v21];

  if (!v22)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_9:
    sub_100075414(v8);
    if (qword_1001016C0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100012AAC(v31, qword_100103C20);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1000B08A0(0xD00000000000001CLL, 0x80000001000C67F0, &aBlock);
      _os_log_impl(&_mh_execute_header, v32, v33, "HomePodSetupIntro: viewDidLoad could not locate the audio file %s ", v34, 0xCu);
      sub_10000E70C(v35);
    }

    goto LABEL_15;
  }

  v23 = v22;
  v24 = v10;
  v50 = v23;
  v25 = v23;
  v26 = String._bridgeToObjectiveC()();
  v27 = [v25 URLForResource:v26 withExtension:0];

  if (v27)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = v24;
  (*(v24 + 56))(v6, v28, 1, v9);
  sub_100051A10(v6, v8);
  v30 = (*(v24 + 48))(v8, 1, v9);
  v22 = v50;
  if (v30 == 1)
  {
    goto LABEL_9;
  }

  (*(v29 + 32))(v13, v8, v9);
  URL._bridgeToObjectiveC()(v36);
  v38 = v37;
  [v19 playURL:v37 completion:0];

  (*(v29 + 8))(v13, v9);
LABEL_15:
  v18 = *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer];
  *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_audioPlayer] = v19;
LABEL_16:

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v40 = String._bridgeToObjectiveC()();
  v55 = sub_100075404;
  v56 = v39;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_10003DFD0;
  v54 = &unk_1000F0C10;
  v41 = _Block_copy(&aBlock);
  v42 = [objc_opt_self() actionWithTitle:v40 style:0 handler:v41];

  _Block_release(v41);

  [v1 setInfoButtonAction:v42];

  v43 = [v1 infoButton];
  if (v43)
  {
    v44 = v43;
    [v43 setAlpha:0.0];
  }

  v45 = sub_10007378C();
  [v45 setAlpha:0.0];

  v46 = objc_opt_self();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = sub_10007540C;
  v56 = v47;
  aBlock = _NSConcreteStackBlock;
  v52 = 1107296256;
  v53 = sub_100091194;
  v54 = &unk_1000F0C38;
  v48 = _Block_copy(&aBlock);

  [v46 animateWithDuration:65538 delay:v48 options:0 animations:0.7 completion:8.0];
  _Block_release(v48);
}

void sub_100073F68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong handleTapOnInfoButton];
  }
}

void sub_100073FC4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong infoButton];

    if (v2)
    {
      [v2 setAlpha:1.0];
    }
  }
}

uint64_t sub_1000741AC(uint64_t a1)
{
  v2 = *(a1 + *(type metadata accessor for HomePodSetupViewModel(0) + 40));
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = *(v2 + 16);
  if (v4)
  {
    v16 = objc_opt_self();
    v5 = (v2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *(v5 - 1);
      v9 = *v5;
      v5 += 32;
      v10 = swift_allocObject();
      *(v10 + 16) = v6;
      *(v10 + 24) = v7;
      *(v10 + 32) = v8;
      *(v10 + 40) = v9;
      *(v10 + 48) = sub_1000752D4;
      *(v10 + 56) = v3;
      swift_bridgeObjectRetain_n();

      v11 = String._bridgeToObjectiveC()();

      aBlock[4] = sub_10004745C;
      aBlock[5] = v10;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10003DFD0;
      aBlock[3] = &unk_1000F0AA8;
      v12 = _Block_copy(aBlock);
      v13 = [v16 actionWithTitle:v11 style:v8 handler:v12];

      _Block_release(v12);

      v14 = [v1 addAction:v13];

      --v4;
    }

    while (v4);
  }

  else
  {
  }
}

void sub_1000743D4(char *a1)
{
  v1 = *a1;
  if (qword_1001016C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    v7 = sub_10000FEC4(v1);
    v9 = sub_1000B08A0(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIntro: User tapped on button: %s", v5, 0xCu);
    sub_10000E70C(v6);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = String._bridgeToObjectiveC()();
    [v11 showActivityIndicatorWithStatus:v12];

    v13 = [v11 infoButton];
    v14 = 1;
    if (v13)
    {
      v15 = [v13 isActive];

      if (v15)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      memset(v19, 0, sizeof(v19));
      LOBYTE(v18) = v14;
      sub_10000EAFC(v16, v19);
      sub_10007A070(&v18);

      swift_unknownObjectRelease();
      sub_100012E08(&v18);
    }

    else
    {
    }
  }
}

void sub_1000746B0()
{
  v1 = v0;
  if (qword_1001016C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIntro: user tapped on the info button.", v5, 2u);
  }

  v6 = sub_10007378C();
  [v6 setSeparatorStyle:0];

  v7 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView;
  v8 = *&v1[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView];
  sub_100095AE0();

  sub_100074E20();
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v25 = sub_1000753C8;
  v26 = v10;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_100091194;
  v24 = &unk_1000F0B98;
  v11 = _Block_copy(&v21);
  v12 = v1;

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v25 = sub_1000753D0;
  v26 = v13;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_1000A3260;
  v24 = &unk_1000F0BE8;
  v14 = _Block_copy(&v21);
  v15 = v12;

  [v9 animateWithDuration:v11 animations:v14 completion:0.5];
  _Block_release(v14);
  _Block_release(v11);
  [*&v1[v7] setHidden:0];
  if (v15[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo])
  {
    v16 = *&v1[v7];
    sub_100095E28();
LABEL_10:

    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *(v18 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor);

    LOBYTE(v20) = sub_1000A670C(sub_1000753FC, v19);
    swift_unknownObjectRelease();

    if ((v20 & 1) == 0)
    {
      v16 = String._bridgeToObjectiveC()();
      [v15 showActivityIndicatorWithStatus:v16];
      goto LABEL_10;
    }
  }
}

void sub_100074A28(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView);
  if (v2)
  {
    [v2 setAlpha:0.0];
  }

  v3 = sub_10007378C();
  [v3 setAlpha:1.0];

  if ((*(a1 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo) & 1) == 0)
  {
    sub_10006F468(0.0);
  }
}

void sub_100074AA4(uint64_t *a1)
{
  if (qword_1001016C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100012AAC(v2, qword_100103C20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "HomePodSetupIntro: Request for PreAuth completed.", v5, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController_loadedInfo] = 1;
    v7 = Strong;
    [Strong hideActivityIndicator];
    sub_10006F468(1.0);
    v8 = sub_10007378C();
    sub_100095C9C(a1);
  }
}

void sub_100074BF8()
{
  v1 = *&v0[OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView];
  if (v1)
  {
    [v1 setHidden:0];
  }

  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v13 = sub_10007536C;
  v14 = v3;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_100091194;
  v12 = &unk_1000F0AF8;
  v4 = _Block_copy(&v9);
  v5 = v0;

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v13 = sub_100075374;
  v14 = v6;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000A3260;
  v12 = &unk_1000F0B48;
  v7 = _Block_copy(&v9);
  v8 = v5;

  [v2 animateWithDuration:v4 animations:v7 completion:0.5];
  _Block_release(v7);
  _Block_release(v4);
}

id sub_100074DA0(uint64_t a1)
{
  v2 = sub_10007378C();
  [v2 setAlpha:0.0];

  result = *(a1 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView);
  if (result)
  {

    return [result setAlpha:1.0];
  }

  return result;
}

void sub_100074E20()
{
  v1 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView;
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_myContentView);
  v3 = sub_10007378C();
  [v2 addSubview:v3];

  v4 = [*(v0 + v1) mainContentGuide];
  v5 = objc_opt_self();
  sub_10000E6C4(&qword_100103430, &qword_1000BCEA0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000BD460;
  v7 = OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView;
  v8 = [*(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView) topAnchor];
  v9 = [v4 topAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v6 + 32) = v10;
  v11 = [*(v0 + v7) bottomAnchor];
  v12 = [v4 bottomAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v6 + 40) = v13;
  v14 = [*(v0 + v7) leadingAnchor];
  v15 = [v4 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v6 + 48) = v16;
  v17 = [*(v0 + v7) trailingAnchor];
  v18 = [v4 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v6 + 56) = v19;
  sub_1000163D8();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

void sub_100075134()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService31HomePodSetupIntroViewController____lazy_storage___infoTableView);
}

id sub_100075174()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomePodSetupIntroViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HomePodSetupIntroViewController()
{
  result = qword_100103C68;
  if (!qword_100103C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007529C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000752DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10007531C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100075334()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100075374()
{
  v1 = *(v0 + 16);
  v2 = sub_10007378C();
  [v2 setHidden:1];
}

id sub_1000753D0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC14HDSViewService37HomePodSetupIconContentViewController_movieView);
  if (result)
  {
    return [result setHidden:1];
  }

  return result;
}

uint64_t sub_100075414(uint64_t a1)
{
  v2 = sub_10000E6C4(&qword_100101F08, &unk_1000BD100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000754B8()
{
  v1 = v0;
  v2 = MobileGestalt_get_current_device();
  if (v2)
  {
    v3 = v2;
    homeButtonType = MobileGestalt_get_homeButtonType();

    if (homeButtonType >= 0)
    {
      v5 = 16 * (homeButtonType != 2);
    }

    else
    {
      v5 = 16;
    }

    if (v1[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] == 1)
    {
      v6 = v1;
      v7 = [v6 presentedViewController];
      if (v7)
      {
        do
        {
          v8 = v7;

          v7 = [v8 presentedViewController];
          v6 = v8;
        }

        while (v7);
      }

      else
      {
        v8 = v6;
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();

      if (!v9)
      {
        ++v5;
      }
    }

    v10 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents;
    if (v5 != *&v1[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents])
    {
      if (qword_1001016C8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100012AAC(v11, qword_100103C80);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v14 = 136315394;
        *(v14 + 4) = sub_1000B08A0(0xD000000000000023, 0x80000001000C6910, &v21);
        *(v14 + 12) = 2080;
        v15 = SBUIRemoteAlertServiceButtonEventDescription();
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = sub_1000B08A0(v16, v18, &v21);

        *(v14 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v12, v13, "%s: %s", v14, 0x16u);
        swift_arrayDestroy();
      }

      v20 = sub_10009CC3C();
      if (v20)
      {
        [v20 setDesiredHardwareButtonEvents:v5 & 0x1E];
        swift_unknownObjectRelease();
      }

      sub_1000770DC();
      *&v1[v10] = v5;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100075774()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103C80);
  v1 = sub_100012AAC(v0, qword_100103C80);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10007583C()
{
  v1 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction;
  if (!*&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction] && v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] == 1)
  {
    v2 = [objc_opt_self() _cameraCaptureShutterConfigurationWithOptionsProvider:0];
    sub_10003AE18(0, &qword_100103DC0, _UIPhysicalButtonConfiguration_ptr);
    sub_100077AEC(&qword_100103DC8, &qword_100103DC0, _UIPhysicalButtonConfiguration_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = objc_allocWithZone(_UIPhysicalButtonInteraction);
    isa = Set._bridgeToObjectiveC()().super.isa;
    v5 = [v3 initWithConfigurations:isa delegate:v0];

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;

      [v7 addInteraction:v5];

      v8 = *&v0[v1];
      *&v0[v1] = v5;
      v9 = v5;

      sub_1000754B8();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1000759D8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter];
  *v7 = 0;
  v7[1] = 0;
  v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents] = 0;
  *&v3[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

uint64_t sub_100075B48(void *a1, void (*a2)(uint64_t))
{
  v3 = v2;
  v5 = [a1 userInfo];
  if (v5)
  {
    v6 = v5;
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = sub_10000D8A8(_swiftEmptyArrayStorage);
  }

  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100012AAC(v8, qword_100103C80);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    v13 = sub_100075E34();
    v15 = sub_1000B08A0(v13, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePod Setup Flow being configured with user info: %s", v11, 0xCu);
    sub_10000E70C(v12);
  }

  v16 = sub_10009CC3C();
  v17 = type metadata accessor for HomePodSetupPresenter();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = sub_1000796B8(v7, v16);
  v21 = (v3 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter);
  v22 = *(v3 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter);
  *v21 = v20;
  v21[1] = &off_1000F0D90;

  result = swift_unknownObjectRelease();
  if (*v21)
  {
    v24 = *(*v21 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_router);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = (v24 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler);
    v27 = *(v24 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler);
    v28 = *(v24 + OBJC_IVAR____TtC14HDSViewService18HomePodSetupRouter_flowControllerHandler + 8);
    *v26 = sub_100077B7C;
    v26[1] = v25;
    swift_unknownObjectRetain();

    sub_1000616F4(v27);
    swift_unknownObjectRelease();
  }

  if (a2)
  {
    a2(result);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100075E34()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = objc_opt_self();

  sub_10000E6C4(&qword_1001020B0, &qword_1000BD170);
  v16 = 0;
  v3 = [v2 dataWithJSONObject:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() options:1 error:&v16];
  swift_unknownObjectRelease();
  v4 = v16;
  if (v3)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    static String.Encoding.utf8.getter();
    v8 = String.init(data:encoding:)();
    if (v9)
    {
      v10 = v8;
      sub_100077BB4(v5, v7);
      return v10;
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v15._countAndFlagsBits = 0xD00000000000002ELL;
    v15._object = 0x80000001000C6980;
    String.append(_:)(v15);
    _print_unlocked<A, B>(_:_:)();
    sub_100077BB4(v5, v7);
  }

  else
  {
    v12 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v16 = 0;
    v17 = 0xE000000000000000;
    _StringGuts.grow(_:)(48);
    v13._countAndFlagsBits = 0xD00000000000001ALL;
    v13._object = 0x80000001000C6940;
    String.append(_:)(v13);
    sub_10000E6C4(&unk_1001035F0, &unk_1000BE8D0);
    _print_unlocked<A, B>(_:_:)();
    v14._object = 0x80000001000C6960;
    v14._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v14);
    _print_unlocked<A, B>(_:_:)();
  }

  return v16;
}

void sub_1000761C8()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"presentationControllerTransitionDidEnd:" name:UIPresentationControllerPresentationTransitionDidEndNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"presentationControllerTransitionDidEnd:" name:UIPresentationControllerDismissalTransitionDidEndNotification object:0];
}

void sub_1000762F4(char a1)
{
  v2 = v1;
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "viewDidAppear:", a1 & 1);
  if (*&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter])
  {
    v4 = qword_1001016C8;
    v5 = *&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter];
    swift_unknownObjectRetain();
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100012AAC(v6, qword_100103C80);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePodSetupFlowViewController: HomePod Setup Flow viewDidAppear", v9, 2u);
    }

    sub_100079BE0(v2);
    v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] = 1;
    sub_10007583C();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1001016C8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100012AAC(v10, qword_100103C80);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "HomePodSetupFlowViewController: viewDidAppear called with no presenter - configure not called", v13, 2u);
    }
  }
}

void sub_100076554(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100012AAC(v5, qword_100103C80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePodSetupFlowViewController: HomePod Setup Flow viewDidDisappear", v8, 2u);
  }

  v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] = 0;
  v9 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction;
  v10 = *&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction];
  if (v10)
  {
    v11 = v10;
    v12 = [v2 view];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 removeInteraction:v11];

    v14 = *&v2[v9];
    *&v2[v9] = 0;

    sub_1000754B8();
  }

  if (*&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter])
  {
    v15 = *&v2[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter];
    swift_unknownObjectRetain();
    sub_100079EA4(21);
    swift_unknownObjectRelease();
  }

  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidDisappear:", a1 & 1);
  v16 = [objc_opt_self() sharedApplication];
  [v16 terminateWithSuccess];
}

void sub_100076818(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v39 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
      sub_100077AEC(&qword_100103DB8, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
      Set.Iterator.init(_cocoa:)();
      v3 = v42;
      v2 = v43;
      v4 = v44;
      v5 = v45;
      v6 = v46;
    }

    else
    {
      v7 = -1 << *(a1 + 32);
      v2 = a1 + 56;
      v4 = ~v7;
      v8 = -v7;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v6 = v9 & *(a1 + 56);

      v5 = 0;
      v3 = v1;
    }

    v10 = (v4 + 64) >> 6;
    do
    {
      if (v3 < 0)
      {
        v14 = __CocoaSet.Iterator.next()();
        if (!v14 || (v41 = v14, sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr), swift_dynamicCast(), (v13 = v47) == 0))
        {
LABEL_24:
          sub_100077AE4();
          if (v40[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation])
          {
            v21 = v40;
            v22 = [v21 presentedViewController];
            v23 = v21;
            if (v22)
            {
              v24 = v21;
              do
              {
                v23 = v22;

                v22 = [v23 presentedViewController];
                v24 = v23;
              }

              while (v22);
            }

            objc_opt_self();
            v25 = swift_dynamicCastObjCClass();

            if (!v25)
            {
              v38 = swift_allocObject();
              swift_unknownObjectWeakInit();
              swift_unknownObjectWeakInit();

              sub_100065AC4(sub_100077C08, v38, sub_100076F10, 0);

              swift_unknownObjectWeakDestroy();

              return;
            }
          }

          if (v39)
          {
            swift_unknownObjectRetain();
            __CocoaSet.makeIterator()();
            sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
            sub_100077AEC(&qword_100103DB8, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
            Set.Iterator.init(_cocoa:)();
            v1 = v47;
            v26 = v48;
            v27 = v49;
            v28 = v50;
            v29 = v51;
          }

          else
          {
            v30 = -1 << *(v1 + 32);
            v26 = v1 + 56;
            v27 = ~v30;
            v31 = -v30;
            if (v31 < 64)
            {
              v32 = ~(-1 << v31);
            }

            else
            {
              v32 = -1;
            }

            v29 = v32 & *(v1 + 56);

            v28 = 0;
          }

          if (v1 < 0)
          {
            goto LABEL_42;
          }

          while (1)
          {
            v33 = v28;
            v34 = v29;
            v35 = v28;
            if (!v29)
            {
              break;
            }

LABEL_40:
            v36 = (v34 - 1) & v34;
            v37 = *(*(v1 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
            if (!v37)
            {
LABEL_46:
              sub_100077AE4();
              return;
            }

            while (1)
            {
              [v37 sendResponseWithUnHandledEvents:{objc_msgSend(v37, "events")}];

              v28 = v35;
              v29 = v36;
              if ((v1 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_42:
              if (__CocoaSet.Iterator.next()())
              {
                sub_10003AE18(0, &qword_100103DB0, SBUIRemoteAlertButtonAction_ptr);
                swift_dynamicCast();
                v37 = v41;
                v35 = v28;
                v36 = v29;
                if (v41)
                {
                  continue;
                }
              }

              goto LABEL_46;
            }
          }

          while (1)
          {
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              goto LABEL_50;
            }

            if (v35 >= ((v27 + 64) >> 6))
            {
              goto LABEL_46;
            }

            v34 = *(v26 + 8 * v35);
            ++v33;
            if (v34)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {
        v11 = v5;
        v12 = v6;
        if (!v6)
        {
          while (1)
          {
            v5 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v5 >= v10)
            {
              goto LABEL_24;
            }

            v12 = *(v2 + 8 * v5);
            ++v11;
            if (v12)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

LABEL_14:
        v6 = (v12 - 1) & v12;
        v13 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v15 = [v13 events];
    }

    while (v15 != 16);
    sub_100077AE4();
    if (qword_1001016C8 == -1)
    {
      goto LABEL_20;
    }

LABEL_51:
    swift_once();
LABEL_20:
    v16 = type metadata accessor for Logger();
    sub_100012AAC(v16, qword_100103C80);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "<loom:ViewService:matchHomePodSetupFlowViewController> HomePodSetupFlowViewController: Home button was pressed - dismissing setup", v19, 2u);
    }

    if (*&v40[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter])
    {
      v20 = *&v40[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter];
      swift_unknownObjectRetain();
      sub_100079EA4(4);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100076EBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1000754B8();
  }
}

void sub_100076F10()
{
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100012AAC(v0, qword_100103C80);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "confirmSetupDismissal()", v2, 2u);
  }
}

void sub_1000770DC()
{
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = v1;
  MobileGestalt_get_homeButtonType();

  v3 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation;
  if (v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation] == 1)
  {
    v4 = v0;
    v5 = [v4 presentedViewController];
    v6 = v4;
    if (v5)
    {
      v7 = v4;
      do
      {
        v6 = v5;

        v5 = [v6 presentedViewController];
        v7 = v6;
      }

      while (v5);
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();

    if (!v8)
    {
      v9 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion;
      if (!*&v4[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion])
      {
        v19 = [objc_opt_self() sharedInstance];
        v20 = [v19 beginConsumingPressesForButtonKind:2 eventConsumer:v4 priority:0];

        v21 = *&v4[v9];
        *&v4[v9] = v20;
        goto LABEL_17;
      }
    }
  }

  v10 = MobileGestalt_get_current_device();
  if (!v10)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v11 = v10;
  MobileGestalt_get_homeButtonType();

  if (v0[v3] != 1)
  {
    goto LABEL_26;
  }

  v12 = v0;
  v13 = [v12 presentedViewController];
  if (v13)
  {
    do
    {
      v14 = v13;

      v13 = [v14 presentedViewController];
      v12 = v14;
    }

    while (v13);
  }

  else
  {
    v14 = v12;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();

  if (v15)
  {
LABEL_26:
    v16 = OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion;
    v17 = *&v0[OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion];
    if (v17)
    {
      [v17 invalidate];
      v18 = *&v0[v16];
      *&v0[v16] = 0;
LABEL_17:

      swift_unknownObjectRelease();
    }
  }
}

void sub_1000772F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter);
  swift_unknownObjectRelease();
  v2 = *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion);
  swift_unknownObjectRelease();
  v3 = *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction);
}

void sub_100077488()
{
  v1 = (v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_presenter);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lockButtonAssertion) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_lastSetDesiredButtonEvents) = 0;
  *(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_captureButtonInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100077524(void *a1)
{
  v2 = [a1 _numberOfStages] == 1 && objc_msgSend(a1, "_stagePhase") != 1;
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100012AAC(v3, qword_100103C80);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v5, v6, "Received physical button action: %@", v7, 0xCu);
    sub_100077A7C(v8);
  }

  if (v2)
  {
    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "Confirming setup dismissal in response to physical button action: %@", v13, 0xCu);
      sub_100077A7C(v14);
    }

    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    sub_100065AC4(sub_100077C08, v16, sub_100076F10, 0);

    swift_unknownObjectWeakDestroy();
  }
}

void sub_1000777D8()
{
  if (qword_1001016C8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100012AAC(v1, qword_100103C80);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received lock button press", v4, 2u);
  }

  if (*(v0 + OBJC_IVAR____TtC14HDSViewService30HomePodSetupFlowViewController_hardwareButtonsRequireConfirmation) == 1)
  {
    v5 = v0;
    v6 = [v5 presentedViewController];
    v7 = v5;
    if (v6)
    {
      v8 = v5;
      do
      {
        v7 = v6;

        v6 = [v7 presentedViewController];
        v8 = v7;
      }

      while (v6);
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();

    if (!v9)
    {
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Confirming setup dismissal in response to lock button press", v12, 2u);
      }

      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();

      sub_100065AC4(sub_100077A74, v13, sub_100076F10, 0);

      swift_unknownObjectWeakDestroy();
    }
  }
}

uint64_t sub_100077A3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077A7C(uint64_t a1)
{
  v2 = sub_10000E6C4(&qword_100101E38, &unk_1000BCF80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100077AEC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10003AE18(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100077B3C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077BB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100077C0C()
{
  v1 = [*v0 name];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t sub_100077C64()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v2 + 8))(v5, v1);
  v12[0] = 0x5F646F70656D6F68;
  v12[1] = 0xE800000000000000;
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  return v12[0];
}

uint64_t sub_100077D94(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39[0] = 1031365995;
  v39[1] = 0xE400000000000000;
  v7 = a1;
  v8 = [v7 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  v37 = 0x5F646F70656D6F68;
  v38 = 0xE800000000000000;
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v39[0];
  v16 = v39[1];
  v39[0] = 0x646F50656D6F483CLL;
  v39[1] = 0xEF206E6F6974704FLL;
  v15._object = v16;
  String.append(_:)(v15);

  v18 = v39[0];
  v17 = v39[1];
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  strcpy(v39, "displayValue=");
  HIWORD(v39[1]) = -4864;
  v19 = [v7 name];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v37 = v20;
  v38 = v22;
  v23._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 32;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v25 = v39[0];
  v26 = v39[1];
  v39[0] = v18;
  v39[1] = v17;

  v27._countAndFlagsBits = v25;
  v27._object = v26;
  String.append(_:)(v27);

  v29 = v39[0];
  v28 = v39[1];
  strcpy(v39, "homePod=");
  BYTE1(v39[1]) = 0;
  WORD1(v39[1]) = 0;
  HIDWORD(v39[1]) = -402653184;
  v37 = v7;
  sub_1000780C0();
  v30._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v30);

  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  String.append(_:)(v31);
  v32 = v39[0];
  v33 = v39[1];
  v39[0] = v29;
  v39[1] = v28;

  v34._countAndFlagsBits = v32;
  v34._object = v33;
  String.append(_:)(v34);

  v35._countAndFlagsBits = 62;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);

  return v39[0];
}

unint64_t sub_1000780C0()
{
  result = qword_100102080;
  if (!qword_100102080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100102080);
  }

  return result;
}

uint64_t sub_10007811C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E6C4(&qword_100101958, &unk_1000BE900);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = (v1 + 8);

  v8 = 0;
  while (v4)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
    v12 = *(*(a1 + 48) + v11);
    v27 = *(*(a1 + 56) + v11);
    v13 = v27;
    sub_10003AE18(0, &qword_1001023F0, UIFont_ptr);
    v14 = v12;
    v15 = v13;
    swift_dynamicCast();
    sub_10000E9F4((v28 + 8), v26);
    sub_10000E9F4(v26, v28);
    v16 = v1[5];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v17 = Hasher._finalize()();

    v18 = -1 << *(v1 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*&v6[8 * (v19 >> 6)]) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *&v6[8 * v20];
        if (v24 != -1)
        {
          v9 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v19) & ~*&v6[8 * (v19 >> 6)])) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(v1[6] + 8 * v9) = v14;
    result = sub_10000E9F4(v28, (v1[7] + 32 * v9));
    ++v1[2];
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v4)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000783D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000E6C4(&qword_100101968, &qword_1000BC238);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000EA58(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000E9F4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000E9F4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000E9F4(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000E9F4(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_10007869C(char a1)
{
  result = 0x49557472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6F486B636970;
      break;
    case 2:
      result = 0x6F48657461657263;
      break;
    case 3:
    case 6:
    case 42:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6D6F6F526B636970;
      break;
    case 5:
      result = 0x73736572676F7270;
      break;
    case 7:
      result = 0x656C6C65636E6163;
      break;
    case 8:
    case 11:
    case 24:
    case 27:
      result = 0xD000000000000010;
      break;
    case 9:
    case 34:
    case 45:
    case 52:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0x55664F736D726574;
      break;
    case 12:
      result = 0x7265764569726973;
      break;
    case 13:
      result = 0x6953656C62616E65;
      break;
    case 14:
      result = 0x636C655769726973;
      break;
    case 15:
    case 23:
    case 41:
    case 43:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x4D6B734169726973;
      break;
    case 17:
    case 31:
    case 61:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0x615044454C746567;
      break;
    case 19:
      result = 0x4E49507265746E65;
      break;
    case 20:
      result = 0x61506F6572657473;
      break;
    case 21:
    case 26:
    case 54:
      result = 0xD000000000000013;
      break;
    case 22:
    case 35:
    case 58:
      result = 0xD000000000000015;
      break;
    case 25:
      result = 0x6F63655269726973;
      break;
    case 28:
    case 33:
    case 38:
    case 46:
    case 60:
      result = 0xD000000000000018;
      break;
    case 29:
    case 36:
      result = 0xD00000000000001ALL;
      break;
    case 30:
      result = 0xD000000000000019;
      break;
    case 32:
      result = 0xD00000000000001DLL;
      break;
    case 37:
      result = 0xD000000000000019;
      break;
    case 39:
      result = 0xD000000000000019;
      break;
    case 40:
      result = 0xD000000000000024;
      break;
    case 44:
      result = 0xD000000000000019;
      break;
    case 47:
      result = 0xD00000000000001BLL;
      break;
    case 48:
      result = 0x756F525032506F6ELL;
      break;
    case 49:
      result = 1701736292;
      break;
    case 50:
      result = 0x6F727245656E6F64;
      break;
    case 51:
      result = 1953069157;
      break;
    case 53:
      result = 0xD000000000000021;
      break;
    case 55:
      result = 0x6B63695069666977;
      break;
    case 56:
      result = 0x7373615069666977;
      break;
    case 57:
      result = 0x6D6D755369666977;
      break;
    case 59:
      result = 0xD000000000000019;
      break;
    case 62:
      result = 0x6E69616741797274;
      break;
    case 63:
      result = 0x7365726975716572;
      break;
    case 64:
      result = 0xD000000000000020;
      break;
    case 65:
      result = 0xD000000000000026;
      break;
    case 66:
      result = 0xD000000000000022;
      break;
    case 67:
      result = 0xD000000000000019;
      break;
    case 68:
      result = 0x6C65737055326868;
      break;
    case 69:
      result = 0x50646E4161746164;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100078E68()
{
  v0 = type metadata accessor for Logger();
  sub_100012B48(v0, qword_100103DD0);
  v1 = sub_100012AAC(v0, qword_100103DD0);
  if (qword_100101670 != -1)
  {
    swift_once();
  }

  v2 = sub_100012AAC(v0, qword_100108998);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100078F30(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10007869C(*a1);
  v5 = v4;
  if (v3 == sub_10007869C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100078FB8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007869C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007901C()
{
  sub_10007869C(*v0);
  String.hash(into:)();
}

Swift::Int sub_100079070()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10007869C(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000790D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100082414();
  *a2 = result;
  return result;
}

unint64_t sub_100079100@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10007869C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100079134()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25[-1] - v4;
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100012AAC(v6, qword_100103DD0);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v9 = 136315394;
    v10 = sub_10007869C(*(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state));
    v12 = sub_1000B08A0(v10, v11, v25);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = *(*(v0 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48);

    v14 = sub_10004F854();
    v16 = v15;

    v17 = sub_1000B08A0(v14, v16, v25);

    *(v9 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter: Delegate set with State: %s Model: %s and we build a new viewModel.", v9, 0x16u);
    swift_arrayDestroy();
  }

  v18 = *(*(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_interactor) + 48);
  v19 = *(v1 + OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_state);

  LOBYTE(v25[0]) = 1;
  sub_1000185F0(v5, v20, v19, 0x100000000uLL, 0);

  v21 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
  v22 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_100082E7C(v5, v1 + v22);
  swift_endAccess();
  sub_100079428();
  return sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
}

uint64_t sub_100079428()
{
  v1 = v0;
  v2 = sub_10000E6C4(&qword_100103420, &unk_1000BCE90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14HDSViewService21HomePodSetupPresenter_viewModel;
  swift_beginAccess();
  sub_10000F25C(v1 + v11, v5, &qword_100103420, &unk_1000BCE90);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10000EBA4(v5, &qword_100103420, &unk_1000BCE90);
  }

  sub_100016310(v5, v10);
  if (qword_1001016D0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100012AAC(v13, qword_100103DD0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "<loom:ViewService:matchHomePodSetupPresenter> HomePodSetupPresenter: a viewmodel was set", v16, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 32))(v1, &off_1000F0D90, v10, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  return sub_100016374(v10);
}