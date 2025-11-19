Class sub_1007EAA18(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  sub_100006370(0, &qword_101A001C0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

id sub_1007EAA90(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v4)
  {
    v4 = [v4 *a3];
    v3 = vars8;
  }

  return v4;
}

id sub_1007EAAD4(void *a1)
{
  result = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result keyInputReceiver];
    if (result)
    {
      v4 = result;
      v5 = sub_1007EEC6C(a1);
      if ((v6 & 1) == 0)
      {
        v7 = v5;
        v8 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
        if (*(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress) <= 0)
        {
          v9 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
          *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard) = 1;
          v10 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate);
          if (v10)
          {
            [v10 selectionWillChange:v1];
          }

          *(v1 + v9) = 0;
        }

        v11 = sub_100BE7968([a1 modifierFlags]);
        [v4 arrowKeyReceivedInDirection:v7 withModifierKeys:v11];

        if (*(v1 + v8) <= 0)
        {
          v12 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
          *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard) = 1;
          v13 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate);
          if (v13)
          {
            [v13 selectionDidChange:v1];
          }

          *(v1 + v12) = 0;
        }
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1007EAC8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (static Selector.== infix(_:_:)())
  {
    v7 = *&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor];
    if (!v7 || ([v7 wantsToReceiveTextInput] & 1) != 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  if (static Selector.== infix(_:_:)() & 1) != 0 || (static Selector.== infix(_:_:)())
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_100601584(a2, &v20);
  v9 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v10 = sub_100020E58(&v20, *(&v21 + 1));
    v11 = *(v9 - 8);
    v12 = __chkstk_darwin(v10);
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v11 + 8))(v14, v9);
    sub_100005070(&v20);
  }

  else
  {
    v15 = 0;
  }

  v16 = type metadata accessor for CRLTextInputResponder();
  v19.receiver = v3;
  v19.super_class = v16;
  v17 = objc_msgSendSuper2(&v19, "targetForAction:withSender:", a1, v15);
  swift_unknownObjectRelease();
  if (v17)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  result = *&v20;
  v18 = v21;
  *a3 = v20;
  a3[1] = v18;
  return result;
}

void sub_1007EB074(double a1, double a2)
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper;
  if (!*(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper))
  {
    v4 = a1;
    v5 = a2;
    Strong = swift_unknownObjectWeakLoadStrong();
    v7 = type metadata accessor for CRLFloatingCursor();
    v8 = objc_allocWithZone(v7);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *&v8[OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanFromKeyboard] = 0;
    v9 = &v8[OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_twoFingerPanLastKnownPoint];
    *v9 = 0;
    *(v9 + 1) = 0;
    v9[16] = 1;
    v10 = OBJC_IVAR____TtC8Freeform17CRLFloatingCursor_logger;
    v11 = qword_1019F1570;
    swift_unknownObjectRetain();
    if (v11 != -1)
    {
      swift_once();
    }

    v12 = qword_101AD64F8;
    *&v8[v10] = qword_101AD64F8;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v18.receiver = v8;
    v18.super_class = v7;
    v13 = v12;
    v14 = objc_msgSendSuper2(&v18, "init");
    swift_unknownObjectRelease();

    v15 = *(v2 + v3);
    *(v2 + v3) = v14;

    a2 = v5;
    a1 = v4;
  }

  if (qword_1019F1570 != -1)
  {
    v16 = a2;
    v17 = a1;
    swift_once();
    a1 = v17;
    a2 = v16;
  }

  sub_1007EB2CC(v2, sub_100F98F50, a1, a2);
}

void sub_1007EB2CC(uint64_t a1, void (*a2)(double, double), double a3, double a4)
{
  v8 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!v8 || (v9 = [v8 textSelectionDelegate]) == 0 || (v10 = objc_msgSend(v9, "selectionViewController"), swift_unknownObjectRelease(), !v10) || (v11 = *&v10[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView], v12 = v11, v10, !v11))
  {
    v12 = sub_1007EB984();
  }

  v13 = sub_1007EB984();
  [v12 convertPoint:v13 toCoordinateSpace:{a3, a4}];
  v15 = v14;
  v17 = v16;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    [Strong convertBoundsToUnscaledPoint:{v15, v17}];
    v21 = v20;
    v23 = v22;

    v24 = *(a1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper);
    if (v24)
    {
      v25 = v24;
      a2(v21, v23);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1007EB63C(SEL *a1, double a2, double a3, double a4, double a5)
{
  v11 = *(v5 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!v11 || (v12 = [v11 textSelectionDelegate]) == 0 || (v13 = objc_msgSend(v12, "selectionViewController"), swift_unknownObjectRelease(), !v13) || (v14 = *&v13[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView], v15 = v14, v13, !v14))
  {
    v15 = sub_1007EB984();
  }

  v16 = sub_1007EB984();
  [v15 *a1];
  v18 = v17;

  return v18;
}

double sub_1007EB76C(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, double (*a7)(double, double, double, double))
{
  v12 = a1;
  v13 = a7(a2, a3, a4, a5);

  return v13;
}

double sub_1007EB7FC(SEL *a1, double a2, double a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!v7 || (v8 = [v7 textSelectionDelegate]) == 0 || (v9 = objc_msgSend(v8, "selectionViewController"), swift_unknownObjectRelease(), !v9) || (v10 = *&v9[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView], v11 = v10, v9, !v10))
  {
    v11 = sub_1007EB984();
  }

  v12 = sub_1007EB984();
  [v11 *a1];
  v14 = v13;

  return v14;
}

uint64_t sub_1007EB984()
{
  v1 = v0;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    while (1)
    {
      v4 = v1;
      v1 = [v1 nextResponder];

      if (!v1)
      {
        break;
      }

      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();

      objc_opt_self();
      if (v5)
      {

        return swift_dynamicCastObjCClassUnconditional();
      }

      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_2;
      }
    }

    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 1008;
    v19 = v29;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "FLOATING CURSOR: Next responder can't find a view.", 50, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:1008 isFatal:0 format:v28 args:v25];

    v1 = 0;
  }

LABEL_2:
  v2 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];

  return v2;
}

uint64_t sub_1007EBE60()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v1)
  {
    v2 = [v1 textSelectionDelegate];
    if (v2)
    {
      v3 = [v2 selectionViewController];
      swift_unknownObjectRelease();
      if (v3)
      {
        v4 = *&v3[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_rotatedOverlayView];
        v5 = v4;

        if (v4)
        {
          return v5;
        }
      }
    }
  }

  return sub_1007EB984();
}

void sub_1007EC004(uint64_t a1, NSString a2, uint64_t a3, NSString a4, uint64_t a5)
{
  if (*&v5[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor] && (v6 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_writingToolsActive, (v5[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_writingToolsActive] & 1) == 0))
  {
    v12 = [swift_unknownObjectRetain() needsTextEditingAccessoryBar];
    v5[v6] = 1;
    if (v12)
    {
      [v5 reloadInputViews];
    }

    if (a2)
    {
      a2 = String._bridgeToObjectiveC()();
    }

    if (a4)
    {
      a4 = String._bridgeToObjectiveC()();
    }

    sub_100601584(a5, v22);
    v13 = v23;
    if (v23)
    {
      v14 = sub_100020E58(v22, v23);
      v15 = *(v13 - 8);
      v16 = __chkstk_darwin(v14);
      v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v18, v16);
      v19 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v15 + 8))(v18, v13);
      sub_100005070(v22);
    }

    else
    {
      v19 = 0;
    }

    v20 = type metadata accessor for CRLTextInputResponder();
    v21.receiver = v5;
    v21.super_class = v20;
    objc_msgSendSuper2(&v21, "_startWritingToolsWithTool:prompt:sender:", a2, a4, v19);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1019F22E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static OS_os_log.writingTools;
    v8 = static os_log_type_t.debug.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "Redundant call to present writing tools", 39, 2, _swiftEmptyArrayStorage);
  }
}

void sub_1007EC5AC()
{
  if (v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_writingToolsActive] == 1)
  {
    v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_writingToolsActive] = 0;
    [v0 reloadInputViews];
    v0[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_endTextInputWhenFirstResponderResigns] = 1;
  }

  else
  {
    if (qword_1019F22E8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = static OS_os_log.writingTools;
    v2 = static os_log_type_t.debug.getter();
    sub_100005404(v1, &_mh_execute_header, v2, "Redundant call to dismiss writing tools", 39, 2, _swiftEmptyArrayStorage);
  }
}

id sub_1007EC878(void *a1, void *a2)
{
  sub_100006370(0, &qword_101A012A8);
  result = type metadata accessor for CRLWPTextString();
  v6 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
  v7 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress) = v9;
    if (*(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard) == 1 || (v10 = *(v2 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor)) == 0)
    {
      v15 = a1;
      result = a2;
    }

    else
    {
      v11 = a1;
      v12 = a2;
      result = [v10 textInputReceiver];
      if (result)
      {
        v13 = result;
        type metadata accessor for CRLTextRange();
        v14 = swift_dynamicCastClass();
        if (v14)
        {
          [v13 replace:v14 with:v12];
        }

        result = swift_unknownObjectRelease();
      }
    }

    v16 = *(v2 + v6);
    v8 = __OFSUB__(v16, 1);
    v17 = v16 - 1;
    if (!v8)
    {
      *(v2 + v6) = v17;
      return swift_arrayDestroy();
    }
  }

  __break(1u);
  return result;
}

void sub_1007ECC64(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor))
  {
    if ((*(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editorIsChanging) & 1) == 0)
    {
      v2 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
      v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress);
      v4 = __OFADD__(v3, 1);
      v5 = v3 + 1;
      if (v4)
      {
        __break(1u);
      }

      else
      {
        *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress) = v5;
        v7 = swift_unknownObjectRetain();
        sub_1007ED07C(v7, a1, v1);
        swift_unknownObjectRelease();
        v8 = *(v1 + v2);
        v4 = __OFSUB__(v8, 1);
        v9 = v8 - 1;
        if (!v4)
        {
          *(v1 + v2) = v9;
          return;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v10 = objc_opt_self();
    v11 = [v10 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
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
    *(inited + 152) = 1138;
    v23 = v33;
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

    [v10 handleFailureInFunction:v30 file:v31 lineNumber:1138 isFatal:0 format:v32 args:v29];
  }
}

void sub_1007ED07C(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 wantsToReceiveTextInput])
  {
    v6 = [a1 textInputReceiver];
    if (!v6)
    {
      return;
    }

    goto LABEL_3;
  }

  if ([a1 keyInputReceiver])
  {
    swift_unknownObjectRelease();
    v8 = *(a2 + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text);
    v7 = *(a2 + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 8);
    if (*(a2 + OBJC_IVAR____TtC8Freeform15CRLWPTextString_text + 16))
    {
      v9 = [v8 string];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1007EF850(v8, v7, 1);
    }

    else
    {
    }

    v10 = String._bridgeToObjectiveC()();

    v11 = [a1 shouldBeginTextInputWith:v10];

    if (v11)
    {
      if ([a1 textInputReceiver])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1007E8C64();
      }

      v12 = *(a3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
      if (v12)
      {
        v6 = [v12 textInputReceiver];
        if (v6)
        {
LABEL_3:
          [v6 insertWithText:a2];

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

id sub_1007ED2A0(void *a1)
{
  type metadata accessor for CRLTextRange();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    v14 = objc_allocWithZone(NSAttributedString);

    return [v14 init];
  }

  v4 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (!v4)
  {
    v15 = a1;
    goto LABEL_10;
  }

  v5 = v3;
  v6 = a1;
  v7 = [v4 textInputReceiver];
  if (!v7)
  {
LABEL_10:
    v16 = objc_opt_self();
    v17 = [v16 _atomicIncrementAssertCount];
    v41 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v41);
    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v19 = String._bridgeToObjectiveC()();

    v20 = [v19 lastPathComponent];

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v24 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v17;
    v26 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v26;
    v27 = sub_1005CF04C();
    *(inited + 104) = v27;
    *(inited + 72) = v18;
    *(inited + 136) = &type metadata for String;
    v28 = sub_1000053B0();
    *(inited + 112) = v21;
    *(inited + 120) = v23;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v28;
    *(inited + 152) = 1162;
    v29 = v41;
    *(inited + 216) = v26;
    *(inited + 224) = v27;
    *(inited + 192) = v29;
    v30 = v18;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v24, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v34[4] = 0;
    v34[5] = 0;
    v35 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v36 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v38 = String._bridgeToObjectiveC()();

    [v16 handleFailureInFunction:v36 file:v37 lineNumber:1162 isFatal:0 format:v38 args:v35];

    goto LABEL_13;
  }

  v8 = v7;
  swift_unknownObjectRetain();
  v9 = [v5 start];
  v10 = *&v9[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  if (v10 == result)
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    v13 = 0;
    goto LABEL_15;
  }

  v12 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v40 = *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
  v13 = v40 - v12;
  if (!__OFSUB__(v40, v12))
  {
LABEL_15:
    v39 = [v8 attributedSubstringForProposedRange:v12 actualRange:{v13, 0}];
    swift_unknownObjectRelease();
    if (v39)
    {

      goto LABEL_17;
    }

LABEL_13:
    v39 = [objc_allocWithZone(NSAttributedString) init];

LABEL_17:
    swift_unknownObjectRelease();
    return v39;
  }

  __break(1u);
  return result;
}

id sub_1007ED804(void *a1)
{
  result = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (result)
  {
    result = [result textSelectionDelegate];
    if (result)
    {
      v4 = result;
      type metadata accessor for CRLTextRange();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        v7 = a1;
        v8 = [v4 textIn:v6];
        if (v8)
        {
          v9 = v8;
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_unknownObjectRelease();
          return v10;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1007EDA20(void *a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for CRLTextPosition();
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
      v10 = Strong;
      swift_unknownObjectRetain();
      v11 = a1;

      if (v9)
      {
        type metadata accessor for CRLWPEditor();
        v12 = swift_dynamicCastClass();
        if (v12)
        {
          v13 = [*(v12 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) isCharIndex:*(v7 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location) withEolAffinity:*(v7 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity) == 1 atBoundary:sub_1007EF2EC(a2) inDirection:a3];

          swift_unknownObjectRelease();
          return v13;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return 1;
}

uint64_t sub_1007EDBB4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for CRLTextPosition();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v10 = *(result + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
      v11 = result;
      swift_unknownObjectRetain();
      v12 = a1;

      if (!v10)
      {
LABEL_8:

        return 0;
      }

      type metadata accessor for CRLWPEditor();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        if (a2 == 4)
        {
          v19 = 0xBFF0000000000000;
          v14 = [*(v13 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) charIndexByMovingPosition:v9 toBoundary:4 inDirection:a3 preferPosition:&v19];
          if (v14 == NSNotFound.getter())
          {
            swift_unknownObjectRelease();
            goto LABEL_8;
          }

          if (static UITextDirection.storage(_:)() == a3 || static UITextDirection.layout(_:)() == a3)
          {
            v16 = 1;
          }

          else if (static UITextDirection.layout(_:)() == a3 || static UITextDirection.layout(_:)() == a3)
          {
            v16 = *(v9 + OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity);
          }

          else
          {
            v16 = 0;
          }

          v17 = objc_allocWithZone(v7);
          *&v17[OBJC_IVAR____TtC8Freeform15CRLTextPosition_insertionEdge] = 0;
          *&v17[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location] = v14;
          *&v17[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity] = v16;
          v18.receiver = v17;
          v18.super_class = v7;
          v15 = objc_msgSendSuper2(&v18, "init");
          swift_unknownObjectRelease();
        }

        else
        {
          v20.receiver = v3;
          v20.super_class = type metadata accessor for CRLTextInputResponder.CRLWPInputStringTokenizer();
          v15 = objc_msgSendSuper2(&v20, "positionFromPosition:toBoundary:inDirection:", v9, a2, a3);

          swift_unknownObjectRelease();
        }

        return v15;
      }

      else
      {

        swift_unknownObjectRelease();
        return 0;
      }
    }
  }

  return result;
}

id sub_1007EDEC4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1007EDF30()
{
  v1 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
  *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard) = 1;
  v2 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate;
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate);
  if (v3)
  {
    [v3 textWillChange:v0];
  }

  *(v0 + v1) = 1;
  result = *(v0 + v2);
  if (result)
  {
    result = [result textDidChange:v0];
  }

  *(v0 + v1) = 0;
  return result;
}

uint64_t sub_1007EDFA4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v3)
  {
    v4 = [v3 textInputReceiver];
    if (v4)
    {
      v5 = v4;
      type metadata accessor for CRLTextPosition();
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        v8 = a1;
        v9 = CRLWPWritingDirection.asNSWritingDirection.getter([v5 baseWritingDirectionFor:v7]);
        swift_unknownObjectRelease();

        return v9;
      }

      swift_unknownObjectRelease();
    }
  }

  return -1;
}

double sub_1007EE058()
{
  v0 = objc_opt_self();
  v1 = [v0 keyCommandWithInput:UIKeyInputDelete modifierFlags:0x80000 action:"deleteWordBackward"];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 keyCommandWithInput:v2 modifierFlags:0x80000 action:"deleteWordForward"];

  [v1 setWantsPriorityOverSystemBehavior:1];
  [v3 setWantsPriorityOverSystemBehavior:1];
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *&result = 2;
  *(v4 + 16) = xmmword_10146CE00;
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  return result;
}

void *sub_1007EE160()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = objc_opt_self();
  v2 = [v1 keyCommandWithInput:v0 modifierFlags:0 action:"arrowKeyInputReceivedFrom:"];

  [v2 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v1 keyCommandWithInput:v3 modifierFlags:0x20000 action:"arrowKeyInputReceivedFrom:"];

  [v4 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v1 keyCommandWithInput:v5 modifierFlags:0x100000 action:"arrowKeyInputReceivedFrom:"];

  [v6 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v1 keyCommandWithInput:v7 modifierFlags:0x80000 action:"arrowKeyInputReceivedFrom:"];

  [v8 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = String._bridgeToObjectiveC()();
  v10 = [v1 keyCommandWithInput:v9 modifierFlags:0x40000 action:"arrowKeyInputReceivedFrom:"];

  [v10 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v1 keyCommandWithInput:v11 modifierFlags:655360 action:"arrowKeyInputReceivedFrom:"];

  [v12 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v1 keyCommandWithInput:v13 modifierFlags:1179648 action:"arrowKeyInputReceivedFrom:"];

  [v14 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v1 keyCommandWithInput:v15 modifierFlags:1572864 action:"arrowKeyInputReceivedFrom:"];

  [v16 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v1 keyCommandWithInput:v17 modifierFlags:786432 action:"arrowKeyInputReceivedFrom:"];

  [v18 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v1 keyCommandWithInput:v19 modifierFlags:1310720 action:"arrowKeyInputReceivedFrom:"];

  [v20 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v21 = String._bridgeToObjectiveC()();
  v22 = [v1 keyCommandWithInput:v21 modifierFlags:1703936 action:"arrowKeyInputReceivedFrom:"];

  [v22 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v1 keyCommandWithInput:v23 modifierFlags:917504 action:"arrowKeyInputReceivedFrom:"];

  [v24 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v1 keyCommandWithInput:v25 modifierFlags:1441792 action:"arrowKeyInputReceivedFrom:"];

  [v26 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v1 keyCommandWithInput:v27 modifierFlags:1835008 action:"arrowKeyInputReceivedFrom:"];

  [v28 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v29 = String._bridgeToObjectiveC()();
  v30 = [v1 keyCommandWithInput:v29 modifierFlags:1966080 action:"arrowKeyInputReceivedFrom:"];

  [v30 setWantsPriorityOverSystemBehavior:1];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return _swiftEmptyArrayStorage;
}

void *sub_1007EEAB8()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  while (1)
  {

    v1 = sub_1007EE160();

    if (v1 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_5:
        v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        v4 = __OFADD__(v3, v2);
        v5 = v3 + v2;
        if (v4)
        {
          goto LABEL_14;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_5;
      }
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
    v4 = __OFADD__(v11, v2);
    v5 = v11 + v2;
    if (v4)
    {
LABEL_14:
      __break(1u);
LABEL_15:
      swift_arrayDestroy();
      return _swiftEmptyArrayStorage;
    }

LABEL_6:
    sub_1007AB810(v5);
    sub_1007AA284((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 8 * *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10), v1);
    v7 = v6;

    if (v7 < v2)
    {
      break;
    }

    if (v7 >= 1)
    {
      v9 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      v4 = __OFADD__(v9, v7);
      v10 = v9 + v7;
      if (v4)
      {
        goto LABEL_17;
      }

      *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) = v10;
    }

    v0 += 16;
    if (v0 == 64)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1007EEC6C(void *a1)
{
  v1 = [a1 input];
  if (!v1)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_15;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v5)
  {
LABEL_15:

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_16;
  }

  if (v6 == v3 && v5 == v7)
  {

    goto LABEL_20;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v9)
  {
LABEL_20:

    return 1;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v5 == v10)
  {

LABEL_22:

    return 2;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_22;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v5 == v37)
  {

LABEL_27:

    return 4;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    goto LABEL_27;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == v3 && v5 == v39)
  {

    return 3;
  }

  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v40)
  {
    return 3;
  }

LABEL_16:
  v13 = objc_opt_self();
  v14 = [v13 _atomicIncrementAssertCount];
  v41 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v41);
  StaticString.description.getter();
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v14;
  v23 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v23;
  v24 = sub_1005CF04C();
  *(inited + 104) = v24;
  *(inited + 72) = v15;
  *(inited + 136) = &type metadata for String;
  v25 = sub_1000053B0();
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v25;
  *(inited + 152) = 871;
  v26 = v41;
  *(inited + 216) = v23;
  *(inited + 224) = v24;
  *(inited + 192) = v26;
  v27 = v15;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v30, "Unknown key direction.", 22, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  v31[2] = 8;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = 0;
  v32 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v34 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v35 = String._bridgeToObjectiveC()();

  [v13 handleFailureInFunction:v33 file:v34 lineNumber:871 isFatal:0 format:v35 args:v32];

  return 0;
}

unint64_t sub_1007EF2EC(unint64_t result)
{
  if (result >= 6)
  {
    v1 = result;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = v1;
    v3 = inited + 32;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v43 = objc_opt_self();
    v4 = [v43 _atomicIncrementAssertCount];
    v44 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v44);
    StaticString.description.getter();
    v5 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v6 = String._bridgeToObjectiveC()();

    v7 = [v6 lastPathComponent];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_34;
    }

    while (1)
    {
      v11 = static OS_os_log.crlAssert;
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_10146CA70;
      *(v12 + 56) = &type metadata for Int32;
      *(v12 + 64) = &protocol witness table for Int32;
      *(v12 + 32) = v4;
      v13 = sub_100006370(0, &qword_1019F4D30);
      *(v12 + 96) = v13;
      v14 = sub_1005CF04C();
      *(v12 + 104) = v14;
      *(v12 + 72) = v5;
      *(v12 + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(v12 + 112) = v8;
      *(v12 + 120) = v10;
      *(v12 + 176) = &type metadata for UInt;
      *(v12 + 184) = &protocol witness table for UInt;
      *(v12 + 144) = v15;
      *(v12 + 152) = 1275;
      v16 = v44;
      *(v12 + 216) = v13;
      *(v12 + 224) = v14;
      *(v12 + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v12);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "New UITextGranularity available: %d", 35, 2, inited);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v8 = v21 + 3;
      v21[4] = 0;
      v21[5] = 0;
      v5 = *(inited + 16);
      v10 = inited;
      if (!v5)
      {
LABEL_28:
        v39 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v42 = String._bridgeToObjectiveC()();

        [v43 handleFailureInFunction:v40 file:v41 lineNumber:1275 isFatal:0 format:v42 args:v39];

        swift_setDeallocating();
        swift_arrayDestroy();
        return 3;
      }

      inited = 0;
      v4 = 40;
      while (1)
      {
        sub_100020E58((v3 + 40 * inited), *(v3 + 40 * inited + 24));
        v22 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v23 = *v8;
        v24 = *(v22 + 16);
        v25 = __OFADD__(*v8, v24);
        v26 = *v8 + v24;
        if (v25)
        {
          break;
        }

        v27 = v21[4];
        if (v27 >= v26)
        {
          goto LABEL_20;
        }

        if (v27 + 0x4000000000000000 < 0)
        {
          goto LABEL_32;
        }

        v28 = v21[5];
        if (2 * v27 > v26)
        {
          v26 = 2 * v27;
        }

        v21[4] = v26;
        if ((v26 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_33;
        }

        v29 = v3;
        v30 = v10;
        v31 = v22;
        v32 = swift_slowAlloc();
        v33 = v32;
        v21[5] = v32;
        if (v28)
        {
          if (v32 != v28 || v32 >= &v28[8 * v23])
          {
            memmove(v32, v28, 8 * v23);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v22 = v31;
          v10 = v30;
          v3 = v29;
          v4 = 40;
LABEL_20:
          v33 = v21[5];
          if (!v33)
          {
            goto LABEL_27;
          }

          goto LABEL_21;
        }

        v22 = v31;
        v10 = v30;
        v3 = v29;
        v4 = 40;
        if (!v33)
        {
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_21:
        v35 = *(v22 + 16);
        if (v35)
        {
          v36 = (v22 + 32);
          v37 = *v8;
          while (1)
          {
            v38 = *v36++;
            *&v33[8 * v37] = v38;
            v37 = *v8 + 1;
            if (__OFADD__(*v8, 1))
            {
              break;
            }

            *v8 = v37;
            if (!--v35)
            {
              goto LABEL_5;
            }
          }

          __break(1u);
          break;
        }

LABEL_5:

        if (++inited == v5)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      swift_once();
    }
  }

  return result;
}

void sub_1007EF850(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1007EF860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1007E5640(a1, v4, v5, v6);
}

uint64_t sub_1007EF914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1007E4D78(a1, v4, v5, v6);
}

uint64_t sub_1007EFAA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v4);
  v21 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A017A0);
  v19 = *(v6 - 8);
  v20 = v6;
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for CRLSELibraryViewModelItemNode(0);
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_100056248();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v12 = v11;
  v13 = v19;
  v24 = 0;
  sub_10005629C(&qword_101A017B0, type metadata accessor for CRLSELibraryViewModel.Item);
  v14 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100057C90(v21, v12, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_1005B981C(&qword_101A017B8);
  v23 = 1;
  sub_100057BF4(&qword_101A017C0, &qword_101A017C8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = *(v9 + 20);
  (*(v13 + 8))(v8, v14);
  *(v12 + v15) = v22;
  sub_10005720C(v12, v18, type metadata accessor for CRLSELibraryViewModelItemNode);
  sub_100005070(a1);
  return sub_100058BFC(v12, type metadata accessor for CRLSELibraryViewModelItemNode);
}

uint64_t sub_1007EFE28(void *a1)
{
  v3 = sub_1005B981C(&qword_101A018F8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1007F5C10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for UUID();
  sub_10005629C(&qword_1019F43C0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLSEBoardIdentifierStorage(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007EFFE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1005B981C(&qword_101A018E8);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  __chkstk_darwin(v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1007F5C10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_10005629C(&qword_1019F43A8, &type metadata accessor for UUID);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_10005720C(v19, v18, type metadata accessor for CRLSEBoardIdentifierStorage);
  sub_100005070(a1);
  return sub_100058BFC(v19, type metadata accessor for CRLSEBoardIdentifierStorage);
}

uint64_t sub_1007F033C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1835365481 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
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

uint64_t sub_1007F0418(uint64_t a1)
{
  v2 = sub_100056248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F0454(uint64_t a1)
{
  v2 = sub_100056248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F04A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1007F5338(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_10066CE5C(v7, v8);
}

uint64_t sub_1007F0510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4955556472616F62 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D614E72656E776FLL && a2 == 0xE900000000000065)
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

uint64_t sub_1007F05F0(uint64_t a1)
{
  v2 = sub_1007F5C10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F062C(uint64_t a1)
{
  v2 = sub_1007F5C10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A018C0);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLSEBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1007F5BBC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    sub_10005629C(&qword_101A018D0, type metadata accessor for CRLSEBoardIdentifierStorage);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    sub_100057C90(v13, v11, type metadata accessor for CRLSEBoardIdentifierStorage);
    sub_100057C90(v11, v12, type metadata accessor for CRLSEBoardIdentifier);
  }

  return sub_100005070(a1);
}

uint64_t sub_1007F090C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
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

uint64_t sub_1007F0994(uint64_t a1)
{
  v2 = sub_1007F5BBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F09D0(uint64_t a1)
{
  v2 = sub_1007F5BBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F0A24(void *a1)
{
  v2 = sub_1005B981C(&qword_101A018D8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100020E58(a1, a1[3]);
  sub_1007F5BBC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);
  sub_10005629C(&qword_101A018E0, type metadata accessor for CRLSEBoardIdentifierStorage);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1007F0B9C(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for CRLSEBoardIdentifierStorage(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Int sub_1007F0C1C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007F0CC0()
{
  type metadata accessor for UUID();
  sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);

  return String.hash(into:)();
}

Swift::Int sub_1007F0D60()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLSEBoardIdentifierStorage(0);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1007F0E00(uint64_t a1)
{
  v2 = v1;
  v30[1] = a1;
  v30[0] = type metadata accessor for UUID();
  v3 = *(v30[0] - 8);
  __chkstk_darwin(v30[0]);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v6 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v30 - v16;
  v18 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v18);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005720C(v2, v20, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v27 = sub_1005B981C(&unk_101A14AE0);

      v28 = *(v27 + 64);
      v29 = v30[0];
      (*(v3 + 32))(v5, v20, v30[0]);
      sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v3 + 8))(v5, v29);
      sub_10000CAAC(&v20[v28], &qword_101A0A320);
      return;
    }

    sub_100057C90(v20, v8, type metadata accessor for CRLSELibraryViewModel.Board);
    sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLSEBoardIdentifierStorage(0);
    String.hash(into:)();
    v22 = type metadata accessor for CRLSELibraryViewModel.Board;
    v23 = v8;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      Hasher._combine(_:)(*v20);
      return;
    }

    sub_100057C90(v20, v17, type metadata accessor for CRLSELibraryViewModel.Filter);
    sub_10005720C(v17, v15, type metadata accessor for CRLSELibraryViewModel.Filter);
    v24 = sub_1005B981C(&unk_101A14B10);
    v25 = (*(*(v24 - 8) + 48))(v15, 5, v24);
    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = 2;
      }

      else if (v25 == 4)
      {
        v26 = 3;
      }

      else
      {
        v26 = 4;
      }

      goto LABEL_16;
    }

    if (v25)
    {
      v26 = v25 != 1;
LABEL_16:
      Hasher._combine(_:)(v26);
      v22 = type metadata accessor for CRLSELibraryViewModel.Filter;
      v23 = v17;
      goto LABEL_17;
    }

    sub_100057C90(v15, v11, type metadata accessor for CRLSELibraryViewModel.Folder);
    Hasher._combine(_:)(5uLL);
    sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    type metadata accessor for CRLFolderIdentifierStorage(0);
    String.hash(into:)();
    String.hash(into:)();
    sub_100058BFC(v17, type metadata accessor for CRLSELibraryViewModel.Filter);
    v22 = type metadata accessor for CRLSELibraryViewModel.Folder;
    v23 = v11;
  }

LABEL_17:
  sub_100058BFC(v23, v22);
}

uint64_t sub_1007F1390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = sub_1005B981C(&qword_101A017F0);
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  __chkstk_darwin(v3);
  v78 = &v62 - v5;
  v69 = sub_1005B981C(&qword_101A017F8);
  v72 = *(v69 - 8);
  __chkstk_darwin(v69);
  v77 = &v62 - v6;
  v7 = sub_1005B981C(&qword_101A01800);
  v70 = *(v7 - 8);
  v71 = v7;
  __chkstk_darwin(v7);
  v75 = &v62 - v8;
  v68 = sub_1005B981C(&qword_101A01808);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v76 = &v62 - v9;
  v81 = sub_1005B981C(&qword_101A01810);
  v79 = *(v81 - 8);
  __chkstk_darwin(v81);
  v11 = &v62 - v10;
  v80 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  __chkstk_darwin(v80);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  __chkstk_darwin(v17);
  v19 = &v62 - v18;
  __chkstk_darwin(v20);
  v22 = &v62 - v21;
  __chkstk_darwin(v23);
  v25 = &v62 - v24;
  v26 = a1[3];
  v84 = a1;
  sub_100020E58(a1, v26);
  sub_1000571B8();
  v27 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v63 = v22;
    v64 = v19;
    v65 = v16;
    v29 = v76;
    v28 = v77;
    v66 = v13;
    v30 = v78;
    v83 = v25;
    v32 = v80;
    v31 = v81;
    v33 = v82;
    v34 = KeyedDecodingContainer.allKeys.getter();
    v35 = (2 * *(v34 + 16)) | 1;
    v85 = v34;
    v86 = v34 + 32;
    v87 = 0;
    v88 = v35;
    v36 = sub_10074CD08();
    if (v36 == 4 || v87 != v88 >> 1)
    {
      v41 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v31;
      v44 = v43;
      sub_1005B981C(&qword_101A0AEE0);
      *v44 = v32;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v41 - 8) + 104))(v44, enum case for DecodingError.typeMismatch(_:), v41);
      swift_willThrow();
      (*(v79 + 8))(v11, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36 > 1u)
      {
        if (v36 == 2)
        {
          v89 = 2;
          sub_1007F5A50();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for CRLSELibraryViewModel.Board(0);
          sub_10005629C(&qword_101A01830, type metadata accessor for CRLSELibraryViewModel.Board);
          v46 = v65;
          v47 = v69;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v72 + 8))(v28, v47);
          (*(v79 + 8))(v11, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v39 = v83;
          sub_100057C90(v46, v83, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        else
        {
          v89 = 3;
          sub_1007F59FC();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v52 = v30;
          type metadata accessor for UUID();
          v89 = 0;
          sub_10005629C(&qword_1019F43A8, &type metadata accessor for UUID);
          v53 = v73;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v89 = 1;
          v54 = KeyedDecodingContainer.decode(_:forKey:)();
          v55 = v74;
          v56 = v54;
          v58 = v57;
          v77 = v11;
          v59 = sub_1005B981C(&unk_101A14AE0);
          v60 = &v66[*(v59 + 48)];
          v76 = *(v59 + 64);
          *v60 = v56;
          v60[1] = v58;
          type metadata accessor for Date();
          v89 = 2;
          sub_10005629C(&qword_101A19C70, &type metadata accessor for Date);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v55 + 8))(v52, v53);
          (*(v79 + 8))(v77, v81);
          swift_unknownObjectRelease();
          v61 = v66;
          swift_storeEnumTagMultiPayload();
          v39 = v83;
          sub_100057C90(v61, v83, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        v40 = v82;
      }

      else
      {
        if (v36)
        {
          v89 = 1;
          sub_100057CF8();
          v48 = v75;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for CRLSELibraryViewModel.Filter(0);
          sub_10005629C(&qword_101A01840, type metadata accessor for CRLSELibraryViewModel.Filter);
          v49 = v64;
          v50 = v71;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v51 = v79;
          (*(v70 + 8))(v48, v50);
          (*(v51 + 8))(v11, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v39 = v83;
          sub_100057C90(v49, v83, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        else
        {
          v89 = 0;
          sub_100057274();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_1007F5AA4();
          v37 = v68;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v67 + 8))(v29, v37);
          (*(v79 + 8))(v11, v31);
          swift_unknownObjectRelease();
          v38 = v63;
          *v63 = v89;
          swift_storeEnumTagMultiPayload();
          v39 = v83;
          sub_100057C90(v38, v83, type metadata accessor for CRLSELibraryViewModel.Item);
        }

        v40 = v33;
      }

      sub_100057C90(v39, v40, type metadata accessor for CRLSELibraryViewModel.Item);
    }
  }

  return sub_100005070(v84);
}

uint64_t sub_1007F205C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6472616F62 && a2 == 0xE500000000000000)
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

uint64_t sub_1007F20E0(uint64_t a1)
{
  v2 = sub_1007F5A50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F211C(uint64_t a1)
{
  v2 = sub_1007F5A50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F5D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F2180(uint64_t a1)
{
  v2 = sub_1000571B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F21BC(uint64_t a1)
{
  v2 = sub_1000571B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F21F8(uint64_t a1)
{
  v2 = sub_100057CF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2234(uint64_t a1)
{
  v2 = sub_100057CF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2270(uint64_t a1)
{
  v2 = sub_100057274();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F22AC(uint64_t a1)
{
  v2 = sub_100057274();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F22E8()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x746964457473616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1007F2344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F5EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F236C(uint64_t a1)
{
  v2 = sub_1007F59FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F23A8(uint64_t a1)
{
  v2 = sub_1007F59FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x69466D6574737973 && a2 == 0xED0000737265746CLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646C6F4672657375 && a2 == 0xEB00000000737265)
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

uint64_t sub_1007F251C(uint64_t a1)
{
  v2 = sub_100057ABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2558(uint64_t a1)
{
  v2 = sub_100057ABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2594(uint64_t a1)
{
  v2 = sub_100057B10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F25D0(uint64_t a1)
{
  v2 = sub_100057B10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F260C(uint64_t a1)
{
  v2 = sub_1007F64A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2648(uint64_t a1)
{
  v2 = sub_1007F64A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2684@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F5FE4(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1007F26B8()
{
  result = qword_101A01778;
  if (!qword_101A01778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01778);
  }

  return result;
}

uint64_t sub_1007F270C(uint64_t a1)
{
  v2 = sub_100058AC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2748(uint64_t a1)
{
  v2 = sub_100058AC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F6C5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F27AC(uint64_t a1)
{
  v2 = sub_100058A74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F27E8(uint64_t a1)
{
  v2 = sub_100058A74();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2824(uint64_t a1)
{
  v2 = sub_100058D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2860(uint64_t a1)
{
  v2 = sub_100058D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F28B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65646F4D77656976 && a2 == 0xE90000000000006CLL)
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

uint64_t sub_1007F2948(uint64_t a1)
{
  v2 = sub_1007F5C64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2984(uint64_t a1)
{
  v2 = sub_1007F5C64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F29C0(uint64_t a1)
{
  v2 = sub_1007F5CB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F29FC(uint64_t a1)
{
  v2 = sub_1007F5CB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2A38(uint64_t a1)
{
  v2 = sub_100058C5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2A74(uint64_t a1)
{
  v2 = sub_100058C5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F2AB0(uint64_t a1)
{
  v2 = sub_100058CB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F2AEC(uint64_t a1)
{
  v2 = sub_100058CB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007F2B28()
{
  v1 = v0;
  v2 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005720C(v1, v7, type metadata accessor for CRLSELibraryViewModel.Filter);
  v8 = sub_1005B981C(&unk_101A14B10);
  v9 = (*(*(v8 - 8) + 48))(v7, 5, v8);
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = 2;
    }

    else if (v9 == 4)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }
  }

  else
  {
    if (!v9)
    {
      sub_100057C90(v7, v4, type metadata accessor for CRLSELibraryViewModel.Folder);
      Hasher._combine(_:)(5uLL);
      type metadata accessor for UUID();
      sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for CRLFolderIdentifierStorage(0);
      String.hash(into:)();
      String.hash(into:)();
      sub_100058BFC(v4, type metadata accessor for CRLSELibraryViewModel.Folder);
      return;
    }

    v10 = v9 != 1;
  }

  Hasher._combine(_:)(v10);
}

uint64_t sub_1007F2D78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = sub_1005B981C(&qword_101A01900);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v77 = &v58 - v4;
  v5 = sub_1005B981C(&qword_101A01908);
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v76 = &v58 - v6;
  v7 = sub_1005B981C(&qword_101A01910);
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v79 = &v58 - v8;
  v9 = sub_1005B981C(&qword_101A01918);
  v66 = *(v9 - 8);
  v67 = v9;
  __chkstk_darwin(v9);
  v75 = &v58 - v10;
  v65 = sub_1005B981C(&qword_101A01920);
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v74 = &v58 - v11;
  v62 = sub_1005B981C(&qword_101A01928);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v58 - v12;
  v14 = sub_1005B981C(&qword_101A01930);
  v78 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  v23 = a1[3];
  v82 = a1;
  sub_100020E58(a1, v23);
  sub_100058A74();
  v24 = v81;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v60 = v13;
    v59 = v19;
    v26 = v78;
    v25 = v79;
    v81 = 0;
    v61 = v22;
    v27 = v80;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v83 = v28;
    v84 = v28 + 32;
    v85 = 0;
    v86 = v29;
    v30 = sub_10074DC28();
    if (v30 == 6 || v85 != v86 >> 1)
    {
      v39 = type metadata accessor for DecodingError();
      swift_allocError();
      v41 = v40;
      sub_1005B981C(&qword_101A0AEE0);
      *v41 = v17;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v39 - 8) + 104))(v41, enum case for DecodingError.typeMismatch(_:), v39);
      swift_willThrow();
      (*(v26 + 8))(v16, v14);
    }

    else
    {
      if (v30 <= 2u)
      {
        v31 = v14;
        v32 = v27;
        v33 = v26;
        v34 = v16;
        if (v30)
        {
          v35 = v81;
          if (v30 == 1)
          {
            v87 = 1;
            sub_100058C5C();
            v36 = v74;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v35)
            {
              (*(v64 + 8))(v36, v65);
              (*(v33 + 8))(v34, v31);
              swift_unknownObjectRelease();
              v37 = sub_1005B981C(&unk_101A14B10);
              v38 = v61;
              (*(*(v37 - 8) + 56))(v61, 2, 5, v37);
LABEL_27:
              sub_100057C90(v38, v32, type metadata accessor for CRLSELibraryViewModel.Filter);
              return sub_100005070(v82);
            }
          }

          else
          {
            v87 = 2;
            sub_100058D04();
            v51 = v75;
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            if (!v35)
            {
              (*(v66 + 8))(v51, v67);
              (*(v33 + 8))(v34, v31);
              swift_unknownObjectRelease();
              v54 = sub_1005B981C(&unk_101A14B10);
              v38 = v61;
              (*(*(v54 - 8) + 56))(v61, 3, 5, v54);
              goto LABEL_27;
            }
          }
        }

        else
        {
          v87 = 0;
          sub_100058AC8();
          v46 = v60;
          v47 = v81;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v47)
          {
            (*(v63 + 8))(v46, v62);
            (*(v26 + 8))(v34, v31);
            swift_unknownObjectRelease();
            v48 = sub_1005B981C(&unk_101A14B10);
            v38 = v61;
            (*(*(v48 - 8) + 56))(v61, 1, 5, v48);
            goto LABEL_27;
          }
        }

        (*(v33 + 8))(v34, v31);
        goto LABEL_10;
      }

      if (v30 == 3)
      {
        v87 = 3;
        sub_100058CB0();
        v49 = v81;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v49)
        {
          (*(v68 + 8))(v25, v69);
          (*(v26 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v50 = sub_1005B981C(&unk_101A14B10);
          v38 = v61;
          (*(*(v50 - 8) + 56))(v61, 4, 5, v50);
          goto LABEL_20;
        }
      }

      else
      {
        v43 = v81;
        if (v30 == 4)
        {
          v87 = 4;
          sub_1007F5CB8();
          v44 = v76;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v43)
          {
            (*(v70 + 8))(v44, v71);
            (*(v26 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v45 = sub_1005B981C(&unk_101A14B10);
            v38 = v61;
            (*(*(v45 - 8) + 56))(v61, 5, 5, v45);
LABEL_20:
            v32 = v27;
            goto LABEL_27;
          }
        }

        else
        {
          v87 = 5;
          sub_1007F5C64();
          v52 = v77;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v43)
          {
            type metadata accessor for CRLSELibraryViewModel.Folder(0);
            sub_10005629C(&qword_101A01948, type metadata accessor for CRLSELibraryViewModel.Folder);
            v53 = v73;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v72 + 8))(v52, v53);
            (*(v26 + 8))(v16, v14);
            swift_unknownObjectRelease();
            v55 = sub_1005B981C(&unk_101A14B10);
            v56 = v59;
            (*(*(v55 - 8) + 56))(v59, 0, 5, v55);
            v57 = v56;
            v38 = v61;
            sub_100057C90(v57, v61, type metadata accessor for CRLSELibraryViewModel.Filter);
            goto LABEL_20;
          }
        }
      }

      (*(v26 + 8))(v16, v14);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return sub_100005070(v82);
}

Swift::Int sub_1007F3984(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1007F39E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_1007F3A30(void *a1)
{
  v3 = sub_1005B981C(&qword_101A019D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1007F5D0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for CRLFolderIdentifier(0);
  sub_10005629C(&qword_101A019D8, type metadata accessor for CRLFolderIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLSELibraryViewModel.Folder(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007F3BEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for CRLFolderIdentifier(0);
  __chkstk_darwin(v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1005B981C(&qword_101A019B8);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100020E58(a1, a1[3]);
  sub_1007F5D0C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005070(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  sub_10005629C(&qword_101A019C8, type metadata accessor for CRLFolderIdentifier);
  v14 = v25;
  v13 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100057C90(v14, v11, type metadata accessor for CRLFolderIdentifier);
  v27 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = (v11 + *(v22 + 20));
  *v19 = v15;
  v19[1] = v17;
  sub_10005720C(v11, v18, type metadata accessor for CRLSELibraryViewModel.Folder);
  sub_100005070(a1);
  return sub_100058BFC(v11, type metadata accessor for CRLSELibraryViewModel.Folder);
}

uint64_t sub_1007F3F20(void *a1)
{
  v3 = sub_1005B981C(&qword_101A018B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100020E58(a1, a1[3]);
  sub_1007F5B68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for CRLSEBoardIdentifier(0);
  sub_10005629C(&qword_101A018B8, type metadata accessor for CRLSEBoardIdentifier);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CRLSELibraryViewModel.Board(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[11] = 4;
    type metadata accessor for Date();
    sub_10005629C(&qword_101A19AD0, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1007F41E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - v4;
  v6 = type metadata accessor for CRLSEBoardIdentifier(0);
  __chkstk_darwin(v6);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1005B981C(&qword_101A01898);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v9 = &v30 - v8;
  v10 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  __chkstk_darwin(v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v35 = a1;
  sub_100020E58(a1, v13);
  sub_1007F5B68();
  v14 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return sub_100005070(v35);
  }

  v34 = v5;
  v15 = v31;
  v16 = v12;
  v41 = 0;
  sub_10005629C(&qword_101A018A8, type metadata accessor for CRLSEBoardIdentifier);
  v17 = v32;
  v18 = v33;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100057C90(v17, v16, type metadata accessor for CRLSEBoardIdentifier);
  v40 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = (v16 + v10[5]);
  *v21 = v19;
  v21[1] = v22;
  v39 = 2;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = (v16 + v10[6]);
  *v24 = v23;
  v24[1] = v25;
  v38 = 3;
  v26 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = (v16 + v10[7]);
  *v27 = v26;
  v27[1] = v28;
  type metadata accessor for Date();
  v37 = 4;
  sub_10005629C(&qword_101A19C70, &type metadata accessor for Date);
  v29 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1007F5AF8(v29, v16 + v10[8]);
  v36 = 5;
  LOBYTE(v17) = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v15 + 8))(v9, v18);
  *(v16 + v10[9]) = v17 & 1;
  sub_10005720C(v16, v30, type metadata accessor for CRLSELibraryViewModel.Board);
  sub_100005070(v35);
  return sub_100058BFC(v16, type metadata accessor for CRLSELibraryViewModel.Board);
}

uint64_t sub_1007F4794()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1007F47D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000101569B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1007F48B4(uint64_t a1)
{
  v2 = sub_1007F5D0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F48F0(uint64_t a1)
{
  v2 = sub_1007F5D0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1007F495C()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007F4A20()
{
  type metadata accessor for UUID();
  sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1007F4AD8()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_10005629C(&qword_1019FB870, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for CRLFolderIdentifierStorage(0);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1007F4B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 20);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  if (v12 == *v14 && v13 == v14[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_1007F4D2C()
{
  v1 = *v0;
  v2 = 0x6564496472616F62;
  v3 = 0xD000000000000010;
  v4 = 0x746964457473616CLL;
  if (v1 != 4)
  {
    v4 = 0x6465726168537369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C69466567616D69;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_1007F4E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F6E68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F4E2C(uint64_t a1)
{
  v2 = sub_1007F5B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F4E68(uint64_t a1)
{
  v2 = sub_1007F5B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F4F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSELibraryViewModel.Folder(0);
  __chkstk_darwin(v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_101A017E8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = *(v11 + 56);
  sub_10005720C(a1, &v29 - v12, type metadata accessor for CRLSELibraryViewModel.Filter);
  sub_10005720C(a2, &v13[v14], type metadata accessor for CRLSELibraryViewModel.Filter);
  v15 = sub_1005B981C(&unk_101A14B10);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v13, 5, v15);
  if (v17 > 2)
  {
    if (v17 == 3)
    {
      if (v16(&v13[v14], 5, v15) != 3)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v17 == 4)
    {
      if (v16(&v13[v14], 5, v15) != 4)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    if (v16(&v13[v14], 5, v15) == 5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v17)
    {
      if (v17 == 1)
      {
        if (v16(&v13[v14], 5, v15) != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v16(&v13[v14], 5, v15) != 2)
      {
        goto LABEL_18;
      }

LABEL_17:
      sub_100058BFC(v13, type metadata accessor for CRLSELibraryViewModel.Filter);
      return 1;
    }

    sub_10005720C(v13, v9, type metadata accessor for CRLSELibraryViewModel.Filter);
    if (!v16(&v13[v14], 5, v15))
    {
      sub_100057C90(&v13[v14], v6, type metadata accessor for CRLSELibraryViewModel.Folder);
      if ((static UUID.== infix(_:_:)() & 1) == 0 || ((v19 = *(type metadata accessor for CRLFolderIdentifierStorage(0) + 20), v20 = *&v9[v19], v21 = *&v9[v19 + 8], v22 = &v6[v19], v20 == *v22) ? (v23 = v21 == *(v22 + 1)) : (v23 = 0), !v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v24 = *(v4 + 20), v25 = *&v9[v24], v26 = *&v9[v24 + 8], v27 = &v6[v24], v25 == *v27) ? (v28 = v26 == *(v27 + 1)) : (v28 = 0), !v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)))
      {
        sub_100058BFC(v6, type metadata accessor for CRLSELibraryViewModel.Folder);
        sub_100058BFC(v9, type metadata accessor for CRLSELibraryViewModel.Folder);
        sub_100058BFC(v13, type metadata accessor for CRLSELibraryViewModel.Filter);
        return 0;
      }

      sub_100058BFC(v6, type metadata accessor for CRLSELibraryViewModel.Folder);
      sub_100058BFC(v9, type metadata accessor for CRLSELibraryViewModel.Folder);
      goto LABEL_17;
    }

    sub_100058BFC(v9, type metadata accessor for CRLSELibraryViewModel.Folder);
  }

LABEL_18:
  sub_10000CAAC(v13, &qword_101A017E8);
  return 0;
}

uint64_t sub_1007F5338(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = type metadata accessor for UUID();
  v56 = *(v2 - 8);
  v57 = v2;
  v3 = __chkstk_darwin(v2);
  v55 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = &v52 - v5;
  v6 = type metadata accessor for CRLSELibraryViewModel.Board(0);
  v7 = __chkstk_darwin(v6 - 8);
  v54 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v52 = &v52 - v9;
  v10 = type metadata accessor for CRLSELibraryViewModel.Filter(0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v52 - v14;
  v16 = type metadata accessor for CRLSELibraryViewModel.Item(0);
  v17 = __chkstk_darwin(v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v52 - v24;
  __chkstk_darwin(v23);
  v27 = &v52 - v26;
  v28 = sub_1005B981C(&qword_101A017E0);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v52 - v30;
  v32 = &v52 + *(v29 + 56) - v30;
  sub_10005720C(v58, &v52 - v30, type metadata accessor for CRLSELibraryViewModel.Item);
  sub_10005720C(v59, v32, type metadata accessor for CRLSELibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_10005720C(v31, v27, type metadata accessor for CRLSELibraryViewModel.Item);
      if (!swift_getEnumCaseMultiPayload())
      {
        v34 = *v27 ^ *v32 ^ 1;
LABEL_23:
        sub_100058BFC(v31, type metadata accessor for CRLSELibraryViewModel.Item);
        return v34 & 1;
      }

      goto LABEL_18;
    }

    sub_10005720C(v31, v25, type metadata accessor for CRLSELibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100058BFC(v25, type metadata accessor for CRLSELibraryViewModel.Filter);
      goto LABEL_18;
    }

    sub_100057C90(v25, v15, type metadata accessor for CRLSELibraryViewModel.Filter);
    sub_100057C90(v32, v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    v34 = sub_1007F4F1C(v15, v13);
    sub_100058BFC(v13, type metadata accessor for CRLSELibraryViewModel.Filter);
    v41 = v15;
    v42 = type metadata accessor for CRLSELibraryViewModel.Filter;
LABEL_22:
    sub_100058BFC(v41, v42);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10005720C(v31, v22, type metadata accessor for CRLSELibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100058BFC(v22, type metadata accessor for CRLSELibraryViewModel.Board);
      goto LABEL_18;
    }

    v35 = v52;
    sub_100057C90(v22, v52, type metadata accessor for CRLSELibraryViewModel.Board);
    v36 = v54;
    sub_100057C90(v32, v54, type metadata accessor for CRLSELibraryViewModel.Board);
    if (static UUID.== infix(_:_:)())
    {
      v37 = *(type metadata accessor for CRLSEBoardIdentifierStorage(0) + 20);
      v38 = *(v35 + v37);
      v39 = *(v35 + v37 + 8);
      v40 = (v36 + v37);
      if (v38 == *v40 && v39 == v40[1])
      {
        v34 = 1;
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v34 = 0;
    }

    sub_100058BFC(v36, type metadata accessor for CRLSELibraryViewModel.Board);
    v41 = v35;
    v42 = type metadata accessor for CRLSELibraryViewModel.Board;
    goto LABEL_22;
  }

  sub_10005720C(v31, v19, type metadata accessor for CRLSELibraryViewModel.Item);
  v43 = sub_1005B981C(&unk_101A14AE0);

  v44 = *(v43 + 64);
  if (swift_getEnumCaseMultiPayload() == 3)
  {

    v59 = *(v43 + 64);
    v46 = v56;
    v45 = v57;
    v47 = *(v56 + 32);
    v48 = v53;
    v47(v53, v19, v57);
    v49 = v55;
    v47(v55, v32, v45);
    v34 = static UUID.== infix(_:_:)();
    v50 = *(v46 + 8);
    v50(v49, v45);
    v50(v48, v45);
    sub_10000CAAC(&v32[v59], &qword_101A0A320);
    sub_10000CAAC(&v19[v44], &qword_101A0A320);
    goto LABEL_23;
  }

  sub_10000CAAC(&v19[v44], &qword_101A0A320);
  (*(v56 + 8))(v19, v57);
LABEL_18:
  sub_10000CAAC(v31, &qword_101A017E0);
  v34 = 0;
  return v34 & 1;
}

unint64_t sub_1007F59FC()
{
  result = qword_101A01820;
  if (!qword_101A01820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01820);
  }

  return result;
}

unint64_t sub_1007F5A50()
{
  result = qword_101A01828;
  if (!qword_101A01828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01828);
  }

  return result;
}

unint64_t sub_1007F5AA4()
{
  result = qword_101A01850;
  if (!qword_101A01850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01850);
  }

  return result;
}

uint64_t sub_1007F5AF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A0A320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007F5B68()
{
  result = qword_101A018A0;
  if (!qword_101A018A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A018A0);
  }

  return result;
}

unint64_t sub_1007F5BBC()
{
  result = qword_101A018C8;
  if (!qword_101A018C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A018C8);
  }

  return result;
}

unint64_t sub_1007F5C10()
{
  result = qword_101A018F0;
  if (!qword_101A018F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A018F0);
  }

  return result;
}

unint64_t sub_1007F5C64()
{
  result = qword_101A01940;
  if (!qword_101A01940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01940);
  }

  return result;
}

unint64_t sub_1007F5CB8()
{
  result = qword_101A01950;
  if (!qword_101A01950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01950);
  }

  return result;
}

unint64_t sub_1007F5D0C()
{
  result = qword_101A019C0;
  if (!qword_101A019C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A019C0);
  }

  return result;
}

uint64_t sub_1007F5D60(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972617262696CLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6472616F62 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x42676E69646E6570 && a2 == 0xEC0000006472616FLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1007F5EC0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746964457473616CLL && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1007F5FE4(void *a1)
{
  v2 = sub_1005B981C(&qword_101A019E0);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1005B981C(&qword_101A019E8);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1005B981C(&qword_101A019F0);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_100020E58(a1, a1[3]);
  sub_100057ABC();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_100005070(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_10074DC24();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_1005B981C(&qword_101A0AEE0);
    *v19 = &type metadata for CRLSELibraryViewModel.Library;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100005070(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1007F64A0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_100057B10();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_100005070(v26);
  return v31 & 1;
}

unint64_t sub_1007F64A0()
{
  result = qword_101A01A00;
  if (!qword_101A01A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A00);
  }

  return result;
}

unint64_t sub_1007F6528()
{
  result = qword_101A01A28;
  if (!qword_101A01A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A28);
  }

  return result;
}

unint64_t sub_1007F6580()
{
  result = qword_101A01A30;
  if (!qword_101A01A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A30);
  }

  return result;
}

unint64_t sub_1007F65D8()
{
  result = qword_101A01A38;
  if (!qword_101A01A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A38);
  }

  return result;
}

unint64_t sub_1007F6630()
{
  result = qword_101A01A40;
  if (!qword_101A01A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A40);
  }

  return result;
}

unint64_t sub_1007F6688()
{
  result = qword_101A01A48;
  if (!qword_101A01A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A48);
  }

  return result;
}

unint64_t sub_1007F66E0()
{
  result = qword_101A01A50;
  if (!qword_101A01A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A50);
  }

  return result;
}

unint64_t sub_1007F6738()
{
  result = qword_101A01A58;
  if (!qword_101A01A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A58);
  }

  return result;
}

unint64_t sub_1007F6790()
{
  result = qword_101A01A60;
  if (!qword_101A01A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A60);
  }

  return result;
}

unint64_t sub_1007F67E8()
{
  result = qword_101A01A68;
  if (!qword_101A01A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A68);
  }

  return result;
}

unint64_t sub_1007F6840()
{
  result = qword_101A01A70;
  if (!qword_101A01A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A70);
  }

  return result;
}

unint64_t sub_1007F6898()
{
  result = qword_101A01A78;
  if (!qword_101A01A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A78);
  }

  return result;
}

unint64_t sub_1007F68F0()
{
  result = qword_101A01A80;
  if (!qword_101A01A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A80);
  }

  return result;
}

unint64_t sub_1007F6948()
{
  result = qword_101A01A88;
  if (!qword_101A01A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01A88);
  }

  return result;
}

unint64_t sub_1007F69A0()
{
  result = qword_101A01AC0;
  if (!qword_101A01AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AC0);
  }

  return result;
}

unint64_t sub_1007F69F8()
{
  result = qword_101A01AC8;
  if (!qword_101A01AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01AC8);
  }

  return result;
}

unint64_t sub_1007F6A50()
{
  result = qword_101A01B40;
  if (!qword_101A01B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B40);
  }

  return result;
}

unint64_t sub_1007F6AA8()
{
  result = qword_101A01B48;
  if (!qword_101A01B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B48);
  }

  return result;
}

unint64_t sub_1007F6B00()
{
  result = qword_101A01B50;
  if (!qword_101A01B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B50);
  }

  return result;
}

unint64_t sub_1007F6B58()
{
  result = qword_101A01B58;
  if (!qword_101A01B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B58);
  }

  return result;
}

unint64_t sub_1007F6BB0()
{
  result = qword_101A01B60;
  if (!qword_101A01B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B60);
  }

  return result;
}

unint64_t sub_1007F6C08()
{
  result = qword_101A01B68;
  if (!qword_101A01B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01B68);
  }

  return result;
}

uint64_t sub_1007F6C5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6472616F426C6C61 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E65636572 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646572616873 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x796C746E65636572 && a2 == 0xEF646574656C6544 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646C6F66 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1007F6E68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6564496472616F62 && a2 == 0xEF7265696669746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69466567616D69 && a2 == 0xED0000656D616E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101569B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746964457473616CLL && a2 == 0xEA00000000006465 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465726168537369 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

id sub_1007F72B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPRepHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1007F7320(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  [a1 transform];
  v27 = v25;
  CATransform3DScale(&v26, &v27, 1.34, 1.34, 1.0);
  [a1 transform];
  sub_1005B981C(&unk_101A23C50);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10146C4D0;
  type metadata accessor for CATransform3D(0);
  v6 = v5;
  *(v4 + 56) = v5;
  v7 = swift_allocObject();
  *(v4 + 32) = v7;
  v8 = *&v25.m33;
  v7[5] = *&v25.m31;
  v7[6] = v8;
  v9 = *&v25.m43;
  v7[7] = *&v25.m41;
  v7[8] = v9;
  v10 = *&v25.m13;
  v7[1] = *&v25.m11;
  v7[2] = v10;
  v11 = *&v25.m23;
  v7[3] = *&v25.m21;
  v7[4] = v11;
  *(v4 + 88) = v6;
  v12 = swift_allocObject();
  *(v4 + 64) = v12;
  v13 = *&v26.m33;
  v12[5] = *&v26.m31;
  v12[6] = v13;
  v14 = *&v26.m43;
  v12[7] = *&v26.m41;
  v12[8] = v14;
  v15 = *&v26.m13;
  v12[1] = *&v26.m11;
  v12[2] = v15;
  v16 = *&v26.m23;
  v12[3] = *&v26.m21;
  v12[4] = v16;
  *(v4 + 120) = v6;
  v17 = swift_allocObject();
  *(v4 + 96) = v17;
  v18 = *&v27.m33;
  v17[5] = *&v27.m31;
  v17[6] = v18;
  v19 = *&v27.m43;
  v17[7] = *&v27.m41;
  v17[8] = v19;
  v20 = *&v27.m13;
  v17[1] = *&v27.m11;
  v17[2] = v20;
  v21 = *&v27.m23;
  v17[3] = *&v27.m21;
  v17[4] = v21;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setValues:isa];

  v23 = v3;
  [v23 setRemovedOnCompletion:1];
  [v23 setDuration:0.25];

  v24 = String._bridgeToObjectiveC()();
  [a1 addAnimation:v23 forKey:v24];
}

void sub_1007F75A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong viewIfLoaded];
    if (v2 && (v3 = v2, v4 = [v2 window], v3, v4))
    {
      v5 = [v4 windowScene];
      if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
      {
        type metadata accessor for CRLiOSSceneDelegate();
        v8 = swift_dynamicCastClass();
        if (v8)
        {
          [v8 qa_importFileFor:v1];
        }

        else
        {
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1007F76C8()
{
  v0 = objc_allocWithZone(type metadata accessor for CRLFileReadWriteUserOptionsViewController());
  sub_100B761F4(v9);
  v1 = UIHostingController.init(rootView:)();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = v1;

  v4 = dispatch thunk of UIHostingController.rootView.modify();
  v6 = *(v5 + 32);
  *(v5 + 32) = sub_1007FA548;
  *(v5 + 40) = v2;
  sub_1000C1014(v6);
  v4(v9, 0);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    [Strong presentViewController:v3 animated:1 completion:0];
  }
}

void sub_1007F77EC()
{
  v0 = sub_1005B981C(&qword_101A01C10);
  __chkstk_darwin(v0 - 8);
  v2 = &v15[-v1 - 8];
  v3 = swift_projectBox();
  swift_beginAccess();
  sub_10000BE14(v3, v2, &qword_101A01C10);
  v4 = objc_allocWithZone(type metadata accessor for CRLHandwritingDebugViewController(0));

  v6 = sub_10081CF2C(v5, v2);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v6;

  v9 = dispatch thunk of UIHostingController.rootView.modify();
  v11 = *(v10 + 16);
  *(v10 + 16) = sub_1007FA674;
  *(v10 + 24) = v7;
  sub_1000C1014(v11);
  v9(v15, 0);

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong presentViewController:v8 animated:1 completion:0];
  }
}

void sub_1007F79A0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1007F7A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v6 - 8);
  v8 = v18 - v7;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v12 = Strong;
    if (Strong)
    {
      Strong = swift_getObjectType();
    }

    else
    {
      v19[1] = 0;
      v19[2] = 0;
    }

    v19[0] = v12;
    v19[3] = Strong;
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    sub_10000BE14(v19, v18, &unk_1019F4D00);
    type metadata accessor for MainActor();
    v14 = v10;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = &protocol witness table for MainActor;
    *(v16 + 32) = v14;
    v17 = v18[1];
    *(v16 + 40) = v18[0];
    *(v16 + 56) = v17;
    sub_10064191C(0, 0, v8, a5, v16);

    return sub_10000CAAC(v19, &unk_1019F4D00);
  }

  return result;
}

uint64_t sub_1007F7BDC(uint64_t a1, uint64_t a2)
{
  v88 = type metadata accessor for CharacterSet();
  v3 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for URLComponents();
  v5 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v7 - 8);
  v9 = v79 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v99 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1005B981C(&unk_101A23BD0);
  v13 = *(v83 - 8);
  v14 = __chkstk_darwin(v83);
  v82 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v79 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v92 = v17;
    v19 = *(a2 + 24);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(ObjectType, v19);
    swift_unknownObjectRelease();
    if (*(v21 + 16))
    {
      v105 = *(v21 + 16);
      v103 = v10;
      v98 = v9;
      v22 = type metadata accessor for CRLBoardIdentifierStorage(0);
      v23 = v92;
      v97 = &v92[*(v22 + 20)];
      v24 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v79[1] = v21;
      v25 = v21 + v24;
      v95 = *(v13 + 72);
      v96 = (v5 + 8);
      v94 = (v11 + 48);
      v85 = (v3 + 8);
      v86 = (v11 + 32);
      v84 = (v11 + 8);
      v93 = xmmword_10146C6B0;
      v80 = xmmword_10146CA70;
      v81 = xmmword_10146C4D0;
      do
      {
        v104 = v25;
        sub_10000BE14(v25, v23, &unk_101A23BD0);
        v26 = v100;
        URLComponents.init()();
        URLComponents.scheme.setter();
        URLComponents.host.setter();
        sub_1005B981C(&qword_101A01C18);
        type metadata accessor for URLQueryItem();
        *(swift_allocObject() + 16) = v93;
        v106 = UUID.uuidString.getter();
        v107 = v27;

        v28._countAndFlagsBits = 58;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);

        v29 = v23;
        v30 = *v97;
        v31 = v97[1];

        v32._countAndFlagsBits = v30;
        v102 = v31;
        v32._object = v31;
        String.append(_:)(v32);

        URLQueryItem.init(name:value:)();

        URLComponents.queryItems.setter();
        v33 = v98;
        URLComponents.url.getter();
        (*v96)(v26, v101);
        v34 = v103;
        if ((*v94)(v33, 1, v103) == 1)
        {
          sub_10000CAAC(v29, &unk_101A23BD0);
          sub_10000CAAC(v33, &unk_1019F33C0);
          v23 = v29;
        }

        else
        {
          v23 = v29;
          (*v86)(v99, v33, v34);
          v106 = URL.absoluteString.getter();
          v107 = v35;
          v36 = v87;
          static CharacterSet.urlQueryAllowed.getter();
          sub_100017CD8();
          v37 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
          v39 = v38;
          (*v85)(v36, v88);

          if (v39)
          {
            v90 = v37;
            v91 = v30;
            if (qword_1019F2098 != -1)
            {
              swift_once();
            }

            v89 = static OS_os_log.crlDefault;
            sub_1005B981C(&qword_1019F54E0);
            inited = swift_initStackObject();
            *(inited + 16) = v81;
            v41 = v82;
            sub_10000BE14(v29, v82, &unk_101A23BD0);
            v42 = (v41 + *(v83 + 48));
            v43 = *v42;
            v44 = v42[1];
            *(inited + 56) = &type metadata for String;
            v45 = sub_1000053B0();
            *(inited + 64) = v45;
            *(inited + 32) = v43;
            *(inited + 40) = v44;
            v106 = UUID.uuidString.getter();
            v107 = v46;

            v47._countAndFlagsBits = 58;
            v47._object = 0xE100000000000000;
            String.append(_:)(v47);

            v48._countAndFlagsBits = v91;
            v48._object = v102;
            String.append(_:)(v48);

            v49 = v106;
            v50 = v107;
            *(inited + 96) = &type metadata for String;
            *(inited + 104) = v45;
            *(inited + 72) = v49;
            *(inited + 80) = v50;
            *(inited + 136) = &type metadata for String;
            *(inited + 144) = v45;
            *(inited + 112) = v90;
            *(inited + 120) = v39;
            v51 = v41;
            v23 = v92;
            sub_100025CC8(v51, type metadata accessor for CRLBoardIdentifier);
            v52 = static os_log_type_t.default.getter();
            sub_100005404(v89, &_mh_execute_header, v52, "Selected board title: %@, identifier: %@, deep link URL: %@", 59, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            (*v84)(v99, v103);
            v53 = v23;
          }

          else
          {
            v102 = objc_opt_self();
            v54 = [v102 _atomicIncrementAssertCount];
            v106 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v106);
            StaticString.description.getter();
            v55 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v56 = String._bridgeToObjectiveC()();

            v57 = [v56 lastPathComponent];

            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v61 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v62 = swift_initStackObject();
            *(v62 + 16) = v80;
            *(v62 + 56) = &type metadata for Int32;
            *(v62 + 64) = &protocol witness table for Int32;
            *(v62 + 32) = v54;
            v63 = sub_100006370(0, &qword_1019F4D30);
            *(v62 + 96) = v63;
            v64 = sub_1005CF04C();
            *(v62 + 104) = v64;
            *(v62 + 72) = v55;
            *(v62 + 136) = &type metadata for String;
            v65 = sub_1000053B0();
            *(v62 + 112) = v58;
            *(v62 + 120) = v60;
            *(v62 + 176) = &type metadata for UInt;
            *(v62 + 144) = v65;
            *(v62 + 152) = 151;
            v66 = v55;
            v67 = v106;
            *(v62 + 216) = v63;
            *(v62 + 224) = v64;
            *(v62 + 184) = &protocol witness table for UInt;
            *(v62 + 192) = v67;
            v68 = v66;
            v69 = v67;
            v70 = static os_log_type_t.error.getter();
            sub_100005404(v61, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v62);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v71 = static os_log_type_t.error.getter();
            sub_100005404(v61, &_mh_execute_header, v71, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v72 = swift_allocObject();
            v72[2] = 8;
            v72[3] = 0;
            v72[4] = 0;
            v72[5] = 0;
            v73 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v74 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v75 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v76 = String._bridgeToObjectiveC()();

            [v102 handleFailureInFunction:v74 file:v75 lineNumber:151 isFatal:0 format:v76 args:v73];

            (*v84)(v99, v103);
            v53 = v23;
          }

          sub_10000CAAC(v53, &unk_101A23BD0);
        }

        v25 = v104 + v95;
        --v105;
      }

      while (v105);
    }

    else
    {

      if (qword_1019F2098 != -1)
      {
        swift_once();
      }

      v77 = static OS_os_log.crlDefault;
      v78 = static os_log_type_t.default.getter();
      return sub_100005404(v77, &_mh_execute_header, v78, "Nothing selected.", 17, 2, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_1007F8814()
{
  v28 = type metadata accessor for CRLBoardCRDTData(0) - 8;
  __chkstk_darwin(v28);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UUID();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005B981C(&qword_101A01C20);
  v6 = (sub_1005B981C(&unk_101A23BD0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  v27 = v8;
  *(v8 + 16) = xmmword_10146C6B0;
  v9 = v8 + v7;
  v10 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator);
  v26 = (v8 + v7 + v6[14]);
  v11 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
  v12 = *(v10 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
  v13 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v14 = *&v12[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v15 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v14 + v15, v2);
  v16 = v12;
  sub_1005B981C(&unk_1019F5250);
  CRRegister.wrappedValue.getter();
  sub_100025CC8(v2, type metadata accessor for CRLBoardCRDTData);
  v17 = (*&v12[v13] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v18 = *v17;
  v19 = v17[1];

  sub_10084BD4C(v5, v18, v19, v9);

  v20 = *(*(v10 + v11) + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v21 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v20 + v21, v2);
  sub_1005B981C(&qword_101A1A020);
  CRRegister.wrappedValue.getter();
  sub_100025CC8(v2, type metadata accessor for CRLBoardCRDTData);
  v22 = v30;
  v24 = v26;
  result = v27;
  *v26 = v29;
  v24[1] = v22;
  return result;
}

void *sub_1007F8AF0()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (v4)
      {
        v5 = [v4 delegate];

        if (v5)
        {
          type metadata accessor for CRLiOSSceneDelegate();
          if (swift_dynamicCastClass())
          {
            v6 = sub_100C0B3C0();
            if (v6)
            {
              v7 = v6;
              v8 = sub_100F36AC8();
              swift_unknownObjectRelease();

              return v8;
            }
          }

          swift_unknownObjectRelease();
        }
      }
    }

    return _swiftEmptyArrayStorage;
  }

  else
  {
    __break(1u);
  }

  return result;
}

UIMenu sub_1007F8BF8(void *a1, uint64_t a2)
{
  v129 = a2;
  v3 = sub_1005B981C(&qword_101A01C10);
  __chkstk_darwin(v3);
  v142 = v124 - v4;
  v5 = _swiftEmptyArrayStorage;
  v149 = _swiftEmptyArrayStorage;
  v147 = &type metadata for CRLFeatureFlags;
  v131 = sub_100004D60();
  v148 = v131;
  LOBYTE(v146[0]) = 11;
  v6 = isFeatureEnabled(_:)();
  sub_100005070(v146);
  v7 = &selRef_shouldQueueBeginScribbleMode;
  v132 = a1;
  if (v6)
  {
    type metadata accessor for CRLiOSBoardViewController();
    if (swift_dynamicCastClass())
    {
      sub_100006370(0, &qword_1019F6190);
      v8 = a1;
      v9 = String._bridgeToObjectiveC()();
      v10 = [objc_opt_self() systemImageNamed:v9];

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    sub_100006370(0, &qword_1019F6190);
    v15 = String._bridgeToObjectiveC()();
    v16 = objc_opt_self();
    v17 = [v16 systemImageNamed:v15];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v16 systemImageNamed:v19];

    swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v149;
  }

  v22 = type metadata accessor for CRLiOSBoardViewController();
  v23 = swift_dynamicCastClass();
  if (v23)
  {
    v24 = v23;
    v127 = v22;
    v25 = *(v23 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_interactiveCanvasController);
    v138 = v132;
    v139 = v25;
    isa = [v139 infosForCurrentSelectionPath];
    v27 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
    v145 = _swiftEmptyArrayStorage;
    v29 = 1 << v27[32];
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 7);
    v32 = (v29 + 63) >> 6;
    v130 = _swiftEmptyArrayStorage;
    while (1)
    {
      v33 = v28;
      if (!v31)
      {
        break;
      }

LABEL_19:
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      sub_100064110(*(v27 + 6) + 40 * (v34 | (v28 << 6)), v146);
      isa = AnyHashable._bridgeToObjectiveC()().isa;
      sub_100064234(v146);
      type metadata accessor for CRLFreehandDrawingItem();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v141 = v35;
        v140 = isa;
        isa = &v145;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v145 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v137 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v130 = v145;
      }

      else
      {
      }
    }

    while (1)
    {
      v28 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (v28 >= v32)
      {
        break;
      }

      v31 = *&v27[8 * v28 + 56];
      ++v33;
      if (v31)
      {
        goto LABEL_19;
      }
    }

    v146[0] = _swiftEmptyArrayStorage;
    v32 = swift_allocBox();
    isa = v36;
    v27 = type metadata accessor for PKDrawing();
    v31 = *(*(v27 - 1) + 56);
    (v31)(isa, 1, 1, v27);
    if (!(v130 >> 62))
    {
      v37 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_26;
    }

LABEL_58:
    v37 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
    v126 = v32;
    if (v37 < 1)
    {
      v40 = [v139 pkDrawingProvider];
      if (v40)
      {
        v41 = v40;
        v42 = [v40 unifiedDrawing];
        v43 = v142;
        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();

        (v31)(v43, 0, 1, v27);
        sub_1007FA2DC(v43, isa);
      }

      else
      {
        v142 = objc_opt_self();
        v44 = [v142 _atomicIncrementAssertCount];
        v144 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v144);
        StaticString.description.getter();
        v141 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v45 = String._bridgeToObjectiveC()();

        v46 = [v45 lastPathComponent];

        v140 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v48 = v47;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v49 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v44;
        v51 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v51;
        v52 = sub_1005CF04C();
        *(inited + 104) = v52;
        v53 = v141;
        *(inited + 72) = v141;
        *(inited + 136) = &type metadata for String;
        v54 = sub_1000053B0();
        *(inited + 112) = v140;
        *(inited + 120) = v48;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v54;
        *(inited + 152) = 100;
        v55 = v144;
        *(inited + 216) = v51;
        *(inited + 224) = v52;
        *(inited + 192) = v55;
        v56 = v53;
        v57 = v55;
        v58 = static os_log_type_t.error.getter();
        sub_100005404(v49, &_mh_execute_header, v58, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v59 = static os_log_type_t.error.getter();
        sub_100005404(v49, &_mh_execute_header, v59, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v60 = swift_allocObject();
        v60[2] = 8;
        v60[3] = 0;
        v60[4] = 0;
        v60[5] = 0;
        v61 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v62 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v63 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v64 = String._bridgeToObjectiveC()();

        [v142 handleFailureInFunction:v62 file:v63 lineNumber:100 isFatal:0 format:v64 args:v61];
      }

      v65 = *(*(*&v24[OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator] + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer);
      v66 = objc_opt_self();
      v67 = v65;
      v68 = [v66 allDrawingItemsDescendedFromContainer:v67];
      type metadata accessor for CRLFreehandDrawingItem();
      v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      isa = v146;
      sub_100799F28(v69);

      v125 = "Export PKDrawings";
      v39 = 0xD000000000000012;
    }

    else
    {

      isa = v146;
      sub_100799F28(v38);
      v125 = "LiOSQAMenu.swift";
      v39 = 0xD000000000000017;
    }

    v124[1] = v39;
    v7 = &selRef_shouldQueueBeginScribbleMode;
    v32 = v146[0];
    v144 = _swiftEmptyArrayStorage;
    v70 = v138;
    if (v146[0] >> 62)
    {
      v137 = v146[0] & 0xFFFFFFFFFFFFFF8;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      if (v24)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v137 = v146[0] & 0xFFFFFFFFFFFFFF8;
      v24 = *((v146[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_36:
        v71 = 0;
        v136 = v32 & 0xC000000000000001;
        v133 = xmmword_10146CA70;
        v128 = _swiftEmptyArrayStorage;
        v134 = v24;
        v135 = v32;
        while (1)
        {
          v72 = v71;
          while (1)
          {
            if (v136)
            {
              v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v31 = "invalid nil found when unwrapping value";
              v27 = "crl_qaMenu(for:sender:)";
              v74 = (v72 + 1);
              if (__OFADD__(v72, 1))
              {
                goto LABEL_56;
              }
            }

            else
            {
              v31 = "invalid nil found when unwrapping value";
              v27 = "crl_qaMenu(for:sender:)";
              if (v72 >= *(v137 + 16))
              {
                goto LABEL_57;
              }

              v73 = *(v32 + 8 * v72 + 32);
              v74 = (v72 + 1);
              if (__OFADD__(v72, 1))
              {
                goto LABEL_56;
              }
            }

            v141 = v73;
            v142 = v74;
            v75 = [v139 layoutForInfo:v73];
            if (!v75)
            {
              goto LABEL_44;
            }

            v76 = v75;
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              break;
            }

LABEL_44:
            v140 = objc_opt_self();
            v77 = [v140 _atomicIncrementAssertCount];
            v143 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v143);
            StaticString.description.getter();
            v78 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v79 = String._bridgeToObjectiveC()();

            v80 = [v79 lastPathComponent];

            v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v83 = v82;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v84 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0);
            v85 = swift_initStackObject();
            *(v85 + 16) = v133;
            *(v85 + 56) = &type metadata for Int32;
            *(v85 + 64) = &protocol witness table for Int32;
            *(v85 + 32) = v77;
            v86 = sub_100006370(0, &qword_1019F4D30);
            *(v85 + 96) = v86;
            v87 = sub_1005CF04C();
            *(v85 + 104) = v87;
            *(v85 + 72) = v78;
            *(v85 + 136) = &type metadata for String;
            v88 = sub_1000053B0();
            *(v85 + 112) = v81;
            *(v85 + 120) = v83;
            *(v85 + 176) = &type metadata for UInt;
            *(v85 + 144) = v88;
            *(v85 + 152) = 110;
            v89 = v143;
            *(v85 + 216) = v86;
            *(v85 + 224) = v87;
            *(v85 + 184) = &protocol witness table for UInt;
            *(v85 + 192) = v89;
            v90 = v78;
            v91 = v89;
            v92 = static os_log_type_t.error.getter();
            sub_100005404(v84, &_mh_execute_header, v92, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670);
            swift_arrayDestroy();
            v93 = static os_log_type_t.error.getter();
            sub_100005404(v84, &_mh_execute_header, v93, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            isa = swift_allocObject();
            isa[2] = 8;
            isa[3] = 0;
            isa[4] = 0;
            isa[5] = 0;
            v94 = __VaListBuilder.va_list()();
            StaticString.description.getter();
            v95 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v96 = String._bridgeToObjectiveC()();

            StaticString.description.getter();
            v97 = String._bridgeToObjectiveC()();

            [v140 handleFailureInFunction:v95 file:v96 lineNumber:110 isFatal:0 format:v97 args:v94];

            ++v72;
            v24 = v134;
            v32 = v135;
            v70 = v138;
            if (v142 == v134)
            {
              v7 = &selRef_shouldQueueBeginScribbleMode;
              goto LABEL_61;
            }
          }

          isa = &v144;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v144 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v128 = v144;
          v71 = v142;
          v7 = &selRef_shouldQueueBeginScribbleMode;
          if (v142 == v24)
          {
LABEL_61:

            sub_100006370(0, &qword_1019F6190);
            v98 = String._bridgeToObjectiveC()();
            v99 = [objc_opt_self() v7[463]];

            v100 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v101 = swift_allocObject();
            v102 = v126;
            v101[2] = v128;
            v101[3] = v102;
            v101[4] = v100;

            v103 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v5 = v149;

            v149 = v5;
            goto LABEL_64;
          }
        }
      }
    }

    v128 = _swiftEmptyArrayStorage;
    goto LABEL_61;
  }

LABEL_64:
  v147 = &type metadata for CRLFeatureFlags;
  v148 = v131;
  LOBYTE(v146[0]) = 12;
  v104 = isFeatureEnabled(_:)();
  sub_100005070(v146);
  if ((v104 & 1) == 0)
  {
    goto LABEL_69;
  }

  v105 = v132;
  if (swift_dynamicCastClass())
  {
    sub_100006370(0, &qword_1019F6190);
    v106 = v105;
    v107 = String._bridgeToObjectiveC()();
    v108 = [objc_opt_self() v7[463]];

    v109 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v110 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v111 = swift_allocObject();
    *(v111 + 16) = v109;
    *(v111 + 24) = v110;
    v112 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v149;
LABEL_69:
    v105 = v132;
  }

  swift_getObjectType();
  v113 = swift_conformsToProtocol2();
  if (v113 && v105)
  {
    v114 = v113;
    sub_100006370(0, &qword_1019F6190);
    v115 = v105;
    v116 = String._bridgeToObjectiveC()();
    v117 = [objc_opt_self() v7[463]];

    *(swift_allocObject() + 24) = v114;
    swift_unknownObjectWeakInit();
    v118 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v5 = v149;
  }

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_77;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_77:
    sub_100006370(0, &qword_1019F6C00);
    v119 = String._bridgeToObjectiveC()();
    v120 = [objc_opt_self() v7[463]];

    v121._countAndFlagsBits = 16721;
    v121._object = 0xE200000000000000;
    v150.value.super.isa = v120;
    v150.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v121, 0, v150, 1, 0xFFFFFFFFFFFFFFFFLL, v5, v123);
  }

  return 0;
}

uint64_t sub_1007FA2DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A01C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007FA394(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_101042CE0(a1, v4, v5, v6, (v1 + 5));
}

Class sub_1007FA454(void *a1)
{
  sub_100006370(0, &qword_1019F6BF0);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v4.value._countAndFlagsBits = 16721;
  v4.value._object = 0xE200000000000000;
  v9.value.super.isa = v3;
  v9.is_nil = 0;
  v10.value.super.super.isa = 0;
  v5.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v4, v9, v10, v11).super.super.isa;
  isa = v5.super.super.isa;
  v7.super.super.isa = sub_1007F8BF8(a1, v5.super.super.isa).super.super.isa;

  if (v7.super.super.isa)
  {
    [(objc_class *)isa setMenu:v7.super.super.isa];
    isa = v7.super.super.isa;
  }

  else
  {
    v5.super.super.isa = 0;
  }

  return v5.super.super.isa;
}

uint64_t sub_1007FA564()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100005070(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1007FA5B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_1010444F8(a1, v4, v5, v6, (v1 + 5));
}

uint64_t type metadata accessor for CRLiOSBoardEntity()
{
  result = qword_101A01DC8;
  if (!qword_101A01DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1007FA7C4()
{
  result = qword_101A01CF0;
  if (!qword_101A01CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01CF0);
  }

  return result;
}

uint64_t sub_1007FA860()
{
  sub_1005B981C(&qword_1019F6280);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  qword_101AD65A0 = AppDependency.__allocating_init(key:manager:)();
  qword_101AD65C0 = type metadata accessor for CRLBoardEntityQueryPerformer();
  unk_101AD65C8 = &off_1018ADAB0;
  sub_10002C58C(algn_101AD65A8);
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.appIntents;
  return Logger.init(_:)();
}

uint64_t sub_1007FA968@<X0>(uint64_t *a1@<X8>)
{
  sub_1005B981C(&qword_1019F6280);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  *a1 = AppDependency.__allocating_init(key:manager:)();
  a1[4] = type metadata accessor for CRLBoardEntityQueryPerformer();
  a1[5] = &off_1018ADAB0;
  sub_10002C58C(a1 + 1);
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.appIntents;
  return Logger.init(_:)();
}

uint64_t sub_1007FAA74()
{
  v0 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_10061655C(v10, qword_101AD65D0);
  sub_1005EB3DC(v10, qword_101AD65D0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1007FAD60@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1019F15F8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1007FD584(&qword_101AD65A0, v2);
}

uint64_t sub_1007FAEDC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F1600 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1005EB3DC(v2, qword_101AD65D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1007FAF88()
{
  result = qword_101A01D28;
  if (!qword_101A01D28)
  {
    sub_1005C4E5C(&qword_101A01D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01D28);
  }

  return result;
}

uint64_t sub_1007FAFEC(uint64_t a1)
{
  v2 = sub_1007FB508(&qword_101A01D50, type metadata accessor for CRLiOSBoardEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1007FB0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = sub_1005B981C(&qword_1019F8B00);
  __chkstk_darwin(v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1005B981C(&qword_1019F6270);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v18 - v15;

  LocalizedStringResource.init(stringLiteral:)();
  (*(v11 + 16))(v13, v16, v10);
  (*(v11 + 56))(v9, 1, 1, v10);
  sub_1007FD514(v2 + *(a1 + 24), v6);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1007FB2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10002D3D4;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1007FB394(uint64_t a1)
{
  v2 = sub_1007FB508(&qword_101A01D18, type metadata accessor for CRLiOSBoardEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1007FB414()
{
  result = qword_101A01D40;
  if (!qword_101A01D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01D40);
  }

  return result;
}

unint64_t sub_1007FB46C()
{
  result = qword_101A01D48;
  if (!qword_101A01D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01D48);
  }

  return result;
}

uint64_t sub_1007FB508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007FB550(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = type metadata accessor for CRLiOSBoardEntity();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v4 = type metadata accessor for CRLBoardEntity();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(sub_1007FB66C, 0, 0);
}

uint64_t sub_1007FB66C()
{
  sub_100020E58((v0[10] + 8), *(v0[10] + 32));
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_1007FB73C;
  v2 = v0[9];

  return sub_100FFBFF0(v2, (v0 + 2));
}

uint64_t sub_1007FB73C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_1007FB9B8;
  }

  else
  {
    sub_100005070(v3 + 16);
    v4 = sub_1007FB858;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007FB858()
{
  v1 = *(v0 + 144);
  v2 = *(v1 + 16);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = *(v0 + 88);
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v5 + 80);
    *(v0 + 200) = v6;
    v7 = *(v5 + 72);
    *(v0 + 176) = 0;
    *(v0 + 184) = _swiftEmptyArrayStorage;
    *(v0 + 168) = v7;
    v8 = *(v0 + 104);
    sub_100616494(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for CRLBoardEntity);
    v9 = *(v3 + 24);
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_1007FBA34;
    v11 = *(v0 + 128);

    return sub_1007FC59C(v8 + v9, v11);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1007FB9B8()
{
  sub_100005070(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007FBA34()
{

  return _swift_task_switch(sub_1007FBB30, 0, 0);
}

uint64_t sub_1007FBB30()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  sub_100616494(*(v0 + 128), v1, type metadata accessor for CRLBoardIdentifier);
  EntityProperty.wrappedValue.getter();
  v3 = *(v0 + 64);
  v4 = (v1 + *(v2 + 20));
  *v4 = *(v0 + 56);
  v4[1] = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 184);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100B37B7C(0, v6[2] + 1, 1, *(v0 + 184));
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100B37B7C(v7 > 1, v8 + 1, 1, v6);
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 176) + 1;
  v6[2] = v8 + 1;
  sub_1007FD4B0(v11, v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8);
  sub_100689004(v10);
  if (v13 == v9)
  {

    v14 = *(v0 + 8);

    return v14(v6);
  }

  else
  {
    v16 = *(v0 + 168);
    v17 = *(v0 + 176) + 1;
    *(v0 + 176) = v17;
    *(v0 + 184) = v6;
    v18 = *(v0 + 104);
    v19 = *(v0 + 88);
    sub_100616494(*(v0 + 144) + ((*(v0 + 200) + 32) & ~*(v0 + 200)) + v16 * v17, *(v0 + 128), type metadata accessor for CRLBoardEntity);
    v20 = *(v19 + 24);
    v21 = swift_task_alloc();
    *(v0 + 192) = v21;
    *v21 = v0;
    v21[1] = sub_1007FBA34;
    v22 = *(v0 + 128);

    return sub_1007FC59C(v18 + v20, v22);
  }
}

uint64_t sub_1007FBD78()
{
  v1[9] = v0;
  v2 = type metadata accessor for CRLiOSBoardEntity();
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardEntity();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();

  return _swift_task_switch(sub_1007FBE94, 0, 0);
}

uint64_t sub_1007FBE94()
{
  sub_100020E58((v0[9] + 8), *(v0[9] + 32));
  AppDependency.wrappedValue.getter();
  v0[5] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[6] = &off_1018AD9D0;
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1007FBF60;

  return sub_100FFC7D8((v0 + 2));
}

uint64_t sub_1007FBF60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v4 = sub_1007FC1DC;
  }

  else
  {
    sub_100005070(v3 + 16);
    v4 = sub_1007FC07C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1007FC07C()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 16);
  *(v0 + 152) = v2;
  if (v2)
  {
    v3 = *(v0 + 80);
    v5 = *(v0 + 112);
    v4 = *(v0 + 120);
    v6 = *(v5 + 80);
    *(v0 + 192) = v6;
    v7 = *(v5 + 72);
    *(v0 + 168) = 0;
    *(v0 + 176) = _swiftEmptyArrayStorage;
    *(v0 + 160) = v7;
    v8 = *(v0 + 96);
    sub_100616494(v1 + ((v6 + 32) & ~v6), v4, type metadata accessor for CRLBoardEntity);
    v9 = *(v3 + 24);
    v10 = swift_task_alloc();
    *(v0 + 184) = v10;
    *v10 = v0;
    v10[1] = sub_1007FC258;
    v11 = *(v0 + 120);

    return sub_1007FC59C(v8 + v9, v11);
  }

  else
  {

    v13 = *(v0 + 8);

    return v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1007FC1DC()
{
  sub_100005070(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007FC258()
{

  return _swift_task_switch(sub_1007FC354, 0, 0);
}

uint64_t sub_1007FC354()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);
  sub_100616494(*(v0 + 120), v1, type metadata accessor for CRLBoardIdentifier);
  EntityProperty.wrappedValue.getter();
  v3 = *(v0 + 64);
  v4 = (v1 + *(v2 + 20));
  *v4 = *(v0 + 56);
  v4[1] = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + 176);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_100B37B7C(0, v6[2] + 1, 1, *(v0 + 176));
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_100B37B7C(v7 > 1, v8 + 1, 1, v6);
  }

  v9 = *(v0 + 152);
  v10 = *(v0 + 120);
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 168) + 1;
  v6[2] = v8 + 1;
  sub_1007FD4B0(v11, v6 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8);
  sub_100689004(v10);
  if (v13 == v9)
  {

    v14 = *(v0 + 8);

    return v14(v6);
  }

  else
  {
    v16 = *(v0 + 160);
    v17 = *(v0 + 168) + 1;
    *(v0 + 168) = v17;
    *(v0 + 176) = v6;
    v18 = *(v0 + 96);
    v19 = *(v0 + 80);
    sub_100616494(*(v0 + 136) + ((*(v0 + 192) + 32) & ~*(v0 + 192)) + v16 * v17, *(v0 + 120), type metadata accessor for CRLBoardEntity);
    v20 = *(v19 + 24);
    v21 = swift_task_alloc();
    *(v0 + 184) = v21;
    *v21 = v0;
    v21[1] = sub_1007FC258;
    v22 = *(v0 + 120);

    return sub_1007FC59C(v18 + v20, v22);
  }
}

uint64_t sub_1007FC59C(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return _swift_task_switch(sub_1007FC5BC, 0, 0);
}

uint64_t sub_1007FC5BC()
{
  *(v0 + 104) = type metadata accessor for MainActor();
  *(v0 + 112) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007FC654, v2, v1);
}

uint64_t sub_1007FC654()
{

  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 delegate];
  *(v0 + 120) = v2;

  if (v2)
  {
    type metadata accessor for CRLiOSAppDelegate();
    *(v0 + 128) = swift_dynamicCastClassUnconditional();
    v3 = sub_1007FC72C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1007FC72C()
{
  *(v0 + 136) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007FC7B8, v2, v1);
}

uint64_t sub_1007FC7B8()
{
  v1 = *(v0 + 128);

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_boardPreviewImageCache);
  *(v0 + 144) = v2;
  v3 = v2;
  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1007FC844, 0, 0);
}

uint64_t sub_1007FC844()
{
  if (v0[18])
  {
    v1 = swift_task_alloc();
    v0[19] = v1;
    *v1 = v0;
    v1[1] = sub_1007FC96C;
    v2 = v0[12];

    return sub_1006EE404(v2, 2.0);
  }

  else
  {
    v4 = v0[11];
    v5 = type metadata accessor for DisplayRepresentation.Image();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1007FC96C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_1007FCB9C;
  }

  else
  {
    v4 = sub_1007FCA80;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_1007FCA80()
{
  v1 = [*(v0 + 160) UIImage];
  v2 = UIImagePNGRepresentation(v1);

  if (v2)
  {
    v3 = *(v0 + 160);
    v4 = *(v0 + 144);
    v5 = *(v0 + 88);
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    DisplayRepresentation.Image.init(data:isTemplate:)();
    v6 = type metadata accessor for DisplayRepresentation.Image();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    v7 = *(v0 + 8);

    v7();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1007FCB9C()
{
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[11];
  v3 = v0[12];
  v4 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v16 = UUID.uuidString.getter();
  v17 = v6;

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);

  v8 = (v3 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v9 = *v8;
  v10 = v8[1];

  v11._countAndFlagsBits = v9;
  v11._object = v10;
  String.append(_:)(v11);

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v12, "CRLiOSBoardEntity: failed to get thumbnail for board: %@", 56, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v13 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v13 - 8) + 56))(v2, 1, 1, v13);
  v14 = v0[1];

  return v14();
}

uint64_t sub_1007FCDA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1007FD5C8;

  return sub_1007FB550(a1);
}

uint64_t sub_1007FCE38(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100796700;

  return sub_1007FBD78();
}

uint64_t sub_1007FCEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1007FCF88;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1007FCF88(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1007FD08C()
{
  result = qword_101A01D58;
  if (!qword_101A01D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01D58);
  }

  return result;
}

unint64_t sub_1007FD0E4()
{
  result = qword_101A01D60;
  if (!qword_101A01D60)
  {
    sub_1005C4E5C(&qword_101A01D68);
    sub_1007FB508(&qword_101A01D10, type metadata accessor for CRLiOSBoardEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01D60);
  }

  return result;
}

uint64_t sub_1007FD198(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1007FA7C4();
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1007FD24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002D4C8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_1007FD300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1007FD348(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_1007FD3CC()
{
  type metadata accessor for CRLBoardIdentifier(319);
  if (v0 <= 0x3F)
  {
    sub_1007FD458();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1007FD458()
{
  if (!qword_101A01DD8)
  {
    type metadata accessor for DisplayRepresentation.Image();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A01DD8);
    }
  }
}

uint64_t sub_1007FD4B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLiOSBoardEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007FD514(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F8B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007FD5E4()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1007FD6B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v18 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v18 - v12;
  if ((sub_1011255D0(v11) & 1) == 0)
  {
    sub_100803820(a1, type metadata accessor for CRLUSDZAssetDataStruct);
    return;
  }

  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
  {
    __break(1u);
    return;
  }

  sub_1008038F0(a1, v13, type metadata accessor for CRLUSDZAssetDataStruct);
  sub_1008038F0(v13, v10, type metadata accessor for CRLUSDZAssetDataStruct);
  swift_beginAccess();
  sub_1008038F0(v10, v7, type metadata accessor for CRLUSDZAssetDataStruct);

  sub_1005B981C(&unk_101A2EF00);
  CRRegister.wrappedValue.setter();
  sub_100803820(v10, type metadata accessor for CRLUSDZAssetDataStruct);
  swift_endAccess();

  sub_100803820(v13, type metadata accessor for CRLUSDZAssetDataStruct);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = (*((swift_isaMask & *Strong) + 0x388))();

    sub_100803820(a1, type metadata accessor for CRLUSDZAssetDataStruct);
    if (v16)
    {
      return;
    }
  }

  else
  {
    sub_100803820(a1, type metadata accessor for CRLUSDZAssetDataStruct);
  }

  v17 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload);
  *(v2 + OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload) = 0;
}

void sub_1007FD9AC()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for CRLAssetData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_10000BE14(&v3[*(v1 + 20)], v6, &unk_101A1B880);
    sub_100803820(v3, type metadata accessor for CRLUSDZAssetDataStruct);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_10000CAAC(v6, &unk_101A1B880);
    }

    else
    {
      sub_1006008F0(v6, v10);
      sub_100C9C5F4(0.5, v10, v0);
      sub_100803820(v10, type metadata accessor for CRLAssetData);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1007FDD4C()
{
  v1 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v1);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for CRLAssetData();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload;
  v13 = *&v0[OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload];
  if (v13)
  {
LABEL_9:
    v34 = v13;
    return;
  }

  if (**&v0[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] == &off_101A2E658)
  {
    v39 = v0;
    v14 = v9;
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_10000BE14(&v3[*(v1 + 20)], v6, &unk_101A1B880);
    sub_100803820(v3, type metadata accessor for CRLUSDZAssetDataStruct);
    if ((*(v8 + 48))(v6, 1, v14) == 1)
    {
      sub_10000CAAC(v6, &unk_101A1B880);
    }

    else
    {
      sub_1006008F0(v6, v11);
      v15 = v39;
      v16 = [v39 store];
      v17 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
      os_unfair_lock_lock(*(v17 + 16));
      v18 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
      v19 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      if (v19)
      {
        v20 = *&v16[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
      }

      else
      {
        v38 = type metadata accessor for CRLAssetManager();
        v21 = objc_allocWithZone(v38);
        v37 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
        swift_unknownObjectWeakInit();
        v22 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
        type metadata accessor for CRLUnfairLock();
        v23 = swift_allocObject();
        v36 = v16;
        v24 = swift_slowAlloc();
        *v24 = 0;
        *(v23 + 16) = v24;
        atomic_thread_fence(memory_order_acq_rel);
        *&v21[v22] = v23;
        *&v21[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
        v25 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
        *&v21[v25] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
        *&v21[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
        v26 = v36;
        swift_unknownObjectWeakAssign();
        v40.receiver = v21;
        v40.super_class = v38;
        v27 = objc_msgSendSuper2(&v40, "init");

        v28 = *&v16[v18];
        *&v16[v18] = v27;
        v20 = v27;

        v19 = 0;
      }

      v29 = *(v17 + 16);
      v30 = v19;
      os_unfair_lock_unlock(v29);

      v31 = sub_1011255E0(v11, v15, v20);
      sub_100803820(v11, type metadata accessor for CRLAssetData);
      v32 = *&v15[v12];
      *&v15[v12] = v31;
      v33 = v31;
    }

    goto LABEL_9;
  }

  __break(1u);
}

id sub_1007FE1A0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_1007FE430(&v55);
  if (v58)
  {
    return 0;
  }

  v9 = v56;
  v8 = v57;
  v10 = v55;
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.width = 0.0;
  v60.size.height = 0.0;
  v59.origin = v55;
  v59.size.width = v56;
  v59.size.height = v57;
  if (CGRectEqualToRect(v59, v60))
  {
    return 0;
  }

  v12 = *(**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v14 = v12(v13);

  [v14 boundsBeforeRotation];
  v48 = v9;
  v49 = v8;
  v16 = v15;
  v52 = v15;
  v53 = a3;
  v18 = v17;
  v50 = v19;
  v51 = v17;
  v21 = v20;
  v22 = v19;

  sub_100121740(v16, v18, v21, v22, v10.x, v10.y, v48, v49);
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_100121F30(0, v27, v29, a1, a2, v53, a4);
  v32 = v31 / v28;
  v33 = sub_100120414(v24, v26, v28, v30);
  sub_100121FD0(v52, v51, v21, v50, v33, v34, v32);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = sub_100120414(a1, a2, v53, a4);
  v45 = sub_10011F31C(v43, v44, v33);
  v46 = sub_10011F334(v36, v38, v45);
  return [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v46 size:{v47, v40, v42}];
}

void sub_1007FE430(int8x16_t *a1@<X8>)
{
  v3 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    v6 = &v5[*(v3 + 28)];
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2].u8[0];
    sub_100803820(v5, type metadata accessor for CRLUSDZAssetDataStruct);
    v10 = vcvtq_f64_f32(v7);
    if (v9)
    {
      v11 = -1;
    }

    else
    {
      v11 = 0;
    }

    v12 = vdupq_n_s64(v11);
    *a1 = vbicq_s8(v10, v12);
    a1[1] = vbicq_s8(vcvtq_f64_f32(v8), v12);
    a1[2].i8[0] = v9;
  }

  else
  {
    __break(1u);
  }
}

void sub_1007FE5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardItemParentAffinity();
  __chkstk_darwin(v8 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A226A0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  v14 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  __chkstk_darwin(v17);
  v52 = &v46 - v18;
  __chkstk_darwin(v19);
  v24 = &v46 - v23;
  if (**(v4 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    v47 = v22;
    v48 = a2;
    v49 = v21;
    v50 = v20;
    v51 = v4;

    v25 = sub_10124826C(1);
    v53 = a4;
    v26 = v25;

    v27 = v26 + *(*v26 + 736);
    swift_beginAccess();
    v57 = v24;
    sub_10000BE14(v27, v13, &unk_101A226A0);

    v28 = sub_1005B981C(&qword_101A01F08);
    CRRegister.wrappedValue.getter();
    v29 = v13;
    v30 = v57;
    sub_10000CAAC(v29, &unk_101A226A0);
    sub_10000BE14(v10, v30, &qword_1019F6990);
    sub_100803820(v10, type metadata accessor for CRLBoardItemParentAffinity);
    sub_101248710(v53);
    if (v5)
    {

      sub_10000CAAC(v30, &qword_1019F6990);
    }

    else
    {
      v53 = v28;
      v54 = v11;
      v31 = v47;
      sub_10000BE14(v48, v47, &qword_1019F6990);
      v32 = type metadata accessor for UUID();
      v33 = *(v32 - 8);
      v34 = *(v33 + 48);
      if (v34(v31, 1, v32) == 1)
      {
        v35 = v52;
        sub_10000BE14(v57, v52, &qword_1019F6990);
        if (v34(v31, 1, v32) != 1)
        {
          sub_10000CAAC(v31, &qword_1019F6990);
        }
      }

      else
      {
        v35 = v52;
        (*(v33 + 32))(v52, v31, v32);
        (*(v33 + 56))(v35, 0, 1, v32);
      }

      v36 = v35;
      v37 = v35;
      v38 = v50;
      sub_10000BE14(v36, v50, &qword_1019F6990);
      swift_beginAccess();
      v39 = v49;
      sub_10000BE14(v38, v49, &qword_1019F6990);
      v40 = CRRegister.wrappedValue.modify();
      sub_100803880(v39, v41);
      v40(v56, 0);
      sub_10000CAAC(v38, &qword_1019F6990);
      swift_endAccess();

      sub_10000CAAC(v37, &qword_1019F6990);
      v42 = *(v51 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
      v43 = objc_allocWithZone(type metadata accessor for CRLUSDZItem());
      *&v43[OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload] = 0;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v42;
      *&v43[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v26;
      v44 = type metadata accessor for CRLBoardItemBase(0);
      v55.receiver = v43;
      v55.super_class = v44;
      v45 = v42;
      objc_msgSendSuper2(&v55, "init");
      sub_10000CAAC(v57, &qword_1019F6990);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1007FEC54()
{
  if (**(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {

    v1 = sub_10124826C(0);

    v2 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
    v3 = objc_allocWithZone(type metadata accessor for CRLUSDZItem());
    *&v3[OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload] = 0;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store] = v2;
    *&v3[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] = v1;
    v5.receiver = v3;
    v5.super_class = type metadata accessor for CRLBoardItemBase(0);
    v4 = v2;
    objc_msgSendSuper2(&v5, "init");
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1007FED58(uint64_t a1)
{
  v3 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v3);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_1005B981C(&qword_101A01ED0);
  __chkstk_darwin(v9 - 8);
  v11 = &v49 - v10;
  type metadata accessor for CRLUSDZItem();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    swift_unknownObjectRetain();
    v14 = sub_1011F0C64(v13, v1);
    v15 = *(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (*v15 == &off_101A2E658)
    {
      v49 = v3;
      v50 = v14;
      v51 = a1;
      v16 = qword_101AD9460;
      swift_beginAccess();
      sub_1008038F0(v15 + v16, v8, type metadata accessor for CRLUSDZItemCRDTData);
      v17 = *(v13 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v17 == &off_101A2E658)
      {
        v18 = qword_101AD9460;
        swift_beginAccess();
        sub_1008038F0(v17 + v18, v5, type metadata accessor for CRLUSDZItemCRDTData);
        sub_10080376C(&qword_101A01EE0);
        CRStruct_1.actionUndoingDifference(from:)();
        sub_100803820(v5, type metadata accessor for CRLUSDZItemCRDTData);
        sub_100803820(v8, type metadata accessor for CRLUSDZItemCRDTData);
        v19 = sub_1005B981C(&qword_101A01ED8);
        v20 = *(v19 - 8);
        if ((*(v20 + 48))(v11, 1, v19) == 1)
        {
          sub_10000CAAC(v11, &qword_101A01ED0);
          memset(v52, 0, sizeof(v52));
          v53 = 1;
        }

        else
        {
          v53 = v19;
          v21 = sub_10002C58C(v52);
          (*(v20 + 32))(v21, v11, v19);
        }

        v22 = v50;
        swift_beginAccess();
        sub_100BC1DF4(v52, 8);
        swift_endAccess();
        swift_unknownObjectRelease();
        return v22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v24 = objc_opt_self();
  v25 = [v24 _atomicIncrementAssertCount];
  v52[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v52);
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
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v25;
  v34 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v34;
  v35 = sub_1005CF04C();
  *(inited + 104) = v35;
  *(inited + 72) = v26;
  *(inited + 136) = &type metadata for String;
  v36 = sub_1000053B0();
  *(inited + 112) = v29;
  *(inited + 120) = v31;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v36;
  *(inited + 152) = 152;
  v37 = v52[0];
  *(inited + 216) = v34;
  *(inited + 224) = v35;
  *(inited + 192) = v37;
  v38 = v26;
  v39 = v37;
  v40 = static os_log_type_t.error.getter();
  sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v41 = static os_log_type_t.error.getter();
  sub_100005404(v32, &_mh_execute_header, v41, "Tried to generate undo from mismatched type", 43, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to generate undo from mismatched type");
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

  [v24 handleFailureInFunction:v44 file:v45 lineNumber:152 isFatal:1 format:v46 args:v43];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v47, v48);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1007FF46C(int64_t a1)
{
  v2 = v1;
  v4 = sub_1005B981C(&qword_101A01EE8);
  v64 = *(v4 - 8);
  v65 = v4;
  __chkstk_darwin(v4);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v60 = (&v59 - v7);
  v63 = type metadata accessor for CRLUSDZItemCRDTData(0);
  __chkstk_darwin(v63);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v59 - v11;
  v13 = sub_1005B981C(&qword_101A01EF0);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = (&v59 - v17);
  type metadata accessor for CRLUSDZItem();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = &OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v21 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
    v22 = *(v2 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    v23 = &off_101A2E658;
    if (*v22 == &off_101A2E658)
    {
      v24 = v19;
      v61 = v18;
      v62 = a1;
      v18 = &qword_101AD9460;
      a1 = qword_101AD9460;
      swift_beginAccess();
      sub_1008038F0(&v22[a1], v12, type metadata accessor for CRLUSDZItemCRDTData);
      v21 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v22 = *(v24 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v22 == &off_101A2E658)
      {
        v25 = qword_101AD9460;
        swift_beginAccess();
        sub_1008038F0(&v22[v25], v9, type metadata accessor for CRLUSDZItemCRDTData);
        sub_10080376C(&qword_101A01EF8);
        swift_unknownObjectRetain();
        v23 = v61;
        CRType.observableDifference(from:)();
        sub_100803820(v9, type metadata accessor for CRLUSDZItemCRDTData);
        sub_100803820(v12, type metadata accessor for CRLUSDZItemCRDTData);
        sub_10000BE14(v23, v15, &qword_101A01EF0);
        if ((*(v64 + 48))(v15, 1, v65) == 1)
        {
          v26 = &qword_101A01EF0;
          v27 = v15;
          goto LABEL_8;
        }

        v18 = v60;
        sub_1008037B0(v15, v60);
        v28 = v59;
        sub_10000BE14(v18, v59, &qword_101A01EE8);
        v29 = type metadata accessor for CRValueObservableDifference();
        if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
        {
          sub_10000CAAC(v18, &qword_101A01EE8);
          v26 = &qword_101A01F00;
          v27 = v28;
LABEL_8:
          sub_10000CAAC(v27, v26);
          v22 = _swiftEmptyArrayStorage;
          if (_swiftEmptyArrayStorage[2])
          {
LABEL_9:
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v66 = _swiftEmptyDictionarySingleton;
            sub_100A9B080(v22, 8, isUniquelyReferenced_nonNull_native);
            swift_unknownObjectRelease();
            v31 = v66;
            sub_10000CAAC(v23, &qword_101A01EF0);
            return v31;
          }

LABEL_12:
          sub_10000CAAC(v23, &qword_101A01EF0);

          swift_unknownObjectRelease();
          return _swiftEmptyDictionarySingleton;
        }

        sub_10000CAAC(v28, &qword_101A01F00);
        v22 = sub_100024CBC(0, 1, 1, _swiftEmptyArrayStorage);
        v20 = *(v22 + 2);
        v21 = *(v22 + 3);
        a1 = v20 + 1;
        if (v20 < v21 >> 1)
        {
LABEL_11:
          sub_10000CAAC(v18, &qword_101A01EE8);
          *(v22 + 2) = a1;
          v32 = &v22[16 * v20];
          *(v32 + 4) = 0x7461447465737361;
          *(v32 + 5) = 0xE900000000000061;
          if (*(v22 + 2))
          {
            goto LABEL_9;
          }

          goto LABEL_12;
        }

LABEL_16:
        v22 = sub_100024CBC((v21 > 1), a1, 1, v22);
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  v34 = objc_opt_self();
  v35 = [v34 _atomicIncrementAssertCount];
  v67 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v67);
  StaticString.description.getter();
  v36 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v37 = String._bridgeToObjectiveC()();

  v38 = [v37 lastPathComponent];

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v42 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v35;
  v44 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v44;
  v45 = sub_1005CF04C();
  *(inited + 104) = v45;
  *(inited + 72) = v36;
  *(inited + 136) = &type metadata for String;
  v46 = sub_1000053B0();
  *(inited + 112) = v39;
  *(inited + 120) = v41;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v46;
  *(inited + 152) = 164;
  v47 = v67;
  *(inited + 216) = v44;
  *(inited + 224) = v45;
  *(inited + 192) = v47;
  v48 = v36;
  v49 = v47;
  v50 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v51 = static os_log_type_t.error.getter();
  sub_100005404(v42, &_mh_execute_header, v51, "Tried to create observable deltas from mismatched type", 54, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Tried to create observable deltas from mismatched type");
  type metadata accessor for __VaListBuilder();
  v52 = swift_allocObject();
  v52[2] = 8;
  v52[3] = 0;
  v52[4] = 0;
  v52[5] = 0;
  v53 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v54 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v56 = String._bridgeToObjectiveC()();

  [v34 handleFailureInFunction:v54 file:v55 lineNumber:164 isFatal:1 format:v56 args:v53];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v57, v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007FFD84(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A01ED0);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = sub_1005B981C(&qword_101A01ED8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  result = sub_1009B611C(a1);
  if (!v2)
  {
    v16 = OBJC_IVAR____TtC8Freeform31CRLTransactableUndoingMutations_values;
    swift_beginAccess();
    v17 = *(a1 + v16);
    if (*(v17 + 16))
    {

      v18 = sub_1007C8124(8);
      if (v19)
      {
        sub_10000BE14(*(v17 + 56) + 32 * v18, &v23, &unk_1019F4D00);

        v25[0] = v23;
        v25[1] = v24;
        if (*(&v24 + 1))
        {
          v20 = swift_dynamicCast();
          v21 = *(v12 + 56);
          v21(v10, v20 ^ 1u, 1, v11);
          if ((*(v12 + 48))(v10, 1, v11) != 1)
          {
            result = (*(v12 + 32))(v14, v10, v11);
            if (**(v3 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
            {
              (*(v12 + 16))(v7, v14, v11);
              v21(v7, 0, 1, v11);
              swift_beginAccess();
              type metadata accessor for CRLUSDZItemCRDTData(0);
              sub_10080376C(&qword_101A01EE0);

              CRStruct_1.apply(_:)();
              swift_endAccess();

              sub_10000CAAC(v7, &qword_101A01ED0);
              return (*(v12 + 8))(v14, v11);
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          return sub_10000CAAC(v10, &qword_101A01ED0);
        }

        sub_10000CAAC(v25, &unk_1019F4D00);
      }

      else
      {
      }
    }

    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10000CAAC(v10, &qword_101A01ED0);
  }

  return result;
}

uint64_t sub_10080017C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v5 = v4;
  LOBYTE(v7) = a3;
  v167 = a1;
  v152 = sub_1005B981C(&unk_101A01EC0);
  __chkstk_darwin(v152);
  v151 = &v145 - v9;
  v10 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v10 - 8);
  v148 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v158 = &v145 - v13;
  __chkstk_darwin(v14);
  v159 = &v145 - v15;
  v164 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v164);
  v169 = &v145 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for CRLAssetData();
  v17 = *(v161 - 8);
  __chkstk_darwin(v161);
  v147 = &v145 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v153 = &v145 - v20;
  __chkstk_darwin(v21);
  v154 = &v145 - v22;
  if (v7 <= 5u || v7 > 8u || v7 == 6 || v7 == 7)
  {
    goto LABEL_9;
  }

LABEL_10:
  v157 = *(a2 + 16);
  if (v157)
  {
    v25 = 0;
    v150 = OBJC_IVAR____TtC8Freeform11CRLUSDZItem__posterAssetPayload;
    v156 = a2 + 32;
    v163 = OBJC_IVAR____TtC8Freeform14CRLPropertyMap_data;
    v149 = (v17 + 6);
    v145 = xmmword_10146C6B0;
    v146 = xmmword_10146CA70;
    v155 = a4;
    v165 = v5;
    while (1)
    {
      v26 = (v156 + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *v26 == 0x7461447465737361 && v28 == 0xE900000000000061;
      v162 = v25;
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = v145;
        *(inited + 56) = &type metadata for String;
        v60 = sub_1000053B0();
        *(inited + 32) = v27;
        v7 = inited + 32;
        v171 = v60;
        *(inited + 64) = v60;
        *(inited + 40) = v28;
        v61 = objc_opt_self();

        v168 = v61;
        LODWORD(v170) = [v61 _atomicIncrementAssertCount];
        *&v173 = [objc_allocWithZone(NSString) init];
        sub_100604538(inited, &v173);
        StaticString.description.getter();
        v62 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v63 = String._bridgeToObjectiveC()();

        v64 = [v63 lastPathComponent];

        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v68 = static OS_os_log.crlAssert;
        v69 = swift_initStackObject();
        *(v69 + 16) = v146;
        *(v69 + 56) = &type metadata for Int32;
        *(v69 + 64) = &protocol witness table for Int32;
        *(v69 + 32) = v170;
        v70 = sub_100006370(0, &qword_1019F4D30);
        *(v69 + 96) = v70;
        v71 = sub_1005CF04C();
        *(v69 + 72) = v62;
        v72 = v171;
        *(v69 + 136) = &type metadata for String;
        *(v69 + 144) = v72;
        *(v69 + 104) = v71;
        *(v69 + 112) = v65;
        *(v69 + 120) = v67;
        *(v69 + 176) = &type metadata for UInt;
        *(v69 + 152) = 222;
        v73 = v173;
        *(v69 + 216) = v70;
        *(v69 + 224) = v71;
        *(v69 + 184) = &protocol witness table for UInt;
        *(v69 + 192) = v73;
        v74 = v62;
        v75 = v73;
        v76 = static os_log_type_t.error.getter();
        sub_100005404(v68, &_mh_execute_header, v76, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v69);
        swift_setDeallocating();
        *&v170 = sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v77 = static os_log_type_t.error.getter();

        type metadata accessor for __VaListBuilder();
        v17 = swift_allocObject();
        v17[2] = 8;
        v17[3] = 0;
        a4 = v17 + 3;
        v17[4] = 0;
        v17[5] = 0;
        v171 = inited;
        v78 = *(inited + 16);
        if (!v78)
        {
LABEL_64:
          v92 = __VaListBuilder.va_list()();
          StaticString.description.getter();
          v93 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v94 = String._bridgeToObjectiveC()();

          StaticString.description.getter();
          v95 = String._bridgeToObjectiveC()();

          [v168 handleFailureInFunction:v93 file:v94 lineNumber:222 isFatal:0 format:v95 args:v92];

          swift_setDeallocating();
          result = swift_arrayDestroy();
          v5 = v165;
          v96 = v162;
          goto LABEL_13;
        }

        v79 = 0;
        while (2)
        {
          sub_100020E58((v7 + 40 * v79), *(v7 + 40 * v79 + 24));
          v80 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v81 = *a4;
          v82 = *(v80 + 16);
          v83 = __OFADD__(*a4, v82);
          v84 = *a4 + v82;
          if (v83)
          {
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          v5 = v80;
          a2 = v17[4];
          if (a2 >= v84)
          {
LABEL_57:
            v86 = v17[5];
          }

          else
          {
            if (a2 + 0x4000000000000000 < 0)
            {
              goto LABEL_94;
            }

            v85 = v17[5];
            if (2 * a2 > v84)
            {
              v84 = 2 * a2;
            }

            v17[4] = v84;
            if ((v84 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_95;
            }

            v86 = swift_slowAlloc();
            v17[5] = v86;
            if (v85)
            {
              if (v86 != v85 || v86 >= &v85[8 * v81])
              {
                memmove(v86, v85, 8 * v81);
              }

              a2 = v17;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
              goto LABEL_57;
            }
          }

          if (!v86)
          {
            goto LABEL_103;
          }

          v88 = *(v5 + 16);
          if (v88)
          {
            v89 = (v5 + 32);
            v90 = *a4;
            while (1)
            {
              v91 = *v89++;
              *&v86[8 * v90] = v91;
              v90 = *a4 + 1;
              if (__OFADD__(*a4, 1))
              {
                break;
              }

              *a4 = v90;
              if (!--v88)
              {
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_9:
            v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v24)
            {
              goto LABEL_10;
            }

            swift_getObjectType();
            v119 = v167;

            return sub_1009BE298(v119, a2, v7, a4, v5);
          }

LABEL_42:

          if (++v79 == v78)
          {
            goto LABEL_64;
          }

          continue;
        }
      }

      type metadata accessor for CRLUSDZItem();
      v30 = swift_dynamicCastClass();
      if (!v30)
      {
        goto LABEL_104;
      }

      v31 = v30;
      v32 = *(v5 + v150);
      *(v5 + v150) = 0;
      swift_unknownObjectRetain();

      v171 = v31;
      v166.n128_u64[0] = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      if (**(v31 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        v120 = objc_opt_self();

        v121 = [v120 _atomicIncrementAssertCount];
        *&v173 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v173);
        StaticString.description.getter();
        v122 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v123 = String._bridgeToObjectiveC()();

        v124 = [v123 lastPathComponent];

        v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v127 = v126;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v128 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        v129 = swift_allocObject();
        *(v129 + 16) = v146;
        *(v129 + 56) = &type metadata for Int32;
        *(v129 + 64) = &protocol witness table for Int32;
        *(v129 + 32) = v121;
        v130 = sub_100006370(0, &qword_1019F4D30);
        *(v129 + 96) = v130;
        v131 = sub_1005CF04C();
        *(v129 + 104) = v131;
        *(v129 + 72) = v122;
        *(v129 + 136) = &type metadata for String;
        v132 = sub_1000053B0();
        *(v129 + 112) = v125;
        *(v129 + 120) = v127;
        *(v129 + 176) = &type metadata for UInt;
        *(v129 + 144) = v132;
        *(v129 + 152) = 200;
        v133 = v173;
        *(v129 + 216) = v130;
        *(v129 + 224) = v131;
        *(v129 + 184) = &protocol witness table for UInt;
        *(v129 + 192) = v133;
        v134 = v122;
        v135 = v133;
        v136 = static os_log_type_t.error.getter();
        sub_100005404(v128, &_mh_execute_header, v136, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v129);

        v137 = static os_log_type_t.error.getter();
        sub_100005404(v128, &_mh_execute_header, v137, "Snapshot should be a USDZ item.", 31, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Snapshot should be a USDZ item.");
        type metadata accessor for __VaListBuilder();
        v138 = swift_allocObject();
        v138[2] = 8;
        v138[3] = 0;
        v138[4] = 0;
        v138[5] = 0;
        v139 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v140 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v141 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v142 = String._bridgeToObjectiveC()();

        [v120 handleFailureInFunction:v140 file:v141 lineNumber:200 isFatal:1 format:v142 args:v139];

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v143, v144);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      swift_beginAccess();

      v33 = sub_1005B981C(&unk_101A2EF00);
      v34 = v169;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v35 = v154;
      sub_1008038F0(v34, v154, type metadata accessor for CRLAssetData);
      sub_100803820(v34, type metadata accessor for CRLUSDZAssetDataStruct);
      v168 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      if (**(v5 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) != &off_101A2E658)
      {
        goto LABEL_97;
      }

      swift_beginAccess();

      *&v170 = v33;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v36 = v153;
      sub_1008038F0(v34, v153, type metadata accessor for CRLAssetData);
      sub_100803820(v34, type metadata accessor for CRLUSDZAssetDataStruct);
      v37 = static UUID.== infix(_:_:)();
      v38 = v161;
      if ((v37 & 1) == 0)
      {
        break;
      }

      v39 = *(v161 + 20);
      v40 = *(v35 + v39);
      v41 = *(v35 + v39 + 8);
      v42 = (v36 + v39);
      if ((v40 != *v42 || v41 != v42[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v43 = sub_100B3216C(*(v35 + *(v38 + 24)), *(v36 + *(v38 + 24)));
      sub_100803820(v36, type metadata accessor for CRLAssetData);
      sub_100803820(v35, type metadata accessor for CRLAssetData);
      v44 = v164;
      if ((v43 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_30:
      if (**(v171 + v166.n128_u64[0]) != &off_101A2E658)
      {
        goto LABEL_98;
      }

      swift_beginAccess();

      v45 = v169;
      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v46 = v45 + *(v44 + 20);
      v47 = v44;
      v48 = v159;
      sub_10000BE14(v46, v159, &unk_101A1B880);
      sub_100803820(v45, type metadata accessor for CRLUSDZAssetDataStruct);
      if (**&v168[v165] != &off_101A2E658)
      {
        goto LABEL_99;
      }

      swift_beginAccess();

      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v49 = v158;
      sub_10000BE14(v45 + *(v47 + 20), v158, &unk_101A1B880);
      sub_100803820(v45, type metadata accessor for CRLUSDZAssetDataStruct);
      v50 = v151;
      v51 = *(v152 + 48);
      sub_10000BE14(v48, v151, &unk_101A1B880);
      sub_10000BE14(v49, v50 + v51, &unk_101A1B880);
      v52 = *v149;
      v53 = v161;
      if ((*v149)(v50, 1, v161) != 1)
      {
        v56 = v148;
        sub_10000BE14(v50, v148, &unk_101A1B880);
        if (v52(v50 + v51, 1, v53) == 1)
        {
          sub_10000CAAC(v158, &unk_101A1B880);
          sub_10000CAAC(v159, &unk_101A1B880);
          sub_100803820(v56, type metadata accessor for CRLAssetData);
          v55 = v164;
LABEL_37:
          v57 = v50;
          v58 = &unk_101A01EC0;
LABEL_72:
          sub_10000CAAC(v57, v58);
          v5 = v165;
        }

        else
        {
          v97 = v147;
          sub_1006008F0(v50 + v51, v147);
          v98 = static UUID.== infix(_:_:)();
          v99 = v159;
          v55 = v164;
          if ((v98 & 1) == 0 || ((v100 = *(v161 + 20), v101 = *(v56 + v100), v102 = *(v56 + v100 + 8), v103 = (v97 + v100), v101 != *v103) || v102 != v103[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            sub_10000CAAC(v158, &unk_101A1B880);
            sub_10000CAAC(v99, &unk_101A1B880);
            sub_100803820(v97, type metadata accessor for CRLAssetData);
            sub_100803820(v56, type metadata accessor for CRLAssetData);
            v57 = v50;
            v58 = &unk_101A1B880;
            goto LABEL_72;
          }

          v160.n128_u32[0] = sub_100B3216C(*(v56 + *(v161 + 24)), *(v97 + *(v161 + 24)));
          sub_10000CAAC(v158, &unk_101A1B880);
          sub_10000CAAC(v99, &unk_101A1B880);
          sub_100803820(v97, type metadata accessor for CRLAssetData);
          sub_100803820(v148, type metadata accessor for CRLAssetData);
          sub_10000CAAC(v50, &unk_101A1B880);
          v5 = v165;
          if (v160.n128_u8[0])
          {
            goto LABEL_74;
          }
        }

        *(&v174 + 1) = &type metadata for Bool;
        LOBYTE(v173) = 1;
        sub_10000BE14(&v173, v172, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v172, 44);
        swift_endAccess();
        sub_10000CAAC(&v173, &unk_1019F4D00);
        goto LABEL_74;
      }

      sub_10000CAAC(v49, &unk_101A1B880);
      sub_10000CAAC(v48, &unk_101A1B880);
      v54 = v52(v50 + v51, 1, v53);
      v55 = v164;
      if (v54 != 1)
      {
        goto LABEL_37;
      }

      sub_10000CAAC(v50, &unk_101A1B880);
      v5 = v165;
LABEL_74:
      v104 = v169;
      if (**(v171 + v166.n128_u64[0]) != &off_101A2E658)
      {
        goto LABEL_100;
      }

      swift_beginAccess();

      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v166 = *(v104 + *(v55 + 24));
      sub_100803820(v104, type metadata accessor for CRLUSDZAssetDataStruct);
      if (**&v168[v5] != &off_101A2E658)
      {
        goto LABEL_101;
      }

      swift_beginAccess();

      CRRegister.wrappedValue.getter();
      swift_endAccess();

      v160 = *(v104 + *(v55 + 24));
      sub_100803820(v104, type metadata accessor for CRLUSDZAssetDataStruct);
      v105 = CRL3DRotation.rawValue.getter(v166);
      v107 = v106;
      v108 = CRL3DRotation.rawValue.getter(v160);
      v110 = v109;
      v111 = sub_1009F9488(v105, v107, v108, v109);
      sub_10002640C(v108, v110);
      sub_10002640C(v105, v107);
      if ((v111 & 1) == 0)
      {
        if (**&v168[v5] != &off_101A2E658)
        {
          goto LABEL_102;
        }

        swift_beginAccess();

        v112 = v169;
        CRRegister.wrappedValue.getter();
        swift_endAccess();

        v170 = *(v112 + *(v164 + 24));
        sub_100803820(v112, type metadata accessor for CRLUSDZAssetDataStruct);
        *(&v174 + 1) = &type metadata for CRL3DRotation;
        *&v173 = swift_allocObject();
        *(v173 + 16) = v170;
        sub_10000BE14(&v173, v172, &unk_1019F4D00);
        swift_beginAccess();
        sub_100BC1F00(v172, 54);
        swift_endAccess();
        sub_10000CAAC(&v173, &unk_1019F4D00);
      }

      sub_1007FE430(&v175);
      v113 = v175;
      v114 = v176;
      v115 = v177;
      sub_1007FE430(&v179);
      if (v178)
      {
        v96 = v162;
        if ((v182 & 1) == 0)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v96 = v162;
        if ((v182 & 1) != 0 || (v187.origin = v179, v187.size.width = v180, v187.size.height = v181, v186.origin = v113, v186.size.width = v114, v186.size.height = v115, !CGRectEqualToRect(v186, v187)))
        {
LABEL_84:
          sub_1007FE430(v183);
          if (v184)
          {
            v173 = 0u;
            v174 = 0u;
          }

          else
          {
            type metadata accessor for CGRect(0);
            *(&v174 + 1) = v116;
            v117 = swift_allocObject();
            *&v173 = v117;
            v118 = v183[1];
            *(v117 + 16) = v183[0];
            *(v117 + 32) = v118;
          }

          sub_10000BE14(&v173, v172, &unk_1019F4D00);
          swift_beginAccess();
          sub_100BC1F00(v172, 55);
          swift_endAccess();
          swift_unknownObjectRelease();
          result = sub_10000CAAC(&v173, &unk_1019F4D00);
          v5 = v165;
          goto LABEL_13;
        }
      }

      result = swift_unknownObjectRelease();
LABEL_13:
      v25 = v96 + 1;
      if (v25 == v157)
      {
        return result;
      }
    }

    sub_100803820(v36, type metadata accessor for CRLAssetData);
    sub_100803820(v35, type metadata accessor for CRLAssetData);
    v44 = v164;
LABEL_29:
    *(&v174 + 1) = &type metadata for Bool;
    LOBYTE(v173) = 1;
    sub_10000BE14(&v173, v172, &unk_1019F4D00);
    swift_beginAccess();
    sub_100BC1F00(v172, 19);
    swift_endAccess();
    sub_10000CAAC(&v173, &unk_1019F4D00);
    goto LABEL_30;
  }

  return result;
}

void *sub_100801BF4()
{
  v1 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v1 - 8);
  v45 = &v41 - v2;
  v3 = type metadata accessor for URL();
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&unk_101A1B880);
  __chkstk_darwin(v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for CRLAssetData();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&unk_1019F8DB0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for UTType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v0;
  type metadata accessor for CRLUSDZItem();
  sub_100802624(v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v19 = &unk_101A1B880;
    v20 = v7;
LABEL_8:
    sub_10000CAAC(v20, v19);
    (*(v16 + 56))(v14, 1, 1, v15);
    goto LABEL_10;
  }

  sub_1006008F0(v7, v11);
  v21 = *(v0 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_store);
  v22 = *&v21[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  v23 = *(v22 + 16);
  v24 = v21;
  os_unfair_lock_lock(v23);
  v25 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v26 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v26)
  {
    v27 = *&v24[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v28 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager());
    v29 = v24;
    v30 = sub_10001F1A0(v29);

    v31 = *&v24[v25];
    *&v24[v25] = v30;
    v27 = v30;

    v26 = 0;
  }

  v32 = *(v22 + 16);
  v33 = v26;
  os_unfair_lock_unlock(v32);
  v34 = v45;
  sub_10108CAF4(v11, 0, 3, 0, 0, v45);

  v36 = v43;
  v35 = v44;
  if ((*(v43 + 48))(v34, 1, v44) == 1)
  {
    sub_100803820(v11, type metadata accessor for CRLAssetData);
    v19 = &unk_1019F33C0;
    v20 = v34;
    goto LABEL_8;
  }

  v37 = v42;
  (*(v36 + 32))(v42, v34, v35);
  sub_1007AC4D0(0, v14);
  (*(v36 + 8))(v37, v35);
  sub_100803820(v11, type metadata accessor for CRLAssetData);
LABEL_10:
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000CAAC(v14, &unk_1019F8DB0);
    return _swiftEmptyArrayStorage;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_1005B981C(&unk_1019F61D0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_10146C6B0;
    *(v39 + 32) = UTType.identifier.getter();
    *(v39 + 40) = v40;
    (*(v16 + 8))(v18, v15);
    return v39;
  }
}

id sub_10080236C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLUSDZItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLUSDZItem()
{
  result = qword_101A01E40;
  if (!qword_101A01E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10080244C@<X0>(uint64_t *a1@<X8>)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v1)
  {
  }

  v4 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();

  *a1 = v4;
  return result;
}

uint64_t sub_1008024CC()
{
  result = dispatch thunk of CREncoder.valueContainer()();
  if (!v0)
  {
    dispatch thunk of CREncoder.CRValueContainer.encode(_:)();
  }

  return result;
}

uint64_t sub_100802570(uint64_t a1, uint64_t a2)
{
  v4 = sub_100802830();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for Int);
}

void sub_1008025C4(uint64_t a1@<X8>)
{
  v2 = 0x2000000000000;
  v3 = 0x2000400000000;
  if (*v1)
  {
    v4 = 0x3000400000000;
  }

  else
  {
    v4 = 0x1000000000000;
  }

  if (*v1)
  {
    v3 = 0x3000400000000;
    v2 = 0x3000400000000;
  }

  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

void sub_100802624(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CRLUSDZAssetDataStruct(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (**(*v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) == &off_101A2E658)
  {
    swift_beginAccess();

    sub_1005B981C(&unk_101A2EF00);
    CRRegister.wrappedValue.getter();
    swift_endAccess();

    sub_1008038F0(v5, a1, type metadata accessor for CRLAssetData);
    sub_100803820(v5, type metadata accessor for CRLUSDZAssetDataStruct);
    v6 = type metadata accessor for CRLAssetData();
    (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100802830()
{
  result = qword_101A01EB0;
  if (!qword_101A01EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01EB0);
  }

  return result;
}

uint64_t sub_100802C18()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

void sub_100802CE4()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = &selRef_geometryWithMask;
  if (Strong)
  {

    v4 = objc_opt_self();
    v5 = [v4 _atomicIncrementAssertCount];
    *&v124.x = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v124);
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
    *(inited + 144) = v16;
    *(inited + 152) = 342;
    x = v124.x;
    *(inited + 216) = v14;
    *(inited + 224) = v15;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 192) = x;
    v18 = v6;
    v19 = *&x;
    v20 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v21 = static os_log_type_t.error.getter();
    sub_100005404(v12, &_mh_execute_header, v21, "Should not scale down size on media info with a parent!", 55, 2, _swiftEmptyArrayStorage);

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
    v26 = String._bridgeToObjectiveC()();

    v3 = &selRef_geometryWithMask;
    [v4 handleFailureInFunction:v24 file:v25 lineNumber:342 isFatal:0 format:v26 args:v23];

    [v4 logFullBacktrace];
  }

  v27 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v28 = *(**(v1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

  v30 = v28(v29);

  [v30 boundsBeforeRotation];
  v32 = v31;
  v34 = v33;

  v35 = sub_10011ECB4();
  v121 = v36;
  v122 = v35;
  v38 = v37;
  v120 = v39;
  sub_1007FE430(&v124);
  if ((v127 & 1) != 0 || (v41 = v125, v40 = v126, v42 = v124, v129.origin.x = 0.0, v129.origin.y = 0.0, v129.size.width = 0.0, v129.size.height = 0.0, v128.origin = v124, v128.size.width = v125, v128.size.height = v126, CGRectEqualToRect(v128, v129)) || (v43 = *(**(v1 + v27) + 296), v44 = , v45 = v43(v44), , [v45 boundsBeforeRotation], v114 = v40, v47 = v46, v116 = v48, v117 = v46, v49 = v32, v51 = v50, v118 = v49, v119 = v34, v52 = v48, v54 = v53, v115 = v53, v45, sub_100121740(v47, v51, v52, v54, v42.x, v42.y, v41, v114), v56 = v55, v58 = v57, v60 = v59, v62 = v61, sub_100121F30(0, v59, v61, v122, v38, v121, v120), v64 = v63 / v60, v65 = sub_100120414(v56, v58, v60, v62), sub_100121FD0(v117, v51, v116, v115, v65, v66, v64), v68 = v67, v70 = v69, v72 = v71, v74 = v73, v75 = sub_100120414(v122, v38, v121, v120), v77 = sub_10011F31C(v75, v76, v65), v78 = sub_10011F334(v68, v70, v77), (v80 = objc_msgSend(objc_allocWithZone(CRLCanvasInfoGeometry), "initWithPosition:size:", v78, v79, v72, v74)) == 0))
  {
    v90 = objc_opt_self();
    v91 = [v90 _atomicIncrementAssertCount];
    v123 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v123);
    StaticString.description.getter();
    v92 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v93 = String._bridgeToObjectiveC()();

    v94 = [v93 lastPathComponent];

    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v98 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    v99 = swift_initStackObject();
    *(v99 + 16) = xmmword_10146CA70;
    *(v99 + 56) = &type metadata for Int32;
    *(v99 + 64) = &protocol witness table for Int32;
    *(v99 + 32) = v91;
    v100 = sub_100006370(0, &qword_1019F4D30);
    *(v99 + 96) = v100;
    v101 = sub_1005CF04C();
    *(v99 + 104) = v101;
    *(v99 + 72) = v92;
    *(v99 + 136) = &type metadata for String;
    v102 = sub_1000053B0();
    *(v99 + 112) = v95;
    *(v99 + 120) = v97;
    *(v99 + 176) = &type metadata for UInt;
    *(v99 + 144) = v102;
    *(v99 + 152) = 347;
    v103 = v123;
    *(v99 + 216) = v100;
    *(v99 + 224) = v101;
    *(v99 + 184) = &protocol witness table for UInt;
    *(v99 + 192) = v103;
    v104 = v92;
    v105 = v103;
    v106 = static os_log_type_t.error.getter();
    sub_100005404(v98, &_mh_execute_header, v106, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v99);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v107 = static os_log_type_t.error.getter();
    sub_100005404(v98, &_mh_execute_header, v107, "Unable to compute info geometry.", 32, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v108 = swift_allocObject();
    v108[2] = 8;
    v108[3] = 0;
    v108[4] = 0;
    v108[5] = 0;
    v109 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v110 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v111 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v112 = String._bridgeToObjectiveC()();

    [v90 v3[112]];
  }

  else
  {
    v81 = v80;
    v82 = [v80 boundsBeforeRotation];
    v85 = v84 < v118 || v83 < v119;
    if (v85 && (sub_1011255D4(v82) & 1) != 0 && (v86 = *(**(v1 + v27) + 296), v87 = , v88 = v86(v87), , sub_100006370(0, &unk_1019F5730), v89 = static NSObject.== infix(_:_:)(), v88, (v89 & 1) == 0))
    {
      v113 = *(**(v1 + v27) + 304);

      v113(v81);
    }

    else
    {
    }
  }
}

uint64_t sub_10080376C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CRLUSDZItemCRDTData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1008037B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A01EE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100803820(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100803880(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F6990);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1008038F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_100803958(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  if (a2)
  {
    v4 = _convertErrorToNSError(_:)();
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v5 = static OS_os_log.crlError;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v7 = [v4 localizedDescription];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v8;
    *(inited + 40) = v10;
    v11 = static os_log_type_t.default.getter();
    sub_100005404(v5, &_mh_execute_header, v11, "Error performing encryption repair. Error: %@", 45, 2, inited);
    swift_setDeallocating();
    sub_100005070(inited + 32);
    v12 = v4;
    a3(v4);
  }

  else
  {
    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v13 = static OS_os_log.crlDefault;
    v14 = static os_log_type_t.default.getter();
    sub_100005404(v13, &_mh_execute_header, v14, "Successfully repaired encryption.", 33, 2, _swiftEmptyArrayStorage);
    a3(0);
  }
}

id sub_100803B58()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2)
    {
      v3 = [v2 aa_altDSID];
      if (v3)
      {
        v4 = v3;
        v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v5;
      }
    }

    else
    {
      v6 = objc_opt_self();
      v7 = [v6 _atomicIncrementAssertCount];
      v29 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v29);
      StaticString.description.getter();
      v8 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v9 = String._bridgeToObjectiveC()();

      v10 = [v9 lastPathComponent];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v14 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v7;
      v16 = sub_1005CF000();
      *(inited + 96) = v16;
      v17 = sub_1005CF04C();
      *(inited + 104) = v17;
      *(inited + 72) = v8;
      *(inited + 136) = &type metadata for String;
      v18 = sub_1000053B0();
      *(inited + 112) = v11;
      *(inited + 120) = v13;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v18;
      *(inited + 152) = 37;
      v19 = v29;
      *(inited + 216) = v16;
      *(inited + 224) = v17;
      *(inited + 192) = v19;
      v20 = v8;
      v21 = v19;
      v22 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v23 = static os_log_type_t.error.getter();
      sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v24 = swift_allocObject();
      v24[2] = 8;
      v24[3] = 0;
      v24[4] = 0;
      v24[5] = 0;
      v25 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v26 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v27 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v28 = String._bridgeToObjectiveC()();

      [v6 handleFailureInFunction:v26 file:v27 lineNumber:37 isFatal:0 format:v28 args:v25];
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100803F78()
{
  v0 = objc_allocWithZone(CDPUIDeviceToDeviceEncryptionFlowContext);
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithAltDSID:v1];

  v3 = [objc_opt_self() mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v2 setFeatureName:v6];

  [v2 setDeviceToDeviceEncryptionUpgradeType:0];
  [v2 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
  [v2 setSecurityUpgradeContext:AKSecurityUpgradeContextGeneric];
  return v2;
}

void sub_1008040F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v6 = static OS_os_log.crlDefault;
  v7 = static os_log_type_t.default.getter();
  sub_100005404(v6, &_mh_execute_header, v7, "Attempting to repair encryption settings.", 41, 2, _swiftEmptyArrayStorage);
  v8 = [objc_allocWithZone(CDPUIDeviceToDeviceEncryptionHelper) initWithContext:a1];
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v11[4] = sub_100804668;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = *"";
  v11[2] = sub_1008E899C;
  v11[3] = &unk_101888288;
  v10 = _Block_copy(v11);

  [v8 performDeviceToDeviceEncryptionStateRepairWithCompletion:v10];
  _Block_release(v10);
}

void sub_100804264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100803B58();
  if (v6)
  {
    v30 = sub_100803F78();

    [v30 setPresentingViewController:a1];
    sub_1008040F0(v30, a2, a3);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = [v7 _atomicIncrementAssertCount];
    v31 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v31);
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
    v17 = sub_1005CF000();
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
    *(inited + 152) = 27;
    v20 = v31;
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

    [v7 handleFailureInFunction:v27 file:v28 lineNumber:27 isFatal:0 format:v29 args:v26];
  }
}

unint64_t sub_100804734()
{
  result = qword_101A01FC8;
  if (!qword_101A01FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01FC8);
  }

  return result;
}

unint64_t sub_10080478C()
{
  result = qword_101A01FD0;
  if (!qword_101A01FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01FD0);
  }

  return result;
}

unint64_t sub_1008047E8()
{
  result = qword_101A01FD8;
  if (!qword_101A01FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A01FD8);
  }

  return result;
}

id sub_10080483C(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v3 manager];
  if (v6)
  {
    v7 = v6;
    v8 = [v3 containerView];
    isa = [v8 constraints];

    if (!isa)
    {
      sub_100078784();
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    v10 = objc_opt_self();
    [v10 deactivateConstraints:isa];

    sub_1005B981C(&qword_101A02060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146D2A0;
    strcpy((inited + 32), "containerView");
    *(inited + 46) = -4864;
    *(inited + 48) = [v3 containerView];
    *(inited + 56) = 0x77656956647568;
    *(inited + 64) = 0xE700000000000000;
    *(inited + 72) = [v3 hudView];
    *(inited + 80) = 0x6569566C6562616CLL;
    *(inited + 88) = 0xE900000000000077;
    *(inited + 96) = a1;
    strcpy((inited + 104), "accessoryView");
    *(inited + 118) = -4864;
    *(inited + 120) = a2;
    v12 = a1;
    v13 = a2;
    v109 = sub_100BD4A34(inited);
    swift_setDeallocating();
    sub_1005B981C(&qword_101A02068);
    swift_arrayDestroy();
    [v7 maxTextWidth];
    v15 = v14;
    v16 = [v12 text];
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = v16;
    result = [v12 font];
    if (!result)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v19 = result;
    sub_100F16A40(result, v15);
    v21 = v20;

    if (v21 >= 4)
    {
      v22 = v7;
      [v7 maxTextWidth];
      goto LABEL_8;
    }

    if (v21 >= 2)
    {
      v22 = v7;
      [v7 maxTextWidth];
      if (v21 != 2)
      {
LABEL_8:
        [v22 maxTextWidth];
        v24 = v23 + 22.0 + 12.0;
        v25 = v13;
        [v13 setHidden:1];
        v26 = [v12 text];
        v27 = 10.0;
        v28 = 0.0;
        v29 = 18.0;
        if (v26)
        {
          v30 = v26;
          result = [v12 font];
          if (!result)
          {
LABEL_36:
            __break(1u);
            return result;
          }

          v31 = result;
          sub_100F16A40(result, v24);
          v33 = v32;

          if (v33 >= 3)
          {
            [v12 setAdjustsFontSizeToFitWidth:1];
            v27 = 12.0;
            v29 = 38.0;
          }
        }

        goto LABEL_20;
      }

      v24 = v103;
      v27 = 12.0;
    }

    else
    {
LABEL_18:
      [v7 maxTextWidth];
      v24 = v36;
      v27 = 10.0;
    }

    v28 = 22.0;
    v29 = 18.0;
    v25 = v13;
LABEL_20:
    [v12 sizeThatFits:{v24, 1000.0}];
    v38 = v37;
    sub_1005B981C(&qword_101A02070);
    v39 = swift_initStackObject();
    *(v39 + 32) = 0x676E6964646170;
    *(v39 + 16) = xmmword_10146D2A0;
    *(v39 + 40) = 0xE700000000000000;
    if (qword_1019F2840 != -1)
    {
      swift_once();
    }

    v40 = *&qword_101AD8D88;
    v41 = objc_allocWithZone(NSNumber);
    *&v42 = v40;
    *(v39 + 48) = [v41 initWithFloat:v42];
    *(v39 + 56) = 0x676E6963617073;
    *(v39 + 64) = 0xE700000000000000;
    v43 = objc_allocWithZone(NSNumber);
    *&v44 = v27;
    *(v39 + 72) = [v43 initWithFloat:v44];
    *(v39 + 80) = 0x7464695774786574;
    *(v39 + 88) = 0xE900000000000068;
    v45 = objc_allocWithZone(NSNumber);
    *&v46 = v38;
    *(v39 + 96) = [v45 initWithFloat:v46];
    *(v39 + 104) = 0xD000000000000012;
    *(v39 + 112) = 0x800000010156A8F0;
    v47 = objc_allocWithZone(NSNumber);
    *&v48 = v28;
    *(v39 + 120) = [v47 initWithFloat:v48];
    v49 = sub_100BD4A48(v39);
    swift_setDeallocating();
    sub_1005B981C(&qword_101A02078);
    swift_arrayDestroy();
    v50 = String._bridgeToObjectiveC()();
    sub_1010A7C7C(v49);
    v51 = Dictionary._bridgeToObjectiveC()().super.isa;

    sub_1010A7C90(v109);
    v52 = Dictionary._bridgeToObjectiveC()().super.isa;

    v53 = [v10 constraintsWithVisualFormat:v50 options:0 metrics:v51 views:v52];

    sub_100078784();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100798D30(v54);
    v55 = [v3 hudView];
    [v7 maxHUDWidth];
    v57 = v56;
    v58 = v55;
    v59 = [v10 constraintWithItem:v58 attribute:7 relatedBy:-1 toItem:0 attribute:7 multiplier:1.0 constant:v57];

    v60 = v59;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v105 = v60;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v61 = [v3 hudView];
    v62 = [v61 trailingAnchor];

    v63 = [v3 containerView];
    v64 = [v63 trailingAnchor];

    v65 = [v62 constraintGreaterThanOrEqualToAnchor:v64];
    v66 = v65;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v104 = v66;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v67 = [v3 hudView];
    v68 = v12;
    v108 = [v10 constraintWithItem:v68 attribute:10 relatedBy:0 toItem:v67 attribute:10 multiplier:1.0 constant:0.0];

    v69 = [v3 hudView];
    v70 = v25;
    v107 = [v10 constraintWithItem:v70 attribute:10 relatedBy:0 toItem:v69 attribute:10 multiplier:1.0 constant:0.0];

    v106 = [v10 constraintWithItem:v70 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:22.0];
    v71 = [v3 hudView];
    v72 = [v10 constraintWithItem:v71 attribute:8 relatedBy:0 toItem:v70 attribute:8 multiplier:1.0 constant:v29];

    v73 = [v3 hudView];
    v74 = v68;
    v75 = [v10 constraintWithItem:v74 attribute:8 relatedBy:-1 toItem:v73 attribute:8 multiplier:1.0 constant:0.0];

    v76 = [v3 heightConstraint];
    if (!v76)
    {
      v77 = [v3 showing];
      v78 = 56.0;
      if (!v77)
      {
        v78 = 0.0;
      }

      [v3 setHeight:v78];
      v79 = [v3 containerView];
      [v3 height];
      v81 = v80;
      v82 = v79;
      v83 = [v10 constraintWithItem:v82 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v81];

      [v3 setHeightConstraint:v83];
      v76 = v83;
    }

    v84 = [v3 containerView];
    v85 = [v3 hudView];
    v86 = v84;
    v87 = [v10 constraintWithItem:v86 attribute:7 relatedBy:0 toItem:v85 attribute:7 multiplier:1.0 constant:0.0];

    v88 = [v3 hudView];
    v89 = [v88 topAnchor];

    v90 = [v3 containerView];
    v91 = [v90 topAnchor];

    v92 = [v89 constraintEqualToAnchor:v91];
    sub_1005B981C(&unk_1019F4D60);
    v93 = swift_initStackObject();
    *(v93 + 16) = xmmword_10147F420;
    *(v93 + 32) = v108;
    *(v93 + 40) = v107;
    *(v93 + 48) = v106;
    *(v93 + 56) = v72;
    v94 = v108;
    v95 = v107;
    v96 = v106;
    v97 = v72;
    result = [v3 heightConstraint];
    if (result)
    {
      v98 = result;

      *(v93 + 64) = v98;
      *(v93 + 72) = v75;
      *(v93 + 80) = v87;
      *(v93 + 88) = v92;
      v99 = v75;
      v100 = v87;
      v101 = v92;
      sub_100798D30(v93);
      v102 = Array._bridgeToObjectiveC()().super.isa;

      [v10 activateConstraints:v102];

      return swift_unknownObjectRelease();
    }

    __break(1u);
    goto LABEL_35;
  }

  if (qword_1019F20C8 != -1)
  {
    swift_once();
  }

  v34 = static OS_os_log.crlStatusHUD;
  v35 = static os_log_type_t.error.getter();

  return sub_100005404(v34, &_mh_execute_header, v35, "Trying to layout views without a manager", 40, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100805AC0()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_timeStartedShowing;
  swift_beginAccess();
  sub_10005F954(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100806B10(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  Date.timeIntervalSinceNow.getter();
  return (*(v6 + 8))(v8, v5);
}

void sub_100805D40()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = aBlock - v11;
  if (v0[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_showing] == 1 && v0[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_shouldAutoHide] == 1)
  {
    v13 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer;
    [*&v0[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer] invalidate];
    v14 = *&v0[v13];
    *&v0[v13] = 0;

    v15 = sub_1008066F8();
    v16 = (*((swift_isaMask & *v0) + 0x2E0))();
    sub_10080483C(v15, v16);

    Date.init()();
    (*(v3 + 56))(v12, 0, 1, v2);
    v17 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_timeStartedShowing;
    swift_beginAccess();
    sub_100015CDC(v12, &v1[v17]);
    swift_endAccess();
    sub_10005F954(&v1[v17], v8);
    if ((*(v3 + 48))(v8, 1, v2) == 1)
    {
      sub_100806B10(v8);
      v18 = 0.0;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      Date.timeIntervalSinceNow.getter();
      v20 = fabs(v19);
      (*(v3 + 8))(v5, v2);
      v21 = *&v1[OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_maximumShowDuration];
      v18 = 0.0;
      if (v20 < v21)
      {
        v18 = v21 - v20;
      }
    }

    v22 = swift_allocObject();
    *(v22 + 16) = v1;
    aBlock[4] = sub_100806B78;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_101888300;
    v23 = _Block_copy(aBlock);
    v24 = objc_opt_self();
    v25 = v1;
    v26 = [v24 timerWithTimeInterval:0 repeats:v23 block:v18];
    _Block_release(v23);

    v27 = *&v1[v13];
    *&v1[v13] = v26;
    v28 = v26;

    if (v28)
    {
      v29 = [objc_opt_self() mainRunLoop];
      [v29 addTimer:v28 forMode:NSRunLoopCommonModes];
    }
  }
}

void sub_100806158(uint64_t a1, uint64_t a2)
{
  sub_100B08A30(0);
  v3 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer;
  [*(a2 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hideTimer) invalidate];
  v4 = *(a2 + v3);
  *(a2 + v3) = 0;
}

void sub_1008064EC(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_setupDone) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_setupDone) = 1;
    sub_10105B418(a1);
    v2 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_contentView;
    v3 = *(v1 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_contentView);
    v4 = sub_1008066F8();
    [v3 addSubview:v4];

    v5 = *((swift_isaMask & *v1) + 0x2E0);
    v6 = *(v1 + v2);
    v7 = v5();
    [v6 addSubview:v7];

    [*(v1 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_containerView) addSubview:*(v1 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi_hudView)];
    v8 = *(v1 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label);
    v9 = v5();
    sub_10080483C(v8, v9);
  }
}

id sub_1008066F8()
{
  v1 = OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label;
  v2 = *(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform41CRLCollaboratorBaseStatusHUDController_mi____lazy_storage____label);
  }

  else
  {
    (*((swift_isaMask & *v0) + 0x2D8))();
    v4 = sub_10109C74C();

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100806898()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCollaboratorBaseStatusHUDController_mi();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCollaboratorBaseStatusHUDController_mi()
{
  result = qword_101A02050;
  if (!qword_101A02050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100806A14()
{
  sub_10000D990();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100806B10(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A0A320);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100807040()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
  swift_beginAccess();
  sub_10005F954(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CAAC(v4, &qword_101A0A320);
  }

  (*(v6 + 32))(v8, v4, v5);
  Date.timeIntervalSinceNow.getter();
  return (*(v6 + 8))(v8, v5);
}

void sub_1008072D0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1005B981C(&qword_101A0A320);
  __chkstk_darwin(v5 - 8);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = aBlock - v10;
  if (v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_showing] == 1 && v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_shouldAutoHide] == 1)
  {
    v12 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer;
    [*&v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer] invalidate];
    v13 = *&v0[v12];
    *&v0[v12] = 0;

    Date.init()();
    (*(v2 + 56))(v11, 0, 1, v1);
    v14 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_timeStartedShowing;
    swift_beginAccess();
    sub_100015CDC(v11, &v0[v14]);
    swift_endAccess();
    sub_10005F954(&v0[v14], v7);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_10000CAAC(v7, &qword_101A0A320);
      v15 = 0.0;
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      Date.timeIntervalSinceNow.getter();
      v17 = fabs(v16);
      (*(v2 + 8))(v4, v1);
      v18 = *&v0[OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_maximumShowDuration];
      v19 = v17 < v18;
      v20 = v18 - v17;
      if (v19)
      {
        v15 = v20;
      }

      else
      {
        v15 = 0.0;
      }
    }

    v21 = objc_opt_self();
    v22 = swift_allocObject();
    *(v22 + 16) = v0;
    aBlock[4] = sub_100809CE0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_10068B39C;
    aBlock[3] = &unk_1018883E0;
    v23 = _Block_copy(aBlock);
    v24 = v0;

    v25 = [v21 scheduledTimerWithTimeInterval:0 repeats:v23 block:v15];
    _Block_release(v23);
    v26 = *&v0[v12];
    *&v0[v12] = v25;
  }
}

void sub_100807638(uint64_t a1, uint64_t a2)
{
  sub_100B08A58(0);
  v3 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer;
  [*(a2 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hideTimer) invalidate];
  v4 = *(a2 + v3);
  *(a2 + v3) = 0;
}

uint64_t sub_100807914()
{
  v1 = sub_1005B981C(&qword_101A0DE80);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - v2;
  v4 = type metadata accessor for PersonNameComponents();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo);
  if ((*(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo + 8) & 1) == 0)
  {
    v8;
    sub_1007D6EB8(v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_10000CAAC(v3, &qword_101A0DE80);
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v19 = objc_opt_self();
      isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
      v21 = [v19 localizedStringFromPersonNameComponents:isa style:1 options:0];

      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      (*(v5 + 8))(v7, v4);
      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = v22 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        goto LABEL_16;
      }
    }

    v22 = sub_1007D7988();
    v24 = v26;
LABEL_16:
    v27 = [objc_opt_self() mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1005B981C(&qword_1019F54E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10146C6B0;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_1000053B0();
    *(v31 + 32) = v22;
    *(v31 + 40) = v24;
    v32 = String.init(format:_:)();

    sub_100809CD4(v8, 0);
    return v32;
  }

  v9 = *(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow);
  v10 = [objc_opt_self() mainBundle];
  v11 = "UDController.swift";
  if (v9)
  {
    v11 = " we don't need the base case.";
    v12 = "d following along with you.";
  }

  else
  {
    v12 = "d following along with you.";
  }

  if (v9)
  {
    v13 = 0xD0000000000000BFLL;
  }

  else
  {
    v13 = 0xD0000000000000BDLL;
  }

  v33 = v12 | 0x8000000000000000;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v14._object = (v11 | 0x8000000000000000);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v10, v15, *&v13);

  sub_1005B981C(&qword_1019F54E0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10146C6B0;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v8;
  v17 = static String.localizedStringWithFormat(_:_:)();

  return v17;
}

id sub_100807DB8()
{
  v0 = [objc_opt_self() labelColor];
  v1 = [objc_opt_self() systemFontOfSize:13.0 weight:UIFontWeightRegular];
  sub_1005B981C(&unk_101A11100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = NSFontAttributeName;
  v3 = sub_100006370(0, &qword_101A0DE60);
  *(inited + 40) = v1;
  *(inited + 64) = v3;
  *(inited + 72) = NSForegroundColorAttributeName;
  *(inited + 104) = sub_100006370(0, &qword_101A11110);
  *(inited + 80) = v0;
  v4 = NSFontAttributeName;
  v5 = v1;
  v6 = NSForegroundColorAttributeName;
  v7 = v0;
  sub_10006E310(inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_101A0DE70);
  swift_arrayDestroy();
  sub_100807914();
  v8 = objc_allocWithZone(NSAttributedString);
  v9 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1005CAB2C();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = [v8 initWithString:v9 attributes:isa];

  return v11;
}

void sub_100807FC4()
{
  v1 = v0;
  v121 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView;
  v2 = [*(v0 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_contentView) subviews];
  sub_100006370(0, &qword_1019F6D00);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v6 removeFromSuperview];

      ++v5;
      if (v8 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo + 8))
  {
    v9 = String._bridgeToObjectiveC()();
    v10 = objc_opt_self();
    v11 = [v10 colorNamed:v9];

    if (!v11)
    {
      __break(1u);
      goto LABEL_42;
    }

    v12 = [v10 systemGrayColor];
    v13 = v12;
    if (*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_isStartFollow))
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    v15 = [objc_opt_self() configurationWithHierarchicalColor:v14];
    v16 = String._bridgeToObjectiveC()();
    v17 = [objc_opt_self() imageNamed:v16];

    if (v17)
    {
      v18 = [v17 imageWithConfiguration:v15];
    }

    else
    {
      v18 = 0;
    }

    v27 = [objc_allocWithZone(UIImageView) initWithImage:v18];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v27 setContentMode:1];
    v28 = v121;
    v29 = *(v1 + v121);
    [v29 addSubview:v27];
  }

  else
  {
    v19 = *(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_followingParticipantInfo);
    v20 = objc_allocWithZone(CNAvatarViewController);
    v21 = v19;
    v22 = [v20 init];
    v23 = *&v21[OBJC_IVAR____TtC8Freeform27CRLCollaborationParticipant_cnContact];
    if (v23)
    {
      sub_1005B981C(&unk_1019F4D60);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_101465920;
      *(v24 + 32) = v23;
      sub_100006370(0, &qword_101A00EC0);
      v25 = v23;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v22 setContacts:isa];
    }

    v27 = [v22 view];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v28 = v121;
    [*(v1 + v121) addSubview:v27];

    sub_100809CD4(v19, 0);
  }

  v30 = v27;
  v31 = [v30 leadingAnchor];
  v32 = [*(v1 + v28) leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:8.0];

  [v33 setActive:1];
  v34 = [v30 widthAnchor];
  v35 = [v34 constraintEqualToConstant:26.0];

  [v35 setActive:1];
  v36 = [v30 heightAnchor];
  v37 = [v36 constraintEqualToConstant:26.0];

  [v37 setActive:1];
  v38 = [v30 centerYAnchor];
  v39 = [*(v1 + v28) centerYAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];

  [v40 setActive:1];
  v41 = [objc_allocWithZone(UIStackView) init];
  [v41 setAlignment:1];
  [v41 setAxis:1];
  [v41 setDistribution:4];
  [v41 setSpacing:3.0];
  v42 = v41;
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*(v1 + v28) addSubview:v42];
  v43 = sub_100808F98();
  v44 = objc_opt_self();
  v45 = v43;
  v46 = [v44 labelColor];
  [v45 setTextColor:v46];

  [v45 setNumberOfLines:2];
  v47 = sub_100807DB8();
  v119 = v45;
  v120 = v30;
  if (v47)
  {
    v48 = v47;
  }

  else
  {
    v118 = objc_opt_self();
    v49 = [v118 _atomicIncrementAssertCount];
    v122 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v122);
    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    v52 = [v51 lastPathComponent];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v56 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v49;
    v58 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v58;
    v59 = sub_1005CF04C();
    *(inited + 104) = v59;
    *(inited + 72) = v50;
    *(inited + 136) = &type metadata for String;
    v60 = sub_1000053B0();
    *(inited + 112) = v53;
    *(inited + 120) = v55;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v60;
    *(inited + 152) = 270;
    v61 = v122;
    *(inited + 216) = v58;
    *(inited + 224) = v59;
    *(inited + 192) = v61;
    v62 = v50;
    v63 = v61;
    v64 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v64, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v65 = static os_log_type_t.error.getter();
    sub_100005404(v56, &_mh_execute_header, v65, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v66 = swift_allocObject();
    v66[2] = 8;
    v66[3] = 0;
    v66[4] = 0;
    v66[5] = 0;
    v67 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v68 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v69 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v70 = String._bridgeToObjectiveC()();

    [v118 handleFailureInFunction:v68 file:v69 lineNumber:270 isFatal:0 format:v70 args:v67];

    v71 = objc_allocWithZone(NSAttributedString);
    v72 = String._bridgeToObjectiveC()();
    v48 = [v71 initWithString:v72];

    v45 = v119;
    v30 = v120;
  }

  [v45 setAttributedText:v48];

  v73 = [v42 leadingAnchor];
  v74 = [v30 trailingAnchor];
  v75 = [v73 constraintEqualToAnchor:v74 constant:8.0];

  [v75 setActive:1];
  v76 = [v42 trailingAnchor];
  v77 = [*(v1 + v121) trailingAnchor];
  v78 = [v76 constraintEqualToAnchor:v77 constant:-20.0];

  [v78 setActive:1];
  v79 = [v42 topAnchor];
  v80 = [*(v1 + v121) topAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];

  [v81 setActive:1];
  v82 = [v42 bottomAnchor];

  v83 = [*(v1 + v121) bottomAnchor];
  v84 = [v82 constraintEqualToAnchor:v83];

  [v84 setActive:1];
  [v42 addArrangedSubview:v45];
  [v45 setTextAlignment:0];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v94 = (v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height);
    goto LABEL_37;
  }

  [Strong maxTextWidth];
  v87 = v86;
  swift_unknownObjectRelease();
  v88 = [v45 text];
  if (!v88)
  {
    v94 = (v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height);
LABEL_39:
    v95 = 40.0;
    v96 = 0x404C000000000000;
    goto LABEL_40;
  }

  v89 = v88;
  v90 = [v45 font];
  if (v90)
  {
    v91 = v90;
    sub_100F16A40(v90, v87);
    v93 = v92;

    v94 = (v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_height);
    if (v93 == 1)
    {
      goto LABEL_39;
    }

LABEL_37:
    v95 = 50.0;
    v96 = 0x4050800000000000;
LABEL_40:
    *v94 = v96;
    v97 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView;
    v98 = [*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_hudView) heightAnchor];
    v99 = [v98 constraintEqualToConstant:v95];

    [v99 setActive:1];
    v100 = [*(v1 + v97) leadingAnchor];
    v101 = OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView;
    v102 = [*(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_containerView) leadingAnchor];
    v103 = [v100 constraintEqualToAnchor:v102];

    [v103 setActive:1];
    v104 = [*(v1 + v97) topAnchor];
    v105 = [*(v1 + v101) topAnchor];
    v106 = [v104 constraintEqualToAnchor:v105];

    [v106 setActive:1];
    v107 = [*(v1 + v97) trailingAnchor];
    v108 = [*(v1 + v101) trailingAnchor];
    v109 = [v107 constraintEqualToAnchor:v108];

    [v109 setActive:1];
    v110 = [*(v1 + v101) heightAnchor];
    v111 = [v110 constraintEqualToConstant:*v94];

    [v111 setActive:1];
    v112 = *(v1 + v101);
    v113 = *v94;
    v114 = objc_opt_self();
    v115 = v112;
    v116 = [v114 constraintWithItem:v115 attribute:8 relatedBy:0 toItem:0 attribute:8 multiplier:1.0 constant:v113];

    v117 = *(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint);
    *(v1 + OBJC_IVAR____TtC8Freeform39CRLTransientStartEndFollowHUDController_heightConstraint) = v116;

    return;
  }

LABEL_42:
  __break(1u);
}