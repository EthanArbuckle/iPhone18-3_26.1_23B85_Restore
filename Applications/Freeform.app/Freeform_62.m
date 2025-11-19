void sub_100952E10(NSUInteger a1@<X0>, NSUInteger a2@<X1>, uint64_t a3@<X2>, NSRange *a4@<X3>, void *a5@<X8>)
{
  v6 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v7 = *(*(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v7)
  {
    v12 = v7;
    sub_100A28D8C();
    v14 = v13;

    v15 = [v14 range];
    v17 = v16;

    v25.location = a1;
    v25.length = a2;
    v26.location = v15;
    v26.length = v17;
    v18 = NSIntersectionRange(v25, v26);
    if (v18.length < 1)
    {
      goto LABEL_11;
    }

    v19 = *(*(a3 + v6) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v19)
    {
      v20 = v19;
      sub_100A28D8C();
      v22 = v21;

      if ((v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] & 1) == 0)
      {
        sub_100A2A960();
      }

      v23 = *&v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString];

      v24 = [v23 attributedSubstringFromRange:{v18.location, v18.length}];
      if (!v24)
      {
        goto LABEL_12;
      }

      if ([v24 length])
      {
        if (a4)
        {
          *a4 = v18;
        }

        goto LABEL_12;
      }

LABEL_11:
      v24 = 0;
LABEL_12:
      *a5 = v24;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100953030()
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1009530DC(v0);
  v1 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {

      sub_100947A80();
    }

    else
    {

      sub_100947BA0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1009530DC(char *a1)
{
  v1 = *(*&a1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    __break(1u);
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
  v19 = v4;
  v18 = v3;
  sub_1009481E4();
  if (v3)
  {
    if (v4)
    {
      v5 = [v18 string];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = type metadata accessor for CRLWPTextString();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
      *v11 = v6;
      *(v11 + 1) = v8;
      v11[16] = 0;
      v20.receiver = v10;
      v20.super_class = v9;
      v12 = objc_msgSendSuper2(&v20, "init");
      sub_100960E34();
      if (v13 && (v14 = [v13 selectedTextRange]) != 0 && (v15 = v14, v16 = sub_10078DB44(v19), v15, v16))
      {
        [a1 replace:v16 with:v12];
      }

      else
      {
        [a1 replace:v19 with:{v12, v18}];
      }

      return;
    }

    v17 = v18;
  }

  else
  {
    v17 = v19;
  }
}

id sub_1009535E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100953654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v8;
  v6[20] = v7;

  return _swift_task_switch(sub_1009536F0, v8, v7);
}

uint64_t sub_1009536F0()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_resignFirstResponderWhenKeyboardHides;
  v0[21] = OBJC_IVAR____TtC8Freeform11CRLWPEditor_resignFirstResponderWhenKeyboardHides;
  *(v1 + v2) = 0;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_10095379C;
  v4 = v0[17];

  return sub_100D1C8E8(v4, 1);
}

uint64_t sub_10095379C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_100953948;
  }

  else
  {
    v5 = sub_1009538D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009538D8()
{
  v1 = v0[21];
  v2 = v0[15];

  *(v2 + v1) = 1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100953948()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Caught error trying to present canvas view controller: %@", 57, 2, inited);

  swift_setDeallocating();
  sub_100005070(inited + 32);
  v7 = *(v0 + 8);

  return v7();
}

id sub_100953AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1005B981C(&unk_101A0DAA0);
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v21 = *(v20 + 64);
  *(&v46 - v18) = *(a1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v22 = type metadata accessor for CRLWPTextString();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v24 = a2;
  *(v24 + 1) = a3;
  v24[16] = 0;
  v49.receiver = v23;
  v49.super_class = v22;

  *(v19 + 2) = objc_msgSendSuper2(&v49, "init");
  v25 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v25)
  {
    v26 = v25;
    sub_100D65B10(&v19[v21]);

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_1005B981C(&qword_101A0D850);
  (*(*(v28 - 8) + 56))(&v19[v21], v27, 1, v28);
  v29 = *(v8 + 80);
  v30 = sub_1005B981C(&qword_101A06188);
  (*(*(v30 - 8) + 56))(&v19[v29], 1, 1, v30);
  v47 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  sub_10000BE14(v19, v16, &unk_101A0DAA0);
  v46 = *v16;
  v31 = *(v16 + 2);
  v32 = *(v8 + 64);
  v33 = *(v8 + 80);
  v34 = type metadata accessor for CRLWPReplaceTextCommand(0);
  v35 = objc_allocWithZone(v34);
  *v13 = v46;
  *(v13 + 2) = v31;
  sub_10003DFF8(&v16[v32], &v13[*(v8 + 64)], &unk_101A0DAB0);
  sub_10003DFF8(&v16[v33], &v13[*(v8 + 80)], &unk_101A096B0);
  v36 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  v37 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  (*(*(v37 - 8) + 56))(&v35[v36], 1, 1, v37);
  v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
  v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
  v38 = v47;
  *&v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v47;
  sub_10000BE14(v13, v10, &unk_101A0DAA0);
  v39 = *(v10 + 2);
  v40 = *(v8 + 64);
  v41 = *(v8 + 80);
  v42 = &v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
  *v42 = *v10;
  *(v42 + 2) = v39;
  sub_10003DFF8(&v10[v40], &v42[*(v8 + 64)], &unk_101A0DAB0);
  sub_10003DFF8(&v10[v41], &v42[*(v8 + 80)], &unk_101A096B0);
  v48.receiver = v35;
  v48.super_class = v34;
  v43 = v38;
  v44 = objc_msgSendSuper2(&v48, "init");
  sub_10000CAAC(v13, &unk_101A0DAA0);
  sub_10000CAAC(v19, &unk_101A0DAA0);
  return v44;
}

id sub_100953F60(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&unk_101A0DAA0);
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v19 = *(v18 + 64);
  *(&v45 - v16) = *(a1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v20 = type metadata accessor for CRLWPTextString();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v22 = a2;
  *(v22 + 1) = 0;
  v23 = 1;
  v22[16] = 1;
  v48.receiver = v21;
  v48.super_class = v20;
  v24 = a2;
  *(v17 + 2) = objc_msgSendSuper2(&v48, "init");
  v25 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v25)
  {
    v26 = v25;
    sub_100D65B10(&v17[v19]);

    v23 = 0;
  }

  v27 = sub_1005B981C(&qword_101A0D850);
  (*(*(v27 - 8) + 56))(&v17[v19], v23, 1, v27);
  v28 = *(v6 + 80);
  v29 = sub_1005B981C(&qword_101A06188);
  (*(*(v29 - 8) + 56))(&v17[v28], 1, 1, v29);
  v46 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  sub_10000BE14(v17, v14, &unk_101A0DAA0);
  v45 = *v14;
  v30 = *(v14 + 2);
  v31 = *(v6 + 64);
  v32 = *(v6 + 80);
  v33 = type metadata accessor for CRLWPReplaceTextCommand(0);
  v34 = objc_allocWithZone(v33);
  *v11 = v45;
  *(v11 + 2) = v30;
  sub_10003DFF8(&v14[v31], &v11[*(v6 + 64)], &unk_101A0DAB0);
  sub_10003DFF8(&v14[v32], &v11[*(v6 + 80)], &unk_101A096B0);
  v35 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  v36 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  (*(*(v36 - 8) + 56))(&v34[v35], 1, 1, v36);
  v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
  v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
  v37 = v46;
  *&v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v46;
  sub_10000BE14(v11, v8, &unk_101A0DAA0);
  v38 = *(v8 + 2);
  v39 = *(v6 + 64);
  v40 = *(v6 + 80);
  v41 = &v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
  *v41 = *v8;
  *(v41 + 2) = v38;
  sub_10003DFF8(&v8[v39], &v41[*(v6 + 64)], &unk_101A0DAB0);
  sub_10003DFF8(&v8[v40], &v41[*(v6 + 80)], &unk_101A096B0);
  v47.receiver = v34;
  v47.super_class = v33;
  v42 = v37;
  v43 = objc_msgSendSuper2(&v47, "init");
  sub_10000CAAC(v11, &unk_101A0DAA0);
  sub_10000CAAC(v17, &unk_101A0DAA0);
  return v43;
}

uint64_t sub_1009543F8(uint64_t a1, char *a2, char *a3, char *a4)
{
  v78 = a4;
  v77 = a3;
  v90 = a1;
  v86 = sub_1005B981C(qword_101A0CF60);
  v70 = *(v86 - 8);
  __chkstk_darwin(v86);
  v71 = &v69 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v89 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v69 - v7;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - v10;
  v88 = sub_1005B981C(&unk_101A09550);
  v72 = *(v88 - 8);
  __chkstk_darwin(v88);
  v87 = &v69 - v12;
  v84 = sub_1005B981C(&qword_1019FC080);
  v83 = *(v84 - 1);
  __chkstk_darwin(v84);
  *&v81 = &v69 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v74);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v75 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v21);
  v25 = &v69 - v24;
  v85 = a2;
  v76 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    goto LABEL_37;
  }

  (*(*v26 + 896))(result);
  v73 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v82 = v20;
  v27 = *(v20 + 16);
  v27(v25, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v95 = _swiftEmptyArrayStorage;
  v94 = _swiftEmptySetSingleton;
  v80 = v19;
  v79 = v25;
  result = CRAttributedString.count.getter();
  v28 = v85;
  if (result && (result = sub_100A31B44(v77, v78), (result & 1) == 0))
  {
    result = sub_100A31CD0(v77, v78);
    if (__OFSUB__(v40, result))
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    result = [v28 textRangeForParagraphsInCharRange:{result, v40 - result}];
    v42 = __OFADD__(result, v41);
    v43 = result + v41;
    if (v42)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v43 < result)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v44 = v81;
    CRAttributedString.subscript.getter();
    v45 = v84;
    CRAttributedString.Substring.runs.getter();
    (*(v83 + 8))(v44, v45);
    CRAttributedString.Runs.next()();
    v46 = *(v89 + 48);
    v85 = (v89 + 48);
    v84 = v46;
    v47 = (v46)(v11, 1, v6);
    v48 = v71;
    if (v47 != 1)
    {
      v83 = *(v89 + 32);
      v60 = (v70 + 8);
      v89 += 32;
      v61 = (v89 - 24);
      v81 = xmmword_10146C6B0;
      (v83)(v8, v11, v6);
      while (1)
      {
        v62 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v62);
        *(&v69 - 4) = &type metadata for CRLWPListStartAttribute;
        v63 = sub_1009620D8();
        v64 = v90;
        *(&v69 - 3) = v63;
        *(&v69 - 2) = v64;
        swift_getKeyPath();
        sub_10096212C();

        v65 = v86;
        CRAttributedString.Attributes.subscript.getter();

        (*v60)(v48, v65);
        v66 = v92;
        v67 = v93;
        if ((sub_10079C8C8(v92, v93, v94) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09560);
          inited = swift_initStackObject();
          *(inited + 16) = v81;
          *(inited + 32) = v66;
          *(inited + 40) = v67;
          sub_100798E3C(inited);
          sub_100E6B644(v91, v66, v67);
        }

        (*v61)(v8, v6);
        CRAttributedString.Runs.next()();
        if ((v84)(v11, 1, v6) == 1)
        {
          break;
        }

        (v83)(v8, v11, v6);
      }
    }

    (*(v72 + 8))(v87, v88);
    v32 = v80;
  }

  else
  {
    v29 = *&v28[v76];
    if (!v29)
    {
LABEL_38:
      __break(1u);
      return result;
    }

    v30 = v27;
    (*(*v29 + 896))();
    sub_1005E0A78(&v16[*(v73 + 20)], v18);
    sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
    v31 = v75;
    v32 = v80;
    v30(v75, &v18[*(v74 + 20)], v80);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v33 = v81;
    v34 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v34);
    *(&v69 - 4) = &type metadata for CRLWPListStartAttribute;
    v35 = sub_1009620D8();
    v36 = v90;
    *(&v69 - 3) = v35;
    *(&v69 - 2) = v36;
    swift_getKeyPath();
    sub_10096212C();

    v37 = v84;
    CRAttributedString.Substring.subscript.getter();

    (*(v83 + 8))(v33, v37);
    sub_1005B981C(&unk_101A09560);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_10146C6B0;
    v39 = v93;
    *(v38 + 32) = v92;
    *(v38 + 40) = v39;
    sub_100798E3C(v38);
    (*(v82 + 8))(v31, v32);
  }

  v49 = v95;
  v50 = v95[2];
  if (v50)
  {
    v92 = _swiftEmptyArrayStorage;
    result = sub_100776544(0, v50, 0);
    v51 = 0;
    v52 = v92;
    v53 = v49 + 5;
    while (v51 < v49[2])
    {
      if (*v53)
      {
        v54 = 1;
      }

      else
      {
        v54 = *(v53 - 1);
      }

      v92 = v52;
      v56 = v52[2];
      v55 = v52[3];
      if (v56 >= v55 >> 1)
      {
        result = sub_100776544((v55 > 1), v56 + 1, 1);
        v52 = v92;
      }

      ++v51;
      v52[2] = v56 + 1;
      v52[v56 + 4] = v54;
      v53 += 16;
      if (v50 == v51)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_22:

  v57 = v52[2];
  if (v57)
  {
    if (v57 == 1)
    {
      v58 = v52[4];
      v59 = v79;

      (*(v82 + 8))(v59, v32);
      return v58;
    }

    else
    {
      (*(v82 + 8))(v79, v32);
    }
  }

  else
  {
    (*(v82 + 8))(v79, v32);

    return 1;
  }

  return v52;
}

uint64_t sub_100954FAC(uint64_t a1, char *a2, char *a3, char *a4)
{
  v79 = a4;
  v78 = a3;
  v91 = a1;
  v87 = sub_1005B981C(qword_101A0CF60);
  v71 = *(v87 - 8);
  __chkstk_darwin(v87);
  v72 = &v71 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v90 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v71 - v7;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v89 = sub_1005B981C(&unk_101A09550);
  v73 = *(v89 - 8);
  __chkstk_darwin(v89);
  v88 = &v71 - v12;
  v85 = sub_1005B981C(&qword_1019FC080);
  v84 = *(v85 - 1);
  __chkstk_darwin(v85);
  *&v81 = &v71 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v75);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v76 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v21);
  v25 = &v71 - v24;
  v86 = a2;
  v77 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    goto LABEL_39;
  }

  (*(*v26 + 896))(result);
  v74 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v82 = v20;
  v27 = *(v20 + 16);
  v27(v25, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v96 = _swiftEmptyArrayStorage;
  v95 = _swiftEmptySetSingleton;
  v83 = v19;
  v80 = v25;
  result = CRAttributedString.count.getter();
  v28 = v86;
  if (result && (result = sub_100A31B44(v78, v79), (result & 1) == 0))
  {
    result = sub_100A31CD0(v78, v79);
    if (__OFSUB__(v40, result))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    result = [v28 textRangeForParagraphsInCharRange:{result, v40 - result}];
    v42 = __OFADD__(result, v41);
    v43 = result + v41;
    if (v42)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v43 < result)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v44 = v81;
    CRAttributedString.subscript.getter();
    v45 = v85;
    CRAttributedString.Substring.runs.getter();
    (*(v84 + 8))(v44, v45);
    CRAttributedString.Runs.next()();
    v46 = *(v90 + 48);
    v86 = (v90 + 48);
    v85 = v46;
    v47 = (v46)(v11, 1, v6);
    v48 = v72;
    if (v47 != 1)
    {
      v84 = *(v90 + 32);
      v62 = (v71 + 8);
      v90 += 32;
      v63 = (v90 - 24);
      v81 = xmmword_10146C6B0;
      (v84)(v8, v11, v6);
      while (1)
      {
        v64 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v64);
        *(&v71 - 4) = &type metadata for CRLWPListStyleTypeAttribute;
        v65 = sub_100962180();
        v66 = v91;
        *(&v71 - 3) = v65;
        *(&v71 - 2) = v66;
        swift_getKeyPath();
        sub_1009621D4();

        v67 = v87;
        CRAttributedString.Attributes.subscript.getter();

        (*v62)(v48, v67);
        v68 = v93;
        v69 = v94;
        if ((sub_10079C9CC(v93, v94, v95) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09580);
          inited = swift_initStackObject();
          *(inited + 16) = v81;
          *(inited + 32) = v68;
          *(inited + 40) = v69;
          sub_100798E54(inited);
          sub_100E6B798(v92, v68, v69);
        }

        (*v63)(v8, v6);
        CRAttributedString.Runs.next()();
        if ((v85)(v11, 1, v6) == 1)
        {
          break;
        }

        (v84)(v8, v11, v6);
      }
    }

    (*(v73 + 8))(v88, v89);
    v32 = v83;
  }

  else
  {
    v29 = *&v28[v77];
    if (!v29)
    {
LABEL_40:
      __break(1u);
      return result;
    }

    v30 = v27;
    (*(*v29 + 896))();
    sub_1005E0A78(&v16[*(v74 + 20)], v18);
    sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
    v31 = v76;
    v32 = v83;
    v30(v76, &v18[*(v75 + 20)], v83);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v33 = v81;
    v34 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v34);
    *(&v71 - 4) = &type metadata for CRLWPListStyleTypeAttribute;
    v35 = sub_100962180();
    v36 = v91;
    *(&v71 - 3) = v35;
    *(&v71 - 2) = v36;
    swift_getKeyPath();
    sub_1009621D4();

    v37 = v85;
    CRAttributedString.Substring.subscript.getter();

    (*(v84 + 8))(v33, v37);
    sub_1005B981C(&unk_101A09580);
    v38 = swift_initStackObject();
    *(v38 + 16) = xmmword_10146C6B0;
    v39 = v94;
    *(v38 + 32) = v93;
    *(v38 + 40) = v39;
    sub_100798E54(v38);
    (*(v82 + 8))(v31, v32);
  }

  v49 = v96;
  v50 = v96[2];
  if (v50)
  {
    v93 = _swiftEmptyArrayStorage;
    result = sub_100776564(0, v50, 0);
    v51 = 0;
    v52 = v93;
    v53 = (v49 + 5);
    while (v51 < v49[2])
    {
      v54 = *(v53 - 8);
      v55 = *v53;
      if (v55)
      {
        v54 = 3;
      }

      if (v55 == 255)
      {
        v56 = 0;
      }

      else
      {
        v56 = v54;
      }

      v93 = v52;
      v58 = v52[2];
      v57 = v52[3];
      if (v58 >= v57 >> 1)
      {
        result = sub_100776564((v57 > 1), v58 + 1, 1);
        v52 = v93;
      }

      ++v51;
      v52[2] = v58 + 1;
      *(v52 + v58 + 32) = v56;
      v53 += 16;
      if (v50 == v51)
      {

        v32 = v83;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_24:

  v59 = v52[2];
  if (v59)
  {
    if (v59 == 1)
    {
      v60 = *(v52 + 32);
      v61 = v80;

      (*(v82 + 8))(v61, v32);
      return v60;
    }

    else
    {
      (*(v82 + 8))(v80, v32);
    }
  }

  else
  {
    (*(v82 + 8))(v80, v32);

    return 0;
  }

  return v52;
}

uint64_t sub_100955B74(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  *&v121 = a4;
  v117 = a3;
  v118 = a1;
  v131 = sub_1005B981C(qword_101A0CF60);
  v112 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v111 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v135 = *(v6 - 8);
  __chkstk_darwin(v6);
  v113 = &v111 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v132 = &v111 - v9;
  v134 = sub_1005B981C(&unk_101A09550);
  v114 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v111 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v123 = &v111 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v116);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v115 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v24 = &v111 - v23;
  v129 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v25 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v25)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  (*(*v25 + 896))(result);
  v128 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v127 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v120 = v19;
  v26 = *(v19 + 16);
  v26(v24, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v181 = _swiftEmptyArrayStorage;
  v180 = _swiftEmptySetSingleton;
  v122 = v18;
  v119 = v24;
  result = CRAttributedString.count.getter();
  v126 = a2;
  if (result)
  {
    result = sub_100A31B44(v117, v121);
    if ((result & 1) == 0)
    {
      result = sub_100A31CD0(v117, v121);
      v40 = v118;
      if (__OFSUB__(v39, result))
      {
        goto LABEL_46;
      }

      result = [a2 textRangeForParagraphsInCharRange:{result, v39 - result}];
      v42 = __OFADD__(result, v41);
      v43 = result + v41;
      if (v42)
      {
LABEL_47:
        __break(1u);
      }

      else if (v43 >= result)
      {
        v44 = v123;
        CRAttributedString.subscript.getter();
        v45 = v125;
        CRAttributedString.Substring.runs.getter();
        (*(v124 + 8))(v44, v45);
        v46 = v132;
        CRAttributedString.Runs.next()();
        v124 = *(v135 + 48);
        v125 = v135 + 48;
        v47 = (v124)(v46, 1, v6);
        v48 = v113;
        if (v47 != 1)
        {
          v123 = *(v135 + 32);
          v102 = (v112 + 8);
          v135 += 32;
          v103 = (v135 - 24);
          v121 = xmmword_10146C6B0;
          (v123)(v113, v46, v6);
          while (1)
          {
            v105 = v130;
            v106 = CRAttributedString.Runs.Run.attributes.getter();
            __chkstk_darwin(v106);
            *(&v111 - 4) = &type metadata for CRLWPWritingDirectionAttribute;
            *(&v111 - 3) = sub_100962450();
            *(&v111 - 2) = v40;
            swift_getKeyPath();
            sub_1009624A4();

            v107 = v131;
            CRAttributedString.Attributes.subscript.getter();

            (*v102)(v105, v107);
            v108 = *&v177[0];
            v109 = BYTE8(v177[0]);
            if ((sub_10079CB70(*&v177[0], SBYTE8(v177[0]), v180) & 1) == 0)
            {
              sub_1005B981C(&unk_101A096A0);
              v110 = swift_allocObject();
              *(v110 + 16) = v121;
              *(v110 + 32) = v108;
              *(v110 + 40) = v109;
              sub_100798E6C(v110);
              sub_100E6B98C(&v161, v108, v109);
            }

            (*v103)(v48, v6);
            v104 = v132;
            CRAttributedString.Runs.next()();
            if ((v124)(v104, 1, v6) == 1)
            {
              break;
            }

            (v123)(v48, v104, v6);
          }
        }

        (*(v114 + 8))(v133, v134);
        v29 = v126;
        v32 = v122;
        v38 = v120;
        goto LABEL_11;
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  v27 = *&a2[v129];
  v28 = v118;
  if (!v27)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v29 = a2;
  v30 = v127;
  (*(*v27 + 896))();
  sub_1005E0A78(v30 + *(v128 + 20), v17);
  sub_1009625A4(v30, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = v115;
  v32 = v122;
  v26(v115, &v17[*(v116 + 20)], v122);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v33 = v123;
  v34 = CRAttributedString.subscript.getter();
  __chkstk_darwin(v34);
  *(&v111 - 4) = &type metadata for CRLWPWritingDirectionAttribute;
  *(&v111 - 3) = sub_100962450();
  *(&v111 - 2) = v28;
  swift_getKeyPath();
  sub_1009624A4();

  v35 = v125;
  CRAttributedString.Substring.subscript.getter();

  (*(v124 + 8))(v33, v35);
  sub_1005B981C(&unk_101A096A0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_10146C6B0;
  v37 = BYTE8(v177[0]);
  *(v36 + 32) = *&v177[0];
  *(v36 + 40) = v37;
  sub_100798E6C(v36);
  v38 = v120;
  (*(v120 + 8))(v31, v32);
LABEL_11:
  v49 = v181[2];
  if (v49)
  {
    v179 = _swiftEmptyArrayStorage;
    v134 = v181;
    v135 = v49;
    sub_100776584(0, v49, 0);
    result = v134;
    v50 = v135;
    v51 = 0;
    v52 = v29 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
    v53 = (v134 + 40);
    v54 = v179;
    while (1)
    {
      if (v51 >= *(result + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v55 = *v53;
      if (v55 != 255)
      {
        if (v55)
        {
          v56 = -1;
        }

        else
        {
          v56 = *(v53 - 1);
        }

        goto LABEL_29;
      }

      v57 = *(v52 + 208);
      v58 = *(v52 + 176);
      v173 = *(v52 + 192);
      v174 = v57;
      v59 = *(v52 + 208);
      v175 = *(v52 + 224);
      v60 = *(v52 + 144);
      v61 = *(v52 + 112);
      v169 = *(v52 + 128);
      v170 = v60;
      v62 = *(v52 + 144);
      v63 = *(v52 + 176);
      v171 = *(v52 + 160);
      v172 = v63;
      v64 = *(v52 + 80);
      v65 = *(v52 + 48);
      v165 = *(v52 + 64);
      v166 = v64;
      v66 = *(v52 + 80);
      v67 = *(v52 + 112);
      v167 = *(v52 + 96);
      v168 = v67;
      v68 = *(v52 + 16);
      v161 = *v52;
      v162 = v68;
      v69 = *(v52 + 48);
      v71 = *v52;
      v70 = *(v52 + 16);
      v163 = *(v52 + 32);
      v164 = v69;
      v177[12] = v173;
      v177[13] = v59;
      v177[14] = *(v52 + 224);
      v177[8] = v169;
      v177[9] = v62;
      v177[10] = v171;
      v177[11] = v58;
      v177[4] = v165;
      v177[5] = v66;
      v177[6] = v167;
      v177[7] = v61;
      v177[0] = v71;
      v177[1] = v70;
      v176 = *(v52 + 240);
      v178 = *(v52 + 240);
      v177[2] = v163;
      v177[3] = v65;
      result = sub_100695050(v177);
      if (result != 1)
      {
        break;
      }

      v72 = *&v126[v129];
      if (!v72)
      {
        goto LABEL_49;
      }

      v73 = v127;
      (*(*v72 + 896))();
      sub_1005B981C(&unk_101A095A0);
      CRRegister.wrappedValue.getter();
      sub_1009625A4(v73, type metadata accessor for CRLWPShapeItemCRDTData);
      v150 = v136[12];
      v151 = v136[13];
      v152 = v136[14];
      v153 = v137;
      v146 = v136[8];
      v147 = v136[9];
      v148 = v136[10];
      v149 = v136[11];
      v142 = v136[4];
      v143 = v136[5];
      v144 = v136[6];
      v145 = v136[7];
      v138 = v136[0];
      v139 = v136[1];
      v140 = v136[2];
      v141 = v136[3];
      if (sub_100695050(&v138) != 1)
      {
        v74 = v153;
        v75 = v152;
        v76 = BYTE8(v152);
        v77 = v151;
        v78 = BYTE8(v151);
        v79 = v150;
        v80 = BYTE8(v150);
        v81 = v149;
        v82 = BYTE8(v149);
        v83 = v141;
        v84 = BYTE8(v141);
        v85 = v140;
        v86 = BYTE8(v140);
        v87 = BYTE10(v139);
        v88 = BYTE9(v139);
        v89 = DWORD1(v139);
        v90 = BYTE8(v139);
        v91 = v138;
        v92 = v139;
        v93 = &v138;
        goto LABEL_23;
      }

LABEL_28:
      result = v134;
      v50 = v135;
      v56 = -1;
LABEL_29:
      v179 = v54;
      v98 = v54[2];
      v97 = v54[3];
      if (v98 >= v97 >> 1)
      {
        sub_100776584((v97 > 1), v98 + 1, 1);
        result = v134;
        v50 = v135;
        v54 = v179;
      }

      ++v51;
      v54[2] = v98 + 1;
      v54[v98 + 4] = v56;
      v53 += 16;
      if (v50 == v51)
      {

        v32 = v122;
        v38 = v120;
        goto LABEL_34;
      }
    }

    v91 = v161;
    v92 = v162;
    v89 = DWORD1(v162);
    v88 = BYTE9(v162);
    v87 = BYTE10(v162);
    v85 = v163;
    v86 = BYTE8(v163);
    v83 = v164;
    v84 = BYTE8(v164);
    v81 = v172;
    v82 = BYTE8(v172);
    v79 = v173;
    v80 = BYTE8(v173);
    v77 = v174;
    v78 = BYTE8(v174);
    v75 = v175;
    v74 = v176;
    v76 = BYTE8(v175);
    v90 = BYTE8(v162);
    v93 = &v161;
LABEL_23:
    v94 = v93[9];
    v158 = v93[8];
    v159 = v94;
    v160 = v93[10];
    v95 = v93[5];
    v154 = v93[4];
    v155 = v95;
    v96 = v93[7];
    v156 = v93[6];
    v157 = v96;
    v138 = v91;
    LOBYTE(v139) = v92;
    DWORD1(v139) = v89;
    BYTE8(v139) = v90 & 1;
    BYTE9(v139) = v88;
    BYTE10(v139) = v87;
    *&v140 = v85;
    BYTE8(v140) = v86;
    *&v141 = v83;
    BYTE8(v141) = v84;
    v146 = v158;
    v147 = v159;
    v148 = v160;
    v142 = v154;
    v143 = v95;
    v144 = v156;
    v145 = v96;
    *&v149 = v81;
    BYTE8(v149) = v82;
    *&v150 = v79;
    BYTE8(v150) = v80;
    *&v151 = v77;
    BYTE8(v151) = v78;
    *&v152 = v75;
    BYTE8(v152) = v76 & 1;
    v153 = v74;
    sub_10000BE14(&v161, v136, &unk_101A0D830);
    sub_10081852C(&v138);
    if (v80 != 255)
    {
      if (v80)
      {
        v56 = -1;
      }

      else
      {
        v56 = v79;
      }

      result = v134;
      v50 = v135;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_34:

  v99 = v54[2];
  v100 = v119;
  if (v99)
  {
    if (v99 == 1)
    {
      v101 = v54[4];

      (*(v38 + 8))(v100, v32);
      return v101;
    }

    else
    {
      (*(v38 + 8))(v119, v32);
    }
  }

  else
  {

    v54 = sub_100A43F70(v126);
    (*(v38 + 8))(v100, v32);
  }

  return v54;
}

uint64_t sub_1009569D8(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  *&v120 = a4;
  v117 = a3;
  v118 = a1;
  v130 = sub_1005B981C(qword_101A0CF60);
  v113 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v112 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v135 = *(v6 - 8);
  __chkstk_darwin(v6);
  v114 = &v112 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v131 = &v112 - v9;
  v134 = sub_1005B981C(&unk_101A09550);
  v115 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v112 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v123 = &v112 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v116);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v20);
  v25 = &v112 - v24;
  v132 = a2;
  v128 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  (*(*v26 + 896))(result);
  v127 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v126 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v121 = v19;
  v27 = *(v19 + 16);
  v27(v25, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v181 = _swiftEmptyArrayStorage;
  v180 = _swiftEmptySetSingleton;
  v122 = v18;
  v119 = v25;
  result = CRAttributedString.count.getter();
  v28 = v132;
  if (result)
  {
    result = sub_100A31B44(v117, v120);
    if ((result & 1) == 0)
    {
      result = sub_100A31CD0(v117, v120);
      if (__OFSUB__(v41, result))
      {
        goto LABEL_46;
      }

      result = [v28 textRangeForParagraphsInCharRange:{result, v41 - result}];
      v43 = __OFADD__(result, v42);
      v44 = result + v42;
      if (v43)
      {
LABEL_47:
        __break(1u);
      }

      else if (v44 >= result)
      {
        v45 = v123;
        CRAttributedString.subscript.getter();
        v46 = v125;
        CRAttributedString.Substring.runs.getter();
        (*(v124 + 8))(v45, v46);
        v47 = v131;
        CRAttributedString.Runs.next()();
        v124 = *(v135 + 48);
        v125 = v135 + 48;
        v48 = (v124)(v47, 1, v6);
        v49 = v118;
        v50 = v114;
        if (v48 != 1)
        {
          v123 = *(v135 + 32);
          v103 = (v113 + 8);
          v135 += 32;
          v104 = (v135 - 24);
          v120 = xmmword_10146C6B0;
          (v123)(v114, v47, v6);
          while (1)
          {
            v106 = v129;
            v107 = CRAttributedString.Runs.Run.attributes.getter();
            __chkstk_darwin(v107);
            *(&v112 - 4) = &type metadata for CRLWPParagraphAlignmentAttribute;
            *(&v112 - 3) = sub_1006ACAD4();
            *(&v112 - 2) = v49;
            swift_getKeyPath();
            sub_100962228();

            v108 = v130;
            CRAttributedString.Attributes.subscript.getter();

            (*v103)(v106, v108);
            v109 = *&v177[0];
            v110 = BYTE8(v177[0]);
            if ((sub_10079CD48(*&v177[0], SBYTE8(v177[0]), v180) & 1) == 0)
            {
              sub_1005B981C(&qword_101A095B8);
              v111 = swift_allocObject();
              *(v111 + 16) = v120;
              *(v111 + 32) = v109;
              *(v111 + 40) = v110;
              sub_100798E84(v111);
              sub_100E6BBB4(&v161, v109, v110);
            }

            (*v104)(v50, v6);
            v105 = v131;
            CRAttributedString.Runs.next()();
            if ((v124)(v105, 1, v6) == 1)
            {
              break;
            }

            (v123)(v50, v105, v6);
          }
        }

        (*(v115 + 8))(v133, v134);
        v28 = v132;
        goto LABEL_11;
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  v29 = *&v28[v128];
  if (!v29)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v30 = v126;
  (*(*v29 + 896))();
  sub_1005E0A78(v30 + *(v127 + 20), v17);
  sub_1009625A4(v30, type metadata accessor for CRLWPShapeItemCRDTData);
  v31 = v22;
  v32 = v22;
  v33 = v122;
  v27(v32, &v17[*(v116 + 20)], v122);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v34 = v123;
  v35 = CRAttributedString.subscript.getter();
  __chkstk_darwin(v35);
  *(&v112 - 4) = &type metadata for CRLWPParagraphAlignmentAttribute;
  v36 = sub_1006ACAD4();
  v37 = v118;
  *(&v112 - 3) = v36;
  *(&v112 - 2) = v37;
  swift_getKeyPath();
  sub_100962228();

  v38 = v125;
  CRAttributedString.Substring.subscript.getter();

  (*(v124 + 8))(v34, v38);
  sub_1005B981C(&qword_101A095B8);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_10146C6B0;
  v40 = BYTE8(v177[0]);
  *(v39 + 32) = *&v177[0];
  *(v39 + 40) = v40;
  sub_100798E84(v39);
  (*(v121 + 8))(v31, v33);
LABEL_11:
  v51 = v181[2];
  if (v51)
  {
    v179 = _swiftEmptyArrayStorage;
    v134 = v181;
    v135 = v51;
    sub_1007765A4(0, v51, 0);
    result = v134;
    v52 = v135;
    v53 = 0;
    v54 = &v28[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
    v55 = v179;
    v56 = (v134 + 40);
    while (1)
    {
      if (v53 >= *(result + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v57 = *v56;
      if (v57 != 255)
      {
        if (v57)
        {
          v58 = 4;
        }

        else
        {
          v58 = *(v56 - 1);
        }

        goto LABEL_29;
      }

      v59 = *(v54 + 13);
      v60 = *(v54 + 11);
      v173 = *(v54 + 12);
      v174 = v59;
      v61 = *(v54 + 13);
      v175 = *(v54 + 14);
      v62 = *(v54 + 9);
      v63 = *(v54 + 7);
      v169 = *(v54 + 8);
      v170 = v62;
      v64 = *(v54 + 9);
      v65 = *(v54 + 11);
      v171 = *(v54 + 10);
      v172 = v65;
      v66 = *(v54 + 5);
      v67 = *(v54 + 3);
      v165 = *(v54 + 4);
      v166 = v66;
      v68 = *(v54 + 5);
      v69 = *(v54 + 7);
      v167 = *(v54 + 6);
      v168 = v69;
      v70 = *(v54 + 1);
      v161 = *v54;
      v162 = v70;
      v71 = *(v54 + 3);
      v73 = *v54;
      v72 = *(v54 + 1);
      v163 = *(v54 + 2);
      v164 = v71;
      v177[12] = v173;
      v177[13] = v61;
      v177[14] = *(v54 + 14);
      v177[8] = v169;
      v177[9] = v64;
      v177[10] = v171;
      v177[11] = v60;
      v177[4] = v165;
      v177[5] = v68;
      v177[6] = v167;
      v177[7] = v63;
      v177[0] = v73;
      v177[1] = v72;
      v176 = *(v54 + 30);
      v178 = *(v54 + 30);
      v177[2] = v163;
      v177[3] = v67;
      result = sub_100695050(v177);
      if (result != 1)
      {
        break;
      }

      v74 = *&v132[v128];
      if (!v74)
      {
        goto LABEL_49;
      }

      v75 = v126;
      (*(*v74 + 896))();
      sub_1005B981C(&unk_101A095A0);
      CRRegister.wrappedValue.getter();
      sub_1009625A4(v75, type metadata accessor for CRLWPShapeItemCRDTData);
      v150 = v136[12];
      v151 = v136[13];
      v152 = v136[14];
      v153 = v137;
      v146 = v136[8];
      v147 = v136[9];
      v148 = v136[10];
      v149 = v136[11];
      v142 = v136[4];
      v143 = v136[5];
      v144 = v136[6];
      v145 = v136[7];
      v138 = v136[0];
      v139 = v136[1];
      v140 = v136[2];
      v141 = v136[3];
      if (sub_100695050(&v138) != 1)
      {
        v76 = v153;
        v77 = v152;
        v78 = BYTE8(v152);
        v79 = v151;
        v80 = BYTE8(v151);
        v81 = v150;
        v82 = BYTE8(v150);
        v83 = v149;
        v84 = BYTE8(v149);
        v85 = v141;
        v86 = BYTE8(v141);
        v87 = v140;
        v88 = BYTE8(v140);
        v89 = BYTE10(v139);
        v90 = BYTE9(v139);
        v91 = DWORD1(v139);
        v92 = BYTE8(v139);
        v93 = v138;
        v94 = v139;
        v95 = &v138;
        goto LABEL_23;
      }

LABEL_28:
      result = v134;
      v52 = v135;
      v58 = 4;
LABEL_29:
      v179 = v55;
      v100 = v55[2];
      v99 = v55[3];
      if (v100 >= v99 >> 1)
      {
        sub_1007765A4((v99 > 1), v100 + 1, 1);
        result = v134;
        v52 = v135;
        v55 = v179;
      }

      ++v53;
      v55[2] = v100 + 1;
      v55[v100 + 4] = v58;
      v56 += 16;
      if (v52 == v53)
      {

        v28 = v132;
        goto LABEL_34;
      }
    }

    v93 = v161;
    v94 = v162;
    v91 = DWORD1(v162);
    v90 = BYTE9(v162);
    v89 = BYTE10(v162);
    v87 = v163;
    v88 = BYTE8(v163);
    v85 = v164;
    v86 = BYTE8(v164);
    v83 = v172;
    v84 = BYTE8(v172);
    v81 = v173;
    v82 = BYTE8(v173);
    v79 = v174;
    v80 = BYTE8(v174);
    v77 = v175;
    v76 = v176;
    v78 = BYTE8(v175);
    v92 = BYTE8(v162);
    v95 = &v161;
LABEL_23:
    v96 = v95[9];
    v158 = v95[8];
    v159 = v96;
    v160 = v95[10];
    v97 = v95[5];
    v154 = v95[4];
    v155 = v97;
    v98 = v95[7];
    v156 = v95[6];
    v157 = v98;
    v138 = v93;
    LOBYTE(v139) = v94;
    DWORD1(v139) = v91;
    BYTE8(v139) = v92 & 1;
    BYTE9(v139) = v90;
    BYTE10(v139) = v89;
    *&v140 = v87;
    BYTE8(v140) = v88;
    *&v141 = v85;
    BYTE8(v141) = v86;
    v146 = v158;
    v147 = v159;
    v148 = v160;
    v142 = v154;
    v143 = v97;
    v144 = v156;
    v145 = v98;
    *&v149 = v83;
    BYTE8(v149) = v84;
    *&v150 = v81;
    BYTE8(v150) = v82;
    *&v151 = v79;
    BYTE8(v151) = v80;
    *&v152 = v77;
    BYTE8(v152) = v78 & 1;
    v153 = v76;
    sub_10000BE14(&v161, v136, &unk_101A0D830);
    sub_10081852C(&v138);
    if (v84 != 255)
    {
      if (v84)
      {
        v58 = 4;
      }

      else
      {
        v58 = v83;
      }

      result = v134;
      v52 = v135;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_34:

  v101 = v55[2];
  if (v101)
  {
    if (v101 == 1)
    {
      v102 = v55[4];

      (*(v121 + 8))(v119, v122);
      return v102;
    }

    else
    {
      (*(v121 + 8))(v119, v122);
    }
  }

  else
  {

    v55 = sub_100A43BEC(v28);
    (*(v121 + 8))(v119, v122);
  }

  return v55;
}

uint64_t sub_100957838(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v151 = a1;
  *&v152 = a4;
  v150 = a3;
  v157 = sub_1005B981C(qword_101A0CF60);
  v138 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v138 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v162 = *(v6 - 8);
  __chkstk_darwin(v6);
  v147 = &v138 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v158 = &v138 - v9;
  *&v160 = sub_1005B981C(&unk_101A09550);
  v139 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v138 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v12 = *(v11 - 8);
  v154 = v11;
  v155 = v12;
  __chkstk_darwin(v11);
  v153 = &v138 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v149);
  v18 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v148 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v138 - v24;
  result = __chkstk_darwin(v23);
  v28 = &v138 - v27;
  v161 = a2;
  v146 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v29 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v29)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  (*(*v29 + 896))(result);
  v145 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  v144 = v16;
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v142 = v20;
  v30 = *(v20 + 16);
  v30(v28, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v245 = _swiftEmptyArrayStorage;
  v244 = _swiftEmptySetSingleton;
  v143 = v19;
  v141 = v28;
  result = CRAttributedString.count.getter();
  v31 = v161;
  if (!result || (result = sub_100A31B44(v150, v152), (result & 1) != 0))
  {
    v32 = *&v31[v146];
    if (!v32)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v33 = v144;
    (*(*v32 + 896))();
    sub_1005E0A78(v33 + *(v145 + 20), v18);
    sub_1009625A4(v33, type metadata accessor for CRLWPShapeItemCRDTData);
    v34 = v143;
    v30(v25, &v18[*(v149 + 20)], v143);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v153;
    v36 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v36);
    *(&v138 - 4) = &type metadata for CRLWPCharacterFillAttribute;
    v37 = sub_10082489C();
    v38 = v151;
    *(&v138 - 3) = v37;
    *(&v138 - 2) = v38;
    swift_getKeyPath();
    sub_1008248F0();

    v39 = v154;
    CRAttributedString.Substring.subscript.getter();

    (*(v155 + 8))(v35, v39);
    sub_1005B981C(&qword_101A095F0);
    v40 = swift_allocObject();
    v41 = v185;
    v42 = v186;
    v209 = v186;
    v43 = v187;
    v210 = v187;
    v44 = v181;
    v204 = v181;
    v205 = v182;
    v46 = v183;
    v45 = v184;
    v207 = v184;
    v208 = v185;
    v206 = v183;
    *(v40 + 48) = v182;
    *(v40 + 64) = v46;
    *(v40 + 16) = xmmword_10146C6B0;
    *(v40 + 32) = v44;
    *(v40 + 112) = v42;
    *(v40 + 128) = v43;
    *(v40 + 80) = v45;
    *(v40 + 96) = v41;
    sub_10000BE14(&v204, &v220, &qword_1019FFF80);
    sub_100798E9C(v40);
    v224 = v185;
    v225 = v186;
    v226 = v187;
    v220 = v181;
    v221 = v182;
    v223 = v184;
    v222 = v183;
    sub_10000CAAC(&v220, &qword_1019FFF80);
    v140 = *(v142 + 8);
    v140(v25, v34);
    goto LABEL_13;
  }

  result = sub_100A31CD0(v150, v152);
  v48 = *&v31[v146];
  if (v48)
  {
    v49 = result;
    v50 = v47;
    v51 = v144;
    (*(*v48 + 896))();
    sub_1005E0A78(v51 + *(v145 + 20), v18);
    sub_1009625A4(v51, type metadata accessor for CRLWPShapeItemCRDTData);
    v52 = v148;
    v53 = v143;
    v30(v148, v18, v143);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v54 = CRAttributedString.count.getter();
    v55 = *(v142 + 8);
    v55(v52, v53);
    if (v54 >= (v49 & ~(v49 >> 63)))
    {
      v56 = v49 & ~(v49 >> 63);
    }

    else
    {
      v56 = v54;
    }

    if ((v50 & ~(v50 >> 63)) < v56)
    {
      __break(1u);
      goto LABEL_62;
    }

    v140 = v55;
    v57 = v153;
    CRAttributedString.subscript.getter();
    v58 = v154;
    CRAttributedString.Substring.runs.getter();
    (*(v155 + 8))(v57, v58);
    v59 = v158;
    CRAttributedString.Runs.next()();
    v154 = *(v162 + 48);
    v155 = v162 + 48;
    v60 = v154(v59, 1, v6);
    v61 = v151;
    v62 = v147;
    if (v60 != 1)
    {
      v153 = *(v162 + 32);
      v122 = (v138 + 8);
      v162 += 32;
      v123 = (v162 - 24);
      v152 = xmmword_10146C6B0;
      (v153)(v147, v59, v6);
      while (1)
      {
        v132 = v156;
        v133 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v133);
        *(&v138 - 4) = &type metadata for CRLWPCharacterFillAttribute;
        *(&v138 - 3) = sub_10082489C();
        *(&v138 - 2) = v61;
        swift_getKeyPath();
        sub_1008248F0();

        v134 = v157;
        CRAttributedString.Attributes.subscript.getter();

        (*v122)(v132, v134);
        v251[4] = v224;
        v251[5] = v225;
        v251[6] = v226;
        v251[0] = v220;
        v251[1] = v221;
        v251[2] = v222;
        v251[3] = v223;
        if ((sub_10079CF20(v251, v244) & 1) == 0)
        {
          sub_1005B981C(&qword_101A095F0);
          v124 = swift_allocObject();
          v125 = v224;
          v126 = v225;
          v169 = v224;
          v170 = v225;
          v127 = v226;
          v171 = v226;
          v128 = v220;
          v165 = v220;
          v166 = v221;
          v129 = v223;
          v130 = v222;
          v167 = v222;
          v168 = v223;
          *(v124 + 48) = v221;
          *(v124 + 64) = v130;
          *(v124 + 16) = v152;
          *(v124 + 32) = v128;
          *(v124 + 112) = v126;
          *(v124 + 128) = v127;
          *(v124 + 80) = v129;
          *(v124 + 96) = v125;
          sub_10000BE14(&v165, &v204, &qword_1019FFF80);
          sub_100798E9C(v124);
          v250[4] = v224;
          v250[5] = v225;
          v250[6] = v226;
          v250[0] = v220;
          v250[1] = v221;
          v250[3] = v223;
          v250[2] = v222;
          sub_10000BE14(v250, &v204, &qword_1019FFF80);
          sub_100E6BDDC(&v236, v250);
          v185 = v240;
          v186 = v241;
          v187 = v242;
          v181 = v236;
          v182 = v237;
          v183 = v238;
          v184 = v239;
          sub_10000CAAC(&v181, &qword_1019FFF80);
        }

        (*v123)(v62, v6);
        v209 = v225;
        v210 = v226;
        v204 = v220;
        v205 = v221;
        v207 = v223;
        v208 = v224;
        v206 = v222;
        sub_10000CAAC(&v204, &qword_1019FFF80);
        v131 = v158;
        CRAttributedString.Runs.next()();
        if (v154(v131, 1, v6) == 1)
        {
          break;
        }

        (v153)(v62, v131, v6);
      }
    }

    (*(v139 + 8))(v159, v160);
    v31 = v161;
LABEL_13:
    v63 = v245;
    v64 = *(v245 + 2);
    if (v64)
    {
      v243 = _swiftEmptyArrayStorage;
      v65 = &v243;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (*(v63 + 2))
      {
        v66 = 0;
        v67 = &v31[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
        v162 = v64 - 1;
        v68 = 32;
        v147 = v63;
        do
        {
          v69 = *&v63[v68 + 48];
          v70 = *&v63[v68 + 64];
          v71 = *&v63[v68 + 80];
          v242 = *&v63[v68 + 96];
          v72 = *&v63[v68];
          v73 = *&v63[v68 + 32];
          v237 = *&v63[v68 + 16];
          v236 = v72;
          v241 = v71;
          v240 = v70;
          v238 = v73;
          v239 = v69;
          if (v242)
          {
            v224 = v240;
            v225 = v241;
            v226 = v242;
            v220 = v236;
            v221 = v237;
            v223 = v239;
            v222 = v238;
            sub_100006370(0, &qword_101A00EB0);
            v246[2] = v239;
            v246[3] = v240;
            v246[4] = v241;
            v247 = v242;
            v246[0] = v237;
            v246[1] = v238;
            sub_10000BE14(&v236, &v204, &qword_1019FFF80);
            sub_10074A990(&v221, &v204);
            v74 = sub_1008B0490(v246);
            if (BYTE8(v220))
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v75 = static OS_os_log.persistence;
              v76 = static os_log_type_t.info.getter();
              sub_100005404(v75, &_mh_execute_header, v76, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
              [objc_allocWithZone(CRLColorFill) initWithColor:v74];

              sub_10000CAAC(&v236, &qword_1019FFF80);
            }

            else
            {
              [objc_allocWithZone(CRLColorFill) initWithColor:v74];

              sub_10000CAAC(&v236, &qword_1019FFF80);
            }
          }

          else
          {
            v77 = *(v67 + 13);
            v78 = *(v67 + 11);
            v216 = *(v67 + 12);
            v217 = v77;
            v79 = *(v67 + 13);
            v218 = *(v67 + 14);
            v80 = *(v67 + 9);
            v81 = *(v67 + 7);
            v212 = *(v67 + 8);
            v213 = v80;
            v82 = *(v67 + 9);
            v83 = *(v67 + 11);
            v214 = *(v67 + 10);
            v215 = v83;
            v84 = *(v67 + 4);
            v85 = *(v67 + 3);
            v209 = *(v67 + 5);
            v86 = *(v67 + 5);
            v87 = *(v67 + 7);
            v210 = *(v67 + 6);
            v211 = v87;
            v88 = *(v67 + 1);
            v204 = *v67;
            v205 = v88;
            v89 = *(v67 + 3);
            v91 = *v67;
            v90 = *(v67 + 1);
            v206 = *(v67 + 2);
            v207 = v89;
            v208 = v84;
            v232 = v216;
            v233 = v79;
            v234 = *(v67 + 14);
            v228 = v212;
            v229 = v82;
            v230 = v214;
            v231 = v78;
            v224 = v84;
            v225 = v86;
            v226 = v210;
            v227 = v81;
            v220 = v91;
            v221 = v90;
            v219 = *(v67 + 30);
            v235 = *(v67 + 30);
            v222 = v206;
            v223 = v85;
            result = sub_100695050(&v220);
            if (result == 1)
            {
              v92 = *&v31[v146];
              if (!v92)
              {
                goto LABEL_64;
              }

              v93 = v144;
              (*(*v92 + 896))();
              v94 = v31;
              sub_1005B981C(&unk_101A095A0);
              CRRegister.wrappedValue.getter();
              sub_1009625A4(v93, type metadata accessor for CRLWPShapeItemCRDTData);
              v193 = v177;
              v194 = v178;
              v195 = v179;
              v196 = v180;
              v189 = v173;
              v190 = v174;
              v191 = v175;
              v192 = v176;
              v185 = v169;
              v186 = v170;
              v187 = v171;
              v188 = v172;
              v181 = v165;
              v182 = v166;
              v183 = v167;
              v184 = v168;
              if (sub_100695050(&v181) == 1)
              {

LABEL_35:
                v120 = [objc_opt_self() blackColor];
                goto LABEL_36;
              }

              v116 = v196;
              v98 = v195;
              v100 = BYTE8(v195);
              v96 = v194;
              v97 = BYTE8(v194);
              v115 = v193;
              v113 = BYTE8(v193);
              v114 = v192;
              v112 = BYTE8(v192);
              v111 = v184;
              v109 = BYTE8(v184);
              v110 = v183;
              v107 = BYTE8(v183);
              v108 = BYTE10(v182);
              v106 = BYTE9(v182);
              v105 = DWORD1(v182);
              v101 = BYTE8(v182);
              v104 = v181;
              v103 = v182;
              v201 = v189;
              v202 = v190;
              v203 = v191;
              v197 = v185;
              v198 = v186;
              v199 = v187;
              v200 = v188;
            }

            else
            {
              v160 = v204;
              LODWORD(v159) = v205;
              v95 = v31;
              LODWORD(v158) = DWORD1(v205);
              LODWORD(v157) = BYTE9(v205);
              LODWORD(v156) = BYTE10(v205);
              v155 = v206;
              LODWORD(v154) = BYTE8(v206);
              v153 = v207;
              LODWORD(v152) = BYTE8(v207);
              v151 = v215;
              LODWORD(v149) = BYTE8(v215);
              v148 = v216;
              LODWORD(v150) = BYTE8(v216);
              v96 = v217;
              v97 = BYTE8(v217);
              v98 = v218;
              v99 = v219;
              v100 = BYTE8(v218);
              v101 = BYTE8(v205);
              v201 = v212;
              v202 = v213;
              v203 = v214;
              v197 = v208;
              v198 = v209;
              v199 = v210;
              v200 = v211;
              v102 = v95;
              v103 = v159;
              v104 = v160;
              v105 = v158;
              v106 = v157;
              v107 = v154;
              v108 = v156;
              v109 = v152;
              v110 = v155;
              v111 = v153;
              v112 = v149;
              v113 = v150;
              v114 = v151;
              v115 = v148;
              v116 = v99;
            }

            v181 = v104;
            LOBYTE(v182) = v103;
            DWORD1(v182) = v105;
            BYTE8(v182) = v101 & 1;
            BYTE9(v182) = v106;
            BYTE10(v182) = v108;
            *&v183 = v110;
            BYTE8(v183) = v107;
            *&v184 = v111;
            BYTE8(v184) = v109;
            v189 = v201;
            v190 = v202;
            v191 = v203;
            v185 = v197;
            v186 = v198;
            v187 = v199;
            v188 = v200;
            *&v192 = v114;
            BYTE8(v192) = v112;
            *&v193 = v115;
            BYTE8(v193) = v113;
            *&v194 = v96;
            BYTE8(v194) = v97;
            *&v195 = v98;
            BYTE8(v195) = v100 & 1;
            v196 = v116;
            sub_10000BE14(&v197, &v165, &qword_1019FFF80);
            sub_10000BE14(&v204, &v165, &unk_101A0D830);
            sub_10081852C(&v181);
            v164[4] = v202;
            v164[5] = v203;
            v163 = v197;
            v164[0] = v198;
            v164[2] = v200;
            v164[3] = v201;
            v164[1] = v199;
            if (!v203)
            {
              v31 = v161;

              v63 = v147;
              goto LABEL_35;
            }

            sub_100006370(0, &qword_101A00EB0);
            v248[2] = v200;
            v248[3] = v201;
            v248[4] = v202;
            v249 = v203;
            v248[0] = v198;
            v248[1] = v199;
            sub_10074A990(v164, &v165);
            v117 = sub_1008B0490(v248);
            v31 = v161;
            v63 = v147;
            if (BYTE8(v163))
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v118 = static OS_os_log.persistence;
              v119 = static os_log_type_t.info.getter();
              sub_100005404(v118, &_mh_execute_header, v119, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
            }

            [objc_allocWithZone(CRLColorFill) initWithColor:v117];

            sub_10000CAAC(&v197, &qword_1019FFF80);
          }

LABEL_36:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v65 = &v243;
          specialized ContiguousArray._endMutation()();
          if (v162 == v66)
          {

            v65 = v243;
            goto LABEL_41;
          }

          ++v66;
          v68 += 112;
        }

        while (v66 < *(v63 + 2));
      }

      __break(1u);
    }

    else
    {

      v65 = _swiftEmptyArrayStorage;
LABEL_41:

      if (!(v65 >> 62))
      {
        result = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
          if (result <= 1)
          {
            goto LABEL_54;
          }

          goto LABEL_44;
        }

LABEL_58:

        v121 = sub_100A43680(v31);
        v136 = v141;
        v137 = v143;
        goto LABEL_59;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= 1)
      {
LABEL_54:
        v30 = v143;
        v6 = v141;
        if ((v65 & 0xC000000000000001) == 0)
        {
          if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v135 = *(v65 + 32);
LABEL_57:
            v121 = v135;

            v136 = v6;
            v137 = v30;
LABEL_59:
            v140(v136, v137);
            return v121;
          }

          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

LABEL_62:
        v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_57;
      }

LABEL_44:
      v140(v141, v143);
      return v65;
    }

    goto LABEL_58;
  }

LABEL_67:
  __break(1u);
  return result;
}

int64_t sub_100958DDC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v127 = a4;
  v124 = a3;
  v125 = a1;
  v137 = sub_1005B981C(qword_101A0CF60);
  v119 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v119 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v142 = *(v6 - 8);
  __chkstk_darwin(v6);
  v120 = &v119 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v138 = &v119 - v9;
  v141 = sub_1005B981C(&unk_101A09550);
  v121 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v119 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v131 = *(v11 - 8);
  v132 = v11;
  __chkstk_darwin(v11);
  v130 = &v119 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v123);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v122 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v119 - v23;
  result = __chkstk_darwin(v22);
  v27 = &v119 - v26;
  v140 = a2;
  v135 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_50;
  }

  (*(*v28 + 896))(result);
  v134 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v133 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v128 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v188 = _swiftEmptyArrayStorage;
  v187 = _swiftEmptySetSingleton;
  v129 = v18;
  result = CRAttributedString.count.getter();
  v30 = v140;
  v126 = v27;
  if (result && (result = sub_100A31B44(v124, v127), (result & 1) == 0))
  {
    result = sub_100A31CD0(v124, v127);
    v124 = result;
    *&v127 = v44;
    v45 = *(v30 + v135);
    if (!v45)
    {
      goto LABEL_52;
    }

    v46 = v133;
    (*(*v45 + 896))();
    sub_1005E0A78(v46 + *(v134 + 20), v17);
    sub_1009625A4(v46, type metadata accessor for CRLWPShapeItemCRDTData);
    v47 = v122;
    v48 = v129;
    v29(v122, v17, v129);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v49 = CRAttributedString.count.getter();
    v50 = *(v128 + 8);
    v50(v47, v48);
    if (v49 >= (v124 & ~(v124 >> 63)))
    {
      result = v124 & ~(v124 >> 63);
    }

    else
    {
      result = v49;
    }

    if ((v127 & ~(v127 >> 63)) < result)
    {
      goto LABEL_48;
    }

    v124 = v50;
    v51 = v130;
    CRAttributedString.subscript.getter();
    v52 = v132;
    CRAttributedString.Substring.runs.getter();
    (*(v131 + 8))(v51, v52);
    v53 = v138;
    CRAttributedString.Runs.next()();
    v131 = *(v142 + 48);
    v132 = v142 + 48;
    v54 = (v131)(v53, 1, v6);
    v55 = v125;
    v56 = v120;
    if (v54 != 1)
    {
      v130 = *(v142 + 32);
      v110 = (v119 + 8);
      v142 += 32;
      v111 = (v142 - 24);
      v127 = xmmword_10146C6B0;
      v112 = v136;
      (v130)(v120, v53, v6);
      while (1)
      {
        v114 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v114);
        *(&v119 - 4) = &type metadata for CRLWPStrikethroughAttribute;
        *(&v119 - 3) = sub_10096227C();
        *(&v119 - 2) = v55;
        swift_getKeyPath();
        sub_1009622D0();

        v115 = v137;
        CRAttributedString.Attributes.subscript.getter();

        (*v110)(v112, v115);
        v116 = *&v184[0];
        v117 = BYTE8(v184[0]);
        if ((sub_10079D3CC(*&v184[0], SBYTE8(v184[0]), v187) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09610);
          v118 = swift_allocObject();
          *(v118 + 16) = v127;
          *(v118 + 32) = v116;
          *(v118 + 40) = v117;
          sub_100798FA4(v118);
          sub_100E6C3B8(&v168, v116, v117);
        }

        (*v111)(v56, v6);
        v113 = v138;
        CRAttributedString.Runs.next()();
        if ((v131)(v113, 1, v6) == 1)
        {
          break;
        }

        (v130)(v56, v113, v6);
      }
    }

    (*(v121 + 8))(v139, v141);
    v35 = v129;
    v27 = v126;
    v43 = v124;
  }

  else
  {
    v31 = *(v30 + v135);
    if (!v31)
    {
      goto LABEL_51;
    }

    v32 = v133;
    (*(*v31 + 896))();
    sub_1005E0A78(v32 + *(v134 + 20), v17);
    sub_1009625A4(v32, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v24;
    v34 = v24;
    v35 = v129;
    v29(v34, &v17[*(v123 + 20)], v129);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v36 = v130;
    v37 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v37);
    *(&v119 - 4) = &type metadata for CRLWPStrikethroughAttribute;
    v38 = sub_10096227C();
    v39 = v125;
    *(&v119 - 3) = v38;
    *(&v119 - 2) = v39;
    swift_getKeyPath();
    sub_1009622D0();

    v40 = v132;
    CRAttributedString.Substring.subscript.getter();

    (*(v131 + 8))(v36, v40);
    sub_1005B981C(&unk_101A09610);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10146C6B0;
    v42 = BYTE8(v184[0]);
    *(v41 + 32) = *&v184[0];
    *(v41 + 40) = v42;
    sub_100798FA4(v41);
    v43 = *(v128 + 8);
    v43(v33, v35);
  }

  v57 = v188[2];
  if (!v57)
  {

    v62 = _swiftEmptyArrayStorage;
LABEL_36:

    v107 = v62[2];
    v108 = v140;
    if (v107)
    {
      if (v107 == 1)
      {
        v109 = v62[4];

        v43(v27, v35);
        return v109;
      }

      else
      {
        v43(v27, v35);
      }
    }

    else
    {

      v62 = sub_100A43300(v108);
      v43(v27, v35);
    }

    return v62;
  }

  v124 = v43;
  v186 = _swiftEmptyArrayStorage;
  v141 = v188;
  v142 = v57;
  sub_1007765C4(0, v57, 0);
  result = v141;
  v58 = v142;
  v59 = 0;
  v60 = v140 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v61 = (v141 + 40);
  v62 = v186;
  while (v59 < *(result + 16))
  {
    v63 = *v61;
    if (v63 != 255)
    {
      if (v63)
      {
        v64 = 0;
      }

      else
      {
        v64 = *(v61 - 1);
      }

      goto LABEL_31;
    }

    v65 = *(v60 + 208);
    v66 = *(v60 + 176);
    v180 = *(v60 + 192);
    v181 = v65;
    v67 = *(v60 + 208);
    v182 = *(v60 + 224);
    v68 = *(v60 + 144);
    v69 = *(v60 + 112);
    v176 = *(v60 + 128);
    v177 = v68;
    v70 = *(v60 + 144);
    v71 = *(v60 + 176);
    v178 = *(v60 + 160);
    v179 = v71;
    v72 = *(v60 + 80);
    v73 = *(v60 + 48);
    v172 = *(v60 + 64);
    v173 = v72;
    v74 = *(v60 + 80);
    v75 = *(v60 + 112);
    v174 = *(v60 + 96);
    v175 = v75;
    v76 = *(v60 + 16);
    v168 = *v60;
    v169 = v76;
    v77 = *(v60 + 48);
    v79 = *v60;
    v78 = *(v60 + 16);
    v170 = *(v60 + 32);
    v171 = v77;
    v184[12] = v180;
    v184[13] = v67;
    v184[14] = *(v60 + 224);
    v184[8] = v176;
    v184[9] = v70;
    v184[10] = v178;
    v184[11] = v66;
    v184[4] = v172;
    v184[5] = v74;
    v184[6] = v174;
    v184[7] = v69;
    v184[0] = v79;
    v184[1] = v78;
    v183 = *(v60 + 240);
    v185 = *(v60 + 240);
    v184[2] = v170;
    v184[3] = v73;
    result = sub_100695050(v184);
    if (result != 1)
    {
      v99 = v168;
      v100 = v169;
      v97 = DWORD1(v169);
      v96 = BYTE9(v169);
      v95 = BYTE10(v169);
      v93 = v170;
      v94 = BYTE8(v170);
      v91 = v171;
      v92 = BYTE8(v171);
      v89 = v179;
      v90 = BYTE8(v179);
      v87 = v180;
      v88 = BYTE8(v180);
      v85 = v181;
      v86 = BYTE8(v181);
      v83 = v182;
      v82 = v183;
      v84 = BYTE8(v182);
      v98 = BYTE8(v169);
      v101 = &v168;
LABEL_25:
      v102 = v101[9];
      v165 = v101[8];
      v166 = v102;
      v167 = v101[10];
      v103 = v101[5];
      v161 = v101[4];
      v162 = v103;
      v104 = v101[7];
      v163 = v101[6];
      v164 = v104;
      v145 = v99;
      LOBYTE(v146) = v100;
      DWORD1(v146) = v97;
      BYTE8(v146) = v98 & 1;
      BYTE9(v146) = v96;
      BYTE10(v146) = v95;
      *&v147 = v93;
      BYTE8(v147) = v94;
      *&v148 = v91;
      BYTE8(v148) = v92;
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v149 = v161;
      v150 = v103;
      v151 = v163;
      v152 = v104;
      *&v156 = v89;
      BYTE8(v156) = v90;
      *&v157 = v87;
      BYTE8(v157) = v88;
      *&v158 = v85;
      BYTE8(v158) = v86;
      *&v159 = v83;
      BYTE8(v159) = v84 & 1;
      v160 = v82;
      sub_10000BE14(&v168, v143, &unk_101A0D830);
      sub_10081852C(&v145);
      if (v92 != 255)
      {
        if (v92)
        {
          v64 = 0;
        }

        else
        {
          v64 = v91;
        }

        result = v141;
        v58 = v142;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v80 = *(v140 + v135);
    if (!v80)
    {
      goto LABEL_49;
    }

    v81 = v133;
    (*(*v80 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_1009625A4(v81, type metadata accessor for CRLWPShapeItemCRDTData);
    v157 = v143[12];
    v158 = v143[13];
    v159 = v143[14];
    v160 = v144;
    v153 = v143[8];
    v154 = v143[9];
    v155 = v143[10];
    v156 = v143[11];
    v149 = v143[4];
    v150 = v143[5];
    v151 = v143[6];
    v152 = v143[7];
    v145 = v143[0];
    v146 = v143[1];
    v147 = v143[2];
    v148 = v143[3];
    if (sub_100695050(&v145) != 1)
    {
      v82 = v160;
      v83 = v159;
      v84 = BYTE8(v159);
      v85 = v158;
      v86 = BYTE8(v158);
      v87 = v157;
      v88 = BYTE8(v157);
      v89 = v156;
      v90 = BYTE8(v156);
      v91 = v148;
      v92 = BYTE8(v148);
      v93 = v147;
      v94 = BYTE8(v147);
      v95 = BYTE10(v146);
      v96 = BYTE9(v146);
      v97 = DWORD1(v146);
      v98 = BYTE8(v146);
      v99 = v145;
      v100 = v146;
      v101 = &v145;
      goto LABEL_25;
    }

LABEL_30:
    result = v141;
    v58 = v142;
    v64 = 0;
LABEL_31:
    v186 = v62;
    v106 = v62[2];
    v105 = v62[3];
    if (v106 >= v105 >> 1)
    {
      sub_1007765C4((v105 > 1), v106 + 1, 1);
      result = v141;
      v58 = v142;
      v62 = v186;
    }

    ++v59;
    v62[2] = v106 + 1;
    v62[v106 + 4] = v64;
    v61 += 16;
    if (v58 == v59)
    {

      v35 = v129;
      v27 = v126;
      v43 = v124;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

int64_t sub_100959D4C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v127 = a4;
  v124 = a3;
  v125 = a1;
  v137 = sub_1005B981C(qword_101A0CF60);
  v119 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v119 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v142 = *(v6 - 8);
  __chkstk_darwin(v6);
  v120 = &v119 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v138 = &v119 - v9;
  v141 = sub_1005B981C(&unk_101A09550);
  v121 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v119 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v131 = *(v11 - 8);
  v132 = v11;
  __chkstk_darwin(v11);
  v130 = &v119 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v123);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v122 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v24 = &v119 - v23;
  result = __chkstk_darwin(v22);
  v27 = &v119 - v26;
  v140 = a2;
  v135 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_50;
  }

  (*(*v28 + 896))(result);
  v134 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v133 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v128 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v188 = _swiftEmptyArrayStorage;
  v187 = _swiftEmptySetSingleton;
  v129 = v18;
  result = CRAttributedString.count.getter();
  v30 = v140;
  v126 = v27;
  if (result && (result = sub_100A31B44(v124, v127), (result & 1) == 0))
  {
    result = sub_100A31CD0(v124, v127);
    v124 = result;
    *&v127 = v44;
    v45 = *(v30 + v135);
    if (!v45)
    {
      goto LABEL_52;
    }

    v46 = v133;
    (*(*v45 + 896))();
    sub_1005E0A78(v46 + *(v134 + 20), v17);
    sub_1009625A4(v46, type metadata accessor for CRLWPShapeItemCRDTData);
    v47 = v122;
    v48 = v129;
    v29(v122, v17, v129);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v49 = CRAttributedString.count.getter();
    v50 = *(v128 + 8);
    v50(v47, v48);
    if (v49 >= (v124 & ~(v124 >> 63)))
    {
      result = v124 & ~(v124 >> 63);
    }

    else
    {
      result = v49;
    }

    if ((v127 & ~(v127 >> 63)) < result)
    {
      goto LABEL_48;
    }

    v124 = v50;
    v51 = v130;
    CRAttributedString.subscript.getter();
    v52 = v132;
    CRAttributedString.Substring.runs.getter();
    (*(v131 + 8))(v51, v52);
    v53 = v138;
    CRAttributedString.Runs.next()();
    v131 = *(v142 + 48);
    v132 = v142 + 48;
    v54 = (v131)(v53, 1, v6);
    v55 = v125;
    v56 = v120;
    if (v54 != 1)
    {
      v130 = *(v142 + 32);
      v110 = (v119 + 8);
      v142 += 32;
      v111 = (v142 - 24);
      v127 = xmmword_10146C6B0;
      v112 = v136;
      (v130)(v120, v53, v6);
      while (1)
      {
        v114 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v114);
        *(&v119 - 4) = &type metadata for CRLWPUnderlineAttribute;
        *(&v119 - 3) = sub_100824704();
        *(&v119 - 2) = v55;
        swift_getKeyPath();
        sub_100824758();

        v115 = v137;
        CRAttributedString.Attributes.subscript.getter();

        (*v110)(v112, v115);
        v116 = *&v184[0];
        v117 = BYTE8(v184[0]);
        if ((sub_10079D5A4(*&v184[0], SBYTE8(v184[0]), v187) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09630);
          v118 = swift_allocObject();
          *(v118 + 16) = v127;
          *(v118 + 32) = v116;
          *(v118 + 40) = v117;
          sub_100798FBC(v118);
          sub_100E6C5E0(&v168, v116, v117);
        }

        (*v111)(v56, v6);
        v113 = v138;
        CRAttributedString.Runs.next()();
        if ((v131)(v113, 1, v6) == 1)
        {
          break;
        }

        (v130)(v56, v113, v6);
      }
    }

    (*(v121 + 8))(v139, v141);
    v35 = v129;
    v27 = v126;
    v43 = v124;
  }

  else
  {
    v31 = *(v30 + v135);
    if (!v31)
    {
      goto LABEL_51;
    }

    v32 = v133;
    (*(*v31 + 896))();
    sub_1005E0A78(v32 + *(v134 + 20), v17);
    sub_1009625A4(v32, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v24;
    v34 = v24;
    v35 = v129;
    v29(v34, &v17[*(v123 + 20)], v129);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v36 = v130;
    v37 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v37);
    *(&v119 - 4) = &type metadata for CRLWPUnderlineAttribute;
    v38 = sub_100824704();
    v39 = v125;
    *(&v119 - 3) = v38;
    *(&v119 - 2) = v39;
    swift_getKeyPath();
    sub_100824758();

    v40 = v132;
    CRAttributedString.Substring.subscript.getter();

    (*(v131 + 8))(v36, v40);
    sub_1005B981C(&qword_101A09630);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_10146C6B0;
    v42 = BYTE8(v184[0]);
    *(v41 + 32) = *&v184[0];
    *(v41 + 40) = v42;
    sub_100798FBC(v41);
    v43 = *(v128 + 8);
    v43(v33, v35);
  }

  v57 = v188[2];
  if (!v57)
  {

    v62 = _swiftEmptyArrayStorage;
LABEL_36:

    v107 = v62[2];
    v108 = v140;
    if (v107)
    {
      if (v107 == 1)
      {
        v109 = v62[4];

        v43(v27, v35);
        return v109;
      }

      else
      {
        v43(v27, v35);
      }
    }

    else
    {

      v62 = sub_100A42F80(v108);
      v43(v27, v35);
    }

    return v62;
  }

  v124 = v43;
  v186 = _swiftEmptyArrayStorage;
  v141 = v188;
  v142 = v57;
  sub_1007765E4(0, v57, 0);
  result = v141;
  v58 = v142;
  v59 = 0;
  v60 = v140 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v61 = (v141 + 40);
  v62 = v186;
  while (v59 < *(result + 16))
  {
    v63 = *v61;
    if (v63 != 255)
    {
      if (v63)
      {
        v64 = 0;
      }

      else
      {
        v64 = *(v61 - 1);
      }

      goto LABEL_31;
    }

    v65 = *(v60 + 208);
    v66 = *(v60 + 176);
    v180 = *(v60 + 192);
    v181 = v65;
    v67 = *(v60 + 208);
    v182 = *(v60 + 224);
    v68 = *(v60 + 144);
    v69 = *(v60 + 112);
    v176 = *(v60 + 128);
    v177 = v68;
    v70 = *(v60 + 144);
    v71 = *(v60 + 176);
    v178 = *(v60 + 160);
    v179 = v71;
    v72 = *(v60 + 80);
    v73 = *(v60 + 48);
    v172 = *(v60 + 64);
    v173 = v72;
    v74 = *(v60 + 80);
    v75 = *(v60 + 112);
    v174 = *(v60 + 96);
    v175 = v75;
    v76 = *(v60 + 16);
    v168 = *v60;
    v169 = v76;
    v77 = *(v60 + 48);
    v79 = *v60;
    v78 = *(v60 + 16);
    v170 = *(v60 + 32);
    v171 = v77;
    v184[12] = v180;
    v184[13] = v67;
    v184[14] = *(v60 + 224);
    v184[8] = v176;
    v184[9] = v70;
    v184[10] = v178;
    v184[11] = v66;
    v184[4] = v172;
    v184[5] = v74;
    v184[6] = v174;
    v184[7] = v69;
    v184[0] = v79;
    v184[1] = v78;
    v183 = *(v60 + 240);
    v185 = *(v60 + 240);
    v184[2] = v170;
    v184[3] = v73;
    result = sub_100695050(v184);
    if (result != 1)
    {
      v99 = v168;
      v100 = v169;
      v97 = DWORD1(v169);
      v96 = BYTE9(v169);
      v95 = BYTE10(v169);
      v93 = v170;
      v94 = BYTE8(v170);
      v91 = v171;
      v92 = BYTE8(v171);
      v89 = v179;
      v90 = BYTE8(v179);
      v87 = v180;
      v88 = BYTE8(v180);
      v85 = v181;
      v86 = BYTE8(v181);
      v83 = v182;
      v82 = v183;
      v84 = BYTE8(v182);
      v98 = BYTE8(v169);
      v101 = &v168;
LABEL_25:
      v102 = v101[9];
      v165 = v101[8];
      v166 = v102;
      v167 = v101[10];
      v103 = v101[5];
      v161 = v101[4];
      v162 = v103;
      v104 = v101[7];
      v163 = v101[6];
      v164 = v104;
      v145 = v99;
      LOBYTE(v146) = v100;
      DWORD1(v146) = v97;
      BYTE8(v146) = v98 & 1;
      BYTE9(v146) = v96;
      BYTE10(v146) = v95;
      *&v147 = v93;
      BYTE8(v147) = v94;
      *&v148 = v91;
      BYTE8(v148) = v92;
      v153 = v165;
      v154 = v166;
      v155 = v167;
      v149 = v161;
      v150 = v103;
      v151 = v163;
      v152 = v104;
      *&v156 = v89;
      BYTE8(v156) = v90;
      *&v157 = v87;
      BYTE8(v157) = v88;
      *&v158 = v85;
      BYTE8(v158) = v86;
      *&v159 = v83;
      BYTE8(v159) = v84 & 1;
      v160 = v82;
      sub_10000BE14(&v168, v143, &unk_101A0D830);
      sub_10081852C(&v145);
      if (v94 != 255)
      {
        if (v94)
        {
          v64 = 0;
        }

        else
        {
          v64 = v93;
        }

        result = v141;
        v58 = v142;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v80 = *(v140 + v135);
    if (!v80)
    {
      goto LABEL_49;
    }

    v81 = v133;
    (*(*v80 + 896))();
    sub_1005B981C(&unk_101A095A0);
    CRRegister.wrappedValue.getter();
    sub_1009625A4(v81, type metadata accessor for CRLWPShapeItemCRDTData);
    v157 = v143[12];
    v158 = v143[13];
    v159 = v143[14];
    v160 = v144;
    v153 = v143[8];
    v154 = v143[9];
    v155 = v143[10];
    v156 = v143[11];
    v149 = v143[4];
    v150 = v143[5];
    v151 = v143[6];
    v152 = v143[7];
    v145 = v143[0];
    v146 = v143[1];
    v147 = v143[2];
    v148 = v143[3];
    if (sub_100695050(&v145) != 1)
    {
      v82 = v160;
      v83 = v159;
      v84 = BYTE8(v159);
      v85 = v158;
      v86 = BYTE8(v158);
      v87 = v157;
      v88 = BYTE8(v157);
      v89 = v156;
      v90 = BYTE8(v156);
      v91 = v148;
      v92 = BYTE8(v148);
      v93 = v147;
      v94 = BYTE8(v147);
      v95 = BYTE10(v146);
      v96 = BYTE9(v146);
      v97 = DWORD1(v146);
      v98 = BYTE8(v146);
      v99 = v145;
      v100 = v146;
      v101 = &v145;
      goto LABEL_25;
    }

LABEL_30:
    result = v141;
    v58 = v142;
    v64 = 0;
LABEL_31:
    v186 = v62;
    v106 = v62[2];
    v105 = v62[3];
    if (v106 >= v105 >> 1)
    {
      sub_1007765E4((v105 > 1), v106 + 1, 1);
      result = v141;
      v58 = v142;
      v62 = v186;
    }

    ++v59;
    v62[2] = v106 + 1;
    v62[v106 + 4] = v64;
    v61 += 16;
    if (v58 == v59)
    {

      v35 = v129;
      v27 = v126;
      v43 = v124;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

int64_t sub_10095ACBC(int64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v120 = a4;
  v118 = a3;
  v132 = a1;
  v127 = sub_1005B981C(qword_101A0CF60);
  v113 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v112 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v131 = *(v6 - 8);
  __chkstk_darwin(v6);
  v114 = &v112 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v128 = &v112 - v9;
  v130 = sub_1005B981C(&unk_101A09550);
  v115 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v112 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v123 = &v112 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v116);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v117 = &v112 - v24;
  result = __chkstk_darwin(v23);
  v27 = &v112 - v26;
  v135 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v136 = a2;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_44;
  }

  (*(*v28 + 896))(result);
  v134 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v133 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v121 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v182 = _swiftEmptyArrayStorage;
  v181 = _swiftEmptySetSingleton;
  v122 = v18;
  v119 = v27;
  result = CRAttributedString.count.getter();
  v30 = v136;
  if (result && (result = sub_100A31B44(v118, v120), (result & 1) == 0))
  {
    result = sub_100A31CD0(v118, v120);
    v118 = result;
    *&v120 = v43;
    v44 = *(v30 + v135);
    if (!v44)
    {
      goto LABEL_46;
    }

    v45 = v133;
    (*(*v44 + 896))();
    sub_1005E0A78(v45 + *(v134 + 20), v17);
    sub_1009625A4(v45, type metadata accessor for CRLWPShapeItemCRDTData);
    v46 = v122;
    v29(v22, v17, v122);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v47 = CRAttributedString.count.getter();
    v48 = *(v121 + 8);
    v48(v22, v46);
    if (v47 >= (v118 & ~(v118 >> 63)))
    {
      result = v118 & ~(v118 >> 63);
    }

    else
    {
      result = v47;
    }

    if ((v120 & ~(v120 >> 63)) < result)
    {
      goto LABEL_42;
    }

    v118 = v48;
    v49 = v123;
    CRAttributedString.subscript.getter();
    v50 = v125;
    CRAttributedString.Substring.runs.getter();
    (*(v124 + 8))(v49, v50);
    v51 = v128;
    CRAttributedString.Runs.next()();
    v124 = *(v131 + 48);
    v125 = v131 + 48;
    v52 = (v124)(v51, 1, v6);
    v53 = v114;
    if (v52 != 1)
    {
      v123 = *(v131 + 32);
      v102 = (v113 + 8);
      v131 += 32;
      v103 = (v131 - 24);
      v120 = xmmword_10146C6B0;
      (v123)(v114, v51, v6);
      while (1)
      {
        v105 = v126;
        v106 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v106);
        *(&v112 - 4) = &type metadata for CRLWPFontItalicAttribute;
        v107 = sub_1008245B4();
        v108 = v132;
        *(&v112 - 3) = v107;
        *(&v112 - 2) = v108;
        swift_getKeyPath();
        sub_100824608();

        v109 = v127;
        CRAttributedString.Attributes.subscript.getter();

        (*v102)(v105, v109);
        v110 = LOBYTE(v178[0]);
        if ((sub_10079D77C(LOBYTE(v178[0]), v181) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09648);
          v111 = swift_allocObject();
          *(v111 + 16) = v120;
          *(v111 + 32) = v110;
          sub_1007990D0(v111);
          sub_100E6C808(&v162, v110);
        }

        (*v103)(v53, v6);
        v104 = v128;
        CRAttributedString.Runs.next()();
        if ((v124)(v104, 1, v6) == 1)
        {
          break;
        }

        (v123)(v53, v104, v6);
      }
    }

    (*(v115 + 8))(v129, v130);
    v42 = v136;
    v41 = v118;
  }

  else
  {
    v31 = *(v30 + v135);
    if (!v31)
    {
      goto LABEL_45;
    }

    v32 = v133;
    (*(*v31 + 896))();
    sub_1005E0A78(v32 + *(v134 + 20), v17);
    sub_1009625A4(v32, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v117;
    v34 = v122;
    v29(v117, &v17[*(v116 + 20)], v122);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v123;
    v36 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v36);
    *(&v112 - 4) = &type metadata for CRLWPFontItalicAttribute;
    v37 = sub_1008245B4();
    v38 = v132;
    *(&v112 - 3) = v37;
    *(&v112 - 2) = v38;
    swift_getKeyPath();
    sub_100824608();

    v39 = v125;
    CRAttributedString.Substring.subscript.getter();

    (*(v124 + 8))(v35, v39);
    sub_1005B981C(&qword_101A09648);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10146C6B0;
    *(v40 + 32) = v178[0];
    sub_1007990D0(v40);
    v41 = *(v121 + 8);
    v41(v33, v34);
    v42 = v136;
  }

  v54 = v182;
  v55 = v182[2];
  if (!v55)
  {

    v59 = _swiftEmptyArrayStorage;
LABEL_30:

    v98 = v59[2];
    v99 = v119;
    if (v98)
    {
      if (v98 == 1)
      {
        v100 = *(v59 + 32);

        v41(v99, v122);
        return v100;
      }

      else
      {
        v41(v119, v122);
      }
    }

    else
    {

      v101 = sub_100A42C08(v42);
      v41(v99, v122);
      return v101 & 1;
    }

    return v59;
  }

  v118 = v41;
  v180 = _swiftEmptyArrayStorage;
  v132 = v55;
  result = sub_100776604(0, v55, 0);
  v56 = v132;
  v57 = 0;
  v58 = v42 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v59 = v180;
  while (v57 < v54[2])
  {
    v60 = *(v54 + v57 + 32);
    if (v60 == 2)
    {
      v61 = *(v58 + 208);
      v62 = *(v58 + 176);
      v174 = *(v58 + 192);
      v175 = v61;
      v63 = *(v58 + 208);
      v176 = *(v58 + 224);
      v64 = *(v58 + 144);
      v65 = *(v58 + 112);
      v170 = *(v58 + 128);
      v171 = v64;
      v66 = *(v58 + 144);
      v67 = *(v58 + 176);
      v172 = *(v58 + 160);
      v173 = v67;
      v68 = *(v58 + 80);
      v69 = *(v58 + 48);
      v166 = *(v58 + 64);
      v167 = v68;
      v70 = *(v58 + 80);
      v71 = *(v58 + 112);
      v168 = *(v58 + 96);
      v169 = v71;
      v72 = *(v58 + 16);
      v162 = *v58;
      v163 = v72;
      v73 = *(v58 + 48);
      v75 = *v58;
      v74 = *(v58 + 16);
      v164 = *(v58 + 32);
      v165 = v73;
      v178[12] = v174;
      v178[13] = v63;
      v178[14] = *(v58 + 224);
      v178[8] = v170;
      v178[9] = v66;
      v178[10] = v172;
      v178[11] = v62;
      v178[4] = v166;
      v178[5] = v70;
      v178[6] = v168;
      v178[7] = v65;
      v178[0] = v75;
      v178[1] = v74;
      v177 = *(v58 + 240);
      v179 = *(v58 + 240);
      v178[2] = v164;
      v178[3] = v69;
      result = sub_100695050(v178);
      if (result != 1)
      {
        v78 = v162;
        v79 = v163;
        v80 = DWORD1(v163);
        v81 = BYTE9(v163);
        v60 = BYTE10(v163);
        v82 = v164;
        v83 = BYTE8(v164);
        v84 = v165;
        v85 = BYTE8(v165);
        v86 = v173;
        v87 = BYTE8(v173);
        v88 = v174;
        v89 = BYTE8(v174);
        v90 = v175;
        v91 = BYTE8(v175);
        v92 = v176;
        v93 = v177;
        v94 = BYTE8(v176);
        v95 = BYTE8(v163);
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v155 = v166;
        v156 = v167;
        v157 = v168;
        v158 = v169;
        goto LABEL_23;
      }

      v76 = *(v136 + v135);
      if (!v76)
      {
        goto LABEL_43;
      }

      v77 = v133;
      (*(*v76 + 896))();
      sub_1005B981C(&unk_101A095A0);
      CRRegister.wrappedValue.getter();
      sub_1009625A4(v77, type metadata accessor for CRLWPShapeItemCRDTData);
      v151 = v137[12];
      v152 = v137[13];
      v153 = v137[14];
      v154 = v138;
      v147 = v137[8];
      v148 = v137[9];
      v149 = v137[10];
      v150 = v137[11];
      v143 = v137[4];
      v144 = v137[5];
      v145 = v137[6];
      v146 = v137[7];
      v139 = v137[0];
      v140 = v137[1];
      v141 = v137[2];
      v142 = v137[3];
      result = sub_100695050(&v139);
      if (result != 1)
      {
        v93 = v154;
        v92 = v153;
        v94 = BYTE8(v153);
        v90 = v152;
        v91 = BYTE8(v152);
        v88 = v151;
        v89 = BYTE8(v151);
        v86 = v150;
        v87 = BYTE8(v150);
        v84 = v142;
        v85 = BYTE8(v142);
        v82 = v141;
        v83 = BYTE8(v141);
        v60 = BYTE10(v140);
        v81 = BYTE9(v140);
        v80 = DWORD1(v140);
        v95 = BYTE8(v140);
        v78 = v139;
        v79 = v140;
        v159 = v147;
        v160 = v148;
        v161 = v149;
        v155 = v143;
        v156 = v144;
        v157 = v145;
        v158 = v146;
        v56 = v132;
LABEL_23:
        v139 = v78;
        LOBYTE(v140) = v79;
        DWORD1(v140) = v80;
        BYTE8(v140) = v95 & 1;
        BYTE9(v140) = v81;
        BYTE10(v140) = v60;
        *&v141 = v82;
        BYTE8(v141) = v83;
        *&v142 = v84;
        BYTE8(v142) = v85;
        v147 = v159;
        v148 = v160;
        v149 = v161;
        v143 = v155;
        v144 = v156;
        v145 = v157;
        v146 = v158;
        *&v150 = v86;
        BYTE8(v150) = v87;
        *&v151 = v88;
        BYTE8(v151) = v89;
        *&v152 = v90;
        BYTE8(v152) = v91;
        *&v153 = v92;
        BYTE8(v153) = v94 & 1;
        v154 = v93;
        sub_10000BE14(&v162, v137, &unk_101A0D830);
        result = sub_10081852C(&v139);
        if (v60 == 2)
        {
          LOBYTE(v60) = 0;
        }

        goto LABEL_25;
      }

      LOBYTE(v60) = 0;
      v56 = v132;
    }

LABEL_25:
    v180 = v59;
    v97 = v59[2];
    v96 = v59[3];
    if (v97 >= v96 >> 1)
    {
      result = sub_100776604((v96 > 1), v97 + 1, 1);
      v56 = v132;
      v59 = v180;
    }

    ++v57;
    v59[2] = v97 + 1;
    *(v59 + v97 + 32) = v60 & 1;
    if (v56 == v57)
    {

      v42 = v136;
      v41 = v118;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

int64_t sub_10095BC20(int64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v120 = a4;
  v118 = a3;
  v132 = a1;
  v127 = sub_1005B981C(qword_101A0CF60);
  v113 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v112 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v131 = *(v6 - 8);
  __chkstk_darwin(v6);
  v114 = &v112 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v128 = &v112 - v9;
  v130 = sub_1005B981C(&unk_101A09550);
  v115 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v112 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v124 = *(v11 - 8);
  v125 = v11;
  __chkstk_darwin(v11);
  v123 = &v112 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v116);
  v17 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v117 = &v112 - v24;
  result = __chkstk_darwin(v23);
  v27 = &v112 - v26;
  v135 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v136 = a2;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_44;
  }

  (*(*v28 + 896))(result);
  v134 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v133 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v121 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v182 = _swiftEmptyArrayStorage;
  v181 = _swiftEmptySetSingleton;
  v122 = v18;
  v119 = v27;
  result = CRAttributedString.count.getter();
  v30 = v136;
  if (result && (result = sub_100A31B44(v118, v120), (result & 1) == 0))
  {
    result = sub_100A31CD0(v118, v120);
    v118 = result;
    *&v120 = v43;
    v44 = *(v30 + v135);
    if (!v44)
    {
      goto LABEL_46;
    }

    v45 = v133;
    (*(*v44 + 896))();
    sub_1005E0A78(v45 + *(v134 + 20), v17);
    sub_1009625A4(v45, type metadata accessor for CRLWPShapeItemCRDTData);
    v46 = v122;
    v29(v22, v17, v122);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v47 = CRAttributedString.count.getter();
    v48 = *(v121 + 8);
    v48(v22, v46);
    if (v47 >= (v118 & ~(v118 >> 63)))
    {
      result = v118 & ~(v118 >> 63);
    }

    else
    {
      result = v47;
    }

    if ((v120 & ~(v120 >> 63)) < result)
    {
      goto LABEL_42;
    }

    v118 = v48;
    v49 = v123;
    CRAttributedString.subscript.getter();
    v50 = v125;
    CRAttributedString.Substring.runs.getter();
    (*(v124 + 8))(v49, v50);
    v51 = v128;
    CRAttributedString.Runs.next()();
    v124 = *(v131 + 48);
    v125 = v131 + 48;
    v52 = (v124)(v51, 1, v6);
    v53 = v114;
    if (v52 != 1)
    {
      v123 = *(v131 + 32);
      v102 = (v113 + 8);
      v131 += 32;
      v103 = (v131 - 24);
      v120 = xmmword_10146C6B0;
      (v123)(v114, v51, v6);
      while (1)
      {
        v105 = v126;
        v106 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v106);
        *(&v112 - 4) = &type metadata for CRLWPFontBoldAttribute;
        v107 = sub_1008244A8();
        v108 = v132;
        *(&v112 - 3) = v107;
        *(&v112 - 2) = v108;
        swift_getKeyPath();
        sub_1008244FC();

        v109 = v127;
        CRAttributedString.Attributes.subscript.getter();

        (*v102)(v105, v109);
        v110 = LOBYTE(v178[0]);
        if ((sub_10079D77C(LOBYTE(v178[0]), v181) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09648);
          v111 = swift_allocObject();
          *(v111 + 16) = v120;
          *(v111 + 32) = v110;
          sub_1007990D0(v111);
          sub_100E6C808(&v162, v110);
        }

        (*v103)(v53, v6);
        v104 = v128;
        CRAttributedString.Runs.next()();
        if ((v124)(v104, 1, v6) == 1)
        {
          break;
        }

        (v123)(v53, v104, v6);
      }
    }

    (*(v115 + 8))(v129, v130);
    v42 = v136;
    v41 = v118;
  }

  else
  {
    v31 = *(v30 + v135);
    if (!v31)
    {
      goto LABEL_45;
    }

    v32 = v133;
    (*(*v31 + 896))();
    sub_1005E0A78(v32 + *(v134 + 20), v17);
    sub_1009625A4(v32, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v117;
    v34 = v122;
    v29(v117, &v17[*(v116 + 20)], v122);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v123;
    v36 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v36);
    *(&v112 - 4) = &type metadata for CRLWPFontBoldAttribute;
    v37 = sub_1008244A8();
    v38 = v132;
    *(&v112 - 3) = v37;
    *(&v112 - 2) = v38;
    swift_getKeyPath();
    sub_1008244FC();

    v39 = v125;
    CRAttributedString.Substring.subscript.getter();

    (*(v124 + 8))(v35, v39);
    sub_1005B981C(&qword_101A09648);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10146C6B0;
    *(v40 + 32) = v178[0];
    sub_1007990D0(v40);
    v41 = *(v121 + 8);
    v41(v33, v34);
    v42 = v136;
  }

  v54 = v182;
  v55 = v182[2];
  if (!v55)
  {

    v59 = _swiftEmptyArrayStorage;
LABEL_30:

    v98 = v59[2];
    v99 = v119;
    if (v98)
    {
      if (v98 == 1)
      {
        v100 = *(v59 + 32);

        v41(v99, v122);
        return v100;
      }

      else
      {
        v41(v119, v122);
      }
    }

    else
    {

      v101 = sub_100A42890(v42);
      v41(v99, v122);
      return v101 & 1;
    }

    return v59;
  }

  v118 = v41;
  v180 = _swiftEmptyArrayStorage;
  v132 = v55;
  result = sub_100776604(0, v55, 0);
  v56 = v132;
  v57 = 0;
  v58 = v42 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v59 = v180;
  while (v57 < v54[2])
  {
    v60 = *(v54 + v57 + 32);
    if (v60 == 2)
    {
      v61 = *(v58 + 208);
      v62 = *(v58 + 176);
      v174 = *(v58 + 192);
      v175 = v61;
      v63 = *(v58 + 208);
      v176 = *(v58 + 224);
      v64 = *(v58 + 144);
      v65 = *(v58 + 112);
      v170 = *(v58 + 128);
      v171 = v64;
      v66 = *(v58 + 144);
      v67 = *(v58 + 176);
      v172 = *(v58 + 160);
      v173 = v67;
      v68 = *(v58 + 80);
      v69 = *(v58 + 48);
      v166 = *(v58 + 64);
      v167 = v68;
      v70 = *(v58 + 80);
      v71 = *(v58 + 112);
      v168 = *(v58 + 96);
      v169 = v71;
      v72 = *(v58 + 16);
      v162 = *v58;
      v163 = v72;
      v73 = *(v58 + 48);
      v75 = *v58;
      v74 = *(v58 + 16);
      v164 = *(v58 + 32);
      v165 = v73;
      v178[12] = v174;
      v178[13] = v63;
      v178[14] = *(v58 + 224);
      v178[8] = v170;
      v178[9] = v66;
      v178[10] = v172;
      v178[11] = v62;
      v178[4] = v166;
      v178[5] = v70;
      v178[6] = v168;
      v178[7] = v65;
      v178[0] = v75;
      v178[1] = v74;
      v177 = *(v58 + 240);
      v179 = *(v58 + 240);
      v178[2] = v164;
      v178[3] = v69;
      result = sub_100695050(v178);
      if (result != 1)
      {
        v78 = v162;
        v79 = v163;
        v80 = DWORD1(v163);
        v60 = BYTE9(v163);
        v81 = BYTE10(v163);
        v82 = v164;
        v83 = BYTE8(v164);
        v84 = v165;
        v85 = BYTE8(v165);
        v86 = v173;
        v87 = BYTE8(v173);
        v88 = v174;
        v89 = BYTE8(v174);
        v90 = v175;
        v91 = BYTE8(v175);
        v92 = v176;
        v93 = v177;
        v94 = BYTE8(v176);
        v95 = BYTE8(v163);
        v159 = v170;
        v160 = v171;
        v161 = v172;
        v155 = v166;
        v156 = v167;
        v157 = v168;
        v158 = v169;
        goto LABEL_23;
      }

      v76 = *(v136 + v135);
      if (!v76)
      {
        goto LABEL_43;
      }

      v77 = v133;
      (*(*v76 + 896))();
      sub_1005B981C(&unk_101A095A0);
      CRRegister.wrappedValue.getter();
      sub_1009625A4(v77, type metadata accessor for CRLWPShapeItemCRDTData);
      v151 = v137[12];
      v152 = v137[13];
      v153 = v137[14];
      v154 = v138;
      v147 = v137[8];
      v148 = v137[9];
      v149 = v137[10];
      v150 = v137[11];
      v143 = v137[4];
      v144 = v137[5];
      v145 = v137[6];
      v146 = v137[7];
      v139 = v137[0];
      v140 = v137[1];
      v141 = v137[2];
      v142 = v137[3];
      result = sub_100695050(&v139);
      if (result != 1)
      {
        v93 = v154;
        v92 = v153;
        v94 = BYTE8(v153);
        v90 = v152;
        v91 = BYTE8(v152);
        v88 = v151;
        v89 = BYTE8(v151);
        v86 = v150;
        v87 = BYTE8(v150);
        v84 = v142;
        v85 = BYTE8(v142);
        v82 = v141;
        v83 = BYTE8(v141);
        v81 = BYTE10(v140);
        v60 = BYTE9(v140);
        v80 = DWORD1(v140);
        v95 = BYTE8(v140);
        v78 = v139;
        v79 = v140;
        v159 = v147;
        v160 = v148;
        v161 = v149;
        v155 = v143;
        v156 = v144;
        v157 = v145;
        v158 = v146;
        v56 = v132;
LABEL_23:
        v139 = v78;
        LOBYTE(v140) = v79;
        DWORD1(v140) = v80;
        BYTE8(v140) = v95 & 1;
        BYTE9(v140) = v60;
        BYTE10(v140) = v81;
        *&v141 = v82;
        BYTE8(v141) = v83;
        *&v142 = v84;
        BYTE8(v142) = v85;
        v147 = v159;
        v148 = v160;
        v149 = v161;
        v143 = v155;
        v144 = v156;
        v145 = v157;
        v146 = v158;
        *&v150 = v86;
        BYTE8(v150) = v87;
        *&v151 = v88;
        BYTE8(v151) = v89;
        *&v152 = v90;
        BYTE8(v152) = v91;
        *&v153 = v92;
        BYTE8(v153) = v94 & 1;
        v154 = v93;
        sub_10000BE14(&v162, v137, &unk_101A0D830);
        result = sub_10081852C(&v139);
        if (v60 == 2)
        {
          LOBYTE(v60) = 0;
        }

        goto LABEL_25;
      }

      LOBYTE(v60) = 0;
      v56 = v132;
    }

LABEL_25:
    v180 = v59;
    v97 = v59[2];
    v96 = v59[3];
    if (v97 >= v96 >> 1)
    {
      result = sub_100776604((v96 > 1), v97 + 1, 1);
      v56 = v132;
      v59 = v180;
    }

    ++v57;
    v59[2] = v97 + 1;
    *(v59 + v97 + 32) = v60 & 1;
    if (v56 == v57)
    {

      v42 = v136;
      v41 = v118;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

int64_t sub_10095CB84(int64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v123 = a3;
  *&v124 = a4;
  v140 = a1;
  v131 = sub_1005B981C(qword_101A0CF60);
  v117 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v116 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v139 = *(v6 - 8);
  __chkstk_darwin(v6);
  v118 = &v116 - v7;
  v8 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v8 - 8);
  v132 = &v116 - v9;
  v134 = sub_1005B981C(&unk_101A09550);
  v119 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v116 - v10;
  v11 = sub_1005B981C(&qword_1019FC080);
  v128 = *(v11 - 8);
  v129 = v11;
  __chkstk_darwin(v11);
  v127 = &v116 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v120);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v121 = &v116 - v24;
  result = __chkstk_darwin(v23);
  v27 = &v116 - v26;
  v137 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v138 = a2;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_46;
  }

  (*(*v28 + 896))(result);
  v135 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v136 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v125 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v186 = _swiftEmptyArrayStorage;
  v185 = _swiftEmptySetSingleton;
  v126 = v18;
  result = CRAttributedString.count.getter();
  v30 = v138;
  v122 = v27;
  if (result && (result = sub_100A31B44(v123, v124), (result & 1) == 0))
  {
    result = sub_100A31CD0(v123, v124);
    v123 = result;
    *&v124 = v44;
    v45 = *(v30 + v137);
    if (!v45)
    {
      goto LABEL_48;
    }

    v46 = v136;
    (*(*v45 + 896))();
    sub_1005E0A78(v46 + *(v135 + 20), v17);
    sub_1009625A4(v46, type metadata accessor for CRLWPShapeItemCRDTData);
    v47 = v126;
    v29(v22, v17, v126);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v48 = CRAttributedString.count.getter();
    v49 = *(v125 + 8);
    v49(v22, v47);
    if (v48 >= (v123 & ~(v123 >> 63)))
    {
      result = v123 & ~(v123 >> 63);
    }

    else
    {
      result = v48;
    }

    if ((v124 & ~(v124 >> 63)) < result)
    {
      goto LABEL_44;
    }

    v123 = v49;
    v50 = v127;
    CRAttributedString.subscript.getter();
    v51 = v129;
    CRAttributedString.Substring.runs.getter();
    (*(v128 + 8))(v50, v51);
    v52 = v132;
    CRAttributedString.Runs.next()();
    v128 = v139[6];
    v129 = (v139 + 6);
    v53 = (v128)(v52, 1, v6);
    v54 = v118;
    if (v53 != 1)
    {
      v127 = v139[4];
      v105 = (v117 + 8);
      v139 += 4;
      v106 = (v139 - 3);
      v124 = xmmword_10146C6B0;
      (v127)(v118, v52, v6);
      while (1)
      {
        v108 = v130;
        v109 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v109);
        *(&v116 - 4) = &type metadata for CRLWPFontSizeAttribute;
        v110 = sub_10082465C();
        v111 = v140;
        *(&v116 - 3) = v110;
        *(&v116 - 2) = v111;
        swift_getKeyPath();
        sub_1008246B0();

        v112 = v131;
        CRAttributedString.Attributes.subscript.getter();

        (*v105)(v108, v112);
        v113 = LODWORD(v182[0]);
        v114 = BYTE4(v182[0]);
        LOBYTE(v166) = BYTE4(v182[0]);
        if ((sub_10079D88C(LODWORD(v182[0]) | (BYTE4(v182[0]) << 32), v185) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09670);
          v115 = swift_allocObject();
          *(v115 + 16) = v124;
          *(v115 + 32) = v113;
          *(v115 + 36) = v114;
          sub_1007991BC(v115);
          LOBYTE(v166) = v114;
          sub_100E6C954(&v166, v113 | (v114 << 32));
        }

        (*v106)(v54, v6);
        v107 = v132;
        CRAttributedString.Runs.next()();
        if ((v128)(v107, 1, v6) == 1)
        {
          break;
        }

        (v127)(v54, v107, v6);
      }
    }

    (*(v119 + 8))(v133, v134);
    v43 = v138;
    v27 = v122;
    v42 = v123;
  }

  else
  {
    v31 = *(v30 + v137);
    if (!v31)
    {
      goto LABEL_47;
    }

    v32 = v136;
    (*(*v31 + 896))();
    sub_1005E0A78(v32 + *(v135 + 20), v17);
    sub_1009625A4(v32, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v121;
    v34 = v126;
    v29(v121, &v17[*(v120 + 20)], v126);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v127;
    v36 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v36);
    *(&v116 - 4) = &type metadata for CRLWPFontSizeAttribute;
    v37 = sub_10082465C();
    v38 = v140;
    *(&v116 - 3) = v37;
    *(&v116 - 2) = v38;
    swift_getKeyPath();
    sub_1008246B0();

    v39 = v129;
    CRAttributedString.Substring.subscript.getter();

    (*(v128 + 8))(v35, v39);
    sub_1005B981C(&qword_101A09670);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10146C6B0;
    v41 = BYTE4(v182[0]);
    *(v40 + 32) = v182[0];
    *(v40 + 36) = v41;
    sub_1007991BC(v40);
    v42 = *(v125 + 8);
    v42(v33, v34);
    v43 = v138;
  }

  v55 = v186[2];
  if (!v55)
  {

    v60 = _swiftEmptyArrayStorage;
LABEL_31:

    v101 = *(v60 + 16);
    if (v101)
    {
      if (v101 != 1)
      {
        v42(v27, v126);
        v102 = v60;
        v104 = v60 & 0xFFFFFFFF00000000;
        return v104 | v102;
      }

      v102 = *(v60 + 32);
    }

    else
    {

      sub_100A42510(v43);
      v102 = v103;
    }

    v42(v27, v126);
    v104 = 0;
    return v104 | v102;
  }

  v123 = v42;
  v184 = _swiftEmptyArrayStorage;
  v139 = v186;
  v140 = v55;
  sub_100776624(0, v55, 0);
  result = v139;
  v56 = v140;
  v57 = 0;
  v58 = v43 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v59 = v139 + 9;
  v60 = v184;
  while (v57 < *(result + 16))
  {
    if (*v59)
    {
      v61 = *(v58 + 208);
      v62 = *(v58 + 176);
      v178 = *(v58 + 192);
      v179 = v61;
      v63 = *(v58 + 208);
      v180 = *(v58 + 224);
      v64 = *(v58 + 144);
      v65 = *(v58 + 112);
      v174 = *(v58 + 128);
      v175 = v64;
      v66 = *(v58 + 144);
      v67 = *(v58 + 176);
      v176 = *(v58 + 160);
      v177 = v67;
      v68 = *(v58 + 80);
      v69 = *(v58 + 48);
      v170 = *(v58 + 64);
      v171 = v68;
      v70 = *(v58 + 80);
      v71 = *(v58 + 112);
      v172 = *(v58 + 96);
      v173 = v71;
      v72 = *(v58 + 16);
      v166 = *v58;
      v167 = v72;
      v73 = *(v58 + 48);
      v75 = *v58;
      v74 = *(v58 + 16);
      v168 = *(v58 + 32);
      v169 = v73;
      v182[12] = v178;
      v182[13] = v63;
      v182[14] = *(v58 + 224);
      v182[8] = v174;
      v182[9] = v66;
      v182[10] = v176;
      v182[11] = v62;
      v182[4] = v170;
      v182[5] = v70;
      v182[6] = v172;
      v182[7] = v65;
      v182[0] = v75;
      v182[1] = v74;
      v181 = *(v58 + 240);
      v183 = *(v58 + 240);
      v182[2] = v168;
      v182[3] = v69;
      result = sub_100695050(v182);
      if (result == 1)
      {
        v76 = *(v138 + v137);
        v77 = v136;
        if (!v76)
        {
          goto LABEL_45;
        }

        (*(*v76 + 896))();
        sub_1005B981C(&unk_101A095A0);
        CRRegister.wrappedValue.getter();
        sub_1009625A4(v77, type metadata accessor for CRLWPShapeItemCRDTData);
        v155 = v141[12];
        v156 = v141[13];
        v157 = v141[14];
        v158 = v142;
        v151 = v141[8];
        v152 = v141[9];
        v153 = v141[10];
        v154 = v141[11];
        v147 = v141[4];
        v148 = v141[5];
        v149 = v141[6];
        v150 = v141[7];
        v143 = v141[0];
        v144 = v141[1];
        v145 = v141[2];
        v146 = v141[3];
        if (sub_100695050(&v143) != 1)
        {
          v78 = v158;
          v79 = v157;
          v80 = BYTE8(v157);
          v81 = v156;
          v82 = BYTE8(v156);
          v83 = v155;
          v84 = BYTE8(v155);
          v85 = v154;
          v86 = BYTE8(v154);
          v87 = v146;
          v88 = BYTE8(v146);
          v89 = v145;
          v90 = BYTE8(v145);
          v91 = BYTE10(v144);
          v92 = BYTE9(v144);
          v93 = *(&v144 + 1);
          v94 = BYTE8(v144);
          v95 = v143;
          v96 = v144;
          v163 = v151;
          v164 = v152;
          v165 = v153;
          v159 = v147;
          v160 = v148;
          v98 = v149;
          v97 = v150;
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v95 = v166;
      v96 = v167;
      v93 = *(&v167 + 1);
      v92 = BYTE9(v167);
      v91 = BYTE10(v167);
      v89 = v168;
      v90 = BYTE8(v168);
      v87 = v169;
      v88 = BYTE8(v169);
      v85 = v177;
      v86 = BYTE8(v177);
      v83 = v178;
      v84 = BYTE8(v178);
      v81 = v179;
      v82 = BYTE8(v179);
      v79 = v180;
      v78 = v181;
      v80 = BYTE8(v180);
      v94 = BYTE8(v167);
      v163 = v174;
      v164 = v175;
      v165 = v176;
      v159 = v170;
      v160 = v171;
      v98 = v172;
      v97 = v173;
LABEL_23:
      v161 = v98;
      v162 = v97;
      v143 = v95;
      LOBYTE(v144) = v96;
      *(&v144 + 1) = v93;
      BYTE8(v144) = v94 & 1;
      BYTE9(v144) = v92;
      BYTE10(v144) = v91;
      *&v145 = v89;
      BYTE8(v145) = v90;
      *&v146 = v87;
      BYTE8(v146) = v88;
      v151 = v163;
      v152 = v164;
      v153 = v165;
      v147 = v159;
      v148 = v160;
      v149 = v98;
      v150 = v97;
      *&v154 = v85;
      BYTE8(v154) = v86;
      *&v155 = v83;
      BYTE8(v155) = v84;
      *&v156 = v81;
      BYTE8(v156) = v82;
      *&v157 = v79;
      BYTE8(v157) = v80 & 1;
      v158 = v78;
      sub_10000BE14(&v166, v141, &unk_101A0D830);
      sub_10081852C(&v143);
      if (v94)
      {
LABEL_24:
        v93 = 18.0;
      }

      result = v139;
      v56 = v140;
      goto LABEL_26;
    }

    v93 = *(v59 - 1);
LABEL_26:
    v184 = v60;
    v100 = *(v60 + 16);
    v99 = *(v60 + 24);
    if (v100 >= v99 >> 1)
    {
      sub_100776624((v99 > 1), v100 + 1, 1);
      result = v139;
      v56 = v140;
      v60 = v184;
    }

    ++v57;
    *(v60 + 16) = v100 + 1;
    *(v60 + 4 * v100 + 32) = v93;
    v59 += 2;
    if (v56 == v57)
    {

      v43 = v138;
      v27 = v122;
      v42 = v123;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_10095DAD4(unint64_t a1, char *a2, char *a3, char *a4)
{
  v88 = a4;
  v87 = a3;
  v102 = a1;
  v98 = sub_1005B981C(qword_101A0CF60);
  v82 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v81 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v101 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v81 - v7;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v11 = &v81 - v10;
  v100 = sub_1005B981C(&unk_101A09550);
  v83 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v81 - v12;
  v94 = sub_1005B981C(&qword_1019FC080);
  *&v91 = *(v94 - 1);
  __chkstk_darwin(v94);
  v89 = &v81 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v85);
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10);
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v84 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v86 = &v81 - v24;
  result = __chkstk_darwin(v23);
  v27 = &v81 - v26;
  v103 = a2;
  v96 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v28 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v28)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  (*(*v28 + 896))(result);
  v95 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v92 = v20;
  v29 = *(v20 + 16);
  v29(v27, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v110 = _swiftEmptyArrayStorage;
  v109 = _swiftEmptySetSingleton;
  v93 = v19;
  v90 = v27;
  result = CRAttributedString.count.getter();
  v30 = v103;
  if (result)
  {
    result = sub_100A31B44(v87, v88);
    if ((result & 1) == 0)
    {
      result = sub_100A31CD0(v87, v88);
      v88 = result;
      v44 = *&v30[v96];
      if (!v44)
      {
LABEL_61:
        __break(1u);
        return result;
      }

      v45 = v43;
      (*(*v44 + 896))();
      sub_1005E0A78(&v16[*(v95 + 20)], v18);
      sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
      v46 = v84;
      v47 = v93;
      v29(v84, v18, v93);
      sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
      v48 = CRAttributedString.count.getter();
      v49 = *(v92 + 8);
      v49(v46, v47);
      if (v48 >= (v88 & ~(v88 >> 63)))
      {
        result = v88 & ~(v88 >> 63);
      }

      else
      {
        result = v48;
      }

      if ((v45 & ~(v45 >> 63)) >= result)
      {
        v88 = v49;
        v50 = v89;
        CRAttributedString.subscript.getter();
        v51 = v94;
        CRAttributedString.Substring.runs.getter();
        (*(v91 + 8))(v50, v51);
        CRAttributedString.Runs.next()();
        v52 = *(v101 + 48);
        v96 = v101 + 48;
        v95 = v52;
        if (v52(v11, 1, v6) != 1)
        {
          v94 = *(v101 + 32);
          v70 = (v82 + 8);
          v101 += 32;
          v71 = (v101 - 24);
          v91 = xmmword_10146C6B0;
          (v94)(v8, v11, v6);
          while (1)
          {
            v72 = v97;
            v73 = CRAttributedString.Runs.Run.attributes.getter();
            __chkstk_darwin(v73);
            *(&v81 - 4) = &type metadata for CRLWPFontNameAttribute;
            v74 = sub_100962324();
            v75 = v102;
            *(&v81 - 3) = v74;
            *(&v81 - 2) = v75;
            swift_getKeyPath();
            sub_1009623E4();

            v76 = v98;
            CRAttributedString.Attributes.subscript.getter();

            (*v70)(v72, v76);
            v77 = v106;
            v78 = v107;
            v79 = v108;
            if ((sub_10079D99C(v106, v107, v108, v109) & 1) == 0)
            {
              sub_1005B981C(&qword_101A09688);
              inited = swift_initStackObject();
              *(inited + 16) = v91;
              *(inited + 32) = v77;
              *(inited + 40) = v78;
              *(inited + 48) = v79;
              sub_100962438(v77, v78, v79);
              sub_100962438(v77, v78, v79);
              sub_1007992A8(inited);
              sub_100E6CAB0(v104, v77, v78, v79);
              sub_1009623A8(v104[0], v104[1], v105);
            }

            (*v71)(v8, v6);
            sub_1009623A8(v77, v78, v79);
            CRAttributedString.Runs.next()();
            if ((v95)(v11, 1, v6) == 1)
            {
              break;
            }

            (v94)(v8, v11, v6);
          }
        }

        (*(v83 + 8))(v99, v100);
        v30 = v103;
        v33 = v93;
        v42 = v88;
        goto LABEL_13;
      }

LABEL_58:
      __break(1u);
      goto LABEL_59;
    }
  }

  v31 = *&v30[v96];
  if (!v31)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  (*(*v31 + 896))();
  sub_1005E0A78(&v16[*(v95 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v32 = v86;
  v33 = v93;
  v29(v86, &v18[*(v85 + 20)], v93);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v34 = v89;
  v35 = CRAttributedString.subscript.getter();
  __chkstk_darwin(v35);
  *(&v81 - 4) = &type metadata for CRLWPFontNameAttribute;
  v36 = sub_100962324();
  v37 = v102;
  *(&v81 - 3) = v36;
  *(&v81 - 2) = v37;
  swift_getKeyPath();
  sub_1009623E4();

  v38 = v94;
  CRAttributedString.Substring.subscript.getter();

  (*(v91 + 8))(v34, v38);
  sub_1005B981C(&qword_101A09688);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_10146C6B0;
  v40 = v106;
  v41 = v107;
  *(v39 + 32) = v106;
  *(v39 + 40) = v41;
  LOBYTE(v34) = v108;
  *(v39 + 48) = v108;
  sub_100962438(v40, v41, v34);
  sub_1007992A8(v39);
  sub_1009623A8(v40, v41, v34);
  v42 = *(v92 + 8);
  v42(v32, v33);
LABEL_13:
  v53 = v110;
  v54 = v110[2];
  if (v54)
  {
    v88 = v42;
    v106 = _swiftEmptyArrayStorage;
    result = sub_100034080(0, v54, 0);
    v55 = 0;
    v56 = v106;
    v102 = 0x8000000101552120;
    v101 = 0x80000001015520F0;
    v100 = 0x80000001015520C0;
    v99 = 0x8000000101552090;
    v98 = 0x8000000101552060;
    v97 = 0x8000000101552030;
    v96 = 0x8000000101552000;
    v95 = 0x8000000101551FD0;
    v57 = (v53 + 6);
    while (1)
    {
      if (v55 >= v53[2])
      {
        __break(1u);
        goto LABEL_58;
      }

      v58 = *v57;
      if (v58 == 255)
      {
        result = sub_100A41EDC(v103);
      }

      else if (v58)
      {
        v59 = 0xE900000000000061;
        result = 0x63697465766C6548;
      }

      else
      {
        v60 = *(v57 - 2);
        v61 = *(v57 - 1);
        if (v61 > 3)
        {
          if (v61 <= 5)
          {
            if (v61 == 4)
            {
              sub_1009623A8(v60, 4uLL, v58);
              result = 0xD000000000000025;
              v62 = &v114;
            }

            else
            {
              sub_1009623A8(v60, 5uLL, v58);
              result = 0xD000000000000027;
              v62 = &v115;
            }
          }

          else
          {
            switch(v61)
            {
              case 6:
                sub_1009623A8(v60, 6uLL, v58);
                result = 0xD000000000000023;
                v62 = &v116;
                break;
              case 7:
                sub_1009623A8(v60, 7uLL, v58);
                result = 0xD000000000000024;
                v62 = &v117;
                break;
              case 8:
                sub_1009623A8(v60, 8uLL, v58);
                result = 0xD000000000000024;
                v62 = &v118;
                break;
              default:
                goto LABEL_44;
            }
          }

          goto LABEL_39;
        }

        if (v61 > 1)
        {
          if (v61 == 2)
          {
            sub_1009623A8(v60, 2uLL, v58);
            result = 0xD000000000000024;
            v62 = &v112;
          }

          else
          {
            sub_1009623A8(v60, 3uLL, v58);
            result = 0xD000000000000026;
            v62 = &v113;
          }

LABEL_39:
          v59 = *(v62 - 32);
          goto LABEL_40;
        }

        if (v61)
        {
          if (v61 != 1)
          {
LABEL_44:
            v66 = *(v57 - 2);
            sub_100962384(v60, *(v57 - 1), 0);
            v59 = v61;
            result = v66;
            goto LABEL_40;
          }

          sub_1009623A8(v60, 1uLL, v58);
          result = 0xD000000000000023;
          v62 = &v111;
          goto LABEL_39;
        }

        sub_1009623A8(v60, 0, v58);
        result = 0xD000000000000029;
        v59 = 0x8000000101551FA0;
      }

LABEL_40:
      v106 = v56;
      v64 = v56[2];
      v63 = v56[3];
      if (v64 >= v63 >> 1)
      {
        v94 = result;
        *&v91 = v59;
        sub_100034080((v63 > 1), v64 + 1, 1);
        v59 = v91;
        result = v94;
        v56 = v106;
      }

      ++v55;
      v56[2] = v64 + 1;
      v65 = &v56[2 * v64];
      v65[4] = result;
      v65[5] = v59;
      v57 += 24;
      if (v54 == v55)
      {

        v30 = v103;
        v33 = v93;
        v42 = v88;
        goto LABEL_46;
      }
    }
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_46:

  v67 = v56[2];
  v68 = v90;
  if (v67)
  {
    if (v67 == 1)
    {
      v69 = v56[4];

      v42(v68, v33);
      return v69;
    }

    else
    {
      v42(v90, v33);
    }
  }

  else
  {

    v56 = sub_100A41EDC(v30);
    v42(v68, v33);
  }

  return v56;
}

void sub_10095EAFC(uint64_t a1, char *a2, char *a3, char *a4)
{
  v80 = a4;
  v79 = a3;
  v92 = a1;
  v88 = sub_1005B981C(qword_101A0CF60);
  v72 = *(v88 - 8);
  __chkstk_darwin(v88);
  v73 = &v71 - v5;
  v6 = sub_1005B981C(&unk_101A09540);
  v91 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v71 - v7;
  v9 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v9 - 8);
  v11 = &v71 - v10;
  v90 = sub_1005B981C(&unk_101A09550);
  v74 = *(v90 - 8);
  __chkstk_darwin(v90);
  v89 = &v71 - v12;
  v86 = sub_1005B981C(&qword_1019FC080);
  v85 = *(v86 - 1);
  __chkstk_darwin(v86);
  *&v83 = &v71 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v76);
  v18 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v77 = &v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v71 - v24;
  v87 = a2;
  v78 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    goto LABEL_36;
  }

  (*(*v26 + 896))(v23);
  v75 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v84 = v20;
  v27 = *(v20 + 16);
  v27(v25, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v97 = _swiftEmptyArrayStorage;
  v96 = _swiftEmptySetSingleton;
  v82 = v19;
  v81 = v25;
  v28 = CRAttributedString.count.getter();
  v29 = v87;
  if (v28 && (sub_100A31B44(v79, v80) & 1) == 0)
  {
    v41 = sub_100A31CD0(v79, v80);
    if (__OFSUB__(v42, v41))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v43 = [v29 textRangeForParagraphsInCharRange:{v41, v42 - v41}];
    v45 = __OFADD__(v43, v44);
    v46 = &v43[v44];
    if (v45)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v46 < v43)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v47 = v83;
    CRAttributedString.subscript.getter();
    v48 = v86;
    CRAttributedString.Substring.runs.getter();
    (*(v85 + 8))(v47, v48);
    CRAttributedString.Runs.next()();
    v49 = *(v91 + 48);
    v87 = (v91 + 48);
    v86 = v49;
    v50 = (v49)(v11, 1, v6);
    v51 = v73;
    if (v50 != 1)
    {
      v85 = *(v91 + 32);
      v62 = (v72 + 8);
      v91 += 32;
      v63 = (v91 - 24);
      v83 = xmmword_10146C6B0;
      (v85)(v8, v11, v6);
      while (1)
      {
        v64 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v64);
        *(&v71 - 4) = &type metadata for CRLWPParagraphLevelAttribute;
        v65 = sub_100962030();
        v66 = v92;
        *(&v71 - 3) = v65;
        *(&v71 - 2) = v66;
        swift_getKeyPath();
        sub_100962084();

        v67 = v88;
        CRAttributedString.Attributes.subscript.getter();

        (*v62)(v51, v67);
        v68 = v94;
        v69 = v95;
        if ((sub_10079C8C8(v94, v95, v96) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09560);
          inited = swift_initStackObject();
          *(inited + 16) = v83;
          *(inited + 32) = v68;
          *(inited + 40) = v69;
          sub_100798E3C(inited);
          sub_100E6B644(v93, v68, v69);
        }

        (*v63)(v8, v6);
        CRAttributedString.Runs.next()();
        if ((v86)(v11, 1, v6) == 1)
        {
          break;
        }

        (v85)(v8, v11, v6);
      }
    }

    (*(v74 + 8))(v89, v90);
    v33 = v82;
  }

  else
  {
    v30 = *&v29[v78];
    if (!v30)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v31 = v27;
    (*(*v30 + 896))();
    sub_1005E0A78(&v16[*(v75 + 20)], v18);
    sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
    v32 = v77;
    v33 = v82;
    v31(v77, &v18[*(v76 + 20)], v82);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v34 = v83;
    v35 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v35);
    *(&v71 - 4) = &type metadata for CRLWPParagraphLevelAttribute;
    v36 = sub_100962030();
    v37 = v92;
    *(&v71 - 3) = v36;
    *(&v71 - 2) = v37;
    swift_getKeyPath();
    sub_100962084();

    v38 = v86;
    CRAttributedString.Substring.subscript.getter();

    (*(v85 + 8))(v34, v38);
    sub_1005B981C(&unk_101A09560);
    v39 = swift_initStackObject();
    *(v39 + 16) = xmmword_10146C6B0;
    v40 = v95;
    *(v39 + 32) = v94;
    *(v39 + 40) = v40;
    sub_100798E3C(v39);
    (*(v84 + 8))(v32, v33);
  }

  v52 = v97;
  v53 = v97[2];
  if (v53)
  {
    v94 = _swiftEmptyArrayStorage;
    sub_100776544(0, v53, 0);
    v54 = 0;
    v55 = v94;
    v56 = v52 + 5;
    while (v54 < v52[2])
    {
      if (*v56)
      {
        v57 = 0;
      }

      else
      {
        v57 = *(v56 - 1);
      }

      v94 = v55;
      v59 = v55[2];
      v58 = v55[3];
      if (v59 >= v58 >> 1)
      {
        sub_100776544((v58 > 1), v59 + 1, 1);
        v55 = v94;
      }

      ++v54;
      v55[2] = v59 + 1;
      v55[v59 + 4] = v57;
      v56 += 16;
      if (v53 == v54)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_22:

  v60 = v55[2];
  if (v60)
  {
    if (v60 == 1)
    {
      v61 = v81;

      (*(v84 + 8))(v61, v33);
    }

    else
    {
      (*(v84 + 8))(v81, v33);
    }
  }

  else
  {
    (*(v84 + 8))(v81, v33);
  }
}

void sub_10095F6B0(char *a1, char *a2, char *a3, uint64_t a4)
{
  *&v119 = a4;
  v117 = a3;
  v140 = a1;
  v128 = sub_1005B981C(qword_101A0CF60);
  v111 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v111 - v5;
  v130 = sub_1005B981C(&unk_101A09540);
  v139 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v111 - v6;
  v7 = sub_1005B981C(&unk_101A0D900);
  __chkstk_darwin(v7 - 8);
  v131 = &v111 - v8;
  v138 = sub_1005B981C(&unk_101A09550);
  v112 = *(v138 - 8);
  __chkstk_darwin(v138);
  v132 = &v111 - v9;
  v10 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v10 - 8);
  v137 = &v111 - v11;
  v135 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v114 = *(v135 - 8);
  __chkstk_darwin(v135);
  v141 = &v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FC080);
  v125 = *(v13 - 8);
  v126 = v13;
  __chkstk_darwin(v13);
  v124 = &v111 - v14;
  v15 = sub_1005B981C(&unk_101A096C0);
  v142 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v122 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v111 - v18;
  __chkstk_darwin(v20);
  v134 = &v111 - v21;
  __chkstk_darwin(v22);
  v133 = &v111 - v23;
  __chkstk_darwin(v24);
  v123 = &v111 - v25;
  v26 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v26);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v115);
  v30 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1005B981C(&unk_1019FFD10);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v113 = &v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v116 = &v111 - v35;
  v37 = __chkstk_darwin(v36);
  v39 = &v111 - v38;
  v40 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v136 = a2;
  v41 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v41)
  {
    goto LABEL_36;
  }

  (*(*v41 + 896))(v37);
  v42 = v26;
  sub_1005E0A78(&v28[*(v26 + 20)], v30);
  sub_1009625A4(v28, type metadata accessor for CRLWPShapeItemCRDTData);
  v120 = v32;
  v43 = *(v32 + 16);
  v43(v39, v30, v31);
  sub_1009625A4(v30, type metadata accessor for CRLWPStorageCRDTData);
  v145 = _swiftEmptyArrayStorage;
  v144 = _swiftEmptySetSingleton;
  v121 = v31;
  v118 = v39;
  v44 = CRAttributedString.count.getter();
  v45 = v136;
  if (v44 && (sub_100A31B44(v117, v119) & 1) == 0)
  {
    *&v119 = sub_100A31CD0(v117, v119);
    v58 = *&v45[v40];
    if (!v58)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v59 = v57;
    (*(*v58 + 896))();
    sub_1005E0A78(&v28[*(v42 + 20)], v30);
    sub_1009625A4(v28, type metadata accessor for CRLWPShapeItemCRDTData);
    v60 = v113;
    v61 = v121;
    v43(v113, v30, v121);
    sub_1009625A4(v30, type metadata accessor for CRLWPStorageCRDTData);
    v62 = CRAttributedString.count.getter();
    v63 = *(v120 + 8);
    (v63)(v60, v61);
    if (v62 >= (v119 & ~(v119 >> 63)))
    {
      v64 = v119 & ~(v119 >> 63);
    }

    else
    {
      v64 = v62;
    }

    v65 = v131;
    if ((v59 & ~(v59 >> 63)) < v64)
    {
      goto LABEL_35;
    }

    v117 = v63;
    v66 = v124;
    CRAttributedString.subscript.getter();
    v67 = v126;
    CRAttributedString.Substring.runs.getter();
    (*(v125 + 8))(v66, v67);
    CRAttributedString.Runs.next()();
    v68 = v130;
    v125 = *(v139 + 48);
    v126 = v139 + 48;
    if ((v125)(v65, 1, v130) != 1)
    {
      v124 = *(v139 + 32);
      v97 = (v111 + 8);
      v139 += 32;
      v98 = (v139 - 24);
      v119 = xmmword_10146C6B0;
      (v124)(v129, v65, v68);
      while (1)
      {
        v102 = v127;
        v103 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v103);
        *(&v111 - 4) = &type metadata for CRLWPHyperlinkAttribute;
        v104 = sub_1008247F4();
        v105 = v140;
        *(&v111 - 3) = v104;
        *(&v111 - 2) = v105;
        swift_getKeyPath();
        sub_100824848();

        v106 = v128;
        CRAttributedString.Attributes.subscript.getter();

        (*v97)(v102, v106);
        if ((sub_10079E018(v19, v144) & 1) == 0)
        {
          sub_1005B981C(&qword_101A096D8);
          v107 = (*(v142 + 80) + 32) & ~*(v142 + 80);
          v108 = swift_allocObject();
          *(v108 + 16) = v119;
          sub_10000BE14(v19, v108 + v107, &unk_101A096C0);
          sub_100799D70(v108);
          v109 = v122;
          sub_10000BE14(v19, v122, &unk_101A096C0);
          v110 = v123;
          sub_100E6D3D4(v123, v109);
          sub_10000CAAC(v110, &unk_101A096C0);
        }

        sub_10000CAAC(v19, &unk_101A096C0);
        v100 = v129;
        v99 = v130;
        (*v98)(v129, v130);
        v101 = v131;
        CRAttributedString.Runs.next()();
        if ((v125)(v101, 1, v99) == 1)
        {
          break;
        }

        (v124)(v100, v101, v99);
      }
    }

    (*(v112 + 8))(v132, v138);
    v45 = v136;
  }

  else
  {
    v46 = *&v45[v40];
    if (!v46)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    (*(*v46 + 896))();
    sub_1005E0A78(&v28[*(v42 + 20)], v30);
    sub_1009625A4(v28, type metadata accessor for CRLWPShapeItemCRDTData);
    v47 = v116;
    v48 = v121;
    v43(v116, &v30[*(v115 + 20)], v121);
    sub_1009625A4(v30, type metadata accessor for CRLWPStorageCRDTData);
    v49 = v124;
    v50 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v50);
    *(&v111 - 4) = &type metadata for CRLWPHyperlinkAttribute;
    v51 = sub_1008247F4();
    v52 = v140;
    *(&v111 - 3) = v51;
    *(&v111 - 2) = v52;
    swift_getKeyPath();
    sub_100824848();

    v53 = v123;
    v54 = v126;
    CRAttributedString.Substring.subscript.getter();

    (*(v125 + 8))(v49, v54);
    sub_1005B981C(&qword_101A096D8);
    v55 = (*(v142 + 80) + 32) & ~*(v142 + 80);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10146C6B0;
    sub_10000BE14(v53, v56 + v55, &unk_101A096C0);
    sub_100799D70(v56);
    sub_10000CAAC(v53, &unk_101A096C0);
    v117 = *(v120 + 8);
    (v117)(v47, v48);
  }

  v69 = v145;
  v70 = *(v145 + 2);
  v72 = v134;
  v71 = v135;
  v73 = v133;
  if (v70)
  {
    v143 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v74 = 0;
    v140 = &v69[(*(v142 + 80) + 32) & ~*(v142 + 80)];
    v139 = v114 + 48;
    v131 = v70;
    v132 = v69;
    while (v74 < *(v69 + 2))
    {
      sub_10000BE14(&v140[*(v142 + 72) * v74], v73, &unk_101A096C0);
      sub_10000BE14(v73, v72, &unk_101A096C0);
      if ((*v139)(v72, 1, v71) == 1)
      {
        sub_10000CAAC(v72, &unk_101A096C0);
      }

      else
      {
        v75 = v141;
        sub_100962540(v72, v141);
        sub_100A3400C(*(v75 + *(v71 + 24)), *(v75 + *(v71 + 24) + 8));
        v77 = v76;
        v79 = v78;
        v80 = v137;
        sub_10000BE14(v75 + *(v71 + 20), v137, &unk_1019F33C0);
        v138 = v79;
        v81 = [v45 stringEquivalentFromRange:{v77, v79}];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v82 = type metadata accessor for URL();
        v83 = *(v82 - 8);
        v85 = 0;
        if ((*(v83 + 48))(v80, 1, v82) != 1)
        {
          v86 = v137;
          URL._bridgeToObjectiveC()(v84);
          v85 = v87;
          (*(v83 + 8))(v86, v82);
        }

        v88 = objc_allocWithZone(CRLWPHyperlinkField);
        v89 = String._bridgeToObjectiveC()();

        v90 = String._bridgeToObjectiveC()();
        [v88 initWithURL:v85 range:v77 displayText:v138 uuidString:{v89, v90}];

        sub_1009625A4(v141, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v71 = v135;
        v45 = v136;
        v73 = v133;
        v72 = v134;
        v70 = v131;
        v69 = v132;
      }

      ++v74;
      sub_10000CAAC(v73, &unk_101A096C0);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v70 == v74)
      {

        v91 = v143;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v91 = _swiftEmptyArrayStorage;
LABEL_24:

  v92 = v91[2];
  v93 = v117;
  if (v92)
  {
    if (v92 == 1)
    {
      v94 = v121;
      v95 = v118;
      v96 = v91[4];

      (v93)(v95, v94);
    }

    else
    {
      (v117)(v118, v121);
    }
  }

  else
  {
    (v117)(v118, v121);
  }
}

void sub_1009607FC(void *a1, uint64_t a2, id a3)
{
  v4 = [a3 newCopyAssistantWithPasteboard:a2];
  v5 = [v4 pasteboardObject];
  if (v5)
  {
    v6 = v5;
    sub_100960CE0(a1, v5);
    v31 = [objc_allocWithZone(CRLContentDescriptionTranslator) init];
    v7 = sub_1009664D0(v31);
    sub_10007941C(v7);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 setContentDescription:isa];

    [v4 copyToPasteboard];
  }

  else
  {
    v32 = objc_opt_self();
    v9 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v18;
    v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 20;
    v21 = v33;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v28 file:v29 lineNumber:20 isFatal:0 format:v30 args:v27];
  }
}

uint64_t sub_100960CE0(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData;
  v5 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);

  sub_100A1B8A0(a1, v17);
  v16[3] = &type metadata for CRLWPTextPresetData;
  v16[4] = sub_100967AAC();
  v6 = swift_allocObject();
  v16[0] = v6;
  v7 = v17[13];
  *(v6 + 208) = v17[12];
  *(v6 + 224) = v7;
  *(v6 + 240) = v17[14];
  *(v6 + 256) = v18;
  v8 = v17[9];
  *(v6 + 144) = v17[8];
  *(v6 + 160) = v8;
  v9 = v17[11];
  *(v6 + 176) = v17[10];
  *(v6 + 192) = v9;
  v10 = v17[5];
  *(v6 + 80) = v17[4];
  *(v6 + 96) = v10;
  v11 = v17[7];
  *(v6 + 112) = v17[6];
  *(v6 + 128) = v11;
  v12 = v17[1];
  *(v6 + 16) = v17[0];
  *(v6 + 32) = v12;
  v13 = v17[3];
  *(v6 + 48) = v17[2];
  *(v6 + 64) = v13;
  v14 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  swift_beginAccess();
  sub_10002C638(v16, v5 + v14, &qword_101A0B1E0);
  swift_endAccess();

  *(*(a2 + v4) + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind) = 4;
  return result;
}

void sub_100960E34()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor__textSelectionDelegate;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor__textSelectionDelegate];
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (!v4)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      swift_unknownObjectRetain();
      v5 = [Strong layoutForInfo:v4];

      if (v5)
      {
        type metadata accessor for CRLWPLayout();
        Strong = swift_dynamicCastClass();
        if (!Strong)
        {
        }
      }

      else
      {
        Strong = 0;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v10 = [v2 layout];
    v11 = v10;
    if (Strong)
    {
      if (v10)
      {
        type metadata accessor for CRLWPLayout();
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v11 = Strong;
    }

    else if (!v10)
    {
      goto LABEL_21;
    }

LABEL_19:
    v13 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v13)
    {
      v14 = swift_unknownObjectWeakLoadStrong();
      v15 = v13;
      v16 = sub_100756FAC(v15, v14, v0);

      swift_unknownObjectRelease();
      *&v0[v1] = v16;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_23;
  }

  v6 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v6)
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = v6;
    v9 = sub_100756FAC(v8, v7, v0);

    *&v0[v1] = v9;
LABEL_21:
    swift_unknownObjectRelease();
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_100961050()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  sub_1005B981C(&unk_1019F6C70);
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100961174()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v0 = 0;
    v1 = 1;
  }

  else
  {
    sub_1005B981C(&unk_101A095E0);
    v2 = swift_dynamicCast();
    v0 = v4;
    if (!v2)
    {
      v0 = 0;
    }

    v1 = v2 ^ 1;
  }

  return v0 | (v1 << 32);
}

uint64_t sub_100961280()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
    sub_1005B981C(&qword_101A09638);
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1005B981C(&unk_101A08E00);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_10096148C()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
    sub_1005B981C(&qword_101A09638);
  }

  else
  {
    sub_1005B981C(&unk_101A08E00);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100961638()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v1 = &unk_101A095E0;
  }

  else
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v3 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v6 = v4;
        v5 = v3;
        return v6;
      }

      return 0;
    }

    v1 = &unk_1019F6C70;
  }

  sub_1005B981C(v1);
  sub_100006370(0, &qword_101A2BF30);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_100961810(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v35 = a2;
  v36 = a3;
  v37 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v34 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v34);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((swift_isaMask & *v4) + 0xD8);
  v16 = sub_1005B981C(&unk_101A095C0);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = *((swift_isaMask & *v5) + 0xE0);
  v18 = sub_1005BD9F8(&off_101872C20);
  result = sub_100874FB4(&unk_101872C40);
  *&v5[v17] = v18;
  v20 = v37;
  v21 = *&v37[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v21)
  {
    goto LABEL_10;
  }

  *&v5[*((swift_isaMask & *v5) + 0xE8)] = v37;
  v22 = *&v21[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  (*(*v22 + 896))(result);
  sub_1005E0A78(&v11[*(v34 + 20)], v14);
  v23 = v21;
  v24 = v20;
  sub_1009625A4(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v7 + 16))(v9, v14, v6);
  sub_1009625A4(v14, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.count.getter();
  result = (*(v7 + 8))(v9, v6);
  v26 = v35 & ~(v35 >> 63);
  if (v25 < v26)
  {
    v26 = v25;
  }

  v27 = v36 & ~(v36 >> 63);
  if (v27 < v26)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25 < v27)
  {
    v27 = v25;
  }

  v28 = &v5[*((swift_isaMask & *v5) + 0xF0)];
  *v28 = v26;
  v28[1] = v27;
  v29 = v33;
  sub_10000BE14(v33, &v5[*((swift_isaMask & *v5) + 0xF8)], &qword_101A0D850);
  v30 = sub_1005B981C(&unk_101A095D0);
  v38.receiver = v5;
  v38.super_class = v30;
  v31 = objc_msgSendSuper2(&v38, "init");

  sub_10000CAAC(v29, &qword_101A0D850);
  return v31;
}

uint64_t sub_100961C20(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v35 = a2;
  v36 = a3;
  v37 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v34 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v34);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((swift_isaMask & *v4) + 0xD8);
  v16 = sub_1005B981C(&qword_101A09538);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = *((swift_isaMask & *v5) + 0xE0);
  v18 = sub_1005BD9F8(&off_101872FC0);
  result = sub_100874FB4(&unk_101872FE0);
  *&v5[v17] = v18;
  v20 = v37;
  v21 = *&v37[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v21)
  {
    goto LABEL_10;
  }

  *&v5[*((swift_isaMask & *v5) + 0xE8)] = v37;
  v22 = *&v21[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  (*(*v22 + 896))(result);
  sub_1005E0A78(&v11[*(v34 + 20)], v14);
  v23 = v21;
  v24 = v20;
  sub_1009625A4(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v7 + 16))(v9, v14, v6);
  sub_1009625A4(v14, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.count.getter();
  result = (*(v7 + 8))(v9, v6);
  v26 = v35 & ~(v35 >> 63);
  if (v25 < v26)
  {
    v26 = v25;
  }

  v27 = v36 & ~(v36 >> 63);
  if (v27 < v26)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25 < v27)
  {
    v27 = v25;
  }

  v28 = &v5[*((swift_isaMask & *v5) + 0xF0)];
  *v28 = v26;
  v28[1] = v27;
  v29 = v33;
  sub_10000BE14(v33, &v5[*((swift_isaMask & *v5) + 0xF8)], &qword_101A06188);
  v30 = sub_1005B981C(&qword_101A0DAF0);
  v38.receiver = v5;
  v38.super_class = v30;
  v31 = objc_msgSendSuper2(&v38, "init");

  sub_10000CAAC(v29, &qword_101A06188);
  return v31;
}

unint64_t sub_100962030()
{
  result = qword_101A09510;
  if (!qword_101A09510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09510);
  }

  return result;
}

unint64_t sub_100962084()
{
  result = qword_101A09520;
  if (!qword_101A09520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09520);
  }

  return result;
}

unint64_t sub_1009620D8()
{
  result = qword_101A0D870;
  if (!qword_101A0D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D870);
  }

  return result;
}

unint64_t sub_10096212C()
{
  result = qword_101A09530;
  if (!qword_101A09530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09530);
  }

  return result;
}

unint64_t sub_100962180()
{
  result = qword_101A09570;
  if (!qword_101A09570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09570);
  }

  return result;
}

unint64_t sub_1009621D4()
{
  result = qword_101A0D590;
  if (!qword_101A0D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D590);
  }

  return result;
}

unint64_t sub_100962228()
{
  result = qword_101A095B0;
  if (!qword_101A095B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A095B0);
  }

  return result;
}

unint64_t sub_10096227C()
{
  result = qword_101A095F8;
  if (!qword_101A095F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A095F8);
  }

  return result;
}

unint64_t sub_1009622D0()
{
  result = qword_101A0D430;
  if (!qword_101A0D430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A0D430);
  }

  return result;
}

unint64_t sub_100962324()
{
  result = qword_101A09678;
  if (!qword_101A09678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09678);
  }

  return result;
}

uint64_t sub_100962384(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100962394(a1, a2);
  }
}

uint64_t sub_100962394(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_1009623A8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1009623C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1009623C0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1009623D0(a1, a2);
  }
}

uint64_t sub_1009623D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

unint64_t sub_1009623E4()
{
  result = qword_101A09680;
  if (!qword_101A09680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09680);
  }

  return result;
}

uint64_t sub_100962438(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100962384(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100962450()
{
  result = qword_101A09690;
  if (!qword_101A09690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09690);
  }

  return result;
}

unint64_t sub_1009624A4()
{
  result = qword_101A09698;
  if (!qword_101A09698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09698);
  }

  return result;
}

uint64_t sub_1009624F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100962540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009625A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100962604(uint64_t a1, void *a2)
{
  v3 = **(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);

    v7 = v5(v6);

    v8 = [v7 bezierPath];

    LOBYTE(v7) = [v8 isLineSegment];
    if (v7)
    {
      return 0;
    }

    else
    {
      return [a2 documentIsSharedReadOnly] ^ 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100962708(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a1;
  result = [a2 selectionPathPoppingToSelection:v6];
  v9 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v9)
  {
    v10 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = v9;
      v14 = [v12 infoForSelectionPath:v10];

      if (v14)
      {
        swift_unknownObjectRelease();

        if (v14 != v13)
        {
          goto LABEL_6;
        }

        sub_100960E34();
        if (!v16)
        {
          v15 = 1;
          goto LABEL_12;
        }

        v17 = v16;
        v13 = v7;
        swift_unknownObjectRetain();
        v18 = [v6 range];
        v20 = v19;
        v21 = objc_allocWithZone(type metadata accessor for CRLTextRange());
        v7 = sub_10078CDF0(v18, v20);
        v22 = [v6 caretAffinity];

        *&v7[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v22;
        [v17 setSelectedTextRange:v7];
        swift_unknownObjectRelease();
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      v7 = v13;
      goto LABEL_12;
    }

LABEL_6:
    v15 = 0;
LABEL_12:

    return v15;
  }

  __break(1u);
  return result;
}

char *sub_1009628E0(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_preventSelectionChanges) & 1) == 0)
  {
    v12 = v6;
    v13 = a2;
    if ([v12 isVisual])
    {
      if ([v12 isVisual] && (objc_msgSend(v12, "validVisualRanges") & 1) == 0)
      {
        v12 = [*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) calculateVisualRunsFromSelection:v12 updateControllerSelection:0];
      }

      else
      {
        v14 = v13;
      }

      if ([v12 isValid] && *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsParagraphMode) == 1)
      {
        v15 = sub_100938AB4(v12);

        v12 = v15;
      }
    }

    else
    {
      if (![v12 isValid] || *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsParagraphMode) != 1)
      {
LABEL_21:
        if (a1)
        {
          sub_100006370(0, &qword_1019F6CB0);
          v16 = v12;
          v17 = a1;
          v18 = static NSObject.== infix(_:_:)();

          if (v18)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v19 = v12;
        }

        v20 = sub_100943964();
        if (v20)
        {
          v21 = *&v20[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath];
          v22 = v20;
          v23 = v21;

          if (v21)
          {

            v24 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___editMenu);
            if (v24)
            {
              v25 = v24;
              sub_10127F918();
              sub_1000505D0(v24);
            }
          }
        }

        if (!a1)
        {
          goto LABEL_33;
        }

        v17 = a1;
LABEL_31:
        sub_100006370(0, &qword_1019F6CB0);
        v9 = v12;
        v26 = v17;
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {

LABEL_41:
          return v12;
        }

LABEL_33:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v29 = Strong, v9 = [Strong textInputResponder], v29, v9))
        {
          if (*&v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
          {
            v30 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
            v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
            v31 = *&v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
            if (v31)
            {
              [v31 selectionWillChange:v9];
            }

            v9[v30] = 0;
          }
        }

        else
        {

          v9 = v12;
        }

        goto LABEL_41;
      }

      v12 = sub_100938AB4(v12);
    }

    goto LABEL_21;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 textInputResponder];

    if (v9)
    {
      v10 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
      v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
      v11 = *&v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
      if (v11)
      {
        [v11 textWillChange:v9];
      }

      v12 = 0;
      v9[v10] = 0;
      goto LABEL_41;
    }
  }

  return 0;
}

void sub_100962C70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    if (*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
      v3 = Strong;
      v10 = [Strong layoutForInfo:?];

      if (v10)
      {
        type metadata accessor for CRLWPLayout();
        v4 = swift_dynamicCastClass();
        if (v4 && (v5 = v4, (v6 = swift_unknownObjectWeakLoadStrong()) != 0))
        {
          v7 = v6;
          v8 = [v6 repForInfo:*(v0 + v2)];
          [v8 invalidateKnobs];
          if ([v5 parentAutosizes])
          {
            [v5 invalidateSize];
          }

          *(v5 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
          [v5 invalidate];
          [v5 setNeedsDisplay];
          [v7 canvasInvalidatedForLayout:v5];

          v9 = v8;
        }

        else
        {
          v9 = v10;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100962DFC(id a1)
{
  v3 = *(*(*(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v3)
  {

    v4 = v3;
    v5 = [v4 currentUserParticipant];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 permission];
    }

    else
    {
      v7 = [v4 publicPermission];
    }

    if (v7 == 2)
    {
      return 0;
    }
  }

  if ([a1 hasNativeText])
  {
    return 1;
  }

  if ([a1 hasImportableText])
  {
    return 1;
  }

  result = [a1 hasImportableRichText];
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_100962F14(void *a1, id a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = [a2 range];
  v12 = v11;
  v13 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v14 = sub_10078CDF0(v10, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v16 = Strong;
  v17 = [Strong commandController];
  if (!v17)
  {

    goto LABEL_11;
  }

  v18 = v17;
  if ((sub_100962DFC(a1) & 1) == 0)
  {

    goto LABEL_11;
  }

  if (([a1 hasNativeText] & 1) == 0 && !objc_msgSend(a1, "hasNativeTextStorages"))
  {
    if ([a1 hasImportableRichText])
    {
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = a5;
      *(v35 + 32) = v14;
      *(v35 + 40) = a4;
      *(v35 + 48) = v18;
      v53 = sub_100967ED4;
      v54 = v35;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v51 = sub_100967EB4;
      v52 = &unk_10188E8E0;
      v36 = _Block_copy(&aBlock);
      v37 = a5;
      v38 = v14;
      v39 = v18;

      v40 = [a1 loadImportedRichTextStringWithHandler:v36];
    }

    else
    {
      if (![a1 hasImportableText])
      {

        goto LABEL_11;
      }

      v41 = swift_allocObject();
      v41[2] = a5;
      v41[3] = v14;
      v41[4] = a4;
      v41[5] = v18;
      v53 = sub_100967E5C;
      v54 = v41;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v51 = sub_10093B8DC;
      v52 = &unk_10188E890;
      v36 = _Block_copy(&aBlock);
      v42 = a5;
      v43 = v14;
      v39 = v18;

      v40 = [a1 loadImportedTextStringWithHandler:v36];
    }

    v44 = v40;

    _Block_release(v36);
LABEL_11:
    (*(a6 + 16))(a6);

    return;
  }

  v47 = a4;
  v19 = *&a5[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator];
  if (*(v19 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator))
  {
    sub_100833EBC(0xD000000000000036, 0x800000010157BF00);
    v20 = *(*(v19 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    v21 = type metadata accessor for CRLPasteboardSourceContext();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__store] = v20;
    v23 = *&v20[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
    *&v22[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__sourceContext] = v23;
    v48.receiver = v22;
    v48.super_class = v21;
    v24 = v20;
    v25 = v23;
    v46 = objc_msgSendSuper2(&v48, "init");
    v26 = *(*&a5[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v26)
    {
      v45 = *(v19 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
      v27 = swift_allocObject();
      *(v27 + 16) = a5;
      *(v27 + 24) = 0xD000000000000036;
      *(v27 + 32) = 0x800000010157BF00;
      *(v27 + 40) = 0;
      *(v27 + 48) = v14;
      *(v27 + 56) = v47;
      *(v27 + 64) = v18;
      v53 = sub_100967ED8;
      v54 = v27;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v51 = sub_100967EB4;
      v52 = &unk_10188E930;
      v28 = _Block_copy(&aBlock);
      v29 = v26;
      v30 = a5;
      v31 = v14;
      v32 = v18;
      v33 = v45;

      v34 = [a1 loadTextStorageUsingBoardItemFactory:v33 forTargetContext:v46 targetStorage:v29 loadHandler:v28];

      _Block_release(v28);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100963420()
{
  v1 = sub_1005B981C(&unk_1019FFD10);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v13)
    {
      (*(*v13 + 896))(v9);
      sub_1005E0A78(&v7[*(v5 + 20)], v11);
      v14 = v12;
      sub_1009625A4(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v2 + 16))(v4, v11, v1);
      sub_1009625A4(v11, type metadata accessor for CRLWPStorageCRDTData);
      v15 = CRAttributedString.attributedString.getter();
      (*(v2 + 8))(v4, v1);
      v16 = [v15 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1009636AC()
{
  sub_1005B981C(&qword_101A09738);
  v0 = swift_allocObject();
  *&result = 10;
  *(v0 + 16) = xmmword_101488C80;
  *(v0 + 32) = "insertText:";
  *(v0 + 40) = "insertNewline:";
  *(v0 + 48) = "insertTab:";
  *(v0 + 56) = "insertBacktab:";
  *(v0 + 64) = "moveLeft:";
  *(v0 + 72) = "moveRight:";
  *(v0 + 80) = "moveForward:";
  *(v0 + 88) = "moveBackward:";
  *(v0 + 96) = "deleteBackward:";
  *(v0 + 104) = "deleteForward:";
  return result;
}

uint64_t sub_100963750()
{
  v0 = [CRLWPEditorHelper editorKeyboardLanguage]_0();
  if (!v0)
  {
    return -1;
  }

  v1 = v0;
  v2 = [objc_opt_self() characterDirectionForLanguage:v0];

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v47 = objc_opt_self();
      v48 = [v47 _atomicIncrementAssertCount];
      v67[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v67);
      StaticString.description.getter();
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v48;
      v57 = sub_100006370(0, &qword_1019F4D30);
      *(inited + 96) = v57;
      v58 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(inited + 104) = v58;
      *(inited + 72) = v49;
      *(inited + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(inited + 112) = v52;
      *(inited + 120) = v54;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v59;
      *(inited + 152) = 2415;
      v60 = v67[0];
      *(inited + 216) = v57;
      *(inited + 224) = v58;
      *(inited + 192) = v60;
      v61 = v49;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v64, "Vertical text is not supported.", 31, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter();
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter();
      v26 = String._bridgeToObjectiveC()();

      [v47 handleFailureInFunction:v24 file:v25 lineNumber:2415 isFatal:0 format:v26 args:v66];
      goto LABEL_18;
    }

    if (v2 == 4)
    {
      v4 = objc_opt_self();
      v5 = [v4 _atomicIncrementAssertCount];
      v67[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v67);
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
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_10146CA70;
      *(v13 + 56) = &type metadata for Int32;
      *(v13 + 64) = &protocol witness table for Int32;
      *(v13 + 32) = v5;
      v14 = sub_100006370(0, &qword_1019F4D30);
      *(v13 + 96) = v14;
      v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
      *(v13 + 104) = v15;
      *(v13 + 72) = v6;
      *(v13 + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(v13 + 112) = v9;
      *(v13 + 120) = v11;
      *(v13 + 176) = &type metadata for UInt;
      *(v13 + 184) = &protocol witness table for UInt;
      *(v13 + 144) = v16;
      *(v13 + 152) = 2418;
      v17 = v67[0];
      *(v13 + 216) = v14;
      *(v13 + 224) = v15;
      *(v13 + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v13);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "Vertical text is not supported.", 31, 2, _swiftEmptyArrayStorage);

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

      [v4 handleFailureInFunction:v24 file:v25 lineNumber:2418 isFatal:0 format:v26 args:v23];
      goto LABEL_18;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return 0;
    }

    if (v2 == 2)
    {
      return 1;
    }
  }

  v27 = objc_opt_self();
  v28 = [v27 _atomicIncrementAssertCount];
  v67[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v67);
  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v30 = String._bridgeToObjectiveC()();

  v31 = [v30 lastPathComponent];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v35 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_10146CA70;
  *(v36 + 56) = &type metadata for Int32;
  *(v36 + 64) = &protocol witness table for Int32;
  *(v36 + 32) = v28;
  v37 = sub_100006370(0, &qword_1019F4D30);
  *(v36 + 96) = v37;
  v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
  *(v36 + 104) = v38;
  *(v36 + 72) = v29;
  *(v36 + 136) = &type metadata for String;
  v39 = sub_1000053B0();
  *(v36 + 112) = v32;
  *(v36 + 120) = v34;
  *(v36 + 176) = &type metadata for UInt;
  *(v36 + 184) = &protocol witness table for UInt;
  *(v36 + 144) = v39;
  *(v36 + 152) = 2421;
  v40 = v67[0];
  *(v36 + 216) = v37;
  *(v36 + 224) = v38;
  *(v36 + 192) = v40;
  v41 = v29;
  v42 = v40;
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "Unknown keyboard writing direction.", 35, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v45 = swift_allocObject();
  v45[2] = 8;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0;
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v26 = String._bridgeToObjectiveC()();

  [v27 handleFailureInFunction:v24 file:v25 lineNumber:2421 isFatal:0 format:v26 args:v46];
LABEL_18:

  return -1;
}

void sub_10096423C(void *a1)
{
  v248 = a1;
  v2 = type metadata accessor for IndexSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v244 = (&v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v233 - v6;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  v245 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100960E34();
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [v11 selectedTextRange];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  sub_100960E34();
  if (!v14 || (v15 = [v14 selectedTextRange]) == 0)
  {

LABEL_14:
    v248 = objc_opt_self();
    v31 = [v248 _atomicIncrementAssertCount];
    *&v252 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v252);
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
    v40 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v40;
    v41 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30);
    *(inited + 104) = v41;
    *(inited + 72) = v32;
    *(inited + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v42;
    *(inited + 152) = 1087;
    v43 = v252;
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
    sub_100005404(v38, &_mh_execute_header, v47, "No text selection", 17, 2, _swiftEmptyArrayStorage);

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

    [v248 handleFailureInFunction:v50 file:v51 lineNumber:1087 isFatal:0 format:v52 args:v49];

    return;
  }

  v240 = v8;
  v16 = v15;
  LODWORD(v239) = [v15 isEmpty];

  v17 = [*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:v1];
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = [v19 type];

      if (v20 == 3)
      {
        v21 = [v13 start];
        v22 = *&v21[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        v23 = NSNotFound.getter();
        v24 = &v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        if (v22 == v23)
        {
          v24 = &xmmword_101464828;
        }

        v25 = *v24;
        v26 = v248;
        [v248 removeAllObjects];
        sub_10093EA0C(v25);
        v28 = v27;
        sub_100006370(0, &qword_1019F6C00);
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        v255.value.super.isa = 0;
        v255.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v255, 1, 0xFFFFFFFFFFFFFFFFLL, v28, v229).super.super.isa;
        [v26 addObject:isa];

        v30 = isa;

        return;
      }
    }

    else
    {
    }
  }

  v242 = v13;
  v243 = v1;
  v236 = v7;
  v237 = v3;
  v238 = v2;
  NSArray.makeIterator()();
  v241 = 0;
  v53 = &qword_1019F6C00;
  v246 = @"CRLCutCopyPasteMenuIdentifier";
  isa = @"CRLZOrderMenuIdentifier";
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!*(&v253 + 1))
    {
      break;
    }

    sub_10000BF3C(&v252, &v249);
    sub_100006370(0, &qword_1019F6C00);
    if (swift_dynamicCast())
    {
      v54 = v251;
      v55 = [v251 identifier];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
      {
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v62 = v248;
      [v248 indexOfObject:v54];
      v63 = Int._bridgeToObjectiveC()().super.super.isa;
      [v62 removeObject:v63];

LABEL_29:
      v64 = [v54 identifier];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;
      if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
      {

        goto LABEL_34;
      }

      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
LABEL_34:
        [v54 setPreferredElementSize:1];
        v70 = [v248 indexOfObject:v54];

        v241 = (v70 + 1);
        if (__OFADD__(v70, 1))
        {
          __break(1u);
          break;
        }
      }

      else
      {
      }
    }
  }

  v245[1](v10, v240);
  v251 = _swiftEmptyArrayStorage;
  v71 = &selRef_longLongValue;
  if (v239)
  {
    sub_100006370(0, &unk_1019FF3D0);
    v53 = objc_opt_self();
    v72 = [v53 mainBundle];
    v73 = String._bridgeToObjectiveC()();
    v74 = String._bridgeToObjectiveC()();
    v75 = &selRef_isEnumeratingForUserSearch;
    v76 = [v72 localizedStringForKey:v73 value:v74 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v252 = 0u;
    v253 = 0u;
    v77 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v78 = &selRef_longLongValue;
    v71 = v242;
    if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

  v75 = &selRef_shouldQueueBeginScribbleMode;
  v77 = v242;
  v90 = [(SEL *)v242 start];
  v91 = *&v90[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v91 == NSNotFound.getter())
  {
    v92 = 0x7FFFFFFFFFFFFFFFLL;
    v93 = 0;
  }

  else
  {
    v92 = *(v77 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
    v138 = *(v77 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
    v93 = v138 - v92;
    if (__OFSUB__(v138, v92))
    {
      goto LABEL_88;
    }
  }

  if (sub_100940D78(v92, v93))
  {
    sub_100006370(0, &unk_1019FF3D0);
    v139 = [objc_opt_self() mainBundle];
    v140 = String._bridgeToObjectiveC()();
    v141 = String._bridgeToObjectiveC()();
    v142 = [v139 localizedStringForKey:v140 value:v141 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v252 = 0u;
    v253 = 0u;
    v143 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    sub_100006370(0, &qword_1019F6C00);
    sub_1005B981C(&unk_1019F4D60);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_101465920;
    *(v144 + 32) = v143;
    v145 = v143;
    v146._countAndFlagsBits = 0;
    v146._object = 0xE000000000000000;
    v259.value.super.isa = 0;
    v259.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v146, 0, v259, 1, 0xFFFFFFFFFFFFFFFFLL, v144, v229);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v147 = objc_opt_self();
  v148 = [v147 mainBundle];
  v149 = String._bridgeToObjectiveC()();
  v150 = String._bridgeToObjectiveC()();
  v151 = [v148 localizedStringForKey:v149 value:v150 table:0];

  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v154 = v153;

  v155 = String._bridgeToObjectiveC()();
  v156 = objc_opt_self();
  v157 = [v156 systemImageNamed:v155];

  v158 = v242;
  v159 = [(SEL *)v242 start];
  v160 = *&v159[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v161 = NSNotFound.getter();
  v162 = (v158 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  if (v160 == v161)
  {
    v162 = &xmmword_101464828;
  }

  v163 = *v162;
  v164 = sub_100006370(0, &qword_1019F6C00);
  sub_10093EA0C(v163);
  v228 = v165;
  v166._countAndFlagsBits = v152;
  v166._object = v154;
  v260.value.super.isa = v157;
  v260.is_nil = 0;
  v239 = v164;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v166, 0, v260, 0, 0xFFFFFFFFFFFFFFFFLL, v228, v229).super.super.isa;
  v167 = sub_100006370(0, &unk_1019FF3D0);
  v168 = [v147 mainBundle];
  v169 = String._bridgeToObjectiveC()();
  v170 = String._bridgeToObjectiveC()();
  v171 = [v168 localizedStringForKey:v169 value:v170 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v172 = String._bridgeToObjectiveC()();
  v173 = [v156 systemImageNamed:v172];

  v252 = 0u;
  v253 = 0u;
  v245 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v174 = [v147 mainBundle];
  v175 = String._bridgeToObjectiveC()();
  v176 = String._bridgeToObjectiveC()();
  v177 = [v174 localizedStringForKey:v175 value:v176 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v178 = String._bridgeToObjectiveC()();
  v179 = [v156 crl_internalSystemImageNamed:v178];

  v252 = 0u;
  v253 = 0u;
  v246 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v234 = v147;
  v180 = [v147 mainBundle];
  v181 = String._bridgeToObjectiveC()();
  v182 = String._bridgeToObjectiveC()();
  v183 = [v180 localizedStringForKey:v181 value:v182 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v184 = String._bridgeToObjectiveC()();
  v185 = [v156 crl_internalSystemImageNamed:v184];

  v252 = 0u;
  v253 = 0u;
  v235 = v167;
  v186 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1019F2000 != -1)
  {
    swift_once();
  }

  v187 = qword_101A1AB00;
  v188 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  LODWORD(v187) = *(v187 + v188);
  sub_1005B981C(&unk_1019F4D60);
  v240 = v186;
  if (v187 == 1)
  {
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_10146E8B0;
    v191 = v246;
    v190 = isa;
    v192 = v245;
    *(v189 + 32) = isa;
    *(v189 + 40) = v192;
    *(v189 + 48) = v191;
    *(v189 + 56) = v186;
    v193 = v190;
    v194 = v192;
  }

  else
  {
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_10146E8A0;
    v191 = v246;
    v195 = isa;
    *(v189 + 32) = isa;
    *(v189 + 40) = v191;
    *(v189 + 48) = v186;
    v196 = v195;
  }

  v197 = v191;
  v198 = v186;
  v199._countAndFlagsBits = 0;
  v199._object = 0xE000000000000000;
  v261.value.super.isa = 0;
  v261.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v199, 0, v261, 1, 0xFFFFFFFFFFFFFFFFLL, v189, v231.super.super.isa);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v137 = &selRef_longLongValue;
  v200 = v234;
  if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v201 = [v200 mainBundle];
  v202 = String._bridgeToObjectiveC()();
  v203 = String._bridgeToObjectiveC()();
  v204 = [v201 localizedStringForKey:v202 value:v203 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v205 = String._bridgeToObjectiveC()();
  v206 = [v156 systemImageNamed:v205];

  v252 = 0u;
  v253 = 0u;
  v207 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  sub_1005B981C(&unk_1019F4D60);
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_101465920;
  *(v208 + 32) = v207;
  v130 = v207;
  v209._countAndFlagsBits = 0;
  v209._object = 0xE000000000000000;
  v262.value.super.isa = 0;
  v262.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v209, 0, v262, 1, 0xFFFFFFFFFFFFFFFFLL, v208, v232);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v136 = v241;
  v135 = v242;
  v53 = v238;
  v75 = v244;
  while (2)
  {
    v210 = v246;
    v211 = v240;

    v212 = [(SEL *)v135 start];
    sub_1009457D8(v212);

    sub_100006370(0, &unk_1019FF3D0);
    v213 = [objc_opt_self() v137[17]];
    v214 = String._bridgeToObjectiveC()();
    v215 = String._bridgeToObjectiveC()();
    v216 = [v213 localizedStringForKey:v214 value:v215 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v217 = String._bridgeToObjectiveC()();
    v218 = [objc_opt_self() imageNamed:v217];

    v252 = 0u;
    v253 = 0u;
    v77 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_10093E3B8();
      v220 = v219;
      if (v219 >> 62)
      {
        sub_100006370(0, &unk_1019F61A0);
        v221 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100006370(0, &unk_1019F61A0);
        v221 = v220;
      }

      sub_10079A660(v221);
      v222 = v251;
      sub_100640EB8(v251);
      v77 = Array._bridgeToObjectiveC()().super.isa;

      v78 = v222 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v71 = (v78 + v136);
      if (!__OFADD__(v136, v78))
      {
        break;
      }

      __break(1u);
LABEL_84:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    if (v71 < v136)
    {
      __break(1u);
LABEL_86:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_39:
      isa = v77;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v79 = v78[17];
      v245 = v53;
      v80 = [v53 v79];
      v81 = String._bridgeToObjectiveC()();
      v82 = String._bridgeToObjectiveC()();
      v83 = [v80 v75[489]];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v84;

      v252 = 0u;
      v253 = 0u;
      v85 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v77 = *((v251 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v86 = [(SEL *)v71 start];
      v87 = *&v86[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (v87 == NSNotFound.getter())
      {
        v88 = 0x7FFFFFFFFFFFFFFFLL;
        v89 = 0;
      }

      else
      {
        v88 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
        v94 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
        v89 = v94 - v88;
        if (__OFSUB__(v94, v88))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }
      }

      v71 = &selRef_longLongValue;
      v246 = v85;
      v95 = sub_100940D78(v88, v89);
      v53 = v245;
      if ((v95 & 1) == 0)
      {
LABEL_49:
        v103 = [v53 v71[17]];
        v104 = String._bridgeToObjectiveC()();
        v105 = String._bridgeToObjectiveC()();
        v106 = [v103 v75[489]];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = String._bridgeToObjectiveC()();
        v239 = objc_opt_self();
        v108 = [v239 systemImageNamed:v107];

        v252 = 0u;
        v253 = 0u;
        v109 = v53;
        v240 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v110 = v71;
        v111 = [v109 v71[17]];
        v112 = String._bridgeToObjectiveC()();
        v113 = String._bridgeToObjectiveC()();
        v114 = [v111 v75[489]];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = String._bridgeToObjectiveC()();
        v116 = v239;
        v117 = [v239 systemImageNamed:v115];

        v252 = 0u;
        v253 = 0u;
        v118 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        sub_100006370(0, &qword_1019F6C00);
        v119 = [v109 v110[17]];
        v120 = String._bridgeToObjectiveC()();
        v121 = String._bridgeToObjectiveC()();
        v122 = [v119 v75[489]];

        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        v126 = String._bridgeToObjectiveC()();
        v127 = [v116 systemImageNamed:v126];

        sub_1005B981C(&unk_1019F4D60);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_10146CE00;
        v129 = v240;
        *(v128 + 32) = v240;
        *(v128 + 40) = v118;
        v240 = v129;
        v130 = v118;
        v131._countAndFlagsBits = v123;
        v131._object = v125;
        v257.value.super.isa = v127;
        v257.is_nil = 0;
        v132 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v131, 0, v257, 0, 0xFFFFFFFFFFFFFFFFLL, v128, v229).super.super.isa;
        v133 = swift_allocObject();
        *(v133 + 16) = xmmword_101465920;
        *(v133 + 32) = v132;
        v245 = v132;
        v134._countAndFlagsBits = 0;
        v134._object = 0xE000000000000000;
        v258.value.super.isa = 0;
        v258.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v134, 0, v258, 1, 0xFFFFFFFFFFFFFFFFLL, v133, v230);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v136 = v241;
        v135 = v242;
        v53 = v238;
        v75 = v244;
        v137 = &selRef_longLongValue;
        continue;
      }

      v96 = [v245 mainBundle];
      v97 = String._bridgeToObjectiveC()();
      v98 = String._bridgeToObjectiveC()();
      v99 = [v96 v75[489]];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v252 = 0u;
      v253 = 0u;
      v100 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      sub_100006370(0, &qword_1019F6C00);
      sub_1005B981C(&unk_1019F4D60);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_101465920;
      *(v101 + 32) = v100;
      v77 = v100;
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      v256.value.super.isa = 0;
      v256.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v102, 0, v256, 1, 0xFFFFFFFFFFFFFFFFLL, v101, v229);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_48:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_49;
      }

LABEL_89:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_48;
    }

    break;
  }

  sub_1009624F8(&qword_101A09758, &type metadata accessor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  if (v136 == v71)
  {
    goto LABEL_80;
  }

  if (v136 >= v71)
  {
    __break(1u);
    goto LABEL_87;
  }

  do
  {
    v250 = v136;
    dispatch thunk of SetAlgebra.insert(_:)();
    v136 = (v136 + 1);
    v78 = (v78 - 1);
  }

  while (v78);
LABEL_80:
  v224 = v236;
  v223 = v237;
  (*(v237 + 32))(v236, v75, v53);
  IndexSet._bridgeToObjectiveC()(v225);
  v227 = v226;
  (*(v223 + 8))(v224, v53);
  [v248 insertObjects:v77 atIndexes:v227];
}

void *sub_1009664D0(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = [a1 appDescriptionData];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = sub_1005B981C(&unk_101A07740);
  *&v14 = v6;
  sub_10000BF3C(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100A9EF34(v13, v2, v4, isUniquelyReferenced_nonNull_native);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v15 = &type metadata for CRLStyleCopyingType;
  LOBYTE(v14) = 4;
  sub_10000BF3C(&v14, v13);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100A9EF34(v13, v8, v10, v11);

  return _swiftEmptyDictionarySingleton;
}

void sub_100966624()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_100D7320C(v2);

  v4 = [v3 start];
  v5 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v5 == NSNotFound.getter())
  {

    return;
  }

  v6 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v7 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }
}

void sub_1009666F8(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_101A06188);
  __chkstk_darwin(v5);
  v7 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v163 - v9;
  __chkstk_darwin(v11);
  v171 = (&v163 - v12);
  __chkstk_darwin(v13);
  v15 = &v163 - v14;
  __chkstk_darwin(v16);
  v172 = (&v163 - v17);
  sub_100960E34();
  if (v18 && (v19 = [v18 selectedTextRange]) != 0)
  {
    v164 = v7;
    v165 = v10;
    v20 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v21 = *(*&a1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v21)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v22 = v19;
    v23 = v21;
    v168 = sub_10078D5E4(v23);

    v24 = *(*&a1[v20] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v24)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v166 = v15;
    v25 = v24;
    v169 = v22;
    v26 = [v22 start];
    v27 = *&v26[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v28 = [v25 paragraphIndexAtCharIndex:v27];
    v167 = v20;
    v29 = *(*&a1[v20] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v29)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v30 = [v29 rangeForParagraphAt:v28];
    v31 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    v170 = v30;
    KeyPath = swift_getKeyPath();
    sub_100946704(KeyPath);
    v34 = v33;

    if (v34)
    {
      v35 = (v34 & 0xFF00) == 512;
    }

    else
    {
      v35 = 1;
    }

    v36 = a1;
    v37 = !v35;
    v173 = v36;
    sub_100935E08();
    v39 = v38;
    if (v37 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = Strong;
        v42 = [Strong commandController];

        if (v42)
        {
          sub_10088E3FC(0);
        }
      }
    }

    v43 = *(*(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v43)
    {
      goto LABEL_70;
    }

    v44 = v43;
    v45 = sub_10078D5E4(v44);

    sub_100940E8C(v45);
    if (v37)
    {
      v46 = v167;
      v47 = *(*&v173[v167] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (!v47)
      {
LABEL_71:
        __break(1u);
        return;
      }

      v48 = [v47 paragraphLevelAtParIndex:v31 & ~(v31 >> 63)];
      v49 = v169;
      v50 = [v169 start];
      v51 = *&v50[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (!v51)
      {
        v76 = v172;
        *v172 = _swiftEmptySetSingleton;
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v80 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x6C7974537473696CLL, 0xE900000000000065);

        __chkstk_darwin(v81);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPListStyleTypeAttribute;
        *(&v163 - 2) = sub_100962180();
        *(&v163 - 1) = v80;
        swift_getKeyPath();
        v178 = 0;
        LOBYTE(v179) = 0;
        sub_1005B981C(qword_101A0CF60);
        sub_1009621D4();
        CRAttributedString.Attributes.subscript.setter();
        v82 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

        __chkstk_darwin(v83);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
        *(&v163 - 2) = sub_100962030();
        *(&v163 - 1) = v82;
        v84 = v173;
        swift_getKeyPath();
        v178 = 0;
        LOBYTE(v179) = 0;
        sub_100962084();
        CRAttributedString.Attributes.subscript.setter();
        v85 = *&v84[v46];
        v86 = *&v168[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v87 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
        v88 = v85;
        v89 = [v87 init:v86 caretAffinity:0];
        NSNotFound.getter();
        v90 = *&v89[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        v91 = *&v89[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
        v92 = type metadata accessor for CRLTextRange();
        v93 = objc_allocWithZone(v92);
        v94 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
        *&v93[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
        *&v93[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
        v95 = &v93[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        *v95 = v90;
        *(v95 + 1) = v90;
        *&v93[v94] = v91;
        v174.receiver = v93;
        v174.super_class = v92;
        v96 = objc_msgSendSuper2(&v174, "init");

        v97 = *&v96[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v98 = *&v96[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

        v99 = v166;
        sub_10000BE14(v76, v166, &qword_101A06188);
        v100 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
        v72 = sub_100961C20(v88, v97, v98, v99);

        v101 = swift_unknownObjectWeakLoadStrong();
        if (!v101 || (v102 = v101, v75 = [v101 commandController], v102, !v75))
        {
          v49 = v169;
          goto LABEL_40;
        }

        sub_100888700(v72, 0, 0, 4, 0);
        goto LABEL_34;
      }

      sub_100006370(0, &qword_1019F54D0);
      v52 = v168;
      if (static NSObject.== infix(_:_:)())
      {
        v53 = v171;
        *v171 = _swiftEmptySetSingleton;
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v54 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

        __chkstk_darwin(v55);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
        *(&v163 - 2) = sub_100962030();
        *(&v163 - 1) = v54;
        swift_getKeyPath();
        v178 = v39;
        LOBYTE(v179) = 0;
        sub_1005B981C(qword_101A0CF60);
        sub_100962084();
        CRAttributedString.Attributes.subscript.setter();
        v56 = *&v173[v46];
        v57 = *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v58 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
        v59 = v56;
        v60 = [v58 init:v57 caretAffinity:0];
        NSNotFound.getter();
        v61 = *&v60[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        v62 = *&v60[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
        v63 = type metadata accessor for CRLTextRange();
        v64 = objc_allocWithZone(v63);
        v65 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
        *&v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
        *&v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
        v66 = &v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        *v66 = v61;
        *(v66 + 1) = v61;
        *&v64[v65] = v62;
        v175.receiver = v64;
        v175.super_class = v63;
        v67 = objc_msgSendSuper2(&v175, "init");

        v68 = *&v67[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v69 = *&v67[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

        v70 = v166;
        sub_10000BE14(v53, v166, &qword_101A06188);
        v71 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
        v72 = sub_100961C20(v59, v68, v69, v70);

        v73 = swift_unknownObjectWeakLoadStrong();
        if (!v73 || (v74 = v73, v75 = [v73 commandController], v74, !v75))
        {
          v76 = v53;
          v49 = v169;
          goto LABEL_42;
        }

        sub_100888700(v72, 0, 0, 4, 0);
        v76 = v53;
LABEL_34:
        v49 = v169;
LABEL_35:

        v72 = v75;
LABEL_40:
        v52 = v168;
LABEL_42:

        sub_10000CAAC(v76, &qword_101A06188);
LABEL_43:
        v107 = swift_unknownObjectWeakLoadStrong();
        if (v107 && (v108 = v107, v109 = [v107 commandController], v108, v109))
        {
          sub_10088E600(0);
        }

        else
        {
        }

        return;
      }

      v103 = v170;
      if (v48 != v39)
      {
        v104 = [v170 start];
        v105 = *&v104[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        if (v105 == NSNotFound.getter())
        {
          v106 = 0;
          v103 = v170;
        }

        else
        {
          v103 = v170;
          v111 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v110 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
          v112 = __OFSUB__(v110, v111);
          v106 = v110 - v111;
          if (v112)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }
        }

        if (!v106)
        {
          v141 = v164;
          *v164 = _swiftEmptySetSingleton;
          sub_10068D144();
          CRAttributedString.Attributes.init()();
          v142 = swift_getKeyPath();
          sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

          __chkstk_darwin(v143);
          *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
          *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
          *(&v163 - 2) = sub_100962030();
          *(&v163 - 1) = v142;
          swift_getKeyPath();
          v178 = v48;
          LOBYTE(v179) = 0;
          sub_1005B981C(qword_101A0CF60);
          sub_100962084();
          CRAttributedString.Attributes.subscript.setter();
          v144 = *&v173[v167];
          v145 = *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v146 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
          v147 = v144;
          v148 = [v146 init:v145 caretAffinity:0];
          NSNotFound.getter();
          v149 = *&v148[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
          v150 = *&v148[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
          v151 = type metadata accessor for CRLTextRange();
          v152 = objc_allocWithZone(v151);
          v153 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
          *&v152[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
          *&v152[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
          v154 = &v152[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          *v154 = v149;
          *(v154 + 1) = v149;
          *&v152[v153] = v150;
          v176.receiver = v152;
          v176.super_class = v151;
          v155 = objc_msgSendSuper2(&v176, "init");

          v156 = *&v155[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v157 = *&v155[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

          v158 = v141;
          v159 = v166;
          sub_10000BE14(v158, v166, &qword_101A06188);
          v160 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
          v72 = sub_100961C20(v147, v156, v157, v159);

          v161 = swift_unknownObjectWeakLoadStrong();
          if (!v161 || (v162 = v161, v75 = [v161 commandController], v162, !v75))
          {
            v76 = v164;
            goto LABEL_42;
          }

          sub_100888700(v72, 0, 0, 4, 0);
          v76 = v164;
          goto LABEL_35;
        }
      }

      v113 = [v103 start];
      v114 = *&v113[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (v114 == NSNotFound.getter())
      {
        v115 = 0;
LABEL_53:
        if (v115)
        {
          goto LABEL_43;
        }

        v118 = v165;
        *v165 = _swiftEmptySetSingleton;
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v119 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

        __chkstk_darwin(v120);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
        *(&v163 - 2) = sub_100962030();
        *(&v163 - 1) = v119;
        swift_getKeyPath();
        v178 = v39;
        LOBYTE(v179) = 0;
        sub_1005B981C(qword_101A0CF60);
        sub_100962084();
        CRAttributedString.Attributes.subscript.setter();
        v121 = *&v173[v167];
        v122 = *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v123 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
        v124 = v121;
        v125 = [v123 init:v122 caretAffinity:0];
        NSNotFound.getter();
        v126 = *&v125[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        v127 = *&v125[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
        v128 = type metadata accessor for CRLTextRange();
        v129 = objc_allocWithZone(v128);
        v130 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
        *&v129[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
        *&v129[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
        v131 = &v129[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        *v131 = v126;
        *(v131 + 1) = v126;
        *&v129[v130] = v127;
        v132 = v118;
        v177.receiver = v129;
        v177.super_class = v128;
        v133 = objc_msgSendSuper2(&v177, "init");

        v134 = *&v133[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v135 = *&v133[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

        v136 = v118;
        v137 = v166;
        sub_10000BE14(v136, v166, &qword_101A06188);
        v138 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0));
        v72 = sub_100961C20(v124, v134, v135, v137);

        v139 = swift_unknownObjectWeakLoadStrong();
        if (!v139)
        {
          v76 = v132;
          goto LABEL_42;
        }

        v140 = v139;
        v75 = [v139 commandController];

        if (!v75)
        {
          v76 = v165;
          goto LABEL_42;
        }

        sub_100888700(v72, 0, 0, 4, 0);
        v76 = v165;
        goto LABEL_35;
      }

      v117 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v116 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
      v112 = __OFSUB__(v116, v117);
      v115 = v116 - v117;
      if (!v112)
      {
        goto LABEL_53;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v79 = v170;
  }

  else
  {
    v77 = *(*(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v77)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v78 = v77;
    v173 = sub_10078D5E4(v78);

    sub_100940E8C(v173);
    v79 = v173;
  }
}

uint64_t sub_1009677CC()
{
  v4 = &type metadata for CRLFeatureFlags;
  v5 = sub_100004D60();
  v3[0] = 16;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v3);
  sub_1005B981C(&unk_101A096E8);
  result = swift_allocObject();
  if (v0)
  {
    *(result + 56) = &_s23InsertSmartListBehaviorVN;
    *(result + 64) = &off_101883370;
    *(result + 96) = &_s23ExtendSmartListBehaviorVN;
    *(result + 104) = &off_101883358;
    *(result + 136) = &_s23RemoveSmartListBehaviorVN;
    *(result + 144) = &off_101883340;
    *(result + 176) = &_s30IncreaseParagraphLevelBehaviorVN;
    v2 = (result + 184);
    *(result + 16) = xmmword_10146D2A0;
  }

  else
  {
    *(result + 16) = xmmword_10146C6B0;
    *(result + 56) = &_s30IncreaseParagraphLevelBehaviorVN;
    v2 = (result + 64);
  }

  *v2 = &off_101883388;
  return result;
}

uint64_t sub_1009678D4(uint64_t result)
{
  if (qword_1019F1570 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v2)
  {
    *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle] = result;
    v3 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009679BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1009679F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100947D60(a1, v4, v5, v6);
}

unint64_t sub_100967AAC()
{
  result = qword_101A09720;
  if (!qword_101A09720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09720);
  }

  return result;
}

uint64_t sub_100967B08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100953654(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100967BD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100967C20(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_100967CF0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100967D38()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100967D90()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_100967F0C()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.TextStroke.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.TextStroke.version.unsafeMutableAddressor()
{
  if (qword_1019F19D0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.TextStroke.version;
}

id static TSContentLanguage.Models.TextStroke.version.getter()
{
  if (qword_1019F19D0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.TextStroke.version;

  return v1;
}

__n128 TSContentLanguage.Models.TextStroke.init(stroke:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.TextStroke.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v10 = v13;
    v11 = v12;
    v7 = v14;
    v6 = v15;
    v8 = v16;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = 0xFFFFFFFE00;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  result = v11;
  *a3 = v11;
  *(a3 + 16) = v10;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
  *(a3 + 48) = v8;
  return result;
}

uint64_t sub_100968114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656B6F727473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656B6F727473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10096822C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009682D8()
{
  String.hash(into:)();
}

Swift::Int sub_100968370()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100968418@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100968B3C(*a1);
  *a2 = result;
  return result;
}

void sub_100968448(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656B6F727473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1009684B0()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656B6F727473;
  }
}

unint64_t sub_100968514@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100968B3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10096853C(uint64_t a1)
{
  v2 = sub_1009692B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100968578(uint64_t a1)
{
  v2 = sub_1009692B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.TextStroke.init(from:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100968B88(a1, v6);
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

uint64_t TSContentLanguage.Models.TextStroke.encode(to:)(void *a1)
{
  v4 = sub_1005B981C(&qword_101A09880);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = *(v1 + 4);
  v9 = *(v1 + 48);
  if (v8 >> 8 != 0xFFFFFFFF || v9 > 0xF)
  {
    v16 = *(v1 + 5);
    v17 = v5;
    sub_100020E58(a1, a1[3]);
    sub_1009692B8();
    v15 = v2;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v11 = v1[1];
    v18 = *v1;
    v19 = v11;
    v20 = v8;
    v21 = v16;
    v22 = v9;
    v23 = 0;
    sub_10096930C();
    v12 = v15;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v12)
    {
      return (*(v17 + 8))(v7, v4);
    }

    else
    {
      LOBYTE(v18) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F19D0 != -1)
      {
        swift_once();
      }

      *&v18 = static TSContentLanguage.Models.TextStroke.version;
      v23 = 2;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v17 + 8))(v7, v4);
    }
  }

  else
  {
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_10002A948(&v18, *(&v19 + 1));
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    return sub_100005070(&v18);
  }
}

BOOL sub_100968914(uint64_t a1, uint64_t a2)
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
  return _s8Freeform17TSContentLanguageO6ModelsO10TextStrokeO21__derived_enum_equalsySbAG_AGtFZ_0(v5, v7);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO10TextStrokeO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t *a1, double *a2)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 48);
  if (a1[4] >> 8 != 0xFFFFFFFF || v5 > 0xF)
  {
    v33 = v2;
    v34 = v3;
    v8 = *a1;
    v9 = *(a1 + 1);
    v10 = a1[3];
    v11 = *a2;
    v12 = a2[1];
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    v15 = *(a2 + 4);
    v16 = *(a2 + 5);
    v17 = *(a2 + 48);
    if (v15 >> 8 == 0xFFFFFFFF && v17 < 0x10)
    {
      return 0;
    }

    if (v5 >> 6)
    {
      if (v5 >> 6 == 1)
      {
        v28 = v8;
        v29 = v9;
        v30 = v10;
        v31 = v4;
        v32 = v5 & 0x3F;
        if ((v17 & 0xC0) == 0x40)
        {
          *v26 = v11;
          *&v26[1] = v12;
          v26[2] = v13;
          v26[3] = v14;
          v26[4] = v15;
          v26[5] = v16;
          v27 = v17 & 0x3F;
          if (_s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(&v28, v26))
          {
            return 1;
          }
        }
      }

      else if ((v17 & 0xC0) == 0x80 && !(*&v12 | *&v11 | v13 | v14 | v15 | v16) && v17 == 128)
      {
        return 1;
      }
    }

    else if (v17 < 0x40)
    {
      v25 = *&v9;
      v20 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v8);
      v22 = v21;
      if (v20 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(SLOBYTE(v11)) && v22 == v23)
      {

        if (v25 == v12)
        {
          return 1;
        }
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) != 0 && v25 == v12)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return *(a2 + 4) >> 8 == 0xFFFFFFFFLL && *(a2 + 48) < 0x10u;
}

unint64_t sub_100968B3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874ED0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100968B88@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v3 = sub_1005B981C(&qword_101A003E8);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CodingUserInfoKey();
  *&v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A098E0);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = a1;
  sub_100020E58(a1, a1[3]);
  sub_1009692B8();
  v11 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    goto LABEL_12;
  }

  *&v35 = v6;
  v12 = v34;
  LOBYTE(v36) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v14)
  {
    goto LABEL_10;
  }

  if (v13 == 0xD00000000000002BLL && v14 == 0x800000010157C340)
  {

    goto LABEL_10;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_10:
    type metadata accessor for TSCLVersion();
    v41 = 2;
    sub_100969804(&qword_101A00400);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v36;
    if (v36)
    {
      if (qword_1019F19D0 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.TextStroke.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v26[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v27 = xmmword_101463530;
        *(v27 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    v29 = v10[3];
    v31[1] = v10[4];
    sub_100020E58(v10, v29);
    dispatch thunk of Decoder.userInfo.getter();
    v41 = 0;
    sub_100969848();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

    v22 = v38;
    v21 = v40;
    if (v38 >> 8 != 0xFFFFFFFF || v40 > 0xFu)
    {
      v32 = v37;
      v35 = v36;
      v30 = v7;
      v20 = v39;
      (*(v12 + 8))(v9, v30);
      goto LABEL_17;
    }

    (*(v12 + 8))(v9, v7);
    goto LABEL_24;
  }

  sub_1007C8648();
  swift_allocError();
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  swift_willThrow();
LABEL_11:
  (*(v12 + 8))(v9, v7);
LABEL_12:
  sub_100020E58(v10, v10[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(&v36, *(&v37 + 1));
  if (dispatch thunk of SingleValueDecodingContainer.decode(_:)() == 1701736302 && v18 == 0xE400000000000000)
  {

LABEL_16:
    sub_100005070(&v36);
    v20 = 0;
    v21 = 0;
    v35 = 0u;
    v22 = 0xFFFFFFFF00;
    v32 = 0u;
LABEL_17:
    result = sub_100005070(v10);
    v24 = v33;
    v25 = v32;
    *v33 = v35;
    v24[1] = v25;
    *(v24 + 4) = v22;
    *(v24 + 5) = v20;
    *(v24 + 48) = v21;
    return result;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_16;
  }

  sub_100005070(&v36);
LABEL_24:
  sub_1007C8648();
  swift_allocError();
  *v28 = xmmword_101478600;
  *(v28 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v10);
}

unint64_t sub_1009692B8()
{
  result = qword_101A09888;
  if (!qword_101A09888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09888);
  }

  return result;
}

unint64_t sub_10096930C()
{
  result = qword_101A09890;
  if (!qword_101A09890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09890);
  }

  return result;
}

unint64_t sub_100969360(uint64_t a1)
{
  *(a1 + 8) = sub_100969390();
  result = sub_1009693E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100969390()
{
  result = qword_101A09898;
  if (!qword_101A09898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A09898);
  }

  return result;
}

unint64_t sub_1009693E4()
{
  result = qword_101A098A0;
  if (!qword_101A098A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098A0);
  }

  return result;
}

unint64_t sub_100969438()
{
  result = qword_101A098A8;
  if (!qword_101A098A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098A8);
  }

  return result;
}

unint64_t sub_10096948C(void *a1)
{
  a1[2] = sub_1009694C4();
  a1[3] = sub_100969518();
  result = sub_10096956C();
  a1[4] = result;
  return result;
}

unint64_t sub_1009694C4()
{
  result = qword_101A098B0;
  if (!qword_101A098B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098B0);
  }

  return result;
}

unint64_t sub_100969518()
{
  result = qword_101A098B8;
  if (!qword_101A098B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098B8);
  }

  return result;
}

unint64_t sub_10096956C()
{
  result = qword_101A098C0;
  if (!qword_101A098C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098C0);
  }

  return result;
}

uint64_t _s10TextStrokeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 49))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 33);
  if (v3 > 0x80000000)
  {
    v4 = ~v3;
  }

  else
  {
    v4 = -1;
  }

  if (v4 + 1 >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t _s10TextStrokeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = ~a2 << 8;
      *(result + 40) = 0;
      *(result + 48) = 0;
    }
  }

  return result;
}

uint64_t sub_100969684(uint64_t a1)
{
  v1 = *(a1 + 33);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

double sub_100969698(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -a2 << 8;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
  }

  return result;
}

unint64_t sub_100969700()
{
  result = qword_101A098C8;
  if (!qword_101A098C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098C8);
  }

  return result;
}

unint64_t sub_100969758()
{
  result = qword_101A098D0;
  if (!qword_101A098D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098D0);
  }

  return result;
}

unint64_t sub_1009697B0()
{
  result = qword_101A098D8;
  if (!qword_101A098D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101A098D8);
  }

  return result;
}