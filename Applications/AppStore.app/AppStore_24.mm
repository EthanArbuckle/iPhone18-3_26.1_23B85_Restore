id sub_1002B4214(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView;
  *&v3[v6] = [objc_allocWithZone(UIView) init];
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerView] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex] = -1;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver] = 0;
  v7 = &v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
  *v7 = 0;
  v7[8] = 1;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl] = 0;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SegmentedViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_1002B43A4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerBackgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_headerView] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedIndex] = -1;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_multipleScrollObserver] = 0;
  v4 = &v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_navigationBarAppearanceProgress];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectedViewController] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC8AppStore23SegmentedViewController_selectorControl] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SegmentedViewController();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_1002B44D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SegmentedViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1002B45F0(double a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = *&v2[OBJC_IVAR____TtC8AppStore23SegmentedViewController_segments];
  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() >= 4)
    {
      goto LABEL_3;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4)
  {
LABEL_3:

    return a1;
  }

  v6 = UITraitCollection.isRegularPad.getter();

  if (v6)
  {
    [v2 pageMarginInsets];
    v8 = v7;
    v10 = v9;
    v11 = [v2 traitCollection];
    v12 = UITraitCollection.isRegularPad.getter();

    if (v12)
    {
      [v2 pageContainerSize];
      v15 = sub_10048F38C(v13, v14);
      v17 = v16 + v16 + j_j___s8AppStore20PageTraitEnvironmentPAAE16pageColumnMargin12CoreGraphics7CGFloatVvg(v15);
    }

    else
    {
      [v2 pageMarginInsets];
      v19 = v18;
      v21 = v20;
      [v2 pageContainerSize];
      v17 = v22 - v19 - v21;
    }

    v23 = a1 - v8;
    v24 = OBJC_IVAR____TtC8AppStore23SegmentedViewController_columnViewControllers;
    swift_beginAccess();
    v25 = *&v2[v24];
    if (v25 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = v23 - v10;
    if (v26 >= 1)
    {
      return a1 / v26 - v17 / v26;
    }
  }

  return a1;
}

char *sub_1002B47B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_itemLayoutContext;
  v11 = type metadata accessor for ItemLayoutContext();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView;
  type metadata accessor for ProductEditorsChoiceView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v15 = [v13 contentView];
  [v15 addSubview:*&v13[OBJC_IVAR____TtC8AppStore38ProductEditorsChoiceCollectionViewCell_editorsChoiceView]];

  return v13;
}

uint64_t type metadata accessor for ProductEditorsChoiceCollectionViewCell()
{
  result = qword_10097DF08;
  if (!qword_10097DF08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002B4B94@<X0>(uint64_t *a1@<X8>)
{
  result = Shelf.rowsPerColumn.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002B4BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static ShelfBackground.== infix(_:_:)() & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)) || (static IndexPath.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static ShelfBackground.== infix(_:_:)();
}

uint64_t sub_1002B4C50(uint64_t a1)
{
  v29 = a1;
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v26 = &v25 - v6;
  v7 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = sub_10002849C(&qword_10097E128);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  v18 = *(v14 + 56);
  v28 = v1;
  sub_100031660(v1 + v17, v16, &qword_10097E110);
  sub_100031660(v29, &v16[v18], &qword_10097E110);
  v19 = *(v3 + 48);
  if (v19(v16, 1, v2) == 1)
  {
    if (v19(&v16[v18], 1, v2) == 1)
    {
      return sub_10002B894(v16, &qword_10097E110);
    }

    goto LABEL_6;
  }

  sub_100031660(v16, v12, &qword_10097E110);
  if (v19(&v16[v18], 1, v2) == 1)
  {
    sub_1002B81D0(v12);
LABEL_6:
    v21 = &qword_10097E128;
    goto LABEL_13;
  }

  v22 = v26;
  sub_1002B816C(&v16[v18], v26);
  if (static ShelfBackground.== infix(_:_:)() & 1) != 0 && *&v12[*(v2 + 20)] == *(v22 + *(v2 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v23 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v22);
    sub_1002B81D0(v12);
    result = sub_10002B894(v16, &qword_10097E110);
    if (v23)
    {
      return result;
    }

    goto LABEL_14;
  }

  sub_1002B81D0(v22);
  sub_1002B81D0(v12);
  v21 = &qword_10097E110;
LABEL_13:
  sub_10002B894(v16, v21);
LABEL_14:
  sub_100031660(v28 + v17, v9, &qword_10097E110);
  if (v19(v9, 1, v2) == 1)
  {
    return sub_10002B894(v9, &qword_10097E110);
  }

  v24 = v27;
  sub_1002B816C(v9, v27);
  sub_1002B5034();
  return sub_1002B81D0(v24);
}

uint64_t sub_1002B5034()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  IndexPath.section.getter();
  IndexPath.init(item:section:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v5 = Strong, type metadata accessor for InteractiveSectionBackgroundView(), static UICollectionReusableView.elementKind.getter(), v6 = String._bridgeToObjectiveC()(), , isa = IndexPath._bridgeToObjectiveC()().super.isa, v8 = [v5 _visibleDecorationViewOfKind:v6 atIndexPath:isa], v5, v6, isa, !v8) || (*&v16[0] = v8, sub_1002B8230(), sub_10002849C(&unk_10097E150), (swift_dynamicCast() & 1) == 0))
  {
    v19 = 0;
    memset(v18, 0, sizeof(v18));
  }

  sub_1002B52F4(v18);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9 || (v10 = v9, v11 = UICollectionElementKindSectionHeader, v12 = IndexPath._bridgeToObjectiveC()().super.isa, v13 = [v10 _visibleSupplementaryViewOfKind:v11 atIndexPath:v12], v10, v11, v12, !v13) || (v15[1] = v13, sub_1002B8230(), sub_10002849C(&unk_10097E150), (swift_dynamicCast() & 1) == 0))
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
  }

  sub_1002B52F4(v16);
  (*(v1 + 8))(v3, v0);
  sub_10002B894(v16, &unk_10097E140);
  return sub_10002B894(v18, &unk_10097E140);
}

uint64_t sub_1002B52F4(uint64_t a1)
{
  v49 = sub_10002849C(&qword_10097E128);
  __chkstk_darwin(v49);
  v50 = &v43 - v3;
  v4 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v43 - v8;
  __chkstk_darwin(v10);
  v12 = &v43 - v11;
  __chkstk_darwin(v13);
  v15 = (&v43 - v14);
  v16 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v43 - v21;
  sub_100031660(a1, &v51, &unk_10097E140);
  if (!v52)
  {
    return sub_10002B894(&v51, &unk_10097E140);
  }

  v47 = v12;
  v48 = v22;
  sub_100005A38(&v51, v54);
  v23 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState;
  swift_beginAccess();
  sub_100031660(v1 + v23, v15, &qword_10097E110);
  v24 = *(v17 + 48);
  if (v24(v15, 1, v16) == 1)
  {
    v25 = &qword_10097E110;
    v26 = v15;
LABEL_21:
    sub_10002B894(v26, v25);
    return sub_100007000(v54);
  }

  v43 = v19;
  v44 = v6;
  v45 = a1;
  v46 = v1;
  v28 = v48;
  sub_1002B816C(v15, v48);
  v29 = v55;
  v30 = v56;
  sub_10002A400(v54, v55);
  v31 = v47;
  (*(v30 + 8))(v29, v30);
  sub_1002AE770(v28, v9);
  (*(v17 + 56))(v9, 0, 1, v16);
  v32 = v50;
  v33 = *(v49 + 48);
  sub_100031660(v31, v50, &qword_10097E110);
  sub_100031660(v9, v32 + v33, &qword_10097E110);
  if (v24(v32, 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v31, &qword_10097E110);
    if (v24((v32 + v33), 1, v16) == 1)
    {
      sub_10002B894(v32, &qword_10097E110);
LABEL_8:
      sub_1002B81D0(v48);
      return sub_100007000(v54);
    }

    goto LABEL_11;
  }

  v34 = v44;
  sub_100031660(v32, v44, &qword_10097E110);
  if (v24((v32 + v33), 1, v16) == 1)
  {
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v47, &qword_10097E110);
    sub_1002B81D0(v34);
LABEL_11:
    sub_10002B894(v32, &qword_10097E128);
    v35 = v46;
    goto LABEL_18;
  }

  v36 = v43;
  sub_1002B816C(v32 + v33, v43);
  v37 = static ShelfBackground.== infix(_:_:)();
  v35 = v46;
  if (v37 & 1) != 0 && *(v34 + *(v16 + 20)) == *(v36 + *(v16 + 20)) && (static IndexPath.== infix(_:_:)())
  {
    v38 = static ShelfBackground.== infix(_:_:)();
    sub_1002B81D0(v36);
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v47, &qword_10097E110);
    sub_1002B81D0(v34);
    sub_10002B894(v32, &qword_10097E110);
    if (v38)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1002B81D0(v36);
    sub_10002B894(v9, &qword_10097E110);
    sub_10002B894(v47, &qword_10097E110);
    sub_1002B81D0(v34);
    sub_10002B894(v32, &qword_10097E110);
  }

LABEL_18:
  sub_100031660(v45, &v51, &unk_10097E140);
  v39 = v52;
  if (!v52)
  {
    sub_1002B81D0(v48);
    v25 = &unk_10097E140;
    v26 = &v51;
    goto LABEL_21;
  }

  v40 = v53;
  sub_10002A400(&v51, v52);
  v41 = *(v35 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_objectGraph);
  v42 = v48;
  (*(v40 + 16))(v48, v41, v39, v40);
  sub_1002B81D0(v42);
  sub_100007000(&v51);
  return sub_100007000(v54);
}

uint64_t sub_1002B5910()
{
  v1 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v2 = type metadata accessor for ShelfLayoutContext();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  sub_10002B894(v0 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState, &qword_10097E110);

  return swift_deallocClassInstance();
}

void sub_1002B5A14()
{
  type metadata accessor for ShelfLayoutContext();
  if (v0 <= 0x3F)
  {
    sub_1002AE2E8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1002B5B40()
{
  result = type metadata accessor for ShelfBackground();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for IndexPath();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1002B5BD8()
{
  result = qword_10097E108;
  if (!qword_10097E108)
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097E108);
  }

  return result;
}

uint64_t sub_1002B5C30(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1002B6F50(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1002B5CAC(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1002B5CAC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10002849C(&unk_10097E130);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1002B5FE4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1002B5DBC(0, v2, 1, a1);
  }
}

void sub_1002B5DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for IndexPath();
  __chkstk_darwin(v33);
  v32 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v28 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v34 = *a4;
    v14 = v34 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_5:
    v30 = v14;
    v31 = a3;
    v16 = *(v34 + 8 * a3);
    v29 = v15;
    v17 = v15;
    while (1)
    {
      v18 = *v14;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v19 = [v16 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v20 = [v18 indexPath];
      v21 = v32;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v20) = static IndexPath.< infix(_:_:)();
      v22 = *v13;
      v23 = v21;
      v24 = v33;
      (*v13)(v23, v33);
      v22(v12, v24);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v20 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v14 = v30 + 8;
        v15 = v29 - 1;
        if (v31 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      v25 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v25;
      v14 -= 8;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002B5FE4(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v111 = a1;
  v120 = type metadata accessor for IndexPath();
  __chkstk_darwin(v120);
  v119 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v118 = &v105 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v111;
    if (!*v111)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = a4;
    }

    else
    {
LABEL_121:
      v100 = sub_1002B6D90(a4);
    }

    v121 = v100;
    v101 = *(v100 + 2);
    if (v101 >= 2)
    {
      while (*v16)
      {
        a4 = *&v100[2 * v101];
        v102 = v100;
        v103 = *&v100[2 * v101 + 3];
        sub_1002B686C((*v16 + 8 * a4), (*v16 + 8 * *&v100[2 * v101 + 2]), (*v16 + 8 * v103), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v103 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = sub_1002B6D90(v102);
        }

        if (v101 - 2 >= *(v102 + 2))
        {
          goto LABEL_115;
        }

        v104 = &v102[2 * v101];
        *v104 = a4;
        v104[1] = v103;
        v121 = v102;
        sub_1002B6D04(v101 - 1);
        v100 = v121;
        v101 = *(v121 + 2);
        if (v101 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v117 = (v11 + 8);
  v15 = _swiftEmptyArrayStorage;
  v110 = a4;
  v106 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v115 = v13;
      v108 = v15;
      v109 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v114 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v21 = [v18 indexPath];
      v22 = v118;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v20 indexPath];
      v24 = v119;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v116) = static IndexPath.< infix(_:_:)();
      v25 = *v117;
      v26 = v120;
      (*v117)(v24, v120);
      v25(v22, v26);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v107 = v16;
      v27 = (v16 + 2);
      while (1)
      {
        v14 = v115;
        if (v115 == v27)
        {
          break;
        }

        v28 = *(v5 - 8);
        v29 = *v5;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v30 = [v29 indexPath];
        v31 = v118;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v32 = [v28 indexPath];
        v33 = v119;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v32) = static IndexPath.< infix(_:_:)() & 1;
        v34 = v33;
        v35 = v120;
        v25(v34, v120);
        v25(v31, v35);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v27;
        v5 += 8;
        if ((v116 & 1) != v32)
        {
          v14 = (v27 - 1);
          break;
        }
      }

      v15 = v108;
      v6 = v109;
      a4 = v110;
      v16 = v107;
      v36 = v114;
      if (v116)
      {
        if (v14 < v107)
        {
          goto LABEL_118;
        }

        a3 = v106;
        if (v107 < v14)
        {
          v37 = 8 * v14 - 8;
          v38 = v14;
          v39 = v107;
          do
          {
            if (v39 != --v38)
            {
              v41 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v40 = *(v41 + v36);
              *(v41 + v36) = *(v41 + v37);
              *(v41 + v37) = v40;
            }

            v39 = (v39 + 1);
            v37 -= 8;
            v36 += 8;
          }

          while (v39 < v38);
        }
      }

      else
      {
        a3 = v106;
      }
    }

    v42 = a3[1];
    if (v14 < v42)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v43 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v43)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v56 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v56;
    }

    else
    {
      v15 = sub_100034940(0, *(v56 + 16) + 1, 1, v56);
    }

    a4 = *(v15 + 2);
    v57 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v57 >> 1)
    {
      v15 = sub_100034940((v57 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v58 = &v15[2 * a4];
    *(v58 + 4) = v16;
    *(v58 + 5) = v14;
    v59 = *v111;
    if (!*v111)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v60 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v61 = *(v15 + 4);
          v62 = *(v15 + 5);
          v71 = __OFSUB__(v62, v61);
          v63 = v62 - v61;
          v64 = v71;
LABEL_56:
          if (v64)
          {
            goto LABEL_105;
          }

          v77 = &v15[2 * v5];
          v79 = *v77;
          v78 = *(v77 + 1);
          v80 = __OFSUB__(v78, v79);
          v81 = v78 - v79;
          v82 = v80;
          if (v80)
          {
            goto LABEL_108;
          }

          v83 = &v15[2 * v60 + 4];
          v85 = *v83;
          v84 = *(v83 + 1);
          v71 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v71)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v81, v86))
          {
            goto LABEL_112;
          }

          if (v81 + v86 >= v63)
          {
            if (v63 < v86)
            {
              v60 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v87 = &v15[2 * v5];
        v89 = *v87;
        v88 = *(v87 + 1);
        v71 = __OFSUB__(v88, v89);
        v81 = v88 - v89;
        v82 = v71;
LABEL_70:
        if (v82)
        {
          goto LABEL_107;
        }

        v90 = &v15[2 * v60];
        v92 = *(v90 + 4);
        v91 = *(v90 + 5);
        v71 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v71)
        {
          goto LABEL_110;
        }

        if (v93 < v81)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v60 - 1;
        if (v60 - 1 >= v5)
        {
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
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v98 = v15;
        v5 = *&v15[2 * a4 + 4];
        v16 = *&v15[2 * v60 + 5];
        sub_1002B686C((*a3 + 8 * v5), (*a3 + 8 * *&v15[2 * v60 + 4]), (*a3 + 8 * v16), v59);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_1002B6D90(v98);
        }

        if (a4 >= *(v98 + 2))
        {
          goto LABEL_102;
        }

        v99 = &v98[2 * a4];
        *(v99 + 4) = v5;
        *(v99 + 5) = v16;
        v121 = v98;
        a4 = &v121;
        sub_1002B6D04(v60);
        v15 = v121;
        v5 = *(v121 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v65 = &v15[2 * v5 + 4];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_103;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_104;
      }

      v72 = &v15[2 * v5];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_106;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_109;
      }

      if (v76 >= v68)
      {
        v94 = &v15[2 * v60 + 4];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_113;
        }

        if (v63 < v97)
        {
          v60 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v110;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v108 = v15;
  v109 = v6;
  v116 = *a3;
  v44 = v116 + 8 * v14 - 8;
  v107 = v16;
  a4 = v16 - v14;
  v112 = v43;
LABEL_29:
  v114 = v44;
  v115 = v14;
  v5 = *(v116 + 8 * v14);
  v113 = a4;
  v45 = v44;
  while (1)
  {
    v46 = *v45;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v47 = [v5 indexPath];
    v48 = v118;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = [v46 indexPath];
    v50 = v119;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v49) = static IndexPath.< infix(_:_:)();
    v51 = *v117;
    v52 = v50;
    v53 = v120;
    (*v117)(v52, v120);
    v51(v48, v53);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if ((v49 & 1) == 0)
    {
LABEL_28:
      v14 = v115 + 1;
      v44 = v114 + 8;
      a4 = v113 - 1;
      if ((v115 + 1) != v112)
      {
        goto LABEL_29;
      }

      v14 = v112;
      v15 = v108;
      v6 = v109;
      a3 = v106;
      v16 = v107;
      goto LABEL_36;
    }

    if (!v116)
    {
      break;
    }

    v54 = *v45;
    v5 = *(v45 + 8);
    *v45 = v5;
    *(v45 + 8) = v54;
    v45 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1002B686C(void **a1, void **a2, void **a3, void **a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v49 = &v45 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v52 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v54 = &a4[v15];
    if (a3 - a2 >= 8 && a2 > v52)
    {
      v46 = a4;
      v47 = (v8 + 8);
LABEL_27:
      v45 = a1;
      v29 = a1 - 1;
      v30 = a3 - 1;
      v31 = v54;
      v48 = a1 - 1;
      do
      {
        v53 = v30;
        v32 = v30 + 1;
        v33 = *--v31;
        v34 = *v29;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v35 = [v33 indexPath];
        v36 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = [v34 indexPath];
        v38 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v37) = static IndexPath.< infix(_:_:)();
        v39 = *v47;
        v40 = v38;
        v41 = v51;
        (*v47)(v40, v51);
        v39(v36, v41);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37)
        {
          a4 = v46;
          a3 = v53;
          v43 = v48;
          if (v32 != v45)
          {
            *v53 = *v48;
          }

          if (v54 <= a4 || (a1 = v43, v43 <= v52))
          {
            a1 = v43;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v46;
        v42 = v53;
        if (v32 != v54)
        {
          *v53 = *v31;
        }

        v30 = v42 - 1;
        v54 = v31;
        v29 = v48;
      }

      while (v31 > a4);
      v54 = v31;
      a1 = v45;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v54 = &a4[v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v53 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v52 = a1;
        v17 = *a2;
        v18 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v19 = [v17 indexPath];
        v20 = v49;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = [v18 indexPath];
        v22 = v50;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v21) = static IndexPath.< infix(_:_:)();
        v23 = *v16;
        v24 = v22;
        v25 = v51;
        (*v16)(v24, v51);
        v23(v20, v25);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v52;
        v28 = v52 == a2++;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 1;
        if (a4 >= v54 || a2 >= v53)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v52;
      v28 = v52 == a4++;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v54 - a4 + (v54 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v54 - a4));
  }

  return 1;
}

uint64_t sub_1002B6D04(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1002B6D90(v3);
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

double *sub_1002B6DA4(double *result, int64_t a2, char a3, uint64_t a4)
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
    sub_10002849C(&qword_10096FCF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
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

double *sub_1002B6EA8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_10003687C(v3, 0);
  sub_100396AA4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1002B6F78(char **a1, double a2)
{
  v115 = a1;
  v4 = sub_10002849C(&qword_10097E110);
  __chkstk_darwin(v4 - 8);
  v113 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v112 = v109 - v7;
  v128 = type metadata accessor for IndexPath();
  v122 = *(v128 - 8);
  __chkstk_darwin(v128);
  v121 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = v109 - v10;
  __chkstk_darwin(v11);
  v118 = v109 - v12;
  __chkstk_darwin(v13);
  v119 = v109 - v14;
  __chkstk_darwin(v15);
  v120 = v109 - v16;
  v130 = type metadata accessor for ShelfBackground();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v111 = v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v117 = v109 - v19;
  __chkstk_darwin(v20);
  v116 = v109 - v21;
  __chkstk_darwin(v22);
  v127 = (v109 - v23);
  __chkstk_darwin(v24);
  v126 = v109 - v25;
  v125 = type metadata accessor for PageGrid();
  v134 = *(v125 - 1);
  __chkstk_darwin(v125);
  v27 = v109 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for ShelfLayoutContext();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_10002849C(&unk_1009731F0);
  v123 = *(v132 - 8);
  v32 = __chkstk_darwin(v132);
  v131 = v109 - v33;
  v34 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext;
  v35 = *(v29 + 16);
  v133 = v2;
  v35(v31, v2 + OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_shelfLayoutContext, v28, v32);
  v124 = v35;
  ShelfLayoutContext.shelf.getter();
  v36 = *(v29 + 8);
  v36(v31, v28);
  (v35)(v31, v2 + v34, v28);
  ShelfLayoutContext.contentPageGrid.getter();
  v36(v31, v28);
  PageGrid.horizontalDirectionalMargins.getter();
  v38 = v37;
  v39 = *(v134 + 8);
  v134 += 8;
  v40 = v125;
  v39(v27, v125);
  v124(v31, v133 + v34, v28);
  ShelfLayoutContext.contentPageGrid.getter();
  v36(v31, v28);
  PageGrid.interColumnSpace.getter();
  v42 = v41;
  v39(v27, v40);
  v43 = v131;
  v44 = v132;
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v134 = v140;
  swift_getKeyPath();
  v45 = v126;
  ReadOnlyLens.subscript.getter();

  v46 = v129;
  v47 = v129 + 104;
  v48 = *(v129 + 104);
  v49 = v127;
  v50 = v130;
  v48(v127, enum case for ShelfBackground.interactive(_:), v130);
  LOBYTE(v34) = static ShelfBackground.== infix(_:_:)();
  v53 = *(v46 + 8);
  v51 = v46 + 8;
  v52 = v53;
  (v53)(v49, v50);
  (v53)(v45, v50);
  if ((v34 & 1) == 0)
  {
    return (*(v123 + 8))(v43, v44);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (*(v123 + 8))(v43, v44);
  }

  v55 = Strong;
  v109[2] = v47;

  v140 = sub_1002B6EA8(v56);
  sub_1002B5C30(&v140);
  v110 = v48;
  v57 = v140;
  v58 = v134;
  v125 = v55;
  if (v140 < 0 || (v140 & 0x4000000000000000) != 0)
  {
LABEL_58:
    v59 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v59 = *(v140 + 16);
  }

  v124 = v51;
  v115 = v52;
  if (!v59)
  {
    v127 = _swiftEmptyArrayStorage;
LABEL_30:

    if (!*(v127 + 2))
    {

      return (*(v123 + 8))(v131, v132);
    }

    v72 = v122;
    v73 = v127 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v74 = v114;
    v75 = v128;
    v126 = *(v122 + 16);
    (v126)(v114, v73, v128);

    v76 = v118;
    (*(v72 + 32))(v118, v74, v75);
    if (__OFADD__(IndexPath.item.getter(), v58))
    {
      goto LABEL_61;
    }

    IndexPath.section.getter();
    IndexPath.init(item:section:)();
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v77 = *(v140 + 16);

    v78 = IndexPath.item.getter();
    v79 = v130;
    v80 = v117;
    if ((v78 & 0x8000000000000000) == 0 && v78 < v77)
    {
      swift_getKeyPath();
      ReadOnlyLens.subscript.getter();

      v81 = v139;
      v82 = IndexPath.item.getter();
      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_62;
      }

      if (v82 >= *(v81 + 16))
      {
        goto LABEL_64;
      }

      sub_10002C0AC(v81 + 40 * v82 + 32, v138);

      sub_10002849C(&qword_100973D50);
      sub_10002849C(&qword_10097E118);
      if (swift_dynamicCast())
      {
        sub_100005A38(&v135, &v140);
        sub_10002A400(&v140, v141);
        dispatch thunk of ShelfBackgroundProviding.shelfBackground.getter();
        sub_100007000(&v140);
LABEL_41:
        swift_getKeyPath();
        ReadOnlyLens.subscript.getter();

        v83 = *(v140 + 16);

        v84 = IndexPath.item.getter();
        if ((v84 & 0x8000000000000000) == 0 && v84 < v83)
        {
          swift_getKeyPath();
          ReadOnlyLens.subscript.getter();

          v85 = v139;
          v86 = IndexPath.item.getter();
          if ((v86 & 0x8000000000000000) != 0)
          {
            goto LABEL_63;
          }

          if (v86 >= *(v85 + 16))
          {
            goto LABEL_65;
          }

          sub_10002C0AC(v85 + 40 * v86 + 32, v138);

          sub_10002849C(&qword_100973D50);
          sub_10002849C(&qword_10097E118);
          if (swift_dynamicCast())
          {
            sub_100005A38(&v135, &v140);
            sub_10002A400(&v140, v141);
            dispatch thunk of ShelfBackgroundProviding.shelfBackground.getter();
            sub_100007000(&v140);
            v87 = enum case for ShelfBackground.none(_:);
LABEL_49:
            v88 = v129;
            v89 = *(v129 + 16);
            v90 = v111;
            v89(v111, v80, v79);
            LODWORD(v88) = (*(v88 + 88))(v90, v79);
            (v115)(v90, v79);
            v91 = 1.0;
            if (v88 == v87)
            {
              v92 = v126;
            }

            else
            {
              v93 = [v125 collectionViewLayout];
              isa = IndexPath._bridgeToObjectiveC()().super.isa;
              v95 = [v93 layoutAttributesForItemAtIndexPath:isa];

              v92 = v126;
              if (v95)
              {
                [v95 frame];
                v96 = CGRectGetMinX(v144) - v38 - a2;
                [v95 frame];
                Width = CGRectGetWidth(v145);

                v91 = (v96 + v42 + Width) / (v42 + Width);
                if (v91 >= 1.0)
                {
                  v91 = 1.0;
                }
              }
            }

            v98 = v112;
            v99 = v116;
            v89(v112, v116, v79);
            v100 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
            v101 = v76;
            v102 = v128;
            v92(v98 + v100[6], v101, v128);
            v103 = v117;
            v89((v98 + v100[7]), v117, v79);
            *(v98 + v100[5]) = v91;
            (*(*(v100 - 1) + 56))(v98, 0, 1, v100);
            v104 = OBJC_IVAR____TtC8AppStore42InteractiveSectionBackgroundScrollObserver_currentState;
            v105 = v133;
            swift_beginAccess();
            v106 = v113;
            sub_100031660(v105 + v104, v113, &qword_10097E110);
            swift_beginAccess();
            sub_1002B80FC(v98, v105 + v104);
            swift_endAccess();
            sub_1002B4C50(v106);

            sub_10002B894(v106, &qword_10097E110);
            sub_10002B894(v98, &qword_10097E110);
            v107 = v115;
            (v115)(v103, v79);
            (v107)(v99, v79);
            v108 = *(v122 + 8);
            v108(v121, v102);
            v108(v118, v102);
            return (*(v123 + 8))(v131, v132);
          }

          v137 = 0;
          v135 = 0u;
          v136 = 0u;
          sub_10002B894(&v135, &qword_10097E120);
        }

        v87 = enum case for ShelfBackground.none(_:);
        v110(v80, enum case for ShelfBackground.none(_:), v79);
        goto LABEL_49;
      }

      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      sub_10002B894(&v135, &qword_10097E120);
    }

    v110(v116, enum case for ShelfBackground.none(_:), v79);
    goto LABEL_41;
  }

  if (v59 < 1)
  {
    goto LABEL_60;
  }

  v60 = 0;
  v51 = v57 & 0xC000000000000001;
  v126 = (v122 + 8);
  v109[1] = v122 + 32;
  v127 = _swiftEmptyArrayStorage;
  v52 = &selRef__setDefaultAttributes_;
  while (1)
  {
    if (v51)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v61 = *(v57 + 8 * v60 + 32);
      swift_unknownObjectRetain();
    }

    if ([v61 representedElementCategory])
    {
      goto LABEL_20;
    }

    [v61 frame];
    v62 = CGRectGetMinX(v142) - v42 - a2;
    [v61 frame];
    v63 = CGRectGetMaxX(v143) - a2;
    if (v62 > v63)
    {
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    if (v62 > v38 || v38 >= v63)
    {
      goto LABEL_20;
    }

    v64 = [v61 indexPath];
    v65 = v120;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = IndexPath.item.getter();
    (*v126)(v65, v128);
    if (!v58)
    {
      goto LABEL_57;
    }

    if (v66 == 0x8000000000000000 && v58 == -1)
    {
      break;
    }

    if (!(v66 % v58))
    {
      v67 = [v61 indexPath];
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = sub_10003421C(0, *(v127 + 2) + 1, 1, v127);
      }

      v69 = *(v127 + 2);
      v68 = *(v127 + 3);
      if (v69 >= v68 >> 1)
      {
        v127 = sub_10003421C(v68 > 1, v69 + 1, 1, v127);
      }

      swift_unknownObjectRelease();
      v70 = v127;
      *(v127 + 2) = v69 + 1;
      (*(v122 + 32))(v70 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v69, v119, v128);
      goto LABEL_21;
    }

LABEL_20:
    swift_unknownObjectRelease();
LABEL_21:
    if (v59 == ++v60)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_60:
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

  __break(1u);
  return result;
}

uint64_t sub_1002B80FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097E110);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B816C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002B81D0(uint64_t a1)
{
  v2 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002B8230()
{
  result = qword_10097F580;
  if (!qword_10097F580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10097F580);
  }

  return result;
}

uint64_t sub_1002B82CC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096D568 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_10097E160);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002B84D4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10097E1C0);
  sub_1000056A8(v4, qword_10097E1C0);
  if (qword_10096D580 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_10097E1A8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002B86A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10097E1D8);
  sub_1000056A8(v4, qword_10097E1D8);
  *v3 = UIFontTextStyleSubheadline;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleSubheadline;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1002B8840(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_1002B8898(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v8 = a1;
  sub_1002B8908(a3);
  v9.receiver = v8;
  v9.super_class = type metadata accessor for DetailCollectionViewCell();
  objc_msgSendSuper2(&v9, *a4, a3);
  sub_1002B89BC(a5);
}

id sub_1002B8908(char a1)
{
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if ((a1 & 1) == 0)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

id sub_1002B89BC(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = [v1 contentView];
  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if (!v2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  [v3 setBackgroundColor:v6];

  return [v1 setNeedsDisplay];
}

char *sub_1002B8A7C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v85 = type metadata accessor for DividerView.Style(0);
  __chkstk_darwin(v85);
  v86 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v87 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = &v81 - v15;
  *&v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousTitleTextColor] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousSubtitleTextColor] = 0;
  v17 = &v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight];
  *v17 = 0;
  v17[8] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView] = 0;
  v18 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessory;
  v19 = type metadata accessor for Accessory();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider;
  v21 = type metadata accessor for DividerView(0);
  *&v5[v20] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v22 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v22[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider] = 0;
  v23 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider;
  *&v5[v23] = [objc_allocWithZone(v21) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets];
  *v24 = 0u;
  *(v24 + 1) = 0u;
  v24[32] = 1;
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider] = 0;
  v25 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction];
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView;
  *&v5[v26] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_isSelectable] = 1;
  v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_disabled] = 0;
  v27 = &v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_selectionHandler];
  *v27 = 0;
  v27[1] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_tapGestureRecognizer] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_10096D568 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for FontUseCase();
  v29 = sub_1000056A8(v28, qword_10097E160);
  v30 = *(v28 - 8);
  v84 = *(v30 + 16);
  v84(v16, v29, v28);
  v83 = *(v30 + 56);
  v83(v16, 0, 1, v28);
  v31 = enum case for DirectionalTextAlignment.none(_:);
  v82 = *(v12 + 104);
  v82(v87, enum case for DirectionalTextAlignment.none(_:), v11);
  v32 = type metadata accessor for DynamicTypeLabel();
  v81 = v11;
  v33 = v32;
  v34 = objc_allocWithZone(v32);
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096D580 != -1)
  {
    swift_once();
  }

  v35 = sub_1000056A8(v28, qword_10097E1A8);
  v84(v16, v35, v28);
  v83(v16, 0, 1, v28);
  v82(v87, v31, v81);
  v36 = objc_allocWithZone(v33);
  *&v5[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v37 = type metadata accessor for DetailCollectionViewCell();
  v88.receiver = v5;
  v88.super_class = v37;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = [v42 contentView];
  v44 = objc_opt_self();
  v45 = [v44 whiteColor];
  [v43 setBackgroundColor:v45];

  v46 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageView;
  v47 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageView];
  v48 = [v42 backgroundColor];

  ArtworkView.backgroundColor.setter();
  [*&v42[v46] setContentMode:1];
  v49 = [v42 contentView];
  [v49 addSubview:*&v42[v46]];

  v50 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel;
  [*&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel] setLineBreakMode:4];
  v51 = [v42 contentView];
  [v51 addSubview:*&v42[v50]];

  v52 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel;
  v53 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel];
  v54 = [v44 systemGrayColor];
  [v53 setTextColor:v54];

  v55 = [v42 contentView];
  [v55 addSubview:*&v42[v52]];

  v56 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider;
  v57 = qword_10096EE48;
  v58 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_1000056A8(v85, qword_1009D36D8);
  v60 = v86;
  sub_1002BB2D0(v59, v86);
  v61 = &v58[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v60, v61);
  swift_endAccess();
  v62 = &v58[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v63 = *(v61 + 1);
  *v62 = *v61;
  *(v62 + 1) = v63;
  [v58 setNeedsLayout];
  [v58 setNeedsLayout];

  sub_1002BB398(v60);
  v64 = *&v42[v56];
  sub_100005744(0, &qword_100970180);
  v65 = v64;
  v66 = static UIColor.defaultLine.getter();
  [v65 setBackgroundColor:v66];

  [*&v42[v56] setHidden:1];
  v67 = [v42 contentView];
  [v67 addSubview:*&v42[v56]];

  v68 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider;
  v69 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider];
  sub_1002BB2D0(v59, v60);
  v70 = &v69[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  v71 = v69;
  sub_1002BB334(v60, v70);
  swift_endAccess();
  v72 = &v71[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v73 = *(v70 + 1);
  *v72 = *v70;
  *(v72 + 1) = v73;
  [v71 setNeedsLayout];
  [v71 setNeedsLayout];

  sub_1002BB398(v60);
  v74 = *&v42[v68];
  v75 = static UIColor.defaultLine.getter();
  [v74 setBackgroundColor:v75];

  [*&v42[v68] setHidden:1];
  v76 = [v42 contentView];
  [v76 addSubview:*&v42[v68]];

  v77 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView;
  v78 = *&v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView];
  v79 = static UIColor.tableViewCellSelectedBackground.getter();
  [v78 setBackgroundColor:v79];

  [*&v42[v77] setOpaque:0];
  [*&v42[v77] setUserInteractionEnabled:0];
  if (v42[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_isSelectable] == 1)
  {
    [v42 setSelectedBackgroundView:*&v42[v77]];
  }

  return v42;
}

void sub_1002B9594()
{
  v1 = v0;
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  v99 = v2;
  v100 = v3;
  __chkstk_darwin(v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DetailCollectionViewCell();
  v101.receiver = v0;
  v101.super_class = v6;
  objc_msgSendSuper2(&v101, "layoutSubviews");
  LayoutMarginsAware<>.layoutFrame.getter();
  v8 = v7;
  v9 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView];
  if (v10)
  {
    v11 = [v10 isHidden] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = ArtworkView.image.getter();
  v13 = v12;
  if (v12)
  {
  }

  v14 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel];
  v15 = [v14 text];
  v16 = v15;
  if (v15)
  {
  }

  v17 = v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight + 8];
  v98 = v16;
  if (v17)
  {
    v18 = 8.0;
    if (v13)
    {
LABEL_10:
      v19 = ArtworkView.image.getter();
      if (!v19)
      {
        __break(1u);
        goto LABEL_53;
      }

      v20 = v19;
      [v19 size];
      v22 = v21;
      v24 = v23;

      LayoutMarginsAware<>.layoutFrame.getter();
      MinX = CGRectGetMinX(v102);
      LayoutMarginsAware<>.layoutFrame.getter();
      v26 = CGRectGetMidY(v103) + v24 * -0.5;
      ArtworkView.frame.setter();
      v104.origin.x = MinX;
      v104.origin.y = v26;
      v104.size.width = v22;
      v104.size.height = v24;
      v8 = v8 - (v18 + CGRectGetWidth(v104));
      v27 = &qword_10096D000;
      if (!v11)
      {
        goto LABEL_25;
      }

LABEL_15:
      v28 = *&v1[v9];
      if (v28)
      {
        v29 = v28;
        LayoutMarginsAware<>.layoutFrame.getter();
        [v29 sizeThatFits:{v30, v31}];
        v33 = v32;
        v35 = v34;

        v36 = *&v1[v9];
        if (v36)
        {
          [v36 lastBaselineFromBottom];
          v38 = v37;
          LayoutMarginsAware<>.layoutFrame.getter();
          v39 = CGRectGetMaxX(v105) - v33;
          if (v98)
          {
            [v1 bounds];
            x = v106.origin.x;
            y = v106.origin.y;
            width = v106.size.width;
            v97 = v33;
            v43 = v35;
            v44 = v8;
            v45 = v39;
            v46 = v18;
            height = v106.size.height;
            CGRectGetMidX(v106);
            v107.origin.x = x;
            v107.origin.y = y;
            v107.size.width = width;
            v107.size.height = height;
            v18 = v46;
            v39 = v45;
            v8 = v44;
            v35 = v43;
            v33 = v97;
            v48 = CGRectGetMidY(v107) + v35 * -0.5;
          }

          else
          {
            LayoutMarginsAware<>.layoutFrame.getter();
            MinY = CGRectGetMinY(v108);
            if (v27[174] != -1)
            {
              swift_once();
            }

            v50 = type metadata accessor for StaticDimension();
            sub_1000056A8(v50, qword_10097E178);
            static Dimensions.defaultRoundingRule.getter();
            AnyDimension.value(in:rounded:)();
            v52 = v51;
            (*(v100 + 8))(v5, v99);
            v48 = MinY + v52 - (v35 - v38);
          }

          LayoutMarginsAware<>.layoutFrame.getter();
          v53 = CGRectGetWidth(v109);
          if (v33 >= v53)
          {
            v33 = v53;
          }

          [*&v1[v9] setFrame:{v39, v48, v33, v35}];
          v110.origin.x = v39;
          v110.origin.y = v48;
          v110.size.width = v33;
          v110.size.height = v35;
          v8 = v8 - (CGRectGetWidth(v110) + 16.0);
          goto LABEL_25;
        }

LABEL_54:
        __break(1u);
        return;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }
  }

  else
  {
    v18 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight];
    if (v13)
    {
      goto LABEL_10;
    }
  }

  ArtworkView.frame.setter();
  v27 = &qword_10096D000;
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_25:
  if (v27[174] != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for StaticDimension();
  sub_1000056A8(v54, qword_10097E178);
  v55 = *&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel];
  static Dimensions.defaultRoundingRule.getter();
  v56 = [v55 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v58 = v57;

  [v55 firstBaselineFromTop];
  v60 = v59;
  v61 = *(v100 + 8);
  v100 += 8;
  v61(v5, v99);
  v62 = v58 - v60;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v55 sizeThatFits:{v8, CGRectGetHeight(v111)}];
  v65 = v64;
  if (v63 >= v8)
  {
    v66 = v8;
  }

  else
  {
    v66 = v63;
  }

  if (v13)
  {
    ArtworkView.frame.getter();
    v67 = v18 + CGRectGetMaxX(v112);
  }

  else
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v67 = CGRectGetMinX(v113);
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  [v55 setFrame:{v67, v62 + CGRectGetMinY(v114), v66, v65}];
  if (v98)
  {
    [v14 setHidden:0];
    if (qword_10096D588 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v54, qword_10097E1C0);
    static Dimensions.defaultRoundingRule.getter();
    v68 = [v14 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v70 = v69;

    [v14 firstBaselineFromTop];
    v72 = v71;
    v61(v5, v99);
    v73 = v70 - v72;
    LayoutMarginsAware<>.layoutFrame.getter();
    [v14 sizeThatFits:{v8, CGRectGetHeight(v115)}];
    v75 = v74;
    v77 = v76;
    [v55 frame];
    v78 = CGRectGetMinX(v116);
    [v55 lastBaselineMaxY];
    [v14 setFrame:{v78, v73 + v79, v75, v77}];
  }

  else
  {
    [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
    [v14 setHidden:1];
  }

  if (v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v80 = CGRectGetMinX(v117);
    [v1 bounds];
    v81 = CGRectGetMinY(v118);
    LayoutMarginsAware<>.layoutFrame.getter();
    v82 = CGRectGetWidth(v119);
    if (qword_10096EE38 != -1)
    {
      swift_once();
    }

    v83 = *&qword_1009D36B8;
    v84 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets];
    if ((v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets + 32] & 1) == 0)
    {
      v85 = v84[3];
      v80 = v84[1];
      [v1 bounds];
      v82 = v86 - v80 - v85;
    }

    [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider] setFrame:{v80, v81, v82, v83}];
  }

  if (v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider] == 1)
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    v87 = CGRectGetMinX(v120);
    [v1 bounds];
    MaxY = CGRectGetMaxY(v121);
    if (qword_10096EE38 != -1)
    {
      v96 = MaxY;
      swift_once();
      MaxY = v96;
    }

    v89 = *&qword_1009D36B8;
    v90 = MaxY - *&qword_1009D36B8;
    LayoutMarginsAware<>.layoutFrame.getter();
    v91 = CGRectGetWidth(v122);
    v92 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets];
    if (v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets + 32])
    {
      v93 = v91;
    }

    else
    {
      v94 = v92[3];
      v87 = v92[1];
      [v1 bounds];
      v93 = v95 - v87 - v94;
    }

    [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider] setFrame:{v87, v90, v93, v89}];
  }
}

double sub_1002B9EA0(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticDimension();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = sub_10002849C(&qword_1009799D0);
  __chkstk_darwin(v13 - 8);
  v63 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  v18 = ArtworkView.image.getter();
  v19 = *&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel];
  v20 = [v19 text];
  if (v20)
  {
    v21 = v5;
    v22 = v20;
    v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v23;

    v5 = v21;
  }

  else
  {
    v54 = 0;
    v65 = 0;
  }

  v60 = v5;
  (*(v5 + 56))(v17, 1, 1, v4);
  v66 = [v19 attributedText];
  v24 = [*&v2[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel] text];
  if (v24)
  {
    v25 = v24;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v26;
  }

  else
  {
    v64 = 0;
  }

  v27 = v18;
  v28 = v2[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider];
  v58 = v2[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider];
  v59 = v28;
  [v2 layoutMargins];
  if (v18)
  {
    v29 = v18;
    [v29 size];
    [v29 size];
  }

  v30 = [v2 traitCollection];
  v31 = qword_10096D568;
  v57 = v30;
  if (v66)
  {
    v32 = v17;
    v33 = v66;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for FontUseCase();
    v35 = sub_1000056A8(v34, qword_10097E160);
    v36 = *(v34 - 8);
    (*(v36 + 16))(v12, v35, v34);
    (*(v36 + 56))(v12, 0, 1, v34);
    v37 = type metadata accessor for Feature();
    v68 = v37;
    v69 = sub_100085D7C();
    v38 = sub_1000056E0(v67);
    (*(*(v37 - 8) + 104))(v38, enum case for Feature.measurement_with_labelplaceholder(_:), v37);
    isFeatureEnabled(_:)();
    sub_100007000(v67);
    static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

    sub_10002B894(v12, &qword_100972ED0);
    v17 = v32;
    v27 = v18;
    v39 = v62;
    v40 = v60;
    v41 = v57;
  }

  else
  {
    v41 = v30;
    if (qword_10096D568 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for FontUseCase();
    sub_1000056A8(v42, qword_10097E160);
    v43 = type metadata accessor for Feature();
    v68 = v43;
    v69 = sub_100085D7C();
    v44 = sub_1000056E0(v67);
    (*(*(v43 - 8) + 104))(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v43);
    isFeatureEnabled(_:)();
    sub_100007000(v67);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    v39 = v62;
    v40 = v60;
  }

  v56 = v27;
  v45 = v61;
  v46 = v63;
  if (qword_10096D570 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v4, qword_10097E178);
  AnyDimension.topMargin(from:in:)();
  if (v64)
  {
    if (qword_10096D588 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v4, qword_10097E1C0);
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v47 = *(v45 + 8);
    v47(v9, v39);
    if (qword_10096D590 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v4, qword_10097E1D8);
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v47(v9, v39);
  }

  else
  {
    sub_1002BB054(v17, v46);
    v48 = *(v40 + 48);
    if (v48(v46, 1, v4) == 1)
    {
      v49 = v55;
      if (qword_10096D578 != -1)
      {
        swift_once();
      }

      v50 = sub_1000056A8(v4, qword_10097E190);
      (*(v40 + 16))(v49, v50, v4);
      v51 = v63;
      if (v48(v63, 1, v4) != 1)
      {
        sub_10002B894(v51, &qword_1009799D0);
      }
    }

    else
    {
      v49 = v55;
      (*(v40 + 32))(v55, v46, v4);
    }

    static Dimensions.defaultRoundingRule.getter();
    v41 = v57;
    StaticDimension.value(compatibleWith:rounded:)();
    (*(v45 + 8))(v9, v39);
    (*(v40 + 8))(v49, v4);
  }

  v52 = v56;
  if (v58)
  {
    if (qword_10096EE38 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  if (v59 && qword_10096EE38 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_36:

  sub_10002B894(v17, &qword_1009799D0);
  return a1;
}

double sub_1002BAA00()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100984340);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DetailCollectionViewCell();
  v20.receiver = v0;
  v20.super_class = v5;
  objc_msgSendSuper2(&v20, "prepareForReuse");
  ArtworkView.image.setter();
  [v0 setNeedsLayout];
  v6 = &v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight];
  *v6 = 0;
  v6[8] = 1;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_titleLabel];
  [v7 setText:0];
  v8 = *&v0[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_subtitleLabel];
  [v8 setText:0];
  v9 = type metadata accessor for Accessory();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessory;
  swift_beginAccess();
  sub_1002BAFE4(v4, &v1[v10]);
  swift_endAccess();
  v11 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction];
  v12 = *&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction];
  *v11 = 0;
  *(v11 + 1) = 0;
  sub_10001F63C(v12);
  v13 = objc_opt_self();
  v14 = [v13 blackColor];
  [v7 setTextColor:v14];

  v15 = [v13 systemGrayColor];
  [v8 setTextColor:v15];

  v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider] setHidden:1];
  v16 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  v16[32] = 1;
  v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider] = 0;
  [*&v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider] setHidden:1];
  v17 = &v1[OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets];
  result = 0.0;
  *v17 = 0u;
  *(v17 + 1) = 0u;
  v17[32] = 1;
  return result;
}

id sub_1002BACFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetailCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DetailCollectionViewCell()
{
  result = qword_10097E268;
  if (!qword_10097E268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002BAE9C()
{
  sub_1002BAF8C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002BAF8C()
{
  if (!qword_100984180)
  {
    type metadata accessor for Accessory();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100984180);
    }
  }
}

uint64_t sub_1002BAFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100984340);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BB054(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_1009799D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1002BB0C4()
{
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousTitleTextColor) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_previousSubtitleTextColor) = 0;
  v1 = v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_imageMarginRight;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessory;
  v3 = type metadata accessor for Accessory();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDivider;
  v5 = type metadata accessor for DividerView(0);
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_topDividerInsets;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showTopDivider) = 0;
  v7 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDivider;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_bottomDividerInsets;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_showBottomDivider) = 0;
  v9 = (v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_accessoryAction);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_backgroundSelectionView;
  *(v0 + v10) = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_isSelectable) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_disabled) = 0;
  v11 = (v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_selectionHandler);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore24DetailCollectionViewCell_tapGestureRecognizer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002BB2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BB334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002BB398(uint64_t a1)
{
  v2 = type metadata accessor for DividerView.Style(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CappedSizeRoundedTitledButton()
{
  result = qword_10097E288;
  if (!qword_10097E288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1002BB498(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = a1;
  v15.super_class = ObjectType;
  v11 = a1;
  objc_msgSendSuper2(&v15, "sizeThatFits:", a2, a3);
  v13 = v12;
  sub_10002A400(&v11[qword_10097E278], *&v11[qword_10097E278 + 24]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();

  (*(v8 + 8))(v10, v7);
  return v13;
}

void sub_1002BB600(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  v1 = v2.receiver;
  objc_msgSendSuper2(&v2, "layoutSubviews");
  [v1 bounds];
  [v1 _setCornerRadius:CGRectGetHeight(v3) * 0.5];
}

char *sub_1002BB67C(char *result)
{
  v1 = *&result[qword_10097E280];
  if (v1)
  {
    v2 = result;
    v3 = sub_10000827C(v1);
    v1(v3);

    return sub_10001F63C(v1);
  }

  return result;
}

id sub_1002BB700(void *a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v9, "measurementsWithFitting:in:", a5, a2, a3);
}

uint64_t sub_1002BB798()
{
  sub_100007000(v0 + qword_10097E278);
  v1 = *(v0 + qword_10097E280);

  return sub_10001F63C(v1);
}

uint64_t sub_1002BB7DC(uint64_t a1)
{
  sub_100007000(a1 + qword_10097E278);
  v2 = *(a1 + qword_10097E280);

  return sub_10001F63C(v2);
}

double sub_1002BB834(double a1, uint64_t a2, void *a3, int a4)
{
  LODWORD(v94) = a4;
  v7 = type metadata accessor for OfferButtonMetrics();
  v92 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v91 - v11;
  v13 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1002BC928();
  v95 = v4;
  countAndFlagsBits = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
  [*(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
  v20 = a1 - v18 - v19;
  [a3 minimumInteritemSpacing];
  v22 = (v20 - v21) * 0.5;
  type metadata accessor for AdvertsSearchResult();
  if (swift_dynamicCastClass())
  {
    if (v17 & 1 | ((v94 & 1) == 0))
    {
      v23 = v95;
      if (*(v95 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        dispatch thunk of AdvertRotationController.currentAdvert.getter();

        sub_10002849C(&unk_10097E360);
        type metadata accessor for MixedMediaLockup();
        if (swift_dynamicCast())
        {
          v24 = v96;
          v25 = type metadata accessor for AdvertSearchResultCollectionViewCell();
          v26 = *(v23 + countAndFlagsBits);
          ObjectType = swift_getObjectType();
          swift_unknownObjectRetain();
          v28 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_1006CAEAC(v24, v26, v28, v25, ObjectType);
          v22 = v29;

LABEL_8:
          swift_unknownObjectRelease_n();
          return v22;
        }
      }
    }

    else
    {
      v39 = v95;
      if (*(v95 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
      {

        dispatch thunk of AdvertRotationController.currentAdvert.getter();

        sub_10002849C(&unk_10097E360);
        type metadata accessor for MixedMediaLockup();
        if (swift_dynamicCast())
        {
          v40 = v96;
          v41 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v42 = *(v39 + countAndFlagsBits);
          v43 = swift_getObjectType();
          swift_unknownObjectRetain();
          v44 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_1004BF884(v40, v42, v44, v41, v43);
          v22 = v45;

          swift_unknownObjectRelease_n();
          return v22;
        }
      }
    }

    return 0.0;
  }

  v30 = v9;
  v31 = v14;
  v32 = v92;
  type metadata accessor for AppSearchResult();
  if (swift_dynamicCastClass())
  {
    v33 = type metadata accessor for ContentSearchResultCollectionViewCell();
    v34 = AppSearchResult.lockup.getter();
    v35 = *(v95 + countAndFlagsBits);
    v36 = swift_getObjectType();
    swift_unknownObjectRetain();
    v37 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    sub_1004BF884(v34, v35, v37, v33, v36);
    v22 = v38;

    goto LABEL_8;
  }

  type metadata accessor for BundleSearchResult();
  if (swift_dynamicCastClass())
  {
    BundleSearchResult.lockup.getter();
    v46 = Lockup.title.getter();
    v48 = v47;
    v49 = Lockup.subtitle.getter();
    v51 = v50;
    v52 = Lockup.children.getter();
    v22 = sub_100543944(v46, v48, v49, v51, v52, [*(v95 + countAndFlagsBits) snapshotPageTraitEnvironment], v22);
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  type metadata accessor for EditorialSearchResult();
  v53 = swift_dynamicCastClass();
  if (v53)
  {
    v22 = sub_1003E2F10(v22, v53, [*(v95 + countAndFlagsBits) snapshotPageTraitEnvironment]);
    swift_unknownObjectRelease();
    return v22;
  }

  type metadata accessor for InAppPurchaseSearchResult();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for LockupCollectionSearchResult();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for AppEventSearchResult();
      v78 = swift_dynamicCastClass();
      if (v78)
      {
        v79 = v78;
        v80 = v95;
        if (dispatch thunk of SearchResultsPresenter.shouldDisplayAppEvent(for:)())
        {
          v81 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v82 = [*(v80 + countAndFlagsBits) snapshotPageTraitEnvironment];
          v83 = swift_getObjectType();
          v84 = *(v80 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          v22 = sub_10018FB28(v79, v82, v84, v22, v81, v83);
        }

        else
        {
          v85 = type metadata accessor for ContentSearchResultCollectionViewCell();
          v86 = AppEventSearchResult.lockup.getter();
          v87 = *(v80 + countAndFlagsBits);
          v88 = swift_getObjectType();
          swift_unknownObjectRetain();
          v89 = ASKDeviceTypeGetCurrent();
          swift_unknownObjectRetain();
          sub_1004BF884(v86, v87, v89, v85, v88);
          v22 = v90;
        }

        goto LABEL_8;
      }

      return 0.0;
    }

    v64 = type metadata accessor for SearchLockupListCollectionViewCell();
    v65 = [*(v95 + countAndFlagsBits) snapshotPageTraitEnvironment];
    swift_getObjectType();
    LODWORD(v94) = sub_10061CEB0(v65);
    v95 = v66;
    v67 = LockupCollectionSearchResult.heading.getter();
    v69 = v68;
    v70 = LockupCollectionSearchResult.title.getter();
    v72 = v71;
    if (LockupCollectionSearchResult.detailAction.getter())
    {
      v73 = Action.title.getter();
      v75 = v74;
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v22 = sub_1000FCE64(v67, v69, v70, v72, v73, v75, v94 & 1, v95, v65, v64);
    swift_unknownObjectRelease();

LABEL_15:

    return v22;
  }

  v54 = InAppPurchaseSearchResult.lockup.getter();
  v94 = [*(v95 + countAndFlagsBits) snapshotPageTraitEnvironment];
  v95 = v54;
  InAppPurchaseLockup.parent.getter();
  v55 = Lockup.title.getter();
  v57 = v56;

  if (v57)
  {
    v58._object = 0x800000010080C060;
    v58._countAndFlagsBits = 0xD000000000000035;
    v59._countAndFlagsBits = 0;
    v59._object = 0xE000000000000000;
    countAndFlagsBits = localizedString(_:comment:)(v58, v59)._countAndFlagsBits;
    v91 = v55;
    sub_10002849C(&unk_10097E350);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_1007B10D0;
    *(v60 + 56) = &type metadata for String;
    *(v60 + 64) = sub_1000BFD1C();
    *(v60 + 32) = v91;
    *(v60 + 40) = v57;
    String.init(format:_:)();
  }

  Lockup.title.getter();

  CGSize.subtracting(insets:)();
  if (qword_10096E730 != -1)
  {
    swift_once();
  }

  v61 = sub_1000056A8(v13, qword_1009D25F0);
  (*(v31 + 16))(v16, v61, v13);
  v62 = [v94 traitCollection];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v63 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v63 = qword_100991028;
  }

  v76 = sub_1000056A8(v7, v63);
  (*(v32 + 16))(v30, v76, v7);

  (*(v32 + 32))(v12, v30, v7);
  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
  static InAppPurchaseSearchResultLayout.estimatedMeasurements(fitting:using:in:)();

  swift_unknownObjectRelease();
  (*(v32 + 8))(v12, v7);
  (*(v31 + 8))(v16, v13);
  return v22;
}

void sub_1002BC500(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = IndexPath.section.getter();
  v34 = a2;
  sub_1002BCC4C(v9, a2);
  v10 = sub_1002BCE7C();
  v11 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
  swift_beginAccess();
  if (!*(*(v2 + v11) + 16) || (sub_1003D7340(v10), (v12 & 1) == 0))
  {
    v32 = v11;
    sub_1002BCF2C();
    v15 = 0.0;
    v16 = 0.0;
    if (v13 == v14)
    {
LABEL_15:
      v29 = sub_1002BCE7C();
      v30 = v32;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = *(v3 + v30);
      *(v3 + v30) = 0x8000000000000000;
      sub_100052238(v29, isUniquelyReferenced_nonNull_native, v15, v16);
      *(v3 + v30) = v35;
      swift_endAccess();
    }

    else
    {
      v17 = v13;
      v18 = v14;
      if (v14 >= v13)
      {
        v33 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
        v19 = (v6 + 8);
        v20 = 0.0;
        while (v17 < v18)
        {
          IndexPath.section.getter();
          IndexPath.init(item:section:)();
          v21 = dispatch thunk of SearchResultsPresenter.result(at:)();
          if (v21)
          {
            v22 = v21;
            v23 = IndexPath.item.getter() == 0;
            [*(v3 + v33) pageContainerSize];
            v25 = sub_1002BB834(v24, v22, v34, v23);
            v27 = v26;
            LOBYTE(v23) = v28;

            (*v19)(v8, v5);
            if (v23)
            {
              v15 = v25;
              v16 = v27;
              goto LABEL_15;
            }

            if (v20 < v27)
            {
              v15 = v25;
              v16 = v27;
              v20 = v27;
            }
          }

          else
          {
            (*v19)(v8, v5);
          }

          if (v18 == ++v17)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1002BC928()
{
  v1 = type metadata accessor for ScreenshotsDisplayStyle();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  if (swift_dynamicCastClass())
  {
    AppSearchResult.lockup.getter();
  }

  else
  {
    type metadata accessor for AppEventSearchResult();
    if (swift_dynamicCastClass())
    {
      if (dispatch thunk of SearchResultsPresenter.shouldDisplayAppEvent(for:)())
      {
        return 0;
      }

      AppEventSearchResult.lockup.getter();
    }

    else
    {
      type metadata accessor for AdvertsSearchResult();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      if (!*(v0 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
      {
        return 0;
      }

      dispatch thunk of AdvertRotationController.currentAdvert.getter();

      sub_10002849C(&unk_10097E360);
      type metadata accessor for MixedMediaLockup();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return 0;
      }
    }
  }

  MixedMediaLockup.screenshotsDisplayStyle.getter();
  v5 = ScreenshotsDisplayStyle.shouldShowScreenshots.getter();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = MixedMediaLockup.screenshots.getter();
  if (v6 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
LABEL_6:

      return 1;
    }
  }

  v10 = MixedMediaLockup.trailers.getter();
  v11 = v10;
  if (v10 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_25:

    return 0;
  }

LABEL_18:
  if ((v11 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v12 = Trailers.videos.getter();

  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 != 0;
}

void sub_1002BCC4C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth;
  if (*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth) == 2)
  {
    IndexPath.init(item:section:)();
    v9 = dispatch thunk of SearchResultsPresenter.result(at:)();
    if (v9)
    {
      v10 = v9;
      [*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageContainerSize];
      v12 = sub_1002BB834(v11, v10, a2, 1);
      v15 = v14;
      if (v14)
      {
        v16 = v12;
        v17 = v13;
        v18 = sub_1002BCE7C();
        v19 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_maxSizeForRowCache;
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(v2 + v19);
        *(v2 + v19) = 0x8000000000000000;
        sub_100052238(v18, isUniquelyReferenced_nonNull_native, v16, v17);
        *(v2 + v19) = v21;
        swift_endAccess();

        (*(v5 + 8))(v7, v4);
      }

      else
      {
        (*(v5 + 8))(v7, v4, v12);
      }

      *(v2 + v8) = v15 & 1;
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_1002BCE7C()
{
  result = IndexPath.item.getter();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v3 = v2 != 2 && (v2 & 1) != 0;
  v4 = result + v3;
  if (__OFADD__(result, v3))
  {
    __break(1u);
  }

  else
  {
    v5 = [*(v0 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
    v6 = [v5 horizontalSizeClass];

    v7 = 1;
    if (v6 != 1)
    {
      v7 = 2;
    }

    return v4 / v7;
  }

  return result;
}

void sub_1002BCF2C()
{
  v1 = sub_1002BCE7C();
  v2 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
  v3 = [*(v0 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = v1 * v5;
  if ((v1 * v5) >> 64 != (v1 * v5) >> 63)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = *(v0 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_isFirstItemFullWidth);
  v8 = v7 != 2 && (v7 & 1) != 0;
  v9 = v6 - v8;
  if (__OFSUB__(v6, v8))
  {
    goto LABEL_16;
  }

  v10 = [*(v0 + v2) traitCollection];
  v11 = [v10 horizontalSizeClass];

  v12 = 1;
  if (v11 != 1)
  {
    v12 = 2;
  }

  if (__OFADD__(v9, v12))
  {
    goto LABEL_17;
  }

  if (v9 + v12 < v9)
  {
LABEL_18:
    __break(1u);
  }
}

uint64_t sub_1002BD048()
{
  result = dispatch thunk of SearchResultsPresenter.result(at:)();
  if (result)
  {
    type metadata accessor for AdvertsSearchResult();
    if (swift_dynamicCastClass())
    {

      return 3;
    }

    else
    {
      type metadata accessor for LockupCollectionSearchResult();
      if (swift_dynamicCastClass() && (dispatch thunk of SearchResultsPresenter.isCondensedSearchLockupsEnabled.getter() & 1) == 0)
      {
        v2 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) "snapshotPageTraitEnvironment")];
        swift_unknownObjectRelease();
        v3 = UITraitCollection.isSizeClassRegular.getter();

        if (v3)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

double sub_1002BD1BC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for OfferButtonMetrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v101 - v13;
  v15 = type metadata accessor for InAppPurchaseSearchResultLayout.Metrics();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppSearchResult();
  v108 = a1;
  if (swift_dynamicCastClass())
  {
    v19 = type metadata accessor for ContentSearchResultCollectionViewCell();
    AppSearchResult.lockup.getter();
    v20 = sub_1001A3D6C(a2 & 1);

    v21 = *(v4 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
    ObjectType = swift_getObjectType();
    [swift_unknownObjectRetain() pageMarginInsets];
    v23 = ASKDeviceTypeGetCurrent();
    swift_unknownObjectRetain();
    v24 = v20;
    v25 = v21;
    v26 = v23;
    v27 = v19;
    v28 = ObjectType;
LABEL_3:
    sub_1004BF884(v24, v25, v26, v27, v28);
    a3 = v29;

LABEL_4:
    swift_unknownObjectRelease_n();
    return a3;
  }

  v102 = v11;
  v103 = v18;
  v106 = v9;
  v107 = v4;
  v104 = v14;
  v105 = v16;
  type metadata accessor for BundleSearchResult();
  if (swift_dynamicCastClass())
  {
    BundleSearchResult.lockup.getter();
    v30 = Lockup.title.getter();
    v32 = v31;
    v33 = Lockup.subtitle.getter();
    v35 = v34;
    v36 = Lockup.children.getter();
    v37 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v38 = v107;
    v39 = [*(v107 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v38 + v37) pageMarginInsets];
    a3 = sub_100543944(v30, v32, v33, v35, v36, v39, a3);
    swift_unknownObjectRelease();

    return a3;
  }

  type metadata accessor for AdvertsSearchResult();
  if (swift_dynamicCastClass())
  {
    v40 = v107;
    if (*(v107 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_advertRotationController))
    {

      dispatch thunk of AdvertRotationController.currentAdvert.getter();

      sub_10002849C(&unk_10097E360);
      type metadata accessor for MixedMediaLockup();
      if (swift_dynamicCast())
      {
        v41 = type metadata accessor for AdvertSearchResultCollectionViewCell();
        v42 = sub_1001A3D6C(a2 & 1);
        v43 = *(v40 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
        v44 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v45 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        sub_1006CAEAC(v42, v43, v45, v41, v44);
        a3 = v46;

        goto LABEL_4;
      }
    }

    return 0.0;
  }

  type metadata accessor for EditorialSearchResult();
  v47 = swift_dynamicCastClass();
  if (v47)
  {
    v48 = v47;
    v49 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v50 = v107;
    v51 = [*(v107 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v50 + v49) pageMarginInsets];
    a3 = sub_1003E2F10(a3, v48, v51);
    swift_unknownObjectRelease();
    return a3;
  }

  type metadata accessor for InAppPurchaseSearchResult();
  if (swift_dynamicCastClass())
  {
    InAppPurchaseSearchResult.lockup.getter();
    v52 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v53 = v107;
    v54 = [*(v107 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v53 + v52) pageMarginInsets];
    InAppPurchaseLockup.parent.getter();
    v55 = Lockup.title.getter();
    v57 = v56;

    if (v57)
    {
      v58._object = 0x800000010080C060;
      v58._countAndFlagsBits = 0xD000000000000035;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      localizedString(_:comment:)(v58, v59);
      sub_10002849C(&unk_10097E350);
      v60 = v54;
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1007B10D0;
      *(v61 + 56) = &type metadata for String;
      *(v61 + 64) = sub_1000BFD1C();
      *(v61 + 32) = v55;
      *(v61 + 40) = v57;
      v54 = v60;
      String.init(format:_:)();
    }

    Lockup.title.getter();

    CGSize.subtracting(insets:)();
    v62 = v8;
    v64 = v102;
    v63 = v103;
    if (qword_10096E730 != -1)
    {
      swift_once();
    }

    v65 = v15;
    v66 = sub_1000056A8(v15, qword_1009D25F0);
    v67 = v105;
    (*(v105 + 16))(v63, v66, v15);
    v68 = [v54 traitCollection];
    v69 = UITraitCollection.prefersAccessibilityLayouts.getter();
    v70 = v106;
    if (v69)
    {
      v71 = v104;
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v72 = qword_100991010;
    }

    else
    {
      v71 = v104;
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v72 = qword_100991028;
    }

    v87 = sub_1000056A8(v62, v72);
    (*(v70 + 16))(v64, v87, v62);

    (*(v70 + 32))(v71, v64, v62);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    InAppPurchaseSearchResultLayout.Metrics.offerButtonSize.setter();
    static InAppPurchaseSearchResultLayout.estimatedMeasurements(fitting:using:in:)();

    swift_unknownObjectRelease();
    (*(v70 + 8))(v71, v62);
    (*(v67 + 8))(v63, v65);
  }

  else
  {
    type metadata accessor for LockupCollectionSearchResult();
    if (!swift_dynamicCastClass())
    {
      type metadata accessor for AppEventSearchResult();
      v88 = swift_dynamicCastClass();
      if (v88)
      {
        v89 = v88;
        v90 = v107;
        if (dispatch thunk of SearchResultsPresenter.shouldDisplayAppEvent(for:)())
        {
          v91 = type metadata accessor for AppEventSearchResultCollectionViewCell();
          v92 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
          v93 = [*(v90 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
          v94 = swift_getObjectType();
          [*(v90 + v92) pageMarginInsets];
          v95 = *(v90 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_objectGraph);
          swift_unknownObjectRetain();
          a3 = sub_10018FB28(v89, v93, v95, a3, v91, v94);
          goto LABEL_4;
        }

        v97 = type metadata accessor for ContentSearchResultCollectionViewCell();
        AppEventSearchResult.lockup.getter();
        v98 = sub_1001A3D6C(a2 & 1);

        v99 = *(v90 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits);
        v100 = swift_getObjectType();
        [swift_unknownObjectRetain() pageMarginInsets];
        v23 = ASKDeviceTypeGetCurrent();
        swift_unknownObjectRetain();
        v24 = v98;
        v25 = v99;
        v26 = v23;
        v27 = v97;
        v28 = v100;
        goto LABEL_3;
      }

      return 0.0;
    }

    v73 = type metadata accessor for SearchLockupListCollectionViewCell();
    v74 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    v75 = v107;
    v76 = [*(v107 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) snapshotPageTraitEnvironment];
    [*(v75 + v74) pageMarginInsets];
    swift_getObjectType();
    LODWORD(v107) = sub_10061CEB0(v76);
    v108 = v77;
    v78 = LockupCollectionSearchResult.heading.getter();
    v80 = v79;
    v81 = LockupCollectionSearchResult.title.getter();
    v83 = v82;
    if (LockupCollectionSearchResult.detailAction.getter())
    {
      v84 = Action.title.getter();
      v86 = v85;
    }

    else
    {
      v84 = 0;
      v86 = 0;
    }

    a3 = sub_1000FCE64(v78, v80, v81, v83, v84, v86, v107 & 1, v108, v76, v73);
    swift_unknownObjectRelease();
  }

  return a3;
}

double sub_1002BDD78(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 2)
  {
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for StaticDimension();
    sub_1000056A8(v11, qword_1009D2460);
    v12 = [a1 traitCollection];
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1007B0B70;
    *(v13 + 32) = v12;
    v14 = v12;
    v15 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v17 = v16;

    v18 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
    [*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) pageMarginInsets];
    [*(v2 + v18) pageMarginInsets];
  }

  else
  {
    if (qword_10096D8F0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for StaticDimension();
    sub_1000056A8(v19, qword_1009CFAB0);
    v20 = [a1 traitCollection];
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v17 = v21;

    (*(v5 + 8))(v8, v4);
  }

  return v17;
}

double sub_1002BE028(void *a1, uint64_t a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  v7 = 0.0;
  if (v6)
  {
    v8 = v6;
    v9 = a1;
    v10 = dispatch thunk of SearchResultsPresenter.result(at:)();
    if (v10)
    {
      v11 = v10;
      v12 = OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits;
      v13 = [*(v2 + OBJC_IVAR____TtC8AppStore35SearchResultsCollectionViewDelegate_pageTraits) traitCollection];
      v14 = [v13 horizontalSizeClass];

      if (v14 == 1)
      {
        v15 = [*(v2 + v12) traitCollection];
        v16 = dispatch thunk of SearchResultsPresenter.shouldResultHaveCondensedAppearance(at:in:)();

        [*(v3 + v12) pageContainerSize];
        v18 = sub_1002BD1BC(v11, v16 & 1, v17);
      }

      else
      {
        sub_1002BC500(a2, v8);
      }

      v7 = v18;
    }

    else
    {
    }
  }

  return v7;
}

unint64_t sub_1002BE198()
{
  sub_10002849C(&unk_10097E340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for UInt32;
  *(inited + 72) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 168) = &type metadata for UInt32;
  *(inited + 144) = 0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  *(inited + 240) = &type metadata for UInt32;
  *(inited + 216) = 0;
  v1 = sub_100397CE8(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_1009827A0);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_1002BE2DC()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BE788();
  v4._object = 0x800000010080C0D0;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.chevronBackward(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009CED60 = result;
  return result;
}

uint64_t sub_1002BE46C()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BE788();
  v4._object = 0x800000010080C0A0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.magnifyingglass(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009CED68 = result;
  return result;
}

uint64_t sub_1002BE5FC()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002BE788();
  v4._countAndFlagsBits = 0x544E554F434341;
  v4._object = 0xE700000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  localizedString(_:comment:)(v4, v5);
  (*(v1 + 104))(v3, enum case for SystemImage.personCropCircle(_:), v0);
  static SystemImage.load(_:with:)();
  (*(v1 + 8))(v3, v0);
  memset(v7, 0, sizeof(v7));
  result = UIKeyCommand.init(title:image:action:input:modifierFlags:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  qword_1009CED70 = result;
  return result;
}

unint64_t sub_1002BE788()
{
  result = qword_100982610;
  if (!qword_100982610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982610);
  }

  return result;
}

uint64_t sub_1002BE7D4()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_10097E370);
  sub_1000056A8(v0, qword_10097E370);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1002BE870()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CED78);
  sub_1000056A8(v4, qword_1009CED78);
  if (qword_10096E1F8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1568);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002BEA50(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096E200 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009D1580);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1002BEC2C()
{
  sub_100028BB8();
  result = static UIColor.componentBackgroundStandout.getter();
  qword_1009CEDC0 = result;
  return result;
}

void sub_1002BEC60(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DirectionalTextAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - v13;
  if (qword_10096E1F8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v15, qword_1009D1568);
  v17 = *(v15 - 8);
  v45 = *(v17 + 16);
  v45(v14, v16, v15);
  v18 = *(v17 + 56);
  v18(v14, 0, 1, v15);
  v19 = enum case for DirectionalTextAlignment.none(_:);
  v20 = *(v9 + 104);
  v44 = v9 + 104;
  v20(v11, enum case for DirectionalTextAlignment.none(_:), v8);
  v21 = type metadata accessor for DynamicTypeLabel();
  v22 = objc_allocWithZone(v21);
  v43 = v8;
  *&v46[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096E200 != -1)
  {
    swift_once();
  }

  v23 = sub_1000056A8(v15, qword_1009D1580);
  v45(v14, v23, v15);
  v18(v14, 0, 1, v15);
  v20(v11, v19, v43);
  v24 = objc_allocWithZone(v21);
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = v46;
  *&v46[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel] = v25;
  v27 = objc_opt_self();
  v28 = String._bridgeToObjectiveC()();
  v29 = [v27 kitImageNamed:v28];

  if (v29)
  {
    v30 = [v29 imageWithRenderingMode:2];

    v31 = [v30 imageFlippedForRightToLeftLayoutDirection];
    v32 = [objc_allocWithZone(UIImageView) initWithImage:v31];

    *&v26[OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator] = v32;
    v47.receiver = v26;
    v47.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
    [v33 setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];
    if (qword_10096D5D0 != -1)
    {
      swift_once();
    }

    [v33 setBackgroundColor:qword_1009CEDC0];
    [v33 _setCornerRadius:20.0];
    [v33 addSubview:*&v33[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel]];
    v34 = OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel;
    v35 = *&v33[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel];
    sub_100028BB8();
    v36 = v35;
    v37 = static UIColor.secondaryText.getter();
    [v36 setTextColor:v37];

    [v33 addSubview:*&v33[v34]];
    v38 = OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator;
    v39 = *&v33[OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator];
    v40 = static UIColor.tableViewCellChevron.getter();
    [v39 setTintColor:v40];

    [v33 addSubview:*&v33[v38]];
  }

  else
  {
    __break(1u);
  }
}

void sub_1002BF250()
{
  v1 = v0;
  v2 = [*&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel] text];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v4 = [*&v1[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel] text];
  if (v4)
  {
    v5 = v4;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  [v1 layoutMargins];
  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 kitImageNamed:v7];

  if (v8)
  {
    v9 = [v8 imageWithRenderingMode:2];

    v10 = [v9 imageFlippedForRightToLeftLayoutDirection];
    [v10 size];

    if (qword_10096E1F8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for FontUseCase();
    sub_1000056A8(v11, qword_1009D1568);
    v12 = type metadata accessor for Feature();
    v20 = v12;
    v13 = sub_100085D7C();
    v21 = v13;
    v14 = sub_1000056E0(v19);
    v15 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v16 = *(*(v12 - 8) + 104);
    v16(v14, enum case for Feature.measurement_with_labelplaceholder(_:), v12);
    isFeatureEnabled(_:)();
    sub_100007000(v19);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096E200 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v11, qword_1009D1580);
    v20 = v12;
    v21 = v13;
    v17 = sub_1000056E0(v19);
    v16(v17, v15, v12);
    isFeatureEnabled(_:)();
    sub_100007000(v19);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096D5B8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for StaticDimension();
    sub_1000056A8(v18, qword_1009CED78);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v18, qword_1009CED90);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v18, qword_1009CEDA8);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    __break(1u);
  }
}

id sub_1002BF7C0()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v0;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v4);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_disclosureIndicator];
  v8 = [v7 isHidden];
  LayoutMarginsAware<>.layoutFrame.getter();
  if (v8)
  {
    Width = CGRectGetWidth(*&v9);
  }

  else
  {
    [v7 sizeThatFits:{v11, v12}];
    v15 = v14;
    v17 = v16;
    LayoutMarginsAware<>.layoutFrame.getter();
    v18 = CGRectGetMaxX(v35) - v15;
    LayoutMarginsAware<>.layoutFrame.getter();
    v19 = CGRectGetMidY(v36) + v17 * -0.5;
    LayoutMarginsAware<>.layoutFrame.getter();
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v7 setFrame:?];
    LayoutMarginsAware<>.layoutFrame.getter();
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v18;
    v38.origin.y = v19;
    v38.size.width = v15;
    v38.size.height = v17;
    Width = v20 - (CGRectGetWidth(v38) + 24.0);
  }

  if (qword_10096D5B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for StaticDimension();
  sub_1000056A8(v21, qword_1009CED78);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  v25 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v25 sizeThatFits:{Width, CGRectGetHeight(v39)}];
  v27 = v26;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v40);
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v41);
  [v25 firstBaselineFromTop];
  v31 = MinY + v23 - v30;
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  [v25 setFrame:?];
  if (qword_10096D5C0 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v21, qword_1009CED90);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v24(v6, v2);
  v32 = *&v0[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v32 sizeThatFits:{Width, CGRectGetHeight(v42)}];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetMinX(v43);
  v44.origin.x = MinX;
  v44.origin.y = v31;
  v44.size.width = Width;
  v44.size.height = v27;
  CGRectGetMaxY(v44);
  [v32 firstBaselineFromTop];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(in:relativeTo:)();
  return [v32 setFrame:?];
}

id sub_1002BFC30(void *a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096D5B0 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_10097E370);
    v7 = v1;
    Conditional.evaluate(with:)();

    [*&v7[OBJC_IVAR____TtC8AppStore16StandardLinkView_descriptionLabel] setTextAlignment:{v8, v1}];
    return [*&v7[OBJC_IVAR____TtC8AppStore16StandardLinkView_summaryLabel] setTextAlignment:v8];
  }

  return result;
}

void sub_1002BFE90()
{
  v0 = objc_opt_self();
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 kitImageNamed:v1];

  if (v2)
  {
    v3 = [v2 imageWithRenderingMode:2];

    v4 = [v3 imageFlippedForRightToLeftLayoutDirection];
    [v4 size];

    if (qword_10096E1F8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for FontUseCase();
    sub_1000056A8(v5, qword_1009D1568);
    v6 = type metadata accessor for Feature();
    v14 = v6;
    v7 = sub_100085D7C();
    v15 = v7;
    v8 = sub_1000056E0(v13);
    v9 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v10 = *(*(v6 - 8) + 104);
    v10(v8, enum case for Feature.measurement_with_labelplaceholder(_:), v6);
    isFeatureEnabled(_:)();
    sub_100007000(v13);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096E200 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v5, qword_1009D1580);
    v14 = v6;
    v15 = v7;
    v11 = sub_1000056E0(v13);
    v10(v11, v9, v6);
    isFeatureEnabled(_:)();
    sub_100007000(v13);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    if (qword_10096D5B8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for StaticDimension();
    sub_1000056A8(v12, qword_1009CED78);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v12, qword_1009CED90);
    AnyDimension.topMargin(from:in:)();
    if (qword_10096D5C8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v12, qword_1009CEDA8);
    AnyDimension.bottomMargin(from:in:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C0314@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v76);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_1009794E0);
  __chkstk_darwin(v5 - 8);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v75 = &v58 - v8;
  v9 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v9 - 8);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v64 = &v58 - v12;
  v13 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v63 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = (&v58 - v18);
  v19 = sub_10002849C(&unk_100984380);
  __chkstk_darwin(v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v73 = &v58 - v23;
  v24 = type metadata accessor for Shelf.ContentType();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10002849C(&unk_1009731F0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v58 - v30;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v29 + 8))(v31, v28);
  v66 = v27;
  v67 = v25;
  v32 = *(v25 + 88);
  v69 = v24;
  v33 = v32(v27, v24);
  if (v33 == enum case for Shelf.ContentType.paragraph(_:) || v33 == enum case for Shelf.ContentType.titledParagraph(_:))
  {
    if (qword_10096D3A0 != -1)
    {
      swift_once();
    }

    v39 = sub_1000056A8(v76, qword_1009CE830);
    return sub_1002C0C9C(v39, v78, type metadata accessor for TitleHeaderView.Style);
  }

  else
  {
    v34 = type metadata accessor for ShelfHeader.Configuration();
    v35 = *(v34 - 8);
    v36 = v73;
    (*(v35 + 56))(v73, 1, 1, v34);
    v37 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
    v58 = *(v37 - 8);
    v59 = v37;
    (*(v58 + 56))(v75, 1, 1);
    sub_100031660(v36, v21, &unk_100984380);
    if ((*(v35 + 48))(v21, 1, v34) == 1)
    {
      sub_10002B894(v21, &unk_100984380);
      v38 = 0;
    }

    else
    {
      v38 = ShelfHeader.Configuration.eyebrowColor.getter();
      (*(v35 + 8))(v21, v34);
    }

    v41 = v74;
    v60 = v2;
    sub_100512504(v38, v74);

    if (qword_10096E778 != -1)
    {
      swift_once();
    }

    v42 = v62;
    v43 = sub_1000056A8(v62, qword_1009D26D0);
    v44 = v64;
    (*(v61 + 56))(v64, 1, 1, v42);
    v45 = v63;
    sub_1002C0C9C(v41, v63, type metadata accessor for TitleHeaderView.TextConfiguration);
    v46 = v65;
    sub_1002C0C9C(v43, v65, type metadata accessor for TitleHeaderView.TextConfiguration);
    v47 = v68;
    sub_100031660(v44, v68, &qword_1009794E8);
    v48 = v75;
    sub_100031660(v75, v77, &qword_1009794E0);
    v49 = v70;
    v50 = v71;
    v51 = v72;
    (*(v71 + 104))(v70, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v72);
    sub_100028BB8();
    v62 = static UIColor.defaultLine.getter();
    sub_10002B894(v48, &qword_1009794E0);
    sub_10002B894(v44, &qword_1009794E8);
    sub_1001EFF9C(v74);
    sub_10002B894(v73, &unk_100984380);
    v52 = v76;
    v53 = v76[8];
    v54 = v60;
    sub_1001EFEC4(v45, v60, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFEC4(v46, v54 + v52[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_1001EFE54(v47, v54 + v52[6]);
    *(v54 + v52[7]) = 0;
    *(v54 + v53) = 0;
    *(v54 + v52[9]) = 0;
    *(v54 + v52[14]) = 0x4030000000000000;
    *(v54 + v52[12]) = 0;
    *(v54 + v52[13]) = v62;
    v55 = v77;
    (*(v50 + 32))(v54 + v52[11], v49, v51);
    v57 = v58;
    v56 = v59;
    if ((*(v58 + 48))(v55, 1, v59) == 1)
    {
      sub_10002B894(v55, &qword_1009794E0);
      (*(v57 + 104))(v54 + v52[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v56);
    }

    else
    {
      (*(v57 + 32))(v54 + v52[10], v55, v56);
    }

    sub_1001EFEC4(v54, v78, type metadata accessor for TitleHeaderView.Style);
    return (*(v67 + 8))(v66, v69);
  }
}

uint64_t sub_1002C0C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002C0D50(void *a1)
{
  v54 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PrivacyHeaderLayout();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for LabelPlaceholderCompatibility();
  v7 = *(v66 - 8);
  __chkstk_darwin(v66);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PrivacyHeader();
  sub_1002C176C(&qword_10097E558, &type metadata accessor for PrivacyHeader);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v56 = v76;
  if (v76)
  {
    v51 = v4;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v11 + 8))(v13, v10);
    sub_1000367E8();
    if (qword_10096E070 != -1)
    {
      swift_once();
    }

    v50 = v6;
    v15 = type metadata accessor for FontUseCase();
    sub_1000056A8(v15, qword_1009D10D0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v16 = v76;
    v17 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    PrivacyHeader.bodyText.getter();
    LinkableText.styledText.getter();

    v18 = dispatch thunk of StyledText.asAttributedString(using:)();

    v19 = type metadata accessor for Feature();
    v77 = v19;
    v63 = sub_1002C176C(&qword_100972E50, &type metadata accessor for Feature);
    v78 = v63;
    v20 = sub_1000056E0(&v76);
    v21 = *(v19 - 8);
    v22 = *(v21 + 104);
    v62 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v61 = v22;
    v60 = v21 + 104;
    v22(v20);
    v23 = v18;
    v24 = v17;
    isFeatureEnabled(_:)();
    sub_100007000(&v76);
    v65 = v24;
    LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v25 = *(v7 + 8);
    v64 = v7 + 8;
    v59 = v25;
    v25(v9, v66);
    result = PrivacyHeader.supplementaryItems.getter();
    v26 = result;
    if (result >> 62)
    {
      v48 = result;
      result = _CocoaArrayWrapper.endIndex.getter();
      v26 = v48;
      v27 = result;
    }

    else
    {
      v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49[1] = a1;
    v52 = v3;
    v49[0] = v23;
    if (v27)
    {
      if (v27 < 1)
      {
        __break(1u);
        return result;
      }

      v28 = 0;
      v57 = v26 & 0xC000000000000001;
      v29 = _swiftEmptyArrayStorage;
      v58 = v26;
      do
      {
        if (v57)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        PrivacyHeaderSupplementaryItem.bodyText.getter();
        LinkableText.styledText.getter();

        v30 = v65;
        v31 = dispatch thunk of StyledText.asAttributedString(using:)();

        v74 = v19;
        v75 = v63;
        v32 = sub_1000056E0(v73);
        v61(v32, v62, v19);
        v33 = v30;
        v34 = v31;
        isFeatureEnabled(_:)();
        sub_100007000(v73);
        LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        v59(v9, v66);
        sub_10002C0AC(v73, &v70);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1000337A4(0, *(v29 + 2) + 1, 1, v29);
        }

        v36 = *(v29 + 2);
        v35 = *(v29 + 3);
        if (v36 >= v35 >> 1)
        {
          v29 = sub_1000337A4((v35 > 1), v36 + 1, 1, v29);
        }

        ++v28;

        sub_100007000(v73);
        *(v29 + 2) = v36 + 1;
        sub_100005A38(&v70, &v29[5 * v36 + 4]);
      }

      while (v27 != v28);
    }

    else
    {
      v29 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v37 = v73[0];
    static Separator.thickness(compatibleWith:)();

    v38 = type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v39 = LayoutViewPlaceholder.init(representing:)();
    if (qword_10096E5A0 != -1)
    {
      swift_once();
    }

    v40 = v54;
    v41 = sub_1000056A8(v54, qword_1009D1FD8);
    (*(v53 + 16))(v55, v41, v40);
    PrivacyHeader.isDetailHeader.getter();
    v42 = v77;
    v43 = v78;
    v44 = sub_10002A400(&v76, v77);
    v74 = v42;
    v75 = *(v43 + 8);
    v45 = sub_1000056E0(v73);
    (*(*(v42 - 8) + 16))(v45, v44, v42);
    sub_1002A4AF4(v29);

    v71 = v38;
    v72 = &protocol witness table for LayoutViewPlaceholder;
    v69 = &protocol witness table for LayoutViewPlaceholder;
    *&v70 = v39;
    v68 = v38;
    v67 = v39;
    swift_retain_n();
    v46 = v50;
    PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    sub_1002C176C(&unk_10097E560, &type metadata accessor for PrivacyHeaderLayout);
    v47 = v52;
    dispatch thunk of Measurable.measurements(fitting:in:)();

    swift_unknownObjectRelease();

    (*(v51 + 8))(v46, v47);
    return sub_100007000(&v76);
  }

  return result;
}

uint64_t sub_1002C176C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1002C17B4()
{
  v1 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer;
    v4 = *(v2 + OBJC_IVAR____TtC8AppStore30AppEventFormattedDatePresenter_updateTimer);

    if (v4)
    {
      [v4 invalidate];
      v4 = *(v2 + v3);
    }

    *(v2 + v3) = 0;
  }

  v5 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
    if (v6)
    {
      swift_beginAccess();
      v7 = v6;
      v8 = v5;
      v9 = sub_1002C8744(v7);
      swift_endAccess();
    }

    else
    {
      v10 = v5;
    }

    v11 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v12 = *&v5[v11];
    if ((v12 & 0xC000000000000001) != 0)
    {

      v13 = __CocoaSet.count.getter();

      if (v13)
      {
LABEL_12:

        return;
      }
    }

    else if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    sub_10008058C();
    goto LABEL_12;
  }
}

void sub_1002C1934()
{
  v1 = v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator];
  v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  sub_1002C3C64(v1);
  v2 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  v3 = [v2 text];
  if (v3)
  {

    [v2 setText:0];
    [v0 setNeedsLayout];
  }

  v4 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
  if (v4)
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
    if (v5)
    {
      swift_beginAccess();
      v6 = v5;
      v7 = v4;
      v8 = sub_1002C8744(v6);
      swift_endAccess();
    }

    else
    {
      v9 = v4;
    }

    v10 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v11 = *&v4[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      v12 = __CocoaSet.count.getter();

      if (v12)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v11 + 16))
    {
      goto LABEL_10;
    }

    sub_10008058C();
    goto LABEL_10;
  }
}

uint64_t sub_1002C1AAC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1A48);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CEDC8);
  sub_100005A38(&v28, &unk_1009CEDF0);
  result = sub_100005A38(&v25, &unk_1009CEE18);
  qword_1009CEE40 = 0;
  unk_1009CEE48 = 0;
  qword_1009CEE50 = v13;
  unk_1009CEE58 = v15;
  qword_1009CEE60 = v17;
  unk_1009CEE68 = v19;
  return result;
}

uint64_t sub_1002C1DD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E3B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1AA8);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CEE70);
  sub_100005A38(&v28, &unk_1009CEE98);
  result = sub_100005A38(&v25, &unk_1009CEEC0);
  qword_1009CEEE8 = 0;
  unk_1009CEEF0 = 0;
  qword_1009CEEF8 = v13;
  unk_1009CEF00 = v15;
  qword_1009CEF08 = v17;
  unk_1009CEF10 = v19;
  return result;
}

uint64_t sub_1002C20F4()
{
  v0 = type metadata accessor for FlowcaseItemLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D4D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1000056A8(v0, qword_1009CEA50);
  (*(v1 + 16))(v3, v4, v0);
  FlowcaseItemLayout.Metrics.captionSpace.getter();
  (*(v1 + 8))(v3, v0);
  v19 = type metadata accessor for ZeroDimension();
  v20 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v18);
  static ZeroDimension.zero.getter();
  v16 = &type metadata for Double;
  v17 = &protocol witness table for Double;
  *&v15 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  sub_100005A38(&v21, &unk_1009CEF18);
  sub_100005A38(&v18, &unk_1009CEF40);
  result = sub_100005A38(&v15, &unk_1009CEF68);
  qword_1009CEF90 = 0;
  unk_1009CEF98 = 0;
  qword_1009CEFA0 = v6;
  unk_1009CEFA8 = v8;
  qword_1009CEFB0 = v10;
  unk_1009CEFB8 = v12;
  return result;
}

double sub_1002C22BC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v17);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  qword_1009CF028 = &type metadata for Double;
  unk_1009CF030 = &protocol witness table for Double;
  qword_1009CF010 = 0x4018000000000000;
  sub_100005A38(&v21, &unk_1009CEFC0);
  sub_100005A38(&v18, &unk_1009CEFE8);
  qword_1009CF038 = 0;
  unk_1009CF040 = 0;
  unk_1009CF048 = xmmword_1007C5B00;
  result = 6.0;
  unk_1009CF058 = xmmword_1007C5B10;
  return result;
}

double sub_1002C25A8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v17);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  qword_1009CF0D0 = &type metadata for Double;
  unk_1009CF0D8 = &protocol witness table for Double;
  qword_1009CF0B8 = 0x4018000000000000;
  sub_100005A38(&v21, &unk_1009CF068);
  sub_100005A38(&v18, &unk_1009CF090);
  qword_1009CF0E0 = 0;
  unk_1009CF0E8 = 0;
  unk_1009CF0F0 = xmmword_1007C5B20;
  result = 3.0;
  unk_1009CF100 = xmmword_1007C5B30;
  return result;
}

double sub_1002C2894()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v14 = *(v5 + 16);
  v16 = v5 + 16;
  v14(v3, v15, v4);
  v6 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v22 = v7;
  v23 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v21);
  v19 = v0;
  v20 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v18);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v14(v3, v15, v4);
  v13(v3, v6, v0);
  v19 = v7;
  v20 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v18);
  v17[3] = v0;
  v17[4] = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v17);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  qword_1009CF178 = &type metadata for Double;
  unk_1009CF180 = &protocol witness table for Double;
  qword_1009CF160 = 0x4018000000000000;
  sub_100005A38(&v21, &unk_1009CF110);
  sub_100005A38(&v18, &unk_1009CF138);
  qword_1009CF188 = 0;
  unk_1009CF190 = 0;
  unk_1009CF198 = xmmword_1007C5B40;
  result = 7.0;
  unk_1009CF1A8 = xmmword_1007C5B20;
  return result;
}

uint64_t sub_1002C2B80()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CF1B8);
  sub_100005A38(&v28, &unk_1009CF1E0);
  result = sub_100005A38(&v25, &unk_1009CF208);
  qword_1009CF230 = 0;
  unk_1009CF238 = 0;
  qword_1009CF240 = v13;
  unk_1009CF248 = v15;
  qword_1009CF250 = v17;
  unk_1009CF258 = v19;
  return result;
}

uint64_t sub_1002C2EA4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v4, qword_1009D1550);
  v5 = *(v4 - 8);
  v22 = *(v5 + 16);
  v24 = v5 + 16;
  v22(v3, v23, v4);
  v6 = enum case for FontSource.useCase(_:);
  v21 = v1[13];
  v21(v3, enum case for FontSource.useCase(_:), v0);
  v7 = type metadata accessor for StaticDimension();
  v32 = v7;
  v33 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v31);
  v29 = v0;
  v30 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(&v28);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v22(v3, v23, v4);
  v21(v3, v6, v0);
  v29 = v7;
  v30 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v28);
  v26 = v0;
  v27 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(&v25);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v26 = &type metadata for Double;
  v27 = &protocol witness table for Double;
  *&v25 = 0x4018000000000000;
  static UIEdgeInsets.horizontal(left:right:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100005A38(&v31, &unk_1009CF260);
  sub_100005A38(&v28, &unk_1009CF288);
  result = sub_100005A38(&v25, &unk_1009CF2B0);
  qword_1009CF2D8 = 0;
  unk_1009CF2E0 = 0;
  qword_1009CF2E8 = v13;
  unk_1009CF2F0 = v15;
  qword_1009CF2F8 = v17;
  unk_1009CF300 = v19;
  return result;
}

uint64_t sub_1002C31C8()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10097E570);
  sub_1000056A8(v4, qword_10097E570);
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1A48);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

id sub_1002C339C()
{
  result = [objc_opt_self() systemRedColor];
  qword_10097E588 = result;
  return result;
}

void sub_1002C33D8()
{
  v0 = [objc_opt_self() systemRedColor];
  v1 = [v0 colorWithAlphaComponent:0.2];

  qword_10097E590 = v1;
}

id sub_1002C3464(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *sub_1002C34B0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirectionalTextAlignment();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - v19;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView] = 0;
  v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter] = 0;
  if (qword_10096E398 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  v22 = sub_1000056A8(v21, qword_1009D1A48);
  v23 = *(v21 - 8);
  (*(v23 + 16))(v20, v22, v21);
  (*(v23 + 56))(v20, 0, 1, v21);
  (*(v15 + 104))(v17, enum case for DirectionalTextAlignment.none(_:), v14);
  v24 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v25 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel] = v25;
  memset(v41, 0, sizeof(v41));
  memset(v40, 0, sizeof(v40));
  v26 = v25;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v40, &unk_1009711D0);
  sub_10002B894(v41, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v11 + 8))(v13, v10);
  v39.receiver = v5;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 setClipsToBounds:0];
  v32 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel;
  v33 = *&v31[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  sub_100005744(0, &qword_100970180);
  v34 = v33;
  v35 = static UIColor.appTint.getter();
  [v34 setTextColor:v35];

  [v31 addSubview:*&v31[v32]];
  return v31;
}

id sub_1002C39B8()
{
  ObjectType = swift_getObjectType();
  sub_1002C17B4();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1002C3B04(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  result = [v5 text];
  if (result)
  {
    v7 = result;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (!a2)
    {
      v13 = 0;
      goto LABEL_12;
    }

    if (v8 == a1 && v10 == a2)
    {

LABEL_16:
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_16;
    }
  }

  else if (!a2)
  {
    return result;
  }

  v13 = String._bridgeToObjectiveC()();
LABEL_12:

  [v5 setText:v13];

  return [v2 setNeedsLayout];
}

id sub_1002C3C64(id result)
{
  v2 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator;
  v3 = v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator];
  if (v3 != (result & 1))
  {
    v4 = v1;
    v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
    if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator])
    {
      if (!*&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView])
      {
        type metadata accessor for RoundedCornerView();
        v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        sub_1002C94F0();
        v12 = *&v1[v5];
        *&v1[v5] = v11;
        v13 = v11;

        v14 = qword_10096D620;
        v15 = v13;
        if (v14 != -1)
        {
          swift_once();
        }

        [v15 setBackgroundColor:qword_10097E588];

        if (qword_10096D628 != -1)
        {
          swift_once();
        }

        v16 = qword_10097E590;
        dispatch thunk of RoundedCornerView.borderColor.setter();
        dispatch thunk of RoundedCornerView.borderWidth.setter();
        [v4 addSubview:v15];

        [v4 setNeedsLayout];
        v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
        v3 = v4[v2];
        v6 = *&v4[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
        if (v6)
        {
LABEL_6:
          [v6 setHidden:v3 ^ 1u];
          if (v4[v2])
          {
            goto LABEL_7;
          }

          goto LABEL_15;
        }

LABEL_14:
        if (v3)
        {
LABEL_7:
          v7 = *&v4[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
          if (v7)
          {
            v8 = *&v4[v5];
            v9 = v7;
            v10 = v8;
            sub_100080200(v8);
          }

          return [v4 setNeedsLayout];
        }

LABEL_15:
        v17 = *&v4[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
        if (!v17)
        {
          return [v4 setNeedsLayout];
        }

        v18 = *&v4[v5];
        if (v18)
        {
          swift_beginAccess();
          v19 = v18;
          v20 = v17;
          v21 = sub_1002C8744(v19);
          swift_endAccess();
        }

        else
        {
          v22 = v17;
        }

        v23 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
        swift_beginAccess();
        v24 = *&v17[v23];
        if ((v24 & 0xC000000000000001) != 0)
        {

          v25 = __CocoaSet.count.getter();

          if (v25)
          {
LABEL_22:

            return [v4 setNeedsLayout];
          }
        }

        else if (*(v24 + 16))
        {
          goto LABEL_22;
        }

        sub_10008058C();
        goto LABEL_22;
      }

      v3 = 1;
    }

    v6 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

  return result;
}

void sub_1002C3F30(unsigned __int8 a1)
{
  v2 = v1;
  v4 = type metadata accessor for CornerStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10002849C(&qword_100972ED0);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = &v72[-v10];
  v12 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style;
  v13 = v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  if (v13 != a1)
  {
    v14 = &off_10097E000;
    if (v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] > 3u)
    {
      if ((v13 - 5) >= 2)
      {
        if (v13 != 4)
        {
          v51 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v51)
          {
            [v51 setHidden:{1, v9}];
          }

          v52 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v53 = *&v2[v52];
          if (v53)
          {
            [v53 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
          sub_100005744(0, &qword_100970180);
          v54 = static UIColor.appTint.getter();
          [v18 setTextColor:v54];

          if (qword_10096E410 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for FontUseCase();
          v21 = v20;
          v22 = qword_1009D1BB0;
          goto LABEL_52;
        }

        v23 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v23)
        {
          [v23 setHidden:{1, v9}];
        }

        v24 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v25 = *&v2[v24];
        if (v25 || (v26 = [objc_allocWithZone(type metadata accessor for RoundedCornerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1002C4DC4(v26), (v25 = *&v2[v24]) != 0))
        {
          [v25 setHidden:0];
        }

        v27 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
        sub_100005744(0, &qword_100970180);
        v28 = static UIColor.primaryText.getter();
        [v27 setTextColor:v28];

        if (qword_10096DE08 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for FontUseCase();
        sub_1000056A8(v29, qword_1009D0998);
        v30 = [v2 traitCollection];
        isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v30).super.isa;

        v32 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
        if (v32)
        {
          v33 = [objc_opt_self() fontWithDescriptor:v32 size:0.0];
          [v27 setFont:v33];
        }

        else
        {
          sub_100005744(0, &qword_1009730E0);
          v70 = [v2 traitCollection];
          v33 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

          [v27 setFont:v33];
        }

        if (v2[v12] == 5)
        {
          v71 = 2;
        }

        else
        {
          v71 = 1;
        }

        [v27 setNumberOfLines:v71];
        v14 = &off_10097E000;
        goto LABEL_53;
      }
    }

    else
    {
      if (v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] <= 1u)
      {
        if (!v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style])
        {
          v15 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
          if (v15)
          {
            [v15 setHidden:{1, v9}];
          }

          v16 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
          swift_beginAccess();
          v17 = *&v2[v16];
          if (v17)
          {
            [v17 setHidden:1];
          }

          v18 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
          sub_100005744(0, &qword_100970180);
          v19 = static UIColor.appTint.getter();
          [v18 setTextColor:v19];

          if (qword_10096E398 != -1)
          {
            swift_once();
          }

          v20 = type metadata accessor for FontUseCase();
          v21 = v20;
          v22 = qword_1009D1A48;
LABEL_52:
          v55 = sub_1000056A8(v20, v22);
          v56 = *(v21 - 8);
          (*(v56 + 16))(v11, v55, v21);
          (*(v56 + 56))(v11, 0, 1, v21);
          dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
          [v18 setNumberOfLines:1];
          goto LABEL_53;
        }

        v45 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v46 = *&v2[v45];
        if (v46)
        {
          [v46 setHidden:1];
        }

        v47 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
        if (qword_10096E3B8 != -1)
        {
          swift_once();
        }

        v48 = type metadata accessor for FontUseCase();
        v49 = sub_1000056A8(v48, qword_1009D1AA8);
        v50 = *(v48 - 8);
        (*(v50 + 16))(v11, v49, v48);
        (*(v50 + 56))(v11, 0, 1, v48);
        dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
        sub_1002C4AC4();
        [v47 setNumberOfLines:2];
LABEL_53:
        sub_1002C4E60();
        v57 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
        if (!v57)
        {
LABEL_72:
          v63 = v14[188];
          swift_beginAccess();
          v64 = *&v63[v2];
          if (!v64)
          {
            goto LABEL_82;
          }

          (*(v5 + 104))(v7, enum case for CornerStyle.continuous(_:), v4);
          v65 = v64;
          dispatch thunk of RoundedCornerView.applyCorner(radius:style:)();

          (*(v5 + 8))(v7, v4);
          v66 = *&v63[v2];
          if (!v66)
          {
            goto LABEL_82;
          }

          v67 = v2[v12];
          if (v67 <= 2)
          {
            goto LABEL_80;
          }

          if (v2[v12] > 5u)
          {
            if (v67 != 6)
            {
LABEL_80:
              v68 = v66;
              goto LABEL_81;
            }
          }

          else if (v67 - 3 >= 2)
          {
            goto LABEL_80;
          }

          v68 = v66;
          v69 = [v2 traitCollection];
          UITraitCollection.prefersRightToLeftLayouts.getter();

LABEL_81:
          dispatch thunk of RoundedCornerView.roundedCorners.setter();

LABEL_82:
          [v2 setNeedsLayout];
          return;
        }

        v58 = v2[v12];
        v59 = 0.0;
        if (v58 > 3)
        {
          if (v2[v12] <= 5u)
          {
            v60 = 8.0;
            v59 = 10.0;
            if (v58 == 4)
            {
              goto LABEL_69;
            }

            goto LABEL_67;
          }

          if (v58 != 6)
          {
LABEL_56:
            if (v2[v12] > 2u)
            {
LABEL_57:
              if (v2[v12] <= 5u)
              {
                v60 = v59;
                if (v58 - 3 >= 2)
                {
                  goto LABEL_67;
                }

LABEL_69:
                v61 = v57;
                v62 = [v2 traitCollection];
                UITraitCollection.prefersRightToLeftLayouts.getter();

                goto LABEL_71;
              }

              if (v58 == 6)
              {
                goto LABEL_69;
              }

LABEL_70:
              v61 = v57;
              goto LABEL_71;
            }

            if (v58 != 1)
            {
              goto LABEL_70;
            }

            v60 = 0.0;
LABEL_67:
            v61 = v57;
            v59 = v60;
LABEL_71:
            [v61 _setCornerRadius:1 continuous:UIRectCorner.caCornerMask.getter() maskedCorners:v59];

            goto LABEL_72;
          }
        }

        else if (v58 < 3)
        {
          goto LABEL_56;
        }

        v59 = 20.0;
        goto LABEL_57;
      }

      if (v13 == 2)
      {
        v34 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
        if (v34)
        {
          [v34 setHidden:{1, v9}];
        }

        v35 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
        swift_beginAccess();
        v36 = *&v2[v35];
        if (v36)
        {
          [v36 setHidden:1];
        }

        v18 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
        sub_100005744(0, &qword_100970180);
        v37 = static UIColor.appTint.getter();
        [v18 setTextColor:v37];

        if (qword_10096DDF0 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for FontUseCase();
        v21 = v20;
        v22 = qword_1009D0950;
        goto LABEL_52;
      }
    }

    v38 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v38)
    {
      [v38 setHidden:{1, v9}];
    }

    v39 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v40 = *&v2[v39];
    if (v40 || (v41 = [objc_allocWithZone(type metadata accessor for RoundedCornerView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}], sub_1002C4DC4(v41), (v40 = *&v2[v39]) != 0))
    {
      [v40 setHidden:0];
    }

    v42 = *&v2[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
    sub_100005744(0, &qword_100970180);
    v43 = static UIColor.primaryText.getter();
    [v42 setTextColor:v43];

    if (v2[v12] == 5)
    {
      v44 = 2;
    }

    else
    {
      v44 = 1;
    }

    [v42 setNumberOfLines:v44];
    goto LABEL_53;
  }
}

void sub_1002C4AC4()
{
  if (v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] != 1)
  {
    return;
  }

  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  if (v2 == 2)
  {
    if (qword_10096D638 != -1)
    {
      swift_once();
    }

    v3 = &qword_10097E5A0;
  }

  else
  {
    if (qword_10096D630 != -1)
    {
      swift_once();
    }

    v3 = &qword_10097E598;
  }

  v4 = *v3;
  v5 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView;
  v6 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
  if (!v6)
  {
    sub_1002C5364([objc_allocWithZone(UIVisualEffectView) initWithEffect:v4]);
    v7 = *&v0[v5];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  [v6 setEffect:v4];
  v7 = *&v0[v5];
  if (v7)
  {
LABEL_12:
    [v7 setHidden:0];
  }

LABEL_13:
  v8 = [v0 traitCollection];
  v9 = [v8 userInterfaceStyle] != 2;

  v10 = [objc_opt_self() effectForBlurEffect:v4 style:4 * v9];
  v11 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView];
  if (v12)
  {
    [v12 setEffect:v10];
  }

  else
  {
    v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v10];
    v14 = *&v0[v11];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v0[v11];
    }

    else
    {
      v15 = 0;
    }

    *&v0[v11] = v13;
    v16 = v13;

    sub_1002C5410();
  }

  v17 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  v18 = [v0 traitCollection];
  v19 = [v18 userInterfaceStyle];

  if (v19 == 2)
  {
    v20 = [objc_opt_self() whiteColor];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  [v17 setTextColor:?];
}

void sub_1002C4DC4(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1002C4E60()
{
  v1 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v1 - 8);
  v3 = &v20 - v2;
  v4 = v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  if (v4 > 3)
  {
    if (v4 - 5 >= 2)
    {
      if (v4 != 4)
      {
        if (qword_10096E410 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for FontUseCase();
        v6 = v5;
        v7 = qword_1009D1BB0;
        goto LABEL_28;
      }

      if (qword_10096DE08 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for FontUseCase();
      sub_1000056A8(v8, qword_1009D0998);
      v9 = [v0 traitCollection];
      isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v9).super.isa;

      v11 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
      v12 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
      if (v11)
      {
        goto LABEL_20;
      }

LABEL_29:
      sub_100005744(0, &qword_1009730E0);
      v18 = [v0 traitCollection];
      v21 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

      [v12 setFont:v21];
      goto LABEL_30;
    }
  }

  else
  {
    if (v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] <= 1u)
    {
      if (v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style])
      {
        if (qword_10096E3B8 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for FontUseCase();
        v6 = v5;
        v7 = qword_1009D1AA8;
      }

      else
      {
        if (qword_10096E398 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for FontUseCase();
        v6 = v5;
        v7 = qword_1009D1A48;
      }

LABEL_28:
      v16 = sub_1000056A8(v5, v7);
      v17 = *(v6 - 8);
      (*(v17 + 16))(v3, v16, v6);
      (*(v17 + 56))(v3, 0, 1, v6);
      dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
      return;
    }

    if (v4 == 2)
    {
      if (qword_10096DDF0 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for FontUseCase();
      v6 = v5;
      v7 = qword_1009D0950;
      goto LABEL_28;
    }
  }

  if (qword_10096E1F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  sub_1000056A8(v13, qword_1009D1550);
  v14 = [v0 traitCollection];
  v15 = FontUseCase.makeFontDescriptor(compatibleWith:)(v14).super.isa;

  v11 = [(objc_class *)v15 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];
  v12 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  if (!v11)
  {
    goto LABEL_29;
  }

LABEL_20:
  v21 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  [v12 setFont:v21];

LABEL_30:
  v19 = v21;
}

void sub_1002C5364(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    [v1 insertSubview:v6 atIndex:0];
  }
}

void sub_1002C5410()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView];
  if (v1)
  {
    v6 = v1;
    v2 = [v6 contentView];
    [v2 addSubview:*&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel]];

    v3 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
    if (v3)
    {
      v4 = [v3 contentView];
      [v4 addSubview:v6];
    }
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];

    [v0 addSubview:v5];
  }
}

void sub_1002C55E4(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v4)
  {
    if (!a1 || (type metadata accessor for AppEventLiveIndicatorAnimationCoordinator(), v6 = v4, v7 = a1, v8 = static NSObject.== infix(_:_:)(), v6, v7, (v8 & 1) == 0) && (v4 = *(v2 + v3)) != 0)
    {
      v9 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
      if (v9)
      {
        swift_beginAccess();
        v10 = v9;
        v11 = v4;
        v12 = sub_1002C8744(v10);
        swift_endAccess();
      }

      else
      {
        v13 = v4;
      }

      v14 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
      swift_beginAccess();
      v15 = *&v4[v14];
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = __CocoaSet.count.getter();

        if (v16)
        {
LABEL_11:

          return;
        }
      }

      else if (*(v15 + 16))
      {
        goto LABEL_11;
      }

      sub_10008058C();
      goto LABEL_11;
    }
  }
}

void sub_1002C5748(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
  v5 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v9 = *(v2 + v4);
  if (*(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator) != 1)
  {
    if (!v9)
    {
      return;
    }

    v12 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
    if (v12)
    {
      swift_beginAccess();
      v13 = v12;
      v14 = v9;
      v15 = sub_1002C8744(v13);
      swift_endAccess();
    }

    else
    {
      v16 = v9;
    }

    v17 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v18 = *&v9[v17];
    if ((v18 & 0xC000000000000001) != 0)
    {

      v19 = __CocoaSet.count.getter();

      if (v19)
      {
LABEL_18:

        return;
      }
    }

    else if (*(v18 + 16))
    {
      goto LABEL_18;
    }

    sub_10008058C();
    goto LABEL_18;
  }

  if (v9)
  {
    v10 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
    v11 = v9;
    v20 = v10;
    sub_100080200(v10);
  }
}

void sub_1002C5920()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CornerStyle();
  v89 = *(v3 - 8);
  v90 = v3;
  __chkstk_darwin(v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LayoutRect();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v99 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  v97 = *(v7 - 8);
  v98 = v7;
  __chkstk_darwin(v7);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109.receiver = v1;
  v109.super_class = ObjectType;
  objc_msgSendSuper2(&v109, "layoutSubviews", v11);
  v81 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView];
  if (v14)
  {
    v15 = v14;
    if (![v15 isHidden])
    {
      goto LABEL_7;
    }
  }

  v16 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v14 = *&v1[v16];
  if (v14)
  {
    v17 = v14;
    if ([v17 isHidden])
    {

      v14 = 0;
    }
  }

LABEL_7:
  v103 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style;
  v18 = v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style];
  if (v18 > 3)
  {
    if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] > 5u)
    {
      if (v18 == 6)
      {
        if (qword_10096D608 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009CF1B8;
      }

      else
      {
        if (qword_10096D610 != -1)
        {
          swift_once();
        }

        v19 = &unk_1009CF260;
      }
    }

    else if (v18 == 4)
    {
      if (qword_10096D5F8 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CF068;
    }

    else
    {
      if (qword_10096D600 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CF110;
    }
  }

  else if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style] > 1u)
  {
    if (v18 == 2)
    {
      if (qword_10096D5E8 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CEF18;
    }

    else
    {
      if (qword_10096D5F0 != -1)
      {
        swift_once();
      }

      v19 = &unk_1009CEFC0;
    }
  }

  else if (v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style])
  {
    if (qword_10096D5E0 != -1)
    {
      swift_once();
    }

    v19 = &unk_1009CEE70;
  }

  else
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    v19 = &unk_1009CEDC8;
  }

  sub_1002C9618(v19, v107);
  if (qword_10096D618 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for StaticDimension();
  v21 = sub_1000056A8(v20, qword_10097E570);
  static Dimensions.defaultRoundingRule.getter();
  v83 = v21;
  v84 = v20;
  AnyDimension.value(in:rounded:)();
  v23 = v22;
  v25 = *(v10 + 8);
  v24 = v10 + 8;
  v82 = v25;
  v25(v13, v9);
  v107[15] = v23;
  v107[16] = v23;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel];
  v27 = type metadata accessor for DynamicTypeLabel();
  v106[4] = &protocol witness table for UILabel;
  v106[3] = v27;
  v106[0] = v26;
  v95 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
  v28 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView];
  if (v28)
  {
    v94 = type metadata accessor for RoundedCornerView();
    v93 = &protocol witness table for UIView;
  }

  else
  {
    v93 = 0;
    v94 = 0;
  }

  v104 = v14;
  v85 = v13;
  if (v14)
  {
    v92 = sub_100005744(0, &qword_100972EB0);
    v91 = &protocol witness table for UIView;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v86 = v24;
  v87 = v9;
  v29 = *&v1[OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView];
  if (v29)
  {
    v30 = sub_100005744(0, &qword_10097E628);
    v31 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  sub_1002C9618(v107, v105);
  v32 = v29;
  v33 = v26;
  v34 = v28;
  v102 = v104;
  v35 = v96;
  static Locale.storefront.getter();
  v36 = Locale.hasExtraTallWritingSystem.getter();
  (*(v97 + 8))(v35, v98);
  if (v36)
  {
    LayoutTextView.withLanguageAwareOutsets.getter();
    sub_1002C9674(v107);
  }

  else
  {
    sub_1002C9674(v107);
    sub_10002C0AC(v106, &v105[21]);
  }

  v105[26] = v28;
  v105[27] = 0;
  v105[28] = 0;
  v105[29] = v94;
  v105[30] = v93;
  v105[31] = v104;
  v105[32] = 0;
  v105[33] = 0;
  v105[34] = v92;
  v105[35] = v91;
  v105[36] = v29;
  v105[37] = 0;
  v105[38] = 0;
  v105[39] = v30;
  v105[40] = v31;
  memcpy(v108, v105, sizeof(v108));
  sub_100007000(v106);
  [v1 bounds];
  v37 = v99;
  AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(v38, v39, v40, v41);
  (*(v100 + 8))(v37, v101);
  v42 = *&v1[v95];
  v43 = v103;
  if (v42)
  {
    v44 = v1[v103];
    if (v44 > 3)
    {
      v45 = v85;
      if (v1[v103] > 5u)
      {
        if (v44 == 6)
        {
          v53 = qword_10096D608;
          v54 = v42;
          if (v53 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CF1B8;
        }

        else
        {
          v61 = qword_10096D610;
          v62 = v42;
          if (v61 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CF260;
        }
      }

      else if (v44 == 4)
      {
        v49 = qword_10096D5F8;
        v50 = v42;
        if (v49 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CF068;
      }

      else
      {
        v57 = qword_10096D600;
        v58 = v42;
        if (v57 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CF110;
      }
    }

    else
    {
      v45 = v85;
      if (v1[v103] > 1u)
      {
        if (v44 == 2)
        {
          v51 = qword_10096D5E8;
          v52 = v42;
          if (v51 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CEF18;
        }

        else
        {
          v59 = qword_10096D5F0;
          v60 = v42;
          if (v59 != -1)
          {
            swift_once();
          }

          v48 = &unk_1009CEFC0;
        }
      }

      else if (v1[v103])
      {
        v55 = qword_10096D5E0;
        v56 = v42;
        if (v55 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CEE70;
      }

      else
      {
        v46 = qword_10096D5D8;
        v47 = v42;
        if (v46 != -1)
        {
          swift_once();
        }

        v48 = &unk_1009CEDC8;
      }
    }

    sub_1002C9618(v48, v105);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    v64 = v63;
    v82(v45, v87);
    v105[15] = v64;
    v105[16] = v64;
    sub_1002C9674(v105);
    v66 = v88;
    v65 = v89;
    v67 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.arc(_:), v90);
    dispatch thunk of RoundedCornerView.applyCorner(radius:style:)();

    (*(v65 + 8))(v66, v67);
  }

  v68 = v102;
  if (v1[v43] != 1)
  {

    goto LABEL_100;
  }

  if (!v104)
  {
LABEL_100:
    sub_1001A927C(v108);
    return;
  }

  [v102 bounds];
  v70 = v69 * 0.5;
  v71 = *&v1[v81];
  if (!v71)
  {
    goto LABEL_98;
  }

  v72 = v1[v43];
  if (v72 <= 2)
  {
    goto LABEL_96;
  }

  if (v1[v43] <= 5u)
  {
    if (v72 - 3 < 2)
    {
      goto LABEL_95;
    }

LABEL_96:
    v73 = v71;
    goto LABEL_97;
  }

  if (v72 != 6)
  {
    goto LABEL_96;
  }

LABEL_95:
  v73 = v71;
  v74 = [v1 traitCollection];
  UITraitCollection.prefersRightToLeftLayouts.getter();

LABEL_97:
  [v73 _setCornerRadius:1 continuous:UIRectCorner.caCornerMask.getter() maskedCorners:v70];

LABEL_98:
  v75 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v76 = *&v1[v75];
  if (v76)
  {
    swift_endAccess();
    v78 = v88;
    v77 = v89;
    v79 = v90;
    (*(v89 + 104))(v88, enum case for CornerStyle.continuous(_:), v90);
    v80 = v76;
    dispatch thunk of RoundedCornerView.applyCorner(radius:style:)();

    (*(v77 + 8))(v78, v79);
    goto LABEL_100;
  }

  sub_1001A927C(v108);
  swift_endAccess();
}

uint64_t sub_1002C65CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v34 = a1;
  v3 = type metadata accessor for Locale();
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style);
  if (v10 > 3)
  {
    if (*(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) > 5u)
    {
      if (v10 == 6)
      {
        if (qword_10096D608 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009CF1B8;
      }

      else
      {
        if (qword_10096D610 != -1)
        {
          swift_once();
        }

        v11 = &unk_1009CF260;
      }
    }

    else if (v10 == 4)
    {
      if (qword_10096D5F8 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CF068;
    }

    else
    {
      if (qword_10096D600 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CF110;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) > 1u)
  {
    if (v10 == 2)
    {
      if (qword_10096D5E8 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CEF18;
    }

    else
    {
      if (qword_10096D5F0 != -1)
      {
        swift_once();
      }

      v11 = &unk_1009CEFC0;
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style))
  {
    if (qword_10096D5E0 != -1)
    {
      swift_once();
    }

    v11 = &unk_1009CEE70;
  }

  else
  {
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    v11 = &unk_1009CEDC8;
  }

  sub_1002C9618(v11, v37);
  if (qword_10096D618 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for StaticDimension();
  sub_1000056A8(v12, qword_10097E570);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v14 = v13;
  (*(v7 + 8))(v9, v6);
  v37[15] = v14;
  v37[16] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_textLabel);
  v36[3] = type metadata accessor for DynamicTypeLabel();
  v36[4] = &protocol witness table for UILabel;
  v36[0] = v15;
  v16 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
  if (v16)
  {
    v31 = type metadata accessor for RoundedCornerView();
    v30 = &protocol witness table for UIView;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v17 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView);
  if (v17)
  {
    v18 = sub_100005744(0, &qword_10097E628);
    v29 = &protocol witness table for UIView;
  }

  else
  {
    v18 = 0;
    v29 = 0;
  }

  v19 = *(v2 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView);
  if (v19)
  {
    v20 = sub_100005744(0, &qword_10097E628);
    v21 = &protocol witness table for UIView;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  sub_1002C9618(v37, v35);
  v22 = v19;
  v23 = v15;
  v24 = v16;
  v25 = v17;
  v26 = v5;
  static Locale.storefront.getter();
  v27 = Locale.hasExtraTallWritingSystem.getter();
  (*(v32 + 8))(v26, v33);
  if (v27)
  {
    LayoutTextView.withLanguageAwareOutsets.getter();
    sub_1002C9674(v37);
  }

  else
  {
    sub_1002C9674(v37);
    sub_10002C0AC(v36, &v35[21]);
  }

  v35[26] = v16;
  v35[27] = 0;
  v35[28] = 0;
  v35[29] = v31;
  v35[30] = v30;
  v35[31] = v17;
  v35[32] = 0;
  v35[33] = 0;
  v35[34] = v18;
  v35[35] = v29;
  v35[36] = v19;
  v35[37] = 0;
  v35[38] = 0;
  v35[39] = v20;
  v35[40] = v21;
  memcpy(v34, v35, 0x148uLL);
  return sub_100007000(v36);
}

uint64_t sub_1002C6C18(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v8 - 8);

  sub_1002C3B04(a1, a2);
  v9 = *(v4 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator);
  *(v4 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator) = a3;
  sub_1002C3C64(v9);
  v10 = v4 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v4, ObjectType, v11);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_10096D110 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for OSLogger();
    sub_1000056A8(v14, qword_1009CE1E8);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v15._object = 0x800000010080C2A0;
    v15._countAndFlagsBits = 0xD000000000000014;
    LogMessage.StringInterpolation.appendLiteral(_:)(v15);
    LogMessage.StringInterpolation.appendInterpolation(identity:)();
    v16._countAndFlagsBits = 0xD000000000000050;
    v16._object = 0x800000010080C2C0;
    LogMessage.StringInterpolation.appendLiteral(_:)(v16);
    LogMessage.init(stringInterpolation:)();
    Logger.warning(_:)();
  }
}

void sub_1002C6F08(void *a1)
{
  v2 = v1;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (!a1 || ((UITraitCollection.prefersAccessibilityLayouts.getter() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v6 = [v2 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  v8 = [a1 preferredContentSizeCategory];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
LABEL_3:
      sub_1002C4E60();
    }
  }
}

uint64_t getEnumTagSinglePayload for AppPromotionFormattedDateView.Style(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppPromotionFormattedDateView.Style(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1002C726C()
{
  result = qword_10097E620;
  if (!qword_10097E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097E620);
  }

  return result;
}

uint64_t sub_1002C7308(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_1002C73C8(void *a1)
{
  sub_1002C65CC(v8);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1007B0B70;
  *(v2 + 32) = a1;
  v3 = a1;
  v4 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1002C91F4(v4, v8);
  v6 = v5;

  sub_1001A927C(v8);
  return v6;
}

Swift::Int sub_1002C74A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10002849C(&qword_100972698);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100005744(0, &qword_100972EB0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1002C7698();
        }

        v2 = v14;
        result = NSObject._rawHashValue(seed:)(*(v14 + 40));
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_1002C7698()
{
  v1 = v0;
  v2 = *v0;
  sub_10002849C(&qword_100972698);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v4 + 40));
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1002C78C0()
{
  v1 = v0;
  v2 = *v0;
  sub_10002849C(&qword_1009726A8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1002C7B3C()
{
  v1 = v0;
  v2 = *v0;
  sub_10002849C(&qword_1009726F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1002C7D60()
{
  v1 = v0;
  v35 = type metadata accessor for AdamId();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10002849C(&qword_100982C40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_1002C979C(&qword_100970CD8);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

unint64_t sub_1002C80A8(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

id sub_1002C812C()
{
  v1 = v0;
  sub_10002849C(&qword_100972698);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_1002C827C()
{
  v1 = v0;
  sub_10002849C(&qword_1009726A8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002C83CC()
{
  v1 = v0;
  sub_10002849C(&qword_1009726F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1002C850C()
{
  v1 = v0;
  v2 = type metadata accessor for AdamId();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100982C40);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1002C8744(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    v4 = a1;
    v5 = __CocoaSet.contains(_:)();

    if (v5)
    {
      v6 = sub_1002C8B5C();

      return v6;
    }

    return 0;
  }

  v8 = v1;
  sub_100005744(0, &qword_100972EB0);
  v9 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  while (1)
  {
    v13 = *(*(v3 + 48) + 8 * v11);
    v14 = static NSObject.== infix(_:_:)();

    if (v14)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v8;
  v18 = *v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1002C812C();
    v16 = v18;
  }

  v17 = *(*(v16 + 48) + 8 * v11);
  sub_1002C8CC4(v11);
  result = v17;
  *v8 = v18;
  return result;
}

uint64_t sub_1002C88DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AdamId();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1002C979C(&qword_100970CD8);
  v31 = a1;
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1002C979C(&qword_100972728);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1002C850C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1002C8E64(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1002C8B5C()
{
  v1 = v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1002C74A8(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = NSObject._rawHashValue(seed:)(v5);
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100005744(0, &qword_100972EB0);
    while (1)
    {
      v10 = *(*(v4 + 48) + 8 * v8);
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v12 = *(*(v4 + 48) + 8 * v8);
  sub_1002C8CC4(v8);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v14;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002C8CC4(unint64_t result)
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
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
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

void sub_1002C8E64(int64_t a1)
{
  v3 = type metadata accessor for AdamId();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v34 = (v12 + 1) & v11;
      v14 = *(v4 + 16);
      v13 = v4 + 16;
      v15 = v11;
      v16 = *(v13 + 56);
      v35 = v13;
      v32 = (v13 - 8);
      v33 = v14;
      do
      {
        v17 = v8;
        v18 = v16;
        v19 = v16 * v10;
        v33(v6, *(v7 + 48) + v16 * v10, v3);
        v20 = v7;
        v21 = v15;
        v22 = v20;
        sub_1002C979C(&qword_100970CD8);
        v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v15 = v21;
        if (a1 >= v34)
        {
          if (v24 >= v34 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v18;
            v28 = v18 * a1;
            if (v18 * a1 < v19 || v27 + v18 * a1 >= (v27 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v34 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v18;
LABEL_5:
        v10 = (v10 + 1) & v15;
        v8 = v17;
      }

      while (((*(v17 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

double sub_1002C915C(uint64_t a1)
{
  sub_1002C65CC(v5);
  sub_1004383F0(a1, v5);
  v3 = v2;
  sub_1001A927C(v5);
  return v3;
}

uint64_t sub_1002C91F4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[17];
  v9[0] = a2[18];
  v9[1] = v7;
  CGSize.subtracting(insets:)();
  sub_10005FC74((a2 + 26), &v10);
  if (v11)
  {
    sub_100005A38(&v10, v12);
    sub_10002A400(v12, v12[3]);
    if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
    {
      sub_10002A400(a2 + 10, a2[13]);
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      (*(v4 + 8))(v6, v3);
    }

    sub_100007000(v12);
  }

  else
  {
    sub_10002B894(&v10, &qword_100975610);
  }

  sub_10002A400(a2 + 21, a2[24]);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  sub_10002A400(a2, a2[3]);
  AnyDimension.topMargin(from:in:)();
  sub_10002A400(a2 + 5, a2[8]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v4 + 8))(v6, v3);
  return CGSize.adding(outsets:)();
}

void sub_1002C94F0()
{
  v1 = OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView);
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator);
  if (v3)
  {
    v4 = *(v0 + v1);
    if (v4)
    {
      swift_beginAccess();
      v5 = v4;
      v6 = v3;
      v7 = sub_1002C8744(v5);
      swift_endAccess();
    }

    else
    {
      v8 = v3;
    }

    v9 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v10 = *&v3[v9];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = __CocoaSet.count.getter();

      if (v11)
      {
LABEL_10:

        return;
      }
    }

    else if (*(v10 + 16))
    {
      goto LABEL_10;
    }

    sub_10008058C();
    goto LABEL_10;
  }
}

void sub_1002C96C8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_showLiveIndicator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_style) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_blurredBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_vibrancyView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore29AppPromotionFormattedDateView_appEventFormattedDatePresenter) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1002C979C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdamId();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

char *sub_1002C97E4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for ReviewSummaryView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  v12 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 contentView];
  [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v14 = [v12 contentView];
  [v14 addSubview:*&v12[OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView]];

  return v12;
}

id sub_1002C9BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReviewSummaryCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ReviewSummaryCollectionViewCell()
{
  result = qword_10097E658;
  if (!qword_10097E658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002C9D10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = *(v6 + OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v14[4] = a5;
    v14[5] = v11;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_100007A08;
    v14[3] = a6;
    v12 = _Block_copy(v14);
    v13 = v10;

    [a1 addAnimations:v12];
    _Block_release(v12);
  }
}

void *sub_1002C9E0C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8AppStore31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer);
  v2 = v1;
  return v1;
}

void sub_1002C9E64()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "tintColorDidChange");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView];
  v3 = OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_subtitleLabel);
  if (v4)
  {
    v5 = [v4 attributedText];
    if (v5)
    {
      v6 = v5;
      v7 = *(v2 + v3);
      if (v7)
      {
        v8 = v7;
        v9 = [v1 tintColor];
        if (v9)
        {
          v10 = v9;
          v11 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v6];
          v12 = [v6 length];
          v13 = swift_allocObject();
          *(v13 + 16) = v11;
          *(v13 + 24) = v10;
          v14 = swift_allocObject();
          *(v14 + 16) = sub_1002CA5F4;
          *(v14 + 24) = v13;
          v18[4] = sub_1002CA5FC;
          v18[5] = v14;
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 1107296256;
          v18[2] = sub_1006607C0;
          v18[3] = &unk_1008BC890;
          v15 = _Block_copy(v18);
          v16 = v11;
          v17 = v10;

          [v6 enumerateAttribute:NSForegroundColorAttributeName inRange:0 options:v12 usingBlock:{0x100000, v15}];

          _Block_release(v15);
          LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

          if ((v17 & 1) == 0)
          {
            [v8 setAttributedText:v16];

            goto LABEL_7;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

LABEL_7:
    }
  }
}

uint64_t type metadata accessor for InAppPurchaseTiledLockupCollectionViewCell()
{
  result = qword_10097E690;
  if (!qword_10097E690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002CA1E8()
{
  v3 = *(*(v0 + OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView) + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView);
  v5.value.super.isa = 0;
  v5.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v5, v1);
  v6.value.super.isa = 0;
  v6.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v6, v2);
  type metadata accessor for ArtworkView();
  sub_10009A098();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

void sub_1002CA2E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for InAppPurchaseTheme();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  sub_10002C0AC(a1, v25);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for InAppPurchaseLockup();
  if (swift_dynamicCast())
  {
    v23 = a2;
    v13 = v24;
    v14 = qword_10096E510;
    v15 = *(*&v3[OBJC_IVAR____TtC8AppStore37InAppPurchaseLockupCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore23InAppPurchaseLockupView_iconView);
    if (v14 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
    sub_1000056A8(v16, qword_1009D1F18);
    InAppPurchaseIconLayout.Metrics.mainIconSize.getter();
    v22 = [v3 backgroundColor];
    InAppPurchaseLockup.theme.getter();
    v17 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_theme;
    swift_beginAccess();
    (*(v7 + 24))(&v15[v17], v12, v6);
    swift_endAccess();
    v21 = *(v7 + 16);
    v21(v9, &v15[v17], v6);
    sub_1002EBEE4(v9);
    v18 = *(v7 + 8);
    v18(v9, v6);
    v18(v12, v6);
    v19 = v22;
    [v15 setBackgroundColor:v22];
    sub_1001BCDCC(v13, v15, v23);
    v21(v12, &v15[v17], v6);
    sub_1002EBEE4(v12);
    v18(v12, v6);
    [v15 setNeedsLayout];
  }
}

char *sub_1002CA604(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v38 = v4;
  v16 = &v4[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v16[40] = 1;
  if (qword_10096DF28 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  v18 = sub_1000056A8(v17, qword_1009D0CF8);
  v19 = *(v17 - 8);
  v35 = *(v19 + 16);
  v36 = v18;
  v35(v15, v18, v17);
  v34 = *(v19 + 56);
  v34(v15, 0, 1, v17);
  v20 = enum case for DirectionalTextAlignment.none(_:);
  v33 = *(v10 + 104);
  v33(v12, enum case for DirectionalTextAlignment.none(_:), v9);
  v21 = type metadata accessor for DynamicTypeLabel();
  v22 = objc_allocWithZone(v21);
  v23 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v24 = v9;
  v25 = v38;
  *&v38[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel] = v23;
  v35(v15, v36, v17);
  v34(v15, 0, 1, v17);
  v33(v12, v20, v24);
  v26 = objc_allocWithZone(v21);
  *&v25[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v25[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_columnWidth] = 0;
  *&v25[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_interColumnSpace] = 0;
  v39.receiver = v25;
  v39.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v39, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v31 = v27;
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel]];
  [v31 addSubview:*&v31[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel]];

  return v31;
}

uint64_t sub_1002CAB10(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Shelf.ContentsMetadata();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v34 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for ProductReviewsMetadata();
  v40 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17 = *(v9 + 8);
  v17(v13, v8);
  if ((*(v5 + 88))(v7, v4) != enum case for Shelf.ContentsMetadata.productReviews(_:))
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 96))(v7, v4);
  v18 = *(v40 + 32);
  v33 = v14;
  v18(v16, v7, v14);
  v19 = v37;
  v20 = *(v37 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel);
  ProductReviewsMetadata.reviewSummaryTitle.getter();
  v21 = String._bridgeToObjectiveC()();

  [v20 setText:v21];

  v22 = *(v19 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel);
  v23 = v34;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  v17(v23, v8);
  if (v41)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  [v22 setText:v24];

  v26 = v36;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.columnWidth.getter();
  v28 = v27;
  v29 = v39;
  v30 = *(v38 + 8);
  v30(v26, v39);
  *(v19 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_columnWidth) = v28;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.interColumnSpace.getter();
  v32 = v31;
  v30(v26, v29);
  result = (*(v40 + 8))(v16, v33);
  *(v19 + OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_interColumnSpace) = v32;
  return result;
}

id sub_1002CAFC0()
{
  swift_getObjectType();
  if (v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState + 40])
  {
    v1 = &v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_columnWidth];
  }

  else
  {
    v1 = &v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_currentState + 24];
  }

  v2 = *v1;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_firstColumnLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 measurementsWithFitting:v0 in:{v2, CGRectGetHeight(v26)}];
  v4 = [v0 traitCollection];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(using:relativeTo:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame:{v6, v8, v10, v12}];
  v13 = *&v0[OBJC_IVAR____TtC8AppStore40InteractiveProductReviewsShelfHeaderView_pinnedLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  Width = CGRectGetWidth(v27);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v13 measurementsWithFitting:v0 in:{Width, CGRectGetHeight(v28)}];
  v15 = [v0 traitCollection];
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRect.withLayoutDirection(using:relativeTo:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  return [v13 setFrame:{v17, v19, v21, v23}];
}

id sub_1002CB2A8(void (*a1)(char *, char *, uint64_t))
{
  v57 = a1;
  v1 = type metadata accessor for FloatingPointRoundingRule();
  v68 = *(v1 - 8);
  v69 = v1;
  __chkstk_darwin(v1);
  v66 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SpacerDimension();
  v64 = *(v3 - 8);
  v65 = v3;
  __chkstk_darwin(v3);
  v63 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&unk_1009731F0);
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v58 = &v51 - v6;
  v73 = type metadata accessor for LabelPlaceholder();
  v70 = *(v73 - 8);
  __chkstk_darwin(v73);
  v67 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v71 = &v51 - v9;
  v10 = type metadata accessor for PageGrid();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DynamicTextAppearance();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v51 - v19;
  DynamicTextAppearance.init()();
  if (qword_10096DF28 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for FontUseCase();
  sub_1000056A8(v21, qword_1009D0CF8);
  v56 = v20;
  DynamicTextAppearance.withFontUseCase(_:)();
  v22 = *(v15 + 8);
  v61 = v15 + 8;
  v62 = v22;
  v22(v17, v14);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v72 = v14;
  v52 = *(v11 + 8);
  v51 = v10;
  v52(v13, v10);
  ProductReviewsMetadata.reviewSummaryTitle.getter();
  v57 = *(v15 + 16);
  v57(v17, v20, v14);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  v23 = ShelfLayoutContext.traitCollection.getter();
  v54 = type metadata accessor for TraitEnvironmentPlaceholder();
  v55 = sub_10002849C(&qword_100973210);
  v24 = swift_allocObject();
  v53 = xmmword_1007B0B70;
  *(v24 + 16) = xmmword_1007B0B70;
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v28 = v27;

  ShelfLayoutContext.contentPageGrid.getter();
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v52(v13, v51);
  v29 = v58;
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v30 = v60;
  ReadOnlyLens.subscript.getter();

  (*(v59 + 8))(v29, v30);
  v31 = v56;
  v57(v17, v56, v72);
  LabelPlaceholder.Options.init(rawValue:)();
  v32 = v67;
  LabelPlaceholder.init(_:with:where:)();
  v33 = ShelfLayoutContext.traitCollection.getter();
  v34 = swift_allocObject();
  *(v34 + 16) = v53;
  *(v34 + 32) = v33;
  v35 = v33;
  v36 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  v37 = v73;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v39 = v38;

  if (v28 > v39)
  {
    v39 = v28;
  }

  v40 = v63;
  SpacerDimension.init(constant:)();
  ShelfLayoutContext.traitEnvironment.getter();
  v41 = v66;
  static Dimensions.defaultRoundingRule.getter();
  sub_10021CA28();
  v42 = v65;
  AnyDimension.value(in:rounded:)();
  v44 = v43;
  swift_unknownObjectRelease();
  (*(v68 + 8))(v41, v69);
  (*(v64 + 8))(v40, v42);
  v45 = objc_opt_self();
  v46 = [v45 fractionalWidthDimension:1.0];
  v47 = [v45 absoluteDimension:v39 + v44];
  v48 = [objc_opt_self() sizeWithWidthDimension:v46 heightDimension:v47];

  v49 = *(v70 + 8);
  v49(v32, v37);
  v49(v71, v37);
  v62(v31, v72);
  return v48;
}

uint64_t sub_1002CBAC0(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100973AD0);
  __chkstk_darwin(v6 - 8);
  v8 = &v58 - v7;
  v9 = sub_10002849C(&unk_100970150);
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - v10;
  v12 = sub_10002849C(&unk_100970160);
  __chkstk_darwin(v12 - 8);
  v14 = &v58 - v13;
  v15 = sub_10002849C(&qword_100973AE0);
  __chkstk_darwin(v15 - 8);
  v65 = &v58 - v16;
  v17 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v17 - 8);
  v19 = &v58 - v18;
  v20 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v20 - 8);
  v66 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = InAppPurchaseInstallPage.lockup.getter();
  v23 = InAppPurchaseInstallPage.parentLockup.getter();
  if (v23)
  {
    v62 = v14;

    v24 = Lockup.icon.getter();
    v63 = a1;
    if (v24)
    {
      v59 = v8;
      v60 = v11;
      v64 = v23;
      if (qword_10096EE80 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for SmallLockupLayout.Metrics();
      sub_1000056A8(v25, qword_1009D3798);
      SmallLockupLayout.Metrics.artworkSize.getter();
      v61 = v2;
      v26 = *&v2[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView];
      v27 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
      [*(v26 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView) contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v28 = *(v26 + v27);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v28 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v29 = *(v26 + v27);
      type metadata accessor for ArtworkView();
      sub_10009A098();
      v30 = v29;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      v11 = v60;
      v3 = v61;
      v23 = v64;
      v8 = v59;
    }

    v31 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_lockupView];
    v32 = sub_10002849C(&unk_100973240);
    (*(*(v32 - 8) + 56))(v19, 1, 1, v32);
    v33 = type metadata accessor for OfferStyle();
    v34 = a2;
    v35 = v65;
    (*(*(v33 - 8) + 56))(v65, 1, 1, v33);
    v36 = type metadata accessor for OfferEnvironment();
    v37 = v62;
    (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
    v38 = sub_10002849C(&unk_1009701A0);
    (*(*(v38 - 8) + 56))(v11, 1, 1, v38);
    v39 = type metadata accessor for OfferTint();
    (*(*(v39 - 8) + 56))(v8, 1, 1, v39);
    sub_1004F3190(v23, v31, v19, v34, 0, 0, v35, v37, v8, v11);
    sub_10002B894(v8, &unk_100973AD0);
    v31[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v31 setNeedsLayout];

    sub_10002B894(v11, &unk_100970150);
    sub_10002B894(v37, &unk_100970160);
    v40 = v35;
    a2 = v34;
    sub_10002B894(v40, &qword_100973AE0);
    sub_10002B894(v19, &unk_100973230);
  }

  if (v22)
  {

    if (Lockup.icon.getter())
    {
      v64 = v23;
      v65 = a2;
      v41 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_inAppPurchaseView];
      v42 = OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView;
      [*(v41 + OBJC_IVAR____TtC8AppStore17InAppPurchaseView_artworkView) contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      v43 = *(v41 + v42);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v43 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v44 = *(v41 + v42);
      type metadata accessor for ArtworkView();
      sub_10009A098();
      v45 = v44;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
    }

    v47 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel];

    Lockup.title.getter();
    v49 = v48;

    if (v49)
    {
      v46 = String._bridgeToObjectiveC()();
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v47 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_titleLabel];
  }

  [v47 setText:v46];

  v50 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_descriptionLabel];
  InAppPurchaseInstallPage.preInstallOfferDescription.getter();
  if (v51)
  {
    v52 = String._bridgeToObjectiveC()();
  }

  else
  {
    v52 = 0;
  }

  [v50 setText:v52];

  v53 = *&v3[OBJC_IVAR____TtC8AppStore34InstallPagePreInstallPaidOfferView_messageLabel];
  v54._object = 0x800000010080C500;
  v54._countAndFlagsBits = 0xD000000000000030;
  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  localizedString(_:comment:)(v54, v55);
  v56 = String._bridgeToObjectiveC()();

  [v53 setText:v56];

  [v3 setNeedsLayout];
}

uint64_t sub_1002CC3DC()
{
  v0 = type metadata accessor for MetadataRibbonItemViewType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MetadataRibbonItem.viewContainerType.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for MetadataRibbonItemViewType.borderedTextLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
    v6 = &unk_100970650;
    v7 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.editorsChoice(_:))
  {
    v5 = type metadata accessor for MetadataRibbonEditorsChoiceView();
    v6 = &unk_100972E90;
    v7 = type metadata accessor for MetadataRibbonEditorsChoiceView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.imageWithLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v6 = &unk_100970648;
    v7 = type metadata accessor for MetadataRibbonIconWithLabelView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.starRating(_:))
  {
    v5 = type metadata accessor for MetadataRibbonStarRatingView();
    v6 = &unk_100972EA0;
    v7 = type metadata accessor for MetadataRibbonStarRatingView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.textLabel(_:))
  {
    v5 = type metadata accessor for MetadataRibbonTagView();
    v6 = &unk_100970640;
    v7 = type metadata accessor for MetadataRibbonTagView;
  }

  else if (v4 == enum case for MetadataRibbonItemViewType.divider(_:))
  {
    v5 = type metadata accessor for MetadataRibbonBarView();
    v6 = &unk_100972E80;
    v7 = type metadata accessor for MetadataRibbonBarView;
  }

  else
  {
    if (v4 != enum case for MetadataRibbonItemViewType.highlightedText(_:))
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = type metadata accessor for MetadataRibbonHighlightedTextView();
    v6 = &unk_100970638;
    v7 = type metadata accessor for MetadataRibbonHighlightedTextView;
  }

  sub_1002CC700(v6, v7);
  return v5;
}