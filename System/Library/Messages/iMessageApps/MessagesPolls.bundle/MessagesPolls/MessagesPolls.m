__n128 sub_1CB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D78()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];

  return v0;
}

__n128 sub_1DC4()
{
  *&xmmword_64120 = [objc_opt_self() tertiaryLabelColor];
  *(&xmmword_64120 + 1) = sub_1D78;
  qword_64130 = 0;
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  unk_64138 = *&UIEdgeInsetsZero.top;
  unk_64148 = v1;
  return result;
}

uint64_t sub_1E4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_48414();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1E78()
{
  v1 = *v0;
  sub_48414();
  v2 = sub_484E4();

  return v2;
}

uint64_t sub_1EB4()
{
  v1 = *v0;
  sub_48414();
  sub_48464();
}

Swift::Int sub_1F08()
{
  v1 = *v0;
  sub_48414();
  sub_488D4();
  sub_48464();
  v2 = sub_48904();

  return v2;
}

uint64_t sub_1F7C(uint64_t a1, id *a2)
{
  result = sub_483F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1FF4(uint64_t a1, id *a2)
{
  v3 = sub_48404();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2074@<X0>(uint64_t *a1@<X8>)
{
  sub_48414();
  v2 = sub_483D4();

  *a1 = v2;
  return result;
}

uint64_t sub_20C0(uint64_t a1)
{
  v2 = sub_250C(&qword_61EE0, type metadata accessor for Key);
  v3 = sub_250C(&qword_61EE8, type metadata accessor for Key);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_217C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_48414();
  v6 = v5;
  if (v4 == sub_48414() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_48874();
  }

  return v9 & 1;
}

uint64_t sub_2204(uint64_t a1)
{
  v2 = sub_250C(&qword_61ED0, type metadata accessor for AttributeName);
  v3 = sub_250C(&qword_61ED8, type metadata accessor for AttributeName);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_22C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_483D4();

  *a2 = v5;
  return result;
}

__n128 sub_2330(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2368(uint64_t a1, int a2)
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

uint64_t sub_2388(uint64_t result, int a2, int a3)
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

__n128 sub_23C4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D0(uint64_t a1, int a2)
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

uint64_t sub_23F0(uint64_t result, int a2, int a3)
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

void sub_2430(uint64_t a1, unint64_t *a2)
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

uint64_t sub_250C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E4(uint64_t a1)
{
  v2 = sub_250C(&qword_61EC0, type metadata accessor for TraitKey);
  v3 = sub_250C(&qword_61EC8, type metadata accessor for TraitKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2838()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64158);
  sub_5ED4(v0, qword_64158);
  sub_477E4();
  return sub_47804();
}

void sub_28A4()
{
  v1 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel;
  v2 = *&v0[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  if (*&v0[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText + 8])
  {
    v3 = *&v0[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];
    v4 = v2;

    v5 = sub_483D4();
  }

  else
  {
    v6 = v2;
    v5 = 0;
  }

  [v2 setText:v5];

  v10 = *&v0[v1];
  v7 = [v0 attributedText];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 length];

    [v10 setHidden:v9 > 0];
  }

  else
  {
    __break(1u);
  }
}

id sub_2AF4()
{
  v1 = v0;
  if (qword_61CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_47814();
  sub_5ED4(v2, qword_64158);
  v3 = sub_477F4();
  v4 = sub_48614();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Becoming first responder", v5, 2u);
  }

  v17.receiver = v1;
  v17.super_class = type metadata accessor for AdaptiveGlyphTextView();
  v6 = objc_msgSendSuper2(&v17, "becomeFirstResponder");
  v7 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  result = [v1 attributedText];
  if (result)
  {
    v9 = result;
    v10 = [result length];

    [v7 setHidden:v10 > 0];
    if (v6)
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 payloadDelegate];
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      if (v11)
      {
        [v11 setPayloadDelegate:v1];
        v13 = v11;
        v14 = sub_48534();
        [v13 setSupportedPayloadIds:v14];
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 104);
      (*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 96))(*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 152), *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 160));
      swift_unknownObjectRelease();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2D94()
{
  v1 = v0;
  if (qword_61CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_47814();
  sub_5ED4(v2, qword_64158);
  v3 = sub_477F4();
  v4 = sub_48614();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "resigning first responder", v5, 2u);
  }

  v17.receiver = v1;
  v17.super_class = type metadata accessor for AdaptiveGlyphTextView();
  v6 = objc_msgSendSuper2(&v17, "resignFirstResponder");
  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 120);
      (*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 112))(*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 152), *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 160));
      swift_unknownObjectRelease();
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  result = [v1 attributedText];
  if (result)
  {
    v11 = result;
    v12 = [result length];

    [v9 setHidden:v12 > 0];
    v13 = [objc_opt_self() sharedInstance];
    if (v13)
    {
      v14 = v13;
      [v13 setPayloadDelegate:swift_unknownObjectWeakLoadStrong()];
      swift_unknownObjectRelease();
      v15 = v14;
      v16 = sub_48534();
      [v15 setSupportedPayloadIds:v16];
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_301C(uint64_t a1)
{
  v2 = v1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for AdaptiveGlyphTextView();
  objc_msgSendSuper2(&v23, "traitCollectionDidChange:", a1);
  v4 = &v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants];
  v6 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants + 8];
  v5 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants + 16];
  v7 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];

  v9 = v6(v8);

  [v7 setFont:v9];

  v11 = *(v4 + 1);
  v10 = *(v4 + 2);

  v13 = v11(v12);

  [v2 setFont:v13];

  v15 = *(v4 + 1);
  v14 = *(v4 + 2);

  v17 = v15(v16);

  v18 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer];
  v19 = *(v18 + 24);
  LOBYTE(v4) = *(v18 + 32);
  type metadata accessor for PollOptionTextTransformer();
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v20 + 32) = v4;
  v21 = v19;
  sub_52F8(v20);
}

id sub_3388()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  result = [v1 attributedText];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  v5 = [result length];

  [v2 setHidden:v5 > 0];
  v6 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText;
  v7 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText];
  v8 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer];

  result = [v1 attributedText];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = sub_40CFC(result);

  sub_37E64(v10);

  v11 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
  swift_beginAccess();
  sub_6128(&v1[v11], v14, &qword_62108, &qword_4AA60);
  if (!v15)
  {
    return sub_60C8(v14, &qword_62108, &qword_4AA60);
  }

  sub_5E70(v14, v13);
  sub_60C8(v14, &qword_62108, &qword_4AA60);
  sub_6190(v13, v13[3]);
  v12 = *&v1[v6];
  type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

  sub_289AC(v1);

  return sub_6020(v13);
}

id sub_3674(uint64_t a1, uint64_t a2)
{
  if (sub_475A4())
  {
    v5 = objc_opt_self();
    v6 = [v5 generalPasteboard];
    v7 = [v6 hasImages];

    if (v7)
    {
      return 0;
    }

    v8 = [v5 generalPasteboard];
    v9 = [v8 hasStrings];

    if (!v9)
    {
      return 0;
    }
  }

  sub_6128(a2, v21, &qword_62128, &qword_4AA80);
  v10 = v22;
  if (v22)
  {
    v11 = sub_6190(v21, v22);
    v12 = *(v10 - 8);
    v13 = *(v12 + 64);
    __chkstk_darwin(v11, v11);
    v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15);
    v16 = sub_48864();
    (*(v12 + 8))(v15, v10);
    sub_6020(v21);
  }

  else
  {
    v16 = 0;
  }

  v18 = type metadata accessor for AdaptiveGlyphTextView();
  v20.receiver = v2;
  v20.super_class = v18;
  v17 = objc_msgSendSuper2(&v20, "canPerformAction:withSender:", a1, v16);
  swift_unknownObjectRelease();
  return v17;
}

id sub_3904()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AdaptiveGlyphTextView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_3A28(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 selectedRange];
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v35 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText;
    v8 = *(*&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText] + 16);
    v9 = objc_allocWithZone(NSMutableAttributedString);

    v10 = [v9 initWithAttributedString:v8];
    v34 = [v10 attributedSubstringFromRange:{v6, v7}];
    v11 = [v34 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_544C();
    v12 = v1;
    v13 = v6;
    v14 = sub_48394();

    sub_382F4(v14);

    v15 = sub_48374();

    [v10 setAttributes:v15 range:{v13, v7}];

    sub_37E64(v10);

    v16 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer];
    v17 = *&v35[v12];

    v19 = sub_40428(v18, 0);

    [v12 setAttributedText:v19];

    [v12 setSelectedRange:{v13, v7}];
    v20 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
    swift_beginAccess();
    sub_6128(v12 + v20, v38, &qword_62108, &qword_4AA60);
    if (v38[3])
    {
      sub_5E70(v38, v37);
      sub_60C8(v38, &qword_62108, &qword_4AA60);
      sub_6190(v37, v37[3]);
      v21 = *&v35[v12];
      type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

      sub_28A28();

      sub_6020(v37);
    }

    else
    {
      sub_60C8(v38, &qword_62108, &qword_4AA60);
    }
  }

  else
  {
    if (qword_61CA8 != -1)
    {
      swift_once();
    }

    v22 = sub_47814();
    sub_5ED4(v22, qword_64158);
    v23 = sub_477F4();
    v24 = sub_48624();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_0, v23, v24, "Changing typing attributes", v25, 2u);
    }

    v26 = [v2 typingAttributes];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 mutableCopy];

      if (v28)
      {
        v30 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants + 8];
        v29 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants + 16];

        v32 = v30(v31);

        [v28 ck_toggleTextStyles:a1 baseFont:v32];

        type metadata accessor for Key(0);
        sub_544C();
        v33 = v28;
        sub_48384();

        sub_51D0(_swiftEmptyArrayStorage);
        v36 = sub_48374();

        [v2 setTypingAttributes:v36];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3F18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_61CA8 != -1)
  {
    swift_once();
  }

  v8 = sub_47814();
  sub_5ED4(v8, qword_64158);

  v9 = sub_477F4();
  v10 = sub_48614();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v60[0] = v12;
    *v11 = 136315138;
    if (!a3)
    {
      __break(1u);
      goto LABEL_50;
    }

    v13 = v12;
    *(v11 + 4) = sub_3DD80(a2, a3, v60);
    _os_log_impl(&dword_0, v9, v10, "handlePayloadCalled! payloadID: %s", v11, 0xCu);
    sub_6020(v13);
  }

  else
  {

    if (!a3)
    {
LABEL_17:
      oslog = sub_477F4();
      v21 = sub_48624();
      if (!os_log_type_enabled(oslog, v21))
      {
        goto LABEL_22;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "unexpected payload type";
LABEL_21:
      _os_log_impl(&dword_0, oslog, v21, v23, v22, 2u);

      goto LABEL_22;
    }
  }

  if ((a2 != 0xD00000000000001FLL || 0x8000000000049670 != a3) && (sub_48874() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!a1 || !sub_47B4(a1))
  {
    oslog = sub_477F4();
    v21 = sub_48624();
    if (!os_log_type_enabled(oslog, v21))
    {
      goto LABEL_22;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Could not convert payload to expected dictionary type";
    goto LABEL_21;
  }

  v14 = sub_48374();

  v15 = _UIStickerCreateStickerFromTextInputPayload();

  if (v15)
  {
    v16 = [v15 _ck_plainStringEmojiText];
    if (v16)
    {
      v17 = v16;
      v18 = sub_477F4();
      v19 = sub_48604();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "Handling sticker payload as emoji string", v20, 2u);
      }

      [v4 insertText:v17];
      goto LABEL_44;
    }

    v24 = [v15 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
    v25 = sub_477F4();
    v26 = sub_48604();
    v27 = os_log_type_enabled(v25, v26);
    if (v24)
    {
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v25, v26, "Handling sticker payload as adaptive image glyph backed sticker", v28, 2u);
      }

      v29 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
      if (v29)
      {
        v30 = qword_61CB0;
        v31 = v29;
        if (v30 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_9AB4(v15, v31);
        v33 = v32;
        swift_endAccess();

        v34 = [v4 selectedTextRange];
        if (v34)
        {
          v35 = v34;
          v36 = v34;
          v37 = sub_477F4();
          v38 = sub_48604();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            *v39 = 138412290;
            *(v39 + 4) = v36;
            *v40 = v35;
            v41 = v36;
            _os_log_impl(&dword_0, v37, v38, "Adding a glyph; range: %@", v39, 0xCu);
            sub_60C8(v40, &qword_62110, &qword_4AA68);
          }

          [v4 insertAdaptiveImageGlyph:v31 replacementRange:v36];
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v27)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v25, v26, "We don't actually want to insert a sticker, since it would replace the Poll payload.", v42, 2u);
      }
    }

    v43 = sub_477F4();
    v44 = sub_48604();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "Adaptive glyph is nil!", v45, 2u);
    }

LABEL_44:
    v46 = *&v4[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
    v47 = [v4 attributedText];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 length];

      [v46 setHidden:v49 > 0];
      v50 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText;
      v51 = *&v4[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText];
      v52 = *&v4[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer];

      v53 = [v4 attributedText];
      if (v53)
      {
        v54 = v53;
        v55 = sub_40CFC(v53);

        sub_37E64(v55);

        v56 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
        swift_beginAccess();
        sub_6128(&v4[v56], v60, &qword_62108, &qword_4AA60);
        if (v60[3])
        {
          sub_5E70(v60, v59);
          sub_60C8(v60, &qword_62108, &qword_4AA60);
          sub_6190(v59, v59[3]);
          v57 = *&v4[v50];
          type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

          sub_289AC(v4);

          sub_6020(v59);
        }

        else
        {

          sub_60C8(v60, &qword_62108, &qword_4AA60);
        }

        return;
      }

LABEL_51:
      __break(1u);
      return;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  oslog = sub_477F4();
  v21 = sub_48624();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Could not convert payload to _UISticker";
    goto LABEL_21;
  }

LABEL_22:
}

unint64_t sub_47B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_54A4(&qword_62118, &qword_4AA70);
    v2 = sub_48814();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_5F70(*(a1 + 48) + 40 * v14, v29);
        sub_606C(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_5F70(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_606C(v27 + 8, v22);
        sub_60C8(v26, &qword_62120, &qword_4AA78);
        v23 = v20;
        sub_54EC(v22, v24);
        v15 = v23;
        sub_54EC(v24, v25);
        sub_54EC(v25, &v23);
        result = sub_4D30(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_6020(v12);
          result = sub_54EC(&v23, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_54EC(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_60C8(v26, &qword_62120, &qword_4AA78);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_4CA0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_48414();
  sub_488D4();
  sub_48464();
  v4 = sub_48904();

  return sub_4E80(a1, v4);
}

unint64_t sub_4D30(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_488D4();
  sub_48464();
  v6 = sub_48904();

  return sub_4F84(a1, a2, v6);
}

unint64_t sub_4DA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_488D4();
  if (a2)
  {
    sub_488F4(1u);
    sub_48464();
  }

  else
  {
    sub_488F4(0);
  }

  v6 = sub_48904();

  return sub_503C(a1, a2, v6);
}

unint64_t sub_4E3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_48754(*(v2 + 40));

  return sub_5108(a1, v4);
}

unint64_t sub_4E80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_48414();
      v9 = v8;
      if (v7 == sub_48414() && v9 == v10)
      {
        break;
      }

      v12 = sub_48874();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_4F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_48874())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_48874() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_5108(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5F70(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_48764();
      sub_5FCC(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_51D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_54A4(&qword_620F8, &qword_4AA50);
    v3 = sub_48814();
    v4 = a1 + 32;

    while (1)
    {
      sub_6128(v4, &v11, &qword_620F0, &qword_4AA48);
      v5 = v11;
      result = sub_4CA0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_54EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

void sub_52F8(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer];
  *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer] = a1;

  v4 = *(a1 + 24);
  if (v4)
  {
    sub_54A4(&qword_620E0, &qword_4AA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_4A9C0;
    *(inited + 32) = NSForegroundColorAttributeName;
    *(inited + 64) = sub_61D4(0, &qword_620E8, UIColor_ptr);
    *(inited + 40) = v4;
    v6 = v4;
    v7 = NSForegroundColorAttributeName;
    sub_51D0(inited);
    swift_setDeallocating();
    sub_60C8(inited + 32, &qword_620F0, &qword_4AA48);
  }

  else
  {
    sub_51D0(&_swiftEmptyArrayStorage);
  }

  type metadata accessor for Key(0);
  sub_544C();
  v8 = sub_48374();

  [v1 setTypingAttributes:v8];
}

unint64_t sub_544C()
{
  result = qword_61EE0;
  if (!qword_61EE0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_61EE0);
  }

  return result;
}

uint64_t sub_54A4(uint64_t *a1, uint64_t *a2)
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

_OWORD *sub_54EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_54FC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v5[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v5[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants];
  if (qword_61CA0 != -1)
  {
    swift_once();
  }

  v14 = qword_64130;
  v15 = unk_64138;
  v16 = unk_64148;
  v17 = xmmword_64120;
  *v13 = xmmword_64120;
  *(v13 + 2) = v14;
  *(v13 + 24) = v15;
  *(v13 + 40) = v16;
  v18 = &v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = qword_61CA8;
  v20 = v17;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_47814();
  sub_5ED4(v21, qword_64158);
  v22 = sub_477F4();
  v23 = sub_48604();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "AdaptiveGlyphTextView init", v24, 2u);
  }

  v25 = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel] = v25;
  type metadata accessor for PollOptionText();
  v26 = swift_allocObject();
  *(v26 + 16) = [objc_allocWithZone(NSAttributedString) init];
  *&v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText] = v26;
  v27 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  type metadata accessor for PollOptionTextTransformer();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *&v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer] = v28;
  v58.receiver = v6;
  v58.super_class = type metadata accessor for AdaptiveGlyphTextView();
  v29 = objc_msgSendSuper2(&v58, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  v30 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel;
  v31 = *&v29[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  v32 = v29;
  v33 = v31;
  v34 = sub_483D4();
  [v33 setText:v34];

  v35 = *&v29[v30];
  [v32 bounds];
  [v35 setFrame:?];

  v36 = &v32[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants];
  [*&v29[v30] setTextColor:*&v32[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants]];
  [*&v29[v30] setNumberOfLines:2];
  v38 = *(v36 + 1);
  v37 = *(v36 + 2);
  v39 = *&v29[v30];

  v41 = v38(v40);

  [v39 setFont:v41];

  [*&v29[v30] setIsAccessibilityElement:0];
  [v32 addSubview:*&v29[v30]];
  v42 = objc_opt_self();
  v43 = v32;
  v44 = [v42 clearColor];
  [v43 setBackgroundColor:v44];

  v46 = *(v36 + 1);
  v45 = *(v36 + 2);

  v48 = v46(v47);

  [v43 setFont:v48];

  [v43 setScrollEnabled:0];
  [v43 setTranslatesAutoresizingMaskIntoConstraints:0];

  v49 = [v43 textContainer];
  [v49 setMaximumNumberOfLines:0];

  v50 = [v43 textContainer];
  [v50 setLineBreakMode:0];

  v51 = [v43 textContainer];
  [v51 setLineFragmentPadding:0.0];

  v52 = [v43 textContainer];
  [v52 setWidthTracksTextView:1];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v43 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v43 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (*(v36 + 3) != UIEdgeInsetsZero.top || *(v36 + 4) != left || *(v36 + 5) != bottom || *(v36 + 6) != right)
  {
    [v43 setTextContainerInset:?];
  }

  v56 = [objc_opt_self() defaultCenter];
  [v56 addObserver:v43 selector:"adaptiveImageGlyphUpdatedWithNotification:" name:CKAdaptiveImageGlyphGeneratedNotification object:v43];

  [v43 setAllowsEditingTextAttributes:1];
  return v43;
}

void sub_5B30()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants;
  if (qword_61CA0 != -1)
  {
    swift_once();
  }

  v3 = v0 + v2;
  v4 = qword_64130;
  v5 = unk_64138;
  v6 = unk_64148;
  *v3 = xmmword_64120;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 40) = v6;
  v7 = (v0 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText);
  *v7 = 0;
  v7[1] = 0;
  sub_487D4();
  __break(1u);
}

uint64_t sub_5C4C()
{
  sub_54A4(&qword_635C0, &unk_4AA88);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_4A9D0;
  v1 = sub_483D4();
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0x20000 action:"handleTabShift"];

  *(v0 + 32) = v3;
  v4 = sub_483D4();
  v5 = [v2 keyCommandWithInput:v4 modifierFlags:0x20000 action:"handleMoveToNextOption"];

  *(v0 + 40) = v5;
  v6 = sub_483D4();
  v7 = [v2 keyCommandWithInput:v6 modifierFlags:0x80000 action:"handleMoveToNextOption"];

  *(v0 + 48) = v7;
  return v0;
}

unint64_t sub_5D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_54A4(&qword_62100, &qword_4AA58);
    v3 = sub_48814();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_4CA0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_5E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5ED4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_5F0C(uint64_t a1, uint64_t *a2)
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

uint64_t sub_6020(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_606C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_60C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_54A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_54A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_6190(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_61D4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_6248(uint64_t *a1, int a2)
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

uint64_t sub_6290(uint64_t result, int a2, int a3)
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

uint64_t sub_62DC(char a1)
{
  sub_631C();
  if (a1)
  {
    sub_480A4();
  }

  else
  {
    sub_480B4();
  }

  return sub_486B4();
}

unint64_t sub_631C()
{
  result = qword_620E8;
  if (!qword_620E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_620E8);
  }

  return result;
}

double sub_6368()
{
  sub_47CE4();
  v0 = sub_47914();
  result = 4.0;
  __asm { FMOV            V1.2D, #2.0 }

  xmmword_64170 = xmmword_4AAD0;
  unk_64180 = _Q1;
  xmmword_64190 = 0x3FE0000000000000uLL;
  qword_641A0 = 0;
  unk_641A8 = v0;
  return result;
}

__n128 sub_63C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_63DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[2];
  v54 = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v34 = a1;
    v35 = a2;
    v53 = _swiftEmptyArrayStorage;
    sub_2203C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = sub_47674();
    v7 = 0;
    v38 = *(v5 - 8);
    v39 = v5;
    v37 = v38 + 32;
    v36 = *(v38 + 64);
    v8 = (v2 + 72);
    do
    {
      v50 = v4;
      v51 = v3;
      v49 = &v33;
      __chkstk_darwin(v5, v6);
      v52 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = *(v8 - 5);
      v11 = *(v8 - 4);
      v12 = *(v8 - 2);
      v43 = *(v8 - 3);
      v44 = v10;
      v13 = *(v8 - 1);
      v45 = *v8;
      v14 = sub_54A4(&qword_62140, &qword_4AB10);
      v47 = &v33;
      v42 = *(*(v14 - 8) + 64);
      __chkstk_darwin(v14 - 8, v15);
      v41 = v16;
      v17 = &v33 - v16;
      v18 = *(v13 + 16);
      swift_getKeyPath();
      sub_47444();
      sub_6CDC();
      v46 = v11;

      v19 = v18;
      sub_47474();
      if (v7)
      {

        v48 = 0;
        v20 = 1;
      }

      else
      {
        v48 = 0;
        v20 = 0;
      }

      v21 = sub_47464();
      (*(*(v21 - 8) + 56))(v17, v20, 1, v21);
      v22 = *(v13 + 16);

      v23 = [v22 string];
      sub_48414();

      v40 = &v33;
      __chkstk_darwin(v24, v25);
      sub_6128(v17, &v33 - v41, &qword_62140, &qword_4AB10);
      sub_47654();

      sub_60C8(v17, &qword_62140, &qword_4AB10);
      v4 = v50;
      v53 = v50;
      v27 = v50[2];
      v26 = v50[3];
      if (v27 >= v26 >> 1)
      {
        sub_2203C(v26 > 1, v27 + 1, 1);
        v4 = v53;
      }

      v4[2] = v27 + 1;
      v5 = (*(v38 + 32))(v4 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v27, v52, v39);
      v7 = v48;
      v8 += 48;
      v3 = v51 - 1;
    }

    while (v51 != 1);
    a1 = v34;
  }

  v28 = *a1;
  v29 = a1[1];
  v30 = a1[3];
  v31 = a1[4];

  sub_476D4();
  sub_60C8(&v54, &qword_62150, &qword_4BA60);
}

uint64_t sub_68C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = type metadata accessor for ViewModelPollVote();
  v4 = *(v35 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v35, v6);
  v8 = (v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 16);
  if (v9)
  {
    v30[1] = a2;
    v41 = _swiftEmptyArrayStorage;
    sub_22074(0, v9, 0);
    v10 = v41;
    v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v30[0] = a1;
    v12 = a1 + v11;
    v13 = sub_47784();
    v34 = v13;
    v15 = *(v13 - 8);
    v32 = *(v15 + 64);
    v33 = v15;
    v16 = *(v4 + 72);
    v30[2] = v15 + 32;
    v31 = v16;
    do
    {
      v39 = v10;
      v40 = v9;
      v38 = v30;
      __chkstk_darwin(v13, v14);
      v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_6BEC(v12, v8);
      v20 = *v8;
      v19 = v8[1];
      v21 = v8[3];
      v37 = v8[2];
      v22 = *(v35 + 24);
      v23 = sub_54A4(&qword_62138, &qword_4AC00);
      v36 = v30;
      v24 = (*(*(v23 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
      __chkstk_darwin(v23 - 8, v25);
      sub_6128(v8 + v22, v30 - v26, &qword_62138, &qword_4AC00);

      sub_47764();
      sub_6C50(v8);
      v10 = v39;
      v41 = v39;
      v28 = v39[2];
      v27 = v39[3];
      if (v28 >= v27 >> 1)
      {
        sub_22074(v27 > 1, v28 + 1, 1);
        v10 = v41;
      }

      v10[2] = v28 + 1;
      v13 = (*(v33 + 32))(v10 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v28, v18, v34);
      v12 += v31;
      v9 = v40 - 1;
    }

    while (v40 != 1);
  }

  return sub_47684();
}

uint64_t sub_6BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelPollVote();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6C50(uint64_t a1)
{
  v2 = type metadata accessor for ViewModelPollVote();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6CAC@<X0>(uint64_t *a1@<X8>)
{
  sub_47454();
  result = sub_47444();
  *a1 = result;
  return result;
}

unint64_t sub_6CDC()
{
  result = qword_62148;
  if (!qword_62148)
  {
    sub_47444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62148);
  }

  return result;
}

void *sub_6D28(uint64_t a1)
{
  v2 = type metadata accessor for ViewModelPollVote();
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  __chkstk_darwin(v2, v4);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_47694();
  v8 = *(v7 + 16);
  if (v8)
  {
    v33 = a1;
    v43 = &_swiftEmptyArrayStorage;
    sub_21FD8(0, v8, 0);
    v9 = v43;
    v10 = sub_47784();
    v39 = v10;
    v12 = *(v10 - 8);
    v13 = *(v12 + 16);
    v37 = v12 + 16;
    v38 = v13;
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v32 = v7;
    v15 = v7 + v14;
    v16 = *(v12 + 64);
    v35 = *(v12 + 72);
    v36 = v16;
    v34 = (v12 + 8);
    do
    {
      v42 = &v32;
      __chkstk_darwin(v10, v11);
      v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = v39;
      v38(v18, v15, v39);
      v20 = sub_47774();
      v22 = v21;
      v23 = sub_47754();
      v25 = v24;
      v26 = v6 + *(v41 + 24);
      sub_47744();
      (*v34)(v18, v19);
      *v6 = v20;
      v6[1] = v22;
      v6[2] = v23;
      v6[3] = v25;
      v43 = v9;
      v28 = v9[2];
      v27 = v9[3];
      if (v28 >= v27 >> 1)
      {
        sub_21FD8(v27 > 1, v28 + 1, 1);
        v9 = v43;
      }

      v9[2] = v28 + 1;
      v10 = sub_7A64(v6, v9 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v28);
      v15 += v35;
      --v8;
    }

    while (v8);
    v29 = sub_476A4();
    (*(*(v29 - 8) + 8))(v33, v29);
  }

  else
  {

    v30 = sub_476A4();
    (*(*(v30 - 8) + 8))(a1, v30);
    return &_swiftEmptyArrayStorage;
  }

  return v9;
}

uint64_t sub_7010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_476B4();
  v5 = *(v4 + 16);
  if (!v5)
  {

    v85 = &_swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v95 = a1;
  v96 = a2;
  v127 = &_swiftEmptyArrayStorage;
  sub_2201C(0, v5, 0);
  v123 = &_swiftEmptyArrayStorage;
  v6 = sub_47674();
  v98 = 0;
  v122 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v8 += 16;
  v119 = v9;
  v10 = (*(v8 + 64) + 32) & ~*(v8 + 64);
  v94 = v4;
  v11 = v4 + v10;
  v12 = &_s10Foundation15AttributeScopesO17IMSharedUtilitiesE21IMTextStyleAttributesVMa_ptr;
  v13 = *(v8 + 56);
  v116 = *(v8 + 48);
  v117 = (v8 - 8);
  v118 = v8;
  v115 = v13;
  do
  {
    v121 = &v94;
    v14 = v116;
    __chkstk_darwin(v6, v7);
    v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = v122;
    v17 = v119;
    v18 = (v119)(v15, v11, v122);
    v120 = &v94;
    __chkstk_darwin(v18, v19);
    v17(v15, v15, v16);
    v20 = sub_47664();
    v21 = &off_60000;
    v126 = v22;
    if (!v22)
    {
      goto LABEL_8;
    }

    v23 = v20;
    v24 = sub_47634();
    if (!v25)
    {

      goto LABEL_8;
    }

    v109 = v24;
    v112 = v25;
    v125 = v23;
    v26 = sub_47464();
    v113 = &v94;
    v27 = *(v26 - 8);
    v28 = *(v27 + 64);
    __chkstk_darwin(v26, v29);
    v108 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v110 = v30;
    v111 = (&v94 - v108);
    v31 = sub_54A4(&qword_62140, &qword_4AB10);
    v124 = &v94;
    v32 = *(*(v31 - 8) + 64);
    __chkstk_darwin(v31 - 8, v33);
    v35 = v34;
    v36 = &v94 - v34;
    sub_47644();
    v37 = *(v27 + 48);
    v114 = v26;
    v107 = v37;
    if ((v37)(v36, 1, v26) == 1)
    {

      sub_60C8(v36, &qword_62140, &qword_4AB10);
      v12 = &_s10Foundation15AttributeScopesO17IMSharedUtilitiesE21IMTextStyleAttributesVMa_ptr;
      v21 = &off_60000;
LABEL_8:
      type metadata accessor for PollOptionText();
      v124 = swift_allocObject();
      v124[2] = [objc_allocWithZone(v12[486]) v21[494]];
      v38 = sub_47624();
      v39 = sub_47594();
      v40 = *(v39 - 8);
      v41 = *(v40 + 64);
      __chkstk_darwin(v39, v42);
      v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_47584();
      v125 = sub_47574();
      v126 = v45;
      (*(v40 + 8))(v44, v39);
      v46 = *v117;
      v47 = v122;
      (*v117)(v15, v122);
      v6 = (v46)(v15, v47);
      v48 = 0;
      v49 = 0xE000000000000000;
      goto LABEL_9;
    }

    v55 = *(v27 + 32);
    v56 = v36;
    v57 = v114;
    v100 = v27 + 32;
    v99 = v55;
    v58 = (v55)(v111, v56, v114);
    v105 = &v94;
    __chkstk_darwin(v58, v59);
    v60 = *(v27 + 16);
    v102 = v27 + 16;
    v101 = v60;
    (v60)(&v94 - v35);
    v106 = v27;
    (*(v27 + 56))(&v94 - v35, 0, 1, v57);
    type metadata accessor for PollOptionText();
    v61 = swift_allocObject();
    v62 = objc_allocWithZone(NSAttributedString);
    v63 = [v62 init];
    v104 = &v94;
    v124 = v61;
    *(v61 + 16) = v63;
    v65 = __chkstk_darwin(v63, v64);
    v108 = (&v94 - v108);
    v103 = &v94;
    __chkstk_darwin(v65, v66);
    sub_6128(&v94 - v35, &v94 - v35, &qword_62140, &qword_4AB10);
    v67 = (v107)(&v94 - v35, 1, v57);
    v68 = v111;
    if (v67 == 1)
    {
      sub_60C8(&v94 - v35, &qword_62140, &qword_4AB10);
      sub_37E64([objc_allocWithZone(NSAttributedString) init]);
      sub_60C8(&v94 - v35, &qword_62140, &qword_4AB10);
      v69 = v114;
      v70 = v106;
    }

    else
    {
      v97 = &v94 - v35;
      v71 = v108;
      v72 = v114;
      v99(v108, &v94 - v35, v114);
      v73 = sub_7A18();
      v107 = &v94;
      __chkstk_darwin(v73, v74);
      v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF0;
      v101(&v94 - v76, v71, v72);
      swift_getKeyPath();
      sub_47444();
      sub_6CDC();
      v77 = v98;
      v78 = sub_48664();
      if (v77)
      {
        __chkstk_darwin(v78, v79);
        v101(&v94 - v76, v108, v114);
        v80 = sub_48674();
        sub_37E64(v80);

        v98 = 0;
      }

      else
      {
        v98 = 0;
        sub_37E64(v78);
      }

      sub_60C8(v97, &qword_62140, &qword_4AB10);
      v70 = v106;
      v69 = v114;
      (*(v106 + 8))(v108, v114);
    }

    v38 = sub_47624();
    (*(v70 + 8))(v68, v69);
    v81 = *v117;
    v82 = v122;
    (*v117)(v15, v122);
    v6 = (v81)(v15, v82);
    v49 = v112;
    v48 = v109;
LABEL_9:
    v50 = v123;
    v127 = v123;
    v52 = v123[2];
    v51 = v123[3];
    if (v52 >= v51 >> 1)
    {
      v83 = v48;
      v84 = v49;
      v6 = sub_2201C((v51 > 1), v52 + 1, 1);
      v48 = v83;
      v49 = v84;
      v50 = v127;
    }

    v50[2] = v52 + 1;
    v123 = v50;
    v53 = &v50[6 * v52];
    v53[4] = v125;
    v53[5] = v126;
    v53[6] = v48;
    v54 = v124;
    v53[7] = v49;
    v53[8] = v54;
    *(v53 + 72) = v38 & 1;
    v11 += v115;
    --v5;
    v12 = &_s10Foundation15AttributeScopesO17IMSharedUtilitiesE21IMTextStyleAttributesVMa_ptr;
  }

  while (v5);

  a2 = v96;
  a1 = v95;
  v85 = v123;
LABEL_21:
  v86 = sub_476E4();
  v88 = v87;
  v89 = sub_476C4();
  v91 = v90;
  v92 = sub_476F4();
  result = (*(*(v92 - 8) + 8))(a1, v92);
  *a2 = v86;
  a2[1] = v88;
  a2[2] = v85;
  a2[3] = v89;
  a2[4] = v91;
  return result;
}

unint64_t sub_7A18()
{
  result = qword_63590;
  if (!qword_63590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_63590);
  }

  return result;
}

uint64_t sub_7A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelPollVote();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_7AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewModelPollVote();
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v15 = &v26 - v14;
  v16 = *(a3 + 16);
  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  v17 = *(v13 + 72);
  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v18 = a3 + v26;
  v19 = _swiftEmptyArrayStorage;
  do
  {
    sub_6BEC(v18, v15);
    v20 = *(v15 + 3);
    if (v20 && (*(v15 + 2) == a1 ? (v21 = v20 == a2) : (v21 = 0), v21 || (sub_48874() & 1) != 0))
    {
      sub_7A64(v15, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21FD8(0, v19[2] + 1, 1);
        v19 = v27;
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        sub_21FD8(v23 > 1, v24 + 1, 1);
        v19 = v27;
      }

      v19[2] = v24 + 1;
      sub_7A64(v11, v19 + v26 + v24 * v17);
    }

    else
    {
      sub_6C50(v15);
    }

    v18 += v17;
    --v16;
  }

  while (v16);
  return v19;
}

unint64_t sub_7CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v38 = a2;
  v34 = type metadata accessor for ViewModelPollVote();
  v9 = *(v34 - 8);
  v10 = *(v9 + 64);
  v12 = __chkstk_darwin(v34, v11);
  v36 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12, v14);
  v16 = (&v34 - v15);
  v37 = v5;
  v17 = *v5;
  v18 = *(*v5 + 16);
  if (!v18)
  {
LABEL_17:
    v20 = v36;
    sub_833C(v35, v36 + *(v34 + 24));
    v25 = v38;
    *v20 = a1;
    v20[1] = v25;
    v20[2] = a3;
    v20[3] = a4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_25:
      v17 = sub_10B1C(0, v17[2] + 1, 1, v17);
    }

    v26 = v37;
    v28 = v17[2];
    v27 = v17[3];
    if (v28 >= v27 >> 1)
    {
      v17 = sub_10B1C(v27 > 1, v28 + 1, 1, v17);
    }

    v17[2] = v28 + 1;
    result = sub_7A64(v20, v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28);
    *v26 = v17;
    return result;
  }

  v19 = 0;
  v20 = (v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
  while (1)
  {
    if (v19 >= v17[2])
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_6BEC(v20 + *(v9 + 72) * v19, v16);
    v21 = v16[3];
    if (!v21 || (v16[2] == a3 ? (v22 = v21 == a4) : (v22 = 0), !v22 && (sub_48874() & 1) == 0 || (v23 = v16[1]) == 0))
    {
      sub_6C50(v16);
      goto LABEL_4;
    }

    if (*v16 == a1 && v23 == v38)
    {
      break;
    }

    v24 = sub_48874();
    sub_6C50(v16);
    if (v24)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v18 == ++v19)
    {
      goto LABEL_17;
    }
  }

  sub_6C50(v16);
LABEL_22:
  v30 = v38;

  v31 = v37;
  v32 = sub_9208(v37, a1, v30, a3, a4);

  v33 = *(*v31 + 16);
  if (v33 >= v32)
  {
    return sub_966C(v32, v33);
  }

  __break(1u);
  return result;
}

uint64_t sub_7FB4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 24);
    *a1 = *(v1 + 16);
    a1[1] = v2;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
  }
}

uint64_t sub_7FDC()
{
  v1 = *v0;
  type metadata accessor for ViewModelPollVote();
  v3._countAndFlagsBits = sub_48554();
  sub_48484(v3);

  return 0x203A7365746F56;
}

uint64_t sub_8048()
{
  v1 = *(type metadata accessor for ViewModelPollVote() + 24);
  v2 = sub_54A4(&qword_62138, &qword_4AC00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v18 - v5;
  sub_833C(v0 + v1, &v18 - v5);
  v7 = sub_47564();
  LODWORD(v1) = (*(*(v7 - 8) + 48))(v6, 1, v7);
  sub_60C8(v6, &qword_62138, &qword_4AC00);
  if (v1 == 1)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_48794(21);
    if (v0[1])
    {
      v8 = *v0;
      v9 = v0[1];
    }

    else
    {
      v8 = 0xD000000000000014;
      v9 = 0x80000000000498C0;
    }

    v20._countAndFlagsBits = v8;
    v20._object = v9;
    sub_48484(v20);

    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    sub_48484(v21);
    if (v0[3])
    {
      v12 = v0[2];
      v13 = v0[3];
    }

    else
    {
      v13 = 0x80000000000498E0;
      v12 = 0xD000000000000019;
    }

    v24._countAndFlagsBits = v12;
    v24._object = v13;
    sub_48484(v24);

    v16._countAndFlagsBits = 0x6F76206F6E202D20;
    v16._object = 0xEF656D6974206574;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_48794(22);
    if (v0[1])
    {
      v10 = *v0;
      v11 = v0[1];
    }

    else
    {
      v11 = 0x80000000000498C0;
      v10 = 0xD000000000000014;
    }

    v22._countAndFlagsBits = v10;
    v22._object = v11;
    sub_48484(v22);

    v23._countAndFlagsBits = 8250;
    v23._object = 0xE200000000000000;
    sub_48484(v23);
    if (v0[3])
    {
      v14 = v0[2];
      v15 = v0[3];
    }

    else
    {
      v15 = 0x80000000000498E0;
      v14 = 0xD000000000000019;
    }

    v25._countAndFlagsBits = v14;
    v25._object = v15;
    sub_48484(v25);

    v16._countAndFlagsBits = 0xD000000000000010;
    v16._object = 0x8000000000049900;
  }

  sub_48484(v16);
  return v18;
}

uint64_t type metadata accessor for ViewModelPollVote()
{
  result = qword_621C8;
  if (!qword_621C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62138, &qword_4AC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_83AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    v8 = *(a2 + 64);
    v17 = *(a2 + 72);
    v18 = *(a1 + 72);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v9 = a2, v10 = sub_48874(), a2 = v9, (v10 & 1) != 0))
    {
      v15 = a2;
      for (i = 0; ; i += 48)
      {
        --v2;
        if (v4)
        {
          if (!v6 || (v3 != v7 || v4 != v6) && (sub_48874() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6)
        {
          return 0;
        }

        v12 = *(v5 + 16);
        v13 = *(v8 + 16);

        if (![v12 isEqualToAttributedString:v13])
        {
          break;
        }

        if ((v17 ^ v18))
        {
          return 0;
        }

        if (!v2)
        {
          return 1;
        }

        v3 = *(a1 + i + 96);
        v4 = *(a1 + i + 104);
        v5 = *(a1 + i + 112);
        v7 = *(v15 + i + 96);
        v6 = *(v15 + i + 104);
        v8 = *(v15 + i + 112);
        v17 = *(v15 + i + 120);
        v18 = *(a1 + i + 120);
        if ((*(a1 + i + 80) != *(v15 + i + 80) || *(a1 + i + 88) != *(v15 + i + 88)) && (sub_48874() & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_85F4(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for ViewModelPollVote();
  v4 = *(*(v57 - 8) + 64);
  v6 = __chkstk_darwin(v57, v5);
  v8 = (&v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6, v9);
  v12 = (&v51 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    return 0;
  }

  if (!v13 || a1 == a2)
  {
    return 1;
  }

  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v55 = *(v10 + 72);
  v56 = v8;
  v17 = &qword_62138;
  v18 = &qword_4AC00;
  v52 = (&v51 - v11);
  while (1)
  {
    sub_6BEC(v15, v12);
    sub_6BEC(v16, v8);
    v19 = v12[1];
    v20 = v8[1];
    if (v19)
    {
      if (!v20 || (*v12 != *v8 || v19 != v20) && (sub_48874() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v20)
    {
      goto LABEL_29;
    }

    v21 = v12[3];
    v22 = v8[3];
    if (v21)
    {
      if (!v22 || (v12[2] != v8[2] || v21 != v22) && (sub_48874() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v22)
    {
      goto LABEL_29;
    }

    v23 = v17;
    v58 = v16;
    v59 = v15;
    v24 = *(v57 + 24);
    v25 = sub_54A4(&qword_62158, &qword_4AC08);
    v60 = &v51;
    v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    v28 = __chkstk_darwin(v25 - 8, v27);
    v30 = &v51 - v29;
    v31 = *(v28 + 56);
    sub_833C(v12 + v24, &v51 - v29);
    sub_833C(v8 + v24, &v30[v31]);
    v32 = sub_47564();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v30, 1, v32) != 1)
    {
      break;
    }

    if (v34(&v30[v31], 1, v32) != 1)
    {
      goto LABEL_28;
    }

    v17 = v23;
    sub_60C8(v30, v23, v18);
    v8 = v56;
    sub_6C50(v56);
    sub_6C50(v12);
LABEL_5:
    v16 = v58 + v55;
    v15 = v59 + v55;
    if (!--v13)
    {
      return 1;
    }
  }

  v35 = v23;
  v36 = v23;
  v37 = v18;
  v38 = sub_54A4(v36, v18);
  v54 = &v51;
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v38 - 8, v40);
  v42 = &v51 - v41;
  sub_833C(v30, &v51 - v41);
  v43 = (v34)(&v30[v31], 1, v32);
  if (v43 != 1)
  {
    v45 = *(v33 + 64);
    __chkstk_darwin(v43, v44);
    v47 = &v51 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 32))(v47, &v30[v31], v32);
    sub_8AD8();
    v53 = sub_483C4();
    v48 = *(v33 + 8);
    v48(v47, v32);
    v48(v42, v32);
    sub_60C8(v30, v35, v37);
    v8 = v56;
    sub_6C50(v56);
    v49 = v52;
    sub_6C50(v52);
    v17 = v35;
    v12 = v49;
    v18 = v37;
    if ((v53 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  (*(v33 + 8))(v42, v32);
  v12 = v52;
LABEL_28:
  sub_60C8(v30, &qword_62158, &qword_4AC08);
  v8 = v56;
LABEL_29:
  sub_6C50(v8);
  sub_6C50(v12);
  return 0;
}

unint64_t sub_8AD8()
{
  result = qword_62160;
  if (!qword_62160)
  {
    sub_47564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62160);
  }

  return result;
}

uint64_t sub_8B24(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_9790();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_487A4();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_487A4();
LABEL_26:
        v17 = v16;
        v18 = sub_486C4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_486C4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_487E4();
  }

  result = sub_487E4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

BOOL sub_8D64(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_48874() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8)
  {
    if (!v9 || (a1[2] != a2[2] || v8 != v9) && (sub_48874() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(type metadata accessor for ViewModelPollVote() + 24);
  v11 = sub_54A4(&qword_62158, &qword_4AC08);
  v12 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = __chkstk_darwin(v11 - 8, v13);
  v16 = &v34 - v15;
  v17 = *(v14 + 56);
  sub_833C(a1 + v10, &v34 - v15);
  sub_833C(a2 + v10, &v16[v17]);
  v18 = sub_47564();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (v20(v16, 1, v18) == 1)
  {
    if (v20(&v16[v17], 1, v18) == 1)
    {
      sub_60C8(v16, &qword_62138, &qword_4AC00);
      return 1;
    }

    goto LABEL_22;
  }

  v22 = sub_54A4(&qword_62138, &qword_4AC00);
  v23 = (*(*(v22 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v22 - 8, v24);
  v26 = &v34 - v25;
  sub_833C(v16, &v34 - v25);
  v27 = (v20)(&v16[v17], 1, v18);
  if (v27 == 1)
  {
    (*(v19 + 8))(v26, v18);
LABEL_22:
    sub_60C8(v16, &qword_62158, &qword_4AC08);
    return 0;
  }

  v29 = *(v19 + 64);
  __chkstk_darwin(v27, v28);
  v31 = &v34 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 32))(v31, &v16[v17], v18);
  sub_8AD8();
  v32 = sub_483C4();
  v33 = *(v19 + 8);
  v33(v31, v18);
  v33(v26, v18);
  sub_60C8(v16, &qword_62138, &qword_4AC00);
  return (v32 & 1) != 0;
}

uint64_t sub_90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v11 = 0;
  v12 = *(type metadata accessor for ViewModelPollVote() - 8);
  v13 = *(v12 + 72);
  v14 = (((*(v12 + 80) + 32) & ~*(v12 + 80)) + a1 + 16);
  while (1)
  {
    v15 = *(v14 - 1);
    if (v15)
    {
      v16 = *(v14 - 2) == a2 && v15 == a3;
      if (v16 || (sub_48874() & 1) != 0)
      {
        v17 = v14[1];
        if (v17)
        {
          v18 = *v14 == a4 && v17 == a5;
          if (v18 || (sub_48874() & 1) != 0)
          {
            break;
          }
        }
      }
    }

    ++v11;
    v14 = (v14 + v13);
    if (v5 == v11)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_9208(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v50 = a5;
  v9 = type metadata accessor for ViewModelPollVote();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9 - 8, v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v13, v16);
  v19 = &v42 - v18;
  __chkstk_darwin(v17, v20);
  v22 = (&v42 - v21);
  v23 = *a1;
  v24 = *a1;
  v51 = a2;
  v46 = a3;
  v25 = v52;
  result = sub_90B8(v24, a2, a3, a4, v50);
  if (v25)
  {
    return result;
  }

  v47 = v15;
  v48 = v19;
  v45 = a4;
  v42 = 0;
  if (v27)
  {
    return v23[2];
  }

  v52 = result;
  v28 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_39;
  }

  v30 = v23 + 2;
  v29 = v23[2];
  v31 = v46;
  if (v28 == v29)
  {
    return v52;
  }

  v44 = a1;
  v49 = v10;
  while (v28 < v29)
  {
    v32 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v33 = v23 + v32;
    v34 = *(v10 + 72);
    v35 = v34 * v28;
    sub_6BEC(v23 + v32 + v34 * v28, v22);
    v36 = v22[1];
    if (v36 && (*v22 == v51 ? (v37 = v36 == v31) : (v37 = 0), (v37 || (sub_48874() & 1) != 0) && (v38 = v22[3]) != 0))
    {
      if (v22[2] == v45 && v38 == v50)
      {
        result = sub_6C50(v22);
LABEL_33:
        v10 = v49;
        goto LABEL_11;
      }

      v43 = sub_48874();
      result = sub_6C50(v22);
      if (v43)
      {
        goto LABEL_33;
      }
    }

    else
    {
      result = sub_6C50(v22);
    }

    v39 = v52;
    if (v28 == v52)
    {
      v10 = v49;
    }

    else
    {
      if ((v52 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v40 = *v30;
      if (v52 >= *v30)
      {
        goto LABEL_36;
      }

      v41 = v34 * v52;
      result = sub_6BEC(&v33[v34 * v52], v48);
      if (v28 >= v40)
      {
        goto LABEL_37;
      }

      sub_6BEC(&v33[v35], v47);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_29974(v23);
      }

      v31 = v46;
      v10 = v49;
      result = sub_972C(v47, v23 + v32 + v41);
      if (v28 >= v23[2])
      {
        goto LABEL_38;
      }

      result = sub_972C(v48, v23 + v32 + v35);
      *v44 = v23;
      v39 = v52;
    }

    v52 = v39 + 1;
LABEL_11:
    ++v28;
    v30 = v23 + 2;
    v29 = v23[2];
    if (v28 == v29)
    {
      return v52;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_9524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for ViewModelPollVote();
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

unint64_t sub_966C(unint64_t result, uint64_t a2)
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

    v4 = sub_10B1C(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    *v2 = v4;
  }

  result = sub_9524(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_972C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelPollVote();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_9790()
{
  result = qword_62168;
  if (!qword_62168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_62168);
  }

  return result;
}

uint64_t sub_97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_54A4(&qword_62138, &qword_4AC00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_98CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_54A4(&qword_62138, &qword_4AC00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_997C()
{
  sub_9A00();
  if (v0 <= 0x3F)
  {
    sub_9A50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_9A00()
{
  if (!qword_621D8)
  {
    v0 = sub_486E4();
    if (!v1)
    {
      atomic_store(v0, &qword_621D8);
    }
  }
}

void sub_9A50()
{
  if (!qword_621E0)
  {
    sub_47564();
    v0 = sub_486E4();
    if (!v1)
    {
      atomic_store(v0, &qword_621E0);
    }
  }
}

void sub_9AB4(uint64_t a1, void *a2)
{
  if (&static CKMediaObjectManager.shared.getter)
  {
    sub_9EF8(a2, *v2);
    if (!v5)
    {
      v6 = v2;
      sub_A17C();
      v7 = sub_48684();
      v8 = [objc_allocWithZone(IMSticker) initWithUISticker:a1 adaptiveImageGlyph:a2];
      v9 = [v7 mediaObjectWithSticker:v8 stickerUserInfo:0];
      if (!v9)
      {

        return;
      }

      v10 = v9;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v10;
        v14 = v12;
        v15 = [v12 transferGUID];
        if (v15)
        {
          v16 = v15;
          v17 = sub_48414();
          v19 = v18;

          v20 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = v17 & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            v21 = [v14 adaptiveImageGlyph];
            if (v21)
            {

              if (qword_61CC0 != -1)
              {
                swift_once();
              }

              v22 = sub_47814();
              sub_5ED4(v22, qword_641B0);
              v23 = sub_477F4();
              v24 = sub_48624();
              if (!os_log_type_enabled(v23, v24))
              {
                goto LABEL_28;
              }

              v25 = swift_slowAlloc();
              *v25 = 0;
              v26 = "The adaptive glyph is already available";
            }

            else
            {
              if (qword_61CC0 != -1)
              {
                swift_once();
              }

              v31 = sub_47814();
              sub_5ED4(v31, qword_641B0);
              v23 = sub_477F4();
              v24 = sub_48624();
              if (!os_log_type_enabled(v23, v24))
              {
                goto LABEL_28;
              }

              v25 = swift_slowAlloc();
              *v25 = 0;
              v26 = "The adaptive glyph hasn't been generated, but we just kicked off a retrieval";
            }

            _os_log_impl(&dword_0, v23, v24, v26, v25, 2u);

LABEL_28:

            v32 = *v6;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v34 = *v6;
            sub_42EB4(v14, v17, v19, isUniquelyReferenced_nonNull_native);

            *v6 = v34;
            return;
          }
        }

        if (qword_61CC0 != -1)
        {
          swift_once();
        }

        v27 = sub_47814();
        sub_5ED4(v27, qword_641B0);
        v28 = sub_477F4();
        v29 = sub_48624();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_0, v28, v29, "Failed to get file transfer guid for created emoji image media object", v30, 2u);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_9E84()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_641B0);
  sub_5ED4(v0, qword_641B0);
  sub_477E4();
  return sub_47804();
}

void sub_9EF8(void *a1, uint64_t a2)
{
  v3 = [a1 contentIdentifier];
  v4 = sub_48414();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  v34 = v4;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_26:

    return;
  }

  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
  v32 = a2;
  while (v11)
  {
    v15 = v13;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(*(a2 + 48) + 16 * v17 + 8);
    v19 = *(*(a2 + 56) + 8 * v17);

    v20 = v19;
    v21 = [v20 v14[11]];
    if (v21)
    {
      v22 = [v21 adaptiveImageGlyphContentIdentifier];
      if (v22)
      {
        v33 = v20;
        v23 = v22;
        v24 = v6;
        v25 = sub_48414();
        v27 = v26;

        v28 = v25;
        v6 = v24;
        if (v28 == v34 && v27 == v24)
        {

          swift_unknownObjectRelease();
          v31 = v33;
LABEL_23:
          objc_opt_self();
          a2 = v32;
          if (swift_dynamicCastObjCClass())
          {

            return;
          }

          v13 = v15;
          v14 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
        }

        else
        {
          v30 = sub_48874();

          swift_unknownObjectRelease();
          v31 = v33;
          if (v30)
          {
            goto LABEL_23;
          }

          v13 = v15;
          a2 = v32;
          v14 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
        }
      }

      else
      {

        swift_unknownObjectRelease();
        v13 = v15;
      }
    }

    else
    {

      v13 = v15;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      goto LABEL_26;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_A17C()
{
  result = qword_62218;
  if (!qword_62218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_62218);
  }

  return result;
}

__n128 sub_A1C8()
{
  v0 = sub_54A4(&qword_62220, &qword_4ACA0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0, v2);
  v4 = (&v19 - v3);
  v5 = sub_482C4();
  v7 = v6;
  v8 = sub_48084();
  v9 = *(v0 + 36);
  v10 = enum case for BlendMode.destinationOut(_:);
  v11 = sub_48304();
  (*(*(v11 - 8) + 104))(v4 + v9, v10, v11);
  *v4 = v8;
  sub_A308();
  v12 = sub_47914();
  __asm { FMOV            V0.2D, #24.0 }

  xmmword_641D0 = _Q0;
  qword_641E0 = 0x3FD999999999999ALL;
  unk_641E8 = v5;
  *&xmmword_641F0 = v7;
  *(&xmmword_641F0 + 8) = xmmword_4AC90;
  __asm { FMOV            V0.2D, #6.0 }

  unk_64208 = result;
  qword_64218 = v12;
  return result;
}

unint64_t sub_A308()
{
  result = qword_62228;
  if (!qword_62228)
  {
    sub_A36C(&qword_62220, &qword_4ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62228);
  }

  return result;
}

uint64_t sub_A36C(uint64_t *a1, uint64_t *a2)
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

__n128 sub_A3B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_A3D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A418(uint64_t result, int a2, int a3)
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
      *(result + 72) = (a2 - 1);
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

uint64_t sub_A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_54A4(&qword_62230, "v9");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_54A4(&qword_63450, &unk_4C4C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_A5DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_54A4(&qword_62230, "v9");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_54A4(&qword_63450, &unk_4C4C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PollOptionList.PollOptionListView()
{
  result = qword_62290;
  if (!qword_62290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A74C()
{
  sub_A8F4(319, &qword_622A0, type metadata accessor for PollViewModel, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    sub_A8F4(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_A958(319, &qword_622A8, &type metadata for Bool, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_A958(319, &qword_622B0, &type metadata for Double, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_A958(319, &qword_622B8, &type metadata for CGFloat, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_A8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_A958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_A9C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_54A4(&qword_62308, &qword_4AD90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for PollOptionList.PollOptionListView();
  sub_6128(v1 + *(v14 + 24), v13, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_47884();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_48634();
    v18 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

double sub_ABCC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PollOptionList.PollOptionListView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8, v7);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  swift_getKeyPath();
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  v8 = *(*&v16 + 176);

  if (v8 == 1)
  {
    v9 = sub_47C94();
  }

  else
  {
    v9 = sub_47C84();
  }

  v10 = v9;
  sub_D5A4(v2, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_EA44(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PollOptionList.PollOptionListView);
  v15[1] = 0x4024000000000000;
  sub_48114();
  result = v16;
  v14 = v17;
  *a1 = v10;
  *(a1 + 8) = sub_D618;
  *(a1 + 16) = v12;
  *(a1 + 24) = result;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_ADC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v118 = a2;
  v5 = type metadata accessor for PollOptionList.PollOptionListView();
  v108 = *(v5 - 8);
  v6 = *(v108 + 64);
  __chkstk_darwin(v5, v7);
  v109 = v8;
  v110 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_54A4(&qword_62230, "v9");
  v107 = *(v9 - 8);
  v10 = *(v107 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v94 - v12;
  v14 = sub_54A4(&qword_62310, &qword_4AD98);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v94 - v17;
  v117 = sub_54A4(&qword_62318, &qword_4ADA0);
  v19 = *(*(v117 - 8) + 64);
  v21 = __chkstk_darwin(v117, v20);
  v111 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v112 = &v94 - v24;
  v115 = sub_54A4(&qword_62320, &qword_4ADA8);
  v25 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115, v26);
  v116 = &v94 - v27;
  v101 = sub_479D4();
  v100 = *(v101 - 8);
  v28 = *(v100 + 64);
  __chkstk_darwin(v101, v29);
  v99 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_54A4(&qword_62328, &qword_4ADB0);
  v96 = *(v98 - 8);
  v31 = *(v96 + 64);
  __chkstk_darwin(v98, v32);
  v95 = &v94 - v33;
  v97 = sub_54A4(&qword_62330, &qword_4ADB8);
  v34 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97, v35);
  v37 = &v94 - v36;
  v103 = sub_54A4(&qword_62338, &qword_4ADC0);
  v38 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103, v39);
  v102 = &v94 - v40;
  v105 = sub_54A4(&qword_62340, &qword_4ADC8);
  v41 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105, v42);
  v104 = &v94 - v43;
  v113 = sub_54A4(&qword_62348, &qword_4ADD0);
  v44 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113, v45);
  v106 = &v94 - v46;
  v114 = v5;
  v47 = a1 + *(v5 + 40);
  if (!*(v47 + 8))
  {
    a3 = *v47;
  }

  sub_481F4();
  v48 = v121;
  swift_getKeyPath();
  v121 = v48;
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  v49 = *(v48 + 98);

  if (v49 != 1)
  {
    goto LABEL_5;
  }

  sub_481F4();
  v50 = v121;
  swift_getKeyPath();
  v121 = v50;
  sub_475C4();

  v51 = *(v50 + 97);

  if ((v51 & 1) == 0)
  {
    __chkstk_darwin(v52, v53);
    sub_54A4(&qword_623F8, &qword_4AEB8);
    v72 = sub_A36C(&qword_62400, &qword_4AEC0);
    v73 = sub_A36C(&qword_62408, &qword_4AEC8);
    v74 = sub_DD44();
    v121 = v73;
    *&v122 = v74;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v121 = v72;
    *&v122 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v76 = v95;
    sub_47EC4();
    v77 = v99;
    sub_479C4();
    sub_EAF0(&qword_623B8, &qword_62328, &qword_4ADB0);
    v78 = v98;
    v79 = v101;
    sub_48044();
    (*(v100 + 8))(v77, v79);
    (*(v96 + 8))(v76, v78);
    KeyPath = swift_getKeyPath();
    v81 = &v37[*(v97 + 36)];
    *v81 = KeyPath;
    v81[1] = 0;
    sub_DB04();
    v82 = v102;
    sub_47F94();
    sub_60C8(v37, &qword_62330, &qword_4ADB8);
    v83 = (a1 + *(v114 + 36));
    v84 = *v83;
    v85 = (v82 + *(v103 + 36));
    v86 = *(sub_47A84() + 20);
    v87 = enum case for RoundedCornerStyle.continuous(_:);
    v88 = sub_47C24();
    (*(*(v88 - 8) + 104))(&v85[v86], v87, v88);
    *v85 = v84;
    *(v85 + 1) = v84;
    *&v85[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
    sub_DA10();
    v89 = v104;
    sub_48004();
    sub_60C8(v82, &qword_62338, &qword_4ADC0);
    *(v89 + *(v105 + 36)) = 256;
    sub_478C4();
    sub_D948();
    v90 = v106;
    sub_47FA4();
    sub_60C8(v89, &qword_62340, &qword_4ADC8);
    v91 = v83[2];
    v92 = swift_getKeyPath();
    v93 = v90 + *(v113 + 36);
    *v93 = v92;
    *(v93 + 8) = v91;
    *(v93 + 16) = 0;
    sub_E36C(v90, v116);
    swift_storeEnumTagMultiPayload();
    sub_D854();
    sub_DC4C();
    sub_47CC4();
    return sub_60C8(v90, &qword_62348, &qword_4ADD0);
  }

  else
  {
LABEL_5:
    sub_481F4();
    v54 = v121;
    swift_getKeyPath();
    v121 = v54;
    sub_475C4();

    v55 = *(v54 + 98);

    v56 = v114;
    v57 = 8;
    if (v55)
    {
      v57 = 16;
    }

    v58 = *(a1 + *(v114 + 36) + v57);
    *v18 = sub_47C74();
    *(v18 + 1) = v58;
    v18[16] = 0;
    v59 = *(sub_54A4(&qword_62350, &qword_4AE00) + 44);
    sub_48204();
    swift_getKeyPath();
    sub_48224();

    (*(v107 + 8))(v13, v9);
    v119 = v121;
    v120 = v122;
    swift_getKeyPath();
    v60 = v110;
    sub_D5A4(a1, v110);
    v61 = (*(v108 + 80) + 16) & ~*(v108 + 80);
    v62 = (v109 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    sub_EA44(v60, v63 + v61, type metadata accessor for PollOptionList.PollOptionListView);
    *(v63 + v62) = a3;
    sub_54A4(&qword_62360, &qword_4AE68);
    _s18PollOptionCellViewVMa();
    sub_D720();
    sub_D80C(&qword_62388, _s18PollOptionCellViewVMa);
    sub_481E4();
    v64 = *(a1 + *(v56 + 36));
    v65 = v111;
    v66 = &v111[*(v117 + 36)];
    v67 = *(sub_47A84() + 20);
    v68 = enum case for RoundedCornerStyle.continuous(_:);
    v69 = sub_47C24();
    (*(*(v69 - 8) + 104))(&v66[v67], v68, v69);
    *v66 = v64;
    *(v66 + 1) = v64;
    *&v66[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
    sub_E940(v18, v65, &qword_62310, &qword_4AD98);
    v70 = v112;
    sub_E940(v65, v112, &qword_62318, &qword_4ADA0);
    sub_6128(v70, v116, &qword_62318, &qword_4ADA0);
    swift_storeEnumTagMultiPayload();
    sub_D854();
    sub_DC4C();
    sub_47CC4();
    return sub_60C8(v70, &qword_62318, &qword_4ADA0);
  }
}

uint64_t sub_BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v41 = a2;
  v5 = type metadata accessor for PollOptionList.PollOptionListView();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8, v8);
  v9 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_54A4(&qword_62230, "v9");
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = v35 - v14;
  v38 = sub_54A4(&qword_62408, &qword_4AEC8);
  v16 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v17);
  v19 = v35 - v18;
  v20 = sub_54A4(&qword_62400, &qword_4AEC0);
  v21 = *(v20 - 8);
  v39 = v20;
  v40 = v21;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v36 = a1;
  v37 = v35 - v24;
  sub_48204();
  swift_getKeyPath();
  sub_48224();

  (*(v11 + 8))(v15, v10);
  v42 = v44;
  v43 = v45;
  v35[1] = swift_getKeyPath();
  sub_D5A4(a1, v9);
  v25 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v26 = swift_allocObject();
  sub_EA44(v9, v26 + v25, type metadata accessor for PollOptionList.PollOptionListView);
  *(v26 + ((v25 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_54A4(&qword_62360, &qword_4AE68);
  sub_54A4(&qword_62430, &qword_4AED8);
  sub_D720();
  sub_DE80();
  sub_481E4();
  sub_D5A4(v36, v9);
  v27 = swift_allocObject();
  sub_EA44(v9, v27 + v25, type metadata accessor for PollOptionList.PollOptionListView);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_E808;
  *(v28 + 24) = v27;
  v29 = v38;
  v30 = &v19[*(v38 + 36)];
  *v30 = sub_E8C0;
  *(v30 + 1) = v28;
  sub_478C4();
  v31 = sub_DD44();
  v32 = v37;
  sub_48014();
  sub_60C8(v19, &qword_62408, &qword_4AEC8);
  sub_478C4();
  v44 = v29;
  *&v45 = v31;
  swift_getOpaqueTypeConformance2();
  v33 = v39;
  sub_47FA4();
  return (*(v40 + 8))(v32, v33);
}

uint64_t sub_BF6C@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v8 = a1[2];
  *v9 = a1[3];
  *&v9[10] = *(a1 + 58);
  v6 = *a1;
  v7 = a1[1];
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_D6AC();
  result = sub_481A4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_BFEC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v43 = a2;
  v47 = a3;
  v6 = sub_54A4(&qword_62470, &qword_4AEF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v42 - v9;
  v44 = sub_54A4(&qword_62458, &qword_4AEF0);
  v11 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44, v12);
  v14 = &v42 - v13;
  v15 = sub_54A4(&qword_624B8, &qword_4AF80);
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v42 - v18;
  v20 = sub_54A4(&qword_62450, &qword_4AEE8);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v42 - v24;
  v26 = sub_54A4(&qword_62440, &qword_4AEE0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26, v29);
  v31 = &v42 - v30;
  v32 = a1[3];
  v57 = a1[2];
  v58[0] = v32;
  *(v58 + 10) = *(a1 + 58);
  v33 = a1[1];
  v55 = *a1;
  v56 = v33;
  *v10 = sub_47C74();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v34 = sub_54A4(&qword_624C0, &qword_4AF88);
  sub_C418(v43, &v55, &v10[*(v34 + 44)], a4);
  v53 = v57;
  v54[0] = v58[0];
  *(v54 + 10) = *(v58 + 10);
  v51 = v55;
  v52 = v56;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  *v60 = v50[0];
  *&v60[10] = *(v50 + 10);
  v59[0] = v48;
  v59[1] = v49;
  v35 = [*(*&v50[0] + 16) length];
  sub_E8EC(v59);
  LOBYTE(v35) = (v35 == 0) | ~v60[24];
  sub_E940(v10, v14, &qword_62470, &qword_4AEF8);
  v14[*(v44 + 36)] = v35 & 1;
  sub_478C4();
  sub_E0E4();
  sub_47FA4();
  sub_60C8(v14, &qword_62458, &qword_4AEF0);
  KeyPath = swift_getKeyPath();
  (*(v45 + 32))(v25, v19, v46);
  v37 = &v25[*(v21 + 44)];
  *v37 = KeyPath;
  *(v37 + 1) = 0;
  v37[16] = 0;
  sub_E940(v25, v31, &qword_62450, &qword_4AEE8);
  v38 = &v31[*(v27 + 44)];
  v38[32] = 0;
  *v38 = 0u;
  *(v38 + 1) = 0u;
  *&v51 = sub_48074();
  v39 = sub_48154();
  v40 = v47;
  sub_E940(v31, v47, &qword_62440, &qword_4AEE0);
  result = sub_54A4(&qword_62430, &qword_4AED8);
  *(v40 + *(result + 36)) = v39;
  return result;
}

uint64_t sub_C418@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v154 = a3;
  v7 = sub_47884();
  v143 = *(v7 - 8);
  v144 = v7;
  v8 = *(v143 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v140 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v139 = &v127 - v13;
  v14 = sub_48304();
  v141 = *(v14 - 8);
  v142 = v14;
  v15 = *(v141 + 64);
  __chkstk_darwin(v14, v16);
  v138 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_54A4(&qword_62220, &qword_4ACA0);
  v18 = *(*(v134 - 8) + 64);
  __chkstk_darwin(v134, v19);
  v136 = &v127 - v20;
  v137 = sub_481D4();
  v135 = *(v137 - 8);
  v21 = *(v135 + 64);
  __chkstk_darwin(v137, v22);
  *&v155 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_54A4(&qword_624D0, &qword_4AFA0);
  v24 = *(*(v128 - 8) + 64);
  __chkstk_darwin(v128, v25);
  v132 = &v127 - v26;
  v131 = sub_54A4(&qword_624D8, &qword_4AFA8);
  v27 = *(*(v131 - 8) + 64);
  __chkstk_darwin(v131, v28);
  v133 = &v127 - v29;
  v152 = sub_54A4(&qword_624E0, &qword_4AFB0);
  v150 = *(v152 - 8);
  v30 = *(v150 + 64);
  v32 = __chkstk_darwin(v152, v31);
  v130 = &v127 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32, v34);
  v129 = &v127 - v35;
  v36 = sub_54A4(&qword_624E8, &qword_4AFB8);
  v37 = *(*(v36 - 8) + 64);
  v39 = __chkstk_darwin(v36 - 8, v38);
  v153 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39, v41);
  *&v151 = &v127 - v42;
  v43 = _s18PollOptionCellViewVMa();
  v44 = *(*(v43 - 1) + 64);
  __chkstk_darwin(v43, v45);
  v47 = &v127 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_54A4(&qword_624F0, &qword_4AFC0);
  v48 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145, v49);
  v51 = &v127 - v50;
  v146 = sub_54A4(&qword_624F8, &qword_4AFC8);
  v52 = *(*(v146 - 8) + 64);
  v54 = __chkstk_darwin(v146, v53);
  v148 = &v127 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v54, v56);
  v59 = &v127 - v58;
  __chkstk_darwin(v57, v60);
  v156 = &v127 - v61;
  v62 = sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v63 = *&v164[0];
  *&v47[v43[6]] = swift_getKeyPath();
  sub_54A4(&qword_62500, &qword_4B000);
  swift_storeEnumTagMultiPayload();
  *&v47[v43[7]] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v66 = *a2;
  *(v47 + 24) = a2[1];
  v67 = a2[3];
  *(v47 + 40) = a2[2];
  *(v47 + 56) = v67;
  *(v47 + 66) = *(a2 + 58);
  *v47 = v63;
  *(v47 + 8) = v66;
  v68 = &v47[v43[8]];
  *v68 = KeyPath;
  v68[8] = 0;
  v69 = &v47[v43[9]];
  *v69 = v65;
  v69[8] = 0;
  v70 = &v47[v43[10]];
  sub_6128(a2, v164, &qword_624C8, &unk_4AF90);
  if (qword_61CE8 != -1)
  {
    swift_once();
  }

  v71 = xmmword_64308;
  v164[6] = xmmword_64318;
  v164[7] = xmmword_64328;
  v72 = xmmword_64328;
  v164[8] = xmmword_64338;
  v73 = xmmword_642C8;
  v74 = xmmword_642D8;
  v164[2] = xmmword_642D8;
  v164[3] = xmmword_642E8;
  v75 = xmmword_642E8;
  v76 = xmmword_642F8;
  v164[4] = xmmword_642F8;
  v164[5] = xmmword_64308;
  v77 = xmmword_642B8;
  v164[0] = xmmword_642B8;
  v164[1] = xmmword_642C8;
  v70[6] = xmmword_64318;
  v70[7] = v72;
  v70[8] = xmmword_64338;
  v70[2] = v74;
  v70[3] = v75;
  v70[4] = v76;
  v70[5] = v71;
  *v70 = v77;
  v70[1] = v73;
  *&v47[v43[11]] = a4;
  sub_E9E8(v164, &v160);
  v147 = v62;
  v149 = a1;
  sub_481F4();
  v78 = v160;
  swift_getKeyPath();
  *&v160 = v78;
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  v79 = *(v78 + 176);

  if (v79 == 1)
  {
    sub_47C94();
  }

  else
  {
    sub_47C84();
  }

  sub_47C04();
  sub_47904();
  sub_EA44(v47, v51, _s18PollOptionCellViewVMa);
  v80 = &v51[*(v145 + 36)];
  v81 = v163[7];
  *v80 = v163[6];
  *(v80 + 1) = v81;
  *(v80 + 2) = v163[8];
  *&v160 = sub_48074();
  v82 = sub_48154();
  sub_E940(v51, v59, &qword_624F0, &qword_4AFC0);
  *&v59[*(v146 + 36)] = v82;
  sub_E940(v59, v156, &qword_624F8, &qword_4AFC8);
  v83 = a2[3];
  v162 = a2[2];
  v163[0] = v83;
  *(v163 + 10) = *(a2 + 58);
  v84 = a2[1];
  v160 = *a2;
  v161 = v84;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_D6AC();
  sub_481A4();
  v86 = v158;
  v85 = v159;
  v87 = v149;
  sub_481F4();
  v88 = v157;
  swift_getKeyPath();
  v157 = v88;
  sub_475C4();

  swift_beginAccess();
  v89 = *(v88 + 200);

  v90 = *(v89 + 16);
  if (v90)
  {
    v91 = (v89 + (v90 << 6));
    v93 = *(v91 - 4);
    v92 = *(v91 - 3);
    v94 = *(v91 - 1);
    v95 = *v91;

    if (v86 == v93 && v85 == v92)
    {

      v96 = 1;
      v97 = v152;
      v98 = v151;
      goto LABEL_16;
    }

    v99 = sub_48874();

    v98 = v151;
    if (v99)
    {
      v96 = 1;
      v97 = v152;
      goto LABEL_16;
    }
  }

  else
  {

    v98 = v151;
  }

  sub_481C4();
  v100 = v87 + *(type metadata accessor for PollOptionList.PollOptionListView() + 36);
  v101 = *(v100 + 32);
  v102 = v139;
  sub_A9C4(v139);
  v104 = v143;
  v103 = v144;
  v105 = v140;
  (*(v143 + 104))(v140, enum case for ColorScheme.dark(_:), v144);
  v106 = sub_47874();
  v107 = *(v104 + 8);
  v107(v105, v103);
  v107(v102, v103);
  v108 = v141;
  v109 = &enum case for BlendMode.plusLighter(_:);
  if ((v106 & 1) == 0)
  {
    v109 = &enum case for BlendMode.plusDarker(_:);
  }

  v110 = v138;
  v111 = v142;
  (*(v141 + 104))(v138, *v109, v142);
  v112 = v136;
  (*(v108 + 32))(&v136[*(v134 + 36)], v110, v111);
  *v112 = v101;
  v113 = v132;
  sub_E940(v112, &v132[*(v128 + 36)], &qword_62220, &qword_4ACA0);
  (*(v135 + 32))(v113, v155, v137);

  sub_482A4();
  sub_47904();
  v114 = v133;
  sub_E940(v113, v133, &qword_624D0, &qword_4AFA0);
  v115 = (v114 + *(v131 + 36));
  v116 = v161;
  *v115 = v160;
  v115[1] = v116;
  v115[2] = v162;
  v155 = *(v100 + 40);
  v151 = *(v100 + 56);
  LOBYTE(v113) = sub_47E54();
  v117 = v130;
  sub_E940(v114, v130, &qword_624D8, &qword_4AFA8);
  v97 = v152;
  v118 = v117 + *(v152 + 36);
  *v118 = v113;
  *(v118 + 24) = v151;
  *(v118 + 8) = v155;
  *(v118 + 40) = 0;
  v119 = v117;
  v120 = v129;
  sub_E940(v119, v129, &qword_624E0, &qword_4AFB0);
  sub_E940(v120, v98, &qword_624E0, &qword_4AFB0);
  v96 = 0;
LABEL_16:
  (*(v150 + 56))(v98, v96, 1, v97);
  v121 = v156;
  v122 = v148;
  sub_6128(v156, v148, &qword_624F8, &qword_4AFC8);
  v123 = v153;
  sub_6128(v98, v153, &qword_624E8, &qword_4AFB8);
  v124 = v154;
  sub_6128(v122, v154, &qword_624F8, &qword_4AFC8);
  v125 = sub_54A4(&qword_62508, &qword_4B098);
  sub_6128(v123, v124 + *(v125 + 48), &qword_624E8, &qword_4AFB8);
  sub_60C8(v98, &qword_624E8, &qword_4AFB8);
  sub_60C8(v121, &qword_624F8, &qword_4AFC8);
  sub_60C8(v123, &qword_624E8, &qword_4AFB8);
  return sub_60C8(v122, &qword_624F8, &qword_4AFC8);
}

uint64_t sub_D180()
{
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  swift_getKeyPath();
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_getKeyPath();
  sub_475E4();

  swift_beginAccess();
  sub_54A4(&qword_62378, &qword_4AE70);
  sub_EAF0(&qword_62370, &qword_62378, &qword_4AE70);
  sub_483B4();
  swift_endAccess();
  sub_20450();
  swift_getKeyPath();
  sub_475D4();
}

uint64_t sub_D348@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a1[3];
  v29 = a1[2];
  v30[0] = v5;
  *(v30 + 10) = *(a1 + 58);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v7 = *&v31[0];
  KeyPath = swift_getKeyPath();
  v9 = _s18PollOptionCellViewVMa();
  *(a2 + v9[6]) = KeyPath;
  sub_54A4(&qword_62500, &qword_4B000);
  swift_storeEnumTagMultiPayload();
  *(a2 + v9[7]) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v27;
  *(a2 + 24) = v28;
  v13 = v30[0];
  *(a2 + 40) = v29;
  *(a2 + 56) = v13;
  *(a2 + 66) = *(v30 + 10);
  *a2 = v7;
  *(a2 + 8) = v12;
  v14 = a2 + v9[8];
  *v14 = v10;
  *(v14 + 8) = 0;
  v15 = a2 + v9[9];
  *v15 = v11;
  *(v15 + 8) = 0;
  v16 = v9[10];
  sub_6128(&v27, v31, &qword_624C8, &unk_4AF90);
  if (qword_61CE8 != -1)
  {
    swift_once();
  }

  v17 = xmmword_64308;
  v31[6] = xmmword_64318;
  v31[7] = xmmword_64328;
  v18 = xmmword_64328;
  v31[8] = xmmword_64338;
  v19 = xmmword_642C8;
  v20 = xmmword_642D8;
  v31[2] = xmmword_642D8;
  v31[3] = xmmword_642E8;
  v21 = xmmword_642E8;
  v22 = xmmword_642F8;
  v31[4] = xmmword_642F8;
  v31[5] = xmmword_64308;
  v23 = xmmword_642B8;
  v31[0] = xmmword_642B8;
  v31[1] = xmmword_642C8;
  v24 = (a2 + v16);
  v24[6] = xmmword_64318;
  v24[7] = v18;
  v24[8] = xmmword_64338;
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[5] = v17;
  *v24 = v23;
  v24[1] = v19;
  *(a2 + v9[11]) = a3;
  return sub_E9E8(v31, &v26);
}

uint64_t sub_D5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PollOptionList.PollOptionListView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D60C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_D618@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *(type metadata accessor for PollOptionList.PollOptionListView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_ADC4(v6, a1, a2);
}

unint64_t sub_D6AC()
{
  result = qword_62358;
  if (!qword_62358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62358);
  }

  return result;
}

unint64_t sub_D720()
{
  result = qword_62368;
  if (!qword_62368)
  {
    sub_A36C(&qword_62360, &qword_4AE68);
    sub_EAF0(&qword_62370, &qword_62378, &qword_4AE70);
    sub_EAF0(&qword_62380, &qword_62378, &qword_4AE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62368);
  }

  return result;
}

uint64_t sub_D80C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_D854()
{
  result = qword_62398;
  if (!qword_62398)
  {
    sub_A36C(&qword_62348, &qword_4ADD0);
    sub_A36C(&qword_62340, &qword_4ADC8);
    sub_D948();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623D8, &qword_623E0, &qword_4AE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62398);
  }

  return result;
}

unint64_t sub_D948()
{
  result = qword_623A0;
  if (!qword_623A0)
  {
    sub_A36C(&qword_62340, &qword_4ADC8);
    sub_A36C(&qword_62338, &qword_4ADC0);
    sub_DA10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623A0);
  }

  return result;
}

unint64_t sub_DA10()
{
  result = qword_623A8;
  if (!qword_623A8)
  {
    sub_A36C(&qword_62338, &qword_4ADC0);
    sub_A36C(&qword_62330, &qword_4ADB8);
    sub_DB04();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623A8);
  }

  return result;
}

unint64_t sub_DB04()
{
  result = qword_623B0;
  if (!qword_623B0)
  {
    sub_A36C(&qword_62330, &qword_4ADB8);
    sub_A36C(&qword_62328, &qword_4ADB0);
    sub_479D4();
    sub_EAF0(&qword_623B8, &qword_62328, &qword_4ADB0);
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623C0, &qword_623C8, &qword_4AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623B0);
  }

  return result;
}

unint64_t sub_DC4C()
{
  result = qword_623E8;
  if (!qword_623E8)
  {
    sub_A36C(&qword_62318, &qword_4ADA0);
    sub_EAF0(&qword_623F0, &qword_62310, &qword_4AD98);
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623E8);
  }

  return result;
}

unint64_t sub_DD44()
{
  result = qword_62410;
  if (!qword_62410)
  {
    sub_A36C(&qword_62408, &qword_4AEC8);
    sub_DDFC();
    sub_EAF0(&qword_624A8, &qword_624B0, &qword_4AF18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62410);
  }

  return result;
}

unint64_t sub_DDFC()
{
  result = qword_62418;
  if (!qword_62418)
  {
    sub_A36C(&qword_62420, &qword_4AED0);
    sub_DE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62418);
  }

  return result;
}

unint64_t sub_DE80()
{
  result = qword_62428;
  if (!qword_62428)
  {
    sub_A36C(&qword_62430, &qword_4AED8);
    sub_DF38();
    sub_EAF0(&qword_62498, &qword_624A0, &qword_4AF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62428);
  }

  return result;
}

unint64_t sub_DF38()
{
  result = qword_62438;
  if (!qword_62438)
  {
    sub_A36C(&qword_62440, &qword_4AEE0);
    sub_DFF0();
    sub_EAF0(&qword_62488, &qword_62490, &qword_4AF08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62438);
  }

  return result;
}

unint64_t sub_DFF0()
{
  result = qword_62448;
  if (!qword_62448)
  {
    sub_A36C(&qword_62450, &qword_4AEE8);
    sub_A36C(&qword_62458, &qword_4AEF0);
    sub_E0E4();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623D8, &qword_623E0, &qword_4AE88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62448);
  }

  return result;
}

unint64_t sub_E0E4()
{
  result = qword_62460;
  if (!qword_62460)
  {
    sub_A36C(&qword_62458, &qword_4AEF0);
    sub_EAF0(&qword_62468, &qword_62470, &qword_4AEF8);
    sub_EAF0(&qword_62478, &qword_62480, &qword_4AF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62460);
  }

  return result;
}

uint64_t sub_E1C8@<X0>(void *a1@<X8>)
{
  result = sub_47B44();
  *a1 = v3;
  return result;
}

uint64_t sub_E240(uint64_t a1)
{
  v2 = sub_47A04();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_47AF4();
}

uint64_t sub_E308@<X0>(uint64_t a1@<X8>)
{
  result = sub_47AC4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_E33C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_47AD4();
}

uint64_t sub_E36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62348, &qword_4ADD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3DC()
{
  v1 = type metadata accessor for PollOptionList.PollOptionListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_54A4(&qword_62230, "v9");
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[6];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_47884();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  sub_D60C(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  sub_D60C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v10 = v5 + v1[9];
  v11 = *(v10 + 24);

  v12 = *(v10 + 32);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_E5A4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, __n128))
{
  v4 = *(type metadata accessor for PollOptionList.PollOptionListView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6.n128_u64[0] = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_E664()
{
  v1 = type metadata accessor for PollOptionList.PollOptionListView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_54A4(&qword_62230, "v9");
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[6];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_47884();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  sub_D60C(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  sub_D60C(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v10 = v5 + v1[9];
  v11 = *(v10 + 24);

  v12 = *(v10 + 32);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E808()
{
  v0 = *(*(type metadata accessor for PollOptionList.PollOptionListView() - 8) + 80);

  return sub_D180();
}

uint64_t sub_E888()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E8C0(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_E940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_54A4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_EA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_EAF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_A36C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_EB44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_EB68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_EBB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_EC38@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_480E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80))
  {
    (*(v4 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v3);

    v9 = sub_48104();
    (*(v4 + 8))(v8, v3);
    *&v63[34] = *&v53[32];
    *&v63[50] = *&v53[48];
    *&v63[66] = *&v53[64];
    *&v63[2] = *v53;
    LOBYTE(v41) = 1;
    LOBYTE(v35) = 0;
    v62 = v9;
    *v63 = 1;
    *&v63[82] = *&v53[80];
    *&v63[18] = *&v53[16];
    v63[90] = 0;

    sub_54A4(&qword_62530, &qword_4B140);
    sub_54A4(&qword_62528, &qword_4B138);
    sub_F1F8();
    sub_F27C();
    sub_47CC4();
  }

  else
  {
    v10 = *(v1 + 88);
    v11 = *(v1 + 89);
    v12 = *(v1 + 90);
    v32 = sub_38D20(*(v1 + 88), v11, v12);
    if (v10 == 1)
    {
      if (v11)
      {
        if (qword_61D58 != -1)
        {
          swift_once();
        }

        v13 = &qword_643F0;
      }

      else
      {
        if (qword_61D50 != -1)
        {
          swift_once();
        }

        v13 = &qword_643E8;
      }
    }

    else if (v12)
    {
      if (qword_61D68 != -1)
      {
        swift_once();
      }

      v13 = &qword_64400;
    }

    else
    {
      if (qword_61D38 != -1)
      {
        swift_once();
      }

      v13 = &qword_643D0;
    }

    v31 = *v13;

    v14 = *(v1 + 56);
    sub_478A4();
    v15 = v56;
    v16 = v57;
    v17 = v58;
    v18 = v59;
    v19 = v60;
    v20 = v61;
    v21 = v32;

    v22 = sub_482A4();
    v24 = v23;
    v25 = sub_482A4();
    *&v35 = v15;
    *(&v35 + 1) = __PAIR64__(v17, v16);
    *&v36 = v18;
    *(&v36 + 1) = v19;
    *&v37 = v20;
    *(&v37 + 1) = v21;
    LOWORD(v38) = 256;
    *(&v38 + 1) = v22;
    *&v39 = v24;
    *(&v39 + 1) = v25;
    v40 = v26;
    *&v55[38] = v37;
    *&v55[54] = v38;
    *&v55[70] = v39;
    *&v55[6] = v35;
    *&v55[86] = v26;
    *&v55[22] = v36;
    v41 = v15;
    v42 = v16;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = v20;
    v47 = v21;
    v48 = 256;
    v49 = v22;
    v50 = v24;
    v51 = v25;
    v52 = v26;
    sub_6128(&v35, &v62, &qword_62520, &qword_4B130);
    sub_60C8(&v41, &qword_62520, &qword_4B130);
    *v53 = v31;
    *&v53[8] = 256;
    *&v53[10] = *v55;
    *&v53[88] = *&v55[78];
    *&v53[26] = *&v55[16];
    *&v53[42] = *&v55[32];
    *&v53[58] = *&v55[48];
    *&v53[74] = *&v55[64];
    *&v53[104] = 256;
    *&v63[74] = *&v53[90];
    v62 = *v53;
    *v63 = *&v53[16];
    *&v63[48] = *&v53[64];
    *&v63[64] = *&v53[80];
    *&v63[16] = *&v53[32];
    *&v63[32] = *&v53[48];
    v54 = 1;
    v63[90] = 1;
    sub_6128(v53, v33, &qword_62528, &qword_4B138);
    sub_54A4(&qword_62530, &qword_4B140);
    sub_54A4(&qword_62528, &qword_4B138);
    sub_F1F8();
    sub_F27C();
    sub_47CC4();

    sub_60C8(v53, &qword_62528, &qword_4B138);
  }

  *&v63[64] = v34[0];
  *&v63[75] = *(v34 + 11);
  v62 = v33[0];
  *v63 = v33[1];
  *&v63[16] = v33[2];
  *&v63[32] = v33[3];
  v27 = *&v63[64];
  *(a1 + 64) = v33[4];
  *(a1 + 80) = v27;
  *(a1 + 91) = *&v63[75];
  v28 = *v63;
  *a1 = v62;
  *(a1 + 16) = v28;
  result = *&v63[32];
  *(a1 + 32) = *&v63[16];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_F1F8()
{
  result = qword_62538;
  if (!qword_62538)
  {
    sub_A36C(&qword_62530, &qword_4B140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62538);
  }

  return result;
}

unint64_t sub_F27C()
{
  result = qword_62540;
  if (!qword_62540)
  {
    sub_A36C(&qword_62528, &qword_4B138);
    sub_F334();
    sub_EAF0(&qword_62570, &qword_62578, &qword_4B158);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62540);
  }

  return result;
}

unint64_t sub_F334()
{
  result = qword_62548;
  if (!qword_62548)
  {
    sub_A36C(&qword_62550, &qword_4B148);
    sub_EAF0(&qword_62558, &qword_62560, &qword_4B150);
    sub_EAF0(&qword_62568, &qword_62520, &qword_4B130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62548);
  }

  return result;
}

unint64_t sub_F41C()
{
  result = qword_62580;
  if (!qword_62580)
  {
    sub_A36C(&qword_62588, &unk_4B160);
    sub_F1F8();
    sub_F27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62580);
  }

  return result;
}

uint64_t sub_F4A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

id sub_F554(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v19 = sub_47814();
    sub_5ED4(v19, qword_64360);
    v20 = sub_477F4();
    v21 = sub_48624();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Empty handle";
    goto LABEL_19;
  }

  v41[1] = a2;
  v42 = a1;
  v3 = sub_FB7C(a1);
  if (!v3)
  {
    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v24 = sub_47814();
    sub_5ED4(v24, qword_64360);
    v20 = sub_477F4();
    v21 = sub_48624();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No Contact found for handle";
LABEL_19:
    _os_log_impl(&dword_0, v20, v21, v23, v22, 2u);

LABEL_20:

    return 0;
  }

  v43 = v3;
  result = [objc_opt_self() componentsForContact:v3];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];

    v7 = sub_48414();
    v9 = v8;

    v44 = v7;
    v45 = v9;
    v10 = sub_47384();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10, v13);
    sub_47364();
    sub_10330();
    v14 = sub_48714();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {

      return v7;
    }

    v25 = objc_opt_self();
    v26 = v43;
    v27 = [v25 stringFromContact:v43 style:0];
    if (v27)
    {
      v28 = v27;
      v7 = sub_48414();
      v30 = v29;

      v44 = v7;
      v45 = v30;
      __chkstk_darwin(v31, v32);
      sub_47364();
      v33 = sub_48714();
      v35 = v34;
      v17(v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {

        return v7;
      }
    }

    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v37 = sub_47814();
    sub_5ED4(v37, qword_64360);
    v38 = sub_477F4();
    v39 = sub_48624();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "No name found in Contact", v40, 2u);
    }

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_FA3C(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  v17[0] = 0;
  v6 = [v5 meContactIdentifiers:v17];
  v7 = v17[0];
  if (v6)
  {
    v8 = v6;
    v9 = sub_48544();
    v10 = v7;

    v17[0] = a1;
    v17[1] = a2;
    __chkstk_darwin(v11, v12);
    v16[2] = v17;
    v13 = sub_F4A8(sub_10384, v16, v9);
  }

  else
  {
    v14 = v17[0];
    sub_474A4();

    swift_willThrow();

    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_FB7C(uint64_t a1)
{
  v2 = [objc_allocWithZone(CNContact) init];
  sub_10330();
  if (sub_48724())
  {
    result = sub_FDD0(a1);
    if (result >> 62)
    {
      v16 = result;
      v17 = sub_487E4();
      result = v16;
      if (!v17)
      {
        goto LABEL_24;
      }
    }

    else if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_24;
    }

    if ((result & 0xC000000000000001) != 0)
    {
LABEL_20:
      v4 = sub_487A4();
      goto LABEL_12;
    }

    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_11:
      v4 = *(result + 32);
LABEL_12:
      v5 = v4;

      v6 = [v5 givenName];
      v7 = sub_48414();
      v9 = v8;

      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        goto LABEL_18;
      }

      v11 = [v5 familyName];
      v12 = sub_48414();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
LABEL_18:

        return v5;
      }

      else
      {
      }

      return v2;
    }

    __break(1u);
  }

  result = sub_FF34();
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }

LABEL_24:

    return v2;
  }

  v18 = result;
  v19 = sub_487E4();
  result = v18;
  if (!v19)
  {
    goto LABEL_24;
  }

LABEL_9:
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_FDD0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = sub_483D4();
  v5 = [v3 predicateForContactsMatchingEmailAddress:v4];

  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  sub_54A4(&qword_62670, &unk_4B1B0);
  v8 = sub_48534();
  v14 = 0;
  v9 = [v7 unifiedContactsMatchingPredicate:v5 keysToFetch:v8 error:&v14];

  v10 = v14;
  if (v9)
  {
    sub_102E4();
    a1 = sub_48544();
    v11 = v10;
  }

  else
  {
    v12 = v14;
    sub_474A4();

    swift_willThrow();
  }

  return a1;
}

void *sub_FF34()
{
  v1 = objc_opt_self();
  v2 = objc_allocWithZone(CNPhoneNumber);
  v3 = sub_483D4();
  v4 = [v2 initWithStringValue:v3];

  v5 = [v1 predicateForContactsMatchingPhoneNumber:v4];
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);
  sub_54A4(&qword_62670, &unk_4B1B0);
  v8 = sub_48534();
  v14 = 0;
  v9 = [v7 unifiedContactsMatchingPredicate:v5 keysToFetch:v8 error:&v14];

  v10 = v14;
  if (v9)
  {
    sub_102E4();
    v7 = sub_48544();
    v11 = v10;
  }

  else
  {
    v12 = v14;
    sub_474A4();

    swift_willThrow();
  }

  return v7;
}

uint64_t sub_100C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10128()
{
  *(v0 + 16) = [objc_allocWithZone(CNContactStore) init];
  sub_54A4(&qword_635C0, &unk_4AA88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_4B170;
  *(v1 + 32) = CNContactEmailAddressesKey;
  *(v1 + 40) = CNContactPhoneNumbersKey;
  *(v1 + 48) = CNContactGivenNameKey;
  *(v1 + 56) = CNContactFamilyNameKey;
  *(v0 + 24) = v1;
  v2 = CNContactEmailAddressesKey;
  v3 = CNContactPhoneNumbersKey;
  v4 = CNContactGivenNameKey;
  v5 = CNContactFamilyNameKey;
  return v0;
}

uint64_t sub_101E4(void *a1)
{
  v2 = &selRef_senderAddress;
  v3 = [a1 senderAddress];
  v4 = sub_48414();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  v2 = &selRef_iMessageLoginID;
  v8 = [a1 iMessageLoginID];
  v9 = sub_48414();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    return 0;
  }

LABEL_7:
  v13 = [a1 *v2];
  v14 = sub_48414();

  return v14;
}

unint64_t sub_102E4()
{
  result = qword_62678;
  if (!qword_62678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_62678);
  }

  return result;
}

unint64_t sub_10330()
{
  result = qword_62680;
  if (!qword_62680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62680);
  }

  return result;
}

uint64_t sub_10384(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_48874() & 1;
  }
}

__n128 sub_103DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_103F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10438(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    sub_2201C(0, v3, 0);
    v5 = (a3 + 64);
    do
    {
      v6 = *(v5 - 3);
      v16 = *(v5 - 4);
      v7 = *v5;
      if (*(v5 - 1))
      {
        v15 = *(v5 - 2);
        v8 = *(v5 - 1);
      }

      else
      {
        v8 = a2;

        v15 = a1;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];

      if (v9 >= v10 >> 1)
      {
        sub_2201C((v10 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * v9];
      v11[4] = v16;
      v11[5] = v6;
      v11[6] = v15;
      v11[7] = v8;
      v11[8] = v7;
      *(v11 + 72) = 0;
      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_105C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_113D4(v5, v7) & 1;
}

uint64_t sub_1060C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_11318(&v5, &v7) & 1;
}

uint64_t sub_10658@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10664()
{
  v1 = 0x7461657263206F4ELL;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 64);
    v5 = &_swiftEmptyArrayStorage;
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v4 - 4);
      v8 = *(v4 - 3);
      v10 = *(v4 - 2);

      sub_48794(20);

      if (v7)
      {
        v1 = v10;
        v11 = v7;
      }

      else
      {
        v11 = 0xEA0000000000726FLL;
      }

      v29._countAndFlagsBits = v1;
      v29._object = v11;
      sub_48484(v29);

      v30._countAndFlagsBits = 2108704;
      v30._object = 0xE300000000000000;
      sub_48484(v30);
      v31._countAndFlagsBits = v9;
      v31._object = v8;
      sub_48484(v31);
      v32._countAndFlagsBits = 8250;
      v32._object = 0xE200000000000000;
      sub_48484(v32);
      v12 = [*(v6 + 16) string];
      v13 = sub_48414();
      v15 = v14;

      v33._countAndFlagsBits = v13;
      v33._object = v15;
      sub_48484(v33);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10C50(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      v1 = 0x7461657263206F4ELL;
      if (v17 >= v16 >> 1)
      {
        v5 = sub_10C50((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[16 * v17];
      *(v18 + 4) = 0x3A726F7461657243;
      *(v18 + 5) = 0xE900000000000020;
      v4 += 6;
      --v3;
    }

    while (v3);
  }

  sub_54A4(&qword_62690, &qword_4B280);
  sub_10D5C();
  v19 = sub_483A4();
  v21 = v20;

  sub_48794(32);

  if (v28[4])
  {
    v1 = v28[3];
    v22 = v28[4];
  }

  else
  {
    v22 = 0xEA0000000000726FLL;
  }

  v34._countAndFlagsBits = v1;
  v34._object = v22;
  sub_48484(v34);

  v35._countAndFlagsBits = 0x203A656C7469540ALL;
  v23 = 0xE800000000000000;
  v35._object = 0xE800000000000000;
  sub_48484(v35);
  v25 = *v28;
  v24 = v28[1];
  if (v24)
  {
    v26 = *v28;
  }

  else
  {
    v26 = 0x656C746974206F4ELL;
  }

  if (v24)
  {
    v23 = v28[1];
  }

  v36._countAndFlagsBits = v26;
  v36._object = v23;
  sub_48484(v36);

  v37._countAndFlagsBits = 0x736E6F6974704F0ALL;
  v37._object = 0xE90000000000003ALL;
  sub_48484(v37);
  v38._countAndFlagsBits = v19;
  v38._object = v21;
  sub_48484(v38);

  return 0x3A726F7461657243;
}

uint64_t sub_109E8()
{
  sub_48794(20);

  if (v0[1]._object)
  {
    countAndFlagsBits = v0[1]._countAndFlagsBits;
    object = v0[1]._object;
  }

  else
  {
    object = 0xEA0000000000726FLL;
    countAndFlagsBits = 0x7461657263206F4ELL;
  }

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  sub_48484(v8);

  v9._countAndFlagsBits = 2108704;
  v9._object = 0xE300000000000000;
  sub_48484(v9);
  sub_48484(*v0);
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  sub_48484(v10);
  v3 = [*(v0[2]._countAndFlagsBits + 16) string];
  v4 = sub_48414();
  v6 = v5;

  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_48484(v11);

  return 0x3A726F7461657243;
}

char *sub_10B44(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626A8, &unk_4B290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10C50(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626A0, &qword_4B288);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10D5C()
{
  result = qword_62698;
  if (!qword_62698)
  {
    sub_A36C(&qword_62690, &qword_4B280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62698);
  }

  return result;
}

size_t sub_10DFC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
LABEL_30:
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

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_54A4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626B8, &qword_4B2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_110F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626D8, &qword_4B370);
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

char *sub_111F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626D0, &qword_4B368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_11318(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_48874() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_48874() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
LABEL_17:
    v8 = 0;
    return v8 & 1;
  }

  if (![*(*(a1 + 32) + 16) isEqualToAttributedString:*(*(a2 + 32) + 16)])
  {
    goto LABEL_17;
  }

  v8 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v8 & 1;
}

uint64_t sub_113D4(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1;
    v7 = *a1 == *a2 && v4 == v5;
    if (!v7 && (sub_48874() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_83AC(a1[2], a2[2]))
  {
    v8 = a1[4];
    v9 = a2[4];
    if (v8)
    {
      if (v9 && (a1[3] == a2[3] && v8 == v9 || (sub_48874() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v9)
    {
      return 1;
    }
  }

  return 0;
}

__n128 sub_11484(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_11498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_114E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_11570()
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_64220 = result;
  return result;
}

uint64_t sub_115D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_54A4(&qword_63450, &unk_4C4C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_116A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_54A4(&qword_63450, &unk_4C4C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s11EmptyCircleVMa()
{
  result = qword_627D0;
  if (!qword_627D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_117A4()
{
  type metadata accessor for PollViewModel();
  if (v0 <= 0x3F)
  {
    sub_11864();
    if (v1 <= 0x3F)
    {
      sub_118BC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_11864()
{
  if (!qword_634E0)
  {
    sub_47884();
    v0 = sub_47894();
    if (!v1)
    {
      atomic_store(v0, &qword_634E0);
    }
  }
}

void sub_118BC()
{
  if (!qword_622A8)
  {
    v0 = sub_47894();
    if (!v1)
    {
      atomic_store(v0, &qword_622A8);
    }
  }
}

uint64_t sub_11928@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_54A4(&qword_62220, &qword_4ACA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3, v5);
  v7 = (&v37 - v6);
  v8 = *(v1 + 72);
  v9 = sub_11BF8();

  sub_478A4();
  v10 = v40;
  v11 = v41;
  v12 = v42;
  v13 = v43;
  v14 = v44;
  v15 = sub_482A4();
  v17 = v16;
  if (*(v1 + 89) == 1)
  {
    v37 = sub_48084();
    v18 = v9;
    v19 = v17;
    v20 = v15;
    v21 = v13;
    v22 = *(v3 + 36);
    v23 = enum case for BlendMode.destinationOut(_:);
    v24 = sub_48304();
    v25 = v7 + v22;
    v13 = v21;
    v15 = v20;
    v17 = v19;
    v9 = v18;
    (*(*(v24 - 8) + 104))(v25, v23, v24);
    *v7 = v37;
    sub_EAF0(&qword_62228, &qword_62220, &qword_4ACA0);
  }

  v26 = sub_47914();
  v27 = v8 * 0.5;
  v28 = sub_482A4();
  v30 = v29;
  v38 = 0;
  v31 = *(v1 + 8);
  sub_482A4();
  sub_47904();
  *&v39[6] = v45;
  *&v39[22] = v46;
  *&v39[38] = v47;
  v32 = sub_482A4();
  v33 = *(v1 + 80);
  *a1 = v27;
  *(a1 + 8) = v26;
  *(a1 + 16) = 256;
  *(a1 + 24) = v27;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  *(a1 + 64) = v14;
  *(a1 + 72) = v9;
  *(a1 + 80) = 256;
  *(a1 + 88) = v15;
  *(a1 + 96) = v17;
  *(a1 + 104) = v28;
  *(a1 + 112) = v30;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 128) = 0;
  *(a1 + 176) = *&v39[46];
  *(a1 + 184) = 0x4059000000000000;
  *(a1 + 162) = *&v39[32];
  v34 = *v39;
  *(a1 + 146) = *&v39[16];
  *(a1 + 130) = v34;
  *(a1 + 192) = v33;
  *(a1 + 200) = 256;
  *(a1 + 208) = v32;
  *(a1 + 216) = v35;
}

uint64_t sub_11BF8()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(_s11EmptyCircleVMa() + 40);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if ((v8 & 1) == 0)
    {
LABEL_3:
      if (qword_61D70 != -1)
      {
        swift_once();
      }

      v9 = &qword_64408;
      return *v9;
    }
  }

  else
  {

    sub_48634();
    v10 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_EB40(v8, 0);
    (*(v2 + 8))(v6, v1);
    if (v12[15] != 1)
    {
      goto LABEL_3;
    }
  }

  if (qword_61D78 != -1)
  {
    swift_once();
  }

  v9 = &qword_64410;
  return *v9;
}

unint64_t sub_11DD4()
{
  result = qword_62820;
  if (!qword_62820)
  {
    sub_A36C(&qword_62828, &qword_4B3E8);
    sub_11E8C();
    sub_EAF0(&qword_62880, &qword_62888, &qword_4B418);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62820);
  }

  return result;
}

unint64_t sub_11E8C()
{
  result = qword_62830;
  if (!qword_62830)
  {
    sub_A36C(&qword_62838, &qword_4B3F0);
    sub_11F44();
    sub_EAF0(&qword_62870, &qword_62878, &qword_4B410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62830);
  }

  return result;
}

unint64_t sub_11F44()
{
  result = qword_62840;
  if (!qword_62840)
  {
    sub_A36C(&qword_62848, &qword_4B3F8);
    sub_11FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62840);
  }

  return result;
}

unint64_t sub_11FD0()
{
  result = qword_62850;
  if (!qword_62850)
  {
    sub_A36C(&qword_62858, &qword_4B400);
    sub_EAF0(&qword_62860, &qword_62868, &qword_4B408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62850);
  }

  return result;
}

uint64_t sub_12088(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_120A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

double sub_120F4()
{
  xmmword_64228 = 0uLL;
  result = 5.0;
  xmmword_64238 = xmmword_4B420;
  xmmword_64248 = 0x4018000000000000uLL;
  qword_64258 = 0;
  unk_64260 = 0;
  return result;
}

double sub_1211C()
{
  sub_48074();
  v0 = sub_47914();
  v1 = sub_480C4();
  xmmword_64270 = xmmword_4B460;
  qword_64280 = 0;
  unk_64288 = v0;
  *&xmmword_64290 = v1;
  result = 0.0;
  *(&xmmword_64290 + 8) = xmmword_4B470;
  unk_642A8 = xmmword_4B470;
  return result;
}

__n128 sub_121A8(uint64_t a1, uint64_t a2)
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

uint64_t sub_121CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_12274(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_122A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_122E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v79 = a1;
  v77 = sub_47A84();
  v2 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77, v3);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_54A4(&qword_62890, &qword_4B5C8);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v71 - v13;
  v15 = sub_54A4(&qword_62898, &qword_4B5D0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v71 - v18;
  v81 = sub_54A4(&qword_628A0, &qword_4B5D8);
  v20 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81, v21);
  v82 = &v71 - v22;
  v76 = sub_54A4(&qword_628A8, &qword_4B5E0);
  v23 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76, v24);
  v26 = &v71 - v25;
  v72 = sub_54A4(&qword_628B0, &qword_4B5E8);
  v27 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72, v28);
  v74 = &v71 - v29;
  v73 = sub_54A4(&qword_628B8, &qword_4B5F0);
  v30 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73, v31);
  v33 = &v71 - v32;
  v80 = sub_54A4(&qword_628C0, &qword_4B5F8);
  v34 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80, v35);
  v75 = &v71 - v36;
  v37 = [objc_opt_self() currentDevice];
  v38 = [v37 userInterfaceIdiom];

  v78 = v15;
  if (v38 == &dword_4 + 2 && (*(v84 + 153) & 1) != 0)
  {
    v39 = *(v84 + 152);
    v40 = v84[18];
    v41 = sub_47E54();
    v42 = sub_54A4(&qword_628D0, &qword_4B608);
    v43 = *(*(v42 - 8) + 16);
    if (v39)
    {
      v43(v33, v79, v42);
      v44 = v74;
      v45 = &v33[*(v73 + 36)];
      *v45 = v40;
      v45[8] = v41;
      sub_6128(v33, v44, &qword_628B8, &qword_4B5F0);
      swift_storeEnumTagMultiPayload();
      sub_12EC0();
      sub_12FA4();

      v46 = v75;
      sub_47CC4();
      v47 = v33;
      v48 = &qword_628B8;
      v49 = &qword_4B5F0;
    }

    else
    {
      v43(v26, v79, v42);
      v64 = &v26[*(v73 + 36)];
      *v64 = v40;
      v64[8] = v41;
      v65 = *v84;
      v66 = &v26[*(v76 + 36)];
      v67 = *(v77 + 20);
      v68 = enum case for RoundedCornerStyle.continuous(_:);
      v69 = sub_47C24();
      (*(*(v69 - 8) + 104))(&v66[v67], v68, v69);
      *v66 = v65;
      *(v66 + 1) = v65;
      *&v66[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
      sub_6128(v26, v74, &qword_628A8, &qword_4B5E0);
      swift_storeEnumTagMultiPayload();
      sub_12EC0();
      sub_12FA4();

      v46 = v75;
      sub_47CC4();
      v47 = v26;
      v48 = &qword_628A8;
      v49 = &qword_4B5E0;
    }

    sub_60C8(v47, v48, v49);
    sub_6128(v46, v82, &qword_628C0, &qword_4B5F8);
    swift_storeEnumTagMultiPayload();
    sub_12E34();
    sub_1305C();
    sub_47CC4();
    v61 = v46;
    v62 = &qword_628C0;
    v63 = &qword_4B5F8;
  }

  else
  {
    v50 = sub_482A4();
    v52 = v51;
    v53 = 0;
    if ((v84[19] & 1) == 0)
    {
      v53 = *v84;
    }

    v54 = &v19[*(v15 + 36)];
    v55 = *(v77 + 20);
    v56 = enum case for RoundedCornerStyle.continuous(_:);
    v57 = sub_47C24();
    (*(*(v57 - 8) + 104))(&v5[v55], v56, v57);
    *v5 = v53;
    *(v5 + 1) = v53;
    v58 = v84[18];
    sub_12D60(v5, v11);
    *&v11[*(v6 + 52)] = v58;
    *&v11[*(v6 + 56)] = 256;
    sub_12DC4(v11, v14);
    sub_12DC4(v14, v54);
    v59 = (v54 + *(sub_54A4(&qword_628C8, &qword_4B600) + 36));
    *v59 = v50;
    v59[1] = v52;
    v60 = sub_54A4(&qword_628D0, &qword_4B608);
    (*(*(v60 - 8) + 16))(v19, v79, v60);
    sub_6128(v19, v82, &qword_62898, &qword_4B5D0);
    swift_storeEnumTagMultiPayload();
    sub_12E34();
    sub_1305C();

    sub_47CC4();
    v61 = v19;
    v62 = &qword_62898;
    v63 = &qword_4B5D0;
  }

  return sub_60C8(v61, v62, v63);
}

double sub_12B20()
{
  sub_12B74(&v1);
  xmmword_64318 = v7;
  xmmword_64328 = v8;
  xmmword_64338 = v9;
  xmmword_642D8 = v3;
  xmmword_642E8 = v4;
  xmmword_642F8 = v5;
  xmmword_64308 = v6;
  result = *&v2;
  xmmword_642B8 = v1;
  xmmword_642C8 = v2;
  return result;
}

double sub_12B74@<D0>(uint64_t a1@<X8>)
{
  if (qword_61D40 != -1)
  {
    swift_once();
  }

  v2 = qword_643D8;

  sub_48074();
  v3 = sub_47914();
  *a1 = xmmword_4B4C0;
  *(a1 + 16) = xmmword_4B4D0;
  __asm { FMOV            V0.2D, #12.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = xmmword_4B470;
  *(a1 + 64) = xmmword_4B470;
  *(a1 + 80) = xmmword_4B4E0;
  *(a1 + 96) = 0x4062C00000000000;
  *(a1 + 104) = v2;
  *(a1 + 112) = v3;
  result = 0.0;
  *(a1 + 120) = xmmword_4B4F0;
  *(a1 + 136) = 0x4034000000000000;
  return result;
}

__n128 sub_12C50(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_12C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 154))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_12D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_47A84();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62890, &qword_4B5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_12E34()
{
  result = qword_628D8;
  if (!qword_628D8)
  {
    sub_A36C(&qword_628C0, &qword_4B5F8);
    sub_12EC0();
    sub_12FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_628D8);
  }

  return result;
}

unint64_t sub_12EC0()
{
  result = qword_628E0;
  if (!qword_628E0)
  {
    sub_A36C(&qword_628B8, &qword_4B5F0);
    sub_EAF0(&qword_628E8, &qword_628D0, &qword_4B608);
    sub_EAF0(&qword_628F0, &qword_628F8, &qword_4B610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_628E0);
  }

  return result;
}

unint64_t sub_12FA4()
{
  result = qword_62900;
  if (!qword_62900)
  {
    sub_A36C(&qword_628A8, &qword_4B5E0);
    sub_12EC0();
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62900);
  }

  return result;
}

unint64_t sub_1305C()
{
  result = qword_62908;
  if (!qword_62908)
  {
    sub_A36C(&qword_62898, &qword_4B5D0);
    sub_EAF0(&qword_628E8, &qword_628D0, &qword_4B608);
    sub_EAF0(&qword_62910, &qword_628C8, &qword_4B600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62908);
  }

  return result;
}

unint64_t sub_13144()
{
  result = qword_62918;
  if (!qword_62918)
  {
    sub_A36C(&qword_62920, &qword_4B618);
    sub_12E34();
    sub_1305C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62918);
  }

  return result;
}

uint64_t sub_131E0(uint64_t *a1)
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

__n128 sub_13204(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_13218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_13260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_132BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_13378(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_133C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if (a2 != 1)
  {
    if (a1)
    {
      if (a2)
      {

        v4 = sub_480F4();
        sub_13444(a2);
        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_13444(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_13454@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_54A4(&qword_62308, &qword_4AD90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = (&v19 - v12);
  v14 = type metadata accessor for BlendedColor();
  sub_6128(v1 + *(v14 + 28), v13, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_47884();
    return (*(*(v15 - 8) + 32))(a1, v13, v15);
  }

  else
  {
    v17 = *v13;
    sub_48634();
    v18 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t BlendedColor.init(color:lightSchemeBlendMode:darkSchemeBlendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for BlendedColor();
  v9 = v8[7];
  *(a4 + v9) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  sub_E940(a2, a4 + v8[5], &qword_62928, &qword_4B780);
  return sub_E940(a3, a4 + v8[6], &qword_62928, &qword_4B780);
}

uint64_t type metadata accessor for BlendedColor()
{
  result = qword_62990;
  if (!qword_62990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlendedColor.init(color:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for BlendedColor();
  sub_6128(a2, a3 + v6[5], &qword_62928, &qword_4B780);
  v7 = v6[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  return sub_E940(a2, a3 + v6[6], &qword_62928, &qword_4B780);
}

uint64_t BlendedColor.resolve(in:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = sub_47884();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v33 - v11;
  v13 = sub_54A4(&qword_62928, &qword_4B780);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v33 - v16;
  v18 = sub_48304();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v23 = &v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  sub_47AA4();
  (*(v4 + 32))(v9, v12, v3);
  v24 = (*(v4 + 88))(v9, v3);
  if (v24 == enum case for ColorScheme.light(_:))
  {
    v25 = *(type metadata accessor for BlendedColor() + 20);
LABEL_5:
    sub_6128(v2 + v25, v17, &qword_62928, &qword_4B780);
    goto LABEL_7;
  }

  v26 = v24;
  v27 = enum case for ColorScheme.dark(_:);
  v28 = type metadata accessor for BlendedColor();
  if (v26 == v27)
  {
    v25 = *(v28 + 24);
    goto LABEL_5;
  }

  sub_6128(v2 + *(v28 + 20), v17, &qword_62928, &qword_4B780);
  (*(v4 + 8))(v9, v3);
LABEL_7:
  v29 = *(v19 + 48);
  if (v29(v17, 1, v18) == 1)
  {
    (*(v19 + 104))(v23, enum case for BlendMode.normal(_:), v18);
    if (v29(v17, 1, v18) != 1)
    {
      sub_60C8(v17, &qword_62928, &qword_4B780);
    }
  }

  else
  {
    (*(v19 + 32))(v23, v17, v18);
  }

  v30 = sub_54A4(&qword_62220, &qword_4ACA0);
  v31 = v34;
  (*(v19 + 32))(v34 + *(v30 + 36), v23, v18);
  *v31 = v33;
}

uint64_t BlendedColor.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47884();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = __chkstk_darwin(v3, v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v35 - v11;
  v13 = sub_54A4(&qword_62928, &qword_4B780);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v35 - v16;
  v18 = sub_48304();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18, v21);
  v38 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_54A4(&qword_62930, &qword_4B788);
  v23 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36, v24);
  v26 = &v35 - v25;
  v37 = *v1;
  sub_13454(v12);
  (*(v4 + 32))(v9, v12, v3);
  v27 = (*(v4 + 88))(v9, v3);
  if (v27 == enum case for ColorScheme.light(_:))
  {
    v28 = type metadata accessor for BlendedColor();
    sub_6128(v1 + *(v28 + 20), v17, &qword_62928, &qword_4B780);
  }

  else
  {
    v29 = v27;
    v35 = a1;
    v30 = enum case for ColorScheme.dark(_:);
    v31 = type metadata accessor for BlendedColor();
    if (v29 == v30)
    {
      sub_6128(v1 + *(v31 + 24), v17, &qword_62928, &qword_4B780);
    }

    else
    {
      sub_6128(v1 + *(v31 + 20), v17, &qword_62928, &qword_4B780);
      (*(v4 + 8))(v9, v3);
    }

    a1 = v35;
  }

  v32 = v38;
  v33 = *(v19 + 48);
  if (v33(v17, 1, v18) == 1)
  {
    (*(v19 + 104))(v32, enum case for BlendMode.normal(_:), v18);
    if (v33(v17, 1, v18) != 1)
    {
      sub_60C8(v17, &qword_62928, &qword_4B780);
    }
  }

  else
  {
    (*(v19 + 32))(v32, v17, v18);
  }

  (*(v19 + 32))(&v26[*(v36 + 36)], v32, v18);
  *v26 = v37;
  sub_E940(v26, a1, &qword_62930, &qword_4B788);
}

uint64_t sub_1403C(uint64_t a1)
{
  v2 = sub_47884();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_47AB4();
}

uint64_t _s13MessagesPolls12BlendedColorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = sub_48304();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_54A4(&qword_62928, &qword_4B780);
  v11 = *(*(v10 - 8) + 64);
  v13 = __chkstk_darwin(v10 - 8, v12);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v16);
  v18 = &v49[-v17];
  v19 = sub_54A4(&qword_629E0, &qword_4B878);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v49[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22, v25);
  v27 = &v49[-v26];
  v28 = *a1;
  v29 = *a2;
  if ((sub_48054() & 1) == 0)
  {
    goto LABEL_16;
  }

  v51 = v15;
  v52 = v9;
  v55 = v24;
  v30 = type metadata accessor for BlendedColor();
  v56 = v5;
  v53 = v30;
  v31 = *(v30 + 20);
  v32 = *(v19 + 48);
  sub_6128(a1 + v31, v27, &qword_62928, &qword_4B780);
  v54 = a2;
  v33 = a2 + v31;
  v34 = v56;
  sub_6128(v33, &v27[v32], &qword_62928, &qword_4B780);
  v35 = *(v34 + 48);
  if (v35(v27, 1, v4) == 1)
  {
    if (v35(&v27[v32], 1, v4) == 1)
    {
      sub_60C8(v27, &qword_62928, &qword_4B780);
      goto LABEL_9;
    }

LABEL_7:
    v36 = v27;
LABEL_15:
    sub_60C8(v36, &qword_629E0, &qword_4B878);
    goto LABEL_16;
  }

  sub_6128(v27, v18, &qword_62928, &qword_4B780);
  if (v35(&v27[v32], 1, v4) == 1)
  {
    (*(v34 + 8))(v18, v4);
    goto LABEL_7;
  }

  v37 = v52;
  (*(v34 + 32))(v52, &v27[v32], v4);
  sub_14AF8();
  v50 = sub_483C4();
  v38 = *(v34 + 8);
  v38(v37, v4);
  v38(v18, v4);
  sub_60C8(v27, &qword_62928, &qword_4B780);
  if ((v50 & 1) == 0)
  {
LABEL_16:
    v43 = 0;
    return v43 & 1;
  }

LABEL_9:
  v39 = *(v53 + 24);
  v40 = *(v19 + 48);
  v41 = a1 + v39;
  v42 = v55;
  sub_6128(v41, v55, &qword_62928, &qword_4B780);
  sub_6128(v54 + v39, v42 + v40, &qword_62928, &qword_4B780);
  if (v35(v42, 1, v4) != 1)
  {
    v44 = v51;
    sub_6128(v42, v51, &qword_62928, &qword_4B780);
    if (v35((v42 + v40), 1, v4) != 1)
    {
      v46 = v56;
      v47 = v52;
      (*(v56 + 32))(v52, v42 + v40, v4);
      sub_14AF8();
      v43 = sub_483C4();
      v48 = *(v46 + 8);
      v48(v47, v4);
      v48(v44, v4);
      sub_60C8(v42, &qword_62928, &qword_4B780);
      return v43 & 1;
    }

    (*(v56 + 8))(v44, v4);
    goto LABEL_14;
  }

  if (v35((v42 + v40), 1, v4) != 1)
  {
LABEL_14:
    v36 = v42;
    goto LABEL_15;
  }

  sub_60C8(v42, &qword_62928, &qword_4B780);
  v43 = 1;
  return v43 & 1;
}

uint64_t sub_14688(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_54A4(&qword_62928, &qword_4B780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_147D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_54A4(&qword_62928, &qword_4B780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_14914()
{
  sub_14A08(319, &unk_629A0, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_14A08(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_14A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_14A74()
{
  result = qword_629D8;
  if (!qword_629D8)
  {
    sub_A36C(&qword_62930, &qword_4B788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_629D8);
  }

  return result;
}

unint64_t sub_14AF8()
{
  result = qword_629E8[0];
  if (!qword_629E8[0])
  {
    sub_48304();
    result = swift_getWitnessTable();
    atomic_store(result, qword_629E8);
  }

  return result;
}

uint64_t sub_14B50()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_14B98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_14BE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_14C8C(double *a1, double (*a2)(void))
{
  v3 = *a1;
  v4 = a2();
  if (v3 > v4)
  {
    v4 = v3;
  }

  *a1 = v4;
}

void sub_14CD0(uint64_t a1@<X0>, double *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = sub_14C84();
}

void sub_14D00(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 16);
  v4 = *(a4 + 24);
  sub_14C8C(a1, sub_15BB0);
}

uint64_t sub_14D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v66 = a3;
  v5 = *(a1 + 16);
  v63 = *(v5 - 8);
  v6 = *(v63 + 64);
  __chkstk_darwin(a1, a2);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_47A54();
  v65 = *(v48 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v48, v10);
  v54 = v46 - v11;
  v12 = *(a1 + 24);
  v13 = type metadata accessor for HorizontalGeometryReader.WidthKey();
  WitnessTable = swift_getWitnessTable();
  v55 = v13;
  v57 = WitnessTable;
  sub_47D94();
  sub_47A54();
  v15 = swift_getWitnessTable();
  v77 = &protocol witness table for Color;
  v78 = v15;
  v51 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v49 = sub_479B4();
  v50 = swift_getWitnessTable();
  v58 = sub_47CB4();
  v53 = sub_47A54();
  v64 = *(v53 - 8);
  v16 = *(v64 + 64);
  __chkstk_darwin(v53, v17);
  v47 = v46 - v18;
  v56 = sub_157EC();
  v61 = sub_47D54();
  v60 = sub_47A54();
  v62 = *(v60 - 8);
  v19 = *(v62 + 64);
  v21 = __chkstk_darwin(v60, v20);
  v52 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v59 = v46 - v24;
  v25 = v3[1];
  v46[1] = v3[2];
  v79 = *(v3 + 3);
  v76 = *(v3 + 3);
  sub_54A4(qword_62A78, &qword_4B948);
  v26 = sub_48124();
  v25(v26, v75);
  v27 = v12;
  v45 = *v3;
  sub_47C14();
  v28 = v54;
  sub_48034();
  (*(v63 + 8))(v8, v5);
  v67 = v5;
  v68 = v27;
  sub_482A4();
  v73 = v27;
  v74 = &protocol witness table for _FlexFrameLayout;
  v29 = v48;
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_47F54();
  (*(v65 + 8))(v28, v29);
  v32 = swift_allocObject();
  *(v32 + 16) = v5;
  *(v32 + 24) = v27;
  v33 = *(v3 + 1);
  *(v32 + 32) = *v3;
  *(v32 + 48) = v33;
  *(v32 + 64) = v3[4];

  sub_158E0(&v79, &v76);
  v34 = swift_getWitnessTable();
  v71 = v30;
  v72 = v34;
  v35 = v53;
  v36 = swift_getWitnessTable();
  v37 = v52;
  sub_47FD4();

  (*(v64 + 8))(v31, v35);
  v38 = swift_getWitnessTable();
  v69 = v36;
  v70 = v38;
  v39 = v60;
  swift_getWitnessTable();
  v40 = v62;
  v41 = *(v62 + 16);
  v42 = v59;
  v41(v59, v37, v39);
  v43 = *(v40 + 8);
  v43(v37, v39);
  v41(v66, v42, v39);
  return (v43)(v42, v39);
}

uint64_t sub_15454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for HorizontalGeometryReader.WidthKey();
  swift_getWitnessTable();
  sub_47D94();
  sub_47A54();
  v13 = &protocol witness table for Color;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v11 = sub_479A4();
  v12 = v7;
  v8 = sub_479B4();
  swift_getWitnessTable();
  v9 = *(*(v8 - 8) + 16);
  v9(v15, &v11, v8);

  v11 = v15[0];
  v12 = v15[1];
  v9(a3, &v11, v8);
}

uint64_t sub_15618@<X0>(void *a1@<X8>)
{
  v8[0] = sub_48074();
  type metadata accessor for HorizontalGeometryReader.WidthKey();
  sub_47964();
  swift_getWitnessTable();
  sub_47F64();

  v5[0] = v6;
  v5[1] = v7;
  sub_47D94();
  v2 = sub_47A54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v3 = *(*(v2 - 8) + 16);
  v3(v8, v5, v2);

  v6 = v8[0];
  v7 = v8[1];
  v3(a1, &v6, v2);
}

unint64_t sub_157EC()
{
  result = qword_62A70;
  if (!qword_62A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62A70);
  }

  return result;
}

uint64_t sub_15848()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_15888(uint64_t *a1)
{
  v4 = *(v1 + 56);
  v3 = *a1;
  sub_54A4(qword_62A78, &qword_4B948);
  return sub_48134();
}

uint64_t sub_158E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(qword_62A78, &qword_4B948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_15960@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_15618(a1);
}

uint64_t sub_159A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_47A54();
  type metadata accessor for HorizontalGeometryReader.WidthKey();
  swift_getWitnessTable();
  sub_47D94();
  sub_47A54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_479B4();
  swift_getWitnessTable();
  sub_47CB4();
  sub_47A54();
  sub_157EC();
  sub_47D54();
  sub_47A54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double sub_15BB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t sub_15BE8(char a1, char a2)
{
  if (qword_4BCE8[a1] == qword_4BCE8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_48874();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

void sub_15C50()
{
  v1 = v0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for MessagesViewController();
  objc_msgSendSuper2(&v21, "viewDidLoad");
  v2 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  if (!*&v0[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel])
  {
    v3 = type metadata accessor for PollNetworking();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v6 = swift_allocObject();
    sub_476F4();
    sub_1C308(&qword_62B88, &type metadata accessor for PollDefinition);
    sub_1C308(&qword_62B90, &type metadata accessor for PollDefinition);
    sub_47724();
    sub_476A4();
    sub_1C308(&qword_62B98, &type metadata accessor for PollResponse);
    sub_1C308(&qword_62BA0, &type metadata accessor for PollResponse);
    sub_47724();
    *(v6 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = 0;
    v7 = *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking];
    *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = v6;

    [v1 backgroundLuminance];
    v9 = v8;
    v10 = type metadata accessor for PollViewModel();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = v1;
    v14 = sub_22B54(v9, v1, &off_5EB48);

    v15 = *&v1[v2];
    *&v1[v2] = v14;

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v17);
    sub_1B304();
    sub_475B4();
  }

  v18 = [v1 view];
  if (v18)
  {
    v19 = v18;
    v20 = [objc_opt_self() clearColor];
    [v19 setBackgroundColor:v20];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_15F90(char a1)
{
  v2 = v1;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for MessagesViewController();
  result = objc_msgSendSuper2(&v10, "viewDidAppear:", a1 & 1);
  v5 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v6 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (v6)
  {
    if (*(v6 + 96) == 1)
    {
      *(v6 + 96) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v8);
      sub_1B304();

      sub_475B4();
    }

    if (*&v2[v5])
    {
      v9 = *&v2[v5];

      sub_1DCA8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1613C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost] = 0;
  v6 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentView;
  v7 = type metadata accessor for ContentView();
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel] = 0;
  *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = 0;
  if (a2)
  {
    v8 = sub_483D4();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for MessagesViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_162A0(void *a1)
{
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost] = 0;
  v3 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentView;
  v4 = type metadata accessor for ContentView();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel] = 0;
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MessagesViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_16460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesViewController()
{
  result = qword_62B30;
  if (!qword_62B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_16568()
{
  sub_16608();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_16608()
{
  if (!qword_62B40)
  {
    type metadata accessor for ContentView();
    v0 = sub_486E4();
    if (!v1)
    {
      atomic_store(v0, &qword_62B40);
    }
  }
}

void sub_16660(uint64_t a1)
{
  v2 = v1;
  v4 = sub_54A4(&qword_62B80, &qword_4BC40);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v103 - v7;
  v9 = *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost];
  if (v9)
  {
    v10 = v9;
    v11 = [v10 view];
    if (!v11)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v12 = v11;
    [v11 removeFromSuperview];

    [v10 removeFromParentViewController];
  }

  v13 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v14 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  v108 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v106 = v8;
  v107 = a1;
  if (!v14)
  {
    v15 = type metadata accessor for PollNetworking();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    sub_476F4();
    sub_1C308(&qword_62B88, &type metadata accessor for PollDefinition);
    sub_1C308(&qword_62B90, &type metadata accessor for PollDefinition);
    sub_47724();
    sub_476A4();
    sub_1C308(&qword_62B98, &type metadata accessor for PollResponse);
    sub_1C308(&qword_62BA0, &type metadata accessor for PollResponse);
    sub_47724();
    *(v18 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = 0;
    v19 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking];
    *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = v18;

    [v2 backgroundLuminance];
    v21 = v20;
    v22 = type metadata accessor for PollViewModel();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v25 = v2;
    v26 = sub_22B54(v21, v2, &off_5EB48);

    v27 = *&v2[v108];
    *&v2[v108] = v26;

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v29);
    *(&v103 - 4) = v26;
    *(&v103 - 3) = v2;
    *(&v103 - 2) = &off_5EB28;
    *&v113 = v26;
    sub_1B304();
    sub_475B4();

    v13 = v108;
    v14 = *&v2[v108];
    if (!v14)
    {
      goto LABEL_55;
    }
  }

  if ([v2 presentationStyle] == &dword_4)
  {
    v30 = 1;
    if ((*(v14 + 98) & 1) == 0)
    {
LABEL_8:
      v31 = swift_getKeyPath();
      __chkstk_darwin(v31, v32);
      *(&v103 - 2) = v14;
      *(&v103 - 8) = v30;
      *&v113 = v14;
      sub_1B304();
      sub_475B4();

      v13 = v108;
      goto LABEL_11;
    }
  }

  else
  {
    v33 = [v2 performSendAnimationOnAppear];
    v30 = v33;
    if (v33 != *(v14 + 98))
    {
      goto LABEL_8;
    }
  }

  *(v14 + 98) = v30;
  sub_1D84C();

LABEL_11:
  v34 = *&v2[v13];
  if (!v34)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v35 = *&v2[v13];

  v36 = [v2 performSendAnimationOnAppear];
  v37 = v36;
  if (v36 == *(v34 + 97))
  {
    *(v34 + 97) = v36;
  }

  else
  {
    v38 = swift_getKeyPath();
    __chkstk_darwin(v38, v39);
    *(&v103 - 2) = v34;
    *(&v103 - 8) = v37;
    *&v113 = v34;
    sub_1B304();
    sub_475B4();

    v13 = v108;
  }

  v40 = *&v2[v13];
  if (!v40)
  {
    goto LABEL_50;
  }

  swift_getKeyPath();
  *&v113 = v40;
  sub_1B304();

  sub_475C4();

  v41 = *(v40 + 98);

  if (v41 == 1)
  {
    v42 = *&v2[v13];
    if (!v42)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    swift_getKeyPath();
    *&v113 = v42;

    sub_475C4();

    v43 = *(v42 + 97);

    if ((v43 & 1) == 0)
    {
      v44 = *&v2[v13];
      if (!v44)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      swift_getKeyPath();
      *&v113 = v44;

      sub_475C4();

      swift_beginAccess();
      v45 = *(v44 + 200);
      v46 = *(v45 + 16);

      v47 = 0;
      v48 = -1;
      v49 = 64;
      while (1)
      {
        if (v48 - v46 == -1)
        {
          goto LABEL_26;
        }

        if (++v48 >= *(v45 + 16))
        {
          break;
        }

        v50 = v49 + 64;
        v51 = [*(*(v45 + v49) + 16) length] != 0;
        v49 = v50;
        v52 = __OFADD__(v47, v51);
        v47 += v51;
        if (v52)
        {
          __break(1u);
LABEL_26:

          [v2 _setSendingEnabled:v47 > 1];
          v13 = v108;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_49;
    }
  }

LABEL_27:
  v53 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking;
  v54 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking];
  if (!v54)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v55 = *(v54 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
  v56 = v107;
  *(v54 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = v107;
  v57 = v56;

  v58 = *&v2[v13];
  if (!v58)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  swift_getKeyPath();
  *&v113 = v58;
  swift_retain_n();
  sub_475C4();

  v59 = *(v58 + 112);

  v60 = sub_101E4(v57);
  v62 = v61;

  sub_1D3BC(v60, v62);

  v63 = [v2 presentationStyle];
  v64 = [v57 selectedMessage];
  if (v64)
  {
    v65 = v64;
    if (v63 == &dword_4)
    {
      if (!*&v2[v53])
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v66 = *&v2[v53];

      v67 = sub_3F144(v65);

      if (!v67)
      {
        v100 = *&v2[v108];
        if (!v100)
        {
LABEL_60:
          __break(1u);
          return;
        }

        swift_getKeyPath();
        *&v113 = v100;
        swift_retain_n();
        sub_475C4();

        v102 = *(v100 + 80);
        v101 = *(v100 + 88);

        v113 = xmmword_4B9C0;
        *&v114 = _swiftEmptyArrayStorage;
        *(&v114 + 1) = v102;
        v115 = v101;
        sub_1CCAC(&v113);

        sub_17394();
        goto LABEL_44;
      }
    }
  }

  v68 = [v57 selectedMessage];
  if (v68)
  {
    v65 = v68;
    if (v63 == &dword_4)
    {
      if (!*&v2[v53])
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v69 = *&v2[v53];

      v70 = sub_3F144(v65);

      if (v70 > 0)
      {
        v107 = v70;
        v71 = *&v2[v108];
        if (!v71)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        swift_getKeyPath();
        *&v113 = v71;
        swift_retain_n();
        sub_475C4();

        v72 = *(v71 + 88);
        v108 = *(v71 + 80);
        v105 = v72;

        type metadata accessor for PollOptionText();
        v104 = swift_allocObject();
        *(v104 + 16) = [objc_allocWithZone(NSAttributedString) init];
        v73 = sub_47594();
        *&v103 = &v103;
        v74 = *(v73 - 8);
        v75 = *(v74 + 64);
        __chkstk_darwin(v73, v76);
        v78 = &v103 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_47584();
        v79 = sub_47574();
        v81 = v80;
        (*(v74 + 8))(v78, v73);
        *&v113 = v79;
        *(&v113 + 1) = v81;
        v103 = xmmword_4B9C0;
        v114 = xmmword_4B9C0;
        v115 = v104;
        v116 = 0;
        v82 = sub_17AAC(&v113, v107);
        v109 = v103;
        v110 = v82;
        v111 = v108;
        v112 = v105;
        sub_1CCAC(&v109);

        sub_17394();
        v83 = [v57 selectedMessage];
        if (v83)
        {
          v84 = v83;
          v85 = v83;
          sub_17BDC(v84, v57);

          v86 = v106;
          sub_485C4();
          v87 = sub_485E4();
          (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
          sub_485B4();
          v88 = v2;
          v89 = v57;
          v90 = sub_485A4();
          v91 = swift_allocObject();
          v91[2] = v90;
          v91[3] = &protocol witness table for MainActor;
          v91[4] = v88;
          v91[5] = v89;
          sub_39454(0, 0, v86, &unk_4BC88, v91);
        }

        goto LABEL_44;
      }
    }
  }

  sub_17394();
  v92 = [v57 selectedMessage];
  if (!v92)
  {
    return;
  }

  v93 = v92;
  v65 = v92;
  sub_17BDC(v93, v57);

  v94 = v106;
  sub_485C4();
  v95 = sub_485E4();
  (*(*(v95 - 8) + 56))(v94, 0, 1, v95);
  sub_485B4();
  v96 = v2;
  v97 = v57;
  v98 = sub_485A4();
  v99 = swift_allocObject();
  v99[2] = v98;
  v99[3] = &protocol witness table for MainActor;
  v99[4] = v96;
  v99[5] = v97;
  sub_39454(0, 0, v94, &unk_4BC78, v99);

LABEL_44:
}

void sub_17394()
{
  v1 = v0;
  v2 = sub_54A4(&qword_62BB8, &qword_4BCA8);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v76 - v9;
  v11 = *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  KeyPath = swift_getKeyPath();
  v13 = type metadata accessor for ContentView();
  *&v10[*(v13 + 28)] = KeyPath;
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v10 = v11;
  v14 = qword_61CD8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = xmmword_64238;
  *(v10 + 8) = xmmword_64228;
  *(v10 + 24) = v15;
  v16 = *&qword_64258;
  *(v10 + 40) = xmmword_64248;
  *(v10 + 56) = v16;
  *(v10 + 9) = 0;
  v10[80] = 1;
  v17 = *(v13 - 8);
  (*(v17 + 56))(v10, 0, 1, v13);
  v18 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentView;
  swift_beginAccess();
  sub_1C700(v10, &v1[v18]);
  swift_endAccess();
  sub_6128(&v1[v18], v7, &qword_62BB8, &qword_4BCA8);
  if ((*(v17 + 48))(v7, 1, v13) == 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v19 = objc_allocWithZone(sub_54A4(&qword_62BC0, &qword_4BCB0));
  v20 = sub_47CA4();
  v21 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost;
  v22 = *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost];
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost] = v20;
  v23 = v20;

  [v1 addChildViewController:v23];
  v24 = [v1 view];
  if (!v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = v24;
  v26 = *&v1[v21];
  if (!v26)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v27 = [v26 view];
  if (!v27)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v28 = v27;
  [v25 addSubview:v27];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = v29;
  [v29 setBackgroundColor:0];

  v31 = *&v1[v21];
  if (!v31)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v32 = [v31 view];
  if (!v32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v32;
  [v32 setBackgroundColor:0];

  v34 = *&v1[v21];
  if (!v34)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v35 = [v34 view];
  if (!v35)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v36 = v35;
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v37 = *&v1[v21];
  if (!v37)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v38 = [v37 view];
  if (!v38)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v39 = v38;
  v40 = [v38 topAnchor];

  v41 = [v1 view];
  if (!v41)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v42 = v41;
  v43 = [v41 topAnchor];

  v44 = [v40 constraintEqualToAnchor:v43];
  [v44 setActive:1];

  v45 = *&v1[v21];
  if (!v45)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v46 = [v45 view];
  if (!v46)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v47 = v46;
  v48 = [v46 bottomAnchor];

  v49 = [v1 view];
  if (!v49)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v50 = v49;
  v51 = [v49 bottomAnchor];

  v52 = [v48 constraintEqualToAnchor:v51];
  [v52 setActive:1];

  v53 = *&v1[v21];
  if (!v53)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v54 = [v53 view];
  if (!v54)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v55 = v54;
  v56 = [v54 leadingAnchor];

  v57 = [v1 view];
  if (!v57)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v58 = v57;
  v59 = [v57 leadingAnchor];

  v60 = [v56 constraintEqualToAnchor:v59];
  [v60 setActive:1];

  v61 = *&v1[v21];
  if (!v61)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v62 = [v61 view];
  if (!v62)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v63 = v62;
  v64 = [v62 trailingAnchor];

  v65 = [v1 view];
  if (!v65)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v66 = v65;
  v67 = [v65 trailingAnchor];

  v68 = [v64 constraintEqualToAnchor:v67];
  [v68 setActive:1];

  v69 = *&v1[v21];
  if (!v69)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v69 didMoveToParentViewController:v1];
  v70 = *&v1[v21];
  if (!v70)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v71 = [v70 view];
  if (!v71)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v72 = v71;
  [v71 setContentMode:5];

  v73 = *&v1[v21];
  if (!v73)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v74 = [v73 view];
  if (v74)
  {
    v75 = v74;
    [v74 layoutIfNeeded];

    return;
  }

LABEL_55:
  __break(1u);
}