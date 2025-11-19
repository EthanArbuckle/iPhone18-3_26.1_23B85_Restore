void sub_100D71984()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v30 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v12 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v12)
  {
    goto LABEL_13;
  }

  if (!*(v12 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    sub_100960E34();
    if (v13)
    {
      v31 = [v13 selectedTextRange];
      if (v31)
      {
        sub_100960E34();
        if (!v14)
        {
LABEL_11:
          sub_10093DDE0(0, 1);

          return;
        }

        v15 = *(*(v0 + v11) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
        if (!v15)
        {
          goto LABEL_14;
        }

        v16 = *&v15[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
        if (!v16)
        {
LABEL_15:
          __break(1u);
          return;
        }

        v17 = v14;
        (*(*v16 + 896))();
        sub_1005E0A78(&v7[*(v5 + 20)], v10);
        v30 = v17;
        swift_unknownObjectRetain();
        v18 = v15;
        sub_1005E0ADC(v7, type metadata accessor for CRLWPShapeItemCRDTData);
        (*(v2 + 16))(v4, v10, v1);
        sub_1005E0ADC(v10, type metadata accessor for CRLWPStorageCRDTData);
        v19 = CRAttributedString.attributedString.getter();
        (*(v2 + 8))(v4, v1);
        v20 = [v19 length];

        v21 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:v20 caretAffinity:0];
        v22 = *&v31[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v23 = *&v21[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        if (v23 >= v22)
        {
          v24 = v21;
          v25 = type metadata accessor for CRLTextRange();
          v26 = objc_allocWithZone(v25);
          v27 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
          *&v26[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
          *&v26[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
          v28 = &v26[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          *v28 = v22;
          *(v28 + 1) = v23;
          *&v26[v27] = 0;
          v32.receiver = v26;
          v32.super_class = v25;
          v29 = objc_msgSendSuper2(&v32, "init");

          [v30 setSelectedTextRange:v29];
          swift_unknownObjectRelease();

          goto LABEL_11;
        }

        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

id sub_100D71DF4()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v1)
  {
    if (!*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      return [*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) moveToEndOfParagraph:0];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100D7208C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong textInputResponder];

    if (v3)
    {
      if (*&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
      {
        v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
        v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
        v5 = *&v3[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
        if (v5)
        {
          [v5 selectionWillChange:v3];
        }

        v3[v4] = 0;
      }
    }
  }

  sub_100960E34();
  if (v6)
  {
    v7 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v6;
    swift_unknownObjectRetain();
    v9 = v7;
    v10 = sub_100D7320C(v9);

    [v8 setSelectedTextRange:v10];
    swift_unknownObjectRelease();
  }

  sub_10093DDE0(0, 0);
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v16 = [v11 textInputResponder];

    v13 = v16;
    if (v16)
    {
      if (*&v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
      {
        v14 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
        v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
        v15 = *&v16[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
        if (v15)
        {
          [v15 selectionDidChange:v16];
          v13 = v16;
        }

        v13[v14] = 0;
      }
    }
  }
}

uint64_t sub_100D7228C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1005E09AC(v9);
}

uint64_t sub_100D72388(uint64_t result, SEL *a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v3)
  {
    if (!*(v3 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v5 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
      sub_100601584(result, v14);
      v6 = v15;
      if (v15)
      {
        v7 = sub_100020E58(v14, v15);
        v8 = *(v6 - 8);
        __chkstk_darwin(v7);
        v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v8 + 16))(v10);
        v11 = v5;
        v12 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v8 + 8))(v10, v6);
        sub_100005070(v14);
      }

      else
      {
        v13 = v5;
        v12 = 0;
      }

      [v5 *a2];

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100D72560(uint64_t a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
  sub_100601584(a1, v15);
  v5 = v16;
  if (v16)
  {
    v6 = sub_100020E58(v15, v16);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = v4;
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_100005070(v15);
  }

  else
  {
    v13 = v4;
    v12 = 0;
  }

  [v4 *a2];

  return swift_unknownObjectRelease();
}

uint64_t sub_100D726E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  return sub_1005E09AC(v4);
}

void sub_100D72744(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for CRLTextInputModifierKeyMask();
  if (qword_1019F1E60 != -1)
  {
    swift_once();
  }

  v4 = qword_101AD77E0;
  v5 = static NSObject.== infix(_:_:)();

  if (v5)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v6 = "moveUp:";
        goto LABEL_29;
      }

      if (a1 == 4)
      {
        v6 = "moveDown:";
        goto LABEL_29;
      }
    }

    else
    {
      if (a1 == 1)
      {
        v6 = "moveLeft:";
LABEL_29:

        [v2 v6];
        return;
      }

      if (a1 == 2)
      {
        v6 = "moveRight:";
        goto LABEL_29;
      }
    }

LABEL_102:
    type metadata accessor for CRLTextInputArrowKeyDirection(0);
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (qword_1019F1E68 != -1)
  {
    swift_once();
  }

  v7 = qword_101AD77E8;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    v9 = *(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v9)
    {
      if (*(v9 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v54 = type metadata accessor for CRLWPEditor();
          v53[0] = v1;
          v19 = v1;
          sub_10093DBD4(v53);
        }

        else
        {
          if (a1 != 4)
          {
            goto LABEL_102;
          }

          v54 = type metadata accessor for CRLWPEditor();
          v53[0] = v1;
          v24 = v1;
          sub_10093DBB0(v53);
        }
      }

      else if (a1 == 1)
      {
        v54 = type metadata accessor for CRLWPEditor();
        v53[0] = v1;
        v10 = v1;
        sub_10093DDBC(v53);
      }

      else
      {
        if (a1 != 2)
        {
          goto LABEL_102;
        }

        v54 = type metadata accessor for CRLWPEditor();
        v53[0] = v1;
        v23 = v1;
        sub_10093DD98(v53);
      }

      sub_1005E09AC(v53);
      return;
    }

    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (qword_1019F1E70 != -1)
  {
    swift_once();
  }

  v11 = qword_101AD77F0;
  v12 = static NSObject.== infix(_:_:)();

  if (v12)
  {
    v13 = *(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v13)
    {
      if (*(v13 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v6 = "moveToLeftEndOfLine:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v6 = "moveToRightEndOfLine:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v6 = "moveWordLeft:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v6 = "moveWordRight:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_98;
  }

  if (qword_1019F1E78 != -1)
  {
    swift_once();
  }

  v14 = qword_101AD77F8;
  v15 = static NSObject.== infix(_:_:)();

  if (v15)
  {
    goto LABEL_38;
  }

  if (qword_1019F1E80 != -1)
  {
    swift_once();
  }

  v16 = qword_101AD7800;
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
LABEL_38:
    v18 = *(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v18)
    {
      if (*(v18 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v6 = "moveToBeginningOfDocument:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v6 = "moveToEndOfDocument:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v6 = "moveToBeginningOfLine:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v6 = "moveToEndOfLine:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_99;
  }

  if (qword_1019F1E88 != -1)
  {
    swift_once();
  }

  v20 = qword_101AD7808;
  v21 = static NSObject.== infix(_:_:)();

  if (v21)
  {
    v22 = *(*&v1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v22)
    {
      if (*(v22 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v6 = "moveParagraphBackwardAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v6 = "moveParagraphForwardAndModifySelection:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v6 = "moveWordLeftAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v6 = "moveWordRightAndModifySelection:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

    goto LABEL_100;
  }

  if (qword_1019F1E90 != -1)
  {
    swift_once();
  }

  v25 = qword_101AD7810;
  v26 = static NSObject.== infix(_:_:)();

  if (v26)
  {
    goto LABEL_69;
  }

  if (qword_1019F1E98 != -1)
  {
    swift_once();
  }

  v27 = qword_101AD7818;
  v28 = static NSObject.== infix(_:_:)();

  if (v28)
  {
LABEL_69:
    v29 = *(*&v2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v29)
    {
      if (*(v29 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        return;
      }

      if (a1 > 2)
      {
        if (a1 == 3)
        {
          v6 = "moveToBeginningOfDocumentAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 4)
        {
          v6 = "moveToEndOfDocumentAndModifySelection:";
          goto LABEL_29;
        }
      }

      else
      {
        if (a1 == 1)
        {
          v6 = "moveToBeginningOfLineAndModifySelection:";
          goto LABEL_29;
        }

        if (a1 == 2)
        {
          v6 = "moveToEndOfLineAndModifySelection:";
          goto LABEL_29;
        }
      }

      goto LABEL_102;
    }

LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v30 = objc_opt_self();
  v31 = [v30 _atomicIncrementAssertCount];
  v53[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v53);
  StaticString.description.getter();
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v31;
  v40 = sub_1005CF000();
  *(inited + 96) = v40;
  v41 = sub_1005CF04C();
  *(inited + 104) = v41;
  *(inited + 72) = v32;
  *(inited + 136) = &type metadata for String;
  v42 = sub_1000053B0();
  *(inited + 112) = v35;
  *(inited + 120) = v37;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v42;
  *(inited + 152) = 617;
  v43 = v53[0];
  *(inited + 216) = v40;
  *(inited + 224) = v41;
  *(inited + 192) = v43;
  v44 = v32;
  v45 = v43;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v47 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v47, "Unhandled arrow key modifier.", 29, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v48 = swift_allocObject();
  v48[2] = 8;
  v48[3] = 0;
  v48[4] = 0;
  v48[5] = 0;
  v49 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v52 = String._bridgeToObjectiveC()();

  [v30 handleFailureInFunction:v50 file:v51 lineNumber:617 isFatal:0 format:v52 args:v49];
}

uint64_t sub_100D7320C(void *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  v3 = [a1 length];
  result = NSNotFound.getter();
  if (v3 >= result)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v7 = &v5[v6];
  if (__OFADD__(v6, v5))
  {
    __break(1u);
  }

  else if (v7 >= v6)
  {
    v8 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
    v9 = type metadata accessor for CRLTextRange();
    v10 = objc_allocWithZone(v9);
    v11 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
    *&v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
    v12 = &v10[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    *v12 = v6;
    *(v12 + 1) = v7;
    *&v10[v11] = v8;
    v14.receiver = v10;
    v14.super_class = v9;
    v13 = objc_msgSendSuper2(&v14, "init");

    return v13;
  }

  __break(1u);
  return result;
}

uint64_t TSContentLanguage.Models.Stroke.Line.init(color:width:pattern:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(result + 32);
  v5 = *(result + 16);
  *a3 = *result;
  *(a3 + 16) = v5;
  *(a3 + 32) = v4;
  *(a3 + 40) = a4;
  *(a3 + 48) = a2;
  return result;
}

uint64_t *TSContentLanguage.Models.Stroke.version.unsafeMutableAddressor()
{
  if (qword_1019F2388 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.version;
}

double TSContentLanguage.Models.Stroke.init(frame:)@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  return result;
}

__n128 TSContentLanguage.Models.Stroke.init(line:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48) | 0x40;
  result = *a1;
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v6;
  *(a2 + 32) = v2;
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  return result;
}

uint64_t TSContentLanguage.Models.Stroke.init<A>(object:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v14;
    v12 = v15;
  }

  else if (swift_dynamicCast())
  {
    v11 = v14;
    v12 = v15;
    v6 = v16;
    v7 = v17;
    v8 = v18;
    v9 = v19;
    v10 = v20 | 0x40;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v6 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0xFFFFFFFF00;
  }

  result = (*(*(a2 - 8) + 8))(a1, a2);
  *a3 = v11;
  *(a3 + 8) = v12;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  return result;
}

Swift::Int sub_100D73574()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D73638()
{
  String.hash(into:)();
}

Swift::Int sub_100D736E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D737A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D76C2C(*a1);
  *a2 = result;
  return result;
}

void sub_100D737D8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656D617266;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 1701734764;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100D73858()
{
  v1 = 0x656D617266;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 1701734764;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100D738D4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D76C2C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D738FC(uint64_t a1)
{
  v2 = sub_100D774B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D73938(uint64_t a1)
{
  v2 = sub_100D774B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Stroke.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100D76C78(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Stroke.encode(to:)(void *a1)
{
  v4 = sub_1005B981C(&qword_101A1ECA0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v13 = *(v1 + 48);
  if (v13 >> 6)
  {
    if (v13 >> 6 == 1)
    {
      v19 = v8;
      v25 = v13 & 0x3F;
      sub_100020E58(a1, a1[3]);
      sub_100D774B0();
      v18 = v2;
      dispatch thunk of Encoder.container<A>(keyedBy:)();
      v20 = v11;
      v21 = v12;
      v14 = *(v1 + 16);
      v23 = *(v1 + 32);
      v22 = v14;
      v24 = v25;
      v26 = 1;
      sub_100D77504();
      v15 = v18;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v15)
      {
        LOBYTE(v20) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
        if (qword_1019F2388 != -1)
        {
          swift_once();
        }

        v20 = static TSContentLanguage.Models.Stroke.version;
        v26 = 3;
        type metadata accessor for TSCLVersion();
        sub_100969804(&qword_101A00458);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      return (*(v19 + 8))(v6, v4);
    }

    else
    {
      sub_100020E58(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      sub_10002A948(&v20, *(&v22 + 1));
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      return sub_100005070(&v20);
    }
  }

  else
  {
    v19 = v8;
    sub_100020E58(a1, a1[3]);
    sub_100D774B0();
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v20 = v11;
    v21 = v12;
    v26 = 0;
    sub_100D77558();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v2)
    {
      LOBYTE(v20) = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F2388 != -1)
      {
        swift_once();
      }

      v20 = static TSContentLanguage.Models.Stroke.version;
      v26 = 3;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v19 + 8))(v10, v4);
  }
}

uint64_t sub_100D73E64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO6StrokeO21__derived_enum_equalsySbAG_AGtFZ_0(v5, v7) & 1;
}

uint64_t *TSContentLanguage.Models.Stroke.Line.version.unsafeMutableAddressor()
{
  if (qword_1019F2390 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.Line.version;
}

__n128 TSContentLanguage.Models.Stroke.Line.color.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v3;
  *(v1 + 32) = *(a1 + 32);
  return result;
}

Swift::Int sub_100D73FB8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D740A0()
{
  String.hash(into:)();
}

Swift::Int sub_100D74174()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D74258@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D775AC(*a1);
  *a2 = result;
  return result;
}

void sub_100D74288(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6C6F63;
  v5 = 0xE700000000000000;
  v6 = 0x6E726574746170;
  v7 = 0xEF7265696669746ELL;
  v8 = 0x6564695F65707974;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973726576;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6874646977;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100D7432C()
{
  v1 = *v0;
  v2 = 0x726F6C6F63;
  v3 = 0x6E726574746170;
  v4 = 0x6564695F65707974;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
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

unint64_t sub_100D743CC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D775AC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D743F4(uint64_t a1)
{
  v2 = sub_100D77ED8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D74430(uint64_t a1)
{
  v2 = sub_100D77ED8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Stroke.Line.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100D775F8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Stroke.Line.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1ECC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100D77ED8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v15 = *(v3 + 32);
  v12 = 0;
  sub_100B64688();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v13) = *(v3 + 48);
  v12 = 2;
  sub_100D77F2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v13) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F2390 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.Stroke.Line.version;
  v12 = 4;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Stroke.Line.isEquivalent(to:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(a1 + 32);
  if (v3 == 2)
  {
    if (v4 != 2)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*v1, *a1), vceqq_f64(*(v1 + 16), *(a1 + 16))), xmmword_10148D100)) & 0xF;
    if (v4 == 2 || v5 != 0)
    {
      goto LABEL_32;
    }

    if (v3)
    {
      v7 = 1650946675;
    }

    else
    {
      v7 = 13168;
    }

    if (v3)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    if (v4)
    {
      v9 = 1650946675;
    }

    else
    {
      v9 = 13168;
    }

    if (v4)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    if (v7 == v9 && v8 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
LABEL_32:
        v19 = 0;
        return v19 & 1;
      }
    }
  }

  if (!sub_1007C87EC(*(v1 + 40), *(a1 + 40)))
  {
    goto LABEL_32;
  }

  v13 = *(v1 + 48);
  v14 = *(a1 + 48);
  v15 = TSContentLanguage.Models.Stroke.Line.Pattern.rawValue.getter(v13);
  v17 = v16;
  if (v15 == TSContentLanguage.Models.Stroke.Line.Pattern.rawValue.getter(v14) && v17 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

uint64_t sub_100D7494C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v5, v7) & 1;
}

void *TSContentLanguage.Models.Stroke.Line.Pattern.version.unsafeMutableAddressor()
{
  if (qword_1019F2398 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.Line.Pattern.version;
}

uint64_t TSContentLanguage.Models.Stroke.Line.Pattern.rawValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x61645F646E756F72;
    v6 = 0x61645F74726F6873;
    if (a1 != 8)
    {
      v6 = 0x64696C6F73;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x645F6D756964656DLL;
    if (a1 != 5)
    {
      v7 = 7234928;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x617267696C6C6163;
    v2 = 0x737572625F797264;
    v3 = 0x6572656874616566;
    if (a1 != 3)
    {
      v3 = 0x7361645F676E6F6CLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B6C616863;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100D74C10@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV7PatternO8rawValueAKSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D74C40@<X0>(uint64_t *a1@<X8>)
{
  result = TSContentLanguage.Models.Stroke.Line.Pattern.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t *TSContentLanguage.Models.Stroke.Frame.version.unsafeMutableAddressor()
{
  if (qword_1019F23A0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.Frame.version;
}

double TSContentLanguage.Models.Stroke.Frame.init(name:scalePercent:)(double a1)
{
  if (a1 < 10.0 || a1 > 100.0)
  {
    v8 = sub_1005B981C(&qword_101A02780);
    v9 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v7 = xmmword_1014B0CD0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = a1;
    sub_100050F74(&v7, v4);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    strcpy(v5, "scalePercent");
    v5[13] = 0;
    *(v5 + 7) = -5120;
    *(v5 + 2) = v3;
    swift_willThrow();
  }

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Stroke.Frame.validate()()
{
  v1 = v0;
  if (v0 < 10.0 || v0 > 100.0)
  {
    v7 = sub_1005B981C(&qword_101A02780);
    v8 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
    v6 = xmmword_1014B0CD0;
    sub_1005B981C(&qword_101A02790);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v6, v4);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    strcpy(v5, "scalePercent");
    v5[13] = 0;
    *(v5 + 7) = -5120;
    *(v5 + 2) = v3;
    swift_willThrow();
  }
}

Swift::Int sub_100D750DC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D751B0()
{
  String.hash(into:)();
}

Swift::Int sub_100D75270()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D75340@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100D77FCC(*a1);
  *a2 = result;
  return result;
}

void sub_100D75370(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701667182;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (*v1 != 2)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x65705F656C616373;
    v2 = 0xED0000746E656372;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100D75400()
{
  v1 = 1701667182;
  v2 = 0x6564695F65707974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    v1 = 0x65705F656C616373;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100D7548C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100D77FCC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100D754B4(uint64_t a1)
{
  v2 = sub_100D788D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100D754F0(uint64_t a1)
{
  v2 = sub_100D788D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t TSContentLanguage.Models.Stroke.Frame.encode(to:)(void *a1, char a2)
{
  v5 = sub_1005B981C(&qword_101A1ECD8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100D788D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_100D78928();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F23A0 != -1)
  {
    swift_once();
  }

  v10[1] = static TSContentLanguage.Models.Stroke.Frame.version;
  v11 = 3;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Stroke.Frame.isEquivalent(to:)(char a1, char a2, double a3, double a4)
{
  v7 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(a2);
  v9 = v8;
  if (v7 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(a1) && v9 == v10)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  return sub_1007C87EC(a4, a3);
}

uint64_t sub_100D75868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100D78018(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

BOOL sub_100D758F0(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(v1 + 8);
  v4 = *a1;
  v5 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*v1);
  v7 = v6;
  if (v5 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v4) && v7 == v8)
  {

    return sub_1007C87EC(v3, v2);
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v10)
  {
    return sub_1007C87EC(v3, v2);
  }

  return result;
}

void *TSContentLanguage.Models.Stroke.Frame.Name.version.unsafeMutableAddressor()
{
  if (qword_1019F23A8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Stroke.Frame.Name.version;
}

unint64_t TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(char a1)
{
  result = 0x65757169746E61;
  switch(a1)
  {
    case 1:
      result = 0x6C5F6E6F79617263;
      break;
    case 2:
      result = 0x695F6C616D726F66;
      break;
    case 3:
      result = 0x735F6C616D726F66;
      break;
    case 4:
      result = 0x61705F6870617267;
      break;
    case 5:
      result = 0x656E696C64616568;
      break;
    case 6:
      result = 0x7465735F74656ALL;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x696C6F6674726F70;
      break;
    case 9:
      result = 0x6E697068737570;
      break;
    case 10:
      result = 0x61737369616E6572;
      break;
    case 11:
      result = 0x6F6F627061726373;
      break;
    case 12:
      result = 0x616F6279726F7473;
      break;
    case 13:
      result = 0x5F656761746E6976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100D75C30(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_100D75CDC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100D75D60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_100D75DD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100D75E38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO5FrameV4NameO8rawValueAKSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100D75E68@<X0>(unint64_t *a1@<X8>)
{
  result = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_28;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  v4 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16))), xmmword_10148D100)) & 0xF;
  if (v3 == 2 || v4 != 0)
  {
    goto LABEL_34;
  }

  v6 = a1;
  v7 = a2;
  if (v2)
  {
    v8 = 1650946675;
  }

  else
  {
    v8 = 13168;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE200000000000000;
  }

  if (v3)
  {
    v10 = 1650946675;
  }

  else
  {
    v10 = 13168;
  }

  if (v3)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE200000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {

    a2 = v7;
    a1 = v6;
    goto LABEL_28;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a2 = v7;
  a1 = v6;
  if ((v13 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_28:
  if (*(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_34;
  }

  v14 = 0xEB00000000796870;
  v15 = 0x617267696C6C6163;
  v16 = *(a1 + 48);
  if (v16 > 4)
  {
    if (*(a1 + 48) > 6u)
    {
      if (v16 == 7)
      {
        v20 = 0x5F646E756F72;
      }

      else
      {
        if (v16 != 8)
        {
          v18 = 0xE500000000000000;
          v17 = 0x64696C6F73;
          goto LABEL_54;
        }

        v20 = 0x5F74726F6873;
      }

      v17 = v20 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
      v18 = 0xEA00000000006873;
      goto LABEL_54;
    }

    if (v16 == 5)
    {
      v17 = 0x645F6D756964656DLL;
      v18 = 0xEB00000000687361;
    }

    else
    {
      v18 = 0xE300000000000000;
      v17 = 7234928;
    }
  }

  else if (*(a1 + 48) <= 1u)
  {
    if (*(a1 + 48))
    {
      v17 = 0x6B6C616863;
    }

    else
    {
      v17 = 0x617267696C6C6163;
    }

    if (v16)
    {
      v18 = 0xE500000000000000;
    }

    else
    {
      v18 = 0xEB00000000796870;
    }
  }

  else
  {
    if (v16 == 2)
    {
      v17 = 0x737572625F797264;
    }

    else
    {
      if (v16 == 3)
      {
        v17 = 0x6572656874616566;
        v18 = 0xEF68737572625F64;
        goto LABEL_54;
      }

      v17 = 0x7361645F676E6F6CLL;
    }

    v18 = 0xE900000000000068;
  }

LABEL_54:
  v21 = *(a2 + 48);
  if (v21 > 4)
  {
    if (*(a2 + 48) <= 6u)
    {
      if (v21 == 5)
      {
        v15 = 0x645F6D756964656DLL;
        v14 = 0xEB00000000687361;
      }

      else
      {
        v14 = 0xE300000000000000;
        v15 = 7234928;
      }

      goto LABEL_74;
    }

    if (v21 == 7)
    {
      v22 = 0x5F646E756F72;
    }

    else
    {
      if (v21 != 8)
      {
        v14 = 0xE500000000000000;
        v15 = 0x64696C6F73;
        goto LABEL_74;
      }

      v22 = 0x5F74726F6873;
    }

    v15 = v22 & 0xFFFFFFFFFFFFLL | 0x6164000000000000;
    v14 = 0xEA00000000006873;
    goto LABEL_74;
  }

  if (*(a2 + 48) <= 1u)
  {
    if (*(a2 + 48))
    {
      v14 = 0xE500000000000000;
      v15 = 0x6B6C616863;
    }

    goto LABEL_74;
  }

  if (v21 == 2)
  {
    v15 = 0x737572625F797264;
  }

  else
  {
    if (v21 == 3)
    {
      v15 = 0x6572656874616566;
      v14 = 0xEF68737572625F64;
      goto LABEL_74;
    }

    v15 = 0x7361645F676E6F6CLL;
  }

  v14 = 0xE900000000000068;
LABEL_74:
  if (v17 == v15 && v18 == v14)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v19 & 1;
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO6StrokeO5FrameV23__derived_struct_equalsySbAI_AItFZ_0(unsigned __int8 a1, char a2, double a3, double a4)
{
  v4 = 0x65757169746E61;
  v5 = 0xE700000000000000;
  v8 = a1;
  v9 = 0x65757169746E61;
  switch(v8)
  {
    case 1:
      v9 = 0x6C5F6E6F79617263;
      v5 = 0xEB00000000656E69;
      break;
    case 2:
      v9 = 0x695F6C616D726F66;
      v5 = 0xEC0000007465736ELL;
      break;
    case 3:
      v9 = 0x735F6C616D726F66;
      v5 = 0xED0000776F646168;
      break;
    case 4:
      v9 = 0x61705F6870617267;
      v5 = 0xEB00000000726570;
      break;
    case 5:
      v9 = 0x656E696C64616568;
      v5 = 0xE900000000000073;
      break;
    case 6:
      v9 = 0x7465735F74656ALL;
      break;
    case 7:
      v9 = 0xD000000000000010;
      v5 = 0x8000000101552230;
      break;
    case 8:
      v9 = 0x696C6F6674726F70;
      v5 = 0xEF7465736E695F6FLL;
      break;
    case 9:
      v9 = 0x6E697068737570;
      break;
    case 10:
      v9 = 0x61737369616E6572;
      v5 = 0xEC0000003165636ELL;
      break;
    case 11:
      v9 = 0x6F6F627061726373;
      v5 = 0xEB0000000062326BLL;
      break;
    case 12:
      v9 = 0x616F6279726F7473;
      v5 = 0xEA00000000006472;
      break;
    case 13:
      v9 = 0x5F656761746E6976;
      v5 = 0xED00007465736E69;
      break;
    default:
      break;
  }

  v10 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v11 = 0x6C5F6E6F79617263;
      v12 = 6647401;
      goto LABEL_19;
    case 2:
      v10 = 0xEC0000007465736ELL;
      if (v9 != 0x695F6C616D726F66)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 3:
      v13 = 0x735F6C616D726F66;
      v14 = 0x776F646168;
      goto LABEL_33;
    case 4:
      v11 = 0x61705F6870617267;
      v12 = 7497072;
      goto LABEL_19;
    case 5:
      v10 = 0xE900000000000073;
      if (v9 != 0x656E696C64616568)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 6:
      if (v9 != 0x7465735F74656ALL)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 7:
      v10 = 0x8000000101552230;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 8:
      v10 = 0xEF7465736E695F6FLL;
      if (v9 != 0x696C6F6674726F70)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 9:
      if (v9 != 0x6E697068737570)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 10:
      v4 = 0x61737369616E6572;
      v10 = 0xEC0000003165636ELL;
      goto LABEL_38;
    case 11:
      v11 = 0x6F6F627061726373;
      v12 = 6435435;
LABEL_19:
      v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      if (v9 != v11)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 12:
      v10 = 0xEA00000000006472;
      if (v9 != 0x616F6279726F7473)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    case 13:
      v13 = 0x5F656761746E6976;
      v14 = 0x7465736E69;
LABEL_33:
      v10 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      if (v9 != v13)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    default:
LABEL_38:
      if (v9 != v4)
      {
        goto LABEL_42;
      }

LABEL_39:
      if (v5 == v10)
      {
      }

      else
      {
LABEL_42:
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

        result = 0;
        if ((v15 & 1) == 0)
        {
          return result;
        }
      }

      return a3 == a4;
  }
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO6StrokeO21__derived_enum_equalsySbAG_AGtFZ_0(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 48);
  if (!(v4 >> 6))
  {
    if (*(a2 + 48) > 0x3Fu)
    {
      goto LABEL_47;
    }

    v9 = *(a2 + 8);
    v10 = 0x65757169746E61;
    v11 = 0xE700000000000000;
    v12 = 0x65757169746E61;
    switch(LOBYTE(v2))
    {
      case 1:
        v12 = 0x6C5F6E6F79617263;
        v11 = 0xEB00000000656E69;
        break;
      case 2:
        v12 = 0x695F6C616D726F66;
        v11 = 0xEC0000007465736ELL;
        break;
      case 3:
        v12 = 0x735F6C616D726F66;
        v11 = 0xED0000776F646168;
        break;
      case 4:
        v12 = 0x61705F6870617267;
        v11 = 0xEB00000000726570;
        break;
      case 5:
        v12 = 0x656E696C64616568;
        v11 = 0xE900000000000073;
        break;
      case 6:
        v12 = 0x7465735F74656ALL;
        break;
      case 7:
        v12 = 0xD000000000000010;
        v11 = 0x8000000101552230;
        break;
      case 8:
        v12 = 0x696C6F6674726F70;
        v11 = 0xEF7465736E695F6FLL;
        break;
      case 9:
        v12 = 0x6E697068737570;
        break;
      case 0xA:
        v12 = 0x61737369616E6572;
        v11 = 0xEC0000003165636ELL;
        break;
      case 0xB:
        v12 = 0x6F6F627061726373;
        v11 = 0xEB0000000062326BLL;
        break;
      case 0xC:
        v12 = 0x616F6279726F7473;
        v11 = 0xEA00000000006472;
        break;
      case 0xD:
        v12 = 0x5F656761746E6976;
        v11 = 0xED00007465736E69;
        break;
      default:
        break;
    }

    v17 = 0xE700000000000000;
    switch(*a2)
    {
      case 1u:
        v10 = 0x6C5F6E6F79617263;
        v17 = 0xEB00000000656E69;
        break;
      case 2u:
        v10 = 0x695F6C616D726F66;
        v17 = 0xEC0000007465736ELL;
        break;
      case 3u:
        v10 = 0x735F6C616D726F66;
        v17 = 0xED0000776F646168;
        break;
      case 4u:
        v10 = 0x61705F6870617267;
        v17 = 0xEB00000000726570;
        break;
      case 5u:
        v10 = 0x656E696C64616568;
        v17 = 0xE900000000000073;
        break;
      case 6u:
        v10 = 0x7465735F74656ALL;
        break;
      case 7u:
        v10 = 0xD000000000000010;
        v17 = 0x8000000101552230;
        break;
      case 8u:
        v10 = 0x696C6F6674726F70;
        v17 = 0xEF7465736E695F6FLL;
        break;
      case 9u:
        v10 = 0x6E697068737570;
        break;
      case 0xAu:
        v10 = 0x61737369616E6572;
        v17 = 0xEC0000003165636ELL;
        break;
      case 0xBu:
        v10 = 0x6F6F627061726373;
        v17 = 0xEB0000000062326BLL;
        break;
      case 0xCu:
        v10 = 0x616F6279726F7473;
        v17 = 0xEA00000000006472;
        break;
      case 0xDu:
        v10 = 0x5F656761746E6976;
        v17 = 0xED00007465736E69;
        break;
      default:
        break;
    }

    if (v12 == v10 && v11 == v17)
    {
    }

    else
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if (v9 != v3)
    {
      goto LABEL_47;
    }

LABEL_46:
    v8 = 1;
    return v8 & 1;
  }

  if (v4 >> 6 != 1)
  {
    v13 = *(a2 + 48);
    if ((v13 & 0xC0) != 0x80)
    {
      goto LABEL_47;
    }

    v14 = vorrq_s8(*(a2 + 16), *(a2 + 32));
    v15 = *&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | *(a2 + 8) | *a2;
    if (v13 != 128 || v15 != 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  *v22 = *a1;
  *&v22[1] = v3;
  v5 = *(a1 + 2);
  v23 = *(a1 + 1);
  v24 = v5;
  v25 = v4 & 0x3F;
  v6 = *(a2 + 48);
  if ((v6 & 0xC0) != 0x40)
  {
LABEL_47:
    v8 = 0;
    return v8 & 1;
  }

  v7 = *(a2 + 16);
  v20[0] = *a2;
  v20[1] = v7;
  v20[2] = *(a2 + 32);
  v21 = v6 & 0x3F;
  v8 = _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(v22, v20);
  return v8 & 1;
}

unint64_t sub_100D76C2C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876C38, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D76C78@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1005B981C(&qword_101A00870);
  v43 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v38 - v10;
  v12 = a1;
  sub_100020E58(a1, a1[3]);
  sub_100D774B0();
  v13 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_12;
  }

  v40 = v5;
  v44 = v8;
  LOBYTE(v45[0]) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v15)
  {
    goto LABEL_10;
  }

  if (v14 == 0xD000000000000026 && v15 == 0x8000000101589C00)
  {

    goto LABEL_10;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
LABEL_10:
    type metadata accessor for TSCLVersion();
    v50 = 3;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v30 = v45[0];
    if (v45[0])
    {
      if (qword_1019F2388 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.Stroke.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v30[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v31 = xmmword_101463530;
        *(v31 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    sub_100020E58(v12, v12[3]);
    v33 = dispatch thunk of Decoder.userInfo.getter();
    v34 = sub_1007B881C(0, v33, 0);
    v22 = v35;

    v39 = v34;
    if (v34 != 14)
    {
      (*(v43 + 8))(v11, v9);
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v21 = v39;
      goto LABEL_17;
    }

    sub_100020E58(v12, v12[3]);
    dispatch thunk of Decoder.userInfo.getter();
    v50 = 1;
    sub_100D78B98();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

    v25 = v47;
    if (v47 != 3)
    {
      v44 = v45[1];
      v23 = v45[2];
      v24 = v46;
      v26 = v48;
      v36 = v49;
      v37 = v11;
      v21 = v45[0];
      (*(v43 + 8))(v37, v9);
      v27 = v36 | 0x40;
      v22 = v44;
      goto LABEL_17;
    }

    (*(v43 + 8))(v11, v9);
    goto LABEL_24;
  }

  sub_1007C8648();
  swift_allocError();
  v18[1] = 0;
  v18[2] = 0;
  *v18 = 0;
  swift_willThrow();
LABEL_11:
  (*(v43 + 8))(v11, v9);
LABEL_12:
  sub_100020E58(v12, v12[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(v45, v46);
  if (dispatch thunk of SingleValueDecodingContainer.decode(_:)() == 0x7974706D65 && v19 == 0xE500000000000000)
  {

LABEL_16:
    sub_100005070(v45);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x80;
LABEL_17:
    result = sub_100005070(v12);
    v29 = v42;
    *v42 = v21;
    v29[1] = v22;
    v29[2] = v23;
    v29[3] = v24;
    v29[4] = v25;
    v29[5] = v26;
    *(v29 + 48) = v27;
    return result;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v20)
  {
    goto LABEL_16;
  }

  sub_100005070(v45);
LABEL_24:
  sub_1007C8648();
  swift_allocError();
  *v32 = xmmword_101478600;
  *(v32 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v12);
}

unint64_t sub_100D774B0()
{
  result = qword_101A1ECA8;
  if (!qword_101A1ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECA8);
  }

  return result;
}

unint64_t sub_100D77504()
{
  result = qword_101A1ECB0;
  if (!qword_101A1ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECB0);
  }

  return result;
}

unint64_t sub_100D77558()
{
  result = qword_101A1ECB8;
  if (!qword_101A1ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECB8);
  }

  return result;
}

unint64_t sub_100D775AC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876CB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D775F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v39 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v41 = &v33[-v6];
  v7 = type metadata accessor for CodingUserInfoKey();
  v42 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v33[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v12 = &v33[-v11];
  v13 = sub_1005B981C(&qword_101A00868);
  v43 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  v16 = a1;
  sub_100020E58(a1, a1[3]);
  sub_100D77ED8();
  v17 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v18 = a1;
    return sub_100005070(v18);
  }

  v44 = v12;
  v38 = v9;
  LOBYTE(v45) = 3;
  v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = a1;
  if (v20)
  {
    if (v19 == 0xD00000000000002BLL && v20 == 0x8000000101589C30)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v24[1] = 0;
        v24[2] = 0;
        *v24 = 0;
        swift_willThrow();
LABEL_12:
        (*(v43 + 8))(v15, v13);
        v18 = v21;
        return sub_100005070(v18);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v47 = 4;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v45;
  if (v45)
  {
    if (qword_1019F2390 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Stroke.Line.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v26[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v27 = xmmword_101463530;
      *(v27 + 16) = 0;
      swift_willThrow();

      goto LABEL_12;
    }
  }

  sub_100020E58(v16, v16[3]);
  v28 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B8ADC(0, v28, 0, 0, v48);

  v35 = v48[1];
  v36 = v48[0];
  v34 = v49;
  sub_100020E58(v16, v16[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v47 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v37 = v15;

  if (v46)
  {
    v29 = 1.0;
  }

  else
  {
    v29 = *&v45;
  }

  sub_100020E58(v21, v21[3]);
  dispatch thunk of Decoder.userInfo.getter();
  v47 = 2;
  sub_100D78DD4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  if (v45 == 10)
  {
    v30 = 9;
  }

  else
  {
    v30 = v45;
  }

  v31 = v40;
  (*(v43 + 8))(v37, v13);
  result = sub_100005070(v21);
  v32 = v35;
  *v31 = v36;
  *(v31 + 16) = v32;
  *(v31 + 32) = v34;
  *(v31 + 40) = v29;
  *(v31 + 48) = v30;
  return result;
}

unint64_t sub_100D77ED8()
{
  result = qword_101A1ECC8;
  if (!qword_101A1ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECC8);
  }

  return result;
}

unint64_t sub_100D77F2C()
{
  result = qword_101A1ECD0;
  if (!qword_101A1ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECD0);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV7PatternO8rawValueAKSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876D50, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D77FCC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876E60, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100D78018(void *a1)
{
  v2 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = type metadata accessor for CodingUserInfoKey();
  v47 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A1EDA8);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  v11 = a1[3];
  v12 = a1;
  sub_100020E58(a1, v11);
  sub_100D788D4();
  v13 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    goto LABEL_12;
  }

  v46 = v4;
  v49 = v7;
  LOBYTE(v50) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v15)
  {
    if (v14 == 0xD00000000000002CLL && v15 == 0x8000000101589CA0)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v18[1] = 0;
        v18[2] = 0;
        *v18 = 0;
        swift_willThrow();
LABEL_11:
        (*(v48 + 8))(v10, v8);
LABEL_12:
        sub_100005070(v12);
        return v11;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v53) = 3;
  sub_100969804(&qword_101A00400);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v50;
  if (v50)
  {
    if (qword_1019F23A0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Stroke.Frame.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v20[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v21 = xmmword_101463530;
      *(v21 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(v12, v12[3]);
  dispatch thunk of Decoder.userInfo.getter();

  v54 = 0;
  sub_100D79108();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v11 = v50;
  if (v50 == 14)
  {
    v22 = KeyedDecodingContainer.codingPath.getter();
    v23 = *(v22 + 16);
    if (v23)
    {
      v49 = v8;
      v53 = _swiftEmptyArrayStorage;
      sub_100034080(0, v23, 0);
      v24 = v53;
      v47 = v22;
      v25 = v22 + 32;
      do
      {
        sub_10000630C(v25, &v50);
        sub_100020E58(&v50, v51);
        v26 = dispatch thunk of CodingKey.stringValue.getter();
        v11 = v27;
        sub_100005070(&v50);
        v53 = v24;
        v29 = v24[2];
        v28 = v24[3];
        if (v29 >= v28 >> 1)
        {
          sub_100034080((v28 > 1), v29 + 1, 1);
          v24 = v53;
        }

        v24[2] = v29 + 1;
        v30 = &v24[2 * v29];
        v30[4] = v26;
        v30[5] = v11;
        v25 += 40;
        --v23;
      }

      while (v23);

      v8 = v49;
    }

    else
    {

      v24 = _swiftEmptyArrayStorage;
    }

    sub_1007CDECC();
    swift_allocError();
    *v32 = 1701667182;
    v32[1] = 0xE400000000000000;
    v32[2] = v24;
    swift_willThrow();
    v33 = v48;
    swift_willThrow();
    goto LABEL_30;
  }

  sub_100020E58(v12, v12[3]);
  v31 = dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v53) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v50))
  {
    v34 = 100.0;
  }

  else
  {
    v34 = *&v50;
  }

  if (v34 >= 10.0 && v34 <= 100.0)
  {

    v33 = v48;
LABEL_43:
    (*(v33 + 8))(v10, v8);
    sub_100005070(v12);
    return v11;
  }

  v45 = v31;
  v51 = sub_1005B981C(&qword_101A02780);
  v52 = sub_10001A2F8(&qword_101A02788, &qword_101A02780);
  v50 = xmmword_1014B0CD0;
  sub_1005B981C(&qword_101A02790);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790);
  v35 = swift_allocError();
  *(v36 + 40) = v34;
  sub_100050F74(&v50, v36);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  strcpy(v37, "scalePercent");
  v37[13] = 0;
  *(v37 + 7) = -5120;
  *(v37 + 2) = v35;
  swift_willThrow();
  v44 = 0;
  v38 = v46;
  CodingUserInfoKey.init(rawValue:)();
  v39 = v47;
  result = (*(v47 + 48))(v38, 1, v5);
  if (result != 1)
  {
    v40 = v49;
    (*(v39 + 32))(v49, v38, v5);
    v41 = v45;
    if (*(v45 + 16) && (v42 = sub_1007C8514(v40), v39 = v47, (v43 & 1) != 0))
    {
      sub_100064288(*(v41 + 56) + 32 * v42, &v50);
      (*(v39 + 8))(v40, v5);
      if (swift_dynamicCast())
      {
        v33 = v48;
        if (v54)
        {

          goto LABEL_43;
        }

LABEL_46:
        swift_willThrow();

LABEL_30:
        (*(v33 + 8))(v10, v8);
        goto LABEL_12;
      }
    }

    else
    {
      (*(v39 + 8))(v40, v5);
    }

    v33 = v48;
    goto LABEL_46;
  }

  __break(1u);
  return result;
}

unint64_t sub_100D788D4()
{
  result = qword_101A1ECE0;
  if (!qword_101A1ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECE0);
  }

  return result;
}

unint64_t sub_100D78928()
{
  result = qword_101A1ECE8;
  if (!qword_101A1ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECE8);
  }

  return result;
}

unint64_t _s8Freeform17TSContentLanguageO6ModelsO6StrokeO5FrameV4NameO8rawValueAKSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876EE0, v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100D789F4()
{
  result = qword_101A1ECF0;
  if (!qword_101A1ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECF0);
  }

  return result;
}

unint64_t sub_100D78A48()
{
  result = qword_101A1ECF8;
  if (!qword_101A1ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ECF8);
  }

  return result;
}

unint64_t sub_100D78ADC()
{
  result = qword_101A1ED00;
  if (!qword_101A1ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED00);
  }

  return result;
}

unint64_t sub_100D78B30(uint64_t a1)
{
  result = sub_100B10BCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D78B98()
{
  result = qword_101A1ED08;
  if (!qword_101A1ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED08);
  }

  return result;
}

unint64_t sub_100D78BEC()
{
  result = qword_101A1ED10;
  if (!qword_101A1ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED10);
  }

  return result;
}

unint64_t sub_100D78C44()
{
  result = qword_101A1ED18;
  if (!qword_101A1ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED18);
  }

  return result;
}

unint64_t sub_100D78CC4()
{
  result = qword_101A1ED20;
  if (!qword_101A1ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED20);
  }

  return result;
}

unint64_t sub_100D78D18()
{
  result = qword_101A1ED28;
  if (!qword_101A1ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED28);
  }

  return result;
}

unint64_t sub_100D78D6C(uint64_t a1)
{
  result = sub_100B10B78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D78DD4()
{
  result = qword_101A1ED30;
  if (!qword_101A1ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED30);
  }

  return result;
}

unint64_t sub_100D78E28(uint64_t a1)
{
  result = sub_100B10B24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100D78E90()
{
  result = qword_101A1ED38;
  if (!qword_101A1ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED38);
  }

  return result;
}

unint64_t sub_100D78EE8()
{
  result = qword_101A1ED40;
  if (!qword_101A1ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED40);
  }

  return result;
}

uint64_t sub_100D78F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100D78FA4()
{
  result = qword_101A1ED48;
  if (!qword_101A1ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED48);
  }

  return result;
}

unint64_t sub_100D78FF8()
{
  result = qword_101A1ED50;
  if (!qword_101A1ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED50);
  }

  return result;
}

unint64_t sub_100D7904C(uint64_t a1)
{
  result = sub_100B10AD0();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100D790B4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = a4();
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100D79108()
{
  result = qword_101A1ED58;
  if (!qword_101A1ED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED58);
  }

  return result;
}

uint64_t _s6StrokeOwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double _s6StrokeOwst(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 49) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = -a2 << 8;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100D79208(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100D79228(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 48) & 0xF | (a2 << 6);
    *(result + 32) = *(result + 32);
    *(result + 48) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 0x80;
  }

  return result;
}

uint64_t sub_100D7927C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100D792D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

uint64_t _s6StrokeO5FrameVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF3 && a1[16])
  {
    return (*a1 + 243);
  }

  v3 = *a1;
  v4 = v3 >= 0xE;
  v5 = v3 - 14;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s6StrokeO5FrameVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 13;
    }
  }

  return result;
}

unint64_t sub_100D7941C()
{
  result = qword_101A1ED60;
  if (!qword_101A1ED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED60);
  }

  return result;
}

unint64_t sub_100D79474()
{
  result = qword_101A1ED68;
  if (!qword_101A1ED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED68);
  }

  return result;
}

unint64_t sub_100D794CC()
{
  result = qword_101A1ED70;
  if (!qword_101A1ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED70);
  }

  return result;
}

unint64_t sub_100D79524()
{
  result = qword_101A1ED78;
  if (!qword_101A1ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED78);
  }

  return result;
}

unint64_t sub_100D7957C()
{
  result = qword_101A1ED80;
  if (!qword_101A1ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED80);
  }

  return result;
}

unint64_t sub_100D795D4()
{
  result = qword_101A1ED88;
  if (!qword_101A1ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED88);
  }

  return result;
}

unint64_t sub_100D7962C()
{
  result = qword_101A1ED90;
  if (!qword_101A1ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED90);
  }

  return result;
}

unint64_t sub_100D79684()
{
  result = qword_101A1ED98;
  if (!qword_101A1ED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1ED98);
  }

  return result;
}

unint64_t sub_100D796DC()
{
  result = qword_101A1EDA0;
  if (!qword_101A1EDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1EDA0);
  }

  return result;
}

id sub_100D79758(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v2 = &selRef_filledCircle;
    v3 = &selRef_filledCircle;
    if (a1 != 3)
    {
      v3 = &selRef_line;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    v4 = &selRef_filledArrow;
    if (a1)
    {
      v4 = &selRef_filledCircle;
    }

    if (a1 <= 1u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v2;
    }
  }

  else if (a1 > 7u)
  {
    v6 = &selRef_simpleArrow;
    if (a1 == 9)
    {
      v6 = &selRef_openCircle;
    }

    if (a1 == 8)
    {
      v5 = &selRef_openCircle;
    }

    else
    {
      v5 = v6;
    }
  }

  else if (a1 == 5)
  {
    v5 = &selRef_line;
  }

  else
  {
    if (a1 == 6)
    {
      return 0;
    }

    v5 = &selRef_openArrow;
  }

  return [objc_opt_self() *v5];
}

void *sub_100D79848(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A1F160);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v37 = _s13ItemViewModelVMa();
  v6 = *(v37 - 8);
  v7 = __chkstk_darwin(v37);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v29 = &v28 - v9;
  v33 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s8ItemDataCMa();
    sub_100D7FE98(&qword_101A1F168, _s8ItemDataCMa);
    result = Set.Iterator.init(_cocoa:)();
    a1 = v39;
    v11 = v40;
    v13 = v41;
    v12 = v42;
    v14 = v43;
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v11 = a1 + 56;
    v13 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(a1 + 56);

    v12 = 0;
  }

  v32 = v13;
  v30 = v6;
  v35 = (v6 + 48);
  v36 = (v6 + 56);
  v34 = _swiftEmptyArrayStorage;
  while (a1 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21 || (v38 = v21, _s8ItemDataCMa(), swift_dynamicCast(), (v20 = v44) == 0))
    {
LABEL_24:
      sub_100035F90();
      return v34;
    }

LABEL_17:
    sub_100D7F730(v20 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata, v5, _s13ItemViewModelVMa);
    v22 = v37;
    (*v36)(v5, 0, 1, v37);

    if ((*v35)(v5, 1, v22) == 1)
    {
      result = sub_10000CAAC(v5, &qword_101A1F160);
    }

    else
    {
      v23 = v29;
      sub_100D7F868(v5, v29, _s13ItemViewModelVMa);
      sub_100D7F868(v23, v31, _s13ItemViewModelVMa);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100B379C0(0, v34[2] + 1, 1, v34);
      }

      v24 = v30;
      v26 = v34[2];
      v25 = v34[3];
      if (v26 >= v25 >> 1)
      {
        v34 = sub_100B379C0(v25 > 1, v26 + 1, 1, v34);
      }

      v27 = v34;
      v34[2] = v26 + 1;
      result = sub_100D7F868(v31, v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v26, _s13ItemViewModelVMa);
    }
  }

  v18 = v12;
  v19 = v14;
  if (v14)
  {
LABEL_13:
    v14 = (v19 - 1) & v19;
    v20 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v19)))));

    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v12 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v12 >= ((v13 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v11 + 8 * v12);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100D79CB4(void **a1)
{
  v2 = *(_s17CategoryViewModelVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10113E074(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100D7D3D4(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100D79D5C(void **a1, int a2)
{
  v4 = *(_s13ItemViewModelVMa() - 8);
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_10113E0C0(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;
  result = sub_100D7D500(v8, a2);
  *a1 = v5;
  return result;
}

uint64_t sub_100D79E3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10079B86C(v1);
  return v1;
}

uint64_t sub_100D79F50()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_100D79FF4;
  v2 = *(v0 + 16);

  return sub_100D7A0E8(v2);
}

uint64_t sub_100D79FF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100D7A0E8(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100D7A23C, 0, 0);
}

uint64_t sub_100D7A23C()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = [objc_opt_self() mainBundle];
  v8 = [v7 bundleURL];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v0[2] = 0x736C69636E657453;
  v0[3] = 0xE800000000000000;
  (*(v5 + 104))(v4, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_100017CD8();
  URL.appending<A>(path:directoryHint:)();
  (*(v5 + 8))(v4, v6);
  v9 = *(v3 + 8);
  v0[14] = v9;
  v0[15] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v2);
  v10 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v0[4] = 0;
  v14 = [v10 contentsOfDirectoryAtURL:v12 includingPropertiesForKeys:0 options:0 error:v0 + 4];

  v15 = v0[4];
  if (v14)
  {
    v16 = v0[5];
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v0[16] = v17;
    v18 = v15;

    v19 = swift_allocObject();
    v0[17] = v19;
    swift_weakInit();
    v20 = swift_task_alloc();
    v0[18] = v20;
    v20[2] = v19;
    v20[3] = v17;
    v20[4] = v16;
    v21 = swift_task_alloc();
    v0[19] = v21;
    *v21 = v0;
    v21[1] = sub_100D7A5D8;

    return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v21, &type metadata for () + 8, &type metadata for () + 8, 0, 0, &unk_1014B18D0, v20, &type metadata for () + 8);
  }

  else
  {
    v22 = v0[13];
    v23 = v0[10];
    v24 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v9(v22, v23);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_100D7A5D8()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100D7A798, 0, 0);
  }
}

uint64_t sub_100D7A798()
{
  (*(v0 + 112))(*(v0 + 104), *(v0 + 80));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D7A854(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for Date();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = _s13ItemViewModelVMa();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return _swift_task_switch(sub_100D7A9C8, 0, 0);
}

id sub_100D7A9C8()
{
  v27 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v24 = *(v0 + 208);
  v25 = *(v0 + 192);
  v4 = *(v0 + 144);
  UUID.init()();
  *(v0 + 40) = *(v4 + 1);
  *(v0 + 56) = *(v4 + 3);
  *(v0 + 104) = v4[5];
  *(v0 + 112) = v4[6];
  v21 = *v4;
  v5 = objc_allocWithZone(UIImage);
  sub_1008DC9B8(v0 + 40, v0 + 72);
  sub_10000BE14(v0 + 104, v0 + 120, &qword_101A1F170);
  sub_10000BE14(v0 + 112, v0 + 128, &unk_101A1F178);
  sub_10000BE14(v0 + 56, v0 + 88, &unk_1019F6C70);
  v6 = [v5 initWithCGImage:v21];
  v20 = *(v4 + 56);
  v22 = *(v4 + 57);
  static Date.now.getter();
  static Date.distantPast.getter();
  (*(v3 + 16))(v1, v24, v25);
  *(v1 + v2[8]) = *(v0 + 40);
  *(v1 + v2[9]) = *(v0 + 56);
  *(v1 + v2[10]) = *(v0 + 104);
  *(v1 + v2[11]) = *(v0 + 112);
  result = [v6 CGImage];
  if (result)
  {
    v8 = result;
    v9 = *(v0 + 232);
    v10 = *(v0 + 240);
    v11 = *(v0 + 216);
    v19 = *(v0 + 224);
    v12 = *(v0 + 184);
    v14 = *(v0 + 168);
    v13 = *(v0 + 176);
    v15 = *(v0 + 160);
    v23 = *(v0 + 136);
    (*(*(v0 + 200) + 8))();

    *(v9 + v11[7]) = v8;
    *(v9 + v11[12]) = v20;
    *(v9 + v11[13]) = v22;
    v16 = *(v14 + 32);
    v16(v9 + v11[5], v12, v15);
    v16(v9 + v11[6], v13, v15);
    sub_100D7F868(v9, v10, _s13ItemViewModelVMa);
    sub_100D7F730(v10, v19, _s13ItemViewModelVMa);
    _s8ItemDataCMa();
    v17 = swift_allocObject();
    *(v17 + 16) = v23;
    sub_100D7F868(v19, v17 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata, _s13ItemViewModelVMa);
    swift_beginAccess();

    sub_100E71DC8(&v26, v17);
    swift_endAccess();

    sub_100D7AF18();

    sub_100D7F808(v10, _s13ItemViewModelVMa);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100D7AD6C(void *a1, uint64_t a2)
{
  v3 = *a1 + OBJC_IVAR____TtCC8Freeform17CRLStencilLibrary8ItemData_metadata;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = _s13ItemViewModelVMa();
  v5 = v4[8];
  v6 = *(v3 + v5);
  v7 = *(v3 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[9];
  v11 = (v3 + v10);
  v12 = *(v3 + v10 + 8);
  v13 = (a2 + v10);
  v14 = v13[1];
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }

    v15 = *v11 == *v13 && v12 == v14;
    if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (sub_100BC569C(*(v3 + v4[11]), *(a2 + v4[11])))
  {
    type metadata accessor for CGImage(0);
    sub_100D7FE98(&unk_101A1F1A0, type metadata accessor for CGImage);
    if (static _CFObject.== infix(_:_:)() & 1) != 0 && *(v3 + v4[12]) == *(a2 + v4[12]) && *(v3 + v4[13]) == *(a2 + v4[13]) && (static Date.== infix(_:_:)())
    {
      return static Date.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t sub_100D7AF18()
{
  v1 = v0;
  v2 = _s15FilterViewModelVMa();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v59 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s17CategoryViewModelVMa();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v7;
  __chkstk_darwin(v6);
  v58 = &v48 - v8;
  v9 = _s13ItemViewModelVMa();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v13 = 0;
  v14 = sub_100D79848(v12);

  v15 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary_itemViewModelsSortAscending);
  v16 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary_itemViewModelsSortStyle);
  v60[0] = v14;

  sub_100D79D5C(v60, v16);
  v17 = v60[0];
  v52 = v9;
  if ((v15 & 1) == 0)
  {
    v17 = sub_100FE1340(v60[0]);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v60[0] = v17;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v18 = v60[0][2];
  if (!v18)
  {
    goto LABEL_9;
  }

  v50 = 0;
  v51 = v4;
  v49 = v5;
  v19 = v60[0] + ((*(v53 + 80) + 32) & ~*(v53 + 80));
  v20 = v53[9];
  v21 = _swiftEmptySetSingleton;
  do
  {
    sub_100D7F730(v19, v11, _s13ItemViewModelVMa);

    v21 = sub_1010AD20C(v22, v21);
    sub_100D7F808(v11, _s13ItemViewModelVMa);
    v19 += v20;
    --v18;
  }

  while (v18);

  v5 = v49;
  v13 = v50;
  v4 = v51;
  v23 = v21[2];
  if (v23)
  {
    while (1)
    {
      v24 = sub_100B39E9C(v23, 0);
      v25 = sub_100B3B190(v60, v24 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v23, v21);
      v52 = v60[3];
      v53 = v60[2];
      v51 = v60[4];

      sub_100035F90();
      if (v25 == v23)
      {
        break;
      }

      __break(1u);
LABEL_9:

      v21 = _swiftEmptySetSingleton;
      v23 = _swiftEmptySetSingleton[2];
      if (!v23)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v24 = _swiftEmptyArrayStorage;
  }

  v60[0] = v24;
  sub_100D79CB4(v60);
  if (v13)
  {

    __break(1u);
  }

  else
  {

    v26 = v60[0];
    swift_getKeyPath();
    swift_getKeyPath();
    v60[0] = v26;

    static Published.subscript.setter();
    if (qword_1019F1D60 != -1)
    {
      swift_once();
    }

    v27 = qword_101AD7548;
    swift_getKeyPath();
    swift_getKeyPath();
    v60[0] = v27;

    static Published.subscript.setter();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v28 = v59;
    v29 = v60[0][2];
    if (v29)
    {
      v48 = v60[0];
      v49 = v1;
      v53 = (v58 + *(v4 + 20));
      v52 = (v58 + *(v4 + 28));
      v30 = *(v5 + 80);
      v31 = v60[0] + ((v30 + 32) & ~v30);
      v50 = *(v5 + 72);
      v51 = v30;
      v32 = (v30 + 16) & ~v30;
      v33 = _swiftEmptyArrayStorage;
      v34 = v54;
      do
      {
        v35 = v58;
        sub_100D7F730(v31, v58, _s17CategoryViewModelVMa);
        v36 = type metadata accessor for UUID();
        (*(*(v36 - 8) + 16))(v28, v35, v36);
        v37 = v53[1];
        v38 = v57;
        v39 = &v59[*(v57 + 20)];
        *v39 = *v53;
        *(v39 + 1) = v37;
        v40 = v52[1];
        v41 = &v59[*(v38 + 24)];
        *v41 = *v52;
        *(v41 + 1) = v40;
        sub_100D7F868(v35, v34, _s17CategoryViewModelVMa);
        v42 = swift_allocObject();
        sub_100D7F868(v34, v42 + v32, _s17CategoryViewModelVMa);
        v43 = *(v38 + 28);
        v28 = v59;
        v44 = &v59[v43];
        *v44 = sub_100D7F798;
        v44[1] = v42;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_100B379E8(0, v33[2] + 1, 1, v33);
        }

        v46 = v33[2];
        v45 = v33[3];
        if (v46 >= v45 >> 1)
        {
          v33 = sub_100B379E8(v45 > 1, v46 + 1, 1, v33);
        }

        v33[2] = v46 + 1;
        sub_100D7F868(v28, v33 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v46, _s15FilterViewModelVMa);
        v31 += v50;
        --v29;
      }

      while (v29);
    }

    else
    {

      v33 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v60[0] = v33;

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_100D7B6E4()
{
  v1 = OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__itemViewModels;
  v2 = sub_1005B981C(&qword_101A1F188);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__categories;
  v4 = sub_1005B981C(&qword_101A1F190);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__topLevelFilterViewModels;
  v6 = sub_1005B981C(&qword_101A1F198);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__categoryFilterViewModels, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLStencilLibrary()
{
  result = qword_101A1EEA8;
  if (!qword_101A1EEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D7B8C8()
{
  sub_10003A3A0(319, &qword_101A1EEB8, &qword_101A1EEC0);
  if (v0 <= 0x3F)
  {
    sub_10003A3A0(319, &qword_101A1EEC8, &qword_101A1EED0);
    if (v1 <= 0x3F)
    {
      sub_10003A3A0(319, &qword_101A1EED8, &unk_101A1EEE0);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100D7BA44@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRLStencilLibrary();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100D7BA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[43] = a4;
  v5[44] = a5;
  v5[41] = a2;
  v5[42] = a3;
  sub_1005B981C(&qword_1019FB750);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v5[47] = v6;
  v7 = *(v6 - 8);
  v5[48] = v7;
  v5[49] = *(v7 + 64);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();

  return _swift_task_switch(sub_100D7BBA0, 0, 0);
}

uint64_t sub_100D7BBA0()
{
  v63 = v0;
  swift_beginAccess();
  v61 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = v0[43];
    v2 = *(v1 + 16);
    if (v2)
    {
      v49 = v0 + 31;
      v3 = v0[48];
      v4 = *(v3 + 16);
      v3 += 16;
      v60 = v4;
      v5 = *(v3 + 64);
      v6 = v1 + ((v5 + 32) & ~v5);
      v54 = (v3 - 8);
      v55 = *(v3 + 56);
      v52 = (v5 + 40) & ~v5;
      v50 = (v3 + 16);
      v51 = (v0[49] + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v4(v0[51], v6, v0[47]);
      while (1)
      {
        if (URL.pathExtension.getter() == 0x6D726F6665657266 && v9 == 0xE800000000000000)
        {
        }

        else
        {
          v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v11 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v58 = v6;
        v59 = v2;
        v12 = v0[51];
        v13 = v61[50];
        v14 = v61[47];
        v15 = v61[46];
        v57 = v61[45];
        v56 = v61[44];
        v16 = type metadata accessor for TaskPriority();
        v17 = *(v16 - 8);
        (*(v17 + 56))(v15, 1, 1, v16);
        v60(v13, v12, v14);
        v18 = swift_allocObject();
        *(v18 + 2) = 0;
        *(v18 + 3) = 0;
        *(v18 + 4) = Strong;
        (*v50)(&v18[v52], v13, v14);
        *&v18[v51] = v56;
        sub_10000BE14(v15, v57, &qword_1019FB750);
        LODWORD(v15) = (*(v17 + 48))(v57, 1, v16);

        v0 = v61;
        v19 = v61[45];
        if (v15 == 1)
        {
          sub_10000CAAC(v61[45], &qword_1019FB750);
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v17 + 8))(v19, v16);
        }

        if (*(v18 + 2))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v20 = dispatch thunk of Actor.unownedExecutor.getter();
          v22 = v21;
          swift_unknownObjectRelease();
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v23 = *v61[41];

        if (v22 | v20)
        {
          v7 = v49;
          *v49 = 0;
          v49[1] = 0;
          v61[33] = v20;
          v61[34] = v22;
        }

        else
        {
          v7 = 0;
        }

        v6 = v58;
        v8 = v61[46];
        v61[38] = 1;
        v61[39] = v7;
        v61[40] = v23;
        swift_task_create();

        sub_10000CAAC(v8, &qword_1019FB750);
        v2 = v59;
LABEL_6:
        (*v54)(v0[51], v0[47]);
        v6 += v55;
        if (!--v2)
        {
          break;
        }

        v60(v0[51], v6, v0[47]);
      }
    }
  }

  else
  {
    v24 = objc_opt_self();
    v25 = [v24 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v62);
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
    v34 = sub_1005CF000();
    *(inited + 96) = v34;
    v35 = sub_100D7FE98(&qword_1019F52E0, sub_1005CF000);
    *(inited + 104) = v35;
    *(inited + 72) = v26;
    *(inited + 136) = &type metadata for String;
    v36 = sub_1000053B0();
    *(inited + 112) = v29;
    *(inited + 120) = v31;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v36;
    *(inited + 152) = 115;
    v37 = v62;
    *(inited + 216) = v34;
    *(inited + 224) = v35;
    *(inited + 192) = v37;
    v38 = v26;
    v39 = v37;
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v41 = static os_log_type_t.error.getter();
    sub_100005404(v32, &_mh_execute_header, v41, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

    [v24 handleFailureInFunction:v44 file:v45 lineNumber:115 isFatal:0 format:v46 args:v43];

    v0 = v61;
  }

  v47 = v0[1];

  return v47();
}

uint64_t sub_100D7C3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v6[16] = sub_1005B981C(&qword_101A1F1B0);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();

  return _swift_task_switch(sub_100D7C4C4, 0, 0);
}

uint64_t sub_100D7C4C4()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 112);
  v5 = *(*(v0 + 104) + 24);
  v6 = *&v5[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
  *(v0 + 184) = v6;
  v7 = *(v3 + 16);
  v7(v1, v4, v2);
  v8 = qword_1019F2778;
  v20 = v6;
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 152);
  v11 = *(v0 + 160);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v12 = (*(v0 + 74) & 1) == 0;
  Assistant = type metadata accessor for CRLBoardFileReadAssistant();
  v14 = objc_allocWithZone(Assistant);
  *&v14[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_readAssistant] = 0;
  v7(&v14[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_url], v9, v10);
  *&v14[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_store] = v5;
  *&v14[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_context] = v20;
  *&v14[OBJC_IVAR____TtC8Freeform25CRLBoardFileReadAssistant_options] = v12;
  *(v0 + 80) = v14;
  *(v0 + 88) = Assistant;
  v15 = v20;
  v16 = v5;
  *(v0 + 192) = objc_msgSendSuper2((v0 + 80), "init");
  v17 = *(v11 + 8);
  *(v0 + 200) = v17;
  *(v0 + 208) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v9, v10);
  v18 = swift_task_alloc();
  *(v0 + 216) = v18;
  *v18 = v0;
  v18[1] = sub_100D7C6FC;

  return sub_100713020();
}

uint64_t sub_100D7C6FC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = sub_100D7D164;
  }

  else
  {
    v4 = sub_100D7C810;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100D7C810()
{
  v1 = *(*(v0[28] + OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer) + OBJC_IVAR____TtC8Freeform16CRLContainerItem_items);
  v27 = v0[16];
  v2 = v1 + 64;
  v29 = v1;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v6 = (63 - v4) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  v26 = v2;
  v28 = v0;
  v0[30] = _swiftEmptyArrayStorage;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v10 = v0[17];
        v9 = v0[18];
        v11 = __clz(__rbit64(v5)) | (v7 << 6);
        v12 = *(v29 + 48);
        v13 = type metadata accessor for UUID();
        v14 = *(v13 - 8);
        (*(v14 + 16))(v9, v12 + *(v14 + 72) * v11, v13);
        v15 = *(*(v29 + 56) + 8 * v11);
        *(v9 + *(v27 + 48)) = v15;
        sub_100D80010(v9, v10);
        v16 = *(v14 + 8);
        v17 = v15;
        v16(v10, v13);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v5 &= v5 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = v28;
        v2 = v26;
        v28[30] = _swiftEmptyArrayStorage;
      }

      while (v5);
    }
  }

  if (qword_1019F14B8 == -1)
  {
    goto LABEL_13;
  }

LABEL_19:
  swift_once();
LABEL_13:
  v18 = qword_101AD6208;
  v19 = [objc_allocWithZone(CRLCanvasImager) initWithBoard:v0[28]];
  v0[31] = v19;

  if (sub_100EE963C(v20) >> 62)
  {
    sub_1005B981C(&qword_1019F5720);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_1005B981C(&qword_1019F5720);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v19 setInfos:isa];

  [v19 setBackgroundColor:v18];
  [v19 setScaledImageSize:{500.0, 500.0}];
  v22 = swift_task_alloc();
  v0[32] = v22;
  *(v22 + 16) = v19;
  *(v22 + 24) = 0;
  v23 = swift_task_alloc();
  v0[33] = v23;
  v24 = sub_1005B981C(&unk_1019FB790);
  *v23 = v0;
  v23[1] = sub_100D7CC68;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 12, 0, 0, 0xD000000000000019, 0x8000000101589600, sub_100B063D0, v22, v24);
}

uint64_t sub_100D7CC68()
{

  return _swift_task_switch(sub_100D7CD80, 0, 0);
}

uint64_t sub_100D7CD80()
{
  v1 = *(v0 + 96);
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = *(v0 + 240);
    v3 = *(v0 + 200);
    v4 = *(v0 + 168);
    v5 = *(v0 + 152);
    URL.deletingPathExtension()();
    v6 = URL.lastPathComponent.getter();
    v8 = v7;
    v3(v4, v5);
    *(v0 + 16) = v1;
    *(v0 + 24) = v6;
    *(v0 + 32) = v8;
    *(v0 + 40) = 0;
    *(v0 + 48) = 0;
    *(v0 + 56) = _swiftEmptySetSingleton;
    *(v0 + 64) = _swiftEmptySetSingleton;
    *(v0 + 72) = 0;
    v9 = v1;
    v10 = sub_100E93C20(v2);
    *(v0 + 280) = v10;

    v11 = swift_task_alloc();
    *(v0 + 288) = v11;
    *v11 = v0;
    v11[1] = sub_100D7CF60;

    return sub_100D7A854(v10, v0 + 16);
  }

  else
  {
    v13 = *(v0 + 248);
    v14 = *(v0 + 224);
    v16 = *(v0 + 184);
    v15 = *(v0 + 192);

    sub_100D80080();
    swift_allocError();
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_100D7CF60()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_100D7D1F8;
  }

  else
  {
    v2 = sub_100D7D094;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D7D094()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  sub_100C90F00((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_100D7D164()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100D7D1F8()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[28];
  v5 = v0[23];
  v4 = v0[24];
  sub_100C90F00((v0 + 2));

  v6 = v0[1];

  return v6();
}

uint64_t sub_100D7D2D8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100D7D358()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

Swift::Int sub_100D7D3D4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s17CategoryViewModelVMa();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(_s17CategoryViewModelVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100D7DAD8(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100D7D638(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100D7D500(unint64_t *a1, int a2)
{
  v4 = a1[1];
  result = _minimumMergeRunLength(_:)(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        _s13ItemViewModelVMa();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v8[2] = v7;
      }

      v9 = *(_s13ItemViewModelVMa() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;
      sub_100D7E3FC(v10, v11, a1, v6, a2);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_100D7D888(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_100D7D638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s17CategoryViewModelVMa();
  v9 = __chkstk_darwin(v8);
  v38 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v29 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v36 = -v19;
    v37 = v18;
    v21 = a1 - a3;
    v30 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v34 = v20;
    v35 = a3;
    v32 = v22;
    v33 = v21;
    while (1)
    {
      sub_100D7F730(v22, v17, _s17CategoryViewModelVMa);
      sub_100D7F730(v20, v13, _s17CategoryViewModelVMa);
      v23 = *(v8 + 32);
      v24 = v8;
      v25 = *&v17[v23];
      v26 = *&v13[v23];
      sub_100D7F808(v13, _s17CategoryViewModelVMa);
      result = sub_100D7F808(v17, _s17CategoryViewModelVMa);
      v27 = v25 >= v26;
      v8 = v24;
      if (v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v20 = v34 + v30;
        v21 = v33 - 1;
        v22 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = v38;
      sub_100D7F868(v22, v38, _s17CategoryViewModelVMa);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100D7F868(v28, v20, _s17CategoryViewModelVMa);
      v20 += v36;
      v22 += v36;
      v27 = __CFADD__(v21++, 1);
      if (v27)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100D7D888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v37 = a5;
  v36 = _s13ItemViewModelVMa();
  v9 = __chkstk_darwin(v36);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v30 = a2;
  if (a3 != a2)
  {
    v19 = *(v16 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = *a4;
    v29 = v19;
    v23 = v35 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    v24 = v22;
    v25 = v20;
    while (1)
    {
      sub_100D7F730(v23, v18, _s13ItemViewModelVMa);
      sub_100D7F730(v25, v14, _s13ItemViewModelVMa);
      v26 = sub_100D6F4DC(v18, v14, v37);
      sub_100D7F808(v14, _s13ItemViewModelVMa);
      result = sub_100D7F808(v18, _s13ItemViewModelVMa);
      if (v26 != -1)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_100D7F868(v23, v11, _s13ItemViewModelVMa);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_100D7F868(v11, v25, _s13ItemViewModelVMa);
      v25 += v21;
      v23 += v21;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100D7DAD8(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = _s17CategoryViewModelVMa();
  v9 = *(v126 - 8);
  v10 = __chkstk_darwin(v126);
  v115 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v123 = &v107 - v13;
  v14 = __chkstk_darwin(v12);
  v125 = &v107 - v15;
  result = __chkstk_darwin(v14);
  v124 = &v107 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v127 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *(result + 16 * a4);
          v105 = result;
          v9 = *(result + 16 * (a4 - 1) + 40);
          sub_100D7ED2C(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *(result + 16 * (a4 - 1) + 32), *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_10113DE48(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_10113DDBC(a4 - 1);
          result = v127;
          a4 = *(v127 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_134;
      }
    }

LABEL_130:
    result = sub_10113DE48(a4);
    goto LABEL_99;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v116 = v20;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v109 = v6;
      v23 = *a3;
      v24 = *(v9 + 72);
      v5 = *a3 + v24 * v22;
      v25 = v124;
      sub_100D7F730(v5, v124, _s17CategoryViewModelVMa);
      v26 = v125;
      sub_100D7F730(v23 + v24 * v21, v125, _s17CategoryViewModelVMa);
      v27 = *(v126 + 32);
      v28 = *(v25 + v27);
      v119 = *(v26 + v27);
      v120 = v28;
      sub_100D7F808(v26, _s17CategoryViewModelVMa);
      result = sub_100D7F808(v25, _s17CategoryViewModelVMa);
      v110 = v21;
      v29 = v21 + 2;
      v121 = v24;
      v30 = v23 + v24 * v29;
      while (v18 != v29)
      {
        LODWORD(v122) = v120 < v119;
        v31 = v124;
        sub_100D7F730(v30, v124, _s17CategoryViewModelVMa);
        v32 = v125;
        sub_100D7F730(v5, v125, _s17CategoryViewModelVMa);
        v33 = *(v126 + 32);
        v34 = *(v31 + v33);
        v35 = *(v32 + v33);
        sub_100D7F808(v32, _s17CategoryViewModelVMa);
        result = sub_100D7F808(v31, _s17CategoryViewModelVMa);
        ++v29;
        v30 += v121;
        v5 += v121;
        if (((v122 ^ (v34 >= v35)) & 1) == 0)
        {
          v18 = v29 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v21 = v110;
      a4 = v111;
      if (v120 < v119)
      {
        if (v18 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v18)
        {
          v36 = v121 * (v18 - 1);
          v37 = v18 * v121;
          v120 = v18;
          v38 = v18;
          v39 = v110;
          v40 = v110 * v121;
          do
          {
            if (v39 != --v38)
            {
              v41 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v41 + v40;
              sub_100D7F868(v41 + v40, v115, _s17CategoryViewModelVMa);
              if (v40 < v36 || v5 >= v41 + v37)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v40 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_100D7F868(v115, v41 + v36, _s17CategoryViewModelVMa);
            }

            ++v39;
            v36 -= v121;
            v37 -= v121;
            v40 += v121;
          }

          while (v39 < v38);
          a3 = v113;
          v9 = v108;
          v21 = v110;
          a4 = v111;
          v18 = v120;
        }
      }
    }

    v42 = a3[1];
    if (v18 >= v42)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v18, v21))
    {
      goto LABEL_126;
    }

    if (v18 - v21 >= a4)
    {
LABEL_32:
      v44 = v18;
      if (v18 < v21)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v21, a4))
    {
      goto LABEL_128;
    }

    if ((v21 + a4) >= v42)
    {
      v43 = a3[1];
    }

    else
    {
      v43 = v21 + a4;
    }

    if (v43 < v21)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v18 == v43)
    {
      goto LABEL_32;
    }

    v89 = *a3;
    v90 = *(v9 + 72);
    v91 = *a3 + v90 * (v18 - 1);
    v92 = v21;
    v93 = -v90;
    v109 = v6;
    v110 = v92;
    v94 = v92 - v18;
    v122 = v89;
    v114 = v90;
    v5 = v89 + v18 * v90;
    v95 = v126;
    v117 = v43;
LABEL_86:
    v119 = v94;
    v120 = v18;
    v118 = v5;
    v121 = v91;
    v96 = v91;
LABEL_87:
    a4 = v124;
    sub_100D7F730(v5, v124, _s17CategoryViewModelVMa);
    v97 = v125;
    sub_100D7F730(v96, v125, _s17CategoryViewModelVMa);
    v98 = *(v95 + 32);
    v99 = *(a4 + v98);
    v100 = *(v97 + v98);
    sub_100D7F808(v97, _s17CategoryViewModelVMa);
    result = sub_100D7F808(a4, _s17CategoryViewModelVMa);
    if (v99 < v100)
    {
      break;
    }

    v95 = v126;
LABEL_85:
    v18 = v120 + 1;
    v91 = v121 + v114;
    v94 = v119 - 1;
    v5 = v118 + v114;
    v44 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v21 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = v116;
    }

    else
    {
      result = sub_100B355CC(0, *(v116 + 2) + 1, 1, v116);
      v20 = result;
    }

    a4 = *(v20 + 2);
    v45 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100B355CC((v45 > 1), a4 + 1, 1, v20);
      v20 = result;
    }

    *(v20 + 2) = v5;
    v46 = &v20[16 * a4];
    *(v46 + 4) = v21;
    *(v46 + 5) = v44;
    v47 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v44;
    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v20[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_112;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_113;
          }

          v60 = &v20[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_115;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v64 >= v56)
          {
            v82 = &v20[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_122;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_114;
            }

            v65 = &v20[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_117;
            }

            v71 = &v20[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_121;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v20 + 4);
            v50 = *(v20 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v20[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_116;
          }

          v78 = &v20[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_119;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v86 = v20;
        v87 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v48 + 40];
        sub_100D7ED2C(*a3 + *(v9 + 72) * v87, *a3 + *(v9 + 72) * *&v20[16 * v48 + 32], *a3 + *(v9 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_10113DE48(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_111;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v127 = v86;
        result = sub_10113DDBC(v48);
        v20 = v127;
        v5 = *(v127 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v18 = a3[1];
    v19 = v117;
    a4 = v111;
    if (v117 >= v18)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v101 = v123;
    sub_100D7F868(v5, v123, _s17CategoryViewModelVMa);
    v95 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_100D7F868(v101, v96, _s17CategoryViewModelVMa);
    v96 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_100D7E3FC(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v120 = a5;
  v106 = a1;
  v119 = _s13ItemViewModelVMa();
  v113 = *(v119 - 8);
  v9 = __chkstk_darwin(v119);
  v108 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v118 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v103 - v14;
  result = __chkstk_darwin(v13);
  v18 = &v103 - v17;
  v115 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v105 = a4;
    v20 = 0;
    v21 = _swiftEmptyArrayStorage;
    while (1)
    {
      v22 = v20;
      v23 = v20 + 1;
      if (v23 >= v19)
      {
        v19 = v23;
      }

      else
      {
        v24 = *v115;
        v25 = *(v113 + 72);
        v107 = v22;
        v26 = v24 + v25 * v23;
        v117 = v24;
        sub_100D7F730(v26, v18, _s13ItemViewModelVMa);
        sub_100D7F730(v24 + v25 * v107, v15, _s13ItemViewModelVMa);
        v112 = sub_100D6F4DC(v18, v15, v120);
        sub_100D7F808(v15, _s13ItemViewModelVMa);
        result = sub_100D7F808(v18, _s13ItemViewModelVMa);
        v27 = v107 + 2;
        v114 = v25;
        v28 = v117 + v25 * (v107 + 2);
        while (v19 != v27)
        {
          v117 = v6;
          LODWORD(v116) = v112 == -1;
          sub_100D7F730(v28, v18, _s13ItemViewModelVMa);
          sub_100D7F730(v26, v15, _s13ItemViewModelVMa);
          v29 = v19;
          v30 = v21;
          v31 = sub_100D6F4DC(v18, v15, v120);
          sub_100D7F808(v15, _s13ItemViewModelVMa);
          result = sub_100D7F808(v18, _s13ItemViewModelVMa);
          v32 = v31 == -1;
          v21 = v30;
          v19 = v29;
          v33 = !v32;
          v6 = v117;
          ++v27;
          v28 += v114;
          v26 += v114;
          if (((v116 ^ v33) & 1) == 0)
          {
            v19 = v27 - 1;
            break;
          }
        }

        v22 = v107;
        if (v112 == -1)
        {
          if (v19 < v107)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
            return result;
          }

          if (v107 < v19)
          {
            v34 = v19;
            v104 = v21;
            v116 = v19;
            v117 = v6;
            v35 = v114 * (v19 - 1);
            v36 = v19 * v114;
            v37 = v107;
            v38 = v107 * v114;
            do
            {
              if (v37 != --v34)
              {
                v39 = *v115;
                if (!*v115)
                {
                  goto LABEL_133;
                }

                sub_100D7F868(v39 + v38, v108, _s13ItemViewModelVMa);
                if (v38 < v35 || v39 + v38 >= v39 + v36)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v38 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_100D7F868(v108, v39 + v35, _s13ItemViewModelVMa);
              }

              ++v37;
              v35 -= v114;
              v36 -= v114;
              v38 += v114;
            }

            while (v37 < v34);
            v19 = v116;
            v6 = v117;
            v21 = v104;
            v22 = v107;
          }
        }
      }

      v40 = v115[1];
      if (v19 >= v40)
      {
        goto LABEL_35;
      }

      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 >= v105)
      {
        goto LABEL_35;
      }

      if (__OFADD__(v22, v105))
      {
        goto LABEL_126;
      }

      if (v22 + v105 >= v40)
      {
        v41 = v115[1];
      }

      else
      {
        v41 = v22 + v105;
      }

      if (v41 < v22)
      {
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if (v19 == v41)
      {
LABEL_35:
        v42 = v19;
        if (v19 < v22)
        {
          goto LABEL_124;
        }
      }

      else
      {
        v104 = v21;
        v117 = v6;
        v88 = v19;
        v89 = *v115;
        v90 = *(v113 + 72);
        v91 = *v115 + v90 * (v88 - 1);
        v92 = -v90;
        v107 = v22;
        v93 = v22 - v88;
        v116 = v88;
        v109 = v90;
        v110 = v41;
        v94 = v89 + v88 * v90;
        do
        {
          v111 = v94;
          v112 = v93;
          v95 = v93;
          v114 = v91;
          do
          {
            sub_100D7F730(v94, v18, _s13ItemViewModelVMa);
            sub_100D7F730(v91, v15, _s13ItemViewModelVMa);
            v96 = sub_100D6F4DC(v18, v15, v120);
            sub_100D7F808(v15, _s13ItemViewModelVMa);
            result = sub_100D7F808(v18, _s13ItemViewModelVMa);
            if (v96 != -1)
            {
              break;
            }

            if (!v89)
            {
              goto LABEL_130;
            }

            v97 = v118;
            sub_100D7F868(v94, v118, _s13ItemViewModelVMa);
            swift_arrayInitWithTakeFrontToBack();
            sub_100D7F868(v97, v91, _s13ItemViewModelVMa);
            v91 += v92;
            v94 += v92;
          }

          while (!__CFADD__(v95++, 1));
          v42 = v110;
          v91 = v114 + v109;
          v93 = v112 - 1;
          v94 = v111 + v109;
          ++v116;
        }

        while (v116 != v110);
        v6 = v117;
        v21 = v104;
        v22 = v107;
        if (v110 < v107)
        {
          goto LABEL_124;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100B355CC(0, *(v21 + 2) + 1, 1, v21);
        v21 = result;
      }

      v44 = *(v21 + 2);
      v43 = *(v21 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        result = sub_100B355CC((v43 > 1), v44 + 1, 1, v21);
        v21 = result;
      }

      *(v21 + 2) = v45;
      v46 = &v21[16 * v44];
      *(v46 + 4) = v22;
      *(v46 + 5) = v42;
      v117 = *v106;
      if (!v117)
      {
        goto LABEL_134;
      }

      v110 = v42;
      if (v44)
      {
        while (1)
        {
          v22 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v47 = *(v21 + 4);
            v48 = *(v21 + 5);
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_55:
            if (v50)
            {
              goto LABEL_113;
            }

            v63 = &v21[16 * v45];
            v65 = *v63;
            v64 = *(v63 + 1);
            v66 = __OFSUB__(v64, v65);
            v67 = v64 - v65;
            v68 = v66;
            if (v66)
            {
              goto LABEL_116;
            }

            v69 = &v21[16 * v22 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v57 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v57)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v67, v72))
            {
              goto LABEL_120;
            }

            if (v67 + v72 >= v49)
            {
              if (v49 < v72)
              {
                v22 = v45 - 2;
              }

              goto LABEL_76;
            }

            goto LABEL_69;
          }

          v73 = &v21[16 * v45];
          v75 = *v73;
          v74 = *(v73 + 1);
          v57 = __OFSUB__(v74, v75);
          v67 = v74 - v75;
          v68 = v57;
LABEL_69:
          if (v68)
          {
            goto LABEL_115;
          }

          v76 = &v21[16 * v22];
          v78 = *(v76 + 4);
          v77 = *(v76 + 5);
          v57 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v79 < v67)
          {
            goto LABEL_3;
          }

LABEL_76:
          v84 = v22 - 1;
          if (v22 - 1 >= v45)
          {
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

          if (!*v115)
          {
            goto LABEL_131;
          }

          v85 = *&v21[16 * v84 + 32];
          v86 = *&v21[16 * v22 + 40];
          sub_100D7F238(*v115 + *(v113 + 72) * v85, *v115 + *(v113 + 72) * *&v21[16 * v22 + 32], *v115 + *(v113 + 72) * v86, v117, v120);
          if (v6)
          {
          }

          if (v86 < v85)
          {
            goto LABEL_109;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_10113DE48(v21);
          }

          if (v84 >= *(v21 + 2))
          {
            goto LABEL_110;
          }

          v87 = &v21[16 * v84];
          *(v87 + 4) = v85;
          *(v87 + 5) = v86;
          v121 = v21;
          result = sub_10113DDBC(v22);
          v21 = v121;
          v45 = *(v121 + 2);
          if (v45 <= 1)
          {
            goto LABEL_3;
          }
        }

        v51 = &v21[16 * v45 + 32];
        v52 = *(v51 - 64);
        v53 = *(v51 - 56);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_111;
        }

        v56 = *(v51 - 48);
        v55 = *(v51 - 40);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_112;
        }

        v58 = &v21[16 * v45];
        v60 = *v58;
        v59 = *(v58 + 1);
        v57 = __OFSUB__(v59, v60);
        v61 = v59 - v60;
        if (v57)
        {
          goto LABEL_114;
        }

        v57 = __OFADD__(v49, v61);
        v62 = v49 + v61;
        if (v57)
        {
          goto LABEL_117;
        }

        if (v62 >= v54)
        {
          v80 = &v21[16 * v22 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v57 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v57)
          {
            goto LABEL_121;
          }

          if (v49 < v83)
          {
            v22 = v45 - 2;
          }

          goto LABEL_76;
        }

        goto LABEL_55;
      }

LABEL_3:
      v19 = v115[1];
      v20 = v110;
      if (v110 >= v19)
      {
        goto LABEL_97;
      }
    }
  }

  v21 = _swiftEmptyArrayStorage;
LABEL_97:
  v22 = *v106;
  if (!*v106)
  {
    goto LABEL_135;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_128:
    result = sub_10113DE48(v21);
    v21 = result;
  }

  v121 = v21;
  v99 = *(v21 + 2);
  if (v99 >= 2)
  {
    while (*v115)
    {
      v100 = *&v21[16 * v99];
      v101 = *&v21[16 * v99 + 24];
      sub_100D7F238(*v115 + *(v113 + 72) * v100, *v115 + *(v113 + 72) * *&v21[16 * v99 + 16], *v115 + *(v113 + 72) * v101, v22, v120);
      if (v6)
      {
      }

      if (v101 < v100)
      {
        goto LABEL_122;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_10113DE48(v21);
      }

      if (v99 - 2 >= *(v21 + 2))
      {
        goto LABEL_123;
      }

      v102 = &v21[16 * v99];
      *v102 = v100;
      *(v102 + 1) = v101;
      v121 = v21;
      result = sub_10113DDBC(v99 - 1);
      v21 = v121;
      v99 = *(v121 + 2);
      if (v99 <= 1)
      {
      }
    }

    goto LABEL_132;
  }
}

uint64_t sub_100D7ED2C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = _s17CategoryViewModelVMa();
  v9 = __chkstk_darwin(v8);
  v53 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v52 = &v43 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v56 = a1;
  v55 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v18;
    if (v18 >= 1)
    {
      v27 = -v14;
      v28 = v26;
      v47 = a4;
      v48 = a1;
      v51 = v8;
      v46 = -v14;
      do
      {
        v44 = v26;
        v29 = a2;
        v30 = a2 + v27;
        v49 = a2;
        v50 = a2 + v27;
        while (1)
        {
          if (v29 <= a1)
          {
            v56 = v29;
            v54 = v44;
            goto LABEL_60;
          }

          v32 = a3;
          v45 = v26;
          a3 += v27;
          v33 = v28 + v27;
          v34 = v52;
          v35 = v28;
          sub_100D7F730(v28 + v27, v52, _s17CategoryViewModelVMa);
          v36 = v53;
          sub_100D7F730(v30, v53, _s17CategoryViewModelVMa);
          v37 = *(v8 + 32);
          v38 = *(v34 + v37);
          v39 = *(v36 + v37);
          sub_100D7F808(v36, _s17CategoryViewModelVMa);
          sub_100D7F808(v34, _s17CategoryViewModelVMa);
          if (v38 < v39)
          {
            break;
          }

          v26 = v33;
          if (v32 < v35 || a3 >= v35)
          {
            v31 = v51;
            swift_arrayInitWithTakeFrontToBack();
            v30 = v50;
            v8 = v31;
            v27 = v46;
          }

          else
          {
            v30 = v50;
            v8 = v51;
            v27 = v46;
            if (v32 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v28 = v33;
          a1 = v48;
          v29 = v49;
          if (v33 <= v47)
          {
            a2 = v49;
            goto LABEL_59;
          }
        }

        v40 = v47;
        if (v32 < v49 || a3 >= v49)
        {
          a2 = v50;
          v8 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v45;
          v27 = v46;
        }

        else
        {
          v41 = v32 == v49;
          a2 = v50;
          v8 = v51;
          v26 = v45;
          v27 = v46;
          if (!v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v28 = v35;
        v42 = v35 > v40;
        a1 = v48;
      }

      while (v42);
    }

LABEL_59:
    v56 = a2;
    v54 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v50 = a4 + v17;
    v54 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      v49 = a3;
      v51 = v8;
      do
      {
        v20 = v52;
        sub_100D7F730(a2, v52, _s17CategoryViewModelVMa);
        v21 = v53;
        sub_100D7F730(a4, v53, _s17CategoryViewModelVMa);
        v22 = *(v8 + 32);
        v23 = *(v20 + v22);
        v24 = *(v21 + v22);
        sub_100D7F808(v21, _s17CategoryViewModelVMa);
        sub_100D7F808(v20, _s17CategoryViewModelVMa);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            v8 = v51;
            swift_arrayInitWithTakeFrontToBack();
            v25 = v49;
          }

          else
          {
            v25 = v49;
            v8 = v51;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v55 = a4 + v14;
          a4 += v14;
        }

        else if (a1 < a2 || a1 >= a2 + v14)
        {
          v8 = v51;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v14;
          v25 = v49;
        }

        else
        {
          v25 = v49;
          v8 = v51;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v56 = a1;
      }

      while (a4 < v50 && a2 < v25);
    }
  }

LABEL_60:
  sub_10063F7F4(&v56, &v55, &v54);
  return 1;
}

uint64_t sub_100D7F238(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v43 = a5;
  v44 = a3;
  v41 = _s13ItemViewModelVMa();
  v8 = __chkstk_darwin(v41);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = v23;
      v26 = v23;
      v38 = v24;
      v39 = a1;
      while (2)
      {
        while (1)
        {
          v36 = v26;
          v27 = a2 + v24;
          v40 = a2;
          while (1)
          {
            v29 = v44;
            if (a2 <= a1)
            {
              v47 = a2;
              v45 = v36;
              goto LABEL_60;
            }

            v37 = v26;
            v30 = a4;
            v44 += v24;
            v31 = v25 + v24;
            sub_100D7F730(v31, v12, _s13ItemViewModelVMa);
            a2 = v27;
            v32 = v12;
            v33 = v42;
            sub_100D7F730(v27, v42, _s13ItemViewModelVMa);
            v34 = sub_100D6F4DC(v32, v33, v43);
            v35 = v33;
            v12 = v32;
            sub_100D7F808(v35, _s13ItemViewModelVMa);
            sub_100D7F808(v32, _s13ItemViewModelVMa);
            if (v34 == -1)
            {
              break;
            }

            v26 = v31;
            a4 = v30;
            if (v29 < v25 || v44 >= v25)
            {
              swift_arrayInitWithTakeFrontToBack();
              v27 = a2;
              a1 = v39;
            }

            else
            {
              v27 = a2;
              a1 = v39;
              if (v29 != v25)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v25 = v31;
            v28 = v31 > a4;
            v24 = v38;
            a2 = v40;
            if (!v28)
            {
              goto LABEL_58;
            }
          }

          a4 = v30;
          if (v29 < v40 || v44 >= v40)
          {
            break;
          }

          v24 = v38;
          a1 = v39;
          v26 = v37;
          if (v29 != v40)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v25 <= a4)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v24 = v38;
        a1 = v39;
        v26 = v37;
        if (v25 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_100D7F730(a2, v12, _s13ItemViewModelVMa);
        v21 = v42;
        sub_100D7F730(a4, v42, _s13ItemViewModelVMa);
        v22 = sub_100D6F4DC(v12, v21, v43);
        sub_100D7F808(v21, _s13ItemViewModelVMa);
        sub_100D7F808(v12, _s13ItemViewModelVMa);
        if (v22 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_60:
  sub_10063F80C(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_100D7F730(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D7F798(uint64_t a1)
{
  v3 = *(_s17CategoryViewModelVMa() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100B53B64(a1, v4);
}

uint64_t sub_100D7F808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100D7F868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100D7F8D0(void *a1)
{
  v29 = a1;
  v2 = sub_1005B981C(&qword_1019FB750);
  __chkstk_darwin(v2 - 8);
  v30 = &v28 - v3;
  v28 = sub_1005B981C(&qword_101A1F198);
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v28 - v5;
  v7 = sub_1005B981C(&qword_101A1F190);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = sub_1005B981C(&qword_101A1F188);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__itemViewModels;
  v31 = _swiftEmptyArrayStorage;
  sub_1005B981C(&qword_101A1EEC0);
  Published.init(initialValue:)();
  (*(v12 + 32))(v1 + v15, v14, v11);
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary_itemViewModelsSortStyle) = 0;
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary_itemViewModelsSortAscending) = 1;
  v16 = OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__categories;
  v31 = _swiftEmptyArrayStorage;
  sub_1005B981C(&qword_101A1EED0);
  Published.init(initialValue:)();
  (*(v8 + 32))(v1 + v16, v10, v7);
  v17 = OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__topLevelFilterViewModels;
  v31 = _swiftEmptyArrayStorage;
  sub_1005B981C(&unk_101A1EEE0);
  Published.init(initialValue:)();
  v18 = *(v4 + 32);
  v19 = v28;
  v18(v1 + v17, v6, v28);
  v20 = OBJC_IVAR____TtC8Freeform17CRLStencilLibrary__categoryFilterViewModels;
  v31 = _swiftEmptyArrayStorage;
  Published.init(initialValue:)();
  v18(v1 + v20, v6, v19);
  v21 = v29;
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary_realDataStore) = v29;
  type metadata accessor for CRLStencilLibrary.FakeDataStore();
  v22 = swift_allocObject();
  *(v22 + 16) = _swiftEmptySetSingleton;
  *(v22 + 24) = v21;
  *(v1 + OBJC_IVAR____TtC8Freeform17CRLStencilLibrary_fakeDataStore) = v22;
  v23 = v21;
  sub_100D7AF18();
  v24 = type metadata accessor for TaskPriority();
  v25 = v30;
  (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v1;

  sub_100796D54(0, 0, v25, &unk_1014B18B8, v26);

  return v1;
}

uint64_t sub_100D7FD20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100D79F30(a1, v4, v5, v6);
}

uint64_t sub_100D7FDD4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_10002D3D4;

  return sub_100D7BA84(a1, a2, v6, v7, v8);
}

uint64_t sub_100D7FE98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100D7FEE0(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_100D7C3AC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100D80010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1F1B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100D80080()
{
  result = qword_101A1F1B8;
  if (!qword_101A1F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F1B8);
  }

  return result;
}

unint64_t sub_100D800E8()
{
  result = qword_101A1F1C0;
  if (!qword_101A1F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F1C0);
  }

  return result;
}

void *sub_100D80160(void *a1, NSString a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 boardItemFactory];
  if (!v8)
  {
    isEscapingClosureAtFileLocation = objc_opt_self();
    LODWORD(v11) = [isEscapingClosureAtFileLocation _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock);
    StaticString.description.getter();
    a2 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v18 = String._bridgeToObjectiveC()();

    v19 = [v18 lastPathComponent];

    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v20;

    if (qword_1019F20A0 == -1)
    {
LABEL_5:
      v21 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v11;
      v23 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v23;
      v24 = sub_1005CF04C();
      *(inited + 104) = v24;
      *(inited + 72) = a2;
      *(inited + 136) = &type metadata for String;
      v25 = sub_1000053B0();
      *(inited + 112) = v12;
      *(inited + 120) = v9;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v25;
      *(inited + 152) = 27;
      v26 = aBlock[0];
      *(inited + 216) = v23;
      *(inited + 224) = v24;
      *(inited + 192) = v26;
      v27 = a2;
      v28 = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v30 = static os_log_type_t.error.getter();
      v17 = _swiftEmptyArrayStorage;
      sub_100005404(v21, &_mh_execute_header, v30, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

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

      [isEscapingClosureAtFileLocation handleFailureInFunction:v33 file:v34 lineNumber:27 isFatal:0 format:v35 args:v32];

      return v17;
    }

LABEL_8:
    swift_once();
    goto LABEL_5;
  }

  v9 = v8;
  v38 = _swiftEmptyArrayStorage;
  v10 = NSAdaptiveImageGlyphAttributeName;
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = &v38;
  v11[4] = v9;
  v12 = swift_allocObject();
  v12[2] = sub_100D80DFC;
  v12[3] = v11;
  aBlock[4] = sub_100D80E08;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_100D80CC0;
  aBlock[3] = &unk_1018A4158;
  v13 = _Block_copy(aBlock);
  v14 = v4;
  v15 = v9;

  [a1 enumerateAttribute:v10 inRange:a2 options:a3 usingBlock:{0, v13}];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = v38;

  return v17;
}

void sub_100D8068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100601584(a1, v50);
  if (v50[3])
  {
    sub_100006370(0, &qword_101A1F288);
    if (swift_dynamicCast())
    {
      v14 = v49[0];
      v50[0] = 0;
      v50[1] = 0;
      v49[0] = 0;
      v49[1] = 0;
      v47 = v14;
      v15 = [v14 imageForProposedSize:v50 scaleFactor:v49 imageOffset:320.0 imageSize:{320.0, 1.0}];
      v16 = v15;
      if (v15 && (v17 = v15, v18 = sub_100ADF114(), v20 = v19, v17, v20 >> 60 != 15))
      {
        sub_100024E98(v18, v20);
        static UTType.heic.getter();
        v46 = v18;
        UTType.identifier.getter();
        (*(v11 + 8))(v13, v10);
        v42 = objc_allocWithZone(CRLInfoImporterBoardItemProvider);
        v43 = v46;
        isa = Data._bridgeToObjectiveC()().super.isa;
        v45 = String._bridgeToObjectiveC()();

        [v42 initWithData:isa type:v45 boardItemFactory:a7];

        sub_100025870(v43, v20);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_100025870(v43, v20);
      }

      else
      {
        v46 = objc_opt_self();
        v21 = [v46 _atomicIncrementAssertCount];
        v48 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v48);
        StaticString.description.getter();
        v22 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v23 = String._bridgeToObjectiveC()();

        v24 = [v23 lastPathComponent];

        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v28 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v21;
        v30 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v30;
        v31 = sub_1005CF04C();
        *(inited + 104) = v31;
        *(inited + 72) = v22;
        *(inited + 136) = &type metadata for String;
        v32 = sub_1000053B0();
        *(inited + 112) = v25;
        *(inited + 120) = v27;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v32;
        *(inited + 152) = 48;
        v33 = v48;
        *(inited + 216) = v30;
        *(inited + 224) = v31;
        *(inited + 192) = v33;
        v34 = v22;
        v35 = v33;
        v36 = static os_log_type_t.error.getter();
        sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v37 = static os_log_type_t.error.getter();
        sub_100005404(v28, &_mh_execute_header, v37, "Unable to extract adative glyph from attributed text", 52, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v38 = swift_allocObject();
        v38[2] = 8;
        v38[3] = 0;
        v38[4] = 0;
        v38[5] = 0;
        v39 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v40 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v41 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v17 = String._bridgeToObjectiveC()();

        [v46 handleFailureInFunction:v40 file:v41 lineNumber:48 isFatal:0 format:v17 args:v39];
      }
    }
  }

  else
  {
    sub_1005E09AC(v50);
  }
}

uint64_t sub_100D80CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_10000BF3C(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1005E09AC(v13);
}

void static CRLAnalyticsFeatureUsed.logFeatureUsed(named:)(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(a1);
  sub_100006370(0, &qword_1019F54D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 sendEventInDomain:v3 lazily:1 eventPayload:isa];
}

id CRLAnalyticsFeatureUsed.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAnalyticsFeatureUsed();
  return objc_msgSendSuper2(&v2, "init");
}

id CRLAnalyticsFeatureUsed.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAnalyticsFeatureUsed();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(uint64_t a1)
{
  sub_100FE3698(a1);
  if (v2)
  {
    sub_1005B981C(&qword_1019FD9F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 32) = 0x4E65727574616566;
    *(inited + 40) = 0xEB00000000656D61;
    v4 = objc_allocWithZone(NSString);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithString:v5];

    *(inited + 48) = v6;
    v7 = sub_100043E40(inited);
    swift_setDeallocating();
    sub_100D81778(inited + 32);
    return v7;
  }

  sub_1005B981C(&qword_1019F54E0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10146C6B0;
  *(v9 + 32) = a1;
  v10 = v9 + 32;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  v50 = objc_opt_self();
  v11 = [v50 _atomicIncrementAssertCount];
  v51 = [objc_allocWithZone(NSString) init];
  sub_100604538(v9, &v51);
  StaticString.description.getter();
  v12 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_34;
  }

LABEL_4:
  v18 = static OS_os_log.crlAssert;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_10146CA70;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = v11;
  v20 = sub_100006370(0, &qword_1019F4D30);
  *(v19 + 96) = v20;
  v21 = sub_1005CF04C();
  *(v19 + 104) = v21;
  *(v19 + 72) = v12;
  *(v19 + 136) = &type metadata for String;
  v22 = sub_1000053B0();
  *(v19 + 112) = v15;
  *(v19 + 120) = v17;
  *(v19 + 176) = &type metadata for UInt;
  *(v19 + 184) = &protocol witness table for UInt;
  *(v19 + 144) = v22;
  *(v19 + 152) = 19;
  v23 = v51;
  *(v19 + 216) = v20;
  *(v19 + 224) = v21;
  *(v19 + 192) = v23;
  v24 = v12;
  v25 = v23;
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v19);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v27, "Feature Name: (%lu) for analytics is unrecognized", 49, 2, v9);

  type metadata accessor for __VaListBuilder();
  v28 = swift_allocObject();
  v28[2] = 8;
  v28[3] = 0;
  v15 = v28 + 3;
  v28[4] = 0;
  v28[5] = 0;
  v12 = *(v9 + 16);
  v17 = v9;
  if (v12)
  {
    v9 = 0;
    v11 = 40;
    while (1)
    {
      sub_100020E58((v10 + 40 * v9), *(v10 + 40 * v9 + 24));
      v29 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v30 = *v15;
      v31 = *(v29 + 16);
      v32 = __OFADD__(*v15, v31);
      v33 = *v15 + v31;
      if (v32)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        swift_once();
        goto LABEL_4;
      }

      v34 = v28[4];
      if (v34 >= v33)
      {
        goto LABEL_21;
      }

      if (v34 + 0x4000000000000000 < 0)
      {
        goto LABEL_32;
      }

      v35 = v28[5];
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      v28[4] = v33;
      if ((v33 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_33;
      }

      v36 = v10;
      v37 = v17;
      v38 = v29;
      v39 = swift_slowAlloc();
      v40 = v39;
      v28[5] = v39;
      if (v35)
      {
        break;
      }

      v29 = v38;
      v17 = v37;
      v10 = v36;
      v11 = 40;
      if (!v40)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v42 = *(v29 + 16);
      if (v42)
      {
        v43 = (v29 + 32);
        v44 = *v15;
        while (1)
        {
          v45 = *v43++;
          *&v40[8 * v44] = v45;
          v44 = *v15 + 1;
          if (__OFADD__(*v15, 1))
          {
            break;
          }

          *v15 = v44;
          if (!--v42)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_6:

      if (++v9 == v12)
      {
        goto LABEL_29;
      }
    }

    if (v39 != v35 || v39 >= &v35[8 * v30])
    {
      memmove(v39, v35, 8 * v30);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v29 = v38;
    v17 = v37;
    v10 = v36;
    v11 = 40;
LABEL_21:
    v40 = v28[5];
    if (!v40)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v49 = String._bridgeToObjectiveC()();

  [v50 handleFailureInFunction:v47 file:v48 lineNumber:19 isFatal:0 format:v49 args:v46];

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_100043E40(_swiftEmptyArrayStorage);
}

uint64_t sub_100D81778(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FD9F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100D817E0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10113E268(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100D81ED0(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100D8185C(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted) != *(v1 + OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_encrypted))
  {
    sub_10091C224();
    swift_allocError();
    v3 = 2;
LABEL_9:
    *v2 = v3;
    return swift_willThrow();
  }

  v5 = OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chunksBuffer;
  result = swift_beginAccess();
  v7 = *(v1 + OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_lastIndex) + 1;
  if ((v7 & 0x10000) == 0)
  {
    if (*(*(v1 + v5) + 16) == v7)
    {
      sub_10091C224();
      swift_allocError();
      v3 = 1;
    }

    else
    {
      if (static UUID.== infix(_:_:)())
      {
        v8 = *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *(v1 + v5);
        *(v1 + v5) = 0x8000000000000000;
        sub_100A9D37C(a1, v8, isUniquelyReferenced_nonNull_native);
        *(v1 + v5) = v10;
        return swift_endAccess();
      }

      sub_10091C224();
      swift_allocError();
      v3 = 0;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_100D81A1C()
{
  v1 = OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chunksBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_100B3D660(*(v2 + 16), 0);
  v5 = sub_100B3AD2C(&v13, v4 + 4, v3, v2);
  swift_bridgeObjectRetain_n();
  sub_100035F90();
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = _swiftEmptyArrayStorage;
  }

  *&v13 = v4;
  sub_100D817E0(&v13);

  v6 = v13;
  v13 = xmmword_10146F370;
  if ((v6 & 0x8000000000000000) == 0 && (v6 & 0x4000000000000000) == 0)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_16:

    return 0;
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_8:
  if (v7 < 1)
  {
    __break(1u);

    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      ++v8;
      v10 = *(v9 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data);
      v11 = *(v9 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_data + 8);
      sub_100024E98(v10, v11);
      Data.append(_:)();
      sub_10002640C(v10, v11);
    }

    while (v7 != v8);

    return v13;
  }

  return result;
}

uint64_t sub_100D81C0C()
{
  v1 = OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chainID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CRLUnorderedChunkedRealTimeMessageBuffer()
{
  result = qword_101A1F2F0;
  if (!qword_101A1F2F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100D81D0C()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100D81DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chainID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100D81E38()
{
  v1 = OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chunksBuffer;
  result = swift_beginAccess();
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_lastIndex) + 1;
  if ((v3 & 0x10000) == 0)
  {
    return *(*(v0 + v1) + 16) == v3;
  }

  __break(1u);
  return result;
}

Swift::Int sub_100D81ED0(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLChunkedRealTimeMessage();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_100D8204C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100D81FD4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100D81FD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) >= *(*v9 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100D8204C(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v81 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v6 = *v81;
    if (!*v81)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10113DE48(v8);
      v8 = result;
    }

    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = *&v8[16 * v76];
        v78 = *&v8[16 * v76 + 24];
        sub_100D825E8((*a3 + 8 * v77), (*a3 + 8 * *&v8[16 * v76 + 16]), (*a3 + 8 * v78), v6);
        if (v4)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v76 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v79 = &v8[16 * v76];
        *v79 = v77;
        *(v79 + 1) = v78;
        result = sub_10113DDBC(v76 - 1);
        v76 = *(v8 + 2);
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *(*(*a3 + 8 * v7) + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
      v11 = *(*(*a3 + 8 * v9) + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
      v12 = v9 + 2;
      v13 = v10;
      while (v5 != v12)
      {
        v14 = *(*(*a3 + 8 * v12) + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v5;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_117;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_116;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_118;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100B355CC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100B355CC((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v81;
    if (!*v81)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_100D825E8((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v35 + 32]), (*a3 + 8 * v74), v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_10113DDBC(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*(v25 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) >= *(*v27 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index))
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v5)
      {
        goto LABEL_30;
      }

      v7 = v5;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

uint64_t sub_100D825E8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_25:
      v17 = v6 - 8;
      v5 -= 8;
      v18 = v14;
      do
      {
        v19 = v5 + 8;
        v21 = *(v18 - 8);
        v18 -= 8;
        v20 = v21;
        if (*(v21 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) < *(*v17 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index))
        {
          if (v19 != v6)
          {
            *v5 = *v17;
          }

          if (v14 <= v4 || (v6 -= 8, v17 <= v7))
          {
            v6 = v17;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v19 != v14)
        {
          *v5 = v20;
        }

        v5 -= 8;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        if (*(*v6 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index) >= *(*v4 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index))
        {
          break;
        }

        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_16;
        }

LABEL_17:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_19;
        }
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v7 = v15;
      goto LABEL_17;
    }

LABEL_19:
    v6 = v7;
  }

LABEL_36:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_100D8280C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chunksBuffer) = _swiftEmptyDictionarySingleton;
  v3 = OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_chainID;
  v4 = OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chainID;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 16))(v1 + v4, a1 + v3, v5);
  *(v1 + OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_encrypted) = *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_encrypted);
  *(v1 + OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_lastIndex) = *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_lastIndex);
  v6 = OBJC_IVAR____TtC8Freeform40CRLUnorderedChunkedRealTimeMessageBuffer_chunksBuffer;
  LOWORD(v3) = *(a1 + OBJC_IVAR____TtC8Freeform25CRLChunkedRealTimeMessage_index);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v6);
  *(v1 + v6) = 0x8000000000000000;
  sub_100A9D37C(a1, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + v6) = v9;
  swift_endAccess();
  return v1;
}

id sub_100D82B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectionLineID;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v9[v10], a1, v11);
  sub_100060460(a2, &v9[OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectedItemID]);
  *&v9[OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_chirality] = a3;
  *&v9[OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_pathSource] = a4;
  v15.receiver = v9;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_1005C5FFC(a2);
  (*(v12 + 8))(a1, v11);
  return v13;
}

id sub_100D82EC0(char *a1, void *a2, uint64_t a3, void *a4)
{
  v22 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v21 - v13;
  (*(**&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v12);
  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = *(v8 + 8);
  v17 = v16(v14, v7);
  if (a2)
  {
    (*((swift_isaMask & *a2) + 0x88))(v17);
    v18.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v16(v10, v7);
  }

  else
  {
    v18.super.isa = 0;
  }

  v19 = [v21 initWithConnectionLineID:v15.super.isa connectedItemID:v18.super.isa chirality:v22 pathSource:a4];

  return v19;
}

id sub_100D83120(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v22 = a3;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v21 - v13;
  (*(**&a1[OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData] + 264))(v12);
  v15.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = *(v8 + 8);
  v17 = v16(v14, v7);
  if (a2)
  {
    (*((swift_isaMask & *a2) + 0x88))(v17);
    v18.super.isa = UUID._bridgeToObjectiveC()().super.isa;
    v16(v10, v7);
  }

  else
  {
    v18.super.isa = 0;
  }

  v19 = [v4 initWithConnectionLineID:v15.super.isa connectedItemID:v18.super.isa chirality:v22 pathSource:0];

  return v19;
}

void sub_100D8336C(void *a1, uint64_t a2, int a3)
{
  v77 = a2;
  v4 = v3;
  v75 = a3;
  v6 = sub_1005B981C(&qword_1019F6990);
  __chkstk_darwin(v6 - 8);
  v8 = &v74[-v7];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v14 = [a1 getBoardItemForUUID:isa];

  if (!v14)
  {
    goto LABEL_26;
  }

  type metadata accessor for CRLConnectionLineItem();
  v78 = swift_dynamicCastClass();
  if (!v78)
  {
LABEL_25:

LABEL_26:
    v29 = objc_opt_self();
    v30 = [v29 _atomicIncrementAssertCount];
    v79 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v79);
    StaticString.description.getter();
    v31 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v32 = String._bridgeToObjectiveC()();

    v33 = [v32 lastPathComponent];

    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v37 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v39 = sub_1005CF000();
    *(inited + 96) = v39;
    v40 = sub_1005CF04C();
    *(inited + 104) = v40;
    *(inited + 72) = v31;
    *(inited + 136) = &type metadata for String;
    v41 = sub_1000053B0();
    *(inited + 112) = v34;
    *(inited + 120) = v36;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v41;
    *(inited + 152) = 41;
    v42 = v79;
    *(inited + 216) = v39;
    *(inited + 224) = v40;
    *(inited + 192) = v42;
    v43 = v31;
    v44 = v42;
    v45 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v46 = static os_log_type_t.error.getter();
    sub_100005404(v37, &_mh_execute_header, v46, "Unable to retrieve connection line item.", 40, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve connection line item.");
    type metadata accessor for __VaListBuilder();
    v47 = swift_allocObject();
    v47[2] = 8;
    v47[3] = 0;
    v47[4] = 0;
    v47[5] = 0;
    v48 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v49 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v51 = String._bridgeToObjectiveC()();

    [v29 handleFailureInFunction:v49 file:v50 lineNumber:41 isFatal:1 format:v51 args:v48];
    while (1)
    {

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v52, v53);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_30:
      v54 = objc_opt_self();
      v55 = [v54 _atomicIncrementAssertCount];
      v79 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v79);
      StaticString.description.getter();
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v57 = String._bridgeToObjectiveC()();

      v58 = [v57 lastPathComponent];

      v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v61 = v60;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v62 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      v63 = swift_initStackObject();
      *(v63 + 16) = xmmword_10146CA70;
      *(v63 + 56) = &type metadata for Int32;
      *(v63 + 64) = &protocol witness table for Int32;
      *(v63 + 32) = v55;
      v64 = sub_1005CF000();
      *(v63 + 96) = v64;
      v65 = sub_1005CF04C();
      *(v63 + 104) = v65;
      *(v63 + 72) = v56;
      *(v63 + 136) = &type metadata for String;
      v66 = sub_1000053B0();
      *(v63 + 112) = v59;
      *(v63 + 120) = v61;
      *(v63 + 176) = &type metadata for UInt;
      *(v63 + 184) = &protocol witness table for UInt;
      *(v63 + 144) = v66;
      *(v63 + 152) = 47;
      v67 = v79;
      *(v63 + 216) = v64;
      *(v63 + 224) = v65;
      *(v63 + 192) = v67;
      v68 = v56;
      v69 = v67;
      v70 = static os_log_type_t.error.getter();
      sub_100005404(v62, &_mh_execute_header, v70, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v63);

      v71 = static os_log_type_t.error.getter();
      sub_100005404(v62, &_mh_execute_header, v71, "Unable to retrieve item to connect to connection line.", 54, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve item to connect to connection line.");
      type metadata accessor for __VaListBuilder();
      v72 = swift_allocObject();
      v72[2] = 8;
      v72[3] = 0;
      v72[4] = 0;
      v72[5] = 0;
      v73 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v51 = String._bridgeToObjectiveC()();

      [v54 handleFailureInFunction:v49 file:v50 lineNumber:47 isFatal:1 format:v51 args:v73];
    }
  }

  sub_100060460(&v4[OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectedItemID], v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1005C5FFC(v8);
    v15 = 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v16 = UUID._bridgeToObjectiveC()().super.isa;
    v15 = [a1 getBoardItemForUUID:v16];

    if (!v15)
    {
      goto LABEL_30;
    }

    (*(v10 + 8))(v12, v9);
  }

  v17 = v14;
  v14 = v78;
  v18 = v76;
  sub_1012E0400(v78, &off_10188FE10);

  if (v18)
  {

LABEL_22:
    return;
  }

  v19 = *&v4[OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_chirality];
  if (v19 == 1)
  {
    sub_100AEE290(v15);
    v20 = *&v4[OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_pathSource];
    if (!v20)
    {
      goto LABEL_20;
    }

    v21 = v20;
    v22 = v17;
    v4 = v21;
    if ((sub_1011255D0(v4) & 1) == 0)
    {
      goto LABEL_18;
    }

    v14 = **(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
    if (swift_conformsToProtocol2())
    {
LABEL_17:
      v25 = v14[106];

      v25(v4);

      v14 = v78;
LABEL_19:

LABEL_20:
      v26 = v17;
      v27 = v14;
      v28 = v26;
      sub_1012CF6CC(v27, &off_10188FE10, v75);

      goto LABEL_22;
    }

    __break(1u);
  }

  if (!v19)
  {
    sub_100AEDE60(v15);
    v23 = *&v4[OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_pathSource];
    if (!v23)
    {
      goto LABEL_20;
    }

    v24 = v23;
    v22 = v17;
    v4 = v24;
    if (sub_1011255D0(v4))
    {
      v14 = **(v14 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (swift_conformsToProtocol2())
      {
        goto LABEL_17;
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_18:

    v22 = v4;
    goto LABEL_19;
  }

  v79 = v19;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_100D83E68()
{
  v1 = OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectionLineID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1005C5FFC(v0 + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_connectedItemID);
  v3 = *(v0 + OBJC_IVAR____TtC8Freeform37CRLCommandSetConnectionLineConnection_pathSource);
}

id sub_100D83EF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandSetConnectionLineConnection();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandSetConnectionLineConnection()
{
  result = qword_101A1F3F0;
  if (!qword_101A1F3F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D84008()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10000E68C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_100D84100()
{
  result = qword_101A1F400;
  if (!qword_101A1F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A1F400);
  }

  return result;
}

uint64_t sub_100D84154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[38] = a5;
  v6[39] = v5;
  v6[36] = a3;
  v6[37] = a4;
  v6[34] = a1;
  v6[35] = a2;
  v6[40] = *v5;
  v7 = type metadata accessor for DispatchData();
  v6[41] = v7;
  v6[42] = *(v7 - 8);
  v6[43] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[44] = v8;
  v6[45] = *(v8 - 8);
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  sub_1005B981C(&qword_101A1CCF0);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[50] = v9;
  v10 = *(v9 - 8);
  v6[51] = v10;
  v6[52] = *(v10 + 64);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();

  return _swift_task_switch(sub_100D843A4, 0, 0);
}

uint64_t sub_100D843A4()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v2 + 16);
  *(v0 + 456) = v3;
  v4 = *(v2 + 24);
  *(v0 + 464) = v4;
  *(v0 + 192) = v1;
  *(v0 + 200) = &off_1018A41D8;
  *(v0 + 168) = v2;
  type metadata accessor for CRLSerializableObjectWriteCoordinator();
  v10 = *(v0 + 272);
  inited = swift_initStackObject();
  *(v0 + 472) = inited;
  *(inited + 96) = 0;
  *(inited + 16) = v10;
  sub_100050F74((v0 + 168), inited + 32);
  *(inited + 72) = v3;
  *(inited + 80) = v4;
  *(inited + 88) = 5;
  v6 = v3;
  v7 = v4;

  swift_unknownObjectRetain();
  v8 = swift_task_alloc();
  *(v0 + 480) = v8;
  *v8 = v0;
  v8[1] = sub_100D844F8;

  return sub_100AD1538();
}

uint64_t sub_100D844F8()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_100D8516C;
  }

  else
  {
    v2 = sub_100D84638;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100D84638()
{
  v1 = objc_allocWithZone(CRLTemporaryDirectory);
  v0[32] = 0;
  v2 = [v1 initWithError:v0 + 32];
  v3 = v0[32];
  v116 = v0;
  if (v2)
  {
    v4 = v2;
    v5 = v0[51];
    v6 = v0[45];
    v7 = v3;
    v100 = v4;
    v8 = [v4 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = sub_100AD48B8();
    v10 = 0;
    v11 = v9[8];
    v101 = v9 + 8;
    v12 = -1;
    v13 = -1 << *(v9 + 32);
    if (-v13 < 64)
    {
      v12 = ~(-1 << -v13);
    }

    v14 = v12 & v11;
    v15 = (63 - v13) >> 6;
    v104 = (v5 + 16);
    v105 = v9;
    v113 = (v6 + 32);
    v115 = (v5 + 32);
    v103 = v5;
    v109 = (v5 + 8);
    v102 = v6;
    v108 = (v6 + 8);
    v107 = v15;
    if ((v12 & v11) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    v16 = v10;
LABEL_13:
    v19 = v116[55];
    v111 = v116[50];
    v21 = v116[47];
    v20 = v116[48];
    v22 = v116[44];
    v23 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v24 = v23 | (v16 << 6);
    (*(v102 + 16))(v21, v105[6] + *(v102 + 72) * v24, v22);
    (*(v103 + 16))(v19, v105[7] + *(v103 + 72) * v24, v111);
    v25 = sub_1005B981C(&qword_101A1CCF8);
    v26 = *(v25 + 48);
    (*(v102 + 32))(v20, v21, v22);
    (*(v103 + 32))(v20 + v26, v19, v111);
    (*(*(v25 - 8) + 56))(v20, 0, 1, v25);
    v18 = v16;
    while (1)
    {
      v27 = v116[49];
      sub_100D85690(v116[48], v27);
      v28 = sub_1005B981C(&qword_101A1CCF8);
      if ((*(*(v28 - 8) + 48))(v27, 1, v28) == 1)
      {
        v99 = v116[58];
        v97 = v116[59];
        v98 = v116[57];
        v112 = v116[55];
        v114 = v116[56];
        v94 = v116[51];
        v95 = v116[52];
        v110 = v116[50];
        v57 = v116[42];
        v56 = v116[43];
        v58 = v116[41];
        v59 = v116[39];
        v96 = v116[36];

        v60 = *(v59 + 32);
        v91 = objc_opt_self();
        v61 = OBJC_IVAR____TtC8Freeform21CRLMemoryWriteChannel_dispatchData;
        swift_beginAccess();
        v62 = *(v57 + 16);
        v62(v56, v60 + v61, v58);
        v63 = DispatchData._bridgeToObjectiveC()();
        v64 = *(v57 + 8);
        v64(v56, v58);
        v65 = [v91 crl_dataFromDispatchData:v63];

        v106 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v92 = v66;

        v67 = *(v59 + 40);
        v68 = OBJC_IVAR____TtC8Freeform21CRLMemoryWriteChannel_dispatchData;
        swift_beginAccess();
        v62(v56, v67 + v68, v58);
        v69 = DispatchData._bridgeToObjectiveC()();
        v64(v56, v58);
        v70 = [v91 crl_dataFromDispatchData:v69];

        v71 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v73 = v72;

        v93 = String._bridgeToObjectiveC()();
        (*v104)(v112, v114, v110);
        v74 = (*(v94 + 80) + 24) & ~*(v94 + 80);
        v75 = (v95 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
        v76 = swift_allocObject();
        *(v76 + 16) = v100;
        (*v115)(v76 + v74, v112, v110);
        v77 = (v76 + v75);
        *v77 = v71;
        v77[1] = v73;
        v78 = (v76 + ((v75 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v78 = v106;
        v78[1] = v92;
        v116[19] = sub_100D85700;
        v116[20] = v76;
        v116[15] = _NSConcreteStackBlock;
        v116[16] = *"";
        v116[17] = sub_100BB2E30;
        v116[18] = &unk_1018A4220;
        v79 = _Block_copy(v116 + 15);
        v80 = v100;
        sub_100024E98(v71, v73);
        sub_100024E98(v106, v92);

        [v96 registerFileRepresentationForTypeIdentifier:v93 fileOptions:0 visibility:1 loadHandler:v79];
        _Block_release(v79);

        swift_unknownObjectRelease();
        swift_setDeallocating();
        sub_100005070(v97 + 32);

        sub_10002640C(v106, v92);
        sub_10002640C(v71, v73);

        (*v109)(v114, v110);

        v81 = v116[1];
        goto LABEL_25;
      }

      v29 = v116[54];
      v31 = v116[49];
      v30 = v116[50];
      v32 = *(v28 + 48);
      (*v113)(v116[46], v31, v116[44]);
      (*v115)(v29, v31 + v32, v30);
      UUID.uuidString.getter();
      URL.lastPathComponent.getter();
      v33 = String._bridgeToObjectiveC()();

      v34 = String._bridgeToObjectiveC()();

      v35 = [v34 pathExtension];

      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }

      v36 = [v33 stringByAppendingPathComponent:v35];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      URL.appendingPathComponent(_:)();

      v37 = [objc_opt_self() defaultManager];
      URL._bridgeToObjectiveC()(v38);
      v40 = v39;
      URL._bridgeToObjectiveC()(v41);
      v43 = v42;
      v116[33] = 0;
      v44 = [v37 copyItemAtURL:v40 toURL:v42 error:v116 + 33];

      v45 = v116[33];
      if (!v44)
      {
        break;
      }

      v47 = v116[53];
      v46 = v116[54];
      v48 = v116[50];
      v49 = v116[46];
      v50 = v116[44];
      v51 = *v109;
      v52 = v45;
      v51(v47, v48);
      v51(v46, v48);
      (*v108)(v49, v50);
      v10 = v18;
      v15 = v107;
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (v15 <= v10 + 1)
      {
        v17 = v10 + 1;
      }

      else
      {
        v17 = v15;
      }

      v18 = v17 - 1;
      while (1)
      {
        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
        }

        if (v16 >= v15)
        {
          break;
        }

        v14 = v101[v16];
        ++v10;
        if (v14)
        {
          goto LABEL_13;
        }
      }

      v53 = v116[48];
      v54 = sub_1005B981C(&qword_101A1CCF8);
      (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
      v14 = 0;
    }

    v82 = v116[56];
    v84 = v116[53];
    v83 = v116[54];
    v85 = v116[50];
    v86 = v116[46];
    v87 = v116[44];
    v88 = v45;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v89 = *v109;
    (*v109)(v84, v85);
    v89(v83, v85);
    (*v108)(v86, v87);
    v89(v82, v85);
  }

  else
  {
    v55 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v81 = v116[1];
LABEL_25:

  return v81();
}

uint64_t sub_100D8516C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100D85274(void (*a1)(char *, void, void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  v18 = a1;
  v5 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v5 - 8);
  v7 = v17 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v17 - v13;
  URL.appendingPathComponent(_:)();
  Data.write(to:options:)();
  URL.appendingPathComponent(_:)();
  Data.write(to:options:)();
  (*(v9 + 16))(v7, a4, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v18(v7, 0, 0);
  sub_100686028(v7);
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  return 0;
}

uint64_t sub_100D85560()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100D85690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A1CCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100D85700(void (*a1)(char *, void, void), uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_100D85274(a1, a2, v6, v7);
}

id sub_100D857E4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v6);
  v16[OBJC_IVAR____TtC8Freeform38CRLCommandReplaceImageWithImageSubject_isBackgroundRemoved] = a3;
  v16[OBJC_IVAR____TtC8Freeform38CRLCommandReplaceImageWithImageSubject_isImagePlaceholder] = a4;
  v17 = *(v13 + 16);
  v17(v15, a1, v12);
  v17(&v16[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_id], v15, v12);
  *&v16[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_imageData] = a2;
  *&v16[OBJC_IVAR____TtC8Freeform22CRLCommandReplaceImage_thumbnailData] = a5;
  v18 = type metadata accessor for CRLCommandReplaceImage();
  v22.receiver = v16;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, "init");
  v20 = *(v13 + 8);
  v20(a1, v12);
  v20(v15, v12);
  return v19;
}

void sub_100D85E94(void *a1, uint64_t a2, int a3)
{
  v5 = v3;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v10 = [a1 getBoardItemForUUID:isa];

  if (v10)
  {
    type metadata accessor for CRLImageItem();
    if (swift_dynamicCastClass())
    {
      sub_101085C3C(a1, a2, a3);
      if (!v4)
      {
        sub_100BB66D0(*(v5 + OBJC_IVAR____TtC8Freeform38CRLCommandReplaceImageWithImageSubject_isBackgroundRemoved));
        sub_100BB6AEC(*(v5 + OBJC_IVAR____TtC8Freeform38CRLCommandReplaceImageWithImageSubject_isImagePlaceholder));
      }

      return;
    }
  }

  v11 = objc_opt_self();
  v12 = [v11 _atomicIncrementAssertCount];
  v36 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v36);
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
  v21 = sub_1005CF000();
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
  *(inited + 152) = 32;
  v24 = v36;
  *(inited + 216) = v21;
  *(inited + 224) = v22;
  *(inited + 192) = v24;
  v25 = v13;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v28 = static os_log_type_t.error.getter();
  sub_100005404(v19, &_mh_execute_header, v28, "Unable to retrieve image item", 29, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve image item");
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

  [v11 handleFailureInFunction:v31 file:v32 lineNumber:32 isFatal:1 format:v33 args:v30];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v34, v35);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100D863B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandReplaceImageWithImageSubject();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLCommandReplaceImageWithImageSubject()
{
  result = qword_101A1F4E8;
  if (!qword_101A1F4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100D86480(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v85 = a3;
  v94 = a2;
  v4 = type metadata accessor for SHA256();
  v83 = *(v4 - 8);
  __chkstk_darwin(v4);
  v88 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for SHA256Digest();
  v82 = *(v87 - 8);
  __chkstk_darwin(v87);
  v86 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v95 = *(v7 - 8);
  __chkstk_darwin(v7);
  v90 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v96 = &v81 - v10;
  __chkstk_darwin(v11);
  v13 = &v81 - v12;
  v14 = type metadata accessor for CRLFreehandDrawingShapeItemBucketCRDT(0);
  v15 = __chkstk_darwin(v14);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v4;
  if (a1 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_10;
    }
  }

  if (v18 < 1)
  {
    goto LABEL_43;
  }

  v19 = 0;
  v92 = (a1 & 0xC000000000000001);
  v20 = (v95 + 16);
  v91 = (v95 + 8);
  v93 = a1;
  do
  {
    if (v92)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v21 = *(a1 + 8 * v19 + 32);
    }

    ++v19;
    *&v17[v14[7]] = _swiftEmptyDictionarySingleton;
    v22 = *(*v21 + 744);
    swift_beginAccess();
    v23 = *v20;
    (*v20)(v13, v21 + v22, v7);
    v23(v96, v13, v7);
    CRRegister.init(wrappedValue:)();
    (*v91)(v13, v7);
    v24 = *(*v21 + 736);
    swift_beginAccess();
    sub_10000BE14(v21 + v24, &v17[v14[5]], &unk_101A0F400);
    v25 = *(*v21 + 888);
    swift_beginAccess();
    sub_100D89CF0(v21 + v25, &v17[v14[6]], type metadata accessor for CRLFreehandDrawingShapeCRDTData);
    sub_100D87124(v17, v21[3], v21[4], 0);

    sub_100D89C78(v17);
    a1 = v93;
  }

  while (v18 != v19);
LABEL_10:
  v26 = v94;
  if (v94 >> 62)
  {
    v35 = v94;
    v36 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v35;
    v27 = v36;
    if (!v36)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v27 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v27)
    {
      goto LABEL_19;
    }
  }

  if (v27 < 1)
  {
    goto LABEL_44;
  }

  v28 = 0;
  v93 = v26 & 0xC000000000000001;
  v29 = (v95 + 16);
  v92 = (v95 + 8);
  do
  {
    if (v93)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v30 = *(v26 + 8 * v28 + 32);
    }

    ++v28;
    *&v17[v14[7]] = _swiftEmptyDictionarySingleton;
    v31 = *(*v30 + 744);
    swift_beginAccess();
    v32 = *v29;
    (*v29)(v13, v30 + v31, v7);
    v32(v96, v13, v7);
    CRRegister.init(wrappedValue:)();
    (*v92)(v13, v7);
    v33 = *(*v30 + 736);
    swift_beginAccess();
    sub_10000BE14(v30 + v33, &v17[v14[5]], &unk_101A0F400);
    v34 = *(*v30 + 888);
    swift_beginAccess();
    sub_100D89CF0(v30 + v34, &v17[v14[6]], type metadata accessor for CRLFreehandDrawingShapeCRDTData);
    sub_100D875BC(v17, v30[3], v30[4], 0);

    sub_100D89C78(v17);
    v26 = v94;
  }

  while (v27 != v28);
LABEL_19:
  v37 = *(v85 + 16);
  v38 = v90;
  if (v37)
  {
    v96 = *(v95 + 16);
    v39 = v85 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
    v94 = *(v95 + 72);
    v91 = (v83 + 8);
    v85 = v82 + 8;
    v95 += 16;
    v92 = (v95 - 8);
    v84 = v7;
    (v96)(v90, v39, v7, v15);
    while (1)
    {
      v41 = *(v97 + 16);
      swift_beginAccess();
      v42 = *(v41 + 24);
      v43 = *(v42 + 16);

      if (v43 && (v44 = sub_10003E994(v38), (v45 & 1) != 0))
      {
        v46 = *(*(v42 + 56) + 8 * v44);
      }

      else
      {
        v93 = v37;
        v98 = UUID.uuid.getter();
        v99 = v47;
        v100 = v48;
        v101 = v49;
        v102 = v50;
        v103 = v51;
        v104 = v52;
        v105 = v53;
        v106 = v54;
        UUID.uuid.getter();
        v55 = sub_100024DD4(&v98, 16);
        v57 = v56;
        sub_100060EC0(&qword_1019F4570, &type metadata accessor for SHA256);
        v58 = v88;
        v59 = v89;
        dispatch thunk of HashFunction.init()();
        sub_100024E98(v55, v57);
        sub_100061910(v55, v57);
        sub_10002640C(v55, v57);
        v60 = v86;
        dispatch thunk of HashFunction.finalize()();
        sub_10002640C(v55, v57);
        v61 = v58;
        v38 = v90;
        (*v91)(v61, v59);
        SHA256Digest.withUnsafeBytes<A>(_:)();
        (*v85)(v60, v87);
        v46 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v98 = *(v41 + 24);
        v63 = v98;
        *(v41 + 24) = 0x8000000000000000;
        v64 = sub_10003E994(v38);
        v66 = *(v63 + 16);
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
        }

        v70 = v65;
        if (*(v63 + 24) >= v69)
        {
          v7 = v84;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v80 = v64;
            sub_100AA4430();
            v64 = v80;
          }
        }

        else
        {
          sub_10003ECE0(v69, isUniquelyReferenced_nonNull_native);
          v64 = sub_10003E994(v38);
          v7 = v84;
          if ((v70 & 1) != (v71 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }
        }

        v37 = v93;
        v72 = v98;
        if (v70)
        {
          *(*(v98 + 56) + 8 * v64) = v46;
        }

        else
        {
          *(v98 + 8 * (v64 >> 6) + 64) |= 1 << v64;
          v73 = v64;
          (v96)(v72[6] + v64 * v94, v38, v7);
          *(v72[7] + 8 * v73) = v46;
          v74 = v72[2];
          v68 = __OFADD__(v74, 1);
          v75 = v74 + 1;
          if (v68)
          {
            goto LABEL_42;
          }

          v72[2] = v75;
        }

        *(v41 + 24) = v72;
      }

      swift_endAccess();
      swift_beginAccess();
      v76 = *(v41 + 16);
      if (*(v76 + 16))
      {
        v77 = sub_1007C7EC0(v46);
        if (v78)
        {
          v79 = *(*(v76 + 56) + 8 * v77);
          __chkstk_darwin(v77);
          *(&v81 - 2) = v38;
          swift_beginAccess();

          sub_1005B981C(&unk_101A341C0);
          Capsule.mutate<A>(_:)();
          swift_endAccess();

          *(v79 + *(*v79 + 136)) = 1;
        }
      }

      (*v92)(v38, v7);
      v39 += v94;
      if (!--v37)
      {
        return;
      }

      (v96)(v38, v39, v7, v40);
    }
  }
}