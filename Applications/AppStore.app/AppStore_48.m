uint64_t sub_1005615EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100987160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10056165C(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100987160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005616C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for InfiniteScrollFooterView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v6 == a2)
  {

    goto LABEL_11;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v8)
  {
LABEL_11:

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    *(a3 + 24) = sub_10002849C(&qword_10097BA80);
    *(a3 + 32) = sub_100097060(&unk_10097F590, &qword_10097BA80);
    sub_1000056E0(a3);
    goto LABEL_12;
  }

  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007FB9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    *(a3 + 24) = sub_10002849C(&qword_10097F570);
    *(a3 + 32) = sub_100097060(&qword_10097F578, &qword_10097F570);
    sub_1000056E0(a3);
    sub_100005744(0, &qword_10097F580);
    swift_bridgeObjectRetain_n();
LABEL_12:
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return result;
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_100561A14(void *a1)
{
  v2 = type metadata accessor for ShelfBackground();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10002849C(&unk_1009731F0);
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfLayoutContext();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    return sub_10002B894(v10, &qword_10097F480);
  }

  v16 = Strong;
  v25 = v2;
  v26 = v4;
  v24 = a1;
  sub_10002849C(&qword_10097AB10);
  sub_100097060(&qword_10097AB18, &qword_10097AB10);
  ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_10002B894(v10, &qword_10097F480);
  }

  (*(v12 + 32))(v14, v10, v11);
  ShelfLayoutContext.shelf.getter();
  swift_getKeyPath();
  v17 = v26;
  ReadOnlyLens.subscript.getter();

  (*(v27 + 8))(v7, v5);
  v18 = v28;
  v19 = v25;
  if ((*(v28 + 88))(v17, v25) == enum case for ShelfBackground.color(_:))
  {
    (*(v18 + 96))(v17, v19);
    v20 = *v17;
    v21 = *(sub_10002849C(&qword_100972A40) + 48);
    v22 = type metadata accessor for ShelfBackgroundStyle();
    (*(*(v22 - 8) + 8))(v17 + v21, v22);
    [v24 setBackgroundColor:v20];

    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    (*(v12 + 8))(v14, v11);
    return (*(v18 + 8))(v17, v19);
  }
}

void sub_100561E88(void *a1)
{
  v2 = type metadata accessor for ShelfBackground();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v38 = (&v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10002849C(&unk_1009731F0);
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v33 - v5;
  v7 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v7 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for ShelfLayoutContext();
  v39 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100975028);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v33 = a1;
    v19 = qword_10097F2F8;
    swift_beginAccess();
    v20 = *&v18[v19];
    if (!v20)
    {

      return;
    }

    v21 = v20;

    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();
    v22 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    (*(v14 + 8))(v16, v13);
    swift_beginAccess();
    v23 = swift_unknownObjectWeakLoadStrong();
    if (v23)
    {
      if (__OFSUB__(v22, 1))
      {
        __break(1u);
        return;
      }

      v24 = v23;
      sub_10002849C(&qword_10097AB10);
      sub_100097060(&qword_10097AB18, &qword_10097AB10);
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();

      v25 = v39;
      if ((*(v39 + 48))(v9, 1, v10) != 1)
      {
        (*(v25 + 32))(v12, v9, v10);
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v26 = v38;
        v27 = v35;
        ReadOnlyLens.subscript.getter();

        (*(v34 + 8))(v6, v27);
        v29 = v36;
        v28 = v37;
        if ((*(v36 + 88))(v26, v37) == enum case for ShelfBackground.color(_:))
        {
          (*(v29 + 96))(v26, v28);
          v30 = *v26;
          v31 = *(sub_10002849C(&qword_100972A40) + 48);
          v32 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v32 - 8) + 8))(v26 + v31, v32);
          [v33 setBackgroundColor:v30];

          (*(v25 + 8))(v12, v10);
        }

        else
        {
          (*(v25 + 8))(v12, v10);
          (*(v29 + 8))(v26, v28);
        }

        return;
      }
    }

    else
    {
      (*(v39 + 56))(v9, 1, 1, v10);
    }

    sub_10002B894(v9, &qword_10097F480);
  }
}

uint64_t sub_1005624D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v11 - 8);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OSLogger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v80 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v79 - v22;
  v24 = sub_10002849C(&unk_10097DAE0);
  __chkstk_darwin(v24 - 8);
  v84 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v83 = v79 - v27;
  __chkstk_darwin(v28);
  v82 = v79 - v29;
  *&v31 = __chkstk_darwin(v30).n128_u64[0];
  v33 = v79 - v32;
  v97.receiver = v5;
  v97.super_class = ObjectType;
  v89 = ObjectType;
  objc_msgSendSuper2(&v97, "frame", v31);
  IsEmpty = CGRectIsEmpty(v98);
  v90 = v5;
  v91 = v19;
  v87 = v14;
  v86 = v15;
  v85 = v17;
  if (IsEmpty || (v96.receiver = v5, v96.super_class = v89, objc_msgSendSuper2(&v96, "frame"), v36 == a3) && v35 == a4)
  {
    v37 = v82;
    (*(v19 + 56))(v82, 1, 1, v18);
    goto LABEL_14;
  }

  v38 = [v5 indexPathsForVisibleItems];
  v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *&v94 = v39;

  sub_100569254(&v94);

  v14 = v94;
  v17 = *(v94 + 16);
  if (!v17)
  {
LABEL_12:

    v37 = v82;
    (*(v91 + 56))(v82, 1, 1, v18);
    v5 = v90;
LABEL_13:
    v14 = v87;
    v15 = v86;
    v33 = v79[1];
    v17 = v85;
LABEL_14:
    v81 = v18;
    sub_1000476A0(v37, v33, &unk_10097DAE0);
    if (qword_10096D118 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v5 = 0;
  v88 = v94 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
  v33 = (v91 + 8);
  v40 = v90;
  while (v5 < *(v14 + 16))
  {
    v15 = v18;
    (*(v91 + 16))(v23, v88 + *(v91 + 72) * v5, v18);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v42 = [v40 cellForItemAtIndexPath:isa];

    if (v42)
    {
      [v40 bounds];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      [v42 frame];
      v100.origin.x = v51;
      v100.origin.y = v52;
      v100.size.width = v53;
      v100.size.height = v54;
      v99.origin.x = v44;
      v99.origin.y = v46;
      v99.size.width = v48;
      v99.size.height = v50;
      v55 = CGRectContainsRect(v99, v100);

      if (v55)
      {

        v56 = v91;
        v37 = v82;
        v18 = v15;
        (*(v91 + 32))(v82, v23, v15);
        (*(v56 + 56))(v37, 0, 1, v15);
        v5 = v40;
        goto LABEL_13;
      }
    }

    ++v5;
    v18 = v15;
    (*v33)(v23, v15);
    if (v17 == v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  swift_once();
LABEL_15:
  v57 = sub_1000056A8(v14, qword_1009CE200);
  (*(v15 + 16))(v17, v57, v14);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B5360;
  LogMessage.init(stringLiteral:)();
  type metadata accessor for CGSize(0);
  v59 = v58;
  *(&v95 + 1) = v58;
  *&v94 = a3;
  *(&v94 + 1) = a4;
  static LogMessage.safe(_:)();
  sub_10002B894(&v94, &unk_1009711D0);
  LogMessage.init(stringLiteral:)();
  v93.receiver = v5;
  v93.super_class = v89;
  objc_msgSendSuper2(&v93, "frame");
  *(&v95 + 1) = v59;
  *&v94 = v60;
  *(&v94 + 1) = v61;
  static LogMessage.safe(_:)();
  sub_10002B894(&v94, &unk_1009711D0);
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v62._countAndFlagsBits = 0x6E696C6C6F726373;
  v62._object = 0xED0000206F742067;
  LogMessage.StringInterpolation.appendLiteral(_:)(v62);
  v63 = v33;
  v64 = v33;
  v65 = v83;
  sub_100031660(v64, v83, &unk_10097DAE0);
  v66 = v91;
  v67 = *(v91 + 48);
  v68 = v81;
  if (v67(v65, 1, v81) == 1)
  {
    sub_10002B894(v65, &unk_10097DAE0);
    v94 = 0u;
    v95 = 0u;
  }

  else
  {
    *(&v95 + 1) = v68;
    v69 = sub_1000056E0(&v94);
    (*(v66 + 32))(v69, v65, v68);
  }

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v94, &unk_1009711D0);
  v70._countAndFlagsBits = 46;
  v70._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v70);
  LogMessage.init(stringInterpolation:)();
  v71 = v87;
  v72 = v85;
  Logger.info(_:)();

  (*(v86 + 8))(v72, v71);
  v73 = v90;
  v92.receiver = v90;
  v92.super_class = v89;
  objc_msgSendSuper2(&v92, "setFrame:", a1, a2, a3, a4);
  v74 = v84;
  sub_100031660(v63, v84, &unk_10097DAE0);
  if (v67(v74, 1, v68) == 1)
  {
    sub_10002B894(v63, &unk_10097DAE0);
  }

  else
  {
    v75 = v91;
    v76 = v80;
    (*(v91 + 32))(v80, v74, v68);
    [v73 layoutIfNeeded];
    v77 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v73 scrollToItemAtIndexPath:v77 atScrollPosition:1 animated:0];

    (*(v75 + 8))(v76, v68);
    v74 = v63;
  }

  return sub_10002B894(v74, &unk_10097DAE0);
}

id sub_100562F28()
{
  ObjectType = swift_getObjectType();
  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OSLogger();
  sub_1000056A8(v2, qword_1009CE200);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v5[0] = ObjectType;
  static LogMessage.safe(_:)();
  sub_10002B894(v5, &unk_1009711D0);
  MetatypeMetadata = &type metadata for String;
  strcpy(v5, "reloadData()");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  static LogMessage.safe(_:)();
  sub_10002B894(v5, &unk_1009711D0);
  Logger.info(_:)();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, "reloadData");
}

void sub_100563248(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = UIContentSizeCategoryAccessibilityMedium;
  v4 = UIContentSizeCategoryAccessibilityExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    v5 = static UIContentSizeCategory.<= infix(_:_:)();

    if (v5)
    {
      return;
    }
  }

  else
  {
  }

  v6 = [a1 preferredContentSizeCategory];
  v7 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v8 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (static UIContentSizeCategory.>= infix(_:_:)())
  {
    static UIContentSizeCategory.<= infix(_:_:)();
  }
}

char *sub_1005633B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  *(v2 + qword_10098BD50) = 0;
  *(v2 + qword_1009D29E0) = 0;
  *(v2 + qword_10098BD58) = 0;
  makeNetworkInquiry()();
  v6 = qword_10098BD68;
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 56))(v3 + v6, 1, 1, v7);
  v8 = qword_10098BD70;
  v9 = type metadata accessor for TimeZone();
  (*(*(v9 - 8) + 56))(v3 + v8, 1, 1, v9);
  *(v3 + qword_10098BD80) = 0;
  v10 = v3 + qword_10098BD88;
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v3 + qword_10098BD90) = 0;
  type metadata accessor for AdvertRotationControllerProvider();
  BaseObjectGraph.inject<A>(_:)();
  *(v3 + qword_10098BD78) = v17;

  v11 = sub_1003BC69C(a1, a2);
  v12 = *&v11[qword_1009CF410];

  CompoundScrollObserver.addChild(_:)();

  sub_10002849C(&qword_10097B110);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007B1890;
  *(v13 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v13 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v13 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v13 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  if (sub_1001DFF18())
  {

LABEL_4:
    type metadata accessor for TodayDebugViews();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v15 + 71) = 0;
    *(v15 + 56) = 0u;
    *(v15 + 40) = 0u;
    *(v15 + 24) = 0u;
    swift_unknownObjectWeakAssign();
    *&v11[qword_10098BD90] = v15;

    return v11;
  }

  v14 = sub_1001DFF3C();

  if (v14)
  {
    goto LABEL_4;
  }

  return v11;
}

id sub_1005636A8()
{
  v1 = qword_10098BD80;
  v2 = *(v0 + qword_10098BD80);
  if (v2)
  {
    v3 = *(v0 + qword_10098BD80);
  }

  else
  {
    v4 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v0 action:"didLongPressTitleWithGestureRecognizer:"];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_10056372C()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v2 = type metadata accessor for Feature.iOS();
  v26[3] = v2;
  v26[4] = sub_10056F08C(&qword_10097CC80, &type metadata accessor for Feature.iOS);
  v3 = sub_1000056E0(v26);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.today_tab_largest_ax_support(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v26);
  if ((v2 & 1) == 0)
  {
    v4 = [v1 view];
    if (!v4)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v5 = v4;
    [v4 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  }

  v6 = [v1 view];
  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = v6;
  type metadata accessor for InsetCollectionViewControllerContentView();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {

    goto LABEL_16;
  }

  *(v8 + OBJC_IVAR____TtC8AppStoreP33_F9B20E6387F6F627D5761E6B0A83FE5540InsetCollectionViewControllerContentView_insetLayoutMarginsFromTopSafeAreaInset) = 0;

  [v1 setClearsSelectionOnViewWillAppear:0];
  v9 = [v1 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 _setEdgesAllowingScrollAccessoriesExtendedToBoundingPath:14];
  }

  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 launchedToTest];

    [v12 setDelaysContentTouches:v14];
  }

  if ((byte_100994178 & 1) == 0)
  {
    v15 = [objc_allocWithZone(NSMutableParagraphStyle) init];
    [v15 setMinimumLineHeight:13.0];
    [v15 setMaximumLineHeight:13.0];
    sub_10002849C(&unk_100973960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B1890;
    *(inited + 32) = NSParagraphStyleAttributeName;
    v17 = sub_100005744(0, &unk_100976610);
    *(inited + 40) = v15;
    *(inited + 64) = v17;
    *(inited + 72) = NSBaselineOffsetAttributeName;
    v18 = objc_allocWithZone(NSNumber);
    v19 = NSParagraphStyleAttributeName;
    v20 = v15;
    v21 = NSBaselineOffsetAttributeName;
    v22 = [v18 initWithDouble:2.0];
    *(inited + 104) = sub_100005744(0, &qword_10097FB80);
    *(inited + 80) = v22;
    sub_100397150(inited);
    swift_setDeallocating();
    sub_10002849C(&unk_100970EC0);
    swift_arrayDestroy();
    sub_100005744(0, &qword_1009846D0);
    v23 = NSString.init(stringLiteral:)();
    type metadata accessor for Key(0);
    sub_10056F08C(&qword_100976620, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v23 boundingRectWithSize:1 options:isa attributes:0 context:{1.79769313e308, 1.79769313e308}];

    v25 = [objc_allocWithZone(NSTextStorage) init];
    byte_100994178 = 1;
  }

  if (*&v1[qword_10098BD90])
  {

    sub_10023FAD4();
  }
}

void sub_100563BD0(void *a1)
{
  v1 = a1;
  sub_10056372C();
}

uint64_t sub_100563C18(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v1;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "viewWillAppear:", a1 & 1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [Strong layer];
    CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
    [v11 setTransform:&v13];

    swift_unknownObjectWeakAssign();
  }

  (*(v5 + 104))(v8, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v4);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v5 + 8))(v8, v4);
  return sub_10056586C();
}

void sub_100563DD4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_100563C18(a3);
}

uint64_t sub_100563E28()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "as_viewWillBecomeFullyVisible", v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [Strong layer];
    CATransform3DMakeScale(&v11, 1.0, 1.0, 1.0);
    [v9 setTransform:&v11];

    swift_unknownObjectWeakAssign();
  }

  (*(v3 + 104))(v6, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.willAppear(_:), v2);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v3 + 8))(v6, v2);
}

void sub_100563FD0(void *a1)
{
  v1 = a1;
  sub_100563E28();
}

id sub_100564040()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for UIView.LayoutRegion();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "viewDidLayoutSubviews", v8);
  if (*&v0[qword_10098BD90])
  {

    sub_100240748();
  }

  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  v13 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
  v14 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
  sub_10002B894(v5, &unk_100996820);
  UIView.directionalEdgeInsets(for:)();
  v17 = v16;

  result = (*(v7 + 8))(v10, v6);
  v18 = &v1[qword_10098BD88];
  v19 = *&v1[qword_10098BD88];
  v20 = v1[qword_10098BD88 + 8];
  *v18 = v17;
  *(v18 + 8) = 0;
  if ((v20 & 1) != 0 || v17 != v19)
  {
    result = [v1 view];
    if (result)
    {
      v21 = result;
      [result bounds];

      sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController);
      return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

void sub_100564350(void *a1)
{
  v1 = a1;
  sub_100564040();
}

void sub_1005643AC(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v9 + 8))(v11, v8);
}

void sub_1005644F4(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  (*(v11 + 8))(v13, v10);
}

void sub_100564630(void *a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for Shelf.ContentType();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v69 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10002849C(&qword_100975F10);
  __chkstk_darwin(v87);
  v13 = &v66 - v12;
  v75 = sub_10002849C(&unk_1009731F0);
  v14 = *(v75 - 8);
  __chkstk_darwin(v75);
  v74 = &v66 - v15;
  v16 = sub_10002849C(&unk_1009731E0);
  __chkstk_darwin(v16 - 8);
  v96 = &v66 - v17;
  v18 = sub_10002849C(&unk_100992460);
  __chkstk_darwin(v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v66 - v22;
  __chkstk_darwin(v24);
  v93 = &v66 - v25;
  v26 = type metadata accessor for IndexPath();
  v89 = *(v26 - 8);
  v90 = v26;
  __chkstk_darwin(v26);
  v78 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v95 = &v66 - v29;
  v103.receiver = v4;
  v103.super_class = ObjectType;
  v88 = ObjectType;
  objc_msgSendSuper2(&v103, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  if ([v4 isViewLoaded])
  {
    v30 = [v4 collectionView];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    aBlock = 0x3FF0000000000000;
    v98 = 0;
    v99 = 0;
    v100 = 0x3FF0000000000000;
    v101 = 0;
    v102 = 0;
    [v30 setTransform:&aBlock];

    v32 = [v4 collectionView];
    if (v32)
    {
      v72 = v20;
      v33 = v32;
      v34 = [v32 indexPathsForSelectedItems];

      if (v34)
      {
        v86 = v4;
        v67 = a1;
        v35 = v90;
        v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v85 = *(v36 + 16);
        if (!v85)
        {
          v77 = _swiftEmptyArrayStorage;
LABEL_26:

          if (*(v77 + 2))
          {
            v62 = v77;
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = swift_allocObject();
            *(v64 + 16) = v63;
            *(v64 + 24) = v62;
            v101 = sub_10056F084;
            v102 = v64;
            aBlock = _NSConcreteStackBlock;
            v98 = 1107296256;
            v99 = sub_1006D1458;
            v100 = &unk_1008C8A90;
            v65 = _Block_copy(&aBlock);

            [v67 animateAlongsideTransition:0 completion:v65];
            _Block_release(v65);
          }

          else
          {
          }

          return;
        }

        v37 = 0;
        v83 = v89 + 16;
        v71 = (v14 + 8);
        v82 = (v10 + 56);
        v81 = enum case for Shelf.ContentType.todayCard(_:);
        v80 = (v10 + 104);
        v68 = (v10 + 32);
        v70 = (v10 + 8);
        v73 = (v89 + 8);
        v76 = (v89 + 32);
        v77 = _swiftEmptyArrayStorage;
        v38 = v96;
        v94 = v23;
        v84 = v36;
        v79 = (v10 + 48);
        while (1)
        {
          if (v37 >= *(v36 + 16))
          {
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          v39 = v9;
          v40 = v13;
          v41 = v39;
          v42 = (*(v89 + 80) + 32) & ~*(v89 + 80);
          v91 = *(v89 + 72);
          v92 = v42;
          (*(v89 + 16))(v95, v36 + v42 + v91 * v37, v35);
          sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController);
          ShelfBasedCollectionViewController.itemLayoutContext(at:)();
          v43 = type metadata accessor for ItemLayoutContext();
          v44 = *(v43 - 8);
          if ((*(v44 + 48))(v38, 1, v43) == 1)
          {
            sub_10002B894(v38, &unk_1009731E0);
            v45 = 1;
            v46 = v93;
          }

          else
          {
            swift_getKeyPath();
            v47 = v74;
            ItemLayoutContext.subscript.getter();

            (*(v44 + 8))(v96, v43);
            swift_getKeyPath();
            v46 = v93;
            v48 = v75;
            ReadOnlyLens.subscript.getter();

            (*v71)(v47, v48);
            v45 = 0;
          }

          v49 = *v82;
          v50 = v41;
          (*v82)(v46, v45, 1, v41);
          (*v80)(v23, v81, v41);
          v49(v23, 0, 1, v41);
          v51 = *(v87 + 48);
          v13 = v40;
          sub_100031660(v46, v40, &unk_100992460);
          sub_100031660(v23, v40 + v51, &unk_100992460);
          v52 = *v79;
          if ((*v79)(v40, 1, v50) == 1)
          {
            break;
          }

          v53 = v72;
          sub_100031660(v13, v72, &unk_100992460);
          if (v52(&v13[v51], 1, v50) == 1)
          {
            sub_10002B894(v94, &unk_100992460);
            sub_10002B894(v46, &unk_100992460);
            (*v70)(v53, v50);
            v9 = v50;
LABEL_8:
            sub_10002B894(v13, &qword_100975F10);
            v35 = v90;
            v38 = v96;
            goto LABEL_9;
          }

          v54 = v69;
          (*v68)(v69, &v13[v51], v50);
          sub_10056F08C(&qword_100972720, &type metadata accessor for Shelf.ContentType);
          v55 = dispatch thunk of static Equatable.== infix(_:_:)();
          v56 = *v70;
          (*v70)(v54, v50);
          sub_10002B894(v94, &unk_100992460);
          sub_10002B894(v93, &unk_100992460);
          v56(v53, v50);
          sub_10002B894(v13, &unk_100992460);
          v35 = v90;
          v38 = v96;
          v9 = v50;
          if (v55)
          {
            goto LABEL_20;
          }

LABEL_9:
          (*v73)(v95, v35);
          v23 = v94;
LABEL_10:
          ++v37;
          v36 = v84;
          if (v85 == v37)
          {
            goto LABEL_26;
          }
        }

        sub_10002B894(v23, &unk_100992460);
        sub_10002B894(v46, &unk_100992460);
        v9 = v50;
        if (v52(&v13[v51], 1, v50) == 1)
        {
          sub_10002B894(v13, &unk_100992460);
          v35 = v90;
          v38 = v96;
LABEL_20:
          v57 = *v76;
          (*v76)(v78, v95, v35);
          v58 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v58;
          v23 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100144554(0, *(v58 + 16) + 1, 1);
            v58 = aBlock;
          }

          v61 = *(v58 + 16);
          v60 = *(v58 + 24);
          if (v61 >= v60 >> 1)
          {
            sub_100144554(v60 > 1, v61 + 1, 1);
            v58 = aBlock;
          }

          *(v58 + 16) = v61 + 1;
          v77 = v58;
          v57((v58 + v92 + v61 * v91), v78, v35);
          goto LABEL_10;
        }

        goto LABEL_8;
      }
    }
  }
}

void sub_1005651C4(void *a1, uint64_t a2, uint64_t a3)
{
  if (([a1 isCancelled] & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = *(a3 + 16);
        if (v8)
        {
          v9 = *(type metadata accessor for IndexPath() - 8);
          v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
          v11 = *(v9 + 72);
          do
          {
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            [v7 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

            v13 = IndexPath._bridgeToObjectiveC()().super.isa;
            v14 = [v7 cellForItemAtIndexPath:v13];

            if (v14)
            {
              [v14 setHidden:1];
            }

            v10 += v11;
            --v8;
          }

          while (v8);
        }
      }

      else
      {
        v7 = v5;
      }
    }
  }
}

void sub_100565354(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_100564630(a5, a2, a3);
  swift_unknownObjectRelease();
}

void sub_1005653D4(void *a1)
{
  v8.receiver = a1;
  v8.super_class = swift_getObjectType();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewSafeAreaInsetsDidChange");
  v2 = [v1 collectionView];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 safeAreaInsets];
      v7 = v6;

      [v3 verticalScrollIndicatorInsets];
      [v3 setVerticalScrollIndicatorInsets:v7];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1005654B8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = ASKDeviceTypeGetCurrent();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      v17 = UICollectionView;
      goto LABEL_9;
    }
  }

  v17 = type metadata accessor for TodayDiffablePageViewController.ResizableCollectionView();
LABEL_9:
  v18 = objc_allocWithZone(v17);

  return [v18 initWithFrame:a1 collectionViewLayout:{a2, a3, a4, a5}];
}

uint64_t sub_1005655D4()
{
  v1 = v0;
  v2 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v10, v14, &unk_10097F510);
  if (v15)
  {
    sub_10002C0AC(v14, v13);
    sub_10002B894(v14, &unk_10097F510);
    sub_10002A400(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v6);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v7 + 8))(v9, v6);
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v14, &unk_10097F510);
  }

  dispatch thunk of DiffablePagePresenter.appEnteredWhileAppeared()();
  sub_10056586C();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appDidForeground(_:), v2);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10056586C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v1 - 8);
  v71 = v1;
  __chkstk_darwin(v1);
  v68 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100979710);
  __chkstk_darwin(v4 - 8);
  v76 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  v9 = type metadata accessor for Date();
  v78 = *(v9 - 8);
  __chkstk_darwin(v9);
  v74 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v12;
  v13 = sub_10002849C(&qword_100979718);
  __chkstk_darwin(v13 - 8);
  v77 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = type metadata accessor for TimeZone();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v72 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = qword_10098BD70;
  swift_beginAccess();
  v75 = v24;
  v25 = &v0[v24];
  v26 = v19;
  sub_100031660(v25, v17, &qword_100979718);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v27 = v0;
    v28 = v78;
    v29 = v9;
    sub_10002B894(v17, &qword_100979718);
LABEL_5:
    if (qword_10096D118 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for OSLogger();
    sub_1000056A8(v34, qword_1009CE200);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    v35 = v76;
    Date.init()();
    (*(v28 + 56))(v35, 0, 1, v29);
    v36 = qword_10098BD68;
    swift_beginAccess();
    sub_1000315F8(v35, v27 + v36, &qword_100979710);
    swift_endAccess();
    v37 = v77;
    static TimeZone.current.getter();
LABEL_8:
    (*(v26 + 56))(v37, 0, 1, v18);
    v38 = v75;
    swift_beginAccess();
    sub_1000315F8(v37, v27 + v38, &qword_100979718);
    return swift_endAccess();
  }

  v65 = *(v19 + 32);
  v65(v23, v17, v18);
  v30 = qword_10098BD68;
  swift_beginAccess();
  sub_100031660(&v0[v30], v8, &qword_100979710);
  v28 = v78;
  v31 = (*(v78 + 48))(v8, 1, v9);
  v32 = v9;
  v33 = v23;
  v27 = v0;
  if (v31 == 1)
  {
    v29 = v9;
    (*(v26 + 8))(v33, v18);
    sub_10002B894(v8, &qword_100979710);
    goto LABEL_5;
  }

  v63 = v30;
  v40 = *(v28 + 32);
  v41 = v73;
  v64 = v32;
  v62 = v28 + 32;
  v61 = v40;
  (v40)(v73, v8);
  sub_10002A400(&v0[qword_10098BD60], *&v0[qword_10098BD60 + 24]);
  if (dispatch thunk of NetworkInquiry.isLikelyReachable.getter())
  {
    static TimeZone.current.getter();
    Date.init()();
    sub_10056F08C(&unk_100979730, &type metadata accessor for TimeZone);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v60 = v26 + 32;
    if ((v42 & 1) != 0 && !sub_10056EA58(v41, v74))
    {
      if (qword_10096D118 != -1)
      {
        swift_once();
      }

      v54 = type metadata accessor for OSLogger();
      sub_1000056A8(v54, qword_1009CE200);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();
    }

    else
    {
      if (qword_10096D118 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for OSLogger();
      sub_1000056A8(v43, qword_1009CE200);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      LogMessage.init(stringLiteral:)();
      Logger.info(_:)();

      v44 = [v0 collectionView];
      if (v44)
      {
        v45 = v44;
        [v44 _scrollToTopIfPossible:0];
      }

      sub_100005744(0, &qword_1009729E0);
      v59 = static OS_dispatch_queue.main.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = v27;
      aBlock[4] = sub_10056EA20;
      aBlock[5] = v46;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C89F0;
      v47 = _Block_copy(aBlock);
      v48 = v27;

      v49 = v66;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      v58 = sub_10056F08C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0);
      sub_100097060(&qword_100976F60, &unk_1009729F0);
      v50 = v68;
      v51 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v52 = v59;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v47);

      (*(v70 + 8))(v50, v51);
      (*(v67 + 8))(v49, v69);
      v28 = v78;
    }

    v55 = v64;
    (*(v28 + 8))(v41, v64);
    (*(v26 + 8))(v33, v18);
    v56 = v76;
    v61(v76, v74, v55);
    (*(v28 + 56))(v56, 0, 1, v55);
    v57 = v63;
    swift_beginAccess();
    sub_1000315F8(v56, v27 + v57, &qword_100979710);
    swift_endAccess();
    v37 = v77;
    v65(v77, v72, v18);
    goto LABEL_8;
  }

  if (qword_10096D118 != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for OSLogger();
  sub_1000056A8(v53, qword_1009CE200);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.info(_:)();

  (*(v28 + 8))(v41, v64);
  return (*(v26 + 8))(v33, v18);
}

void sub_1005666BC(void *a1)
{
  v1 = a1;
  sub_1005655D4();
}

uint64_t sub_100566704()
{
  v1 = v0;
  v2 = type metadata accessor for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_100031660(v1 + v10, v14, &unk_10097F510);
  if (v15)
  {
    sub_10002C0AC(v14, v13);
    sub_10002B894(v14, &unk_10097F510);
    sub_10002A400(v13, v13[3]);
    (*(v7 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.appExitedWhileAppeared(_:), v6);
    dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
    (*(v7 + 8))(v9, v6);
    sub_100007000(v13);
  }

  else
  {
    sub_10002B894(v14, &unk_10097F510);
  }

  dispatch thunk of DiffablePagePresenter.appExitedWhileAppeared()();
  (*(v3 + 104))(v5, enum case for AdvertRotationControllerProvider.AdvertDisplayingViewControllerState.appWillBackground(_:), v2);
  AdvertRotationControllerProvider.advertRotationStateDidChange(to:)();
  return (*(v3 + 8))(v5, v2);
}

void sub_100566994(void *a1)
{
  v1 = a1;
  sub_100566704();
}

uint64_t sub_1005669DC@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController);
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v20[3] = swift_getObjectType();
  v20[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v21[3] = swift_getObjectType();
  v21[0] = v3;
  sub_1000073E8(v20, v18);
  sub_100056164(v18, v17);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v16)
  {
    v15 = v16;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_100034090((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    *&v4[2 * v6 + 4] = v15;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v21, v18);
  sub_100056164(v18, v17);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v16)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v16;
    if (v8 >= v7 >> 1)
    {
      v14 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v16;
      v4 = v14;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  type metadata accessor for TodayCardGridTracker();
  BaseObjectGraph.inject<A>(_:)();
  v10 = v19;
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v11 = type metadata accessor for TodayPageLayoutSectionProvider();
  *(swift_allocObject() + qword_10097D500) = v10;
  sub_10002C0AC(v18, v17);
  sub_10002C0AC(v17, &v16);

  v12 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  sub_100007000(v17);
  result = sub_100007000(v18);
  a1[3] = v11;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v12;
  return result;
}

unint64_t sub_100566D30@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for TodayPageShelfLayoutSpacingProvider;
  result = sub_100558D7C();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100566D64()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for TodayPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  v3 = sub_10056F08C(&qword_10098C3B0, &type metadata accessor for TodayDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10056F08C(&qword_10098C3B8, type metadata accessor for TodayPageShelfSupplementaryProvider);

  return v2;
}

id sub_100566E64()
{
  v1 = v0;
  swift_getObjectType();
  sub_10073A350();
  type metadata accessor for CompoundCollectionElementsObserver();
  if (swift_dynamicCastClass())
  {
    v2 = CompoundCollectionElementsObserver.removingChildren(where:)();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = CompoundCollectionElementsObserver.init(children:)();
  }

  sub_10002849C(&qword_1009717B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1007B1890;
  sub_10002849C(&qword_10098C3A0);
  swift_allocObject();
  swift_retain_n();

  v4 = SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)();
  v5 = sub_100097060(&qword_10098C3A8, &qword_10098C3A0);
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController);
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  TimedMetricsPagePresenter.impressionsCalculator.getter();

  result = [v1 collectionView];
  if (result)
  {
    type metadata accessor for SearchImpressionsCollectionElementsObserver();
    swift_allocObject();
    *(v3 + 48) = SearchImpressionsCollectionElementsObserver.init(componentTypeMappingProvider:impressionsCalculator:advertRotationControllerProvider:objectGraph:collectionView:)();
    *(v3 + 56) = &protocol witness table for ImpressionsCollectionElementsObserver;
    CompoundCollectionElementsObserver.addChildren(_:)(v3);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005670FC(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10098C390);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100729370(a1);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DiffablePagePresenter.UpdatePhase.completed<A>(_:))
  {
    (*(v3 + 96))(v5, v2);
    sub_10056E844();
  }

  else if (v6 == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    AdvertRotationControllerProvider.viewControllerWillBeReloaded()();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

double *sub_100567274()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v80 = *(v2 - 8);
  __chkstk_darwin(v2);
  v79 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v74 - v5;
  v7 = type metadata accessor for PageGrid();
  v78 = *(v7 - 8);
  __chkstk_darwin(v7);
  v81 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100996820);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v12 = type metadata accessor for UIView.LayoutRegion();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TitleHeaderView.Style(0);
  *&v17 = __chkstk_darwin(v16 - 8).n128_u64[0];
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v0 traitCollection];
  v20 = UITraitCollection.isSizeClassRegular.getter();

  if (v20)
  {
    v77 = *&v1[qword_1009CF3E0];
    TodayDiffablePagePresenter.pageLongTitle.getter();
    v21 = Optional<A>.isNotNilAndNotEmpty.getter();

    if (v21)
    {
      v22 = qword_10098BD58;
      v23 = *&v1[qword_10098BD58];
      v24 = 0.0;
      v76 = v13;
      if (v23)
      {
        [v23 sizeToFit];
        v25 = *&v1[v22];
        v26 = 0.0;
        if (v25)
        {
          [v25 frame];
          v24 = v27;
          v26 = v28;
        }
      }

      else
      {
        v26 = 0.0;
      }

      result = [v1 view];
      if (result)
      {
        v30 = result;
        v74 = v24;
        v75 = v7;
        v31 = [result traitCollection];

        sub_1001EF8B4(v31, v82);
        result = [v1 view];
        if (result)
        {
          v32 = result;
          v33 = enum case for UIView.LayoutRegion.AdaptivityAxis.horizontal(_:);
          v34 = type metadata accessor for UIView.LayoutRegion.AdaptivityAxis();
          v35 = *(v34 - 8);
          (*(v35 + 104))(v11, v33, v34);
          (*(v35 + 56))(v11, 0, 1, v34);
          static UIView.LayoutRegion.safeArea(cornerAdaptation:)();
          sub_10002B894(v11, &unk_100996820);
          UIView.edgeInsets(for:)();
          v37 = v36;

          (*(v76 + 8))(v15, v12);
          v38 = v80;
          (*(v80 + 104))(v6, enum case for PageGrid.Direction.vertical(_:), v2);
          (*(v38 + 16))(v79, v6, v2);
          sub_10069F96C(0.0);
          v73 = v37;
          v39 = v81;
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
          (*(v38 + 8))(v6, v2);
          if ((sub_10006230C() & 1) == 0)
          {
            sub_100274060();
          }

          PageGrid.horizontalMargins.getter();
          PageGrid.horizontalMargins.getter();
          v40 = [v1 traitCollection];
          v41 = UITraitCollection.isSizeClassCompact.getter();

          if (v41)
          {
            v42 = TodayDiffablePagePresenter.pageTitle.getter();
          }

          else
          {
            v42 = TodayDiffablePagePresenter.pageLongTitle.getter();
          }

          v80 = v42;
          v44 = v43;
          v45 = [v1 traitCollection];
          v46 = UITraitCollection.isSizeClassCompact.getter();

          if (v46)
          {
            v47 = TodayDiffablePagePresenter.pageTitleDetail.getter();
            v49 = v48;
          }

          else
          {
            v47 = 0;
            v49 = 0;
          }

          v50 = [v1 traitCollection];
          v51 = UITraitCollection.isSizeClassCompact.getter();

          if (v51)
          {
            v52 = TodayDiffablePagePresenter.pageShortTitleDetail.getter();
            v54 = v53;
          }

          else
          {
            v52 = 0;
            v54 = 0;
          }

          PageGrid.containerWidth.getter();
          v56 = v55;
          PageGrid.containerHeight.getter();
          v58 = v57;
          result = [v1 view];
          if (result)
          {
            v59 = result;
            LOBYTE(v73) = 0;
            v60 = v82;
            sub_10056A810(0, 0, 0, v80, v44, 0, v47, v49, v56, v58, v74, v26, v52, v54, 2, v82, v73, v59);
            v62 = v61;

            v63 = objc_opt_self();
            v64 = [v63 fractionalWidthDimension:1.0];
            v65 = [v63 absoluteDimension:v62];
            v66 = [objc_opt_self() sizeWithWidthDimension:v64 heightDimension:v65];

            v67 = v66;
            v68 = String._bridgeToObjectiveC()();
            v69 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v67 elementKind:v68 alignment:1];

            v70 = v69;
            PageGrid.horizontalDirectionalMargins.getter();
            [v70 setContentInsets:?];

            v71 = sub_10056D85C();
            sub_10002849C(&qword_100973210);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1007B0B70;
            *(inited + 32) = v70;
            v83 = v71;
            sub_1003945AC(inited);

            (*(v78 + 8))(v39, v75);
            sub_10056E7E4(v60, type metadata accessor for TitleHeaderView.Style);
            return v83;
          }

          goto LABEL_27;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }
  }

  return sub_10056D85C();
}

double sub_100567B94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (a1 == 0xD000000000000039 && 0x80000001007FB9D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = ObjectType;
    a3[3] = sub_10002849C(&qword_10097A550);
    a3[4] = sub_100097060(&qword_10097A558, &qword_10097A550);
    sub_1000056E0(a3);
    type metadata accessor for TitleHeaderView(0);

    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
  }

  else
  {

    return sub_1005616C4(a1, a2, a3);
  }

  return result;
}

void sub_100567D44(void *a1)
{
  v2 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v46[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if ((sub_10006230C() & 1) == 0)
    {
      v10 = v9;
      sub_100274060();
    }

    static UIEdgeInsets.vertical(top:bottom:)();
    [a1 setLayoutMargins:?];
    *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_allowsAccessibilityLayouts) = 0;
    [a1 setNeedsLayout];
    v11 = *&v9[qword_10098BD58];
    v12 = v11;
    sub_1003F02B0(v11);
    v13 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabelNumberOfLines);
    *v13 = sub_100113508;
    v13[1] = 0;

    v14 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_titleLabel);
    [v14 setNumberOfLines:2];
    v15 = (a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_separatorInset);
    v16 = *&UIEdgeInsetsZero.bottom;
    *v15 = *&UIEdgeInsetsZero.top;
    v15[1] = v16;
    [a1 setNeedsLayout];
    v17 = v9;
    v18 = [v17 traitCollection];

    sub_1001EF8B4(v18, v7);

    sub_10056E77C(v7, v4, type metadata accessor for TitleHeaderView.Style);
    (*((swift_isaMask & *a1) + 0x1C8))(v4);
    v19 = [v17 traitCollection];

    v20 = UITraitCollection.isSizeClassCompact.getter();
    if (v20)
    {
      v21 = v17;

      TodayDiffablePagePresenter.pageTitle.getter();
      v23 = v22;

      if (v23)
      {
        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      [v14 setText:v24];

      v28 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
      if (v28)
      {

        v29 = v28;
        TodayDiffablePagePresenter.pageTitleDetail.getter();
        v31 = v30;

        if (v31)
        {
          v32 = String._bridgeToObjectiveC()();
        }

        else
        {
          v32 = 0;
        }

        [v29 setText:v32];
      }

      v35 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel);
      if (v35)
      {

        v36 = v35;

        TodayDiffablePagePresenter.pageShortTitleDetail.getter();
        v38 = v37;

        if (v38)
        {
          v39 = String._bridgeToObjectiveC()();
        }

        else
        {
          v39 = 0;
        }

        [v36 setText:v39];
      }

      else
      {
      }
    }

    else
    {

      TodayDiffablePagePresenter.pageLongTitle.getter();
      v26 = v25;

      if (v26)
      {
        v27 = String._bridgeToObjectiveC()();
      }

      else
      {
        v27 = 0;
      }

      [v14 setText:v27];

      v33 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_detailLabel);
      if (v33)
      {
        [v33 setText:0];
      }

      v34 = *(a1 + OBJC_IVAR____TtC8AppStore15TitleHeaderView_shortDetailLabel);
      if (v34)
      {
        [v34 setText:0];
      }
    }

    [v14 setAllowsDefaultTighteningForTruncation:1];
    [a1 setNeedsLayout];
    if (sub_1001DFF60() & 1) == 0 || (v40 = [a1 gestureRecognizers]) != 0 && (v41 = v40, sub_100005744(0, &unk_100993110), v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v41, v43 = sub_1005636A8(), v47 = v43, __chkstk_darwin(v43), *&v46[-16] = &v47, v44 = sub_10003D668(sub_10056E704, &v46[-32], v42), v43, , (v44))
    {
      sub_10056E7E4(v7, type metadata accessor for TitleHeaderView.Style);
    }

    else
    {
      v45 = sub_1005636A8();
      [a1 addGestureRecognizer:v45];

      sub_10056E7E4(v7, type metadata accessor for TitleHeaderView.Style);
    }
  }
}

uint64_t sub_10056837C(uint64_t a1)
{
  v37 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v37);
  v3 = &v32 - v2;
  v4 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v4 - 8);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for FlowDestination();
  __chkstk_darwin(v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v35 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v32 - v19;
  sub_10056E77C(a1, v14, type metadata accessor for FlowDestination);
  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_10056E7E4(v14, type metadata accessor for FlowDestination);
LABEL_9:
    v23 = 0;
    return v23 & 1;
  }

  v34 = *(v16 + 32);
  v34(v20, v14, v15);
  DiffablePagePresenter.pageUrl.getter();
  (*(v16 + 16))(v8, v20, v15);
  (*(v16 + 56))(v8, 0, 1, v15);
  v21 = *(v37 + 48);
  sub_100031660(v11, v3, &qword_100982460);
  v37 = v21;
  sub_100031660(v8, &v3[v21], &qword_100982460);
  v22 = *(v16 + 48);
  if (v22(v3, 1, v15) != 1)
  {
    v33 = v20;
    v24 = v36;
    sub_100031660(v3, v36, &qword_100982460);
    v25 = v37;
    if (v22(&v3[v37], 1, v15) != 1)
    {
      v28 = &v3[v25];
      v29 = v35;
      v34(v35, v28, v15);
      sub_10056F08C(&qword_100975040, &type metadata accessor for URL);
      v30 = v24;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v16 + 8);
      v31(v29, v15);
      sub_10002B894(v8, &qword_100982460);
      sub_10002B894(v11, &qword_100982460);
      v31(v33, v15);
      v31(v30, v15);
      sub_10002B894(v3, &qword_100982460);
      return v23 & 1;
    }

    sub_10002B894(v8, &qword_100982460);
    sub_10002B894(v11, &qword_100982460);
    v26 = *(v16 + 8);
    v26(v33, v15);
    v26(v24, v15);
    goto LABEL_8;
  }

  sub_10002B894(v8, &qword_100982460);
  sub_10002B894(v11, &qword_100982460);
  (*(v16 + 8))(v20, v15);
  if (v22(&v3[v37], 1, v15) != 1)
  {
LABEL_8:
    sub_10002B894(v3, &unk_10097CCA0);
    goto LABEL_9;
  }

  sub_10002B894(v3, &qword_100982460);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100568918(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchTime();
  v9 = *(v32 - 8);
  __chkstk_darwin(v32);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  result = TodayDiffablePagePresenter.feedPreviewUrl.getter();
  if (v16)
  {
    v30 = v6;
    if ([a1 state] == 1)
    {
      v17 = [objc_opt_self() generalPasteboard];
      v18 = String._bridgeToObjectiveC()();

      [v17 setString:v18];

      v19 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1];
      [v19 prepare];
      [v19 impactOccurred];
      sub_100005744(0, &qword_1009729E0);
      v28 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v27 = v2;
      v29 = *(v9 + 8);
      v29(v11, v32);
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      aBlock[4] = sub_10056F038;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008C8A40;
      v21 = _Block_copy(aBlock);
      v26 = v19;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10056F08C(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
      v22 = v31;
      v25 = v5;
      sub_10002849C(&unk_1009729F0);
      sub_100097060(&qword_100976F60, &unk_1009729F0);
      v23 = v27;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v24 = v28;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v21);

      (*(v22 + 8))(v4, v23);
      (*(v30 + 8))(v8, v25);
      return (v29)(v14, v32);
    }

    else
    {
    }
  }

  return result;
}

void sub_100568E18(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_100568918(v4);
}

uint64_t sub_100568E80()
{

  sub_100007000(v0 + qword_10098BD60);
  sub_10002B894(v0 + qword_10098BD68, &qword_100979710);
  sub_10002B894(v0 + qword_10098BD70, &qword_100979718);
}

uint64_t sub_100568F50(uint64_t a1)
{

  sub_100007000(a1 + qword_10098BD60);
  sub_10002B894(a1 + qword_10098BD68, &qword_100979710);
  sub_10002B894(a1 + qword_10098BD70, &qword_100979718);
}

uint64_t type metadata accessor for TodayDiffablePageViewController()
{
  result = qword_10098BDC0;
  if (!qword_10098BDC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100569078()
{
  sub_1005691AC(319, &qword_10098BDD0, &type metadata accessor for Date);
  if (v0 <= 0x3F)
  {
    sub_1005691AC(319, &unk_10098BDD8, &type metadata accessor for TimeZone);
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1005691AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100569254(size_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1002B6F64(v3);
  }

  v4 = *(v3 + 16);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1005692FC(v5);
  *a1 = v3;
}

void sub_1005692FC(uint64_t *a1)
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
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 2) = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1005696EC(v8, v9, a1, v4);
      v6[2] = 0.0;

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
    sub_100569428(0, v2, 1, a1);
  }
}

void sub_100569428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = &v31 - v11;
  v14 = __chkstk_darwin(v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1005696EC(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v119 - v12;
  __chkstk_darwin(v13);
  v140 = &v119 - v14;
  v16 = __chkstk_darwin(v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_1002B6D90(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = v20[2 * v115];
        v117 = v20[2 * v115 + 3];
        sub_10056A114(*a3 + v9[9] * *&v116, *a3 + v9[9] * *&v20[2 * v115 + 2], *a3 + v9[9] * *&v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (*&v117 < *&v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1002B6D90(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[2 * v115];
        *v118 = v116;
        v118[1] = v117;
        v142 = v20;
        sub_1002B6D04(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = _swiftEmptyArrayStorage;
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath);
      LODWORD(v133) = dispatch thunk of static Comparable.< infix(_:_:)();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_100034940(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_100034940((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[2 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[2 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[2 * v57 + 4];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[2 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[2 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = v20[2 * v95 + 4];
        v97 = v20[2 * v57 + 5];
        sub_10056A114(*a3 + v9[9] * *&v96, *a3 + v9[9] * *&v20[2 * v57 + 4], *a3 + v9[9] * *&v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (*&v97 < *&v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1002B6D90(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[2 * v95];
        v98[4] = v96;
        v98[5] = v97;
        v142 = v20;
        sub_1002B6D04(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[2 * v55 + 4];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[2 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[2 * v57 + 4];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath);
    v109 = dispatch thunk of static Comparable.< infix(_:_:)();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_10056A114(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = type metadata accessor for IndexPath();
  v8 = *(v51 - 8);
  __chkstk_darwin(v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath);
          LOBYTE(v34) = dispatch thunk of static Comparable.< infix(_:_:)();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        v45(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_10056F08C(&qword_10098C388, &type metadata accessor for IndexPath);
        LOBYTE(v21) = dispatch thunk of static Comparable.< infix(_:_:)();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= v43 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = v43 + a4;
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_10056A708(&v54, &v53, &v52);
}

uint64_t sub_10056A708(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
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

id sub_10056A810(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int *a8, double a9, double a10, double a11, double a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, void *a18)
{
  v338 = a8;
  v292 = a7;
  v332 = a6;
  v333 = a5;
  v327 = a4;
  v328 = a2;
  v301 = a3;
  v329 = a1;
  v324 = a9;
  v325 = a10;
  v344 = a16;
  v20 = type metadata accessor for AspectRatio();
  v299 = *(v20 - 8);
  v300 = v20;
  __chkstk_darwin(v20);
  v298 = v291 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = type metadata accessor for FontSource();
  v295 = *(v297 - 8);
  __chkstk_darwin(v297);
  v294 = v291 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = type metadata accessor for StaticDimension();
  v354 = *(v339 - 8);
  __chkstk_darwin(v339);
  v296 = v291 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for TitleHeaderLayout.AccessoryHorizontalAlignment();
  v319 = *(v321 - 8);
  __chkstk_darwin(v321);
  v320 = v291 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v316 = *(v25 - 8);
  v317 = v25;
  __chkstk_darwin(v25);
  v318 = v291 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v313 = *(v27 - 8);
  v314 = v27;
  __chkstk_darwin(v27);
  v315 = v291 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for TitleHeaderLayout();
  v326 = *(v323 - 8);
  __chkstk_darwin(v323);
  v322 = v291 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for TitleHeaderLayout.Child();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v306 = v291 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v351 = v291 - v34;
  __chkstk_darwin(v35);
  v350 = v291 - v36;
  __chkstk_darwin(v37);
  v342 = v291 - v38;
  v39 = sub_10002849C(&qword_1009794E8);
  __chkstk_darwin(v39 - 8);
  v304 = v291 - v40;
  v41 = type metadata accessor for LabelPlaceholderCompatibility();
  v335 = *(v41 - 8);
  v336 = v41;
  __chkstk_darwin(v41);
  v334 = v291 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for CharacterSet();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v291 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v303 = *(v47 - 1);
  __chkstk_darwin(v47);
  v343 = v291 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v307 = v291 - v50;
  __chkstk_darwin(v51);
  v53 = v291 - v52;
  v54 = sub_10002849C(&unk_100984360);
  v55 = *(v54 - 8);
  v311 = v54;
  v312 = v55;
  __chkstk_darwin(v54);
  v293 = v291 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v347 = v291 - v58;
  __chkstk_darwin(v59);
  v346 = v291 - v60;
  __chkstk_darwin(v61);
  v305 = v291 - v62;
  __chkstk_darwin(v63);
  v349 = v291 - v64;
  __chkstk_darwin(v65);
  v348 = v291 - v66;
  __chkstk_darwin(v67);
  v341 = v291 - v68;
  __chkstk_darwin(v69);
  v302 = v291 - v70;
  *&v72 = __chkstk_darwin(v71).n128_u64[0];
  v74 = v291 - v73;
  v331 = a18;
  v75 = [a18 traitCollection];
  v352 = v30;
  v353 = v31;
  v340 = v74;
  v345 = v47;
  v337 = v75;
  v330 = v43;
  v309 = v46;
  v310 = v44;
  if (!v328)
  {
    v88 = *(v31 + 56);
    v88(v74, 1, 1, v30);
    v89 = v339;
    goto LABEL_23;
  }

  v76 = v328;
  v77 = v344;
  sub_10056E77C(v344, v53, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100005744(0, &qword_1009730E0);
  v75 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v390 = v329;
  *(&v390 + 1) = v76;

  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v79 = v78;
  (*(v44 + 8))(v46, v43);

  v80 = 0;
  if ((v79 & 1) == 0)
  {
    [v75 lineHeight];
    v82 = ceil(v81 * 1.3);
    if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v82 > -9.22337204e18)
    {
      if (v82 >= 9.22337204e18)
      {
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v80 = v82;
      goto LABEL_7;
    }

    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

LABEL_7:
  v291[1] = v80;
  v308 = v53;
  if (!v301)
  {
    goto LABEL_15;
  }

  v291[0] = v75;

  dispatch thunk of Artwork.systemImageName.getter();
  if (v83 && (v84 = [objc_opt_self() configurationWithFont:v291[0]], v85 = String._bridgeToObjectiveC()(), , v86 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v85, v84), v85, v84, v47 = v345, v86))
  {
    [v86 size];
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v87 = LayoutViewPlaceholder.init(representing:)();
  }

  else
  {
    v90 = v47[6];
    v91 = type metadata accessor for FontUseCase();
    v92 = v294;
    (*(*(v91 - 8) + 16))(v294, v77 + v90, v91);
    v93 = v295;
    v94 = v297;
    (*(v295 + 104))(v92, enum case for FontSource.useCase(_:), v297);
    *(&v391 + 1) = v94;
    v392 = &protocol witness table for FontSource;
    v95 = sub_1000056E0(&v390);
    (*(v93 + 16))(v95, v92, v94);

    v96 = v296;
    StaticDimension.init(_:scaledLike:)();
    (*(v93 + 8))(v92, v94);
    StaticDimension.rawValue(in:)();
    Artwork.size.getter();
    v97 = v298;
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();

    (*(v299 + 8))(v97, v300);
    (*(v354 + 8))(v96, v339);
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    v87 = LayoutViewPlaceholder.init(representing:)();
  }

  v75 = v291[0];
  if (v87)
  {
    *(&v391 + 1) = type metadata accessor for LayoutViewPlaceholder();
    v392 = &protocol witness table for LayoutViewPlaceholder;
    v328 = v87;
    *&v390 = v87;
  }

  else
  {
LABEL_15:
    v328 = 0;
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
  }

  v389 = 0;
  v387 = 0u;
  v388 = 0u;
  v386 = 0;
  v384 = 0u;
  v385 = 0u;
  v98 = type metadata accessor for Feature();
  v382 = v98;
  v383 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature);
  v99 = sub_1000056E0(v381);
  (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
  v100 = v75;

  v101 = v100;
  isFeatureEnabled(_:)();
  sub_100007000(v381);
  v102 = v334;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v335 + 8))(v102, v336);
  sub_100031660(&v390, v380, &qword_100975610);
  v103 = v382;
  v104 = v383;
  v105 = sub_10002A400(v381, v382);
  v378 = v103;
  v379 = *(v104 + 8);
  v106 = sub_1000056E0(v377);
  (*(*(v103 - 8) + 16))(v106, v105, v103);
  v107 = v345;
  v108 = v308;
  v109 = *&v308[v345[8]];
  v375 = &type metadata for Float;
  v376 = &protocol witness table for Float;
  v374 = v109;
  v110 = v345[9];
  v111 = v339;
  v372 = v339;
  v373 = &protocol witness table for StaticDimension;
  v112 = sub_1000056E0(v371);
  v113 = *(v354 + 16);
  v113(v112, &v108[v110], v111);
  v114 = v107[10];
  v369 = v111;
  v370 = &protocol witness table for StaticDimension;
  v115 = sub_1000056E0(v368);
  v113(v115, &v108[v114], v111);
  sub_100031660(&v387, &v362, &unk_10097E890);
  v116 = *(&v363 + 1);
  if (*(&v363 + 1))
  {
    v117 = v364;
    v118 = sub_10002A400(&v362, *(&v363 + 1));
    *(&v366 + 1) = v116;
    v367 = *(v117 + 8);
    v119 = sub_1000056E0(&v365);
    (*(*(v116 - 8) + 16))(v119, v118, v116);
    sub_100007000(&v362);
  }

  else
  {
    sub_10002B894(&v362, &unk_10097E890);
    v365 = 0u;
    v366 = 0u;
    v367 = 0;
  }

  v120 = v302;
  sub_100031660(&v384, v359, &unk_10097E890);
  v121 = v360;
  if (v360)
  {
    v122 = v361;
    v123 = sub_10002A400(v359, v360);
    *(&v363 + 1) = v121;
    v364 = *(v122 + 8);
    v124 = sub_1000056E0(&v362);
    (*(*(v121 - 8) + 16))(v124, v123, v121);
    sub_100007000(v359);
  }

  else
  {
    sub_10002B894(v359, &unk_10097E890);
    v362 = 0u;
    v363 = 0u;
    v364 = 0;
  }

  v125 = v345;
  v126 = v308;
  sub_10002C0AC(&v308[v345[12]], v359);
  sub_10002C0AC(v126 + v125[13], v358);
  v357 = &protocol witness table for Double;
  v356 = &type metadata for Double;
  v355 = 0x4020000000000000;
  TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();

  sub_10002B894(&v384, &unk_10097E890);
  v47 = v125;
  sub_10002B894(&v387, &unk_10097E890);
  sub_10056E7E4(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100007000(v381);

  sub_10002B894(&v390, &qword_100975610);
  v30 = v352;
  v88 = *(v353 + 56);
  v88(v120, 0, 1, v352);
  sub_1000476A0(v120, v340, &unk_100984360);
  v75 = v337;
  v89 = v339;
LABEL_23:
  v127 = v333;
  if (!v338)
  {
LABEL_26:
    v88(v341, 1, 1, v30);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    goto LABEL_27;
  }

  v128 = type metadata accessor for TitleHeaderView.Style(0);
  v129 = v304;
  sub_100031660(v344 + *(v128 + 24), v304, &qword_1009794E8);
  if ((*(v303 + 48))(v129, 1, v47) == 1)
  {
    sub_10002B894(v129, &qword_1009794E8);
    goto LABEL_26;
  }

  sub_10022A9A0(v129, v307);
  sub_100005744(0, &qword_1009730E0);
  v133 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  *&v390 = v292;
  *(&v390 + 1) = v338;

  v134 = v309;
  static CharacterSet.excessiveLeading.getter();
  sub_10007FED4();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v136 = v135;
  (*(v310 + 8))(v134, v330);

  v137 = 0;
  if (v136)
  {
LABEL_37:
    v141 = v133;
    if (*(v344 + *(v128 + 36)) == 2)
    {
      v308 = a14;
      v328 = a13;
      v142 = type metadata accessor for Feature();
      v303 = v137;
      v143 = v142;
      *(&v391 + 1) = v142;
      v304 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature);
      v392 = v304;
      v144 = sub_1000056E0(&v390);
      v145 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v146 = *(*(v143 - 8) + 104);
      v329 = v88;
      v146(v144, enum case for Feature.measurement_with_labelplaceholder(_:), v143);
      v147 = v141;

      v148 = v147;
      isFeatureEnabled(_:)();
      sub_100007000(&v390);
      v149 = v334;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v150 = v336;
      v151 = *(v335 + 8);
      v151(v149, v336);
      *(&v388 + 1) = v143;
      v389 = v304;
      v152 = sub_1000056E0(&v387);
      v146(v152, v145, v143);
      v53 = v330;
      v89 = v339;

      v153 = v148;
      isFeatureEnabled(_:)();
      sub_100007000(&v387);
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();

      v151(v149, v150);
      v127 = v333;
      sub_10056E7E4(v307, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v329)(v341, 1, 1, v352);
      v47 = v345;
      v75 = v337;
LABEL_28:
      v338 = type metadata accessor for TitleHeaderView.Style(0);
      v329 = (v344 + v338[5]);
      sub_10056E77C(v329, v343, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100005744(0, &qword_1009730E0);
      v333 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      if (!v127)
      {
        goto LABEL_43;
      }

      v130 = v89;
      v44 = v327;
      *&v384 = v327;
      *(&v384 + 1) = v127;

      v46 = v309;
      static CharacterSet.excessiveLeading.getter();
      sub_10007FED4();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      v132 = v131;
      (*(v310 + 8))(v46, v53);

      if (v132)
      {
LABEL_42:
        v89 = v130;
        if (!v332)
        {
          goto LABEL_50;
        }

LABEL_43:
        v330 = a15;

        dispatch thunk of Artwork.systemImageName.getter();
        if (v156 && (v157 = [objc_opt_self() configurationWithFont:v333], v158 = String._bridgeToObjectiveC()(), , v159 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v158, v157), v158, v47 = v345, v157, v159))
        {
          [v159 size];
          type metadata accessor for LayoutViewPlaceholder();
          swift_allocObject();
          v160 = LayoutViewPlaceholder.init(representing:)();
        }

        else
        {
          v161 = v89;
          v162 = v329;
          v163 = v47[6];
          v164 = type metadata accessor for FontUseCase();
          v165 = &v162[v163];
          v89 = v161;
          v166 = v294;
          (*(*(v164 - 8) + 16))(v294, v165, v164);
          v167 = v295;
          v168 = v297;
          (*(v295 + 104))(v166, enum case for FontSource.useCase(_:), v297);
          *(&v385 + 1) = v168;
          v386 = &protocol witness table for FontSource;
          v169 = sub_1000056E0(&v384);
          (*(v167 + 16))(v169, v166, v168);

          v170 = v296;
          StaticDimension.init(_:scaledLike:)();
          (*(v167 + 8))(v166, v168);
          StaticDimension.rawValue(in:)();
          Artwork.size.getter();
          v171 = v298;
          AspectRatio.init(_:_:)();
          AspectRatio.maxSize(fitting:)();

          (*(v299 + 8))(v171, v300);
          (*(v354 + 8))(v170, v89);
          type metadata accessor for LayoutViewPlaceholder();
          swift_allocObject();
          v160 = LayoutViewPlaceholder.init(representing:)();
        }

        if (v160)
        {
          v172 = type metadata accessor for LayoutViewPlaceholder();
          v386 = &protocol witness table for LayoutViewPlaceholder;
          *(&v385 + 1) = v172;
          v332 = v160;
          *&v384 = v160;
        }

        else
        {
LABEL_50:
          v332 = 0;
          v386 = 0;
          v384 = 0u;
          v385 = 0u;
        }

        v173 = type metadata accessor for Feature();
        v382 = v173;
        v383 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature);
        v174 = sub_1000056E0(v381);
        (*(*(v173 - 8) + 104))(v174, enum case for Feature.measurement_with_labelplaceholder(_:), v173);

        v175 = v333;
        isFeatureEnabled(_:)();
        sub_100007000(v381);
        v176 = v334;
        v333 = v175;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        LabelPlaceholderCompatibility.layoutTextView.getter();
        (*(v335 + 8))(v176, v336);
        sub_100031660(&v384, v380, &qword_100975610);
        v177 = v382;
        v178 = v383;
        v179 = sub_10002A400(v381, v382);
        v378 = v177;
        v379 = *(v178 + 8);
        v180 = sub_1000056E0(v377);
        (*(*(v177 - 8) + 16))(v180, v179, v177);
        v181 = v345;
        v182 = v343;
        v183 = *(v343 + v345[8]);
        v375 = &type metadata for Float;
        v376 = &protocol witness table for Float;
        v374 = v183;
        v184 = v345[9];
        v372 = v89;
        v373 = &protocol witness table for StaticDimension;
        v185 = sub_1000056E0(v371);
        v186 = *(v354 + 16);
        v186(v185, v182 + v184, v89);
        v187 = v181[10];
        v369 = v89;
        v370 = &protocol witness table for StaticDimension;
        v188 = sub_1000056E0(v368);
        v186(v188, v182 + v187, v89);
        sub_100031660(&v390, &v362, &unk_10097E890);
        v189 = *(&v363 + 1);
        if (*(&v363 + 1))
        {
          v190 = v364;
          v191 = sub_10002A400(&v362, *(&v363 + 1));
          *(&v366 + 1) = v189;
          v367 = *(v190 + 8);
          v192 = sub_1000056E0(&v365);
          (*(*(v189 - 8) + 16))(v192, v191, v189);
          sub_100007000(&v362);
        }

        else
        {
          sub_10002B894(&v362, &unk_10097E890);
          v365 = 0u;
          v366 = 0u;
          v367 = 0;
        }

        v193 = v346;
        v194 = v344;
        sub_100031660(&v387, v359, &unk_10097E890);
        v195 = v360;
        if (v360)
        {
          v196 = v361;
          v197 = sub_10002A400(v359, v360);
          *(&v363 + 1) = v195;
          v364 = *(v196 + 8);
          v198 = sub_1000056E0(&v362);
          (*(*(v195 - 8) + 16))(v198, v197, v195);
          sub_100007000(v359);
        }

        else
        {
          sub_10002B894(v359, &unk_10097E890);
          v362 = 0u;
          v363 = 0u;
          v364 = 0;
        }

        v199 = v347;
        v200 = v345;
        v201 = v343;
        sub_10002C0AC(v343 + v345[12], v359);
        sub_10002C0AC(v201 + v200[13], v358);
        v357 = &protocol witness table for Double;
        v356 = &type metadata for Double;
        v355 = 0x4020000000000000;
        TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
        sub_100007000(v381);
        sub_10002B894(&v384, &qword_100975610);
        v202 = *(v194 + v338[9]);
        sub_10002849C(&qword_1009812E8);
        v354 = *(v312 + 72);
        v203 = (*(v312 + 80) + 32) & ~*(v312 + 80);
        if (v202)
        {
          if (v202 != 1)
          {
            v232 = v354;
            v339 = swift_allocObject();
            v233 = v339 + v203;
            sub_100031660(v340, v339 + v203, &unk_100984360);
            v234 = v352;
            v235 = v353;
            (*(v353 + 16))(v233 + v232, v342, v352);
            (*(v235 + 56))(v233 + v232, 0, 1, v234);
            v236 = v305;
            sub_100031660(v233, v305, &unk_100984360);
            v237 = v293;
            sub_1000476A0(v236, v293, &unk_100984360);
            v238 = *(v235 + 48);
            v239 = (v235 + 32);
            v240 = v238(v237, 1, v234);
            v351 = (v235 + 32);
            if (v240 == 1)
            {
              sub_10002B894(v237, &unk_100984360);
              v241 = _swiftEmptyArrayStorage;
            }

            else
            {
              v242 = *v239;
              (*v239)(v306, v237, v234);
              v241 = _swiftEmptyArrayStorage;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v241 = sub_100033A68(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
              }

              v244 = *(v241 + 2);
              v243 = *(v241 + 3);
              if (v244 >= v243 >> 1)
              {
                v241 = sub_100033A68(v243 > 1, v244 + 1, 1, v241);
              }

              *(v241 + 2) = v244 + 1;
              v245 = v241 + ((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v244;
              v234 = v352;
              v242(v245, v306, v352);
              v237 = v293;
            }

            v246 = v305;
            sub_100031660(v233 + v354, v305, &unk_100984360);
            sub_1000476A0(v246, v237, &unk_100984360);
            if (v238(v237, 1, v234) == 1)
            {
              sub_10002B894(v237, &unk_100984360);
              v231 = v344;
              v75 = v340;
            }

            else
            {
              v247 = v234;
              v248 = *v351;
              (*v351)(v306, v237, v247);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v231 = v344;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v241 = sub_100033A68(0, *(v241 + 2) + 1, 1, v241);
              }

              v75 = v340;
              v251 = *(v241 + 2);
              v250 = *(v241 + 3);
              if (v251 >= v250 >> 1)
              {
                v241 = sub_100033A68(v250 > 1, v251 + 1, 1, v241);
              }

              *(v241 + 2) = v251 + 1;
              v248(v241 + ((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v251, v306, v352);
            }

            swift_setDeallocating();
            swift_arrayDestroy();
LABEL_94:
            swift_deallocClassInstance();
            v53 = v322;
            if (a11 == 0.0 && a12 == 0.0)
            {
              v252 = 0;
              v253 = 0;
              v254 = 0;
              *&v385 = 0;
              *(&v384 + 1) = 0;
            }

            else
            {
              v253 = type metadata accessor for LayoutViewPlaceholder();
              swift_allocObject();
              v252 = LayoutViewPlaceholder.init(representing:)();
              v254 = &protocol witness table for LayoutViewPlaceholder;
            }

            *&v384 = v252;
            *(&v385 + 1) = v253;
            v386 = v254;
            sub_100031660(&v384, v381, &qword_100975610);
            v255 = v338;
            v256 = *(v231 + v338[14]);
            v380[3] = &type metadata for CGFloat;
            v380[4] = &protocol witness table for CGFloat;
            v380[0] = v256;
            (*(v313 + 16))(v315, v231 + v338[10], v314);
            (*(v316 + 16))(v318, v231 + v255[11], v317);
            (*(v319 + 104))(v320, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v321);
            TitleHeaderLayout.init(accessoryView:accessoryMargin:accessoryVerticalAlignment:accessoryHorizontalAlignment:children:childrenHorizontalAlignment:allowsAccessibilityLayouts:)();
            CGSize.subtracting(insets:)();
            sub_10056F08C(&unk_1009812F0, &type metadata accessor for TitleHeaderLayout);
            v44 = v323;
            dispatch thunk of Measurable.measurements(fitting:in:)();
            v381[0] = v257;
            v381[1] = v258;
            CGSize.add(outsets:)();
            if (JUScreenClassGetMain() != 1)
            {

              (*(v326 + 8))(v53, v44);
              (*(v353 + 8))(v342, v352);
              sub_10056E7E4(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10002B894(&v387, &unk_10097E890);
              sub_10002B894(&v390, &unk_10097E890);
              sub_10002B894(v341, &unk_100984360);
              sub_10002B894(v75, &unk_100984360);
              return sub_10002B894(&v384, &qword_100975610);
            }

            v259 = v352;
            v47 = v353;
            v46 = v337;
            if (qword_10096E760 != -1)
            {
              swift_once();
            }

            v260 = sub_1000056A8(v345, qword_1009D2688);
            if (sub_1003FA6EC(v329, v260))
            {

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v259);
              sub_10056E7E4(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10002B894(&v387, &unk_10097E890);
              sub_10002B894(&v390, &unk_10097E890);
              sub_10002B894(v341, &unk_100984360);
              sub_10002B894(v75, &unk_100984360);
              return sub_10002B894(&v384, &qword_100975610);
            }

            if (qword_10096E768 == -1)
            {
LABEL_105:
              v261 = sub_1000056A8(v345, qword_1009D26A0);
              sub_1003FA6EC(v329, v261);

              (*(v326 + 8))(v53, v44);
              (*(v47 + 1))(v342, v352);
              sub_10056E7E4(v343, type metadata accessor for TitleHeaderView.TextConfiguration);
              sub_10002B894(&v387, &unk_10097E890);
              sub_10002B894(&v390, &unk_10097E890);
              sub_10002B894(v341, &unk_100984360);
              sub_10002B894(v75, &unk_100984360);
              return sub_10002B894(&v384, &qword_100975610);
            }

LABEL_120:
            swift_once();
            goto LABEL_105;
          }

          v204 = v354;
          v339 = swift_allocObject();
          v205 = v339 + v203;
          sub_100031660(v340, v339 + v203, &unk_100984360);
          v207 = v352;
          v206 = v353;
          (*(v353 + 16))(v205 + v204, v342, v352);
          v208 = *(v206 + 56);
          v206 += 56;
          v208(v205 + v204, 0, 1, v207);
          sub_100031660(v341, v205 + 2 * v204, &unk_100984360);
          v209 = (v206 - 8);
          v350 = (v206 - 24);
          v210 = v207;
          v211 = _swiftEmptyArrayStorage;
          v212 = 3;
          v348 = v205;
          do
          {
            v213 = v349;
            sub_100031660(v205, v349, &unk_100984360);
            sub_1000476A0(v213, v199, &unk_100984360);
            if ((*v209)(v199, 1, v210) == 1)
            {
              sub_10002B894(v199, &unk_100984360);
            }

            else
            {
              v214 = *v350;
              (*v350)(v351, v199, v210);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v211 = sub_100033A68(0, *(v211 + 2) + 1, 1, v211);
              }

              v216 = *(v211 + 2);
              v215 = *(v211 + 3);
              if (v216 >= v215 >> 1)
              {
                v211 = sub_100033A68(v215 > 1, v216 + 1, 1, v211);
              }

              *(v211 + 2) = v216 + 1;
              v210 = v352;
              v214(v211 + ((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v216, v351, v352);
              v199 = v347;
            }

            v205 += v354;
            --v212;
          }

          while (v212);
        }

        else
        {
          v217 = v354;
          v218 = 2 * v354;
          v339 = swift_allocObject();
          v219 = v339 + v203;
          sub_100031660(v340, v339 + v203, &unk_100984360);
          sub_100031660(v341, v219 + v217, &unk_100984360);
          v221 = v352;
          v220 = v353;
          (*(v353 + 16))(v219 + v218, v342, v352);
          v222 = *(v220 + 56);
          v220 += 56;
          v222(v219 + v218, 0, 1, v221);
          v223 = (v220 - 8);
          v351 = (v220 - 24);
          v224 = v221;
          v225 = _swiftEmptyArrayStorage;
          v226 = 3;
          v349 = v219;
          do
          {
            v227 = v348;
            sub_100031660(v219, v348, &unk_100984360);
            sub_1000476A0(v227, v193, &unk_100984360);
            if ((*v223)(v193, 1, v224) == 1)
            {
              sub_10002B894(v193, &unk_100984360);
            }

            else
            {
              v228 = *v351;
              (*v351)(v350, v193, v224);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v225 = sub_100033A68(0, *(v225 + 2) + 1, 1, v225);
              }

              v230 = *(v225 + 2);
              v229 = *(v225 + 3);
              if (v230 >= v229 >> 1)
              {
                v225 = sub_100033A68(v229 > 1, v230 + 1, 1, v225);
              }

              *(v225 + 2) = v230 + 1;
              v224 = v352;
              v228(v225 + ((*(v353 + 80) + 32) & ~*(v353 + 80)) + *(v353 + 72) * v230, v350, v352);
              v193 = v346;
            }

            v219 += v354;
            --v226;
          }

          while (v226);
        }

        swift_setDeallocating();
        swift_arrayDestroy();
        v231 = v344;
        v75 = v340;
        goto LABEL_94;
      }

      [v333 lineHeight];
      v155 = ceil(v154 * 1.3);
      if ((*&v155 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v155 > -9.22337204e18)
        {
          if (v155 < 9.22337204e18)
          {
            goto LABEL_42;
          }

LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

      goto LABEL_116;
    }

    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v389 = 0;
    v387 = 0u;
    v388 = 0u;
    v386 = 0;
    v384 = 0u;
    v385 = 0u;
    v262 = type metadata accessor for Feature();
    v382 = v262;
    v383 = sub_10056F08C(&qword_100972E50, &type metadata accessor for Feature);
    v263 = sub_1000056E0(v381);
    (*(*(v262 - 8) + 104))(v263, enum case for Feature.measurement_with_labelplaceholder(_:), v262);

    v264 = v133;
    isFeatureEnabled(_:)();
    sub_100007000(v381);
    v265 = v334;
    v338 = v264;
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    (*(v335 + 8))(v265, v336);
    sub_100031660(&v390, v380, &qword_100975610);
    v266 = v382;
    v267 = v383;
    v268 = sub_10002A400(v381, v382);
    v378 = v266;
    v379 = *(v267 + 8);
    v269 = sub_1000056E0(v377);
    (*(*(v266 - 8) + 16))(v269, v268, v266);
    v270 = v345;
    v271 = v307;
    v272 = *(v307 + v345[8]);
    v375 = &type metadata for Float;
    v376 = &protocol witness table for Float;
    v374 = v272;
    v273 = v345[9];
    v372 = v89;
    v373 = &protocol witness table for StaticDimension;
    v274 = sub_1000056E0(v371);
    v275 = v89;
    v276 = *(v354 + 16);
    v276(v274, v271 + v273, v275);
    v277 = v270[10];
    v369 = v275;
    v370 = &protocol witness table for StaticDimension;
    v278 = sub_1000056E0(v368);
    v276(v278, v271 + v277, v275);
    sub_100031660(&v387, &v362, &unk_10097E890);
    v279 = *(&v363 + 1);
    if (*(&v363 + 1))
    {
      v280 = v364;
      v281 = sub_10002A400(&v362, *(&v363 + 1));
      *(&v366 + 1) = v279;
      v367 = *(v280 + 8);
      v282 = sub_1000056E0(&v365);
      (*(*(v279 - 8) + 16))(v282, v281, v279);
      sub_100007000(&v362);
    }

    else
    {
      sub_10002B894(&v362, &unk_10097E890);
      v365 = 0u;
      v366 = 0u;
      v367 = 0;
    }

    v283 = v353;
    sub_100031660(&v384, v359, &unk_10097E890);
    v284 = v360;
    if (v360)
    {
      v285 = v361;
      v286 = sub_10002A400(v359, v360);
      *(&v363 + 1) = v284;
      v364 = *(v285 + 8);
      v287 = sub_1000056E0(&v362);
      (*(*(v284 - 8) + 16))(v287, v286, v284);
      sub_100007000(v359);
    }

    else
    {
      sub_10002B894(v359, &unk_10097E890);
      v362 = 0u;
      v363 = 0u;
      v364 = 0;
    }

    v288 = v345;
    v289 = v307;
    sub_10002C0AC(v307 + v345[12], v359);
    sub_10002C0AC(v289 + v288[13], v358);
    v357 = &protocol witness table for Double;
    v356 = &type metadata for Double;
    v355 = 0x4020000000000000;
    v290 = v341;
    TitleHeaderLayout.Child.init(decorationView:contentView:decorationViewMargin:firstLineSpace:bottomSpace:trailingView:shortTrailingView:trailingViewMargin:trailingFirstLineSpace:trailingBottomSpace:)();
    sub_10002B894(&v384, &unk_10097E890);
    sub_10002B894(&v387, &unk_10097E890);
    sub_10002B894(&v390, &qword_100975610);
    sub_10056E7E4(v289, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100007000(v381);

    v47 = v288;
    (*(v283 + 56))(v290, 0, 1, v352);
    v392 = 0;
    v390 = 0u;
    v391 = 0u;
    v387 = 0u;
    v388 = 0u;
    v389 = 0;
    v75 = v337;
    v89 = v339;
    v127 = v333;
LABEL_27:
    v53 = v330;
    goto LABEL_28;
  }

  result = [v133 lineHeight];
  v140 = ceil(v139 * 1.3);
  if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_122;
  }

  if (v140 <= -9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  if (v140 < 9.22337204e18)
  {
    v137 = v140;
    goto LABEL_37;
  }

LABEL_123:
  __break(1u);
  return result;
}

double *sub_10056D85C()
{
  v1 = v0;
  v102 = type metadata accessor for ShelfBackground();
  v100 = *(v102 - 8);
  __chkstk_darwin(v102);
  v95 = (&v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v92 = (&v88 - v4);
  v5 = sub_10002849C(&unk_1009731F0);
  v98 = *(v5 - 8);
  v99 = v5;
  __chkstk_darwin(v5);
  v94 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v91 = &v88 - v8;
  v9 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v9 - 8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v96 = &v88 - v13;
  v14 = type metadata accessor for ShelfLayoutContext();
  v103 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v93 = &v88 - v18;
  v19 = sub_10002849C(&qword_100975028);
  v104 = *(v19 - 8);
  __chkstk_darwin(v19);
  v101 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v88 - v22;
  v24 = type metadata accessor for PaginatedPagePresenterState();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = _swiftEmptyArrayStorage;
  dispatch thunk of DiffablePagePresenter.paginationState.getter();
  v28 = (*(v25 + 88))(v27, v24);
  v97 = v16;
  if (v28 == enum case for PaginatedPagePresenterState.preparingNextPage(_:))
  {
    v90 = v14;
    (*(v25 + 96))(v27, v24);
    sub_100007000(v27);
    v29 = [v0 traitCollection];
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for StaticDimension();
    sub_1000056A8(v30, qword_1009D2460);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1007B0B70;
    *(v31 + 32) = v29;
    v32 = v29;
    v33 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of AnyDimension.rawValue(in:)();
    v35 = v34;

    v36 = objc_opt_self();
    v37 = [v36 fractionalWidthDimension:1.0];
    v38 = [v36 absoluteDimension:v35];
    v39 = [objc_opt_self() sizeWithWidthDimension:v37 heightDimension:v38];

    type metadata accessor for InfiniteScrollFooterView();
    v40 = v39;
    static UICollectionReusableView.elementKind.getter();
    v41 = String._bridgeToObjectiveC()();

    v42 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:v41 alignment:5];

    v43 = v42;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v44 = v105;
    v14 = v90;
  }

  else
  {
    (*(v25 + 8))(v27, v24);
    v44 = _swiftEmptyArrayStorage;
  }

  v45 = qword_10097F2F8;
  swift_beginAccess();
  v46 = *&v1[v45];
  if (v46)
  {
    v47 = v46;
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v48 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
    v49 = *(v104 + 8);
    v104 += 8;
    v49(v23, v19);
    if (v48 > 0)
    {
      sub_10002849C(&qword_10097AB10);
      sub_100097060(&qword_10097AB18, &qword_10097AB10);
      ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
      v50 = v103;
      if ((*(v103 + 48))(v11, 1, v14) != 1)
      {
        v88 = v44;
        v89 = v49;
        v90 = v19;
        v58 = v97;
        (*(v50 + 32))(v97, v11, v14);
        v59 = v94;
        ShelfLayoutContext.shelf.getter();
        swift_getKeyPath();
        v60 = v14;
        v61 = v95;
        v62 = v99;
        ReadOnlyLens.subscript.getter();

        (*(v98 + 8))(v59, v62);
        v63 = v100;
        v51 = v102;
        if ((*(v100 + 88))(v61, v102) == enum case for ShelfBackground.color(_:))
        {
          (*(v63 + 96))(v61, v51);

          v64 = *(sub_10002849C(&qword_100972A40) + 48);
          v65 = type metadata accessor for ShelfBackgroundStyle();
          (*(*(v65 - 8) + 8))(v61 + v64, v65);
          v66 = objc_opt_self();
          v67 = [v66 fractionalWidthDimension:1.0];
          v68 = [v66 absoluteDimension:2000.0];
          v69 = [objc_opt_self() sizeWithWidthDimension:v67 heightDimension:v68];

          v70 = String._bridgeToObjectiveC()();
          v71 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v69 elementKind:v70 alignment:1 absoluteOffset:{0.0, -2000.0}];

          [v71 setExtendsBoundary:0];
          v72 = v71;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v14 = v60;
          (*(v103 + 8))(v97, v60);
          v44 = v105;
          v19 = v90;
          v49 = v89;
        }

        else
        {
          (*(v50 + 8))(v58, v60);
          (*(v63 + 8))(v61, v51);
          v14 = v60;
          v19 = v90;
          v49 = v89;
          v44 = v88;
        }

        goto LABEL_13;
      }

      sub_10002B894(v11, &qword_10097F480);
    }

    v51 = v102;
LABEL_13:
    v52 = *&v1[v45];
    if (v52)
    {
      v53 = v52;
      v54 = v101;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v55 = NSDiffableDataSourceSnapshot.numberOfSections.getter();
      v49(v54, v19);
      if (v55 > 0)
      {
        sub_10002849C(&qword_10097AB10);
        v56 = v103;
        sub_100097060(&qword_10097AB18, &qword_10097AB10);
        v57 = v96;
        ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
        if ((*(v56 + 48))(v57, 1, v14) == 1)
        {
          sub_10002B894(v57, &qword_10097F480);
        }

        else
        {
          v73 = v93;
          (*(v56 + 32))(v93, v57, v14);
          v74 = v91;
          ShelfLayoutContext.shelf.getter();
          swift_getKeyPath();
          v75 = v92;
          v76 = v99;
          ReadOnlyLens.subscript.getter();

          (*(v98 + 8))(v74, v76);
          v77 = v100;
          if ((*(v100 + 88))(v75, v51) == enum case for ShelfBackground.color(_:))
          {
            (*(v77 + 96))(v75, v51);

            v78 = *(sub_10002849C(&qword_100972A40) + 48);
            v79 = type metadata accessor for ShelfBackgroundStyle();
            (*(*(v79 - 8) + 8))(v75 + v78, v79);
            v80 = objc_opt_self();
            v81 = [v80 fractionalWidthDimension:1.0];
            v82 = [v80 absoluteDimension:2000.0];
            v83 = [objc_opt_self() sizeWithWidthDimension:v81 heightDimension:v82];

            v84 = String._bridgeToObjectiveC()();
            v85 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v83 elementKind:v84 alignment:5 absoluteOffset:{0.0, 2000.0}];

            [v85 setExtendsBoundary:0];
            v86 = v85;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            (*(v103 + 8))(v73, v14);
            return v105;
          }

          else
          {
            (*(v56 + 8))(v73, v14);
            (*(v77 + 8))(v75, v51);
          }
        }
      }
    }
  }

  return v44;
}

uint64_t sub_10056E77C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10056E7E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_10056E844()
{
  v1 = v0;
  swift_getObjectType();
  [v0 setTitle:0];
  TodayDiffablePagePresenter.tabTitle.getter();
  if (v2)
  {
    result = [v0 tabBarItem];
    if (!result)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = String._bridgeToObjectiveC()();

    [v4 setTitle:v5];
  }

  v6 = [v0 navigationItem];
  TodayDiffablePagePresenter.pageTitle.getter();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v6 setTitle:v8];

  v9 = [v1 navigationItem];
  sub_10073D660();

  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  [result bounds];

  sub_10056F08C(&qword_10098C398, type metadata accessor for TodayDiffablePageViewController);

  return ShelfBasedCollectionViewController.updateGlobalSupplementaries(fitting:)();
}

BOOL sub_10056EA58(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v67 = a1;
  v2 = type metadata accessor for DateComponents();
  v70 = *(v2 - 8);
  v71 = v2;
  __chkstk_darwin(v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v66 = &v54 - v5;
  v6 = type metadata accessor for Calendar.Identifier();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Calendar();
  v68 = *(v10 - 8);
  v69 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for Calendar.Identifier.gregorian(_:), v6, v11);
  Calendar.init(identifier:)();
  (*(v7 + 8))(v9, v6);
  v14 = sub_10002849C(&qword_10098C3C0);
  v15 = type metadata accessor for Calendar.Component();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v61 = 3 * v17;
  v62 = v14;
  v19 = swift_allocObject();
  v59 = xmmword_1007B1E00;
  *(v19 + 16) = xmmword_1007B1E00;
  v20 = *(v16 + 104);
  v60 = enum case for Calendar.Component.year(_:);
  v20(v19 + v18);
  v58 = enum case for Calendar.Component.month(_:);
  v20(v19 + v18 + v17);
  v63 = 2 * v17;
  v57 = enum case for Calendar.Component.day(_:);
  v20(v19 + v18 + 2 * v17);
  sub_100082EBC(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v21 = v66;
  Calendar.dateComponents(_:from:)();
  v22 = v21;

  v23 = DateComponents.year.getter();
  if (v24 & 1) != 0 || (v25 = v23, v67 = DateComponents.month.getter(), (v26) || (v27 = DateComponents.day.getter(), (v28))
  {
    (*(v70 + 8))(v22, v71);
    (*(v68 + 8))(v13, v69);
    return 0;
  }

  v55 = v27;
  v56 = v25;
  v30 = swift_allocObject();
  v62 = v13;
  v31 = v30;
  *(v30 + 16) = v59;
  v32 = v30 + v18;
  (v20)(v30 + v18, v60, v15);
  (v20)(v32 + v17, v58, v15);
  (v20)(v32 + v63, v57, v15);
  sub_100082EBC(v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  v33 = v62;
  swift_deallocClassInstance();
  v34 = v65;
  Calendar.dateComponents(_:from:)();

  v35 = DateComponents.year.getter();
  if (v36)
  {
    v37 = v71;
    v38 = v33;
    v39 = *(v70 + 8);
    v39(v34, v71);
    v39(v22, v37);
    (*(v68 + 8))(v38, v69);
    return 0;
  }

  v40 = v35;
  v41 = DateComponents.month.getter();
  if (v42)
  {
    v43 = v71;
    v44 = *(v70 + 8);
    v44(v34, v71);
    v44(v22, v43);
    (*(v68 + 8))(v62, v69);
    return 0;
  }

  v45 = v41;
  v46 = DateComponents.day.getter();
  v48 = v47;
  v49 = *(v70 + 8);
  v50 = v34;
  v51 = v71;
  v49(v50, v71);
  v49(v22, v51);
  (*(v68 + 8))(v62, v69);
  if (v48)
  {
    return 0;
  }

  return v56 < v40 || v67 < v45 || v55 < v46;
}

id sub_10056F038()
{
  v1 = *(v0 + 16);
  [v1 prepare];

  return [v1 impactOccurred];
}

uint64_t sub_10056F08C(unint64_t *a1, void (*a2)(uint64_t))
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

void AppPromotionDetailPageContentLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.detailLabelTopSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 280);

  return sub_100005A38(a1, v1 + 280);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelTopSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 400);

  return sub_100005A38(a1, v1 + 400);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.inlineLearnMoreLabelBottomSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 440);

  return sub_100005A38(a1, v1 + 440);
}

uint64_t AppPromotionDetailPageContentLayout.Metrics.separatorViewBottomSpace.setter(__int128 *a1)
{
  sub_100007000(v1 + 480);

  return sub_100005A38(a1, v1 + 480);
}

uint64_t sub_10056F3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097B860);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 AppPromotionDetailPageContentLayout.init(metrics:primaryContentContainer:secondaryContentContainer:availabilityLabelView:kindLabel:titleLabel:subtitleView:learnMoreButton:detailLabel:inlineLearnMoreLabel:separatorView:lockupView:showInlineLearnMore:includeSubtitle:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char a15)
{
  *(a9 + 848) = 0u;
  *(a9 + 864) = 0u;
  *(a9 + 816) = 0u;
  *(a9 + 832) = 0u;
  *(a9 + 800) = 0u;
  memcpy(a9, __src, 0x208uLL);
  sub_100005A38(a2, a9 + 520);
  sub_100005A38(a3, a9 + 560);
  sub_100005A38(a4, a9 + 600);
  sub_100005A38(a5, a9 + 640);
  sub_100005A38(a6, a9 + 680);
  sub_100005A38(a7, a9 + 720);
  sub_10056F3C4(a8, a9 + 840);
  sub_100005A38(a10, a9 + 760);
  sub_10056F3C4(a11, a9 + 800);
  v22 = *(a12 + 16);
  *(a9 + 880) = *a12;
  *(a9 + 896) = v22;
  *(a9 + 912) = *(a12 + 32);
  result = *a13;
  v24 = *(a13 + 16);
  *(a9 + 920) = *a13;
  *(a9 + 936) = v24;
  *(a9 + 952) = *(a13 + 32);
  *(a9 + 960) = a14;
  *(a9 + 961) = a15;
  return result;
}

CGFloat AppPromotionDetailPageContentLayout.measure(toFit:with:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = v3;
  v7 = a1;
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v8)
    {
      sub_10057164C(v7, *(v4 + 960), v11);
      sub_10002A400(v11, v12);
      dispatch thunk of Placeable.measure(toFit:with:)();
      sub_100007000(v11);
      return a2;
    }
  }

  else
  {
  }

  if (UITraitCollection.isSizeClassCompact.getter())
  {
    sub_10056F770(v7, v11, 0.0, 0.0, a2, a3);
  }

  else
  {
    sub_100570178(v7, v11, 0.0, 0.0, a2, a3);
  }

  sub_10002A400(v11, v12);
  dispatch thunk of Placeable.measure(toFit:with:)();
  a2 = v9;
  sub_100007000(v11);
  return a2;
}

uint64_t sub_10056F770@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v90 = a2;
  v91 = type metadata accessor for DisjointStack();
  v87 = *(v91 - 8);
  __chkstk_darwin(v91);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v76 - v15;
  __chkstk_darwin(v16);
  v89 = &v76 - v17;
  v94 = type metadata accessor for Margins();
  v88 = *(v94 - 8);
  __chkstk_darwin(v94);
  v93 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for VerticalStack();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v76 - v24;
  __chkstk_darwin(v26);
  v28 = &v76 - v27;
  __chkstk_darwin(v29);
  v80 = &v76 - v30;
  __chkstk_darwin(v31);
  v81 = &v76 - v32;
  __chkstk_darwin(v33);
  v83 = &v76 - v34;
  __chkstk_darwin(v35);
  v84 = &v76 - v36;
  __chkstk_darwin(v37);
  v95 = &v76 - v38;
  VerticalStack.init(with:)();
  sub_100572FE4(v7, v101);
  v39 = swift_allocObject();
  memcpy((v39 + 16), v101, 0x3C2uLL);
  *(v39 + 984) = a1;
  v40 = a1;
  VerticalStack.adding(_:with:)();
  v41 = v19;

  v43 = v20 + 8;
  v42 = *(v20 + 8);
  v42(v22, v41);
  sub_10002C0AC(v7 + 680, v101);
  sub_1000CB084(v101, &v96);
  v82 = v20;
  if (v97)
  {
    sub_100005A38(&v96, &v98);
    VerticalStack.adding(_:with:)();
    sub_100007000(&v98);
    sub_1000CC370(v101);
    v42(v25, v41);
  }

  else
  {
    sub_1000CC370(v101);
    sub_1000CC370(&v96);
    (*(v20 + 32))(v28, v25, v41);
  }

  sub_100572FE4(v7, v101);
  v44 = swift_allocObject();
  memcpy((v44 + 16), v101, 0x3C2uLL);
  *(v44 + 984) = v40;
  v45 = v40;
  v46 = v80;
  VerticalStack.adding(_:with:)();

  v42(v28, v41);
  sub_100572FE4(v7, v101);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v101, 0x3C2uLL);
  *(v47 + 984) = v45;
  v48 = v45;
  v49 = v81;
  VerticalStack.adding(_:with:)();

  v42(v46, v41);
  sub_100572FE4(v7, v101);
  v50 = swift_allocObject();
  memcpy((v50 + 16), v101, 0x3C2uLL);
  *(v50 + 984) = v48;
  sub_1000CB084(v7 + 840, &v96);
  v51 = v42;
  v79 = v48;
  if (v97)
  {
    sub_100005A38(&v96, &v98);
    v52 = v48;
    v53 = v83;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v98);
    v42(v49, v41);
    v54 = v82;
  }

  else
  {
    v55 = v48;

    sub_1000CC370(&v96);
    v54 = v82;
    v53 = v83;
    (*(v82 + 32))(v83, v49, v41);
  }

  sub_1000CB084(v7 + 880, &v98);
  v56 = v84;
  if (v99)
  {
    sub_100005A38(&v98, v101);
    VerticalStack.adding(_:with:)();
    sub_100007000(v101);
    v51(v53, v41);
  }

  else
  {
    sub_1000CC370(&v98);
    (*(v54 + 32))(v56, v53, v41);
  }

  v57 = v95;
  sub_1000CB084(v7 + 920, &v98);
  v77 = v51;
  v78 = v43;
  v92 = v41;
  if (v99)
  {
    sub_100005A38(&v98, v101);
    VerticalStack.adding(_:with:)();
    sub_100007000(v101);
    v51(v56, v41);
  }

  else
  {
    sub_1000CC370(&v98);
    (*(v54 + 32))(v57, v56, v41);
  }

  v58 = v54;
  sub_10002A400((v7 + 80), *(v7 + 104));
  AnyDimension.value(with:)();
  sub_10002C0AC(v7 + 600, v101);
  v59 = v93;
  Margins.init(insets:child:)();
  v60 = v85;
  DisjointStack.init(with:)();
  v61 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  v62 = sub_1000056E0(v101);
  v63 = v88;
  (*(v88 + 16))(v62, v59, v61);
  v64 = v86;
  DisjointStack.inserting(_:at:with:)();
  v65 = v87;
  v66 = *(v87 + 8);
  v67 = v91;
  v66(v60, v91);
  sub_100007000(v101);
  v68 = v92;
  v101[3] = v92;
  v101[4] = &protocol witness table for VerticalStack;
  v69 = sub_1000056E0(v101);
  (*(v58 + 16))(v69, v95, v68);
  v70 = v89;
  DisjointStack.inserting(_:at:with:)();
  v66(v64, v67);
  sub_100007000(v101);
  v99 = v67;
  v100 = &protocol witness table for DisjointStack;
  v71 = sub_1000056E0(&v98);
  (*(v65 + 16))(v71, v70, v67);
  v72 = v94;
  v101[3] = v94;
  v101[4] = &protocol witness table for Margins;
  sub_1000056E0(v101);
  Margins.init(insets:child:)();
  v102.origin.x = a3;
  v102.origin.y = a4;
  v102.size.width = a5;
  v102.size.height = a6;
  CGRectGetWidth(v102);
  v73 = type metadata accessor for Resize();
  v74 = v90;
  v90[3] = v73;
  v74[4] = &protocol witness table for Resize;
  sub_1000056E0(v74);
  Resize.init(_:size:)();
  v66(v70, v67);
  (*(v63 + 8))(v93, v72);
  return v77(v95, v92);
}

uint64_t sub_100570178@<X0>(void *a1@<X0>, uint64_t *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v134 = a2;
  v13 = type metadata accessor for Resize.Rule();
  v113 = *(v13 - 8);
  v114 = v13;
  __chkstk_darwin(v13);
  v116 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v110 - v16;
  __chkstk_darwin(v17);
  v112 = &v110 - v18;
  __chkstk_darwin(v19);
  v111 = (&v110 - v20);
  v21 = type metadata accessor for Margins.Placements();
  v130 = *(v21 - 8);
  v131 = v21;
  __chkstk_darwin(v21);
  v129 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for Margins();
  v128 = *(v132 - 8);
  __chkstk_darwin(v132);
  v127 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Pin.Edge();
  v122 = *(v24 - 8);
  v123 = v24;
  __chkstk_darwin(v24);
  v124 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Pin();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v138 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for VerticalStack();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v121 = &v110 - v31;
  __chkstk_darwin(v32);
  v139 = &v110 - v33;
  __chkstk_darwin(v34);
  v141 = &v110 - v35;
  __chkstk_darwin(v36);
  v38 = &v110 - v37;
  __chkstk_darwin(v39);
  v136 = (&v110 - v40);
  __chkstk_darwin(v41);
  v117 = &v110 - v42;
  __chkstk_darwin(v43);
  v137 = &v110 - v44;
  __chkstk_darwin(v45);
  v118 = &v110 - v46;
  __chkstk_darwin(v47);
  v119 = &v110 - v48;
  __chkstk_darwin(v49);
  v140 = &v110 - v50;
  VerticalStack.init(with:)();
  sub_100572FE4(v6, v147);
  v51 = swift_allocObject();
  memcpy((v51 + 16), v147, 0x3C2uLL);
  *(v51 + 984) = a1;
  v52 = a1;
  VerticalStack.adding(_:with:)();

  v53 = v28;
  v56 = v28[1];
  v54 = (v28 + 1);
  v55 = v56;
  (v56)(v38, v27);
  sub_100572FE4(v6, v147);
  v57 = swift_allocObject();
  memcpy((v57 + 16), v147, 0x3C2uLL);
  *(v57 + 984) = v52;
  v58 = v52;
  v59 = v117;
  v60 = v58;
  v61 = v136;
  VerticalStack.adding(_:with:)();
  v62 = v27;

  (v56)(v61, v27);
  sub_10002C0AC((v7 + 85), v147);
  sub_1000CB084(v147, &v142);
  v136 = v53;
  if (v143)
  {
    sub_100005A38(&v142, &v144);
    VerticalStack.adding(_:with:)();
    sub_100007000(&v144);
    sub_1000CC370(v147);
    (v55)(v59, v27);
  }

  else
  {
    sub_1000CC370(v147);
    sub_1000CC370(&v142);
    v53[4](v137, v59, v27);
  }

  sub_100572FE4(v7, v147);
  v63 = swift_allocObject();
  memcpy((v63 + 16), v147, 0x3C2uLL);
  *(v63 + 984) = v60;
  v64 = v60;
  v65 = v118;
  v66 = v137;
  VerticalStack.adding(_:with:)();

  (v55)(v66, v27);
  sub_100572FE4(v7, v147);
  v67 = swift_allocObject();
  memcpy((v67 + 16), v147, 0x3C2uLL);
  *(v67 + 984) = v64;
  v68 = v64;
  v69 = v119;
  VerticalStack.adding(_:with:)();

  (v55)(v65, v62);
  sub_100572FE4(v7, v147);
  v70 = swift_allocObject();
  memcpy((v70 + 16), v147, 0x3C2uLL);
  *(v70 + 984) = v68;
  sub_1000CB084((v7 + 105), &v142);
  v137 = v68;
  if (v143)
  {
    sub_100005A38(&v142, &v144);
    v71 = v68;
    v72 = v140;
    VerticalStack.adding(_:with:)();
    v73 = v72;

    sub_100007000(&v144);
    (v55)(v69, v62);
    v74 = v141;
    v75 = v136;
  }

  else
  {
    v76 = v68;

    sub_1000CC370(&v142);
    v75 = v136;
    v73 = v140;
    v136[4](v140, v69, v62);
    v74 = v141;
  }

  v77 = v75[2];
  v77(v74, v73, v62);
  sub_100572FE4(v7, v147);
  v78 = swift_allocObject();
  memcpy((v78 + 16), v147, 0x3C2uLL);
  sub_1000CB084((v7 + 110), &v142);
  if (v143)
  {
    sub_100005A38(&v142, &v144);
    VerticalStack.add(_:with:)();

    sub_100007000(&v144);
  }

  else
  {

    sub_1000CC370(&v142);
  }

  sub_1000CB084((v7 + 115), &v144);
  v79 = v121;
  v80 = v77;
  if (v145)
  {
    sub_100005A38(&v144, v147);
    VerticalStack.add(_:with:)();
    sub_100007000(v147);
  }

  else
  {
    sub_1000CC370(&v144);
  }

  v81 = v120;
  VerticalStack.init(with:)();
  sub_1000CB084((v7 + 110), &v144);
  if (v145)
  {
    sub_100005A38(&v144, v147);
    VerticalStack.adding(_:with:)();
    sub_100007000(v147);
    (v55)(v81, v62);
  }

  else
  {
    sub_1000CC370(&v144);
    v136[4](v79, v81, v62);
  }

  v82 = v139;
  sub_1000CB084((v7 + 115), &v144);
  v125 = v55;
  v126 = v54;
  if (v145)
  {
    sub_100005A38(&v144, v147);
    VerticalStack.adding(_:with:)();
    v82 = v139;
    sub_100007000(v147);
    (v55)(v79, v62);
  }

  else
  {
    sub_1000CC370(&v144);
    v136[4](v82, v79, v62);
  }

  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v83 = sub_1000056E0(v147);
  v77(v83, v82, v62);
  (*(v122 + 104))(v124, enum case for Pin.Edge.bottomEdge(_:), v123);
  v145 = v62;
  v146 = &protocol witness table for VerticalStack;
  v84 = sub_1000056E0(&v144);
  v77(v84, v140, v62);
  Pin.init(_:to:of:)();
  v148.origin.x = a3;
  v148.origin.y = a4;
  v148.size.width = a5;
  v148.size.height = a6;
  CGRectGetWidth(v148);
  v147[3] = v62;
  v147[4] = &protocol witness table for VerticalStack;
  v85 = sub_1000056E0(v147);
  v86 = v141;
  v80(v85, v141, v62);
  v87 = v127;
  Margins.init(insets:child:)();
  measuringBoundingRect(toFit:)();
  sub_10057312C(&qword_10098C3D0, &type metadata accessor for Margins);
  v88 = v129;
  v137 = v80;
  v89 = v132;
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  sub_10057312C(&qword_10098C3D8, &type metadata accessor for Margins.Placements);
  v90 = v131;
  dispatch thunk of PlacementSequence.measure.getter();
  v92 = v91;
  (*(v130 + 8))(v88, v90);
  (*(v128 + 8))(v87, v89);
  v93 = floor(v92);
  v94 = *v7;
  if (*v7 >= v93)
  {
    v99 = v135;
    v145 = v135;
    v146 = &protocol witness table for Pin;
    v100 = sub_1000056E0(&v144);
    v101 = v133;
    (*(v133 + 16))(v100, v138, v99);
    v147[3] = v89;
    v147[4] = &protocol witness table for Margins;
    sub_1000056E0(v147);
    Margins.init(insets:child:)();
    v137 = v62;
    v102 = v111;
    *(v111 + 3) = &type metadata for CGFloat;
    *(v102 + 4) = &protocol witness table for CGFloat;
    *v102 = v94;
    v103 = v114;
    v104 = *(v113 + 104);
    v104(v102, enum case for Resize.Rule.replaced(_:), v114);
    v105 = enum case for Resize.Rule.unchanged(_:);
    v104(v112, enum case for Resize.Rule.unchanged(_:), v103);
    v104(v115, v105, v103);
    v104(v116, v105, v103);
    v106 = type metadata accessor for Resize();
    v107 = v134;
    v134[3] = v106;
    v107[4] = &protocol witness table for Resize;
    sub_1000056E0(v107);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
    (*(v101 + 8))(v138, v135);
    v108 = v137;
    v109 = v125;
    (v125)(v139, v137);
    (v109)(v141, v108);
    return (v109)(v140, v108);
  }

  else
  {
    v147[3] = v62;
    v147[4] = &protocol witness table for VerticalStack;
    v95 = sub_1000056E0(v147);
    (v137)(v95, v86, v62);
    v96 = v134;
    v134[3] = v89;
    v96[4] = &protocol witness table for Margins;
    sub_1000056E0(v96);
    Margins.init(insets:child:)();
    (*(v133 + 8))(v138, v135);
    v97 = v125;
    (v125)(v139, v62);
    (v97)(v86, v62);
    return (v97)(v140, v62);
  }
}

uint64_t AppPromotionDetailPageContentLayout.place(at:with:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1;
  if (UITraitCollection.isSizeClassCompact.getter())
  {
    v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v12)
    {

      return sub_100571320(v11, a2, a3, a4, a5);
    }
  }

  else
  {
  }

  v14 = UITraitCollection.isSizeClassCompact.getter();
  sub_10002A400((v6 + 520), *(v6 + 544));
  dispatch thunk of Placeable.place(at:with:)();
  if (v14)
  {
    sub_10056F770(v11, v15, a2, a3, a4, a5);
  }

  else
  {
    sub_100570178(v11, v15, a2, a3, a4, a5);
    v17.origin.x = a2;
    v17.origin.y = a3;
    v17.size.width = a4;
    v17.size.height = a5;
    CGRectGetMinX(v17);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    CGRectGetMinY(v18);
    v19.origin.x = a2;
    v19.origin.y = a3;
    v19.size.width = a4;
    v19.size.height = a5;
    CGRectGetWidth(v19);
  }

  sub_10002A400(v15, v15[3]);
  dispatch thunk of Placeable.place(at:with:)();
  return sub_100007000(v15);
}

uint64_t sub_100571320(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  MinX = CGRectGetMinX(*&a2);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  MinY = CGRectGetMinY(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  Width = CGRectGetWidth(v21);
  v14 = *v5;
  sub_10002A400((v5 + 520), *(v5 + 544));
  dispatch thunk of Placeable.place(at:with:)();
  sub_100571EA4(a1, v19);
  sub_10002A400(v19, v19[3]);
  dispatch thunk of Placeable.place(at:with:)();
  v22.origin.x = MinX;
  v22.origin.y = MinY;
  v22.size.width = Width;
  v22.size.height = v14;
  CGRectGetMaxY(v22);
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  CGRectGetHeight(v24);
  v25.origin.x = MinX;
  v25.origin.y = MinY;
  v25.size.width = Width;
  v25.size.height = v14;
  CGRectGetMaxY(v25);
  v15 = *(v5 + 960);
  if ((v15 & 1) == 0)
  {
    sub_10057164C(a1, 1, v17);
    sub_10002A400(v17, v18);
    dispatch thunk of Placeable.place(at:with:)();
    sub_100007000(v17);
  }

  sub_10057164C(a1, v15, v17);
  sub_10002A400((v5 + 560), *(v5 + 584));
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400(v17, v18);
  dispatch thunk of Placeable.place(at:with:)();
  sub_100007000(v17);
  return sub_100007000(v19);
}

uint64_t sub_100571598(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 240), *(a2 + 264));
  AnyDimension.value(with:)();
  VerticalStack.Properties.topSpacing.setter();
  return VerticalStack.Properties.shouldSkip.setter();
}

uint64_t sub_10057164C@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v58 = a2;
  v62 = a3;
  v6 = type metadata accessor for VerticalStack();
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v57[-v10];
  __chkstk_darwin(v12);
  v14 = &v57[-v13];
  __chkstk_darwin(v15);
  v63 = &v57[-v16];
  __chkstk_darwin(v17);
  v64 = &v57[-v18];
  __chkstk_darwin(v19);
  v59 = &v57[-v20];
  __chkstk_darwin(v21);
  v60 = &v57[-v22];
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v57[-v25];
  v27 = [a1 preferredContentSizeCategory];
  if (qword_10096E958 != -1)
  {
    swift_once();
  }

  v28 = static UIContentSizeCategory.>= infix(_:_:)();

  VerticalStack.init(with:)();
  if (v28)
  {
    sub_10002C0AC(v4 + 680, v69);
  }

  else
  {
    memset(v69, 0, 40);
  }

  v61 = v26;
  sub_1000CB084(v69, &v70);
  if (v71)
  {
    sub_100005A38(&v70, &v72);
    VerticalStack.adding(_:with:)();
    sub_100007000(&v72);
    sub_1000CC370(v69);
    v29 = v65;
    (*(v65 + 8))(v8, v6);
  }

  else
  {
    sub_1000CC370(v69);
    sub_1000CC370(&v70);
    v29 = v65;
    (*(v65 + 32))(v11, v8, v6);
  }

  sub_100572FE4(v4, v69);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v69, 0x3C2uLL);
  *(v30 + 978) = v28 & 1;
  *(v30 + 984) = a1;
  v31 = a1;
  VerticalStack.adding(_:with:)();

  v32 = *(v29 + 8);
  v32(v11, v6);
  sub_100572FE4(v4, v69);
  v33 = swift_allocObject();
  memcpy((v33 + 16), v69, 0x3C2uLL);
  *(v33 + 984) = v31;
  v34 = v31;
  VerticalStack.adding(_:with:)();

  v66 = v32;
  v32(v14, v6);
  v35 = v58;
  if (v58)
  {
    v74 = 0;
    v72 = 0u;
    v73 = 0u;
  }

  else
  {
    sub_1000CB084(v4 + 840, &v72);
  }

  v37 = v59;
  v36 = v60;
  sub_100572FE4(v4, v69);
  v38 = swift_allocObject();
  memcpy((v38 + 16), v69, 0x3C2uLL);
  *(v38 + 984) = v34;
  sub_1000CB084(&v72, &v67);
  if (v68)
  {
    sub_100005A38(&v67, &v70);
    v39 = v34;
    v40 = v63;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v70);
    sub_1000CC370(&v72);
    v66(v40, v6);
    v41 = v65;
    if (v35)
    {
LABEL_14:
      sub_1000CB084(v4 + 800, &v72);
      goto LABEL_17;
    }
  }

  else
  {
    v42 = v34;

    sub_1000CC370(&v72);
    sub_1000CC370(&v67);
    v41 = v65;
    (*(v65 + 32))(v64, v63, v6);
    if (v35)
    {
      goto LABEL_14;
    }
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
LABEL_17:
  sub_100572FE4(v4, v69);
  v43 = swift_allocObject();
  memcpy((v43 + 16), v69, 0x3C2uLL);
  *(v43 + 984) = v34;
  sub_1000CB084(&v72, &v67);
  if (v68)
  {
    sub_100005A38(&v67, &v70);
    v44 = v34;
    v45 = v64;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v70);
    sub_1000CC370(&v72);
    v66(v45, v6);
  }

  else
  {
    v46 = v34;

    sub_1000CC370(&v72);
    sub_1000CC370(&v67);
    (*(v41 + 32))(v37, v64, v6);
  }

  sub_100572FE4(v4, v69);
  v47 = swift_allocObject();
  memcpy((v47 + 16), v69, 0x3C2uLL);
  *(v47 + 984) = v34;
  sub_1000CB084(v4 + 880, &v70);
  if (v71)
  {
    sub_100005A38(&v70, &v72);
    v48 = v34;
    VerticalStack.adding(_:with:)();

    sub_100007000(&v72);
    v49 = v37;
    v50 = v66;
    v66(v49, v6);
  }

  else
  {
    v51 = v34;

    sub_1000CC370(&v70);
    (*(v41 + 32))(v36, v37, v6);
    v50 = v66;
  }

  sub_1000CB084(v4 + 920, &v72);
  v52 = v61;
  if (*(&v73 + 1))
  {
    sub_100005A38(&v72, v69);
    VerticalStack.adding(_:with:)();
    sub_100007000(v69);
    v50(v36, v6);
  }

  else
  {
    sub_1000CC370(&v72);
    (*(v41 + 32))(v52, v36, v6);
  }

  v69[3] = v6;
  v69[4] = &protocol witness table for VerticalStack;
  v53 = sub_1000056E0(v69);
  (*(v41 + 16))(v53, v52, v6);
  v54 = type metadata accessor for Margins();
  v55 = v62;
  v62[3] = v54;
  v55[4] = &protocol witness table for Margins;
  sub_1000056E0(v55);
  Margins.init(insets:child:)();
  return (v50)(v52, v6);
}

uint64_t sub_100571EA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v73 = a2;
  v70 = type metadata accessor for Resize.Rule();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = (&v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v66 = (&v54 - v7);
  __chkstk_darwin(v8);
  v65 = (&v54 - v9);
  __chkstk_darwin(v10);
  v63 = (&v54 - v11);
  v12 = type metadata accessor for DisjointStack();
  v61 = *(v12 - 8);
  v62 = v12;
  __chkstk_darwin(v12);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Resize();
  v71 = *(v14 - 8);
  v72 = v14;
  __chkstk_darwin(v14);
  v69 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for VerticalStack();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  __chkstk_darwin(v23);
  v55 = &v54 - v24;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v59 = &v54 - v27;
  v28 = [a1 preferredContentSizeCategory];
  if (qword_10096E958 != -1)
  {
    swift_once();
  }

  v29 = static UIContentSizeCategory.>= infix(_:_:)();

  VerticalStack.init(with:)();
  sub_100572FE4(v3, v79);
  v30 = swift_allocObject();
  memcpy((v30 + 16), v79, 0x3C2uLL);
  *(v30 + 984) = a1;
  v31 = a1;
  VerticalStack.adding(_:with:)();

  v58 = v17;
  v34 = *(v17 + 8);
  v32 = v17 + 8;
  v33 = v34;
  v34(v19, v16);
  sub_100572FE4(v3, v79);
  v35 = swift_allocObject();
  *(v35 + 16) = (v29 & 1) == 0;
  memcpy((v35 + 24), v79, 0x3C2uLL);
  *(v35 + 992) = v31;
  v36 = v31;
  v37 = v55;
  VerticalStack.adding(_:with:)();

  v34(v22, v16);
  v64 = v3;
  v38 = v37;
  if (v29)
  {
    memset(v79, 0, 40);
  }

  else
  {
    sub_10002C0AC(v3 + 680, v79);
  }

  sub_1000CB084(v79, &v74);
  v39 = v58;
  v40 = v59;
  v56 = v33;
  v57 = v32;
  if (v75)
  {
    sub_100005A38(&v74, v76);
    VerticalStack.adding(_:with:)();
    sub_100007000(v76);
    sub_1000CC370(v79);
    v33(v38, v16);
  }

  else
  {
    sub_1000CC370(v79);
    sub_1000CC370(&v74);
    (*(v39 + 32))(v40, v38, v16);
  }

  v41 = v60;
  DisjointStack.init(with:)();
  v77 = v16;
  v78 = &protocol witness table for VerticalStack;
  v42 = sub_1000056E0(v76);
  (*(v39 + 16))(v42, v40, v16);
  v43 = v62;
  v79[3] = v62;
  v79[4] = &protocol witness table for DisjointStack;
  sub_1000056E0(v79);
  DisjointStack.inserting(_:at:with:)();
  (*(v61 + 8))(v41, v43);
  sub_100007000(v76);
  v44 = v63;
  *v63 = sub_100572824;
  v44[1] = 0;
  v62 = v16;
  v45 = *(v68 + 104);
  v46 = v70;
  v45(v44, enum case for Resize.Rule.recalculated(_:), v70);
  v47 = enum case for Resize.Rule.unchanged(_:);
  v45(v65, enum case for Resize.Rule.unchanged(_:), v46);
  v45(v66, v47, v46);
  v45(v67, v47, v46);
  v48 = v69;
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v49 = v72;
  v77 = v72;
  v78 = &protocol witness table for Resize;
  v50 = sub_1000056E0(v76);
  v51 = v71;
  (*(v71 + 16))(v50, v48, v49);
  v79[3] = type metadata accessor for Margins();
  v79[4] = &protocol witness table for Margins;
  sub_1000056E0(v79);
  Margins.init(insets:child:)();
  v52 = v73;
  v73[3] = v49;
  v52[4] = &protocol witness table for Resize;
  sub_1000056E0(v52);
  Resize.init(_:size:)();
  (*(v51 + 8))(v48, v49);
  return v56(v40, v62);
}

uint64_t sub_100572668(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    sub_10002A400((a3 + 160), *(a3 + 184));
    AnyDimension.value(with:)();
  }

  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_1005726F0(uint64_t a1, void (*a2)(void *))
{
  v3 = type metadata accessor for DisjointStack.EdgePosition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v8 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v9 = *(v4 + 104);
  (v9)(v7, enum case for DisjointStack.EdgePosition.anchored(_:), v3, v5);
  a2(v7);
  v7[3] = &type metadata for Double;
  v7[4] = &protocol witness table for Double;
  *v7 = 0;
  v9(v7, v8, v3);
  return DisjointStack.Properties.leadingEdge.setter();
}

uint64_t sub_10057282C(uint64_t a1, uint64_t a2, char a3)
{
  VerticalStack.Properties.shouldSkip.setter();
  if (a3)
  {
    sub_10002A400((a2 + 240), *(a2 + 264));
    AnyDimension.value(with:)();
  }

  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_1005728D8(uint64_t a1, void *a2)
{
  sub_10002A400(a2 + 50, a2[53]);
  AnyDimension.value(with:)();
  VerticalStack.Properties.topSpacing.setter();
  sub_10002A400(a2 + 55, a2[58]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_1005729A8(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 480), *(a2 + 504));
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572A28(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 40), *(a2 + 64));
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572AA8(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 160), *(a2 + 184));
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572B28(uint64_t a1, uint64_t a2)
{
  VerticalStack.Properties.shouldSkip.setter();
  sub_10002A400((a2 + 240), *(a2 + 264));
  AnyDimension.value(with:)();
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_100572BC8(uint64_t a1, uint64_t a2)
{
  sub_10002A400((a2 + 280), *(a2 + 304));
  AnyDimension.value(with:)();
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_100572C48(uint64_t a1, void *a2)
{
  sub_10002A400(a2 + 40, a2[43]);
  AnyDimension.value(with:)();
  VerticalStack.Properties.topSpacing.setter();
  sub_10002A400(a2 + 45, a2[48]);
  AnyDimension.value(with:)();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100572D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 962))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100572D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 952) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 962) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 962) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100572EC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100572F10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10057312C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100573188(void *a1)
{
  if (*v1 == *a1)
  {
    v2 = v1;
    if (static AnyHashable.== infix(_:_:)())
    {
      type metadata accessor for ActionDebugSetting();
      result = swift_dynamicCastClass();
      if (!result)
      {
        return result;
      }

      v4 = result;
      v5 = *(result + 56) == v2[7] && *(result + 64) == v2[8];
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v6 = v4[10];
        v7 = v2[10];
        if (v6)
        {
          if (!v7 || (v4[9] != v2[9] || v6 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }

LABEL_16:
          v8 = v4[11];
          if (v8)
          {

            v10 = v8(v9);
            v12 = v11;
            v13 = v2[11];
            if (v13)
            {
              v14 = v10;
              v15 = v13();
              v17 = v16;
              if (v12)
              {
                if (v16)
                {
                  if (v14 != v15 || v12 != v16)
                  {
                    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    return v21 & 1;
                  }

                  goto LABEL_32;
                }

                goto LABEL_28;
              }

LABEL_25:

              if (!v17)
              {
                return 1;
              }

              goto LABEL_29;
            }

            if (v11)
            {
LABEL_28:

LABEL_29:

              return 0;
            }
          }

          else
          {
            v18 = v2[11];

            if (v18)
            {
              v18(v19);
              v17 = v20;
              goto LABEL_25;
            }
          }

LABEL_32:

          return 1;
        }

        if (!v7)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_100573398()
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 80))
  {
    Hasher._combine(_:)(1u);
    v1 = String.hash(into:)();
    v2 = *(v0 + 88);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v2 = *(v0 + 88);
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  v2(v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_8;
  }

LABEL_7:
  Hasher._combine(_:)(0);
LABEL_8:
}

uint64_t sub_100573484()
{

  sub_10001F63C(*(v0 + 88));
}

uint64_t sub_1005734C4()
{
  sub_10003D614(v0 + 16);

  sub_10001F63C(*(v0 + 88));

  return swift_deallocClassInstance();
}

id sub_100573574()
{
  v0 = PrivacyDefinition.title.getter();
  sub_1000278AC(v0, v1);
  v2 = PrivacyDefinition.definition.getter();

  return sub_1000278B8(v2, v3);
}

double sub_100573658(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v38 = type metadata accessor for PrivacyDefinitionLayout.Metrics();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v39 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PrivacyDefinitionLayout();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LabelPlaceholderCompatibility();
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000367E8();
  if (qword_10096E0C0 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for FontUseCase();
  sub_1000056A8(v35, qword_1009D11C0);
  v11 = [a4 traitCollection];
  v44 = a4;
  v12 = v11;
  v13 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.title.getter();
  v14 = type metadata accessor for Feature();
  v49[3] = v14;
  v15 = sub_100573CA0(&qword_100972E50, &type metadata accessor for Feature);
  v34[1] = a1;
  v16 = v15;
  v49[4] = v15;
  v17 = sub_1000056E0(v49);
  v18 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v19 = *(*(v14 - 8) + 104);
  v19(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  v20 = v13;
  v34[0] = v10;
  v21 = v20;
  isFeatureEnabled(_:)();
  sub_100007000(v49);
  v36 = v21;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v22 = *(v45 + 8);
  v45 += 8;
  v22(v9, v43);
  if (qword_10096E0C8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v35, qword_1009D11D8);
  v23 = [v44 traitCollection];
  v24 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  PrivacyDefinition.definition.getter();
  v48[3] = v14;
  v48[4] = v16;
  v25 = sub_1000056E0(v48);
  v19(v25, v18, v14);
  v26 = v24;
  isFeatureEnabled(_:)();
  sub_100007000(v48);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v22(v9, v43);
  if (qword_10096CE50 != -1)
  {
    swift_once();
  }

  v27 = v38;
  v28 = sub_1000056A8(v38, qword_1009CD720);
  (*(v37 + 16))(v39, v28, v27);
  sub_10002C0AC(v49, v47);
  sub_10002C0AC(v48, v46);
  v29 = v40;
  PrivacyDefinitionLayout.init(metrics:titleLabel:definitionLabel:)();
  sub_100573CA0(&qword_1009794F8, &type metadata accessor for PrivacyDefinitionLayout);
  v30 = v42;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v32 = v31;

  (*(v41 + 8))(v29, v30);
  sub_100007000(v48);
  sub_100007000(v49);
  return v32;
}

uint64_t sub_100573CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100573CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0);
}

uint64_t sub_100573D54(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_100573E1C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView];
  sub_10059FAC0(0, 0);
  *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton) = 0;
  sub_1005A0320();
  v2 = (v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler);
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  return [*(v1 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton) setUserInteractionEnabled:0];
}

uint64_t sub_100573EC8(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Paragraph.Alignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v112 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v111 = &v107 - v8;
  __chkstk_darwin(v9);
  v11 = &v107 - v10;
  __chkstk_darwin(v12);
  v14 = &v107 - v13;
  v15 = sub_10002849C(&qword_10097C3F0);
  __chkstk_darwin(v15 - 8);
  v116 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v123 = &v107 - v18;
  __chkstk_darwin(v19);
  v115 = &v107 - v20;
  __chkstk_darwin(v21);
  v23 = &v107 - v22;
  v24 = sub_10002849C(qword_10097DB40);
  __chkstk_darwin(v24 - 8);
  v121 = &v107 - v25;
  v125 = sub_10002849C(&qword_100980638);
  v26 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v107 - v27;
  v119 = type metadata accessor for Paragraph.Style();
  v127 = *(v119 - 8);
  __chkstk_darwin(v119);
  v122 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v126 = &v107 - v30;
  type metadata accessor for Paragraph();
  sub_10031857C();
  v128 = a1;
  result = ItemLayoutContext.typedModel<A>(as:)();
  v32 = aBlock;
  if (aBlock)
  {
    v108 = v11;
    v109 = v23;
    v110 = v14;
    v113 = v26;
    v118 = v5;
    v114 = v4;
    v33 = [v1 contentView];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v33 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v37 = Paragraph.text.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v38 = v135;
    v39 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v37];
    v40 = [v37 length];
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v41 + 24) = v38;
    *(v41 + 32) = v39;
    *(v41 + 40) = 1;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_10010279C;
    *(v42 + 24) = v41;
    v133 = sub_1001027AC;
    v134 = v42;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_1006606C4;
    v132 = &unk_1008C8F78;
    v43 = _Block_copy(&aBlock);
    v44 = v38;
    v45 = v39;

    [v37 enumerateAttributesInRange:0 options:v40 usingBlock:{0x100000, v43}];

    _Block_release(v43);
    LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

    if (v43)
    {
      __break(1u);
      goto LABEL_53;
    }

    v46 = [v2 contentView];
    sub_100005744(0, &qword_100972EB0);
    LayoutMarginsAware<>.layoutFrame.getter();
    v48 = v47;
    v50 = v49;

    v51 = sub_100079F24();
    swift_getObjectType();
    v117 = v45;
    v52 = sub_100318688(v45, v51, UIEdgeInsetsZero.top, left, bottom, right, v48, v50);
    swift_unknownObjectRelease();
    v53 = *&v2[OBJC_IVAR____TtC8AppStore27ParagraphCollectionViewCell_expandableTextView];
    v54 = v126;
    Paragraph.style.getter();
    v55 = v127;
    v56 = v122;
    v57 = v54;
    v58 = v119;
    (*(v127 + 16))(v122, v57, v119);
    v59 = (*(v55 + 88))(v56, v58);
    v60 = v2;
    v61 = v118;
    v62 = v32;
    if (v59 != enum case for Paragraph.Style.standard(_:))
    {
      if (v59 == enum case for Paragraph.Style.article(_:))
      {
        sub_100005744(0, &qword_100970180);
        v63 = static UIColor.secondaryText.getter();
        goto LABEL_7;
      }

      if (v59 != enum case for Paragraph.Style.caption(_:) && v59 != enum case for Paragraph.Style.todayCardOverlay(_:) && v59 != enum case for Paragraph.Style.privacyDefinitions(_:))
      {
        sub_100005744(0, &qword_100970180);
        v64 = static UIColor.primaryText.getter();
        v98 = v58;
        v99 = *(v127 + 8);
        v99(v126, v98);
        v99(v122, v98);
        goto LABEL_8;
      }
    }

    sub_100005744(0, &qword_100970180);
    v63 = static UIColor.primaryText.getter();
LABEL_7:
    v64 = v63;
    (*(v127 + 8))(v126, v58);
LABEL_8:
    v127 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel;
    [*&v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setTextColor:v64];

    ItemLayoutContext.state.getter();
    StateLens.init(_:)();
    sub_100135E04();
    StateLens<A>.currentValue.getter();
    v65 = aBlock;
    if (aBlock == 2)
    {
      v65 = Paragraph.isCollapsed.getter();
    }

    if ((v65 & v52 & 1) == 0)
    {
      v90 = v117;
      v91 = v123;
      Paragraph.alignment.getter();
      v92 = v114;
      (*(v61 + 56))(v91, 0, 1, v114);
      v93 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
      v94 = v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 0;
      v95 = *&v53[v127];
      v96 = v90;
      [v95 setNumberOfLines:0];
      if (v94 != v53[v93])
      {
        sub_1005A0320();
      }

      v85 = v96;
      sub_10059FCD8(v96);
      v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v97 = v116;
      sub_100031660(v123, v116, &qword_10097C3F0);
      if ((*(v61 + 48))(v97, 1, v92) == 1)
      {
        sub_100574EB4(v97);
        v89 = v117;
      }

      else
      {
        v100 = v111;
        (*(v61 + 32))(v111, v97, v92);
        v101 = v112;
        (*(v61 + 16))(v112, v100, v92);
        v102 = (*(v61 + 88))(v101, v92);
        if (v102 == enum case for Paragraph.Alignment.left(_:))
        {
          v103 = 0;
          v89 = v117;
        }

        else
        {
          v89 = v117;
          if (v102 == enum case for Paragraph.Alignment.center(_:))
          {
            v103 = 1;
          }

          else if (v102 == enum case for Paragraph.Alignment.right(_:))
          {
            v103 = 2;
          }

          else if (v102 == enum case for Paragraph.Alignment.justified(_:))
          {
            v103 = 3;
          }

          else if (v102 == enum case for Paragraph.Alignment.localized(_:))
          {
            v103 = 4;
          }

          else
          {
            (*(v61 + 8))(v112, v92);
            v103 = 0;
          }
        }

        [*&v53[v127] setTextAlignment:v103];
        (*(v61 + 8))(v100, v92);
      }

      [v53 setNeedsLayout];
      v77 = v123;
      goto LABEL_50;
    }

    v126 = v2;
    v66 = Paragraph.collapsedText.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v67 = v135;
    v68 = v62;
    v69 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v66];
    v70 = [v66 length];
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    *(v71 + 24) = v67;
    *(v71 + 32) = v69;
    *(v71 + 40) = 1;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_100126854;
    *(v72 + 24) = v71;
    v133 = sub_100126848;
    v134 = v72;
    aBlock = _NSConcreteStackBlock;
    v130 = 1107296256;
    v131 = sub_1006606C4;
    v132 = &unk_1008C8FF0;
    v73 = _Block_copy(&aBlock);
    v74 = v67;
    v75 = v69;

    [v66 enumerateAttributesInRange:0 options:v70 usingBlock:{0x100000, v73}];

    _Block_release(v73);
    LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

    if ((v66 & 1) == 0)
    {
      v76 = v75;
      v128 = v68;
      v77 = v109;
      Paragraph.alignment.getter();
      v78 = v118;
      v79 = v114;
      (*(v118 + 56))(v77, 0, 1, v114);
      v80 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
      v81 = v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
      v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = 1;
      v82 = *&v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
      v83 = *&v53[v127];
      v84 = v76;
      [v83 setNumberOfLines:v82];
      if (v81 != v53[v80])
      {
        sub_1005A0320();
      }

      v85 = v84;
      sub_10059FCD8(v84);
      v53[OBJC_IVAR____TtC8AppStore18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v86 = v115;
      sub_100031660(v77, v115, &qword_10097C3F0);
      v87 = (*(v78 + 48))(v86, 1, v79);
      v60 = v126;
      v88 = v110;
      v89 = v117;
      if (v87 == 1)
      {
        sub_100574EB4(v86);
      }

      else
      {
        (*(v78 + 32))(v110, v86, v79);
        v104 = v108;
        (*(v78 + 16))(v108, v88, v79);
        v105 = (*(v78 + 88))(v104, v79);
        if (v105 == enum case for Paragraph.Alignment.left(_:))
        {
          v106 = 0;
        }

        else if (v105 == enum case for Paragraph.Alignment.center(_:))
        {
          v106 = 1;
        }

        else if (v105 == enum case for Paragraph.Alignment.right(_:))
        {
          v106 = 2;
        }

        else if (v105 == enum case for Paragraph.Alignment.justified(_:))
        {
          v106 = 3;
        }

        else if (v105 == enum case for Paragraph.Alignment.localized(_:))
        {
          v106 = 4;
        }

        else
        {
          (*(v78 + 8))(v108, v79);
          v106 = 0;
        }

        [v83 setTextAlignment:v106];
        (*(v78 + 8))(v88, v79);
      }

      [v53 setNeedsLayout];

LABEL_50:
      sub_100574EB4(v77);
      [v60 setNeedsLayout];

      return (*(v113 + 8))(v124, v125);
    }

LABEL_53:
    __break(1u);
  }

  return result;
}

uint64_t sub_100574EB4(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10097C3F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100574F28()
{
  result = qword_10098C508;
  if (!qword_10098C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C508);
  }

  return result;
}

unint64_t sub_100574F80()
{
  result = qword_10098C510;
  if (!qword_10098C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C510);
  }

  return result;
}

uint64_t sub_100574FD4()
{
  v0 = sub_10002849C(&qword_100979928);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100005644(v5, qword_1009D29E8);
  sub_1000056A8(v5, qword_1009D29E8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_100575164@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v1 = sub_10002849C(&qword_10098C598);
  __chkstk_darwin(v1 - 8);
  v3 = v17 - v2;
  v4 = sub_10002849C(&qword_100979928);
  __chkstk_darwin(v4 - 8);
  v6 = v17 - v5;
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v10);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v11);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  LocalizedStringResource.init(stringInterpolation:)();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v18);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  return DisplayRepresentation.init(title:subtitle:image:)();
}

uint64_t sub_100575450(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1005767D4;

  return sub_100576474(a1);
}

uint64_t sub_1005754F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100095E9C;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_1005755AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10057566C;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10057566C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100575770()
{
  result = qword_10098C518;
  if (!qword_10098C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C518);
  }

  return result;
}

unint64_t sub_1005757C4()
{
  result = qword_10098C520;
  if (!qword_10098C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C520);
  }

  return result;
}

unint64_t sub_10057581C()
{
  result = qword_10098C528;
  if (!qword_10098C528)
  {
    sub_10002D1A8(&qword_10098C530);
    sub_1005757C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C528);
  }

  return result;
}

uint64_t sub_1005758A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100575B18();
  *v5 = v2;
  v5[1] = sub_10015A5C8;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100575954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10015A5C8;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100575A10()
{
  result = qword_10098C538;
  if (!qword_10098C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C538);
  }

  return result;
}

unint64_t sub_100575A68()
{
  result = qword_10098C540;
  if (!qword_10098C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C540);
  }

  return result;
}

unint64_t sub_100575AC0()
{
  result = qword_10098C548;
  if (!qword_10098C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C548);
  }

  return result;
}

unint64_t sub_100575B18()
{
  result = qword_10098C550;
  if (!qword_10098C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C550);
  }

  return result;
}

unint64_t sub_100575B7C()
{
  result = qword_10098C558;
  if (!qword_10098C558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C558);
  }

  return result;
}

uint64_t sub_100575BD0()
{
  v0 = sub_10002849C(&qword_10098C5A8);
  __chkstk_darwin(v0);
  sub_100309954();
  _EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  _EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v1);
  swift_getKeyPath();
  sub_10002849C(&qword_10098C5B0);
  _EntityURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  _EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  return _EntityURLRepresentation.init(stringInterpolation:)();
}

unint64_t sub_100575CF0()
{
  result = qword_10098C560;
  if (!qword_10098C560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C560);
  }

  return result;
}

unint64_t sub_100575D44()
{
  result = qword_10098C568;
  if (!qword_10098C568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C568);
  }

  return result;
}

unint64_t sub_100575D9C()
{
  result = qword_10098C570;
  if (!qword_10098C570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C570);
  }

  return result;
}

uint64_t sub_100575DF0()
{
  sub_100576420();
  v1 = _URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100575E5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096E960 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_1000056A8(v2, qword_1009D29E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100575F08()
{
  result = qword_10098C578;
  if (!qword_10098C578)
  {
    sub_10002D1A8(&qword_10098C580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C578);
  }

  return result;
}

uint64_t sub_100575F6C(uint64_t a1)
{
  v2 = sub_100309954();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100575FBC()
{
  result = qword_10098C588;
  if (!qword_10098C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C588);
  }

  return result;
}

uint64_t sub_100576014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100095E9C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_1005760D8(uint64_t a1)
{
  v2 = sub_100575D9C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100576124(uint64_t a1, int a2)
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

uint64_t sub_10057616C(uint64_t result, int a2, int a3)
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

uint64_t sub_1005761D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X7>, uint64_t *a4@<X8>)
{
  v7 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v7 - 8);
  sub_10002849C(&qword_10098C590);
  LocalizedStringResource.init(stringLiteral:)();
  v8 = EntityProperty<>.init(title:)();

  LocalizedStringResource.init(stringLiteral:)();
  v9 = EntityProperty<>.init(title:)();

  LocalizedStringResource.init(stringLiteral:)();
  v10 = EntityProperty<>.init(title:)();

  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  if (a3)
  {
    v11 = a1;
  }

  else
  {
    _StringGuts.grow(_:)(33);

    v11 = a1;
    v12._countAndFlagsBits = a1;
    v12._object = a2;
    String.append(_:)(v12);
  }

  EntityProperty.wrappedValue.setter();

  *a4 = v11;
  a4[1] = a2;
  a4[2] = v8;
  a4[3] = v9;
  a4[4] = v10;
  return result;
}

unint64_t sub_100576420()
{
  result = qword_10098C5A0;
  if (!qword_10098C5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098C5A0);
  }

  return result;
}

uint64_t sub_100576474(uint64_t a1)
{
  *(v1 + 64) = a1;
  type metadata accessor for LocalizedStringResource();
  *(v1 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_100576504, 0, 0);
}

uint64_t sub_100576504()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100144598(0, v2, 0);
    sub_10002849C(&qword_10098C590);
    v3 = (v1 + 40);
    do
    {
      v15 = v2;
      v4 = *(v3 - 1);
      v5 = *v3;

      LocalizedStringResource.init(stringLiteral:)();
      v6 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v7 = EntityProperty<>.init(title:)();

      LocalizedStringResource.init(stringLiteral:)();
      v8 = EntityProperty<>.init(title:)();
      v0[2] = 0;
      v0[3] = 0xE000000000000000;

      EntityProperty.wrappedValue.setter();
      v0[4] = 0xD000000000000016;
      v0[5] = 0x800000010081A4C0;
      EntityProperty.wrappedValue.setter();
      _StringGuts.grow(_:)(33);

      v9._countAndFlagsBits = v4;
      v9._object = v5;
      String.append(_:)(v9);
      v0[6] = 0xD00000000000001FLL;
      v0[7] = 0x800000010081A4E0;
      EntityProperty.wrappedValue.setter();

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (*&v11 >= *&v10 >> 1)
      {
        sub_100144598((*&v10 > 1uLL), *&v11 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v11 + 1;
      v12 = &_swiftEmptyArrayStorage[5 * *&v11];
      *(v12 + 4) = v4;
      *(v12 + 5) = v5;
      *(v12 + 6) = v6;
      *(v12 + 7) = v7;
      *(v12 + 8) = v8;
      v3 += 2;
      v2 = v15 - 1;
    }

    while (v15 != 1);
  }

  v13 = v0[1];

  return v13(_swiftEmptyArrayStorage);
}

uint64_t AppPromotionCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:artworkFallbackView:videoView:gradientBlurView:kindLabel:titleLabel:subtitleView:separatorView:lockupContainerView:lockupView:includeSubtitle:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_100102818(a1, a9);
  v22 = type metadata accessor for AppPromotionCardLayout(0);
  sub_100005A38(a2, a9 + v22[5]);
  sub_100005A38(a3, a9 + v22[6]);
  sub_100005A38(a4, a9 + v22[7]);
  sub_100005A38(a5, a9 + v22[8]);
  sub_100005A38(a6, a9 + v22[9]);
  v23 = a9 + v22[11];
  v24 = *(a8 + 16);
  *v23 = *a8;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a8 + 32);
  v25 = a9 + v22[12];
  v26 = *(a10 + 16);
  *v25 = *a10;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a10 + 32);
  sub_100005A38(a11, a9 + v22[13]);
  sub_100005A38(a12, a9 + v22[14]);
  sub_100005A38(a13, a9 + v22[15]);
  v27 = a9 + v22[16];
  v28 = *(a14 + 16);
  *v27 = *a14;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a14 + 32);
  v29 = a9 + v22[17];
  v30 = *(a15 + 16);
  *v29 = *a15;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a15 + 32);
  v31 = a9 + v22[18];
  v32 = *(a16 + 16);
  *v31 = *a16;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a16 + 32);
  *(a9 + v22[19]) = a17;
  v33 = a9 + v22[10];

  return sub_100005A38(a7, v33);
}

double static AppPromotionCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getObjectType();

  return sub_10057992C(a1, a4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppPromotionCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 20);
  v4 = type metadata accessor for AspectRatio();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppPromotionCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 24);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 28);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 32);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppPromotionCardLayout.Metrics(0) + 36);
  sub_100007000(v1 + v3);

  return sub_100005A38(a1, v1 + v3);
}

uint64_t AppPromotionCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  sub_100005A38(a1, a7);
  v13 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v14 = v13[5];
  v15 = type metadata accessor for AspectRatio();
  (*(*(v15 - 8) + 32))(a7 + v14, a2, v15);
  sub_100005A38(a3, a7 + v13[6]);
  sub_100005A38(a4, a7 + v13[7]);
  sub_100005A38(a5, a7 + v13[8]);
  v16 = a7 + v13[9];

  return sub_100005A38(a6, v16);
}

uint64_t AppPromotionCardLayout.videoView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 44);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.gradientBlurView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 48);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.separatorView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 64);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupContainerView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 68);

  return sub_10005FC74(v3, a1);
}

uint64_t AppPromotionCardLayout.lockupView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AppPromotionCardLayout(0) + 72);

  return sub_10005FC74(v3, a1);
}

double AppPromotionCardLayout.measurements(fitting:in:)(void *a1)
{
  swift_getObjectType();

  return sub_1005787A8(a1, v1);
}

uint64_t AppPromotionCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v160 = a2;
  v154 = COERCE_DOUBLE(type metadata accessor for SmallLockupLayout.Metrics());
  v152 = *(*&v154 - 8);
  __chkstk_darwin(*&v154);
  v151 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(type metadata accessor for FloatingPointRoundingRule());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10002A400((v6 + v18[5]), *(v6 + v18[5] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v7 + v18[6]), *(v7 + v18[6] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v7 + v18[7]), *(v7 + v18[7] + 24));
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400(v7, v7[3]);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v20 = v19;
  v21 = *(v15 + 8);
  v156 = *&v17;
  v158 = *&v14;
  *&v157 = v15 + 8;
  MaxY = *&v21;
  v21(v17, v14);
  v159 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  v171.origin.x = 0.0;
  v171.origin.y = 0.0;
  v171.size.width = a5;
  v171.size.height = a6;
  CGRectGetWidth(v171);
  AspectRatio.height(fromWidth:)();
  Height = round(v22);
  v172.origin.x = 0.0;
  v172.origin.y = 0.0;
  v172.size.width = a5;
  v172.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v172)) < 1.0)
  {
    v173.origin.x = 0.0;
    v173.origin.y = 0.0;
    v173.size.width = a5;
    v173.size.height = a6;
    Height = CGRectGetHeight(v173);
  }

  v174.origin.x = 0.0;
  v174.origin.y = 0.0;
  v174.size.width = a5;
  v174.size.height = a6;
  Width = CGRectGetWidth(v174);
  sub_10002A400((v6 + v18[8]), *(v6 + v18[8] + 24));
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  v175.origin.x = 0.0;
  v175.origin.y = 0.0;
  v175.size.width = Width;
  v175.size.height = Height;
  v25 = CGRectGetWidth(v175);
  v26 = (v6 + v18[9]);
  sub_10002A400(v26, v26[3]);
  CGRect.withLayoutDirection(in:relativeTo:)();
  dispatch thunk of LayoutView.frame.setter();
  sub_10002A400((v6 + v18[10]), *(v6 + v18[10] + 24));
  sub_10002A400(v26, v26[3]);
  dispatch thunk of LayoutView.frame.getter();
  dispatch thunk of LayoutView.frame.setter();
  sub_10005FC74(v6 + v18[11], &v169);
  if (v170)
  {
    sub_10002A400(&v169, v170);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v169);
  }

  else
  {
    sub_10005FD2C(&v169);
  }

  sub_10005FC74(v6 + v18[12], &v169);
  if (v170)
  {
    sub_10002A400(&v169, v170);
    dispatch thunk of LayoutView.frame.setter();
    sub_100007000(&v169);
  }

  else
  {
    sub_10005FD2C(&v169);
  }

  sub_10005FC74(v6 + v18[17], &v167);
  v161 = a5;
  v163 = a4;
  v162 = a3;
  if (!v168)
  {
    sub_10005FD2C(&v167);
LABEL_17:
    v27 = 1;
    v28 = 0.0;
    v150 = 0.0;
    v149 = 0.0;
    v153 = 0.0;
    goto LABEL_18;
  }

  sub_100005A38(&v167, &v169);
  sub_10002A400(&v169, v170);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
LABEL_16:
    sub_100007000(&v169);
    goto LABEL_17;
  }

  sub_10005FC74(v6 + v18[18], &v165);
  if (!v166)
  {
    sub_10005FD2C(&v165);
    goto LABEL_16;
  }

  sub_100005A38(&v165, &v167);
  sub_10002A400(&v167, v168);
  if (dispatch thunk of LayoutView.isHidden.getter())
  {
    sub_100007000(&v167);
    goto LABEL_16;
  }

  v146 = sub_1000CC354(0.0, 0.0, a5, a6, 0.0, v20);
  v145 = v118;
  v120 = v119;
  v143 = v121;
  v153 = COERCE_DOUBLE(swift_getObjectType());
  v122 = [a1 traitCollection];
  v123 = [v122 preferredContentSizeCategory];
  v124 = static UIContentSizeCategory.>= infix(_:_:)();

  v147 = v20;
  v144 = Width;
  v142 = v25;
  if (v124)
  {
    if (qword_10096EBD8 != -1)
    {
      swift_once();
    }

    v125 = qword_1009D3190;
  }

  else
  {
    if (qword_10096EBD0 != -1)
    {
      swift_once();
    }

    v125 = qword_1009D3178;
  }

  v126 = v154;
  v127 = sub_1000056A8(*&v154, v125);
  v128 = v152;
  v129 = v151;
  (*(v152 + 16))(v151, v127, COERCE_CGFLOAT(*&v126));
  v130 = [a1 traitCollection];
  v131 = [v130 preferredContentSizeCategory];
  static UIContentSizeCategory.>= infix(_:_:)();

  type metadata accessor for SmallLockupView();
  v132 = v143;
  sub_10070B598(v129, a1);
  v134 = ceil(v133);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a5;
  v192.size.height = a6;
  MinX = CGRectGetMinX(v192);
  v193.size.width = v120;
  v141 = v120;
  v135 = v146;
  v193.origin.x = v146;
  v136 = v145;
  v193.origin.y = v145;
  v193.size.height = v132;
  v137 = CGRectGetHeight(v193);
  v153 = v134;
  v138 = v137 - v134;
  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = a5;
  v194.size.height = a6;
  v139 = CGRectGetWidth(v194);
  sub_10002A400(&v169, v170);
  v150 = v138;
  v149 = v139;
  dispatch thunk of LayoutView.frame.setter();
  v195.origin.x = v135;
  v195.origin.y = v136;
  v140 = v141;
  v195.size.width = v141;
  v195.size.height = v132;
  CGRectGetMinX(v195);
  v196.origin.x = v135;
  v196.origin.y = v136;
  v196.size.width = v140;
  v196.size.height = v132;
  CGRectGetMinY(v196);
  v197.origin.x = v135;
  v197.origin.y = v136;
  v197.size.width = v140;
  v197.size.height = v132;
  CGRectGetWidth(v197);
  sub_10002A400(&v167, v168);
  v28 = MinX;
  a5 = v161;
  dispatch thunk of LayoutView.frame.setter();
  (*(v128 + 8))(v129, COERCE_CGFLOAT(*&v154));
  sub_100007000(&v167);
  sub_100007000(&v169);
  v27 = 0;
  v20 = v147;
  Width = v144;
  v25 = v142;
LABEL_18:
  v29 = [a1 traitCollection];
  v30 = [v29 preferredContentSizeCategory];
  v31 = static UIContentSizeCategory.>= infix(_:_:)();

  v164 = a6;
  if (v31)
  {
    MinX = v28;
    v32 = sub_1000CC354(0.0, 0.0, a5, a6, 0.0, v20);
    v156 = v32;
    v158 = v33;
    v35 = v34;
    v37 = v36;
    v176.origin.x = 0.0;
    v176.origin.y = 0.0;
    v176.size.width = v25;
    v176.size.height = Height;
    MaxY = CGRectGetMaxY(v176);
    v38 = (v7 + v18[13]);
    sub_10002A400(v38, v38[3]);
    v157 = v35;
    v39 = v37;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = v159;
    sub_10002A400((v7 + *(v159 + 24)), *(v7 + *(v159 + 24) + 24));
    AnyDimension.topMargin(from:in:)();
    v48 = v47;
    v177.origin.x = v32;
    v177.origin.y = v158;
    v177.size.width = v35;
    v177.size.height = v39;
    v49 = CGRectGetMinX(v177);
    v50 = MaxY + v48;
    sub_10002A400(v38, v38[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v178.origin.x = v49;
    v178.origin.y = v50;
    v178.size.width = v41;
    v178.size.height = v43;
    v51 = CGRectGetMaxY(v178) - v45;
    v52 = (v7 + v18[14]);
    sub_10002A400(v52, v52[3]);
    v53 = v157;
    v54 = v39;
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    sub_10002A400((v7 + *(v46 + 28)), *(v7 + *(v46 + 28) + 24));
    AnyDimension.topMargin(from:in:)();
    v62 = v61;
    v179.origin.x = v156;
    v179.origin.y = v158;
    v179.size.width = v53;
    MaxY = v54;
    v179.size.height = v54;
    v63 = CGRectGetMinX(v179);
    sub_10002A400(v52, v52[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    v180.origin.x = v63;
    v180.origin.y = v51 + v62;
    v180.size.width = v56;
    v180.size.height = v58;
    v64 = CGRectGetMaxY(v180);
    if (*(v7 + v18[19]) == 1)
    {
      v65 = v64 - v60;
      sub_10002A400((v7 + *(v46 + 32)), *(v7 + *(v46 + 32) + 24));
      v66 = [a1 traitCollection];
      AnyDimension.value(with:)();
      v68 = v67;

      v69 = v65 + v68;
      v70 = (v7 + v18[15]);
      sub_10002A400(v70, v70[3]);
      v71 = [a1 traitCollection];
      v72 = v157;
      v73 = MaxY;
      dispatch thunk of Placeable.measure(toFit:with:)();
      v75 = v74;
      v77 = v76;

      v181.origin.x = v156;
      v181.origin.y = v158;
      v181.size.width = v72;
      v181.size.height = v73;
      v78 = CGRectGetMinX(v181);
      sub_10002A400(v70, v70[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      v79 = [a1 traitCollection];
      dispatch thunk of Placeable.place(at:with:)();

      v182.origin.x = v78;
      v182.origin.y = v69;
      v182.size.width = v75;
      v182.size.height = v77;
      CGRectGetMaxY(v182);
    }

    sub_10005FC74(v7 + v18[16], &v167);
    if (v168)
    {
      sub_100005A38(&v167, &v169);
      sub_10002A400(&v169, v170);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0 && (v27 & 1) == 0)
      {
        sub_10002A400(&v169, v170);
        v80 = v157;
        v81 = MaxY;
        dispatch thunk of Measurable.measurements(fitting:in:)();
        v183.origin.x = MinX;
        v183.origin.y = v150;
        v183.size.width = v149;
        v183.size.height = v153;
        CGRectGetMinY(v183);
        v82 = v156;
        v184.origin.x = v156;
        v83 = v158;
        v184.origin.y = v158;
        v184.size.width = v80;
        v184.size.height = v81;
        CGRectGetMinX(v184);
        v185.origin.x = v82;
        v185.origin.y = v83;
        v185.size.width = v80;
        v185.size.height = v81;
        CGRectGetWidth(v185);
        sub_10002A400(&v169, v170);
        dispatch thunk of LayoutView.frame.setter();
      }

      sub_100007000(&v169);
    }

    else
    {
      sub_10005FD2C(&v167);
    }
  }

  else
  {
    v84 = sub_1000CC354(0.0, 0.0, Width, Height, 0.0, v20);
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v91 = v159;
    sub_10002A400((v7 + *(v159 + 36)), *(v7 + *(v159 + 36) + 24));
    v92 = v156;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v94 = v93;
    (*&MaxY)(COERCE_CGFLOAT(*&v92), COERCE_CGFLOAT(*&v158));
    v186.origin.x = v84;
    v186.origin.y = v86;
    v186.size.width = v88;
    v186.size.height = v90;
    v95 = CGRectGetHeight(v186) - v94;
    if (*(v7 + v18[19]) == 1)
    {
      v96 = (v7 + v18[15]);
      sub_10002A400(v96, v96[3]);
      v97 = [a1 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();
      v158 = v98;
      v100 = v99;

      v156 = v95 - v100;
      v157 = v100;
      v187.origin.x = v84;
      v187.origin.y = v86;
      v187.size.width = v88;
      v187.size.height = v90;
      MaxY = CGRectGetMinX(v187);
      sub_10002A400(v96, v96[3]);
      CGRect.withLayoutDirection(in:relativeTo:)();
      v101 = v84;
      v102 = [a1 traitCollection];
      dispatch thunk of Placeable.place(at:with:)();

      sub_10002A400((v7 + *(v91 + 32)), *(v7 + *(v91 + 32) + 24));
      v103 = [a1 traitCollection];
      AnyDimension.value(with:)();
      v105 = v104;

      v188.origin.x = MaxY;
      v188.origin.y = v156;
      v188.size.width = v158;
      v188.size.height = v157;
      v95 = CGRectGetMinY(v188) - v105;
    }

    else
    {
      v101 = v84;
    }

    v106 = (v7 + v18[14]);
    sub_10002A400(v106, v106[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v108 = v107;
    v110 = v109;
    v158 = v111;
    v157 = v112;
    v113 = v112 + v95 - v109;
    v189.origin.x = v101;
    v189.origin.y = v86;
    v153 = v86;
    v189.size.width = v88;
    v189.size.height = v90;
    v114 = CGRectGetMinX(v189);
    v154 = v101;
    v115 = v114;
    sub_10002A400(v106, v106[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
    sub_10002A400((v7 + *(v91 + 28)), *(v7 + *(v91 + 28) + 24));
    AnyDimension.topMargin(from:in:)();
    v190.origin.x = v115;
    v190.origin.y = v113;
    v190.size.width = v108;
    v190.size.height = v110;
    CGRectGetMinY(v190);
    v116 = (v7 + v18[13]);
    sub_10002A400(v116, v116[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v191.origin.x = v154;
    v191.origin.y = v153;
    v191.size.width = v88;
    v191.size.height = v90;
    CGRectGetMinX(v191);
    sub_10002A400(v116, v116[3]);
    CGRect.withLayoutDirection(in:relativeTo:)();
    dispatch thunk of LayoutView.frame.setter();
  }

  return LayoutRect.init(representing:)();
}

double sub_1005787A8(void *a1, void *a2)
{
  v108 = type metadata accessor for FloatingPointRoundingRule();
  v106 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for StackMeasurable.Axis();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for StackMeasurable();
  v115 = *(v116 - 1);
  __chkstk_darwin(v116);
  v114 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for VerticalSpaceMeasurable();
  v107 = *(v110 - 8);
  __chkstk_darwin(v110);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v104 = &v95 - v9;
  v102 = type metadata accessor for OfferButtonMetrics();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v99 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v100 = &v95 - v12;
  __chkstk_darwin(v13);
  v98 = &v95 - v14;
  __chkstk_darwin(v15);
  v17 = &v95 - v16;
  v18 = type metadata accessor for SmallLockupLayout.Metrics();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v95 - v23;
  v25 = type metadata accessor for AppPromotionCardLayout(0);
  sub_10005FC74(a2 + v25[18], &v120);
  v109 = v121;
  sub_10005FD2C(&v120);
  v117 = a1;
  v26 = [a1 traitCollection];
  v27 = [v26 preferredContentSizeCategory];
  v28 = static UIContentSizeCategory.>= infix(_:_:)();

  if (v28)
  {
    v29 = v25[13];
    v30 = v25[14];
    v31 = v25[16];
    v95 = v25[15];
    v103 = v31;
    LODWORD(v99) = *(a2 + v25[19]);
    if (qword_10096EBD8 != -1)
    {
      swift_once();
    }

    v96 = (a2 + v29);
    v32 = (a2 + v30);
    v33 = sub_1000056A8(v18, qword_1009D3190);
    v100 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v35 = v34;
    v36 = [v117 traitCollection];
    (*(v19 + 16))(v24, v33, v18);
    v37 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v39 = v105;
    v97 = v32;
    if ((v40 & 1) == 0 && ((v37 | v38) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v41 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v41 = qword_100991028;
      }

      v51 = v102;
      v52 = sub_1000056A8(v102, v41);
      v53 = v101;
      v54 = v98;
      (*(v101 + 16))(v98, v52, v51);
      (*(v53 + 32))(v17, v54, v51);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v53 + 8))(v17, v51);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v56 = v55;

    (*(v19 + 8))(v24, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007B10D0;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v35;
    v58 = v110;
    *(inited + 56) = v110;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((inited + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(inited);
    v59 = v117;
    v60 = v108;
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v56 + 16.0 + 16.0);
      v61 = v104;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v62 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_100033260(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_100033260((v63 > 1), v64 + 1, 1, v62);
      }

      v121 = v58;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v65 = sub_1000056E0(&v120);
      v66 = v107;
      (*(v107 + 16))(v65, v61, v58);
      v62[2] = v64 + 1;
      sub_100005A38(&v120, &v62[5 * v64 + 4]);
      (*(v66 + 8))(v61, v58);
      *&v118 = v62;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v67 = v114;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v69 = v68;
    (*(v115 + 8))(v67, v116);
    sub_10002A400(a2, a2[3]);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v116 = *(v106 + 8);
    v116(v39, v60);
    CGSize.subtracting(insets:)();
    sub_10002A400(v96, v96[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v71 = v70;
    v72 = v100;
    sub_10002A400((a2 + *(v100 + 6)), *(a2 + *(v100 + 6) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v120 = v71;
    AnyDimension.bottomMargin(from:in:)();
    sub_10002A400(v97, v97[3]);
    dispatch thunk of Measurable.measurements(fitting:in:)();
    v74 = v73;
    sub_10002A400((a2 + *(v72 + 7)), *(a2 + *(v72 + 7) + 24));
    AnyDimension.topMargin(from:in:)();
    *&v120 = v74;
    AnyDimension.bottomMargin(from:in:)();
    if (v99)
    {
      sub_10002A400((a2 + v95), *(a2 + v95 + 24));
      v75 = v72;
      v76 = [v59 traitCollection];
      dispatch thunk of Placeable.measure(toFit:with:)();

      sub_10002A400((a2 + *(v75 + 8)), *(a2 + *(v75 + 8) + 24));
      v77 = [v59 traitCollection];
      AnyDimension.value(with:)();

      sub_10002A400((a2 + *(v75 + 9)), *(a2 + *(v75 + 9) + 24));
      j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
      AnyDimension.value(in:rounded:)();
      v116(v39, v108);
    }

    sub_10005FC74(&v103[a2], &v118);
    if (v119)
    {
      sub_100005A38(&v118, &v120);
      sub_10002A400(&v120, v121);
      if ((dispatch thunk of LayoutView.isHidden.getter() & 1) == 0)
      {
        sub_10002A400(&v120, v121);
        dispatch thunk of Measurable.measurements(fitting:in:)();
      }

      sub_100007000(&v120);
    }

    else
    {
      sub_10005FD2C(&v118);
    }
  }

  else
  {
    if (qword_10096EBD0 != -1)
    {
      swift_once();
    }

    v42 = sub_1000056A8(v18, qword_1009D3178);
    type metadata accessor for AppPromotionCardLayout.Metrics(0);
    AspectRatio.height(fromWidth:)();
    v44 = v43;
    v45 = [v117 traitCollection];
    (*(v19 + 16))(v21, v42, v18);
    v46 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    v48 = v110;
    if ((v49 & 1) == 0 && ((v46 | v47) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v50 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v50 = qword_100991028;
      }

      v78 = v102;
      v79 = sub_1000056A8(v102, v50);
      v80 = v101;
      v81 = v99;
      (*(v101 + 16))(v99, v79, v78);
      v82 = v100;
      (*(v80 + 32))(v100, v81, v78);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v80 + 8))(v82, v78);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
    v84 = v83;

    (*(v19 + 8))(v21, v18);
    *&v118 = _swiftEmptyArrayStorage;
    sub_10002849C(&qword_100996330);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_1007B10D0;
    v121 = &type metadata for CGFloat;
    v122 = &protocol witness table for CGFloat;
    *&v120 = v44;
    *(v85 + 56) = v48;
    *(v85 + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_1000056E0((v85 + 32));
    VerticalSpaceMeasurable.init(_:multiplier:)();
    sub_10039435C(v85);
    if (v109)
    {
      v121 = &type metadata for CGFloat;
      v122 = &protocol witness table for CGFloat;
      *&v120 = ceil(v84 + 4.0 + 4.0);
      v86 = v103;
      VerticalSpaceMeasurable.init(_:multiplier:)();
      v87 = v118;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_100033260(0, v87[2] + 1, 1, v87);
      }

      v89 = v87[2];
      v88 = v87[3];
      if (v89 >= v88 >> 1)
      {
        v87 = sub_100033260((v88 > 1), v89 + 1, 1, v87);
      }

      v121 = v48;
      v122 = &protocol witness table for VerticalSpaceMeasurable;
      v90 = sub_1000056E0(&v120);
      v91 = v107;
      (*(v107 + 16))(v90, v86, v48);
      v87[2] = v89 + 1;
      sub_100005A38(&v120, &v87[5 * v89 + 4]);
      (*(v91 + 8))(v86, v48);
      *&v118 = v87;
    }

    (*(v112 + 104))(v111, enum case for StackMeasurable.Axis.vertical(_:), v113);
    v92 = v114;
    StackMeasurable.init(axis:skipEmptyChildren:children:)();
    StackMeasurable.measurements(fitting:in:)();
    v69 = v93;
    (*(v115 + 8))(v92, v116);
  }

  return v69;
}

double sub_10057992C(uint64_t a1, void *a2)
{
  v48 = type metadata accessor for StackMeasurable.Axis();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for StackMeasurable();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v44 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for VerticalSpaceMeasurable();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for OfferButtonMetrics();
  v8 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for SmallLockupLayout.Metrics();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EBD0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v13, qword_1009D3178);
  type metadata accessor for AppPromotionCardLayout.Metrics(0);
  AspectRatio.height(fromWidth:)();
  v19 = v18;
  v50 = a2;
  v20 = [a2 traitCollection];
  (*(v14 + 16))(v16, v17, v13);
  v21 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  v23 = v7;
  if ((v24 & 1) == 0 && ((v21 | v22) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v25 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v25 = qword_100991028;
    }

    v26 = v42;
    v27 = sub_1000056A8(v42, v25);
    v28 = v41;
    (*(v8 + 16))(v41, v27, v26);
    (*(v8 + 32))(v12, v28, v26);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v8 + 8))(v12, v26);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();
  v30 = v29;

  (*(v14 + 8))(v16, v13);
  v54 = _swiftEmptyArrayStorage;
  sub_10002849C(&qword_100996330);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B10D0;
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = v19;
  *(inited + 56) = v5;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_1000056E0((inited + 32));
  VerticalSpaceMeasurable.init(_:multiplier:)();
  sub_10039435C(inited);
  v52 = &type metadata for CGFloat;
  v53 = &protocol witness table for CGFloat;
  *&v51 = ceil(v30 + 4.0 + 4.0);
  VerticalSpaceMeasurable.init(_:multiplier:)();
  v32 = v54;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_100033260(0, v32[2] + 1, 1, v32);
  }

  v34 = v32[2];
  v33 = v32[3];
  if (v34 >= v33 >> 1)
  {
    v32 = sub_100033260((v33 > 1), v34 + 1, 1, v32);
  }

  v52 = v5;
  v53 = &protocol witness table for VerticalSpaceMeasurable;
  v35 = sub_1000056E0(&v51);
  v36 = v43;
  (*(v43 + 16))(v35, v23, v5);
  v32[2] = v34 + 1;
  sub_100005A38(&v51, &v32[5 * v34 + 4]);
  (*(v36 + 8))(v23, v5);
  (*(v46 + 104))(v45, enum case for StackMeasurable.Axis.vertical(_:), v48);
  v37 = v44;
  StackMeasurable.init(axis:skipEmptyChildren:children:)();
  StackMeasurable.measurements(fitting:in:)();
  v39 = v38;
  (*(v47 + 8))(v37, v49);
  return v39;
}

void sub_10057A078()
{
  type metadata accessor for AppPromotionCardLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_100154428(319, &unk_10098A3C0);
    if (v1 <= 0x3F)
    {
      sub_100448A64();
      if (v2 <= 0x3F)
      {
        sub_100154428(319, &qword_10097E940);
        if (v3 <= 0x3F)
        {
          sub_100154428(319, &qword_10098C620);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10057A1C0()
{
  result = sub_100154428(319, &qword_1009842D0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AspectRatio();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *sub_10057A264(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaDictionary.lookup(_:)();

    if (v3)
    {
      sub_100005744(0, &qword_1009744B0);
      swift_dynamicCast();
      return v9;
    }
  }

  else if (*(a2 + 16))
  {
    v5 = sub_1003D791C(a1);
    if (v6)
    {
      v7 = *(*(a2 + 56) + 8 * v5);
      v8 = v7;
      return v7;
    }
  }

  return 0;
}

uint64_t sub_10057A32C(uint64_t result)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media);
  *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media) = result;
  if (result)
  {
    v6 = result;
    if (v3)
    {
      v5 = v3;
      type metadata accessor for ProductMedia();
      sub_10057FCB8(&qword_10098C828, &type metadata accessor for ProductMedia);
      swift_retain_n();
      v4 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v2 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:
  }

  if (v3)
  {
    goto LABEL_8;
  }

  return result;
}

void sub_10057A438(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    type metadata accessor for VideoPlaybackScrollObserver();
    swift_allocObject();
    v2 = v6;
    VideoPlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.removeChild(_:)();
  }

  if (*&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph])
  {
    type metadata accessor for VideoPlaybackCoordinator();
    type metadata accessor for BaseObjectGraph();

    inject<A, B>(_:from:)();
    v3 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_compoundScrollObserver];
    type metadata accessor for VideoPlaybackScrollObserver();
    swift_allocObject();
    v4 = v6;
    VideoPlaybackScrollObserver.init(_:)();
    CompoundScrollObserver.addChild(_:)();

    v5 = [v1 window];
    if (v5)
    {

      [v3 scrollViewDidScroll:*&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_10057A600()
{
  if (qword_10096E6B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for StaticDimension();
  v1 = sub_1000056A8(v0, qword_1009D2448);
  qword_10098C748 = v0;
  unk_10098C750 = &protocol witness table for StaticDimension;
  v2 = sub_1000056E0(qword_10098C730);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_10057A6F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *&v4[v12] = CompoundScrollObserver.init(children:)();
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = type metadata accessor for ItemLayoutContext();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v29 = String._bridgeToObjectiveC()();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell();
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v33 = String._bridgeToObjectiveC()();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_10057AB70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v92 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v92);
  v4 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104.receiver = v1;
  v104.super_class = ObjectType;
  objc_msgSendSuper2(&v104, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v100 = v17;

  v91 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryView];
  v101 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_10096E980 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2A00, qword_1009D2A18);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v21 = v25;

    (*(v6 + 8))(v9, v5);
  }

  v94 = v20;
  v90 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryView];
  v103 = 0.0;
  v27 = 0.0;
  if (v26)
  {
    v28 = v26;
    [v28 frame];
    v101 = v29;
    v103 = v30;
    if (qword_10096E978 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C780, qword_10098C798);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v27 = v31;

    (*(v6 + 8))(v9, v5);
  }

  v86 = v19;
  v95 = v27;
  v89 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v32 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v33 = 0.0;
  v99 = 0.0;
  v34 = 0.0;
  MinY = 0.0;
  v36 = 0.0;
  if (v32)
  {
    v37 = OBJC_IVAR____TtC8AppStore11DividerView_style;
    swift_beginAccess();
    sub_1002BB2D0(v32 + v37, v4);
    v38 = qword_10096EE38;
    v39 = v32;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = floor(*&qword_1009D36B8);
    static Dimensions.defaultRoundingRule.getter();
    type metadata accessor for StaticDimension();
    AnyDimension.value(in:rounded:)();
    v42 = v41;
    (*(v6 + 8))(v9, v5);
    v36 = v40 + v42;
    sub_10057D918(v4, type metadata accessor for DividerView.Style);
    v105.origin.x = v12;
    v105.origin.y = v14;
    v105.size.width = v16;
    v43 = v100;
    v105.size.height = v100;
    v34 = CGRectGetMaxX(v105) - v16;
    v106.origin.x = v12;
    v106.origin.y = v14;
    v106.size.width = v16;
    v106.size.height = v43;
    MinY = CGRectGetMinY(v106);

    v33 = v16;
  }

  v93 = v33;
  v102 = MinY;
  v44 = OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v45 = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v97 = 0.0;
  v96 = 0.0;
  v98 = 0.0;
  if (v45)
  {
    v46 = OBJC_IVAR____TtC8AppStore11DividerView_style;
    swift_beginAccess();
    sub_1002BB2D0(v45 + v46, v4);
    v47 = qword_10096EE38;
    v48 = v45;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = floor(*&qword_1009D36B8);
    static Dimensions.defaultRoundingRule.getter();
    type metadata accessor for StaticDimension();
    AnyDimension.value(in:rounded:)();
    v51 = v50;
    (*(v6 + 8))(v9, v5);
    v52 = v49 + v51;
    sub_10057D918(v4, type metadata accessor for DividerView.Style);
    v107.origin.x = v12;
    v107.origin.y = v14;
    v107.size.width = v16;
    v53 = v100;
    v107.size.height = v100;
    v99 = CGRectGetMaxX(v107) - v16;
    v108.origin.x = v12;
    v108.origin.y = v14;
    v108.size.width = v16;
    v108.size.height = v53;
    MaxY = CGRectGetMaxY(v108);

    v98 = v52;
    v97 = MaxY - ceil(v52);
    v96 = v16;
  }

  *&v92 = v16;
  v55 = v14;
  v56 = v90;
  if (*&v1[v90])
  {
    v57 = v12;
    if (qword_10096E968 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C730, qword_10098C748);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v59 = v58;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v57 = v12;
    v59 = 0.0;
  }

  if (qword_10096E970 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098C758, qword_10098C770);
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v61 = v60;
  (*(v6 + 8))(v9, v5);
  v87 = v59;
  v85 = v21;
  v62 = v94 + v103 + v21 + v95 + v59 + v61;
  v63 = v34;
  v109.origin.x = v34;
  v109.origin.y = v102;
  v64 = v93;
  v109.size.width = v93;
  v65 = v36;
  v109.size.height = v36;
  v66 = CGRectGetHeight(v109) + v62;
  v110.origin.x = v99;
  v110.origin.y = v97;
  v110.size.width = v96;
  v110.size.height = v98;
  v88 = CGRectGetHeight(v110) + v66;
  v111.origin.x = v57;
  v111.origin.y = v55;
  v67 = *&v92;
  *&v111.size.width = v92;
  v68 = v100;
  v111.size.height = v100;
  MinX = CGRectGetMinX(v111);
  v83 = v63;
  v112.origin.x = v63;
  v112.origin.y = v102;
  v112.size.width = v64;
  v84 = v65;
  v112.size.height = v65;
  v70 = v87 + CGRectGetMaxY(v112);
  v113.origin.x = v57;
  v113.origin.y = v55;
  v113.size.width = v67;
  v113.size.height = v68;
  v71 = CGRectGetMinX(v113);
  v87 = MinX;
  v114.origin.x = MinX;
  v82 = v70;
  v114.origin.y = v70;
  v114.size.width = v101;
  v114.size.height = v103;
  v72 = v95 + CGRectGetMaxY(v114);
  v115.origin.x = v57;
  v115.origin.y = v55;
  v115.size.width = v67;
  v115.size.height = v68;
  Width = CGRectGetWidth(v115);
  v116.origin.x = v57;
  v116.origin.y = v55;
  v116.size.width = v67;
  v116.size.height = v68;
  v74 = CGRectGetHeight(v116) - v88;
  v117.origin.x = v57;
  v117.origin.y = v55;
  v117.size.width = v67;
  v117.size.height = v68;
  v75 = CGRectGetMinX(v117);
  v118.origin.x = v71;
  v118.origin.y = v72;
  v118.size.width = Width;
  v118.size.height = v74;
  v76 = CGRectGetMaxY(v118);
  v77 = *&v1[v89];
  if (v77)
  {
    [v77 setFrame:{v83, v102, v93, v84}];
  }

  v78 = *&v1[v56];
  if (v78)
  {
    [v78 setFrame:{v87, v82, v101, v103}];
  }

  [*&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_collectionView] setFrame:{v71, v72, Width, v74}];
  v79 = *&v1[v91];
  if (v79)
  {
    [v79 setFrame:{v75, v85 + v76, v86, v94}];
  }

  result = *&v1[v44];
  if (result)
  {
    return [result setFrame:{v99, v97, v96, v98}];
  }

  return result;
}

void sub_10057B5CC(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_10057B6DC(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_10057B6DC(a2);
  }
}

id sub_10057B6DC(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_10096EE48;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v3, qword_1009D36D8);
  sub_1002BB2D0(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC8AppStore11DividerView_style];
  swift_beginAccess();
  sub_1002BB334(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC8AppStore11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_10057D918(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_10057B904(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell();
    static UICollectionReusableView.defaultReuseIdentifier.getter();
    v10 = String._bridgeToObjectiveC()();

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    return v12;
  }

  v3 = ProductMedia.items.getter();
  result = IndexPath.item.getter();
  if ((v3 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v5 = ProductMediaItem.screenshot.getter();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell();
      static UICollectionReusableView.defaultReuseIdentifier.getter();
      v6 = String._bridgeToObjectiveC()();

      v7 = IndexPath._bridgeToObjectiveC()().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC8AppStore28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_platform) = ProductMedia.platform.getter();

      sub_100617504();

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10057BD78(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_10057BE94(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = ProductMedia.items.getter();

  v4 = IndexPath.item.getter();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_6:

  v5 = ProductMediaItem.screenshot.getter();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);

      v9 = IndexPath.item.getter();
      v7(v6, v9);
      sub_10011B8E8(v7, v8);
    }

    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell()
{
  result = qword_10098C810;
  if (!qword_10098C810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10057C384()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10057C46C(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v159 = a9;
  v149 = a8;
  v145 = a3;
  v144 = a2;
  v143 = type metadata accessor for FloatingPointRoundingRule();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v15 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = COERCE_DOUBLE(type metadata accessor for AppPlatform());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v150 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AspectRatio();
  v154 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v151 = &v141 - v20;
  __chkstk_darwin(v21);
  v23 = &v141 - v22;
  __chkstk_darwin(v24);
  v26 = &v141 - v25;
  v27 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v27 - 8);
  v156 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v161 = &v141 - v30;
  __chkstk_darwin(v31);
  v162 = &v141 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration();
  __chkstk_darwin(v33 - 8);
  v147 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = ProductMedia.platform.getter();
  v153 = a1;
  v35 = ProductMedia.items.getter();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v164 = v26;
  v148 = v15;
  v163 = v23;
  v157 = a4;
  if (v37)
  {
    v26 = 0;
    v158 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v158)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (ProductMediaItem.screenshot.getter())
      {
        v38 = dispatch thunk of Artwork.isPortrait.getter();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!ProductMediaItem.video.getter())
        {

          v155 = 1;
          a4 = v157;
          v15 = v148;
          goto LABEL_21;
        }

        Video.preview.getter();
        v40 = dispatch thunk of Artwork.isPortrait.getter();

        v15 = v148;
        if (v40)
        {
LABEL_18:
          v155 = 1;
          a4 = v157;
LABEL_21:
          v23 = v163;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v163;
      if (v39 == v37)
      {
        v155 = 0;
        a4 = v157;
        goto LABEL_22;
      }
    }
  }

  v155 = 0;
LABEL_22:

  type metadata accessor for Screenshots();

  sub_10061B788(v41, v147);

  v42 = ProductMedia.items.getter();
  if (v42 >> 62)
  {
    v37 = v42;
    v43 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = v154;

  if (v43 >= 1)
  {
    v45 = ProductMedia.items.getter();
    v46 = v45;
    if (v45 >> 62)
    {
      v43 = v45;
      v110 = _CocoaArrayWrapper.endIndex.getter();
      v46 = v43;
      v47 = v110;
      if (v110)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_27:
        if (v47 >= 1)
        {
          v141 = a5;
          v142 = a6;
          v48 = v46;
          ObjectType = swift_getObjectType();
          v49 = 0;
          v151 = (v48 & 0xC000000000000001);
          v50 = (v44 + 56);
          v51 = 0.0;
          v158 = (v44 + 32);
          v52 = (v44 + 48);
          v150 = (v44 + 16);
          v53 = (v44 + 8);
          v154 = v48;
          v153 = v47;
          do
          {
            if (v151)
            {
              specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
            }

            if (ProductMediaItem.screenshot.getter())
            {
              Artwork.size.getter();
              v57 = v161;
              AspectRatio.init(_:_:)();

              v58 = *v50;
              (*v50)(v57, 0, 1, v17);
              v59 = v162;
              (*v158)();
              v58(v59, 0, 1, v17);
            }

            else
            {
              v60 = *v50;
              v61 = 1;
              (*v50)(v161, 1, 1, v17);
              if (ProductMediaItem.video.getter())
              {
                Video.preview.getter();

                Artwork.size.getter();
                v59 = v162;
                AspectRatio.init(_:_:)();

                v61 = 0;
              }

              else
              {
                v59 = v162;
              }

              v60(v59, v61, 1, v17);
              v62 = (*v52)(v161, 1, v17);
              v23 = v163;
              if (v62 != 1)
              {
                sub_10002B894(v161, &unk_1009732A0);
              }
            }

            v63 = MediaPlatform.isPhonePlatform.getter();
            v64 = v59;
            v65 = v156;
            sub_1000727A0(v64, v156);
            v66 = *v52;
            if ((*v52)(v65, 1, v17) == 1)
            {
              AspectRatio.init(_:_:)();
              if (v66(v65, 1, v17) != 1)
              {
                sub_10002B894(v65, &unk_1009732A0);
              }
            }

            else
            {
              (*v158)(v164, v65, v17);
            }

            v67 = v157;
            if ((v155 & v63) != 0)
            {
              v68 = v164;
              if (AspectRatio.isPortrait.getter())
              {
                (*v150)(v23, v68, v17);
              }

              else
              {
                AspectRatio.inverted.getter();
              }

              v69 = 1;
            }

            else
            {
              (*v150)(v23, v164, v17);
              v69 = AspectRatio.isPortrait.getter();
            }

            v70 = [v67 traitCollection];
            v71 = UITraitCollection.isRegularPad.getter();

            if (v71)
            {
              if (v149 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v72 = 4.0;
                v73 = 2.0;
                v23 = v163;
                if (v85 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v86 < a7)
                  {
                    v72 = 5.0;
                  }

                  else
                  {
                    v72 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v72 = 5.0;
                v73 = 2.0;
                v23 = v163;
                if (v74 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v75 < a7)
                  {
                    v72 = 6.0;
                  }

                  else
                  {
                    v72 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v69)
              {
                v73 = 2.0;
              }

              else
              {
                v73 = 1.0;
              }

              if (v69)
              {
                v72 = 3.0;
              }

              else
              {
                v72 = 1.0;
              }

              v23 = v163;
            }

            [v67 pageMarginInsets];
            v77 = v76;
            [v67 pageMarginInsets];
            v79 = v77 + v78;
            PageTraitEnvironment.pageColumnMargin.getter();
            v81 = (v73 + -1.0) * v80 + v73 / v72 * (v159 - (v79 + (v72 + -1.0) * v80));
            v82 = [v67 traitCollection];
            v83 = UITraitCollection.isRegularPad.getter();

            if ((v83 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v81 < v84))
            {
              AspectRatio.height(fromWidth:)();
            }

            ++v49;
            AspectRatio.height(fromWidth:)();
            v55 = v54;

            v56 = *v53;
            (*v53)(v23, v17);
            v56(v164, v17);
            sub_10002B894(v162, &unk_1009732A0);
            if (v55 > v51)
            {
              v51 = v55;
            }
          }

          while (v153 != v49);

          v15 = v148;
          a6 = v142;
          a5 = v141;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v51 = 0.0;
    goto LABEL_110;
  }

  v87 = v150;
  MediaPlatform.appPlatform.getter();
  v88 = v141;
  v89 = v142;
  v90 = (*(*&v141 + 88))(v87, COERCE_DOUBLE(*&v142));
  v43 = ObjectType;
  v37 = v151;
  if (v90 == enum case for AppPlatform.phone(_:) || v90 == enum case for AppPlatform.pad(_:) || v90 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v90 == enum case for AppPlatform.watch(_:))
  {
    if (qword_10096EB48 == -1)
    {
LABEL_86:
      v92 = sub_1000056A8(v17, qword_1009D2FD0);
      (*(v44 + 16))(v37, v92, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v90 == enum case for AppPlatform.tv(_:) || v90 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    AspectRatio.init(_:_:)();
    goto LABEL_78;
  }

  AspectRatio.init(_:_:)();
  (*(*&v88 + 8))(v150, COERCE_DOUBLE(*&v89));
LABEL_78:
  if (MediaPlatform.isPhonePlatform.getter() & 1) != 0 && (AspectRatio.isPortrait.getter())
  {
    if (AspectRatio.isPortrait.getter())
    {
      (*(v44 + 16))(v43, v37, v17);
    }

    else
    {
      AspectRatio.inverted.getter();
    }

    v91 = 1;
  }

  else
  {
    (*(v44 + 16))(v43, v37, v17);
    v91 = AspectRatio.isPortrait.getter();
  }

  swift_getObjectType();
  v93 = [a4 traitCollection];
  v94 = UITraitCollection.isRegularPad.getter();

  if (v94)
  {
    v95 = sub_1001B2D90(a7, v149);
    v97 = v96;
  }

  else
  {
    if (v91)
    {
      v95 = 2.0;
    }

    else
    {
      v95 = 1.0;
    }

    if (v91)
    {
      v97 = 3.0;
    }

    else
    {
      v97 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v99 = v98;
  [a4 pageMarginInsets];
  v101 = v99 + v100;
  PageTraitEnvironment.pageColumnMargin.getter();
  v103 = (v95 + -1.0) * v102 + v95 / v97 * (v159 - (v101 + (v97 + -1.0) * v102));
  v104 = [a4 traitCollection];
  v105 = UITraitCollection.isRegularPad.getter();

  v106 = ObjectType;
  if ((v105 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), AspectRatio.width(fromHeight:)(), v103 < v107))
  {
    AspectRatio.height(fromWidth:)();
  }

  AspectRatio.height(fromWidth:)();
  v51 = v108;
  v109 = *(v44 + 8);
  v109(v106, v17);
  v109(v151, v17);
LABEL_110:
  sub_10002849C(&unk_1009856C0);
  inited = swift_initStackObject();
  v164 = xmmword_1007B10D0;
  *(inited + 16) = xmmword_1007B10D0;
  *(inited + 32) = v51;
  v165 = inited;
  v112 = v143;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_1007B1E00;
    if (qword_10096E968 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C730, qword_10098C748);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v115 = v114;
    v116 = *(v146 + 8);
    v116(v15, v112);
    *(v113 + 32) = v115;
    *(v113 + 40) = a5;
    if (qword_10096E978 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_10098C780, qword_10098C798);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v118 = v117;
    v116(v15, v112);
    *(v113 + 48) = v118;
    sub_100394464(v113);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v119 = swift_initStackObject();
    *(v119 + 16) = xmmword_1007B1890;
    *(v119 + 32) = a6;
    if (qword_10096E980 != -1)
    {
      swift_once();
    }

    sub_10002A400(qword_1009D2A00, qword_1009D2A18);
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v121 = v120;
    (*(v146 + 8))(v15, v112);
    *(v119 + 40) = v121;
    sub_100394464(v119);
  }

  v122 = swift_initStackObject();
  *(v122 + 16) = v164;
  if (qword_10096E970 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_10098C758, qword_10098C770);
  swift_getObjectType();
  v123 = v148;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  v125 = v124;
  (*(v146 + 8))(v123, v112);
  *(v122 + 32) = v125;
  sub_100394464(v122);
  v126 = swift_initStackObject();
  *(v126 + 16) = xmmword_1007B1890;
  v127 = 0.0;
  v128 = 0.0;
  if (v144)
  {
    type metadata accessor for DividerView(0);
    if (qword_10096EE48 != -1)
    {
      swift_once();
    }

    v129 = type metadata accessor for DividerView.Style(0);
    sub_1000056A8(v129, qword_1009D36D8);
    v128 = sub_1006DA268();
  }

  *(v126 + 32) = v128;
  if (v145)
  {
    type metadata accessor for DividerView(0);
    if (qword_10096EE48 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for DividerView.Style(0);
    sub_1000056A8(v130, qword_1009D36D8);
    v127 = sub_1006DA268();
  }

  *(v126 + 40) = v127;
  sub_100394464(v126);
  v131 = *(v165 + 16);
  if (!v131)
  {
    v132 = v147;
    goto LABEL_139;
  }

  v132 = v147;
  if (v131 <= 3)
  {
    v133 = 0;
    v134 = 0.0;
LABEL_137:
    v137 = v131 - v133;
    v138 = (v165 + 8 * v133 + 32);
    do
    {
      v139 = *v138++;
      v134 = v134 + v139;
      --v137;
    }

    while (v137);
    goto LABEL_139;
  }

  v133 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  v135 = (v165 + 48);
  v134 = 0.0;
  v136 = v131 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v134 = v134 + *(v135 - 2) + *(v135 - 1) + *v135 + v135[1];
    v135 += 4;
    v136 -= 4;
  }

  while (v136);
  if (v131 != v133)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_10057D918(v132, type metadata accessor for ScreenshotDisplayConfiguration);

  return v159;
}