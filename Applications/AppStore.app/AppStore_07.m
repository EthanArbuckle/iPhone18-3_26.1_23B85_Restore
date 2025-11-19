uint64_t sub_1000B66F4(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v2 = sub_10002849C(&unk_1009731C0);
  v60 = *(v2 - 8);
  v61 = v2;
  __chkstk_darwin(v2);
  v58 = v55 - v3;
  v63 = type metadata accessor for Shelf.PresentationHints();
  v66 = *(v63 - 8);
  __chkstk_darwin(v63);
  v5 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentLayoutOptions();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin(v6);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v67 - 8);
  __chkstk_darwin(v67);
  v11 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v55 - v13;
  v15 = sub_10002849C(&unk_1009731D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v55 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  v19 = v18;
  v20 = v8;
  (*(v16 + 8))(v19, v15);
  v21 = v5;
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v22 = sub_100079F24();
  sub_10002C0AC(v70, v69);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for InAppPurchaseLockup();
  if (swift_dynamicCast())
  {
    v24 = v67;
    v23 = v68;
    (*(v9 + 16))(v11, v14, v67);
    type metadata accessor for NilState();
    v25 = v58;
    WritableStateLens.init(_:)();
    v26 = v22;
    sub_100059168(v23, v59, v20, v21, v22);
    v59 = v23;
    InAppPurchaseLockup.parent.getter();
    v27 = Lockup.title.getter();
    v29 = v28;

    if (v29)
    {
      v55[1] = v26;
      v56 = v14;
      v57 = v20;
      v30 = v21;
      v31._countAndFlagsBits = 0x465F4E4F5F444441;
      v31._object = 0xEE005050415F524FLL;
      v32._object = 0x8000000100800630;
      v32._countAndFlagsBits = 0xD000000000000031;
      localizedString(_:comment:)(v31, v32);
      sub_10002849C(&unk_10097E350);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_1007B10D0;
      *(v33 + 56) = &type metadata for String;
      *(v33 + 64) = sub_1000BFD1C();
      *(v33 + 32) = v27;
      *(v33 + 40) = v29;

      String.init(format:_:)();

      v34 = objc_allocWithZone(NSMutableAttributedString);
      v35 = String._bridgeToObjectiveC()();
      v36 = [v34 initWithString:v35];

      v37 = objc_allocWithZone(NSString);
      v38 = String._bridgeToObjectiveC()();

      v39 = [v37 initWithString:v38];

      v40 = String._bridgeToObjectiveC()();

      v41 = [v39 rangeOfString:v40 options:4];
      v43 = v42;

      v44 = v62;
      v45 = [v62 tintColor];
      v69[0] = v45;
      sub_10002849C(&qword_100973268);
      v46 = Optional._bridgeToObjectiveC()();

      [v36 addAttribute:NSForegroundColorAttributeName value:v46 range:{v41, v43}];
      swift_unknownObjectRelease();
      v47 = *(*&v44[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel);
      if (v47)
      {
        v48 = v47;
        v49 = v36;
        [v48 setAttributedText:v49];
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      v50 = v63;
      v51 = v64;
      v53 = v65;
      v52 = v66;
      v21 = v30;
      v24 = v67;
      v20 = v57;
      v14 = v56;
    }

    else
    {
      swift_unknownObjectRelease();
      v50 = v63;
      v51 = v64;
      v53 = v65;
      v52 = v66;
    }

    (*(v60 + 8))(v25, v61);
    (*(v52 + 8))(v21, v50);
    (*(v51 + 8))(v20, v53);
    (*(v9 + 8))(v14, v24);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v66 + 8))(v5, v63);
    (*(v64 + 8))(v8, v65);
    (*(v9 + 8))(v14, v67);
  }

  return sub_100007000(v70);
}

uint64_t sub_1000B6E8C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = sub_10002849C(&unk_1009731C0);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v24 - v2;
  v3 = type metadata accessor for Shelf.PresentationHints();
  v31 = *(v3 - 8);
  v32 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentLayoutOptions();
  v29 = *(v6 - 8);
  v30 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_10002849C(&unk_1009731D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v16 + 8))(v18, v15);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v19 = sub_100079F24();
  sub_10002C0AC(v35, v34);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for LargeHeroBreakout();
  if (swift_dynamicCast())
  {
    v20 = v33;
    v21 = v28;
    (*(v9 + 16))(v11, v14, v28);
    type metadata accessor for NilState();
    v22 = v24;
    WritableStateLens.init(_:)();
    sub_100387CE0(v20, v22, v25, v8, v5, v19);
    swift_unknownObjectRelease();

    (*(v26 + 8))(v22, v27);
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v31 + 8))(v5, v32);
    (*(v29 + 8))(v8, v30);
    (*(v9 + 8))(v14, v28);
  }

  return sub_100007000(v35);
}

uint64_t sub_1000B734C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = sub_10002849C(&unk_1009731C0);
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v35 = &v30 - v3;
  v4 = type metadata accessor for Shelf.PresentationHints();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ComponentLayoutOptions();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v34 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  v15 = sub_10002849C(&unk_1009731D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v16 + 8))(v18, v15);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v45, v44);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for EditorialLink();
  if (swift_dynamicCast())
  {
    v31 = v8;
    v33 = v6;
    v19 = v39;
    v20 = v40;
    v21 = v41;
    v22 = v43;
    v30 = v10;
    v23 = *(v10 + 16);
    v32 = v9;
    v23(v34, v14, v9);
    type metadata accessor for NilState();
    v24 = v35;
    WritableStateLens.init(_:)();
    sub_10002849C(&unk_100973270);
    type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v43 = v22;
    dispatch thunk of LinkLoader.availablePresentation(for:)();

    v25 = v44[0];
    v26 = v14;
    if ((~v44[0] & 0xF000000000000007) != 0)
    {
      v27 = v44[1];
    }

    else
    {

      v27 = 0;
      v25 = v22;
    }

    v28 = v31;
    sub_100510248(v25, v27);
    sub_1000C0220(v25, v27);

    (*(v37 + 8))(v24, v38);
    (*(v20 + 8))(v33, v21);
    (*(v42 + 8))(v28, v19);
    (*(v30 + 8))(v26, v32);
  }

  else
  {
    (*(v40 + 8))(v6, v41);
    (*(v42 + 8))(v8, v39);
    (*(v10 + 8))(v14, v9);
  }

  return sub_100007000(v45);
}

uint64_t sub_1000B78F0(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, char *, uint64_t, char *, char *))
{
  v28 = a4;
  v30 = a3;
  v26 = a2;
  v29 = sub_10002849C(&unk_1009731C0);
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = &v25 - v4;
  v5 = type metadata accessor for Shelf.PresentationHints();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComponentLayoutOptions();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v31 - 8);
  __chkstk_darwin(v31);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = sub_10002849C(&unk_1009731D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v25 - v19;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v18 + 8))(v20, v17);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  sub_10002C0AC(v38, v37);
  sub_10002849C(&qword_100973D50);
  v30(0);
  if (swift_dynamicCast())
  {
    v21 = v36;
    v22 = v31;
    (*(v11 + 16))(v13, v16, v31);
    type metadata accessor for NilState();
    v23 = v25;
    WritableStateLens.init(_:)();
    v28(v21, v23, v26, v10, v7);
    swift_unknownObjectRelease();

    (*(v27 + 8))(v23, v29);
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v22);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v7, v35);
    (*(v32 + 8))(v10, v33);
    (*(v11 + 8))(v16, v31);
  }

  return sub_100007000(v38);
}

uint64_t sub_1000B7DCC(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  ObjectType = swift_getObjectType();
  v28 = sub_10002849C(&unk_1009731C0);
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v24 = &v24 - v2;
  v3 = type metadata accessor for Shelf.PresentationHints();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentLayoutOptions();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v29 - 8);
  __chkstk_darwin(v29);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  v15 = sub_10002849C(&unk_1009731D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v16 + 8))(v18, v15);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v19 = sub_100079F24();
  sub_10002C0AC(v37, v35);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyFooter();
  if (swift_dynamicCast())
  {
    v36 = v34;
    v20 = v29;
    (*(v9 + 16))(v11, v14, v29);
    type metadata accessor for NilState();
    v21 = v24;
    WritableStateLens.init(_:)();
    v22 = sub_1000C10E4(&qword_100973280, type metadata accessor for PrivacyFooterCollectionViewCell);
    (*(v22 + 56))(&v36, v21, v27, v8, v5, v19, ObjectType, v22);
    swift_unknownObjectRelease();
    (*(v25 + 8))(v21, v28);
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v20);
    sub_100007000(v37);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v32 + 8))(v5, v33);
    (*(v30 + 8))(v8, v31);
    (*(v9 + 8))(v14, v29);
    return sub_100007000(v37);
  }
}

size_t sub_1000B8308(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v94 = a2;
  v2 = sub_10002849C(&qword_100973288);
  v3 = *(v2 - 8);
  v92 = v2;
  v93 = v3;
  __chkstk_darwin(v2);
  v91 = &v71 - v4;
  v81 = type metadata accessor for Separator.Position();
  v76 = *(v81 - 8);
  __chkstk_darwin(v81);
  v82 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&unk_100970E10);
  __chkstk_darwin(v6 - 8);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v71 - v9;
  v10 = sub_10002849C(&unk_100993020);
  __chkstk_darwin(v10 - 8);
  v80 = &v71 - v11;
  v79 = sub_10002849C(&unk_1009731C0);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v83 = &v71 - v12;
  v13 = type metadata accessor for Shelf.PresentationHints();
  v86 = *(v13 - 8);
  v87 = v13;
  __chkstk_darwin(v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for ComponentLayoutOptions();
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10002849C(&unk_10097DAF0);
  v18 = *(v89 - 8);
  __chkstk_darwin(v89);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v71 - v22;
  v24 = sub_10002849C(&unk_1009731D0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v71 - v26;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v25 + 8))(v27, v24);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v99, v96);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyHeader();
  if (!swift_dynamicCast())
  {
    (*(v86 + 8))(v15, v87);
    (*(v84 + 8))(v17, v85);
    (*(v18 + 8))(v23, v89);
    return sub_100007000(v99);
  }

  v72 = v17;
  v73 = v15;
  v28 = v95;
  (*(v18 + 16))(v20, v23, v89);
  type metadata accessor for NilState();
  v29 = v28;
  WritableStateLens.init(_:)();
  v96[0] = PrivacyHeader.bodyText.getter();
  type metadata accessor for LinkableText();
  v30 = type metadata accessor for BaseObjectGraph();
  sub_1000C10E4(&qword_100973290, &type metadata accessor for LinkableText);
  v31 = v80;
  v90 = v30;
  ComponentModel.pairedWith<A>(objectGraph:)();

  v32 = sub_10002849C(&unk_100993030);
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  v34 = v88;
  swift_beginAccess();
  sub_1000C112C(v31, v34 + v33, &unk_100993020);
  swift_endAccess();
  sub_1004C3F10();
  sub_10002B894(v31, &unk_100993020);
  v35 = PrivacyHeader.isDetailHeader.getter();
  *(v34 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader) = v35 & 1;
  v36 = *(v34 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100005744(0, &qword_100970180);
  v71 = v23;
  if (v35)
  {
    v37 = static UIColor.primaryText.getter();
  }

  else
  {
    v37 = static UIColor.secondaryText.getter();
  }

  v38 = *(v36 + qword_10097F920);
  *(v36 + qword_10097F920) = v37;
  v39 = v37;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1002F63D4();
  }

  v80 = v29;
  v40 = PrivacyHeader.supplementaryItems.getter();
  v41 = v40;
  if (v40 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v74 = v18;
  if (!v42)
  {

    v45 = _swiftEmptyArrayStorage;
    v51 = v82;
    v50 = v88;
LABEL_21:
    sub_1004C56C0();
    v52 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
    *(v50 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems) = v45;

    sub_1004C41B4();
    if (PrivacyHeader.isDetailHeader.getter())
    {
      v53 = *(v76 + 104);
      LODWORD(v93) = enum case for Separator.Position.top(_:);
      v92 = v53;
      v53(v51);
      v91 = type metadata accessor for ZeroDimension();
      v97 = v91;
      v98 = &protocol witness table for ZeroDimension;
      sub_1000056E0(v96);
      static ZeroDimension.zero.getter();
      v54 = v77;
      Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
      v55 = type metadata accessor for Separator();
      v56 = 1;
      v94 = *(*(v55 - 8) + 56);
      v94(v54, 0, 1, v55);
      v57 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000C112C(v54, v50 + v57, &unk_100970E10);
      swift_endAccess();
      v58 = v50;
      sub_1004C4970();
      sub_10002B894(v54, &unk_100970E10);
      if (*(*(v50 + v52) + 16))
      {
        v92(v82, v93, v81);
        v97 = v91;
        v98 = &protocol witness table for ZeroDimension;
        sub_1000056E0(v96);
        static ZeroDimension.zero.getter();
        v59 = v75;
        Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
        v56 = 0;
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
      }

      else
      {
        v60 = v79;
        v62 = v86;
        v61 = v87;
        v63 = v78;
        v59 = v75;
      }

      v94(v59, v56, 1, v55);
      v69 = v59;
      v70 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000C112C(v69, v58 + v70, &unk_100970E10);
      swift_endAccess();
      sub_1004C4984();

      sub_10002B894(v69, &unk_100970E10);
      (*(v63 + 8))(v83, v60);
      (*(v62 + 8))(v73, v61);
    }

    else
    {
      v64 = type metadata accessor for Separator();
      v65 = *(*(v64 - 8) + 56);
      v66 = v77;
      v65(v77, 1, 1, v64);
      v67 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
      swift_beginAccess();
      sub_1000C112C(v66, v50 + v67, &unk_100970E10);
      swift_endAccess();
      sub_1004C4970();
      sub_10002B894(v66, &unk_100970E10);
      v65(v66, 1, 1, v64);
      v68 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
      swift_beginAccess();
      sub_1000C112C(v66, v50 + v68, &unk_100970E10);
      swift_endAccess();
      sub_1004C4984();

      sub_10002B894(v66, &unk_100970E10);
      (*(v78 + 8))(v83, v79);
      (*(v86 + 8))(v73, v87);
    }

    (*(v84 + 8))(v72, v85);
    (*(v74 + 8))(v71, v89);
    return sub_100007000(v99);
  }

  v96[0] = _swiftEmptyArrayStorage;
  result = sub_100144004(0, v42 & ~(v42 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v44 = 0;
    v45 = v96[0];
    do
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v46 = *(v41 + 8 * v44 + 32);
      }

      v95 = v46;
      type metadata accessor for PrivacyHeaderSupplementaryItem();
      sub_1000C10E4(&qword_100973298, &type metadata accessor for PrivacyHeaderSupplementaryItem);
      v47 = v91;
      ComponentModel.pairedWith<A>(objectGraph:)();

      v96[0] = v45;
      v49 = *(v45 + 2);
      v48 = *(v45 + 3);
      if (v49 >= v48 >> 1)
      {
        sub_100144004(v48 > 1, v49 + 1, 1);
        v45 = v96[0];
      }

      ++v44;
      *(v45 + 2) = v49 + 1;
      (*(v93 + 32))(v45 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v49, v47, v92);
    }

    while (v42 != v44);

    v50 = v88;
    v51 = v82;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B9184(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v30 = sub_10002849C(&unk_1009731C0);
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v34 = v29 - v2;
  v3 = type metadata accessor for Shelf.PresentationHints();
  v38 = *(v3 - 8);
  v39 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentLayoutOptions();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v29 - v13;
  v15 = sub_10002849C(&unk_1009731D0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v29 - v17;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v16 + 8))(v18, v15);
  ItemLayoutContext.mutableState.getter();
  v33 = v8;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  v35 = v5;
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v42, v41);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductCapability();
  if (swift_dynamicCast())
  {
    (*(v9 + 16))(v11, v14, v40);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v19 = v32;
    v20 = *&v32[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_titleLabel];
    ProductCapability.title.getter();
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    ProductCapability.caption.getter();
    v22 = ProductCapability.captionTrailingArtwork.getter();
    v23 = LinkableText.linkedSubstrings.getter();
    v24 = sub_1000D6F24(v23, sub_1000C17B0);

    v25 = LinkableText.styledText.getter();
    sub_1002F6004(v25, v22, v24);

    v26 = *&v19[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_iconImageView];
    v27 = ProductCapability.artworkTintColor.getter();
    [v26 setTintColor:v27];

    *&v19[OBJC_IVAR____TtC8AppStore21ProductCapabilityCell_icon] = ProductCapability.artwork.getter();

    [v19 setNeedsLayout];

    (*(v31 + 8))(v34, v30);
  }

  (*(v38 + 8))(v35, v39);
  (*(v36 + 8))(v33, v37);
  (*(v9 + 8))(v14, v40);
  return sub_100007000(v42);
}

uint64_t sub_1000B9734(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&unk_100975ED0);
  __chkstk_darwin(v2 - 8);
  v61 = &v51 - v3;
  v60 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v60);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v59 = (&v51 - v6);
  v66 = sub_10002849C(&unk_1009732B0);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v72 = &v51 - v7;
  v64 = sub_10002849C(&unk_1009731C0);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v70 = &v51 - v8;
  v68 = type metadata accessor for Shelf.PresentationHints();
  v71 = *(v68 - 8);
  __chkstk_darwin(v68);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ComponentLayoutOptions();
  v11 = *(v69 - 8);
  __chkstk_darwin(v69);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_10097DAF0);
  v73 = *(v14 - 8);
  v74 = v14;
  __chkstk_darwin(v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = sub_10002849C(&unk_1009731D0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - v22;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v21 + 8))(v23, v20);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v24 = sub_100079F24();
  sub_10002C0AC(v79, v78);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for SmallBreakout();
  if (swift_dynamicCast())
  {
    v53 = v13;
    v55 = v11;
    v25 = v68;
    v26 = v77;
    v27 = *(v73 + 16);
    v52 = v19;
    v27(v16, v19, v74);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v28 = [v24 snapshotPageTraitEnvironment];
    v29 = v58;
    *&v58[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_pageTraits] = v28;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    [v29 setNeedsLayout];
    swift_unknownObjectRelease();
    v57 = v26;
    SmallBreakout.details.getter();
    v30 = BreakoutDetails.badgeColorOverride.getter();

    v54 = v10;
    if (v30)
    {
      v31 = v65;
      if (qword_10096D008 != -1)
      {
        swift_once();
      }

      v32 = sub_1000056A8(v60, qword_1009CDEA0);
      v33 = v59;
      sub_1000C2608(v32, v59);
      v34 = *v33;
      v35 = v30;

      *v33 = v30;
      sub_1000C2608(v33, v56);
      sub_10002849C(&qword_100973F50);
      v36 = v72;
      Conditional<>.init(value:)();

      sub_1000C266C(v33);
    }

    else
    {
      v31 = v65;
      if (qword_10096D008 != -1)
      {
        swift_once();
      }

      v37 = sub_1000056A8(v60, qword_1009CDEA0);
      sub_1000C2608(v37, v59);
      sub_10002849C(&qword_100973F50);
      v36 = v72;
      Conditional<>.init(value:)();
    }

    v38 = v66;
    v39 = v29;
    v40 = SmallBreakout.details.getter();
    v41 = v61;
    (*(v31 + 16))(v61, v36, v38);
    (*(v31 + 56))(v41, 0, 1, v38);
    sub_1003A9938(v40, v41, v62);

    sub_10002B894(v41, &unk_100975ED0);
    v42 = SmallBreakout.backgroundColor.getter();
    if (!v42)
    {
      v42 = [objc_opt_self() clearColor];
    }

    v43 = v42;
    v44 = v71;
    v45 = v69;
    v46 = ObjectType;
    v76.receiver = v39;
    v76.super_class = ObjectType;
    objc_msgSendSuper2(&v76, "setBackgroundColor:", v42);
    v47 = *&v39[OBJC_IVAR____TtC8AppStore31SmallBreakoutCollectionViewCell_iconView];
    v75.receiver = v39;
    v75.super_class = v46;
    v48 = v47;
    v49 = objc_msgSendSuper2(&v75, "backgroundColor");
    ArtworkView.backgroundColor.setter();

    [v39 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v31 + 8))(v72, v38);
    (*(v63 + 8))(v70, v64);
    (*(v44 + 8))(v54, v25);
    (*(v55 + 8))(v53, v45);
    (*(v73 + 8))(v52, v74);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v71 + 8))(v10, v68);
    (*(v11 + 8))(v13, v69);
    (*(v73 + 8))(v19, v74);
  }

  return sub_100007000(v79);
}

uint64_t sub_1000BA0F4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v36 = type metadata accessor for SmallPlayerCardData();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v34 = &v33 - v4;
  v38 = sub_10002849C(&unk_1009731C0);
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v44 = &v33 - v5;
  v6 = type metadata accessor for Shelf.PresentationHints();
  v45 = *(v6 - 8);
  v46 = v6;
  __chkstk_darwin(v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ComponentLayoutOptions();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10002849C(&unk_10097DAF0);
  v12 = *(v47 - 8);
  __chkstk_darwin(v47);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_10002849C(&unk_1009731D0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - v20;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v19 + 8))(v21, v18);
  ItemLayoutContext.mutableState.getter();
  v40 = v11;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  v41 = v8;
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v50, v49);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ImpressionableSmallPlayerCard();
  if (swift_dynamicCast())
  {
    v22 = v48;
    (*(v12 + 16))(v14, v17, v47);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v23 = v33;
    ImpressionableSmallPlayerCard.data.getter();
    v24 = v34;
    sub_100135F78(v34);
    v25 = *(v35 + 8);
    v26 = v23;
    v27 = v36;
    v25(v26, v36);
    dispatch thunk of SmallPlayerCardView.apply(data:shouldSetImage:)();
    v25(v24, v27);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v30 = v39;
    v29[2] = v22;
    v29[3] = v30;
    v29[4] = v28;

    dispatch thunk of SmallPlayerCardView.buttonActionBlock.setter();

    v31 = swift_allocObject();
    *(v31 + 16) = v22;
    *(v31 + 24) = v30;

    dispatch thunk of SmallPlayerCardView.closeButtonActionBlock.setter();

    (*(v37 + 8))(v44, v38);
  }

  (*(v45 + 8))(v41, v46);
  (*(v42 + 8))(v40, v43);
  (*(v12 + 8))(v17, v47);
  return sub_100007000(v50);
}

uint64_t sub_1000BA75C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v20 = type metadata accessor for Shelf.PresentationHints();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ComponentLayoutOptions();
  v4 = *(v17 - 8);
  __chkstk_darwin(v17);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10002849C(&unk_10097DAF0);
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - v8;
  v10 = sub_10002849C(&unk_1009731D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v11 + 8))(v13, v10);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  sub_100700C88(v21, v9, v19);
  swift_unknownObjectRelease();
  (*(v18 + 8))(v3, v20);
  (*(v4 + 8))(v6, v17);
  (*(v7 + 8))(v9, v16);
  return sub_100007000(v21);
}

uint64_t sub_1000BAA7C(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v2 = sub_10002849C(&unk_1009732C0);
  __chkstk_darwin(v2 - 8);
  v40 = &v37 - v3;
  v4 = sub_10002849C(&unk_1009731C0);
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v37 - v5;
  v47 = type metadata accessor for Shelf.PresentationHints();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComponentLayoutOptions();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v46 - 8);
  __chkstk_darwin(v46);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  v17 = sub_10002849C(&unk_1009731D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v37 - v19;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v18 + 8))(v20, v17);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v52, v51);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ArcadeDownloadPackCard();
  if (swift_dynamicCast())
  {
    v39 = v7;
    v38 = v11;
    v21 = *(v11 + 16);
    v22 = v46;
    v21(v13, v16, v46);
    type metadata accessor for NilState();
    v23 = v42;
    WritableStateLens.init(_:)();
    v24 = ArcadeDownloadPackCard.numberOfPlaceholders.getter();
    if (v25)
    {
      v26 = v45;
      v37 = *&v45[OBJC_IVAR____TtC8AppStore36ArcadeDownloadPackCollectionViewCell_cardView];
      v27 = ArcadeDownloadPackCard.lockups.getter();
      v28 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
      v29 = v10;
      v30 = v40;
      (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
      sub_1002F1F30(v27, v30, 1, v41);

      v31 = v30;
      v10 = v29;
      sub_10002B894(v31, &unk_1009732C0);
      [v26 layoutIfNeeded];
    }

    else
    {
      sub_1002F1C34(v24);
    }

    v32 = v47;
    v33 = v48;
    v34 = v49;
    v35 = v50;

    (*(v43 + 8))(v23, v44);
    (*(v35 + 8))(v39, v32);
    (*(v33 + 8))(v10, v34);
    (*(v38 + 8))(v16, v22);
  }

  else
  {
    (*(v50 + 8))(v7, v47);
    (*(v48 + 8))(v10, v49);
    (*(v11 + 8))(v16, v46);
  }

  return sub_100007000(v52);
}

uint64_t sub_1000BB074(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v2 = sub_10002849C(&unk_1009731C0);
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = type metadata accessor for Shelf.PresentationHints();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v31 = *(v7 - 8);
  v32 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v30 - 8);
  __chkstk_darwin(v30);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_10002849C(&unk_1009731D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v17 + 8))(v19, v16);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  sub_10002C0AC(v37, v36);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppEvent();
  if (swift_dynamicCast())
  {
    v20 = v35;
    v21 = v30;
    (*(v10 + 16))(v12, v15, v30);
    type metadata accessor for NilState();
    v22 = v25;
    WritableStateLens.init(_:)();
    v23 = v27;
    sub_100168944(v20, v26);
    [v23 setNeedsLayout];
    swift_unknownObjectRelease();

    (*(v28 + 8))(v22, v29);
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v21);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v33 + 8))(v6, v34);
    (*(v31 + 8))(v9, v32);
    (*(v10 + 8))(v15, v30);
  }

  return sub_100007000(v37);
}

uint64_t sub_1000BB534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000C10E4(&unk_1009731B0, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1000BB5E4@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_10002849C(&unk_1009731F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v27 - v3;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v2 + 8))(v4, v1);
  LODWORD(v1) = v29;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v9(v8, v5);
  v12 = ShelfLayoutContext.traitCollection.getter();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v28.receiver = v14;
  v28.super_class = v13;
  v16 = objc_msgSendSuper2(&v28, "init");
  v17 = v16;
  if (v1 == 1)
  {
    v18 = [v16 traitCollection];
    v19 = UITraitCollection.isRegularPad.getter();

    if (v19)
    {
      [v17 pageContainerSize];
      sub_10048F38C(v20, v21);
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    else
    {
      [v17 pageMarginInsets];
      [v17 pageContainerSize];
    }

    PageTraitEnvironment.pageColumnMargin.getter();
    v22 = qword_10096D050;
  }

  else
  {
    v22 = qword_10096D050;
  }

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for AspectRatio();
  sub_1000056A8(v23, qword_1009CDF98);
  AspectRatio.height(fromWidth:)();
  v24 = v27;
  ComponentPrefetchSizing.init(size:contentMode:)();

  v25 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
}

uint64_t sub_1000BB998@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_10002849C(&unk_1009731F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v23 - v3;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v2 + 8))(v4, v1);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v9(v8, v5);
  v12 = ShelfLayoutContext.traitCollection.getter();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v24.receiver = v14;
  v24.super_class = v13;
  v16 = objc_msgSendSuper2(&v24, "init");
  v17 = [v16 traitCollection];
  LOBYTE(v1) = UITraitCollection.isRegularPad.getter();

  if (v1)
  {
    [v16 pageContainerSize];
    sub_10048F38C(v18, v19);
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  else
  {
    [v16 pageMarginInsets];
    [v16 pageContainerSize];
  }

  PageTraitEnvironment.pageColumnMargin.getter();
  v20 = v23;
  ComponentPrefetchSizing.init(size:contentMode:)();

  v21 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
}

uint64_t sub_1000BBCD8@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = sub_10002849C(&unk_1009731F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v2 + 8))(v4, v1);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v9(v8, v5);
  v12 = ShelfLayoutContext.traitCollection.getter();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v21.receiver = v14;
  v21.super_class = v13;

  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SmallLockupLayout.Metrics();
  sub_1000056A8(v16, qword_1009D3798);
  SmallLockupLayout.Metrics.artworkSize.getter();
  v17 = v20;
  ComponentPrefetchSizing.init(size:contentMode:)();
  v18 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_1000BBFC8@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_10002849C(&unk_100970EA0);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  __chkstk_darwin(v1);
  v32 = &v29 - v3;
  v33 = type metadata accessor for MediumLockupLayout.Metrics();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009731F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v13 = *(v10 + 8);
  v13(v12, v9);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v6 + 8))(v8, v5);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v15 = v14;
  v13(v12, v9);
  v16 = ShelfLayoutContext.traitCollection.getter();
  v17 = type metadata accessor for SnapshotPageTraitEnvironment();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v19 = v15;
  *(v19 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v18[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v16;
  v38.receiver = v18;
  v38.super_class = v17;
  v20 = objc_msgSendSuper2(&v38, "init");
  v21 = [v20 traitCollection];
  v22 = v30;
  sub_100631334(v30);

  v23 = v32;
  MediumLockupLayout.Metrics.artworkSize.getter();
  (*(v31 + 8))(v22, v33);
  v37 = v20;
  v24 = v20;
  v25 = v34;
  Conditional.evaluate(with:)();
  (*(v35 + 8))(v23, v25);

  v26 = v36;
  ComponentPrefetchSizing.init(size:contentMode:)();

  v27 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_1000BC410@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = type metadata accessor for AspectRatio();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&unk_1009731F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v29 - v5;
  v7 = type metadata accessor for PageGrid();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v11 = *(v8 + 8);
  v11(v10, v7);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v4 + 8))(v6, v3);
  LODWORD(v4) = v35;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v13 = v12;
  v11(v10, v7);
  v14 = ShelfLayoutContext.traitCollection.getter();
  v15 = type metadata accessor for SnapshotPageTraitEnvironment();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v17 = v13;
  *(v17 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v16[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v14;
  v34.receiver = v16;
  v34.super_class = v15;
  v18 = objc_msgSendSuper2(&v34, "init");
  v19 = v18;
  if (v4 == 1)
  {
    v20 = [v18 traitCollection];
    v21 = UITraitCollection.isRegularPad.getter();

    if (v21)
    {
      [v19 pageContainerSize];
      sub_10048F38C(v22, v23);
      PageTraitEnvironment.pageColumnMargin.getter();
    }

    else
    {
      [v19 pageMarginInsets];
      [v19 pageContainerSize];
    }
  }

  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for FlowcaseItemLayout.Metrics();
  sub_1000056A8(v24, qword_1009CEA50);
  v25 = v30;
  FlowcaseItemLayout.Metrics.artworkAspectRatio.getter();
  AspectRatio.height(fromWidth:)();
  (*(v31 + 8))(v25, v32);
  v26 = v33;
  ComponentPrefetchSizing.init(size:contentMode:)();

  v27 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
}

uint64_t sub_1000BC848@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_10002849C(&unk_1009731F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - v3;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v9 = *(v6 + 8);
  v9(v8, v5);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v2 + 8))(v4, v1);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v11 = v10;
  v9(v8, v5);
  v12 = ShelfLayoutContext.traitCollection.getter();
  v13 = type metadata accessor for SnapshotPageTraitEnvironment();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v15 = v11;
  *(v15 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v14[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v12;
  v19.receiver = v14;
  v19.super_class = v13;

  v16 = type metadata accessor for ComponentPrefetchSizing();
  return (*(*(v16 - 8) + 56))(v18, 1, 1, v16);
}

uint64_t sub_1000BCBD0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v22 = a5;
  v23 = a4;
  v21[1] = a2;
  v7 = type metadata accessor for ShelfLayoutContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100992470);
  __chkstk_darwin(v11 - 8);
  v13 = v21 - v12;
  v14 = type metadata accessor for ComponentPrefetchSizing();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v23(v10, a3);
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10002B894(v13, &qword_100992470);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_1000BD65C(a1);
  __chkstk_darwin(v19);
  v21[-2] = v17;
  v20._rawValue = sub_1000B40B8(v22, &v21[-4], v19);

  if (v20._rawValue >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v20._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    ArtworkLoader.prefetchArtwork(using:)(v20);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_1000BCEDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v20 = a4;
  v19 = a2;
  v5 = type metadata accessor for ShelfLayoutContext();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100992470);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for ComponentPrefetchSizing();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  sub_1000BC848(v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_10002B894(v11, &qword_100992470);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_1000BD65C(a1);
  __chkstk_darwin(v17);
  *(&v19 - 2) = v15;
  v18._rawValue = sub_1000B40B8(v20, (&v19 - 4), v17);

  if (v18._rawValue >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*((v18._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    ArtworkLoader.prefetchArtwork(using:)(v18);
  }

LABEL_6:

  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1000BD1B4()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000C10E4(&qword_100973218, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1000BD228(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000C10E4(&qword_100973218, type metadata accessor for AppPromotionOfferCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000BD2B4(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000C10E4(&qword_100973218, type metadata accessor for AppPromotionOfferCollectionViewCell);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

void sub_1000BD370(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1000BD3B8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  sub_100005744(0, &qword_100972EB0);
  v6 = v5;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t sub_1000BD558(void *a1)
{
  a1[1] = sub_1000C10E4(&qword_100973198, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[2] = sub_1000C10E4(&qword_1009731A0, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[3] = sub_1000C10E4(&qword_1009731A8, type metadata accessor for AppPromotionOfferCollectionViewCell);
  result = sub_1000C10E4(&unk_1009731B0, type metadata accessor for AppPromotionOfferCollectionViewCell);
  a1[4] = result;
  return result;
}

uint64_t sub_1000BD62C@<X0>(_BYTE *a1@<X8>)
{
  result = Shelf.isHorizontal.getter();
  *a1 = result & 1;
  return result;
}

double *sub_1000BD65C(uint64_t a1)
{
  v2 = type metadata accessor for Shelf.ContentType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_10002849C(&unk_1009731F0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_1000C10E4(&qword_100972720, &type metadata accessor for Shelf.ContentType);
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_10002849C(&unk_100973200);
      ItemLayoutContext.typedModel<A>(as:)();
      if (v26)
      {
        sub_100005A38(&v25, v27);
        sub_10002A400(v27, v27[3]);
        v17 = dispatch thunk of ArtworkModelProtocol.artwork.getter();
        if (v17)
        {
          v18 = v17;
          sub_10002849C(&qword_100973210);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1007B0B70;
          *(v19 + 32) = v18;
          sub_100007000(v27);
          return v19;
        }

        sub_100007000(v27);
      }

      else
      {
        sub_10002B894(&v25, &unk_100990B70);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1000BDA7C()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AutomationSemantics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  v7 = type metadata accessor for ItemLayoutContext();
  (*(*(v7 - 8) + 56))(&v0[v6], 1, 1, v7);
  *&v0[OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView] = [objc_allocWithZone(type metadata accessor for AppPromotionView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView;
  v10 = *&v8[OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView];
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  v11 = v8;
  v12 = v10;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v17, &unk_1009711D0);
  sub_10002B894(v18, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v3 + 8))(v5, v2);
  v13 = [v11 contentView];
  [v13 setClipsToBounds:0];

  v14 = [v11 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v11 contentView];
  [v15 addSubview:*&v8[v9]];

  return v11;
}

uint64_t sub_1000BDD4C()
{
  v75 = sub_10002849C(&unk_100973220);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v76 = &v65 - v0;
  v72 = type metadata accessor for AchievementGroupView.Size();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v73 = &v65 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for Achievement();
  v81 = *(v2 - 8);
  v82 = v2;
  __chkstk_darwin(v2);
  v70 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v80 = &v65 - v5;
  v79 = sub_10002849C(&unk_1009731C0);
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v84 = &v65 - v6;
  v7 = type metadata accessor for Shelf.PresentationHints();
  v86 = *(v7 - 8);
  v87 = v7;
  __chkstk_darwin(v7);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ComponentLayoutOptions();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10002849C(&unk_10097DAF0);
  v12 = *(v88 - 8);
  __chkstk_darwin(v88);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v65 - v16;
  v18 = sub_10002849C(&unk_1009731D0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v65 - v20;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  v22 = v18;
  v23 = v17;
  (*(v19 + 8))(v21, v22);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v24 = sub_100079F24();
  sub_10002C0AC(v90, v89);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AchievementSummary();
  if (swift_dynamicCast())
  {
    v67 = v11;
    v68 = v9;
    v69 = v12;
    v25 = *(v12 + 16);
    v66 = v23;
    v25(v14, v23, v88);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v26 = v77;
    v27 = *(v77 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_numberCompletedLabel);
    v28 = AchievementSummary.completedAchievements.getter();
    v29._object = 0x80000001008005F0;
    v29._countAndFlagsBits = 0xD000000000000032;
    v30._countAndFlagsBits = 0;
    v30._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v29, v28, v30);
    v31 = String._bridgeToObjectiveC()();

    [v27 setText:v31];

    v32 = *(v26 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_outOfTotalLabel);
    v33 = [v24 traitCollection];
    sub_10059DF60();

    v34 = String._bridgeToObjectiveC()();

    [v32 setText:v34];

    v35 = *(v26 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_completedLabel);
    AchievementSummary.completedText.getter();
    v36 = String._bridgeToObjectiveC()();

    [v35 setText:v36];

    v37 = AchievementSummary.achievements.getter();
    if (*(v37 + 16))
    {
      v38 = v80;
      v39 = *(v81 + 16);
      v40 = v82;
      v39(v80, v37 + ((*(v81 + 80) + 32) & ~*(v81 + 80)), v82);

      v39(v70, v38, v40);
      AchievementSummary.totalAchievements.getter();
      v41 = [v24 traitCollection];
      LOBYTE(v39) = UITraitCollection.isSizeClassCompact.getter();

      v42 = &enum case for AchievementGroupView.Size.phone(_:);
      if ((v39 & 1) == 0)
      {
        v42 = &enum case for AchievementGroupView.Size.pad(_:);
      }

      (*(v71 + 104))(v73, *v42, v72);
      v43 = objc_allocWithZone(type metadata accessor for AchievementGroupView());
      v44 = AchievementGroupView.init(visibleModel:showSecondCard:cardSize:)();
      v45 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
      v46 = *(v26 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
      v47 = v86;
      if (v46)
      {
        [v46 removeFromSuperview];
        v48 = *(v26 + v45);
      }

      else
      {
        v48 = 0;
      }

      v53 = v84;
      v54 = v69;
      *(v26 + v45) = v44;
      v55 = v44;

      [*(v26 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_containerView) addSubview:v55];
      if (AchievementSummary.totalAchievements.getter() < 2)
      {
        v56 = v87;
        v57 = v83;
        if (qword_10096D9F0 != -1)
        {
          swift_once();
        }

        v58 = qword_1009CFC48;
      }

      else
      {
        v56 = v87;
        v57 = v83;
        if (qword_10096D9F8 != -1)
        {
          swift_once();
        }

        v58 = qword_1009CFC60;
      }

      v59 = v75;
      v60 = sub_1000056A8(v75, v58);
      (*(v74 + 16))(v76, v60, v59);
      swift_beginAccess();
      AchievementSummaryLayout.Metrics.achievementStackInsets.setter();
      swift_endAccess();
      swift_unknownObjectRelease();

      (*(v81 + 8))(v80, v82);
      (*(v78 + 8))(v53, v79);
      (*(v47 + 8))(v68, v56);
      (*(v85 + 8))(v67, v57);
    }

    else
    {

      v49 = OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView;
      v50 = *(v26 + OBJC_IVAR____TtC8AppStore36AchievementSummaryCollectionViewCell_achievementGroupView);
      v51 = v86;
      if (v50)
      {
        [v50 removeFromSuperview];
        v52 = *(v26 + v49);
      }

      else
      {
        v52 = 0;
      }

      v61 = v83;
      v62 = v84;
      v63 = v85;
      v54 = v69;
      *(v26 + v49) = 0;
      swift_unknownObjectRelease();

      (*(v78 + 8))(v62, v79);
      (*(v51 + 8))(v68, v87);
      (*(v63 + 8))(v67, v61);
    }

    (*(v54 + 8))(v66, v88);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v86 + 8))(v9, v87);
    (*(v85 + 8))(v11, v83);
    (*(v12 + 8))(v23, v88);
  }

  return sub_100007000(v90);
}

uint64_t sub_1000BE870()
{
  v41 = sub_10002849C(&unk_1009731C0);
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v45 = &v36 - v0;
  v1 = type metadata accessor for Shelf.PresentationHints();
  v43 = *(v1 - 8);
  v44 = v1;
  __chkstk_darwin(v1);
  v38 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v36 - v4;
  v6 = type metadata accessor for ComponentLayoutOptions();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v36 - v14;
  v16 = sub_10002849C(&unk_1009731D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v17 + 8))(v19, v16);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v49, v48);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Brick();
  if (swift_dynamicCast())
  {
    v37 = v9;
    v20 = v5;
    v22 = v43;
    v21 = v44;
    v23 = *(v10 + 16);
    v36 = v15;
    v24 = v15;
    v25 = v42;
    v23(v12, v24, v42);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    Brick.accessibilityLabel.getter();
    if (v26)
    {
      v27 = String._bridgeToObjectiveC()();
    }

    else
    {
      v27 = 0;
    }

    v28 = v40;
    [v40 setAccessibilityLabel:v27];

    v29 = v38;
    static Shelf.PresentationHints.showSupplementaryText.getter();
    sub_1000C10E4(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
    v30 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v31 = *(v22 + 8);
    v31(v29, v21);
    if (v30)
    {
      v32 = Brick.shortEditorialDescription.getter();
      v33 = &v28[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
      *v33 = v32;
      v33[1] = v34;

      sub_1000F88B0();
    }

    (*(v39 + 8))(v45, v41);
    v31(v20, v21);
    (*(v47 + 8))(v37, v46);
    (*(v10 + 8))(v36, v25);
  }

  else
  {
    (*(v43 + 8))(v5, v44);
    (*(v47 + 8))(v9, v46);
    (*(v10 + 8))(v15, v42);
  }

  return sub_100007000(v49);
}

uint64_t sub_1000BEE20()
{
  v0 = sub_10002849C(&unk_1009731C0);
  v30 = *(v0 - 8);
  v31 = v0;
  __chkstk_darwin(v0);
  v28 = &v27 - v1;
  v2 = type metadata accessor for Shelf.PresentationHints();
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentLayoutOptions();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&unk_10097DAF0);
  v8 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = sub_10002849C(&unk_1009731D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v15 + 8))(v17, v14);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v18 = sub_100079F24();
  sub_10002C0AC(v38, v37);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for EditorialQuote();
  if (swift_dynamicCast())
  {
    v19 = v32;
    (*(v8 + 16))(v10, v13, v32);
    type metadata accessor for NilState();
    v20 = v28;
    WritableStateLens.init(_:)();
    v21 = [v29 contentView];
    [v18 pageMarginInsets];
    [v21 setLayoutMargins:?];

    v22 = EditorialQuote.text.getter();
    sub_1002804BC(v22, v23);
    v24 = EditorialQuote.attribution.getter();
    sub_1002804C8(v24, v25);
    swift_unknownObjectRelease();

    (*(v30 + 8))(v20, v31);
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v19);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v4, v36);
    (*(v33 + 8))(v7, v34);
    (*(v8 + 8))(v13, v32);
  }

  return sub_100007000(v38);
}

uint64_t sub_1000BF318()
{
  v28 = sub_10002849C(&unk_1009731C0);
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v25 - v0;
  v1 = type metadata accessor for Shelf.PresentationHints();
  v32 = *(v1 - 8);
  v33 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComponentLayoutOptions();
  v30 = *(v4 - 8);
  v31 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10002849C(&unk_10097DAF0);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10002849C(&unk_1009731D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v14 + 8))(v16, v13);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  v29 = v3;
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v36, v35);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Footnote();
  if (swift_dynamicCast())
  {
    (*(v7 + 16))(v9, v12, v34);
    type metadata accessor for NilState();
    v17 = v25;
    WritableStateLens.init(_:)();
    v18 = v27;
    v19 = *&v27[OBJC_IVAR____TtC8AppStore26FootnoteCollectionViewCell_footnoteView];
    v20 = Footnote.presentationStyle.getter();
    v21 = v19[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron];
    v19[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = (v20 & 2) != 0;
    sub_10007B3E8(v21);
    v19[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = (Footnote.presentationStyle.getter() & 4) != 0;
    v22 = *&v19[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
    Footnote.text.getter();
    v23 = String._bridgeToObjectiveC()();

    [v22 setText:v23];

    [v19 setNeedsLayout];
    [v18 setNeedsLayout];

    (*(v26 + 8))(v17, v28);
  }

  (*(v32 + 8))(v29, v33);
  (*(v30 + 8))(v6, v31);
  (*(v7 + 8))(v12, v34);
  return sub_100007000(v36);
}

uint64_t sub_1000BF818()
{
  v0 = type metadata accessor for HorizontalRule.Style();
  __chkstk_darwin(v0 - 8);
  v26 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&unk_1009731C0);
  v27 = *(v2 - 8);
  v28 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - v3;
  v4 = type metadata accessor for Shelf.PresentationHints();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v29 - 8);
  __chkstk_darwin(v29);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  v16 = sub_10002849C(&unk_1009731D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - v18;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v17 + 8))(v19, v16);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v35, v34);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for HorizontalRule();
  if (swift_dynamicCast())
  {
    v20 = v29;
    (*(v10 + 16))(v12, v15, v29);
    type metadata accessor for NilState();
    v21 = v25;
    WritableStateLens.init(_:)();
    v22 = v26;
    HorizontalRule.style.getter();
    sub_10075D014(v22);
    v23 = HorizontalRule.color.getter();
    sub_10075DB40(v23);

    (*(v27 + 8))(v21, v28);
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v20);
  }

  else
  {
    (*(v32 + 8))(v6, v33);
    (*(v30 + 8))(v9, v31);
    (*(v10 + 8))(v15, v29);
  }

  return sub_100007000(v35);
}

unint64_t sub_1000BFD1C()
{
  result = qword_100973260;
  if (!qword_100973260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973260);
  }

  return result;
}

uint64_t sub_1000BFD70()
{
  v0 = sub_10002849C(&unk_1009731C0);
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - v1;
  v2 = type metadata accessor for Shelf.PresentationHints();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentLayoutOptions();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_10097DAF0);
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = sub_10002849C(&unk_1009731D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v15 + 8))(v17, v14);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  sub_10002C0AC(v31, v30);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Lockup();
  if (swift_dynamicCast())
  {
    v18 = v25;
    (*(v8 + 16))(v10, v13, v25);
    type metadata accessor for NilState();
    v19 = v22;
    WritableStateLens.init(_:)();
    sub_1002F753C();
    swift_unknownObjectRelease();

    (*(v23 + 8))(v19, v24);
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v28 + 8))(v4, v29);
    (*(v26 + 8))(v7, v27);
    (*(v8 + 8))(v13, v25);
  }

  return sub_100007000(v31);
}

void sub_1000C0220(uint64_t a1, void *a2)
{
  if (a1 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1000C0270()
{
  v0 = sub_10002849C(&unk_1009731C0);
  v25 = *(v0 - 8);
  v26 = v0;
  __chkstk_darwin(v0);
  v24 = v23 - v1;
  v2 = type metadata accessor for Shelf.PresentationHints();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentLayoutOptions();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_10097DAF0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v23 - v12;
  v14 = sub_10002849C(&unk_1009731D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - v16;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v15 + 8))(v17, v14);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v33, v32);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PreorderDisclaimer();
  if (swift_dynamicCast())
  {
    v18 = v27;
    (*(v8 + 16))(v10, v13, v27);
    type metadata accessor for NilState();
    v19 = v24;
    WritableStateLens.init(_:)();
    v20 = *(v23[1] + OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
    PreorderDisclaimer.disclaimer.getter();
    v21 = String._bridgeToObjectiveC()();

    [v20 setText:v21];

    (*(v25 + 8))(v19, v26);
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v18);
  }

  else
  {
    (*(v30 + 8))(v4, v31);
    (*(v28 + 8))(v7, v29);
    (*(v8 + 8))(v13, v27);
  }

  return sub_100007000(v33);
}

uint64_t sub_1000C0738()
{
  v26 = sub_10002849C(&unk_1009731C0);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v22 - v0;
  v1 = type metadata accessor for Shelf.PresentationHints();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComponentLayoutOptions();
  v28 = *(v4 - 8);
  v29 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10002849C(&unk_10097DAF0);
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10002849C(&unk_1009731D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v14 + 8))(v16, v13);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v34, v33);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyCategory();
  if (swift_dynamicCast())
  {
    v17 = v32;
    v18 = v27;
    (*(v7 + 16))(v9, v12, v27);
    type metadata accessor for NilState();
    v19 = v23;
    WritableStateLens.init(_:)();
    v20 = v25;
    *&v25[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategory] = v17;

    *(*&v20[OBJC_IVAR____TtC8AppStore33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC8AppStore19PrivacyCategoryView_category) = v17;

    sub_100378DCC();
    [v20 setNeedsLayout];

    (*(v24 + 8))(v19, v26);
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v18);
  }

  else
  {
    (*(v30 + 8))(v3, v31);
    (*(v28 + 8))(v6, v29);
    (*(v7 + 8))(v12, v27);
  }

  return sub_100007000(v34);
}

uint64_t sub_1000C0C34()
{
  v27 = sub_10002849C(&unk_1009731C0);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25 = &v24 - v0;
  v1 = type metadata accessor for Shelf.PresentationHints();
  v31 = *(v1 - 8);
  v32 = v1;
  __chkstk_darwin(v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ComponentLayoutOptions();
  v29 = *(v4 - 8);
  v30 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(&unk_10097DAF0);
  v7 = *(v28 - 8);
  __chkstk_darwin(v28);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_10002849C(&unk_1009731D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v14 + 8))(v16, v13);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v34, v33);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyDefinition();
  if (swift_dynamicCast())
  {
    v17 = v28;
    (*(v7 + 16))(v9, v12, v28);
    type metadata accessor for NilState();
    v18 = v25;
    WritableStateLens.init(_:)();
    v19 = PrivacyDefinition.title.getter();
    sub_1000278AC(v19, v20);
    v21 = PrivacyDefinition.definition.getter();
    sub_1000278B8(v21, v22);

    (*(v26 + 8))(v18, v27);
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v17);
  }

  else
  {
    (*(v31 + 8))(v3, v32);
    (*(v29 + 8))(v6, v30);
    (*(v7 + 8))(v12, v28);
  }

  return sub_100007000(v34);
}

uint64_t sub_1000C10E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C112C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002849C(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C1194()
{
  v1 = v0;
  v37 = type metadata accessor for PrivacyTypeStyle();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002849C(&unk_1009731C0);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v34 - v4;
  v5 = type metadata accessor for Shelf.PresentationHints();
  v45 = *(v5 - 8);
  v46 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComponentLayoutOptions();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10002849C(&unk_10097DAF0);
  v41 = *(v47 - 8);
  __chkstk_darwin(v47);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v34 - v14;
  v16 = sub_10002849C(&unk_1009731D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v34 - v18;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  v20 = v16;
  v21 = v7;
  (*(v17 + 8))(v19, v20);
  ItemLayoutContext.mutableState.getter();
  v42 = v10;
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v49, v48);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for PrivacyType();
  if (swift_dynamicCast())
  {
    v22 = v41;
    (*(v41 + 16))(v12, v15, v47);
    type metadata accessor for NilState();
    v23 = v38;
    WritableStateLens.init(_:)();
    v24 = v35;
    PrivacyType.style.getter();
    v25 = OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_style;
    swift_beginAccess();
    v26 = v36;
    v27 = v37;
    (*(v36 + 24))(v1 + v25, v24, v37);
    swift_endAccess();
    sub_100361A78();
    (*(v26 + 8))(v24, v27);
    v28 = PrivacyType.title.getter();
    sub_1003617E4(v28, v29);
    v30 = PrivacyType.detail.getter();
    sub_1003617F0(v30, v31);
    *(v1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_artwork) = PrivacyType.artwork.getter();

    v32 = PrivacyType.categories.getter();
    sub_100363EC8();
    *(v1 + OBJC_IVAR____TtC8AppStore29PrivacyTypeCollectionViewCell_categories) = v32;

    sub_1003617FC();

    (*(v39 + 8))(v23, v40);
    (*(v45 + 8))(v21, v46);
    (*(v43 + 8))(v42, v44);
    (*(v22 + 8))(v15, v47);
  }

  else
  {
    (*(v45 + 8))(v7, v46);
    (*(v43 + 8))(v42, v44);
    (*(v41 + 8))(v15, v47);
  }

  return sub_100007000(v49);
}

uint64_t sub_1000C17B8()
{
  v0 = sub_10002849C(&unk_1009731C0);
  v36 = *(v0 - 8);
  v37 = v0;
  __chkstk_darwin(v0);
  v34 = &v28 - v1;
  v2 = type metadata accessor for Shelf.PresentationHints();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ComponentLayoutOptions();
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_10097DAF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v33 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_10002849C(&unk_1009731D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v28 - v16;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v15 + 8))(v17, v14);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  swift_unknownObjectRelease();
  sub_10002C0AC(v43, v42);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ProductPageLink();
  if (swift_dynamicCast())
  {
    v30 = v7;
    v32 = v4;
    v19 = v38;
    v18 = v39;
    v29 = v9;
    v20 = *(v9 + 16);
    v28 = v13;
    v31 = v8;
    v20(v33, v13, v8);
    type metadata accessor for NilState();
    v21 = v34;
    WritableStateLens.init(_:)();
    v22 = v35;
    ProductPageLink.text.getter();
    dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

    ProductPageLink.systemImageName.getter();
    if (v23)
    {
      v24 = static SystemImage.load(_:with:includePrivateImages:)();
    }

    else
    {
      v24 = 0;
    }

    v25 = *&v22[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage];
    *&v22[OBJC_IVAR____TtC8AppStore33ProductPageLinkCollectionViewCell_iconImage] = v24;
    v26 = v24;

    sub_1005B06B4();
    [v22 setNeedsLayout];

    (*(v36 + 8))(v21, v37);
    (*(v19 + 8))(v32, v18);
    (*(v40 + 8))(v30, v41);
    (*(v29 + 8))(v28, v31);
  }

  else
  {
    (*(v38 + 8))(v4, v39);
    (*(v40 + 8))(v7, v41);
    (*(v9 + 8))(v13, v8);
  }

  return sub_100007000(v43);
}

uint64_t sub_1000C1D20()
{
  v0 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v0 - 8);
  v65 = &v59 - v1;
  v67 = type metadata accessor for AspectRatio();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10002849C(&unk_1009731C0);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v71 = &v59 - v3;
  v4 = type metadata accessor for Shelf.PresentationHints();
  v74 = *(v4 - 8);
  v75 = v4;
  __chkstk_darwin(v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v8 = *(v7 - 8);
  v72 = v7;
  v73 = v8;
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v76 - 8);
  __chkstk_darwin(v76);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v59 - v15;
  v17 = sub_10002849C(&unk_1009731D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v18 + 8))(v20, v17);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v21 = sub_100079F24();
  sub_10002C0AC(v78, v77);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for Quote();
  if (swift_dynamicCast())
  {
    v62 = v10;
    v63 = v6;
    v61 = v11;
    v22 = *(v11 + 16);
    v60 = v16;
    v23 = v76;
    v22(v13, v16, v76);
    type metadata accessor for NilState();
    v24 = v71;
    WritableStateLens.init(_:)();
    v25 = v70;
    v26 = *&v70[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_quoteView];
    v27 = Quote.text.getter();
    sub_10007003C(v27, v28);
    v29 = Quote.credit.getter();
    sub_1000707B0(v29, v30);
    v26[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] = Quote.isFullWidthArtwork.getter() & 1;
    sub_100070BA0();
    if (Quote.artwork.getter())
    {
      Artwork.size.getter();
      Artwork.size.getter();
      v31 = v64;
      AspectRatio.init(_:_:)();
      v32 = v66;
      v33 = v65;
      v34 = v67;
      (*(v66 + 16))(v65, v31, v67);
      (*(v32 + 56))(v33, 0, 1, v34);
      v35 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_1000315F8(v33, &v26[v35], &unk_1009732A0);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:0];
      [v26 setNeedsLayout];
      v36 = [v25 contentView];
      sub_100005744(0, &qword_100972EB0);
      LayoutMarginsAware<>.layoutFrame.getter();
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v44 = v43;

      v79.origin.x = v38;
      v79.origin.y = v40;
      v79.size.width = v42;
      v79.size.height = v44;
      Width = CGRectGetWidth(v79);
      AspectRatio.height(fromWidth:)();
      v47 = v46;

      v48 = v31;
      v23 = v76;
      (*(v32 + 8))(v48, v34);
      v24 = v71;
      v49 = &v25[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
      *v49 = Width;
      *(v49 + 1) = v47;
    }

    else
    {
      v50 = v65;
      (*(v66 + 56))(v65, 1, 1, v67);
      v51 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
      swift_beginAccess();
      sub_1000315F8(v50, &v26[v51], &unk_1009732A0);
      swift_endAccess();
      [*&v26[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] setHidden:1];
      [v26 setNeedsLayout];
      v52 = &v25[OBJC_IVAR____TtC8AppStore23QuoteCollectionViewCell_preferredArtworkSize];
      *v52 = 0;
      *(v52 + 1) = 0;
    }

    v54 = v73;
    v53 = v74;
    v55 = v72;
    [v21 pageMarginInsets];
    v57 = v56;
    [v21 pageMarginInsets];
    [v26 setLayoutMargins:{0.0, v57, 0.0}];
    swift_unknownObjectRelease();

    (*(v68 + 8))(v24, v69);
    (*(v53 + 8))(v63, v75);
    (*(v54 + 8))(v62, v55);
    (*(v61 + 8))(v60, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v74 + 8))(v6, v75);
    (*(v73 + 8))(v10, v72);
    (*(v11 + 8))(v16, v76);
  }

  return sub_100007000(v78);
}

uint64_t sub_1000C2608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C266C(uint64_t a1)
{
  v2 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1000C2704(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v31 - v12;
  *&v5[qword_1009CDD38] = 0;
  *&v5[qword_1009CDD40] = 0;
  v14 = qword_1009CDD48;
  *&v5[v14] = [objc_allocWithZone(type metadata accessor for ArtworkGrid()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for PaletteBackgroundView();
  *&v5[qword_1009CDD50] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v16 = qword_1009CEC78;
  v17 = *&v15[qword_1009CEC78];
  v18 = v15;
  [v17 setNumberOfLines:2];
  v19 = qword_10096E1C0;
  v20 = *&v15[v16];
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D14C0);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v13, v22, v21);
  (*(v23 + 56))(v13, 0, 1, v21);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v24 = qword_1009CDD48;
  [*&v18[qword_1009CDD48] setClipsToBounds:1];
  [*&v18[v24] _setContinuousCornerRadius:20.0];
  v25 = *&v18[v24];
  v26 = [v18 backgroundView];
  [v26 addSubview:v25];

  v27 = qword_1009CDD50;
  [*&v18[qword_1009CDD50] _setCornerRadius:1 continuous:3 maskedCorners:20.0];
  v28 = *&v18[v27];
  v29 = [v18 backgroundView];
  [v29 addSubview:v28];

  return v18;
}

id sub_1000C2A3C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = [v0 backgroundView];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v22.receiver = *&v1[qword_1009CDD48];
    receiver = v22.receiver;
    v22.super_class = type metadata accessor for ArtworkGrid();
    objc_msgSendSuper2(&v22, "setFrame:", v7, v9, v11, v13);
    sub_1006B4F58();
    [receiver setNeedsLayout];
    [receiver layoutIfNeeded];
  }

  v15 = *&v1[qword_1009CDD50];
  [v1 bounds];
  CGRectGetWidth(v23);
  [*&v1[qword_1009CEC78] frame];
  CGRectGetMaxY(v24);
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for StaticDimension();
  sub_1000056A8(v16, qword_1009D2448);
  v17 = [v1 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1007B0B70;
  *(v18 + 32) = v17;
  v19 = v17;
  v20 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of AnyDimension.rawValue(in:)();

  [v15 frame];
  [v15 setFrame:?];
  [v15 layoutIfNeeded];
  return [v2 setAnimationsEnabled:v3];
}

void sub_1000C2CD4(void *a1, uint64_t a2, char a3)
{
  swift_getObjectType();
  sub_1003B3D38(a1, a2, a3 & 1);
  v7 = swift_dynamicCastClass();
  if (v7 && (a3 & 1) == 0)
  {
    v8 = v7;
    v9 = qword_1009CDD48;
    v10 = *(v7 + qword_1009CDD48);
    v11 = *(v10 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages);
    v12 = *(v3 + qword_1009CDD48);
    v12[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType] = *(v10 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType);
    v19 = a1;
    sub_1006B4F58();
    [v12 setNeedsLayout];
    *&v12[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = v11;
    sub_1006B5128();
    if (v11 < 0)
    {
LABEL_16:
      __break(1u);
      return;
    }

    if (v11)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(v8 + v9);
        v15 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
        swift_beginAccess();
        v16 = *(v14 + v15);
        if (v13 >= *(v16 + 16))
        {
          break;
        }

        v17 = *(v16 + 8 * v13 + 32);
        if (v17)
        {
          v18 = v17;
          sub_1006B4A00(v18, v13);
        }

        if (v11 == ++v13)
        {

          return;
        }
      }

      __break(1u);
      goto LABEL_16;
    }
  }
}

uint64_t sub_1000C2E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for ArtworkGridType();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1005D841C(a1, a2, a3, a4, v12);
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaGrid();
  if (!swift_dynamicCastClass())
  {
  }

  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v15 = *(v5 + qword_1009CDD48);
  v28[2] = *&v32[0];
  v29 = v15;
  TodayCardMediaGrid.artworkGridType.getter();
  v16 = (*(v11 + 88))(v14, v10);
  if (v16 == enum case for ArtworkGridType.small(_:))
  {
    goto LABEL_3;
  }

  if (v16 == enum case for ArtworkGridType.large(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ArtworkGridType.extraLarge(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ArtworkGridType.mixed(_:))
    {
LABEL_28:
      v27 = *(v11 + 8);
      v11 += 8;
      v27(v14, v10);
LABEL_3:
      v17 = 0;
      goto LABEL_13;
    }

    v17 = 3;
  }

LABEL_13:
  v28[1] = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
  v19 = v29;
  v29[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType] = v17;
  sub_1006B4F58();
  [v19 setNeedsLayout];
  v20 = TodayCardMediaGrid.lockups.getter();
  if (v20 >> 62)
  {
    goto LABEL_30;
  }

  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_15:

  *&v29[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = v21;
  sub_1006B5128();
  v22 = TodayCardMediaGrid.lockups.getter();
  v23 = v22;
  if (v22 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_17:
      v14 = 0;
      v30 = v23 & 0xFFFFFFFFFFFFFF8;
      v31 = v23 & 0xC000000000000001;
      v28[0] = v10;
      do
      {
        if (v31)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {
          if (v14 >= *(v30 + 16))
          {
            __break(1u);
LABEL_30:
            v21 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_15;
          }

          v24 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            goto LABEL_27;
          }
        }

        if (dispatch thunk of Lockup.artwork.getter())
        {
          v25 = v29;
          Artwork.config(_:mode:prefersLayeredImage:)();
          v33 = 0;
          memset(v32, 0, sizeof(v32));
          v11 = swift_allocObject();
          *(v11 + 16) = v25;
          *(v11 + 24) = v14;
          v26 = v25;
          ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

          v10 = v28[0];

          sub_1000C36CC(v32);
        }

        else
        {
        }

        ++v14;
      }

      while (v24 != v10);
    }
  }
}

void sub_1000C32C8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1006B4B80();
}

void sub_1000C3328()
{
  sub_1000C355C();
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v2 = *(v0 + qword_1009CDD48);
  if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
  }

  [*(v0 + qword_1009CDD48) _setContinuousCornerRadius:v3];
  [*(v0 + qword_1009CDD50) _setCornerRadius:1 continuous:3 maskedCorners:v3];
  v4 = *(v0 + v1);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled);
  *(v2 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled) = v4 ^ 1;
  if (v4 == v5)
  {
    sub_1006B5B24();
  }
}

void sub_1000C33E8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + qword_1009CDD50);
}

void sub_1000C3448(uint64_t a1)
{
  swift_unknownObjectRelease();

  v2 = *(a1 + qword_1009CDD50);
}

uint64_t type metadata accessor for GridTodayCardCollectionViewCell()
{
  result = qword_1009732F8;
  if (!qword_1009732F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C355C()
{
  sub_1004EE4C4();
  v1 = (v0 + qword_1009CEC88);
  if (*(v0 + qword_1009CEC88))
  {
    v2 = v1[1];
    ObjectType = swift_getObjectType();
    v4 = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded);
    v5 = *(v2 + 32);
    swift_unknownObjectRetain();
    v5(v4, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (*v1)
  {
    if (*(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 20.0;
    }

    v7 = v1[1];
    v8 = swift_getObjectType();
    v9 = *(v7 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, v7);
    swift_unknownObjectRelease();
    [v10 _setContinuousCornerRadius:v6];
  }
}

uint64_t sub_1000C36CC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10096FB90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C3734(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v42 = a2;
  v5 = type metadata accessor for Accessory();
  v44 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = a3 >> 62;
  if (a3 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = a1 >> 62;
    if (a1 >> 62)
    {
      if (i != _CocoaArrayWrapper.endIndex.getter())
      {
        return 0;
      }
    }

    else if (i != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 0;
    }

    v31 = a1;
    if (v11)
    {
      break;
    }

    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return 1;
    }

LABEL_9:
    v15 = 0;
    v39 = a3 & 0xFFFFFFFFFFFFFF8;
    v40 = a3 & 0xC000000000000001;
    v11 = v31 & 0xFFFFFFFFFFFFFF8;
    if (v31 < 0)
    {
      v16 = v31;
    }

    else
    {
      v16 = v31 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = v16;
    v33 = v31 & 0xFFFFFFFFFFFFFF8;
    v37 = v31 & 0xC000000000000001;
    v38 = a3 + 32;
    v35 = a1 >> 62;
    v36 = v31 + 32;
    v30 = a3;
    v34 = v14;
    while (1)
    {
      if (v40)
      {
        v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v15 >= *(v39 + 16))
        {
          goto LABEL_48;
        }

        v43 = *(v38 + 8 * v15);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_47;
        }
      }

      if (v13)
      {
        v18 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v18 = *(v11 + 16);
      }

      if (v15 == v18)
      {

        return 1;
      }

      v41 = v17;
      if (v37)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *(v11 + 16))
        {
          goto LABEL_49;
        }

        v19 = *(v36 + 8 * v15);
      }

      v20 = v42;
      a1 = v43;
      v21 = (*(v43 + 16))(v42);
      if (v21 != (*(v19 + 16))(v20) || (v22 = *(a1 + 32), v23 = *(v19 + 32), v11 = *(v22 + 16), v11 != *(v23 + 16)))
      {
LABEL_40:

        return 0;
      }

      if (v11 && v22 != v23)
      {
        break;
      }

LABEL_34:
      v15 = v41;
      v13 = v35;
      v11 = v33;
      if (v41 == v34)
      {
        return 1;
      }
    }

    a1 = 0;
    v24 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    a3 = v22 + v24;
    v25 = v23 + v24;
    while (a1 < *(v22 + 16))
    {
      v26 = *(v44 + 72) * a1;
      sub_100056174(a3 + v26, v10);
      if (a1 >= *(v23 + 16))
      {
        goto LABEL_46;
      }

      sub_100056174(v25 + v26, v8);
      v27 = sub_1000C6830(v10, v8);
      sub_1000C7C80(v8);
      sub_1000C7C80(v10);
      if ((v27 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v11 == ++a1)
      {

        a3 = v30;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
  if (v14)
  {
    goto LABEL_9;
  }

  return 1;
}

void sub_1000C3AEC(uint64_t a1)
{
  v56 = a1;
  v1 = type metadata accessor for StoreTab();
  v54 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009796E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v52 - v8;
  v10 = type metadata accessor for FontUseCase();
  v53 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v52 - v17;
  v19 = type metadata accessor for Accessory();
  __chkstk_darwin(v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100056174(v55, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        Hasher._combine(_:)(4uLL);
      }

      else if (EnumCaseMultiPayload == 9)
      {
        Hasher._combine(_:)(5uLL);
      }

      else
      {
        Hasher._combine(_:)(6uLL);
      }

      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *v21;
        v24 = *(v21 + 1);
        v25 = *(v21 + 2);
        Hasher._combine(_:)(9uLL);
        v57 = v23;
        type metadata accessor for Artwork();
        sub_1000C7CDC(&qword_100970D08, &type metadata accessor for Artwork);
        dispatch thunk of Hashable.hash(into:)();
        if (v24 == 0.0)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        Hasher._combine(_:)(*&v26);
        if (v25 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v25;
        }

        Hasher._combine(_:)(*&v27);

        return;
      }

      v43 = *(v21 + 2);
      v44 = *(v21 + 3);
      v45 = *(v21 + 4);
      v46 = *(v21 + 6);
      Hasher._combine(_:)(0xAuLL);
      String.hash(into:)();

      NSObject.hash(into:)();
      Hasher._combine(_:)(v44);
      if (v45)
      {
        Hasher._combine(_:)(1u);
        v47 = v45;
        NSObject.hash(into:)();

        if (v46)
        {
LABEL_37:
          Hasher._combine(_:)(1u);
          String.hash(into:)();

LABEL_53:

          return;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v46)
        {
          goto LABEL_37;
        }
      }

      Hasher._combine(_:)(0);
      goto LABEL_53;
    }

    v39 = *(v21 + 1);
    Hasher._combine(_:)(8uLL);
    if (v39)
    {
LABEL_32:
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      return;
    }

LABEL_41:
    Hasher._combine(_:)(0);
    return;
  }

  v52 = v15;
  v55 = v12;
  v28 = v54;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v41 = *(v21 + 1);
      v42 = sub_10002849C(&qword_100973850);
      sub_1000476A0(&v21[*(v42 + 48)], v18, &qword_100972ED0);
      Hasher._combine(_:)(1uLL);
      if (v41)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v48 = v10;
      v50 = v52;
      v49 = v53;
      v51 = v55;
      sub_100031660(v18, v52, &qword_100972ED0);
      if ((*(v49 + 48))(v50, 1, v48) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        (*(v49 + 32))(v51, v50, v48);
        Hasher._combine(_:)(1u);
        sub_1000C7CDC(&qword_100973888, &type metadata accessor for FontUseCase);
        dispatch thunk of Hashable.hash(into:)();
        (*(v49 + 8))(v51, v48);
      }

      sub_10002B894(v18, &qword_100972ED0);
      return;
    }

    v32 = *(v21 + 1);
    v33 = *(v21 + 2);
    v34 = *(v21 + 4);
    Hasher._combine(_:)(0);
    if (v32)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();

      if (v33)
      {
        goto LABEL_23;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v33)
      {
LABEL_23:
        Hasher._combine(_:)(1u);
        v35 = v33;
        NSObject.hash(into:)();

        if (v34)
        {
LABEL_24:
          Hasher._combine(_:)(1u);
          String.hash(into:)();

          return;
        }

LABEL_45:
        Hasher._combine(_:)(0);

        return;
      }
    }

    Hasher._combine(_:)(0);
    if (v34)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v36 = *(v21 + 2);
    v37 = *(v21 + 3);
    Hasher._combine(_:)(2uLL);
    String.hash(into:)();

    NSObject.hash(into:)();
    v38 = 0.0;
    if (v37 != 0.0)
    {
      v38 = v37;
    }

    Hasher._combine(_:)(*&v38);
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v40 = *(v21 + 1);
      Hasher._combine(_:)(7uLL);
      if (v40)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    v29 = v9;
    v30 = *v21;
    v31 = sub_10002849C(&unk_100984520);
    sub_1000476A0(&v21[*(v31 + 48)], v29, &unk_1009796E0);
    Hasher._combine(_:)(3uLL);
    Hasher._combine(_:)(v30);
    sub_100031660(v29, v6, &unk_1009796E0);
    if ((*(v28 + 48))(v6, 1, v1) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      (*(v28 + 32))(v3, v6, v1);
      Hasher._combine(_:)(1u);
      sub_1000C7CDC(&qword_100973880, &type metadata accessor for StoreTab);
      dispatch thunk of Hashable.hash(into:)();
      (*(v28 + 8))(v3, v1);
    }

    sub_10002B894(v29, &unk_1009796E0);
  }
}

Swift::Int sub_1000C43D0()
{
  Hasher.init(_seed:)();
  sub_1000C3AEC(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C4414()
{
  Hasher.init(_seed:)();
  sub_1000C3AEC(v1);
  return Hasher._finalize()();
}

void sub_1000C4450(uint64_t a1)
{
  v130 = a1;
  v1 = type metadata accessor for AutomationSemantics();
  v128 = *(v1 - 8);
  v129 = v1;
  __chkstk_darwin(v1);
  v127 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v3 - 8);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for DirectionalTextAlignment();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v125 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for SystemImage();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009796E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v120 - v11;
  v13 = type metadata accessor for FontUseCase();
  v131 = *(v13 - 8);
  v132 = v13;
  __chkstk_darwin(v13);
  v15 = &v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v120 - v17;
  v19 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v19 - 8);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v120 - v23;
  __chkstk_darwin(v25);
  v27 = &v120 - v26;
  __chkstk_darwin(v28);
  v30 = &v120 - v29;
  v31 = type metadata accessor for Accessory();
  __chkstk_darwin(v31);
  v33 = (&v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100056174(v133, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v87 = objc_allocWithZone(type metadata accessor for SearchButton());

        sub_10012695C(v88);
        return;
      }

      if (EnumCaseMultiPayload != 9)
      {
        v104 = v121;
        v105 = v120;
        v106 = v122;
        (*(v121 + 104))(v120, enum case for SystemImage.chevronForward(_:), v122);
        v107 = static SystemImage.load(_:with:)();
        (*(v104 + 8))(v105, v106);
        v108 = [v107 imageWithRenderingMode:2];

        v109 = [objc_allocWithZone(UIImageView) initWithImage:v108];
        sub_100005744(0, &qword_100970180);
        v110 = static UIColor.tableViewCellChevron.getter();
        [v109 setTintColor:v110];

        return;
      }

      v47 = objc_opt_self();
      v48 = String._bridgeToObjectiveC()();
      v49 = [v47 kitImageNamed:v48];

      if (!v49)
      {
        __break(1u);
        return;
      }

      v50 = [v49 imageWithRenderingMode:2];

      v51 = [v50 imageFlippedForRightToLeftLayoutDirection];
      v52 = [objc_allocWithZone(UIImageView) initWithImage:v51];
      sub_100005744(0, &qword_100970180);
      isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.82098, 0.82153, 0.83748, 1.0).super.isa;
      [v52 setTintColor:isa];
    }

    else if (EnumCaseMultiPayload == 5)
    {
      v79 = v33[1];
      if (qword_10096DCD8 != -1)
      {
        swift_once();
      }

      v80 = v132;
      v81 = sub_1000056A8(v132, qword_1009D0620);
      v82 = v131;
      (*(v131 + 16))(v21, v81, v80);
      (*(v82 + 56))(v21, 0, 1, v80);
      (*(v123 + 104))(v125, enum case for DirectionalTextAlignment.trailing(_:), v124);
      v83 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
      v84 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
      sub_100005744(0, &qword_100970180);
      v85 = v84;
      v86 = static UIColor.secondaryText.getter();
      [v85 setTextColor:v86];

      if (v79)
      {
        v51 = String._bridgeToObjectiveC()();
      }

      else
      {
        v51 = 0;
      }

      [v85 setText:v51];
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v35 = v33[1];
        v36 = v33[2];
        type metadata accessor for ArtworkView();
        v37 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        Artwork.contentMode.getter();
        Artwork.config(_:mode:prefersLayeredImage:)();
        Artwork.style.getter();
        ArtworkView.style.setter();
        [v37 setContentMode:Artwork.contentMode.getter()];
        ArtworkLoaderConfig.size.getter();
        ArtworkView.imageSize.setter();
        if (!Artwork.backgroundColor.getter())
        {
          sub_100005744(0, &qword_100970180);
          static UIColor.placeholderBackground.getter();
        }

        ArtworkView.backgroundColor.setter();
        v38 = ArtworkView.frame.modify();
        *(v39 + 16) = v35;
        *(v39 + 24) = v36;
        v38(&v134, 0);
        v40 = [objc_opt_self() clearColor];
        ArtworkView.backgroundColor.setter();
        memset(&v134, 0, 32);
        memset(v135, 0, 32);
        v41 = v37;
        v42 = v127;
        static AutomationSemantics.shelf(_:id:parentId:)();
        sub_10002B894(v135, &unk_1009711D0);
        sub_10002B894(&v134, &unk_1009711D0);
        UIView.setAutomationSemantics(_:)();
        (*(v128 + 8))(v42, v129);
        type metadata accessor for ArtworkLoader();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        sub_1000C7CDC(&qword_100970E80, &type metadata accessor for ArtworkView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

        return;
      }

      v51 = v33[2];
      v96 = v33[4];
      v97 = v33[6];
      v98 = [objc_opt_self() configurationWithFont:v51 scale:v33[3]];
      v99 = String._bridgeToObjectiveC()();

      v100 = [objc_opt_self() systemImageNamed:v99 withConfiguration:v98];

      v101 = [objc_opt_self() buttonWithType:0];
      [v101 setPreferredSymbolConfiguration:v98 forImageInState:0];
      [v101 setImage:v100 forState:0];
      [v101 setTintColor:v96];
      v102 = v101;
      if (v97)
      {
        v103 = String._bridgeToObjectiveC()();
      }

      else
      {
        v103 = 0;
      }

      [v101 setAccessibilityLabel:v103];
    }

LABEL_65:

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v54 = v33[1];
      v55 = v33[2];

      v56 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
      dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

      v57 = v56;
      if (v54)
      {
        v58 = String._bridgeToObjectiveC()();
      }

      else
      {
        v58 = 0;
      }

      [v56 setTitle:v58 forState:0];

      if (v55)
      {
        [v56 setTintColor:v55];

        return;
      }

      sub_100005744(0, &qword_100970180);
      v51 = static UIColor.appTint.getter();
      [v56 setTintColor:v51];

      goto LABEL_65;
    }

    v92 = v33[1];
    v93 = sub_10002849C(&qword_100973850);
    sub_1000476A0(v33 + *(v93 + 48), v30, &qword_100972ED0);
    v94 = [objc_allocWithZone(type metadata accessor for HeaderButton()) init];
    dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();

    if (v92)
    {
      v95 = String._bridgeToObjectiveC()();
    }

    else
    {
      v95 = 0;
    }

    v113 = v131;
    v112 = v132;
    v114 = v24;
    [v94 setTitle:v95 forState:0];

    sub_100031660(v30, v24, &qword_100972ED0);
    v115 = *(v113 + 48);
    if (v115(v24, 1, v112) == 1)
    {
      v116 = qword_10096DCD0;
      v117 = v94;
      if (v116 != -1)
      {
        swift_once();
      }

      v118 = sub_1000056A8(v112, qword_1009D0608);
      (*(v113 + 16))(v27, v118, v112);
      if (v115(v114, 1, v112) != 1)
      {
        sub_10002B894(v114, &qword_100972ED0);
      }
    }

    else
    {
      (*(v113 + 32))(v27, v24, v112);
      v119 = v94;
    }

    (*(v113 + 56))(v27, 0, 1, v112);
    dispatch thunk of DynamicTypeButton.fontUseCase.setter();

    sub_10002B894(v30, &qword_100972ED0);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v59 = v18;
    v60 = v33[2];
    v61 = *(v33 + 3);
    type metadata accessor for HeaderButton();
    v62 = qword_10096D640;
    v63 = v60;
    if (v62 != -1)
    {
      swift_once();
    }

    v64 = v132;
    v65 = sub_1000056A8(v132, qword_10097E818);
    v66 = *(v131 + 16);
    v66(v18, v65, v64);
    v66(v15, v18, v64);
    v67 = DynamicTypeButton.__allocating_init(useCase:)();
    *&v67[qword_10097E838] = v61;
    v68 = v67;
    v69 = [v68 traitCollection];
    v70 = UITraitCollection.prefersRightToLeftLayouts.getter();

    v71 = v68;
    v72 = v71;
    if (v70)
    {
      v73 = v61;
    }

    else
    {
      v73 = 0.0;
    }

    if (v70)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v61;
    }

    if (v70)
    {
      v75 = -v61;
    }

    else
    {
      v75 = v61;
    }

    if ((v70 & 1) == 0)
    {
      v61 = -v61;
    }

    [v71 setContentEdgeInsets:{0.0, v74, 0.0, v73}];
    [v72 setImageEdgeInsets:{0.0, v61, 0.0, v75}];
    v76 = String._bridgeToObjectiveC()();

    [v72 setTitle:v76 forState:0];

    [v72 setImage:v63 forState:0];
    CGAffineTransformMakeScale(&v134, -1.0, 1.0);
    [v72 setTransform:&v134];

    v77 = [v72 titleLabel];
    if (v77)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v77 setTransform:&v134];
    }

    v78 = [v72 imageView];

    if (v78)
    {
      CGAffineTransformMakeScale(&v134, -1.0, 1.0);
      [v78 setTransform:&v134];

      (*(v131 + 8))(v59, v132);
    }

    else
    {
      (*(v131 + 8))(v59, v132);
    }

    v111 = v72;
    dispatch thunk of ImageAlignedButton.touchOutsideMargin.setter();
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v43 = *v33;
    v44 = sub_10002849C(&unk_100984520);
    sub_1000476A0(v33 + *(v44 + 48), v12, &unk_1009796E0);
    sub_100031660(v12, v9, &unk_1009796E0);
    v45 = objc_allocWithZone(type metadata accessor for AccountButton());
    v46 = v130;

    sub_1005291AC(v43, v9, v46);

    sub_10002B894(v12, &unk_1009796E0);
  }

  else
  {
    v89 = *v33;
    v90 = v33[1];
    v91 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    sub_10049BD08(1, v89, v90);
  }
}

void sub_1000C571C(void *a1)
{
  v2 = v1;
  v42 = a1;
  v3 = type metadata accessor for DynamicTextAppearance();
  v37 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for LabelPlaceholder();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SystemImage();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Accessory();
  __chkstk_darwin(v16);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v2;
  sub_100056174(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 10)
    {
      (*(v13 + 104))(v15, enum case for SystemImage.chevronForward(_:), v12);
      v36 = static SystemImage.load(_:with:)();
      (*(v13 + 8))(v15, v12);
      [v36 size];

      return;
    }

    if (EnumCaseMultiPayload != 9)
    {
      goto LABEL_11;
    }

    v28 = objc_opt_self();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v28 kitImageNamed:v29];

    if (!v30)
    {
      __break(1u);
      return;
    }

    [v30 size];
LABEL_15:

    return;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v33 = *v18;
    v34 = v18[1];
    v35 = objc_allocWithZone(type metadata accessor for CountBadgeView());
    v30 = sub_10049BD08(1, v33, v34);
    [v30 sizeThatFits:{0.0, 0.0}];
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 5)
  {
    DynamicTextAppearance.init()();
    if (qword_10096DCD8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for FontUseCase();
    sub_1000056A8(v20, qword_1009D0620);
    DynamicTextAppearance.withFontUseCase(_:)();
    v21 = *(v37 + 8);
    v21(v5, v3);
    DynamicTextAppearance.withNumberOfLines(_:)();
    v21(v8, v3);
    LabelPlaceholder.Options.init(rawValue:)();
    v22 = v38;
    LabelPlaceholder.init(_:with:where:)();
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007B0B70;
    v24 = v42;
    *(v23 + 32) = v42;
    v25 = v24;
    v26 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v27 = v41;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    (*(v40 + 8))(v22, v27);
    return;
  }

LABEL_11:
  if (qword_10096D110 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for OSLogger();
  sub_1000056A8(v31, qword_1009CE1E8);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1E00;
  LogMessage.init(stringLiteral:)();
  v43[3] = v16;
  v32 = sub_1000056E0(v43);
  sub_100056174(v39, v32);
  static LogMessage.safe(_:)();
  sub_10002B894(v43, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  Logger.debug(_:)();

  sub_1000C7C80(v18);
}

uint64_t sub_1000C5DDC(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for Accessory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v10 = (v42 - v9);
  v11 = *(v1 + 32);
  v12 = *(v11 + 16);
  v13 = &_swiftEmptyArrayStorage;
  if (!v12)
  {
    return v13;
  }

  v42[1] = v8;
  v45 = &_swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v15 = *(v4 + 72);
  while (1)
  {
    sub_100056174(v14, v10);
    swift_beginAccess();
    v18 = *(v2 + 40);
    if (*(v18 + 16))
    {
      v19 = sub_1003D786C(v10);
      if (v20)
      {
        v21 = *(*(v18 + 56) + 8 * v19);
        swift_endAccess();
        v22 = v21;
        goto LABEL_5;
      }
    }

    swift_endAccess();
    sub_1000C4450(v43);
    v24 = v23;
    sub_100056174(v10, v6);
    swift_beginAccess();
    v25 = v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *(v2 + 40);
    v27 = v44;
    *(v2 + 40) = 0x8000000000000000;
    v28 = sub_1003D786C(v6);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      break;
    }

    v34 = v29;
    if (v27[3] < v33)
    {
      sub_10004CD10(v33, isUniquelyReferenced_nonNull_native);
      v28 = sub_1003D786C(v6);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_23;
      }

LABEL_14:
      v36 = v44;
      if ((v34 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v40 = v28;
    sub_100053628();
    v28 = v40;
    v36 = v44;
    if ((v34 & 1) == 0)
    {
LABEL_15:
      v36[(v28 >> 6) + 8] |= 1 << v28;
      v37 = v28;
      sub_100056174(v6, v36[6] + v28 * v15);
      *(v36[7] + 8 * v37) = v25;
      v38 = v36[2];
      v32 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v32)
      {
        goto LABEL_22;
      }

      v36[2] = v39;
      goto LABEL_4;
    }

LABEL_3:
    v16 = v36[7];
    v17 = *(v16 + 8 * v28);
    *(v16 + 8 * v28) = v25;

LABEL_4:
    sub_1000C7C80(v6);
    *(v2 + 40) = v36;
    swift_endAccess();
LABEL_5:
    sub_1000C7C80(v10);
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v14 += v15;
    if (!--v12)
    {
      return v45;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000C60F8(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

uint64_t sub_1000C6134()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Accessory()
{
  result = qword_1009737C8;
  if (!qword_1009737C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C61EC()
{
  sub_1000C62E8();
  if (v0 <= 0x3F)
  {
    sub_1000C6378();
    if (v1 <= 0x3F)
    {
      sub_1000C6404();
      if (v2 <= 0x3F)
      {
        sub_1000C6488();
        if (v3 <= 0x3F)
        {
          sub_1000C6550(319, &qword_1009737F8);
          if (v4 <= 0x3F)
          {
            sub_1000C6550(319, &qword_100973800);
            if (v5 <= 0x3F)
            {
              sub_1000C6598();
              if (v6 <= 0x3F)
              {
                sub_1000C660C(319);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000C62E8()
{
  if (!qword_1009737D8)
  {
    sub_10002D1A8(&unk_100984350);
    sub_10002D1A8(&qword_100973268);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1009737D8);
    }
  }
}

void sub_1000C6378()
{
  if (!qword_1009737E0)
  {
    sub_10002D1A8(&unk_100984350);
    sub_10002D1A8(&qword_100972ED0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009737E0);
    }
  }
}

void sub_1000C6404()
{
  if (!qword_1009737E8)
  {
    sub_100005744(255, &qword_1009744B0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1009737E8);
    }
  }
}

void sub_1000C6488()
{
  if (!qword_1009737F0)
  {
    sub_10002D1A8(&unk_1009796E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1009737F0);
    }
  }
}

void sub_1000C6500()
{
  if (!qword_10098A3F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10098A3F0);
    }
  }
}

void sub_1000C6550(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1000C6500();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1000C6598()
{
  if (!qword_100973808)
  {
    type metadata accessor for Artwork();
    type metadata accessor for CGSize(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100973808);
    }
  }
}

void sub_1000C660C(uint64_t a1)
{
  if (!qword_100973810)
  {
    __chkstk_darwin(a1);
    sub_100005744(255, &qword_1009730E0);
    type metadata accessor for SymbolScale(255);
    sub_10002D1A8(&qword_100973268);
    sub_10002D1A8(&unk_100984350);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_100973810);
    }
  }
}

unint64_t sub_1000C6794()
{
  result = qword_100973840;
  if (!qword_100973840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973840);
  }

  return result;
}

uint64_t sub_1000C6830(uint64_t a1, double *a2)
{
  v186 = a1;
  v187 = a2;
  v174 = type metadata accessor for StoreTab();
  v185 = *(v174 - 8);
  __chkstk_darwin(v174);
  v169 = &v168 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_10002849C(&qword_100973858);
  __chkstk_darwin(v184);
  v183 = &v168 - v3;
  v4 = sub_10002849C(&unk_1009796E0);
  v5 = __chkstk_darwin(v4 - 8);
  v171 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v178 = &v168 - v8;
  __chkstk_darwin(v7);
  v179 = &v168 - v9;
  v10 = type metadata accessor for FontUseCase();
  v172 = *(v10 - 8);
  v173 = v10;
  __chkstk_darwin(v10);
  v176 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_10002849C(&qword_100973860);
  __chkstk_darwin(v175);
  v182 = &v168 - v12;
  v13 = sub_10002849C(&qword_100972ED0);
  v14 = __chkstk_darwin(v13 - 8);
  v170 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v177 = &v168 - v17;
  __chkstk_darwin(v16);
  v181 = &v168 - v18;
  v19 = type metadata accessor for Accessory();
  v20 = __chkstk_darwin(v19);
  v22 = (&v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __chkstk_darwin(v20);
  v180 = &v168 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = (&v168 - v26);
  v28 = __chkstk_darwin(v25);
  v30 = (&v168 - v29);
  v31 = __chkstk_darwin(v28);
  v33 = &v168 - v32;
  v34 = __chkstk_darwin(v31);
  v36 = &v168 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = (&v168 - v38);
  __chkstk_darwin(v37);
  v41 = (&v168 - v40);
  v42 = sub_10002849C(&qword_100973868);
  v43 = __chkstk_darwin(v42 - 8);
  v45 = &v168 - v44;
  v46 = (&v168 + *(v43 + 56) - v44);
  sub_100056174(v186, &v168 - v44);
  v47 = v187;
  v187 = v46;
  sub_100056174(v47, v46);
  v188 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v58 = v33;
    v60 = v184;
    v59 = v185;
    v61 = v181;
    v62 = v182;
    v63 = v183;
    if (EnumCaseMultiPayload > 1)
    {
      v64 = v188;
      if (EnumCaseMultiPayload == 2)
      {
        sub_100056174(v188, v36);
        v84 = *v36;
        v83 = *(v36 + 1);
        v85 = *(v36 + 2);
        v86 = *(v36 + 3);
        v87 = v187;
        if (swift_getEnumCaseMultiPayload() != 2)
        {

          goto LABEL_61;
        }

        v88 = *(v87 + 2);
        v89 = v87[3];
        if (v84 == *v87 && v83 == *(v87 + 1))
        {
        }

        else
        {
          v128 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v128 & 1) == 0)
          {

            goto LABEL_98;
          }
        }

        sub_100005744(0, &qword_100978360);
        v129 = static NSObject.== infix(_:_:)();

        if (v129)
        {
          v56 = v86 == v89;
          v57 = v64;
LABEL_73:
          sub_1000C7C80(v57);
          return v56;
        }

        goto LABEL_98;
      }

      v65 = v187;
      if (EnumCaseMultiPayload == 3)
      {
        v66 = v58;
        sub_100056174(v188, v58);
        v67 = *(sub_10002849C(&unk_100984520) + 48);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_10002B894(&v66[v67], &unk_1009796E0);
          goto LABEL_61;
        }

        v68 = *v66;
        v69 = *v65;
        v70 = &v66[v67];
        v71 = v179;
        sub_1000476A0(v70, v179, &unk_1009796E0);
        v72 = v65 + v67;
        v73 = v178;
        sub_1000476A0(v72, v178, &unk_1009796E0);
        if (v68 == v69)
        {
          v130 = *(v60 + 48);
          v131 = v63;
          sub_100031660(v71, v63, &unk_1009796E0);
          v132 = v130;
          sub_100031660(v73, v131 + v130, &unk_1009796E0);
          v133 = v59;
          v134 = *(v59 + 48);
          v135 = v174;
          if (v134(v131, 1, v174) == 1)
          {
            sub_10002B894(v73, &unk_1009796E0);
            sub_10002B894(v71, &unk_1009796E0);
            if (v134(v131 + v132, 1, v135) == 1)
            {
              sub_10002B894(v131, &unk_1009796E0);
              goto LABEL_116;
            }
          }

          else
          {
            v144 = v171;
            sub_100031660(v131, v171, &unk_1009796E0);
            if (v134(v131 + v132, 1, v135) != 1)
            {
              v157 = v131 + v132;
              v158 = v144;
              v159 = v169;
              (*(v133 + 32))(v169, v157, v135);
              sub_1000C7CDC(&qword_100973870, &type metadata accessor for StoreTab);
              v160 = dispatch thunk of static Equatable.== infix(_:_:)();
              v161 = *(v133 + 8);
              v161(v159, v135);
              sub_10002B894(v178, &unk_1009796E0);
              sub_10002B894(v179, &unk_1009796E0);
              v161(v158, v135);
              sub_10002B894(v131, &unk_1009796E0);
              if (v160)
              {
                goto LABEL_116;
              }

              goto LABEL_98;
            }

            sub_10002B894(v178, &unk_1009796E0);
            sub_10002B894(v179, &unk_1009796E0);
            (*(v133 + 8))(v144, v135);
          }

          v75 = &qword_100973858;
          v74 = v131;
        }

        else
        {
          sub_10002B894(v73, &unk_1009796E0);
          v74 = v71;
          v75 = &unk_1009796E0;
        }

        sub_10002B894(v74, v75);
        goto LABEL_98;
      }

      sub_100056174(v188, v30);
      v95 = *v30;
      v94 = v30[1];
      v96 = swift_getEnumCaseMultiPayload();
      if (v96 == 4)
      {
        v91 = *(v65 + 1);
        if (v94)
        {
          if (v91)
          {
            v92 = *v65;
            goto LABEL_40;
          }

LABEL_64:

          goto LABEL_98;
        }

LABEL_63:
        if (!v91)
        {
          goto LABEL_116;
        }

        goto LABEL_64;
      }

LABEL_43:

      goto LABEL_61;
    }

    v76 = v188;
    if (!EnumCaseMultiPayload)
    {
      sub_100056174(v188, v41);
      v78 = *v41;
      v77 = v41[1];
      v80 = v41[2];
      v79 = v41[3];
      v81 = v41[4];
      v82 = v187;
      if (swift_getEnumCaseMultiPayload())
      {
        v64 = v76;

        goto LABEL_61;
      }

      v125 = *(v82 + 1);
      v124 = *(v82 + 2);
      v127 = *(v82 + 3);
      v126 = *(v82 + 4);
      if (v77)
      {
        if (v125)
        {
          if (v78 == *v187 && v77 == v125)
          {

            goto LABEL_110;
          }

          v153 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v153)
          {
LABEL_110:
            if (v80)
            {
              if (!v124)
              {

                goto LABEL_128;
              }

              sub_100005744(0, &qword_100970180);
              v154 = v80;
              v155 = v124;
              v156 = static NSObject.== infix(_:_:)();

              if ((v156 & 1) == 0)
              {

LABEL_128:

                goto LABEL_142;
              }
            }

            else if (v124)
            {

              goto LABEL_143;
            }

            if (v81)
            {
              if (!v126)
              {

                goto LABEL_142;
              }

              if (v79 == v127 && v81 == v126)
              {

                v162 = v188;
                goto LABEL_117;
              }

              v166 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v166 & 1) == 0)
              {
                goto LABEL_143;
              }
            }

            else
            {

              if (v126)
              {
                goto LABEL_142;
              }
            }

            v162 = v188;
            goto LABEL_117;
          }
        }

        else
        {
        }

        goto LABEL_143;
      }

      if (v125)
      {

LABEL_142:

        goto LABEL_143;
      }

      goto LABEL_110;
    }

    sub_100056174(v188, v39);
    v98 = *v39;
    v97 = v39[1];
    v99 = *(sub_10002849C(&qword_100973850) + 48);
    v100 = v187;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10002B894(v39 + v99, &qword_100972ED0);

      v64 = v188;
      goto LABEL_61;
    }

    v101 = v100[1];
    v186 = *v100;
    sub_1000476A0(v39 + v99, v61, &qword_100972ED0);
    v102 = v177;
    sub_1000476A0(v100 + v99, v177, &qword_100972ED0);
    if (v97)
    {
      if (v101)
      {
        v103 = v62;
        if (v98 == v186 && v97 == v101)
        {

          v104 = v175;
          v105 = v176;
          goto LABEL_101;
        }

        v145 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v104 = v175;
        v105 = v176;
        if (v145)
        {
LABEL_101:
          v146 = *(v104 + 48);
          sub_100031660(v61, v103, &qword_100972ED0);
          sub_100031660(v102, v103 + v146, &qword_100972ED0);
          v147 = v172;
          v148 = v173;
          v149 = *(v172 + 48);
          if (v149(v103, 1, v173) == 1)
          {
            sub_10002B894(v102, &qword_100972ED0);
            sub_10002B894(v61, &qword_100972ED0);
            v150 = v149(v103 + v146, 1, v148);
            v151 = v188;
            if (v150 == 1)
            {
              sub_10002B894(v103, &qword_100972ED0);
LABEL_126:
              v162 = v151;
              goto LABEL_117;
            }
          }

          else
          {
            v152 = v170;
            sub_100031660(v103, v170, &qword_100972ED0);
            if (v149(v103 + v146, 1, v148) != 1)
            {
              (*(v147 + 32))(v105, v103 + v146, v148);
              sub_1000C7CDC(&qword_100973878, &type metadata accessor for FontUseCase);
              v163 = v147;
              v164 = dispatch thunk of static Equatable.== infix(_:_:)();
              v165 = *(v163 + 8);
              v165(v105, v148);
              sub_10002B894(v177, &qword_100972ED0);
              sub_10002B894(v61, &qword_100972ED0);
              v165(v152, v148);
              sub_10002B894(v103, &qword_100972ED0);
              v151 = v188;
              if (v164)
              {
                goto LABEL_126;
              }

LABEL_107:
              sub_1000C7C80(v151);
              return 0;
            }

            sub_10002B894(v177, &qword_100972ED0);
            sub_10002B894(v61, &qword_100972ED0);
            (*(v147 + 8))(v152, v148);
            v151 = v188;
          }

          sub_10002B894(v103, &qword_100973860);
          goto LABEL_107;
        }

LABEL_90:
        sub_10002B894(v102, &qword_100972ED0);
        sub_10002B894(v61, &qword_100972ED0);
        goto LABEL_143;
      }
    }

    else
    {
      v103 = v62;
      v104 = v175;
      v105 = v176;
      if (!v101)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_90;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      v93 = swift_getEnumCaseMultiPayload();
      v64 = v188;
      if (v93 != 8)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v64 = v188;
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() != 9)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v122 = swift_getEnumCaseMultiPayload();
        if (v122 != 10)
        {
          goto LABEL_61;
        }
      }
    }

    goto LABEL_116;
  }

  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v49 = v180;
      sub_100056174(v188, v180);
      v51 = *(v49 + 8);
      v50 = *(v49 + 16);
      v52 = v187;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v54 = v52[1];
        v53 = v52[2];
        type metadata accessor for Artwork();
        v55 = static Artwork.== infix(_:_:)();

        if (v55)
        {
          v56 = v50 == v53 && v51 == v54;
          v57 = v188;
          goto LABEL_73;
        }

        goto LABEL_143;
      }

      v64 = v188;
      goto LABEL_61;
    }

    v106 = v188;
    sub_100056174(v188, v22);
    v107 = *v22;
    v108 = v22[1];
    v109 = v22[2];
    v110 = v22[3];
    v111 = v22[4];
    v112 = v22[5];
    v113 = v22[6];
    v114 = v187;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v115 = v113;
      v186 = v112;
      v116 = *v114;
      v117 = *(v114 + 1);
      v118 = v114;
      v120 = *(v114 + 2);
      v119 = *(v114 + 3);
      v121 = *(v118 + 4);
      v185 = *(v118 + 5);
      v187 = *(v118 + 6);
      if (v107 == v116 && v108 == v117)
      {

LABEL_78:
        sub_100005744(0, &qword_100978360);
        v137 = static NSObject.== infix(_:_:)();
        v138 = v188;
        if ((v137 & 1) != 0 && v110 == v119)
        {
          if (v111)
          {
            if (!v121)
            {

              goto LABEL_137;
            }

            sub_100005744(0, &qword_100970180);
            v139 = v111;
            v140 = v121;
            v141 = v121;
            v142 = static NSObject.== infix(_:_:)();

            if ((v142 & 1) == 0)
            {

LABEL_137:

LABEL_138:

              goto LABEL_85;
            }

LABEL_131:
            if (v115)
            {
              if (!v187)
              {

                goto LABEL_138;
              }

              if (v186 == v185 && v115 == v187)
              {

                v162 = v138;
                goto LABEL_117;
              }

              v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v167 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {

              if (v187)
              {
                goto LABEL_138;
              }
            }

            v162 = v138;
            goto LABEL_117;
          }

          v140 = v121;
          if (!v121)
          {
            goto LABEL_131;
          }
        }

        else
        {
        }

LABEL_85:
        sub_1000C7C80(v138);
        return 0;
      }

      v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v136)
      {
        goto LABEL_78;
      }

LABEL_143:
      sub_1000C7C80(v188);
      return 0;
    }

    v64 = v106;
LABEL_61:
    sub_10002B894(v64, &qword_100973868);
    return 0;
  }

  v64 = v188;
  sub_100056174(v188, v27);
  v95 = *v27;
  v94 = v27[1];
  v90 = v187;
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    goto LABEL_43;
  }

  v91 = *(v90 + 1);
  if (!v94)
  {
    goto LABEL_63;
  }

  if (!v91)
  {
    goto LABEL_64;
  }

  v92 = *v90;
LABEL_40:
  if (v95 != v92 || v94 != v91)
  {
    v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v143)
    {
      goto LABEL_116;
    }

LABEL_98:
    sub_1000C7C80(v64);
    return 0;
  }

LABEL_116:
  v162 = v64;
LABEL_117:
  sub_1000C7C80(v162);
  return 1;
}

uint64_t sub_1000C7C80(uint64_t a1)
{
  v2 = type metadata accessor for Accessory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C7CDC(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000C7D24()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_label;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v24.receiver = v0;
  v24.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v24, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_backgroundView;
  v6 = *&v4[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_backgroundView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemBlueColor];
  [v8 setBackgroundColor:v9];

  v10 = [*&v4[v5] layer];
  [v10 setCornerRadius:20.0];

  v11 = [*&v4[v5] layer];
  [v11 setCornerCurve:kCACornerCurveCircular];

  [v4 addSubview:*&v4[v5]];
  v12 = OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_label;
  v13 = *&v4[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_label];
  v14 = [v7 whiteColor];
  [v13 setTextColor:v14];

  v15 = *&v4[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemFontOfSize:32.0];
  [v17 setFont:v18];

  v19 = *&v4[v12];
  v20._object = 0x8000000100800960;
  v20._countAndFlagsBits = 0xD00000000000001FLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  localizedString(_:comment:)(v20, v21);
  v22 = String._bridgeToObjectiveC()();

  [v19 setText:v22];

  [v4 addSubview:*&v4[v12]];
  return v4;
}

id sub_1000C80A4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore33OnboardingAdPrivacyHeaderIconView_label];
  [v2 sizeToFit];
  [v2 frame];
  Width = CGRectGetWidth(v6);
  [v2 frame];
  return [v2 setFrame:{20.0, 5.0, Width, CGRectGetHeight(v7)}];
}

double *sub_1000C83D0(uint64_t a1)
{
  v38 = type metadata accessor for SupplementaryAppPlatform();
  v3 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v5)
  {
    v30 = v1;
    v44 = _swiftEmptyArrayStorage;
    sub_1001442AC(0, v5, 0);
    v43 = v44;
    v7 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v8 = result;
    v9 = 0;
    v35 = v3 + 8;
    v36 = v3 + 16;
    v31 = a1 + 64;
    v32 = v5;
    v33 = v3;
    v34 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v39 = *(a1 + 36);
      v12 = v37;
      v13 = v38;
      (*(v3 + 16))(v37, *(a1 + 48) + *(v3 + 72) * v8, v38);
      v14 = SupplementaryAppPlatform.rawValue.getter();
      v41 = v15;
      v42 = v14;
      v40 = SupplementaryAppPlatform.systemImageName.getter();
      v17 = v16;
      result = (*(v3 + 8))(v12, v13);
      v18 = v43;
      v44 = v43;
      v20 = *(v43 + 2);
      v19 = *(v43 + 3);
      if (v20 >= v19 >> 1)
      {
        result = sub_1001442AC((v19 > 1), v20 + 1, 1);
        v18 = v44;
      }

      *(v18 + 2) = v20 + 1;
      v21 = &v18[4 * v20];
      v22 = v41;
      *(v21 + 4) = v42;
      *(v21 + 5) = v22;
      *(v21 + 6) = v40;
      *(v21 + 7) = v17;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v34;
      v23 = *(v34 + 8 * v11);
      if ((v23 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v43 = v18;
      if (v39 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v8 & 0x3F));
      if (v24)
      {
        v10 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v33;
      }

      else
      {
        v25 = v11 << 6;
        v26 = v11 + 1;
        v27 = (v31 + 8 * v11);
        v3 = v33;
        while (v26 < (v10 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1000CAE24(v8, v39, 0);
            v10 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        result = sub_1000CAE24(v8, v39, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v32)
      {
        return v43;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

Swift::Int sub_1000C86E8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C8750()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000C87A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C8804(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t sub_1000C88A8()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.secondaryText.getter();
  qword_1009CDD58 = result;
  return result;
}

uint64_t sub_1000C88EC()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_1009738D0 = v5;
  return result;
}

uint64_t sub_1000C89E4()
{
  v34 = type metadata accessor for PlatformSelectorViewLayout.Metrics.AccessoryAlignment();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v35 = &v25 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v25 - v8;
  __chkstk_darwin(v9);
  v37 = &v25 - v10;
  v11 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  sub_100005644(v11, qword_1009738D8);
  v32 = sub_1000056A8(v11, qword_1009738D8);
  v46 = &type metadata for Double;
  v47 = &protocol witness table for Double;
  v45 = 0x4024000000000000;
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D0A58);
  v14 = *(v12 - 8);
  v30 = *(v14 + 16);
  v15 = v14 + 16;
  v30(v4, v13, v12);
  v28 = v15;
  v29 = enum case for FontSource.useCase(_:);
  v36 = v2[13];
  v36(v4);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v42);
  v17 = v2[2];
  v17(v16, v4, v1);
  v27 = v17;
  StaticDimension.init(_:scaledLike:)();
  v26 = v2[1];
  v26(v4, v1);
  v18 = v30;
  v30(v4, v13, v12);
  v19 = v29;
  (v36)(v4, v29, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v42);
  v17(v20, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v21 = v26;
  v26(v4, v1);
  v18(v4, v13, v12);
  (v36)(v4, v19, v1);
  v43 = v1;
  v44 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v42);
  v27(v22, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v21(v4, v1);
  v44 = &protocol witness table for Double;
  v43 = &type metadata for Double;
  v42[0] = 0x4024000000000000;
  if (qword_10096CFC8 != -1)
  {
    swift_once();
  }

  v23 = qword_1009738D0;
  [v23 contentInsets];

  (*(v33 + 104))(v35, enum case for PlatformSelectorViewLayout.Metrics.AccessoryAlignment.inline(_:), v34);
  v40 = &type metadata for Double;
  v41 = &protocol witness table for Double;
  v39 = 0x402C000000000000;
  return PlatformSelectorViewLayout.Metrics.init(badgeHorizontalPadding:textSpaceWhenInline:textSpaceWhenExclusiveLine:badgeSpaceExclusiveLine:accessoryHorizontalPadding:accessoryContentInsets:accessoryAlignment:bottomSpacer:)();
}

char *sub_1000C8F84(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &ObjectType - v14;
  v16 = &v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_numberOfBadges] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_didSelectHandler];
  *v17 = 0;
  *(v17 + 1) = 0;
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for FontUseCase();
  v53 = sub_1000056A8(v18, qword_1009D0A58);
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v20(v15, v53, v18);
  v54 = *(v19 + 56);
  v54(v15, 0, 1, v18);
  v57 = enum case for DirectionalTextAlignment.none(_:);
  v56 = *(v10 + 104);
  v56(v12);
  v55 = type metadata accessor for DynamicTypeLabel();
  v21 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v22 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesInlineLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v20(v15, v53, v18);
  v54(v15, 0, 1, v18);
  (v56)(v12, v57, v9);
  v23 = objc_allocWithZone(v55);
  *&v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithTwoColumnsLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView] = v24;
  v58.receiver = v4;
  v58.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v58, "initWithFrame:", a1, a2, a3, a4);
  sub_10002849C(&qword_100973210);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B48F0;
  v27 = *&v25[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  *(inited + 32) = v27;
  v28 = *&v25[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesInlineLabel];
  *(inited + 40) = v28;
  v29 = *&v25[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithTwoColumnsLabel];
  *(inited + 48) = v29;
  v30 = inited & 0xC000000000000001;
  v31 = v25;
  v32 = v27;
  v33 = v28;
  v34 = v29;
  if ((inited & 0xC000000000000001) != 0)
  {
    v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v35 = v32;
  }

  v36 = v35;
  if (qword_10096CFC0 != -1)
  {
    swift_once();
  }

  [v36 setTextColor:{qword_1009CDD58, ObjectType}];
  [v31 addSubview:v36];

  if (v30)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v37 = *(inited + 40);
  }

  v38 = v37;
  if (qword_10096CFC0 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_1009CDD58];
  [v31 addSubview:v38];

  if (v30)
  {
    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v39 = *(inited + 48);
  }

  v40 = v39;
  if (qword_10096CFC0 != -1)
  {
    swift_once();
  }

  v41 = qword_1009CDD58;
  [v40 setTextColor:qword_1009CDD58];
  [v31 addSubview:v40];

  swift_setDeallocating();
  swift_arrayDestroy();
  v42 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView;
  [*&v31[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView] setTintColor:v41];
  v43 = *&v31[v42];
  v44 = v31;
  [v44 addSubview:v43];
  [v44 layoutMargins];
  v46 = v45;
  [v44 layoutMargins];
  v48 = v47;
  [v44 layoutMargins];
  [v44 setLayoutMargins:{v46, 0.0, v48}];
  v49 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v44 action:"didTapSelectorView"];

  [v44 addGestureRecognizer:v49];
  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v44 selector:"smartInvertDidChange" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  sub_100005744(0, &qword_100972780);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v44;
}

void sub_1000C9724()
{
  swift_getObjectType();
  v1 = type metadata accessor for BadgeDisplayStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v53 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v36 - v5;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text + 8))
  {
    if (*(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images))
    {
      v12 = *(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_images);
      v13 = *(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_pageTraits);
      if (v13)
      {
        v48 = v9;
        v49 = v0;
        v46 = *(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_text);
        swift_getObjectType();

        swift_unknownObjectRetain();
        v50 = sub_1000CA78C(v12, v13);
        if (qword_10096CFD0 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
        v45 = sub_1000056A8(v14, qword_1009738D8);
        PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
        sub_10002A400(v54, v54[3]);
        j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
        v51 = v13;
        AnyDimension.value(in:rounded:)();
        v16 = v15;
        (*(v8 + 8))(v11, v48);
        v17 = sub_1000CAA9C(v12, v16);

        sub_100007000(v54);
        sub_10002849C(&unk_100973970);
        v18 = *(v2 + 72);
        v19 = (*(v2 + 80) + 32) & ~*(v2 + 80);
        v37 = swift_allocObject();
        v20 = v37 + v19;
        v21 = *(v2 + 104);
        v42 = enum case for BadgeDisplayStyle.above(_:);
        (v21)(v37 + v19);
        v44 = v18;
        v39 = enum case for BadgeDisplayStyle.inline(_:);
        (v21)(v20 + v18);
        v22 = v20 + 2 * v18;
        *v22 = v17;
        *(v22 + 8) = 0;
        v43 = enum case for BadgeDisplayStyle.left(_:);
        v21();
        v40 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
        v41 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithTwoColumnsLabel;
        v25 = *(v2 + 16);
        v23 = v2 + 16;
        v24 = v25;
        v26 = (v23 + 72);
        v38 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesInlineLabel;
        v48 = v23;
        v27 = (v23 - 8);
        v28 = 3;
        v36[1] = v20;
        v47 = v1;
        while (1)
        {
          v24(v6, v20, v1);
          v33 = v53;
          v24(v53, v6, v1);
          v34 = (*v26)(v33, v1);
          if (v34 == v43)
          {
            v29 = v49;
            v30 = v41;
          }

          else if (v34 == v42)
          {
            v29 = v49;
            v30 = v40;
          }

          else
          {
            if (v34 != v39)
            {
              v35 = *v27;
              v31 = *(v49 + v40);
              v35(v53, v1);
              goto LABEL_9;
            }

            v29 = v49;
            v30 = v38;
          }

          v31 = *(v29 + v30);
LABEL_9:

          swift_unknownObjectRetain();
          v32 = static PlatformSelectorViewLayout.makeFullPlatformString(descriptiveText:badgeString:metrics:style:in:)();

          swift_unknownObjectRelease();
          [v31 setAttributedText:v32];

          v1 = v47;
          (*v27)(v6, v47);
          v20 += v44;
          if (!--v28)
          {

            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();
            swift_unknownObjectRelease();

            return;
          }
        }
      }
    }
  }
}

uint64_t sub_1000C9E30()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for LayoutRect();
  v40 = *(v2 - 8);
  v41 = v2;
  __chkstk_darwin(v2);
  v39 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  v34 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlatformSelectorViewLayout();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeDisplayStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v31 - v17;
  v48.receiver = v0;
  v48.super_class = ObjectType;
  v38 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v16);
  static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
  v19 = *(v10 + 16);
  v19(v14, v18, v9);
  v20 = (*(v10 + 88))(v14, v9);
  if (v20 == enum case for BadgeDisplayStyle.left(_:))
  {
    v21 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithTwoColumnsLabel;
LABEL_7:
    v22 = *&v0[v21];
    goto LABEL_8;
  }

  if (v20 == enum case for BadgeDisplayStyle.above(_:))
  {
    v21 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
    goto LABEL_7;
  }

  if (v20 == enum case for BadgeDisplayStyle.inline(_:))
  {
    v21 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesInlineLabel;
    goto LABEL_7;
  }

  v29 = *&v0[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel];
  v30 = *(v10 + 8);
  v31 = v10 + 8;
  v32 = v30;
  v22 = v29;
  v32(v14, v9);
LABEL_8:
  sub_1000CA330();
  if (qword_10096CFD0 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v4, qword_1009738D8);
  (*(v34 + 16))(v35, v23, v4);
  v19(v33, v18, v9);
  v46 = type metadata accessor for DynamicTypeLabel();
  v47 = &protocol witness table for UILabel;
  v45 = v22;
  v24 = *&v0[OBJC_IVAR____TtC8AppStore20PlatformSelectorView_accessoryImageView];
  v43 = sub_100005744(0, &qword_100973120);
  v44 = &protocol witness table for UIView;
  v42 = v24;
  v25 = v22;
  v26 = v24;
  PlatformSelectorViewLayout.init(metrics:style:descriptionLabel:accessoryImageView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v27 = v39;
  PlatformSelectorViewLayout.placeChildren(relativeTo:in:)();

  (*(v40 + 8))(v27, v41);
  (*(v36 + 8))(v8, v37);
  return (*(v10 + 8))(v18, v9);
}

id sub_1000CA330()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
  type metadata accessor for DynamicTypeLabel();
  v2 = v1;
  v3 = static NSObject.== infix(_:_:)();

  [v2 setHidden:(v3 & 1) == 0];
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesInlineLabel);
  v5 = static NSObject.== infix(_:_:)();

  [v4 setHidden:(v5 & 1) == 0];
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithTwoColumnsLabel);
  v7 = static NSObject.== infix(_:_:)();

  return [v6 setHidden:(v7 & 1) == 0];
}

uint64_t sub_1000CA47C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1000CA488@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  *a2 = v2;
  a2[1] = v3;
}

id sub_1000CA4D8()
{
  v1 = type metadata accessor for BadgeDisplayStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  static BadgeDisplayStyle.style(forBadgeCount:pageTraits:indentForBadges:)();
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for BadgeDisplayStyle.left(_:))
  {
    v9 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithTwoColumnsLabel;
  }

  else if (v8 == enum case for BadgeDisplayStyle.above(_:))
  {
    v9 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel;
  }

  else
  {
    if (v8 != enum case for BadgeDisplayStyle.inline(_:))
    {
      v12 = *(v2 + 8);
      v13 = *(v0 + OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesAsHeadingLabel);
      v12(v4, v1);
      return v13;
    }

    v9 = OBJC_IVAR____TtC8AppStore20PlatformSelectorView_descriptionWithBadgesInlineLabel;
  }

  v10 = *(v0 + v9);

  return v10;
}

uint64_t sub_1000CA78C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096DE48 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  sub_1000056A8(v8, qword_1009D0A58);
  v9 = [a2 traitCollection];
  v10 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v17[1] = sub_100005744(0, &unk_100984040);

  v17[0] = [a2 traitCollection];
  if (qword_10096CFD0 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for PlatformSelectorViewLayout.Metrics();
  sub_1000056A8(v11, qword_1009738D8);
  PlatformSelectorViewLayout.Metrics.badgeHorizontalPadding.getter();
  sub_10002A400(v18, v18[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v4 + 8))(v6, v3);
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = v7;
  *(inited + 40) = v10;
  v13 = NSFontAttributeName;
  v14 = v10;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10005DC58(inited + 32);
  v15 = NSAttributedString.init(images:for:adjustsImageSizeForAccessibilityContentSizeCategory:interItemSpacing:defaultAttributes:imagesShouldRenderAsTemplates:)();

  sub_100007000(v18);
  return v15;
}

double sub_1000CAA9C(unint64_t a1, double a2)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v6 = 0.0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(a1 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      [v7 size];
      v11 = v10;

      v6 = v6 + v11 + a2;
      ++v5;
      if (v9 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0.0;
}

double *sub_1000CAB9C(unint64_t a1)
{
  v25 = type metadata accessor for AppPlatform();
  v2 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = a1 & 0xC000000000000001;
    v19 = (v2 + 8);
    v20 = i;
    v21 = a1;
    while (v23)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v7 = v24;
      MediaPlatform.appPlatform.getter();
      v26 = AppPlatform.rawValue.getter();
      v9 = v8;
      (*v19)(v7, v25);
      v10 = MediaPlatform.systemImageName.getter();
      v12 = v11;
      v13 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_100034618(0, *(v13 + 2) + 1, 1, v13);
      }

      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_100034618((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[4 * v15];
      *(v16 + 4) = v26;
      *(v16 + 5) = v9;
      *(v16 + 6) = v10;
      *(v16 + 7) = v12;
      v27 = v13;
      v2 = MediaPlatform.supplementaryAppPlatforms.getter();
      v17 = sub_1000C83D0(v2);

      sub_100394710(v17);

      ++v5;
      a1 = v21;
      if (v6 == v20)
      {
        return v27;
      }
    }

    if (v5 >= *(v22 + 16))
    {
      goto LABEL_16;
    }

    v6 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000CAE24(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000CAE30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000CAE78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CAECC()
{
  result = qword_100973980;
  if (!qword_100973980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973980);
  }

  return result;
}

__n128 sub_1000CAF20@<Q0>(uint64_t *a1@<X8>)
{
  v10 = *(v1 + 32);
  v11 = *(v1 + 48);
  v12 = *(v1 + 64);
  v13 = *(v1 + 80);
  v8 = *v1;
  v9 = *(v1 + 16);
  if (*(v1 + 240) == 1)
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.VerticalBannerLayout;
    a1[4] = sub_1000CB0F4();
  }

  else
  {
    a1[3] = &type metadata for BannerCollectionViewCellLayout.HorizontalBannerLayout;
    a1[4] = sub_1000CB030();
  }

  v3 = swift_allocObject();
  sub_10002C0AC(v1 + 96, v3 + 112);
  sub_1000CB084(v1 + 136, v3 + 152);
  v4 = *(v1 + 176);
  v5 = *(v1 + 184);
  v6 = *(v1 + 192);
  sub_1000CB084(v1 + 200, v3 + 216);
  *(v3 + 48) = v10;
  *(v3 + 64) = v11;
  *(v3 + 80) = v12;
  *(v3 + 96) = v13;
  result = v8;
  *(v3 + 16) = v8;
  *(v3 + 32) = v9;
  *(v3 + 192) = v4;
  *(v3 + 200) = v5;
  *(v3 + 208) = v6;
  *a1 = v3;
  return result;
}

unint64_t sub_1000CB030()
{
  result = qword_100973988;
  if (!qword_100973988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973988);
  }

  return result;
}

uint64_t sub_1000CB084(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097B860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CB0F4()
{
  result = qword_100973990;
  if (!qword_100973990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973990);
  }

  return result;
}

uint64_t sub_1000CB148(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1000CB160(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

__n128 sub_1000CB1B4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1000CB200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 241))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CB248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CB2D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 120);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CB320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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
      *(result + 120) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1000CB3AC(double a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(v1 + 5);
  v29 = *(v1 + 3);
  v30 = v5;
  v31 = v1[7];
  v7 = v1[8];
  v6 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_10002C0AC((v1 + 12), v26);
  sub_1000CB084((v1 + 17), v27);
  v10 = v1[22];
  v11 = v1[23];
  v12 = *(v1 + 192);
  v17[0] = v2;
  v17[1] = v3;
  v17[2] = v4;
  v18 = v29;
  v19 = v30;
  v20 = v31;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  v24 = v9;
  v25 = 0;
  v27[5] = v10;
  v27[6] = v11;
  v28 = v12;
  if ((v12 & 1) == 0)
  {
    sub_1000CB084(v27, &v15);
    sub_1000CC370(&v15);
  }

  sub_10002A400(v26, v26[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_1000CC3D8(v17);
  sub_1000CB084((v1 + 25), &v15);
  if (v16)
  {
    sub_100005A38(&v15, v17);
    sub_10002A400(v17, v18);
    dispatch thunk of Placeable.measure(toFit:with:)();
    sub_100007000(v17);
  }

  else
  {
    sub_1000CC370(&v15);
  }

  return a1;
}

uint64_t sub_1000CB5B0(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v14 = sub_1000CC354(a2, a3, a4, a5, v12, v13);
  v16 = v15;
  v52 = v18;
  v53 = v17;
  v19 = *(v5 + 1);
  v78 = *v5;
  v79 = v19;
  v20 = *(v5 + 3);
  v80 = *(v5 + 2);
  v81 = v20;
  v21 = v5[8];
  v22 = *(v5 + 9);
  v77 = *(v5 + 5);
  sub_10002C0AC((v5 + 12), v64);
  sub_1000CB084((v5 + 17), v66);
  v23 = v5[22];
  v24 = v6[23];
  v25 = *(v6 + 192);
  v59[0] = v78;
  v59[1] = v79;
  v59[2] = v80;
  v59[3] = v81;
  v60 = v21;
  v61 = v22;
  v62 = v77;
  v63 = 0;
  *&v66[5] = v23;
  *&v66[6] = v24;
  v26 = 0.0;
  v27 = 0.0;
  v67 = v25;
  if ((v25 & 1) == 0)
  {
    sub_1000CB084(v66, v68);
    if (v69 != 0.0)
    {
      v27 = v24;
      v26 = v23;
    }

    sub_1000CC370(v68);
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v21 + v26;
  }

  sub_10002A400(v64, v65);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v33 = v30;
  if (v27 > v30)
  {
    v30 = v27;
  }

  *v68 = v26;
  *&v68[1] = v27;
  v34 = v28 + v29;
  *&v68[2] = v28;
  v69 = v29;
  v70 = v33;
  v71 = v31;
  v72 = v32;
  v73 = v28 + v29;
  v74 = v30;
  v75 = v30;
  v35 = v30;
  v76 = 0;
  sub_1000CB084((v6 + 25), v57);
  v36 = v58;
  sub_1000CC370(v57);
  if (v25)
  {
    v37 = 1;
  }

  else
  {
    sub_1000CB084((v6 + 17), v57);
    v37 = v58 == 0;
    sub_1000CC370(v57);
  }

  sub_10002A400(v64, v65);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v39 = v38 >= v33 || v37;
  if (v36 || (v39 & 1) == 0)
  {
    v44 = v34;
    v40 = v14;
    v83.origin.x = v14;
    v41 = v16;
    v83.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v83.size.width = v53;
    v83.size.height = v52;
    MinX = CGRectGetMinX(v83);
    if (v36)
    {
      v84.origin.x = v14;
      v84.origin.y = v41;
      v84.size.width = v53;
      v84.size.height = v52;
      MinY = CGRectGetMinY(v84);
      goto LABEL_22;
    }
  }

  else
  {
    v40 = v14;
    v82.origin.x = v14;
    v41 = v16;
    v82.origin.y = v16;
    v42 = v52;
    v43 = v53;
    v82.size.width = v53;
    v82.size.height = v52;
    v44 = v34;
    MinX = CGRectGetMidX(v82) + v34 * -0.5;
  }

  v85.origin.x = v40;
  v85.origin.y = v41;
  v85.size.width = v43;
  v85.size.height = v42;
  MinY = CGRectGetMidY(v85) + v35 * -0.5;
LABEL_22:
  v54 = MinY;
  CGRect.withLayoutDirection(using:relativeTo:)();
  sub_1000CB9EC(v47, v48, v49, v50, a1, v68);
  sub_1000CB084((v6 + 25), &v55);
  if (v56)
  {
    sub_100005A38(&v55, v57);
    sub_10002A400(v57, v58);
    dispatch thunk of Placeable.measure(toFit:with:)();
    v86.origin.x = v40;
    v86.origin.y = v41;
    v86.size.width = v43;
    v86.size.height = v42;
    CGRectGetMinX(v86);
    v87.origin.x = MinX;
    v87.origin.y = v54;
    v87.size.width = v44;
    v87.size.height = v35;
    CGRectGetMaxY(v87);
    v88.origin.x = v40;
    v88.origin.y = v41;
    v88.size.width = v43;
    v88.size.height = v42;
    CGRectGetWidth(v88);
    sub_10002A400(v57, v58);
    CGRect.withLayoutDirection(using:relativeTo:)();
    dispatch thunk of Placeable.place(at:with:)();
    sub_1000CC3D8(v59);
    return sub_100007000(v57);
  }

  else
  {
    sub_1000CC3D8(v59);
    return sub_1000CC370(&v55);
  }
}

uint64_t sub_1000CB9EC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 96) | (*(a6 + 32) < *(a6 + 8) + *(a6 + 8));
  sub_1000CB084(v6 + 144, &v21);
  if (v22)
  {
    sub_100005A38(&v21, v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinX(v24);
    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    if (v11)
    {
      CGRectGetMidY(*&v12);
    }

    else
    {
      CGRectGetMinY(*&v12);
    }

    sub_10002A400(v23, v23[3]);
    CGRect.withLayoutDirection(using:relativeTo:)();
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v23);
  }

  else
  {
    sub_1000CC370(&v21);
  }

  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  if (v11)
  {
    CGRectGetMidY(*&v16);
  }

  else
  {
    CGRectGetMinY(*&v16);
  }

  sub_10002A400((v6 + 104), *(v6 + 128));
  CGRect.withLayoutDirection(using:relativeTo:)();
  return dispatch thunk of Placeable.place(at:with:)();
}

double sub_1000CBBEC(double a1)
{
  sub_1000CB084(v1 + 200, &v26);
  if (v27)
  {
    sub_100005A38(&v26, &v12);
    sub_10002A400(&v12, *(&v13 + 1));
    dispatch thunk of Placeable.measure(toFit:with:)();
    sub_100007000(&v12);
  }

  else
  {
    sub_1000CC370(&v26);
  }

  v2 = v1[1];
  v24 = *v1;
  v25 = v2;
  v3 = *(v1 + 8);
  v23 = *(v1 + 72);
  v4 = *(v1 + 11);
  v10 = v1[3];
  v11 = v1[2];
  sub_10002C0AC((v1 + 6), v20);
  sub_1000CB084(v1 + 136, v21);
  v5 = *(v1 + 22);
  v6 = *(v1 + 23);
  v7 = *(v1 + 192);
  v12 = v24;
  v13 = v25;
  v14 = v11;
  v15 = v10;
  v16 = v3;
  v17 = v23;
  v18 = v4;
  v19 = 1;
  v21[5] = v5;
  v21[6] = v6;
  v22 = v7;
  if ((v7 & 1) == 0)
  {
    sub_1000CB084(v21, &v26);
    sub_1000CC370(&v26);
  }

  sub_10002A400(v20, v20[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_1000CC3D8(&v12);
  return a1;
}

uint64_t sub_1000CBE10(uint64_t a1, double a2, double a3, double a4, double a5)
{
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v72.origin.x = sub_1000CC354(a2, a3, a4, a5, v11, v12);
  x = v72.origin.x;
  y = v72.origin.y;
  width = v72.size.width;
  height = v72.size.height;
  CGRectGetWidth(v72);
  sub_1000CB084(v5 + 200, &v62);
  v42 = y;
  if (v64 == 0.0)
  {
    sub_1000CC370(&v62);
    v17 = y;
  }

  else
  {
    sub_100005A38(&v62, &v43);
    sub_10002A400(&v43, *(&v44 + 1));
    dispatch thunk of Placeable.measure(toFit:with:)();
    v73.origin.x = x;
    v73.origin.y = y;
    v73.size.width = width;
    v73.size.height = height;
    CGRectGetMaxX(v73);
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    CGRectGetMidY(v74);
    sub_10002A400(&v43, *(&v44 + 1));
    CGRect.withLayoutDirection(using:relativeTo:)();
    dispatch thunk of Placeable.place(at:with:)();
    v17 = y;
    sub_100007000(&v43);
  }

  sub_1000CB084(v5 + 200, v60);
  v18 = v61;
  sub_1000CC370(v60);
  v19 = v5[1];
  v56 = *v5;
  v57 = v19;
  v20 = v5[3];
  v58 = v5[2];
  v59 = v20;
  v21 = *(v5 + 8);
  v54 = *(v5 + 72);
  v55 = *(v5 + 11);
  sub_10002C0AC((v5 + 6), v51);
  sub_1000CB084(v5 + 136, v52);
  v22 = *(v5 + 22);
  v23 = *(v5 + 23);
  v24 = *(v5 + 192);
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v21;
  v48 = v54;
  v49 = v55;
  v50 = 1;
  *&v52[5] = v22;
  *&v52[6] = v23;
  v53 = v24;
  v75.origin.x = x;
  v75.origin.y = v17;
  v75.size.width = width;
  v75.size.height = height;
  CGRectGetHeight(v75);
  v25 = 0.0;
  v26 = 0.0;
  if ((v24 & 1) == 0)
  {
    sub_1000CB084(v52, &v62);
    if (v64 != 0.0)
    {
      v26 = v23;
      v25 = v22;
    }

    sub_1000CC370(&v62);
  }

  if (v25 <= 0.0)
  {
    v27 = 0.0;
  }

  else
  {
    v27 = v21 + v25;
  }

  sub_10002A400(v51, v51[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  if (v26 > v29)
  {
    v32 = v26;
  }

  else
  {
    v32 = v29;
  }

  *&v62 = v25;
  *(&v62 + 1) = v26;
  v63 = v27;
  v64 = v28;
  v65 = v29;
  v66 = v30;
  v67 = v31;
  v68 = v27 + v28;
  v69 = v32;
  v70 = v32;
  v71 = 0;
  v33 = x;
  v34 = v42;
  v35 = width;
  v36 = height;
  if (v18)
  {
    CGRectGetMinX(*&v33);
  }

  else
  {
    CGRectGetMidX(*&v33);
  }

  v76.origin.x = x;
  v76.origin.y = v42;
  v76.size.width = width;
  v76.size.height = height;
  CGRectGetMidY(v76);
  CGRect.withLayoutDirection(using:relativeTo:)();
  sub_1000CB9EC(v37, v38, v39, v40, a1, &v62);
  return sub_1000CC3D8(&v43);
}

double sub_1000CC200()
{
  sub_1000CAF20(v3);
  sub_10002A400(v3, v3[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v1 = v0;
  sub_100007000(v3);
  return v1;
}

uint64_t sub_1000CC2A4()
{
  sub_1000CAF20(v1);
  sub_10002A400(v1, v1[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v1);
}

__n128 sub_1000CC338@<Q0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 48);
  a1[2] = *(v1 + 32);
  a1[3] = v2;
  v3 = *(v1 + 80);
  a1[4] = *(v1 + 64);
  a1[5] = v3;
  result = *v1;
  v5 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000CC370(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10097B860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000CC408(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1000CC44C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 201))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CC494(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 200) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 201) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 201) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000CC518(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CC538(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
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

  *(result + 96) = v3;
  return result;
}

unint64_t sub_1000CC5A0()
{
  result = qword_100973998;
  if (!qword_100973998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973998);
  }

  return result;
}

double sub_1000CC66C(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  v87 = type metadata accessor for SmallStoryCardLayout.Metrics();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v85 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for AspectRatio();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v82 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout.Metrics();
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Shelf.PresentationHints();
  v94 = *(v6 - 8);
  v95 = v6;
  __chkstk_darwin(v6);
  v93 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = type metadata accessor for BrickLayout.Metrics();
  v97 = *(v10 - 8);
  v98 = v10;
  __chkstk_darwin(v10);
  v96 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ShelfLayoutContext();
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v99 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MediumLockupLayout.Metrics();
  v103 = *(v14 - 8);
  v104 = v14;
  __chkstk_darwin(v14);
  v102 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PageGrid();
  v17 = *(v16 - 8);
  v106 = v16;
  v107 = v17;
  __chkstk_darwin(v16);
  v105 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v19 - 8);
  v21 = &v81 - v20;
  v22 = sub_10002849C(&unk_1009731F0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v81 - v24;
  v26 = type metadata accessor for Shelf.ContentType();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = &v81 - v31;
  swift_getKeyPath();
  v108 = a1;
  ItemLayoutContext.subscript.getter();

  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v33 = v25;
  v34 = v27;
  (*(v23 + 8))(v33, v22);
  if ((*(v27 + 48))(v21, 1, v26) != 1)
  {
    (*(v27 + 32))(v32, v21, v26);
    (*(v27 + 16))(v29, v32, v26);
    v36 = (*(v27 + 88))(v29, v26);
    v37 = v32;
    if (v36 == enum case for Shelf.ContentType.smallLockup(_:))
    {
      swift_getKeyPath();
      v38 = v105;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      (*(v107 + 8))(v38, v106);
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v39, qword_1009D3798);
      sub_100079F24();
      type metadata accessor for SmallLockupLayout();
      v40 = &unk_1009739C8;
      v41 = &type metadata accessor for SmallLockupLayout;
LABEL_8:
      sub_1000CD864(v40, v41);
      dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
      v35 = v42;
      swift_unknownObjectRelease();
LABEL_22:
      (*(v34 + 8))(v37, v26);
      return v35;
    }

    if (v36 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      swift_getKeyPath();
      v43 = v105;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      (*(v107 + 8))(v43, v106);
      type metadata accessor for MediumLockupCollectionViewCell();
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v44 = v109;
      v45 = v102;
      sub_100631334(v102);

      sub_100079F24();
      type metadata accessor for MediumLockupLayout();
      sub_1000CD864(&qword_1009739C0, &type metadata accessor for MediumLockupLayout);
      dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
      v35 = v46;
      swift_unknownObjectRelease();
      (*(v103 + 8))(v45, v104);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.largeLockup(_:))
    {
      swift_getKeyPath();
      v47 = v105;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      (*(v107 + 8))(v47, v106);
      if (qword_10096D410 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for LargeLockupLayout.Metrics();
      sub_1000056A8(v48, qword_1009CE908);
      sub_100079F24();
      type metadata accessor for LargeLockupLayout();
      v40 = &unk_1009739B8;
      v41 = &type metadata accessor for LargeLockupLayout;
      goto LABEL_8;
    }

    if (v36 == enum case for Shelf.ContentType.ribbonBar(_:) || v36 == enum case for Shelf.ContentType.ribbonFlow(_:))
    {
      v53 = v99;
      ItemLayoutContext.parentShelfLayoutContext.getter();
      v35 = sub_1006932E8(v53);
      (*(v100 + 8))(v53, v101);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.videoCard(_:))
    {
      swift_getKeyPath();
      v49 = v105;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      v51 = v50;
      (*(v107 + 8))(v49, v106);
      if (qword_10096D280 != -1)
      {
        swift_once();
      }

      sub_100079F24();
      swift_getObjectType();
      type metadata accessor for VideoCardView();
      sub_1001C2E40(v51);
      v35 = v52;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.brick(_:))
    {
      swift_getKeyPath();
      v55 = v92;
      ItemLayoutContext.subscript.getter();

      v56 = v93;
      static Shelf.PresentationHints.showSupplementaryText.getter();
      sub_1000CD864(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
      v57 = v95;
      v58 = dispatch thunk of SetAlgebra.isSuperset(of:)();
      v59 = *(v94 + 8);
      v59(v56, v57);
      v59(v55, v57);
      if (v58)
      {
        if (qword_10096D058 != -1)
        {
          swift_once();
        }

        v60 = qword_1009CDFB0;
      }

      else
      {
        if (qword_10096D060 != -1)
        {
          swift_once();
        }

        v60 = qword_1009CDFC8;
      }

      v64 = v98;
      v65 = sub_1000056A8(v98, v60);
      v67 = v96;
      v66 = v97;
      (*(v97 + 16))(v96, v65, v64);
      swift_getKeyPath();
      v68 = v105;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      (*(v107 + 8))(v68, v106);
      sub_100079F24();
      type metadata accessor for BrickLayout();
      sub_1000CD864(&qword_1009739B0, &type metadata accessor for BrickLayout);
      dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
      v35 = v69;
      swift_unknownObjectRelease();
      (*(v66 + 8))(v67, v64);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.categoryBrick(_:))
    {
LABEL_30:
      swift_getKeyPath();
      v61 = v105;
      ItemLayoutContext.subscript.getter();

      PageGrid.componentMeasuringSize(spanning:)();
      (*(v107 + 8))(v61, v106);
      v62 = v89;
      static ChartOrCategoryBrickStyle.tileMetrics.getter();
      sub_100079F24();
      type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout();
      sub_1000CD864(&qword_1009739A8, &type metadata accessor for ChartOrCategoryBrickCollectionViewCellLayout);
      dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
      v35 = v63;
      swift_unknownObjectRelease();
      (*(v90 + 8))(v62, v91);
      goto LABEL_22;
    }

    if (v36 == enum case for Shelf.ContentType.miniTodayCard(_:))
    {
      type metadata accessor for BaseTodayCardCollectionViewCell();
      v70 = sub_1004EBBF0();
      goto LABEL_37;
    }

    if (v36 == enum case for Shelf.ContentType.appTrailerLockup(_:))
    {
      type metadata accessor for AppTrailerLockupCollectionViewCell();
    }

    else
    {
      if (v36 != enum case for Shelf.ContentType.screenshotsLockup(_:))
      {
        if (v36 == enum case for Shelf.ContentType.smallStoryCard(_:))
        {
          swift_getKeyPath();
          v72 = v105;
          ItemLayoutContext.subscript.getter();

          PageGrid.componentMeasuringSize(spanning:)();
          (*(v107 + 8))(v72, v106);
          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v73 = v109;
          v74 = v85;
          sub_100187A84(v109, v85);
          static SmallStoryCardLayout.estimatedMeasurements(fitting:using:with:)();
          v35 = v75;

          (*(v86 + 8))(v74, v87);
          goto LABEL_22;
        }

        if (v36 == enum case for Shelf.ContentType.posterLockup(_:))
        {
          v76 = v99;
          ItemLayoutContext.parentShelfLayoutContext.getter();
          v77 = v82;
          static PosterLockupLayout.aspectRatio.getter();
          v78 = v105;
          ShelfLayoutContext.contentPageGrid.getter();
          PageGrid.smallestPossibleColumnWidth.getter();
          (*(v107 + 8))(v78, v106);
          AspectRatio.height(fromWidth:)();
          v35 = v79;
          (*(v83 + 8))(v77, v84);
          (*(v100 + 8))(v76, v101);
          goto LABEL_22;
        }

        if (v36 != enum case for Shelf.ContentType.appPromotion(_:))
        {
          if (v36 != enum case for Shelf.ContentType.tagBrick(_:))
          {
            v80 = *(v27 + 8);
            v80(v32, v26);
            v80(v29, v26);
            return 0.0;
          }

          goto LABEL_30;
        }

        v70 = sub_1000D1C68(v108, 1);
LABEL_37:
        v35 = v70;
        goto LABEL_22;
      }

      type metadata accessor for ScreenshotsLockupCollectionViewCell();
    }

    v71 = v99;
    ItemLayoutContext.parentShelfLayoutContext.getter();
    v35 = sub_10009A4A0(v71);
    (*(v100 + 8))(v71, v101);
    goto LABEL_22;
  }

  sub_1000CD7FC(v21);
  return 0.0;
}

uint64_t sub_1000CD7FC(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100992460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CD864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CD8AC()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009CDD60);
  sub_1000056A8(v0, qword_1009CDD60);
  return AspectRatio.init(_:_:)();
}

char *sub_1000CD900()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_isCollapsing] = 0;
  v3 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView;
  *&v1[v3] = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_10096EA30 != -1)
  {
    swift_once();
  }

  v17[2] = xmmword_1009D2C10;
  v17[3] = unk_1009D2C20;
  v18 = qword_1009D2C30;
  v17[0] = xmmword_1009D2BF0;
  v17[1] = unk_1009D2C00;
  v5 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *&v1[v4] = sub_1005BF26C(v17, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_mediaOverlayStyle;
  v7 = enum case for MediaOverlayStyle.matchSystem(_:);
  v8 = type metadata accessor for MediaOverlayStyle();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  v9 = &v1[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView;
  v12 = *&v10[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView];
  v13 = v10;
  [v12 setContentMode:2];
  [*&v10[v11] setClipsToBounds:1];
  [*&v10[v11] setAccessibilityIgnoresInvertColors:1];
  [v13 addSubview:*&v10[v11]];
  v14 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView;
  [*&v13[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView] setContentMode:2];
  [*&v13[v14] setClipsToBounds:1];
  [v13 addSubview:*&v13[v14]];

  return v13;
}

void sub_1000CDB94()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView];
    v5 = Strong;
    [v3 setHidden:1];
    v5[qword_1009D2208] = 1;
    *&v5[qword_100988CA8 + 8] = &off_1008B3AE8;
    swift_unknownObjectWeakAssign();
    v4 = [v0 traitCollection];
    UITraitCollection.isSizeClassRegular.getter();

    [v5 _setCornerRadius:20.0];
    [v1 insertSubview:v5 aboveSubview:v3];
    [v1 setNeedsLayout];
  }
}

void (*sub_1000CDCC0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000CDD14;
}

void sub_1000CDD14(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v23 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1000CFD88(&qword_100973190, type metadata accessor for VideoView);
      v7 = v23;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100005744(0, &qword_100972EB0);
        v10 = v4;
        v11 = static NSObject.== infix(_:_:)();

        v12 = *(a1 + 8);
        if (v11)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }

          [*(v12 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v23;
    }

    swift_unknownObjectWeakAssign();
    sub_1000CDB94();

    v22 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_1000CFD88(&qword_100973190, type metadata accessor for VideoView);
      v15 = [v6 superview];
      if (v15)
      {
        v16 = v15;
        sub_100005744(0, &qword_100972EB0);
        v17 = v4;
        v18 = static NSObject.== infix(_:_:)();

        v19 = *(a1 + 8);
        if (v18)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }

          [*(v19 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView) setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1000CDB94();
    v22 = v23;
  }
}

void sub_1000CE0B8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.receiver = v0;
  v32.super_class = ObjectType;
  objc_msgSendSuper2(&v32, "frame", v4);
  v7 = enum case for FloatingPointRoundingRule.up(_:);
  v8 = *(v3 + 104);
  v8(v6, enum case for FloatingPointRoundingRule.up(_:), v2);
  CGRect.rounded(_:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = *(v3 + 8);
  v17(v6, v2);
  v8(v6, v7, v2);
  CGRect.rounded(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v17(v6, v2);
  v33.origin.x = v10;
  v33.origin.y = v12;
  v33.size.width = v14;
  v33.size.height = v16;
  v34.origin.x = v19;
  v34.origin.y = v21;
  v34.size.width = v23;
  v34.size.height = v25;
  if (!CGRectEqualToRect(v33, v34) && (v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_isCollapsing] & 1) == 0)
  {
    v26 = *&v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_refetchArtworkBlock];
    if (v26)
    {

      [v0 bounds];
      v8(v6, v7, v2);
      CGSize.rounded(_:)();
      v28 = v27;
      v30 = v29;
      v17(v6, v2);
      v31 = [v0 traitCollection];
      v26(v28, v30);
      sub_10001F63C(v26);
    }
  }
}

id sub_1000CE388()
{
  v34.receiver = v0;
  v34.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  v1 = v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_isCollapsing];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (v1 == 1)
  {
    if (Strong)
    {
      [v0 bounds];
      v5 = v4;
      v7 = v6;
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8 && (v9 = v8, v10 = *(v8 + qword_100988CC0), v9, v11 = [v10 image], v10, v11))
      {
        [v11 size];
        v13 = v12;
        v15 = v14;

        v16 = v15;
        v17 = v13;
      }

      else
      {
        [v0 bounds];
      }

      [v3 setFrame:{v5, v7, v17, v16}];
    }

    v20 = *&v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    v22 = v21;
    v24 = v23;
    v25 = [v20 image];
    if (v25)
    {
      v26 = v25;
      [v25 size];
      v28 = v27;
      v30 = v29;
    }

    else
    {
      [v0 bounds];
      v28 = v31;
      v30 = v32;
    }

    [v20 setFrame:{v22, v24, v28, v30}];
    v19 = *&v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView];
    [v20 frame];
  }

  else
  {
    if (Strong)
    {
      [v0 bounds];
      [v3 setFrame:?];
    }

    v18 = *&v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView];
    [v0 bounds];
    [v18 setFrame:?];
    v19 = *&v0[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView];
    [v0 bounds];
  }

  return [v19 setFrame:?];
}

void sub_1000CE630()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[qword_100988CE8];
    if (v1)
    {
      v5 = Strong;
      v2 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1000D0740;
      aBlock[5] = v2;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100235C48;
      aBlock[3] = &unk_1008B3C18;
      v3 = _Block_copy(aBlock);
      v4 = v1;

      [v4 enterFullScreenAnimated:1 completionHandler:v3];

      _Block_release(v3);
    }

    else
    {
    }
  }
}

void sub_1000CE7BC()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100407754(0, 0);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + qword_100988CE8);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      [v3 setShowsPlaybackControls:1];
    }
  }
}

void sub_1000CE880()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong traitCollection];
    v2 = UITraitCollection.isSizeClassRegular.getter();

    if (v2)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      *(v4 + 24) = 0x3FF0000000000000;
      v5 = objc_opt_self();
      v7[4] = sub_1000D0134;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_100007A08;
      v7[3] = &unk_1008B3B50;
      v6 = _Block_copy(v7);

      [v5 animateWithDuration:4 delay:v6 options:0 animations:0.3 completion:0.0];

      swift_unknownObjectRelease();
      _Block_release(v6);
    }
  }
}

void sub_1000CEA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v8 - 8);
  v75 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v67 - v11;
  v12 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v12 - 8);
  v73 = &v67 - v13;
  v14 = type metadata accessor for VideoControls();
  __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v15);
  v16 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v16 - 8);
  v18 = &v67 - v17;
  v19 = type metadata accessor for VideoFillMode();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for VideoConfiguration();
  v26 = __chkstk_darwin(v23);
  v28 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = qword_100972FF0 + 16;
  if (a1)
  {
    v69 = v25;
    v70 = v24;
    v71 = a2;
    v30 = *(v20 + 104);
    v67 = v4;
    v31 = v28;
    v30(v22, enum case for VideoFillMode.scaleAspectFill(_:), v19, v26);

    Video.preview.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v32 = type metadata accessor for AspectRatio();
    (*(*(v32 - 8) + 56))(v18, 0, 1, v32);
    Video.playbackControls.getter();
    Video.autoPlayPlaybackControls.getter();
    Video.canPlayFullScreen.getter();
    Video.allowsAutoPlay.getter();
    v33 = a3;
    Video.looping.getter();
    VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
    type metadata accessor for VideoViewManager();
    BaseObjectGraph.inject<A>(_:)();
    Video.playbackId.getter();
    v34 = v73;
    Video.videoUrl.getter();
    v35 = type metadata accessor for URL();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v74;
    Video.templateMediaEvent.getter();
    v37 = v75;
    Video.templateClickEvent.getter();
    type metadata accessor for VideoView();
    sub_1000CFD88(&qword_100973190, type metadata accessor for VideoView);
    v38 = v31;
    v4 = v67;
    v68 = v38;
    v72 = v33;
    v39 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v37, &unk_100973A50);
    sub_10002B894(v36, &unk_100973A50);
    sub_10002B894(v34, &qword_100982460);
    sub_10002B894(v76, &qword_10096FB90);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v41 = Strong;
      v42 = [Strong superview];
      if (v42)
      {
        v43 = v42;
        sub_100005744(0, &qword_100972EB0);
        v44 = v4;
        v45 = static NSObject.== infix(_:_:)();

        if (v45)
        {
          v46 = swift_unknownObjectWeakLoadStrong();
          if (v46)
          {
            v47 = v46;
            [v46 removeFromSuperview];
          }

          [*&v44[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView] setHidden:0];
        }
      }

      else
      {
      }
    }

    swift_unknownObjectWeakAssign();
    sub_1000CDB94();

    v51 = swift_unknownObjectWeakLoadStrong();
    if (v51)
    {
      v52 = v51;
      Video.preview.getter();
      v53 = Artwork.backgroundColor.getter();

      [v52 setBackgroundColor:v53];
    }

    Video.preview.getter();
    v54 = Artwork.backgroundColor.getter();

    a2 = v71;
    if (!v54)
    {
      sub_100005744(0, &qword_100970180);
      v54 = static UIColor.placeholderBackground.getter();
    }

    [v4 setBackgroundColor:v54];

    (*(v69 + 8))(v68, v70);
    v48 = &selRef__setDefaultAttributes_;
    v29 = &qword_100972FF0[2];
  }

  else
  {
    v48 = &selRef__setDefaultAttributes_;
    if (a2)
    {

      v49 = Artwork.backgroundColor.getter();
      if (!v49)
      {
        sub_100005744(0, &qword_100970180);
        v49 = static UIColor.placeholderBackground.getter();
      }

      v50 = v49;
      [v4 setBackgroundColor:v49];

      v29 = qword_100972FF0 + 16;
    }
  }

  [*&v4[v29[316]] v48[495]];
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    v56 = v55;
    [v55 v48[495]];
  }

  [*&v4[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView] v48[495]];
  v57 = sub_1000CF27C(a2, a1);
  v58 = &v4[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_refetchArtworkBlock];
  v59 = *&v4[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_refetchArtworkBlock];
  *v58 = v57;
  v58[1] = v60;
  sub_10001F63C(v59);
  v61 = *v58;
  if (*v58)
  {

    [v4 bounds];
    v63 = v62;
    v65 = v64;
    v66 = [v4 traitCollection];
    v61(v63, v65);
    sub_10001F63C(v61);
  }
}

void (*sub_1000CF27C(uint64_t a1, uint64_t a2))(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  if (a2)
  {
    a1 = Video.preview.getter();
LABEL_5:
    v5 = a2 != 0;
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_weakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = v7;
    *(v8 + 40) = a1;
    *(v8 + 48) = ObjectType;
    return sub_1000D0140;
  }

  if (a1)
  {

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_1000CF378(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  if (v10)
  {
    if (!OfferItemDetailPage.artwork.getter())
    {
      [*&v2[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView] setHidden:1];
      v7 = *&v2[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView];
      OfferItemDetailPage.offerItem.getter();
      sub_1005BFBEC();

      v8 = OfferItemDetailPage.offerItem.getter();
      [v3 bounds];
      sub_1000D01B8(v8, v10, v7);
      goto LABEL_6;
    }
  }

  v5 = OfferItemDetailPage.video.getter();
  v6 = OfferItemDetailPage.artwork.getter();
  sub_1000CEA30(v5, v6, a2);
LABEL_6:
}

void sub_1000CF4A8(double a1, double a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for Artwork.Crop();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = swift_unknownObjectWeakLoadStrong();

      if (v13)
      {
        v14 = &qword_100988CC0;
        goto LABEL_7;
      }
    }
  }

  else
  {
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (v15)
    {
      v13 = v15;
      v14 = &OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView;
LABEL_7:
      v16 = *&v13[*v14];

      if (a1 != 0.0)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  v16 = 0;
  if (a1 != 0.0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (a2 == 0.0)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!v16)
  {
    return;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_11:

    return;
  }

  type metadata accessor for ArtworkLoader();
  v16 = v16;
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  if (!v19[4])
  {

    goto LABEL_11;
  }

  if (qword_10096CFD8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AspectRatio();
  sub_1000056A8(v17, qword_1009CDD60);
  AspectRatio.height(fromWidth:)();
  Artwork.crop.getter();
  v18 = Artwork.Crop.preferredContentMode.getter();
  (*(v8 + 8))(v10, v7);
  Artwork.config(_:mode:prefersLayeredImage:)();
  [v16 setContentMode:v18];
  sub_100005744(0, &qword_100973120);
  sub_1000D0150();
  ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
}

uint64_t type metadata accessor for AppPromotionMediaContainerView()
{
  result = qword_100973A28;
  if (!qword_100973A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CF8D4()
{
  result = type metadata accessor for MediaOverlayStyle();
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

void sub_1000CF9AC(void *a1)
{
  sub_1000CFFBC();
  swift_unknownObjectWeakAssign();
  sub_1000CDB94();
}

uint64_t (*sub_1000CF9FC(uint64_t **a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1000CDCC0(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1000CFA74()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1000CFD88(&qword_100973A48, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1000CFAE8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000CFD88(&qword_100973A48, type metadata accessor for AppPromotionMediaContainerView);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000CFB74(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1000CFD88(&qword_100973A48, type metadata accessor for AppPromotionMediaContainerView);
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_1000CFC30(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100005744(0, &qword_100972EB0);
  v4 = v1;
  v5 = static NSObject.== infix(_:_:)();

  return v5 & 1;
}

id sub_1000CFCC0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "frame");
}

uint64_t sub_1000CFD88(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000CFE18()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_isCollapsing) = 0;
  v2 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkFallbackView;
  if (qword_10096EA30 != -1)
  {
    swift_once();
  }

  v9[2] = xmmword_1009D2C10;
  v9[3] = unk_1009D2C20;
  v10 = qword_1009D2C30;
  v9[0] = xmmword_1009D2BF0;
  v9[1] = unk_1009D2C00;
  v4 = objc_allocWithZone(type metadata accessor for AppPromotionIAPFallbackView());
  *(v1 + v3) = sub_1005BF26C(v9, 0.0, 0.0, 0.0, 0.0);
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_mediaOverlayStyle;
  v6 = enum case for MediaOverlayStyle.matchSystem(_:);
  v7 = type metadata accessor for MediaOverlayStyle();
  (*(*(v7 - 8) + 104))(v1 + v5, v6, v7);
  v8 = (v1 + OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_refetchArtworkBlock);
  *v8 = 0;
  v8[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000CFFBC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1000CFD88(&qword_100973190, type metadata accessor for VideoView);
    v1 = [Strong superview];
    if (v1)
    {
      v2 = v1;
      sub_100005744(0, &qword_100972EB0);
      v3 = v0;
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (v5)
        {
          v6 = v5;
          [v5 removeFromSuperview];
        }

        v7 = *&v3[OBJC_IVAR____TtC8AppStore30AppPromotionMediaContainerView_artworkView];

        [v7 setHidden:0];
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1000D0150()
{
  result = qword_100973A60;
  if (!qword_100973A60)
  {
    sub_100005744(255, &qword_100973120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973A60);
  }

  return result;
}

uint64_t sub_1000D01B8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for Artwork.Crop();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34[3] = type metadata accessor for OfferItem();
  v34[4] = &protocol witness table for AppPromotion;
  v34[0] = a1;
  sub_10002C0AC(v34, v33);

  sub_10002849C(&unk_1009793D0);
  if (swift_dynamicCast())
  {
    v11 = v32;
    v12 = OfferItem.iapArtwork.getter();
    OfferItem.offerLockup.getter();
    type metadata accessor for InAppPurchaseLockup();
    v13 = swift_dynamicCastClass();
    v29 = v11;
    if (v13)
    {
      InAppPurchaseLockup.parent.getter();
      v14 = Lockup.icon.getter();
    }

    else
    {

      OfferItem.offerLockup.getter();
      v14 = Lockup.icon.getter();
    }

    v30 = a2;
    if (v14)
    {

      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v31 = v8;
      v15 = *(v8 + 8);
      v15(v10, v7);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v28 = a3;
      v16 = *&a3[qword_10098D858];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v16 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      Artwork.crop.getter();
      v17 = Artwork.Crop.preferredContentMode.getter();
      v15(v10, v7);
      [v16 setContentMode:v17];
      type metadata accessor for ArtworkView();
      sub_1000CFD88(&qword_100970E80, &type metadata accessor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v8 = v31;
      a3 = v28;
    }

    if (v12)
    {
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      v18 = *(v8 + 8);
      v31 = v8 + 8;
      v28 = v18;
      (v18)(v10, v7);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v19 = *&a3[qword_10098D850];
      v20 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
      v21 = *(v19 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v21 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      v22 = *(v19 + v20);
      Artwork.crop.getter();
      v23 = Artwork.Crop.preferredContentMode.getter();
      (v28)(v10, v7);
      [v22 setContentMode:v23];

      v24 = *(v19 + v20);
      type metadata accessor for ArtworkView();
      sub_1000CFD88(&qword_100970E80, &type metadata accessor for ArtworkView);
      v25 = v24;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
    }
  }

  return sub_100007000(v34);
}

id sub_1000D075C()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode] = 1;
  v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_isCollapsing] = 0;
  v2 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v3 = enum case for MediaOverlayStyle.matchSystem(_:);
  v4 = type metadata accessor for MediaOverlayStyle();
  (*(*(v4 - 8) + 104))(&v0[v2], v3, v4);
  *&v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000D0868(2);
  sub_1000D0868(0);
  sub_1000D09CC();
  sub_1000D0B60();

  return v5;
}

void sub_1000D0868(uint64_t a1)
{
  if (a1 != 1)
  {
    if (a1 == 2)
    {
      v2 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView;
      if (*&v1[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView])
      {
        return;
      }

      v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
      v4 = *&v1[v2];
      *&v1[v2] = v3;

      v5 = *&v1[v2];
      if (!v5)
      {
        return;
      }

      v6 = v5;
      [v1 bounds];
      [v6 setFrame:?];

      v7 = *&v1[v2];
      if (!v7)
      {
        return;
      }

      [v7 setUserInteractionEnabled:0];
      if (!*&v1[v2])
      {
        return;
      }
    }

    else
    {
      v8 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      if (*&v1[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView])
      {
        return;
      }

      [v1 bounds];
      v9 = objc_allocWithZone(type metadata accessor for MediaOverlayGradientBlurView());
      v10 = sub_100251D00(0);
      v11 = *&v1[v8];
      *&v1[v8] = v10;

      v12 = *&v1[v8];
      if (!v12)
      {
        return;
      }

      [v12 setUserInteractionEnabled:0];
      if (!*&v1[v8])
      {
        return;
      }
    }

    [v1 insertSubview:? atIndex:?];
  }
}

void sub_1000D09CC()
{
  v1 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode);
  sub_1000D1954(v2);
  sub_1000D0868(v2);
  sub_1000D1940(v2);
  v3 = *(v0 + v1);
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView);
  if (v3 == 2)
  {
    if (v4)
    {
      [v4 setAlpha:0.0];
    }

    v5 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView;
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v6)
    {
      v7 = [v6 effect];
      if (!v7)
      {
        v8 = *(v0 + v5);
        if (!v8)
        {
          return;
        }

        v9 = objc_opt_self();
        v10 = v8;
        v12 = [v9 effectWithStyle:7];
        [v10 setEffect:v12];

        v7 = v12;
      }
    }
  }

  else
  {
    if (v3 == 1)
    {
      if (v4)
      {
        [v4 setAlpha:0.0];
      }
    }

    else if (v4)
    {
      [v4 setAlpha:1.0];
    }

    v11 = *(v0 + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView);
    if (v11)
    {

      [v11 setEffect:0];
    }
  }
}

void sub_1000D0B60()
{
  v1 = v0;
  v2 = type metadata accessor for MediaOverlayStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  swift_beginAccess();
  v7 = *(v3 + 16);
  v7(v5, &v1[v6], v2);
  v8 = MediaOverlayStyle.userInterfaceStyle.getter();
  v9 = *(v3 + 8);
  v9(v5, v2);
  [v1 setOverrideUserInterfaceStyle:v8];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v10)
  {
    v7(v5, &v1[v6], v2);
    v11 = v10;
    v12 = MediaOverlayStyle.userInterfaceStyle.getter();
    v9(v5, v2);
    [v11 setOverrideUserInterfaceStyle:v12];
  }

  v13 = *&v1[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v13)
  {
    v7(v5, &v1[v6], v2);
    v14 = v13;
    v15 = MediaOverlayStyle.userInterfaceStyle.getter();
    v9(v5, v2);
    [v14 setOverrideUserInterfaceStyle:v15];
  }
}

void sub_1000D0E68()
{
  if ((v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_isCollapsing] & 1) == 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode];
    if (v1 >= 3)
    {
      v2 = v1;
      [v2 frame];
      v4 = v3;
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v11 = [v2 superview];
      [v0 convertRect:v11 fromView:{v4, v6, v8, v10}];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      [v0 bounds];
      Height = CGRectGetHeight(v60);
      v61.origin.x = v13;
      v61.origin.y = v15;
      v61.size.width = v17;
      v61.size.height = v19;
      MinY = CGRectGetMinY(v61);
      v22 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView;
      v23 = *&v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
      if (v23 && (v24 = Height - (Height - MinY), v25 = (v24 + -100.0) / Height, v26 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY, *&v23[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientStartY] = v25, v27 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView, v28 = *&v23[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView], v29 = v23, v30 = [v28 layer], objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v32 = v31, v30, v33 = *&v23[v26], v34 = objc_msgSend(*&v23[v27], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v34, v35 = objc_msgSend(*&v29[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_secondaryColorGradientView], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v32, v33), v29, v35, (v36 = *&v0[v22]) != 0) && (v37 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY, *&v36[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientStartY] = v25, v38 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView, v39 = *&v36[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView], v40 = v36, v41 = objc_msgSend(v39, "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "startPoint"), v43 = v42, v41, v44 = *&v36[v37], v45 = objc_msgSend(*&v36[v38], "layer"), objc_opt_self(), objc_msgSend(swift_dynamicCastObjCClassUnconditional(), "setStartPoint:", v43, v44), v40, v45, (v46 = *&v0[v22]) != 0) && (v47 = (v24 + 30.0) / Height, v48 = v46, sub_100250FB4(v47), v48, (v49 = *&v0[v22]) != 0))
      {
        v50 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY;
        *&v49[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientEndY] = v47;
        v51 = OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView;
        v52 = *&v49[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_blurGradientMaskView];
        v58 = v49;
        v53 = [v52 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() endPoint];
        v55 = v54;

        v56 = *&v49[v50];
        v57 = [*&v49[v51] layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v55, v56}];

        sub_1000D1940(v1);
      }

      else
      {

        sub_1000D1940(v1);
      }
    }
  }
}

void sub_1000D1344()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame:?];
  }

  v3 = *&v0[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView];
  if (v3)
  {
    v4 = v3;
    [v0 bounds];
    [v4 setFrame:?];
  }

  sub_1000D0E68();
}

id sub_1000D1448(uint64_t a1, double a2, double a3)
{
  v29.receiver = v3;
  v29.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v29, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *&v3[OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode];
    if ((v8 - 1) >= 2)
    {
      if (v8)
      {
        v9 = v8;
        [v9 frame];
        v11 = v10;
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = [v9 superview];
        [v3 convertRect:v18 fromView:{v11, v13, v15, v17}];
        v20 = v19;
        v22 = v21;
        v24 = v23;
        v26 = v25;

        v30.origin.x = v20;
        v30.origin.y = v22;
        v30.size.width = v24;
        v30.size.height = v26;
        MaxY = CGRectGetMaxY(v30);
        sub_1000D1940(v8);
        LOBYTE(v8) = MaxY < a3;
      }
    }

    else
    {
      LOBYTE(v8) = 1;
    }

    sub_100005744(0, &qword_100978360);
    if ((static NSObject.== infix(_:_:)() & 1) != 0 && (v8 & 1) == 0)
    {

      return 0;
    }
  }

  return v7;
}

uint64_t type metadata accessor for AppPromotionScrollableContentContainerView()
{
  result = qword_100973AA0;
  if (!qword_100973AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D1770()
{
  result = type metadata accessor for MediaOverlayStyle();
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

uint64_t sub_1000D1820(uint64_t *a1)
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

uint64_t sub_1000D1850(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D18B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1000D1908(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

void sub_1000D1940(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

id sub_1000D1954(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000D1968(void *a1, char *a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return 1;
    }
  }

  else if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if ((a2 - 1) >= 2)
  {
    if (a1)
    {
      if (a2)
      {
        sub_100005744(0, &qword_100972EB0);
        sub_1000D1954(a2);
        sub_1000D1954(a1);
        v5 = static NSObject.== infix(_:_:)();
        sub_1000D1940(a1);
        sub_1000D1940(a2);
        if (v5)
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

double sub_1000D1A84(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppEvent();
  sub_1000D1E3C(&qword_100973AB8, &type metadata accessor for AppEvent);
  ItemLayoutContext.typedModel<A>(as:)();
  v7 = v17;
  if (!v17)
  {
    return 0.0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v10 = sub_100079F24();
  v11 = type metadata accessor for AppEventView();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10016862C(v9, v7, v10, a2, v11, ObjectType);
  v14 = v13;
  swift_unknownObjectRelease_n();

  return v14;
}

double sub_1000D1C68(uint64_t a1, char a2)
{
  v3 = type metadata accessor for PageGrid();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  v9 = sub_100079F24();
  v10 = type metadata accessor for AppEventView();
  type metadata accessor for Placeholder();
  v11 = static Placeholder.appEventTitleText.getter();
  v13 = v12;
  v14 = static Placeholder.appEventKindText.getter();
  v16 = v15;
  v17 = static Placeholder.appEventSubtitleText.getter();
  v19 = v18;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_100168774(v11, v13, v14, v16, v17, v19, a2, v9, v8, v10, ObjectType);
  v22 = v21;

  swift_unknownObjectRelease_n();
  return v22;
}

uint64_t sub_1000D1E3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000D1E84(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_1000D1E94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 1) == *(a2 + 1) && v4 == v6;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v5 ^ v7 ^ 1u;
      }
    }
  }

  else if (!v6)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

uint64_t sub_1000D1F1C()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v0[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    swift_unknownObjectRelease();
  }

  *v1 = 0;
  *(v1 + 1) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000D2014(uint64_t a1, uint64_t a2)
{
  v213 = a2;
  v3 = sub_10002849C(&qword_100973AC0);
  __chkstk_darwin(v3 - 8);
  v198 = &v164 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v197 = &v164 - v6;
  v196 = type metadata accessor for ProductPageTheme();
  v195 = *(v196 - 8);
  __chkstk_darwin(v196);
  v194 = &v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v8 - 8);
  v193 = &v164 - v9;
  v192 = type metadata accessor for OfferButtonSubtitlePosition();
  v187 = *(v192 - 8);
  __chkstk_darwin(v192);
  v189 = &v164 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_10002849C(&unk_1009701A0);
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v188 = &v164 - v11;
  v12 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v12 - 8);
  v185 = &v164 - v13;
  v14 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v14 - 8);
  v186 = &v164 - v15;
  v16 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v209 = *(v16 - 8);
  v210 = v16;
  __chkstk_darwin(v16);
  v184 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v171 = &v164 - v19;
  __chkstk_darwin(v20);
  v22 = &v164 - v21;
  v23 = sub_10002849C(&qword_100973AC8);
  __chkstk_darwin(v23 - 8);
  v175 = &v164 - v24;
  v25 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v25 - 8);
  v174 = &v164 - v26;
  v27 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v27 - 8);
  v173 = &v164 - v28;
  v29 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v29 - 8);
  v172 = &v164 - v30;
  v208 = type metadata accessor for LegacyAppState();
  v211 = *(v208 - 8);
  __chkstk_darwin(v208);
  v207 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for OfferTitleType();
  v203 = *(v182 - 8);
  __chkstk_darwin(v182);
  v181 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for AdamId();
  v200 = *(v202 - 8);
  __chkstk_darwin(v202);
  v183 = &v164 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = type metadata accessor for OfferLabelStyle();
  v199 = *(v201 - 8);
  __chkstk_darwin(v201);
  v170 = &v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v169 = &v164 - v36;
  v206 = type metadata accessor for PageGrid.Direction();
  v37 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v179 = &v164 - v40;
  v41 = type metadata accessor for PageGrid();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v212 = &v164 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v164 - v45;
  __chkstk_darwin(v47);
  v49 = &v164 - v48;
  type metadata accessor for ProductTopLockup();
  sub_1000D7220(&qword_100973AE8, &type metadata accessor for ProductTopLockup);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v51 = v215;
  if (!v215)
  {
    return result;
  }

  v205 = v22;
  swift_getKeyPath();
  v214 = v51;
  ItemLayoutContext.subscript.getter();

  PageGrid.containerWidth.getter();
  v52 = *(v42 + 8);
  v52(v49, v41);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.containerHeight.getter();
  v52(v46, v41);
  v53 = v179;
  v54 = v206;
  (*(v37 + 104))(v179, enum case for PageGrid.Direction.vertical(_:), v206);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.safeAreaInsets.getter();
  v167 = v49;
  v176 = v42 + 8;
  v177 = v52;
  v52(v49, v41);
  (*(v37 + 16))(v204, v53, v54);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v37 + 8))(v53, v54);
  v204 = sub_100079F24();
  v168 = a1;
  v55 = sub_100495A34();
  v56 = v180;
  v57 = &v180[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_iconSize];
  *v57 = v55;
  *(v57 + 1) = v58;
  sub_10002849C(&unk_100973AF0);
  v166 = type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v179 = *(&v215 + 1);
  v206 = v215;
  v59 = *&v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_titleLabel];
  ProductTopLockup.title.getter();
  v178 = v41;
  if (v60)
  {
    v61 = String._bridgeToObjectiveC()();
  }

  else
  {
    v61 = 0;
  }

  v62 = v203;
  [v59 setText:v61];

  v63 = *&v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_taglineLabel];
  ProductTopLockup.subtitle.getter();
  if (v64)
  {
    v65 = String._bridgeToObjectiveC()();
  }

  else
  {
    v65 = 0;
  }

  [v63 setText:v65];

  v66 = *&v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_developerLabel];
  ProductTopLockup.developerName.getter();
  if (v67)
  {
    v68 = String._bridgeToObjectiveC()();
  }

  else
  {
    v68 = 0;
  }

  [v66 setText:v68];

  v69 = ProductTopLockup.offerDisplayProperties.getter();
  v70 = ProductTopLockup.expandedOfferTitles.getter();
  if (v71 == 1)
  {
    sub_100427964(0, 0);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v74 = v72;
    v75 = v73;
    v76 = v70;
    v77 = v71;

    sub_100427964(v76, v77);
  }

  sub_100427978(v74, v75);
  v78 = ProductTopLockup.hasExpandedOffer.getter();
  v79 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer;
  v80 = v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer];
  v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_hasExpandedOffer] = v78 & 1;
  sub_10042A7C8(v80);
  v81 = ProductTopLockup.hasExpandedOfferDetails.getter();
  v82 = v183;
  if ((v81 & 1) != 0 && v69)
  {
    v83 = v62;
    v165 = v79;

    v84 = v169;
    OfferDisplayProperties.offerLabelStyle.getter();
    v85 = v199;
    v86 = v170;
    v87 = v201;
    (*(v199 + 104))(v170, enum case for OfferLabelStyle.none(_:), v201);
    sub_1000D7220(&unk_100987B00, &type metadata accessor for OfferLabelStyle);
    v88 = dispatch thunk of static Equatable.== infix(_:_:)();
    v89 = *(v85 + 8);
    v89(v86, v87);
    v89(v84, v87);
    if ((v88 & 1) == 0)
    {

      OfferDisplayProperties.adamId.getter();
      type metadata accessor for ASKBagContract();
      swift_unknownObjectRetain();
      inject<A, B>(_:from:)();
      ASKBagContract.arePreordersCancellable.getter();

      v90 = type metadata accessor for OfferLabelPresenter();
      swift_allocObject();
      v91 = OfferLabelPresenter.init(offerDisplayProperties:adamId:appStateController:arePreordersCancellable:)();
      *(&v216 + 1) = v90;
      *&v215 = v91;
      v92 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_offerLabelPresenter;
      swift_beginAccess();

      sub_1000315F8(&v215, &v56[v92], &unk_1009711D0);
      swift_endAccess();
      sub_1000D7220(&unk_100973B00, type metadata accessor for ProductLockupCollectionViewCell);
      swift_unknownObjectRetain();
      OfferLabelPresenter.view.setter();
    }

    v79 = v165;
    v62 = v83;
  }

  v93 = ProductTopLockup.offerSubtitlesOverride.getter();
  v203 = v69;
  if (v93)
  {
    v94 = v93;
    v95 = v182;
    v96 = v181;
  }

  else
  {
    v95 = v182;
    v96 = v181;
    if (!v69)
    {
LABEL_27:
      v102 = 0;
      v101 = 0;
      goto LABEL_28;
    }

    v94 = OfferDisplayProperties.subtitles.getter();
  }

  (*(v62 + 104))(v96, enum case for OfferTitleType.standard(_:), v95);
  if (!*(v94 + 16) || (v97 = sub_1003D7650(v96), (v98 & 1) == 0))
  {

    (*(v62 + 8))(v96, v95);
    goto LABEL_27;
  }

  v99 = (*(v94 + 56) + 16 * v97);
  v100 = v62;
  v102 = *v99;
  v101 = v99[1];
  v103 = *(v100 + 8);

  v103(v96, v95);

LABEL_28:
  swift_getObjectType();
  v104 = v56[v79];
  v105 = swift_unknownObjectRetain();
  v106 = sub_1004307C0(v105, v104, v56);
  swift_unknownObjectRelease();
  swift_getObjectType();
  ProductTopLockup.adamId.getter();
  v107 = dispatch thunk of AppStateController.stateMachine(forApp:)();
  v109 = v108;
  (*(v200 + 8))(v82, v202);
  ObjectType = swift_getObjectType();
  v111 = v207;
  v182 = v107;
  v200 = ObjectType;
  v202 = v109;
  dispatch thunk of AppStateMachine.currentState.getter();
  v181 = v102;
  v179 = v101;
  v170 = v106;
  sub_1000D3C2C(v111, v102, v101, v106);
  v112 = *(v211 + 8);
  v211 += 8;
  v183 = v112;
  (v112)(v111, v208);
  if (v203)
  {

    sub_100398600(_swiftEmptyArrayStorage);
    v113 = type metadata accessor for OfferStyle();
    v114 = v172;
    (*(*(v113 - 8) + 56))(v172, 1, 1, v113);
    v115 = type metadata accessor for OfferEnvironment();
    v116 = v173;
    (*(*(v115 - 8) + 56))(v173, 1, 1, v115);
    v117 = type metadata accessor for OfferTint();
    v118 = v79;
    v119 = v174;
    (*(*(v117 - 8) + 56))(v174, 1, 1, v117);
    v120 = v175;
    (*(v199 + 56))(v175, 1, 1, v201);
    v215 = 0u;
    v216 = 0u;
    v201 = dispatch thunk of OfferDisplayProperties.newOfferDisplayPropertiesChanging(titles:titleSymbolNames:subtitles:style:environment:tint:isDeletableSystemApp:isFree:isPreorder:isRedownloadDisallowed:isOpenBundleAllowed:offerLabelStyle:hasDiscount:contentRating:offerToken:subscriptionFamilyId:overrideLocale:useAdsLocale:priceFormatted:isStreamlinedBuy:appCapabilities:)();

    sub_10002B894(&v215, &unk_1009711D0);
    sub_10002B894(v120, &qword_100973AC8);
    v121 = v119;
    v79 = v118;
    sub_10002B894(v121, &unk_100973AD0);
    sub_10002B894(v116, &unk_100970160);
    sub_10002B894(v114, &qword_100973AE0);
  }

  else
  {
    v201 = 0;
  }

  v122 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
  v123 = v209;
  v124 = *(v209 + 104);
  if (v122)
  {
    v125 = v205;
    v126 = v210;
    v124(v205, enum case for OfferButtonPresenterViewAlignment.center(_:), v210);
  }

  else
  {
    if (v56[v79])
    {
      v127 = &enum case for OfferButtonPresenterViewAlignment.right(_:);
    }

    else
    {
      v127 = &enum case for OfferButtonPresenterViewAlignment.left(_:);
    }

    v128 = v171;
    v126 = v210;
    v124(v171, *v127, v210);
    v125 = v205;
    (*(v123 + 32))(v205, v128, v126);
  }

  v129 = v182;
  v130 = ProductTopLockup.offerAction.getter();
  (*(v123 + 16))(v184, v125, v126);
  (*(v123 + 56))(v185, 1, 1, v126);
  sub_1000D7220(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
  v131 = v186;
  AccessibilityConditional.init(value:axValue:)();
  v132 = sub_10002849C(&unk_100973240);
  (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
  v133 = v187;
  v134 = v192;
  (*(v187 + 104))(v189, enum case for OfferButtonSubtitlePosition.below(_:), v192);
  (*(v133 + 56))(v193, 1, 1, v134);
  sub_1000D7220(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
  v135 = v188;
  AccessibilityConditional.init(value:axValue:)();
  sub_10064AFA4(v201, v130, 0, v131, v135, v213, 0, 0);

  (*(v190 + 8))(v135, v191);
  sub_10002B894(v131, &unk_100973230);
  v136 = &v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    dispatch thunk of AppStateMachine.removeStateTransitionActions(for:)();
    swift_unknownObjectRelease();
  }

  v137 = v167;
  v138 = v179;
  v139 = v202;
  *v136 = v129;
  v136[1] = v139;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v140 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v141 = swift_allocObject();
  v142 = v181;
  v141[2] = v140;
  v141[3] = v142;
  v143 = v170;
  v141[4] = v138;
  v141[5] = v143;

  dispatch thunk of AppStateMachine.addStateTransitionObserver(_:action:)();

  v144 = [v56 contentView];
  PageGrid.horizontalMargins.getter();
  [v144 setLayoutMargins:?];

  v145 = [v56 traitCollection];
  LOBYTE(v144) = UITraitCollection.isSizeClassCompact.getter();

  v146 = 0;
  if (v144)
  {
    v147 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
    v148 = v213;
    v149 = v168;
    v150 = v197;
    if (v147)
    {
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      PageGrid.safeAreaInsets.getter();
      v146 = v151;
      v177(v137, v178);
    }
  }

  else
  {
    v148 = v213;
    v149 = v168;
    v150 = v197;
  }

  *&v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = v146;
  v152 = v194;
  ProductTopLockup.theme.getter();
  v153 = OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  v154 = v195;
  v155 = v196;
  (*(v195 + 24))(&v56[v153], v152, v196);
  swift_endAccess();
  sub_1004291F4();
  (*(v154 + 8))(v152, v155);
  sub_1000D3E40(v149, v148);
  v156 = v207;
  dispatch thunk of AppStateMachine.currentState.getter();
  ProductTopLockup.primaryBanner(for:)();
  (v183)(v156, v208);
  v157 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
  v158 = v198;
  sub_1000D54FC(v150, v198);
  v159 = ProductTopLockup.uber.getter();
  if (v159)
  {
  }

  *&v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_bannerViewHeight] = sub_1004965F8(v158, v159 != 0, v157 & 1, v149);
  v160 = sub_1000D595C(v158, v157 & 1, v149, v148);
  sub_100427A60(v160);
  sub_10002B894(v158, &qword_100973AC0);
  sub_10002B894(v150, &qword_100973AC0);
  *&v56[OBJC_IVAR____TtC8AppStore31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = sub_100495EA8();
  v161 = ProductTopLockup.secondaryBanner.getter();
  v162 = ProductTopLockup.wantsInlineUberPresentationStyle.getter();
  v163 = sub_1000D513C(v161, v162 & 1, v149, v148);

  sub_100427A54(v163);
  [v56 setNeedsLayout];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v209 + 8))(v205, v210);
  return (v177)(v212, v178);
}