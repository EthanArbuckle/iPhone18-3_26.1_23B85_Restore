uint64_t sub_100065D9C(uint64_t a1)
{
  v3 = sub_1001018C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v4 + 16))(v6, a1, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (v7 == enum case for UITextFormattingViewController.ChangeValue.bold(_:) || v7 == enum case for UITextFormattingViewController.ChangeValue.italic(_:) || v7 == enum case for UITextFormattingViewController.ChangeValue.underline(_:) || v7 == enum case for UITextFormattingViewController.ChangeValue.strikethrough(_:))
  {
    sub_1000611DC();
    return 1;
  }

  if (v7 == enum case for UITextFormattingViewController.ChangeValue.textColor(_:))
  {
    v13 = v1;
    (*(v4 + 96))(v6, v3);
    v14 = *v6;
    if (!sub_10007D448() && !sub_10007D4E4())
    {
      v42 = &v1[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor];
      v43 = *&v1[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor];
      if (v43)
      {
        v11 = 1;
        goto LABEL_39;
      }

      v51 = v14;
      v11 = 1;
      v50 = v14;
LABEL_47:
      *v42 = v50;
      goto LABEL_48;
    }

    v15 = [v1 selectedRange];
    [v1 selectedRange];
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      __break(1u);
    }

    else
    {
      v18 = [v1 textStorage];
      v19 = [v18 length];

      if (v19 >= v17)
      {
        [v1 selectedRange];
        if (v20 >= 1)
        {
          v21 = [v1 textStorage];
          v22 = [v21 attributesAtIndex:objc_msgSend(v1 effectiveRange:{"selectedRange"), 0}];

          type metadata accessor for Key(0);
          sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
          v23 = sub_100100E64();

          if (qword_10014B708 != -1)
          {
            swift_once();
          }

          v24 = qword_100158678;
          v56 = sub_100010F50(0, &qword_10014C7D0);
          *&v55 = v24;
          sub_10002FC28(&v55, v53);
          v25 = v24;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v54 = v23;
          sub_1000FB8AC(v53, NSForegroundColorAttributeName, isUniquelyReferenced_nonNull_native);
          v27 = v13;
          v28 = [v13 textStorage];
          v29.super.isa = sub_100100E44().super.isa;

          v30 = [v13 selectedRange];
          [v28 setAttributes:v29.super.isa range:{v30, v31}];

          goto LABEL_38;
        }
      }

      v15 = NSForegroundColorAttributeName;
      if (qword_10014B708 == -1)
      {
LABEL_27:
        v34 = qword_100158678;
        v56 = sub_100010F50(0, &qword_10014C7D0);
        *&v55 = v34;
        v35 = v34;
        v36 = [v1 typingAttributes];
        type metadata accessor for Key(0);
        sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
        v37 = sub_100100E64();

        v54 = v37;
        if (v56)
        {
          sub_10002FC28(&v55, v53);
          v38 = swift_isUniquelyReferenced_nonNull_native();
          v52 = v37;
          sub_1000FB8AC(v53, v15, v38);
          v54 = v52;
        }

        else
        {
          sub_10000FFB4(&v55, &qword_10014CA68);
          sub_1000C4910(v53);
          sub_10000FFB4(v53, &qword_10014CA68);
        }

        v29.super.isa = sub_100100E44().super.isa;

        v27 = v13;
        [v13 setTypingAttributes:v29.super.isa];
LABEL_38:

        v44 = *&v27[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor];
        *&v27[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor] = 0;

        v11 = 0;
        v42 = &v27[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor];
        v43 = *&v27[OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor];
        if (v43)
        {
LABEL_39:
          sub_100010F50(0, &qword_10014C7D0);
          v45 = v14;
          v46 = v43;
          v47 = sub_100101A34();

          v48 = v14;
          if ((v11 & 1) == 0)
          {

            v48 = 0;
          }

          v49 = *v42;
          *v42 = v48;

          if (v47)
          {

            return v11;
          }

LABEL_48:
          sub_1000611DC();

          return v11;
        }

        v50 = 0;
        goto LABEL_47;
      }
    }

    swift_once();
    goto LABEL_27;
  }

  if (v7 == enum case for UITextFormattingViewController.ChangeValue.textList(_:))
  {
    (*(v4 + 8))(v6, v3);
    sub_1000611DC();
    v32 = [v1 selectedRange];
    sub_100063630(v32, v33);
    return 1;
  }

  if (v7 != enum case for UITextFormattingViewController.ChangeValue.toggleBlockquote(_:))
  {
    (*(v4 + 8))(v6, v3);
    return 1;
  }

  (*(v4 + 96))(v6, v3);
  v39 = *v6;
  v40 = [v1 selectedRange];
  if (v39 == 1)
  {
    sub_100064694(v40, v41);
  }

  else
  {
    sub_100064FAC(v40, v41);
  }

  return 0;
}

id sub_1000665CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_1001018A4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v27 - v8;
  [v2 selectedRange];
  if (!v10)
  {
    goto LABEL_5;
  }

  v11 = [v2 selectedRange];
  [v2 selectedRange];
  v13 = &v11[v12];
  if (__OFADD__(v11, v12))
  {
    __break(1u);
  }

  result = [v2 attributedText];
  if (result)
  {
    v15 = result;
    v16 = [result length];

    if (v16 < v13)
    {
LABEL_5:
      v17 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
      sub_100100E64();

      sub_100101854();
      sub_1000644E4();
      sub_100101864();
      v18 = [v2 typingAttributes];
      v19 = sub_100100E64();

      if (*(v19 + 16) && (v20 = sub_10004DCEC(NSStrikethroughStyleAttributeName), (v21 & 1) != 0))
      {
        sub_100010FA8(*(v19 + 56) + 32 * v20, v29);
      }

      else
      {

        memset(v29, 0, sizeof(v29));
      }

      sub_10000FFB4(v29, &qword_10014CA68);
      sub_100101884();
      return (*(v4 + 32))(v28, v9, v3);
    }

    result = [v2 attributedText];
    if (result)
    {
      [v2 selectedRange];
      sub_100101894();
      v22 = [v2 selectedRange];
      *&v29[0] = v22;
      *(&v29[0] + 1) = v23;
      v24 = [v2 textStorage];
      v25 = [v24 attributesAtIndex:v22 effectiveRange:v29];

      type metadata accessor for Key(0);
      sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
      v26 = sub_100100E64();

      sub_10006ADB8(v26);

      sub_100101864();
      v9 = v7;
      return (*(v4 + 32))(v28, v9, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100066AD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8)
{
  if (!a1 || (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) == 0))
  {
    if (qword_10014B700 != -1)
    {
      swift_once();
    }

    v73 = sub_100100AE4();
    sub_100003D38(v73, qword_10014DFC0);
    swift_errorRetain();
    v74 = sub_100100AC4();
    v75 = sub_1001015B4();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v78 = _swift_stdlib_bridgeErrorToNSError();
        v79 = v78;
      }

      else
      {
        v78 = 0;
        v79 = 0;
      }

      *(v76 + 4) = v78;
      *v77 = v79;
      _os_log_impl(&_mh_execute_header, v74, v75, "Failed to load text for pasting: %@", v76, 0xCu);
      sub_10000FFB4(v77, &unk_10014D660);
    }

    [a3 setNoResult];
    v72 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v82 = a8;
  v83 = a6;
  v91 = _swiftEmptyArrayStorage;
  v17 = *(a4 + 16);
  swift_unknownObjectRetain();
  v80 = a3;
  v81 = a7;
  if (v17)
  {
    v18 = sub_10004DCEC(NSParagraphStyleAttributeName);
    if (v19)
    {
      sub_100010FA8(*(a4 + 56) + 32 * v18, &aBlock);
      sub_100010F50(0, &qword_10014E120);
      if (swift_dynamicCast())
      {
        v20 = [v84 textLists];
        sub_100010F50(0, &qword_10014E118);
        v21 = sub_1001011D4();

        v91 = v21;
      }
    }
  }

  v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v16];
  v23 = [v22 length];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_10006C368;
  *(v25 + 24) = v24;
  v89 = sub_10006C4D4;
  v90 = v25;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10005DE7C;
  v88 = &unk_100136D20;
  v26 = _Block_copy(&aBlock);
  v27 = v22;

  [v27 enumerateAttribute:NSLinkAttributeName inRange:0 options:v23 usingBlock:{0, v26}];
  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
    goto LABEL_28;
  }

  v28 = [v27 length];

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_10006C370;
  *(v30 + 24) = v29;
  v89 = sub_10006C4D4;
  v90 = v30;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10005DE7C;
  v88 = &unk_100136D98;
  v31 = _Block_copy(&aBlock);
  v32 = v27;

  [v32 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v28 usingBlock:{0, v31}];
  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = [v32 length];

  if ((v34 & 0x8000000000000000) != 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_10006C378;
  *(v36 + 24) = v35;
  v89 = sub_10006C4D4;
  v90 = v36;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10005DE7C;
  v88 = &unk_100136E10;
  v37 = _Block_copy(&aBlock);
  v38 = v32;

  [v38 enumerateAttribute:NSFontAttributeName inRange:0 options:v34 usingBlock:{0, v37}];
  _Block_release(v37);
  v39 = swift_isEscapingClosureAtFileLocation();

  if (v39)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v40 = [v38 length];

  if ((v40 & 0x8000000000000000) != 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41 = swift_allocObject();
  v41[2] = a5;
  v41[3] = &v91;
  v41[4] = v83 + 16;
  v41[5] = v38;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_10006C3C0;
  *(v42 + 24) = v41;
  v89 = sub_10006C4D4;
  v90 = v42;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_10005DE7C;
  v88 = &unk_100136E88;
  v43 = _Block_copy(&aBlock);
  v44 = v38;
  v45 = a5;

  [v44 enumerateAttribute:NSParagraphStyleAttributeName inRange:0 options:v40 usingBlock:{0, v43}];
  _Block_release(v43);
  v46 = swift_isEscapingClosureAtFileLocation();

  if (v46)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v47 = NSAdaptiveImageGlyphAttributeName;
  v48 = [v44 length];

  [v44 removeAttribute:v47 range:{0, v48}];
  sub_100007210(&unk_10014E130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010C1F0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v50 = sub_100010F50(0, &qword_10014C7D0);
  *(inited + 40) = v81;
  *(inited + 64) = v50;
  *(inited + 72) = NSBackgroundColorAttributeName;
  v51 = objc_opt_self();
  v52 = NSForegroundColorAttributeName;
  v53 = v81;
  v54 = NSBackgroundColorAttributeName;
  v55 = [v51 clearColor];
  *(inited + 104) = v50;
  *(inited + 80) = v55;
  sub_10004D7B4(inited);
  swift_setDeallocating();
  sub_100007210(&qword_10014D580);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  isa = sub_100100E44().super.isa;

  v57 = [v44 length];

  [v44 addAttributes:isa range:{0, v57}];
  v58 = [v44 length];

  [v44 fixAttributesInRange:{0, v58}];
  v59 = v44;
  v60 = [v59 string];
  if (!v60)
  {
    sub_100100FD4();
    v60 = sub_100100F94();
  }

  v61 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v60];

  v62 = [v51 labelColor];
  v63 = sub_1000C4A0C(v82);
  v64 = [v59 length];
  if ((v64 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  v65 = v64;
  v66 = swift_allocObject();
  v66[2] = v63;
  v66[3] = v62;
  v66[4] = 0x4020000000000000;
  v66[5] = 0;
  v66[6] = v61;
  v67 = swift_allocObject();
  *(v67 + 16) = sub_10006C41C;
  *(v67 + 24) = v66;
  v89 = sub_10006C4D0;
  v90 = v67;
  aBlock = _NSConcreteStackBlock;
  v86 = 1107296256;
  v87 = sub_1000E3338;
  v88 = &unk_100136F00;
  v68 = _Block_copy(&aBlock);
  v69 = v63;
  v70 = v62;
  v71 = v61;

  [v59 enumerateAttributesInRange:0 options:v65 usingBlock:{0, v68}];

  _Block_release(v68);
  LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

  if ((v65 & 1) == 0)
  {
    [v80 setAttributedStringResult:v71];

    swift_unknownObjectRelease();

    v72 = sub_10006C3C0;
LABEL_26:
    sub_10002FB80(v72);
    return;
  }

LABEL_34:
  __break(1u);
}

id sub_10006773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  sub_100010014(a1, v16, &qword_10014CA68);
  if (v17)
  {
    v12 = sub_1000FF514();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v11, v13 ^ 1u, 1, v12);
  }

  else
  {
    sub_10000FFB4(v16, &qword_10014CA68);
    v12 = sub_1000FF514();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  sub_1000FF514();
  v14 = (*(*(v12 - 8) + 48))(v11, 1, v12);
  result = sub_10000FFB4(v11, &qword_10014EBD0);
  if (!v14)
  {
    return [a5 removeAttribute:NSLinkAttributeName range:{a2, a3}];
  }

  return result;
}

uint64_t sub_100067920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100010014(a1, v10, &qword_10014CA68);
  if (!v11)
  {
    return sub_10000FFB4(v10, &qword_10014CA68);
  }

  sub_100010F50(0, &unk_10014E1C0);
  result = swift_dynamicCast();
  if (result)
  {

    return [a5 deleteCharactersInRange:{a2, a3}];
  }

  return result;
}

void sub_1000679F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_100010014(a1, v14, &qword_10014CA68);
  if (!v15)
  {
    sub_10000FFB4(v14, &qword_10014CA68);
    goto LABEL_5;
  }

  sub_100010F50(0, &unk_10014E148);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v8 = [v13 fontDescriptor];

  v9 = [v8 symbolicTraits];
  v10 = v9 & 3;
LABEL_6:
  sub_100007210(&qword_10014CC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010C1F0;
  *(inited + 32) = xmmword_10010D7E0;
  *(inited + 48) = 0;
  *(inited + 56) = v10;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  v12 = sub_10004D9E8(UIFontTextStyleBody, inited, 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  [a5 addAttribute:NSFontAttributeName value:v12 range:{a2, a3}];
}

void sub_100067BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, void *a8)
{
  sub_100010014(a1, v20, &qword_10014CA68);
  if (v21)
  {
    sub_100010F50(0, &qword_10014E120);
    if (swift_dynamicCast())
    {
      [v19 mutableCopy];
      sub_100101B14();

      swift_unknownObjectRelease();
      sub_100010F50(0, &unk_10014E108);
      if (swift_dynamicCast())
      {
        v12 = v19;
        goto LABEL_7;
      }
    }
  }

  else
  {
    sub_10000FFB4(v20, &qword_10014CA68);
  }

  sub_100010F50(0, &unk_10014E108);
  v12 = sub_1000CB144();
LABEL_7:
  sub_100010F50(0, &qword_10014E118);
  v13 = v12;

  isa = sub_1001011C4().super.isa;

  [v13 setTextLists:isa];

  swift_beginAccess();
  v15 = *a7;
  v16 = v13;
  if (v15 == 1)
  {
    v17 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v17 setParagraphStyle:v13];
    [v17 setFirstLineHeadIndent:14.1];
    [v17 setHeadIndent:14.1];
    [v17 mutableCopy];

    sub_100101B14();
    swift_unknownObjectRelease();
    sub_100010F50(0, &unk_10014E108);
    if (swift_dynamicCast())
    {

      v16 = v18;
    }

    else
    {
      v16 = v13;
    }
  }

  [a8 addAttribute:NSParagraphStyleAttributeName value:v16 range:{a2, a3}];
}

id sub_100067E84(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_1000FF514();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010014(a1, v10, &qword_10014EBD0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000FFB4(v10, &qword_10014EBD0);
    if (qword_10014B700 != -1)
    {
      swift_once();
    }

    v15 = sub_100100AE4();
    sub_100003D38(v15, qword_10014DFC0);
    swift_errorRetain();
    v16 = sub_100100AC4();
    v17 = sub_1001015B4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      if (a2)
      {
        swift_errorRetain();
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v18 + 4) = v20;
      *v19 = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to load URL for pasting: %@", v18, 0xCu);
      sub_10000FFB4(v19, &unk_10014D660);
    }

    return [a3 setNoResult];
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1000FF504();
    sub_100007210(&unk_10014E130);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010C1F0;
    *(inited + 32) = NSFontAttributeName;
    v23 = NSFontAttributeName;
    v34 = a3;
    v24 = sub_10004D9E8(UIFontTextStyleBody, &off_100134888, 0);
    sub_10002A08C(&unk_1001348A8);
    v25 = sub_100010F50(0, &unk_10014E148);
    *(inited + 40) = v24;
    *(inited + 64) = v25;
    *(inited + 72) = NSForegroundColorAttributeName;
    *(inited + 104) = sub_100010F50(0, &qword_10014C7D0);
    *(inited + 80) = a4;
    v26 = NSForegroundColorAttributeName;
    v27 = a4;
    sub_10004D7B4(inited);
    swift_setDeallocating();
    sub_100007210(&qword_10014D580);
    swift_arrayDestroy();
    v28 = objc_allocWithZone(NSAttributedString);
    v29 = sub_100100F94();

    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    isa = sub_100100E44().super.isa;

    v31 = [v28 initWithString:v29 attributes:isa];

    [v34 setAttributedStringResult:v31];
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1000683D4(uint64_t a1, uint64_t a2)
{
  v24 = &type metadata for Int;
  *&v23 = 0;
  sub_10002FC28(&v23, v22);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = a2;
  sub_1000FB8AC(v22, NSUnderlineStyleAttributeName, isUniquelyReferenced_nonNull_native);
  v4 = v25;
  v24 = &type metadata for Int;
  *&v23 = 0;
  sub_10002FC28(&v23, v22);
  v5 = swift_isUniquelyReferenced_nonNull_native();
  sub_1000FB8AC(v22, NSStrikethroughStyleAttributeName, v5);
  v6 = v4;
  v25 = v4;
  v7 = *(v4 + 16);
  v8 = NSFontAttributeName;
  v9 = v8;
  if (v7 && (v10 = sub_10004DCEC(v8), (v11 & 1) != 0) && (sub_100010FA8(*(v6 + 56) + 32 * v10, &v23), v12 = sub_100010F50(0, &unk_10014E148), (swift_dynamicCast() & 1) != 0))
  {
    v13 = v22[0];
    v14 = [v22[0] fontDescriptor];
    v15 = [v13 fontDescriptor];
    v16 = [v15 symbolicTraits];

    v17 = [v14 fontDescriptorWithSymbolicTraits:v16 & 0xFFFFFFFC];
    if (v17)
    {
      v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];

      v13 = v18;
    }

    v24 = v12;
    *&v23 = v13;
    sub_10002FC28(&v23, v22);
    v19 = v25;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000FB8AC(v22, v9, v20);

    v25 = v19;
  }

  else
  {
    sub_1000C4910(&v23);

    sub_10000FFB4(&v23, &qword_10014CA68);
  }

  sub_1000C4910(&v23);
  sub_10000FFB4(&v23, &qword_10014CA68);
  sub_1000C4910(&v23);
  sub_10000FFB4(&v23, &qword_10014CA68);
  return v25;
}

Class sub_10006869C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  sub_100100E64();

  v4 = a2;
  v5 = v3();

  if (v5)
  {
    v6.super.isa = sub_100100E44().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

void sub_100068898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (!*(a1 + 16) || (v7 = sub_10004DCEC(NSParagraphStyleAttributeName), (v8 & 1) == 0) || (sub_100010FA8(*(a1 + 56) + 32 * v7, v19), sub_100010F50(0, &qword_10014E120), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    goto LABEL_8;
  }

  [v18 firstLineHeadIndent];
  *v10.i64 = *v9.i64 - trunc(*v9.i64);
  v11.f64[0] = NAN;
  v11.f64[1] = NAN;
  v17 = vnegq_f64(v11);
  v12 = *vbslq_s8(v17, v10, v9).i64 + -0.1;
  [v18 headIndent];
  v16 = v13;

  if (fabs(v12) < 0.01)
  {
    *v14.i64 = *v16.i64 - trunc(*v16.i64);
    if (fabs(*vbslq_s8(v17, v14, v16).i64 + -0.1) < 0.01)
    {
      v15 = 1;
LABEL_8:
      *a5 = v15;
    }
  }
}

uint64_t sub_100068A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (*(a1 + 16) && (v7 = sub_10004DCEC(NSStrikethroughStyleAttributeName), (v8 & 1) != 0))
  {
    sub_100010FA8(*(a1 + 56) + 32 * v7, v10);
    return sub_10000FFB4(v10, &qword_10014CA68);
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    result = sub_10000FFB4(v10, &qword_10014CA68);
    *a5 = 0;
  }

  return result;
}

void sub_100068B20(void *a1)
{
  if ([a1 propertyList])
  {
    sub_100101B14();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (!*(&v6 + 1))
  {
    sub_10000FFB4(v7, &qword_10014CA68);
    return;
  }

  if (swift_dynamicCast())
  {
    if (v4 == 2)
    {
      if (qword_10014B760 != -1)
      {
        swift_once();
      }

      v2 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:qword_1001586F8 options:0 startingItemNumber:1];
      if (v2)
      {
LABEL_13:
        v3 = v2;
        sub_100068C9C(v3);
      }
    }

    else
    {
      if (v4 == 1)
      {
        v1 = &NSTextListMarkerHyphen;
      }

      else
      {
        if (v4)
        {
          return;
        }

        v1 = &NSTextListMarkerDisc;
      }

      v2 = [objc_allocWithZone(NSTextList) initWithMarkerFormat:*v1 options:0];
      if (v2)
      {
        goto LABEL_13;
      }
    }
  }
}

id sub_100068C9C(void *a1)
{
  v2 = v1;
  result = [v1 allowsEditingTextAttributes];
  if (result)
  {
    v128 = sub_10004D8F0(_swiftEmptyArrayStorage);
    v127 = 1;
    v5 = &selRef_cancel;
    [v1 selectedRange];
    v115 = a1;
    v116 = v1;
    if (v6 >= 1)
    {
      result = [v1 attributedText];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      v8 = [v1 selectedRange];
      v10 = v9;
      v11 = swift_allocObject();
      v11[2] = &v128;
      v11[3] = a1;
      v11[4] = &v127;
      v12 = swift_allocObject();
      *(v12 + 16) = sub_10006AC84;
      *(v12 + 24) = v11;
      v121 = sub_10006AC90;
      v122 = v12;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v120 = sub_10005DE7C;
      *(&v120 + 1) = &unk_1001367A8;
      v13 = _Block_copy(&aBlock);
      v14 = a1;
      a1 = v122;
      v112 = v14;

      v114 = NSParagraphStyleAttributeName;
      [v7 enumerateAttribute:NSParagraphStyleAttributeName inRange:v8 options:v10 usingBlock:{0, v13}];

      _Block_release(v13);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        v16 = v128;
        v17 = v128 + 64;
        v18 = 1 << *(v128 + 32);
        v19 = -1;
        if (v18 < 64)
        {
          v19 = ~(-1 << v18);
        }

        v20 = v19 & *(v128 + 64);
        a1 = ((v18 + 63) >> 6);

        v21 = 0;
LABEL_9:
        if (v20)
        {
          goto LABEL_14;
        }

LABEL_10:
        while (1)
        {
          v24 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v24 >= a1)
          {

            v33 = sub_10006AC84;
            v5 = &selRef_cancel;
            a1 = v115;
            goto LABEL_21;
          }

          v20 = *(v17 + 8 * v24);
          ++v21;
          if (v20)
          {
            v21 = v24;
LABEL_14:
            while (1)
            {
              v25 = __clz(__rbit64(v20));
              v20 &= v20 - 1;
              v26 = v25 | (v21 << 6);
              v27 = *(*(v16 + 48) + 8 * v26);
              v28 = (*(v16 + 56) + 16 * v26);
              v29 = v28[1];
              v117 = *v28;
              isEscapingClosureAtFileLocation = v27;
              [isEscapingClosureAtFileLocation mutableCopy];
              sub_100101B14();
              swift_unknownObjectRelease();
              sub_100010F50(0, &unk_10014E108);
              if (swift_dynamicCast())
              {
                break;
              }

              if (!v20)
              {
                goto LABEL_10;
              }
            }

            v30 = v124;
            if ((v127 & 1) == 0)
            {
              sub_100007210(&unk_10014D0F0);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_10010C650;
              *(v31 + 32) = v112;
              v32 = v112;
            }

            sub_100010F50(0, &qword_10014E118);
            isa = sub_1001011C4().super.isa;

            [v30 setTextLists:isa];

            v23 = [v116 textStorage];
            [v23 addAttribute:NSParagraphStyleAttributeName value:v30 range:{v117, v29}];

            v2 = v116;
            goto LABEL_9;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v33 = 0;
LABEL_21:
    [v2 v5[326]];
    if (v34 >= 1)
    {
      v35 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
      v36 = sub_100100E64();

      if (*(v36 + 16) && (v37 = sub_10004DCEC(NSParagraphStyleAttributeName), (v38 & 1) != 0))
      {
        sub_100010FA8(*(v36 + 56) + 32 * v37, &aBlock);

        sub_100010F50(0, &qword_10014E120);
        if (swift_dynamicCast())
        {
          v118 = v33;
          v39 = v124;
          [v124 mutableCopy];
          sub_100101B14();
          swift_unknownObjectRelease();
          v40 = sub_100010F50(0, &unk_10014E108);
          if (swift_dynamicCast())
          {
            v41 = v124;
            if ((v127 & 1) == 0)
            {
              sub_100007210(&unk_10014D0F0);
              v92 = swift_allocObject();
              *(v92 + 16) = xmmword_10010C650;
              *(v92 + 32) = v115;
              v93 = v115;
            }

            sub_100010F50(0, &qword_10014E118);
            v94 = sub_1001011C4().super.isa;

            [v41 setTextLists:v94];

            *(&v120 + 1) = v40;
            *&aBlock = v41;
            v47 = v41;
            v95 = [v2 typingAttributes];
            v96 = sub_100100E64();

            v126 = v96;
            if (*(&v120 + 1))
            {
              sub_10002FC28(&aBlock, &v124);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v123 = v96;
              sub_1000FB8AC(&v124, NSParagraphStyleAttributeName, isUniquelyReferenced_nonNull_native);
              v126 = v123;
            }

            else
            {
              sub_10000FFB4(&aBlock, &qword_10014CA68);
              sub_1000C4910(&v124);
              sub_10000FFB4(&v124, &qword_10014CA68);
            }

            v98 = sub_100100E44().super.isa;

            [v2 setTypingAttributes:v98];

            sub_10006A23C(v47);
            goto LABEL_43;
          }

          v33 = v118;
          if (v127)
          {
            goto LABEL_72;
          }

LABEL_30:
          v118 = v33;
          v42 = sub_100010F50(0, &unk_10014E108);
          v43 = sub_1000CB144();
          sub_100007210(&unk_10014D0F0);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_10010C650;
          *(v44 + 32) = v115;
          sub_100010F50(0, &qword_10014E118);
          v45 = v115;
          v46 = sub_1001011C4().super.isa;

          [v43 setTextLists:v46];

          *(&v120 + 1) = v42;
          *&aBlock = v43;
          v47 = v43;
          v48 = [v2 typingAttributes];
          v49 = sub_100100E64();

          v126 = v49;
          if (*(&v120 + 1))
          {
            sub_10002FC28(&aBlock, &v124);
            v50 = swift_isUniquelyReferenced_nonNull_native();
            v123 = v49;
            sub_1000FB8AC(&v124, NSParagraphStyleAttributeName, v50);
            v126 = v123;
          }

          else
          {
            sub_10000FFB4(&aBlock, &qword_10014CA68);
            sub_1000C4910(&v124);
            sub_10000FFB4(&v124, &qword_10014CA68);
          }

          v64 = sub_100100E44().super.isa;

          [v2 setTypingAttributes:v64];

LABEL_43:
          v33 = v118;
          goto LABEL_72;
        }
      }

      else
      {
      }

      if (v127)
      {
LABEL_72:
        v90 = [v2 v5[326]];
        sub_100063630(v90, v91);
        sub_1000611DC();

        return sub_10002FB80(v33);
      }

      goto LABEL_30;
    }

    v51 = [v2 v5[326]];
    v52 = [v2 textStorage];
    v53 = [v52 length];

    if (v53 < 1 || (v54 = [v2 textStorage], v55 = objc_msgSend(v54, "length"), v54, v51 >= v55))
    {
      v57 = NSParagraphStyleAttributeName;
      v59 = [v2 typingAttributes];
      type metadata accessor for Key(0);
      sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
      v60 = sub_100100E64();

      if (!*(v60 + 16) || (v61 = sub_10004DCEC(NSParagraphStyleAttributeName), (v62 & 1) == 0))
      {

        v114 = 0;
        v5 = &selRef_cancel;
LABEL_68:
        v80 = sub_100010F50(0, &unk_10014E108);
        v81 = sub_1000CB144();
        sub_100007210(&unk_10014D0F0);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_10010C650;
        *(v82 + 32) = a1;
        sub_100010F50(0, &qword_10014E118);
        v83 = a1;
        v84 = sub_1001011C4().super.isa;

        [v81 setTextLists:v84];

        *(&v120 + 1) = v80;
        *&aBlock = v81;
        v85 = v81;
        v86 = [v2 typingAttributes];
        type metadata accessor for Key(0);
        sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
        v87 = sub_100100E64();

        v126 = v87;
        if (*(&v120 + 1))
        {
          sub_10002FC28(&aBlock, &v124);
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v123 = v87;
          sub_1000FB8AC(&v124, v57, v88);
          v126 = v123;
        }

        else
        {
          sub_10000FFB4(&aBlock, &qword_10014CA68);
          sub_1000C4910(&v124);
          sub_10000FFB4(&v124, &qword_10014CA68);
        }

        v89 = sub_100100E44().super.isa;

        [v2 setTypingAttributes:v89];

        sub_10006A23C(v85);
        goto LABEL_72;
      }

      sub_100010FA8(*(v60 + 56) + 32 * v61, &aBlock);

      sub_100010F50(0, &qword_10014E120);
      v5 = &selRef_cancel;
      if (swift_dynamicCast())
      {
        v63 = v124;
        goto LABEL_50;
      }
    }

    else
    {
      v56 = [v2 textStorage];
      v57 = NSParagraphStyleAttributeName;
      v58 = [v56 attribute:NSParagraphStyleAttributeName atIndex:v51 effectiveRange:0];

      if (v58)
      {
        sub_100101B14();
        swift_unknownObjectRelease();
      }

      else
      {
        v124 = 0u;
        v125 = 0u;
      }

      v5 = &selRef_cancel;
      aBlock = v124;
      v120 = v125;
      if (*(&v125 + 1))
      {
        sub_100010F50(0, &qword_10014E120);
        if (swift_dynamicCast())
        {
          v63 = v126;
LABEL_50:
          v65 = v63;
          [v65 mutableCopy];
          sub_100101B14();
          swift_unknownObjectRelease();
          v66 = sub_100010F50(0, &unk_10014E108);
          v67 = swift_dynamicCast();

          v114 = v65;
          if (v67)
          {
            v108 = v124;
            v68 = [v65 textLists];
            v107 = sub_100010F50(0, &qword_10014E118);
            isEscapingClosureAtFileLocation = sub_1001011D4();

            v117 = v33;
            v109 = v66;
            v110 = v57;
            if (!(isEscapingClosureAtFileLocation >> 62))
            {
              v111 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
              v113 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_53;
            }

LABEL_90:
            v111 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;
            v113 = sub_100101DA4();
LABEL_53:
            v69 = 0;
            while (1)
            {
              if (v113 == v69)
              {

                sub_100007210(&unk_10014D0F0);
                v99 = swift_allocObject();
                *(v99 + 16) = xmmword_10010C650;
                *(v99 + 32) = a1;
                v100 = a1;
                goto LABEL_82;
              }

              if ((isEscapingClosureAtFileLocation & 0xC000000000000001) != 0)
              {
                v70 = sub_100101CA4();
              }

              else
              {
                if (v69 >= *(v111 + 16))
                {
                  goto LABEL_89;
                }

                v70 = *(isEscapingClosureAtFileLocation + 8 * v69 + 32);
              }

              v71 = v70;
              if (__OFADD__(v69, 1))
              {
                goto LABEL_88;
              }

              v72 = [v70 markerFormat];
              v73 = [a1 markerFormat];
              v74 = sub_100100FD4();
              v76 = v75;
              if (v74 == sub_100100FD4() && v76 == v77)
              {
                break;
              }

              v79 = sub_100101E84();

              ++v69;
              a1 = v115;
              if (v79)
              {
                goto LABEL_81;
              }
            }

LABEL_81:

LABEL_82:
            v101 = sub_1001011C4().super.isa;

            [v108 setTextLists:v101];

            *(&v120 + 1) = v109;
            *&aBlock = v108;
            v102 = v108;
            v2 = v116;
            v103 = [v116 typingAttributes];
            type metadata accessor for Key(0);
            sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
            v104 = sub_100100E64();

            v126 = v104;
            v5 = &selRef_cancel;
            v33 = v117;
            if (*(&v120 + 1))
            {
              sub_10002FC28(&aBlock, &v124);
              v105 = swift_isUniquelyReferenced_nonNull_native();
              v123 = v104;
              sub_1000FB8AC(&v124, v110, v105);
              v126 = v123;
            }

            else
            {
              sub_10000FFB4(&aBlock, &qword_10014CA68);
              sub_1000C4910(&v124);
              sub_10000FFB4(&v124, &qword_10014CA68);
            }

            v106 = sub_100100E44().super.isa;

            [v116 setTypingAttributes:v106];

            sub_10006A23C(v102);
            goto LABEL_72;
          }

          goto LABEL_68;
        }
      }

      else
      {
        sub_10000FFB4(&aBlock, &qword_10014CA68);
      }
    }

    v114 = 0;
    goto LABEL_68;
  }

  return result;
}

void sub_100069F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, _BYTE *a7)
{
  sub_100010014(a1, v32, &qword_10014CA68);
  if (v32[3])
  {
    sub_100010F50(0, &qword_10014E120);
    if (swift_dynamicCast())
    {
      v26 = a7;
      v11 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32[0] = *a5;
      *a5 = 0x8000000000000000;
      sub_1000FB8E8(a2, a3, v11, isUniquelyReferenced_nonNull_native);

      *a5 = v32[0];

      v27 = v11;
      v13 = [v11 textLists];
      sub_100010F50(0, &qword_10014E118);
      v14 = sub_1001011D4();

      if (v14 >> 62)
      {
LABEL_25:
        v28 = v14 & 0xFFFFFFFFFFFFFF8;
        v29 = sub_100101DA4();
      }

      else
      {
        v28 = v14 & 0xFFFFFFFFFFFFFF8;
        v29 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = 0;
      while (1)
      {
        if (v29 == v15)
        {

          *v26 = 0;
          return;
        }

        if ((v14 & 0xC000000000000001) != 0)
        {
          v16 = sub_100101CA4();
        }

        else
        {
          if (v15 >= *(v28 + 16))
          {
            goto LABEL_24;
          }

          v16 = *(v14 + 8 * v15 + 32);
        }

        v17 = v16;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v18 = [v16 markerFormat];
        v19 = [a6 markerFormat];
        v20 = sub_100100FD4();
        v22 = v21;
        if (v20 == sub_100100FD4() && v22 == v23)
        {
          break;
        }

        v25 = sub_100101E84();

        ++v15;
        if (v25)
        {
          goto LABEL_21;
        }
      }

LABEL_21:
    }
  }

  else
  {
    sub_10000FFB4(v32, &qword_10014CA68);
  }
}

void sub_10006A23C(uint64_t a1)
{
  v3 = [v1 textStorage];
  v4 = [v3 length];

  if (v4 >= 1)
  {
    v5 = [v1 textStorage];
    v6 = [v5 string];
    if (v6)
    {
      v7 = v6;

      v8 = [v1 selectedRange];
      v10 = [v7 paragraphRangeForRange:{v8, v9}];
      v12 = v11;

      if (v12 >= 1)
      {
        v13 = [v1 textStorage];
        [v13 addAttribute:NSParagraphStyleAttributeName value:a1 range:{v10, v12}];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_10006A38C(uint64_t a1, void *a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);
  v16 = a2;
  v17 = a3;
  v18 = v15(a2, v17, a4, a5, a6, a7, a8);

  return v18 & 1;
}

uint64_t sub_10006A434()
{
  v0 = sub_100101154();
  v4 = sub_10006A4B4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10006A4B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_100101AB4();
    if (!v9 || (v10 = v9, v11 = sub_10007ABB4(v9, 0), v12 = sub_10006A60C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_100101064();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_100101064();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_100101CE4();
LABEL_4:

  return sub_100101064();
}

unint64_t sub_10006A60C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10006A82C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1001010F4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_100101CE4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10006A82C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1001010D4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10006A82C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_100101104();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1001010E4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_10006A8A8(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_10006A9F8(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_100101C54();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_100101CE4() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_10006A9F8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_10006AA90(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_10006AB04(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_10006AA90(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_10006A82C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10006AB04(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_100101CE4();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return _StringGuts.foreignScalarAlign(_:)();
    }
  }

  return result;
}

uint64_t sub_10006AC4C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006ACB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10006ACD0()
{
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_currentSelectedColor) = 0;
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryTopConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryLeftConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryRightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_isShowingFormattingController) = 0;
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_journalEntry) = 0;
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_topAccessoryView) = 0;
  v1 = OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_blockQuoteLayerView;
  type metadata accessor for BlockQuoteLayerView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC21JournalShareExtension15JournalTextView_removeListsNextClear) = 0;
  sub_100101D94();
  __break(1u);
}

BOOL sub_10006ADB8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_10004DCEC(NSParagraphStyleAttributeName);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100010FA8(*(a1 + 56) + 32 * v2, v15);
  sub_100010F50(0, &qword_10014E120);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  [v14 firstLineHeadIndent];
  *v5.i64 = *v4.i64 - trunc(*v4.i64);
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v13 = vnegq_f64(v6);
  v7 = *vbslq_s8(v13, v5, v4).i64 + -0.1;
  [v14 headIndent];
  v12 = v8;

  *v9.i64 = *v12.i64 - trunc(*v12.i64);
  v10 = fabs(v7) < 0.01;
  return fabs(*vbslq_s8(v13, v9, v12).i64 + -0.1) < 0.01 && v10;
}

void *sub_10006AEE4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = sub_10004DCEC(NSForegroundColorAttributeName);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  sub_100010FA8(*(a1 + 56) + 32 * v2, v11);
  sub_100010F50(0, &qword_10014C7D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v4 = v10;
  if (qword_10014B708 != -1)
  {
    swift_once();
  }

  v5 = qword_100158678;
  v6 = sub_100101A34();

  if (v6 & 1) != 0 || (v7 = [objc_opt_self() blackColor], v8 = sub_100101A34(), v7, (v8))
  {

    return 0;
  }

  return v4;
}

id sub_10006B024()
{
  sub_100007210(&unk_10014D0F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10010C650;
  sub_100010F50(0, &qword_10014E1D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10010CA30;
  sub_100010F50(0, &qword_10014E1D8);
  *(v1 + 32) = sub_1001018D4();
  *(v1 + 40) = sub_1001018D4();
  *(v1 + 48) = sub_1001018D4();
  *(v1 + 56) = sub_1001018D4();
  v2 = sub_1001018E4();

  *(v0 + 32) = v2;
  v3 = objc_allocWithZone(UITextFormattingViewControllerConfiguration);
  isa = sub_1001011C4().super.isa;

  v5 = [v3 initWithGroups:isa];

  return v5;
}

void sub_10006B198(void *a1)
{
  v2 = v1;
  v4 = [v1 textColor];
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    v7 = [v1 typingAttributes];
    type metadata accessor for Key(0);
    sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
    v8 = sub_100100E64();

    v9 = [v1 traitCollection];
    v10 = [v1 typingAttributes];
    v11 = sub_100100E64();

    if (*(v11 + 16) && (v12 = sub_10004DCEC(NSParagraphStyleAttributeName), (v13 & 1) != 0))
    {
      sub_100010FA8(*(v11 + 56) + 32 * v12, aBlock);

      sub_100010F50(0, &qword_10014E120);
      if (swift_dynamicCast())
      {
        [v42 firstLineHeadIndent];
        *v15.i64 = *v14.i64 - trunc(*v14.i64);
        v16.f64[0] = NAN;
        v16.f64[1] = NAN;
        v41 = vnegq_f64(v16);
        v17 = *vbslq_s8(v41, v15, v14).i64 + -0.1;
        [v42 headIndent];
        v40 = v18;

        *v19.i64 = *v40.i64 - trunc(*v40.i64);
        v20 = fabs(v17) < 0.01;
        if (fabs(*vbslq_s8(v41, v19, v40).i64 + -0.1) >= 0.01)
        {
          v20 = 0;
        }

        *(v6 + 16) = v20;
      }
    }

    else
    {
    }

    v21 = [a1 itemProvider];
    sub_100010F50(0, &qword_10014D0C0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [v21 canLoadObjectOfClass:ObjCClassFromMetadata];

    if (v23)
    {
      v24 = [a1 itemProvider];
      v25 = swift_allocObject();
      v25[2] = a1;
      v25[3] = v8;
      v25[4] = v2;
      v25[5] = v6;
      v25[6] = v5;
      v25[7] = v9;
      aBlock[4] = sub_10006C358;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10008C9D4;
      aBlock[3] = &unk_100136CA8;
      v26 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v27 = v2;

      v28 = v5;
      v29 = v9;

      v30 = [v24 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v26];

      _Block_release(v26);
    }

    else
    {

      v31 = [a1 itemProvider];
      sub_1000FF514();
      sub_10006C268(&qword_10014E158, &type metadata accessor for URL);
      v32 = sub_1001015F4();

      if (v32)
      {
        v33 = [a1 itemProvider];
        v34 = swift_allocObject();
        *(v34 + 16) = a1;
        *(v34 + 24) = v5;
        swift_unknownObjectRetain();
        v5 = v5;
        v35 = sub_1001015E4();
      }

      else
      {
        if (qword_10014B700 != -1)
        {
          swift_once();
        }

        v36 = sub_100100AE4();
        sub_100003D38(v36, qword_10014DFC0);
        v37 = sub_100100AC4();
        v38 = sub_100101594();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&_mh_execute_header, v37, v38, "Paste ignored, not text or URL", v39, 2u);
        }

        [a1 setNoResult];
      }
    }
  }

  else
  {

    [a1 setNoResult];
  }
}

void sub_10006B788()
{
  v1 = v0;
  if (![v0 allowsEditingTextAttributes])
  {
    return;
  }

  [v0 selectedRange];
  if (v2 >= 1)
  {
    LOBYTE(v31) = 0;
    v3 = [v0 textStorage];
    v4 = [v1 selectedRange];
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = &v31;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_10006C0A0;
    *(v8 + 24) = v7;
    aBlock[4] = sub_10006C4D0;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E3338;
    aBlock[3] = &unk_100136898;
    v9 = _Block_copy(aBlock);

    [v3 enumerateAttributesInRange:v4 options:v6 usingBlock:{0, v9}];

    _Block_release(v9);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }

    else
    {
      v10 = v31;
      v11 = [v1 selectedRange];
      if (v10 == 1)
      {
        sub_100064FAC(v11, v12);
      }

      else
      {
        sub_100064694(v11, v12);
      }
    }

    return;
  }

  v13 = [v0 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v14 = sub_100100E64();

  if (!*(v14 + 16) || (v15 = sub_10004DCEC(NSParagraphStyleAttributeName), (v16 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_100010FA8(*(v14 + 56) + 32 * v15, aBlock);

  sub_100010F50(0, &qword_10014E120);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v26 = [v1 selectedRange];
    sub_100064694(v26, v27);
    return;
  }

  v17 = v31;
  [v31 firstLineHeadIndent];
  *v19.i64 = *v18.i64 - trunc(*v18.i64);
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v29 = vnegq_f64(v20);
  v21 = *vbslq_s8(v29, v19, v18).i64 + -0.1;
  [v17 headIndent];
  v28 = v22;
  v23 = [v1 selectedRange];
  if (fabs(v21) >= 0.01 || (*v25.i64 = *v28.i64 - trunc(*v28.i64), fabs(*vbslq_s8(v29, v25, v28).i64 + -0.1) >= 0.01))
  {
    sub_100064694(v23, v24);
  }

  else
  {
    sub_100064FAC(v23, v24);
  }
}

id sub_10006BB40()
{
  v1 = v0;
  result = [v0 allowsEditingTextAttributes];
  if (!result)
  {
    return result;
  }

  [v0 selectedRange];
  if (v3 <= 0)
  {
    v16 = 0;
    v13 = NSStrikethroughStyleAttributeName;
    goto LABEL_10;
  }

  LOBYTE(v37[0]) = 1;
  result = [v0 attributedText];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = [v1 selectedRange];
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v37;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_10006C090;
  *(v9 + 24) = v8;
  v34 = sub_10006C098;
  v35 = v9;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v33 = sub_1000E3338;
  *(&v33 + 1) = &unk_100136820;
  v10 = _Block_copy(&aBlock);

  [v4 enumerateAttributesInRange:v5 options:v7 usingBlock:{0, v10}];

  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = v37[0];
  v12 = [v1 textStorage];
  v13 = NSStrikethroughStyleAttributeName;
  if (v11)
  {
    v14 = [v1 selectedRange];
    [(objc_class *)v12 removeAttribute:NSStrikethroughStyleAttributeName range:v14, v15];
  }

  else
  {
    isa = sub_100101454().super.super.isa;
    v18 = [v1 selectedRange];
    [(objc_class *)v12 addAttribute:NSStrikethroughStyleAttributeName value:isa range:v18, v19];

    v12 = isa;
  }

  v16 = sub_10006C090;
LABEL_10:
  v20 = [v1 typingAttributes];
  type metadata accessor for Key(0);
  sub_10006C268(&qword_10014BD70, type metadata accessor for Key);
  v21 = sub_100100E64();

  if (*(v21 + 16) && (v22 = sub_10004DCEC(v13), (v23 & 1) != 0))
  {
    sub_100010FA8(*(v21 + 56) + 32 * v22, &aBlock);

    sub_10000FFB4(&aBlock, &qword_10014CA68);
    v24 = [v1 typingAttributes];
    v25 = sub_100100E64();

    *&v37[0] = v25;
    sub_1000C4910(&aBlock);
    sub_10000FFB4(&aBlock, &qword_10014CA68);
    v26 = sub_100100E44().super.isa;

    [v1 setTypingAttributes:v26];

    v27 = v16;
  }

  else
  {

    aBlock = 0u;
    v33 = 0u;
    sub_10000FFB4(&aBlock, &qword_10014CA68);
    *(&v33 + 1) = &type metadata for Int;
    *&aBlock = 1;
    v28 = [v1 typingAttributes];
    v29 = sub_100100E64();

    v38 = v29;
    if (*(&v33 + 1))
    {
      sub_10002FC28(&aBlock, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v29;
      sub_1000FB8AC(v37, v13, isUniquelyReferenced_nonNull_native);
      v38 = v36;
    }

    else
    {
      sub_10000FFB4(&aBlock, &qword_10014CA68);
      sub_1000C4910(v37);
      sub_10000FFB4(v37, &qword_10014CA68);
    }

    v31 = sub_100100E44().super.isa;

    [v1 setTypingAttributes:v31];

    v27 = v16;
  }

  return sub_10002FB80(v27);
}

uint64_t sub_10006C0A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C114()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C14C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006C1EC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006C268(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10006C2B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006C2F8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10006C380()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10006C3CC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006C42C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10006C588()
{
  v1 = OBJC_IVAR___JurassicShareRootController____lazy_storage___contentViewController;
  v2 = *(v0 + OBJC_IVAR___JurassicShareRootController____lazy_storage___contentViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___JurassicShareRootController____lazy_storage___contentViewController);
  }

  else
  {
    type metadata accessor for JurassicShareViewController();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10006C600(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR___JurassicShareRootController____lazy_storage___contentViewController] = 0;
  if (a2)
  {
    v5 = sub_100100F94();
  }

  else
  {
    v5 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for JurassicShareRootController();
  v6 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v5, a3);

  sub_100007210(&unk_10014D0F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10010C650;
  v8 = v6;
  *(v7 + 32) = sub_10006C588();
  sub_100010F50(0, &qword_10014E318);
  isa = sub_1001011C4().super.isa;

  [v8 setViewControllers:isa animated:0];

  return v8;
}

void sub_10006C7E4()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for JurassicShareRootController();
  objc_msgSendSuper2(&v7, "viewDidLoad");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    v4 = [v0 navigationController];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 presentationController];

      if (v6)
      {
        [v6 setDelegate:v0];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10006C92C(char a1)
{
  v2 = sub_100100C44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100100CB4();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_100010F50(0, &qword_10014E300);
    v11 = sub_100101704();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10006CFB8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000D2F3C;
    aBlock[3] = &unk_100137090;
    v13 = _Block_copy(aBlock);

    sub_100100C64();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10003D0A0();
    sub_100007210(&qword_10014E310);
    sub_10002FCF8();
    sub_100101B64();
    sub_100101714();
    _Block_release(v13);

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  return result;
}

void sub_10006CBCC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong extensionContext];

    if (v2)
    {
      v3 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      v4 = sub_1000FF324();

      [v2 cancelRequestWithError:v4];
    }
  }
}

id sub_10006CDD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JurassicShareRootController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10006CE40@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  *a1 = v3;
  return result;
}

uint64_t sub_10006CEC4(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_100101654();
}

uint64_t sub_10006CF40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CF80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006CFC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10006CFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VisitAsset()
{
  result = qword_10014E348;
  if (!qword_10014E348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006D130(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100100004();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10006D19C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  ceil(ceil(CGRectGetWidth(v9)) * 0.25);
}

uint64_t sub_10006D294(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000FF1E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 7) != 0)
  {
    if (*(v1 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_showTitle) == 1 && (v8 = sub_1000E7E44()) != 0)
    {
      v9 = v8;
      v10 = [v8 string];

      v11 = sub_100100FD4();
      v13 = v12;

      v59 = v11;
      v60 = v13;
      sub_1000FF1D4();
      sub_10005B20C();
      v14 = sub_100101AE4();
      v16 = v15;
      (*(v5 + 8))(v7, v4);

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      v18 = v17 != 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = sub_1000E894C();
    if (v20)
    {
      v59 = v19;
      v60 = v20;
      sub_1000FF1D4();
      sub_10005B20C();
      v21 = sub_100101AE4();
      v23 = v22;
      (*(v5 + 8))(v7, v4);

      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if ((a1 & 1) == 0 || v18)
      {
        if ((a1 & 2) != 0 && !v18 || (a1 & 4) != 0 && !v24)
        {
          return 0;
        }
      }

      else
      {
        if (v24)
        {
          v25 = (a1 & 2) == 0;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          return 0;
        }
      }
    }

    else if ((a1 & 1) != 0 || (a1 & 2) != 0)
    {
      if ((a1 & 4) != 0 || !v18)
      {
        return 0;
      }
    }

    else if ((a1 & 4) != 0)
    {
      return 0;
    }
  }

  if ((a1 & 0x3F0) == 0)
  {
    return 1;
  }

  v27 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_allAssets;
  swift_beginAccess();
  v28 = *(v2 + v27);
  v58 = _swiftEmptyArrayStorage;
  v53 = a1;
  if (v28 >> 62)
  {
    goto LABEL_85;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100101DA4())
  {
    v56 = OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_hiddenAssets;

    if (i)
    {
      v30 = 0;
      v54 = v28 & 0xFFFFFFFFFFFFFF8;
      v55 = v28 & 0xC000000000000001;
      while (1)
      {
        if (v55)
        {
          v31 = sub_100101CA4();
        }

        else
        {
          if (v30 >= *(v54 + 16))
          {
            goto LABEL_82;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v34 = v28;
        v35 = v2;
        v36 = *(v2 + v56);
        v57 = v31;
        __chkstk_darwin(v31);
        *(&v53 - 2) = &v57;

        v37 = sub_10004F0DC(sub_10006DA24, (&v53 - 4), v36);

        if (v37)
        {
        }

        else
        {
          sub_100101D04();
          sub_100101D34();
          sub_100101D44();
          sub_100101D14();
        }

        v28 = v34;
        ++v30;
        v2 = v35;
        if (v33 == i)
        {
          v38 = v58;
          goto LABEL_45;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v38 = _swiftEmptyArrayStorage;
LABEL_45:

    v39 = v53;
    if ((v53 & 0x10) != 0)
    {
      if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
      {
        if (!sub_100101DA4())
        {
          goto LABEL_91;
        }
      }

      else if (!*(v38 + 2))
      {
        goto LABEL_91;
      }
    }

    if ((v39 & 0x20) != 0)
    {
      v40 = sub_1000C8CD4();
      if (!v40)
      {
        goto LABEL_91;
      }

      sub_1000C8E8C(v40);
      v42 = v41;
    }

    if ((v39 & 0x40) == 0)
    {
      break;
    }

    if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
    {
      v28 = sub_100101DA4();
      if (!v28)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v28 = *(v38 + 2);
      if (!v28)
      {
        goto LABEL_91;
      }
    }

    v46 = 0;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v47 = sub_100101CA4();
      }

      else
      {
        if (v46 >= *(v38 + 2))
        {
          goto LABEL_84;
        }

        v47 = *&v38[v46 + 4];
      }

      v48 = v47;
      v49 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      type metadata accessor for DrawingAsset();
      v50 = swift_dynamicCastClass();

      if (v50)
      {
        goto LABEL_53;
      }

      ++v46;
      if (v49 == v28)
      {
        goto LABEL_91;
      }
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    ;
  }

LABEL_53:
  v44 = v53;
  if ((v53 & 0x80) != 0 && !*(v2 + OBJC_IVAR____TtC21JournalShareExtension14EntryViewModel_slimAsset))
  {
    goto LABEL_91;
  }

  if ((v53 & 0x100) == 0)
  {
    goto LABEL_59;
  }

  if ((v38 & 0x8000000000000000) == 0 && (v38 & 0x4000000000000000) == 0)
  {
    if (*(v38 + 2) == 1)
    {
      goto LABEL_59;
    }

LABEL_91:

    return 0;
  }

  if (sub_100101DA4() != 1)
  {
    goto LABEL_91;
  }

LABEL_59:
  if ((v44 & 0x200) == 0)
  {

    return 1;
  }

  if ((v38 & 0x8000000000000000) != 0 || (v38 & 0x4000000000000000) != 0)
  {
    v51 = sub_100101DA4();
  }

  else
  {
    v51 = *(v38 + 2);
  }

  if (v51)
  {
    return 0;
  }

  v52 = *(v2 + v56);
  if (v52 >> 62)
  {
    result = sub_100101DA4();
    if (!result)
    {
      return result;
    }

    return 1;
  }

  result = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_10006D86C()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_100101C64(19);
  v3 = [v0 entity];
  v4 = [v3 managedObjectClassName];

  if (v4)
  {
    v5 = sub_100100FD4();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  v13._countAndFlagsBits = v5;
  v13._object = v2;
  sub_1001010B4(v13);

  v14._countAndFlagsBits = 23328;
  v14._object = 0xE200000000000000;
  sub_1001010B4(v14);
  v7 = [v1 objectID];
  v8 = [v7 pl_shortURI];

  if (v8)
  {
    v9 = sub_100100FD4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v15._countAndFlagsBits = v9;
  v15._object = v11;
  sub_1001010B4(v15);

  v16._countAndFlagsBits = 0x7865746E6F63205DLL;
  v16._object = 0xEB00000000203A74;
  sub_1001010B4(v16);
  [v1 managedObjectContext];
  sub_100007210(&qword_10014E398);
  v17._countAndFlagsBits = sub_100101024();
  sub_1001010B4(v17);

  return 0;
}

uint64_t sub_10006DA7C()
{
  v0 = sub_10006EEB0();
  if (v1)
  {
    return 0;
  }

  if (v0 == 1)
  {
    if (qword_10014B670 != -1)
    {
      swift_once();
    }

    v3 = &qword_100158598;
    goto LABEL_11;
  }

  if (!v0)
  {
    if (qword_10014B668 != -1)
    {
      swift_once();
    }

    v3 = &qword_100158588;
LABEL_11:
    v4 = *v3;

    return v4;
  }

  if ((v0 - 2) > 0x1B)
  {
    return sub_10006F2B8();
  }

  else
  {
    return sub_10006EBF4();
  }
}

uint64_t sub_10006DB58(int a1, int a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v74 = a2;
  v87 = a1;
  v78 = sub_1000FF6E4();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000FF684();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v73[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000FF664();
  v93 = *(v8 - 8);
  v94 = v8;
  __chkstk_darwin(v8);
  v92 = &v73[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1000FF6B4();
  v89 = *(v10 - 8);
  v90 = v10;
  __chkstk_darwin(v10);
  v88 = &v73[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000FF9F4();
  __chkstk_darwin(v12 - 8);
  v85 = &v73[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_1000FF8B4();
  __chkstk_darwin(v14 - 8);
  v84 = &v73[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_1000FF3C4();
  __chkstk_darwin(v16 - 8);
  v83 = &v73[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_100007210(&qword_10014E3D0);
  __chkstk_darwin(v18 - 8);
  v20 = &v73[-v19];
  v21 = sub_100007210(&qword_10014E3D8);
  __chkstk_darwin(v21 - 8);
  v23 = &v73[-v22];
  v24 = sub_1000FF714();
  v96 = *(v24 - 8);
  v97 = v24;
  v25 = __chkstk_darwin(v24);
  v75 = &v73[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = __chkstk_darwin(v25);
  v82 = &v73[-v28];
  v29 = __chkstk_darwin(v27);
  v91 = &v73[-v30];
  v31 = __chkstk_darwin(v29);
  v95 = &v73[-v32];
  __chkstk_darwin(v31);
  v34 = &v73[-v33];
  v35 = sub_1000FF9B4();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v73[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_1000FF9C4();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v73[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000FF9A4();
  (*(v36 + 104))(v38, enum case for Calendar.Component.year(_:), v35);
  v98 = v4;
  v43 = sub_1000FF994();
  v44 = v35;
  v45 = v34;
  (*(v36 + 8))(v38, v44);
  (*(v40 + 8))(v42, v39);
  v46 = sub_1000FF604();
  (*(*(v46 - 8) + 56))(v23, 1, 1, v46);
  v47 = sub_1000FF5D4();
  (*(*(v47 - 8) + 56))(v20, 1, 1, v47);
  sub_1000FF394();
  sub_1000FF884();
  sub_1000FF934();
  sub_1000FF9D4();
  sub_1000FF624();
  if (!v87)
  {
    v55 = v75;
    if (!v43)
    {
      goto LABEL_13;
    }

    v56 = v76;
    sub_1000FF6D4();
    sub_1000FF704();
    (*(v77 + 8))(v56, v78);
    v57 = v88;
    sub_1000FF694();
    v58 = v82;
    sub_1000FF644();
    (*(v89 + 8))(v57, v90);
    v52 = *(v96 + 8);
    v54 = v97;
    v52(v55, v97);
    v59 = v92;
    sub_1000FF654();
    v60 = v91;
    sub_1000FF614();
    (*(v93 + 8))(v59, v94);
    v61 = v58;
LABEL_10:
    v52(v61, v54);
    v65 = v79;
    sub_1000FF674();
    v51 = v95;
    sub_1000FF634();
    v67 = v80;
    v66 = v81;
LABEL_15:
    (*(v67 + 8))(v65, v66);
    v52(v60, v54);
    goto LABEL_16;
  }

  if (v87 != 1)
  {
    if (!v43)
    {
      if (v74)
      {
        v68 = v76;
        sub_1000FF6C4();
LABEL_14:
        v69 = v82;
        sub_1000FF704();
        (*(v77 + 8))(v68, v78);
        v70 = v88;
        sub_1000FF694();
        v60 = v91;
        sub_1000FF644();
        (*(v89 + 8))(v70, v90);
        v52 = *(v96 + 8);
        v71 = v69;
        v54 = v97;
        v52(v71, v97);
        v65 = v92;
        sub_1000FF654();
        v51 = v95;
        sub_1000FF614();
        v67 = v93;
        v66 = v94;
        goto LABEL_15;
      }

LABEL_13:
      v68 = v76;
      sub_1000FF6D4();
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  if (v43)
  {
LABEL_9:
    v62 = v88;
    sub_1000FF694();
    v63 = v82;
    sub_1000FF644();
    (*(v89 + 8))(v62, v90);
    v64 = v92;
    sub_1000FF654();
    v60 = v91;
    sub_1000FF614();
    (*(v93 + 8))(v64, v94);
    v52 = *(v96 + 8);
    v61 = v63;
    v54 = v97;
    goto LABEL_10;
  }

  if ((v74 & 1) == 0)
  {
    goto LABEL_13;
  }

  v48 = v88;
  sub_1000FF694();
  v49 = v91;
  sub_1000FF644();
  (*(v89 + 8))(v48, v90);
  v50 = v92;
  sub_1000FF654();
  v51 = v95;
  sub_1000FF614();
  (*(v93 + 8))(v50, v94);
  v52 = *(v96 + 8);
  v53 = v49;
  v54 = v97;
  v52(v53, v97);
LABEL_16:
  sub_100071BFC(&qword_10014E3B8, &type metadata accessor for Date.FormatStyle);
  sub_1000FF7E4();
  v52(v51, v54);
  v52(v45, v54);
  return v99;
}

size_t sub_10006E62C(size_t a1, uint64_t a2, char a3)
{
  v6 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000FF9C4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000FF804();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v47 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  if ((a3 & 1) == 0 && (*(a1 + 16) < 2uLL || *(a2 + 16) < 2uLL))
  {
    return 0;
  }

  v46 = &v41 - v17;
  v48 = a1;

  sub_10006FEE8(v18);

  sub_1000700B4(&v48);

  v19 = *(v48 + 16);
  if (!v19)
  {

    return 0;
  }

  v43 = v6;
  v44 = v14;
  v42 = v9;
  v21 = *(v14 + 16);
  v20 = v14 + 16;
  v22 = v48 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
  v23 = v46;
  v21(v46, v22, v13);
  v24 = v22 + *(v20 + 56) * (v19 - 1);
  v25 = v47;
  v45 = v13;
  v21(v47, v24, v13);

  sub_1000FF9A4();
  LOBYTE(v22) = sub_1000FF974();
  (*(v10 + 8))(v12, v42);
  if (v22)
  {
    sub_1000FF5B4();
    sub_1000FF394();
    sub_1000FF884();
    sub_1000FF934();
    sub_1000FF9D4();
    sub_1000FF7C4();
    sub_100071BFC(&qword_10014E3A0, _s23YearAdaptiveFormatStyleVMa);
    sub_1000FF7E4();
    sub_10007015C(v8);
    v26 = v45;
    v27 = *(v44 + 8);
    v27(v25, v45);
    v27(v23, v26);
    return v48;
  }

  else
  {
    if (qword_10014B650 != -1)
    {
      swift_once();
    }

    v42 = qword_100158558;
    sub_100007210(&qword_10014CE40);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10010C1F0;
    sub_1000FF5B4();
    sub_1000FF394();
    sub_1000FF884();
    sub_1000FF934();
    sub_1000FF9D4();
    sub_1000FF7C4();
    sub_100071BFC(&qword_10014E3A0, _s23YearAdaptiveFormatStyleVMa);
    v30 = v46;
    sub_1000FF7E4();
    sub_10007015C(v8);
    v31 = v48;
    v32 = v49;
    *(v29 + 56) = &type metadata for String;
    v33 = sub_1000508D8();
    *(v29 + 64) = v33;
    *(v29 + 32) = v31;
    *(v29 + 40) = v32;
    sub_1000FF5B4();
    sub_1000FF394();
    sub_1000FF884();
    sub_1000FF934();
    sub_1000FF9D4();
    sub_1000FF7C4();
    v34 = v47;
    sub_1000FF7E4();
    sub_10007015C(v8);
    v35 = v48;
    v36 = v49;
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v33;
    *(v29 + 72) = v35;
    *(v29 + 80) = v36;
    v37 = sub_100100FA4();

    v38 = *(v44 + 8);
    v39 = v34;
    v40 = v45;
    v38(v39, v45);
    v38(v30, v40);
    return v37;
  }
}

uint64_t sub_10006EBF4()
{
  v0 = sub_1000FF9C4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000FF804();
  v4 = *(v24 - 8);
  v5 = __chkstk_darwin(v24);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v23 - v9;
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = [objc_allocWithZone(NSRelativeDateTimeFormatter) init];
  [v13 setUnitsStyle:0];
  [v13 setDateTimeStyle:0];
  sub_1000FF9A4();
  sub_1000FF8E4();
  v14 = *(v1 + 8);
  v14(v3, v0);
  sub_1000FF9A4();
  sub_1000FF7F4();
  sub_1000FF8E4();
  v15 = *(v4 + 8);
  v16 = v7;
  v17 = v24;
  v15(v16, v24);
  v14(v3, v0);
  isa = sub_1000FF754().super.isa;
  v19 = sub_1000FF754().super.isa;
  v20 = [v13 localizedStringForDate:isa relativeToDate:v19];

  v21 = sub_100100FD4();
  v15(v10, v17);
  v15(v12, v17);
  return v21;
}

uint64_t sub_10006EEB0()
{
  v0 = sub_1000FF264();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000FF9C4();
  v28 = v2;
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000FF804();
  v30 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  __chkstk_darwin(v11);
  v15 = &v26 - v14;
  sub_1000FF9A4();
  sub_1000FF8E4();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v27 = v16;
  sub_1000FF9A4();
  sub_1000FF7F4();
  sub_1000FF8E4();
  v29 = *(v7 + 8);
  v29(v10, v6);
  v16(v5, v2);
  sub_1000FF9A4();
  sub_100007210(&qword_10014CE90);
  v17 = sub_1000FF9B4();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10010BC80;
  (*(v18 + 104))(v20 + v19, enum case for Calendar.Component.day(_:), v17);
  sub_100032A08(v20);
  swift_setDeallocating();
  (*(v18 + 8))(v20 + v19, v17);
  swift_deallocClassInstance();
  v21 = v31;
  sub_1000FF904();

  v27(v5, v28);
  v22 = sub_1000FF234();
  (*(v32 + 8))(v21, v33);
  v24 = v29;
  v23 = v30;
  v29(v13, v30);
  v24(v15, v23);
  return v22;
}

uint64_t sub_10006F2B8()
{
  v73 = sub_1000FF664();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v65 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1000FF6B4();
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1000FF6E4();
  v75 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1000FF714();
  v74 = *(v80 - 8);
  v3 = __chkstk_darwin(v80);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v67 = &v65 - v6;
  v7 = __chkstk_darwin(v5);
  v77 = &v65 - v8;
  __chkstk_darwin(v7);
  v79 = &v65 - v9;
  v88 = sub_1000FF914();
  v84 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000FF924();
  v81 = *(v11 - 8);
  v12 = v81;
  __chkstk_darwin(v11);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000FF8F4();
  v16 = *(v15 - 8);
  v82 = v15;
  v83 = v16;
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000FF9C4();
  v85 = *(v19 - 8);
  v86 = v19;
  __chkstk_darwin(v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100007210(&unk_10014D640);
  __chkstk_darwin(v22 - 8);
  v24 = &v65 - v23;
  v90 = sub_1000FF804();
  v25 = *(v90 - 8);
  v26 = __chkstk_darwin(v90);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v89 = &v65 - v29;
  sub_1000FF9A4();
  sub_1000FF7C4();
  (*(v16 + 104))(v18, enum case for Calendar.MatchingPolicy.nextTime(_:), v15);
  v30 = *(v12 + 104);
  v31 = v14;
  v32 = v11;
  v30(v14, enum case for Calendar.RepeatedTimePolicy.first(_:), v11);
  v33 = v84;
  v35 = v87;
  v34 = v88;
  (*(v84 + 104))(v87, enum case for Calendar.SearchDirection.forward(_:), v88);
  sub_1000FF954();
  (*(v33 + 8))(v35, v34);
  (*(v81 + 8))(v31, v32);
  (*(v83 + 8))(v18, v82);
  v36 = *(v25 + 8);
  v37 = v28;
  v38 = v90;
  v36(v37, v90);
  v39 = v21;
  v40 = v24;
  (*(v85 + 8))(v39, v86);
  result = (*(v25 + 48))(v24, 1, v38);
  if (result == 1)
  {
    goto LABEL_12;
  }

  v42 = v89;
  (*(v25 + 32))(v89, v40, v38);
  sub_1000FF794();
  v44 = v43;
  result = sub_1000FF794();
  v46 = v44 - v45;
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v46 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v47 = (v75 + 8);
  v48 = (v74 + 8);
  if (v46 > 604799)
  {
    v56 = v66;
    sub_1000FF154();
    v57 = v76;
    sub_1000FF6C4();
    v58 = v67;
    sub_1000FF704();
    (*v47)(v57, v78);
    v59 = *v48;
    v60 = v80;
    (*v48)(v56, v80);
    v61 = v68;
    sub_1000FF694();
    v62 = v77;
    sub_1000FF644();
    (*(v69 + 8))(v61, v70);
    v59(v58, v60);
    v63 = v71;
    sub_1000FF654();
    v64 = v79;
    sub_1000FF614();
    (*(v72 + 8))(v63, v73);
    v59(v62, v60);
    sub_100071BFC(&qword_10014E3B8, &type metadata accessor for Date.FormatStyle);
    sub_1000FF7E4();
    v59(v64, v60);
    v54 = v89;
    v55 = v90;
  }

  else
  {
    v49 = v77;
    sub_1000FF154();
    v50 = v76;
    sub_1000FF6D4();
    v51 = v79;
    sub_1000FF704();
    (*v47)(v50, v78);
    v52 = *v48;
    v53 = v80;
    (*v48)(v49, v80);
    sub_100071BFC(&qword_10014E3B8, &type metadata accessor for Date.FormatStyle);
    sub_1000FF7E4();
    v52(v51, v53);
    v54 = v42;
    v55 = v38;
  }

  v36(v54, v55);
  return v91;
}

uint64_t sub_10006FCFC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_100101DA4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_100101DA4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_100070014(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10006FDF4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10000F02C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10006FEE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10000F37C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (*(v3 + 24) >> 1) - *(v3 + 16);
  result = sub_1000FF804();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100070014(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100101DA4();
LABEL_9:
  result = sub_100101CB4();
  *v1 = result;
  return result;
}

Swift::Int sub_1000700B4(size_t *a1)
{
  v2 = *(sub_1000FF804() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100071BAC(v3);
  }

  v4 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1000701B8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_10007015C(uint64_t a1)
{
  v2 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1000701B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_100101E34(v2);
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
        sub_1000FF804();
        v6 = sub_100101214();
        *(v6 + 2) = v5;
      }

      v7 = *(sub_1000FF804() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100070568(v8, v9, a1, v4);
      v6[2] = 0.0;
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
    return sub_1000702E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000702E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1000FF804();
  v9 = __chkstk_darwin(v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v30 - v12;
  result = __chkstk_darwin(v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_1000FF774();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100070568(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_1000FF804();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v132 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v138 = &v117 - v16;
  result = __chkstk_darwin(v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_100071584(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_100070F54(*v10 + a3[9] * v114, *v10 + a3[9] * *(result + 16 * (a4 - 1) + 32), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_100071584(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[2 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_1000714F8(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_1000FF774();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_1000FF774() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_10000F368(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_10000F368((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[2 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[2 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[2 * v56 + 4];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[2 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[2 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
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

        v94 = v21;
        v95 = *&v21[2 * a4 + 4];
        v5 = *&v21[2 * v56 + 5];
        sub_100070F54(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[2 * v56 + 4], *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_100071584(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[2 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_1000714F8(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[2 * v5 + 4];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[2 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[2 * v56 + 4];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_1000FF774();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
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

uint64_t sub_100070F54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = sub_1000FF804();
  v8 = *(v57 - 8);
  v9 = __chkstk_darwin(v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = (a2 - a1) / v14;
  v60 = a1;
  v59 = a4;
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

    v29 = a4 + v18;
    if (v18 < 1)
    {
      v33 = a4 + v18;
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = a4 + v18;
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = a2 + v30;
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = v31 + v30;
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_1000FF774();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
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

    v53 = a4 + v17;
    v58 = a4 + v17;
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = v8 + 16;
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_1000FF774();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = v49 + v23;
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = v49 + a4;
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 += v27;
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_1000715B0(&v60, &v59, &v58, &type metadata accessor for Date);
  return 1;
}

uint64_t sub_1000714F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100071584(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000715B0(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100071698(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_100007210(&qword_10014C540);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

double *sub_100071788(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_100007210(&qword_10014C438);
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

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_10007188C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100101DA4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100101DA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100071C90(&qword_10014E3C8, &qword_10014E3C0);
          for (i = 0; i != v6; ++i)
          {
            sub_100007210(&qword_10014E3C0);
            v9 = sub_1000F04B0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100071C44();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100071A1C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100101DA4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100101DA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100071C90(&qword_10014E3B0, &qword_10014E3A8);
          for (i = 0; i != v6; ++i)
          {
            sub_100007210(&qword_10014E3A8);
            v9 = sub_1000F0530(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Asset();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100071BFC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100071C44()
{
  result = qword_10014CC08;
  if (!qword_10014CC08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014CC08);
  }

  return result;
}

uint64_t sub_100071C90(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000F19C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100071CE4()
{

  *(v0 + OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_livePhotoAttachments) = sub_1000726F0(v1);
}

uint64_t sub_100071D34()
{
}

id sub_100071D74()
{
  if ((v0[OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_pendingLivePhotoRequest + 4] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtC21JournalShareExtension14LivePhotoAsset_pendingLivePhotoRequest];
    [objc_opt_self() cancelLivePhotoRequestWithRequestID:*v1];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LivePhotoAsset();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for LivePhotoAsset()
{
  result = qword_10014E410;
  if (!qword_10014E410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100071F6C()
{

  return swift_deallocClassInstance();
}

id sub_100071FF8()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100100F84();
  __chkstk_darwin(v4 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007210(&unk_10014D640);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = sub_100100A04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007210(&qword_10014C2B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1001004B4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  sub_10000DFEC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000FFB4(v17, &qword_10014C2B8);
    return 0;
  }

  v49 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_1001004A4();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v48 = v3;
  sub_1001009F4();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_100100944().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_1000800A4(v24, v25, 0, 0);

  v29 = v52;
  sub_100100494();
  v30 = v29;
  v31 = sub_1000FF804();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v50 + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v34)
    {
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        v37 = v49;
        sub_1000FFBA4();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v49;
      }

      v30 = v52;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    (*(v32 + 56))(v37, v38, 1, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_10000FFB4(v30, &unk_10014D640);
    }
  }

  else
  {
    v37 = v49;
    (*(v32 + 32))(v49, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  sub_100100F14();
  sub_1000FF8A4();
  v39 = sub_100101004();
  v41 = v40;
  sub_100007210(&qword_10014C220);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_10010BC80;
  v43 = sub_100081080(v39, v41, v37);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_1001011C4().super.isa;

  [v28 setAlternateNames:v46];

  sub_10000FFB4(v37, &unk_10014D640);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_1000726AC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001004B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

size_t sub_1000726F0(unint64_t a1)
{
  v2 = type metadata accessor for AssetAttachment.AssetType(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:

    v11 = _swiftEmptyArrayStorage;
LABEL_17:
    type metadata accessor for LivePhotoAsset.LivePhotoAttachments();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = 0;
    return result;
  }

  v9 = sub_100101DA4();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = _swiftEmptyArrayStorage;
  result = sub_100016D74(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = sub_100101CA4();
        sub_100072980(v13 + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v8);
        swift_unknownObjectRelease();
        v20 = v11;
        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          sub_100016D74(v14 > 1, v15 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v15 + 1;
        sub_10001931C(v8, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15);
      }
    }

    else
    {
      v16 = 32;
      do
      {
        sub_100072980(*(a1 + v16) + OBJC_IVAR____TtC21JournalShareExtension15AssetAttachment_assetType, v6);
        v20 = v11;
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          sub_100016D74(v17 > 1, v18 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v18 + 1;
        sub_10001931C(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
        v16 += 8;
        --v9;
      }

      while (v9);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_100072980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int TranscriptionState.hashValue.getter(char a1)
{
  sub_100101F84();
  sub_100101F94(a1 & 1);
  return sub_100101FE4();
}

unint64_t sub_100072A68()
{
  result = qword_10014E508;
  if (!qword_10014E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E508);
  }

  return result;
}

uint64_t sub_100072ACC()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100072B20()
{
  v0 = sub_1001001E4();
  sub_100003CD4(v0, qword_100158698);
  sub_100003D38(v0, qword_100158698);
  return sub_1001001D4();
}

NSString sub_100072B6C()
{
  result = sub_100100F94();
  qword_1001586B0 = result;
  return result;
}

char *sub_100072BA4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_assetContainerView;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v4[OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_hasOnlyOneImage] = 0;
  *&v4[OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_journalAsset] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for MosaicCell();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_assetContainerView;
  v12 = *&v10[OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_assetContainerView];
  v13 = v10;
  [v12 setClipsToBounds:1];
  v14 = [v13 contentView];
  [v14 addSubview:*&v10[v11]];

  v15 = *&v10[v11];
  sub_100095E58(2.0);

  return v13;
}

void sub_100072D9C(void *a1)
{
  type metadata accessor for MosaicLayout.Attributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 16);
    v11 = *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii);
    v12 = v4;
    v5 = *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 48);
    v13 = *(v3 + OBJC_IVAR____TtCC21JournalShareExtension12MosaicLayout10Attributes_cornerRadii + 32);
    v14 = v5;
    v6 = *(v1 + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_assetContainerView);
    v7 = a1;
    v8 = [v6 layer];
    v10[0] = v11;
    v10[1] = v12;
    v10[2] = v13;
    v10[3] = v14;
    [v8 setCornerRadii:v10];

    v9 = [v6 layer];
    [v9 setCornerCurve:kCACornerCurveContinuous];
  }
}

void sub_100072EF8()
{
  v1 = sub_100007210(&qword_10014CBD8);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = *&v0[OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_assetContainerView];
  v5 = [v4 subviews];
  sub_100073F54();
  v6 = sub_1001011D4();

  if (v6 >> 62)
  {
    v7 = sub_100101DA4();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_100101CA4();
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 removeFromSuperview];
  }

LABEL_10:

  v11 = *&v0[OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_journalAsset];
  if (!v11)
  {
    return;
  }

  type metadata accessor for PhotoAsset();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = v12;
    v14 = sub_100101324();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_100101304();
    v15 = v11;
    v16 = v0;
    v17 = sub_1001012F4();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = &protocol witness table for MainActor;
    v18[4] = v16;
    v18[5] = v13;
    sub_1000D73F8(0, 0, v3, &unk_10010DB18, v18);

    return;
  }

  type metadata accessor for VideoAsset();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = v19;
    type metadata accessor for VideoAssetGridView();
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = v11;
    v23 = [v21 init];
    v24 = *&v23[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset];
    *&v23[OBJC_IVAR____TtC21JournalShareExtension14VideoAssetView_videoAsset] = v20;
    v25 = v22;
    v26 = v23;
    sub_10002A2B8(v24);

    v27 = v26[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType];
    v26[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_sizeType] = 1;
    v28 = OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_hasCalledSizeTypeUpdated;
    if (v26[OBJC_IVAR____TtC21JournalShareExtension16JournalAssetView_hasCalledSizeTypeUpdated] == 1)
    {
      if (v27 <= 1 && v27)
      {

LABEL_25:
        sub_10002CA98();
        [v4 addSubview:v26];
        sub_100095E58(0.0);

        return;
      }

      v30 = sub_100101E84();
      v31 = v26;

      if (v30)
      {

        goto LABEL_25;
      }
    }

    else
    {
      v29 = v26;
    }

    sub_1000D4F90();
    v26[v28] = 1;

    goto LABEL_25;
  }
}

uint64_t sub_10007338C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = sub_100101304();
  v5[4] = sub_1001012F4();
  v7 = swift_task_alloc();
  v5[5] = v7;
  *v7 = v5;
  v7[1] = sub_10007344C;

  return sub_100073684(a5);
}

uint64_t sub_10007344C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_100101284();

  return _swift_task_switch(sub_100073590, v3, v2);
}

uint64_t sub_100073590()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = [objc_allocWithZone(type metadata accessor for CanvasPhotoView()) initWithImage:v1];
  v4 = v3;
  if (*(v2 + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_hasOnlyOneImage) == 1)
  {
    [v3 setContentMode:1];
  }

  [*(v0[2] + OBJC_IVAR____TtC21JournalShareExtension10MosaicCell_assetContainerView) addSubview:v4];
  sub_100095E58(0.0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100073684(uint64_t a1)
{
  v2[13] = a1;
  v2[14] = v1;
  v3 = sub_100100B74();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v4 = sub_100100B44();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  sub_100007210(&qword_10014EBD0);
  v2[22] = swift_task_alloc();
  v5 = sub_1000FF514();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();
  sub_100101304();
  v2[26] = sub_1001012F4();
  v7 = sub_100101284();
  v2[27] = v7;
  v2[28] = v6;

  return _swift_task_switch(sub_100073874, v7, v6);
}

uint64_t sub_100073874()
{
  v1 = v0[13];
  v2 = OBJC_IVAR____TtC21JournalShareExtension5Asset_sourceAttachments;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_12:

    goto LABEL_13;
  }

  v4 = sub_100101DA4();
  if (!v4)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {

    v5 = sub_100101CA4();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return UIImageReader.image(contentsOf:)(v4);
    }

    v5 = *(v3 + 32);
  }

  v0[29] = v5;
  v6 = v0[23];
  v7 = v0[24];
  v8 = v0[22];
  sub_1000C1180(v8);
  if ((*(v7 + 48))(v8, 1, v6) != 1)
  {
    v10 = v0[20];
    v11 = v0[21];
    v12 = v0[19];
    v27 = v0[18];
    v13 = v0[14];
    (*(v0[24] + 32))(v0[25], v0[22], v0[23]);
    sub_100100B34();
    sub_100100B24();
    [v13 bounds];
    sub_100100B14();
    v14 = [v13 traitCollection];
    [v14 displayScale];
    v16 = v15;

    v17 = sub_100100B04();
    *v18 = v16 * *v18;
    v17(v0 + 2, 0);
    v19 = [v13 traitCollection];
    [v19 displayScale];
    v21 = v20;

    v22 = sub_100100B04();
    *(v23 + 8) = v21 * *(v23 + 8);
    v22(v0 + 6, 0);
    (*(v12 + 16))(v10, v11, v27);
    sub_100100B54();
    v24 = swift_task_alloc();
    v0[30] = v24;
    *v24 = v0;
    v24[1] = sub_100073BF8;
    v4 = v0[25];

    return UIImageReader.image(contentsOf:)(v4);
  }

  v9 = v0[22];

  sub_100073EEC(v9);
LABEL_13:

  v25 = v0[1];

  return v25(0);
}

uint64_t sub_100073BF8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 248) = a1;

  v3 = *(v2 + 224);
  v4 = *(v2 + 216);

  return _swift_task_switch(sub_100073D20, v4, v3);
}

uint64_t sub_100073D20()
{
  v12 = v0[25];
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];

  (*(v6 + 8))(v7, v8);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v12, v1);
  v9 = v0[31];

  v10 = v0[1];

  return v10(v9);
}

id sub_100073E48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MosaicCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100073EEC(uint64_t a1)
{
  v2 = sub_100007210(&qword_10014EBD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100073F54()
{
  result = qword_10014CFB0;
  if (!qword_10014CFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014CFB0);
  }

  return result;
}

uint64_t sub_100073FA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100073FE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100008030;

  return sub_10007338C(a1, v4, v5, v7, v6);
}

uint64_t sub_1000740CC(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 16) = a4;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100101284();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;

  return _swift_task_switch(sub_100074160, v5, v7);
}

uint64_t sub_100074160()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_1000FF474(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];
  *(v0 + 6) = v6;

  v7 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v6];
  *(v0 + 7) = v7;
  [v7 setAppliesPreferredTrackTransform:1];
  [v7 setMaximumSize:{v1, v1}];
  [v7 setDynamicRangePolicy:AVAssetImageGeneratorDynamicRangePolicyForceSDR];
  v8 = sub_100101934(0.0, 60);
  v10 = v9;
  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 8) = v13;
  *v13 = v0;
  v13[1] = sub_1000742D0;

  return AVAssetImageGenerator.image(at:)(v8, v10, v12);
}

uint64_t sub_1000742D0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_100074494;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_1000743F8;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1000743F8()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = [objc_allocWithZone(UIImage) initWithCGImage:v1];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100074494()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000744FC(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_100101FC4(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_100101FC4(*&v3);
}

Swift::Int sub_10007454C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100101F84();
  sub_1000744FC(v1, v2);
  return sub_100101FE4();
}

Swift::Int sub_1000745A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100101F84();
  sub_1000744FC(v1, v2);
  return sub_100101FE4();
}

unint64_t sub_100074638()
{
  result = qword_10014E690;
  if (!qword_10014E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E690);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000747E0()
{
  result = qword_10014E698;
  if (!qword_10014E698)
  {
    sub_10000F19C(&qword_10014E6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E698);
  }

  return result;
}

uint64_t sub_100074844(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE400000000000000;
  v5 = 1802465122;
  v6 = 0xE200000000000000;
  v7 = 30324;
  if (a1 != 4)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001001044E0;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x74736163646F70;
  if (a1 != 1)
  {
    v8 = 0x656C6369747261;
  }

  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v8 = 0x636973756DLL;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1802465122)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xE200000000000000;
      if (v9 != 30324)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0x80000001001044E0;
      if (v9 != 0xD000000000000010)
      {
LABEL_34:
        v12 = sub_100101E84();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    v11 = 0xE700000000000000;
    if (a2 == 1)
    {
      if (v9 != 0x74736163646F70)
      {
        goto LABEL_34;
      }
    }

    else if (v9 != 0x656C6369747261)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
    if (v9 != 0x636973756DLL)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

uint64_t sub_1000749F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = 0x6154656772614C78;
  v4 = a1;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (a1 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a1 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (a1 > 5u)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0x69576D756964656DLL;
  v10 = 0xE500000000000000;
  if (a1 == 2)
  {
    v10 = 0xEA00000000006564;
  }

  else
  {
    v9 = 0x656772616CLL;
  }

  v11 = 0xE600000000000000;
  v12 = 0x656772614C78;
  if (!a1)
  {
    v12 = 0x6154656772614C78;
    v11 = 0xEA00000000006C6CLL;
  }

  if (a1 <= 1u)
  {
    v9 = v12;
    v10 = v11;
  }

  if (a1 <= 3u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v4 <= 3)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0xE500000000000000;
        if (v13 != 0x6C6C616D73)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v2 = 0xEA00000000006E65;
        if (v13 != 0x657263536C6C7566)
        {
          goto LABEL_43;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x6D756964656DLL)
      {
        goto LABEL_43;
      }
    }

    else if (v13 != 0x61546D756964656DLL)
    {
      goto LABEL_43;
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0xEA00000000006564;
        if (v13 != 0x69576D756964656DLL)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }

      v2 = 0xE500000000000000;
      v3 = 0x656772616CLL;
    }

    else if (a2)
    {
      v2 = 0xE600000000000000;
      if (v13 != 0x656772614C78)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    if (v13 != v3)
    {
LABEL_43:
      v15 = sub_100101E84();
      goto LABEL_44;
    }
  }

LABEL_40:
  if (v14 != v2)
  {
    goto LABEL_43;
  }

  v15 = 1;
LABEL_44:

  return v15 & 1;
}

uint64_t sub_100074C38()
{
  sub_1001007D4();
  sub_1000237E8();
  sub_100101174();
  sub_100101174();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_100101E84();
  }

  return v1 & 1;
}

Swift::Int sub_100074CE8()
{
  sub_100101F84();
  sub_100101074();

  return sub_100101FE4();
}

uint64_t sub_100074DDC()
{
  sub_100101074();
}

Swift::Int sub_100074EFC()
{
  sub_100101F84();
  sub_100101074();

  return sub_100101FE4();
}

Swift::Int sub_100075030()
{
  sub_100101F84();
  sub_100101074();

  return sub_100101FE4();
}

uint64_t sub_100075120()
{
  v0 = sub_1000FF8B4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_100100F84();
  __chkstk_darwin(v1 - 8);
  sub_100100F14();
  sub_1000FF8A4();
  return sub_100101004();
}

uint64_t sub_10007537C()
{
  sub_100101074();
}

uint64_t sub_100075460@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000755A4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100075490(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973756DLL;
  v5 = 0xE400000000000000;
  v6 = 1802465122;
  v7 = 0xE200000000000000;
  v8 = 30324;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x80000001001044E0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x74736163646F70;
  if (v2 != 1)
  {
    v9 = 0x656C6369747261;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_100075550()
{
  result = qword_10014E6A8;
  if (!qword_10014E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E6A8);
  }

  return result;
}

uint64_t sub_1000755A4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100134538;
  v6._object = a2;
  v4 = sub_100101E04(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

id sub_100075600()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PodcastAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PodcastAsset()
{
  result = qword_10014E6D8;
  if (!qword_10014E6D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_100075708()
{
  v1 = sub_1000FF8B4();
  __chkstk_darwin(v1 - 8);
  v54[1] = v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100100F84();
  __chkstk_darwin(v3 - 8);
  v4 = sub_100007210(&unk_10014D640);
  __chkstk_darwin(v4 - 8);
  v55 = v54 - v5;
  v6 = sub_100007210(&qword_10014EBD0);
  __chkstk_darwin(v6 - 8);
  v8 = v54 - v7;
  v9 = sub_100100A04();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007210(&qword_10014C2E0);
  __chkstk_darwin(v13 - 8);
  v15 = v54 - v14;
  v16 = sub_100100114();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54[0] = v0;
  sub_10000DB6C(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000FFB4(v15, &qword_10014C2E0);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    sub_100100934();
    v21 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = sub_100100944().super.isa;
    v20 = [v21 initWithContentType:isa];

    (*(v10 + 8))(v12, v9);
    sub_1001000E4();
    if (v23)
    {
      v24 = sub_100100F94();
    }

    else
    {
      v24 = 0;
    }

    [v20 setDisplayName:v24];

    sub_100100104();
    v25 = sub_1000FF514();
    v26 = *(v25 - 8);
    v28 = 0;
    if ((*(v26 + 48))(v8, 1, v25) != 1)
    {
      sub_1000FF474(v27);
      v28 = v29;
      (*(v26 + 8))(v8, v25);
    }

    [v20 setThumbnailURL:v28];

    sub_1001000F4();
    if (v30)
    {
      v31 = sub_100100F94();
    }

    else
    {
      v31 = 0;
    }

    v32 = v55;
    [v20 setContentDescription:v31];

    v33 = sub_1001000F4();
    if (v34)
    {
      v35 = v33;
      v36 = v34;
      sub_100007210(&qword_10014C220);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_10010BC80;
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v38 = sub_1001011C4().super.isa;

      [v20 setAuthorNames:v38];
    }

    v39 = *(v54[0] + OBJC_IVAR____TtC21JournalShareExtension5Asset_assetMO);
    if (v39 && (v40 = [v39 entry]) != 0)
    {
      v41 = v40;
      sub_1000FFBA4();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v43 = sub_1000FF804();
    (*(*(v43 - 8) + 56))(v32, v42, 1, v43);
    sub_100100F14();
    sub_1000FF8A4();
    v44 = sub_100101004();
    v45 = v32;
    v47 = v46;
    sub_100007210(&qword_10014C220);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10010BC80;
    v49 = sub_100081080(v44, v47, v45);
    v51 = v50;

    *(v48 + 32) = v49;
    *(v48 + 40) = v51;
    v52 = sub_1001011C4().super.isa;

    [v20 setAlternateNames:v52];

    sub_10000FFB4(v45, &unk_10014D640);
    (*(v17 + 8))(v19, v16);
  }

  return v20;
}

uint64_t sub_100075E4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100100114();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100075E90()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014E728);
  sub_100003D38(v0, qword_10014E728);
  return sub_100100AD4();
}

uint64_t sub_100075F10(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007210(&qword_10014C3E0);
  v3[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_100101284();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[6] = v5;
  v3[7] = v7;

  return _swift_task_switch(sub_100075FEC, v5, v7);
}

uint64_t sub_100075FEC()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_100076084;
  v2 = v0[3];
  v3 = v0[2];

  return sub_1000F1FC0(v3, v2);
}

uint64_t sub_100076084(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1000761AC, v4, v3);
}

uint64_t sub_1000761AC()
{
  v1 = v0[9];
  if (v1)
  {
LABEL_13:

    v16 = v0[1];

    return v16(v1);
  }

  v2 = v0[5];
  sub_10007747C(v0[4] + qword_1001586C0, v2);
  v3 = sub_100100384();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_10000FFB4(v0[5], &qword_10014C3E0);
LABEL_8:
    if (qword_10014B720 != -1)
    {
      swift_once();
    }

    v12 = sub_100100AE4();
    sub_100003D38(v12, qword_10014E728);
    v13 = sub_100100AC4();
    v14 = sub_1001015B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "no visits data", v15, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_100100344();
  v0[10] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100076418;
  v9 = v0[3];
  v10 = v0[2];

  return sub_100076984(v10, v9, v7);
}

uint64_t sub_100076418(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_100076564, v4, v3);
}

uint64_t sub_100076564()
{
  if (*(v0 + 96))
  {
    v1 = *(*(v0 + 32) + qword_100158A80);
    *(v0 + 120) = v1;
    if (sub_100079B10(v1))
    {
      sub_10006D19C();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_1000766C8;
      v8 = *(v0 + 16);

      return sub_100079B14(v8, v3 * v6);
    }

    v10 = *(v0 + 96);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1000766C8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_1000767F0, v4, v3);
}

uint64_t sub_1000767F0()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (sub_1000797E0(*(v0 + 120)))
    {
      if (qword_10014B840 != -1)
      {
        swift_once();
      }

      sub_1000F3B9C(v1, *(*(v0 + 32) + qword_100151300), *(*(v0 + 32) + qword_100151300 + 8));
    }
  }

  else
  {
    if (qword_10014B720 != -1)
    {
      swift_once();
    }

    v2 = sub_100100AE4();
    sub_100003D38(v2, qword_10014E728);
    v1 = sub_100100AC4();
    v3 = sub_1001015B4();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, v3, "error creating thumbnail from video preview image", v4, 2u);
    }
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_100076984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  sub_100007210(&qword_10014C3E0);
  v4[21] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_100101284();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v4[22] = v6;
  v4[23] = v8;

  return _swift_task_switch(sub_100076A5C, v6, v8);
}

uint64_t sub_100076A5C()
{
  v1 = v0[20];
  v2 = sub_1000BF1A0(v0[19]);
  v0[24] = v2;
  v3 = *(v1 + qword_100158A90);
  v4 = *(v1 + qword_100158A80);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_100076B40;

  return sub_1000AFFC4(v2, v4, v3);
}

uint64_t sub_100076B40(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_100076C8C, v4, v3);
}

uint64_t sub_100076C8C()
{
  v1 = *(v0 + 168);
  sub_10007747C(*(v0 + 160) + qword_1001586C0, v1);
  v2 = sub_100100384();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_10000FFB4(*(v0 + 168), &qword_10014C3E0);
  }

  else
  {
    v4 = sub_100100354();
    v6 = *(v0 + 168);
    if (v5 >> 60 == 15)
    {
      (*(v3 + 8))(*(v0 + 168), v2);
    }

    else
    {
      v7 = v4;
      v8 = v5;
      sub_100077504();
      v9 = sub_100101A04();
      sub_1000064AC(v7, v8);
      (*(v3 + 8))(v6, v2);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = [*(v0 + 208) camera];
LABEL_7:
  v10 = *(v0 + 208);
  [v10 setCamera:v9];

  [v10 _setRendersInBackground:1];
  v11 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v10];
  *(v0 + 216) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100076F38;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_100007210(&qword_10014C7B0);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000994EC;
  *(v0 + 104) = &unk_1001372B0;
  *(v0 + 112) = v12;
  [v11 startWithCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100076F38()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_100077104;
  }

  else
  {
    v5 = sub_100077068;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100077068()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_100077104()
{
  swift_willThrow();
  if (qword_10014B720 != -1)
  {
    swift_once();
  }

  v1 = sub_100100AE4();
  sub_100003D38(v1, qword_10014E728);
  swift_errorRetain();
  v2 = sub_100100AC4();
  v3 = sub_1001015B4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_10000FFB4(v8, &unk_10014D660);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t type metadata accessor for MultiPinMapThumbnailCacheOperation()
{
  result = qword_10014E768;
  if (!qword_10014E768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007738C()
{
  sub_10007741C();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_10007741C()
{
  if (!qword_10014E778)
  {
    sub_100100384();
    v0 = sub_100101A94();
    if (!v1)
    {
      atomic_store(v0, &qword_10014E778);
    }
  }
}

uint64_t sub_10007747C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007210(&qword_10014C3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100077504()
{
  result = qword_10014E8B8;
  if (!qword_10014E8B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10014E8B8);
  }

  return result;
}

void sub_100077550()
{
  v0 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:12.0];
  v1 = sub_100100F94();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  qword_1001586C8 = v2;
}

id sub_10007760C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_circularPlatter;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_xImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_blurView;
  v12 = [objc_opt_self() effectWithStyle:8];
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v12];

  *&v4[v11] = v13;
  v14 = &v4[OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_tapCompletion];
  *v14 = nullsub_1;
  *(v14 + 1) = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CanvasAssetDeleteView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_1000777A0();

  return v15;
}

void sub_1000777A0()
{
  v1 = *&v0[OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_circularPlatter];
  [v0 addSubview:v1];
  [v1 insertSubview:*&v0[OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_blurView] atIndex:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 widthAnchor];
  v3 = [v2 constraintEqualToConstant:20.0];

  [v3 setActive:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 heightAnchor];
  v5 = [v1 widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 multiplier:1.0];

  [v6 setActive:1];
  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v1 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:6.0];
    [v11 setActive:1];
  }

  v12 = [v1 superview];
  if (v12)
  {
    v13 = v12;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v1 trailingAnchor];
    v15 = [v13 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:-6.0];
    [v16 setActive:1];
  }

  v17 = *&v0[OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_xImageView];
  [v1 bounds];
  [v17 setFrame:?];
  if (qword_10014B728 != -1)
  {
    swift_once();
  }

  [v17 setImage:qword_1001586C8];
  if (qword_10014B730 != -1)
  {
    swift_once();
  }

  [v17 setTintColor:qword_1001586D0];
  [v1 addSubview:v17];
  v18 = [v17 superview];
  if (v18)
  {
    v19 = v18;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v19 centerXAnchor];
    v21 = [v17 centerXAnchor];
    v22 = [v21 constraintEqualToAnchor:v20];

    [v22 setConstant:0.0];
    [v22 setActive:1];
  }

  v23 = [v17 superview];
  if (v23)
  {
    v24 = v23;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v17 centerYAnchor];
    v26 = [v24 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:0.0];
    [v27 setActive:1];
  }

  v32 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tapAction:"];
  [v0 addGestureRecognizer:?];
  if (qword_10014B678 != -1)
  {
    swift_once();
  }

  v28 = sub_100100F94();
  [v0 setAccessibilityLabel:v28];

  v29 = UIAccessibilityTraitButton;
  v30 = [v0 accessibilityTraits];
  if ((v29 & ~v30) != 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  [v0 setAccessibilityTraits:v31 | v30];
}

id sub_100077DAC()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CanvasAssetDeleteView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_circularPlatter];
  v2 = [v1 layer];
  [v1 frame];
  [v2 setCornerRadius:v3 * 0.5];

  v4 = [v1 layer];
  [v4 setMasksToBounds:1];

  v5 = *&v0[OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_blurView];
  [v1 bounds];
  return [v5 setFrame:?];
}

void sub_100078030()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [v2 fontDescriptor];
  v4 = [v2 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptorWithSymbolicTraits:v5 | 2];
  if (v6)
  {
    v7 = [v0 fontWithDescriptor:v6 size:0.0];

    v2 = v7;
  }

  qword_1001586D8 = v2;
}

void sub_10007814C()
{
  if (qword_10014B738 != -1)
  {
    swift_once();
  }

  v0 = qword_1001586D8;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_1001586E0 = v3;
}

void sub_1000781E8()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  qword_1001586E8 = v1;
}

void sub_1000783B0()
{
  v0 = sub_1000FFB34();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = enum case for JournalFeatureFlags.portraitAssetGrid(_:);
  v62 = *(v1 + 104);
  v62(v3, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v0);
  v6 = sub_1000FFB24();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = objc_opt_self();
  if (v6)
  {
    v9 = [v8 effectWithStyle:7];
  }

  else
  {
    v9 = [v8 _effectWithBlurRadius:10.0 scale:1.0];
  }

  v10 = v9;
  [v4 setEffect:v10];

  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 blackColor];
  v14 = [v13 colorWithAlphaComponent:0.2];

  [v12 setBackgroundColor:v14];
  v15 = v64;
  [v64 addSubview:v12];
  v63 = v12;
  sub_100095E58(0.0);

  v16 = [objc_allocWithZone(UIStackView) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAxis:0];
  [v16 setDistribution:2];
  [v16 setAlignment:3];
  [v15 addSubview:v16];
  v62(v3, v5, v0);
  v17 = sub_1000FFB24();
  v7(v3, v0);
  v18 = [v16 superview];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v16 leadingAnchor];
      v21 = [v19 leadingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v22 setConstant:6.0];
      [v22 setActive:1];
    }

    v23 = [v16 superview];
    if (v23)
    {
      v24 = v23;
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = [v16 trailingAnchor];
      v26 = [v24 trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];

      [v27 setConstant:-8.0];
      [v27 setActive:1];
    }

    v28 = [v16 superview];
    if (v28)
    {
      v29 = v28;
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v30 = [v16 topAnchor];
      v31 = [v29 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];

      [v32 setConstant:0.0];
      [v32 setActive:1];
    }

    v33 = sub_100096328(0, 1, 0.0);
LABEL_27:

    goto LABEL_28;
  }

  if (v18)
  {
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [v19 centerXAnchor];
    v35 = [v16 centerXAnchor];
    v36 = [v35 constraintEqualToAnchor:v34];

    [v36 setConstant:0.0];
    if (v36)
    {
      [v36 setActive:1];
    }
  }

  v37 = [v16 superview];
  if (v37)
  {
    v38 = v37;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v16 centerYAnchor];
    v40 = [v38 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    [v41 setConstant:0.0];
    if (v41)
    {
      [v41 setActive:1];
    }
  }

  v42 = [v16 superview];
  if (v42)
  {
    v43 = v42;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [v16 leadingAnchor];
    v45 = [v43 leadingAnchor];
    v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];

    [v46 setConstant:6.0];
    if (v46)
    {
      [v46 setActive:1];
    }
  }

  v47 = [v16 superview];
  if (v47)
  {
    v33 = v47;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = [v16 trailingAnchor];
    v49 = [v33 trailingAnchor];
    v50 = [v48 constraintLessThanOrEqualToAnchor:v49];

    [v50 setConstant:6.0];
    if (v50)
    {
      [v50 setActive:1];
    }

    goto LABEL_27;
  }

LABEL_28:
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  if (qword_10014B740 != -1)
  {
    swift_once();
  }

  v51 = qword_1001586E0;
  v52 = sub_100100F94();
  v53 = [objc_opt_self() systemImageNamed:v52 withConfiguration:v51];

  if (v53)
  {
    if (qword_10014B748 != -1)
    {
      swift_once();
    }

    v54 = [v53 imageWithTintColor:qword_1001586E8];
  }

  else
  {
    v54 = 0;
  }

  v55 = [objc_allocWithZone(UIImageView) initWithImage:v54];
  [v55 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  if (qword_10014B748 != -1)
  {
    swift_once();
  }

  [v55 setTintColor:qword_1001586E8];
  [v55 setOverrideUserInterfaceStyle:1];
  [v16 addArrangedSubview:v55];
  v56 = [objc_allocWithZone(UILabel) init];
  v57 = *&v64[OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_overflowCountLabel];
  *&v64[OBJC_IVAR____TtC21JournalShareExtension23CanvasAssetOverflowView_overflowCountLabel] = v56;
  v58 = v56;

  if (v58)
  {
    if (qword_10014B750 != -1)
    {
      swift_once();
    }

    [v58 setTextColor:qword_1001586F0];
    if (qword_10014B738 != -1)
    {
      swift_once();
    }

    [v58 setFont:qword_1001586D8];
    [v58 setPreferredVibrancy:1];
    [v58 setAdjustsFontForContentSizeCategory:1];
    [v58 setAdjustsFontSizeToFitWidth:1];
    [v16 addArrangedSubview:v58];
    v59 = [objc_allocWithZone(UIButton) init];
    v60 = v64;
    [v59 addTarget:v64 action:"tapActionWithSender:" forControlEvents:64];
    [v60 addSubview:v59];
    sub_100095E58(0.0);
  }

  else
  {
  }
}

void sub_100078F00(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  v6 = a1;

  v4(v5);
}

id sub_100078F7C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100079028()
{
  v1 = OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_circularPlatter;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_xImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_blurView;
  v4 = [objc_opt_self() effectWithStyle:8];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *(v0 + v3) = v5;
  v6 = (v0 + OBJC_IVAR____TtC21JournalShareExtension21CanvasAssetDeleteView_tapCompletion);
  *v6 = nullsub_1;
  v6[1] = 0;
  sub_100101D94();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for AssetSizeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetSizeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007929C()
{
  result = qword_10014E940;
  if (!qword_10014E940)
  {
    sub_10000F19C(&qword_10014E948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E940);
  }

  return result;
}

uint64_t sub_100079300(unsigned __int8 a1)
{
  if (a1 <= 3u && a1 > 1u && a1 != 2)
  {
    v4 = 1;
    goto LABEL_22;
  }

  v2 = sub_100101E84();

  if ((v2 & 1) == 0)
  {
    if (a1 == 2)
    {
      v4 = 1;
      goto LABEL_22;
    }

    v3 = sub_100101E84();

    if ((v3 & 1) == 0)
    {
      if (a1 == 1)
      {
        v4 = 1;
        goto LABEL_22;
      }

      v5 = sub_100101E84();

      if ((v5 & 1) == 0)
      {
        if (a1 > 6u)
        {
          v4 = 1;
        }

        else
        {
          v6 = sub_100101E84();

          if (v6)
          {
            goto LABEL_17;
          }

          if (a1)
          {
            v4 = sub_100101E84();
          }

          else
          {
            v4 = 1;
          }
        }

LABEL_22:

        return v4 & 1;
      }
    }
  }

LABEL_17:
  v4 = 1;
  return v4 & 1;
}

uint64_t sub_1000797E4(unsigned __int8 a1)
{
  if (a1 > 6u)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_100101E84();

    v2 = v1 ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_10007993C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100079AC4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10007996C(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006C6CLL;
  v3 = *v1;
  v4 = 0x6154656772614C78;
  v5 = 0xE500000000000000;
  v6 = 0x6C6C616D73;
  if (v3 != 6)
  {
    v6 = 0x657263536C6C7566;
    v5 = 0xEA00000000006E65;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (v3 != 4)
  {
    v8 = 0x61546D756964656DLL;
    v7 = 0xEA00000000006C6CLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEA00000000006564;
  v10 = 0x69576D756964656DLL;
  if (v3 != 2)
  {
    v10 = 0x656772616CLL;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x656772614C78;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v4 = v10;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 <= 3u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_100079A70()
{
  result = qword_10014E950;
  if (!qword_10014E950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10014E950);
  }

  return result;
}

uint64_t sub_100079AC4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1001348E8;
  v6._object = a2;
  v4 = sub_100101E04(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100079B14(uint64_t a1, double a2)
{
  *(v3 + 160) = v2;
  *(v3 + 152) = a2;
  v5 = sub_100100A34();
  *(v3 + 168) = v5;
  *(v3 + 176) = *(v5 - 8);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = swift_task_alloc();
  v6 = sub_100100AE4();
  *(v3 + 200) = v6;
  *(v3 + 208) = *(v6 - 8);
  *(v3 + 216) = swift_task_alloc();
  v7 = sub_100100A64();
  *(v3 + 224) = v7;
  *(v3 + 232) = *(v7 - 8);
  *(v3 + 240) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_100101284();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v3 + 248) = v8;
  *(v3 + 256) = v10;

  return _swift_task_switch(sub_100079CD8, v8, v10);
}

uint64_t sub_100079CD8()
{
  if (qword_10014B758 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = sub_100003D38(v3, qword_10014E958);
  (*(v2 + 16))(v1, v4, v3);
  sub_100100A44();
  sub_100100A24();
  v5 = sub_100100A54();
  v6 = sub_100101764();
  if (sub_100101A74())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_100100A14();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, v6, v8, "createThumbnail", "", v7, 2u);
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);

  (*(v12 + 16))(v9, v10, v11);
  sub_100100AA4();
  swift_allocObject();
  *(v0 + 264) = sub_100100A94();
  (*(v12 + 8))(v10, v11);
  [v13 size];
  v14 = *(v0 + 152);
  v17 = v16 < v15;
  v18 = v16 / v15 * v14;
  v19 = v15 / v16 * v14;
  if (v17)
  {
    v20 = *(v0 + 152);
  }

  else
  {
    v20 = v18;
  }

  if (v17)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(v0 + 152);
  }

  v22 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_100079FA0;
  v23 = swift_continuation_init();
  *(v0 + 136) = sub_100007210(&qword_10014E978);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10007A710;
  *(v0 + 104) = &unk_100137368;
  *(v0 + 112) = v23;
  [v22 prepareThumbnailOfSize:v0 + 80 completionHandler:{v21, v20}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100079FA0()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_10007A0A8, v2, v1);
}

uint64_t sub_10007A0A8()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[18];
  sub_10007A474(v1, "createThumbnail", 15, 2);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10007A18C()
{
  v0 = sub_100100AE4();
  sub_100003CD4(v0, qword_10014E958);
  v1 = sub_100003D38(v0, qword_10014E958);
  if (qword_10014B890 != -1)
  {
    swift_once();
  }

  v2 = sub_100003D38(v0, qword_100158840);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

UIImage *sub_10007A254(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (![a1 imageOrientation] || (objc_msgSend(a1, "size"), UIGraphicsBeginImageContext(v5), objc_msgSend(a1, "drawAtPoint:", 0.0, 0.0), v3 = UIGraphicsGetImageFromCurrentImageContext(), UIGraphicsEndImageContext(), !v3))
  {
    v3 = a1;
  }

  sub_10007A2FC(Current);
  return v3;
}

void sub_10007A2FC(double a1)
{
  if (qword_10014B758 != -1)
  {
    swift_once();
  }

  v2 = sub_100100AE4();
  sub_100003D38(v2, qword_10014E958);
  oslog = sub_100100AC4();
  v3 = sub_1001015D4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315394;
    v6 = sub_1001020E4();
    v8 = sub_10007A774(v6, v7, &v10);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2048;
    *(v4 + 14) = CFAbsoluteTimeGetCurrent() - a1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "%s.fixImageOrientationIfNeeded took %f seconds", v4, 0x16u);
    sub_10001100C(v5);
  }
}

uint64_t sub_10007A474(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v21 = a2;
  v5 = sub_100100A74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_100100A34();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100100A54();
  sub_100100A84();
  v20 = sub_100101754();
  result = sub_100101A74();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v10 + 8))(v12, v9);
  }

  if ((a4 & 1) == 0)
  {
    v15 = v21;
    if (v21)
    {
LABEL_9:

      sub_100100AB4();

      if ((*(v6 + 88))(v8, v5) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_100100A14();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, v20, v18, v15, v16, v17, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v21 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v21 & 0xFFFFF800) != 0xD800)
  {
    if (v21 >> 16 <= 0x10)
    {
      v15 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10007A710(uint64_t a1, void *a2)
{
  v3 = sub_1000110C0((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

unint64_t sub_10007A774(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10007A840(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100010FA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10001100C(v11);
  return v7;
}

unint64_t sub_10007A840(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10007A94C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100101CE4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

double *sub_10007A94C(uint64_t a1, unint64_t a2)
{
  v3 = sub_10007A998(a1, a2);
  sub_10007AAC8(&off_100133FD8);
  return v3;
}

double *sub_10007A998(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10007ABB4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100101CE4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1001010C4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10007ABB4(v10, 0);
        result = sub_100101C34();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10007AAC8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10007AC28(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

double *sub_10007ABB4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100007210(&qword_10014E970);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

double *sub_10007AC28(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_100007210(&qword_10014E970);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

id sub_10007AD58(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  v10 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel;
  *&v4[v10] = [objc_allocWithZone(UILabel) init];
  v11 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack;
  *&v4[v12] = [objc_allocWithZone(UIStackView) init];
  v13 = &v4[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName];
  v14 = type metadata accessor for SymbolAndTextFallbackView();
  *v13 = 0;
  *(v13 + 1) = 0;
  v17.receiver = v4;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_10007AEBC();

  return v15;
}

id sub_10007AEBC()
{
  swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView] setContentMode:1];
  v1 = *&v0[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel];
  v2 = objc_opt_self();
  v3 = [v2 secondaryLabelColor];
  [v1 setTextColor:v3];

  if (qword_10014B630 != -1)
  {
    swift_once();
  }

  [v1 setFont:qword_100158520];
  [v1 setMinimumScaleFactor:0.6];
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setNumberOfLines:2];
  v4 = *&v0[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel];
  v5 = [v2 secondaryLabelColor];
  [v4 setTextColor:v5];

  if (qword_10014B628 != -1)
  {
    swift_once();
  }

  v6 = qword_100158518;
  [v4 setFont:qword_100158518];
  [v4 setAdjustsFontSizeToFitWidth:1];
  [v4 setMinimumScaleFactor:0.6];
  v7 = *&v0[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel];
  v8 = [v2 tertiaryLabelColor];
  [v7 setTextColor:v8];

  [v7 setFont:v6];
  [v7 setAdjustsFontSizeToFitWidth:1];
  [v7 setMinimumScaleFactor:0.6];
  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  LOBYTE(v9) = sub_100101804();
  [v1 setAdjustsFontSizeToFitWidth:v9 & 1];
  [v4 setAdjustsFontForContentSizeCategory:v9 & 1];
  [v7 setAdjustsFontForContentSizeCategory:v9 & 1];
  sub_100007210(&qword_10014E1E8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10010BC80;
  *(v11 + 32) = sub_100100BB4();
  *(v11 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1001019D4();
  swift_unknownObjectRelease();

  LODWORD(v12) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v12];
  type metadata accessor for UILayoutPriority(0);
  sub_10007D238();
  sub_100100AF4();
  LODWORD(v13) = v16;
  [v4 setContentCompressionResistancePriority:1 forAxis:v13];
  sub_100100AF4();
  LODWORD(v14) = v16;
  return [v7 setContentCompressionResistancePriority:1 forAxis:v14];
}

void sub_10007B2B0(void *a1)
{
  v3 = v1;
  v5 = [v3 subviews];
  sub_100073F54();
  v6 = sub_1001011D4();

  if (v6 >> 62)
  {
    v7 = sub_100101DA4();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    goto LABEL_116;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_100101CA4();
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 removeFromSuperview];
  }

LABEL_10:

  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      [v3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
      v11 = [objc_allocWithZone(UIView) init];
      v168 = v11;
      if (qword_10014B600 != -1)
      {
        swift_once();
        v11 = v168;
      }

      [v11 setBackgroundColor:qword_1001584F0];
      [v3 addSubview:v168];
      v12 = [v168 superview];
      if (v12)
      {
        v13 = v12;
        [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
        v14 = [v168 leadingAnchor];
        v15 = [v13 leadingAnchor];
        v16 = [v14 constraintEqualToAnchor:v15];

        [v16 setConstant:0.0];
        [v16 setActive:1];
      }

      v17 = [v168 superview];
      if (v17)
      {
        v18 = v17;
        [v168 setTranslatesAutoresizingMaskIntoConstraints:0];
        v19 = [v168 topAnchor];
        v20 = [v18 topAnchor];
        v21 = [v19 constraintEqualToAnchor:v20];

        [v21 setConstant:0.0];
        [v21 setActive:1];
      }

      v22 = [v168 widthAnchor];
      v23 = [v3 heightAnchor];
      v24 = [v22 constraintEqualToAnchor:v23];

      [v24 setActive:1];
      v25 = *&v3[OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView];
      v26 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName + 8];
      v27 = qword_10014B938;

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = qword_100158AA8;
      if (v26)
      {
        v29 = sub_100100F94();
      }

      else
      {
        v29 = 0;
      }

      v103 = [objc_opt_self() _systemImageNamed:v29 withConfiguration:v28];

      [v25 setImage:v103];
      if (qword_10014B610 != -1)
      {
        swift_once();
      }

      [v25 setTintColor:qword_100158500];
      [v168 addSubview:v25];
      v104 = [v25 superview];
      if (v104)
      {
        v105 = v104;
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        v106 = [v105 centerXAnchor];
        v107 = [v25 centerXAnchor];
        v108 = [v107 constraintEqualToAnchor:v106];

        [v108 setConstant:0.0];
        [v108 setActive:1];
      }

      v109 = [v25 superview];
      if (v109)
      {
        v110 = v109;
        [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
        v111 = [v25 centerYAnchor];
        v112 = [v110 centerYAnchor];
        v113 = [v111 constraintEqualToAnchor:v112];

        [v113 setConstant:0.0];
        [v113 setActive:1];
      }

      v114 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel];
      if (qword_10014B630 != -1)
      {
        swift_once();
      }

      [v114 setFont:qword_100158520];
      v115 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack];
      [v115 setAlignment:1];
      [v115 addArrangedSubview:v114];
      [v115 addArrangedSubview:*&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel]];
      v116 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel];
      v117 = [v116 text];
      if (v117)
      {

        v118 = [objc_allocWithZone(UIStackView) init];
        [v118 setAxis:1];
        [v118 setDistribution:4];
        [v118 setAlignment:1];
        [v118 setSpacing:5.0];
        [v118 addArrangedSubview:v115];
        [v118 addArrangedSubview:v116];
        [v3 addSubview:v118];
        [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
        v119 = [v118 leadingAnchor];
        v120 = [v168 trailingAnchor];
        v121 = [v119 constraintEqualToAnchor:v120];

        [v121 setConstant:12.0];
        [v121 setActive:1];

        v122 = [v118 superview];
        if (v122)
        {
          v123 = v122;
          [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
          v124 = [v118 centerYAnchor];
          v125 = [v123 centerYAnchor];
          v126 = [v124 constraintEqualToAnchor:v125];

          [v126 setConstant:0.0];
          [v126 setActive:1];
        }

        v127 = [v118 superview];
        if (v127)
        {
          v167 = v127;
          [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
          v128 = [v118 trailingAnchor];
          v129 = [v167 trailingAnchor];
          v130 = [v128 constraintEqualToAnchor:v129];

          [v130 setConstant:-12.0];
          [v130 setActive:1];

LABEL_113:
          v67 = v167;
          goto LABEL_52;
        }
      }

      else
      {
        [v3 addSubview:v115];
        [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
        v155 = [v115 leadingAnchor];
        v156 = [v168 trailingAnchor];
        v157 = [v155 constraintEqualToAnchor:v156];

        [v157 setConstant:12.0];
        [v157 setActive:1];

        v158 = [v115 superview];
        if (v158)
        {
          v159 = v158;
          [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
          v160 = [v115 centerYAnchor];
          v161 = [v159 centerYAnchor];
          v162 = [v160 constraintEqualToAnchor:v161];

          [v162 setConstant:0.0];
          [v162 setActive:1];
        }

        v163 = [v115 superview];
        if (v163)
        {
          v167 = v163;
          [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
          v164 = [v115 trailingAnchor];
          v165 = [v167 trailingAnchor];
          v166 = [v164 constraintEqualToAnchor:v165];

          [v166 setConstant:-12.0];
          [v166 setActive:1];

          goto LABEL_113;
        }
      }

LABEL_51:
      v67 = v168;
LABEL_52:

      return;
    }

    [v3 setMaximumContentSizeCategory:0];
    v6 = *&v3[OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView];
    [v3 addSubview:v6];
    a1 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleStack];
    [v3 addSubview:a1];
    v2 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName + 8];
    v35 = qword_10014B930;

    if (v35 == -1)
    {
LABEL_28:
      v36 = qword_100158AA0;
      if (v2)
      {
        v37 = sub_100100F94();
      }

      else
      {
        v37 = 0;
      }

      v43 = [objc_opt_self() _systemImageNamed:v37 withConfiguration:v36];

      [v6 setImage:v43];
      if (qword_10014B610 != -1)
      {
        swift_once();
      }

      [v6 setTintColor:qword_100158500];
      v44 = [v6 superview];
      if (v44)
      {
        v45 = v44;
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v46 = [v45 centerXAnchor];
        v47 = [v6 centerXAnchor];
        v48 = [v47 constraintEqualToAnchor:v46];

        [v48 setConstant:0.0];
        if (v48)
        {
          [v48 setActive:1];
        }
      }

      v49 = [v6 superview];
      if (v49)
      {
        v50 = v49;
        [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
        v51 = [v6 topAnchor];
        v52 = [v50 topAnchor];
        v53 = [v51 constraintGreaterThanOrEqualToAnchor:v52];

        [v53 setConstant:12.0];
        [v53 setActive:1];
      }

      v54 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel];
      if (qword_10014B630 != -1)
      {
        swift_once();
      }

      [v54 setFont:qword_100158520];
      [a1 setAlignment:3];
      [a1 addArrangedSubview:v54];
      [a1 addArrangedSubview:*&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel]];
      v55 = [a1 superview];
      if (v55)
      {
        v56 = v55;
        [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
        v57 = [a1 leadingAnchor];
        v58 = [v56 leadingAnchor];
        v59 = [v57 constraintEqualToAnchor:v58];

        [v59 setConstant:12.0];
        [v59 setActive:1];
      }

      v60 = [a1 superview];
      if (v60)
      {
        v61 = v60;
        [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
        v62 = [a1 trailingAnchor];
        v63 = [v61 trailingAnchor];
        v64 = [v62 constraintEqualToAnchor:v63];

        [v64 setConstant:-12.0];
        [v64 setActive:1];
      }

      v65 = [a1 topAnchor];
      v66 = [v6 bottomAnchor];
      v168 = [v65 constraintEqualToAnchor:v66 constant:20.0];

      [v168 setActive:1];
      goto LABEL_51;
    }

LABEL_116:
    swift_once();
    goto LABEL_28;
  }

  if (a1 - 5 < 2)
  {
    [v3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v30 = *&v3[OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView];
    [v3 addSubview:v30];
    v31 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName + 8];
    v32 = qword_10014B938;

    if (v32 != -1)
    {
      swift_once();
    }

    v33 = qword_100158AA8;
    if (v31)
    {
      v34 = sub_100100F94();
    }

    else
    {
      v34 = 0;
    }

    v71 = [objc_opt_self() _systemImageNamed:v34 withConfiguration:v33];

    [v30 setImage:v71];
    if (qword_10014B610 != -1)
    {
      swift_once();
    }

    [v30 setTintColor:qword_100158500];
    v72 = [v30 superview];
    if (v72)
    {
      v73 = v72;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v74 = [v73 centerXAnchor];
      v75 = [v30 centerXAnchor];
      v76 = [v75 constraintEqualToAnchor:v74];

      [v76 setConstant:0.0];
      if (v76)
      {
        [v76 setActive:1];
      }
    }

    v77 = [v30 superview];
    if (v77)
    {
      v78 = v77;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v79 = [v30 topAnchor];
      v80 = [v78 topAnchor];
      v81 = [v79 constraintGreaterThanOrEqualToAnchor:v80];

      [v81 setConstant:12.0];
      [v81 setActive:1];
    }

    v38 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_captionLabel];
    v82 = [v38 text];
    if (v82)
    {

      [v3 addSubview:v38];
      v83 = [v38 superview];
      if (v83)
      {
        v84 = v83;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v85 = [v38 leadingAnchor];
        v86 = [v84 leadingAnchor];
        v87 = [v85 constraintEqualToAnchor:v86];

        [v87 setConstant:8.0];
        [v87 setActive:1];
      }

      v88 = [v38 superview];
      if (v88)
      {
        v89 = v88;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v90 = [v38 trailingAnchor];
        v91 = [v89 trailingAnchor];
        v92 = [v90 constraintEqualToAnchor:v91];

        [v92 setConstant:-8.0];
        [v92 setActive:1];
      }
    }

    else
    {
      v38 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_subtitleLabel];
      [v3 addSubview:v38];
      v93 = [v38 superview];
      if (v93)
      {
        v94 = v93;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v95 = [v38 leadingAnchor];
        v96 = [v94 leadingAnchor];
        v97 = [v95 constraintEqualToAnchor:v96];

        [v97 setConstant:8.0];
        [v97 setActive:1];
      }

      v98 = [v38 superview];
      if (v98)
      {
        v99 = v98;
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v100 = [v38 trailingAnchor];
        v101 = [v99 trailingAnchor];
        v102 = [v100 constraintEqualToAnchor:v101];

        [v102 setConstant:-8.0];
        [v102 setActive:1];
      }
    }

LABEL_105:
    v152 = [v38 topAnchor];
    v153 = [v30 bottomAnchor];
    v154 = [v152 constraintEqualToAnchor:v153 constant:6.0];

    [v154 setActive:1];
    v68 = "setTextAlignment:";
    v69 = v38;
    v70 = 1;
    goto LABEL_106;
  }

  if (a1 == 4)
  {
    [v3 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
    v30 = *&v3[OBJC_IVAR____TtC21JournalShareExtension23CanvasFallbackAssetView_symbolImageView];
    [v3 addSubview:v30];
    v38 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_titleLabel];
    [v3 addSubview:v38];
    v39 = *&v3[OBJC_IVAR____TtC21JournalShareExtension25SymbolAndTextFallbackView_symbolName + 8];
    v40 = qword_10014B938;

    if (v40 != -1)
    {
      swift_once();
    }

    v41 = qword_100158AA8;
    if (v39)
    {
      v42 = sub_100100F94();
    }

    else
    {
      v42 = 0;
    }

    v131 = [objc_opt_self() _systemImageNamed:v42 withConfiguration:v41];

    [v30 setImage:v131];
    if (qword_10014B610 != -1)
    {
      swift_once();
    }

    [v30 setTintColor:qword_100158500];
    v132 = [v30 superview];
    if (v132)
    {
      v133 = v132;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v134 = [v133 centerXAnchor];
      v135 = [v30 centerXAnchor];
      v136 = [v135 constraintEqualToAnchor:v134];

      [v136 setConstant:0.0];
      if (v136)
      {
        [v136 setActive:1];
      }
    }

    v137 = [v30 superview];
    if (v137)
    {
      v138 = v137;
      [v30 setTranslatesAutoresizingMaskIntoConstraints:0];
      v139 = [v30 topAnchor];
      v140 = [v138 topAnchor];
      v141 = [v139 constraintGreaterThanOrEqualToAnchor:v140];

      [v141 setConstant:12.0];
      [v141 setActive:1];
    }

    if (qword_10014B628 != -1)
    {
      swift_once();
    }

    [v38 setFont:qword_100158518];
    v142 = [v38 superview];
    if (v142)
    {
      v143 = v142;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
      v144 = [v38 leadingAnchor];
      v145 = [v143 leadingAnchor];
      v146 = [v144 constraintEqualToAnchor:v145];

      [v146 setConstant:8.0];
      [v146 setActive:1];
    }

    v147 = [v38 superview];
    if (v147)
    {
      v148 = v147;
      [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
      v149 = [v38 trailingAnchor];
      v150 = [v148 trailingAnchor];
      v151 = [v149 constraintEqualToAnchor:v150];

      [v151 setConstant:-8.0];
      [v151 setActive:1];
    }

    goto LABEL_105;
  }

  v68 = "setMaximumContentSizeCategory:";
  v69 = v3;
  v70 = 0;
LABEL_106:

  [v69 v68];
}