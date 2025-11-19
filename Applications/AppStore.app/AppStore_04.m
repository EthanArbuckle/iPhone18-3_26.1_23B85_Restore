__n128 sub_1000677B0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000677C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10006780C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_10006786C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  sub_10002A400((v4 + 64), *(v4 + 88));
  dispatch thunk of Placeable.measure(toFit:with:)();
  v10 = v9;
  v12 = v11;
  v14 = v13 + 4.0;
  v31.origin.x = a1;
  v31.origin.y = a2;
  v31.size.width = a3;
  v31.size.height = a4;
  MinX = CGRectGetMinX(v31);
  sub_100067E04(v4, v29);
  sub_10002A400(v29, v30);
  AnyDimension.value(with:)();
  v16 = v15;
  sub_100007000(v29);
  v32.origin.y = v16 - v12;
  v32.origin.x = MinX;
  v32.size.width = v14;
  v32.size.height = v10;
  v17 = CGRectGetMaxX(v32) + *(v4 + 40);
  sub_10002A400((v4 + 104), *(v4 + 128));
  v33.origin.x = a1;
  v33.origin.y = a2;
  v33.size.width = a3;
  v33.size.height = a4;
  CGRectGetWidth(v33);
  v34.origin.x = a1;
  v34.origin.y = a2;
  v34.size.width = a3;
  v34.size.height = a4;
  CGRectGetHeight(v34);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_100067E04(v4, v29);
  sub_10002A400(v29, v30);
  AnyDimension.value(with:)();
  v25 = v24;
  sub_100007000(v29);
  v35.origin.x = v17;
  v35.origin.y = v25 - v23;
  v35.size.width = v19;
  v35.size.height = v21;
  CGRectGetMaxX(v35);
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  CGRectGetWidth(v36);
  v37.origin.x = a1;
  v37.origin.y = a2;
  v37.size.width = a3;
  v37.size.height = a4;
  CGRectGetWidth(v37);
  sub_10002A400((v4 + 144), *(v4 + 168));
  v38.origin.x = a1;
  v38.origin.y = a2;
  v38.size.width = a3;
  v38.size.height = a4;
  CGRectGetHeight(v38);
  dispatch thunk of Placeable.measure(toFit:with:)();
  sub_100067E04(v4, v29);
  sub_10002A400(v29, v30);
  AnyDimension.value(with:)();
  sub_100007000(v29);
  sub_10002A400((v4 + 64), *(v4 + 88));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v4 + 104), *(v4 + 128));
  CGRect.withLayoutDirection(using:relativeTo:)();
  dispatch thunk of Placeable.place(at:with:)();
  sub_10002A400((v4 + 144), *(v4 + 168));
  CGRect.withLayoutDirection(using:relativeTo:)();
  return dispatch thunk of Placeable.place(at:with:)();
}

double sub_100067C1C(double a1)
{
  sub_100067E04(v1, v4);
  sub_10002A400(v4, v4[3]);
  AnyDimension.value(with:)();
  sub_100007000(v4);
  return a1;
}

uint64_t sub_100067CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100067E3C();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100067D04()
{
  result = qword_1009717D0;
  if (!qword_1009717D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009717D0);
  }

  return result;
}

unint64_t sub_100067D5C()
{
  result = qword_1009717D8;
  if (!qword_1009717D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009717D8);
  }

  return result;
}

unint64_t sub_100067E3C()
{
  result = qword_1009717E0;
  if (!qword_1009717E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009717E0);
  }

  return result;
}

uint64_t sub_100067E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph);
  *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_objectGraph) = a3;

  sub_10057A438(v8);

  v9 = [a6 snapshotPageTraitEnvironment];
  *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_pageTraits) = v9;
  swift_unknownObjectRelease();
  v10 = *(v6 + OBJC_IVAR____TtC8AppStore30ProductMediaCollectionViewCell_flowLayout);
  [a6 pageMarginInsets];
  [v10 setSectionInset:?];

  return sub_10057A32C(v11);
}

uint64_t sub_100068030(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100068198(void *a1)
{
  v2 = v1;
  sub_1005F3D78(0);
  v4 = [a1 viewForKey:UITransitionContextFromViewKey];
  v5 = v4;
  if (v4)
  {
    [v4 frame];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v131 = v12;
  }

  else
  {
    v13 = [a1 containerView];
    [v13 bounds];
    v7 = v14;
    v9 = v15;
    v11 = v16;
    v131 = v17;
  }

  v18 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 traitCollection];

    v21 = [v20 horizontalSizeClass];
    if (v21 == 1)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = 0.25;
    }
  }

  else
  {
    v22 = 0.25;
  }

  v23 = *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCardView];
  v129 = v9;
  if (!v23 || (v24 = &v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toBounds], (v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toBounds + 32] & 1) != 0) || (v25 = &v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCenter], (v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCenter + 16] & 1) != 0))
  {
    v137.origin.x = v7;
    v137.origin.y = v9;
    v137.size.width = v11;
    v137.size.height = v131;
    v27 = v22 * CGRectGetWidth(v137);
    v138.origin.x = v7;
    v138.origin.y = v9;
    v138.size.width = v11;
    v138.size.height = v131;
    v28 = CGRectGetHeight(v138) * 0.25;
    v139.origin.x = v7;
    v139.origin.y = v9;
    v139.size.width = v11;
    v139.size.height = v131;
    v140 = CGRectInset(v139, v27, v28);
    width = v140.size.width;
    height = v140.size.height;
    v140.origin.x = v7;
    v140.origin.y = v9;
    v140.size.width = v11;
    v140.size.height = v131;
    MidX = CGRectGetMidX(v140);
    v141.origin.x = v7;
    v141.origin.y = v9;
    v141.size.width = v11;
    v141.size.height = v131;
    MidY = CGRectGetMidY(v141);
    v125 = 0.0;
    v126 = 0.0;
  }

  else
  {
    MidX = *v25;
    MidY = v25[1];
    width = v24[2];
    height = v24[3];
    v125 = *v24;
    v126 = v24[1];
  }

  v29 = *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCollectionViewController];
  v30 = 0.0;
  if (v29)
  {
    v31 = [*&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_toCollectionViewController] view];
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
    if (v31)
    {
      v35 = v31;
      [v31 bounds];
      v37 = v36;
      v39 = v38;
      v41 = v40;
      v42 = MidX;
      v44 = v43;
      v45 = [a1 containerView];
      v46 = v44;
      MidX = v42;
      [v35 convertRect:v45 toCoordinateSpace:{v37, v39, v41, v46}];
      v30 = v47;
      v34 = v48;

      v32 = v42 + v30;
      v33 = MidY + v34;
    }
  }

  else
  {
    v32 = MidX;
    v33 = MidY;
    v34 = 0.0;
  }

  v123 = v33;
  v124 = v32;
  v49 = *&v2[OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_detailPageViewController];
  if (v49)
  {
    v50 = [v49 view];
    if (!v50)
    {
      __break(1u);
      goto LABEL_71;
    }

    v51 = v50;
    [v50 transform];
    v121 = v134;
    v122 = aBlock;
    v120 = v135;

    aBlock = v122;
    v134 = v121;
    v135 = v120;
    [v23 setTransform:&aBlock];
  }

  v142.origin.x = v7;
  v142.origin.y = v129;
  v142.size.width = v11;
  v142.size.height = v131;
  v52 = CGRectGetMidX(v142);
  v143.origin.x = v7;
  v143.origin.y = v129;
  v53 = v11;
  v143.size.width = v11;
  v143.size.height = v131;
  v54 = CGRectGetMidY(v143);
  if (!v23)
  {
    goto LABEL_27;
  }

  v55 = v54;
  if (!v29)
  {
    v60 = v23;
    v59 = [a1 containerView];
    [v59 insertSubview:v60 below:v5];
    goto LABEL_26;
  }

  v56 = v29;
  v57 = v23;
  v58 = [v56 view];
  if (!v58)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v59 = v58;
  [v58 addSubview:v57];

LABEL_26:
  [v23 setHidden:0];
  [v23 setBounds:{0.0, 0.0, v53, v131}];
  [v23 setCenter:{v52 - v30, v55 - v34}];
  [v23 setNeedsLayout];
  [v23 layoutIfNeeded];
  [v23 setAlpha:0.0];

LABEL_27:
  v130 = [a1 viewForKey:{UITransitionContextToViewKey, v54, v120, v121, v122}];
  if (v130)
  {
    v61 = MidX;
    v62 = v130;
    v63 = [a1 containerView];
    [v63 bounds];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    [v62 setFrame:{v65, v67, v69, v71}];
    if (v23)
    {
      v72 = v23;
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v72];
    }

    else
    {
      v73 = [a1 containerView];
      [v73 insertSubview:v62 below:v5];
    }

    MidX = v61;
  }

  v74 = _swiftEmptyArrayStorage;
  v136 = _swiftEmptyArrayStorage;
  if (!UIAccessibilityIsReduceMotionEnabled())
  {
    v75 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:180.0 damping:22.0 initialVelocity:{0.0, 0.0}];
    v76 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v75 timingParameters:0.0];

    v77 = swift_allocObject();
    *(v77 + 16) = v2;
    *(v77 + 24) = v23;
    *(v77 + 32) = v125;
    *(v77 + 40) = v126;
    *(v77 + 48) = width;
    *(v77 + 56) = height;
    *(v77 + 64) = MidX;
    *(v77 + 72) = MidY;
    *(v77 + 80) = v5;
    *(v77 + 88) = v124;
    *(v77 + 96) = v123;
    *&v135 = sub_100069464;
    *(&v135 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_100007A08;
    *(&v134 + 1) = &unk_1008B2000;
    v78 = _Block_copy(&aBlock);
    v79 = v23;
    v80 = v2;
    v81 = v5;

    [v76 addAnimations:v78];
    _Block_release(v78);
    v82 = swift_allocObject();
    *(v82 + 16) = a1;
    *(v82 + 24) = v80;
    *&v135 = sub_100069480;
    *(&v135 + 1) = v82;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_10007FFE8;
    *(&v134 + 1) = &unk_1008B2050;
    v83 = _Block_copy(&aBlock);
    v84 = v80;
    swift_unknownObjectRetain();

    [v76 addCompletion:v83];
    _Block_release(v83);
    v85 = v76;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v74 = v136;
  }

  if (!v5)
  {
LABEL_39:
    if (!UIAccessibilityIsReduceMotionEnabled())
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v86 = v5;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

    goto LABEL_39;
  }

  v87 = swift_allocObject();
  *(v87 + 16) = v86;
  v88 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_1000694DC;
  *(&v135 + 1) = v87;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_100007A08;
  *(&v134 + 1) = &unk_1008B2190;
  v89 = _Block_copy(&aBlock);
  v90 = v86;

  v91 = [v88 initWithDuration:v89 controlPoint1:0.216 controlPoint2:0.33 animations:{0.0, 0.83, 0.83}];
  _Block_release(v89);
  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *&v135 = sub_1000694F0;
  *(&v135 + 1) = v92;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_10007FFE8;
  *(&v134 + 1) = &unk_1008B21E0;
  v93 = _Block_copy(&aBlock);
  v94 = v90;

  [v91 addCompletion:v93];
  _Block_release(v93);

  v95 = v91;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  v74 = v136;
  if (UIAccessibilityIsReduceMotionEnabled())
  {
LABEL_44:
    [v23 setBounds:{v125, v126, width, height}];
    [v23 setCenter:{MidX, MidY}];
    v96 = swift_allocObject();
    v96[2] = v2;
    v96[3] = v23;
    v96[4] = v5;
    v97 = objc_allocWithZone(UIViewPropertyAnimator);
    *&v135 = sub_1000694C4;
    *(&v135 + 1) = v96;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_100007A08;
    *(&v134 + 1) = &unk_1008B20F0;
    v98 = _Block_copy(&aBlock);
    v99 = v23;
    v100 = v2;
    v101 = v5;

    v102 = [v97 initWithDuration:0 curve:v98 animations:0.3];
    _Block_release(v98);
    v103 = swift_allocObject();
    v103[2] = v5;
    v103[3] = a1;
    v103[4] = v100;
    *&v135 = sub_1000694D0;
    *(&v135 + 1) = v103;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v134 = sub_10007FFE8;
    *(&v134 + 1) = &unk_1008B2140;
    v104 = _Block_copy(&aBlock);
    v105 = v100;
    v106 = v101;
    swift_unknownObjectRetain();

    [v102 addCompletion:v104];
    _Block_release(v104);
    v107 = v102;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v74 = v136;
  }

LABEL_47:
  if (v74 >> 62)
  {
    goto LABEL_59;
  }

  for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v109 = 0;
    while (1)
    {
      if ((v74 & 0xC000000000000001) != 0)
      {
        v110 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v109 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v110 = *(v74 + 8 * v109 + 32);
      }

      v111 = v110;
      v112 = v109 + 1;
      if (__OFADD__(v109, 1))
      {
        break;
      }

      [v110 startAnimation];

      ++v109;
      if (v112 == i)
      {
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

LABEL_60:
  if (!v23)
  {
    goto LABEL_68;
  }

  v113 = v23;
  if (UIAccessibilityIsReduceMotionEnabled())
  {

LABEL_69:

    return;
  }

  v114 = swift_allocObject();
  *(v114 + 16) = v113;
  v115 = objc_allocWithZone(UIViewPropertyAnimator);
  *&v135 = sub_10006038C;
  *(&v135 + 1) = v114;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v134 = sub_100007A08;
  *(&v134 + 1) = &unk_1008B20A0;
  v116 = _Block_copy(&aBlock);
  v117 = v113;

  v118 = [v115 initWithDuration:v116 controlPoint1:0.13 controlPoint2:0.17 animations:{0.0, 0.67, 1.0}];
  _Block_release(v116);

  if (!v118)
  {
LABEL_68:

    goto LABEL_69;
  }

  [v118 startAnimationAfterDelay:0.083];
  v119 = v118;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

id sub_10006909C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, void *a10, void *a11)
{
  sub_1005F3D78(1);
  [a10 setBounds:{a1, a2, a3, a4}];
  [a10 setCenter:{a5, a6}];
  if (a10)
  {
    v22[0] = 0x3FF0000000000000;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = 0x3FF0000000000000;
    v22[4] = 0;
    v22[5] = 0;
    [a10 setTransform:v22];
  }

  [a11 setBounds:{a1, a2, a3, a4}];
  return [a11 setCenter:{a7, a8}];
}

id sub_1000691AC(uint64_t a1, void *a2, void *a3)
{
  v6 = OBJC_IVAR____TtC8AppStore27AnimatedTransitionWithTasks_tasks;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  v9 = *(v8 + 16);
  if (v9)
  {

    v10 = (v8 + 48);
    v11 = (v8 + 48);
    do
    {
      v12 = *v11;
      v11 += 24;
      if (v12 == 1)
      {
        v13 = *(v10 - 2);

        v13(1, 1);
      }

      v10 = v11;
      --v9;
    }

    while (v9);
  }

  if (a2)
  {
    [a2 setAlpha:1.0];
    v14[0] = 0x3FF0000000000000;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = 0x3FF0000000000000;
    v14[4] = 0;
    v14[5] = 0;
    result = [a2 setTransform:v14];
  }

  if (a3)
  {
    return [a3 setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1000692C8(uint64_t result, id a2, id a3)
{
  if (!result)
  {
    v8 = v3;
    if (a2)
    {
      v7 = a3;
      [a2 setHidden:1];
      a3 = v7;
    }

    [a3 completeTransition:{1, v4, v8, v5, v6}];
    return sub_1005F3D78(2);
  }

  return result;
}

void sub_100069360()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore36AppPromotionDetailPageCloseAnimation_detailPageViewController);
}

id sub_1000693B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppPromotionDetailPageCloseAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100069480(uint64_t result)
{
  if (!result)
  {
    [*(v1 + 16) completeTransition:1];
    return sub_1005F3D78(2);
  }

  return result;
}

id sub_1000694F0(id result)
{
  if (!result)
  {
    return [*(v1 + 16) setHidden:1];
  }

  return result;
}

char *sub_10006953C(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_1009718F0) = 0;
  v5 = qword_1009718F8;
  type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v2 + v5) = v6;

  v7 = sub_1003B80F0(a1, a2);
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    sub_10002849C(&qword_10097B110);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007B10D0;
    *(v10 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100005744(0, &qword_100978E50);
    UIView.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    v11 = ReviewsDiffablePagePresenter.trailingNavBarAction.getter();
    if (v11)
    {
      v12 = v11;
      v13 = [v7 navigationItem];
      sub_100005744(0, &qword_100983870);

      v14 = Action.title.getter();
      v16 = v15;
      v22 = 0u;
      v23 = 0u;

      v24.is_nil = sub_10006C080(v12, a1, 0, &v22);
      v17.value._countAndFlagsBits = v14;
      v17.value._object = v16;
      v24.value.super.isa = 0;
      v25.value.super.super.isa = 0;
      isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v17, v24, v25, v26).super.super.isa;
      [v13 setRightBarButtonItem:{isa, v22, v23}];
    }

    v19 = v7;
    ReviewsDiffablePagePresenter.title.getter();
    v20 = String._bridgeToObjectiveC()();

    [v19 setTitle:v20];

    v19[OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_prefersLargeTitle] = 1;
    v21 = [v19 navigationItem];
    [v21 setLargeTitleDisplayMode:3];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000697FC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&qword_100971EB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for ItemLayoutContext();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  result = objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v13);
  v17 = qword_1009718F0;
  if ((*(v1 + qword_1009718F0) & 1) == 0)
  {
    sub_100069AB4(v6);
    v18 = sub_10002849C(&qword_100971EB8);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      result = sub_10002B894(v6, &qword_100971EB0);
    }

    else
    {
      v19 = *(v18 + 48);
      (*(v12 + 32))(v15, v6, v11);
      (*(v8 + 32))(v10, &v6[v19], v7);
      sub_10006A860(v15);
      (*(v8 + 8))(v10, v7);
      result = (*(v12 + 8))(v15, v11);
    }
  }

  *(v1 + v17) = 1;
  return result;
}

uint64_t sub_100069AB4@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v91 = type metadata accessor for ProductReview.ReviewSource();
  v64 = *(v91 - 8);
  __chkstk_darwin(v91);
  v74 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ItemLayoutContext.Metadata();
  v82 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for ItemLayoutContext();
  v66 = *(v89 - 8);
  __chkstk_darwin(v89);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for IndexPath();
  v65 = *(v87 - 8);
  __chkstk_darwin(v87);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10002849C(&unk_1009731D0);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v61 - v7;
  v93 = sub_10002849C(&qword_100971ED0);
  v83 = *(v93 - 8);
  __chkstk_darwin(v93);
  v72 = (&v61 - v8);
  v9 = sub_10002849C(&qword_100971ED8);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v92 = sub_10002849C(&unk_1009731F0);
  v15 = *(v92 - 8);
  __chkstk_darwin(v92);
  v17 = &v61 - v16;
  v18 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v21 = type metadata accessor for ShelfLayoutContext();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v90 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  ReviewsDiffablePagePresenter.initialFocusedReviewId.getter();
  if (!*(&v95 + 1))
  {
    sub_10002B894(&v94, &qword_10096FB90);
    goto LABEL_24;
  }

  v97[0] = v94;
  v97[1] = v95;
  v98 = v96;
  sub_10006B97C(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_10003D614(v97);
    sub_10002B894(v20, &qword_10097F480);
    goto LABEL_24;
  }

  v25 = v90;
  (*(v22 + 32))(v90, v20, v21);
  v26 = qword_10097F2F8;
  swift_beginAccess();
  v27 = *(v24 + v26);
  if (!v27)
  {
    (*(v22 + 8))(v25, v21);
    sub_10003D614(v97);
    swift_endAccess();
    goto LABEL_24;
  }

  v61 = v22;
  v62 = v21;
  swift_endAccess();
  v28 = v27;
  v29 = v25;
  ShelfLayoutContext.shelf.getter();
  v30 = dispatch thunk of ModelMappedDiffableDataSource.itemModels(in:)();

  result = (*(v15 + 8))(v17, v92);
  if (!v30)
  {
    (*(v61 + 8))(v29, v62);
    sub_10003D614(v97);
LABEL_24:
    v57 = v71;
    v54 = sub_10002849C(&qword_100971EB8);
    v55 = *(*(v54 - 8) + 56);
    v56 = v57;
    return v55(v56, 1, 1, v54);
  }

  v85 = v14;
  v92 = v5;
  v32 = 0;
  v68 = v30;
  v33 = *(v30 + 16);
  v67 = v73 + 16;
  v34 = v83;
  v83 += 6;
  v84 = (v34 + 7);
  v81 = (v73 + 32);
  v80 = v82 + 1;
  v70 = (v64 + 11);
  v69 = enum case for ProductReview.ReviewSource.user(_:);
  v79 = (v66 + 8);
  v78 = (v65 + 8);
  v82 = (v73 + 8);
  v63 = (v64 + 1);
  v64 += 12;
  v35 = v77;
  v36 = v76;
  v37 = v75;
LABEL_9:
  v38 = v93;
  if (v32 == v33)
  {
LABEL_10:
    v39 = 1;
    v32 = v33;
    goto LABEL_14;
  }

  while ((v32 & 0x8000000000000000) == 0)
  {
    if (v32 >= *(v68 + 16))
    {
      goto LABEL_29;
    }

    v40 = v73;
    v41 = v68 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v32;
    v42 = *(v38 + 48);
    v43 = v72;
    *v72 = v32;
    (*(v40 + 16))(&v43[v42], v41, v36);
    v44 = v43;
    v38 = v93;
    sub_1000476A0(v44, v11, &qword_100971ED0);
    v39 = 0;
    ++v32;
LABEL_14:
    (*v84)(v11, v39, 1, v38);
    v45 = v85;
    sub_1000476A0(v11, v85, &qword_100971ED8);
    if ((*v83)(v45, 1, v38) == 1)
    {

      (*(v61 + 8))(v90, v62);
      sub_10003D614(v97);
      v54 = sub_10002849C(&qword_100971EB8);
      v55 = *(*(v54 - 8) + 56);
      v56 = v71;
      return v55(v56, 1, 1, v54);
    }

    v46 = v11;
    (*v81)(v37, v45 + *(v38 + 48), v36);
    ShelfLayoutContext.index.getter();
    IndexPath.init(item:section:)();
    v47 = v86;
    ItemLayoutContext.Metadata.init()();
    v48 = v35;
    v49 = v92;
    ShelfLayoutContext.itemLayoutContext(for:at:metadata:)();
    (*v80)(v47, v88);
    type metadata accessor for ProductReview();
    sub_10006C36C(&qword_100971EE0, &type metadata accessor for ProductReview);
    ItemLayoutContext.typedModel<A>(as:)();
    if (!v94)
    {
      (*v79)(v49, v89);
      (*v78)(v48, v87);
      result = (*v82)(v37, v36);
      v35 = v48;
      v11 = v46;
      goto LABEL_9;
    }

    v50 = v74;
    ProductReview.source.getter();
    v51 = (*v70)(v50, v91);
    if (v51 != v69)
    {

      (*v79)(v92, v89);
      v35 = v77;
      (*v78)(v77, v87);
      v37 = v75;
      v36 = v76;
      (*v82)(v75, v76);
      result = (*v63)(v50, v91);
      v11 = v46;
      goto LABEL_9;
    }

    v52 = v89;
    (*v64)(v50, v91);
    Review.id.getter();
    v53 = static AnyHashable.== infix(_:_:)();

    sub_10003D614(&v94);
    v37 = v75;
    v36 = v76;
    (*v82)(v75, v76);
    v35 = v77;
    v38 = v93;
    if (v53)
    {

      (*(v61 + 8))(v90, v62);
      sub_10003D614(v97);
      v58 = sub_10002849C(&qword_100971EB8);
      v59 = *(v58 + 48);
      v60 = v71;
      (*(v65 + 32))(v71, v35, v87);
      (*(v66 + 32))(v60 + v59, v92, v52);
      return (*(*(v58 - 8) + 56))(v60, 0, 1, v58);
    }

    (*v79)(v92, v52);
    result = (*v78)(v35, v87);
    v11 = v46;
    if (v32 == v33)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_10006A860(uint64_t a1)
{
  v15[0] = a1;
  v2 = sub_10002849C(&unk_1009731D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_10002849C(&unk_10097DAF0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10002849C(&qword_100971EC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_10006C318();
  WritableStateLens<A>.updateValue(_:)();
  ItemLayoutContext.item.getter();
  type metadata accessor for ReviewsDiffablePagePresenter();
  sub_10006C36C(&qword_100971E80, &type metadata accessor for ReviewsDiffablePagePresenter);
  ReloadableItemPagePresenter.reloadItem(_:)();
  (*(v3 + 8))(v5, v2);
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    [v12 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_10006AB3C(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000697FC(a3);
}

uint64_t sub_10006AB90(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100971EA8);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:) || (ReviewsDiffablePagePresenter.isUpdatingSortOption.getter() & 1) == 0)
  {
    sub_100726ED4(a1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_10006ACD8(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1006D1458;
  v14 = &unk_1008B2230;
  v7 = _Block_copy(&v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_10006C310;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1006D1458;
  v14 = &unk_1008B2280;
  v9 = _Block_copy(&v11);
  v10 = v3;

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_10006AE50(int a1, id a2)
{
  v2 = [a2 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_10006AEB0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_10006ACD8(a5, a2, a3);
  swift_unknownObjectRelease();
}

unint64_t sub_10006AF30@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1009CF3E0);
  type metadata accessor for PageGridCache();
  swift_allocObject();

  v4 = PageGridCache.init()();
  swift_allocObject();
  v5 = PageGridCache.init()();
  a1[3] = &type metadata for ReviewsPageGridProvider;
  result = sub_10006C2BC();
  a1[4] = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v3;
  return result;
}

uint64_t sub_10006AFD4@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_10006C36C(&qword_100971E78, type metadata accessor for ReviewsDiffablePageViewController);
  v2 = ShelfBasedCollectionViewController.shelfSupplementaryProvider.getter();
  v19[3] = swift_getObjectType();
  v19[0] = v2;
  v3 = ShelfBasedCollectionViewController.collectionElementsObserver.getter();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  sub_1000073E8(v19, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v18)
  {
    v14 = v18;
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
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_1000073E8(v20, v17);
  sub_100056164(v17, v16);
  sub_10002849C(&unk_10097F4D0);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_100034090(0, *(v4 + 2) + 1, 1, v4);
    }

    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    v9 = v15;
    if (v8 >= v7 >> 1)
    {
      v13 = sub_100034090((v7 > 1), v8 + 1, 1, v4);
      v9 = v15;
      v4 = v13;
    }

    *(v4 + 2) = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  v10 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_10002C0AC(v17, v16);

  v11 = BasePageLayoutSectionProvider.init(componentTypeMappingProvider:visibleItemsObserverProviders:componentHeightCache:)();
  result = sub_100007000(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

uint64_t sub_10006B2D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29StoreCollectionViewController_objectGraph);
  type metadata accessor for ReviewsPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v3 = sub_10006C36C(&qword_100971E88, &type metadata accessor for ReviewsDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_10006C36C(&qword_100971E98, type metadata accessor for ReviewsPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_10006B3EC()
{
  v1 = v0;
  swift_getObjectType();
  sub_100739444();
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
  sub_10006C36C(&qword_100971E78, type metadata accessor for ReviewsDiffablePageViewController);

  ShelfBasedCollectionViewController.shelfComponentTypeMappingProvider.getter();
  sub_10006C36C(&qword_100971E80, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_10006C36C(&qword_100971E88, &type metadata accessor for ReviewsDiffablePagePresenter);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + qword_100973FD8) = 0;
  swift_unknownObjectWeakAssign();
  sub_10002C0AC(v9, v4 + qword_100973FD0);

  v5 = SelectionHandlerCollectionElementsObserver.init(presenter:componentHeightCache:)();
  sub_100007000(v9);
  *(v3 + 32) = v5;
  *(v3 + 40) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  v6 = *(v1 + qword_1009718F8);
  v7 = sub_10006C36C(&qword_100971E90, type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  CompoundCollectionElementsObserver.addChildren(_:)(v3);

  return v2;
}

void sub_10006B714()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.modifyingTraits(_:)();

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    if (qword_10096ED80 != -1)
    {
      swift_once();
    }

    v6 = [qword_1009D3458 resolvedColorWithTraitCollection:v3];
    [v5 setBackgroundColor:v6];

    *(*&v1[qword_1009718F8] + 16) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006B83C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v3 = [v4 traitCollection];
    [v3 userInterfaceLevel];

    sub_100047650(a1, *(a1 + 24));
    UIMutableTraits.userInterfaceLevel.setter();
  }
}

void sub_10006B8E4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    *(*&v0[qword_1009718F8] + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_10006B97C(char *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Shelf.ContentType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v32 - v8;
  v45 = sub_10002849C(&unk_1009731F0);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - v10;
  v11 = sub_10002849C(&qword_10097F480);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for ShelfLayoutContext();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_10097F2F8;
  swift_beginAccess();
  v18 = *&v2[v17];
  if (!v18)
  {
    v30 = 1;
    goto LABEL_19;
  }

  v43 = v4;
  v46 = v14;
  v19 = v18;
  v20 = [v2 collectionView];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = v20;
  v22 = dispatch thunk of UICollectionViewDiffableDataSource.numberOfSections(in:)();

  if (v22 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  if (!v22)
  {
    v30 = 1;
    v14 = v46;
    goto LABEL_19;
  }

  v34 = a1;
  v23 = v15;
  v24 = (v15 + 48);
  v42 = (v23 + 32);
  v40 = (v9 + 8);
  v39 = enum case for Shelf.ContentType.productReview(_:);
  v38 = (v5 + 104);
  v41 = (v5 + 8);
  v33 = v23;
  v35 = (v23 + 8);
  sub_10006C36C(&qword_100971E78, type metadata accessor for ReviewsDiffablePageViewController);
  v25 = 0;
  v14 = v46;
  v37 = v22;
  while (1)
  {
    ShelfBasedCollectionViewController.shelfLayoutContext(for:)();
    if ((*v24)(v13, 1, v14) == 1)
    {
      sub_10002B894(v13, &qword_10097F480);
      goto LABEL_7;
    }

    v36 = *v42;
    v36(v48, v13, v14);
    v26 = v44;
    ShelfLayoutContext.shelf.getter();
    swift_getKeyPath();
    v27 = v45;
    ReadOnlyLens.subscript.getter();

    (*v40)(v26, v27);
    v28 = v43;
    (*v38)(v51, v39, v43);
    sub_10006C36C(&qword_100971EE8, &type metadata accessor for Shelf.ContentType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v54 == v52 && v55 == v53)
    {
      break;
    }

    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29 = *v41;
    (*v41)(v51, v28);
    v29(v50, v28);

    v22 = v37;
    if (v47)
    {
      goto LABEL_17;
    }

    v14 = v46;
    (*v35)(v48, v46);
LABEL_7:
    if (v22 == ++v25)
    {
      v30 = 1;
      a1 = v34;
      goto LABEL_18;
    }
  }

  v31 = *v41;
  (*v41)(v51, v28);
  v31(v50, v28);

LABEL_17:
  a1 = v34;
  v14 = v46;
  v36(v34, v48, v46);
  v30 = 0;
LABEL_18:
  v15 = v33;
LABEL_19:
  (*(v15 + 56))(a1, v30, 1, v14);
}

uint64_t type metadata accessor for ReviewsDiffablePageViewController()
{
  result = qword_100971928;
  if (!qword_100971928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006C080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Action.title.getter();
  if (v7)
  {
    v8 = Action.artwork.getter();
    if (v8)
    {
      v9 = v8;
      if (dispatch thunk of Artwork.isSystemImage.getter())
      {
        static SystemImage.load(artwork:with:includePrivateImages:)();
      }

      else if (dispatch thunk of Artwork.isBundleImage.getter())
      {
        sub_100330100(v9, 0);
      }
    }

    sub_100005744(0, &qword_10097CD40);
    sub_10006C234(a4, v14);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = &protocol witness table for ReviewsDiffablePagePresenter;
    *(v11 + 32) = a1;
    v12 = v14[1];
    *(v11 + 40) = v14[0];
    *(v11 + 56) = v12;
    v10 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_10002B894(a4, &unk_1009711D0);
  }

  else
  {
    sub_10002B894(a4, &unk_1009711D0);

    return 0;
  }

  return v10;
}

uint64_t sub_10006C234(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009711D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006C2BC()
{
  result = qword_100971EA0;
  if (!qword_100971EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100971EA0);
  }

  return result;
}

unint64_t sub_10006C318()
{
  result = qword_100971EC8;
  if (!qword_100971EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100971EC8);
  }

  return result;
}

uint64_t sub_10006C36C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10006C3BC()
{
  v1 = *(v0 + 32);
  [v1 _systemContentInset];
  v3 = v2;
  [v1 contentOffset];
  v5 = v4;
  [v1 contentInset];
  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1001125E8(Strong);
  v10 = v9;

  v11 = *(v0 + 40);
  if (v11)
  {
    v12 = fmin((v3 + v5 + v7) / (v10 - v3), 1.0);
    if (v12 < 0.0)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v12;
    }

    v11(v14, v13, 0.0);
    sub_10001F63C(v11);
  }

  sub_10006C4B8(v1);
}

void sub_10006C4B8(void *a1)
{
  v2 = v1;
  [a1 _systemContentInset];
  v5 = v4;
  [a1 contentOffset];
  v7 = v6;
  [a1 contentInset];
  v9 = v5 + v7 + v8;
  [a1 frame];
  v10 = v2[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100112824(Strong);
  v13 = v12;
  v15 = v14;

  if (v9 >= 0.0)
  {
    v16 = -v9;
    if (-v15 - *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset] > -v9)
    {
      v16 = -v15 - *&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset];
    }
  }

  else
  {
    v15 = fabs(v9) + v15;
    v16 = 0.0;
  }

  [v10 setFrame:{0.0, v16, v13, v15}];
  v17 = v9 * 0.28;
  if (v9 * 0.28 < 0.0)
  {
    v17 = 0.0;
  }

  v18 = *(*&v10[OBJC_IVAR____TtC8AppStore14UberHeaderView_contentView] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer);
  v19 = *&v18[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY];
  *&v18[OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_parallaxY] = v17;
  if (v17 != v19)
  {
    [v18 setNeedsLayout];
  }

  v20 = swift_unknownObjectWeakLoadStrong();
  sub_1001125E8(v20);
  v22 = v21;

  v23 = fmin(v9 / (v22 - v5), 1.0);
  if (v23 < 0.0)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v23;
  }

  v25 = v2[5];
  if (v25)
  {
    v26 = v2[4];

    v27 = [v26 _verticalVelocity];
    v25(v27, v24, v28);
    sub_10001F63C(v25);
  }

  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 navigationController];

    if (v31)
    {
      v32 = [v31 navigationBar];

      [v32 _setTitleOpacity:v24];
    }
  }
}

CGFloat sub_10006C73C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  [v2 _systemContentInset];
  v4 = v3;
  [v2 contentOffset];
  v6 = v5;
  [v2 contentInset];
  v8 = v4 + v6 + v7;
  [v2 frame];
  v9 = *(v1 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_100112824(Strong);
  v12 = v11;
  v14 = v13;

  if (v8 >= 0.0)
  {
    v15 = -v8;
    if (-v14 - *(v9 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset) > -v8)
    {
      v15 = -v14 - *(v9 + OBJC_IVAR____TtC8AppStore14UberHeaderView_reflectionOutset);
    }
  }

  else
  {
    v14 = fabs(v8) + v14;
    v15 = 0.0;
  }

  v16 = 0;
  v17 = v12;
  v18 = v14;
  return CGRectGetHeight(*(&v15 - 1)) - v4 - *(v9 + OBJC_IVAR____TtC8AppStore14UberHeaderView_contentBottomInset);
}

uint64_t sub_10006C860()
{
  swift_unknownObjectWeakDestroy();

  sub_10001F63C(*(v0 + 40));

  return swift_deallocClassInstance();
}

id sub_10006C904(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_offerLabel];
  result = [v5 text];
  if (!result)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v7 = result;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v8 != a1 || v10 != a2)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return result;
    }

LABEL_10:
    a2 = String._bridgeToObjectiveC()();
LABEL_12:
    [v5 setText:a2];

    v13 = [v5 text];
    if (v13)
    {
      v14 = v13;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v15 = static String.isNilOrEmpty(_:)();

    [v5 setHidden:v15 & 1];

    return [v2 setNeedsLayout];
  }
}

void sub_10006CAB8()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 _usesMinimumSafeAreas];

  v4 = [v0 view];
  v5 = v4;
  if (v3)
  {
    if (v4)
    {
      v6 = &selRef__minimumSafeAreaInsets;
LABEL_7:
      [v4 *v6];

      return;
    }

    goto LABEL_9;
  }

  if (v4)
  {
    v6 = &selRef_safeAreaInsets;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_10006CB94()
{
  type metadata accessor for GuidedSearchTokenCollection();
  v0 = sub_10006CD4C();
  v1 = dispatch thunk of Collection.count.getter();
  v2 = &_swiftEmptyArrayStorage;
  if (!v1)
  {
LABEL_6:
    sub_100557B44(v2);
  }

  v3 = v1;
  v19 = &_swiftEmptyArrayStorage;
  sub_100144248(0, v1 & ~(v1 >> 63), 0);
  v2 = &_swiftEmptyArrayStorage;
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v3 & 0x8000000000000000) == 0)
  {
    do
    {
      v5 = dispatch thunk of Collection.subscript.read();

      v5(v18, 0);
      v6 = GuidedSearchToken.leadingIconSymbolName.getter();
      v16 = v7;
      v17 = v6;
      v8 = GuidedSearchToken.displayName.getter();
      v15 = v9;
      v10 = GuidedSearchToken.isSelected.getter();

      v19 = v2;
      v11 = v0;
      v13 = *(v2 + 2);
      v12 = *(v2 + 3);
      if (v13 >= v12 >> 1)
      {
        sub_100144248((v12 > 1), v13 + 1, 1);
        v2 = v19;
      }

      *(v2 + 2) = v13 + 1;
      v14 = &v2[5 * v13];
      *(v14 + 4) = v17;
      *(v14 + 5) = v16;
      *(v14 + 6) = v8;
      *(v14 + 7) = v15;
      *(v14 + 64) = v10 & 1;
      dispatch thunk of Collection.formIndex(after:)();
      --v3;
      v0 = v11;
    }

    while (v3);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

unint64_t sub_10006CD4C()
{
  result = qword_100984530;
  if (!qword_100984530)
  {
    type metadata accessor for GuidedSearchTokenCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100984530);
  }

  return result;
}

uint64_t sub_10006CDA4(void *a1)
{
  if (*v1 != *a1 || (static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for BoolUserDefaultsDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v3 = *(result + 56) == v1[7] && *(result + 64) == v1[8];
  if (v3 || (v4 = result, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = v4, (v5)) && (*(result + 80) == v1[10] && *(result + 88) == v1[11] || (_stringCompareWithSmolCheck(_:_:expecting:)()))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_10006CEA0()
{
  AnyHashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(0);
  String.hash(into:)();
  Hasher._combine(_:)(0);
}

uint64_t sub_10006CF00()
{
}

uint64_t sub_10006CF30()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_10006CFBC(uint64_t a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] = 0;
  v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory] = 7;
  v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory] = 7;
  v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel] = 0;
  v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] = 0;
  v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 0;
  v6 = &v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_textAfterFontTransition];
  *v7 = 0;
  v7[1] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeOutDelay] = 0;
  *&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInDelay] = 0;
  type metadata accessor for DynamicTypeLabel();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] = v8;
  [v8 setContentMode:3];
  *&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fontForSizeCategory] = a1;
  *&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_defaultFont] = a2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for TodayTransitioningLabelView();
  v9 = a2;
  v10 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v12 = *&v10[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v13 = v10;
  v14 = [v12 layer];
  v15 = [v13 traitCollection];
  UITraitCollection.prefersRightToLeftLayouts.getter();

  [v14 setAnchorPoint:{0.0, 0.0}];
  [v13 addSubview:*&v10[v11]];
  sub_10002849C(&qword_10097B110);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007B10D0;
  *(v16 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v16 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B10D0;
  *(v17 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v17 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v13;
}

id sub_10006D300()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for TodayTransitioningLabelView();
  objc_msgSendSuper2(&v31, "layoutSubviews");
  if (v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory] != 4 || (v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange] & 1) != 0)
  {
    v1 = *&v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    [v0 bounds];
    [v1 setFrame:?];
    v2 = sub_10006D7D8();
    v3 = "setLineBreakMode:";
    if (v2)
    {
      v4 = v1;
      v5 = 4;
    }

    else
    {
      [v1 setLineBreakMode:0];
      v3 = "setLineBreakStrategy:";
      v4 = v1;
      v5 = 1;
    }

    return [v4 v3];
  }

  if (v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] == 1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v0;
    v9 = swift_allocObject();
    v10 = sub_10006F09C;
    *(v9 + 16) = sub_10006F09C;
    *(v9 + 24) = v8;
    v29 = sub_10006F258;
    v30 = v9;
    v25 = _NSConcreteStackBlock;
    v26 = 1107296256;
    v27 = sub_1000489A8;
    v28 = &unk_1008B2560;
    v11 = _Block_copy(&v25);
    v12 = v0;

    [v7 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] == 1)
  {
    if ((v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = v0;
      v15 = swift_allocObject();
      v16 = sub_10006F08C;
      *(v15 + 16) = sub_10006F08C;
      *(v15 + 24) = v14;
      v29 = sub_10006F094;
      v30 = v15;
      v25 = _NSConcreteStackBlock;
      v26 = 1107296256;
      v27 = sub_1000489A8;
      v28 = &unk_1008B24E8;
      v17 = _Block_copy(&v25);
      v18 = v0;

      [v13 performWithoutAnimation:v17];
      _Block_release(v17);
      LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

      if (v13)
      {
        __break(1u);
        return result;
      }

      v10 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v19 = *&v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    [v0 bounds];
    [v19 setFrame:?];
  }

  v10 = 0;
LABEL_16:
  v16 = 0;
LABEL_17:
  v20 = *&v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v21 = sub_10006D7D8();
  v22 = "setLineBreakMode:";
  if (v21)
  {
    v23 = v20;
    v24 = 4;
  }

  else
  {
    [v20 setLineBreakMode:0];
    v22 = "setLineBreakStrategy:";
    v23 = v20;
    v24 = 1;
  }

  [v23 v22];
  sub_10001F63C(v10);
  return sub_10001F63C(v16);
}

void sub_10006D718(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v3 = v1;
    [a1 bounds];
    [v3 setFrame:?];
  }
}

id sub_10006D7D8()
{
  result = [v0 text];
  if (result)
  {
    v2 = result;
    v3 = [v0 font];
    if (v3)
    {
      v4 = v3;
      sub_10002849C(&unk_100973960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B10D0;
      *(inited + 32) = NSFontAttributeName;
      *(inited + 64) = sub_1000367E8();
      *(inited + 40) = v4;
      v6 = NSFontAttributeName;
      v7 = sub_100397150(inited);
      swift_setDeallocating();
      sub_10005DC58(inited + 32);
      [v0 bounds];
      v9 = v8;
      if (v7)
      {
        type metadata accessor for Key(0);
        sub_10006F0F0();
        v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_7:
        [v2 boundingRectWithSize:1 options:v10.super.isa attributes:0 context:{v9, 1.79769313e308}];
        v13 = v12;

        [v0 bounds];
        return (v14 < v13);
      }
    }

    else
    {
      [v0 bounds];
      v9 = v11;
    }

    v10.super.isa = 0;
    goto LABEL_7;
  }

  return result;
}

void sub_10006D97C(unsigned __int8 a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  if (v4 == 7)
  {
    return;
  }

  if (a1 == 7)
  {
    goto LABEL_4;
  }

  switch(v4)
  {
    case 6:
      if (a1 != 6)
      {
        goto LABEL_4;
      }

      break;
    case 5:
      if (a1 != 5)
      {
        goto LABEL_4;
      }

      break;
    case 4:
      if (a1 == 4)
      {
        break;
      }

LABEL_4:
      v6 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fontForSizeCategory);
      if (*(v6 + 16) && (v7 = sub_1003D75B4(v4), (v8 & 1) != 0))
      {
        v9 = (*(v6 + 56) + 8 * v7);
      }

      else
      {
        v9 = (v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_defaultFont);
      }

      v10 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
      v26 = *v9;
      v11 = [v10 font];
      v12 = v11;
      if (v11)
      {
      }

      v13 = [v10 font];
      if (v13)
      {
        v14 = v13;
        sub_1000367E8();
        v15 = v26;
        v16 = static NSObject.== infix(_:_:)();
      }

      else
      {
        v16 = 0;
      }

      [objc_opt_self() inheritedAnimationDuration];
      if (a1 == 6 || a2 == 6 || (v12 == 0) | v16 & 1 || v17 <= 0.0)
      {
        v18 = 0;
      }

      else
      {
        v18 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) ^ 1;
      }

      sub_10006DC58(v26, v18 & 1);
      v19 = v26;
      goto LABEL_25;
    default:
      if ((a1 - 7) > 0xFCu || v4 != a1)
      {
        goto LABEL_4;
      }

      break;
  }

  v20 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  v21 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v19 = [v21 font];
  if (v19)
  {
LABEL_25:

    return;
  }

  v22 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fontForSizeCategory);
  if (*(v22 + 16))
  {
    v23 = sub_1003D75B4(v20);
    if (v24)
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      [v21 setFont:v25];
    }
  }
}

void sub_10006DC58(void *a1, char a2)
{
  if ((a2 & 1) != 0 && (v4 = *&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], (v5 = [v4 text]) != 0))
  {

    v6 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel;
    if (!*&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel] && (v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isAnimatingSizeCategoryChange] & 1) == 0)
    {
      v8 = sub_10006EEA8(v4);
      [v8 setAlpha:0.0];
      [v8 setFont:a1];
      [v8 setNumberOfLines:*&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines]];
      v9 = objc_opt_self();
      [v9 setAnimationsEnabled:0];
      v10 = [v8 layer];
      v11 = [v2 traitCollection];
      v12 = v2;
      UITraitCollection.prefersRightToLeftLayouts.getter();

      [v10 setAnchorPoint:{0.0, 0.0}];
      [v9 setAnimationsEnabled:1];
      v13 = *&v2[v6];
      *&v12[v6] = v8;
      v22 = v8;

      [v12 addSubview:v22];
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = a1;
      v16 = &v12[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange];
      v17 = *&v12[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange];
      *v16 = sub_10006F034;
      v16[1] = v15;

      v18 = a1;
      sub_10001F63C(v17);

      if (v12[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning])
      {
      }

      else
      {
        v19 = *v16;
        if (*v16)
        {

          v19(v20);

          sub_10001F63C(v19);
        }

        else
        {
        }

        v21 = *v16;
        *v16 = 0;
        v16[1] = 0;

        sub_10001F63C(v21);
      }
    }
  }

  else
  {
    v7 = *&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];

    [v7 setFont:a1];
  }
}

void sub_10006DF74(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 1;
    v4 = Strong;
    v5 = objc_opt_self();
    [v5 inheritedAnimationDuration];
    v7 = v6 * 0.8;
    v8 = *&v4[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeOutDelay];
    v9 = swift_allocObject();
    *(v9 + 16) = v4;
    v25 = sub_10006F03C;
    v26 = v9;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100007A08;
    v24 = &unk_1008B23D0;
    v10 = _Block_copy(&aBlock);
    v11 = v4;

    [v5 animateWithDuration:131684 delay:v10 options:0 animations:v7 completion:v8];
    _Block_release(v10);
    [v5 inheritedAnimationDuration];
    v13 = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    v25 = sub_10006F05C;
    v26 = v14;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100007A08;
    v24 = &unk_1008B2420;
    v15 = _Block_copy(&aBlock);
    v16 = v11;

    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = a2;
    v25 = sub_10006F084;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_100504C5C;
    v24 = &unk_1008B2470;
    v18 = _Block_copy(&aBlock);
    v19 = v16;
    v20 = a2;

    [v5 animateWithDuration:66148 delay:v15 options:v18 animations:v13 completion:0.0];
    _Block_release(v18);
    _Block_release(v15);
    sub_10006E254();
  }
}

void sub_10006E254()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v3 = v1;
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v38 = v3;
    [v38 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v42.origin.x = v5;
    v42.origin.y = v7;
    v42.size.width = v9;
    v42.size.height = v11;
    if (CGRectIsEmpty(v42) || (v43.origin.x = v13, v43.origin.y = v15, v43.size.width = v17, v43.size.height = v19, CGRectIsEmpty(v43)))
    {
    }

    else
    {
      v44.origin.x = v13;
      v44.origin.y = v15;
      v44.size.width = v17;
      v44.size.height = v19;
      Height = CGRectGetHeight(v44);
      v45.origin.x = v5;
      v45.origin.y = v7;
      v45.size.width = v9;
      v45.size.height = v11;
      v21 = Height / CGRectGetHeight(v45);
      [v38 transform];
      CGAffineTransformScale(&aBlock, &v40, 1.0 / v21, 1.0 / v21);
      tx = aBlock.tx;
      ty = aBlock.ty;
      v36 = *&aBlock.c;
      v37 = *&aBlock.a;
      v24 = objc_opt_self();
      [v24 setAnimationsEnabled:0];
      *&v40.a = v37;
      *&v40.c = v36;
      v40.tx = tx;
      v40.ty = ty;
      [v38 setTransform:&v40];

      [v24 setAnimationsEnabled:1];
      [v2 transform];
      aBlock = v40;
      CGAffineTransformScale(&v40, &aBlock, v21, v21);
      [v24 inheritedAnimationDuration];
      v26 = v25;
      v27 = swift_allocObject();
      v28 = *&v40.c;
      *(v27 + 24) = *&v40.a;
      *(v27 + 16) = v0;
      *(v27 + 40) = v28;
      *(v27 + 56) = *&v40.tx;
      *&aBlock.tx = sub_10006EE08;
      *&aBlock.ty = v27;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100007A08;
      *&aBlock.d = &unk_1008B22E0;
      v29 = _Block_copy(&aBlock);
      v30 = v0;

      [v24 animateWithDuration:197220 delay:v29 options:0 animations:v26 completion:0.0];
      _Block_release(v29);
      [v24 inheritedAnimationDuration];
      v32 = v31;
      v33 = swift_allocObject();
      *(v33 + 16) = v30;
      *&aBlock.tx = sub_10006EE58;
      *&aBlock.ty = v33;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100007A08;
      *&aBlock.d = &unk_1008B2330;
      v34 = _Block_copy(&aBlock);
      v35 = v30;

      [v24 animateWithDuration:197220 delay:v34 options:0 animations:v32 completion:0.0];

      _Block_release(v34);
    }
  }
}

void sub_10006E648(char a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_textAfterFontTransition + 8))
    {
      v3 = *(a2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

      v4 = String._bridgeToObjectiveC()();

      [v3 setText:v4];
    }

    v5 = *(a2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    [v5 setFont:?];
    [v5 setAlpha:1.0];
    [v5 setNumberOfLines:*(a2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines)];
    v9[0] = 0x3FF0000000000000;
    v9[1] = 0;
    v9[2] = 0;
    v9[3] = 0x3FF0000000000000;
    v9[4] = 0;
    v9[5] = 0;
    [v5 setTransform:v9];
    v6 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel;
    v7 = *(a2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *(a2 + v6);
    }

    else
    {
      v8 = 0;
    }

    *(a2 + v6) = 0;

    *(a2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  }
}

uint64_t sub_10006E7B0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(a2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  }

  return result;
}

id sub_10006E7C4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (a2)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  v6 = *&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel];
  if (v6)
  {
    v7 = v6;
    if (v3)
    {
      v3 = String._bridgeToObjectiveC()();
    }

    [v7 setText:v3];
  }

  v8 = &v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_textAfterFontTransition];
  *v8 = 0;
  *(v8 + 1) = 0;

  return [v2 setNeedsLayout];
}

uint64_t sub_10006E8BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a4)
  {
    v8 = *(v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
    if (v8)
    {
      v9 = *(v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
      if (a2)
      {

        v10 = v8;
        v5 = String._bridgeToObjectiveC()();
      }

      else
      {

        v15 = v8;
      }

      [v9 setText:v5];

      v16 = String._bridgeToObjectiveC()();
      [v8 setText:v16];

      v17 = (v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_textAfterFontTransition);
      *v17 = a3;
      v17[1] = a4;
      goto LABEL_17;
    }

    v13 = *(v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

    v14 = String._bridgeToObjectiveC()();

    [v13 setText:v14];
  }

  else
  {
    v11 = *(v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    if (a2)
    {
      v12 = String._bridgeToObjectiveC()();
    }

    else
    {
      v12 = 0;
    }

    [v11 setText:v12];

    v18 = *(v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
    if (v18)
    {
      v19 = v18;
      if (v5)
      {
        v20 = String._bridgeToObjectiveC()();
      }

      else
      {
        v20 = 0;
      }

      [v19 setText:v20];
    }
  }

  v21 = (v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_textAfterFontTransition);
  *v21 = 0;
  v21[1] = 0;
LABEL_17:
}

uint64_t sub_10006EAAC()
{
  v1 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
  }

  else
  {
    v3 = 0;
  }

  *(v0 + v1) = 0;

  v4 = *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = 7;
  sub_10006D97C(v4, 7);
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange);
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange);
  *v5 = 0;
  v5[1] = 0;

  return sub_10001F63C(v6);
}

id sub_10006EB68()
{
  v1 = objc_opt_self();
  [v1 setAnimationsEnabled:0];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = UITraitCollection.prefersRightToLeftLayouts.getter();

    v6 = 0.0;
    if (v5)
    {
      v6 = 1.0;
    }

    [v3 setAnchorPoint:{v6, 0.0}];
  }

  return [v1 setAnimationsEnabled:1];
}

id sub_10006ECB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayTransitioningLabelView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10006ED9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange);
  if (v1)
  {

    v1(v2);

    sub_10001F63C(v1);
  }
}

id sub_10006EE08()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v2 = *(v0 + 40);
  v4[0] = *(v0 + 24);
  v4[1] = v2;
  v4[2] = *(v0 + 56);
  return [v1 setTransform:v4];
}

id sub_10006EE58()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_10006EEA8(void *a1)
{
  v2 = type metadata accessor for DirectionalTextAlignment();
  __chkstk_darwin(v2 - 8);
  type metadata accessor for DynamicTypeLabel();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v3 setNumberOfLines:{objc_msgSend(a1, "numberOfLines")}];
  [v3 setLineBreakMode:{objc_msgSend(a1, "lineBreakMode")}];
  [v3 setLineBreakStrategy:{objc_msgSend(a1, "lineBreakStrategy")}];
  [v3 setUserInteractionEnabled:{objc_msgSend(a1, "isUserInteractionEnabled")}];

  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.getter();
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();
  dispatch thunk of DynamicTypeLabel.contentSizeCategoryMapping.getter();
  dispatch thunk of DynamicTypeLabel.contentSizeCategoryMapping.setter();
  v4 = [a1 text];
  [v3 setText:v4];

  return v3;
}

id sub_10006F05C()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

id sub_10006F09C()
{
  v1 = *(v0 + 16);
  v2 = *&v1[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  [v1 bounds];

  return [v2 setFrame:?];
}

unint64_t sub_10006F0F0()
{
  result = qword_100976620;
  if (!qword_100976620)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100976620);
  }

  return result;
}

void sub_10006F148()
{
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isAnimatingSizeCategoryChange) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_textAfterFontTransition);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeOutDelay) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInDelay) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_10006F274()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.baseWritingDirection.getter();
  (*(v1 + 8))(v3, v0);
  *&xmmword_1009CD818 = 10329570;
  *(&xmmword_1009CD818 + 1) = 0xA300000000000000;
  *&xmmword_1009CD828 = 10395106;
  *(&xmmword_1009CD828 + 1) = 0xA300000000000000;
  *&xmmword_1009CD838 = v4;
  *(&xmmword_1009CD838 + 8) = xmmword_1007B2C00;
  *(&xmmword_1009CD848 + 8) = xmmword_1007B2C10;
  result = 5.0;
  unk_1009CD860 = xmmword_1007B2C20;
  return result;
}

double sub_10006F384()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.baseWritingDirection.getter();
  (*(v1 + 8))(v3, v0);
  *&xmmword_1009CD870 = 10395106;
  *(&xmmword_1009CD870 + 1) = 0xA300000000000000;
  *&xmmword_1009CD880 = 10395106;
  *(&xmmword_1009CD880 + 1) = 0xA300000000000000;
  *&xmmword_1009CD890 = v4;
  *(&xmmword_1009CD890 + 8) = xmmword_1007B2C00;
  *(&xmmword_1009CD8A0 + 8) = xmmword_1007B2C10;
  result = 5.0;
  *&algn_1009CD8B0[8] = xmmword_1007B2C20;
  return result;
}

double sub_10006F490()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.baseWritingDirection.getter();
  (*(v1 + 8))(v3, v0);
  *&xmmword_1009CD8C8 = 10387682;
  *(&xmmword_1009CD8C8 + 1) = 0xA300000000000000;
  *&xmmword_1009CD8D8 = 10256610;
  *(&xmmword_1009CD8D8 + 1) = 0xA300000000000000;
  *&xmmword_1009CD8E8 = v4;
  *(&xmmword_1009CD8E8 + 8) = xmmword_1007B2C30;
  __asm { FMOV            V0.2D, #8.0 }

  *(&xmmword_1009CD8F8 + 8) = _Q0;
  result = 7.0;
  unk_1009CD910 = xmmword_1007B2C40;
  return result;
}

double sub_10006F59C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.baseWritingDirection.getter();
  (*(v1 + 8))(v3, v0);
  *&xmmword_1009CD920 = 43970;
  *(&xmmword_1009CD920 + 1) = 0xA200000000000000;
  *&xmmword_1009CD930 = 48066;
  *(&xmmword_1009CD930 + 1) = 0xA200000000000000;
  *&xmmword_1009CD940 = v4;
  *(&xmmword_1009CD940 + 8) = xmmword_1007B2C50;
  *(&xmmword_1009CD950 + 8) = xmmword_1007B2C60;
  result = 7.0;
  unk_1009CD968 = xmmword_1007B2C40;
  return result;
}

double sub_10006F6A8()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Locale.storefront.getter();
  v4 = Locale.baseWritingDirection.getter();
  (*(v1 + 8))(v3, v0);
  *&xmmword_1009CD978 = 9208035;
  *(&xmmword_1009CD978 + 1) = 0xA300000000000000;
  *&xmmword_1009CD988 = 9273571;
  *(&xmmword_1009CD988 + 1) = 0xA300000000000000;
  *&xmmword_1009CD998 = v4;
  *(&xmmword_1009CD998 + 8) = xmmword_1007B2C70;
  *(&xmmword_1009CD9A8 + 8) = xmmword_1007B2C80;
  result = 9.0;
  unk_1009CD9C0 = xmmword_1007B2C90;
  return result;
}

id sub_10006F7E0(double a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() systemFontOfSize:a1 weight:UIFontWeightBold];
  *a3 = result;
  return result;
}

id sub_10006F840()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.78 green:0.78 blue:0.8 alpha:1.0];
  qword_100972138 = result;
  return result;
}

uint64_t sub_10006FA10(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for FontUseCase();
  sub_100005644(v7, a2);
  v8 = sub_1000056A8(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v7, a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v8, v9, v7);
}

uint64_t sub_10006FAF8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009CD9D0);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10006FCE4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for FontSource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticDimension();
  sub_100005644(v7, a2);
  sub_1000056A8(v7, a2);
  if (qword_10096CED8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for FontUseCase();
  v9 = sub_1000056A8(v8, qword_1009CD9E8);
  (*(*(v8 - 8) + 16))(v6, v9, v8);
  (*(v4 + 104))(v6, enum case for FontSource.useCase(_:), v3);
  v13[3] = v3;
  v13[4] = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v13);
  (*(v4 + 16))(v10, v6, v3);
  StaticDimension.init(_:scaledLike:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10006FED0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CDA60);
  sub_1000056A8(v4, qword_1009CDA60);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_1000056E0(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_10007003C(uint64_t a1, id a2)
{
  v3 = v2;
  type metadata accessor for LanguageAwareString();

  static LanguageAwareString.alwaysGenerateAttributedString.getter();
  static LanguageAwareString.keepStatisticsOnLanguageComponents.getter();
  v5 = LanguageAwareString.__allocating_init(_:baseParagraphStyle:generateAttributedString:keepStatisticsOnLanguageComponents:)();
  v6 = &selRef__setDefaultAttributes_;
  v60 = v5;
  if (v5)
  {
    v7 = dispatch thunk of LanguageAwareString.thresholdBaseWritingDirection.getter();
    v8 = v7;
    v9 = &v2[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs];
    if (v7 != *&v2[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs + 32])
    {
      v58 = a2;
      *(v9 + 4) = v7;
      v55 = *&v9[16 * (v7 == 1)];
      v56 = *&v2[OBJC_IVAR____TtC8AppStore9QuoteView_leadingQuote];

      sub_10002849C(&unk_100973960);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B1890;
      *(inited + 32) = NSFontAttributeName;
      v11 = qword_10096CEB8;
      v12 = NSFontAttributeName;
      if (v11 != -1)
      {
        swift_once();
      }

      v13 = qword_100972128;
      v14 = sub_100005744(0, &qword_1009730E0);
      *(inited + 40) = v13;
      *(inited + 64) = v14;
      *(inited + 72) = NSForegroundColorAttributeName;
      v15 = qword_10096CEC8;
      v16 = v13;
      v17 = NSForegroundColorAttributeName;
      if (v15 != -1)
      {
        swift_once();
      }

      v18 = qword_100972138;
      *(inited + 104) = sub_100005744(0, &qword_100970180);
      *(inited + 80) = v18;
      v19 = v18;
      sub_100397150(inited);
      swift_setDeallocating();
      sub_10002849C(&unk_100970EC0);
      swift_arrayDestroy();
      v20 = objc_allocWithZone(NSAttributedString);
      v21 = String._bridgeToObjectiveC()();

      type metadata accessor for Key(0);
      sub_10006F0F0();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v23 = [v20 initWithString:v21 attributes:isa];

      v6 = &selRef__setDefaultAttributes_;
      [v56 setAttributedText:v23];

      v24 = *(v9 + 3);
      v62[2] = *(v9 + 2);
      v62[3] = v24;
      v62[4] = *(v9 + 4);
      v63 = *(v9 + 10);
      v25 = *(v9 + 1);
      v62[0] = *v9;
      v62[1] = v25;
      v26 = objc_allocWithZone(type metadata accessor for QuotesLabel());
      sub_100072738(v62, v61);
      v27 = [v26 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v28 = sub_1000723D0(v62);

      sub_100072770(v62);
      v29 = *&v3[OBJC_IVAR____TtC8AppStore9QuoteView_trailingQuote];
      *&v3[OBJC_IVAR____TtC8AppStore9QuoteView_trailingQuote] = v28;

      a2 = v58;
    }
  }

  else
  {
    v8 = -1;
  }

  v30 = *&v3[OBJC_IVAR____TtC8AppStore9QuoteView_quoteLabel];
  v31 = sub_100005744(0, &qword_1009730E0);
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  sub_1000056A8(v32, qword_1009CD9D0);
  v33 = [v3 traitCollection];
  v34 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (a2)
  {
    v57 = v30;
    v35 = *&v3[OBJC_IVAR____TtC8AppStore9QuoteView_trailingQuote];
    v36 = *&v3[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs + 72];
    sub_10002849C(&unk_100973960);
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1007B1890;
    *(v37 + 32) = NSParagraphStyleAttributeName;
    v38 = qword_10096E898;
    v39 = NSParagraphStyleAttributeName;
    v59 = v35;
    if (v38 != -1)
    {
      swift_once();
    }

    v40 = [qword_1009D2970 paragraphStyleWithBaseWritingDirection:{v8, v55}];
    v41 = sub_100005744(0, &unk_100993000);
    *(v37 + 40) = v40;
    *(v37 + 64) = v41;
    *(v37 + 72) = NSFontAttributeName;
    *(v37 + 104) = v31;
    *(v37 + 80) = v34;
    v42 = NSFontAttributeName;
    v34 = v34;
    sub_100397150(v37);
    swift_setDeallocating();
    sub_10002849C(&unk_100970EC0);
    swift_arrayDestroy();
    v43 = objc_allocWithZone(NSMutableAttributedString);
    v44 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_10006F0F0();
    v45 = Dictionary._bridgeToObjectiveC()().super.isa;

    a2 = [v43 initWithString:v44 attributes:v45];

    if (v35)
    {
      v46 = v59;
      sub_100397150(_swiftEmptyArrayStorage);
      v47 = objc_allocWithZone(NSAttributedString);
      v48 = String._bridgeToObjectiveC()();
      v49 = Dictionary._bridgeToObjectiveC()().super.isa;

      v50 = [v47 initWithString:v48 attributes:v49];

      [a2 appendAttributedString:v50];
      v51 = [objc_allocWithZone(NSTextAttachment) init];
      [v51 setImage:v46];
      [v46 size];
      [v51 setBounds:{0.0, -v36, v52, v53}];
      v54 = [objc_opt_self() attributedStringWithAttachment:v51];
      [a2 appendAttributedString:v54];

      v34 = v46;
    }

    else
    {
    }

    v5 = v60;
    v6 = &selRef__setDefaultAttributes_;
    v30 = v57;
  }

  [v30 v6[465]];
}

void sub_1000707B0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v35 - v11;
  v13 = OBJC_IVAR____TtC8AppStore9QuoteView_creditLabel;
  v14 = *&v2[OBJC_IVAR____TtC8AppStore9QuoteView_creditLabel];
  if (!v14 || (v15 = [v14 text]) == 0)
  {
    if (!a2)
    {
      return;
    }

    goto LABEL_11;
  }

  v36 = v6;
  v16 = a1;
  v17 = v15;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (!a2)
  {

    v6 = v36;
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_12:
    v24 = v2;
    if (qword_10096CED8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for FontUseCase();
    v26 = sub_1000056A8(v25, qword_1009CD9E8);
    v27 = *(v25 - 8);
    (*(v27 + 16))(v12, v26, v25);
    (*(v27 + 56))(v12, 0, 1, v25);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v28 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v29 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v2 = v24;
    v30 = *&v24[v13];
    *&v24[v13] = v29;
    v31 = v29;

    v32 = [objc_opt_self() systemGrayColor];
    [v31 setTextColor:v32];

    if (!*&v24[v13])
    {
      __break(1u);
      return;
    }

    [v24 addSubview:?];
    v23 = *&v24[v13];
    if (!v23)
    {

LABEL_22:
      [v2 setNeedsLayout];
      return;
    }

LABEL_18:
    v33 = v23;
    if (a2)
    {
      v34 = String._bridgeToObjectiveC()();
    }

    else
    {
      v34 = 0;
    }

    [v33 setText:v34];

    goto LABEL_22;
  }

  if (v18 != v16 || v20 != a2)
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v36;
    if (v22)
    {
      goto LABEL_25;
    }

LABEL_11:
    v23 = *&v2[v13];
    if (v23)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

LABEL_25:
}

id sub_100070BA0()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC8AppStore9QuoteView_artworkHasRoundedCorners] = v0[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] ^ 1;
  v7 = *&v0[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView];
  (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2, v4);
  v8 = v7;
  ArtworkView.setCorner(radius:style:)();

  (*(v3 + 8))(v6, v2);
  return [v1 setNeedsLayout];
}

char *sub_100070CE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v14 - 8);
  v16 = v77 - v15;
  *&v5[OBJC_IVAR____TtC8AppStore9QuoteView_trailingQuote] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore9QuoteView_creditLabel] = 0;
  v17 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
  v18 = type metadata accessor for AspectRatio();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] = 0;
  v5[OBJC_IVAR____TtC8AppStore9QuoteView_artworkHasRoundedCorners] = 0;
  v19 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore9QuoteView_leadingQuote] = v19;
  if (qword_10096CED0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  v21 = sub_1000056A8(v20, qword_1009CD9D0);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v16, v21, v20);
  (*(v22 + 56))(v16, 0, 1, v20);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore9QuoteView_quoteLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  *&v5[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24._object = 0x80000001007FC650;
  v24._countAndFlagsBits = 0xD000000000000010;
  v25._countAndFlagsBits = 0;
  v25._object = 0xE000000000000000;
  v86 = localizedString(_:comment:)(v24, v25);
  v26 = sub_100072384(v86);
  if (v26 > 2)
  {
    if (v26 - 3 < 2)
    {
      if (qword_10096CEA8 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_1009CD920;
      goto LABEL_23;
    }

    if (v26 == 5)
    {
      if (qword_10096CEB0 != -1)
      {
        swift_once();
      }

      v27 = &xmmword_1009CD978;
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (!v26)
  {
LABEL_17:
    if (qword_10096CE90 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_1009CD818;
    goto LABEL_23;
  }

  if (v26 == 1)
  {
    if (qword_10096CE98 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_1009CD870;
  }

  else
  {
    if (qword_10096CEA0 != -1)
    {
      swift_once();
    }

    v27 = &xmmword_1009CD8C8;
  }

LABEL_23:
  v28 = v27[4];
  *&v84[16] = v27[3];
  *&v84[32] = v28;
  v85 = *(v27 + 10);
  v29 = v27[2];
  v83 = v27[1];
  *v84 = v29;
  v82 = *v27;
  v30 = *&v84[40];
  v31 = v85;
  v78 = *&v84[8];
  v79 = *&v84[24];
  v33 = *(&v83 + 1);
  v32 = v29;
  v35 = *(&v82 + 1);
  v34 = v83;
  v36 = v82;
  sub_100072738(&v82, v81);
  v37 = &v5[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs];
  *v37 = v36;
  *(v37 + 1) = v35;
  *(v37 + 2) = v34;
  *(v37 + 3) = v33;
  *(v37 + 4) = v32;
  v38 = v78;
  *(v37 + 56) = v79;
  *(v37 + 40) = v38;
  *(v37 + 9) = v30;
  *(v37 + 10) = v31;
  v39 = type metadata accessor for QuoteView();
  v80.receiver = v5;
  v80.super_class = v39;
  v40 = objc_msgSendSuper2(&v80, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v44 = v40;
  [v44 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v45 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkView;
  v46 = *&v44[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView];
  ArtworkView.roundedCorners.setter();

  v47 = *&v44[v45];
  static ArtworkView.iconBorderWidth.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  v48 = *&v44[v45];
  static ArtworkView.iconBorderColor.getter();
  dispatch thunk of RoundedCornerView.borderColor.setter();

  [*&v44[v45] setHidden:1];
  v49 = OBJC_IVAR____TtC8AppStore9QuoteView_leadingQuote;
  [*&v44[OBJC_IVAR____TtC8AppStore9QuoteView_leadingQuote] setClipsToBounds:0];
  v50 = *&v44[v49];
  v51 = &v44[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs];
  v77[1] = *&v44[16 * (*&v44[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs + 32] == 1) + OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs];
  *&v78 = v49;

  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSFontAttributeName;
  v53 = qword_10096CEB8;
  *&v79 = v50;
  v54 = NSFontAttributeName;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_100972128;
  v56 = sub_100005744(0, &qword_1009730E0);
  *(inited + 40) = v55;
  *(inited + 64) = v56;
  *(inited + 72) = NSForegroundColorAttributeName;
  v57 = qword_10096CEC8;
  v58 = v55;
  v59 = NSForegroundColorAttributeName;
  if (v57 != -1)
  {
    swift_once();
  }

  v60 = qword_100972138;
  *(inited + 104) = sub_100005744(0, &qword_100970180);
  *(inited + 80) = v60;
  v61 = v60;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  v62 = objc_allocWithZone(NSAttributedString);
  v63 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_10006F0F0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v65 = [v62 initWithString:v63 attributes:isa];

  v66 = v79;
  [v79 setAttributedText:v65];

  [v44 addSubview:*&v44[v78]];
  v67 = OBJC_IVAR____TtC8AppStore9QuoteView_quoteLabel;
  [*&v44[OBJC_IVAR____TtC8AppStore9QuoteView_quoteLabel] setTextAlignment:4];
  [v44 addSubview:*&v44[v67]];
  [v44 addSubview:*&v44[v45]];
  v68 = *(v51 + 1);
  v82 = *v51;
  v83 = v68;
  v69 = *(v51 + 2);
  v70 = *(v51 + 3);
  v71 = *(v51 + 4);
  v85 = *(v51 + 10);
  *&v84[16] = v70;
  *&v84[32] = v71;
  *v84 = v69;
  v72 = objc_allocWithZone(type metadata accessor for QuotesLabel());
  sub_100072738(&v82, v81);
  v73 = [v72 initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v74 = sub_1000723D0(&v82);

  sub_100072770(&v82);
  v75 = *&v44[OBJC_IVAR____TtC8AppStore9QuoteView_trailingQuote];
  *&v44[OBJC_IVAR____TtC8AppStore9QuoteView_trailingQuote] = v74;

  return v44;
}

void sub_10007170C()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v95 = *(v2 - 8);
  v96 = v2;
  __chkstk_darwin(v2);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v4 - 8);
  v94 = &v93 - v5;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for QuoteView();
  v100.receiver = v0;
  v100.super_class = v10;
  objc_msgSendSuper2(&v100, "layoutSubviews");
  v11 = *&v0[OBJC_IVAR____TtC8AppStore9QuoteView_leadingQuote];
  [v11 sizeToFit];
  LayoutMarginsAware<>.layoutFrame.getter();
  MinY = CGRectGetMinY(v101);
  if (qword_10096CEE0 != -1)
  {
    swift_once();
  }

  v97 = type metadata accessor for StaticDimension();
  sub_1000056A8(v97, qword_1009CDA00);
  v13 = *&v0[OBJC_IVAR____TtC8AppStore9QuoteView_quoteLabel];
  static Dimensions.defaultRoundingRule.getter();
  v14 = [v13 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v16 = v15;

  [v13 firstBaselineFromTop];
  v18 = v17;
  v98 = *(v7 + 8);
  v99 = v6;
  v98(v9, v6);
  v19 = MinY + v16 - v18;
  [v11 frame];
  Width = CGRectGetWidth(v102);
  v21 = &v0[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs];
  v22 = Width + *&v0[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs + 56] + *&v0[OBJC_IVAR____TtC8AppStore9QuoteView_quoteGlyphs + 40];
  LayoutMarginsAware<>.layoutFrame.getter();
  v24 = v23 - v22;
  [v13 sizeThatFits:{v23 - v22, 1.79769313e308}];
  v26 = v25;
  v28 = v27;
  v29 = *(v21 + 4);
  LayoutMarginsAware<>.layoutFrame.getter();
  if (v29 == 1)
  {
    [v13 setFrame:{CGRectGetMaxX(*&v30) - v26 - v22, v19, v26, v28}];
    LayoutMarginsAware<>.layoutFrame.getter();
    v34 = CGRectGetMaxX(v103) - *(v21 + 5);
    [v11 frame];
    v35 = v34 - CGRectGetWidth(v104);
  }

  else
  {
    [v13 setFrame:{v22 + CGRectGetMinX(*&v30), v19, v26, v28}];
    LayoutMarginsAware<>.layoutFrame.getter();
    v35 = v36 + *(v21 + 5);
  }

  [v13 frame];
  v38 = v37 + *(v21 + 6);
  [v11 frame];
  [v11 setFrame:{v35, v38}];
  [v13 frame];
  MaxY = CGRectGetMaxY(v105);
  if (qword_10096CEE8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v97, qword_1009CDA18);
  static Dimensions.defaultRoundingRule.getter();
  v40 = [v13 traitCollection];
  StaticDimension.value(compatibleWith:rounded:)();
  v42 = v41;

  [v13 lastBaselineFromBottom];
  v44 = v43;
  v98(v9, v99);
  v45 = MaxY + v42 - v44;
  v46 = *&v0[OBJC_IVAR____TtC8AppStore9QuoteView_creditLabel];
  if (v46)
  {
    v47 = v46;
    [v47 sizeThatFits:{v24, 1.79769313e308}];
    v49 = v48;
    v51 = v50;
    v52 = *(v21 + 4);
    [v13 frame];
    if (v52 == 1)
    {
      MinX = CGRectGetMaxX(*&v53) - v49;
    }

    else
    {
      MinX = CGRectGetMinX(*&v53);
    }

    v58 = v97;
    v60 = v99;
    v59 = &selRef_setRequiresColorStatistics_;
    v97 = v10;
    if (qword_10096CEF0 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v58, qword_1009CDA30);
    static Dimensions.defaultRoundingRule.getter();
    v61 = [v47 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();
    v63 = v62;

    [v47 firstBaselineFromTop];
    v65 = v64;
    v66 = v98;
    v98(v9, v60);
    [v47 setFrame:{MinX, v45 + v63 - v65, v49, v51}];

    [v47 frame];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v106.origin.x = v68;
    v106.origin.y = v70;
    v106.size.width = v72;
    v106.size.height = v74;
    CGRectGetMaxY(v106);
    if (qword_10096CEF8 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v58, qword_1009CDA48);
    static Dimensions.defaultRoundingRule.getter();
    v75 = [v47 traitCollection];
    StaticDimension.value(compatibleWith:rounded:)();

    [v47 lastBaselineFromBottom];
    v66(v9, v60);
  }

  else
  {
    v58 = v97;
    v59 = &selRef_setRequiresColorStatistics_;
  }

  v76 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkView;
  if (([*&v1[OBJC_IVAR____TtC8AppStore9QuoteView_artworkView] isHidden] & 1) == 0)
  {
    v77 = OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork;
    if (v1[OBJC_IVAR____TtC8AppStore9QuoteView_isFullWidthArtwork] == 1)
    {
      [v1 frame];
    }

    else
    {
      LayoutMarginsAware<>.layoutFrame.getter();
    }

    CGRectGetMinX(*&v78);
    if (qword_10096CF00 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v58, qword_1009CDA60);
    v82 = [v1 v59[35]];
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();

    v98(v9, v99);
    if (v1[v77] == 1)
    {
      [v1 frame];
    }

    else
    {
      LayoutMarginsAware<>.layoutFrame.getter();
    }

    v88 = v95;
    v87 = v96;
    v89 = v94;
    CGRectGetWidth(*&v83);
    v90 = OBJC_IVAR____TtC8AppStore9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1000727A0(&v1[v90], v89);
    if ((*(v88 + 48))(v89, 1, v87))
    {
      sub_100072810(v89);
      LayoutMarginsAware<>.layoutFrame.getter();
      CGRectGetHeight(v107);
    }

    else
    {
      v91 = v93;
      (*(v88 + 16))(v93, v89, v87);
      sub_100072810(v89);
      AspectRatio.height(fromWidth:)();
      (*(v88 + 8))(v91, v87);
    }

    v92 = *&v1[v76];
    ArtworkView.frame.setter();
  }
}

id sub_100072058(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for QuoteView()
{
  result = qword_1009721B8;
  if (!qword_1009721B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100072198()
{
  sub_10007225C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10007225C()
{
  if (!qword_1009721C8)
  {
    type metadata accessor for AspectRatio();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1009721C8);
    }
  }
}

__n128 sub_1000722B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000722D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_100072320(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100072384(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008AE6F0, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

UIImage *sub_1000723D0(uint64_t a1)
{
  v2 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_10002849C(&unk_100973960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  *(inited + 32) = NSFontAttributeName;
  v4 = qword_10096CEC0;
  v5 = NSFontAttributeName;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_100972130;
  v7 = sub_100005744(0, &qword_1009730E0);
  *(inited + 40) = v6;
  *(inited + 64) = v7;
  *(inited + 72) = NSForegroundColorAttributeName;
  v8 = qword_10096CEC8;
  v9 = v6;
  v10 = NSForegroundColorAttributeName;
  if (v8 != -1)
  {
    swift_once();
  }

  v11 = qword_100972138;
  *(inited + 104) = sub_100005744(0, &qword_100970180);
  *(inited + 80) = v11;
  v12 = v11;
  sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0);
  swift_arrayDestroy();
  v13 = *(a1 + 32);
  v14 = objc_allocWithZone(NSAttributedString);
  v15 = String._bridgeToObjectiveC()();
  type metadata accessor for Key(0);
  sub_10006F0F0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v17 = [v14 initWithString:v15 attributes:isa];

  [v2 setAttributedText:v17];
  v18 = v2;
  [v18 sizeToFit];
  [v18 frame];
  v19 = CGRectGetWidth(v32) + *(a1 + 64);
  if (v13 == 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 64);
  }

  [v18 frame];
  Height = CGRectGetHeight(v33);
  v22 = [objc_opt_self() mainScreen];
  [v22 scale];
  v24 = v23;

  v31.width = v19;
  v31.height = Height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, v24);
  [v18 frame];
  v26 = v25;
  v28 = v27;

  [v18 drawTextInRect:{v20, 0.0, v26, v28}];
  v29 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v29;
}

uint64_t sub_1000727A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009732A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100072810(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009732A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100072878(void *a1)
{
  [a1 _systemContentInset];
  v4 = v3;
  [a1 contentOffset];
  v6 = v5;
  v7 = [a1 contentInset];
  v8.n128_f64[0] = fmin((v4 + v6 + v8.n128_f64[0] - *(v1 + 32)) / *(v1 + 40), 1.0);
  if (v8.n128_f64[0] < 0.0)
  {
    v8.n128_f64[0] = 0.0;
  }

  return (*(v1 + 16))(v7, v8);
}

void *sub_100072908(void *result, double a2)
{
  if (*(v2 + 32) != a2)
  {
    *(v2 + 32) = a2;
    v3 = result;
    [result _systemContentInset];
    v5 = v4;
    [v3 contentOffset];
    v7 = v6;
    v8 = [v3 contentInset];
    v9.n128_f64[0] = fmin((v5 + v7 + v9.n128_f64[0] - *(v2 + 32)) / *(v2 + 40), 1.0);
    if (v9.n128_f64[0] < 0.0)
    {
      v9.n128_f64[0] = 0.0;
    }

    return (*(v2 + 16))(v8, v9);
  }

  return result;
}

uint64_t sub_1000729A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100072A08()
{
  v0 = type metadata accessor for VerticalStack();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13[-1] - v5;
  __chkstk_darwin(v7);
  v9 = &v13[-1] - v8;
  VerticalStack.init(with:)();
  VerticalStack.init(with:)();

  VerticalStack.adding(_:with:)();

  v10 = *(v1 + 8);
  v10(v3, v0);
  v13[3] = v0;
  v13[4] = &protocol witness table for VerticalStack;
  sub_1000056E0(v13);
  VerticalStack.adding(_:with:)();
  v10(v6, v0);

  VerticalStack.adding(_:with:)();

  v10(v9, v0);
  return sub_100007000(v13);
}

uint64_t sub_100072C14(uint64_t a1, uint64_t a2)
{
  sub_100072FE8(a2 + 16, v4);
  sub_100005A38(v4, v3);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_100072C5C()
{
  sub_100073054(v0 + 16);
  sub_100007000(v0 + 64);
  sub_100007000(v0 + 104);

  return swift_deallocClassInstance();
}

__n128 sub_100072CC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100072CDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_100072D24(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_100072DB4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  WitnessTable = swift_getWitnessTable();
  v9.n128_f64[0] = a3;
  v10.n128_f64[0] = a4;

  return CustomLayout.measure(toFit:with:)(a1, a2, WitnessTable, v9, v10);
}

uint64_t sub_100072E2C(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  WitnessTable = swift_getWitnessTable();
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return CustomLayout.place(at:with:)(a1, a2, WitnessTable, v13, v14, v15, v16);
}

uint64_t sub_100072EBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, WitnessTable);
}

uint64_t sub_100072F8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShelfFooterViewLayout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100073084()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_1009CDA98);
  sub_1000056A8(v4, qword_1009CDA98);
  if (qword_10096E118 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D12C8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10007325C(uint64_t a1)
{
  v36 = a1;
  v2 = type metadata accessor for StaticDimension();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_arcadeWelcomeContentView) = [objc_allocWithZone(type metadata accessor for ArcadeWelcomeContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  type metadata accessor for RoundedTitledButton();
  if (qword_10096E118 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v6, qword_1009D12C8);
  v11 = *(v7 + 16);
  v35[1] = v7 + 16;
  v11(v9, v10, v6);
  v35[0] = v6;
  if (qword_10096CF08 != -1)
  {
    swift_once();
  }

  v12 = v2;
  v13 = sub_1000056A8(v2, qword_1009CDA98);
  v14 = *(v3 + 16);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_familyButton) = sub_10074DE84(v9, v5);
  v11(v9, v10, v35[0]);
  v14(v5, v13, v12);
  *(v1 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_continueButton) = sub_10074DE84(v9, v5);
  v15 = v36;
  sub_100073D84(v36, v37);
  v16 = sub_10074277C(v37);
  v17 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_familyButton;
  v18 = *&v16[OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_familyButton];
  v19 = objc_opt_self();
  v20 = v16;
  v21 = v18;
  v22 = [v19 clearColor];
  [v21 setBackgroundColor:v22];

  v23 = *&v16[v17];
  sub_100005744(0, &qword_100970180);
  v24 = v23;
  v25 = static UIColor.appTint.getter();
  [v24 setTintColor:v25];

  v26 = *&v20[OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_arcadeWelcomeContentView];
  v27 = *&v20[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentView];
  *&v20[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentView] = v26;
  v28 = v26;

  [*&v20[OBJC_IVAR____TtC8AppStore18OnboardingPageView_contentScrollView] addSubview:v28];
  [v20 setNeedsLayout];

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v29 = OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_continueButton;
  v30 = *&v20[OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_continueButton];
  v31 = static UIColor.appTint.getter();
  [v30 setBackgroundColor:v31];

  v32 = *&v20[v29];
  v33 = [v19 whiteColor];
  [v32 setTintColor:v33];

  sub_100073DE0(v15);
  return v20;
}

id sub_100073708(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_continueButton];
  ArcadeWelcomeContent.continueAction.getter();
  Action.title.getter();
  v8 = v7;

  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v6 setTitle:v9 forState:0];

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = &v6[qword_1009D39E0];
  v12 = *&v6[qword_1009D39E0];
  *v11 = sub_100073E34;
  v11[1] = v10;

  sub_10001F63C(v12);

  v13 = *&v3[OBJC_IVAR____TtC8AppStore18OnboardingPageView_trayView];
  sub_1007237E0(v6, 0x4072C00000000000, 0);
  v14 = &StringUserDefaultsDebugSetting;
  [v3 setNeedsLayout];
  v15 = *&v3[OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_familyButton];
  v16 = OBJC_IVAR____TtC8AppStore18OnboardingTrayView_itemViewLayoutItems;
  swift_beginAccess();
  v17 = *&v13[v16];

  v18 = sub_100723A64(v15, v17);

  if (v18)
  {
    v19 = swift_beginAccess();
    __chkstk_darwin(v19);
    result = sub_100073E6C(&v13[v16], sub_1000741B0);
    v21 = *(*&v13[v16] + 16);
    if (v21 < result)
    {
      __break(1u);
      goto LABEL_23;
    }

    sub_1004A69B4(result, v21);
    swift_endAccess();
    v22 = [v15 superview];
    if (v22)
    {
      v23 = v22;
      v24 = a2;
      sub_100005744(0, &qword_100972EB0);
      v25 = v13;
      v26 = static NSObject.== infix(_:_:)();

      if (v26)
      {
        [v15 removeFromSuperview];
      }

      a2 = v24;
      v14 = &StringUserDefaultsDebugSetting;
    }
  }

  [v3 v14[41].base_meths];
  if (ArcadeWelcomeContent.familyAction.getter())
  {
    Action.title.getter();
    if (v27)
    {
      v28 = String._bridgeToObjectiveC()();
    }

    else
    {
      v28 = 0;
    }

    [v15 setTitle:v28 forState:0];

    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = &v15[qword_1009D39E0];
    v39 = *&v15[qword_1009D39E0];
    *v38 = sub_100074038;
    v38[1] = v37;

    sub_10001F63C(v39);

    sub_1007237E0(v15, 0x4072C00000000000, 0);
    [v3 v14[41].base_meths];

    goto LABEL_21;
  }

  v29 = *&v13[v16];

  v30 = sub_100723A64(v15, v29);

  if (!v30)
  {
LABEL_18:
    [v3 v14[41].base_meths];
LABEL_21:
    sub_1001E2E34(a1, a2);
    return [v3 v14[41].base_meths];
  }

  v31 = swift_beginAccess();
  __chkstk_darwin(v31);
  result = sub_100073E6C(&v13[v16], sub_100073E64);
  v32 = *(*&v13[v16] + 16);
  if (v32 >= result)
  {
    sub_1004A69B4(result, v32);
    swift_endAccess();
    v33 = [v15 superview];
    if (v33)
    {
      v34 = v33;
      sub_100005744(0, &qword_100972EB0);
      v35 = v13;
      v36 = static NSObject.== infix(_:_:)();

      if (v36)
      {
        [v15 removeFromSuperview];
      }
    }

    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_100073C04(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      a2();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100073C94()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_delegate;

  return sub_10001F64C(v1);
}

uint64_t sub_100073E6C(double **a1, uint64_t (*a2)(uint64_t, double *))
{
  v4 = *a1;
  v5 = (*a1 + 2);
  v6 = *v5;
  if (!*v5)
  {
LABEL_5:
    if (!v2)
    {
      return *v5;
    }

    return v3;
  }

  v9 = 0;
  v3 = 0;
  while (1)
  {
    result = a2(*&v4[v9 + 4], &v4[v9 + 5]);
    if (result)
    {
      break;
    }

    ++v3;
    v9 += 11;
    if (v6 == v3)
    {
      goto LABEL_5;
    }
  }

  v19 = a1;
  if (v2)
  {
    return v3;
  }

  v11 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v12 = *v5;
    if (v11 == *v5)
    {
      return v3;
    }

    v13 = v9 * 8 + 120;
    while (v11 < v12)
    {
      sub_100074068(v4 + v13, &v17);
      v14 = a2(v17, &v18);
      result = sub_1000740D8(&v17);
      if ((v14 & 1) == 0)
      {
        if (v11 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v15 = *v5;
          if (v3 >= v15)
          {
            goto LABEL_27;
          }

          result = sub_100074068(&v4[11 * v3 + 4], &v17);
          if (v11 >= v15)
          {
            goto LABEL_28;
          }

          sub_100074068(v4 + v13, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_100548D3C(v4);
          }

          result = sub_100074140(v16, &v4[11 * v3 + 4]);
          if (v11 >= *(v4 + 2))
          {
            goto LABEL_29;
          }

          result = sub_100074140(&v17, v4 + v13);
          *v19 = v4;
        }

        ++v3;
      }

      ++v11;
      v5 = (v4 + 2);
      v12 = *(v4 + 2);
      v13 += 88;
      if (v11 == v12)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100074068(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000740D8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_10096FD40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100074140(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10096FD40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000741B4()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CDAB0);
  sub_1000056A8(v0, qword_1009CDAB0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10007422C()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CDAC8);
  sub_1000056A8(v0, qword_1009CDAC8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_1000742A4()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CDAE0);
  sub_1000056A8(v0, qword_1009CDAE0);
  return PreferenceKey.init(_:)();
}

uint64_t sub_10007431C()
{
  v0 = sub_10002849C(&qword_100979740);
  sub_100005644(v0, qword_1009CDAF8);
  sub_1000056A8(v0, qword_1009CDAF8);
  return PreferenceKey.init(_:)();
}

uint64_t sub_100074394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v3 = type metadata accessor for String.Encoding();
  v137 = *(v3 - 8);
  v138 = v3;
  __chkstk_darwin(v3);
  v136 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972390);
  __chkstk_darwin(v5 - 8);
  v150 = &v128 - v6;
  v7 = sub_10002849C(&qword_100972398);
  __chkstk_darwin(v7 - 8);
  v149 = &v128 - v8;
  v9 = type metadata accessor for AdamId();
  __chkstk_darwin(v9 - 8);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v135 = &v128 - v12;
  __chkstk_darwin(v13);
  v140 = &v128 - v14;
  __chkstk_darwin(v15);
  v141 = &v128 - v16;
  v151 = type metadata accessor for UUID();
  v146 = *(v151 - 8);
  __chkstk_darwin(v151);
  v128 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v128 - v19;
  __chkstk_darwin(v21);
  v23 = &v128 - v22;
  __chkstk_darwin(v24);
  v145 = &v128 - v25;
  __chkstk_darwin(v26);
  v144 = &v128 - v27;
  v28 = type metadata accessor for OnDeviceAdvert();
  v147 = *(v28 - 8);
  v148 = v28;
  __chkstk_darwin(v28);
  v129 = &v128 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v131 = &v128 - v31;
  __chkstk_darwin(v32);
  v134 = &v128 - v33;
  __chkstk_darwin(v34);
  v36 = &v128 - v35;
  v37 = type metadata accessor for AdPlacementType();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v130 = &v128 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v133 = &v128 - v41;
  __chkstk_darwin(v42);
  v139 = &v128 - v43;
  __chkstk_darwin(v44);
  v46 = &v128 - v45;
  v48 = __chkstk_darwin(v47);
  v50 = &v128 - v49;
  v142 = *(v38 + 16);
  v143 = a1;
  v142(&v128 - v49, a1, v37, v48);
  v51 = (*(v38 + 88))(v50, v37);
  if (v51 != enum case for AdPlacementType.searchLanding(_:))
  {
    if (v51 == enum case for AdPlacementType.searchResults(_:))
    {
      goto LABEL_37;
    }

    if (v51 == enum case for AdPlacementType.today(_:))
    {
      type metadata accessor for LocalPreferences();
      static LocalPreferences.AppStoreKit.getter();
      if (qword_10096CF20 != -1)
      {
        swift_once();
      }

      v65 = sub_10002849C(&qword_100979740);
      sub_1000056A8(v65, qword_1009CDAE0);
      Preferences.subscript.getter();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      UUID.init()();
      UUID.uuidString.getter();
      v66 = *(v146 + 1);
      v66(v23, v151);
      AdamId.init(value:)();
      (v142)(v139, v143, v37);
      sub_10002849C(&unk_10097E340);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B10D0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Int;
      *(inited + 72) = 2;
      sub_100397CE8(inited);
      swift_setDeallocating();
      sub_100075ACC(inited + 32);
      v68 = v136;
      static String.Encoding.utf8.getter();
      v69 = String.data(using:allowLossyConversion:)();
      v71 = v70;
      (*(v137 + 8))(v68, v138);
      if (v71 >> 60 != 15)
      {
        v72 = objc_opt_self();
        isa = Data._bridgeToObjectiveC()().super.isa;
        v153 = 0;
        v74 = [v72 JSONObjectWithData:isa options:0 error:&v153];

        if (v74)
        {
          v75 = v153;
          _bridgeAnyObjectToAny(_:)();
          sub_100075B34(v69, v71);
          swift_unknownObjectRelease();
          sub_10002849C(&qword_1009915E0);
          swift_dynamicCast();
        }

        else
        {
          v110 = v153;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100075B34(v69, v71);
        }
      }

      v111 = v134;
      OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)();
      v112 = v144;
      UUID.init()();
      v146 = UUID.uuidString.getter();
      v113 = v151;
      v66(v112, v151);
      v114 = v145;
      UUID.init()();
      UUID.uuidString.getter();
      v66(v114, v113);
    }

    else if (v51 == enum case for AdPlacementType.productPageYMAL(_:))
    {
      type metadata accessor for LocalPreferences();
      static LocalPreferences.AppStoreKit.getter();
      if (qword_10096CF28 != -1)
      {
        swift_once();
      }

      v84 = sub_10002849C(&qword_100979740);
      sub_1000056A8(v84, qword_1009CDAF8);
      Preferences.subscript.getter();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      UUID.init()();
      UUID.uuidString.getter();
      v85 = *(v146 + 1);
      v85(v20, v151);
      AdamId.init(value:)();
      (v142)(v133, v143, v37);
      sub_10002849C(&unk_10097E340);
      v86 = swift_initStackObject();
      *(v86 + 16) = xmmword_1007B10D0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      *(v86 + 96) = &type metadata for Int;
      *(v86 + 72) = 1;
      sub_100397CE8(v86);
      swift_setDeallocating();
      sub_100075ACC(v86 + 32);
      v87 = v136;
      static String.Encoding.utf8.getter();
      v88 = String.data(using:allowLossyConversion:)();
      v90 = v89;
      (*(v137 + 8))(v87, v138);
      if (v90 >> 60 != 15)
      {
        v91 = objc_opt_self();
        v92 = Data._bridgeToObjectiveC()().super.isa;
        v153 = 0;
        v93 = [v91 JSONObjectWithData:v92 options:0 error:&v153];

        if (v93)
        {
          v94 = v153;
          _bridgeAnyObjectToAny(_:)();
          sub_100075B34(v88, v90);
          swift_unknownObjectRelease();
          sub_10002849C(&qword_1009915E0);
          swift_dynamicCast();
        }

        else
        {
          v115 = v153;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100075B34(v88, v90);
        }
      }

      v111 = v131;
      OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)();
      v116 = v144;
      UUID.init()();
      v146 = UUID.uuidString.getter();
      v117 = v151;
      v85(v116, v151);
      v118 = v145;
      UUID.init()();
      UUID.uuidString.getter();
      v85(v118, v117);
    }

    else
    {
      if (v51 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
      {
        Response = type metadata accessor for OnDeviceAdvertFetchResponse();
        (*(*(Response - 8) + 56))(v152, 1, 1, Response);
        return (*(v38 + 8))(v50, v37);
      }

      type metadata accessor for LocalPreferences();
      static LocalPreferences.AppStoreKit.getter();
      if (qword_10096CF28 != -1)
      {
        swift_once();
      }

      v95 = sub_10002849C(&qword_100979740);
      sub_1000056A8(v95, qword_1009CDAF8);
      Preferences.subscript.getter();

      if (v153 == 2 || (v153 & 1) == 0)
      {
        goto LABEL_37;
      }

      v96 = v128;
      UUID.init()();
      UUID.uuidString.getter();
      v97 = *(v146 + 1);
      v97(v96, v151);
      AdamId.init(value:)();
      (v142)(v130, v143, v37);
      sub_10002849C(&unk_10097E340);
      v98 = swift_initStackObject();
      *(v98 + 16) = xmmword_1007B10D0;
      v153 = 1953459315;
      v154 = 0xE400000000000000;
      AnyHashable.init<A>(_:)();
      *(v98 + 96) = &type metadata for Int;
      *(v98 + 72) = 1;
      sub_100397CE8(v98);
      swift_setDeallocating();
      sub_100075ACC(v98 + 32);
      v99 = v136;
      static String.Encoding.utf8.getter();
      v100 = String.data(using:allowLossyConversion:)();
      v102 = v101;
      (*(v137 + 8))(v99, v138);
      if (v102 >> 60 != 15)
      {
        v103 = objc_opt_self();
        v104 = Data._bridgeToObjectiveC()().super.isa;
        v153 = 0;
        v105 = [v103 JSONObjectWithData:v104 options:0 error:&v153];

        if (v105)
        {
          v106 = v153;
          _bridgeAnyObjectToAny(_:)();
          sub_100075B34(v100, v102);
          swift_unknownObjectRelease();
          sub_10002849C(&qword_1009915E0);
          swift_dynamicCast();
        }

        else
        {
          v119 = v153;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          sub_100075B34(v100, v102);
        }
      }

      v111 = v129;
      OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)();
      v120 = v144;
      UUID.init()();
      v146 = UUID.uuidString.getter();
      v121 = v151;
      v97(v120, v151);
      v122 = v145;
      UUID.init()();
      UUID.uuidString.getter();
      v97(v122, v121);
    }

    v124 = v147;
    v123 = v148;
    v125 = v149;
    (*(v147 + 16))(v149, v111, v148);
    (*(v124 + 56))(v125, 0, 1, v123);
    FailReason = type metadata accessor for OnDeviceAdFetchFailReason();
    (*(*(FailReason - 8) + 56))(v150, 1, 1, FailReason);
    v64 = v152;
    OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
    (*(v124 + 8))(v111, v123);
    goto LABEL_46;
  }

  type metadata accessor for LocalPreferences();
  static LocalPreferences.AppStoreKit.getter();
  if (qword_10096CF10 != -1)
  {
    swift_once();
  }

  v52 = sub_10002849C(&qword_100979740);
  sub_1000056A8(v52, qword_1009CDAB0);
  Preferences.subscript.getter();

  if (v153 == 2 || (v153 & 1) == 0)
  {
    static LocalPreferences.AppStoreKit.getter();
    if (qword_10096CF18 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v52, qword_1009CDAC8);
    Preferences.subscript.getter();

    if (v153 != 2 && (v153 & 1) != 0)
    {
      v76 = v144;
      UUID.init()();
      UUID.uuidString.getter();
      v77 = *(v146 + 1);
      v78 = v151;
      v77(v76, v151);
      v79 = v145;
      UUID.init()();
      UUID.uuidString.getter();
      v77(v79, v78);
      (*(v147 + 56))(v149, 1, 1, v148);
      v80 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v81 = type metadata accessor for OnDeviceAdFetchFailReason();
      v82 = *(v81 - 8);
      v83 = v150;
      (*(v82 + 104))(v150, v80, v81);
      (*(v82 + 56))(v83, 0, 1, v81);
      v64 = v152;
      OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
      goto LABEL_46;
    }

LABEL_37:
    v107 = type metadata accessor for OnDeviceAdvertFetchResponse();
    return (*(*(v107 - 8) + 56))(v152, 1, 1, v107);
  }

  v53 = v144;
  UUID.init()();
  v54 = UUID.uuidString.getter();
  v139 = v55;
  v140 = v54;
  v56 = *(v146 + 1);
  v57 = v151;
  v56(v53, v151);
  v146 = ":SOME_CPP_VERSION_ID}}}]}";
  AdamId.init(value:)();
  (v142)(v46, v143, v37);
  OnDeviceAdvert.init(instanceId:impressionId:adamId:placementType:metadata:privacy:positionInfo:appMetadata:cppIds:alignedRegionDetails:)();
  UUID.init()();
  v146 = UUID.uuidString.getter();
  v143 = v58;
  v56(v53, v57);
  v59 = v145;
  UUID.init()();
  UUID.uuidString.getter();
  v56(v59, v57);
  v60 = v147;
  v61 = v148;
  v62 = v149;
  (*(v147 + 16))(v149, v36, v148);
  (*(v60 + 56))(v62, 0, 1, v61);
  v63 = type metadata accessor for OnDeviceAdFetchFailReason();
  (*(*(v63 - 8) + 56))(v150, 1, 1, v63);
  v64 = v152;
  OnDeviceAdvertFetchResponse.init(clientRequestId:iAdId:ad:failureReason:)();
  (*(v60 + 8))(v36, v61);
LABEL_46:
  v127 = type metadata accessor for OnDeviceAdvertFetchResponse();
  return (*(*(v127 - 8) + 56))(v64, 0, 1, v127);
}

uint64_t sub_100075ACC(uint64_t a1)
{
  v2 = sub_10002849C(&unk_1009827A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100075B34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100061EE8(a1, a2);
  }

  return a1;
}

id sub_100075B48(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_100972400);
  __chkstk_darwin(v10);
  *&v4[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViewCount] = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  ViewRecycler.init()();
  sub_100078C00();
  ReusePool.init(recycler:limit:)();
  swift_weakInit();
  v11 = &v4[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_impressionsUpdateBlock];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_todayCardStyle;
  v13 = enum case for TodayCard.Style.light(_:);
  v14 = type metadata accessor for TodayCard.Style();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_clickActionHandler];
  *v15 = 0;
  v15[1] = 0;
  v4[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_wantsCardConsistentMargins] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_10002849C(&qword_10097B110);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B10D0;
  *(v17 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v17 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v19[3] = ObjectType;
  v19[0] = v16;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(v19);
  return v16;
}

void sub_100075E30()
{
  v1 = v0;
  v2 = type metadata accessor for TodayCard.Style();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_isExpanded] & 1) != 0 || v0[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory] != 6 || (v7 = [v0 traitCollection], v8 = UITraitCollection.prefersAccessibilityLayouts.getter(), v7, (v8))
  {
    v9 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_todayCardStyle;
    swift_beginAccess();
    (*(v3 + 16))(v6, &v1[v9], v2);
    v10 = sub_1000A7C28(v6);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = [objc_opt_self() clearColor];
  }

  [v1 setBackgroundColor:v10];
}

int64_t sub_100075FD0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6)
{
  v8 = v6;
  v93 = a6;
  v85 = a2;
  v12 = a5;
  v13 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v13 - 8);
  v96 = v81 - v14;
  v15 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v15 - 8);
  v92 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Artwork.Crop();
  v17 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TodayCard.Style();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v8 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory);
  *(v8 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory) = a5;
  if (v12 == 7)
  {
    if (v24 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v8 setNeedsLayout];
    goto LABEL_6;
  }

  if (v24 == 7)
  {
    goto LABEL_5;
  }

  switch(v12)
  {
    case 6:
      if (v24 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v24 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v24 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v24 - 7) > 0xFFFFFFFC || v24 != v12)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  (*(v20 + 16))(v23, a4, v19, v21);
  v25 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_todayCardStyle;
  swift_beginAccess();
  (*(v20 + 24))(v8 + v25, v23, v19);
  swift_endAccess();
  sub_100075E30();
  (*(v20 + 8))(v23, v19);
  v26 = a1;
  v27 = TodayCardLockupListOverlay.lockups.getter();
  v28 = v27;
  v29 = v27 & 0xFFFFFFFFFFFFFF8;
  v30 = v27 >> 62;
  if (v27 >> 62)
  {
    while (1)
    {
      if (v28 < 0)
      {
        v26 = v28;
      }

      else
      {
        v26 = v29;
      }

      v79 = _CocoaArrayWrapper.endIndex.getter();
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      if (v79 >= 6)
      {
        v80 = 6;
      }

      else
      {
        v80 = v79;
      }

      if (v79 >= 0)
      {
        v7 = v80;
      }

      else
      {
        v7 = 6;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if (result < v7)
      {
        goto LABEL_130;
      }

LABEL_11:
      if ((v28 & 0xC000000000000001) != 0 && v7)
      {
        v26 = type metadata accessor for Lockup();

        _ArrayBuffer._typeCheckSlowPath(_:)(0);
        if (v7 != 1)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(1);
          if (v7 != 2)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(2);
            if (v7 != 3)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(3);
              if (v7 != 4)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(4);
                if (v7 != 5)
                {
                  _ArrayBuffer._typeCheckSlowPath(_:)(5);
                }
              }
            }
          }
        }
      }

      else
      {
      }

      v95 = v17;

      if (v30)
      {
        v17 = _CocoaArrayWrapper.subscript.getter();
        v97 = v32;
        v30 = v33;
        v26 = v34;

        v7 = v26 >> 1;
      }

      else
      {
        v17 = v28 & 0xFFFFFFFFFFFFFF8;
        v97 = (v28 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      if (__OFSUB__(v7, v30))
      {
        goto LABEL_114;
      }

      sub_100076E54(v7 - v30, v93);
      *(v8 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViewCount) = v7 - v30;
      v26 = [v8 traitCollection];
      [v8 bounds];
      Width = CGRectGetWidth(v100);
      if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
      {
        v41 = ASKDeviceTypeGetCurrent();
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;
        if (v42 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v44 != v45)
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        if (UITraitCollection.prefersAccessibilityLayouts.getter())
        {
          v46 = v30;
          v47 = [v26 preferredContentSizeCategory];
          v30 = UIContentSizeCategoryAccessibilityExtraLarge;
          v48 = UIContentSizeCategoryAccessibilityMedium;
          v49 = UIContentSizeCategoryAccessibilityExtraLarge;
          if (static UIContentSizeCategory.<= infix(_:_:)())
          {
            v30 = v46;
            if (static UIContentSizeCategory.>= infix(_:_:)())
            {
              v50 = static UIContentSizeCategory.<= infix(_:_:)();

              if (v50)
              {
                goto LABEL_62;
              }
            }

            else
            {
            }

            if (qword_10096EFE0 == -1)
            {
LABEL_61:
              floor(sub_1002D2EF4(v26, &xmmword_1009D3ED0, 1));
LABEL_62:
              v82 = sub_100397504(&off_1008AF220);

              goto LABEL_71;
            }

LABEL_122:
            swift_once();
            goto LABEL_61;
          }

LABEL_118:
          __break(1u);
        }

        else if (qword_10096EFE0 == -1)
        {
          goto LABEL_62;
        }

        swift_once();
        goto LABEL_62;
      }

      v98 = v30;
      v30 = &StringUserDefaultsDebugSetting;
      v36 = [v26 preferredContentSizeCategory];
      v37 = UIContentSizeCategoryAccessibilityMedium;
      v38 = UIContentSizeCategoryAccessibilityExtraLarge;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        goto LABEL_115;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v39 = static UIContentSizeCategory.<= infix(_:_:)();

        v40 = 20.0;
        if (v39)
        {
          if (Width <= 405.0)
          {
            v40 = 10.0;
          }

          else
          {
            v40 = 16.0;
          }
        }
      }

      else
      {

        v40 = 20.0;
      }

      v51 = [v26 preferredContentSizeCategory];
      v52 = v37;
      v53 = v38;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        goto LABEL_116;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v54 = static UIContentSizeCategory.<= infix(_:_:)();

        if (v54)
        {
          v55 = 1;
          if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_55;
        }
      }

      else
      {
      }

      v55 = 2;
      if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
      {
LABEL_51:
        if (qword_10096EFE0 != -1)
        {
          swift_once();
        }

        goto LABEL_67;
      }

LABEL_55:
      v56 = [v26 preferredContentSizeCategory];
      v57 = v52;
      v58 = v53;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        __break(1u);
        goto LABEL_122;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v59 = static UIContentSizeCategory.<= infix(_:_:)();

        if (v59)
        {
          goto LABEL_67;
        }
      }

      else
      {
      }

      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      floor((sub_1002D2EF4(v26, &xmmword_1009D3ED0, 1) - v40 * (v55 - 1)) / v55);
LABEL_67:
      v60 = [v26 preferredContentSizeCategory];
      v30 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      v61 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
      v62 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
      if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
      {
        goto LABEL_117;
      }

      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        static UIContentSizeCategory.<= infix(_:_:)();
      }

      v82 = sub_100397504(_swiftEmptyArrayStorage);

      v30 = v98;
LABEL_71:
      v28 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViews;
      swift_beginAccess();
      v84 = v8;
      v63 = *(v8 + v28);

      v83 = v17;
      swift_unknownObjectRetain();
      if (v30 == v7)
      {
LABEL_72:

        swift_unknownObjectRelease();
        v64 = v84;
        sub_100075E30();
        [v64 setNeedsLayout];
        return swift_unknownObjectRelease();
      }

      v65 = 0;
      v8 = (v63 & 0xFFFFFFFFFFFFFF8);
      if (v63 < 0)
      {
        v66 = v63;
      }

      else
      {
        v66 = v63 & 0xFFFFFFFFFFFFFF8;
      }

      v81[1] = v66;
      v86 = v7;
      v87 = (v95 + 8);
      v29 = v63 >> 62;
      v94 = v63 & 0xC000000000000001;
      v95 = v63 >> 62;
      v88 = v63 & 0xFFFFFFFFFFFFFF8;
      v89 = v63;
      while (v30 < v7)
      {
        v17 = *(v97 + 8 * v30);
        if (v95)
        {
          if (v65 == _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_72;
          }
        }

        else if (v65 == v8[2])
        {
          goto LABEL_72;
        }

        if (v94)
        {

          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v29 = v8[2];
          if (v65 >= v29)
          {
            goto LABEL_108;
          }

          v28 = *(v63 + 8 * v65 + 32);

          v67 = v28;
        }

        v68 = v67;
        if (__OFADD__(v65, 1))
        {
          goto LABEL_107;
        }

        v69 = Lockup.icon.getter();
        if (v69)
        {
          v28 = v69;
          v98 = v30;
          v70 = Lockup.clickAction.getter();
          v71 = v90;
          Artwork.crop.getter();
          Artwork.Crop.preferredContentMode.getter();
          (*v87)(v71, v91);
          Artwork.config(_:mode:prefersLayeredImage:)();
          v72 = *&v68[OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_artworkView];
          Artwork.style.getter();
          ArtworkView.style.setter();
          [v72 setContentMode:Artwork.contentMode.getter()];
          ArtworkLoaderConfig.size.getter();
          ArtworkView.imageSize.setter();
          if (!Artwork.backgroundColor.getter())
          {
            sub_100028BB8();
            static UIColor.placeholderBackground.getter();
          }

          ArtworkView.backgroundColor.setter();
          type metadata accessor for ArtworkView();
          sub_1000799D4(&qword_100970E80, &type metadata accessor for ArtworkView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
          if (v70)
          {
            v99 = v70;
            type metadata accessor for Action();
            type metadata accessor for BaseObjectGraph();
            sub_1000799D4(&qword_100992FB0, &type metadata accessor for Action);

            v73 = v96;
            ComponentModel.pairedWith<A>(objectGraph:)();

            v74 = 0;
            v7 = v86;
            v30 = v98;
          }

          else
          {

            v74 = 1;
            v7 = v86;
            v30 = v98;
            v73 = v96;
          }

          v75 = sub_10002849C(&unk_10097B3D0);
          (*(*(v75 - 8) + 56))(v73, v74, 1, v75);
          v76 = OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_clickAction;
          swift_beginAccess();
          sub_100079964(v73, &v68[v76]);
          swift_endAccess();
          v77 = v68;
          Lockup.title.getter();
          v8 = v88;
          if (v78)
          {
            v68 = String._bridgeToObjectiveC()();
          }

          else
          {
            v68 = 0;
          }

          [v77 setAccessibilityLabel:v68];

          v63 = v89;
        }

        else
        {
        }

        ++v30;

        ++v65;
        if (v7 == v30)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
    }
  }

  result = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 6)
  {
    v7 = 6;
  }

  else
  {
    v7 = result;
  }

  if (result >= v7)
  {
    goto LABEL_11;
  }

LABEL_130:
  __break(1u);
  return result;
}

void sub_100076E54(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViews;
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() == a1)
    {
      return;
    }
  }

  else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) == a1)
  {
    return;
  }

  v8 = *&v3[v6];
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v10 = *&v3[v6];
  v11 = v10 >> 62;
  if (v9 >= a1)
  {
    if (!v11)
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 - a1;
      if (!__OFSUB__(v15, a1))
      {
        goto LABEL_18;
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }

  else
  {
    if (v11)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
      v13 = a1 - v23;
      if (!__OFSUB__(a1, v23))
      {
LABEL_10:
        if ((v13 & 0x8000000000000000) == 0)
        {
          for (; v13; --v13)
          {
            swift_beginAccess();
            sub_10002849C(&qword_100972500);
            ReusePool.dequeue(or:)();
            swift_endAccess();
            [v3 addSubview:v25];
            swift_beginAccess();
            v14 = v25;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
          }

          return;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = a1 - v12;
      if (!__OFSUB__(a1, v12))
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  v24 = _CocoaArrayWrapper.endIndex.getter();
  v16 = v24 - a1;
  if (__OFSUB__(v24, a1))
  {
    goto LABEL_39;
  }

LABEL_18:
  if ((v16 & 0x8000000000000000) != 0)
  {
LABEL_41:
    __break(1u);
    return;
  }

  for (; v16; --v16)
  {
    swift_beginAccess();
    a1 = *&v3[v6];
    if (a1 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_7;
      }
    }

    else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    *&v3[v6] = a1;
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_100549964(a1);
    }

    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = v18 - 1;
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v19 + 0x20);
    *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v19;
    *&v3[v6] = a1;
    swift_endAccess();
    if (a2)
    {
      v21 = *&v20[OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_artworkView];
      type metadata accessor for ArtworkView();
      sub_1000799D4(&qword_100970E80, &type metadata accessor for ArtworkView);
      v22 = v21;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }

    [v20 removeFromSuperview];
    v25 = v20;
    swift_beginAccess();
    sub_10002849C(&qword_100972500);
    ReusePool.recycle(_:)();
    swift_endAccess();
  }
}

id sub_10007721C@<X0>(void *a1@<X8>)
{
  type metadata accessor for TodayCardChinLockupListIconView(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_10007725C()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for LayoutRect();
  v63 = *(v4 - 8);
  *&v5 = __chkstk_darwin(v4).n128_u64[0];
  v7 = &v59.i8[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69[0].receiver = v2;
  v69[0].super_class = ObjectType;
  [(objc_super *)v69 layoutSubviews];
  v8 = [v2 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v72);
  v62 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory;
  v10 = v2[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory];
  v61 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_isExpanded;
  v11 = v2[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_isExpanded];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v64 = v4;
  if (v12)
  {
    v11 = &StringUserDefaultsDebugSetting;
    v13 = [v8 preferredContentSizeCategory];
    LOBYTE(v10) = UIContentSizeCategoryAccessibilityExtraLarge;
    v14 = UIContentSizeCategoryAccessibilityMedium;
    v15 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (static UIContentSizeCategory.<= infix(_:_:)())
    {
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v16 = static UIContentSizeCategory.<= infix(_:_:)();

        v17 = 20.0;
        v18 = 10.0;
        if (Width > 405.0)
        {
          v18 = 16.0;
        }

        if (v16)
        {
          v1 = v18;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v31 = [v8 preferredContentSizeCategory];
      v32 = v14;
      v33 = v15;
      if (static UIContentSizeCategory.<= infix(_:_:)())
      {
        if (static UIContentSizeCategory.>= infix(_:_:)())
        {
          v34 = static UIContentSizeCategory.<= infix(_:_:)();

          if (v34)
          {
            v10 = 1;
            if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_33:
            v35 = [v8 preferredContentSizeCategory];
            v36 = v32;
            v37 = v33;
            if (static UIContentSizeCategory.<= infix(_:_:)())
            {
              if (static UIContentSizeCategory.>= infix(_:_:)())
              {
                v38 = static UIContentSizeCategory.<= infix(_:_:)();

                if (v38)
                {
                  if (Width <= 405.0)
                  {
                    v24 = 68.0;
                  }

                  else
                  {
                    v24 = 120.0;
                  }

LABEL_54:
                  v25 = v24;
LABEL_55:
                  v47 = [v8 v11[45].base_prots];
                  v48 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v49 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (static UIContentSizeCategory.<= infix(_:_:)())
                  {
                    if (static UIContentSizeCategory.>= infix(_:_:)())
                    {
                      v50 = static UIContentSizeCategory.<= infix(_:_:)();

                      if (v50)
                      {
                        v44 = 1;
LABEL_61:
                        v43 = sub_100397504(_swiftEmptyArrayStorage);

                        v46 = v1;
                        v45 = v1;
                        v59 = xmmword_1007B2FB0;
                        v60 = xmmword_1007B2FB0;
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                    }

                    v44 = 0;
                    goto LABEL_61;
                  }

                  goto LABEL_67;
                }
              }

              else
              {
              }

              if (qword_10096EFE0 != -1)
              {
                swift_once();
              }

              v24 = floor((sub_1002D2EF4(v8, &xmmword_1009D3ED0, 1) - v1 * (v10 - 1)) / v10);
              goto LABEL_54;
            }

            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
        }

        v10 = 2;
        if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
        {
LABEL_29:
          if (qword_10096EFE0 == -1)
          {
LABEL_30:
            v25 = *(&xmmword_1009D3ED0 + 1);
            v24 = *&xmmword_1009D3ED0;
            goto LABEL_55;
          }

LABEL_70:
          swift_once();
          goto LABEL_30;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v19 = ASKDeviceTypeGetCurrent();
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {

    v1 = 16.0;
    if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v27 = [v8 preferredContentSizeCategory];
    v28 = UIContentSizeCategoryAccessibilityMedium;
    v29 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
    {
      __break(1u);
      goto LABEL_70;
    }

    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      v30 = static UIContentSizeCategory.<= infix(_:_:)();

      if (v30)
      {
        if (Width <= 405.0)
        {
          v24 = 68.0;
        }

        else
        {
          v24 = 120.0;
        }

        goto LABEL_42;
      }
    }

    else
    {
    }

    if (qword_10096EFE0 == -1)
    {
LABEL_41:
      v24 = floor(sub_1002D2EF4(v8, &xmmword_1009D3ED0, 1));
LABEL_42:
      v25 = v24;
      goto LABEL_43;
    }

LABEL_72:
    swift_once();
    goto LABEL_41;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    goto LABEL_18;
  }

LABEL_12:
  if (qword_10096EFE0 != -1)
  {
LABEL_68:
    swift_once();
  }

  v25 = *(&xmmword_1009D3ED0 + 1);
  v24 = *&xmmword_1009D3ED0;
LABEL_43:
  if (v10 == 6)
  {
    v39 = v11;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v40 = -1;
  }

  else
  {
    v40 = 0;
  }

  v41 = vdupq_n_s64(v40);
  v42 = vbslq_s8(v41, xmmword_1007B2FA0, *&UIEdgeInsetsZero.top);
  v59 = vbslq_s8(v41, xmmword_1007B2FA0, *&UIEdgeInsetsZero.bottom);
  v60 = v42;
  v43 = sub_100397504(&off_1008AF590);

  v44 = 0;
  v45 = 22.0;
  v46 = 8.0;
  v10 = 1;
LABEL_62:
  swift_beginAccess();

  v52 = sub_1002A5178(v51);

  v53 = v2[v62];
  v54 = v2[v61];
  *&v65.receiver = v24;
  *&v65.super_class = v25;
  *&v66.receiver = v1;
  *&v66.super_class = v46;
  *&v67.receiver = v45;
  v67.super_class = v10;
  LOBYTE(v68[0]) = v44;
  *(v68 + 1) = v71[0];
  DWORD1(v68[0]) = *(v71 + 3);
  *(&v68[1] + 8) = v59;
  *(v68 + 8) = v60;
  *(&v68[2] + 1) = v43;
  *&v68[3] = v52;
  BYTE8(v68[3]) = v53;
  BYTE9(v68[3]) = v54;
  v69[5] = v68[1];
  v70[0] = v68[2];
  v69[1] = v65;
  v69[2] = v66;
  v69[3] = v67;
  v69[4] = v68[0];
  *(v70 + 10) = *(&v68[2] + 10);
  [v2 bounds];
  sub_1000570E8(v2);
  sub_100079A98(&v65);
  (*(v63 + 8))(v7, v64);
  v55 = &v2[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_impressionsUpdateBlock];
  result = swift_beginAccess();
  v57 = *v55;
  if (*v55)
  {

    v57(v58);
    return sub_10001F63C(v57);
  }

  return result;
}

double sub_100077AE4()
{
  v2 = v0;
  v3 = [v0 traitCollection];
  [v2 bounds];
  Width = CGRectGetWidth(v71);
  v5 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory;
  v6 = v2[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory];
  v7 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_isExpanded;
  v8 = v2[OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_isExpanded];
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v6 = &StringUserDefaultsDebugSetting;
    v9 = [v3 preferredContentSizeCategory];
    v10 = UIContentSizeCategoryAccessibilityMedium;
    v11 = UIContentSizeCategoryAccessibilityExtraLarge;
    if (static UIContentSizeCategory.<= infix(_:_:)())
    {
      if (static UIContentSizeCategory.>= infix(_:_:)())
      {
        v12 = static UIContentSizeCategory.<= infix(_:_:)();

        v13 = 20.0;
        v14 = 10.0;
        if (Width > 405.0)
        {
          v14 = 16.0;
        }

        if (v12)
        {
          v1 = v14;
        }

        else
        {
          v1 = 20.0;
        }
      }

      else
      {

        v1 = 20.0;
      }

      v28 = [v3 preferredContentSizeCategory];
      v29 = v10;
      v30 = v11;
      if (static UIContentSizeCategory.<= infix(_:_:)())
      {
        if (static UIContentSizeCategory.>= infix(_:_:)())
        {
          v31 = static UIContentSizeCategory.<= infix(_:_:)();

          if (v31)
          {
            v8 = 1;
            if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
            {
              goto LABEL_31;
            }

LABEL_35:
            v32 = [v3 preferredContentSizeCategory];
            v33 = v29;
            v34 = v30;
            if (static UIContentSizeCategory.<= infix(_:_:)())
            {
              if (static UIContentSizeCategory.>= infix(_:_:)())
              {
                v35 = static UIContentSizeCategory.<= infix(_:_:)();

                if (v35)
                {
                  if (Width <= 405.0)
                  {
                    v22 = 68.0;
                  }

                  else
                  {
                    v22 = 120.0;
                  }

LABEL_56:
                  v23 = v22;
LABEL_57:
                  v43 = [v3 v6[45].base_prots];
                  v44 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
                  v45 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
                  if (static UIContentSizeCategory.<= infix(_:_:)())
                  {
                    if (static UIContentSizeCategory.>= infix(_:_:)())
                    {
                      v46 = static UIContentSizeCategory.<= infix(_:_:)();

                      if (v46)
                      {
                        v40 = 1;
LABEL_63:
                        v39 = sub_100397504(_swiftEmptyArrayStorage);

                        v42 = v1;
                        v41 = v1;
                        v62 = xmmword_1007B2FB0;
                        v63 = xmmword_1007B2FB0;
                        goto LABEL_64;
                      }
                    }

                    else
                    {
                    }

                    v40 = 0;
                    goto LABEL_63;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
              }

              if (qword_10096EFE0 != -1)
              {
                swift_once();
              }

              v22 = floor((sub_1002D2EF4(v3, &xmmword_1009D3ED0, 1) - v1 * (v8 - 1)) / v8);
              goto LABEL_56;
            }

            __break(1u);
            goto LABEL_78;
          }
        }

        else
        {
        }

        v8 = 2;
        if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
        {
LABEL_31:
          if (qword_10096EFE0 == -1)
          {
LABEL_32:
            v23 = *(&xmmword_1009D3ED0 + 1);
            v22 = *&xmmword_1009D3ED0;
            goto LABEL_57;
          }

LABEL_76:
          swift_once();
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v15 = ASKDeviceTypeGetCurrent();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    v1 = 16.0;
    if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_20:
    v24 = [v3 preferredContentSizeCategory];
    v25 = UIContentSizeCategoryAccessibilityMedium;
    v26 = UIContentSizeCategoryAccessibilityExtraLarge;
    if ((static UIContentSizeCategory.<= infix(_:_:)() & 1) == 0)
    {
      __break(1u);
      goto LABEL_76;
    }

    if (static UIContentSizeCategory.>= infix(_:_:)())
    {
      v27 = static UIContentSizeCategory.<= infix(_:_:)();

      if (v27)
      {
        if (Width <= 405.0)
        {
          v22 = 68.0;
        }

        else
        {
          v22 = 120.0;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }

    if (qword_10096EFE0 == -1)
    {
LABEL_43:
      v22 = floor(sub_1002D2EF4(v3, &xmmword_1009D3ED0, 1));
LABEL_44:
      v23 = v22;
      goto LABEL_45;
    }

LABEL_78:
    swift_once();
    goto LABEL_43;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
    v1 = 16.0;
  }

  else
  {
    v1 = 10.0;
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    goto LABEL_20;
  }

LABEL_17:
  if (qword_10096EFE0 != -1)
  {
LABEL_74:
    swift_once();
  }

  v23 = *(&xmmword_1009D3ED0 + 1);
  v22 = *&xmmword_1009D3ED0;
LABEL_45:
  if (v6 == 6)
  {
    v36 = v8;
  }

  else
  {
    v36 = 1;
  }

  if (v36)
  {
    v37 = -1;
  }

  else
  {
    v37 = 0;
  }

  v38 = vdupq_n_s64(v37);
  v62 = vbslq_s8(v38, xmmword_1007B2FA0, *&UIEdgeInsetsZero.bottom);
  v63 = vbslq_s8(v38, xmmword_1007B2FA0, *&UIEdgeInsetsZero.top);
  v39 = sub_100397504(&off_1008AF628);

  v40 = 0;
  v41 = 22.0;
  v42 = 8.0;
  v8 = 1;
LABEL_64:
  swift_beginAccess();

  v48 = sub_1002A5178(v47);

  v49 = v2[v5];
  v50 = v2[v7];
  *&v64 = v22;
  *(&v64 + 1) = v23;
  *&v65 = v1;
  *(&v65 + 1) = v42;
  *&v66 = v41;
  *(&v66 + 1) = v8;
  v67[0] = v40;
  *&v67[1] = v70[0];
  *&v67[4] = *(v70 + 3);
  *&v67[24] = v62;
  *&v67[8] = v63;
  *&v67[40] = v39;
  *&v67[48] = v48;
  v67[56] = v49;
  v67[57] = v50;
  v68[4] = *&v67[16];
  v69[0] = *&v67[32];
  v68[0] = v64;
  v68[1] = v65;
  v68[2] = v66;
  v68[3] = *v67;
  *(v69 + 10) = *&v67[42];
  v51 = [v2 traitCollection];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_1002D2EF4(v51, &xmmword_1009D3ED0, 1);
  UITraitCollection.prefersAccessibilityLayouts.getter();
  static UIEdgeInsets.vertical(top:bottom:)();
  UITraitCollection.prefersAccessibilityLayouts.getter();
  static UIEdgeInsets.vertical(top:bottom:)();

  v52 = [v2 traitCollection];
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1007B0B70;
  *(v53 + 32) = v52;
  v54 = v52;
  v55 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100057538(v55, v68);
  v57 = v56;
  sub_100079A98(&v64);

  if (v2[v7] & 1) != 0 || v2[v5] != 6 || (v58 = [v2 traitCollection], v59 = UITraitCollection.prefersAccessibilityLayouts.getter(), v58, (v59))
  {
    v60 = [v2 traitCollection];
    sub_1002D2EF4(v60, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
  }

  return v57;
}

uint64_t sub_100078450()
{
  v1 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViews;
  result = swift_beginAccess();
  v3 = *(v0 + v1);
  if (v3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v4 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = *&v6[OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_artworkView];
      type metadata accessor for ArtworkView();
      sub_1000799D4(&qword_100970E80, &type metadata accessor for ArtworkView);
      v9 = v8;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
    }

    while (v4 != v5);
  }

  return result;
}

void sub_1000785B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  swift_beginAccess();
  v13 = swift_weakLoadStrong();
  if (!v13)
  {

    return;
  }

  v14 = v13;
  sub_10002C0AC(a3, v27);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for TodayCard();
  if ((swift_dynamicCast() & 1) == 0 || (v15 = TodayCard.overlay.getter(), , !v15))
  {

LABEL_18:

    return;
  }

  type metadata accessor for TodayCardLockupListOverlay();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_18;
  }

  v16 = TodayCardLockupListOverlay.lockups.getter();
  v17 = v16;
  if (v16 >> 62)
  {
    v21 = v16;
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v17 = v21;
    if (v18)
    {
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_18;
  }

  v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_24;
  }

LABEL_8:
  v22[1] = v15;
  v25 = v14;
  if (v18 >= 1)
  {
    v19 = 0;
    v26 = v17 & 0xC000000000000001;
    v23 = (v8 + 8);
    v24 = (v8 + 32);
    do
    {
      v20 = v18;
      if (v26)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Lockup.impressionMetrics.getter();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_10002B894(v6, &qword_100973D30);
      }

      else
      {
        (*v24)(v10, v6, v7);
        [v12 frame];
        ImpressionsCalculator.addElement(_:at:)();

        (*v23)(v10, v7);
      }

      ++v19;
      v18 = v20;
    }

    while (v20 != v19);
    goto LABEL_24;
  }

  __break(1u);
}

void sub_100078A80()
{
  sub_100078B90();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TodayCard.Style();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100078B90()
{
  if (!qword_1009723F8)
  {
    sub_10002D1A8(&qword_100972400);
    sub_100078C00();
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_1009723F8);
    }
  }
}

unint64_t sub_100078C00()
{
  result = qword_100972408;
  if (!qword_100972408)
  {
    sub_10002D1A8(&qword_100972400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972408);
  }

  return result;
}

id sub_100078C6C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_100078CC4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_clickActionHandler);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4);
}

uint64_t sub_100078CE8()
{
  v1 = [v0 accessibilityElements];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100078D90()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_100078DF0(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

void sub_100078E88(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_100078F08()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_100078F64(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

void (*sub_100079024(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_100079A1C;
}

char *sub_1000790EC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_artworkView;
  type metadata accessor for ArtworkView();
  *&v4[v11] = static ArtworkView.iconArtworkView.getter();
  v12 = OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_clickAction;
  v13 = sub_10002849C(&unk_10097B3D0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v21.receiver = v5;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_artworkView;
  v16 = *&v14[OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_artworkView];
  v17 = v14;
  [v17 addSubview:v16];
  v18 = *&v14[v15];
  ArtworkView.setImageDisablesAnimations.setter();

  [*&v14[v15] setUserInteractionEnabled:0];
  v19 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v17 action:"handleTap"];
  [v19 setDelaysTouchesBegan:1];
  [v17 addGestureRecognizer:v19];

  return v17;
}

uint64_t sub_1000793FC()
{
  v1 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10002849C(&unk_10097B3D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC8AppStore31TodayCardChinLockupListIconView_clickAction;
  swift_beginAccess();
  sub_100079A28(v0 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_10097B3F0;
    v13 = v6;
    return sub_10002B894(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  ObjectGraphPair.objectGraph.getter();
  v14 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100972A00;
    v13 = v3;
    return sub_10002B894(v13, v12);
  }

  ObjectGraphPair.value.getter();
  v17 = ObjectGraphPair.objectGraph.getter();
  sub_1005F9AF4(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

uint64_t sub_1000797E0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100079818()
{
  sub_1000798B8();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000798B8()
{
  if (!qword_1009730B0)
  {
    sub_10002D1A8(&unk_10097B3D0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1009730B0);
    }
  }
}

uint64_t sub_100079964(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097B3F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000799D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100079A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097B3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100079AEC()
{
  v1 = sub_10002849C(&qword_100972400);
  __chkstk_darwin(v1);
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_lockupIconViewCount) = 0;
  type metadata accessor for TodayCardChinLockupListIconView(0);
  ViewRecycler.init()();
  sub_100078C00();
  ReusePool.init(recycler:limit:)();
  swift_weakInit();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_impressionsUpdateBlock);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_todayCardStyle;
  v4 = enum case for TodayCard.Style.light(_:);
  v5 = type metadata accessor for TodayCard.Style();
  (*(*(v5 - 8) + 104))(v0 + v3, v4, v5);
  v6 = (v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_clickActionHandler);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore27TodayCardChinLockupListView_wantsCardConsistentMargins) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100079CAC(void *a1)
{
  v16 = [*(v1 + 16) view];
  if (v16)
  {
    [a1 _systemContentInset];
    v4 = v3;
    v6 = v5;
    [a1 contentOffset];
    v8 = v7;
    v10 = v9;
    [a1 contentInset];
    v12 = v6 + v8 + v11;
    v14 = v4 + v10 + v13;
    [a1 bounds];
    [v16 setFrame:{sub_100079D98(v12, v14, v15)}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100079D98(double a1, double a2, double a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
  if (v6)
  {
    v7 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_alternateCell);
  }

  else
  {
    v7 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC8AppStore27ArticleHeaderViewController_cell);
    v6 = 0;
  }

  v9 = v6;
  sub_100769CEC(a3, v8, v7);

  type metadata accessor for ListTodayCardCollectionViewCell();
  swift_dynamicCastClass();
  return 0.0;
}

uint64_t sub_100079EBC()
{

  return swift_deallocClassInstance();
}

id sub_100079F24()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfLayoutContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  ShelfLayoutContext.contentPageGrid.getter();
  v8 = *(v5 + 8);
  v8(v7, v4);
  PageGrid.containerWidth.getter();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v11 = ShelfLayoutContext.traitCollection.getter();
  v8(v7, v4);
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v16.receiver = v13;
  v16.super_class = v12;
  return objc_msgSendSuper2(&v16, "init");
}

uint64_t sub_10007A130()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FootnoteLayout.Metrics();
  sub_100005644(v4, qword_1009CDB48);
  v19 = sub_1000056A8(v4, qword_1009CDB48);
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v17 = sub_1000056A8(v5, qword_1009D09B0);
  v6 = *(v5 - 8);
  v16 = *(v6 + 16);
  v18 = v6 + 16;
  v16(v3, v17, v5);
  v7 = enum case for FontSource.useCase(_:);
  v15 = v1[13];
  v15(v3, enum case for FontSource.useCase(_:), v0);
  v8 = type metadata accessor for StaticDimension();
  v26[3] = v8;
  v26[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v26);
  v24 = v0;
  v25 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v23);
  v10 = v1[2];
  v10(v9, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v11 = v1[1];
  v11(v3, v0);
  v16(v3, v17, v5);
  v15(v3, v7, v0);
  v24 = v8;
  v25 = &protocol witness table for StaticDimension;
  sub_1000056E0(v23);
  v21 = v0;
  v22 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v20);
  v10(v12, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v11(v3, v0);
  v21 = &type metadata for Double;
  v22 = &protocol witness table for Double;
  v20[0] = 0x4018000000000000;
  return FootnoteLayout.Metrics.init(textSpace:bottomSpace:chevronMargin:)();
}

uint64_t sub_10007A420()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.secondaryText.getter();
  qword_1009725B8 = result;
  return result;
}

uint64_t sub_10007A464()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.tertiaryText.getter();
  qword_1009725C0 = result;
  return result;
}

uint64_t sub_10007A4A8()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronForward(_:), v0, v2);
  v5 = objc_opt_self();
  v6 = UIFontTextStyleFootnote;
  v7 = [v5 configurationWithTextStyle:v6 scale:1];

  v8 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_1009CDB60 = v8;
  return result;
}

char *sub_10007A5F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v43 = type metadata accessor for Separator.Position();
  v10 = *(v43 - 8);
  __chkstk_darwin(v43);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Separator();
  v44 = *(v13 - 8);
  v45 = v13;
  __chkstk_darwin(v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DirectionalTextAlignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v20 - 8);
  v22 = &v42 - v21;
  *&v5[OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView] = 0;
  v5[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] = 0;
  v5[OBJC_IVAR____TtC8AppStore12FootnoteView_textLightensOnHighlight] = 0;
  v5[OBJC_IVAR____TtC8AppStore12FootnoteView_isHighlighted] = 0;
  if (qword_10096DE10 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D09B0);
  v25 = *(v23 - 8);
  (*(v25 + 16))(v22, v24, v23);
  (*(v25 + 56))(v22, 0, 1, v23);
  (*(v17 + 104))(v19, enum case for DirectionalTextAlignment.none(_:), v16);
  v26 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  (*(v10 + 104))(v12, enum case for Separator.Position.top(_:), v43);
  v48[3] = type metadata accessor for ZeroDimension();
  v48[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v48);
  static ZeroDimension.zero.getter();
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v27 = [objc_allocWithZone(type metadata accessor for SeparatorView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v28 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v29 = *(v44 + 40);
  v30 = v27;
  v29(&v27[v28], v15, v45);
  swift_endAccess();

  *&v5[OBJC_IVAR____TtC8AppStore12FootnoteView_separatorView] = v30;
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel;
  v37 = qword_10096CF38;
  v38 = *&v35[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
  if (v37 != -1)
  {
    swift_once();
  }

  [v38 setTextColor:qword_1009725B8];

  v39 = *&v35[v36];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v35 addSubview:*&v35[v36]];
  [v35 addSubview:*&v35[OBJC_IVAR____TtC8AppStore12FootnoteView_separatorView]];
  sub_10002849C(&qword_10097B110);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1007B10D0;
  *(v40 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v40 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v35;
}

double sub_10007AC80()
{
  v1 = type metadata accessor for FootnoteLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FootnoteLayout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096CF30 != -1)
  {
    swift_once();
  }

  v9 = sub_1000056A8(v1, qword_1009CDB48);
  (*(v2 + 16))(v4, v9, v1);
  v10 = *(v0 + OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel);
  v19[8] = type metadata accessor for DynamicTypeLabel();
  v19[9] = &protocol witness table for UILabel;
  v19[5] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView);
  if (v11)
  {
    v12 = sub_100005744(0, &qword_100972EB0);
    v13 = &protocol witness table for UIView;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v11;
  v19[3] = v12;
  v19[4] = v13;
  v14 = v10;
  v15 = v11;
  FootnoteLayout.init(metrics:labelView:chevronView:)();
  sub_10007B608();
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_10007AF3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v39 = type metadata accessor for Separator();
  v3 = *(v39 - 8);
  __chkstk_darwin(v39);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for LayoutRect();
  v6 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FootnoteLayout.Metrics();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for FootnoteLayout();
  v36 = *(v38 - 8);
  *&v13 = __chkstk_darwin(v38).n128_u64[0];
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v37 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v13);
  if (qword_10096CF30 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v9, qword_1009CDB48);
  (*(v10 + 16))(v12, v16, v9);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore12FootnoteView_textLabel];
  v46 = type metadata accessor for DynamicTypeLabel();
  v47 = &protocol witness table for UILabel;
  v45 = v17;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView];
  if (v18)
  {
    v19 = sub_100005744(0, &qword_100972EB0);
    v20 = &protocol witness table for UIView;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v41 = 0;
    v42 = 0;
  }

  v40 = v18;
  v43 = v19;
  v44 = v20;
  v21 = v17;
  v22 = v18;
  FootnoteLayout.init(metrics:labelView:chevronView:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  FootnoteLayout.placeChildren(relativeTo:in:)();
  (*(v6 + 8))(v8, v35);
  v23 = *&v1[OBJC_IVAR____TtC8AppStore12FootnoteView_separatorView];
  [v1 bounds];
  v24 = OBJC_IVAR____TtC8AppStore13SeparatorView_separator;
  swift_beginAccess();
  v25 = v39;
  (*(v3 + 16))(v5, &v23[v24], v39);
  Separator.frame(forBoundingRect:in:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v3 + 8))(v5, v25);
  [v23 setFrame:{v27, v29, v31, v33}];
  return (*(v36 + 8))(v15, v38);
}

void sub_10007B3E8(char a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron] != (a1 & 1))
  {
    if (v1[OBJC_IVAR____TtC8AppStore12FootnoteView_hasChevron])
    {
      v2 = v1;
      if (qword_10096CF48 != -1)
      {
        swift_once();
      }

      v3 = [objc_allocWithZone(UIImageView) initWithImage:qword_1009CDB60];
      sub_100005744(0, &qword_100970180);
      v4 = static UIColor.tableViewCellChevron.getter();
      [v3 setTintColor:v4];

      v5 = OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView;
      v6 = v2;
      v7 = *&v2[OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView];
      if (v7)
      {
        [v7 removeFromSuperview];
        v8 = *&v2[v5];
      }

      else
      {
        v8 = 0;
      }

      *&v6[v5] = v3;
      v11 = v3;

      [v6 addSubview:v11];
      [v6 setNeedsLayout];
      v10 = v11;
    }

    else
    {
      v9 = OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView;
      v10 = *&v1[OBJC_IVAR____TtC8AppStore12FootnoteView_chevronView];
      if (v10)
      {
        [v10 removeFromSuperview];
        v10 = *&v1[v9];
      }

      *&v1[v9] = 0;
    }
  }
}

unint64_t sub_10007B608()
{
  result = qword_100992FD0;
  if (!qword_100992FD0)
  {
    type metadata accessor for FootnoteLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992FD0);
  }

  return result;
}

void sub_10007B660(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-v9 - 8];
  sub_10007FF30(a3, &v28[-v9 - 8]);
  v11 = type metadata accessor for Artwork.URLTemplate();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10002B894(v10, &qword_100972638);
  }

  else
  {
    v16 = Artwork.URLTemplate.isSystemImage.getter();
    (*(v12 + 8))(v10, v11);
    if (v16)
    {
      if (a1)
      {
        v17 = [a1 imageByApplyingSymbolConfiguration:a5];
        if (v17)
        {
          v18 = v17;
          [v17 size];
          v20 = v19;
          v22 = v21;

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v24 = Strong;
            v25 = ArtworkView.frame.modify();
            *(v26 + 16) = v20;
            *(v26 + 24) = v22;
            v25(v28, 0);
          }
        }
      }
    }
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v15 = v13;
    v29.value.super.isa = a1;
    v29.is_nil = 0;
    ArtworkView.show(image:isAnimationPermitted:)(v29, v14);
  }
}

uint64_t sub_10007B86C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v137 = a5;
  v142 = a4;
  v140 = a3;
  v139 = a2;
  v10 = type metadata accessor for AutomationSemantics();
  v144 = *(v10 - 8);
  v145 = v10;
  __chkstk_darwin(v10);
  v143 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_10097B3F0);
  __chkstk_darwin(v12 - 8);
  v135 = &v117 - v13;
  v133 = type metadata accessor for BadgeViewSpacing();
  v132 = *(v133 - 8);
  __chkstk_darwin(v133);
  v130 = (&v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v131 = &v117 - v16;
  v146 = type metadata accessor for BadgeType();
  v149 = *(v146 - 8);
  __chkstk_darwin(v146);
  v138 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v134 = &v117 - v19;
  __chkstk_darwin(v20);
  v129 = &v117 - v21;
  __chkstk_darwin(v22);
  v124 = &v117 - v23;
  v127 = type metadata accessor for BadgeValueViewAlignment();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v128 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v117 - v26;
  v27 = sub_10002849C(&qword_100972620);
  __chkstk_darwin(v27 - 8);
  v118 = &v117 - v28;
  v136 = type metadata accessor for BadgeLeadingValue();
  v29 = *(v136 - 1);
  __chkstk_darwin(v136);
  v31 = &v117 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for BadgeCaptionCappingType();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v123 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v117 - v36;
  type metadata accessor for ArtworkLoader();
  v38 = type metadata accessor for BaseObjectGraph();
  v120 = a6;
  v119 = v38;
  inject<A, B>(_:from:)();
  v39 = *&v152[0];
  v122 = sub_10007E1E4();
  v121 = v40;

  v41 = sub_10007E660(a1, v39);
  v141 = v39;

  v150 = v33;
  v42 = *(v33 + 104);
  v147 = v37;
  v148 = v32;
  v42(v37, enum case for BadgeCaptionCappingType.none(_:), v32);
  Badge.leadingValue.getter();
  v43 = OBJC_IVAR____TtC8AppStore9BadgeView_leadingValue;
  swift_beginAccess();
  v44 = v136;
  (*(v29 + 24))(&v7[v43], v31, v136);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v29 + 8))(v31, v44);
  v45 = &v7[OBJC_IVAR____TtC8AppStore9BadgeView_valueText];
  v46 = v121;
  *v45 = v122;
  *(v45 + 1) = v46;

  sub_1004FF2BC();
  v47 = OBJC_IVAR____TtC8AppStore9BadgeView_valueView;
  v48 = *&v7[OBJC_IVAR____TtC8AppStore9BadgeView_valueView];
  v49 = v41;
  if (v48)
  {
    [v48 removeFromSuperview];
    v48 = *&v7[v47];
  }

  *&v7[v47] = v41;
  v50 = v49;

  v51 = v148;
  v52 = v126;
  if (v41)
  {
    v53 = [v7 tintColor];
    [v50 setTintColor:v53];

    [v7 addSubview:v50];
  }

  [v7 setNeedsLayout];
  v136 = v50;

  v54 = Badge.heading.getter();
  if (v55)
  {
    *&v152[0] = v54;
    *(&v152[0] + 1) = v55;
    v56 = v118;
    static Locale.storefront.getter();
    v57 = type metadata accessor for Locale();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    sub_10007FED4();
    v58 = StringProtocol.uppercased(with:)();
    v60 = v59;
    sub_10002B894(v56, &qword_100972620);

    v54 = v58;
  }

  else
  {
    v60 = 0;
  }

  v61 = v128;
  sub_1004FF1B8(v54, v60);
  v62 = [v7 traitCollection];
  v63 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v63)
  {
    v64 = 4;
  }

  else
  {
    v64 = 1;
  }

  v65 = OBJC_IVAR____TtC8AppStore9BadgeView_alignment;
  *&v7[OBJC_IVAR____TtC8AppStore9BadgeView_alignment] = v64;
  [*&v7[OBJC_IVAR____TtC8AppStore9BadgeView_valueLabel] setTextAlignment:?];
  v66 = *&v7[v65];
  v122 = *&v7[OBJC_IVAR____TtC8AppStore9BadgeView_captionLabel];
  [v122 setTextAlignment:v66];
  [*&v7[OBJC_IVAR____TtC8AppStore9BadgeView_headingLabel] setTextAlignment:*&v7[v65]];
  [v7 setNeedsLayout];
  v67 = v150;
  v68 = v123;
  (*(v150 + 16))(v123, v147, v51);
  v69 = OBJC_IVAR____TtC8AppStore9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v67 + 24))(&v7[v69], v68, v51);
  swift_endAccess();
  [v7 setNeedsLayout];
  v70 = *(v67 + 8);
  v150 = v67 + 8;
  v128 = v70;
  (v70)(v68, v51);
  v7[OBJC_IVAR____TtC8AppStore9BadgeView_isTruncatable] = dispatch thunk of Badge.isTruncatable.getter() & 1;
  [v7 setNeedsLayout];
  v71 = v124;
  Badge.type.getter();
  v72 = v146;
  v73 = *(v149 + 88);
  v74 = v73(v71, v146);
  if (v74 == enum case for BadgeType.contentRating(_:))
  {
    v75 = v127;
    (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.center(_:), v127);
    v76 = enum case for BadgeType.chartPosition(_:);
  }

  else
  {
    v76 = enum case for BadgeType.chartPosition(_:);
    v75 = v127;
    if (v74 == enum case for BadgeType.chartPosition(_:))
    {
      v76 = v74;
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.topOfValueLabel(_:), v127);
    }

    else if (v74 == enum case for BadgeType.artwork(_:))
    {
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.centerOfView(_:), v127);
    }

    else
    {
      v77 = *(v52 + 104);
      if (v74 == enum case for BadgeType.paragraph(_:))
      {
        v77(v61, enum case for BadgeValueViewAlignment.topOfView(_:), v127);
      }

      else
      {
        v77(v61, enum case for BadgeValueViewAlignment.baseline(_:), v127);
        (*(v149 + 8))(v71, v72);
      }
    }
  }

  v78 = v125;
  (*(v52 + 32))(v125, v61, v75);
  v79 = v75;
  v80 = OBJC_IVAR____TtC8AppStore9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v52 + 24))(&v7[v80], v78, v79);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v52 + 8))(v78, v79);
  v81 = v129;
  Badge.type.getter();
  v82 = v73;
  if (v73(v81, v72) == v76)
  {
    v83 = v130;
    *v130 = 0;
    v84 = v132;
    v85 = v133;
    (*(v132 + 104))(v83, enum case for BadgeViewSpacing.spacing(_:), v133);
  }

  else
  {
    v84 = v132;
    v83 = v130;
    v85 = v133;
    (*(v132 + 104))(v130, enum case for BadgeViewSpacing.standard(_:), v133);
    (*(v149 + 8))(v81, v72);
  }

  v86 = v135;
  v87 = v131;
  (*(v84 + 32))(v131, v83, v85);
  v88 = OBJC_IVAR____TtC8AppStore9BadgeView_spacing;
  swift_beginAccess();
  (*(v84 + 24))(&v7[v88], v87, v85);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v84 + 8))(v87, v85);
  v7[OBJC_IVAR____TtC8AppStore9BadgeView_requiresRemainingWidth] = sub_10007FCF8() & 1;
  if (v137)
  {
    *&v152[0] = v137;
    type metadata accessor for Action();
    sub_10007FFA0(&qword_100992FB0, &type metadata accessor for Action);

    v72 = v146;
    ComponentModel.pairedWith<A>(objectGraph:)();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = sub_10002849C(&unk_10097B3D0);
  (*(*(v90 - 8) + 56))(v86, v89, 1, v90);
  sub_1004FF418(v86);
  v91 = v134;
  Badge.type.getter();
  v92 = OBJC_IVAR____TtC8AppStore9BadgeView_badgeType;
  swift_beginAccess();
  v93 = v149;
  (*(v149 + 40))(&v7[v92], v91, v72);
  swift_endAccess();
  v94 = &v7[OBJC_IVAR____TtC8AppStore9BadgeView_badgePositionInRibbon];
  *v94 = v139;
  v94[8] = v140 & 1;
  v95 = v72;
  v96 = v142;
  *&v7[OBJC_IVAR____TtC8AppStore9BadgeView_overallBadgeCount] = v142;
  v97 = v138;
  Badge.type.getter();
  v98 = v97;
  v99 = v82(v97, v95);
  v100 = v148;
  if (v99 == enum case for BadgeType.rating(_:))
  {
    v101 = sub_10007F978();
    v102 = OBJC_IVAR____TtC8AppStore9BadgeView_captionView;
    v103 = *&v7[OBJC_IVAR____TtC8AppStore9BadgeView_captionView];
    v104 = v101;
    if (v103)
    {
      [v103 removeFromSuperview];
      v103 = *&v7[v102];
    }

    *&v7[v102] = v101;
    v108 = v101;

    [v7 addSubview:v108];
    [v7 setNeedsLayout];

    v109 = &v7[OBJC_IVAR____TtC8AppStore9BadgeView_caption];
    *v109 = 0;
    *(v109 + 1) = 0;

    v110 = v122;
    [v122 setText:0];

    v111 = static String.isNilOrEmpty(_:)();

    [v110 setHidden:v111 & 1];
    [v7 setNeedsLayout];
  }

  else
  {
    (*(v93 + 8))(v98, v95);
    v105 = OBJC_IVAR____TtC8AppStore9BadgeView_captionView;
    v106 = *&v7[OBJC_IVAR____TtC8AppStore9BadgeView_captionView];
    if (v106)
    {
      [v106 removeFromSuperview];
      v107 = *&v7[v105];
    }

    else
    {
      v107 = 0;
    }

    *&v7[v105] = 0;

    if (v96 < 4 || (v112 = Badge.longCaption.getter(), !v113))
    {
      v112 = Badge.caption.getter();
    }

    sub_1004FF1A4(v112, v113);
  }

  sub_100501240();
  [v7 setNeedsLayout];
  *&v152[0] = 0x2E6567646162;
  *(&v152[0] + 1) = 0xE600000000000000;
  v114._countAndFlagsBits = dispatch thunk of Badge.accessibilityIdentifier.getter();
  String.append(_:)(v114);

  memset(v152, 0, sizeof(v152));
  memset(v151, 0, sizeof(v151));
  v115 = v143;
  static AutomationSemantics.productPage(elementName:id:parentId:)();

  sub_10002B894(v151, &unk_1009711D0);
  sub_10002B894(v152, &unk_1009711D0);
  UIView.setAutomationSemantics(_:)();

  (*(v144 + 8))(v115, v145);
  return (v128)(v147, v100);
}

double sub_10007C9A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  countAndFlagsBits = a9;
  v144 = a5;
  v128 = a4;
  v136 = a3;
  v124 = type metadata accessor for LabelPlaceholderCompatibility();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for BadgeViewSpacing();
  v134 = *(v135 - 8);
  __chkstk_darwin(v135);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v132 = &v121 - v17;
  v143 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  v137 = *(v143 - 8);
  __chkstk_darwin(v143);
  v19 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&qword_100972620);
  __chkstk_darwin(v20 - 8);
  v127 = &v121 - v21;
  v139 = type metadata accessor for BadgeCaptionCappingType();
  v147 = *(v139 - 8);
  __chkstk_darwin(v139);
  v131 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v146 = &v121 - v24;
  v140 = type metadata accessor for FontUseCase();
  v126 = *(v140 - 8);
  __chkstk_darwin(v140);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SystemImage();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for BadgeType();
  v142 = *(v148 - 8);
  __chkstk_darwin(v148);
  v130 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v129 = &v121 - v33;
  __chkstk_darwin(v34);
  v36 = &v121 - v35;
  v145 = a1;
  sub_10007E1E4();
  v138 = a2;
  v133 = v15;
  if (v37)
  {
    if (qword_10096DE58 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v140, qword_1009D0A88);
    v38 = type metadata accessor for Feature();
    v152 = v38;
    v153 = sub_10007FFA0(&qword_100972E50, &type metadata accessor for Feature);
    v39 = sub_1000056E0(v151);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
    isFeatureEnabled(_:)();
    sub_100007000(v151);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  }

  Badge.type.getter();
  v141 = *(v142 + 88);
  v40 = v141(v36, v148);
  v41 = enum case for BadgeType.rating(_:);
  if (v40 != enum case for BadgeType.rating(_:))
  {
    if (v40 == enum case for BadgeType.contentRating(_:))
    {
      v49 = Badge.content.getter();
      v50 = BadgeContentKeyContentRatingResource.getter();
      v47 = v137;
      v48 = v139;
      if (!*(v49 + 16))
      {

        goto LABEL_38;
      }

      v52 = sub_1000072B8(v50, v51);
      v54 = v53;

      if (v54)
      {
        sub_1000073E8(*(v49 + 56) + 32 * v52, v151);

        if (swift_dynamicCast())
        {
          v55 = sub_10032FEB0(v149, v150, 0);

          [v55 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v48 = v139;
    if (v40 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v47) = enum case for BadgeType.rating(_:);
      v56._object = 0x80000001007FF2C0;
      v56._countAndFlagsBits = 0xD000000000000020;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      countAndFlagsBits = localizedString(_:comment:)(v56, v57)._countAndFlagsBits;
      if (qword_10096DE60 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v47 = v137;
    if (v40 == enum case for BadgeType.editorsChoice(_:))
    {
      v69 = type metadata accessor for EditorsChoiceView();
      sub_100749C18(0, v144, v69);
      goto LABEL_38;
    }

    v70 = v144;
    v71 = v148;
    if (v40 == enum case for BadgeType.artwork(_:))
    {
      if (qword_10096E6F8 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v143, qword_1009D2508);
      BadgeViewRibbonLayout.Metrics.badgeIconSize.getter();
      v72 = [v70 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      CGSize.scaled(_:)();
      goto LABEL_39;
    }

    if (v40 == enum case for BadgeType.paragraph(_:))
    {
      sub_10007E3A0();
      if (qword_10096DE50 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v140, qword_1009D0A70);
      v75 = type metadata accessor for Feature();
      v152 = v75;
      v153 = sub_10007FFA0(&qword_100972E50, &type metadata accessor for Feature);
      v76 = sub_1000056E0(v151);
      (*(*(v75 - 8) + 104))(v76, enum case for Feature.measurement_with_labelplaceholder(_:), v75);
      isFeatureEnabled(_:)();
      sub_100007000(v151);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
      v78 = v77;

      v79 = [v70 traitCollection];
      sub_1005224E0(v78, a6);
    }

    else
    {
      if (v40 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v142 + 8))(v36, v148);
        goto LABEL_39;
      }

      v80 = Badge.content.getter();
      v81 = BadgeContentKeyNativeContentView.getter();
      if (!*(v80 + 16))
      {

        goto LABEL_39;
      }

      v83 = sub_1000072B8(v81, v82);
      v85 = v84;

      if ((v85 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1000073E8(*(v80 + 56) + 32 * v83, v151);

      sub_100005744(0, &qword_100972EB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v79 = v149;
      [v149 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v42 = [v144 traitCollection];
  v43 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v28 + 104))(v30, enum case for SystemImage.star(_:), v27);
  v44 = v41;
  v45 = [v43 configurationWithTraitCollection:v42];
  v46 = static SystemImage.load(_:with:)();

  v41 = v44;
  (*(v28 + 8))(v30, v27);
  [v46 contentInsets];
  [v46 contentInsets];
  [v46 size];
  [v46 contentInsets];
  [v46 contentInsets];
  [v46 size];

  v47 = v137;
  v48 = v139;
  while (1)
  {
LABEL_38:
    v71 = v148;
LABEL_39:
    v86 = v129;
    Badge.type.getter();
    if (v141(v86, v71) == v41)
    {
      v87 = sub_10007F978();
      [v87 frame];
      CGRectGetWidth(v154);

      v88 = v144;
    }

    else
    {
      (*(v142 + 8))(v86, v71);
      if (v128 >= 4)
      {
        Badge.longCaption.getter();
        if (v89)
        {
          v88 = v144;
LABEL_45:
          if (qword_10096DE70 != -1)
          {
            swift_once();
          }

          sub_1000056A8(v140, qword_1009D0AD0);
          v91 = type metadata accessor for Feature();
          v152 = v91;
          v153 = sub_10007FFA0(&qword_100972E50, &type metadata accessor for Feature);
          v92 = sub_1000056E0(v151);
          (*(*(v91 - 8) + 104))(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v91);
          isFeatureEnabled(_:)();
          sub_100007000(v151);
          static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

          v71 = v148;
          goto LABEL_48;
        }
      }

      Badge.caption.getter();
      v88 = v144;
      if (v90)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v147 + 104))(v146, enum case for BadgeCaptionCappingType.none(_:), v48);
    v93 = Badge.heading.getter();
    if (v94)
    {
      v95 = v48;
      v151[0] = v93;
      v151[1] = v94;
      v96 = v127;
      static Locale.storefront.getter();
      v97 = type metadata accessor for Locale();
      (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
      sub_10007FED4();
      StringProtocol.uppercased(with:)();
      sub_10002B894(v96, &qword_100972620);

      if (qword_10096DE78 != -1)
      {
        swift_once();
      }

      sub_1000056A8(v140, qword_1009D0AE8);
      v98 = type metadata accessor for Feature();
      v152 = v98;
      v153 = sub_10007FFA0(&qword_100972E50, &type metadata accessor for Feature);
      v99 = sub_1000056E0(v151);
      (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
      isFeatureEnabled(_:)();
      sub_100007000(v151);
      static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

      v71 = v148;
      v48 = v95;
    }

    v100 = v135;
    if (qword_10096E6F8 != -1)
    {
      swift_once();
    }

    v101 = v143;
    v102 = sub_1000056A8(v143, qword_1009D2508);
    (*(v47 + 16))(v19, v102, v101);
    v26 = v48;
    (*(v147 + 16))(v131, v146, v48);
    BadgeViewRibbonLayout.Metrics.captionCappingType.setter();
    v103 = v130;
    Badge.type.getter();
    if (v141(v103, v71) == enum case for BadgeType.chartPosition(_:))
    {
      v104 = v133;
      *v133 = 0;
      v105 = v134;
      (*(v134 + 104))(v104, enum case for BadgeViewSpacing.spacing(_:), v100);
    }

    else
    {
      v105 = v134;
      v104 = v133;
      (*(v134 + 104))(v133, enum case for BadgeViewSpacing.standard(_:), v100);
      (*(v142 + 8))(v103, v71);
    }

    v106 = v138;
    (*(v105 + 32))(v132, v104, v100);
    BadgeViewRibbonLayout.Metrics.spacingType.setter();
    v48 = v26;
    if (v136)
    {
      goto LABEL_69;
    }

    v107 = [v88 traitCollection];
    v108 = UITraitCollection.prefersRightToLeftLayouts.getter();
    v109 = v108;
    if (!v106 && (v108 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v128, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v128 - 1 == v106) & v108) == 1)
    {
LABEL_62:
      v110 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
      *(v111 + 8) = 0;
      v110(v151, 0);
      v112 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
      *(v113 + 8) = 0;
      v112(v151, 0);
      v48 = v139;
    }

    if (!v106 && ((v109 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v128, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v58 = v140;
    v59 = sub_1000056A8(v140, qword_1009D0AA0);
    (*(v126 + 16))(v26, v59, v58);
    v60 = [v144 traitCollection];
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v60).super.isa;
    v62 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v62)
    {
      v63 = [objc_opt_self() fontWithDescriptor:v62 size:0.0];

      v41 = v47;
      if (v63)
      {
        v64 = type metadata accessor for Feature();
        v152 = v64;
        v153 = sub_10007FFA0(&qword_100972E50, &type metadata accessor for Feature);
        v65 = sub_1000056E0(v151);
        (*(*(v64 - 8) + 104))(v65, enum case for Feature.measurement_with_labelplaceholder(_:), v64);
        v66 = v63;
        isFeatureEnabled(_:)();
        sub_100007000(v151);
        v67 = v122;
        LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
        sub_10007FFA0(qword_100982720, &type metadata accessor for LabelPlaceholderCompatibility);
        v68 = v124;
        dispatch thunk of Measurable.measurements(fitting:in:)();

        (*(v123 + 8))(v67, v68);
        goto LABEL_26;
      }
    }

    else
    {

      v41 = v47;
    }

    v73 = type metadata accessor for Feature();
    v152 = v73;
    v153 = sub_10007FFA0(&qword_100972E50, &type metadata accessor for Feature);
    v74 = sub_1000056E0(v151);
    (*(*(v73 - 8) + 104))(v74, enum case for Feature.measurement_with_labelplaceholder(_:), v73);
    isFeatureEnabled(_:)();
    sub_100007000(v151);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();

LABEL_26:
    (*(v126 + 8))(v26, v140);
    v47 = v137;
  }

  if ((v128 - 1 != v106) | v109 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v114 = BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.modify();
  *(v115 + 24) = 0;
  v114(v151, 0);
  v116 = BadgeViewRibbonLayout.Metrics.regularBadgeInsets.modify();
  *(v117 + 24) = 0;
  v116(v151, 0);
LABEL_68:

LABEL_69:
  static BadgeViewRibbonLayout.measurements(valueLabelWidth:viewSize:captionWidth:headingLabelWidth:fitting:using:in:)();
  v119 = v118;
  (*(v47 + 8))(v19, v143);
  (*(v147 + 8))(v146, v48);
  return v119;
}

uint64_t sub_10007E1E4()
{
  v0 = type metadata accessor for BadgeType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Badge.type.getter();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for BadgeType.contentRating(_:))
  {
    v5 = Badge.content.getter();
    v6 = BadgeContentKeyContentRating.getter();
    goto LABEL_5;
  }

  if (v4 == enum case for BadgeType.chartPosition(_:))
  {
    v5 = Badge.content.getter();
    v6 = BadgeContentKeyChartPosition.getter();
LABEL_5:
    if (*(v5 + 16))
    {
      v8 = sub_1000072B8(v6, v7);
      v10 = v9;

      if (v10)
      {
        sub_1000073E8(*(v5 + 56) + 32 * v8, v12);

        if (swift_dynamicCast())
        {
          return v13;
        }

        goto LABEL_12;
      }
    }

    else
    {
    }

LABEL_12:
    v13 = 0;
    v14 = 0;
    return v13;
  }

  v13 = 0;
  v14 = 0;
  (*(v1 + 8))(v3, v0);
  return v13;
}

uint64_t sub_10007E3A0()
{
  v0 = type metadata accessor for BadgeType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  Badge.type.getter();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_10007FFA0(&unk_10098EFD0, &type metadata accessor for BadgeType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v17[0] == v18 && v17[1] == v19)
  {
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = Badge.content.getter();
  v11 = BadgeContentKeyParagraphText.getter();
  if (!*(v10 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_1000072B8(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_1000073E8(*(v10 + 56) + 32 * v13, v17);

  if (swift_dynamicCast())
  {
    return v18;
  }

  return 0;
}

char *sub_10007E660(uint64_t a1, uint64_t a2)
{
  v136 = a2;
  v2 = type metadata accessor for AvatarShowcaseLayoutConfiguration();
  __chkstk_darwin(v2 - 8);
  v135 = &v135 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DirectionalTextAlignment();
  v145 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v135 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v135 - v8;
  v10 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v10 - 8);
  v141 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Artwork.Crop();
  v139 = *(v12 - 8);
  v140 = v12;
  __chkstk_darwin(v12);
  v138 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100972628);
  __chkstk_darwin(v14 - 8);
  v137 = &v135 - v15;
  v142 = type metadata accessor for AspectRatio();
  v144 = *(v142 - 8);
  __chkstk_darwin(v142);
  v143 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for BadgeViewRibbonLayout.Metrics();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BadgeType();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  Badge.type.getter();
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == enum case for BadgeType.rating(_:))
  {
    v26 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v27 = Badge.content.getter();
    v28 = BadgeContentKeyRatingFormatted.getter();
    if (*(v27 + 16))
    {
      v30 = sub_1000072B8(v28, v29);
      v32 = v31;

      if (v32)
      {
        sub_1000073E8(*(v27 + 56) + 32 * v30, v149);

        if (swift_dynamicCast())
        {
          v33 = *&v26[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel];
          v34 = String._bridgeToObjectiveC()();
          v35 = v33;
LABEL_22:
          [v35 setText:v34];

          v43 = v26;
          [v43 setNeedsLayout];

LABEL_23:

          return v43;
        }

LABEL_21:
        v34 = 0;
        v35 = *&v26[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel];
        goto LABEL_22;
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  if (v25 == enum case for BadgeType.contentRating(_:))
  {
    v36 = Badge.content.getter();
    v37 = BadgeContentKeyContentRatingResource.getter();
    if (*(v36 + 16))
    {
      v39 = sub_1000072B8(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_1000073E8(*(v36 + 56) + 32 * v39, v149);

        if (swift_dynamicCast())
        {
          v42 = sub_10032FEB0(v147, v148, 0);

          v43 = [objc_allocWithZone(UIImageView) initWithImage:v42];
          [v43 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];

          return v43;
        }

        return 0;
      }

LABEL_51:

      return 0;
    }

LABEL_50:

    goto LABEL_51;
  }

  if (v25 == enum case for BadgeType.chartPosition(_:))
  {
    if (qword_10096DE60 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for FontUseCase();
    v45 = sub_1000056A8(v44, qword_1009D0AA0);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v9, v45, v44);
    (*(v46 + 56))(v9, 0, 1, v44);
    v145[13](v6, enum case for DirectionalTextAlignment.none(_:), v4);
    v47 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v48 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v49 = [v146 traitCollection];
    isa = FontUseCase.makeFontDescriptor(compatibleWith:)(v49).super.isa;
    v51 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v51)
    {
      v52 = [objc_opt_self() fontWithDescriptor:v51 size:0.0];

      if (!v52)
      {
LABEL_18:
        [v48 setTextAlignment:1];
        v53._countAndFlagsBits = 0xD000000000000020;
        v53._object = 0x80000001007FF2C0;
        v54._countAndFlagsBits = 0;
        v54._object = 0xE000000000000000;
        localizedString(_:comment:)(v53, v54);
        v55 = String._bridgeToObjectiveC()();

        [v48 setText:v55];

        v56 = objc_opt_self();
        v43 = v48;
        v57 = [v56 systemGrayColor];
        [v43 setTextColor:v57];

        return v43;
      }

      [v48 setFont:v52];
      v49 = v52;
    }

    goto LABEL_18;
  }

  if (v25 == enum case for BadgeType.editorsChoice(_:))
  {
    v58._object = 0x80000001007FF2F0;
    v59._countAndFlagsBits = 0xD000000000000050;
    v59._object = 0x80000001007FF310;
    v58._countAndFlagsBits = 0xD000000000000017;
    localizedString(_:comment:)(v58, v59);
    v60 = String.count.getter();

    v61 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
    return sub_10029CDF8(v60 < 19, 1, 0, 0, 2u);
  }

  if (v25 == enum case for BadgeType.artwork(_:))
  {
    v62 = Badge.artwork.getter();
    if (!v62)
    {
      return 0;
    }

    v63 = v62;
    v64 = v146;
    sub_1005013E0(v20);
    BadgeViewRibbonLayout.Metrics.badgeIconSize.getter();
    (*(v18 + 8))(v20, v17);
    v65 = [v64 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    CGSize.scaled(_:)();
    v67 = v66;
    v69 = v68;
    Artwork.size.getter();
    v70 = v143;
    AspectRatio.init(_:_:)();
    LOBYTE(v65) = AspectRatio.isLandscape.getter();
    v71 = v144 + 8;
    v72 = *(v144 + 8);
    v73 = v142;
    v72(v70, v142);
    v144 = v71;
    if (v65)
    {
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      AspectRatio.maxSize(filling:)();
      v67 = v74;
      v69 = v75;
      v72(v70, v73);
    }

    v76 = v137;
    v43 = [objc_allocWithZone(type metadata accessor for ArtworkView()) initWithFrame:{0.0, 0.0, v67, v69}];
    Artwork.imageScale.getter();
    v77 = type metadata accessor for Artwork.ImageScale();
    v78 = *(v77 - 8);
    if ((*(v78 + 48))(v76, 1, v77) == 1)
    {
      sub_10002B894(v76, &qword_100972628);
      v79 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1];
    }

    else
    {
      v104 = Artwork.ImageScale.symbolScale.getter();
      (*(v78 + 8))(v76, v77);
      v79 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1 scale:v104];
    }

    v145 = v79;
    ArtworkView.preferredSymbolConfiguration.setter();
    v105 = v138;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*(v139 + 8))(v105, v140);
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v43 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    v106 = objc_opt_self();
    v107 = [v106 clearColor];
    ArtworkView.backgroundColor.setter();
    if (Badge.isMonochrome.getter())
    {
      v108 = [v106 secondaryLabelColor];
      ArtworkView.artworkTintColor.setter();
      [v43 setAccessibilityIgnoresInvertColors:0];
    }

    if (dispatch thunk of Artwork.isBundleImage.getter())
    {
      v109 = sub_100330100(v63, 0);
      v110 = v109;
      ArtworkView.image.setter();
      if (v109)
      {
        [v110 size];
        v111 = v143;
        AspectRatio.init(_:_:)();
        v112 = v72;
        v113 = AspectRatio.isPortrait.getter();
        v112(v111, v73);
        [v110 size];
        AspectRatio.init(_:_:)();
        if (v113)
        {
          AspectRatio.maxSize(fitting:)();
          v115 = v114;
          v117 = v116;
          v112(v111, v73);
          v118 = ArtworkView.frame.modify();
          *(v119 + 16) = v115;
          *(v119 + 24) = v117;
          v118(v149, 0);

          v64 = v146;
LABEL_71:
          v130 = *&v64[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView];
          *&v64[OBJC_IVAR____TtC8AppStore9BadgeView_artworkView] = v43;
          v131 = v43;

          return v43;
        }

        AspectRatio.maxSize(filling:)();
        v124 = v126;
        v125 = v127;
        v112(v111, v73);
        v64 = v146;
      }

      else
      {
        v124 = 0;
        v125 = 0;
      }

      v128 = ArtworkView.frame.modify();
      *(v129 + 16) = v124;
      *(v129 + 24) = v125;
      v128(v149, 0);
    }

    else if (v136)
    {
      v150 = 0;
      memset(v149, 0, sizeof(v149));
      v120 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v121 = swift_allocObject();
      v122 = v145;
      *(v121 + 16) = v145;
      *(v121 + 24) = v120;
      v123 = v122;

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_10002B894(v149, &qword_10096FB90);
LABEL_70:

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v25 == enum case for BadgeType.paragraph(_:))
  {
    v43 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10007E3A0();
    if (!v80)
    {
      return v43;
    }

    v81 = *&v43[OBJC_IVAR____TtC8AppStore18BadgeParagraphView_paragraphLabel];
    v82 = String._bridgeToObjectiveC()();
    [v81 setText:v82];

    [v43 setNeedsLayout];
    goto LABEL_23;
  }

  if (v25 != enum case for BadgeType.friendsPlaying(_:))
  {
    (*(v22 + 8))(v24, v21);
    return 0;
  }

  v83 = Badge.content.getter();
  v84 = BadgeContentKeyNumberOfAvatarsToDisplay.getter();
  if (!*(v83 + 16))
  {
    goto LABEL_50;
  }

  v86 = sub_1000072B8(v84, v85);
  v88 = v87;

  if ((v88 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_1000073E8(*(v83 + 56) + 32 * v86, v149);

  sub_100005744(0, &qword_10097FB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v89 = v147;
  v90 = [v147 integerValue];

  v91 = Badge.content.getter();
  v92 = GameCenterFriends.getter();
  if (!*(v91 + 16))
  {
    goto LABEL_50;
  }

  v94 = sub_1000072B8(v92, v93);
  v96 = v95;

  if ((v96 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_1000073E8(*(v91 + 56) + 32 * v94, v149);

  sub_10002849C(&qword_100972630);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v97 = v147;
  if (!v136)
  {
    goto LABEL_51;
  }

  v98 = (v147 >> 62);
  if (v147 >> 62)
  {
LABEL_88:
    v99 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v99 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v99 >= v90)
  {
    v100 = v90;
  }

  else
  {
    v100 = v99;
  }

  v101 = v135;
  AvatarShowcaseLayoutConfiguration.init(width:visibleWidth:)();
  v102 = objc_allocWithZone(type metadata accessor for AvatarShowcaseView());
  v43 = sub_1004F508C(v100, v101);
  *&v149[0] = _swiftEmptyArrayStorage;
  if (v98)
  {
    v90 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v90 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v132 = 0;
  v98 = _swiftEmptyArrayStorage;
  while (v90 != v132)
  {
    if ((v97 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v133 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v132 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v133 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }
    }

    v134 = dispatch thunk of GameCenterPlayer.artwork.getter();

    ++v132;
    if (v134)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v149[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v149[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v98 = *&v149[0];
      v132 = v133;
    }
  }

  sub_1004F53FC(v98, v136);

  return v43;
}

char *sub_10007F978()
{
  v0 = type metadata accessor for RatingView();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v1[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v2 = &v1[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v2 = 0;
  v2[8] = 1;
  *&v1[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v3 = qword_100982C88;
  *&v1[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v1[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 1;
  *v2 = 0;
  v2[8] = 1;
  v1[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
  v4 = type metadata accessor for StarRow();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  *&v1[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 1, 0, 1, 0, 1);
  v1[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v7 = objc_allocWithZone(v4);
  *&v1[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 1, 0, 1, 0, 1);
  v26.receiver = v1;
  v26.super_class = v0;
  v8 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v9 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v10 = *&v8[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v11 = *&v10[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v10[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v8[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v12 = v10;
  sub_1003A3A64(v11);

  if (*&v8[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v8 addSubview:?];
  }

  [v8 addSubview:*&v8[v9]];

  v13 = Badge.content.getter();
  v14 = BadgeContentKeyRating.getter();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_1000072B8(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_1000073E8(*(v13 + 56) + 32 * v16, v25);

  sub_100005744(0, &qword_10097FB80);
  if (swift_dynamicCast())
  {
    v19 = v24;
    [v24 floatValue];
    sub_1003A2E44(v20);
    goto LABEL_14;
  }

LABEL_11:
  sub_1003A2E44(0.0);
  v21 = [objc_opt_self() systemMidGrayColor];
  v19 = *&v8[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
  *&v8[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = v21;
  sub_100005744(0, &qword_100970180);
  v22 = v21;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1003A2F78();
  }

LABEL_14:
  return v8;
}

uint64_t sub_10007FCF8()
{
  v0 = type metadata accessor for BadgeType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  Badge.type.getter();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_10007FFA0(&unk_10098EFD0, &type metadata accessor for BadgeType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

unint64_t sub_10007FED4()
{
  result = qword_100989040;
  if (!qword_100989040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100989040);
  }

  return result;
}

uint64_t sub_10007FF30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972638);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007FFA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10007FFE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_10008003C()
{
  ObjectType = swift_getObjectType();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v9 = ObjectType;
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1000838FC(_swiftEmptyArrayStorage, &qword_100972698, &unk_1007B32E0, &qword_100972EB0);
      v2 = v10;
    }

    else
    {
      v2 = &_swiftEmptySetSingleton;
    }

    ObjectType = v9;
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews] = v2;
  v0[OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase] = 3;
  *&v0[OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_sleepTimer] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_currentAnimator] = 0;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v11, "init");
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v5 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v7 = [v4 defaultCenter];
  [v7 addObserver:v5 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];

  return v5;
}

void sub_100080200(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = ObjectType;
    v6 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v7 = a1;
    sub_100081688(&v29, v7);
    swift_endAccess();

    v8 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase;
    v9 = *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase);
    if ((v9 - 1) >= 2)
    {
      if (!*(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase))
      {
        [v7 setAlpha:1.0];
        goto LABEL_18;
      }
    }

    else
    {
      v10 = *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
      if (v10)
      {
        sub_10002849C(&qword_100973210);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007B0B70;
        *(inited + 32) = v7;
        v12 = v7;
        v13 = v10;
        sub_1000838FC(inited, &qword_100972698, &unk_1007B32E0, &qword_100972EB0);
        v15 = v14;
        swift_setDeallocating();
        swift_arrayDestroy();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v5;
        v17 = objc_allocWithZone(UIViewPropertyAnimator);
        if (v9 == 1)
        {
          v27 = sub_1000831FC;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_1008B2930;
        }

        else
        {
          v27 = sub_1000831DC;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_1008B28E0;
        }

        v25 = sub_100007A08;
        v26 = v18;
        v21 = _Block_copy(&v23);

        v22 = [v17 initWithDuration:v21 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0, v23, v24}];
        _Block_release(v21);
        v7 = v22;
        [v13 fractionComplete];
        [v7 setFractionComplete:?];
        [v7 startAnimation];

        goto LABEL_18;
      }

      *(v2 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
    }

    v19 = *(v2 + v6);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = __CocoaSet.count.getter();

      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (*(v2 + v8) == 3 && !UIAccessibilityIsReduceMotionEnabled())
      {
        sub_100080800();
      }

      goto LABEL_18;
    }

    if (*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_18:
  }
}

void sub_10008058C()
{
  *(v0 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  if (v2)
  {
    [v2 stopAnimation:1];
  }

  v3 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100005744(0, &qword_100972EB0);
    sub_100081618();
    Set.Iterator.init(_cocoa:)();
    v6 = v20;
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_22:
      sub_100081680();

      return;
    }

    while (1)
    {
      [v18 setAlpha:1.0];

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100005744(0, &qword_100972EB0);
        swift_dynamicCast();
        v18 = v19;
        v16 = v8;
        v17 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_100080800()
{
  v1 = OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = __CocoaSet.count.getter();

    if (v3)
    {
LABEL_3:
      *(v0 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 0;
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100083220;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080D48;
      aBlock[3] = &unk_1008B2980;
      v5 = _Block_copy(aBlock);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:0.8];
      _Block_release(v5);

      v8 = *(v0 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
      *(v0 + OBJC_IVAR____TtC8AppStore41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = v7;
      v9 = v7;
      [v8 invalidate];

      v10 = [objc_opt_self() mainRunLoop];
      [v10 addTimer:v9 forMode:NSRunLoopCommonModes];

      return;
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_3;
  }

  sub_10008058C();
}