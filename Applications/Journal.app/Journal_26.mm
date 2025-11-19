void sub_1002C1C88(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v4 && (v5 = *(v4 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v6 = *(v5 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v45 = v6;
    [v45 bounds];
  }

  else
  {
    v7 = sub_1007C8890();
    v8 = *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v45 = v8;

    if (!v8)
    {
      return;
    }

    [v45 bounds];
  }

  [v2 convertRect:v45 fromCoordinateSpace:?];
  x = v52.origin.x;
  y = v52.origin.y;
  CGRectGetMaxY(v52);
  v11 = sub_1000F5890();
  if ((v12 & 1) == 0)
  {
    v13 = v11;
    v14 = [v2 textStorage];
    v15 = [v14 length];

    if (v13 < v15)
    {
      v16 = [v2 textStorage];
      v17 = [v16 attribute:NSFontAttributeName atIndex:v13 effectiveRange:0];

      if (v17)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v47 = 0u;
        v48 = 0u;
      }

      v49 = v47;
      v50 = v48;
      if (*(&v48 + 1))
      {
        sub_1000065A8(0, &qword_100AD2A78);
        if (swift_dynamicCast())
        {
          v18 = sub_1000F5890();
          if ((v19 & 1) == 0)
          {
            v20 = v18;
            v21 = [v2 textStorage];
            v22 = [v21 length];

            if (v20 < v22)
            {
              v23 = [v2 textStorage];
              v24 = [v23 attribute:NSFontAttributeName atIndex:v20 effectiveRange:0];

              if (v24)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v47 = 0u;
                v48 = 0u;
              }

              v49 = v47;
              v50 = v48;
              if (*(&v48 + 1))
              {
                if (swift_dynamicCast())
                {
                  v25 = [v2 textLayoutManager];
                  if (v25)
                  {
                    v26 = v25;
                    v27 = [v25 textLayoutFragmentForPosition:{x, y}];

                    if (v27)
                    {
                      [v46 ascender];
                      v29 = v28;
                      [v46 capHeight];
                      v31 = v29 - v30;
                      [v46 descender];
                      v33 = fabs(v32);
                      [v46 leading];
                      v35 = v33 + v34;
                      [v46 leading];
                      v37 = v35 + v36;
                      [v27 layoutFragmentFrame];
                      v39 = v38;
                      v40 = sub_1007C8890();
                      v41 = *&v40[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_topConstraint];
                      [v41 setConstant:v31];

                      v42 = -(v35 + 8.0);
                      v43 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView;
                      if (v39 > 0.0)
                      {
                        v42 = -0.0;
                      }

                      [*(*(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView) + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_bottomConstraint) setConstant:v42];
                      v44 = *(a1 + v43);
                      sub_1007CCA9C(v37 + 8.0);

                      return;
                    }
                  }
                }

                else
                {
                }

                return;
              }

LABEL_20:
              sub_100004F84(&v49, &qword_100AD13D0);
              return;
            }
          }
        }

        return;
      }

      goto LABEL_20;
    }
  }
}

void *sub_1002C2180(void *a1, id a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7)
{
  v8 = v7;
  if (a4)
  {
    v15 = [v8 textStorage];
    result = [v15 string];
    if (!result)
    {
      goto LABEL_24;
    }

    v17 = result;

    a2 = [v17 paragraphRangeForRange:{a2, a3}];
    a3 = 0;
  }

  v18 = type metadata accessor for ResizableViewTextAttachment();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment____lazy_storage___resizableAttachmentView] = 0;
  v20 = &v19[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  *&v19[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider] = 0;
  *&v19[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction] = 0;
  swift_beginAccess();
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v19[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize];
  *v21 = a6;
  v21[1] = a7;
  v65.receiver = v19;
  v65.super_class = v18;
  v22 = a1;
  v23 = objc_msgSendSuper2(&v65, "initWithData:ofType:", 0, 0);
  [v23 setAllowsTextAttachmentView:1];
  sub_1007C8E14(v22, a5 & 0x10101010101);

  (*((swift_isaMask & *v23) + 0xB0))(1, 1, a6, a7);
  *(v23 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8) = &off_100A63538;
  swift_unknownObjectWeakAssign();
  v24 = sub_1002C28F8(0.0, 0.0);
  sub_1007C895C(v24, v25, 0);
  v26 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v23 position:v24];
  v27 = [v8 textStorage];
  result = [v27 string];
  if (result)
  {
    v28 = result;

    v62 = [v28 paragraphRangeForRange:{a2, a3}];
    v30 = v29;

    v31 = [v8 textStorage];
    v32 = [v31 length];

    if (!v32)
    {
      if (qword_100ACFBD8 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for Logger();
      sub_10000617C(v33, qword_100ADC2D0);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Creating zero width string to anchor attachment in empty document", v36, 2u);
      }

      v37 = [v8 textStorage];
      v38 = sub_1002B1C48();
      [v37 insertAttributedString:v38 atIndex:0];

      v39 = [v8 textStorage];
      v30 = [v39 length];

      v62 = 0;
    }

    v61 = v26;
    v40 = [v8 textStorage];
    result = [v40 string];
    if (result)
    {
      v41 = result;

      v60 = v30;
      v42 = [v41 paragraphRangeForRange:{v62, v30}];
      v44 = v43;

      v64 = 0;
      v45 = [v8 textStorage];
      v46 = NSParagraphAttachmentAttributeName;
      v47 = swift_allocObject();
      *(v47 + 16) = &v64;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1002D8340;
      *(v48 + 24) = v47;
      aBlock[4] = sub_1002D826C;
      aBlock[5] = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007E0A4;
      aBlock[3] = &unk_100A64658;
      v49 = _Block_copy(aBlock);

      [v45 enumerateAttribute:v46 inRange:v42 options:v44 usingBlock:{0, v49}];

      _Block_release(v49);
      LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

      if (v49)
      {
        __break(1u);
      }

      else
      {
        v50 = v64;

        if (!v50)
        {
          v59 = [v8 textStorage];
          [v59 addAttribute:v46 value:v61 range:{v62, v60}];

          [v8 setNeedsLayout];
          return v23;
        }

        v42 = v61;
        if (qword_100ACFBD8 == -1)
        {
LABEL_15:
          v51 = type metadata accessor for Logger();
          sub_10000617C(v51, qword_100ADC2D0);
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            aBlock[0] = v55;
            *v54 = 136315138;
            v56 = _NSRange.description.getter();
            v58 = sub_100008458(v56, v57, aBlock);

            *(v54 + 4) = v58;
            _os_log_impl(&_mh_execute_header, v52, v53, "Paragraph already has an attachment. Dropping new attachment for range %s.", v54, 0xCu);
            sub_10000BA7C(v55);
          }

          return 0;
        }
      }

      swift_once();
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1002C28F8(double a1, double a2)
{
  [v2 textContainerInset];
  v6 = a1 - v5;
  [v2 textContainerInset];
  v8 = v7;
  v9 = [v2 textLayoutManager];
  if (v9 && (v10 = v9, v11 = [v9 textLayoutFragmentForPosition:{v6, a2 - v8}], v10, v11))
  {
    v12 = [v11 resolvedBaseWritingDirection];
  }

  else
  {
    v12 = -1;
  }

  v13 = [v2 textContainer];
  [v13 size];
  v15 = v14;

  if ((v12 == 1) != v15 * 0.5 < v6)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void sub_1002C2A1C(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = [v3 characterRangeAtPoint:?];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v73 = a1;
  v10 = [v4 beginningOfDocument];
  v11 = [v9 start];
  v12 = [v9 end];
  v13 = [v4 offsetFromPosition:v10 toPosition:v11];
  v14 = [v4 offsetFromPosition:v11 toPosition:v12];

  v15 = &selRef_setRegion_;
  v16 = [v4 textStorage];
  v17 = [v16 string];
  if (!v17)
  {
    goto LABEL_45;
  }

  v18 = v17;

  v19 = [v18 paragraphRangeForRange:{v13, v14}];
  v77 = v20;

  v80 = sub_1002C28F8(a2, a3);
  v78 = v21;
  isEscapingClosureAtFileLocation = *&v4[OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments];
  if (isEscapingClosureAtFileLocation >> 62)
  {
LABEL_42:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v73;
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_36:
    v63 = [v4 v15[417]];
    sub_1000F24EC(&unk_100AD9200);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v65 = sub_1000065A8(0, &qword_100AD2A80);
    v66 = NSParagraphStyleAttributeName;
    v67 = sub_100047F28();
    *(inited + 64) = v65;
    *(inited + 40) = v67;
    sub_10007BDBC(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &unk_100AD9210);
    type metadata accessor for Key(0);
    sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v69 = [v4 v15[417]];
    v70 = [v69 length];

    [v63 addAttributes:isa range:{0, v70}];
    return;
  }

  v23 = *((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v73;
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_5:
  v83 = isEscapingClosureAtFileLocation & 0xC000000000000001;
  v76 = isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8;

  v25 = 0;
  v79 = isEscapingClosureAtFileLocation;
  v71 = v19;
  v72 = v4;
  v82 = v23;
  while (1)
  {
    if (v83)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v76 + 16))
      {
        goto LABEL_40;
      }

      v28 = *(isEscapingClosureAtFileLocation + 8 * v25 + 32);
    }

    v29 = v28;
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    sub_1002C322C(v28, v24 & 1);
    if ((v33 & 1) == 0)
    {
      break;
    }

LABEL_8:

    ++v25;
    if (v30 == v82)
    {

      goto LABEL_36;
    }
  }

  v34 = v31;
  if (v31 == v19)
  {
    v35 = v32;
    v36 = &v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition];
    swift_beginAccess();
    if (v36[16])
    {
      isEscapingClosureAtFileLocation = v79;
    }

    else
    {
      v37 = *v36;
      isEscapingClosureAtFileLocation = v79;
      if (v80 == v37)
      {
        goto LABEL_8;
      }
    }

    v32 = v35;
    if ((v24 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v81 = v32;
  v38 = &v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition];
  swift_beginAccess();
  *v38 = v80;
  *(v38 + 1) = v78;
  v38[16] = 0;
  v39 = sub_1007C8890();
  v40 = *v38;
  v41 = *(v38 + 1);
  v42 = v38[16];
  v43 = &v39[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  v44 = *&v39[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition];
  v45 = *&v39[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 8];
  v46 = v39[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_anchorPosition + 16];
  *v43 = *v38;
  *(v43 + 1) = v41;
  v43[16] = v42;
  if (v46)
  {
    if (v42)
    {
      goto LABEL_29;
    }

LABEL_28:
    sub_1007CB788();
    goto LABEL_29;
  }

  if (v42)
  {
    goto LABEL_28;
  }

  if (v44 != v40 || v45 != v41)
  {
    goto LABEL_28;
  }

LABEL_29:

  v48 = [v4 v15[417]];
  v49 = v48;
  if ((v24 & 1) == 0)
  {
    [v48 deleteCharactersInRange:{v34, v81}];

    v26 = [v4 v15[417]];
    v27 = [objc_opt_self() attributedStringWithAttachment:v29];
    [v26 insertAttributedString:v27 atIndex:v19];
LABEL_7:

    isEscapingClosureAtFileLocation = v79;
    goto LABEL_8;
  }

  v50 = [v48 string];
  if (v50)
  {
    v51 = v50;

    v52 = [v51 paragraphRangeForRange:{v19, v77}];
    v74 = v53;
    v75 = v52;

    v86 = 0;
    v54 = [v4 v15[417]];
    v19 = NSParagraphAttachmentAttributeName;
    v55 = swift_allocObject();
    *(v55 + 16) = &v86;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1002D8340;
    *(v56 + 24) = v55;
    aBlock[4] = sub_1002D826C;
    v85 = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10007E0A4;
    aBlock[3] = &unk_100A64748;
    v15 = _Block_copy(aBlock);
    v4 = v85;

    [v54 enumerateAttribute:v19 inRange:v75 options:v74 usingBlock:{0, v15}];

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_41;
    }

    v57 = v86;

    if (v57)
    {
      sub_1000065A8(0, &unk_100AF1DE0);
      v58 = static NSObject.== infix(_:_:)();

      if ((v58 & 1) == 0)
      {

        return;
      }
    }

    v15 = &selRef_setRegion_;
    v4 = v72;
    v59 = [v72 textStorage];
    [v59 removeAttribute:v19 range:{v34, v81}];

    v60 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:v29 position:v80];
    v61 = [v72 textStorage];
    v26 = v60;
    v62 = v19;
    v19 = v71;
    [v61 addAttribute:v62 value:v26 range:{v71, v77}];

    v27 = v26;
    v24 = v73;
    goto LABEL_7;
  }

  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_1002C322C(void *a1, char a2)
{
  v3 = v2;
  v6 = &NSAttachmentAttributeName;
  if (a2)
  {
    v6 = &NSParagraphAttachmentAttributeName;
  }

  v7 = *v6;
  v41 = 0uLL;
  v42 = 1;
  v38 = a1;
  v39 = &v41;
  v35 = sub_1002D8364;
  v36 = &v37;
  v8 = [v2 textStorage];
  v9 = [v8 length];

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v33 = a1;
  v10 = v7;
  v11 = v3;
  v12 = [v3 textStorage];
  v13 = NSParagraphAttachmentAttributeName;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1002D835C;
  *(v14 + 24) = &v34;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1002D8270;
  *(v15 + 24) = v14;
  v46 = sub_1002D826C;
  v47 = v15;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_10007E0A4;
  v45 = &unk_100A64388;
  v16 = _Block_copy(&aBlock);

  [v12 enumerateAttribute:v13 inRange:0 options:v9 usingBlock:{0, v16}];

  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v42 & 1) == 0)
  {
    v18 = v41;
    v19 = [v3 textStorage];
    v20 = [v19 length];

    if (v18 < v20)
    {
      v21 = [v3 textStorage];
      v22 = [v21 attribute:v10 atIndex:v18 effectiveRange:0];

      if (v22)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_10002432C(&v41, &aBlock);
        if (a2)
        {
          sub_10000BA20(&aBlock, &v41);
          sub_1000065A8(0, &qword_100ADC5F0);
          if (!swift_dynamicCast())
          {
            goto LABEL_16;
          }

          v23 = v40;
          v24 = [v40 textAttachment];

          if (!v24)
          {
            goto LABEL_16;
          }
        }

        else
        {
          sub_10000BA20(&aBlock, &v41);
          sub_1000065A8(0, &unk_100AF1DE0);
          if (!swift_dynamicCast())
          {
LABEL_16:
            sub_10000BA7C(&aBlock);
            goto LABEL_17;
          }

          v24 = v40;
        }

        sub_1000065A8(0, &unk_100AD43A0);
        v25 = static NSObject.== infix(_:_:)();

        sub_10000BA7C(&aBlock);
        if (v25)
        {

          return;
        }
      }
    }
  }

LABEL_17:
  v41 = 0uLL;
  v42 = 1;
  v26 = [v11 textStorage];
  v27 = [v11 textStorage];
  v28 = [v27 length];

  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v29 = swift_allocObject();
  *(v29 + 16) = a2 & 1;
  *(v29 + 24) = v33;
  *(v29 + 32) = &v41;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1002D77AC;
  *(v30 + 24) = v29;
  v46 = sub_1002D826C;
  v47 = v30;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_10007E0A4;
  v45 = &unk_100A64400;
  v31 = _Block_copy(&aBlock);
  v32 = v33;

  [v26 enumerateAttribute:v10 inRange:0 options:v28 usingBlock:{0x100000, v31}];

  _Block_release(v31);
  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if ((v31 & 1) == 0)
  {

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1002C37F4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    sub_1000082B4(a1, v13, &qword_100AD13D0);
    if (v14)
    {
      sub_1000065A8(0, &qword_100ADC5F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        return;
      }

      v11 = [v12 textAttachment];

      if (!v11)
      {
        return;
      }

      goto LABEL_9;
    }

LABEL_12:
    sub_100004F84(v13, &qword_100AD13D0);
    return;
  }

  sub_1000082B4(a1, v13, &qword_100AD13D0);
  if (!v14)
  {
    goto LABEL_12;
  }

  sub_1000065A8(0, &unk_100AF1DE0);
  if (!swift_dynamicCast())
  {
    return;
  }

  v11 = v12;
LABEL_9:
  sub_1000065A8(0, &unk_100AD43A0);
  if (static NSObject.== infix(_:_:)())
  {
    *a7 = a2;
    *(a7 + 8) = a3;
    *(a7 + 16) = 0;
    *a4 = 1;
  }
}

void sub_1002C397C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1000082B4(a1, v13, &qword_100AD13D0);
  if (v14)
  {
    sub_1000065A8(0, &qword_100ADC5F0);
    if (swift_dynamicCast())
    {
      sub_1000065A8(0, &unk_100AD43A0);
      v9 = [v12 textAttachment];
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        v11 = [a6 textStorage];
        [v11 addAttribute:NSParagraphAttachmentAttributeName value:v12 range:{a2, a3}];
      }
    }
  }

  else
  {
    sub_100004F84(v13, &qword_100AD13D0);
  }
}

void sub_1002C3ADC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v5 = *(v4 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v6 = v5;
  }

  else
  {
    v7 = sub_1007C8890();
    v8 = *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v12 = v8;

    if (!v8)
    {
      return;
    }

    v6 = v12;
  }

  v13 = v6;
  [v6 frame];
  v9 = &v2[OBJC_IVAR____TtC7Journal14CanvasTextView_resizingViewBeginSize];
  *v9 = v10;
  *(v9 + 1) = v11;
  [v2 endEditing:0];
}

void sub_1002C3BC8(void *a1)
{
  v2 = v1;
  v4 = [v1 textLayoutManager];
  if (v4)
  {
    v5 = v4;
    v49.origin = 0uLL;
    LOBYTE(v49.size.width) = 1;
    __chkstk_darwin(v4);
    v47[6] = a1;
    v47[7] = &v49;
    *&v7 = __chkstk_darwin(v6).n128_u64[0];
    v47[2] = sub_1002D3710;
    v47[3] = v8;
    v9 = [v1 textStorage];
    v10 = [v9 length];

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v48 = a1;
      v11 = [v2 textStorage];
      v12 = NSParagraphAttachmentAttributeName;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_1002D835C;
      *(v13 + 24) = v47;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1002D8270;
      *(v14 + 24) = v13;
      v54 = sub_1002D826C;
      v55 = v14;
      aBlock = _NSConcreteStackBlock;
      v51 = 1107296256;
      v52 = sub_10007E0A4;
      v53 = &unk_100A63D48;
      v15 = _Block_copy(&aBlock);

      [v11 enumerateAttribute:v12 inRange:0 options:v10 usingBlock:{0, v15}];

      _Block_release(v15);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (LOBYTE(v49.size.width) == 1 || (origin = v49.origin, v18 = v48, (v19 = sub_1007C8C2C()) == 0))
        {
LABEL_27:

          return;
        }

        v20 = v19;
        [v19 frame];
        v22 = v21;
        v24 = v23;
        v25 = sub_1000F59DC(*&origin.x, *&origin.y);
        if (!v25)
        {
          x = 0.0;
          y = 0.0;
LABEL_16:
          sub_1002C4128(x, y, v22, v24);
          v35 = v34;
          sub_1002C1C88(v18);
          v36 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
          v37 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
          if (v37)
          {
            v38 = *(v37 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
            if (v38)
            {

              v39 = v38;
              sub_10012B2C8();
            }
          }

          v40 = sub_1002B2ED8(v35);
          sub_1002B6FFC(v18, v40, v41);
          v42 = [v2 delegate];
          if (v42)
          {
            v43 = v42;
            if ([v42 respondsToSelector:"textViewDidChange:"])
            {
              [v43 textViewDidChange:v2];
            }

            swift_unknownObjectRelease();
          }

          v44 = *&v2[v36];
          if (v44)
          {
            v45 = *(v44 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
            if (v45)
            {

              v46 = v45;
              sub_10012ACEC();

              return;
            }
          }

          goto LABEL_27;
        }

        v26 = v25;
        size = CGRectNull.size;
        v49.origin = CGRectNull.origin;
        v49.size = size;
        v28 = swift_allocObject();
        *(v28 + 16) = &v49;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_1002D3718;
        *(v29 + 24) = v28;
        v54 = sub_1002D3720;
        v55 = v29;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_1002B0148;
        v53 = &unk_100A63DC0;
        v30 = _Block_copy(&aBlock);

        [v5 enumerateTextSegmentsInRange:v26 type:0 options:0 usingBlock:v30];
        _Block_release(v30);
        LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

        if ((v30 & 1) == 0)
        {
          IsNull = CGRectIsNull(v49);
          if (IsNull)
          {
            x = CGRectZero.origin.x;
          }

          else
          {
            x = v49.origin.x;
          }

          if (IsNull)
          {
            y = CGRectZero.origin.y;
          }

          else
          {
            y = v49.origin.y;
          }

          goto LABEL_16;
        }

LABEL_31:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_31;
  }
}

id sub_1002C4128(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  sub_1002C470C();
  v27 = v9;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  Height = CGRectGetHeight(v31);
  [v4 frame];
  Width = CGRectGetWidth(v32);
  [v4 frame];
  v12 = CGRectGetWidth(v33);
  [v4 frame];
  v13 = CGRectGetWidth(v34);
  [v4 frame];
  v14 = CGRectGetWidth(v35);
  [v4 frame];
  v15 = CGRectGetWidth(v36);
  result = [v4 textLayoutManager];
  if (result)
  {
    v17 = v27 * v14;
    v18 = Height / Width;
    if (Height / Width <= v12 * 0.2 / v13)
    {
      v18 = v12 * 0.2 / v13;
    }

    v19 = v18 * v15;
    v29 = -1.0;
    v30 = 0xBFF0000000000000;
    v20 = result;
    v21 = [result documentRange];
    v22 = [v21 location];

    v23 = swift_allocObject();
    *(v23 + 16) = a1;
    *(v23 + 24) = a2;
    *(v23 + 32) = v17;
    *(v23 + 40) = v19;
    *(v23 + 48) = &v30;
    *(v23 + 56) = &v29;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_100090718;
    *(v24 + 24) = v23;
    aBlock[4] = sub_10009602C;
    aBlock[5] = v24;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100095FB4;
    aBlock[3] = &unk_100A63EB0;
    v25 = _Block_copy(aBlock);

    v26 = [v20 enumerateTextLayoutFragmentsFromLocation:v22 options:0 usingBlock:v25];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(v25);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if (v20)
    {
      __break(1u);
    }

    else
    {
      v29 = v29 + -0.01;
    }
  }

  return result;
}

void sub_1002C4434(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  type metadata accessor for ResizableAssetViewTextAttachment();
  if (!swift_dynamicCastClass() || !swift_dynamicCastClass())
  {
    sub_1000065A8(0, &unk_100AD43A0);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      return;
    }

    goto LABEL_6;
  }

  v10 = a4;
  v11 = a1;
  v12 = static UUID.== infix(_:_:)();

  if (v12)
  {
LABEL_6:
    *a5 = a2;
    *(a5 + 8) = a3;
    *(a5 + 16) = 0;
  }
}

uint64_t sub_1002C4524(void *a1, double *a2, double *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  [a1 layoutFragmentFrame];
  y = v29.origin.y;
  v32.origin.x = a4;
  v32.origin.y = a5;
  v32.size.width = a6;
  v32.size.height = a7;
  if (!CGRectIntersectsRect(v29, v32))
  {
    return 1;
  }

  v15 = *a2;
  if (*a2 < 0.0)
  {
    *a2 = y;
  }

  v16 = [a1 textLineFragments];
  sub_1000065A8(0, &qword_100ADC640);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      [a1 layoutFragmentFrame];
      v24 = v23;
      [v21 typographicBounds];
      v25 = v24 + CGRectGetMaxY(v30);
      v31.origin.x = a4;
      v31.origin.y = a5;
      v31.size.width = a6;
      v31.size.height = a7;
      MaxY = CGRectGetMaxY(v31);

      v27 = v25 <= MaxY;
      if (v25 <= MaxY)
      {
        *a3 = v25;
        ++v19;
        if (v22 != i)
        {
          continue;
        }
      }

      goto LABEL_20;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v27 = 1;
LABEL_20:

  return v27;
}

void sub_1002C470C()
{
  [v0 bounds];
  CGRectGetWidth(v1);
  [v0 textContainerInset];
  [v0 textContainerInset];
  [v0 frame];
  CGRectGetWidth(v2);
  [v0 frame];
  CGRectGetWidth(v3);
  [v0 frame];
  CGRectGetWidth(v4);
  [v0 frame];
  CGRectGetWidth(v5);
}

void sub_1002C4814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v9 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - v10;
  sub_1000065A8(0, &unk_100AD43A0);
  v12 = [a1 textAttachment];
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {
    v14 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
    v15 = *&a5[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
      if (v16)
      {

        v17 = v16;
        sub_10012B2C8();
      }
    }

    v18 = [a1 textAttachment];
    type metadata accessor for ResizableAssetViewTextAttachment();
    if (swift_dynamicCastClass() && (v19 = sub_1006B7F9C()) != 0)
    {
      v20 = v19;
      v21 = type metadata accessor for TaskPriority();
      (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      type metadata accessor for MainActor();
      v22 = a5;
      v23 = v20;
      v24 = static MainActor.shared.getter();
      v25 = swift_allocObject();
      v25[2] = v24;
      v25[3] = &protocol witness table for MainActor;
      v25[4] = v22;
      v25[5] = v23;
      sub_1003E9BBC(0, 0, v11, &unk_10094C480, v25);
    }

    else
    {
    }

    if (a3 == 1)
    {
      v26 = [a5 textStorage];
      v27 = [v26 length];

      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_41:
        swift_once();
LABEL_30:
        v48 = type metadata accessor for Logger();
        sub_10000617C(v48, qword_100ADC2D0);
        v49 = Logger.logObject.getter();
        v50 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v61 = v52;
          *v51 = 136315138;
          v53 = _NSRange.description.getter();
          v55 = sub_100008458(v53, v54, &v61);

          *(v51 + 4) = v55;
          _os_log_impl(&_mh_execute_header, v49, v50, "Deleting lone attachment, removing zero width space at %s", v51, 0xCu);
          sub_10000BA7C(v52);
        }

        v56 = [a5 textStorage];
        [v56 deleteCharactersInRange:{a2, 1}];

        v57 = [a5 delegate];
        if (v57)
        {
          v58 = v57;
          if ([v57 respondsToSelector:"textViewDidChange:"])
          {
            [v58 textViewDidChange:a5];
          }

          swift_unknownObjectRelease();
        }

        v59 = *&a5[v14];
        if (!v59)
        {
          goto LABEL_23;
        }

        v40 = *(v59 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
        if (!v40)
        {
          goto LABEL_23;
        }

LABEL_22:

        v41 = v40;
        sub_10012ACEC();

LABEL_23:
        sub_1002CE314();
        return;
      }

      if (a2 + 1 < v27)
      {
        goto LABEL_12;
      }

      v42 = [a5 textStorage];
      v26 = [v42 attributedSubstringFromRange:{a2, 1}];

      v43 = [v26 string];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (v44 == 9142498 && v46 == 0xA300000000000000)
      {

        goto LABEL_29;
      }

      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v47)
      {
LABEL_29:
        if (qword_100ACFBD8 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_41;
      }
    }

LABEL_12:
    if (qword_100ACFBD8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000617C(v28, qword_100ADC2D0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v61 = v32;
      *v31 = 136315138;
      v33 = _NSRange.description.getter();
      v60 = a5;
      v35 = sub_100008458(v33, v34, &v61);
      a5 = v60;

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "Removing paragraphAttachmentAttributeName attribute from range %s", v31, 0xCu);
      sub_10000BA7C(v32);
    }

    v36 = [a5 textStorage];
    [v36 removeAttribute:NSParagraphAttachmentAttributeName range:{a2, a3}];

    v37 = [a5 delegate];
    if (v37)
    {
      v38 = v37;
      if ([v37 respondsToSelector:"textViewDidChange:"])
      {
        [v38 textViewDidChange:a5];
      }

      swift_unknownObjectRelease();
    }

    v39 = *&a5[v14];
    if (!v39)
    {
      goto LABEL_23;
    }

    v40 = *(v39 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    if (!v40)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }
}

uint64_t sub_1002C4F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_1002C4FDC, v7, v6);
}

uint64_t sub_1002C4FDC()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = *(v0 + 40);

    if (v2)
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

    *(v0 + 72) = v3;
    *(v0 + 80) = v5;

    return _swift_task_switch(sub_1002C50E0, v3, v5);
  }

  else
  {

    **(v0 + 16) = *(v0 + 64) == 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002C50E0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v2 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[11] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1002C529C;

  return sub_10056824C(v1, &protocol witness table for MainActor, v7);
}

uint64_t sub_1002C529C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_1002C53E0, v3, v2);
}

uint64_t sub_1002C53E0()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return _swift_task_switch(sub_1002D827C, v1, v2);
}

id sub_1002C5450(uint64_t a1, void *a2)
{
  v35 = a1;
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v35 - v4;
  v6 = sub_1000F24EC(&unk_100AD7C40);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - v7;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JournalFeatureFlags();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 104))(v17, enum case for JournalFeatureFlags.richCanvas(_:), v13, v15);
  v18 = JournalFeatureFlags.isEnabled.getter();
  (*(v14 + 8))(v17, v13);
  if (v18 & 1) != 0 && (v19 = [a2 itemProvider], (*(v10 + 56))(v8, 1, 1, v9), UTType.init(importedAs:conformingTo:)(), UTType.identifier.getter(), v20 = String._bridgeToObjectiveC()(), , v21 = objc_msgSend(v19, "hasItemConformingToTypeIdentifier:", v20), v19, v20, (*(v10 + 8))(v12, v9), v21) || (v22 = objc_msgSend(a2, "itemProvider", v35), static UTType.heic.getter(), UTType.identifier.getter(), v23 = String._bridgeToObjectiveC()(), , v24 = objc_msgSend(v22, "hasItemConformingToTypeIdentifier:", v23), v22, v23, v25 = *(v10 + 8), v25(v12, v9), (v24) || (v26 = objc_msgSend(a2, "itemProvider"), static UTType.jpeg.getter(), UTType.identifier.getter(), v27 = String._bridgeToObjectiveC()(), , v28 = objc_msgSend(v26, "hasItemConformingToTypeIdentifier:", v27), v26, v27, v25(v12, v9), v28))
  {
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    v30 = swift_allocObject();
    v31 = v36;
    *(v30 + 16) = v36;
    *(v30 + 24) = a2;
    v32 = v31;
    swift_unknownObjectRetain();
    static Task<>.startOnMainActor(priority:_:)();

    return sub_100004F84(v5, &qword_100AD5170);
  }

  else
  {
    v34 = type metadata accessor for CanvasTextView();
    v37.receiver = v36;
    v37.super_class = v34;
    return objc_msgSendSuper2(&v37, "textPasteConfigurationSupporting:transformPasteItem:", v35, a2);
  }
}

uint64_t sub_1002C597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1000F24EC(&unk_100ADC5E0);
  v3[4] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for JournalFeatureFlags();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for AssetPlacement();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[15] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[16] = v8;
  v3[17] = v7;

  return _swift_task_switch(sub_1002C5B98, v8, v7);
}

uint64_t sub_1002C5B98()
{
  v1 = [*(v0 + 24) itemProvider];
  *(v0 + 144) = v1;
  v2 = swift_task_alloc();
  *(v0 + 152) = v2;
  *v2 = v0;
  v2[1] = sub_1002C5C5C;

  return sub_10016E908(v1);
}

uint64_t sub_1002C5C5C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 160) = a1;

  v4 = *(v2 + 136);
  v5 = *(v2 + 128);

  return _swift_task_switch(sub_1002C5DA4, v5, v4);
}

uint64_t sub_1002C5DA4()
{
  if (*(v0 + 160))
  {
    v1 = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry);
    *(v0 + 168) = v1;
    v2 = *(v0 + 120);
    if (v1)
    {
      (*(*(v0 + 104) + 104))(*(v0 + 112), enum case for AssetPlacement.canvas(_:), *(v0 + 96));

      if (v2)
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

      *(v0 + 176) = v3;
      *(v0 + 184) = v5;

      return _swift_task_switch(sub_1002C60A4, v3, v5);
    }

    v6 = *(v0 + 160);
    type metadata accessor for DrawingAsset();
    v7 = 0.0;
    if (swift_dynamicCastClass())
    {
      v8 = *(v0 + 32);
      v9 = v6;
      sub_1001B845C(v8);

      v10 = type metadata accessor for PaperMarkup();
      v11 = *(v10 - 8);
      v12 = (*(v11 + 48))(v8, 1, v10);
      v13 = *(v0 + 32);
      if (v12 == 1)
      {
        sub_100004F84(*(v0 + 32), &unk_100ADC5E0);
      }

      else
      {
        PaperMarkup.bounds.getter();
        v7 = v14;
        (*(v11 + 8))(v13, v10);
      }
    }

    v15 = *(v0 + 160);
    v16 = *(v0 + 16);
    v17 = sub_1002B2ED8(v7);
    v19 = v18;
    v20 = [v16 selectedRange];
    v22 = sub_1002BCD24(v15, v20, v21, 1, 0x100010101uLL, 0, 0, 0.0, 0.0, v17, v19);
  }

  else
  {
  }

  [*(v0 + 24) setNoResult];

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1002C60A4()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 160);
  v6 = *(v0 + 120);
  if (v4)
  {
    *(v0 + 192) = CFAbsoluteTimeGetCurrent();
    v7 = swift_task_alloc();
    *(v0 + 200) = v7;
    *v7 = v0;
    v7[1] = sub_1002C6230;
    v8 = *(v0 + 112);

    return sub_10056B238(v6, &protocol witness table for MainActor, v5, v8, 1);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_1002C659C;
    v11 = *(v0 + 112);

    return sub_1001F8424(v6, &protocol witness table for MainActor, v5, v11);
  }
}

uint64_t sub_1002C6230()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1002C6350, v3, v2);
}

uint64_t sub_1002C6350()
{
  v1 = v0[21];
  (*(v0[7] + 104))(v0[8], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[6]);

  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_1002C6448;
  v3 = v0[8];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v2, v3, sub_1002D8344, v1, &type metadata for () + 8);
}

uint64_t sub_1002C6448()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v4 = v2[22];
    v5 = v2[23];

    return _swift_task_switch(sub_1002C6750, v4, v5);
  }
}

uint64_t sub_1002C659C()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return _swift_task_switch(sub_1002C66BC, v3, v2);
}

uint64_t sub_1002C66BC()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);
  v4 = v0[16];
  v5 = v0[17];

  return _swift_task_switch(sub_1002C68AC, v4, v5);
}

uint64_t sub_1002C6750()
{
  v1 = v0[24];
  v2 = *(v0 + 20);
  v3 = *(v0 + 5);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, &v2[v4], v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_1001F81C4(v3);
  sub_100004F84(v3, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  v7 = *(v0 + 14);
  v8 = *(v0 + 12);
  v9 = *(v0 + 13);

  (*(v9 + 8))(v7, v8);
  v10 = *(v0 + 16);
  v11 = *(v0 + 17);

  return _swift_task_switch(sub_1002C68AC, v10, v11);
}

uint64_t sub_1002C68AC()
{

  v1 = *(v0 + 160);
  type metadata accessor for DrawingAsset();
  v2 = 0.0;
  if (swift_dynamicCastClass())
  {
    v3 = *(v0 + 32);
    v4 = v1;
    sub_1001B845C(v3);

    v5 = type metadata accessor for PaperMarkup();
    v6 = *(v5 - 8);
    v7 = (*(v6 + 48))(v3, 1, v5);
    v8 = *(v0 + 32);
    if (v7 == 1)
    {
      sub_100004F84(*(v0 + 32), &unk_100ADC5E0);
    }

    else
    {
      PaperMarkup.bounds.getter();
      v2 = v9;
      (*(v6 + 8))(v8, v5);
    }
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 16);
  v12 = sub_1002B2ED8(v2);
  v14 = v13;
  v15 = [v11 selectedRange];
  v17 = sub_1002BCD24(v10, v15, v16, 1, 0x100010101uLL, 0, 0, 0.0, 0.0, v12, v14);

  [*(v0 + 24) setNoResult];

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1002C6AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  type metadata accessor for MainActor();
  v3[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[10] = v5;
  v3[11] = v4;

  return _swift_task_switch(sub_1002C6B60, v5, v4);
}

uint64_t sub_1002C6B60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    v2 = [*(v0 + 64) itemProvider];
    *(v0 + 104) = v2;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1002C6C88;

    return sub_10016E908(v2);
  }

  else
  {

    [*(v0 + 64) setNoResult];
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1002C6C88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  *(*v1 + 120) = a1;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);

  return _swift_task_switch(sub_1002C6DD0, v5, v4);
}

uint64_t sub_1002C6DD0()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    sub_1000F24EC(&unk_100AD4780);
    inited = swift_initStackObject();
    *(v0 + 128) = inited;
    *(inited + 16) = xmmword_100941D50;
    *(inited + 32) = v1;
    v3 = v1;

    v4 = swift_task_alloc();
    *(v0 + 136) = v4;
    *v4 = v0;
    v4[1] = sub_1002C6F14;

    return sub_100644FA8(inited);
  }

  else
  {

    swift_unknownObjectRelease();
    [*(v0 + 64) setNoResult];
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002C6F14()
{
  v1 = *(*v0 + 72);

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1002C708C, v2, v4);
}

uint64_t sub_1002C708C()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return _swift_task_switch(sub_1002C70F0, v1, v2);
}

uint64_t sub_1002C70F0()
{
  v1 = *(v0 + 120);

  swift_unknownObjectRelease();

  [*(v0 + 64) setNoResult];
  v2 = *(v0 + 8);

  return v2();
}

id sub_1002C71FC(unint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v5 && (v6 = *(v5 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v7 = *(v6 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v8 = v7;
  }

  else
  {
    v9 = sub_1007C8890();
    v10 = *&v9[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v8 = v10;

    if (!v10)
    {
      return 0;
    }
  }

  v81 = type metadata accessor for JournalAssetView();
  v11 = swift_dynamicCastClass();
  if (!v11 || (v12 = v11, (v13 = (*((swift_isaMask & *v11) + 0xF8))()) == 0))
  {

    return 0;
  }

  v76 = v12;
  v79 = v13;
  v89 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v13);
  v74[6] = &v89;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v74[2] = sub_1002D35D0;
  v74[3] = v16;
  v17 = [v3 textStorage];
  v18 = [v17 length];

  if ((v18 & 0x8000000000000000) != 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v77 = v8;
  v78 = v3;
  v19 = [v3 textStorage];
  v8 = NSParagraphAttachmentAttributeName;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1002D835C;
  *(v20 + 24) = v74;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1002D8270;
  *(v21 + 24) = v20;
  v87 = sub_1002D826C;
  v88 = v21;
  aBlock = _NSConcreteStackBlock;
  v2 = 1107296256;
  v84 = 1107296256;
  v85 = sub_10007E0A4;
  v86 = &unk_100A63A00;
  v22 = _Block_copy(&aBlock);

  [v19 enumerateAttribute:v8 inRange:0 options:v18 usingBlock:{0, v22}];

  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v8 = v89;
  aBlock = _swiftEmptyArrayStorage;
  if (v89 >> 62)
  {
LABEL_66:
    v82 = (v8 & 0xFFFFFFFFFFFFFF8);
    v24 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_12;
  }

  v82 = (v89 & 0xFFFFFFFFFFFFFF8);
  v24 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_12:
  v25 = &off_100AF1000;
  v75 = v4;
  if (!v24)
  {
    v80 = _swiftEmptyArrayStorage;
    goto LABEL_39;
  }

  v26 = 0;
  v4 = v8 & 0xC000000000000001;
  v80 = _swiftEmptyArrayStorage;
  while (2)
  {
    v27 = v26;
    while (1)
    {
      if (v4)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v82 + 2))
        {
          goto LABEL_61;
        }

        v29 = *(v8 + 8 * v27 + 32);
      }

      v30 = v29;
      v26 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v31 = *&v29[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider];
      if (v31)
      {
        v32 = *(v31 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView);
        if (v32)
        {
          v33 = *(v25[505] + v32);
          if (v33)
          {
            break;
          }
        }
      }

      v34 = sub_1007C8890();
      v35 = *(v25[505] + v34);
      v28 = v35;

      if (v35)
      {
        goto LABEL_27;
      }

      v28 = v30;
LABEL_16:

LABEL_17:
      ++v27;
      if (v26 == v24)
      {
        goto LABEL_39;
      }
    }

    v28 = v33;
LABEL_27:
    v36 = swift_dynamicCastClass();
    if (!v36)
    {

      goto LABEL_16;
    }

    v37 = *((swift_isaMask & *v36) + 0xF8);
    v38 = v28;
    v25 = &off_100AF1000;
    v39 = v37();

    if (!v39)
    {
      goto LABEL_17;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v80 = aBlock;
    if (v26 != v24)
    {
      continue;
    }

    break;
  }

LABEL_39:

  v41 = v80;
  if (v80 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v79;
  v43 = 0;
  while (1)
  {
    v8 = v43;
    if (v4 == v43)
    {
      break;
    }

    if ((v41 & 0xC000000000000001) != 0)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_63;
      }

      v44 = *(v41 + 8 * v43 + 32);
    }

    v45 = v44;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_62;
    }

    sub_1000065A8(0, &unk_100AD43A0);
    v46 = static NSObject.== infix(_:_:)();

    v43 = v8 + 1;
    if (v46)
    {
      goto LABEL_51;
    }
  }

  sub_1000F24EC(&unk_100AD4780);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100941D50;
  *(v41 + 32) = v42;
  v47 = v42;
LABEL_51:
  v48 = objc_allocWithZone(type metadata accessor for AssetActivityItemsConfiguration());

  v50 = sub_1001F3F38(v49);
  v51 = v78;
  if (([v78 isEditing] & 1) == 0 && !*(*&v50[OBJC_IVAR____TtC7Journal31AssetActivityItemsConfiguration_assets] + 16))
  {

    return 0;
  }

  v52 = swift_allocObject();
  v53 = v76;
  *(v52 + 16) = v50;
  *(v52 + 24) = v53;
  *(v52 + 32) = v51;
  *(v52 + 40) = v4 != v8;
  v54 = v75;
  *(v52 + 48) = v75;
  v55 = objc_opt_self();
  v87 = sub_1002D35D8;
  v88 = v52;
  aBlock = _NSConcreteStackBlock;
  v84 = v2;
  v85 = sub_1002D1F68;
  v86 = &unk_100A63A50;
  v56 = _Block_copy(&aBlock);
  v80 = v41;
  v57 = v56;
  v82 = v50;
  v58 = v77;
  v59 = v51;
  v60 = v58;
  v61 = v59;
  v62 = v54;

  v40 = [v55 configurationWithIdentifier:0 previewProvider:0 actionProvider:v57];

  v63 = v57;
  v64 = v80;
  _Block_release(v63);
  if (v4 != v8)
  {

    v66 = sub_100890E9C(v65);

    sub_1002C82EC(v66, type metadata accessor for Asset, &qword_100ADC620, type metadata accessor for Asset);

    isa = Set._bridgeToObjectiveC()().super.isa;

    [v40 setSecondaryItemIdentifiers:isa];

    v68 = [v40 secondaryItemIdentifiers];
    v69 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    aBlock = v69;
    v70 = Set._bridgeToObjectiveC()().super.isa;

    [v40 setSecondaryItemIdentifiers:v70];
  }

  if (v64 >> 62)
  {
    v71 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v71 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v82;

  [v40 setBadgeCount:v71];

  return v40;
}

UIMenu sub_1002C7B24(uint64_t a1, void *a2, uint64_t a3, void *a4, char a5, void *a6)
{
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v9 - 8);
  sub_1000F24EC(&unk_100AD4780);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100941D60;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();
  v26 = objc_opt_self();
  v11 = [v26 systemImageNamed:v10];

  sub_1000065A8(0, &qword_100AD4420);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  v14 = a2;
  *(v25 + 32) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x206574656C6544;
  v15._object = 0xE700000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v15);
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v16._countAndFlagsBits = 0x6D68636174744120;
  v16._object = 0xEC00000073746E65;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v16);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = String._bridgeToObjectiveC()();
  v18 = [v26 systemImageNamed:v17];

  [a4 isEditable];
  sub_1000065A8(0, &unk_100AD4D00);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = v19;
  *(v20 + 32) = a6;
  v21 = a6;
  *(v25 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v30.value.super.isa = 0;
  v30.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, 0, v30, 0, 0xFFFFFFFFFFFFFFFFLL, v25, v24);
}

void sub_1002C7FEC(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment);
    if (v9)
    {
      type metadata accessor for ResizableViewTextAttachment();
      v10 = a4;
      v11 = v9;
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        sub_1002B7540(1);

        return;
      }
    }

    v21[2] = a4;
    v21[3] = v8;
    v13 = [v8 textStorage];
    v14 = [v13 length];

    if ((v14 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v15 = [v8 textStorage];
      v16 = NSParagraphAttachmentAttributeName;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1002D3600;
      *(v17 + 24) = v21;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1002D8270;
      *(v18 + 24) = v17;
      aBlock[4] = sub_1002D826C;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10007E0A4;
      aBlock[3] = &unk_100A63B40;
      v19 = _Block_copy(aBlock);

      [v15 enumerateAttribute:v16 inRange:0 options:v14 usingBlock:{0, v19}];

      _Block_release(v19);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    return;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_1002B8F2C();
  }
}

uint64_t sub_1002C82EC(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = &_swiftEmptySetSingleton;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v7 + 56);

    v13 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000F24EC(&qword_100ADC628);
  v9 = static _SetStorage.allocate(capacity:)();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  a2(0);
  sub_10008D118(a3, a4);
  result = Set.Iterator.init(_cocoa:)();
  v7 = v36;
  v11 = v37;
  v12 = v38;
  v13 = v39;
  v14 = v40;
LABEL_11:
  v18 = (v9 + 7);
  while (v7 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22)
    {
LABEL_34:
      sub_100014FF8();

      return v9;
    }

    *&v33 = v22;
    a2(0);
    swift_dynamicCast();
LABEL_25:
    a2(0);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v9[5]);
    v26 = -1 << *(v9 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*&v18[8 * (v27 >> 6)]) != 0)
    {
      v19 = __clz(__rbit64((-1 << v27) & ~*&v18[8 * (v27 >> 6)])) | v27 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = 0;
      v30 = (63 - v26) >> 6;
      do
      {
        if (++v28 == v30 && (v29 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v31 = v28 == v30;
        if (v28 == v30)
        {
          v28 = 0;
        }

        v29 |= v31;
        v32 = *&v18[8 * v28];
      }

      while (v32 == -1);
      v19 = __clz(__rbit64(~v32)) + (v28 << 6);
    }

    *&v18[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
    v20 = v9[6] + 40 * v19;
    *(v20 + 32) = v35;
    *v20 = v33;
    *(v20 + 16) = v34;
    ++v9[2];
  }

  if (v14)
  {
    v21 = v13;
LABEL_24:
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = *(*(v7 + 48) + ((v21 << 9) | (8 * v24)));
    goto LABEL_25;
  }

  v23 = v13;
  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v21 >= ((v12 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v14 = *(v11 + 8 * v21);
    ++v23;
    if (v14)
    {
      v13 = v21;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1002C8650(void *a1)
{
  *&v8 = a1;
  type metadata accessor for Asset();
  sub_10008D118(&qword_100ADC620, type metadata accessor for Asset);
  v2 = a1;
  AnyHashable.init<A>(_:)();
  sub_1002D2128(&v8);
  sub_100177B94(&v4);
  if (!v10)
  {
    return 0;
  }

  v4 = v8;
  v5 = v9;
  v6 = v10;
  v7 = v11;
  AnyHashable.base.getter();
  sub_100177B94(&v4);
  swift_dynamicCast();
  return v12;
}

void sub_1002C8754(void *a1, double a2)
{
  v4 = sub_1002B2ED8(*(v2 + OBJC_IVAR____TtC7Journal14CanvasTextView_resizingViewBeginSize) + a2);

  sub_1002B6FFC(a1, v4, v5);
}

uint64_t sub_1002C87BC()
{
  UITextView.selectedRanges.getter();

  return UITextView.selectedRanges.setter(_swiftEmptyArrayStorage);
}

double *sub_1002C87F4(uint64_t a1, uint64_t a2)
{
  v5 = [v2 textStorage];
  v6 = [v5 attributedSubstringFromRange:{a1, a2}];

  if ([v6 attribute:NSAttachmentAttributeName atIndex:0 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v31 = v36;
  v32 = v37;
  if (!*(&v37 + 1))
  {
    sub_100004F84(&v31, &qword_100AD13D0);
    goto LABEL_14;
  }

  type metadata accessor for ResizableViewTextAttachment();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v7 = v35;
  v8 = sub_1007C8C2C();
  if (!v8)
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = v8;
  type metadata accessor for JournalAssetView();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {

    goto LABEL_13;
  }

  v11 = *((swift_isaMask & *v10) + 0xF8);
  v12 = v9;
  v16 = v11(v12, v13, v14, v15);
  if (!v16)
  {

    goto LABEL_14;
  }

  v17 = v16;
  ObjectType = swift_getObjectType();
  v19 = swift_conformsToProtocol2();
  if (v19)
  {
    v20 = (*(v19 + 8))(ObjectType, v19);
  }

  else
  {
    v20 = [objc_allocWithZone(NSItemProvider) init];
  }

  v23 = v20;
  v24 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v20];
  [v24 setLocalObject:v17];

  v25 = sub_10006B2F0(v17, 3);
  if (v25)
  {
    v26 = v25;
    [v25 setFrame:{0.0, 0.0, 150.0, 150.0}];
    v27 = [v26 layer];
    [v27 setCornerRadius:12.0];

    v28 = swift_allocObject();
    *(v28 + 16) = v26;
    v33 = sub_1002D7BD4;
    v34 = v28;
    *&v31 = _NSConcreteStackBlock;
    *(&v31 + 1) = 1107296256;
    *&v32 = sub_10022B920;
    *(&v32 + 1) = &unk_100A64978;
    v29 = _Block_copy(&v31);
    v30 = v26;

    [v24 setPreviewProvider:v29];
    _Block_release(v29);
    [v24 setNeedsDropPreviewUpdate];
  }

  sub_1000F24EC(&unk_100AD4780);
  v21 = swift_allocObject();
  *(v21 + 1) = xmmword_100941D50;
  *(v21 + 4) = v24;

  v6 = v17;
LABEL_15:

  return v21;
}

void sub_1002C8BC4(uint64_t a1, id a2, void *a3, double a4, double a5)
{
  v6 = v5;
  v42 = a3;
  v46 = _swiftEmptyArrayStorage;
  v11 = [v5 textStorage];
  v12 = [v11 length];

  v41 = a2;
  if (v12 != a2)
  {
    goto LABEL_5;
  }

  v45 = 0;
  v44 = 0;
  v39[2] = &v44;
  v39[3] = &v45;
  v14 = [v6 textStorage];
  v15 = [v14 length];

  if ((v15 & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v16 = [v6 textStorage];
  v40 = NSParagraphAttachmentAttributeName;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1002D7B90;
  *(v17 + 24) = v39;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1002D8270;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1002D826C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A646D0;
  v19 = _Block_copy(aBlock);

  [v16 enumerateAttribute:v40 inRange:0 options:v15 usingBlock:{0, v19}];

  _Block_release(v19);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_33:
    __break(1u);
    return;
  }

  if ((v45 & 1) == 0)
  {
    v22 = [v6 textStorage];
    v23 = [v22 length];

    v24 = [v6 textStorage];
    v25 = sub_1002B1C48();
    [v24 insertAttributedString:v25 atIndex:v23];

    v21 = 1;
    if (a1 < 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
LABEL_5:
    v21 = 0;
    if (a1 < 0)
    {
      goto LABEL_29;
    }
  }

  if ((a1 & 0x4000000000000000) == 0)
  {
    v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_29:
  v26 = _CocoaArrayWrapper.endIndex.getter();
  if (!v26)
  {
    return;
  }

LABEL_10:
  if (v26 < 1)
  {
    __break(1u);
    goto LABEL_32;
  }

  v27 = 0;
  v28 = &v6[OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v29 = *(a1 + 8 * v27 + 32);
    }

    v30 = v29;
    if (*(v28 + 16))
    {
      v31 = 0.0;
    }

    else
    {
      v31 = *v28;
    }

    if (*(v28 + 16))
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v28[1];
    }

    sub_1002C4128(0.0, 0.0, v31, v32);
    v34 = 1.0;
    v35 = 0.33;
    if ((v21 & 1) == 0)
    {
      v34 = sub_1002B2ED8(v33);
      v35 = v36;
    }

    v37 = sub_1002BCD24(v30, v41, v42, 1, 2uLL, 0, 0, a4, a5, v34, v35);
    if (v37)
    {
      v38 = v37;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
    }

    ++v27;
  }

  while (v26 != v27);
}

void sub_1002C9198(void *a1, void *a2)
{
  v4 = [a1 view];
  if (!v4)
  {
    return;
  }

  v38 = v4;
  type metadata accessor for JournalAssetView();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v44 = 0;
    v45 = 0uLL;
    __chkstk_darwin(v5);
    v35 = v7;
    v36 = &v44;
    *&v8 = __chkstk_darwin(v7).n128_u64[0];
    v33 = sub_1002D7BCC;
    v34 = v9;
    v10 = [v2 textStorage];
    v11 = [v10 length];

    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v37 = a2;
      v12 = [v2 textStorage];
      v13 = NSParagraphAttachmentAttributeName;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1002D835C;
      *(v14 + 24) = v32;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1002D8270;
      *(v15 + 24) = v14;
      v42 = sub_1002D826C;
      v43 = v15;
      aBlock = _NSConcreteStackBlock;
      *&v40 = 1107296256;
      *(&v40 + 1) = sub_10007E0A4;
      v41 = &unk_100A648B0;
      v16 = _Block_copy(&aBlock);

      v17 = v13;
      [v12 enumerateAttribute:v13 inRange:0 options:v11 usingBlock:{0, v16}];

      _Block_release(v16);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        if (!v44)
        {
          [v37 setLocalContext:0];

          goto LABEL_13;
        }

        aBlock = v44;
        v40 = v45;
        v19 = v44;
        sub_1000F24EC(&unk_100AE9B70);
        [v37 setLocalContext:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        v20 = swift_unknownObjectRelease();
        __chkstk_darwin(v20);
        v35 = v6;
        v36 = v2;
        *&v22 = __chkstk_darwin(v21).n128_u64[0];
        v33 = sub_1002D8368;
        v34 = v23;
        v24 = [v2 textStorage];
        v25 = [v24 length];

        if ((v25 & 0x8000000000000000) == 0)
        {
          v26 = [v2 textStorage];
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1002D835C;
          *(v27 + 24) = v32;
          v28 = swift_allocObject();
          *(v28 + 16) = sub_1002D8270;
          *(v28 + 24) = v27;
          v42 = sub_1002D826C;
          v43 = v28;
          aBlock = _NSConcreteStackBlock;
          *&v40 = 1107296256;
          *(&v40 + 1) = sub_10007E0A4;
          v41 = &unk_100A64928;
          v29 = _Block_copy(&aBlock);

          [v26 enumerateAttribute:v17 inRange:0 options:v25 usingBlock:{0, v29}];

          _Block_release(v29);
          v30 = swift_isEscapingClosureAtFileLocation();

          if (v30)
          {
            __break(1u);
            goto LABEL_9;
          }

LABEL_13:

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_9:
  v31 = v38;
}

void sub_1002C96DC(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *&a1[OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider];
  if (v10 && (v11 = *(v10 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v12 = *(v11 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v13 = v12;
  }

  else
  {
    v14 = sub_1007C8890();
    v15 = *&v14[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v13 = v15;

    if (!v15)
    {
      return;
    }
  }

  sub_1000065A8(0, &qword_100ADC670);
  v16 = a4;
  v17 = static NSObject.== infix(_:_:)();

  if (v17)
  {
    v19 = *a5;
    *a5 = a1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;
    v18 = a1;
  }
}

void sub_1002C9890(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate;
  *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_resizeDelegate + 8) = &off_100A63538;
  swift_unknownObjectWeakAssign();
  v7 = [v2 textStorage];
  v8 = [v7 length];

  (*((swift_isaMask & *a1) + 0xB0))(1, 1, *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize), *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_preferredRatioSize + 8));
  *(v6 + 1) = &off_100A63538;
  swift_unknownObjectWeakAssign();
  v9 = sub_1002C28F8(0.0, 0.0);
  sub_1007C895C(v9, v10, 0);
  v11 = [objc_allocWithZone(NSTextParagraphAnchoredAttachment) initWithTextAttachment:a1 position:v9];
  v12 = [v3 textStorage];
  v13 = [v12 string];
  if (!v13)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return;
  }

  v14 = v13;

  if (v8 >= a2)
  {
    v15 = a2;
  }

  else
  {
    v15 = v8;
  }

  v16 = [v14 paragraphRangeForRange:{v15, 0}];
  v18 = v17;

  v19 = [v3 textStorage];
  v20 = [v19 length];

  if (!v20)
  {
    if (qword_100ACFBD8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000617C(v21, qword_100ADC2D0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Creating zero width string to anchor attachment in empty document", v24, 2u);
    }

    v25 = [v3 textStorage];
    v26 = sub_1002B1C48();
    [v25 insertAttributedString:v26 atIndex:0];

    v27 = [v3 textStorage];
    v18 = [v27 length];

    v16 = 0;
  }

  v49 = v11;
  v28 = [v3 textStorage];
  v29 = [v28 string];
  if (!v29)
  {
    goto LABEL_22;
  }

  v30 = v29;

  v31 = [v30 paragraphRangeForRange:{v16, v18}];
  v33 = v32;

  v51 = 0;
  v34 = [v3 textStorage];
  v35 = NSParagraphAttachmentAttributeName;
  v36 = swift_allocObject();
  *(v36 + 16) = &v51;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1002D8340;
  *(v37 + 24) = v36;
  aBlock[4] = sub_1002D826C;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007E0A4;
  aBlock[3] = &unk_100A647C0;
  v38 = _Block_copy(aBlock);

  [v34 enumerateAttribute:v35 inRange:v31 options:v33 usingBlock:{0, v38}];

  _Block_release(v38);
  LOBYTE(v38) = swift_isEscapingClosureAtFileLocation();

  if (v38)
  {
    __break(1u);
  }

  else
  {
    v39 = v51;

    if (!v39)
    {
      v48 = [v3 textStorage];
      [v48 addAttribute:v35 value:v49 range:{v16, v18}];

      [v3 setNeedsLayout];
      return;
    }

    v31 = v49;
    if (qword_100ACFBD8 == -1)
    {
      goto LABEL_15;
    }
  }

  swift_once();
LABEL_15:
  v40 = type metadata accessor for Logger();
  sub_10000617C(v40, qword_100ADC2D0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v43 = 136315138;
    v45 = _NSRange.description.getter();
    v47 = sub_100008458(v45, v46, aBlock);

    *(v43 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v41, v42, "Paragraph already has an attachment. Dropping new attachment for range %s.", v43, 0xCu);
    sub_10000BA7C(v44);
  }
}

void sub_1002C9F58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v9 && (v10 = *(v9 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v11 = *(v10 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v12 = v11;
  }

  else
  {
    v13 = sub_1007C8890();
    v14 = *&v13[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v12 = v14;

    if (!v14)
    {
      return;
    }
  }

  sub_1000065A8(0, &qword_100ADC670);
  v15 = a4;
  v16 = static NSObject.== infix(_:_:)();

  if (v16)
  {
    v17 = [a5 textStorage];
    [v17 removeAttribute:NSParagraphAttachmentAttributeName range:{a2, a3}];
  }
}

uint64_t sub_1002CA19C(void *a1)
{
  v3 = v1;
  v55 = a1;
  v4 = type metadata accessor for UTType();
  v52 = *(v4 - 8);
  __chkstk_darwin(v4);
  v54 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for JournalFeatureFlags.richCanvas(_:), v6, v8);
  v11 = JournalFeatureFlags.isEnabled.getter();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0 || ![v3 isEditable])
  {
    return 4;
  }

  v12 = v55;
  [v55 locationInView:v3];
  v14 = v13;
  v16 = v15;
  [v3 textContainerInset];
  v18 = v17;
  [v3 bounds];
  v60.x = v14;
  v60.y = v16;
  v19 = CGRectContainsPoint(v61, v60);
  [v3 textContainerInset];
  if (v19 && v14 >= v20)
  {
    v49 = v18 > v16;
    if (v18 > v16)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

    goto LABEL_12;
  }

  v22 = v18 <= v16;
  if (v14 < v20)
  {
    v22 = 1;
  }

  if (v22 || !v19)
  {
    return 4;
  }

  v49 = 1;
  v21 = 2;
LABEL_12:
  LODWORD(v53) = v21;
  v23 = [v12 localDragSession];
  v48[1] = v3;
  if (v23)
  {
    v24 = [v23 items];
    swift_unknownObjectRelease();
    sub_1000065A8(0, &unk_100AD4C90);
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v25 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v27 = 0;
      while (1)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v28 = *(v25 + 8 * v27 + 32);
        }

        v2 = v28;
        v29 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if ([v28 localObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v57 = 0u;
          v58 = 0u;
        }

        v59[0] = v57;
        v59[1] = v58;
        if (*(&v58 + 1))
        {
          type metadata accessor for Asset();
          if (swift_dynamicCast())
          {

            return v53;
          }
        }

        else
        {
          sub_100004F84(v59, &qword_100AD13D0);
        }

        ++v27;
        if (v29 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:

    v12 = v55;
  }

  v31 = [v12 items];
  sub_1000065A8(0, &unk_100AD4C90);
  v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v32 >> 62)
  {
LABEL_55:
    v51 = v32 & 0xFFFFFFFFFFFFFF8;
    v53 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v51 = v32 & 0xFFFFFFFFFFFFFF8;
    v53 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v52;
  v34 = 0;
  v52 = v32 & 0xC000000000000001;
  v35 = (v33 + 8);
  v50 = v32;
  while (1)
  {
    if (v53 == v34)
    {

      return 4;
    }

    if (v52)
    {
      break;
    }

    if (v34 >= *(v51 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    v36 = *(v32 + 8 * v34 + 32);
    if (__OFADD__(v34, 1))
    {
      goto LABEL_46;
    }

LABEL_40:
    v55 = v36;
    v2 = [v36 itemProvider];
    v37 = v54;
    static UTType.image.getter();
    UTType.identifier.getter();
    v38 = *v35;
    v39 = v4;
    v40 = v37;
    (*v35)(v37, v39);
    v41 = String._bridgeToObjectiveC()();

    v42 = [v2 hasItemConformingToTypeIdentifier:v41];

    if (v42)
    {
      goto LABEL_47;
    }

    static UTType.movie.getter();
    UTType.identifier.getter();
    v38(v40, v39);
    v43 = String._bridgeToObjectiveC()();

    v44 = [v2 hasItemConformingToTypeIdentifier:v43];

    if (v44)
    {
      goto LABEL_47;
    }

    static UTType.livePhoto.getter();
    UTType.identifier.getter();
    v45 = v40;
    v4 = v39;
    v38(v45, v39);
    v46 = String._bridgeToObjectiveC()();

    v47 = [v2 hasItemConformingToTypeIdentifier:v46];

    ++v34;
    v32 = v50;
    if (v47)
    {
      goto LABEL_48;
    }
  }

  v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (!__OFADD__(v34, 1))
  {
    goto LABEL_40;
  }

LABEL_46:
  __break(1u);
LABEL_47:

LABEL_48:

  if (!v49)
  {
    return 1;
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 4;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1002CA8E0(char a1)
{
  v3 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator;
  v4 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator];
  if (a1)
  {
    if (v4)
    {

      [v4 setHidden:1];
    }
  }

  else if (v4)
  {
    v11 = v4;
    [v11 setHidden:0];
    [v1 bringSubviewToFront:v11];
  }

  else
  {
    v5 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
    if (v5)
    {
      v6 = *&v1[OBJC_IVAR____TtC7Journal15JournalTextView_topAccessoryView];
    }

    else
    {
      v6 = v1;
    }

    v7 = objc_allocWithZone(type metadata accessor for CanvasDropIndicatorView());
    v8 = v5;
    v9 = sub_1001ACBE4(v1, v6);
    v10 = *&v1[v3];
    *&v1[v3] = v9;
  }
}

uint64_t sub_1002CAAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for MainActor();
  v5[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_1002CAB48, v7, v6);
}

uint64_t sub_1002CAB48()
{
  v0[9] = *(v0[3] + OBJC_IVAR____TtC7Journal14CanvasTextView_externalDataManager);
  v0[10] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[11] = v2;
  v0[12] = v1;

  return _swift_task_switch(sub_1002CABE8, v2, v1);
}

uint64_t sub_1002CABE8()
{
  v1 = v0[9];
  v2 = v0[4];
  v3 = sub_1000F24EC(&unk_100AE9460);
  v4 = sub_1000F24EC(&qword_100ADC660);
  v5 = static MainActor.shared.getter();
  v0[13] = v5;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1002CAD20;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v3, v4, v5, &protocol witness table for MainActor, &unk_10094C500, v6, v3);
}

uint64_t sub_1002CAD20()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return _swift_task_switch(sub_1002CAE80, v3, v2);
}

uint64_t sub_1002CAE80()
{

  v0[16] = v0[2];
  v1 = v0[7];
  v2 = v0[8];

  return _swift_task_switch(sub_1002CAEEC, v1, v2);
}

uint64_t sub_1002CAEEC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_1002CAFF0;
    v3 = v0[16];

    return sub_100644FA8(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1002CAFF0()
{
  v1 = *(*v0 + 48);

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(sub_1002CB150, v2, v4);
}

uint64_t sub_1002CB150()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return _swift_task_switch(sub_1002CB1C0, v1, v2);
}

uint64_t sub_1002CB1C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002CB220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  sub_1000F24EC(&qword_100AD1420);
  v5[17] = swift_task_alloc();
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = type metadata accessor for AssetPlacement();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  v5[27] = type metadata accessor for MainActor();
  v5[28] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[29] = v10;
  v5[30] = v9;

  return _swift_task_switch(sub_1002CB408, v10, v9);
}

uint64_t sub_1002CB408()
{
  v0[31] = *(v0[15] + OBJC_IVAR____TtC7Journal14CanvasTextView_externalDataManager);
  v0[32] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[33] = v2;
  v0[34] = v1;

  return _swift_task_switch(sub_1002CB4A8, v2, v1);
}

uint64_t sub_1002CB4A8()
{
  v1 = v0[31];
  v2 = v0[16];
  v3 = sub_1000F24EC(&unk_100AE9460);
  v4 = sub_1000F24EC(&qword_100ADC660);
  v5 = static MainActor.shared.getter();
  v0[35] = v5;
  v6 = swift_task_alloc();
  v0[36] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  v0[37] = v7;
  *v7 = v0;
  v7[1] = sub_1002CB5E4;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 14, v3, v4, v5, &protocol witness table for MainActor, &unk_10094C508, v6, v3);
}

uint64_t sub_1002CB5E4()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_1002CB744, v3, v2);
}

uint64_t sub_1002CB744()
{

  v0[38] = v0[14];
  v1 = v0[29];
  v2 = v0[30];

  return _swift_task_switch(sub_1002CB7B0, v1, v2);
}

uint64_t sub_1002CB7B0()
{
  *(v0 + 64) = 0;
  *(v0 + 88) = 0;
  v1 = *(v0 + 120);
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  v2 = swift_task_alloc();
  v2[2] = v1;
  v2[3] = v0 + 64;
  v2[4] = v0 + 88;
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_1002D7B74;
  *(v3 + 24) = v2;
  v4 = [v1 textStorage];
  v5 = [v4 length];

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v6 = [*(v0 + 120) textStorage];
  v28 = NSParagraphAttachmentAttributeName;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002D835C;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1002D8270;
  *(v8 + 24) = v7;
  *(v0 + 48) = sub_1002D826C;
  *(v0 + 56) = v8;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10007E0A4;
  *(v0 + 40) = &unk_100A64518;
  v9 = _Block_copy((v0 + 16));

  [v6 enumerateAttribute:v28 inRange:0 options:v5 usingBlock:{0, v9}];

  _Block_release(v9);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_28;
  }

  *(v0 + 312) = *(v0 + 64);
  if (*(v0 + 80) == 1 || (*(v0 + 328) = *(v0 + 88), v11 = *(v0 + 304), *(v0 + 104) == 1))
  {

LABEL_6:

    v12 = *(v0 + 8);

    return v12();
  }

  if (!(v11 >> 62))
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 344) = v14;
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_31:

    goto LABEL_6;
  }

LABEL_30:
  v27 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 344) = v27;
  if (!v27)
  {
    goto LABEL_31;
  }

LABEL_11:
  v15 = 0;
  *(v0 + 352) = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
  *(v0 + 84) = enum case for AssetPlacement.canvas(_:);
  *(v0 + 108) = enum case for JournalFeatureFlags.enhancedSync(_:);
  *(v0 + 432) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  while (1)
  {
    v16 = *(v0 + 304);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v17 = *(v16 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = v15 + 1;
    *(v0 + 360) = v17;
    *(v0 + 368) = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    v20 = *(*(v0 + 120) + *(v0 + 352));
    *(v0 + 376) = v20;
    if (v20)
    {
      break;
    }

    v21 = *(v0 + 344);
    v22 = sub_1002BCD24(v17, *(v0 + 312), *(v0 + 320), 1, 2uLL, *(v0 + 328), *(v0 + 336), 0.0, 0.0, 0.0, 0.0);

    if (v19 == v21)
    {
      goto LABEL_31;
    }

    v15 = *(v0 + 368);
  }

  v23 = *(v0 + 224);
  (*(*(v0 + 200) + 104))(*(v0 + 208), *(v0 + 84), *(v0 + 192));

  if (v23)
  {
    swift_getObjectType();
    v24 = dispatch thunk of Actor.unownedExecutor.getter();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(v0 + 384) = v24;
  *(v0 + 392) = v26;

  return _swift_task_switch(sub_1002CBC80, v24, v26);
}

uint64_t sub_1002CBC80()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  (*(v2 + 104))(v1, *(v0 + 108), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 224);
  if (v4)
  {
    *(v0 + 400) = CFAbsoluteTimeGetCurrent();
    v6 = swift_task_alloc();
    *(v0 + 408) = v6;
    *v6 = v0;
    v6[1] = sub_1002CBE04;
    v7 = *(v0 + 360);
    v8 = *(v0 + 208);

    return sub_10056B238(v5, &protocol witness table for MainActor, v7, v8, 1);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 424) = v10;
    *v10 = v0;
    v10[1] = sub_1002CC168;
    v11 = *(v0 + 360);
    v12 = *(v0 + 208);

    return sub_1001F8424(v5, &protocol witness table for MainActor, v11, v12);
  }
}

uint64_t sub_1002CBE04()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return _swift_task_switch(sub_1002CBF24, v3, v2);
}

uint64_t sub_1002CBF24()
{
  v1 = *(v0 + 376);
  (*(*(v0 + 152) + 104))(*(v0 + 160), *(v0 + 432), *(v0 + 144));

  v2 = swift_task_alloc();
  *(v0 + 416) = v2;
  *v2 = v0;
  v2[1] = sub_1002CC014;
  v3 = *(v0 + 160);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v2, v3, sub_1002D8344, v1, &type metadata for () + 8);
}

uint64_t sub_1002CC014()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    v4 = v2[48];
    v5 = v2[49];

    return _swift_task_switch(sub_1002CC320, v4, v5);
  }
}

uint64_t sub_1002CC168()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return _swift_task_switch(sub_1002CC288, v3, v2);
}

uint64_t sub_1002CC288()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];

  (*(v2 + 8))(v1, v3);
  v4 = v0[29];
  v5 = v0[30];

  return _swift_task_switch(sub_1002CC484, v4, v5);
}

uint64_t sub_1002CC320()
{
  v1 = v0[50];
  v2 = *(v0 + 45);
  v3 = *(v0 + 17);
  v4 = OBJC_IVAR____TtC7Journal5Asset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, &v2[v4], v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  sub_1001F81C4(v3);
  sub_100004F84(v3, &qword_100AD1420);
  sub_10056B00C(v2, v1);
  v8 = *(v0 + 25);
  v7 = *(v0 + 26);
  v9 = *(v0 + 24);

  (*(v8 + 8))(v7, v9);
  v10 = *(v0 + 29);
  v11 = *(v0 + 30);

  return _swift_task_switch(sub_1002CC484, v10, v11);
}

uint64_t sub_1002CC484()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  while (1)
  {
    v3 = *(v0 + 344);
    v4 = sub_1002BCD24(v1, *(v0 + 312), *(v0 + 320), 1, 2uLL, *(v0 + 328), *(v0 + 336), 0.0, 0.0, 0.0, 0.0);

    if (v2 == v3)
    {
      break;
    }

    v7 = *(v0 + 368);
    v8 = *(v0 + 304);
    if ((v8 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(v8 + 8 * v7 + 32);
    }

    v1 = v5;
    v2 = v7 + 1;
    *(v0 + 360) = v5;
    *(v0 + 368) = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return _swift_task_switch(v5, v8, v6);
    }

    v9 = *(*(v0 + 120) + *(v0 + 352));
    *(v0 + 376) = v9;
    if (v9)
    {
      v10 = *(v0 + 224);
      (*(*(v0 + 200) + 104))(*(v0 + 208), *(v0 + 84), *(v0 + 192));

      if (v10)
      {
        swift_getObjectType();
        v11 = dispatch thunk of Actor.unownedExecutor.getter();
        v6 = v12;
      }

      else
      {
        v11 = 0;
        v6 = 0;
      }

      *(v0 + 384) = v11;
      *(v0 + 392) = v6;
      v5 = sub_1002CBC80;
      v8 = v11;

      return _swift_task_switch(v5, v8, v6);
    }
  }

  v13 = *(v0 + 8);

  return v13();
}

unint64_t sub_1002CC66C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  result = sub_1007C8CA4();
  if ((result & 0x1000000) != 0)
  {
    v13 = [a4 textStorage];
    [v13 removeAttribute:NSParagraphAttachmentAttributeName range:{a2, a3}];

    *a5 = a2;
    *(a5 + 8) = a3;
    *(a5 + 16) = 0;
    v14 = (a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_anchorPosition);
    result = swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    if (*(v14 + 16))
    {
      v15 = 0;
      v16 = 0;
    }

    *a6 = v15;
    *(a6 + 8) = v16;
    *(a6 + 16) = 0;
  }

  return result;
}

uint64_t sub_1002CC748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for AssetPlacement();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[13] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[14] = v8;
  v5[15] = v7;

  return _swift_task_switch(sub_1002CC83C, v8, v7);
}

uint64_t sub_1002CC83C()
{
  v1 = *(v0 + 64);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 128) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:

    v21 = *(v0 + 8);

    return v21();
  }

LABEL_20:
  result = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 128) = result;
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    v4 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
    *(v0 + 136) = NSParagraphAttachmentAttributeName;
    *(v0 + 144) = v4;
    *(v0 + 184) = enum case for AssetPlacement.grid(_:);
    v29 = v0 + 32;
    v5 = &selRef_setRegion_;
    while (1)
    {
      *(v0 + 152) = v3;
      v6 = *(v0 + 64);
      v7 = (v6 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v6 + 8 * v3 + 32);
      v8 = v7;
      *(v0 + 160) = v7;
      v9 = *(v0 + 72);
      v10 = *&v9[*(v0 + 144)];
      *(v0 + 168) = v10;
      if (v10)
      {
        break;
      }

      v11 = swift_task_alloc();
      *(v11 + 16) = v8;
      *(v11 + 24) = v9;
      v12 = swift_task_alloc();
      *(v12 + 16) = sub_1002D7B80;
      *(v12 + 24) = v11;
      v13 = [v9 v5[417]];
      v14 = [v13 length];

      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v30 = *(v0 + 136);
      v31 = *(v0 + 160);
      v15 = v5;
      v16 = [*(v0 + 72) v5[417]];
      v17 = swift_allocObject();
      *(v17 + 16) = sub_1002D835C;
      *(v17 + 24) = v12;
      v18 = swift_allocObject();
      *(v18 + 16) = sub_1002D8270;
      *(v18 + 24) = v17;
      *(v0 + 48) = sub_1002D826C;
      *(v0 + 56) = v18;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_10007E0A4;
      *(v0 + 40) = &unk_100A64590;
      v19 = _Block_copy((v0 + 16));

      [v16 enumerateAttribute:v30 inRange:0 options:v14 usingBlock:{0, v19}];

      _Block_release(v19);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_19;
      }

      v3 = *(v0 + 152) + 1;
      v5 = v15;
      if (v3 == *(v0 + 128))
      {
        goto LABEL_12;
      }
    }

    v22 = *(v0 + 184);
    v24 = *(v0 + 96);
    v23 = *(v0 + 104);
    v25 = *(v0 + 80);
    v26 = *(v0 + 88);

    *v24 = static AssetPlacement.maxGridCount.getter();
    (*(v26 + 104))(v24, v22, v25);

    v27 = swift_task_alloc();
    *(v0 + 176) = v27;
    *v27 = v0;
    v27[1] = sub_1002CCC58;
    v28 = *(v0 + 96);

    return sub_1005666C0(v23, &protocol witness table for MainActor, v8, v28);
  }

  return result;
}

uint64_t sub_1002CCC58()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 80);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_1002CCE1C, v6, v5);
}

void sub_1002CCE1C()
{
  v26 = v0 + 32;
  v1 = *(v0 + 160);
  v2 = *(v0 + 72);
  v3 = &selRef_setRegion_;
  while (1)
  {
    v6 = swift_task_alloc();
    *(v6 + 16) = v1;
    *(v6 + 24) = v2;
    v7 = swift_task_alloc();
    *(v7 + 16) = sub_1002D7B80;
    *(v7 + 24) = v6;
    v8 = [v2 v3[417]];
    v9 = [v8 length];

    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v27 = *(v0 + 136);
    v28 = *(v0 + 160);
    v10 = v3;
    v11 = [*(v0 + 72) v3[417]];
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1002D835C;
    *(v12 + 24) = v7;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1002D8270;
    *(v13 + 24) = v12;
    *(v0 + 48) = sub_1002D826C;
    *(v0 + 56) = v13;
    *(v0 + 16) = _NSConcreteStackBlock;
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_10007E0A4;
    *(v0 + 40) = &unk_100A64590;
    v14 = _Block_copy((v0 + 16));

    [v11 enumerateAttribute:v27 inRange:0 options:v9 usingBlock:{0, v14}];

    _Block_release(v14);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      goto LABEL_16;
    }

    v16 = *(v0 + 152) + 1;
    if (v16 == *(v0 + 128))
    {
      break;
    }

    *(v0 + 152) = v16;
    v17 = *(v0 + 64);
    if ((v17 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v4 = *(v17 + 8 * v16 + 32);
    }

    v1 = v4;
    v3 = v10;
    *(v0 + 160) = v4;
    v2 = *(v0 + 72);
    v5 = *&v2[*(v0 + 144)];
    *(v0 + 168) = v5;
    if (v5)
    {
      v19 = *(v0 + 184);
      v21 = *(v0 + 96);
      v20 = *(v0 + 104);
      v22 = *(v0 + 80);
      v23 = *(v0 + 88);

      *v21 = static AssetPlacement.maxGridCount.getter();
      (*(v23 + 104))(v21, v19, v22);

      v24 = swift_task_alloc();
      *(v0 + 176) = v24;
      *v24 = v0;
      v24[1] = sub_1002CCC58;
      v25 = *(v0 + 96);

      sub_1005666C0(v20, &protocol witness table for MainActor, v1, v25);
      return;
    }
  }

  v18 = *(v0 + 8);

  v18();
}

void sub_1002CD1CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v37 = a5;
  v41 = a4;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&unk_100AEEE20);
  __chkstk_darwin(v11);
  v40 = &v34 - v12;
  v13 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v13 - 8);
  v39 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v34 - v16;
  __chkstk_darwin(v18);
  v20 = &v34 - v19;
  type metadata accessor for ResizableAssetViewTextAttachment();
  if (swift_dynamicCastClass())
  {
    v34 = a2;
    v35 = a3;
    v38 = a1;
    v21 = sub_1006B7F9C();
    if (v21)
    {
      v22 = *(v9 + 16);
      v23 = v21;
      v22(v20, v21 + OBJC_IVAR____TtC7Journal5Asset_id, v8);

      v24 = *(v9 + 56);
      v24(v20, 0, 1, v8);
    }

    else
    {
      v24 = *(v9 + 56);
      v24(v20, 1, 1, v8);
      v22 = *(v9 + 16);
    }

    v22(v17, v41 + OBJC_IVAR____TtC7Journal5Asset_id, v8);
    v24(v17, 0, 1, v8);
    v25 = *(v11 + 48);
    v26 = v40;
    sub_1000082B4(v20, v40, &qword_100AD1420);
    sub_1000082B4(v17, v26 + v25, &qword_100AD1420);
    v27 = *(v9 + 48);
    if (v27(v26, 1, v8) == 1)
    {
      sub_100004F84(v17, &qword_100AD1420);
      sub_100004F84(v20, &qword_100AD1420);
      if (v27(v26 + v25, 1, v8) == 1)
      {
        sub_100004F84(v26, &qword_100AD1420);
LABEL_13:
        v29 = [v37 textStorage];
        [v29 removeAttribute:NSParagraphAttachmentAttributeName range:{v34, v35}];

        goto LABEL_14;
      }
    }

    else
    {
      v28 = v39;
      sub_1000082B4(v26, v39, &qword_100AD1420);
      if (v27(v26 + v25, 1, v8) != 1)
      {
        v30 = v36;
        (*(v9 + 32))(v36, v26 + v25, v8);
        sub_10008D118(&qword_100AD9220, &type metadata accessor for UUID);
        v31 = v28;
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v9 + 8);
        v33(v30, v8);
        sub_100004F84(v17, &qword_100AD1420);
        sub_100004F84(v20, &qword_100AD1420);
        v33(v31, v8);
        sub_100004F84(v26, &qword_100AD1420);
        if (v32)
        {
          goto LABEL_13;
        }

LABEL_11:
        v29 = v38;
LABEL_14:

        return;
      }

      sub_100004F84(v17, &qword_100AD1420);
      sub_100004F84(v20, &qword_100AD1420);
      (*(v9 + 8))(v28, v8);
    }

    sub_100004F84(v26, &unk_100AEEE20);
    goto LABEL_11;
  }
}

uint64_t sub_1002CD724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for AssetPlacement();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[14] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[15] = v9;
  v6[16] = v8;

  return _swift_task_switch(sub_1002CD81C, v9, v8);
}

uint64_t sub_1002CD81C()
{
  v1 = v0[8];
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[17] = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v7 = v0[10];

    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_24;
      }
    }

    result = objc_opt_self();
    if (v8 < 1)
    {
LABEL_28:
      __break(1u);
      return result;
    }

    v9 = result;
    v10 = 0;
    v21 = v0[10] + 32;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v11 = *(v21 + 8 * v10);
      }

      v12 = v11;
      ++v10;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      v0[6] = sub_1002D7B88;
      v0[7] = v13;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100006C7C;
      v0[5] = &unk_100A645E0;
      v14 = _Block_copy(v0 + 2);
      v15 = v12;

      [v9 animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:0.0];

      _Block_release(v14);
    }

    while (v8 != v10);
LABEL_24:

    v20 = v0[1];

    return v20();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v0[17] = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    goto LABEL_28;
  }

  v3 = 0;
  v0[18] = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
  *(v0 + 46) = enum case for AssetPlacement.canvas(_:);
  while (1)
  {
    v0[19] = v3;
    v4 = v0[8];
    v5 = (v4 & 0xC000000000000001) != 0 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v4 + 8 * v3 + 32);
    v0[20] = v5;
    v6 = *(v0[9] + v0[18]);
    v0[21] = v6;
    if (v6)
    {
      break;
    }

    v3 = v0[19] + 1;
    if (v3 == v0[17])
    {
      goto LABEL_10;
    }
  }

  v16 = v0[14];
  v17 = v5;
  (*(v0[12] + 104))(v0[13], *(v0 + 46), v0[11]);

  v18 = swift_task_alloc();
  v0[22] = v18;
  *v18 = v0;
  v18[1] = sub_1002CDB8C;
  v19 = v0[13];

  return sub_1005666C0(v16, &protocol witness table for MainActor, v17, v19);
}

uint64_t sub_1002CDB8C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 128);
  v6 = *(v1 + 120);

  return _swift_task_switch(sub_1002CDD50, v6, v5);
}

uint64_t sub_1002CDD50()
{
  while (1)
  {
    v1 = *(v0 + 152) + 1;
    if (v1 == *(v0 + 136))
    {
      break;
    }

    *(v0 + 152) = v1;
    v2 = *(v0 + 64);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v3 = *(v2 + 8 * v1 + 32);
    }

    *(v0 + 160) = v3;
    v4 = *(*(v0 + 72) + *(v0 + 144));
    *(v0 + 168) = v4;
    if (v4)
    {
      v15 = *(v0 + 112);
      v16 = v3;
      (*(*(v0 + 96) + 104))(*(v0 + 104), *(v0 + 184), *(v0 + 88));

      v17 = swift_task_alloc();
      *(v0 + 176) = v17;
      *v17 = v0;
      v17[1] = sub_1002CDB8C;
      v18 = *(v0 + 104);

      return sub_1005666C0(v15, &protocol witness table for MainActor, v16, v18);
    }
  }

  v5 = *(v0 + 80);

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_10:
      result = objc_opt_self();
      if (v6 < 1)
      {
        __break(1u);
        return result;
      }

      v8 = result;
      v9 = 0;
      v20 = *(v0 + 80) + 32;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v10 = *(v20 + 8 * v9);
        }

        v11 = v10;
        ++v9;
        v12 = swift_allocObject();
        *(v12 + 16) = v11;
        *(v0 + 48) = sub_1002D7B88;
        *(v0 + 56) = v12;
        *(v0 + 16) = _NSConcreteStackBlock;
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_100006C7C;
        *(v0 + 40) = &unk_100A645E0;
        v13 = _Block_copy((v0 + 16));
        v14 = v11;

        [v8 animateWithDuration:4 delay:v13 options:0 animations:0.2 completion:0.0];

        _Block_release(v13);
      }

      while (v6 != v9);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

void sub_1002CE064(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v1 && (v2 = *(v1 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v3 = *(v2 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v4 = v3;
  }

  else
  {
    v5 = sub_1007C8890();
    v6 = *&v5[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v7 = v6;

    if (!v6)
    {
      return;
    }

    v4 = v7;
  }

  v8 = v4;
  [v4 setAlpha:1.0];
}

void sub_1002CE144(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(a4);

  swift_unknownObjectRelease();
}

void sub_1002CE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5)
{
  sub_1000082B4(a1, v9, &qword_100AD13D0);
  if (v10)
  {
    sub_1000065A8(0, &qword_100ADC5F0);
    if (swift_dynamicCast())
    {
      v6 = [v8 textAttachment];

      v7 = *a5;
      *a5 = v6;
    }
  }

  else
  {
    sub_100004F84(v9, &qword_100AD13D0);
  }
}

void sub_1002CE314()
{
  while (1)
  {
    v1 = [v0 textStorage];
    v2 = [v1 string];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    LOBYTE(v3) = sub_1005764B4(v3, v5);

    if ((v3 & 1) == 0)
    {
      break;
    }

    v6 = [v0 textStorage];
    v7 = [v0 textStorage];
    v8 = [v7 length];

    if (__OFSUB__(v8, 1))
    {
      __break(1u);
      return;
    }

    [v6 deleteCharactersInRange:{v8 - 1, 1}];
  }
}

uint64_t sub_1002CE41C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v131 = a4;
  v133 = a3;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 1);
  __chkstk_darwin(v17);
  v123 = v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = v122 - v21;
  __chkstk_darwin(v22);
  v127 = v122 - v23;
  v24 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v24 - 8);
  v26 = v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v132 = v122 - v28;
  v142 = _swiftEmptyArrayStorage;
  v143 = _swiftEmptyArrayStorage;
  v29 = NSParagraphAttachmentAttributeName;
  v30 = swift_allocObject();
  *(v30 + 16) = &v143;
  *(v30 + 24) = &v142;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1002D779C;
  *(v31 + 24) = v30;
  v126 = v30;
  v140 = sub_1002D826C;
  v141 = v31;
  aBlock = _NSConcreteStackBlock;
  v137 = 1107296256;
  v138 = sub_10007E0A4;
  v139 = &unk_100A641F8;
  v32 = _Block_copy(&aBlock);

  v129 = v29;
  v130 = a8;
  v125 = a5;
  v128 = a6;
  [a8 enumerateAttribute:v29 inRange:a5 options:a6 usingBlock:{0, v32}];
  _Block_release(v32);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  else if (!(v143 >> 62))
  {
    v33 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  v33 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:
  v35 = v131;
  v34 = v132;
  v36 = v127;
  if (!v33)
  {
    if (v142 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_57;
      }
    }

    else if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_57:
    }
  }

  v122[2] = a11;
  v122[1] = a10;
  (*(v18 + 56))(v34, 1, 1, v17);

  v38 = sub_1002B01F0(v37, (a9 + 16), v34);

  sub_1000082B4(v34, v26, &qword_100AD1420);
  v39 = (*(v18 + 48))(v26, 1, v17);
  v127 = v38;
  if (v39 == 1)
  {
    sub_100004F84(v26, &qword_100AD1420);
    v40 = v133;
  }

  else
  {
    (*(v18 + 32))(v36, v26, v17);
    v40 = v133;
    if (v38)
    {
      v41 = v123;
      (*(v18 + 16))(v123, v36, v17);
      swift_beginAccess();
      a8 = v38;
      v42 = v124;
      sub_100286F3C(v124, v41);
      swift_endAccess();
      v43 = *(v18 + 8);
      v43(v42, v17);
      v43(v36, v17);
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      *(v34 + 24) = v35;
      v124 = v38;
      v44 = v130;
      v17 = v35;
      if (!v35)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    (*(v18 + 8))(v36, v17);
  }

  v45 = v142;
  v44 = v130;
  if (v142 >> 62)
  {
    goto LABEL_42;
  }

  if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((v45 & 0xC000000000000001) != 0)
      {

        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_67;
        }

        v46 = *(v45 + 32);
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      *(v34 + 24) = v35;
      v124 = v46;
      a8 = v46;
      v17 = v35;
      if (!v35)
      {
LABEL_19:
        if (qword_100ACFBD8 != -1)
        {
          swift_once();
        }

        v47 = type metadata accessor for Logger();
        sub_10000617C(v47, qword_100ADC2D0);
        v48 = Logger.logObject.getter();
        v49 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          aBlock = v51;
          *v50 = 136315138;
          v52 = _NSRange.description.getter();
          v54 = sub_100008458(v52, v53, &aBlock);
          v44 = v130;

          *(v50 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v48, v49, "Creating zero width string to anchor attachment in empty paragraph when modifying range %s", v50, 0xCu);
          sub_10000BA7C(v51);
        }

        v35 = v131;
        v55 = [v44 attributesAtIndex:v125 effectiveRange:0];
        type metadata accessor for Key(0);
        sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        aBlock = a12;
        v137 = a13;

        String.init<A>(_:)();
        v56 = objc_allocWithZone(NSAttributedString);
        v57 = String._bridgeToObjectiveC()();

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v44 = v130;

        v59 = [v56 initWithString:v57 attributes:isa];

        v40 = v133;
        [v44 replaceCharactersInRange:v133 withAttributedString:{0, v59}];
        v17 = [v59 length];

        *(v34 + 16) = v40;
        *(v34 + 24) = v17;
      }

LABEL_24:
      v60 = sub_10013302C(a8, v40, v17);
      v61 = v128;
      if ((v60 & 1) == 0)
      {
        if (qword_100ACFBD8 == -1)
        {
LABEL_26:
          v62 = type metadata accessor for Logger();
          sub_10000617C(v62, qword_100ADC2D0);
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            aBlock = swift_slowAlloc();
            *v65 = 136315394;
            v66 = _NSRange.description.getter();
            v68 = sub_100008458(v66, v67, &aBlock);

            *(v65 + 4) = v68;
            *(v65 + 12) = 2080;
            v69 = _NSRange.description.getter();
            v71 = sub_100008458(v69, v70, &aBlock);

            *(v65 + 14) = v71;
            v40 = v133;
            _os_log_impl(&_mh_execute_header, v63, v64, "Adding chosen anchored attachment to adjustedParagraphRange %s when modifying range %s", v65, 0x16u);
            swift_arrayDestroy();
            v35 = v131;
          }

          v61 = v128;
          [v44 addAttribute:v129 value:a8 range:{v40, v17}];
          goto LABEL_29;
        }

LABEL_67:
        swift_once();
        goto LABEL_26;
      }

LABEL_29:
      v72 = __OFSUB__(v61, v17);
      v45 = v61 - v17;
      if (v72)
      {
        __break(1u);
      }

      else
      {
        v135 = 0;
        v73 = swift_allocObject();
        *(v73 + 16) = &v135;
        v74 = swift_allocObject();
        *(v74 + 16) = sub_1002D77A4;
        *(v74 + 24) = v73;
        v140 = sub_1002D826C;
        v141 = v74;
        aBlock = _NSConcreteStackBlock;
        v137 = 1107296256;
        v138 = sub_10007E0A4;
        v139 = &unk_100A64298;
        v75 = _Block_copy(&aBlock);

        v40 = v133;

        [v44 enumerateAttribute:v129 inRange:v17 + v40 options:v45 usingBlock:{0, v75}];
        _Block_release(v75);
        LOBYTE(v75) = swift_isEscapingClosureAtFileLocation();

        if ((v75 & 1) == 0)
        {
          v76 = v135;

          if (v76 == 1)
          {
            if (qword_100ACFBD8 != -1)
            {
              swift_once();
            }

            v77 = type metadata accessor for Logger();
            sub_10000617C(v77, qword_100ADC2D0);
            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v81 = swift_slowAlloc();
              aBlock = v81;
              *v80 = 136315138;
              v82 = _NSRange.description.getter();
              v84 = sub_100008458(v82, v83, &aBlock);
              v40 = v133;

              *(v80 + 4) = v84;
              v44 = v130;
              _os_log_impl(&_mh_execute_header, v78, v79, "Removing attribute from separator range %s", v80, 0xCu);
              sub_10000BA7C(v81);
            }

            v35 = v131;
            [v44 removeAttribute:v129 range:{v17 + v40, v45}];
          }

          v85 = v124;
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_42:
      ;
    }

    while (_CocoaArrayWrapper.endIndex.getter());
  }

  v34 = swift_allocObject();
  *(v34 + 16) = v40;
  *(v34 + 24) = v35;
  if (qword_100ACFBD8 != -1)
  {
    swift_once();
  }

  v86 = type metadata accessor for Logger();
  sub_10000617C(v86, qword_100ADC2D0);
  v87 = Logger.logObject.getter();
  v88 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v89 = 136315394;
    v90 = v125;
    v91 = v128;
    v92 = _NSRange.description.getter();
    v94 = sub_100008458(v92, v93, &aBlock);

    *(v89 + 4) = v94;
    *(v89 + 12) = 2080;
    v95 = _NSRange.description.getter();
    v97 = sub_100008458(v95, v96, &aBlock);
    v40 = v133;

    *(v89 + 14) = v97;
    v44 = v130;
    _os_log_impl(&_mh_execute_header, v87, v88, "Found anchored attachments, but no chosen attachment. Removing attachment from range %s when modifying range %s", v89, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v91 = v128;
    v90 = v125;
  }

  [v44 removeAttribute:v129 range:{v90, v91}];
  v85 = 0;
LABEL_49:
  v98 = CharacterSet._bridgeToObjectiveC()().super.isa;
  v99 = [a14 rangeOfCharacterFromSet:v98 options:0 range:{v40, v35}];
  v101 = v100;

  if (v99)
  {
    goto LABEL_55;
  }

  swift_beginAccess();
  if (v101 >= *(v34 + 24) || [v44 length] < 2)
  {
    goto LABEL_55;
  }

  if ([v44 length] < v101)
  {
LABEL_58:
    if (qword_100ACFBD8 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    sub_10000617C(v112, qword_100ADC2D0);
    v113 = Logger.logObject.getter();
    v114 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = v85;
      v116 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      aBlock = v117;
      *v116 = 136315138;
      v118 = _NSRange.description.getter();
      v120 = sub_100008458(v118, v119, &aBlock);
      v44 = v130;

      *(v116 + 4) = v120;
      _os_log_impl(&_mh_execute_header, v113, v114, "Removing leading zero width space at: %s", v116, 0xCu);
      sub_10000BA7C(v117);

      v85 = v115;
    }

    v121 = String._bridgeToObjectiveC()();
    [v44 replaceCharactersInRange:0 withString:{v101, v121}];

    goto LABEL_56;
  }

  v102 = v85;
  v103 = [v44 mutableString];
  v104 = [v103 paragraphRangeForRange:{0, v101}];
  v106 = v105;

  v134 = 0;
  v107 = swift_allocObject();
  *(v107 + 16) = &v134;
  v108 = swift_allocObject();
  *(v108 + 16) = sub_1002D833C;
  *(v108 + 24) = v107;
  v140 = sub_1002D826C;
  v141 = v108;
  aBlock = _NSConcreteStackBlock;
  v137 = 1107296256;
  v138 = sub_10007E0A4;
  v139 = &unk_100A64310;
  v109 = _Block_copy(&aBlock);

  v44 = v130;

  [v44 enumerateAttribute:v129 inRange:v104 options:v106 usingBlock:{0, v109}];
  _Block_release(v109);
  LOBYTE(v104) = swift_isEscapingClosureAtFileLocation();

  if ((v104 & 1) == 0)
  {
    v111 = v134;

    v85 = v102;
    if (v111)
    {
LABEL_55:

LABEL_56:
      sub_100004F84(v132, &qword_100AD1420);
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  __break(1u);
  return result;
}

void sub_1002CF63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_1000082B4(a1, v13, &qword_100AD13D0);
  if (v14)
  {
    sub_1000065A8(0, &qword_100ADC5F0);
    if (swift_dynamicCast())
    {
      v8 = [v12 textAttachment];
      swift_getObjectType();
      v9 = swift_conformsToProtocol2();

      v10 = v12;
      if (v9)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      else
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  else
  {
    sub_100004F84(v13, &qword_100AD13D0);
  }
}

void sub_1002CF850(void *a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  type metadata accessor for ResizableAssetViewTextAttachment();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    return;
  }

  v9 = *(v8 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v9)
  {
    v10 = *(v9 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView);
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView);
      if (v11)
      {
        v12 = a1;
        v22 = v11;
        goto LABEL_7;
      }
    }
  }

  v21 = a1;
  v13 = sub_1007C8890();
  v14 = *&v13[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
  v22 = v14;

  if (v14)
  {
LABEL_7:
    type metadata accessor for DrawingAssetView();
    v15 = swift_dynamicCastClass();
    if (v15)
    {
      v16 = *(v15 + OBJC_IVAR____TtC7Journal16DrawingAssetView_paperKitCanvasView);
      if (v16)
      {
        type metadata accessor for PaperKitDrawingCanvasView();
        v17 = v16;
        v18 = a4;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          *a5 = 1;
        }

        return;
      }
    }

    v20 = v22;
    goto LABEL_14;
  }

  v20 = v21;
LABEL_14:
}

uint64_t *sub_1002CF9C4(void *a1)
{
  v2 = v1;
  v137 = a1;
  v132 = sub_1000F24EC(&qword_100ADC6B8);
  v123 = *(v132 - 8);
  v3 = __chkstk_darwin(v132);
  v133 = &v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v134 = &v104 - v5;
  v6 = sub_1000F24EC(&qword_100ADC6C0);
  v114 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v125 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v126 = &v104 - v9;
  v10 = sub_1000F24EC(&qword_100ADC6C8);
  v11 = __chkstk_darwin(v10 - 8);
  v127 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v128 = &v104 - v13;
  v110 = sub_1000F24EC(&qword_100ADC6D0);
  v136 = *(v110 - 8);
  __chkstk_darwin(v110);
  v109 = &v104 - v14;
  v138 = sub_1000F24EC(&qword_100ADC6D8);
  v113 = *(v138 - 8);
  v15 = __chkstk_darwin(v138);
  v129 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v130 = &v104 - v17;
  v18 = sub_1000F24EC(&qword_100AE4C80);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v112 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v116 = &v104 - v23;
  v24 = __chkstk_darwin(v22);
  v111 = &v104 - v25;
  __chkstk_darwin(v24);
  v27 = &v104 - v26;
  v28 = sub_1000F24EC(&qword_100ADC6E0);
  v29 = __chkstk_darwin(v28 - 8);
  v31 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v104 - v32;
  v34 = *((swift_isaMask & *v2) + 0x68);
  swift_beginAccess();
  v35 = *(v19 + 16);
  v122 = v34;
  v139 = v2;
  v121 = v19 + 16;
  v120 = v35;
  v35(v27, &v2[v34], v18);
  sub_1002D815C(&qword_100ADC6E8, &qword_100AE4C80);
  CRType.observableDifference(from:)();
  v36 = *(v19 + 8);
  v124 = v18;
  v119 = v19 + 8;
  v118 = v36;
  v36(v27, v18);
  sub_1000082B4(v33, v31, &qword_100ADC6E0);
  v37 = sub_1000F24EC(&qword_100ADC6F0);
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v31, 1, v37) == 1)
  {
    sub_100004F84(v33, &qword_100ADC6E0);
    sub_100004F84(v31, &qword_100ADC6E0);
    return 0;
  }

  v39 = CRAttributedString.ObservableDifference.edits.getter();
  (*(v38 + 8))(v31, v37);
  if (!*(v39 + 16))
  {
    sub_100004F84(v33, &qword_100ADC6E0);

    return 0;
  }

  v105 = v33;
  v40 = v139;
  [v139 beginEditing];
  v41 = *(v39 + 16);
  if (!v41)
  {
LABEL_83:
    result = [v40 endEditing];
    __break(1u);
    return result;
  }

  v42 = *v40;
  v43 = swift_isaMask & *v40;
  v115 = *(v43 + 0x60);
  v108 = *(v43 + 128);
  v117 = (v39 + 32);
  v107 = (v136 + 1);
  v136 = (v114 + 48);
  v131 = *((swift_isaMask & v42) + 0x78);
  v135 = (v114 + 32);
  v44 = (v123 + 8);
  v45 = (v114 + 8);
  v106 = (v113 + 8);

  v46 = 0;
  v47 = v116;
  v114 = v39;
  v113 = v41;
  do
  {
    if (v46 >= *(v39 + 16))
    {
      goto LABEL_71;
    }

    v48 = &v117[4 * v46];
    v50 = *v48;
    v49 = v48[1];
    v51 = *(v48 + 24);
    v123 = v46;
    if (v51)
    {
      v40 = v139;
      [v139 edited:1 range:v50 changeInLength:{v49, 0}];
      v120(v47, v40 + v122, v124);
      v52 = v49 + v50;
      if (__OFADD__(v50, v49))
      {
        goto LABEL_73;
      }

      if (v52 < v50)
      {
        goto LABEL_74;
      }

      v40 = v47;
      if (v50 != v52)
      {
        v53 = *&v139[v108];
        v54 = *&v139[v115];
        v137 = v53;
        v55 = v47;
        v56 = v109;
        CRAttributedString.subscript.getter();
        v57 = v130;
        v58 = v110;
        CRAttributedString.Substring.runs.getter();
        (*v107)(v56, v58);
        v59 = v128;
        CRAttributedString.Runs.next()();
        v60 = *v136;
        if ((*v136)(v59, 1, v6) != 1)
        {
          v61 = *v135;
          v62 = v126;
          while (1)
          {
            v61(v62, v59, v6);
            v40 = CRAttributedString.Runs.Run.range.getter();
            v63 = CRAttributedString.Runs.Run.range.getter();
            v65 = v64 - v63;
            if (__OFSUB__(v64, v63))
            {
              break;
            }

            CRAttributedString.Runs.Run.attributes.getter();
            sub_1003D2E98(v137, &v139[v131]);
            type metadata accessor for Key(0);
            sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v54 setAttributes:isa range:{v40, v65}];

            if (__OFSUB__(v40, 1))
            {
              goto LABEL_62;
            }

            v67 = v40 + v65;
            if (__OFADD__(v40, v65))
            {
              goto LABEL_64;
            }

            v68 = (v67 + 1);
            if (__OFADD__(v67, 1))
            {
              goto LABEL_66;
            }

            v40 = ((v40 - 1) & ~((v40 - 1) >> 63));
            v69 = [v54 length];
            if (v69 >= v68)
            {
              v70 = v68;
            }

            else
            {
              v70 = v69;
            }

            if (v70 < v40)
            {
              goto LABEL_68;
            }

            v140.value.location = v40;
            v140.is_nil = 0;
            v140.value.length = v70 - v40;
            NSMutableAttributedString.ensureListIntegrity(range:)(v140);
            (*v44)(v134, v132);
            v62 = v126;
            (*v45)(v126, v6);
            v59 = v128;
            CRAttributedString.Runs.next()();
            if (v60(v59, 1, v6) == 1)
            {
              v57 = v130;
              v47 = v116;
              v40 = v116;
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v40 = v55;
        v47 = v55;
        goto LABEL_7;
      }
    }

    else
    {
      v40 = v48[2];
      v71 = v139;
      [v139 edited:2 range:v50 changeInLength:{v49, v40}];
      v72 = v40 + v49;
      if (__OFADD__(v49, v40))
      {
        goto LABEL_72;
      }

      v73 = *&v71[v115];
      v74 = v111;
      v75 = v124;
      v120(v111, &v71[v122], v124);
      v40 = v73;
      v76 = CRAttributedString.attributedString.getter();
      v118(v74, v75);
      v77 = [v76 string];
      if (!v77)
      {
        goto LABEL_82;
      }

      v78 = v77;

      v79 = [v78 substringWithRange:{v50, v72}];
      if (!v79)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = String._bridgeToObjectiveC()();
      }

      [v40 replaceCharactersInRange:v50 withString:{v49, v79}];

      v40 = v112;
      v120(v112, &v139[v122], v124);
      v80 = &v72[v50];
      if (__OFADD__(v50, v72))
      {
        goto LABEL_75;
      }

      if (v80 < v50)
      {
        goto LABEL_76;
      }

      v47 = v116;
      v39 = v114;
      v41 = v113;
      if (v50 != v80)
      {
        v81 = *&v139[v108];
        v54 = *&v139[v115];
        v137 = v81;
        v82 = v109;
        v83 = v112;
        CRAttributedString.subscript.getter();
        v57 = v129;
        v84 = v110;
        CRAttributedString.Substring.runs.getter();
        (*v107)(v82, v84);
        v85 = v127;
        CRAttributedString.Runs.next()();
        v86 = *v136;
        if ((*v136)(v85, 1, v6) != 1)
        {
          v87 = *v135;
          v88 = v125;
          while (1)
          {
            v87(v88, v85, v6);
            v40 = CRAttributedString.Runs.Run.range.getter();
            v89 = CRAttributedString.Runs.Run.range.getter();
            v91 = v90 - v89;
            if (__OFSUB__(v90, v89))
            {
              goto LABEL_63;
            }

            CRAttributedString.Runs.Run.attributes.getter();
            sub_1003D2E98(v137, &v139[v131]);
            type metadata accessor for Key(0);
            sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
            v92 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v54 setAttributes:v92 range:{v40, v91}];

            if (__OFSUB__(v40, 1))
            {
              goto LABEL_65;
            }

            v93 = v40 + v91;
            if (__OFADD__(v40, v91))
            {
              goto LABEL_67;
            }

            v94 = (v93 + 1);
            if (__OFADD__(v93, 1))
            {
              goto LABEL_69;
            }

            v40 = ((v40 - 1) & ~((v40 - 1) >> 63));
            v95 = [v54 length];
            if (v95 >= v94)
            {
              v96 = v94;
            }

            else
            {
              v96 = v95;
            }

            if (v96 < v40)
            {
              goto LABEL_70;
            }

            v141.value.location = v40;
            v141.is_nil = 0;
            v141.value.length = v96 - v40;
            NSMutableAttributedString.ensureListIntegrity(range:)(v141);
            (*v44)(v133, v132);
            v88 = v125;
            (*v45)(v125, v6);
            v85 = v127;
            CRAttributedString.Runs.next()();
            if (v86(v85, 1, v6) == 1)
            {
              v57 = v129;
              v40 = v112;
              goto LABEL_46;
            }
          }
        }

        v40 = v83;
LABEL_46:
        v47 = v116;
LABEL_7:

        (*v106)(v57, v138);
        v39 = v114;
        v41 = v113;
      }
    }

    v46 = v123 + 1;
    v118(v40, v124);
  }

  while (v46 != v41);

  [v139 endEditing];
  v97 = *(v39 + 16);
  if (!v97)
  {
    goto LABEL_77;
  }

  if (v41 > v97)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v40 = *v117;
  v98 = *(v39 + 40);
  v99 = (v39 + 32 * v41);
  v100 = *v99;
  v101 = v99[1];

  sub_100004F84(v105, &qword_100ADC6E0);
  v102 = v40 + v98;
  if (__OFADD__(v40, v98))
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  if (__OFADD__(v100, v101))
  {
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  if (v102 <= &v101[v100])
  {
    v102 = &v101[v100];
  }

  if (v40 >= v100)
  {
    result = v100;
  }

  else
  {
    result = v40;
  }

  if (__OFSUB__(v102, result))
  {
    goto LABEL_81;
  }

  return result;
}

id sub_1002D0A44(void *a1)
{
  v161 = a1;
  v156 = sub_1000F24EC(&qword_100ADC710);
  *&v153 = *(v156 - 8);
  __chkstk_darwin(v156);
  v157 = &v121 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v158 = &v121 - v4;
  v5 = sub_1000F24EC(&qword_100ADC718);
  v152 = *(v5 - 8);
  __chkstk_darwin(v5);
  v144 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v145 = &v121 - v8;
  v9 = sub_1000F24EC(&qword_100ADC720);
  __chkstk_darwin(v9 - 8);
  v146 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v147 = &v121 - v12;
  v126 = sub_1000F24EC(&qword_100ADC728);
  v160 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v121 - v13;
  v162 = sub_1000F24EC(&unk_100ADC730);
  v143 = *(v162 - 8);
  __chkstk_darwin(v162);
  v148 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v149 = &v121 - v16;
  v17 = sub_1000F24EC(&unk_100AD6240);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v130 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v135 = &v121 - v21;
  __chkstk_darwin(v22);
  v127 = &v121 - v23;
  __chkstk_darwin(v24);
  v26 = &v121 - v25;
  v27 = sub_1000F24EC(&qword_100ADC740);
  __chkstk_darwin(v27 - 8);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v121 - v31;
  v33 = *((swift_isaMask & *v1) + 0x68);
  swift_beginAccess();
  v34 = *(v18 + 16);
  v129 = v1;
  v140 = v33;
  v139 = v18 + 16;
  v138 = v34;
  v34(v26, &v1[v33], v17);
  sub_1002D815C(&qword_100ADC748, &unk_100AD6240);
  CRType.observableDifference(from:)();
  v35 = *(v18 + 8);
  v137 = v18 + 8;
  v136 = v35;
  v35(v26, v17);
  sub_1000082B4(v32, v29, &qword_100ADC740);
  v36 = sub_1000F24EC(&qword_100ADC750);
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v29, 1, v36) == 1)
  {
    sub_100004F84(v32, &qword_100ADC740);
    sub_100004F84(v29, &qword_100ADC740);
    return 0;
  }

  v38 = CRAttributedString.ObservableDifference.edits.getter();
  (*(v37 + 8))(v29, v36);
  if (!*(v38 + 16))
  {
    sub_100004F84(v32, &qword_100ADC740);

    return 0;
  }

  v121 = v32;
  v39 = v129;
  [v129 beginEditing];
  v40 = *(v38 + 16);
  if (!v40)
  {
LABEL_82:
    result = [v39 endEditing];
    __break(1u);
    return result;
  }

  v41 = *v39;
  v42 = swift_isaMask & *v39;
  v133 = *(v42 + 0x60);
  v124 = *(v42 + 128);
  v43 = (v39 + *((swift_isaMask & v41) + 0x78));
  v134 = (v38 + 32);
  v123 = (v160 + 1);
  v160 = (v152 + 48);
  v159 = (v152 + 32);
  v155 = NSFontAttributeName;
  v154 = NSForegroundColorAttributeName;
  v151 = (v153 + 8);
  v150 = (v152 + 8);
  v122 = (v143 + 8);

  v44 = 0;
  v153 = xmmword_100940050;
  v128 = v17;
  v45 = v135;
  v132 = v38;
  v131 = v40;
  v152 = v5;
  do
  {
    if (v44 >= *(v38 + 16))
    {
      goto LABEL_70;
    }

    v141 = v44;
    v46 = &v134[4 * v44];
    v47 = *v46;
    v48 = v46[1];
    if (v46[3])
    {
      [v39 edited:1 range:v47 changeInLength:{v48, 0}];
      v138(v45, v39 + v140, v17);
      v49 = &v48[v47];
      if (__OFADD__(v47, v48))
      {
        goto LABEL_72;
      }

      if (v49 < v47)
      {
        goto LABEL_73;
      }

      if (v47 != v49)
      {
        v50 = *(v39 + v124);
        v51 = *(v39 + v133);
        v161 = v50;
        v52 = v125;
        v53 = v135;
        CRAttributedString.subscript.getter();
        v54 = v149;
        v55 = v126;
        CRAttributedString.Substring.runs.getter();
        (*v123)(v52, v55);
        v56 = v147;
        CRAttributedString.Runs.next()();
        v143 = *v160;
        if ((v143)(v56, 1, v5) != 1)
        {
          v142 = *v159;
          v57 = v145;
          while (1)
          {
            v142(v57, v56, v5);
            v58 = CRAttributedString.Runs.Run.range.getter();
            v59 = CRAttributedString.Runs.Run.range.getter();
            v61 = v60 - v59;
            if (__OFSUB__(v60, v59))
            {
              break;
            }

            CRAttributedString.Runs.Run.attributes.getter();
            sub_1000F24EC(&unk_100AD9200);
            inited = swift_initStackObject();
            *(inited + 16) = v153;
            v63 = v155;
            *(inited + 32) = v155;
            sub_10000CA14(v43, v43[3]);
            v64 = v63;
            v65 = dispatch thunk of CustomAttributeProvider.defaultFont(compatibleWith:)();
            v66 = sub_1000065A8(0, &qword_100AD2A78);
            *(inited + 40) = v65;
            v67 = v154;
            *(inited + 64) = v66;
            *(inited + 72) = v67;
            v39 = v43[4];
            sub_10000CA14(v43, v43[3]);
            v68 = v67;
            v69 = dispatch thunk of CustomAttributeProvider.defaultTextColor.getter();
            *(inited + 104) = sub_1000065A8(0, &qword_100AD4C70);
            *(inited + 80) = v69;
            sub_10007BDBC(inited);
            swift_setDeallocating();
            sub_1000F24EC(&unk_100AD9210);
            swift_arrayDestroy();
            type metadata accessor for Key(0);
            sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
            isa = Dictionary._bridgeToObjectiveC()().super.isa;

            [v51 setAttributes:isa range:{v58, v61}];

            if (__OFSUB__(v58, 1))
            {
              goto LABEL_61;
            }

            v71 = v58 + v61;
            if (__OFADD__(v58, v61))
            {
              goto LABEL_63;
            }

            v72 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_65;
            }

            v73 = (v58 - 1) & ~((v58 - 1) >> 63);
            v74 = [v51 length];
            if (v74 >= v72)
            {
              v75 = v72;
            }

            else
            {
              v75 = v74;
            }

            if (v75 < v73)
            {
              goto LABEL_67;
            }

            v164.value.location = v73;
            v164.is_nil = 0;
            v164.value.length = v75 - v73;
            NSMutableAttributedString.ensureListIntegrity(range:)(v164);
            (*v151)(v158, v156);
            v57 = v145;
            v5 = v152;
            (*v150)(v145, v152);
            v56 = v147;
            CRAttributedString.Runs.next()();
            if ((v143)(v56, 1, v5) == 1)
            {
              v54 = v149;
              v76 = &v163;
              goto LABEL_45;
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
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        goto LABEL_6;
      }
    }

    else
    {
      v77 = v46[2];
      [v39 edited:2 range:v47 changeInLength:{v48, v77}];
      v78 = v77 + v48;
      if (__OFADD__(v48, v77))
      {
        goto LABEL_71;
      }

      v79 = *(v39 + v133);
      v80 = v39 + v140;
      v39 = v127;
      v138(v127, v80, v17);
      v81 = v17;
      v82 = v79;
      v83 = CRAttributedString.attributedString.getter();
      v136(v39, v81);
      v84 = [v83 string];
      if (!v84)
      {
        goto LABEL_81;
      }

      v85 = v84;

      v86 = [v85 substringWithRange:{v47, v78}];
      if (!v86)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v86 = String._bridgeToObjectiveC()();
      }

      [v82 replaceCharactersInRange:v47 withString:{v48, v86}];

      v39 = v129;
      v45 = v130;
      v17 = v128;
      v138(v130, &v129[v140], v128);
      v87 = __OFADD__(v47, v78);
      v88 = &v47[v78];
      v38 = v132;
      v40 = v131;
      if (v87)
      {
        goto LABEL_74;
      }

      if (v88 < v47)
      {
        goto LABEL_75;
      }

      if (v47 != v88)
      {
        v89 = *(v39 + v124);
        v51 = *(v39 + v133);
        v161 = v89;
        v90 = v125;
        v53 = v130;
        CRAttributedString.subscript.getter();
        v54 = v148;
        v91 = v126;
        CRAttributedString.Substring.runs.getter();
        (*v123)(v90, v91);
        v92 = v146;
        CRAttributedString.Runs.next()();
        v143 = *v160;
        if ((v143)(v92, 1, v5) != 1)
        {
          v142 = *v159;
          v93 = v144;
          while (1)
          {
            v142(v93, v92, v5);
            v94 = CRAttributedString.Runs.Run.range.getter();
            v95 = CRAttributedString.Runs.Run.range.getter();
            v97 = v96 - v95;
            if (__OFSUB__(v96, v95))
            {
              goto LABEL_62;
            }

            CRAttributedString.Runs.Run.attributes.getter();
            sub_1000F24EC(&unk_100AD9200);
            v98 = swift_initStackObject();
            *(v98 + 16) = v153;
            v99 = v155;
            *(v98 + 32) = v155;
            sub_10000CA14(v43, v43[3]);
            v100 = v99;
            v101 = dispatch thunk of CustomAttributeProvider.defaultFont(compatibleWith:)();
            v102 = sub_1000065A8(0, &qword_100AD2A78);
            *(v98 + 40) = v101;
            v103 = v154;
            *(v98 + 64) = v102;
            *(v98 + 72) = v103;
            v39 = v43[4];
            sub_10000CA14(v43, v43[3]);
            v104 = v103;
            v105 = dispatch thunk of CustomAttributeProvider.defaultTextColor.getter();
            *(v98 + 104) = sub_1000065A8(0, &qword_100AD4C70);
            *(v98 + 80) = v105;
            sub_10007BDBC(v98);
            swift_setDeallocating();
            sub_1000F24EC(&unk_100AD9210);
            swift_arrayDestroy();
            type metadata accessor for Key(0);
            sub_10008D118(&qword_100ADC650, type metadata accessor for Key);
            v106 = Dictionary._bridgeToObjectiveC()().super.isa;

            [v51 setAttributes:v106 range:{v94, v97}];

            if (__OFSUB__(v94, 1))
            {
              goto LABEL_64;
            }

            v107 = v94 + v97;
            if (__OFADD__(v94, v97))
            {
              goto LABEL_66;
            }

            v108 = v107 + 1;
            if (__OFADD__(v107, 1))
            {
              goto LABEL_68;
            }

            v109 = (v94 - 1) & ~((v94 - 1) >> 63);
            v110 = [v51 length];
            if (v110 >= v108)
            {
              v111 = v108;
            }

            else
            {
              v111 = v110;
            }

            if (v111 < v109)
            {
              goto LABEL_69;
            }

            v165.value.location = v109;
            v165.is_nil = 0;
            v165.value.length = v111 - v109;
            NSMutableAttributedString.ensureListIntegrity(range:)(v165);
            (*v151)(v157, v156);
            v93 = v144;
            v5 = v152;
            (*v150)(v144, v152);
            v92 = v146;
            CRAttributedString.Runs.next()();
            if ((v143)(v92, 1, v5) == 1)
            {
              v54 = v148;
              v76 = &v160;
LABEL_45:
              v45 = *(v76 - 32);
              v39 = v129;
              v17 = v128;
              goto LABEL_7;
            }
          }
        }

LABEL_6:
        v45 = v53;
LABEL_7:

        (*v122)(v54, v162);
        v38 = v132;
        v40 = v131;
      }
    }

    v44 = v141 + 1;
    v136(v45, v17);
    v45 = v135;
  }

  while (v44 != v40);

  [v39 endEditing];
  v112 = *(v38 + 16);
  if (!v112)
  {
    goto LABEL_76;
  }

  v113 = v121;
  if (v40 > v112)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v114 = *v134;
  v115 = *(v38 + 40);
  v116 = (v38 + 32 * v40);
  v117 = *v116;
  v118 = v116[1];

  sub_100004F84(v113, &qword_100ADC740);
  v119 = &v114[v115];
  if (__OFADD__(v114, v115))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (__OFADD__(v117, v118))
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v119 <= &v118[v117])
  {
    v119 = &v118[v117];
  }

  if (v114 >= v117)
  {
    result = v117;
  }

  else
  {
    result = v114;
  }

  if (__OFSUB__(v119, result))
  {
    goto LABEL_80;
  }

  return result;
}

double sub_1002D1E70@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1002D1EF0(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

id sub_1002D1F68(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000065A8(0, &unk_100ADC630);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = v1(v2);

  return v3;
}

void sub_1002D1FF8(uint64_t a1)
{
  v3 = *v1;
  v4 = NSObject._rawHashValue(seed:)(*(*v1 + 40));
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    type metadata accessor for JournalMO();
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

unint64_t sub_1002D2128@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  result = AnyHashable._rawHashValue(seed:)(*(*v1 + 40));
  v6 = -1 << *(v4 + 32);
  v7 = result & ~v6;
  if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  v8 = ~v6;
  while (1)
  {
    sub_10001F45C(*(v4 + 48) + 40 * v7, v32);
    v9 = static AnyHashable.== infix(_:_:)();
    result = sub_100177B94(v32);
    if (v9)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
    if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  v31 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *v1;
LABEL_8:
    v13 = *(v12 + 48) + 40 * v7;
    v14 = *(v13 + 16);
    *a1 = *v13;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(v13 + 32);
    result = sub_1002D2390(v7);
    *v2 = v31;
    return result;
  }

  sub_1000F24EC(&qword_100ADC628);
  v15 = static _SetStorage.copy(original:)();
  v12 = v15;
  if (!*(v11 + 16))
  {
LABEL_24:

    v31 = v12;
    goto LABEL_8;
  }

  result = v15 + 56;
  v16 = v11 + 56;
  v17 = ((1 << *(v12 + 32)) + 63) >> 6;
  if (v12 != v11 || result >= v16 + 8 * v17)
  {
    result = memmove(result, (v11 + 56), 8 * v17);
  }

  v18 = 0;
  *(v12 + 16) = *(v11 + 16);
  v19 = 1 << *(v11 + 32);
  v20 = *(v11 + 56);
  v21 = -1;
  if (v19 < 64)
  {
    v21 = ~(-1 << v19);
  }

  v22 = v21 & v20;
  v23 = (v19 + 63) >> 6;
  if ((v21 & v20) != 0)
  {
    do
    {
      v24 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_22:
      v27 = 40 * (v24 | (v18 << 6));
      result = sub_10001F45C(*(v11 + 48) + v27, v32);
      v28 = *(v12 + 48) + v27;
      v29 = v32[0];
      v30 = v32[1];
      *(v28 + 32) = v33;
      *v28 = v29;
      *(v28 + 16) = v30;
    }

    while (v22);
  }

  v25 = v18;
  while (1)
  {
    v18 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      goto LABEL_24;
    }

    v26 = *(v16 + 8 * v18);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v22 = (v26 - 1) & v26;
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002D2390(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_10001F45C(*(v3 + 48) + 40 * v6, v22);
        v12 = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
        sub_100177B94(v22);
        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v2;
            v18 = (v16 + 40 * v6);
            if (v2 != v6 || v17 >= v18 + 40)
            {
              v10 = *v18;
              v11 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v10;
              *(v17 + 16) = v11;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1002D2548(id a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_currentProvider);
  if (v4 && (v5 = *(v4 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_resizableAttachmentView)) != 0 && (v6 = *(v5 + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView)) != 0)
  {
    v16 = v6;
  }

  else
  {
    v7 = sub_1007C8890();
    v8 = *&v7[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D23ResizableAttachmentView_attachmentView];
    v16 = v8;

    if (!v8)
    {
      return;
    }
  }

  v9 = OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction;
  v10 = *(a2 + OBJC_IVAR____TtC7Journal27ResizableViewTextAttachment_canvasDragInteraction);
  if (v10)
  {
    v11 = v10;
    v12 = [v11 delegate];
    if (!v12 || (v13 = v12, swift_unknownObjectRelease(), v13 != a1))
    {
      [v16 removeInteraction:v11];

      v11 = *(a2 + v9);
      *(a2 + v9) = 0;
    }

    if (*(a2 + v9))
    {
      goto LABEL_12;
    }
  }

  v14 = [objc_allocWithZone(UIDragInteraction) initWithDelegate:a1];
  v15 = *(a2 + v9);
  *(a2 + v9) = v14;

  if (*(a2 + v9))
  {
LABEL_12:
    [v16 addInteraction:?];
  }
}

void sub_1002D26B8(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  sub_1000082B4(a1, v11, &qword_100AD13D0);
  if (v12)
  {
    type metadata accessor for ResizableAssetViewTextAttachment();
    if (swift_dynamicCast())
    {
      v5 = v10[1];
      v6 = type metadata accessor for TaskPriority();
      (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
      type metadata accessor for MainActor();
      v7 = v5;
      v8 = static MainActor.shared.getter();
      v9 = swift_allocObject();
      v9[2] = v8;
      v9[3] = &protocol witness table for MainActor;
      v9[4] = v7;
      sub_1003E9628(0, 0, v4, &unk_10094C4A8, v9);
    }
  }

  else
  {
    sub_100004F84(v11, &qword_100AD13D0);
  }
}

uint64_t sub_1002D2854()
{
  v1 = sub_1000F24EC(&unk_100ADC5E0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v25 - v5;
  v7 = type metadata accessor for JournalFeatureFlags();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry);
  if (v12)
  {
    v25[1] = v0;
    (*(v8 + 104))(v11, enum case for JournalFeatureFlags.richCanvas(_:), v7);

    v13 = JournalFeatureFlags.isEnabled.getter();
    (*(v8 + 8))(v11, v7);
    if (v13)
    {
      if (sub_10029EF80())
      {
        if (sub_10029EF80())
        {
          v14 = *(v12 + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
          if (v14 >> 62)
          {
            goto LABEL_29;
          }

          for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
          {

            if (!i)
            {
              break;
            }

            v16 = 0;
            while (1)
            {
              if ((v14 & 0xC000000000000001) != 0)
              {
                v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_28;
                }

                v17 = *(v14 + 8 * v16 + 32);
              }

              v18 = v17;
              v19 = v16 + 1;
              if (__OFADD__(v16, 1))
              {
                break;
              }

              type metadata accessor for DrawingAsset();
              if (swift_dynamicCastClass())
              {

                sub_1001B845C(v6);

                goto LABEL_22;
              }

              ++v16;
              if (v19 == i)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            ;
          }

LABEL_20:
        }

        v20 = type metadata accessor for PaperMarkup();
        (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
LABEL_22:
        v21 = sub_1002B5D1C(v6, 0);

        v22 = v6;
        return sub_100004F84(v22, &unk_100ADC5E0);
      }

      if ((sub_10005AAB0(1) & 1) == 0 && (sub_10005AAB0(16) & 1) == 0)
      {
        v23 = type metadata accessor for PaperMarkup();
        (*(*(v23 - 8) + 56))(v4, 1, 1, v23);
        v24 = sub_1002B5D1C(v4, 0);

        v22 = v4;
        return sub_100004F84(v22, &unk_100ADC5E0);
      }
    }
  }

  return result;
}

uint64_t sub_1002D2C08(char a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10066F978(a1 & 1);
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    *(v1 + OBJC_IVAR____TtC7Journal14CanvasTextView_showDrawingToolsPending) = 0;

    return sub_1002BCAA8(0);
  }

  else
  {

    return sub_1002B7540(0);
  }
}

uint64_t sub_1002D2CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1002BDE48(a1, v4, v5, v6, v7);
}

uint64_t sub_1002D2D94(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = 0x10000000000;
  if (!*(v1 + 53))
  {
    v9 = 0;
  }

  v10 = &_mh_execute_header;
  if (!*(v1 + 52))
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if (!*(v1 + 51))
  {
    v11 = 0;
  }

  v12 = 0x10000;
  if (!*(v1 + 50))
  {
    v12 = 0;
  }

  v13 = 256;
  if (!*(v1 + 49))
  {
    v13 = 0;
  }

  v14 = v13 | *(v1 + 48) | v12 | v11;
  v15 = v10 | v9;
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100032EC8;

  return sub_1006B8088(a1, v6, v5, v7, v8, v14 | v15);
}

void sub_1002D2EC8()
{
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_canvasViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_resizingViewBeginSize);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments) = _swiftEmptyArrayStorage;
  v2 = v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_snapToValidSize) = 1;
  v3 = OBJC_IVAR____TtC7Journal14CanvasTextView_externalDataManager;
  type metadata accessor for ExternalAssetDataManager();
  *(v0 + v3) = swift_allocObject();
  v4 = OBJC_IVAR____TtC7Journal14CanvasTextView_toolPicker;
  *(v0 + v4) = [objc_allocWithZone(type metadata accessor for PlatformCanvasToolPicker()) init];
  v5 = v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_navBarHeight;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_addingBottomCanvas) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_bottomCanvasAttachment) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_currentCanvas) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_showDrawingToolsPending) = 0;
  v6 = v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_lastAppliedContentSize;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC7Journal14CanvasTextView_ignoreCanvasRemovalRequests) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002D3078(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1002BE780(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D3138(uint64_t a1)
{
  v4 = *(type metadata accessor for PaperMarkup() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1002C0020(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D3230()
{
  v1 = type metadata accessor for PaperMarkup();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002D32FC(uint64_t a1)
{
  v4 = *(type metadata accessor for PaperMarkup() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1002BFD8C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1002D33F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1002C0588(a1, v4, v5, v6);
}

uint64_t sub_1002D34A8(uint64_t a1)
{
  v4 = *(type metadata accessor for PaperMarkup() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1002C1180(a1, v6, v7, v8, v1 + v5);
}

id sub_1002D35A0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal14CanvasTextView_initialDrawingCanvas);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1002D3608()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002D3650(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1002C4F40(a1, v4, v5, v7, v6);
}

void sub_1002D3788(void *a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v13 = [a1 textAttachment];
  type metadata accessor for ResizableViewTextAttachment();
  if (swift_dynamicCastClass() && (type metadata accessor for ResizableAssetViewTextAttachment(), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v13;
    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v6;
    sub_1003E9628(0, 0, v4, &unk_10094C498, v10);
  }

  else
  {
    v11 = v13;
  }
}

uint64_t sub_1002D393C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1002B7FE0(a1, v4, v5, v6);
}

uint64_t sub_1002D39F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1002B7D50(a1, v4, v5, v6);
}

void sub_1002D3AA4(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for AssetType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100ADC680);
  __chkstk_darwin(v10);
  v12 = v50 - v11;
  v13 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v13 - 8);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v50 - v17;
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  *&v23 = __chkstk_darwin(v22).n128_u64[0];
  v25 = v50 - v24;
  if ([v3 isEditable])
  {
    v59 = v15;
    v26 = *&v3[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
    if (v26)
    {
      v56 = v9;

      if (sub_10029EF80())
      {
        v27 = sub_100544E50();
        v28 = [v27 selectedToolItem];

        objc_opt_self();
        swift_dynamicCastObjCClass();

        return;
      }

      v53 = v26;
      v57 = v7;
      v50[0] = *(v7 + 56);
      v50[1] = v7 + 56;
      v29 = (v50[0])(v25, 1, 1, v6);
      v55 = v50;
      *&v30 = __chkstk_darwin(v29).n128_u64[0];
      *&v50[-4] = a1;
      *&v50[-3] = a2;
      v50[-2] = v3;
      v50[-1] = v25;
      v58 = v25;
      v31 = [v3 textStorage];
      v32 = [v31 length];

      v54 = v32;
      if ((v32 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v51 = [v3 textStorage];
        v52 = NSParagraphAttachmentAttributeName;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1002D7DB4;
        *(v33 + 24) = &v50[-6];
        v34 = swift_allocObject();
        *(v34 + 16) = sub_1002D8270;
        *(v34 + 24) = v33;
        aBlock[4] = sub_1002D826C;
        aBlock[5] = v34;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10007E0A4;
        aBlock[3] = &unk_100A64A40;
        v35 = _Block_copy(aBlock);

        v36 = v51;
        [v51 enumerateAttribute:v52 inRange:0 options:v54 usingBlock:{0, v35}];

        _Block_release(v35);
        LOBYTE(v35) = swift_isEscapingClosureAtFileLocation();

        if ((v35 & 1) == 0)
        {
          v37 = v58;
          sub_1000082B4(v58, v21, &qword_100AE4290);
          v38 = v57;
          v39 = *(v57 + 48);
          if (v39(v21, 1, v6) == 1)
          {

            sub_100004F84(v21, &qword_100AE4290);
            v40 = v37;
LABEL_19:
            sub_100004F84(v40, &qword_100AE4290);
            return;
          }

          sub_100004F84(v21, &qword_100AE4290);
          (*(v38 + 104))(v18, enum case for AssetType.drawing(_:), v6);
          (v50[0])(v18, 0, 1, v6);
          v41 = *(v10 + 48);
          sub_1000082B4(v37, v12, &qword_100AE4290);
          sub_1000082B4(v18, &v12[v41], &qword_100AE4290);
          if (v39(v12, 1, v6) == 1)
          {
            sub_100004F84(v18, &qword_100AE4290);
            if (v39(&v12[v41], 1, v6) == 1)
            {
              sub_100004F84(v12, &qword_100AE4290);
              v40 = v58;
LABEL_18:
              v48 = sub_100544E50();
              v49 = [v48 selectedToolItem];

              objc_opt_self();
              swift_dynamicCastObjCClass();

              goto LABEL_19;
            }
          }

          else
          {
            v42 = v59;
            sub_1000082B4(v12, v59, &qword_100AE4290);
            if (v39(&v12[v41], 1, v6) != 1)
            {
              v43 = v57;
              v44 = &v12[v41];
              v45 = v56;
              (*(v57 + 32))(v56, v44, v6);
              sub_10008D118(&qword_100ADC690, &type metadata accessor for AssetType);
              v46 = dispatch thunk of static Equatable.== infix(_:_:)();
              v47 = *(v43 + 8);
              v47(v45, v6);
              sub_100004F84(v18, &qword_100AE4290);
              v47(v42, v6);
              sub_100004F84(v12, &qword_100AE4290);
              v40 = v58;
              if ((v46 & 1) == 0)
              {

                goto LABEL_19;
              }

              goto LABEL_18;
            }

            sub_100004F84(v18, &qword_100AE4290);
            (*(v57 + 8))(v42, v6);
          }

          v40 = v58;
          sub_100004F84(v12, &unk_100ADC680);
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_1002D42C8(void *a1)
{
  v2 = v1;
  v3 = [a1 dragRange];
  v4 = [v2 beginningOfDocument];
  v5 = [v3 start];
  v6 = [v3 end];
  v7 = [v2 offsetFromPosition:v4 toPosition:v5];
  v8 = [v2 offsetFromPosition:v5 toPosition:v6];

  v9 = sub_1002C87F4(v7, v8);
  v10 = v9;
  v11 = v9 >> 62;
  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_27:

    return;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
    goto LABEL_27;
  }

LABEL_3:
  v26 = v2;
  v12 = [v2 textStorage];
  [v12 deleteCharactersInRange:{v7, v8}];

  v31 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
    v24 = v8;
    v25 = v7;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v8;
    v25 = v7;
    if (v13)
    {
LABEL_5:
      if (v13 < 1)
      {
        __break(1u);
        return;
      }

      v14 = 0;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v16 = *(v10 + 8 * v14 + 32);
        }

        v17 = v16;
        if ([v16 localObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v28 = 0u;
          v29 = 0u;
        }

        v30[0] = v28;
        v30[1] = v29;
        if (*(&v29 + 1))
        {
          type metadata accessor for Asset();
          if (swift_dynamicCast())
          {
            v18 = v27;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v15 = v31;
          }

          else
          {
          }
        }

        else
        {

          sub_100004F84(v30, &qword_100AD13D0);
        }

        ++v14;
      }

      while (v13 != v14);
      goto LABEL_23;
    }
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_23:
  sub_1002C8BC4(v15, v25, v24, 0.0, 0.0);
  v20 = v19;

  v21 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
  *&v26[OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments] = v20;

  v22 = *&v26[v21];
  if (v22 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_25:
    v23 = &v26[OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize];
    *v23 = 0;
    *(v23 + 1) = 0;
    v23[16] = 1;
  }
}

double *sub_1002D4654(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = v2;
  type metadata accessor for JournalAssetView();
  v4 = swift_dynamicCastClass();
  if (v4 && (v5 = v4, v6 = v1, (v7 = (*((swift_isaMask & *v4) + 0xF8))()) != 0))
  {
    v8 = v7;
    [v5 frame];
    v9 = v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize;
    *v9 = v10;
    *(v9 + 8) = v11;
    *(v9 + 16) = 0;
    ObjectType = swift_getObjectType();
    v13 = swift_conformsToProtocol2();
    if (v13)
    {
      v14 = (*(v13 + 8))(ObjectType, v13);
    }

    else
    {
      v14 = [objc_allocWithZone(NSItemProvider) init];
    }

    v16 = v14;
    v17 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v14];
    [v17 setLocalObject:v8];

    type metadata accessor for DrawingAssetView();
    if (swift_dynamicCastClass())
    {

      v15 = _swiftEmptyArrayStorage;
      v3 = v17;
    }

    else
    {
      sub_1000F24EC(&unk_100AD4780);
      v15 = swift_allocObject();
      *(v15 + 1) = xmmword_100941D50;
      *(v15 + 4) = v17;
    }
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
  }

  return v15;
}

void sub_1002D483C(id a1, unint64_t a2)
{
  if (a2 >= 3 && ([v2 bounds], v5 = v4, v7 = v6, v9 = v8, v11 = v10, objc_msgSend(a1, "locationInView:", v2), v39.x = v12, v39.y = v13, v40.origin.x = v5, v40.origin.y = v7, v40.size.width = v9, v40.size.height = v11, CGRectContainsPoint(v40, v39)))
  {
    if ([a1 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    aBlock = v37;
    v32 = v38;
    if (!*(&v38 + 1))
    {
      goto LABEL_19;
    }

    sub_1000F24EC(&unk_100AE9B70);
    if (swift_dynamicCast())
    {
      v14 = v2;
      v15 = v35;
      v16 = sub_1007C8C2C();
      if (!v16)
      {

        return;
      }

      v17 = v16;
      type metadata accessor for JournalAssetView();
      v18 = swift_dynamicCastClass();
      if (!v18)
      {

        return;
      }

      __chkstk_darwin(v18);
      v30[6] = v19;
      v30[7] = v14;
      *&v20 = __chkstk_darwin(v19).n128_u64[0];
      v30[2] = sub_1002D7BC4;
      v30[3] = v21;
      v22 = [v14 textStorage];
      v23 = [v22 length];

      if ((v23 & 0x8000000000000000) != 0)
      {
        __break(1u);
        return;
      }

      v24 = [v14 textStorage];
      v25 = NSParagraphAttachmentAttributeName;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_1002D835C;
      *(v26 + 24) = v30;
      v27 = swift_allocObject();
      *(v27 + 16) = sub_1002D8270;
      *(v27 + 24) = v26;
      v33 = sub_1002D826C;
      v34 = v27;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v32 = sub_10007E0A4;
      *(&v32 + 1) = &unk_100A64838;
      v28 = _Block_copy(&aBlock);

      [v24 enumerateAttribute:v25 inRange:0 options:v23 usingBlock:{0, v28}];

      _Block_release(v28);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
LABEL_19:
        sub_100004F84(&aBlock, &qword_100AD13D0);
      }
    }
  }

  else
  {
    if ([a1 localContext])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0u;
      v38 = 0u;
    }

    aBlock = v37;
    v32 = v38;
    if (!*(&v38 + 1))
    {
      goto LABEL_19;
    }

    sub_1000F24EC(&unk_100AE9B70);
    if (swift_dynamicCast())
    {
      sub_1002C9890(v35, v36);
    }
  }
}

BOOL sub_1002D4C68(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    sub_1000065A8(0, &qword_100AE4890);
    if ([v7 canLoadObjectOfClass:swift_getObjCClassFromMetadata()] & 1) != 0 || (sub_1000065A8(0, &qword_100AD13A0), (objc_msgSend(v7, "canLoadObjectOfClass:", swift_getObjCClassFromMetadata())))
    {

      return v3 != v5;
    }

    sub_1000065A8(0, &qword_100ADC668);
    v8 = [v7 canLoadObjectOfClass:swift_getObjCClassFromMetadata()];

    v4 = v5 + 1;
  }

  while ((v8 & 1) == 0);
  return v3 != v5;
}

id sub_1002D4DD8(void *a1)
{
  v2 = [objc_msgSend(a1 "dropSession")];
  swift_unknownObjectRelease();
  if (v2)
  {
    v3 = [v2 items];
    swift_unknownObjectRelease();
    sub_1000065A8(0, &unk_100AD4C90);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = a1;
    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if ([v7 localObject])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {

          v14 = 0u;
          v15 = 0u;
        }

        v16[0] = v14;
        v16[1] = v15;
        if (*(&v15 + 1))
        {
          type metadata accessor for Asset();
          if (swift_dynamicCast())
          {

            return [objc_allocWithZone(UITextDropProposal) initWithDropOperation:0];
          }
        }

        else
        {
          sub_100004F84(v16, &qword_100AD13D0);
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:
  }

  v11 = [a1 suggestedProposal];

  return v11;
}

uint64_t sub_1002D5050(void *a1)
{
  if (sub_1002CA19C(a1) != 2 || (v3 = *(v1 + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry)) == 0)
  {
LABEL_10:
    if (sub_1002CA19C(a1) != 4)
    {
      return 1;
    }

LABEL_11:
    v10 = [a1 localDragSession];
    if (v10)
    {
      v11 = [v10 localContext];
      swift_unknownObjectRelease();
      if (v11)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v14 = v12;
      v15 = v13;
      if (*(&v13 + 1))
      {
        sub_1000F24EC(&unk_100AE9B70);
        if (swift_dynamicCast())
        {
          sub_1002C9890(v12, *(&v12 + 1));
        }

        return 0;
      }
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    sub_100004F84(&v14, &qword_100AD13D0);
    return 0;
  }

  v4 = *(v3 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (v4 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = sub_10005AAB0(128);
  if (qword_100AD0A20 != -1)
  {
    swift_once();
  }

  v7 = qword_100B30F68;

  if ((v6 & 1) == 0 || (v9 = __OFSUB__(v7, 1), --v7, !v9))
  {
    if (v5 >= v7)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void sub_1002D5264(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator;
  v4 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = 0;

  v6 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
  v7 = *&v1[OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments];
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
    return;
  }

  v22 = a1;

  for (i = 0; i != v8; ++i)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    sub_1002C322C(v10, 1);
    if ((v14 & 1) == 0)
    {
      v15 = v12;
      v16 = v13;
      v17 = [v1 textStorage];
      [v17 removeAttribute:NSParagraphAttachmentAttributeName range:{v15, v16}];
    }
  }

  a1 = v22;
LABEL_15:
  *&v1[v6] = _swiftEmptyArrayStorage;

  v18 = *&v1[v6];
  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_17:
    v19 = &v1[OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize];
    *v19 = 0;
    *(v19 + 1) = 0;
    v19[16] = 1;
  }

LABEL_18:
  if (sub_1002CA19C(a1) != 4)
  {
    return;
  }

  v20 = [a1 localDragSession];
  if (!v20)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_27:
    sub_100004F84(&v25, &qword_100AD13D0);
    return;
  }

  v21 = [v20 localContext];
  swift_unknownObjectRelease();
  if (v21)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_27;
  }

  sub_1000F24EC(&unk_100AE9B70);
  if (swift_dynamicCast())
  {
    sub_1002C9890(v23, *(&v23 + 1));
  }
}

void sub_1002D552C(void *a1)
{
  v6 = v1;
  v7 = a1;
  [a1 locationInView:v1];
  v9 = v8;
  v11 = v10;
  [v1 bounds];
  v120.x = v9;
  v120.y = v11;
  v12 = CGRectContainsPoint(v121, v120);
  [v6 textContainerInset];
  if (!v12 && v9 >= v13)
  {
    goto LABEL_3;
  }

  v16 = sub_1002CA19C(v7);
  if (v16 <= 1)
  {
    if (!v16)
    {
      v3 = OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry;
      v19 = *(v6 + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry);
      if (v19)
      {
        v4 = &OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
        v20 = *(v19 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
        if (v20 >> 62)
        {
          v21 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v2 = sub_10005AAB0(128);
        if (qword_100AD0A20 != -1)
        {
          swift_once();
        }

        v5 = qword_100B30F68;

        if (v2)
        {
          v22 = __OFSUB__(v5--, 1);
          if (v22)
          {
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }
        }

        if (v21 < v5)
        {
          v23 = [v7 localDragSession];
          if (!v23)
          {
LABEL_140:
            v115 = 0u;
            v116 = 0u;
LABEL_141:
            sub_100004F84(&v115, &qword_100AD13D0);
            while (1)
            {
              v83 = *&v3[v6];
              if (v83)
              {
                v84 = *(v83 + *v4);
                v85 = v84 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v86 = v85 != 0;
              }

              else
              {
                v86 = 0;
              }

              sub_1002CA8E0(v86);
              v87 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
              v88 = *(v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments);
              if (v88 >> 62)
              {
                v89 = _CocoaArrayWrapper.endIndex.getter();
                if (!v89)
                {
                  goto LABEL_158;
                }
              }

              else
              {
                v89 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v89)
                {
                  goto LABEL_158;
                }
              }

              v112 = v87;
              if (v89 >= 1)
              {
                break;
              }

              __break(1u);
LABEL_172:
              v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_30:
              v26 = v25;

              v27 = [v26 localObject];

              if (v27)
              {
                _bridgeAnyObjectToAny(_:)();
                swift_unknownObjectRelease();
              }

              else
              {
                v113 = 0u;
                v114 = 0u;
              }

              v115 = v113;
              v116 = v114;
              if (!*(&v114 + 1))
              {
                goto LABEL_141;
              }

              type metadata accessor for Asset();
              if (swift_dynamicCast())
              {
                if ((AssetType.allowedInGrid.getter() & 1) == 0)
                {
                  [objc_allocWithZone(UIDropProposal) initWithDropOperation:1];

                  return;
                }
              }
            }

            for (i = 0; i != v89; ++i)
            {
              if ((v88 & 0xC000000000000001) != 0)
              {
                v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v91 = *(v88 + 8 * i + 32);
              }

              v92 = v91;
              sub_1002C322C(v91, 1);
              if ((v95 & 1) == 0)
              {
                v96 = v93;
                v97 = v94;
                v98 = [v6 textStorage];
                [v98 removeAttribute:NSParagraphAttachmentAttributeName range:{v96, v97}];
              }
            }

            v87 = v112;
LABEL_158:
            *(v6 + v87) = _swiftEmptyArrayStorage;

            v99 = *(v6 + v87);
            if (v99 >> 62)
            {
              if (_CocoaArrayWrapper.endIndex.getter())
              {
                goto LABEL_161;
              }
            }

            else if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_161:
              [objc_allocWithZone(UIDropProposal) initWithDropOperation:2];
              return;
            }

            v100 = v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize;
            *v100 = 0;
            *(v100 + 1) = 0;
            v100[16] = 1;
            goto LABEL_161;
          }

          v24 = [v23 items];
          swift_unknownObjectRelease();
          sub_1000065A8(0, &unk_100AD4C90);
          v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (!(v19 >> 62))
          {
            if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_139:

              goto LABEL_140;
            }

LABEL_27:
            if ((v19 & 0xC000000000000001) != 0)
            {
              goto LABEL_172;
            }

            if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v25 = *(v19 + 32);
              goto LABEL_30;
            }

            __break(1u);
            goto LABEL_174;
          }

LABEL_138:
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_139;
          }

          goto LABEL_27;
        }
      }

LABEL_3:
      v14 = objc_allocWithZone(UIDropProposal);
      v15 = 1;
      goto LABEL_4;
    }

    v33 = *(v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator);
    if (v33)
    {
      [v33 setHidden:1];
    }

    v34 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
    v35 = *(v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments);
    if (v35 >> 62)
    {
LABEL_128:
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v36)
    {
      sub_1002C2A1C(1, v9, v11);
LABEL_46:
      v14 = objc_allocWithZone(UIDropProposal);
      v15 = 2;
      goto LABEL_4;
    }

    v37 = sub_1000F5890();
    if (v39)
    {
LABEL_102:
      v14 = objc_allocWithZone(UIDropProposal);
      v15 = 0;
LABEL_4:

      goto LABEL_6;
    }

    v40 = v37;
    v2 = v38;
    v41 = [v7 items];
    sub_1000065A8(0, &unk_100AD4C90);
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v110 = v34;
    if (v42 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *&v115 = _swiftEmptyArrayStorage;
    if (v7 < 1)
    {
      __break(1u);
    }

    else
    {
      v5 = v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize;
      v43 = _swiftEmptyArrayStorage;
      v44 = 1;
      while (1)
      {
        if (*(v5 + 16))
        {
          v45 = 0.0;
        }

        else
        {
          v45 = *v5;
        }

        if (*(v5 + 16))
        {
          v46 = 0.0;
        }

        else
        {
          v46 = *(v5 + 8);
        }

        sub_1002C4128(0.0, 0.0, v45, v46);
        v11 = sub_1002B2ED8(v47);
        v9 = v48;
        v49 = [objc_allocWithZone(UIView) init];
        v50 = sub_1002C2180(v49, v40, v2, 1, 0x101010001, v11, v9);

        if (v50)
        {
          v51 = v50;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v43 = v115;
        }

        if (v7 == v44)
        {
          break;
        }

        v22 = __OFADD__(v44++, 1);
        if (v22)
        {
          __break(1u);
          goto LABEL_100;
        }
      }

      *(v6 + v110) = v43;

      v52 = *(v6 + v110);
      if (!(v52 >> 62))
      {
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

LABEL_68:
        *v5 = 0;
        *(v5 + 8) = 0;
        *(v5 + 16) = 1;
        goto LABEL_46;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_46;
    }

    goto LABEL_68;
  }

  if (v16 == 2)
  {
    v28 = [v7 localDragSession];
    if (v28)
    {
      v29 = [v28 items];
      swift_unknownObjectRelease();
      sub_1000065A8(0, &unk_100AD4C90);
      v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v19 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_35;
        }
      }

      else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        if ((v19 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_38:
          v31 = v30;

          v32 = [v31 localObject];

          if (v32)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v113 = 0u;
            v114 = 0u;
          }

          v115 = v113;
          v116 = v114;
          if (*(&v114 + 1))
          {
            type metadata accessor for Asset();
            if (swift_dynamicCast())
            {
              v53 = v113;
              if (AssetType.allowedInGrid.getter())
              {
                v54 = *(v6 + OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry);
                if (v54)
                {
                  v55 = *(v54 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
                  if (v55 >> 62)
                  {
                    v56 = _CocoaArrayWrapper.endIndex.getter();
                  }

                  else
                  {
                    v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  v57 = v56 != 0;
                }

                else
                {
                  v57 = 0;
                }

                sub_1002CA8E0(v57);
                v58 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
                v59 = *(v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments);
                if (v59 >> 62)
                {
                  v60 = _CocoaArrayWrapper.endIndex.getter();
                  if (!v60)
                  {
                    goto LABEL_95;
                  }
                }

                else
                {
                  v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (!v60)
                  {
                    goto LABEL_95;
                  }
                }

                v108 = v58;
                if (v60 < 1)
                {
                  __break(1u);
                  return;
                }

                for (j = 0; j != v60; ++j)
                {
                  if ((v59 & 0xC000000000000001) != 0)
                  {
                    v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v62 = *(v59 + 8 * j + 32);
                  }

                  v63 = v62;
                  sub_1002C322C(v62, 1);
                  if ((v66 & 1) == 0)
                  {
                    v67 = v64;
                    v68 = v65;
                    v69 = [v6 textStorage];
                    [v69 removeAttribute:NSParagraphAttachmentAttributeName range:{v67, v68}];
                  }
                }

                v58 = v108;
                v53 = v113;
LABEL_95:
                *(v6 + v58) = _swiftEmptyArrayStorage;

                v70 = *(v6 + v58);
                if (v70 >> 62)
                {
                  if (_CocoaArrayWrapper.endIndex.getter())
                  {
                    goto LABEL_98;
                  }
                }

                else if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_98:
                  [objc_allocWithZone(UIDropProposal) initWithDropOperation:3];

                  return;
                }

                v71 = v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize;
                *v71 = 0;
                *(v71 + 1) = 0;
                v71[16] = 1;
                goto LABEL_98;
              }
            }

LABEL_133:
            [objc_allocWithZone(UIDropProposal) initWithDropOperation:1];
            return;
          }

LABEL_132:
          sub_100004F84(&v115, &qword_100AD13D0);
          goto LABEL_133;
        }

        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v19 + 32);
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_137;
      }
    }

    v115 = 0u;
    v116 = 0u;
    goto LABEL_132;
  }

  if (v16 != 3)
  {
    goto LABEL_102;
  }

  v17 = *(v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator);
  if (v17)
  {
    [v17 setHidden:1];
  }

  v2 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
  v18 = *(v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments);
  if (v18 >> 62)
  {
LABEL_100:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_14;
    }
  }

  else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    sub_1002C2A1C(1, v9, v11);
    v14 = objc_allocWithZone(UIDropProposal);
    v15 = 3;
    goto LABEL_4;
  }

  v72 = sub_1000F5890();
  if (v74)
  {
    goto LABEL_102;
  }

  v3 = v72;
  v75 = v73;
  v76 = [v7 localDragSession];
  v77 = _swiftEmptyArrayStorage;
  if (!v76)
  {
    goto LABEL_177;
  }

  v107 = v75;
  v78 = [v76 items];
  swift_unknownObjectRelease();
  sub_1000065A8(0, &unk_100AD4C90);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v118 = _swiftEmptyArrayStorage;
  v5 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
LABEL_174:
    v79 = _CocoaArrayWrapper.endIndex.getter();
    v109 = v3;
    if (v79)
    {
      goto LABEL_106;
    }

LABEL_175:
    v111 = _swiftEmptyArrayStorage;
    goto LABEL_176;
  }

  v79 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v109 = v3;
  if (!v79)
  {
    goto LABEL_175;
  }

LABEL_106:
  v34 = 0;
  v111 = _swiftEmptyArrayStorage;
  do
  {
    v80 = v34;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v81 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v80 >= *(v5 + 16))
        {
          goto LABEL_127;
        }

        v81 = *(v7 + 8 * v80 + 32);
      }

      v82 = v81;
      v34 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        __break(1u);
LABEL_127:
        __break(1u);
        goto LABEL_128;
      }

      if ([v81 localObject])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v113 = 0u;
        v114 = 0u;
      }

      v115 = v113;
      v116 = v114;
      if (*(&v114 + 1))
      {
        break;
      }

      sub_100004F84(&v115, &qword_100AD13D0);
LABEL_109:
      ++v80;
      if (v34 == v79)
      {
        goto LABEL_176;
      }
    }

    type metadata accessor for Asset();
    if ((swift_dynamicCast() & 1) == 0 || !v117)
    {
      goto LABEL_109;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v111 = v118;
  }

  while (v34 != v79);
LABEL_176:

  v75 = v107;
  v3 = v109;
  v77 = v111;
LABEL_177:
  sub_1002C8BC4(v77, v3, v75, v9, v11);
  v102 = v101;

  *(v6 + v2) = v102;

  v103 = *(v6 + v2);
  if (v103 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_179:
      v104 = v6 + OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize;
      *v104 = 0;
      *(v104 + 1) = 0;
      v104[16] = 1;
    }
  }

  else if (!*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_179;
  }

  v105 = *(v6 + v2);
  if (v105 >> 62)
  {
    v106 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v106 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = objc_allocWithZone(UIDropProposal);
  if (v106)
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

LABEL_6:
  [v14 initWithDropOperation:v15];
}

uint64_t sub_1002D6490(void *a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v86 - v5;
  v7 = sub_1002CA19C(a1);
  v8 = &off_100ADC000;
  v9 = _swiftEmptyArrayStorage;
  v87 = v1;
  if (v7 <= 1)
  {
    if (!v7)
    {
      v18 = [a1 items];
      sub_1000065A8(0, &unk_100AD4C90);
      v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v12 >> 62))
      {
        v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
LABEL_75:

          v40 = _swiftEmptyArrayStorage;
LABEL_76:
          v43 = type metadata accessor for TaskPriority();
          (*(*(v43 - 8) + 56))(v6, 1, 1, v43);
          type metadata accessor for MainActor();
          v44 = v2;
          v45 = static MainActor.shared.getter();
          v46 = swift_allocObject();
          v46[2] = v45;
          v46[3] = &protocol witness table for MainActor;
          v46[4] = v44;
          v46[5] = v40;
          v47 = &unk_10094C4E8;
LABEL_89:
          sub_1003E9628(0, 0, v6, v47, v46);

          goto LABEL_99;
        }

        goto LABEL_30;
      }

LABEL_74:
      v19 = _CocoaArrayWrapper.endIndex.getter();
      if (!v19)
      {
        goto LABEL_75;
      }

LABEL_30:
      v86 = v6;
      *&v90 = v9;
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if ((v19 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v22 = *(v12 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = [v22 itemProvider];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v2 = v87;
        }

        while (v19 != v21);

        v40 = v90;
        v6 = v86;
        goto LABEL_76;
      }

      __break(1u);
LABEL_125:
      __break(1u);
      return result;
    }

    v33 = [a1 items];
    sub_1000065A8(0, &unk_100AD4C90);
    v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v34 >> 62)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_61:
        v86 = v6;
        *&v90 = _swiftEmptyArrayStorage;
        result = specialized ContiguousArray.reserveCapacity(_:)();
        if (v35 < 0)
        {
          goto LABEL_125;
        }

        v36 = 0;
        do
        {
          if ((v34 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v37 = *(v34 + 8 * v36 + 32);
          }

          v38 = v37;
          ++v36;
          v39 = [v37 itemProvider];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v2 = v87;
        }

        while (v35 != v36);

        v41 = v90;
        v6 = v86;
LABEL_79:
        v48 = type metadata accessor for TaskPriority();
        (*(*(v48 - 8) + 56))(v6, 1, 1, v48);
        type metadata accessor for MainActor();
        v49 = v2;
        v50 = static MainActor.shared.getter();
        v51 = swift_allocObject();
        v51[2] = v50;
        v51[3] = &protocol witness table for MainActor;
        v51[4] = v49;
        v51[5] = v41;
        sub_1003E9628(0, 0, v6, &unk_10094C4D8, v51);

        v52 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
        *(v49 + OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments) = _swiftEmptyArrayStorage;

        v53 = *(v49 + v52);
        if (v53 >> 62)
        {
          goto LABEL_122;
        }

        if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        goto LABEL_98;
      }
    }

    v41 = _swiftEmptyArrayStorage;
    goto LABEL_79;
  }

  if (v7 == 2)
  {
    v25 = [a1 localDragSession];
    v26 = _swiftEmptyArrayStorage;
    if (!v25)
    {
LABEL_85:
      v54 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
      if (v54)
      {
        v55 = *(v54 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
        if (v55)
        {

          v56 = v55;
          sub_10012B2C8();
        }
      }

      v57 = type metadata accessor for TaskPriority();
      (*(*(v57 - 8) + 56))(v6, 1, 1, v57);
      type metadata accessor for MainActor();
      v58 = v2;
      v59 = static MainActor.shared.getter();
      v46 = swift_allocObject();
      v46[2] = v59;
      v46[3] = &protocol witness table for MainActor;
      v46[4] = v26;
      v46[5] = v58;
      v47 = &unk_10094C4C8;
      goto LABEL_89;
    }

    v27 = [v25 items];
    swift_unknownObjectRelease();
    sub_1000065A8(0, &unk_100AD4C90);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = _swiftEmptyArrayStorage;
    v8 = (v12 & 0xFFFFFFFFFFFFFF8);
    if (v12 >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
      v86 = v6;
      if (v28)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v28 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v6;
      if (v28)
      {
LABEL_39:
        v6 = 0;
        v29 = _swiftEmptyArrayStorage;
LABEL_40:
        v30 = v6;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_72;
            }

            v31 = *(v12 + 8 * v30 + 32);
          }

          v2 = v31;
          v6 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            break;
          }

          v32 = [v31 localObject];
          if (v32)
          {
            v9 = v32;
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {

            v88 = 0u;
            v89 = 0u;
          }

          v90 = v88;
          v91 = v89;
          if (*(&v89 + 1))
          {
            type metadata accessor for Asset();
            if ((swift_dynamicCast() & 1) != 0 && v92)
            {
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v9 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v29 = v93;
              v2 = v87;
              if (v6 == v28)
              {
LABEL_84:

                v9 = _swiftEmptyArrayStorage;
                v8 = &off_100ADC000;
                v6 = v86;
                v26 = v29;
                goto LABEL_85;
              }

              goto LABEL_40;
            }
          }

          else
          {
            sub_100004F84(&v90, &qword_100AD13D0);
          }

          ++v30;
          v2 = v87;
          if (v6 == v28)
          {
            goto LABEL_84;
          }
        }

        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    v29 = _swiftEmptyArrayStorage;
    goto LABEL_84;
  }

  if (v7 != 3)
  {
    goto LABEL_99;
  }

  v10 = [a1 localDragSession];
  if (v10)
  {
    v11 = [v10 items];
    swift_unknownObjectRelease();
    sub_1000065A8(0, &unk_100AD4C90);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v93 = _swiftEmptyArrayStorage;
    v8 = (v12 & 0xFFFFFFFFFFFFFF8);
    if (v12 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
      v86 = v6;
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = v6;
      if (v13)
      {
LABEL_7:
        v6 = 0;
        v14 = _swiftEmptyArrayStorage;
        while (1)
        {
          v15 = v6;
          while (1)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_73;
              }

              v16 = *(v12 + 8 * v15 + 32);
            }

            v2 = v16;
            v6 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              goto LABEL_71;
            }

            v17 = [v16 localObject];
            if (v17)
            {
              v9 = v17;
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {

              v88 = 0u;
              v89 = 0u;
            }

            v90 = v88;
            v91 = v89;
            if (*(&v89 + 1))
            {
              break;
            }

            sub_100004F84(&v90, &qword_100AD13D0);
LABEL_10:
            ++v15;
            v2 = v87;
            if (v6 == v13)
            {
              goto LABEL_92;
            }
          }

          type metadata accessor for Asset();
          if ((swift_dynamicCast() & 1) == 0 || !v92)
          {
            goto LABEL_10;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v9 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v14 = v93;
          v2 = v87;
          if (v6 == v13)
          {
LABEL_92:

            v9 = _swiftEmptyArrayStorage;
            v8 = &off_100ADC000;
            v6 = v86;
            v42 = v14;
            goto LABEL_93;
          }
        }
      }
    }

    v14 = _swiftEmptyArrayStorage;
    goto LABEL_92;
  }

  v42 = _swiftEmptyArrayStorage;
LABEL_93:
  v60 = *&v2[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (v60)
  {
    v61 = *(v60 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    if (v61)
    {

      v62 = v61;
      sub_10012B2C8();
    }
  }

  v63 = type metadata accessor for TaskPriority();
  (*(*(v63 - 8) + 56))(v6, 1, 1, v63);
  v64 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
  v65 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments];
  type metadata accessor for MainActor();
  v49 = v2;

  v66 = static MainActor.shared.getter();
  v67 = swift_allocObject();
  v67[2] = v66;
  v67[3] = &protocol witness table for MainActor;
  v67[4] = v42;
  v67[5] = v49;
  v67[6] = v65;
  sub_1003E9628(0, 0, v6, &unk_10094C4B8, v67);

  *&v2[v64] = _swiftEmptyArrayStorage;

  v68 = *&v2[v64];
  if (v68 >> 62)
  {
    goto LABEL_122;
  }

  if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_98:
    v69 = v49 + OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize;
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 1;
    goto LABEL_99;
  }

  while (1)
  {
LABEL_99:
    v70 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator;
    v71 = *&v2[OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator];
    if (v71)
    {
      [v71 removeFromSuperview];
      v72 = *&v2[v70];
    }

    else
    {
      v72 = 0;
    }

    *&v2[v70] = 0;

    v73 = v8[96];
    v74 = *&v73[v2];
    if (v74 >> 62)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
      if (!v49)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v49 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_113;
      }
    }

    if (v49 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_122:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_98;
    }
  }

  v86 = v73;

  for (i = 0; i != v49; ++i)
  {
    if ((v74 & 0xC000000000000001) != 0)
    {
      v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v76 = *(v74 + 8 * i + 32);
    }

    v77 = v76;
    sub_1002C322C(v76, 1);
    if ((v80 & 1) == 0)
    {
      v81 = v78;
      v82 = v79;
      v83 = [v2 textStorage];
      [v83 removeAttribute:NSParagraphAttachmentAttributeName range:{v81, v82}];

      v2 = v87;
    }
  }

  v9 = _swiftEmptyArrayStorage;
  v73 = v86;
LABEL_113:
  *&v73[v2] = v9;

  v84 = *&v73[v2];
  if (!(v84 >> 62))
  {
    result = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      return result;
    }

    goto LABEL_115;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
LABEL_115:
    v85 = &v2[OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize];
    *v85 = 0;
    *(v85 + 1) = 0;
    v85[16] = 1;
  }

  return result;
}

void sub_1002D7194()
{
  v1 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator;
  v2 = *&v0[OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
  v5 = *&v0[OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v23 = v4;

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    sub_1002C322C(v8, 1);
    if ((v12 & 1) == 0)
    {
      v13 = v10;
      v14 = v11;
      v15 = [v0 textStorage];
      [v15 removeAttribute:NSParagraphAttachmentAttributeName range:{v13, v14}];
    }
  }

  v4 = v23;
LABEL_15:
  *&v0[v4] = _swiftEmptyArrayStorage;

  v16 = *&v0[v4];
  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    v17 = &v0[OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = 1;
  }

LABEL_18:
  v18 = [v0 delegate];
  if (v18)
  {
    v19 = v18;
    if ([v18 respondsToSelector:"textViewDidChange:"])
    {
      [v19 textViewDidChange:v0];
    }

    swift_unknownObjectRelease();
  }

  v20 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (v20)
  {
    v21 = *(v20 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    if (v21)
    {

      v22 = v21;
      sub_10012ACEC();
    }
  }
}