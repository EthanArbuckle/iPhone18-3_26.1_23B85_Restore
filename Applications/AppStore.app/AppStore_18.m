void sub_1002044A4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v3)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_55;
    }

    v31 = (v1 & 0xFFFFFFFFFFFFFF8);
    if (v2)
    {
      v4 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = 0;
    v6 = *&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_objectGraph];
    v7 = v4 & ~(v4 >> 63);
    do
    {
      if (v7 == v5)
      {
        goto LABEL_46;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v8 = *(v1 + 8 * v5 + 32);
      }

      v9 = sub_100202754();
      v10 = v5++ != 0;
      v11 = sub_100207C10(&qword_100979B00, &type metadata accessor for TopChartDiffableSegmentPresenter);
      v12 = sub_10054A47C(v6, v8, v11, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xEF746E656D676553);
      v13 = objc_allocWithZone(type metadata accessor for TopChartDiffableSegmentViewController());
      v13[qword_100987B20] = v9;
      v13[qword_100987B28] = v10;
      v2 = sub_1003BEE8C(v8, v12);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v3 != v5);
  }

  v31 = _swiftEmptyArrayStorage;
  v30 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
  v1 = *&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v1 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v14)
  {
    v15 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v15 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v16 = *(v1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_47;
      }

      v19 = [v16 parentViewController];
      if (v19)
      {
        v2 = v19;
        sub_100005744(0, &qword_1009711C0);
        v20 = v32;
        v21 = static NSObject.== infix(_:_:)();

        if (v21)
        {
          [v17 willMoveToParentViewController:0];
          v22 = [v17 view];
          if (!v22)
          {
            __break(1u);
            return;
          }

          v2 = v22;
          [v22 removeFromSuperview];

          [v17 removeFromParentViewController];
        }
      }

      ++v15;
    }

    while (v18 != v14);
  }

  *&v32[v30] = _swiftEmptyArrayStorage;

  sub_100204CA0();
  sub_100205354();
  v30 = qword_100979A68;
  v31 = *&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents];
  [*(v31 + qword_100979A68) removeAllSegments];
  v23 = TopChartsDiffablePagePresenter.segmentPresenters.getter();
  if (v23 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 > 1)
  {
    v24 = TopChartsDiffablePagePresenter.segmentPresenters.getter();
    v1 = v24;
    if (!(v24 >> 62))
    {
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v25)
      {
LABEL_35:
        v26 = 0;
        while (1)
        {
          if ((v1 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v26 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

            v28 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
LABEL_45:
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
              __break(1u);
LABEL_51:
              v3 = _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_3;
            }
          }

          v2 = *(v31 + v30);
          TopChartDiffableSegmentPresenter.shortName.getter();
          if (v29)
          {
            v27 = String._bridgeToObjectiveC()();
          }

          else
          {
            v27 = 0;
          }

          [v2 insertSegmentWithTitle:v27 atIndex:v26 animated:{0, v30}];

          ++v26;
          if (v28 == v25)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_55:
    v25 = _CocoaArrayWrapper.endIndex.getter();
    if (v25)
    {
      goto LABEL_35;
    }

LABEL_56:

    if ((v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8] & 1) == 0)
    {
      [*(v31 + v30) setSelectedSegmentIndex:*&v32[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex]];
    }
  }

  sub_100204B54();

  sub_10021D284();
}

void sub_100204A18(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton;
  v4 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton];
  if (v4 && (!a2 ? (v5 = v4, v6 = 0) : (v5 = v4, v6 = String._bridgeToObjectiveC()()), ([v5 setTitle:v6], v5, v6, (v7 = *&v2[v3]) != 0) && (v8 = objc_msgSend(v7, "title")) != 0))
  {

    v10 = [v2 navigationItem];
    v9 = *&v2[v3];
    [v10 setRightBarButtonItem:v9];
  }

  else
  {
    v10 = [v2 navigationItem];
    [v10 setRightBarButtonItem:0];
  }
}

void sub_100204B54()
{
  v1 = sub_100202754();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents);
  if (v1 || [*&v2[qword_100979A68] numberOfSegments] <= 0 && (*(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_isPresenterLoaded) & 1) != 0)
  {
    [v2 setHidden:1];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong setPreferredHeight:0.0];
    }
  }

  else
  {
    [v2 sizeToFit];
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v2 frame];
      [v5 setPreferredHeight:CGRectGetHeight(v8)];
    }

    [v2 setHidden:0];
  }
}

id sub_100204CA0()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for PageGrid();
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = __chkstk_darwin(v9);
  v68 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2, v10);
  v12 = &selRef_setRequiresColorStatistics_;
  result = [v1 view];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;

  result = [v1 view];
  if (!result)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v19 = result;
  v66 = v16;
  v67 = v18;
  [result safeAreaInsets];

  (*(v3 + 16))(v5, v8, v2);
  if (qword_10096E490 != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {

    v20 = v68;
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v3 + 8))(v8, v2);
    v2 = v20;
    PageGrid.horizontalDirectionalMargins.getter();
    v22 = v21;
    v61 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
    v3 = *&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
    v23 = v1;
    if (!(v3 >> 62))
    {
      v66 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
      v67 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }

    v66 = _CocoaArrayWrapper.endIndex.getter();
    v3 = *&v1[v61];
    if (!(v3 >> 62))
    {
      goto LABEL_6;
    }

    v67 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:

    if (!v24)
    {
      break;
    }

    v25 = 0;
    v64 = v3;
    v65 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v65)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v67 + 16))
        {
          goto LABEL_36;
        }

        v26 = *(v3 + 8 * v25 + 32);
      }

      v1 = v26;
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = sub_100202754();
      sub_1004BAF44(v28, v25 != 0);
      if (v66 == 1)
      {
        static CGFloat.allColumns.getter();
      }

      PageGrid.componentMeasuringSize(spanning:)();
      v30 = v29;
      result = [v1 v12[40]];
      if (!result)
      {
        goto LABEL_44;
      }

      v31 = result;
      result = [v23 v12[40]];
      if (!result)
      {
        goto LABEL_45;
      }

      v8 = v23;
      v32 = v12;
      v33 = result;
      [result bounds];
      v35 = v34;
      v37 = v36;
      v39 = v38;
      v41 = v40;

      v69.origin.x = v35;
      v69.origin.y = v37;
      v69.size.width = v39;
      v69.size.height = v41;
      MinY = CGRectGetMinY(v69);
      v43 = v32;
      result = [v8 v32[40]];
      if (!result)
      {
        goto LABEL_46;
      }

      v44 = result;
      v23 = v8;
      [result bounds];
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;

      v70.origin.x = v46;
      v70.origin.y = v48;
      v70.size.width = v50;
      v70.size.height = v52;
      [v31 setFrame:{v22, MinY, v30, CGRectGetHeight(v70)}];

      v2 = v8;
      if (sub_100202754())
      {
        v2 = v68;
        PageGrid.interColumnSpace.getter();
        v54 = v53;

        v22 = v22 + v30 + v54;
      }

      else
      {
      }

      ++v25;
      v12 = v43;
      v3 = v64;
      if (v27 == v24)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    swift_once();
  }

LABEL_24:

  if (sub_100202754())
  {
    goto LABEL_25;
  }

  v55 = &v23[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
  if (v23[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8])
  {
    goto LABEL_25;
  }

  v56 = *v55;
  if (*v55 < 0)
  {
    goto LABEL_25;
  }

  v57 = *&v23[v61];
  if (v57 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (v56 >= result)
    {
      goto LABEL_25;
    }

LABEL_31:
    v58 = *&v23[v61];
    if ((v58 & 0xC000000000000001) != 0)
    {

      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_34;
    }

    if (v56 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v59 = *(v58 + 8 * v56 + 32);
LABEL_34:
      v60 = [v59 collectionView];

      [v23 setContentScrollView:v60 forEdge:15];
      return (*(v62 + 8))(v68, v63);
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v56 < result)
  {
    goto LABEL_31;
  }

LABEL_25:
  [v23 setContentScrollView:0 forEdge:{15, v61}];
  return (*(v62 + 8))(v68, v63);
}

void sub_100205354()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v55 = type metadata accessor for PageGrid();
  v9 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
  if (v11 >> 62)
  {
LABEL_32:
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex;

  if (v12)
  {
    v14 = 0;
    v42 = &v1[v13];
    v52 = v11 & 0xFFFFFFFFFFFFFF8;
    v53 = v11 & 0xC000000000000001;
    v51 = enum case for PageGrid.Direction.vertical(_:);
    v49 = (v3 + 16);
    v50 = (v3 + 104);
    v47 = (v9 + 1);
    v48 = (v3 + 8);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    v9 = &selRef_setRequiresColorStatistics_;
    v43 = v11;
    v44 = v12;
    v56 = v1;
    while (1)
    {
      if (v53)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v52 + 16))
        {
          goto LABEL_31;
        }

        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = v15;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v57 = v14 + 1;
      (*v50)(v8, v51, v2);
      v17 = [v1 v9[40]];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      [v17 bounds];

      v19 = [v1 v9[40]];
      if (!v19)
      {
        goto LABEL_34;
      }

      v20 = v19;
      [v19 safeAreaInsets];

      (*v49)(v5, v8, v2);
      if (qword_10096E490 != -1)
      {
        swift_once();
      }

      v21 = v54;
      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      (*v48)(v8, v2);
      v3 = v21;
      PageGrid.columnCount.getter();
      v23 = v22;
      (*v47)(v21, v55);
      if (v23 > 1.0 || (v42[8] & 1) == 0 && v14 == *v42)
      {
        v24 = v16;
        v25 = [v24 parentViewController];
        v9 = &selRef_setRequiresColorStatistics_;
        if (!v25 || (v26 = v25, sub_100005744(0, &qword_1009711C0), v27 = v8, v28 = v5, v29 = v2, v30 = v56, v31 = static NSObject.== infix(_:_:)(), v26, v30, v2 = v29, v5 = v28, v8 = v27, v9 = &selRef_setRequiresColorStatistics_, (v31 & 1) == 0))
        {
          v32 = v56;
          [v56 addChildViewController:v24];
          v33 = [v32 v9[40]];
          if (!v33)
          {
            goto LABEL_36;
          }

          v34 = v33;
          v35 = [v24 v9[40]];
          if (!v35)
          {
            goto LABEL_37;
          }

          v36 = v35;
          [v34 addSubview:v35];

          [v24 didMoveToParentViewController:v32];
        }

        v3 = [v24 v9[40]];

        v11 = v43;
        if (!v3)
        {
          goto LABEL_35;
        }

        [v3 setAlpha:1.0];

        v1 = v56;
      }

      else
      {
        v37 = [v16 parentViewController];
        v9 = &selRef_setRequiresColorStatistics_;
        v1 = v56;
        if (v37)
        {
          v38 = v37;
          sub_100005744(0, &qword_1009711C0);
          v39 = v1;
          v3 = static NSObject.== infix(_:_:)();

          v11 = v43;
          if (v3)
          {
            [v16 willMoveToParentViewController:0];
            v40 = [v16 view];
            if (!v40)
            {
              goto LABEL_38;
            }

            v3 = v40;
            [v40 removeFromSuperview];

            [v16 removeFromParentViewController];
          }
        }
      }

      ++v14;
      if (v57 == v44)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_29:
  }
}

void sub_1002059FC(unint64_t a1, unint64_t a2)
{
  if (a2 != a1)
  {
    v4 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers;
    v5 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers];
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((a2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
      {
        v6 = *(v5 + 8 * a2 + 32);
        if ((v5 & 0xC000000000000001) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_18;
      }

      __break(1u);
      goto LABEL_21;
    }

    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v5 = *&v2[v4];
    if ((v5 & 0xC000000000000001) == 0)
    {
LABEL_6:
      if ((a1 & 0x8000000000000000) == 0)
      {
        if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
        {
          v7 = *(v5 + 8 * a1 + 32);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_18:

    v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v7 = v25;
LABEL_9:
    v8 = v7;
    v9 = [v8 parentViewController];
    if (!v9 || (v10 = v9, sub_100005744(0, &qword_1009711C0), v11 = v2, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12 & 1) == 0))
    {
      [v2 addChildViewController:v8];
      v13 = [v2 view];
      if (!v13)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v14 = v13;
      v15 = [v8 view];
      if (!v15)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v16 = v15;
      [v14 addSubview:v15];

      [v8 didMoveToParentViewController:v2];
    }

    v17 = [v8 view];

    if (v17)
    {
      [v17 setAlpha:0.0];

      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = v6;
      *(v19 + 24) = v8;
      v30 = sub_100207B8C;
      v31 = v19;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100007A08;
      v29 = &unk_1008B93E0;
      v20 = _Block_copy(&v26);
      v21 = v8;
      v22 = v6;

      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = sub_100207B94;
      v31 = v23;
      v26 = _NSConcreteStackBlock;
      v27 = 1107296256;
      v28 = sub_100504C5C;
      v29 = &unk_1008B9408;
      v24 = _Block_copy(&v26);

      [v18 animateWithDuration:v20 animations:v24 completion:0.3];
      _Block_release(v24);
      _Block_release(v20);

      return;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void sub_100205DAC(void *a1, void *a2)
{
  v3 = [a1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  [v3 setAlpha:0.0];

  v5 = [a2 view];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  [v5 setAlpha:1.0];
}

void sub_100205E50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100205354();
  }
}

id sub_100205F34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TopChartsDiffablePageViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_1002060E0(double a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageGrid.Direction();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for PageGrid();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v10, enum case for PageGrid.Direction.vertical(_:), v4, v13);
  (*(v5 + 16))(v7, v10, v4);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v5 + 8))(v10, v4);
  PageGrid.horizontalMargins.getter();
  (*(v12 + 8))(v15, v11);
  CGSize.subtracting(insets:)();
  [*&v2[qword_100979A68] sizeThatFits:?];
  [v2 layoutMargins];
  CGSize.adding(outsets:)();
  return a1;
}

double sub_1002063AC(void *a1, double a2)
{
  v3 = a1;
  v4 = sub_1002060E0(a2);

  return v4;
}

void sub_100206400()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid.Direction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for PageGrid();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PaletteContentView();
  v22.receiver = v1;
  v22.super_class = v13;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  [v1 bounds];
  (*(v3 + 104))(v8, enum case for PageGrid.Direction.vertical(_:), v2);
  (*(v3 + 16))(v5, v8, v2);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  (*(v3 + 8))(v8, v2);
  PageGrid.horizontalMargins.getter();
  v15 = v14;
  (*(v10 + 8))(v12, v9);
  [v1 bounds];
  CGSize.subtracting(insets:)();
  v17 = v16;
  [*&v1[qword_100979A68] sizeThatFits:?];
  v19 = v18;
  v20 = *&v1[qword_100979A68];
  [v1 layoutMargins];
  [v20 setFrame:{v15, v21, v17, v19}];
}

void sub_100206754(void *a1)
{
  v1 = a1;
  sub_100206400();
}

id sub_1002067C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10020685C()
{
  result = qword_100979AF0;
  if (!qword_100979AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979AF0);
  }

  return result;
}

void sub_1002068B8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_isPresenterLoaded) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents;
  v2 = [objc_allocWithZone(UISegmentedControl) init];
  v3 = sub_10002849C(&qword_100979AF8);
  v4 = objc_allocWithZone(v3);
  *&v4[qword_100979A68] = v2;
  v12.receiver = v4;
  v12.super_class = v3;
  v5 = v2;
  v6 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v6 setLayoutMargins:{8.0, 0.0, 8.0, 0.0}];
  [v6 setPreservesSuperviewLayoutMargins:0];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v10 = v5;
  [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v6 addSubview:v10];

  *(v0 + v1) = v6;
  v11 = v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_segmentViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectCategoryViewController) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100206AA8()
{
  v1 = v0;
  TopChartsDiffablePagePresenter.title.getter();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v0 setTitle:v3];

  v4 = TopChartsDiffablePagePresenter.initialSegmentIndex.getter();
  v5 = &v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v6 = *&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex];
  v7 = v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectedSegmentIndex + 8];
  *v5 = v4;
  v5[8] = 0;
  [*(*&v1[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_paletteContents] + qword_100979A68) setSelectedSegmentIndex:v4];
  if (v7)
  {

    sub_100205354();
  }

  else
  {

    sub_1002059FC(v4, v6);
  }
}

void sub_100206BA0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MetricsFieldsContext();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetricsData();
  v49 = *(v8 - 8);
  v50 = v8;
  __chkstk_darwin(v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MetricsPipeline();
  v47 = *(v11 - 8);
  v48 = v11;
  __chkstk_darwin(v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  v17 = TopChartsDiffablePagePresenter.segmentPresenters.getter();
  if (v17 >> 62)
  {
    v46 = v5;
    v25 = _CocoaArrayWrapper.endIndex.getter();
    v5 = v46;

    if (v25)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v18)
    {
LABEL_3:
      v19 = a1;
      if (qword_10096D118 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for OSLogger();
      v50 = sub_1000056A8(v20, qword_1009CE200);
      sub_10002849C(&unk_100972A10);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = xmmword_1007B1E00;
      v54 = type metadata accessor for TopChartsDiffablePageViewController();
      v53[0] = v2;
      v21 = v2;
      static LogMessage.safe(_:)();
      sub_10002B894(v53, &unk_1009711D0);
      LogMessage.init(stringLiteral:)();
      swift_getErrorValue();
      v22 = v51;
      v23 = v52;
      v54 = v52;
      v24 = sub_1000056E0(v53);
      (*(*(v23 - 8) + 16))(v24, v22, v23);
      static LogMessage.sensitive(_:)();
      sub_10002B894(v53, &unk_1009711D0);
      Logger.error(_:)();

LABEL_12:
      sub_10021CA80(v19);
      return;
    }
  }

  v46 = v5;
  v44 = v4;
  type metadata accessor for JUContentUnavailableViewController();
  sub_100207C10(&qword_100979B08, &type metadata accessor for TopChartsDiffablePagePresenter);
  swift_errorRetain();

  v45 = a1;
  v26 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  v27 = OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController;
  v28 = *&v2[OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v29 = *&v2[v27];
  *&v2[v27] = v26;
  v30 = v26;

  v31 = [v2 view];
  if (v31)
  {
    v32 = v31;
    [v31 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v53[0] = v34;
    v53[1] = v36;
    v53[2] = v38;
    v54 = v40;
    v55 = 0;
    static ViewControllerContainment.add(_:to:frame:)();

    TopChartsDiffablePagePresenter.pageUrl.getter();
    v41 = type metadata accessor for URL();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v16, 1, v41) == 1)
    {
      sub_10002B894(v16, &qword_100982460);
    }

    else
    {
      URL.absoluteString.getter();
      (*(v42 + 8))(v16, v41);
    }

    type metadata accessor for PageMetricsEvent();
    swift_allocObject();
    v19 = v45;
    swift_errorRetain();
    PageMetricsEvent.init(error:pageUrl:)();
    dispatch thunk of TimedMetricsPagePresenter.metricsPipeline.getter();
    dispatch thunk of MetricsEvent.metricsData.getter();
    static MetricsFieldsContext.emptyContext.getter();
    MetricsPipeline.process(_:using:)();

    (*(v46 + 8))(v7, v44);
    (*(v49 + 8))(v10, v50);
    (*(v47 + 8))(v13, v48);
    goto LABEL_12;
  }

  __break(1u);
}

id sub_10020727C(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10002849C(&qword_100979B10);
  __chkstk_darwin(v7 - 8);
  v53 = v45 - v8;
  v9 = sub_10002849C(&qword_100979B18);
  __chkstk_darwin(v9 - 8);
  v11 = v45 - v10;
  v48 = sub_10002849C(&qword_100979B20);
  __chkstk_darwin(v48);
  v13 = v45 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = __chkstk_darwin(v17).n128_u64[0];
  v20 = v45 - v19;
  v21 = &a3[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler];
  *v21 = 0;
  *(v21 + 1) = 0;
  v57.receiver = a3;
  v57.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v57, "initWithNibName:bundle:", 0, 0, v18);
  v23 = _swiftEmptyArrayStorage;
  v56 = _swiftEmptyArrayStorage;
  v47 = v22;
  v51 = v20;
  IndexPath.init()();
  v24 = *(a1 + 40);
  v54 = a1;
  sub_10002A400((a1 + 16), v24);
  dispatch thunk of TopChartsCategoriesPresenter.selectedCategoryIndexPath.getter();
  v25 = v53;
  sub_100207BA0(v11, v53);
  v49 = *(v15 + 16);
  v50 = v15 + 16;
  v49(v13, v25, v14);
  v26 = *(sub_10002849C(&qword_100979B28) + 36);
  sub_100207C10(&qword_100979B30, &type metadata accessor for IndexPath);
  dispatch thunk of Collection.endIndex.getter();
  v28 = *(v15 + 8);
  v27 = v15 + 8;
  v46 = v28;
  v28(v25, v14);
  dispatch thunk of Collection.startIndex.getter();
  if (*&v13[v26] == v55[0])
  {
    v36 = 0;
    goto LABEL_10;
  }

  v45[1] = v27;
  v53 = sub_100207C10(&qword_100979B38, &type metadata accessor for IndexPath);
  v29 = 0;
  while (1)
  {
    dispatch thunk of BidirectionalCollection.formIndex(before:)();
    v33 = dispatch thunk of Collection.subscript.read();
    v35 = *v34;
    v33(v55, 0);
    v36 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v29)
    {
      v37 = v35;
      v38 = v51;
      IndexPath.append(_:)(v37);
      v39 = v52;
      v49(v52, v38, v14);
      v40 = objc_allocWithZone(type metadata accessor for CategoryListViewController());
      v41 = v54;

      sub_1006020C4(v41, a2, v39, v40);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_8:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }
    }

    else
    {
      v30 = v54;

      v31 = v52;
      IndexPath.init()();
      v32 = objc_allocWithZone(type metadata accessor for CategoryListViewController());
      sub_1006020C4(v30, a2, v31, v32);

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_8;
      }
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23 = v56;
    dispatch thunk of Collection.startIndex.getter();
    ++v29;
    if (*&v13[v26] == v55[0])
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_10:
  *&v13[*(v48 + 36)] = v36;
  sub_10002B894(v13, &qword_100979B20);

  v42 = v47;
  sub_1002A5BB8(v23);

  sub_100005744(0, &qword_1009711C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 setViewControllers:isa];

  v46(v51, v14);
  return v42;
}

void sub_100207884()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_presenter);
  IndexPath.init()();
  v24 = type metadata accessor for TopChartsDiffablePagePresenter();
  v25 = &protocol witness table for TopChartsDiffablePagePresenter;
  *&v23 = v6;
  v7 = *(v3 + 8);

  v7(v5, v2);
  type metadata accessor for TopChartsCategoriesDataSource();
  v8 = swift_allocObject();
  sub_100005A38(&v23, v8 + 16);
  type metadata accessor for ArtworkLoader();
  swift_allocObject();

  v9 = ArtworkLoader.init(parent:)();
  v10 = objc_allocWithZone(type metadata accessor for SelectCategoryViewController());
  v11 = sub_10020727C(v8, v9, v10);

  v12 = v11;
  v13._object = 0x8000000100807D50;
  v13._countAndFlagsBits = 0xD000000000000015;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  localizedString(_:comment:)(v13, v14);
  v15 = String._bridgeToObjectiveC()();

  [v12 setTitle:v15];

  v16 = &v12[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler];
  v17 = *&v12[OBJC_IVAR____TtC8AppStore28SelectCategoryViewController_selectionHandler];
  *v16 = j___s11AppStoreKit30TopChartsDiffablePagePresenterC6update12toCategoryAty10Foundation9IndexPathV_tF;
  v16[1] = v6;
  swift_retain_n();
  sub_10001F63C(v17);
  sub_100600D20();

  v18 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_categoriesBarButton);
  v19 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_objectGraph);
  v20 = v18;
  sub_100602274(v18, v19);

  v21 = *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectCategoryViewController);
  *(v1 + OBJC_IVAR____TtC8AppStore35TopChartsDiffablePageViewController_selectCategoryViewController) = v12;
}

uint64_t sub_100207BA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979B10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100207C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100207C6C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10002D1A8(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100207D74(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  [*&v3[qword_100983CD8] setHidden:(EditorsChoice.showsBadge.getter() & 1) == 0];
  v7 = *&v3[qword_100983CE0];
  EditorsChoice.notes.getter();
  if (v8)
  {
    v9 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = 0;
  }

  [v7 setText:v9];

  sub_100028BB8();
  if (a3)
  {
    v10.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)([objc_allocWithZone(UIColor) initWithRed:0.388235294 green:0.388235294 blue:0.4 alpha:1.0], objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.282352941, 0.282352941, 0.290196078, 1.0), objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.682352941, 0.682352941, 0.698039216, 1.0), objc_msgSend(objc_allocWithZone(UIColor), "initWithRed:green:blue:alpha:", 0.780392157, 0.780392157, 0.8, 1.0)).super.isa;
  }

  else
  {
    v10.super.isa = static UIColor.secondaryText.getter();
  }

  isa = v10.super.isa;
  [v7 setTextColor:v10.super.isa];

  v12 = v4[qword_100983CF0];
  v4[qword_100983CF0] = a2 & 1;
  if (v12 != (a2 & 1))
  {
    if (a2)
    {
      v13 = 0;
    }

    else
    {
      v13 = 6;
    }

    [v7 setNumberOfLines:v13];
    [v4 setNeedsLayout];
  }

  return dispatch thunk of CustomLayoutView.invalidateMeasurements()();
}

uint64_t sub_100207F90@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[18] = &type metadata for Double;
  v26[19] = &protocol witness table for Double;
  v26[14] = &protocol witness table for Double;
  v26[15] = 0x4046000000000000;
  v26[13] = &type metadata for Double;
  v26[10] = 0x4030000000000000;
  v26[8] = &type metadata for Double;
  v26[9] = &protocol witness table for Double;
  v26[5] = 0x4020000000000000;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0758);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v4, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v2[13];
  v13(v4);
  v7 = type metadata accessor for StaticDimension();
  v26[3] = v7;
  v26[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v26);
  v24 = v1;
  v25 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v23);
  v9 = v2[2];
  v9(v8, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v10 = v2[1];
  v10(v4, v1);
  v25 = &protocol witness table for Double;
  v24 = &type metadata for Double;
  v23[0] = 0;
  v15(v4, v16, v5);
  (v13)(v4, v14, v1);
  v22[3] = v7;
  v22[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v1;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v10(v4, v1);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

char *sub_1002082D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10002849C(&qword_100979BB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30[-1] - v5;
  v7 = type metadata accessor for ArcadeLockupLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FontUseCase();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v10, qword_1009D0740);
  (*(v11 + 16))(v13, v14, v10);
  v15 = [objc_opt_self() currentTraitCollection];
  sub_100207F90(v9);

  v16 = objc_allocWithZone(type metadata accessor for ArcadeLockupView());
  *&v1[OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView] = sub_1001C6E04(v13, v9, 0, 0.0, 0.0, 0.0, 0.0);
  v31.receiver = v1;
  v31.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v17 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  v18 = v17;
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(in:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [v18 setLayoutMargins:{v20, v22, v24, v26}];
  [v18 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  static _UICornerMaskingConfiguration.capsule.getter();
  v27 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v27 - 8) + 56))(v6, 0, 1, v27);
  UIView.cornerMaskingConfiguration.setter();
  static _Glass._GlassVariant.regular.getter();
  v30[3] = type metadata accessor for _Glass();
  v30[4] = &protocol witness table for _Glass;
  sub_1000056E0(v30);
  _Glass.init(_:smoothness:)();
  UIView._background.setter();

  [v18 addSubview:*&v18[OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView]];
  return v18;
}

void sub_1002088F8(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v5 = objc_opt_self();
  sub_100028BB8();
  v6 = a2();
  v7 = [v5 _effectWithTintColor:v6];

  *a3 = v7;
}

void sub_10020898C(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for PaletteBackgroundView();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1002089E0();
}

id sub_1002089E0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore21PaletteBackgroundView_blurEffectOverride];
  if (!v1)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 userInterfaceStyle];

    if (v3 == 2)
    {
      if (qword_10096D3F0 != -1)
      {
        swift_once();
      }

      v4 = &qword_1009CE8B8;
    }

    else
    {
      if (qword_10096D3E8 != -1)
      {
        swift_once();
      }

      v4 = &qword_1009CE8B0;
    }

    v1 = *v4;
  }

  return [v0 setEffect:v1];
}

id sub_100208BB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaletteBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100208C20()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100979BF0);
  sub_1000056A8(v4, qword_100979BF0);
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1700);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100208DF4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100979C08);
  sub_1000056A8(v4, qword_100979C08);
  *v3 = UIFontTextStyleCaption2;
  *(v3 + 2) = 0;
  v5 = enum case for FontUseCase.preferredFont(_:);
  v6 = type metadata accessor for FontUseCase();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11[3] = v0;
  v11[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v11);
  (*(v1 + 16))(v7, v3, v0);
  v8 = UIFontTextStyleCaption2;
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100208FB0()
{
  v0._object = 0x8000000100807EE0;
  v0._countAndFlagsBits = 0xD000000000000014;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  v3 = localizedString(_:comment:)(v0, v1);
  result = v3._countAndFlagsBits;
  xmmword_100979C20 = v3;
  return result;
}

unint64_t sub_100208FF4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v5 = type metadata accessor for Artwork.Style();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  __chkstk_darwin(v11);
  v70 = v48 - v12;
  result = sub_10020C2B4(a1);
  if (result >> 62)
  {
    goto LABEL_71;
  }

  v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v66 = result;
  v64 = v14;
  v57 = a1;
  if (v14)
  {
    if ((result & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }
    }

    v15 = type metadata accessor for Feature();
    v72 = v15;
    v73 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature);
    v16 = sub_1000056E0(v71);
    (*(*(v15 - 8) + 104))(v16, enum case for Feature.voyager_bundles_2025A(_:), v15);
    LOBYTE(v15) = isFeatureEnabled(_:)();
    sub_100007000(v71);
    if (v15)
    {
      v17 = v10;
      v18 = v5;
      Artwork.config(_:mode:prefersLayeredImage:)();
      v19 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
      v20 = *&v3[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v20 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      [*&v3[v19] setContentMode:2];
      v21 = *&v3[v19];
      type metadata accessor for ArtworkView();
      sub_10020CED0(&qword_100970E80, &type metadata accessor for ArtworkView);
      v22 = v21;
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

      a1 = v57;
      v5 = v18;
      v10 = v17;
    }

    else
    {
    }
  }

  v23 = sub_1002A6C38();
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
LABEL_14:
      v62 = a1 & 0xFFFFFFFFFFFFFF8;
      v63 = a1 & 0xC000000000000001;
      v24 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v23 < 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v48[1] = v25;
      v60 = v23 & 0xC000000000000001;
      v51 = enum case for Artwork.Style.roundedRect(_:);
      v50 = (v6 + 104);
      v67 = (v6 + 8);
      v49 = enum case for Feature.voyager_bundles_2025A(_:);
      v26 = 4;
      v61 = v23 >> 62;
      v55 = v3;
      v58 = v23 & 0xFFFFFFFFFFFFFF8;
      v59 = result;
      v54 = v5;
      v53 = v10;
      v52 = v23;
      do
      {
        v27 = v26 - 4;
        if (v63)
        {
          result = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = result;
          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v27 >= *(v62 + 16))
          {
            goto LABEL_66;
          }

          v6 = *(a1 + 8 * v26);

          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
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
            v47 = result;
            v14 = _CocoaArrayWrapper.endIndex.getter();
            result = v47;
            goto LABEL_3;
          }
        }

        if (v61)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (v27 == result)
          {
LABEL_40:

            break;
          }
        }

        else
        {
          result = *(v24 + 16);
          if (v27 == result)
          {
            goto LABEL_40;
          }
        }

        v69 = v28;
        if (v60)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_69;
          }

          v29 = *(v23 + 8 * v26);
        }

        v30 = v29;
        if (Lockup.icon.getter())
        {
          v31 = v70;
          Artwork.style.getter();
          v32 = v56;
          (*v50)(v56, v51, v5);
          Artwork.Style.orIfUnspecified(_:)();
          v33 = *v67;
          (*v67)(v32, v5);
          v33(v31, v5);
          v34 = [v3 traitCollection];
          v35 = type metadata accessor for Feature();
          v72 = v35;
          v73 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature);
          v36 = sub_1000056E0(v71);
          (*(*(v35 - 8) + 104))(v36, v49, v35);
          LOBYTE(v35) = isFeatureEnabled(_:)();
          sub_100007000(v71);
          v65 = v33;
          if (v35)
          {
            UITraitCollection.isSizeClassCompact.getter();
          }

          v10 = v53;
          Artwork.Style.iconHeight(fromWidth:)();
          v37 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
          [*&v30[OBJC_IVAR____TtC8AppStore15BundleChildView_icon] contentMode];
          Artwork.config(_:mode:prefersLayeredImage:)();
          v38 = *&v30[v37];
          Artwork.style.getter();
          ArtworkView.style.setter();
          [v38 setContentMode:Artwork.contentMode.getter()];
          ArtworkLoaderConfig.size.getter();
          ArtworkView.imageSize.setter();
          if (!Artwork.backgroundColor.getter())
          {
            sub_100005744(0, &qword_100970180);
            static UIColor.placeholderBackground.getter();
          }

          ArtworkView.backgroundColor.setter();

          type metadata accessor for ArtworkView();
          sub_10020CED0(&qword_100970E80, &type metadata accessor for ArtworkView);
          ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

          v5 = v54;
          (v65)(v10, v54);
          v3 = v55;
          a1 = v57;
          v23 = v52;
        }

        else
        {
        }

        ++v26;
        v24 = v58;
      }

      while (v69 != v59);
    }
  }

  result = sub_1002A6C50();
  v69 = result;
  if (!v64)
  {
    goto LABEL_64;
  }

  v67 = (v66 & 0xC000000000000001);
  v65 = v66 & 0xFFFFFFFFFFFFFF8;
  v5 = v69 & 0xFFFFFFFFFFFFFF8;
  if (v69 < 0)
  {
    v39 = v69;
  }

  else
  {
    v39 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  v61 = v39;
  v62 = v69 & 0xC000000000000001;
  v40 = 4;
  v63 = v69 >> 62;
  while (1)
  {
    v43 = v40 - 4;
    if (v67)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v43 >= *(v65 + 16))
      {
        goto LABEL_68;
      }

      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    if (v63)
    {
      break;
    }

    result = *(v5 + 16);
    if (v43 == result)
    {
      goto LABEL_63;
    }

LABEL_52:
    if (v62)
    {
      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v43 >= *(v5 + 16))
      {
        goto LABEL_70;
      }

      v44 = *(v69 + 8 * v40);
    }

    v3 = v44;
    v45 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
    [*&v44[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView] contentMode];
    v10 = Artwork.config(_:mode:prefersLayeredImage:)();
    v46 = *&v3[v45];
    v6 = v70;
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v46 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();

    v41 = *&v3[v45];
    type metadata accessor for ArtworkView();
    sub_10020CED0(&qword_100970E80, &type metadata accessor for ArtworkView);
    v42 = v41;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    ++v40;
    if (a1 == v64)
    {
      goto LABEL_64;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v43 != result)
  {
    goto LABEL_52;
  }

LABEL_63:

LABEL_64:
}

void sub_100209ADC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8AppStore10BundleView_itemStack) subviews];
  sub_100005744(0, &qword_100972EB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_17;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      type metadata accessor for BundleChildView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v5 = *(v9 + OBJC_IVAR____TtC8AppStore15BundleChildView_icon);
        v13.value.super.isa = 0;
        v13.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v13, v6);

        swift_beginAccess();
        sub_10002849C(&qword_100979C88);
        ReusePool.recycle(_:)();
        swift_endAccess();
      }

      else
      {
        type metadata accessor for IconSilhouetteView();
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          [*(v10 + OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel) setText:0];
          [v11 removeFromSuperview];
        }
      }
    }

LABEL_17:

    return;
  }

  __break(1u);
}

void sub_100209D0C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack) subviews];
  sub_100005744(0, &qword_100972EB0);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      type metadata accessor for BorderedScreenshotView();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView);
        v11.value.super.isa = 0;
        v11.is_nil = 0;
        ArtworkView.setImage(image:animated:)(v11, v9);

        swift_beginAccess();
        sub_10002849C(&qword_1009788A0);
        ReusePool.recycle(_:)();
        swift_endAccess();
      }
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_100209EF0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AspectRatio();
  v86 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100209ADC();
  sub_100209D0C();
  v7 = type metadata accessor for Feature();
  v94 = v7;
  v8 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature);
  v95 = v8;
  v9 = sub_1000056E0(v93);
  v10 = enum case for Feature.voyager_bundles_2025A(_:);
  v11 = *(v7 - 8);
  v12 = *(v11 + 104);
  v13 = v11 + 104;
  v12(v9, enum case for Feature.voyager_bundles_2025A(_:), v7);
  v14 = isFeatureEnabled(_:)();
  sub_100007000(v93);
  v15 = a1;
  v16 = 6;
  if ((v14 & 1) == 0)
  {
    v16 = 4;
  }

  v82 = v13;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_62;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v83 = v17;
    v84 = v16;
    v81 = v16 - 1;
    v18 = v16 >= v17 ? v17 : v16 - 1;
    v19 = [v2 traitCollection];
    LODWORD(v88) = sub_10020CDB0(a1);

    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_62:
    a1 = v15;
    v76 = v16;
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v76;
  }

  v77 = v12;
  v78 = v10;
  v79 = v8;
  v80 = v7;
  v85 = v6;
  v87 = v4;
  v89 = a1;
  v90 = v2;
  v20 = a1;
  if (v18)
  {
    v21 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0 && v18 > *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v22 = 0;
    v23 = *&v2[OBJC_IVAR____TtC8AppStore10BundleView_itemStack];
    do
    {
      if (v21)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      swift_beginAccess();
      sub_10002849C(&qword_100979C88);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v25 = v91;
      v26 = *&v91[OBJC_IVAR____TtC8AppStore15BundleChildView_titleLabel];
      Lockup.title.getter();
      if (v27)
      {
        v24 = String._bridgeToObjectiveC()();
      }

      else
      {
        v24 = 0;
      }

      ++v22;
      [v26 setText:{v24, v77}];

      v25[OBJC_IVAR____TtC8AppStore15BundleChildView_titleStyle] = v88;
      [v25 setNeedsLayout];
      [v23 addSubview:v25];

      v20 = v89;
      v2 = v90;
    }

    while (v18 != v22);
  }

  v28 = v87;
  v29 = v85;
  if (v84 < v83)
  {
    v30 = v83 - v81;
    v31 = [objc_allocWithZone(type metadata accessor for IconSilhouetteView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v32 = [v2 traitCollection];
    v33 = v80;
    v94 = v80;
    v95 = v79;
    v34 = sub_1000056E0(v93);
    v77(v34, v78, v33);
    v35 = isFeatureEnabled(_:)();
    sub_100007000(v93);
    if (v35)
    {
      v36 = UITraitCollection.isSizeClassCompact.getter();

      v37 = 62.0;
      if (v36)
      {
        v37 = 32.0;
      }
    }

    else
    {

      v37 = 62.0;
    }

    *&v31[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_preferredIconWidth] = v37;
    v38 = *&v31[OBJC_IVAR____TtC8AppStore18IconSilhouetteView_titleLabel];
    v39._object = 0x8000000100807F00;
    v39._countAndFlagsBits = 0xD000000000000027;
    v40._countAndFlagsBits = 0;
    v40._object = 0xE000000000000000;
    localizedStringWithCount(_:count:comment:)(v39, v30, v40);
    v41 = String._bridgeToObjectiveC()();

    [v38 setText:v41];

    [*&v2[OBJC_IVAR____TtC8AppStore10BundleView_itemStack] addSubview:v31];
    v20 = v89;
  }

  v42 = sub_10020C2B4(v20);
  v43 = v42;
  v44 = v42 >> 62;
  if (v42 >> 62)
  {
    v45 = _CocoaArrayWrapper.endIndex.getter();
    v46 = &qword_1009CE000;
    if (!v45)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v45 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = &qword_1009CE000;
    if (!v45)
    {
      goto LABEL_34;
    }
  }

  if ((v43 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    Artwork.size.getter();
    AspectRatio.init(_:_:)();

    v47 = v46[288];
    swift_beginAccess();
    (*(v86 + 40))(&v2[v47], v29, v28);
    swift_endAccess();
LABEL_34:
    v46 = v46[288];
    swift_beginAccess();
    v48 = v86;
    (*(v86 + 16))(v29, v46 + v2, v28);
    v49 = AspectRatio.isPortrait.getter();
    (*(v48 + 8))(v29, v28);
    v50 = 3;
    if (v49)
    {
      v50 = 5;
    }

    v51 = v45 >= v50 ? v50 : v45;
    v52 = v45 >= 0 ? v51 : v50;
    if (v44)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 0)
      {
        goto LABEL_69;
      }

      v53 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v53 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v53 >= v52)
    {
      break;
    }

    __break(1u);
LABEL_66:
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  if ((v43 & 0xC000000000000001) != 0 && v52)
  {
    type metadata accessor for Artwork();

    v54 = 0;
    do
    {
      v55 = v54 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v54);
      v54 = v55;
    }

    while (v52 != v55);
  }

  else
  {
  }

  if (v44)
  {
    v84 = _CocoaArrayWrapper.subscript.getter();
    v57 = v58;
    v56 = v59;
    v61 = v60;

    v52 = v61 >> 1;
  }

  else
  {
    v56 = 0;
    v84 = v43 & 0xFFFFFFFFFFFFFF8;
    v57 = (v43 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v62 = v52 - v56;
  v63 = v90;
  if (v52 == v56)
  {
    goto LABEL_60;
  }

  if (v52 > v56)
  {
    v63 = v90;
    v88 = *&v90[OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack];
    v89 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotReusePool;
    v64 = v85;
    v65 = (v86 + 40);
    v66 = v57 + 8 * v56;
    do
    {
      v66 += 8;
      swift_beginAccess();

      sub_10002849C(&qword_1009788A0);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      v67 = v92;
      Artwork.size.getter();
      AspectRatio.init(_:_:)();
      v68 = &v67[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      v69 = type metadata accessor for ScreenshotDisplayConfiguration();
      (*v65)(&v68[*(v69 + 40)], v64, v28);
      swift_endAccess();
      v70 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
      v71 = *&v67[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
      dispatch thunk of RoundedCornerView.borderWidth.setter();

      v72 = *&v67[v70];
      v28 = v87;
      v73 = *(v68 + 6);
      v74 = v72;
      v75 = v73;
      dispatch thunk of RoundedCornerView.borderColor.setter();

      [v67 setNeedsLayout];
      [v88 addSubview:v67];

      --v62;
    }

    while (v62);
LABEL_60:
    swift_unknownObjectRelease();
    [v63 setNeedsLayout];
    return;
  }

LABEL_70:
  __break(1u);
}

id sub_10020A830@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a2 = result;
  return result;
}

char *sub_10020A884(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v52 = sub_10002849C(&qword_100978860);
  __chkstk_darwin(v52);
  v51[1] = v51 - v10;
  v51[0] = sub_10002849C(&qword_100979C70);
  __chkstk_darwin(v51[0]);
  v11 = type metadata accessor for DirectionalTextAlignment();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v15 - 8);
  v17 = v51 - v16;
  v18 = OBJC_IVAR____TtC8AppStore10BundleView_iconStyle;
  v19 = enum case for Artwork.Style.roundedRect(_:);
  v20 = type metadata accessor for Artwork.Style();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  v21 = OBJC_IVAR____TtC8AppStore10BundleView_titleLabel;
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D1700);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v17, v23, v22);
  (*(v24 + 56))(v17, 0, 1, v22);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v25 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *&v5[v21] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = OBJC_IVAR____TtC8AppStore10BundleView_itemStack;
  v27 = [objc_allocWithZone(sub_10002849C(&qword_100979C90)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v27[qword_100978370] = 0;
  *&v27[qword_100978378] = 1;
  *&v27[qword_100978380] = 0x4028000000000000;
  v27[qword_100978388] = 1;
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack;
  v29 = [objc_allocWithZone(sub_10002849C(&qword_100979C98)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v29[qword_100978370] = 0;
  *&v29[qword_100978378] = 1;
  *&v29[qword_100978380] = 0x4028000000000000;
  v29[qword_100978388] = 1;
  *&v5[v28] = v29;
  type metadata accessor for BundleChildView();
  ViewRecycler.init()();
  sub_100097060(&qword_100979C78, &qword_100979C70);
  ReusePool.init(recycler:limit:)();
  type metadata accessor for BorderedScreenshotView();
  ViewRecycler.init()();
  sub_100097060(&qword_100978868, &qword_100978860);
  ReusePool.init(recycler:limit:)();
  v30 = OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView;
  *&v5[v30] = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  AspectRatio.init(_:_:)();
  v32 = type metadata accessor for BundleView();
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  sub_100005744(0, &qword_100970180);
  v34 = v33;
  v35 = static UIColor.componentBackgroundStandout.getter();
  [v34 setBackgroundColor:v35];

  [v34 _setCornerRadius:4.0];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v36 = type metadata accessor for Feature();
  v54 = v36;
  v37 = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature);
  v55 = v37;
  v38 = sub_1000056E0(v53);
  v39 = enum case for Feature.voyager_bundles_2025A(_:);
  v40 = *(*(v36 - 8) + 104);
  v40(v38, enum case for Feature.voyager_bundles_2025A(_:), v36);
  v41 = isFeatureEnabled(_:)();
  sub_100007000(v53);
  if (v41)
  {
    v42 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
    [*&v34[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView] setAccessibilityIgnoresInvertColors:1];
    [*&v34[v42] setContentMode:2];
    [v34 addSubview:*&v34[v42]];
    [v34 addSubview:*&v34[OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView]];
  }

  v43 = OBJC_IVAR____TtC8AppStore10BundleView_titleLabel;
  v44 = qword_10096D408;
  v45 = *&v34[OBJC_IVAR____TtC8AppStore10BundleView_titleLabel];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = String._bridgeToObjectiveC()();
  [v45 setText:v46];

  [*&v34[v43] setTextAlignment:1];
  [v34 addSubview:*&v34[v43]];
  v47 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack;
  [*&v34[OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack] setClipsToBounds:1];
  v54 = v36;
  v55 = v37;
  v48 = sub_1000056E0(v53);
  v40(v48, v39, v36);
  v49 = isFeatureEnabled(_:)();
  sub_100007000(v53);
  if (v49)
  {
    [v34 addSubview:*&v34[v47]];
  }

  [v34 addSubview:*&v34[OBJC_IVAR____TtC8AppStore10BundleView_itemStack]];
  [v34 setClipsToBounds:1];

  return v34;
}

id sub_10020B0F0()
{
  v1 = v0;
  v46 = type metadata accessor for AspectRatio();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleView();
  v49.receiver = v0;
  v49.super_class = v8;
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView];
  [v1 frame];
  [v9 setFrame:{0.0, 0.0}];

  v10 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
  [v1 frame];
  ArtworkView.frame.setter();

  LayoutMarginsAware<>.layoutFrame.getter();
  v11 = CGRectGetWidth(v50) + -16.0;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v12 sizeThatFits:{v11, CGRectGetHeight(v51)}];
  v14 = v13;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_itemStack];
  LayoutMarginsAware<>.layoutFrame.getter();
  v47 = v15;
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack];
  v23 = [v22 superview];
  if (v23)
  {

    LayoutMarginsAware<>.layoutFrame.getter();
    v24 = CGRectGetHeight(v52) - v14 - v21 + -40.0;
    if (qword_10096D400 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for StaticDimension();
    sub_1000056A8(v25, qword_100979C08);
    v26 = [v1 traitCollection];
    static Dimensions.defaultRoundingRule.getter();
    StaticDimension.value(compatibleWith:rounded:)();
    v28 = v27;

    (*(v5 + 8))(v7, v48);
    v29 = v24 - v28;
    v30 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotAspectRatio;
    swift_beginAccess();
    v31 = &v1[v30];
    v32 = v46;
    (*(v2 + 16))(v4, v31, v46);
    AspectRatio.width(fromHeight:)();
    v34 = v33;
    (*(v2 + 8))(v4, v32);
    v35 = v34 * -0.5;
    LayoutMarginsAware<>.layoutFrame.getter();
    v36 = v34 + CGRectGetWidth(v53);
    [v22 setFrame:{v35, 20.0, v36, v29}];
    v54.origin.y = 20.0;
    v54.origin.x = v35;
    v54.size.width = v36;
    v54.size.height = v29;
    v37 = CGRectGetMaxY(v54) + 20.0;
  }

  else
  {
    v37 = 20.0;
  }

  LayoutMarginsAware<>.layoutFrame.getter();
  [v12 setFrame:{CGRectGetMidX(v55) + v11 * -0.5, v37, v11, v14}];
  LayoutMarginsAware<>.layoutFrame.getter();
  MidX = CGRectGetMidX(v56);
  [v12 lastBaselineMaxY];
  v40 = v39;
  if (qword_10096D3F8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for StaticDimension();
  sub_1000056A8(v41, qword_100979BF0);
  v42 = [v1 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v44 = v43;

  (*(v5 + 8))(v7, v48);
  return [v47 setFrame:{MidX + v19 * -0.5, v40 + v44, v19, v21}];
}

id sub_10020B86C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BundleView()
{
  result = qword_100979C58;
  if (!qword_100979C58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020BA8C()
{
  type metadata accessor for Artwork.Style();
  if (v0 <= 0x3F)
  {
    sub_10020BC24(319, &qword_100979C68, &qword_100979C70, &unk_1007C0A70, &qword_100979C78);
    if (v1 <= 0x3F)
    {
      sub_10020BC24(319, &qword_100978858, &qword_100978860, "@N\b", &qword_100978868);
      if (v2 <= 0x3F)
      {
        type metadata accessor for AspectRatio();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_10020BC24(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10002D1A8(a3);
    sub_100097060(a5, a3);
    v8 = type metadata accessor for ReusePool();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

double sub_10020BCC0(uint64_t a1, unint64_t a2, void *a3)
{
  v46 = a1;
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FontUseCase();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096D408 != -1)
  {
    swift_once();
  }

  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v8, qword_1009D1700);
  (*(v9 + 16))(v11, v12, v8);
  v13 = [a3 traitCollection];
  UITraitCollection.prefersAccessibilityLayouts.getter();

  v14 = type metadata accessor for Feature();
  v49[3] = v14;
  v49[4] = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature);
  v15 = sub_1000056E0(v49);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  isFeatureEnabled(_:)();
  sub_100007000(v49);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v17 = v16;
  v19 = v18;
  (*(v9 + 8))(v11, v8);
  type metadata accessor for Lockup();
  v20 = 0.0;
  if (Array.isNotEmpty.getter())
  {
    v21 = sub_10020C2B4(a2);
    type metadata accessor for Artwork();
    v22 = Array.isNotEmpty.getter();
    v24 = v47;
    v23 = v48;
    if (v22)
    {
      sub_10020CC0C(v21);
      v26 = v25;

      v20 = v26 + 40.0;
    }

    else
    {
    }
  }

  else
  {
    v24 = v47;
    v23 = v48;
  }

  v27 = [a3 traitCollection];
  v28 = sub_10020CDB0(a2);

  if (qword_10096D3F8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for StaticDimension();
  sub_1000056A8(v29, qword_100979BF0);
  v30 = [a3 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v32 = v31;

  v33 = *(v24 + 8);
  v33(v7, v23);
  v34 = [a3 traitCollection];
  sub_10074FC40(v46, v28);
  v36 = v35;

  if (qword_10096D400 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v29, qword_100979C08);
  v37 = [a3 traitCollection];
  static Dimensions.defaultRoundingRule.getter();
  StaticDimension.value(compatibleWith:rounded:)();
  v39 = v38;

  v33(v7, v23);
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096E288 != -1)
  {
    swift_once();
  }

  v40 = v20 + v17 - v19 + v32 + v32 + v36 + v39;
  sub_1000056A8(v8, qword_1009D1718);
  v41 = [a3 traitCollection];
  v42 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  [v42 descender];
  v44 = v43;

  return v40 + v44;
}

uint64_t sub_10020C2B4(unint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v42 = sub_10067BCD4(a1);
  if (!v42)
  {
    return v1;
  }

  v2 = type metadata accessor for Feature();
  v44[3] = v2;
  v44[4] = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature);
  v3 = sub_1000056E0(v44);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v44);
  if ((v2 & 1) == 0)
  {

    return v1;
  }

  if (v42 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v42 & 0xC000000000000001;
  if (v4)
  {
    if (v41)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v5 = *(v42 + 4);
    }

    v6 = MixedMediaLockup.screenshots.getter();

    if (v6 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_11:
        if ((v6 & 0xC000000000000001) == 0)
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          goto LABEL_14;
        }

LABEL_27:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:

        v7 = Screenshots.artwork.getter();

        if (v7 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          if (result)
          {
            goto LABEL_16;
          }
        }

        else
        {
          result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_16:
            if ((v7 & 0xC000000000000001) != 0)
            {
              goto LABEL_144;
            }

            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              goto LABEL_19;
            }

            __break(1u);
LABEL_146:
            __break(1u);
            return result;
          }
        }
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v10 = 3;
LABEL_31:
  v39 = v10;
  v44[0] = _swiftEmptyArrayStorage;
  if (!v4)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v13 = v42 & 0xFFFFFFFFFFFFFF8;
  do
  {
    v14 = v11;
    while (1)
    {
      if (v41)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v14 >= *(v13 + 16))
        {
          goto LABEL_125;
        }

        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }
      }

      v15 = MixedMediaLockup.screenshots.getter();
      v16 = v15;
      if (v15 >> 62)
      {
        break;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

LABEL_34:

LABEL_35:
      ++v14;
      if (v11 == v4)
      {
        goto LABEL_63;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_34;
    }

LABEL_41:
    if ((v16 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }
    }

    v17 = Screenshots.artwork.getter();

    v18 = v17;
    if (!(v17 >> 62))
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v19)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    v18 = v17;
    v13 = v42 & 0xFFFFFFFFFFFFFF8;
    if (!v20)
    {
LABEL_46:

      goto LABEL_35;
    }

LABEL_54:
    if ((v18 & 0xC000000000000001) == 0)
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_57;
      }

      __break(1u);
LABEL_144:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:

      v9 = dispatch thunk of Artwork.isPortrait.getter();

      if (v9)
      {
        v10 = 5;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_57:

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v12 = v44[0];
    v13 = v42 & 0xFFFFFFFFFFFFFF8;
  }

  while (v11 != v4);
LABEL_63:
  v44[0] = v12;
  if (v12 >> 62)
  {
LABEL_127:
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 >= v39)
  {
    goto LABEL_98;
  }

  v22 = 0;
  while (2)
  {
    if (!v4)
    {
      goto LABEL_93;
    }

    v23 = 0;
    v40 = v22;
    while (2)
    {
      v24 = v23;
      v25 = v42 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v41)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (v24 >= *(v25 + 16))
          {
            goto LABEL_122;
          }

          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }
        }

        v26 = MixedMediaLockup.screenshots.getter();
        v27 = v26;
        if (!(v26 >> 62))
        {
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

LABEL_70:

          goto LABEL_71;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_70;
        }

LABEL_77:
        if ((v27 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_123;
          }
        }

        v12 = Screenshots.artwork.getter();

        sub_10002849C(&qword_100982820);
        sub_100097060(&qword_100979C80, &qword_100982820);
        Collection.subscript.getter();

        v25 = v42 & 0xFFFFFFFFFFFFFF8;
        if (!v43)
        {
LABEL_71:
          ++v24;
          if (v23 == v4)
          {
            v22 = v40;
            goto LABEL_93;
          }

          continue;
        }

        break;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v22 = v40;
      if (v23 != v4)
      {
        continue;
      }

      break;
    }

LABEL_93:
    sub_100394550(_swiftEmptyArrayStorage);
    v12 = v44[0];
    if (v44[0] >> 62)
    {
      v28 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v28 = *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = (v28 >= v39) | v22;
    v22 = 1;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_98:

  v1 = (v12 >> 62);
  if (v12 >> 62)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      v5 = v12;
    }

    else
    {
      v5 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = _CocoaArrayWrapper.endIndex.getter();
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result < 0)
    {
      goto LABEL_146;
    }

    if (v6 >= v39)
    {
      v38 = v39;
    }

    else
    {
      v38 = v6;
    }

    if (v6 >= 0)
    {
      v4 = v38;
    }

    else
    {
      v4 = v39;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v4)
    {
      goto LABEL_102;
    }

    __break(1u);
    goto LABEL_140;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39)
  {
    v4 = v39;
  }

  else
  {
    v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_102:
  if ((v12 & 0xC000000000000001) != 0 && v4)
  {
    type metadata accessor for Artwork();

    v30 = 0;
    do
    {
      v31 = v30 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v30);
      v30 = v31;
    }

    while (v4 != v31);
  }

  else
  {
  }

  if (v1)
  {
    v6 = _CocoaArrayWrapper.subscript.getter();
    v1 = v32;
    v5 = v33;
    v4 = v34;

    if (v4)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v5 = 0;
  v6 = v12 & 0xFFFFFFFFFFFFFF8;
  v1 = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
LABEL_112:
    sub_1005E7A8C(v6, v1, v5, v4);
    v1 = v35;
    goto LABEL_119;
  }

LABEL_113:
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = _swiftEmptyArrayStorage;
  }

  v37 = *(v36 + 2);

  if (__OFSUB__(v4 >> 1, v5))
  {
    goto LABEL_141;
  }

  if (v37 != (v4 >> 1) - v5)
  {
LABEL_142:
    swift_unknownObjectRelease_n();
    goto LABEL_112;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
LABEL_119:
    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_10020CC0C(unint64_t a1)
{
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    dispatch thunk of Artwork.isPortrait.getter();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(fitting:)();

    return (*(v3 + 8))(v5, v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_10020CDB0(unint64_t a1)
{
  v2 = type metadata accessor for Feature();
  v8[3] = v2;
  v8[4] = sub_10020CED0(&qword_100972E50, &type metadata accessor for Feature);
  v3 = sub_1000056E0(v8);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100007000(v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = UITraitCollection.isSizeClassCompact.getter();
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (v4 <= 3)
  {
    return v5 & 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_10020CED0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10020CF18()
{
  v1 = v0;
  v27 = sub_10002849C(&qword_100978860);
  __chkstk_darwin(v27);
  v26 = &v24 - v2;
  v25 = sub_10002849C(&qword_100979C70);
  __chkstk_darwin(v25);
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC8AppStore10BundleView_iconStyle;
  v11 = enum case for Artwork.Style.roundedRect(_:);
  v12 = type metadata accessor for Artwork.Style();
  (*(*(v12 - 8) + 104))(v1 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC8AppStore10BundleView_titleLabel;
  if (qword_10096E280 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for FontUseCase();
  v15 = sub_1000056A8(v14, qword_1009D1700);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v9, v15, v14);
  (*(v16 + 56))(v9, 0, 1, v14);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v17 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  *(v1 + v13) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v18 = OBJC_IVAR____TtC8AppStore10BundleView_itemStack;
  v19 = [objc_allocWithZone(sub_10002849C(&qword_100979C90)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v19[qword_100978370] = 0;
  *&v19[qword_100978378] = 1;
  *&v19[qword_100978380] = 0x4028000000000000;
  v19[qword_100978388] = 1;
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC8AppStore10BundleView_screenshotStack;
  v21 = [objc_allocWithZone(sub_10002849C(&qword_100979C98)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v21[qword_100978370] = 0;
  *&v21[qword_100978378] = 1;
  *&v21[qword_100978380] = 0x4028000000000000;
  v21[qword_100978388] = 1;
  *(v1 + v20) = v21;
  type metadata accessor for BundleChildView();
  ViewRecycler.init()();
  sub_100097060(&qword_100979C78, &qword_100979C70);
  ReusePool.init(recycler:limit:)();
  type metadata accessor for BorderedScreenshotView();
  ViewRecycler.init()();
  sub_100097060(&qword_100978868, &qword_100978860);
  ReusePool.init(recycler:limit:)();
  v22 = OBJC_IVAR____TtC8AppStore10BundleView_gradientBlurView;
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView;
  type metadata accessor for ArtworkView();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  AspectRatio.init(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10020D474()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LargeLockupLayout.Metrics();
  sub_100005644(v4, qword_1009CE908);
  v37 = sub_1000056A8(v4, qword_1009CE908);
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0698);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v46 = v1[13];
  v46(v3, enum case for FontSource.useCase(_:), v0);
  v45 = type metadata accessor for StaticDimension();
  v64[3] = v45;
  v64[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v61);
  v12 = v1[2];
  v44 = v1 + 2;
  v41 = v12;
  v12(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v13 = v1[1];
  v43 = v1 + 1;
  v47 = v13;
  v13(v3, v0);
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v5, qword_1009D06B0);
  v8(v3, v36, v5);
  v46(v3, v10, v0);
  v62 = v45;
  v14 = v45;
  v63 = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  v38 = v10;
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v15 = sub_1000056E0(v58);
  v39 = v1 + 13;
  v16 = v41;
  v41(v15, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v47(v3, v0);
  v17 = v36;
  v42 = v5;
  v40 = v8;
  v36 = v9;
  v8(v3, v17, v5);
  v18 = v38;
  v19 = v46;
  v46(v3, v38, v0);
  v59 = v14;
  v60 = &protocol witness table for StaticDimension;
  sub_1000056E0(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v55);
  v16(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v47(v3, v0);
  v21 = v18;
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v22 = v42;
  v35 = sub_1000056A8(v42, qword_1009D0710);
  v23 = v40;
  v40(v3, v35, v22);
  v19(v3, v21, v0);
  v56 = v45;
  v57 = &protocol witness table for StaticDimension;
  sub_1000056E0(v55);
  v24 = v23;
  v53 = v0;
  v54 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v52);
  v26 = v41;
  v41(v25, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v27 = v26;
  v47(v3, v0);
  v28 = v35;
  v24(v3, v35, v42);
  v46(v3, v21, v0);
  v29 = v45;
  v53 = v45;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v30 = sub_1000056E0(v49);
  v27(v30, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v31 = v47;
  v47(v3, v0);
  v40(v3, v28, v42);
  v46(v3, v38, v0);
  v50 = v29;
  v51 = &protocol witness table for StaticDimension;
  sub_1000056E0(v49);
  v48[3] = v0;
  v48[4] = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v48);
  v27(v32, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v31(v3, v0);
  return LargeLockupLayout.Metrics.init(headingSpace:titleSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:bottomSpace:isTextHorizontallyCentered:)();
}

char *sub_10020DAF8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for DirectionalTextAlignment();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - v14;
  v16 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_itemLayoutContext;
  v17 = type metadata accessor for ItemLayoutContext();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase] = 0;
  v18 = &v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  type metadata accessor for ArtworkView();
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_artworkView] = static ArtworkView.iconArtworkView.getter();
  if (qword_10096DD08 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D06B0);
  v21 = *(v19 - 8);
  v44 = *(v21 + 16);
  v44(v15, v20, v19);
  v43 = *(v21 + 56);
  v43(v15, 0, 1, v19);
  v22 = enum case for DirectionalTextAlignment.none(_:);
  v42 = *(v11 + 104);
  v42(v46, enum case for DirectionalTextAlignment.none(_:), v10);
  v23 = type metadata accessor for DynamicTypeLabel();
  v41 = v10;
  v24 = v23;
  v25 = objc_allocWithZone(v23);
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  if (qword_10096DD28 != -1)
  {
    swift_once();
  }

  v26 = sub_1000056A8(v19, qword_1009D0710);
  v44(v15, v26, v19);
  v43(v15, 0, 1, v19);
  v42(v46, v22, v41);
  v27 = objc_allocWithZone(v24);
  *&v5[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v47.receiver = v5;
  v47.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  v29 = [v28 contentView];
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v30 = [v28 contentView];
  [v30 addSubview:*&v28[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_artworkView]];

  v31 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel;
  v32 = *&v28[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v33 = [v28 contentView];
  [v33 addSubview:*&v28[v31]];

  v34 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel;
  v35 = *&v28[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel];
  sub_100005744(0, &qword_100970180);
  v36 = v35;
  v37 = static UIColor.secondaryText.getter();
  [v36 setTextColor:v37];

  v38 = *&v28[v34];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v39 = [v28 contentView];
  [v39 addSubview:*&v28[v34]];

  return v28;
}

void sub_10020E160(void *a1)
{
  v2 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_avatarShowcase] = a1;
  if (v3)
  {
    v4 = a1;
    [v3 removeFromSuperview];
    v5 = *&v1[v2];
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = a1;
  v5 = a1;
  if (a1)
  {
LABEL_3:
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];
  }

LABEL_4:
}

uint64_t sub_10020E240()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v33 = type metadata accessor for LayoutRect();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LargeLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for LargeLockupLayout();
  v9 = *(v31 - 8);
  *&v10 = __chkstk_darwin(v31).n128_u64[0];
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54.receiver = v1;
  v54.super_class = ObjectType;
  v34 = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v10);
  if (qword_10096D410 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v5, qword_1009CE908);
  (*(v6 + 16))(v8, v13, v5);
  v14 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_artworkView];
  v52 = type metadata accessor for ArtworkView();
  v53 = &protocol witness table for UIView;
  v51 = v14;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel];
  if (v15)
  {
    v16 = type metadata accessor for DynamicTypeLabel();
    v17 = &protocol witness table for UILabel;
    v18 = v15;
  }

  else
  {
    v18 = 0;
    v16 = 0;
    v17 = 0;
    v47 = 0;
    v48 = 0;
  }

  v46 = v18;
  v49 = v16;
  v50 = v17;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_titleLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v44 = v20;
  v45 = &protocol witness table for UILabel;
  v43 = v19;
  v21 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_subtitleLabel];
  v42 = &protocol witness table for UILabel;
  v41 = v20;
  v40 = v21;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v22)
  {
    v23 = &protocol witness table for UILabel;
  }

  else
  {
    v20 = 0;
    v23 = 0;
    v37 = 0;
    v36 = 0;
  }

  v35 = v22;
  v38 = v20;
  v39 = v23;
  v24 = v15;
  v25 = v19;
  v26 = v21;
  v27 = v22;
  v28 = v14;
  LargeLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:)();
  v29 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  LargeLockupLayout.placeChildren(relativeTo:in:)();
  (*(v32 + 8))(v4, v33);
  sub_10020F144(&qword_100979CE0, type metadata accessor for LargeLockupCollectionViewCell);
  AvatarShowcaseDisplaying.placeAvatarShowcase()();
  return (*(v9 + 8))(v12, v31);
}

id sub_10020E6F8(char a1, uint64_t a2)
{
  v5 = type metadata accessor for DirectionalTextAlignment();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972ED0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v21 - v11;
  v13 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel;
  result = *(v2 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel);
  if (a1)
  {
    if (result)
    {
      goto LABEL_6;
    }

    v15 = v2;
    if (qword_10096DD00 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for FontUseCase();
    v17 = sub_1000056A8(v16, qword_1009D0698);
    v18 = *(v16 - 8);
    (*(v18 + 16))(v12, v17, v16);
    (*(v18 + 56))(v12, 0, 1, v16);
    (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
    v19 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
    v20 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
    v2 = v15;
    sub_10003D8D0(v20, &OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_headingLabel);
    result = *(v15 + v13);
    if (result)
    {
LABEL_6:
      [result setTextColor:{a2, v10}];
      result = *(v2 + v13);
      if (result)
      {
        return [result setHidden:0];
      }
    }
  }

  else if (result)
  {

    return [result setHidden:{1, v10}];
  }

  return result;
}

void sub_10020E9A8()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - v7;
  v9 = OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v10 = *(v1 + OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  if (v10)
  {
    goto LABEL_5;
  }

  if (qword_10096DD50 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for FontUseCase();
  v12 = sub_1000056A8(v11, qword_1009D0788);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v8, v12, v11);
  (*(v13 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v14 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
  v15 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  sub_10003D8D0(v15, &OBJC_IVAR____TtC8AppStore29LargeLockupCollectionViewCell_tertiaryTitleLabel);
  v10 = *(v1 + v9);
  if (v10)
  {
LABEL_5:
    v16 = v10;
    dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

    v17 = *(v1 + v9);
    if (v17)
    {
      sub_100005744(0, &qword_100970180);
      v18 = v17;
      v19 = static UIColor.tertiaryText.getter();
      [v18 setTextColor:v19];

      v20 = *(v1 + v9);
      if (v20)
      {
        [v20 setHidden:0];
      }
    }
  }
}

uint64_t type metadata accessor for LargeLockupCollectionViewCell()
{
  result = qword_100979CC8;
  if (!qword_100979CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10020ED68()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10020EE44()
{
  v0 = type metadata accessor for Artwork.Crop();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Artwork.Crop.boundingBox.getter();
  sub_10020F144(&unk_10097B3E0, &type metadata accessor for Artwork.Crop);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return 6;
  }

  else
  {
    return Artwork.Crop.preferredContentMode.getter();
  }
}

uint64_t sub_10020EF74()
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_10020F144(&qword_100970E80, &type metadata accessor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_10020F00C(uint64_t a1)
{
  result = sub_10020F144(&qword_100979CD8, type metadata accessor for LargeLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10020F064()
{
  if (qword_10096D410 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LargeLockupLayout.Metrics();
  sub_1000056A8(v0, qword_1009CE908);
  type metadata accessor for LargeLockupLayout();
  sub_10020F144(&qword_1009739B8, &type metadata accessor for LargeLockupLayout);
  return dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
}

uint64_t sub_10020F144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10020F18C()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CE960);
  sub_1000056A8(v0, qword_1009CE960);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10020F2F0(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  SmallLockupLayout.Metrics.artworkSize.setter();
  v29 = a1;
  SmallLockupLayout.Metrics.artworkMargin.setter();
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v7 = sub_1000056A8(v6, qword_1009D0740);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v10 = v8 + 16;
  v26 = v7;
  v9(v5);
  v11 = v3[13];
  v27 = enum case for FontSource.useCase(_:);
  v31 = v11;
  (v11)(v5);
  v30 = type metadata accessor for StaticDimension();
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v32);
  v28 = v3[2];
  v23[2] = v3 + 2;
  v28(v12, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v25 = v3[1];
  v25(v5, v2);
  SmallLockupLayout.Metrics.subtitleSpace.setter();
  if (qword_10096DD58 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v6, qword_1009D07A0);
  (v9)(v5, v13, v6);
  v23[1] = v10;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v32);
  v15 = v28;
  v28(v14, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16 = v25;
  v25(v5, v2);
  v23[0] = v3 + 1;
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  v24 = v6;
  (v9)(v5, v26, v6);
  v17 = v27;
  v26 = v3 + 13;
  v31(v5, v27, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v32);
  v15(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v19 = v24;
  v20 = sub_1000056A8(v24, qword_1009D0698);
  (v9)(v5, v20, v19);
  v31(v5, v17, v2);
  v36 = v30;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v2;
  v34 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v32);
  v28(v21, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v16(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  return SmallLockupLayout.Metrics.numberOfLines.setter();
}

char *sub_10020F7E4(double a1, double a2, double a3, double a4)
{
  v28[1] = swift_getObjectType();
  v9 = type metadata accessor for CornerStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView;
  type metadata accessor for StoryCardMediaView();
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror] = 0;
  v14 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer;
  v15 = type metadata accessor for TodayCardInfoLayerView();
  *&v4[v14] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_weakInit();
  swift_weakInit();
  v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = 0;
  v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton] = 0;
  v16 = type metadata accessor for StoryCardCollectionViewCell();
  v30.receiver = v4;
  v30.super_class = v16;
  v17 = objc_msgSendSuper2(&v30, "initWithFrame:", a1, a2, a3, a4);
  v18 = [v17 contentView];
  v19 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView;
  [v18 addSubview:*&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView]];

  v20 = [v17 contentView];
  v21 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer;
  [v20 addSubview:*&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer]];

  *&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = 0x4034000000000000;
  (*(v10 + 104))(v12, enum case for CornerStyle.continuous(_:), v9);
  sub_10070C5EC(v12, 20.0);
  (*(v10 + 8))(v12, v9);
  v22 = *&v17[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v22)
  {
    v23 = v22;
    [v23 _setContinuousCornerRadius:20.0];
    v24 = [v23 layer];
    [v24 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  v29.receiver = *&v17[v21];
  v29.super_class = v15;
  objc_msgSendSuper2(&v29, "_setContinuousCornerRadius:", 20.0);
  sub_1000A3894();
  [v17 setAccessibilityIgnoresInvertColors:1];
  sub_10002849C(&qword_10097B110);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B10D0;
  *(v25 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v25 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100005744(0, &qword_100972780);
  static UITraitCollection.systemTraitsAffectingColorAppearance.getter();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1004EAE8C();
  v26 = *(*&v17[v19] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  sub_1001A4AB4(v17, &off_1008B95B0);

  return v17;
}

void sub_10020FC58(char a1)
{
  v2 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground;
  if (*(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground) == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  sub_10070C4F0();
  v4 = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
  if (*(v3 + v2) == 1)
  {
    if (!v4)
    {
      return;
    }

    v5 = *&v4[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView];
    v6 = *(v5 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring);
    *(v5 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring) = 1;
    if (v6)
    {
      return;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    v8 = swift_unknownObjectWeakLoadStrong();
    v21 = v4;
    sub_10075E2A8(Strong);
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      v10 = v9;
      if (v8)
      {
        type metadata accessor for VideoView();
        v11 = v8;
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {

          v13 = Strong;
          v8 = v11;
LABEL_25:

          v20 = v8;
          goto LABEL_26;
        }
      }

      else
      {
      }

LABEL_21:
      sub_10075E8D4();

      v13 = Strong;
      goto LABEL_25;
    }

    if (v8)
    {
      goto LABEL_21;
    }

    v8 = Strong;
LABEL_24:
    v13 = v21;
    goto LABEL_25;
  }

  if (!v4)
  {
    return;
  }

  v14 = *&v4[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView];
  v15 = *(v14 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring);
  *(v14 + OBJC_IVAR____TtC8AppStore24RevealingVideoMirrorView_isMirroring) = 0;
  if (v15 != 1)
  {
    return;
  }

  v8 = swift_unknownObjectWeakLoadStrong();
  v21 = v4;
  sub_10075E2A8(0);
  swift_unknownObjectWeakAssign();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    if (v8)
    {
      type metadata accessor for VideoView();
      v18 = v8;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        v8 = v18;
        goto LABEL_24;
      }
    }

    else
    {
    }

LABEL_23:
    sub_10075E8D4();
    goto LABEL_24;
  }

  if (v8)
  {
    goto LABEL_23;
  }

  v20 = v21;
LABEL_26:
}

uint64_t sub_10020FEDC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10097DBD0);
}

uint64_t sub_10020FF48(uint64_t a1)
{
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v6, &qword_10097DBD0);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100031660(v1 + v6, v5, &qword_10097DBD0);
  v8 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v5, v7 + v8, &qword_10097DBD0);
  return swift_endAccess();
}

void sub_10021006C()
{
  v1 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning;
  *(*(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning) = *(v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isTransitioning);
  sub_1000A3CB0();
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  v3 = *(v0 + v1);
  *(v2 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isTransitioning) = v3;
  *(*(v2 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0xC8))(v3);
  }
}

void *sub_1002101F0()
{
  result = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
  if (result)
  {
    [result alpha];
    return (v2 != 0.0);
  }

  return result;
}

void sub_100210228(char a1)
{
  if (a1)
  {

    sub_100216A8C();
  }

  else
  {
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
    *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton) = 0;
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
    }
  }
}

void sub_1002102A8()
{
  if (v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported] != 1)
  {
    goto LABEL_11;
  }

  v1 = [v0 traitCollection];
  v2 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v2 & 1) == 0)
  {
    if ((v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = [v0 traitCollection];
    v5 = UITraitCollection.isSizeClassRegular.getter();

    if ((v5 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_11:
    v6 = v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
    v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = 0;
    goto LABEL_12;
  }

  v3 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v3 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  if (v0[*v3] == 4)
  {
    if (!v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
    {
LABEL_10:
      if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] != 4)
      {
        [v0 bounds];
        v7 = CGRectGetWidth(v9) < 405.0 && *(*&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay) != 0;
        v6 = v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
        v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = v7;
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v6 = v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
  v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] = 1;
LABEL_12:

  sub_10020FC58(v6);
}

void sub_100210444(char a1)
{
  v2 = a1 & 1;
  v3 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = type metadata accessor for PageGrid();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled] != v2)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = swift_weakLoadStrong();
      if (v12)
      {
        v13 = v12;
        v23 = v1;
        v26 = TodayCard.media.getter();
        type metadata accessor for TodayCardMedia();
        sub_10002849C(&qword_100972DD0);
        if (swift_dynamicCast())
        {
          sub_100005A38(v24, v27);
          sub_10002A400(v27, v28);
          v14 = [v23 traitCollection];
          v15 = TodayCardMediaWithArtwork.video(for:)();

          if (v15)
          {
            v16 = v23;
            if (v23[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
            {
              v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
            }

            else
            {
              v17 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
            }

            v18 = v23[*v17];
            if (v18 != 7)
            {
              v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
              swift_beginAccess();
              sub_100031660(&v16[v19], v5, &qword_10097DBD0);
              if ((*(v7 + 48))(v5, 1, v6) == 1)
              {

                sub_10002B894(v5, &qword_10097DBD0);
                goto LABEL_12;
              }

              (*(v7 + 32))(v9, v5, v6);
              sub_10002A400(v27, v28);
              v20 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
              if (v20)
              {
                v21 = v20;
                if (([v23 isHidden] & 1) == 0)
                {
                  sub_100212460(v15, v21, v13, v18, v9, v11);

                  (*(v7 + 8))(v9, v6);
                  goto LABEL_12;
                }

                (*(v7 + 8))(v9, v6);

                goto LABEL_11;
              }

              (*(v7 + 8))(v9, v6);
            }
          }

LABEL_11:

LABEL_12:
          sub_100007000(v27);
          return;
        }

        v25 = 0;
        memset(v24, 0, sizeof(v24));
        sub_10002B894(v24, &qword_100972DD8);
      }

      else
      {
      }
    }
  }
}

void sub_1002108B0(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled);
  *(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isMotionEnabled) = a1;
  sub_100210444(v2);
}

id sub_1002108CC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v9 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for PageGrid();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v14, a3, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v17 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v14, v4 + v17, &qword_10097DBD0);
  swift_endAccess();
  v18 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  sub_100031660(v4 + v17, v11, &qword_10097DBD0);
  v19 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
  swift_beginAccess();
  sub_1000315F8(v11, v18 + v19, &qword_10097DBD0);
  swift_endAccess();
  sub_1004EAB3C(a2);
  v20 = [v4 backgroundView];
  if (v20)
  {
    v21 = v20;
    v22 = TodayCard.backgroundColor.getter();
    if (!v22)
    {
      sub_100005744(0, &qword_100970180);
      v22 = static UIColor.todayCardDefaultBackground.getter();
    }

    v23 = v22;
    [v21 setBackgroundColor:v22];
  }

  v24 = &StringUserDefaultsDebugSetting;
  if (TodayCard.supportsMediaMirroring.getter())
  {
    *(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = 1;
  }

  else
  {
    v25 = [v5 traitCollection];
    v26 = UITraitCollection.prefersAccessibilityLayouts.getter();

    *(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v26 & 1;
    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v27 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror;
  if (!*(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror))
  {
    v28 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
    v29 = v18;
    v30 = sub_1001AE690(v29);
    v31 = *(v5 + v27);
    *(v5 + v27) = v30;
    v32 = v30;

    [v32 _setContinuousCornerRadius:*(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius)];
    v33 = [v32 layer];
    [v33 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

    v34 = [v5 contentView];
    [v34 insertSubview:v32 belowSubview:v29];

    [v5 setNeedsLayout];
  }

LABEL_10:
  v53 = TodayCard.media.getter();
  type metadata accessor for TodayCardMedia();
  sub_10002849C(&qword_100972DD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    sub_10002B894(&v50, &qword_100972DD8);
    goto LABEL_17;
  }

  sub_100005A38(&v50, v54);
  sub_10002A400(v54, v55);
  v35 = [v5 traitCollection];
  v36 = TodayCardMediaWithArtwork.video(for:)();

  if (!v36)
  {
LABEL_16:
    sub_100007000(v54);
    v24 = &StringUserDefaultsDebugSetting;
LABEL_17:
    v53 = TodayCard.media.getter();
    if (swift_dynamicCast())
    {
      sub_100005A38(&v50, v54);
      sub_10002A400(v54, v55);
      v41 = [v5 traitCollection];
      v42 = TodayCardMediaWithArtwork.artwork(for:)();

      if (v42)
      {
        sub_10002A400(v54, v55);
        v43 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
        if (v43)
        {
          v44 = v49;
          sub_100210F98(v42, v43, a1, a2, a3, v49);

          sub_100007000(v54);
          v40 = v44;
          goto LABEL_25;
        }
      }

      sub_100007000(v54);
    }

    else
    {
      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      sub_10002B894(&v50, &qword_100972DD8);
    }

    v40 = v49;
    goto LABEL_25;
  }

  sub_10002A400(v54, v55);
  v37 = dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter();
  if (!v37)
  {

    goto LABEL_16;
  }

  v38 = v37;
  v39 = v49;
  swift_weakAssign();
  swift_weakAssign();
  sub_100212460(v36, v38, a1, a2, a3, v39);

  sub_100007000(v54);
  v40 = v39;
  v24 = &StringUserDefaultsDebugSetting;
LABEL_25:
  v45 = *(v5 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer);
  sub_1000A3E28(a1, a2, a3, v40);
  v46 = [v45 setUserInteractionEnabled:*(v5 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded)];
  (*((swift_isaMask & *v5) + 0x278))(v46);
  sub_1002102A8();
  return [v5 v24[41].base_meths];
}

uint64_t sub_100210F98(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v157 = a6;
  v168 = a5;
  v169 = a2;
  LODWORD(v166) = a4;
  v9 = sub_10002849C(&qword_10097A450);
  __chkstk_darwin(v9 - 8);
  v134 = &v129 - v10;
  v161 = type metadata accessor for PageGrid();
  v160 = *(v161 - 8);
  __chkstk_darwin(v161);
  v132 = v11;
  v140 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for UUID();
  v142 = *(v143 - 8);
  __chkstk_darwin(v143);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = v12;
  __chkstk_darwin(v13);
  v141 = &v129 - v14;
  v135 = sub_10002849C(&qword_100979D78);
  __chkstk_darwin(v135);
  v136 = &v129 - v15;
  v16 = sub_10002849C(&qword_100972638);
  __chkstk_darwin(v16 - 8);
  v133 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v130 = &v129 - v19;
  __chkstk_darwin(v20);
  v137 = &v129 - v21;
  __chkstk_darwin(v22);
  v138 = &v129 - v23;
  v24 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v24 - 8);
  v156 = &v129 - v25;
  v26 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v26 - 8);
  v162 = &v129 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Artwork.URLTemplate();
  v159 = *(v144 - 8);
  __chkstk_darwin(v144);
  v158 = &v129 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for Artwork.Variant();
  v154 = *(v155 - 8);
  __chkstk_darwin(v155);
  v153 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10002849C(&qword_100979D60);
  __chkstk_darwin(v30 - 8);
  v32 = &v129 - v31;
  v33 = type metadata accessor for Artwork.Crop();
  v164 = *(v33 - 8);
  v165 = v33;
  __chkstk_darwin(v33);
  v151 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v129 - v36;
  v150 = type metadata accessor for FloatingPointRoundingRule();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v146 = &v129 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for TodayCardArtworkLayout();
  v145 = *(v147 - 8);
  __chkstk_darwin(v147);
  v40 = &v129 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v42 = *(v41 - 8);
  __chkstk_darwin(v41);
  v44 = &v129 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v47 = &v129 - v46;
  v48 = TodayCard.backgroundColor.getter();
  if (!v48)
  {
    v49 = Artwork.backgroundColor.getter();
    if (!v49)
    {
      goto LABEL_7;
    }

    v163 = a1;
    v50 = v32;
    v51 = v49;
    v52 = [v6 backgroundView];
    if (v52)
    {
      v53 = v52;
      [v52 setBackgroundColor:v51];
    }

    v48 = v51;
    v32 = v50;
  }

LABEL_7:
  v152 = v37;
  v167 = v7;
  v148 = [v7 traitCollection];
  v54 = UITraitCollection.modifyingTraits(_:)();
  v55 = v166;
  v163 = v54;
  sub_100467918(v166, v168, v54);
  sub_100699534(v55);
  v56 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v55 != 6)
  {
    v57 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v55 != 4)
  {
    v56 = v57;
  }

  (*(v42 + 104))(v44, *v56, v41);
  (*(v42 + 32))(v47, v44, v41);
  v58 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v42 + 8))(v47, v41);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  if (v59)
  {
    Artwork.size.getter();
  }

  v60 = v165;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v61 = v149;
  v62 = v146;
  v63 = v150;
  (*(v149 + 104))(v146, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v150);
  CGSize.rounded(_:)();
  (*(v61 + 8))(v62, v63);
  (*(v145 + 8))(v40, v147);
  v150 = v58;
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v64 = v164;
  v65 = *(v164 + 48);
  v66 = v65(v32, 1, v60);
  v67 = v167;
  if (v66 == 1)
  {
    v68 = v152;
    Artwork.crop.getter();
    v69 = v60;
    if (v65(v32, 1, v60) != 1)
    {
      sub_10002B894(v32, &qword_100979D60);
    }
  }

  else
  {
    v68 = v152;
    (*(v64 + 32))(v152, v32, v60);
    v69 = v60;
  }

  v70 = v153;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  v71 = v163;
  [v163 displayScale];
  v72 = v164;
  (*(v164 + 16))(v151, v68, v69);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v73 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v154 + 8))(v70, v155);
  (*(v72 + 8))(v68, v165);
  v74 = *&v67[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  if (v67[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 7)
  {
    v75 = v166;
  }

  else
  {
    v75 = v67[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory];
  }

  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v166 = v170;
  v164 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);

  v165 = v74;
  v162 = v73;
  v163 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView;
  v77 = *(v74 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  ArtworkLoaderConfig.size.getter();
  v79 = v78;
  v81 = v80;
  v82 = [*(v77 + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) image];
  v83 = v160;
  v84 = v156;
  v85 = v161;
  v154 = *(v160 + 16);
  (v154)(v156, v168, v161);
  (*(v83 + 56))(v84, 0, 1, v85);
  LODWORD(v155) = v75;
  sub_1001A5AD8(v82, v79, v81, 0, v169, v84, v75);

  sub_10002B894(v84, &qword_10097DBD0);
  v86 = *(v77 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded);
  v157 = v77;
  if (v86)
  {
    v87 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    v88 = v138;
    sub_100031660(v77 + v87, v138, &qword_100972638);
    v89 = v137;
    ArtworkLoaderConfig.template.getter();
    v90 = v159;
    v91 = v144;
    (*(v159 + 56))(v89, 0, 1, v144);
    v92 = *(v135 + 48);
    v93 = v136;
    sub_100031660(v88, v136, &qword_100972638);
    sub_100031660(v89, v93 + v92, &qword_100972638);
    v94 = *(v90 + 48);
    if (v94(v93, 1, v91) == 1)
    {
      sub_10002B894(v89, &qword_100972638);
      sub_10002B894(v88, &qword_100972638);
      if (v94(v93 + v92, 1, v91) == 1)
      {
        sub_10002B894(v93, &qword_100972638);
        goto LABEL_29;
      }
    }

    else
    {
      v95 = v130;
      sub_100031660(v93, v130, &qword_100972638);
      if (v94(v93 + v92, 1, v91) != 1)
      {
        v125 = v159;
        v126 = v158;
        (*(v159 + 32))(v158, v93 + v92, v91);
        sub_1002182AC(&qword_100979D88, &type metadata accessor for Artwork.URLTemplate);
        v127 = dispatch thunk of static Equatable.== infix(_:_:)();
        v128 = *(v125 + 8);
        v128(v126, v91);
        sub_10002B894(v137, &qword_100972638);
        sub_10002B894(v138, &qword_100972638);
        v128(v95, v91);
        sub_10002B894(v93, &qword_100972638);
        v77 = v157;
        if (v127)
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      sub_10002B894(v137, &qword_100972638);
      sub_10002B894(v138, &qword_100972638);
      (*(v159 + 8))(v95, v91);
    }

    sub_10002B894(v93, &qword_100979D78);
    v77 = v157;
  }

LABEL_27:
  if ((*(v77 + OBJC_IVAR____TtC8AppStore18RevealingImageView_isTransitioning) & 1) == 0)
  {
    v96 = v141;
    UUID.init()();
    v97 = v142;
    v98 = *(v142 + 16);
    v99 = v139;
    v100 = v143;
    v98(v139, v96, v143);
    sub_1002182AC(&qword_100979D80, &type metadata accessor for UUID);
    AnyHashable.init<A>(_:)();
    v101 = swift_allocObject();
    v158 = v101;
    swift_unknownObjectWeakInit();
    v102 = v99;
    v103 = v100;
    v98(v102, v96, v100);
    (v154)(v140, v168, v161);
    v104 = (*(v97 + 80) + 24) & ~*(v97 + 80);
    v105 = (v131 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
    v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
    v107 = v160;
    v108 = (*(v160 + 80) + v106 + 8) & ~*(v160 + 80);
    v109 = v108 + v132;
    v110 = swift_allocObject();
    *(v110 + 16) = v101;
    v111 = *(v97 + 32);
    v111(v110 + v104, v139, v103);
    v112 = (v110 + v105);
    *v112 = v79;
    v112[1] = v81;
    *(v110 + v106) = v169;
    (*(v107 + 32))(v110 + v108, v140, v161);
    *(v110 + v109) = v155;

    ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

    sub_10002B894(&v170, &qword_10096FB90);

    v113 = v133;
    ArtworkLoaderConfig.template.getter();
    (*(v159 + 56))(v113, 0, 1, v144);
    v114 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkTemplate;
    v115 = v157;
    swift_beginAccess();
    v116 = v115;
    sub_1000315F8(v113, v115 + v114, &qword_100972638);
    swift_endAccess();
    v117 = v134;
    v118 = v143;
    v111(v134, v141, v143);
    (*(v142 + 56))(v117, 0, 1, v118);
    v119 = OBJC_IVAR____TtC8AppStore18RevealingImageView_currentArtworkHandlerKey;
    swift_beginAccess();
    sub_1000315F8(v117, v116 + v119, &qword_10097A450);
    swift_endAccess();
  }

LABEL_29:
  v120 = v165;
  [*&v163[v165] setHidden:0];
  [*(v120 + v164) setHidden:1];

  *(v120 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 1;
  v121 = *&v167[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v121)
  {
    v122 = *&v121[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
    v123 = v121;
    [v122 setHidden:0];
    [*&v123[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView] setHidden:1];
  }
}

uint64_t sub_100212460(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v219 = a6;
  v253 = a5;
  v254 = a4;
  v255 = a2;
  v7 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v7 - 8);
  v208 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v212 = &v207 - v10;
  v11 = sub_10002849C(&unk_100973A50);
  __chkstk_darwin(v11 - 8);
  v218 = &v207 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v217 = &v207 - v14;
  v250 = type metadata accessor for URL();
  v15 = *(v250 - 8);
  __chkstk_darwin(v250);
  v211 = &v207 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_10002849C(&unk_10097CCA0);
  __chkstk_darwin(v248);
  v249 = &v207 - v17;
  v18 = sub_10002849C(&qword_100982460);
  __chkstk_darwin(v18 - 8);
  v216 = &v207 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v215 = &v207 - v21;
  __chkstk_darwin(v22);
  v257 = &v207 - v23;
  __chkstk_darwin(v24);
  v258 = &v207 - v25;
  v26 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v26 - 8);
  v246 = &v207 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v28 - 8);
  v243 = &v207 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for Artwork.Variant();
  v245 = *(v247 - 8);
  __chkstk_darwin(v247);
  v244 = &v207 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10002849C(&qword_100979D60);
  __chkstk_darwin(v31 - 8);
  v239 = &v207 - v32;
  v242 = type metadata accessor for Artwork.Crop();
  v264 = *(v242 - 8);
  __chkstk_darwin(v242);
  v240 = &v207 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v241 = &v207 - v35;
  v238 = type metadata accessor for FloatingPointRoundingRule();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v235 = &v207 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = type metadata accessor for TodayCardArtworkLayout();
  v234 = *(v236 - 8);
  __chkstk_darwin(v236);
  v233 = &v207 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v229 = &v207 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v230 = &v207 - v40;
  v41 = sub_10002849C(&unk_1009732A0);
  __chkstk_darwin(v41 - 8);
  v228 = &v207 - v42;
  v226 = type metadata accessor for VideoFillMode();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v227 = &v207 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = type metadata accessor for VideoConfiguration();
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v267 = &v207 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10002849C(&qword_100979D68);
  __chkstk_darwin(v45 - 8);
  v210 = &v207 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v223 = &v207 - v48;
  __chkstk_darwin(v49);
  v214 = &v207 - v50;
  __chkstk_darwin(v51);
  v53 = &v207 - v52;
  v265 = type metadata accessor for VideoControls();
  v270 = *(v265 - 8);
  __chkstk_darwin(v265);
  v263 = &v207 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v262 = &v207 - v56;
  __chkstk_darwin(v57);
  v209 = &v207 - v58;
  __chkstk_darwin(v59);
  v224 = &v207 - v60;
  __chkstk_darwin(v61);
  v222 = &v207 - v62;
  __chkstk_darwin(v63);
  v221 = &v207 - v64;
  __chkstk_darwin(v65);
  v67 = &v207 - v66;
  __chkstk_darwin(v68);
  v213 = &v207 - v69;
  __chkstk_darwin(v70);
  v72 = &v207 - v71;
  __chkstk_darwin(v73);
  v75 = &v207 - v74;
  __chkstk_darwin(v76);
  v78 = &v207 - v77;
  __chkstk_darwin(v79);
  v81 = &v207 - v80;
  __chkstk_darwin(v82);
  v84 = &v207 - v83;
  v85 = TodayCard.backgroundColor.getter();
  v271 = a1;
  if (v85)
  {
    v86 = v85;
LABEL_3:

    goto LABEL_4;
  }

  Video.preview.getter();
  v98 = v15;
  v86 = Artwork.backgroundColor.getter();

  if (v86)
  {
    v99 = [v272 backgroundView];
    if (v99)
    {
      v100 = v99;
      [v99 setBackgroundColor:v86];

      v15 = v98;
    }

    goto LABEL_3;
  }

LABEL_4:
  v259 = v15;
  v269 = v67;
  Video.autoPlayPlaybackControls.getter();
  static VideoControls.muteUnmute.getter();
  v87 = v270;
  v88 = v265;
  v268 = *(v270 + 16);
  v256 = v270 + 16;
  v268(v75, v84, v265);
  sub_1002182AC(&unk_100988DE0, &type metadata accessor for VideoControls);
  dispatch thunk of SetAlgebra.intersection(_:)();
  v89 = dispatch thunk of SetAlgebra.isEmpty.getter();
  v266 = v84;
  if (v89)
  {
    v90 = *(v87 + 8);
    v90(v78, v88);
    v90(v81, v88);
    v91 = 1;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v90 = *(v87 + 8);
    v90(v81, v88);
    (*(v87 + 32))(v53, v78, v88);
    v91 = 0;
  }

  v260 = *(v87 + 56);
  v260(v53, v91, 1, v88);
  sub_10002B894(v53, &qword_100979D68);
  v220 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  v92 = v272[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4;
  v93 = v269;
  v261 = v90;
  v94 = v221;
  if (v92)
  {
    static VideoControls.prominentPlay.getter();
    v268(v75, v266, v88);
    v95 = v213;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v90 = v261;
      v261(v95, v88);
      v90(v72, v88);
      v96 = 1;
      v97 = v214;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v101 = v270;
      v90 = v261;
      v261(v72, v88);
      v102 = *(v101 + 32);
      v97 = v214;
      v102(v214, v95, v88);
      v96 = 0;
    }

    v260(v97, v96, 1, v88);
    sub_10002B894(v97, &qword_100979D68);
  }

  Video.playbackControls.getter();
  static VideoControls.muteUnmute.getter();
  v268(v75, v93, v88);
  v103 = v94;
  v104 = v222;
  dispatch thunk of SetAlgebra.intersection(_:)();
  if (dispatch thunk of SetAlgebra.isEmpty.getter())
  {
    v90(v104, v88);
    v90(v103, v88);
    v105 = 1;
    v106 = v242;
    v107 = v223;
  }

  else
  {
    dispatch thunk of SetAlgebra.subtract(_:)();
    v108 = v270;
    v90(v103, v88);
    v109 = *(v108 + 32);
    v107 = v223;
    v109(v223, v104, v88);
    v105 = 0;
    v106 = v242;
  }

  v260(v107, v105, 1, v88);
  sub_10002B894(v107, &qword_100979D68);
  v110 = v224;
  if (v272[v220] == 4 && (v272[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] & 1) == 0)
  {
    static VideoControls.prominentPlay.getter();
    v268(v75, v269, v88);
    v111 = v209;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v112 = v261;
      v261(v111, v88);
      v112(v110, v88);
      v113 = 1;
      v114 = v210;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      v115 = v270;
      v261(v110, v88);
      v116 = *(v115 + 32);
      v114 = v210;
      v116(v210, v111, v88);
      v113 = 0;
    }

    v260(v114, v113, 1, v88);
    sub_10002B894(v114, &qword_100979D68);
  }

  (*(v225 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v226);
  Video.preview.getter();
  Artwork.size.getter();
  v117 = v228;
  AspectRatio.init(_:_:)();

  v118 = type metadata accessor for AspectRatio();
  (*(*(v118 - 8) + 56))(v117, 0, 1, v118);
  v119 = v268;
  v268(v262, v269, v88);
  v119(v263, v266, v88);
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  Video.preview.getter();
  v268 = [v272 traitCollection];
  v120 = UITraitCollection.modifyingTraits(_:)();
  v121 = v254;
  sub_100467918(v254, v253, v120);
  v122 = v121;
  sub_100699534(v121);
  v123 = v231;
  v124 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
  v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
  if (v122 != 6)
  {
    v125 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
  }

  if (v122 != 4)
  {
    v124 = v125;
  }

  v126 = v229;
  v127 = v232;
  (*(v231 + 104))(v229, *v124, v232);
  v128 = v230;
  (*(v123 + 32))(v230, v126, v127);
  v129 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();
  (*(v123 + 8))(v128, v127);
  TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
  if (v130)
  {
    Artwork.size.getter();
  }

  v131 = v241;
  v132 = v239;
  v133 = v233;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  CGSize.subtracting(insets:)();
  CGSize.scaled(_:)();
  v134 = v237;
  v135 = v235;
  v136 = v238;
  (*(v237 + 104))(v235, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v238);
  CGSize.rounded(_:)();
  (*(v134 + 8))(v135, v136);
  (*(v234 + 8))(v133, v236);
  TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
  v137 = v264;
  v138 = *(v264 + 48);
  v139 = v138(v132, 1, v106);
  v262 = v129;
  if (v139 == 1)
  {
    Artwork.crop.getter();
    v140 = v106;
    v141 = v131;
    if (v138(v132, 1, v106) != 1)
    {
      sub_10002B894(v132, &qword_100979D60);
    }
  }

  else
  {
    (*(v137 + 32))(v131, v132, v106);
    v140 = v106;
    v141 = v131;
  }

  v142 = v244;
  dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
  Artwork.template.getter();
  [v120 displayScale];
  v260 = v120;
  v143 = v264;
  (*(v264 + 16))(v240, v141, v140);
  Artwork.Variant.format.getter();
  Artwork.Variant.quality.getter();
  type metadata accessor for ArtworkLoaderConfig();
  swift_allocObject();
  v263 = ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

  (*(v245 + 8))(v142, v247);
  (*(v143 + 8))(v141, v140);
  v144 = *&v272[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  v145 = v258;
  Video.videoUrl.getter();
  v146 = v259;
  v147 = *(v259 + 56);
  v148 = 1;
  v149 = v250;
  (v147)(v145, 0, 1, v250);
  v264 = v144;
  v268 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v151 = Strong;
    v152 = v257;
    (*(v146 + 16))(v257, Strong + qword_1009D21C8, v149);

    v148 = 0;
    v153 = v249;
  }

  else
  {
    v153 = v249;
    v152 = v257;
  }

  v262 = v147;
  (v147)(v152, v148, 1, v149);
  v154 = *(v248 + 48);
  sub_100031660(v145, v153, &qword_100982460);
  sub_100031660(v152, v153 + v154, &qword_100982460);
  v155 = *(v146 + 48);
  if (v155(v153, 1, v149) == 1)
  {
    sub_10002B894(v152, &qword_100982460);
    sub_10002B894(v145, &qword_100982460);
    v156 = v155(v153 + v154, 1, v149);
    v157 = v272;
    if (v156 == 1)
    {
      sub_10002B894(v153, &qword_100982460);
      goto LABEL_61;
    }

    goto LABEL_43;
  }

  v158 = v215;
  sub_100031660(v153, v215, &qword_100982460);
  if (v155(v153 + v154, 1, v149) == 1)
  {
    sub_10002B894(v257, &qword_100982460);
    sub_10002B894(v258, &qword_100982460);
    (*(v259 + 8))(v158, v149);
LABEL_43:
    sub_10002B894(v153, &unk_10097CCA0);
    v159 = v264;
    goto LABEL_44;
  }

  v166 = v259;
  v167 = v211;
  (*(v259 + 32))(v211, v153 + v154, v149);
  sub_1002182AC(&qword_100975040, &type metadata accessor for URL);
  v168 = dispatch thunk of static Equatable.== infix(_:_:)();
  v169 = *(v166 + 8);
  v169(v167, v149);
  sub_10002B894(v257, &qword_100982460);
  sub_10002B894(v258, &qword_100982460);
  v169(v158, v149);
  sub_10002B894(v153, &qword_100982460);
  v157 = v272;
  v159 = v264;
  if ((v168 & 1) == 0)
  {
LABEL_44:
    type metadata accessor for VideoViewManager();
    v264 = type metadata accessor for BaseObjectGraph();
    inject<A, B>(_:from:)();
    v160 = v273;
    Video.playbackId.getter();
    v161 = v216;
    Video.videoUrl.getter();
    (v262)(v161, 0, 1, v149);
    v162 = v217;
    Video.templateMediaEvent.getter();
    v163 = v218;
    Video.templateClickEvent.getter();
    v164 = type metadata accessor for TodayCardVideoView();
    sub_1002182AC(&qword_100979D58, type metadata accessor for TodayCardVideoView);
    v262 = v164;
    v165 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
    sub_10002B894(v163, &unk_100973A50);
    sub_10002B894(v162, &unk_100973A50);
    sub_10002B894(v161, &qword_100982460);
    sub_10002B894(&v273, &qword_10096FB90);
    if (v165)
    {
      if ((v165[qword_1009CE000] & 1) == 0)
      {
        v260 = v160;
        v165[qword_1009CDFF8] = *(v159 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory);
        sub_1000FA22C();
        swift_unknownObjectWeakAssign();
        v170 = v268;
        v171 = swift_unknownObjectWeakLoadStrong();
        swift_unknownObjectWeakAssign();
        v172 = v165;
        sub_1006666C8(v171);

        v173 = *(v170 + v159);
        v174 = v172;
        Video.preview.getter();
        Artwork.size.getter();
        v176 = v175;
        v178 = v177;

        v179 = type metadata accessor for PageGrid();
        v180 = *(v179 - 8);
        v181 = v212;
        (*(v180 + 16))(v212, v253, v179);
        (*(v180 + 56))(v181, 0, 1, v179);
        v182 = swift_unknownObjectWeakLoadStrong();
        v271 = v174;
        swift_unknownObjectWeakAssign();
        sub_1006666C8(v182);

        v183 = &v173[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkSize];
        *v183 = v176;
        *(v183 + 1) = v178;
        v183[16] = 0;
        v184 = swift_unknownObjectWeakLoadStrong();
        if (v184)
        {
          v185 = v184;
          (*((swift_isaMask & *v184) + 0xE8))(v176, v178, 0);
        }

        v186 = v255;
        *&v173[OBJC_IVAR____TtC8AppStore18RevealingVideoView_artworkLayoutWithMetrics] = v255;

        v187 = swift_unknownObjectWeakLoadStrong();
        if (v187)
        {
          v188 = v187;
          v189 = *((swift_isaMask & *v187) + 0xD0);
          swift_bridgeObjectRetain_n();
          v189(v186);
          v181 = v212;
        }

        else
        {
        }

        v190 = v208;
        sub_100031660(v181, v208, &qword_10097DBD0);
        sub_100665BDC(v190);
        v191 = v254;
        v173[OBJC_IVAR____TtC8AppStore18RevealingVideoView_sizeCategory] = v254;
        v192 = swift_unknownObjectWeakLoadStrong();
        if (v192)
        {
          v193 = v192;
          (*((swift_isaMask & *v192) + 0x118))(v191);
        }

        v194 = swift_unknownObjectWeakLoadStrong();
        if (v194)
        {
          v195 = v194;
          v196 = swift_unknownObjectWeakLoadStrong();
          (*((swift_isaMask & *v195) + 0x150))(v196, *v183, *(v183 + 1), v183[16], v255, v181, v191);
        }

        [v173 setNeedsLayout];
        v197 = v271;

        sub_10002B894(v181, &qword_10097DBD0);
        type metadata accessor for ArtworkLoader();
        inject<A, B>(_:from:)();
        sub_1002182AC(&qword_100979D70, type metadata accessor for TodayCardVideoView);
        ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
        [*(v268 + v159) setHidden:0];
        [*(v159 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView) setHidden:1];

        *(v159 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_hasMedia) = 1;
        goto LABEL_60;
      }
    }

LABEL_60:
    v157 = v272;
  }

LABEL_61:
  v198 = *&v157[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v198)
  {
    v199 = *&v198[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView];
    v200 = v198;
    [v199 setHidden:1];
    [*&v200[OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingVideoView] setHidden:0];
  }

  v201 = swift_unknownObjectWeakLoadStrong();
  v202 = v266;
  v203 = v261;
  if (v201)
  {
    *(v201 + qword_100988CB8 + 8) = &off_1008B9598;
    v204 = v201;
    swift_unknownObjectWeakAssign();
  }

  sub_100214610();

  (*(v251 + 8))(v267, v252);
  v205 = v265;
  v203(v269, v265);
  return (v203)(v202, v205);
}

void sub_100214610()
{
  v1 = v0;
  v2 = type metadata accessor for VideoPlayerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1004DFC98() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton))
  {
    sub_100216A8C();
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_100988CE0;
      v12 = *&v25[qword_100988CE0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_1001C6984(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          dispatch thunk of VideoPlayer.state.getter();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1004DFC98() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_100217E64;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008B9668;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_1002149C0()
{
  v1 = v0;
  v2 = type metadata accessor for VideoPlayerState();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v25 = Strong;
  if ((sub_1004DFC98() & 1) != 0 && !*(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton))
  {
    sub_1003357E0();
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC8AppStore31ListTodayCardCollectionViewCell_muteButton);
    if (v10)
    {
LABEL_5:
      v11 = qword_100988CE0;
      v12 = *&v25[qword_100988CE0];
      v13 = v10;
      if (v12)
      {
        v14 = [v12 isMuted];
      }

      else
      {
        v14 = 0;
      }

      sub_1001C6984(v14);
      v15 = 0.0;
      if ((*(v1 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
      {
        v16 = *&v25[v11];
        if (v16)
        {
          v17 = v16;
          dispatch thunk of VideoPlayer.state.getter();

          (*(v3 + 32))(v8, v5, v2);
        }

        else
        {
          (*(v3 + 104))(v8, enum case for VideoPlayerState.unknown(_:), v2);
        }

        if ((*(v3 + 88))(v8, v2) != enum case for VideoPlayerState.playing(_:) || (v15 = 1.0, (sub_1004DFC98() & 1) == 0))
        {
          v15 = 0.0;
        }

        (*(v3 + 8))(v8, v2);
      }

      [v10 alpha];
      if (v19 == v15)
      {
      }

      else
      {
        v20 = objc_opt_self();
        v21 = swift_allocObject();
        *(v21 + 16) = v10;
        *(v21 + 24) = v15;
        aBlock[4] = sub_1002182F8;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008B96B8;
        v22 = _Block_copy(aBlock);
        v23 = v10;

        [v20 animateWithDuration:4 delay:v22 options:0 animations:0.15 completion:0.0];

        _Block_release(v22);
      }

      return;
    }
  }

  v18 = v25;
}

void sub_100214D80(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v8 - 8);
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v61 - v11;
  __chkstk_darwin(v13);
  v17 = &v61 - v16;
  if (a3)
  {

    swift_dynamicCastClass();
  }

  else
  {
    v61 = v15;
    v62 = v14;
    ObjectType = swift_getObjectType();
    (*(a2 + 112))(ObjectType, a2);
    v19 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_1000315F8(v17, v4 + v19, &qword_10097DBD0);
    swift_endAccess();
    v20 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
    sub_100031660(v4 + v19, v12, &qword_10097DBD0);
    v21 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_pageGrid;
    swift_beginAccess();
    sub_1000315F8(v12, v20 + v21, &qword_10097DBD0);
    swift_endAccess();
    v22 = (*(a2 + 160))(ObjectType, a2);
    v23 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
    *(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory) = v22;
    if (v22 == 4)
    {
      v24 = [v4 contentView];
      [v24 setClipsToBounds:1];
    }

    [v4 setNeedsLayout];
    v25 = *(v4 + v23);
    sub_1000A3C18(v25);
    *(v20 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory) = v25;
    sub_10070D46C();
    v26 = (*(a2 + 136))(ObjectType, a2);
    sub_1004EAB3C(v26);
    v27 = swift_dynamicCastClass();
    if (v27)
    {
      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported);
      *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_isBackgroundMirroringSupported) = v29;
      if (v29 == 1 && (v30 = OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror, !*(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror)))
      {
        v52 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
        v53 = objc_allocWithZone(type metadata accessor for StoryCardMediaMirrorView());
        v54 = a1;
        v55 = v52;
        v56 = sub_1001AE690(v55);
        v57 = *(v4 + v30);
        *(v4 + v30) = v56;
        v58 = v56;

        [v58 _setContinuousCornerRadius:*(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius)];
        v59 = [v58 layer];
        [v59 setMaskedCorners:UIRectCorner.caCornerMask.getter()];

        v60 = [v4 contentView];
        [v60 insertSubview:v58 belowSubview:v55];

        [v4 setNeedsLayout];
      }

      else
      {
        v31 = a1;
      }

      v32 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground);
      *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground) = v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground];
      sub_10020FC58(v32);
      v33 = *&v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
      sub_1000A63B4(v33, 0);

      v34 = *&v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
      if (v34)
      {
        v35 = *(v4 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
        if (v35)
        {
          v36 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
          swift_beginAccess();
          v37 = v61;
          sub_100031660(v4 + v36, v61, &qword_10097DBD0);
          v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
          if (*(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
          {
            v38 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
          }

          v39 = *(v4 + *v38);
          v40 = v34;
          v41 = v35;
          sub_1001AE940(v40, 0, v37, v39);

          sub_10002B894(v37, &qword_10097DBD0);
        }
      }

      v42 = *&v28[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
      v43 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      v44 = v62;
      sub_100031660(v4 + v43, v62, &qword_10097DBD0);
      v45 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      if (*(v4 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded))
      {
        v45 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
      }

      v46 = *(v4 + *v45);
      v47 = v42;
      sub_10070C7C4(v47, 0, v44, v46);

      sub_10002B894(v44, &qword_10097DBD0);
      v48 = [v4 backgroundView];
      if (v48)
      {
        v49 = v48;
        v50 = [v28 backgroundView];
        v51 = [v50 backgroundColor];

        [v49 setBackgroundColor:v51];
      }

      (*((swift_isaMask & *v4) + 0x278))();
      [v4 setNeedsLayout];
    }
  }
}

uint64_t sub_100215478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v4 = type metadata accessor for Artwork.Format();
  __chkstk_darwin(v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Artwork.URLTemplate();
  __chkstk_darwin(v7 - 8);
  v79 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Artwork.Variant();
  v81 = *(v9 - 8);
  __chkstk_darwin(v9);
  v80 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100979D60);
  __chkstk_darwin(v11 - 8);
  v74 = &v58 - v12;
  v78 = type metadata accessor for Artwork.Crop();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v76 = &v58 - v15;
  v73 = type metadata accessor for FloatingPointRoundingRule();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v70 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for TodayCardArtworkLayout();
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.Priority();
  v67 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = type metadata accessor for PageGrid();
  v84 = *(v24 - 8);
  v85 = v24;
  __chkstk_darwin(v24);
  v82 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v58 - v27;
  type metadata accessor for TodayCard();
  sub_1002182AC(&qword_100977390, &type metadata accessor for TodayCard);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v30 = v89;
  if (v89)
  {
    v88 = TodayCard.media.getter();
    type metadata accessor for TodayCardMedia();
    sub_10002849C(&qword_100972DD0);
    if (swift_dynamicCast())
    {
      v61 = v18;
      v64 = v6;
      v66 = a2;
      sub_100005A38(v86, &v89);
      type metadata accessor for TodayCardGridTracker();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v65 = *&v86[0];
      v31 = sub_1006E2600();
      v32 = _swiftEmptyArrayStorage;
      *&v86[0] = _swiftEmptyArrayStorage;
      v83 = v30;
      v33 = TodayCard.titleArtwork.getter();
      v63 = v9;
      LODWORD(v62) = v31;
      if (v33)
      {
        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        swift_getKeyPath();
        ItemLayoutContext.subscript.getter();

        v34 = v88;
        sub_100467918(v31, v28, v88);
        sub_100699534(v31);
        Artwork.config(_:mode:prefersLayeredImage:)();

        (*(v84 + 8))(v28, v85);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*&v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v86[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v32 = *&v86[0];
      }

      sub_10002A400(&v89, v90);
      swift_getKeyPath();
      ItemLayoutContext.subscript.getter();

      v35 = v88;
      v36 = TodayCardMediaWithArtwork.prefetchableArtwork(for:)();

      if (v36)
      {
        sub_10002A400(&v89, v90);
        if (dispatch thunk of TodayCardMediaWithArtwork.artworkLayoutsWithMetrics.getter())
        {
          swift_getKeyPath();
          v37 = v82;
          ItemLayoutContext.subscript.getter();

          swift_getKeyPath();
          ItemLayoutContext.subscript.getter();

          v59 = v88;
          v38 = UITraitCollection.modifyingTraits(_:)();
          v39 = v62;
          v60 = v38;
          sub_100467918(v62, v37, v38);
          sub_100699534(v39);
          v40 = v67;
          v41 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.mini(_:);
          v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.extraWide(_:);
          if (v39 != 6)
          {
            v42 = &enum case for TodayCardArtworkSizedLayoutMetrics.Priority.none(_:);
          }

          if (v39 != 4)
          {
            v41 = v42;
          }

          v43 = v61;
          (*(v67 + 104))(v20, *v41, v61);
          (*(v40 + 32))(v23, v20, v43);
          v44 = Array<A>.bestArtworkLayoutMetrics(for:prioritizing:)();

          (*(v40 + 8))(v23, v43);
          TodayCardArtworkSizedLayoutMetrics.sourceSizeOverride.getter();
          if (v45)
          {
            Artwork.size.getter();
          }

          v46 = v78;
          v47 = v77;
          v48 = v74;
          v49 = v68;
          TodayCardArtworkSizedLayoutMetrics.layout(for:)();
          TodayCardArtworkLayout.collapsedLayoutInsets.getter();
          CGSize.subtracting(insets:)();
          CGSize.scaled(_:)();
          v50 = v72;
          v51 = v70;
          v52 = v73;
          (*(v72 + 104))(v70, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v73);
          CGSize.rounded(_:)();
          (*(v50 + 8))(v51, v52);
          (*(v69 + 8))(v49, v71);
          TodayCardArtworkSizedLayoutMetrics.sourceCropOverride(for:)();
          v53 = *(v47 + 48);
          v54 = v53(v48, 1, v46);
          v62 = v44;
          if (v54 == 1)
          {
            v55 = v76;
            Artwork.crop.getter();
            if (v53(v48, 1, v46) != 1)
            {
              sub_10002B894(v48, &qword_100979D60);
            }
          }

          else
          {
            v55 = v76;
            (*(v47 + 32))(v76, v48, v46);
          }

          v56 = v80;
          dispatch thunk of Artwork.bestVariant(prefersLayeredImage:)();
          v78 = v36;
          Artwork.template.getter();
          v57 = v60;
          [v60 displayScale];
          (*(v47 + 16))(v75, v55, v46);
          Artwork.Variant.format.getter();
          Artwork.Variant.quality.getter();
          type metadata accessor for ArtworkLoaderConfig();
          swift_allocObject();
          ArtworkLoaderConfig.init(template:size:scale:crop:format:quality:useWideGamut:)();

          (*(v81 + 8))(v56, v63);
          (*(v47 + 8))(v55, v46);
          (*(v84 + 8))(v82, v85);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v86[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v32 = *&v86[0];
        }

        else
        {
        }
      }

      ArtworkLoader.prefetchArtwork(using:)(v32);

      return sub_100007000(&v89);
    }

    else
    {

      v87 = 0;
      memset(v86, 0, sizeof(v86));
      return sub_10002B894(v86, &qword_100972DD8);
    }
  }

  return result;
}

id sub_100216128()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v39 - v3;
  v5 = type metadata accessor for PageGrid();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoryCardCollectionViewCell();
  v40.receiver = v0;
  v40.super_class = v9;
  objc_msgSendSuper2(&v40, "layoutSubviews");
  sub_1002102A8();
  if (v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_shouldMirrorBackground] == 1 && *(*&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer] + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay))
  {
    v10 = [v0 traitCollection];
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    sub_1002D2EF4(v10, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
  }

  else
  {
    v11 = [v0 traitCollection];
    v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if (v12)
    {
      v13 = v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded] ? &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory : &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
      v14 = v1[*v13];
      if (v14 != 7)
      {
        v15 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_pageGrid;
        swift_beginAccess();
        sub_100031660(&v1[v15], v4, &qword_10097DBD0);
        if ((*(v6 + 48))(v4, 1, v5) == 1)
        {
          sub_10002B894(v4, &qword_10097DBD0);
        }

        else
        {
          (*(v6 + 32))(v8, v4, v5);
          [v1 bounds];
          CGRectGetHeight(v43);
          v16 = [v1 traitCollection];
          v41.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v41.value._rawValue = 0;
          isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v41, v42).super.isa;

          sub_1004674A4(v14, v8, isa);
          (*(v6 + 8))(v8, v5);
        }
      }
    }
  }

  v18 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  [v1 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  static UIEdgeInsets.vertical(top:bottom:)();
  [v18 setFrame:{sub_1000CC354(v20, v22, v24, v26, v27, v28)}];
  v29 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v29)
  {
    v30 = v29;
    [v1 bounds];
    MinX = CGRectGetMinX(v44);
    [v18 frame];
    MaxY = CGRectGetMaxY(v45);
    [v18 frame];
    Width = CGRectGetWidth(v46);
    [v1 bounds];
    Height = CGRectGetHeight(v47);
    [v18 frame];
    [v30 setFrame:{MinX, MaxY, Width, Height - CGRectGetHeight(v48)}];
  }

  v35 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton];
  if (v35)
  {
    v36 = v35;
    [v1 bounds];
    [v36 setFrame:{CGRectGetMaxX(v49) + -32.0 + -12.0, 12.0, 32.0, 32.0}];
  }

  v37 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  [v1 bounds];
  return [v37 setFrame:?];
}

id sub_1002166AC()
{
  v1 = v0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StoryCardCollectionViewCell();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  swift_weakAssign();
  swift_weakAssign();
  v2 = *&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton] = 0;
  if (v2)
  {
    [v2 removeFromSuperview];
  }

  sub_10070CE5C();
  v3 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v3)
  {
    [*(*(v3 + OBJC_IVAR____TtC8AppStore24StoryCardMediaMirrorView_revealingImageView) + OBJC_IVAR____TtC8AppStore18RevealingImageView_imageView) setImage:0];
  }

  return sub_1000A66D4();
}

void sub_1002167E8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  if (v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory] == 4)
  {
    v3 = [v0 contentView];
    [v3 setClipsToBounds:1];
  }

  [v1 setNeedsLayout];
  v4 = v1[v2];
  sub_1000A3C18(v4);
  *(*&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_originalSizeCategory) = v4;
  sub_10070D46C();
}

uint64_t sub_1002168A0(void *a1)
{
  sub_10002A400(a1, a1[3]);
  v2 = UIMutableTraits.preferredContentSizeCategory.getter();
  if (static UIContentSizeCategory.< infix(_:_:)())
  {
    UIContentSizeCategoryExtraExtraExtraLarge;
  }

  sub_100047650(a1, a1[3]);
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

void (*sub_100216970(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1002169E4;
}

void sub_1002169E4(id *a1, char a2)
{
  v5 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v4 = v5;
    sub_1006666C8(Strong);

    Strong = v4;
  }

  else
  {
    sub_1006666C8(Strong);
  }
}

void sub_100216A8C()
{
  v1 = v0;
  v2 = objc_allocWithZone(type metadata accessor for MuteButton());
  v7 = sub_1001C66CC(14.0);
  [v7 addTarget:v0 action:"handleMuteButtonTapped" forControlEvents:64];
  v3 = [v0 contentView];
  [v3 addSubview:v7];

  v4 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton];
  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton] = v7;
  if (v4)
  {
    v5 = v7;
    [v4 removeFromSuperview];
  }

  else
  {
    v6 = v7;
  }

  [v1 setNeedsLayout];
}

void sub_100216B94()
{
  v0 = type metadata accessor for MediaClickMetricsEvent.ActionType();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MediaClickMetricsEvent.TargetId();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *&Strong[qword_100988CE0];
    if (v9)
    {
      v14 = Strong;
      v10 = v9;
      [v10 setMuted:{objc_msgSend(v10, "isMuted") ^ 1}];
      v11 = [v10 isMuted];
      [v14 updateAudioSessionCategoryWithIsAudioOn:v11 ^ 1];
      (*(v5 + 104))(v7, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v4);
      v12 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
      if (!v11)
      {
        v12 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
      }

      (*(v1 + 104))(v3, *v12, v0);
      sub_1004E3360(v7, v3);

      (*(v1 + 8))(v3, v0);
      (*(v5 + 8))(v7, v4);
    }

    else
    {
    }
  }
}

void sub_100216E78()
{
  sub_1004EB9C0();
  v1 = [v0 contentView];
  sub_1005504B4();
  if (v2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  [v1 setAccessibilityLabel:v3];
}

uint64_t sub_100216F94()
{
  sub_10002849C(&qword_1009701B0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B10D0;
  v2 = [v0 contentView];
  *(v1 + 56) = sub_100005744(0, &qword_100972EB0);
  v3 = *&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  *(v1 + 32) = v2;
  v4 = (v3 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  if (*v4 && (v5 = v4[1], ObjectType = swift_getObjectType(), v7 = *(v5 + 144), swift_unknownObjectRetain(), v8 = v7(ObjectType, v5), swift_unknownObjectRelease(), v8))
  {
    v9 = v8;
  }

  else
  {

    v9 = _swiftEmptyArrayStorage;
  }

  sub_100394AC0(v9);
  return v1;
}

void sub_100217160()
{
  swift_beginAccess();
  swift_weakAssign();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  *v1 = 0;
  v1[1] = 0;
  sub_10001F63C(v2);
  v3 = (*(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  if (*v3)
  {
    v4 = v3[1];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (!v8)
    {
      swift_getObjectType();
      dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
    }
  }
}

void sub_1002172B8()
{
  v1 = v0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v2 = (v0 + OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  v4 = (*(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  if (*v4)
  {
    v5 = v4[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    swift_unknownObjectRelease();
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      swift_getObjectType();
      dispatch thunk of NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
    }
  }
}

void sub_100217428()
{
  swift_weakDestroy();
  swift_weakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_muteButton);
}

id sub_1002174A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryCardCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StoryCardCollectionViewCell()
{
  result = qword_100979D30;
  if (!qword_100979D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021763C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_1006666C8(Strong);
}

uint64_t (*sub_1002176CC(uint64_t **a1))()
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
  v2[4] = sub_100216970(v2);
  return sub_1000B4CAC;
}

uint64_t sub_100217764(uint64_t result, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1002177D4(uint64_t a1, uint64_t a2)
{
  v3 = (*(v2 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer) + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_100217820()
{
  swift_weakAssign();
}

uint64_t sub_1002178E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100217934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1002179A0(uint64_t *a1))()
{
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
  swift_getWitnessTable();
  *(v3 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

uint64_t sub_100217A3C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView) + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100005744(0, &qword_100972EB0);
  v5 = v2;
  v6 = static NSObject.== infix(_:_:)();

  return v6 & 1;
}

void sub_100217AE4(uint64_t a1)
{
  if (a1)
  {
    if ((*((swift_isaMask & *v1) + 0x330))())
    {
      v2 = [v1 backgroundView];
      if (v2)
      {
        v3 = v2;
        [v2 setBackgroundColor:0];
      }
    }
  }
}

uint64_t sub_100217BE0(uint64_t a1)
{
  result = sub_1002182AC(&qword_100979D48, type metadata accessor for StoryCardCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

id sub_100217CC8(void *a1)
{
  sub_1002102A8();

  return [a1 setNeedsLayout];
}

void sub_100217D2C()
{
  v1 = v0;
  [v0 setNeedsLayout];
  v2 = *&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v3 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v5 = v1[*v4];
  *(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) = v5;
  if (v5 != 7)
  {
    v6 = *(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer);
    v6[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = v5;
    if (v5 == 4)
    {
      v7 = v6[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    [v6 setHidden:v7 & 1];
    *(*(v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView) + qword_10098B7B8) = v5;
    sub_10055189C();
  }

  if (v1[v3])
  {
    v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell__sizeCategory;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  *(*&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView] + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_sizeCategory) = v1[*v8];
  sub_10070D304();
}

id sub_100217E70()
{
  v1 = v0;
  v2 = type metadata accessor for CornerStyle();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004EE4C4();
  v6 = *&v0[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_infoLayer];
  v7 = OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded;
  v8 = v0[OBJC_IVAR____TtC8AppStore31BaseTodayCardCollectionViewCell_isExpanded];
  v9 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded;
  v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded] = v8;
  [v6 setUserInteractionEnabled:?];
  *(*&v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer] + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isExpanded) = v6[v9];
  [v6 setNeedsLayout];
  [v6 setNeedsDisplay];
  v10 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundView];
  v11 = v1[v7];
  v12 = OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded;
  *(v10 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_isExpanded) = v11;
  v13 = *(v10 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingImageView);
  v13[OBJC_IVAR____TtC8AppStore18RevealingImageView_isExpanded] = v11;
  [v13 setNeedsLayout];
  *(*(v10 + OBJC_IVAR____TtC8AppStore18StoryCardMediaView_revealingVideoView) + OBJC_IVAR____TtC8AppStore18RevealingVideoView_isExpanded) = *(v10 + v12);
  sub_100665B04();
  if (v1[v7])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = type metadata accessor for TodayCardInfoLayerView();
  v21.receiver = v6;
  v21.super_class = v15;
  objc_msgSendSuper2(&v21, "_setContinuousCornerRadius:", v14);
  sub_1000A3894();
  if (v1[v7])
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 20.0;
  }

  *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaCornerRadius] = v16;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10070C5EC(v5, v16);
  (*(v3 + 8))(v5, v2);
  v17 = *&v1[OBJC_IVAR____TtC8AppStore27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v17)
  {
    v18 = v17;
    [v18 _setContinuousCornerRadius:v16];
    v19 = [v18 layer];
    [v19 setMaskedCorners:UIRectCorner.caCornerMask.getter()];
  }

  sub_1002102A8();
  sub_1004EAE8C();
  sub_100214610();
  return [v1 setNeedsLayout];
}

void sub_10021816C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for UUID() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(type metadata accessor for PageGrid() - 8);
  v14 = (v12 + *(v13 + 80) + 8) & ~*(v13 + 80);
  sub_1001A5204(a1, *(v4 + v11), *(v4 + v11 + 8), a2, a3, a4, *(v4 + 16), v4 + v10, *(v4 + v12), v4 + v14, *(v4 + v14 + *(v13 + 64)));
}

uint64_t sub_1002182AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s5StateVwCP(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s5StateVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5StateVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100218380(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = *(a2 + 8);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

unint64_t sub_1002183AC()
{
  result = qword_100979D90;
  if (!qword_100979D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979D90);
  }

  return result;
}

unint64_t sub_100218404()
{
  result = qword_100979D98;
  if (!qword_100979D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100979D98);
  }

  return result;
}

uint64_t sub_100218458(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = HeroCarousel.items.getter();
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 <= a1)
  {
    return result;
  }

  result = HeroCarousel.items.getter();
  if ((result & 0xC000000000000001) == 0)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

      goto LABEL_8;
    }

    __break(1u);
    return result;
  }

  specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:

  v8 = dispatch thunk of HeroCarouselItem.clickAction.getter();

  if (v8)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = sub_10002849C(&unk_100974490);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v4, 1, v11) == 1)
      {

        return sub_1000F40E0(v4);
      }

      else
      {
        sub_1005F9AF4(v8, 1, v10, v4);

        return (*(v12 + 8))(v4, v11);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1002186A0(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 & 0xC000000000000001;

    v5 = 0;
    v6 = &OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
    v15 = v2 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = *&v7[*v6];
      v10 = *(*(*&v9[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v10)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_1002199C8(&qword_100973190, type metadata accessor for VideoView);
          sub_1002199C8(&qword_100979E00, type metadata accessor for HeroCarouselItemBackgroundView);
          v16 = v10;
          v11 = v6;
          v12 = v2;
          v13 = v3;
          v14 = v9;
          dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();
          v4 = v15;

          v8 = v14;
          v3 = v13;
          v2 = v12;
          v6 = v11;
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

uint64_t sub_1002188E8(uint64_t result)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  if (v2 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = v2 & 0xC000000000000001;

    v5 = 0;
    v6 = &OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView;
    v15 = v2 & 0xC000000000000001;
    do
    {
      if (v4)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v2 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = *&v7[*v6];
      v10 = *(*(*&v9[OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer] + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v10)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_1002199C8(&qword_100973190, type metadata accessor for VideoView);
          sub_1002199C8(&qword_100979E00, type metadata accessor for HeroCarouselItemBackgroundView);
          v16 = v10;
          v11 = v6;
          v12 = v2;
          v13 = v3;
          v14 = v9;
          dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();
          v4 = v15;

          v8 = v14;
          v3 = v13;
          v2 = v12;
          v6 = v11;
        }
      }

      ++v5;
    }

    while (v3 != v5);
  }

  return result;
}

unint64_t sub_100218C40()
{
  result = qword_100990DD0;
  if (!qword_100990DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100990DD0);
  }

  return result;
}

uint64_t sub_100218C94(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = type metadata accessor for AutoScrollConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100979DF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  HeroCarousel.id.getter();
  v15 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  sub_1002191A8(&v46, &v3[v15]);
  swift_endAccess();
  v16 = sub_10002849C(&qword_100979DF8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v44 = a2;
  v18(v14, a2, v16);
  v19 = *(v17 + 56);
  v42 = v16;
  v19(v14, 0, 1, v16);
  v20 = OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100219204(v14, &v4[v20]);
  swift_endAccess();
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v43 = v46;
  swift_unknownObjectWeakAssign();
  v21 = HeroCarousel.items.getter();
  v22 = v21;
  if (v21 >> 62)
  {
    v23 = _CocoaArrayWrapper.endIndex.getter();
    v45 = v11;
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_11:

    v28 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v11;
  if (!v23)
  {
    goto LABEL_11;
  }

LABEL_3:
  v46 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v23 < 0)
  {
    __break(1u);
    return result;
  }

  v38 = v9;
  v39 = v8;
  v40 = v4;
  v41 = a1;
  type metadata accessor for HeroCarouselItemView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = 0;
  do
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v27 = *(v22 + 8 * v26 + 32);
    }

    ++v26;
    [objc_allocWithZone(ObjCClassFromMetadata) init];
    sub_1003A8B94(v27, a3);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v23 != v26);

  v28 = v46;
  v4 = v40;
  a1 = v41;
  v9 = v38;
  v8 = v39;
LABEL_12:
  [v4 setNeedsLayout];
  [v4 layoutIfNeeded];
  v29 = *&v4[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView];
  sub_100218C40();
  WritableStateLens<A>.currentValue.getter();
  if (v47)
  {
    v30 = 0;
  }

  else
  {
    v30 = v46;
  }

  sub_10046931C(v28, v30);

  v31 = v45;
  HeroCarousel.autoScrollConfiguration.getter();
  v32 = OBJC_IVAR____TtC8AppStore16HeroCarouselView_autoScrollConfiguration;
  swift_beginAccess();
  (*(v9 + 40))(v29 + v32, v31, v8);
  swift_endAccess();
  LOBYTE(v31) = HeroCarousel.wantsTopGradient.getter();
  v33 = HeroCarousel.wantsBottomGradient.getter();
  sub_100469604(v31 & 1, v33 & 1);

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  *(v35 + 16) = a1;
  *(v35 + 24) = v34;
  v36 = &v4[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  v37 = *&v4[OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_didSelectHandler];
  *v36 = sub_100219274;
  v36[1] = v35;

  sub_10001F63C(v37);
}

uint64_t sub_100219204(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100979DF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021927C(uint64_t a1, char a2)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_10096E6B8 != -1)
    {
      swift_once();
    }

    v7 = qword_1009D2448;
  }

  else
  {
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v7 = qword_1009D2460;
  }

  v8 = type metadata accessor for StaticDimension();
  sub_1000056A8(v8, v7);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v10 = v9;
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_10021940C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_10002C0AC(a1, v35);
  sub_10002849C(&unk_1009793D0);
  type metadata accessor for HeroCarousel();
  result = swift_dynamicCast();
  if (result)
  {
    v6 = HeroCarousel.items.getter();
    v7 = v6;
    v8 = *(*(v2 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_34;
    }

    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

    if (v9)
    {
      v33 = v7 & 0xFFFFFFFFFFFFFF8;
      v34 = v7 & 0xC000000000000001;
      v10 = v8 & 0xFFFFFFFFFFFFFF8;
      v11 = 4;
      v31 = v8 & 0xC000000000000001;
      v32 = v8 >> 62;
      v29 = v8 & 0xFFFFFFFFFFFFFF8;
      v30 = v9;
      v26 = v8;
      v27 = v3;
      v25 = v7;
      do
      {
        v12 = v11 - 4;
        if (v34)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v12 >= *(v33 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v7 + 8 * v11);

          v14 = v11 - 3;
          if (__OFADD__(v12, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            v9 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }
        }

        if (v32)
        {
          if (v12 == _CocoaArrayWrapper.endIndex.getter())
          {
LABEL_28:

            goto LABEL_29;
          }
        }

        else if (v12 == *(v10 + 16))
        {
          goto LABEL_28;
        }

        if (v31)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v10 + 16))
          {
            goto LABEL_33;
          }

          v15 = *(v8 + 8 * v11);
        }

        v16 = v15;
        type metadata accessor for HeroCarouselCollectionViewCell();
        LayoutMarginsAware<>.layoutFrame.getter();
        sub_1003A223C(v13, a2);
        v17 = HeroCarouselItem.overlay.getter();
        if (v17)
        {
          v18 = v17;
          v19 = *&v16[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
          if (v19)
          {
            v20 = *&v16[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView + 8];
            ObjectType = swift_getObjectType();
            v28 = *(v20 + 40);
            v22 = v19;
            v23 = ObjectType;
            v24 = v20;
            v8 = v26;
            v3 = v27;
            v28(v18, a2, v23, v24);
            v7 = v25;

            goto LABEL_8;
          }
        }

        else
        {
        }

LABEL_8:
        v10 = v29;
        ++v11;
      }

      while (v14 != v30);
    }

LABEL_29:
  }

  return result;
}

uint64_t sub_100219718(uint64_t a1, char a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC8AppStore30HeroCarouselCollectionViewCell_carouselView) + OBJC_IVAR____TtC8AppStore16HeroCarouselView_carouselItemViews);
  if (v3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

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
          goto LABEL_20;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_backgroundView];
      v10 = *(v9 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_artworkView);
      type metadata accessor for ArtworkView();
      sub_1002199C8(&qword_100970E80, &type metadata accessor for ArtworkView);
      v11 = v10;
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

      v12 = *(*(*(v9 + OBJC_IVAR____TtC8AppStore30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC8AppStore9MediaView_contentContainer) + OBJC_IVAR____TtC8AppStoreP33_ECECB79BEF5D802E6E21EF3AE112F28D20UberContentContainer_contents);
      if (v12)
      {
        type metadata accessor for VideoView();
        if (swift_dynamicCastClass())
        {
          sub_1002199C8(&unk_1009840E0, type metadata accessor for VideoView);
          v13 = v12;
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        }
      }

      v14 = *&v7[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView];
      if (v14)
      {
        v15 = *&v7[OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView + 8];
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 48);
        v18 = v14;
        v17(a1, a2 & 1, ObjectType, v15);
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_16:
}

uint64_t sub_1002199C8(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_100219A5C()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditorialLink();
  sub_100219C9C(&qword_100979E08, &type metadata accessor for EditorialLink);
  ItemLayoutContext.typedModel<A>(as:)();
  v4 = v14;
  if (!v14)
  {
    return 0.0;
  }

  sub_10002849C(&unk_100973270);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v13[1] = v4;
  dispatch thunk of LinkLoader.availablePresentation(for:)();

  v5 = v14;
  if ((~v14 & 0xF000000000000007) != 0)
  {
    v6 = v15;
  }

  else
  {

    v6 = 0;
    v5 = v4;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v9 = v8;
  (*(v1 + 8))(v3, v0);
  v10 = sub_100079F24();
  sub_1005104B4(v5, v6, v10, v9);
  v7 = v11;
  swift_unknownObjectRelease();

  sub_1000C0220(v5, v6);
  return v7;
}

uint64_t sub_100219C9C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100219CF8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore36PreorderDisclaimerCollectionViewCell_disclaimerLabel);
  PreorderDisclaimer.disclaimer.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];
}

double sub_100219E04(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for LabelPlaceholderCompatibility();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  PreorderDisclaimer.disclaimer.getter();
  sub_1000367E8();
  if (qword_10096DF98 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for FontUseCase();
  sub_1000056A8(v9, qword_1009D0E48);
  v10 = [a4 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v11 = type metadata accessor for Feature();
  v18 = v11;
  v19 = sub_10021A0A8(&qword_100972E50, &type metadata accessor for Feature);
  v12 = sub_1000056E0(v17);
  (*(*(v11 - 8) + 104))(v12, enum case for Feature.measurement_with_labelplaceholder(_:), v11);
  isFeatureEnabled(_:)();
  sub_100007000(v17);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v6 + 8))(v8, v5);
  sub_10002A400(v17, v18);
  Measurable.measuredSize(fitting:in:)();
  v14 = v13;
  sub_100007000(v17);
  return v14;
}

uint64_t sub_10021A0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10021A0F0()
{
  v0 = type metadata accessor for SmallLockupLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005644(v4, qword_1009CE9A0);
  sub_1000056A8(v0, qword_1009CE9A0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v5 = sub_1000056A8(v0, qword_1009D3798);
  (*(v1 + 16))(v3, v5, v0);
  Copyable.copyWithOverrides(in:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10021A254(uint64_t a1)
{
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  SmallLockupLayout.Metrics.artworkSize.setter();
  if (qword_10096DD18 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for FontUseCase();
  v45 = sub_1000056A8(v6, qword_1009D06E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v41 = v6;
  v8(v5, v45, v6);
  v46 = enum case for FontSource.useCase(_:);
  v10 = v3 + 13;
  v48 = v3[13];
  v48(v5);
  v39 = type metadata accessor for StaticDimension();
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v49);
  v12 = v3 + 2;
  v36 = v3[2];
  v36(v11, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v14 = v3[1];
  v13 = v3 + 1;
  v43 = v14;
  v14(v5, v2);
  SmallLockupLayout.Metrics.titleRegularSpace.setter();
  v15 = v6;
  v16 = v8;
  v8(v5, v45, v15);
  v17 = v46;
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v18 = sub_1000056E0(v49);
  v19 = v36;
  v36(v18, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v43(v5, v2);
  SmallLockupLayout.Metrics.titleMediumSpace.setter();
  v44 = v9;
  v42 = v16;
  v16(v5, v45, v41);
  v20 = v17;
  v21 = v39;
  v45 = v10;
  (v48)(v5, v20, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v49);
  v19(v22, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v43(v5, v2);
  SmallLockupLayout.Metrics.titleShortSpace.setter();
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v23 = v41;
  v24 = sub_1000056A8(v41, qword_1009D0698);
  v42(v5, v24, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v25 = sub_1000056E0(v49);
  v19(v25, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v38 = v12;
  v26 = v43;
  v43(v5, v2);
  SmallLockupLayout.Metrics.titleWithHeadingSpace.setter();
  v40 = v13;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v23, qword_1009D0758);
  (v42)(v5);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v49);
  v19(v27, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v26(v5, v2);
  SmallLockupLayout.Metrics.subtitleSpace.setter();
  if (qword_10096DD60 != -1)
  {
    swift_once();
  }

  v28 = sub_1000056A8(v23, qword_1009D07B8);
  v42(v5, v28, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v29 = sub_1000056E0(v49);
  v19(v29, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v26(v5, v2);
  SmallLockupLayout.Metrics.tertiaryTitleSpace.setter();
  if (qword_10096DD48 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009D0770);
  v31 = v42;
  v42(v5, v30, v23);
  (v48)(v5, v46, v2);
  v53 = v21;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v49);
  v19(v32, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v33 = v43;
  v43(v5, v2);
  SmallLockupLayout.Metrics.offerTextSpace.setter();
  v31(v5, v37, v41);
  (v48)(v5, v46, v2);
  v53 = v39;
  v54 = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v2;
  v51 = &protocol witness table for FontSource;
  v34 = sub_1000056E0(v49);
  v19(v34, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  v33(v5, v2);
  return SmallLockupLayout.Metrics.bottomSpace.setter();
}

uint64_t sub_10021AAD0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArcadeLockupLayout.Metrics();
  sub_100005644(v4, qword_1009CE9B8);
  v18 = sub_1000056A8(v4, qword_1009CE9B8);
  v25[24] = &protocol witness table for CGFloat;
  v25[23] = &type metadata for CGFloat;
  v25[20] = 0x4048000000000000;
  v25[18] = &type metadata for Double;
  v25[19] = &protocol witness table for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4030000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_10096DD40 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0758);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = type metadata accessor for StaticDimension();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

id sub_10021AE44()
{
  result = [objc_allocWithZone(UIGlassEffect) init];
  qword_100979E60 = result;
  return result;
}

void sub_10021AE90(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *&v2[*a2];
  *&v2[*a2] = a1;
  if (v4)
  {
    v5 = a1;
    [v4 removeFromSuperview];
    v6 = *&v2[v3];
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = a1;
  v6 = a1;
  if (a1)
  {
LABEL_3:
    v7 = v6;
    v8 = [v2 contentView];
    [v8 addSubview:v7];
  }

LABEL_4:
}

id sub_10021AF54()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_100979BB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView] = 0;
  *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView] = 0;
  v5 = &v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_clickActionHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer] = 0;
  if (qword_10096D430 != -1)
  {
    swift_once();
  }

  v9.receiver = v0;
  v9.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v9, "initWithEffect:", qword_100979E60);
  static _UICornerMaskingConfiguration.fixed(_:)();
  v7 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  UIView.cornerMaskingConfiguration.setter();
  [v6 setClipsToBounds:1];
  [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v6 setEdgesInsettingLayoutMarginsFromSafeArea:0];

  return v6;
}

double sub_10021B2A0(double a1, double a2)
{
  v5 = type metadata accessor for OfferButtonMetrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for SmallLockupLayout.Metrics();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v32 - v17;
  v19 = *(v2 + OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView);
  if (v19)
  {
    v33 = v8;
    v20 = v5;
    v21 = v19;
    sub_10013F3FC(v18);
    [v21 layoutMargins];
    v22 = [v21 traitCollection];
    (*(v13 + 16))(v15, v18, v12);
    v23 = SmallLockupLayout.Metrics.offerButtonSize.getter();
    if ((v25 & 1) == 0 && ((v23 | v24) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (UITraitCollection.prefersAccessibilityLayouts.getter())
      {
        if (qword_10096ECB8 != -1)
        {
          swift_once();
        }

        v26 = qword_100991010;
      }

      else
      {
        if (qword_10096ECC0 != -1)
        {
          swift_once();
        }

        v26 = qword_100991028;
      }

      v28 = sub_1000056A8(v20, v26);
      v29 = v33;
      (*(v6 + 16))(v33, v28, v20);
      (*(v6 + 32))(v11, v29, v20);
      OfferButtonMetrics.minimumSize.getter();
      OfferButtonMetrics.estimatedHeight.getter();
      SmallLockupLayout.Metrics.offerButtonSize.setter();
      (*(v6 + 8))(v11, v20);
    }

    static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();

    v30 = *(v13 + 8);
    v30(v15, v12);

    v30(v18, v12);
  }

  else
  {
    v27 = *(v2 + OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView);
    if (v27)
    {
      [v27 sizeThatFits:{a1, a2}];
    }

    else
    {
      return 0.0;
    }
  }

  return a1;
}

void sub_10021B6BC()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView];
    if (!v3)
    {
      return;
    }

    v1 = v3;
    v2 = 0;
  }

  v4 = v2;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v1 sizeThatFits:{v5, v6}];
  v8 = v7;
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v12);
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = CGRectGetMidY(v13) + v8 * -0.5;
  LayoutMarginsAware<>.layoutFrame.getter();
  [v1 setFrame:{MinX, v10, CGRectGetWidth(v14), v8}];
}

char *sub_10021B990(void *a1)
{
  v2 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v56 - v3;
  v5 = type metadata accessor for SmallLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = [objc_allocWithZone(type metadata accessor for CrossLinkLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_100140A4C(a1);
  if (qword_10096D420 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v5, qword_1009CE9A0);
  v14 = *(v6 + 16);
  v14(v11, v13, v5);
  v15 = OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView;
  v16 = *&v12[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView];
  v14(v8, v11, v5);
  v17 = OBJC_IVAR____TtC8AppStore15SmallLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v16[v17], v8, v5);
  swift_endAccess();
  [v16 setNeedsLayout];
  v18 = *(v6 + 8);
  v18(v8, v5);
  v19 = v12;
  [v19 setNeedsLayout];
  v18(v11, v5);
  [v19 setLayoutMargins:{4.0, 10.0, 4.0, 10.0}];

  v20 = qword_10096DD18;
  v21 = *(*&v12[v15] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  if (v20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D06E0);
  v24 = *(v22 - 8);
  v59 = *(v24 + 16);
  v60 = v24 + 16;
  v59(v4, v23, v22);
  v58 = *(v24 + 56);
  v58(v4, 0, 1, v22);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_100005744(0, &qword_100970180);
  v25 = static UIColor.primaryText.getter();
  v26 = v25;
  v57 = v15;
  v27 = *&v12[v15];
  v28 = *(v27 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor);
  *(v27 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleTextColor) = v25;
  v56 = v19;
  if (!v28)
  {
    v32 = v25;
    v30 = 0;
    goto LABEL_9;
  }

  v29 = v25;
  v30 = v28;
  v31 = static NSObject.== infix(_:_:)();

  if ((v31 & 1) == 0)
  {
LABEL_9:
    sub_10003E7B4();
    v29 = v26;
  }

  v33 = v57;
  v34 = qword_10096DD40;
  v35 = *(*&v12[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  if (v34 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v22, qword_1009D0758);
  v59(v4, v36, v22);
  v58(v4, 0, 1, v22);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  v37 = *(*&v12[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v38 = static UIColor.secondaryText.getter();
  [v37 setTextColor:v38];

  v39 = *(*&v12[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  v40 = v56;
  if (v39)
  {
    v41 = qword_10096DD60;
    v42 = v39;
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = sub_1000056A8(v22, qword_1009D07B8);
    v59(v4, v43, v22);
    v58(v4, 0, 1, v22);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v33 = v57;
    v44 = *(*&v12[v57] + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    if (v44)
    {
      v45 = v44;
      v46 = static UIColor.tertiaryText.getter();
      [v45 setTextColor:v46];
    }
  }

  v47 = *&v40[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkTitleLabel];
  v48 = static UIColor.secondaryText.getter();
  [v47 setTextColor:v48];

  v49 = *&v40[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_crossLinkSubtitleLabel];
  v50 = static UIColor.primaryText.getter();
  [v49 setTextColor:v50];

  v51 = *(*&v12[v33] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v52 = qword_10096DD48;
  v53 = v51;
  if (v52 != -1)
  {
    swift_once();
  }

  v54 = sub_1000056A8(v22, qword_1009D0770);
  v59(v4, v54, v22);
  v58(v4, 0, 1, v22);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  return v40;
}

void sub_10021C098(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer;
  if (*&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer])
  {
    v4 = a1;
    v5 = a2;
    [*&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_tapGestureRecognizer] removeTarget:v2 action:"clickActionHandlerTrampoline"];
    a1 = v4;
    a2 = v5;
  }

  v6 = &v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_clickActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC8AppStore16FooterLockupView_clickActionHandler];
  *v6 = a1;
  v6[1] = a2;
  sub_10000827C(a1);
  sub_10001F63C(v7);
  if (*v6)
  {
    v8 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"clickActionHandlerTrampoline"];
    [v8 setDelegate:v2];
    if (*&v2[v3])
    {
      [v2 removeGestureRecognizer:?];
      v9 = *&v2[v3];
    }

    else
    {
      v9 = 0;
    }

    *&v2[v3] = v8;
    v10 = v8;

    [v2 addGestureRecognizer:v10];
  }
}

uint64_t sub_10021C1E4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore16FooterLockupView_lockupView);
  if (!v3)
  {
    v8 = *(v1 + OBJC_IVAR____TtC8AppStore16FooterLockupView_arcadeLockupView);
    if (!v8)
    {
LABEL_9:
      v12 = 1;
      return v12 & 1;
    }

    v4 = v8;
    v9 = [a1 view];
    if (v9)
    {
      v6 = v9;
      v7 = *&v4[OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton];
      goto LABEL_7;
    }

LABEL_8:

    goto LABEL_9;
  }

  v4 = v3;
  v5 = [a1 view];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = *(*&v4[OBJC_IVAR____TtC8AppStore19CrossLinkLockupView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
LABEL_7:
  sub_100005744(0, &qword_100972EB0);
  v10 = v7;
  v11 = static NSObject.== infix(_:_:)();

  v12 = v11 ^ 1;
  return v12 & 1;
}

double *sub_10021C300(uint64_t a1, int *a2)
{
  v3 = sub_10026CF10(a1, a2);
  sub_10021C764();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  return v3;
}

void sub_10021C398(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for SeparatorSupplementaryView();
  if (static UICollectionReusableView.elementKind.getter() == a1 && v10 == a2)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
LABEL_10:
    a5[3] = sub_10002849C(&qword_1009751D0);
    a5[4] = sub_10011A820();
    sub_1000056E0(a5);

    static UICollectionReusableView.defaultReuseIdentifier.getter();
    ReusableSupplementaryRegistration.init(elementKind:reuseIdentifier:configurationHandler:)();
    return;
  }

  sub_100268C44(a1, a2, a3, a4, a5);
}

uint64_t sub_10021C4E0(uint64_t a1)
{
  v2 = type metadata accessor for ComponentSeparator.Position();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ComponentSeparator();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.top(_:), v2, v11);
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();
  (*(v7 + 16))(v9, v13, v6);
  v14 = OBJC_IVAR____TtC8AppStore26SeparatorSupplementaryView_separator;
  swift_beginAccess();
  (*(v7 + 24))(a1 + v14, v9, v6);
  swift_endAccess();
  sub_100503F40();
  v15 = *(v7 + 8);
  v15(v9, v6);
  return (v15)(v13, v6);
}

uint64_t sub_10021C700()
{

  sub_10001F64C(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_10021C764()
{
  v20 = type metadata accessor for FloatingPointRoundingRule();
  v0 = *(v20 - 8);
  __chkstk_darwin(v20);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SpacerDimension();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  SpacerDimension.init(constant:)();
  v7 = objc_opt_self();
  v8 = [v7 fractionalWidthDimension:1.0];
  v9 = ShelfLayoutContext.traitCollection.getter();
  static ComponentSeparator.thickness(compatibleWith:)();
  v11 = v10;

  v12 = [v7 absoluteDimension:v11];
  v13 = [objc_opt_self() sizeWithWidthDimension:v8 heightDimension:v12];

  type metadata accessor for SeparatorSupplementaryView();
  static UICollectionReusableView.elementKind.getter();
  ShelfLayoutContext.traitEnvironment.getter();
  static Dimensions.defaultRoundingRule.getter();
  sub_10021CA28();
  AnyDimension.value(in:rounded:)();
  v15 = v14;
  swift_unknownObjectRelease();
  (*(v0 + 8))(v2, v20);
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v13 elementKind:v16 alignment:1 absoluteOffset:{0.0, v15}];

  (*(v4 + 8))(v6, v3);
  return v17;
}

unint64_t sub_10021CA28()
{
  result = qword_10097A038;
  if (!qword_10097A038)
  {
    type metadata accessor for SpacerDimension();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A038);
  }

  return result;
}

void sub_10021CA80(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v27 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 launchedToTest];

  if (v11)
  {
    v26 = v7;
    type metadata accessor for AppStoreApplication();
    v29.receiver = swift_getObjCClassFromMetadata();
    v29.super_class = &OBJC_METACLASS____TtC8AppStore19AppStoreApplication;
    v12 = objc_msgSendSuper2(&v29, "sharedApplication");
    v13 = swift_dynamicCastClassUnconditional();
    aBlock[0] = a1;
    swift_errorRetain();
    sub_10002849C(&qword_10098A690);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    if (ASKBuildTypeIsPerformanceTesting() && ([v13 shouldRecordExtendedLaunchTime] & 1) != 0)
    {
      v25 = v4;
      v17 = OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest;
      if (*(v13 + OBJC_IVAR____TtC8AppStore19AppStoreApplication_hasConcludedExtendedLaunchTest))
      {
      }

      else
      {
        sub_10045B064(v14, v16, v13);

        *(v13 + v17) = 1;
      }

      v4 = v25;
    }

    else
    {
    }

    v18 = sub_10021D774();
    v19 = v26;
    if (v18)
    {
      v20 = v18;
      swift_beginAccess();
      objc_setAssociatedObject(v1, &unk_10097A040, 0, 0x301);
      swift_endAccess();
      sub_1000076C0();
      v21 = static OS_dispatch_queue.main.getter();
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = a1;
      aBlock[4] = sub_10021E040;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008B9920;
      v23 = _Block_copy(aBlock);
      swift_errorRetain();

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10002D150();
      sub_10002849C(&unk_1009729F0);
      sub_1000079A4();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v23);

      (*(v4 + 8))(v6, v3);
      (*(v27 + 8))(v9, v19);
    }
  }
}

uint64_t sub_10021CE9C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(__n128), uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v15 = type metadata accessor for LogMessage.StringInterpolation();
  v16 = __chkstk_darwin(v15 - 8);
  if (a5(v16))
  {
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for OSLogger();
    sub_1000056A8(v17, qword_1009CE278);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v18._object = 0x8000000100807A40;
    v18._countAndFlagsBits = 0xD000000000000010;
    LogMessage.StringInterpolation.appendLiteral(_:)(v18);
    v24[3] = swift_getMetatypeMetadata();
    v24[0] = ObjectType;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10003D444(v24);
    v19._countAndFlagsBits = 0xD000000000000025;
    v19._object = 0x8000000100807A60;
    LogMessage.StringInterpolation.appendLiteral(_:)(v19);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    return a1(v20);
  }

  else
  {
    if (qword_10096D140 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for OSLogger();
    sub_1000056A8(v22, qword_1009CE278);
    sub_10002849C(&unk_100972A10);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.info(_:)();

    type metadata accessor for ReadyObserver();
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = a5;
    v23[7] = a6;
    swift_beginAccess();

    objc_setAssociatedObject(v7, &unk_10097A040, v23, 0x301);
    swift_endAccess();
  }
}

void sub_10021D284()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 launchedToTest];

  if (v11)
  {
    v12 = sub_10021D774();
    if (v12)
    {
      v13 = v12;
      if ((*(v12 + 48))())
      {
        v17 = v3;
        swift_beginAccess();
        objc_setAssociatedObject(v1, &unk_10097A040, 0, 0x301);
        swift_endAccess();
        sub_1000076C0();
        v14 = static OS_dispatch_queue.main.getter();
        aBlock[4] = sub_10021E0B4;
        aBlock[5] = v13;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100007A08;
        aBlock[3] = &unk_1008B9998;
        v15 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_10002D150();
        sub_10002849C(&unk_1009729F0);
        sub_1000079A4();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v15);

        (*(v17 + 8))(v5, v2);
        (*(v7 + 8))(v9, v6);
      }

      else
      {
      }
    }
  }
}

Swift::Int sub_10021D5CC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10021D640()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10021D694@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1008AFCA8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10021D708()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10021D774()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_10097A040);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for ReadyObserver();
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10003D444(v6);
    return 0;
  }
}

void sub_10021D84C(uint64_t a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v4[4] = sub_100055FCC;
  v4[5] = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100007A08;
  v4[3] = &unk_1008B99C0;
  v3 = _Block_copy(v4);

  [v2 _performBlockAfterCATransactionCommits:v3];
  _Block_release(v3);
}

void sub_10021D938()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  type metadata accessor for PageRenderMetricsPresenter();
  v3 = static PageRenderMetricsPresenter.pageEndNotification.getter();
  Notification.object.getter();
  v4 = v12;
  if (v12)
  {
    v5 = sub_10002A400(v11, v12);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100007000(v11);
  }

  else
  {
    v10 = 0;
  }

  [v2 removeObserver:v1 name:v3 object:v10];

  swift_unknownObjectRelease();
  sub_10021D284();
}

void sub_10021DBBC(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedApplication];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = sub_10021E088;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100007A08;
  v7[3] = &unk_1008B9970;
  v6 = _Block_copy(v7);

  swift_errorRetain();

  [v4 _performBlockAfterCATransactionCommits:v6];
  _Block_release(v6);
}

BOOL sub_10021DCD4(void *a1)
{
  v2 = type metadata accessor for LogMessage.StringInterpolation();
  [a1 contentSize];
  v29 = v3;
  v5 = v4;
  [a1 _effectiveContentInset];
  v7 = v6;
  v30 = v9;
  v31 = v8;
  v11 = v10;
  [a1 frame];
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v16 = CGRectGetHeight(v34);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for OSLogger();
  sub_1000056A8(v17, qword_1009CE278);
  sub_10002849C(&unk_100972A10);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x8000000100808240;
  v18._countAndFlagsBits = 0xD00000000000002ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v18);
  v33 = &type metadata for Bool;
  LOBYTE(v32[0]) = v16 - v7 - v11 <= v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v19._countAndFlagsBits = 0x6E65746E6F632820;
  v19._object = 0xEF203A657A695374;
  LogMessage.StringInterpolation.appendLiteral(_:)(v19);
  type metadata accessor for CGSize(0);
  v33 = v20;
  v32[0] = v29;
  *&v32[1] = v5;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v21._countAndFlagsBits = 0x737465736E69202CLL;
  v21._object = 0xEA0000000000203ALL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v21);
  type metadata accessor for UIEdgeInsets(0);
  v33 = v22;
  v23 = swift_allocObject();
  v32[0] = v23;
  *(v23 + 16) = v7;
  *(v23 + 24) = v31;
  *(v23 + 32) = v11;
  *(v23 + 40) = v30;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v24._countAndFlagsBits = 0x3A656D617266202ELL;
  v24._object = 0xE900000000000020;
  LogMessage.StringInterpolation.appendLiteral(_:)(v24);
  type metadata accessor for CGRect(0);
  v33 = v25;
  v26 = swift_allocObject();
  v32[0] = v26;
  v26[2] = x;
  v26[3] = y;
  v26[4] = width;
  v26[5] = height;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10003D444(v32);
  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v27);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  return v16 - v7 - v11 <= v5;
}

uint64_t sub_10021E048()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10021E0D0()
{
  result = qword_10097A100;
  if (!qword_10097A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10097A100);
  }

  return result;
}

uint64_t sub_10021E13C()
{
  sub_100005744(0, &qword_100970180);
  result = static UIColor.secondaryText.getter();
  byte_1009CE9D0 = 1;
  qword_1009CE9D8 = result;
  return result;
}

uint64_t sub_10021E18C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v4[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_id];
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0;
  v12 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_itemType;
  v13 = type metadata accessor for MetadataRibbonItemType();
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = &v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_labelMaxWidth];
  *v14 = 0;
  v14[8] = 1;
  v15 = &v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold];
  *v15 = 0;
  v15[8] = 1;
  v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_allowsTruncation] = 2;
  type metadata accessor for DynamicTypeLabel();
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel] = DynamicTypeLabel.__allocating_init(frame:)();
  v16 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView] = v16;
  v17 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] = v17;
  v46.receiver = v5;
  v46.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v46, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView;
  v24 = *&v22[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  sub_10002849C(&qword_100973210);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1007B0B70;
  *(v25 + 32) = v24;
  v44 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView;
  v26 = *&v22[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1007B0B70;
  *(v27 + 32) = v26;
  v28 = *&v22[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007B0B70;
  *(v29 + 32) = v28;
  sub_10002849C(&qword_1009711E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = v25;
  *(inited + 40) = v27;
  *(inited + 48) = v29;
  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = sub_10071C0E4(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_1009711F0);
  result = swift_arrayDestroy();
  if (v34 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v36 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v36)
    {
      goto LABEL_10;
    }
  }

  if (v36 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v36; ++i)
  {
    if ((v34 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v38 = *(v34 + 8 * i + 32);
    }

    v39 = v38;
    [v22 addSubview:{v38, v44}];
  }

LABEL_10:

  [*&v22[v23] setSemanticContentAttribute:3];
  v40 = *&v22[v23];
  if (qword_10096D450 != -1)
  {
    v43 = *&v22[v23];
    swift_once();
    v40 = v43;
  }

  v41 = qword_10097A120;
  [v40 setTintColor:{qword_10097A120, v44}];
  [*&v22[v45] setSemanticContentAttribute:3];
  [*&v22[v45] setTintColor:v41];
  sub_10021E648();
  sub_10002849C(&qword_10097B110);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1007B10D0;
  *(v42 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v42 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v22;
}

id sub_10021E648()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v2._object = 0x8000000100808300;
  v2._countAndFlagsBits = 0xD00000000000001ALL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  localizedString(_:comment:)(v2, v3);
  v4 = String._bridgeToObjectiveC()();

  [v1 setText:v4];

  if (qword_10096D450 != -1)
  {
    swift_once();
  }

  [v1 setTextColor:qword_10097A120];
  [v1 setNumberOfLines:1];
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE60 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MetadataRibbonTextStyle();
  v6 = sub_1000056A8(v5, qword_1009D3728);
  v9[3] = v5;
  v9[4] = sub_100032098();
  v7 = sub_1000056E0(v9);
  (*(*(v5 - 8) + 16))(v7, v6, v5);
  dispatch thunk of DynamicTypeLabel.customTextStyle.setter();
  return [v1 setMaximumContentSizeCategory:UIContentSizeCategoryLarge];
}

void sub_10021E7E4()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.modifyingTraits(_:)();
  if (qword_10096EE60 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for MetadataRibbonTextStyle();
  sub_1000056A8(v4, qword_1009D3728);
  v5.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v3).super.isa;
  v6 = [v2 preferredContentSizeCategory];
  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = 1;
  }

  v9 = [objc_opt_self() configurationWithFont:v5.super.isa scale:v8];

  v10 = *&v1[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v11 = v9;
  [v10 setPreferredSymbolConfiguration:v11];
  [*&v1[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView] setPreferredSymbolConfiguration:v11];
}

void sub_10021EAF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  *a4 = v6;
}

uint64_t sub_10021EB60(uint64_t a1)
{
  sub_100047650(a1, *(a1 + 24));
  v1 = UIContentSizeCategoryLarge;
  return UIMutableTraits.preferredContentSizeCategory.setter();
}

id sub_10021EBB4()
{
  if (qword_10096D438 != -1)
  {
    swift_once();
  }

  v1 = qword_1009CE9D8;
  byte_10097A118 = byte_1009CE9D0;
  qword_10097A120 = qword_1009CE9D8;

  return v1;
}

uint64_t sub_10021EC28()
{
  ObjectType = swift_getObjectType();
  v18 = type metadata accessor for LayoutRect();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout.Metrics();
  __chkstk_darwin(v5 - 8);
  v17 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v0;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v7);
  v10 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView];
  v26 = sub_100005744(0, &qword_100973120);
  v27 = &protocol witness table for UIView;
  v24 = &protocol witness table for UIView;
  v25 = v10;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView];
  v23 = v26;
  v22 = v11;
  v12 = *&v0[OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel];
  v20 = type metadata accessor for DynamicTypeLabel();
  v21 = &protocol witness table for UILabel;
  v19 = v12;
  v13 = v10;
  v14 = v11;
  v15 = v12;
  static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter();
  MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  MetadataRibbonEditorsChoiceViewLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v18);
  return (*(v6 + 8))(v9, v17);
}

double sub_10021EEE8()
{
  v1 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout.Metrics();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_leadingLaurelImageView);
  v16 = sub_100005744(0, &qword_100973120);
  v17 = &protocol witness table for UIView;
  v15[10] = &protocol witness table for UIView;
  v15[11] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_trailingLaurelImageView);
  v15[9] = v16;
  v15[6] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_editorsChoiceLabel);
  v15[4] = type metadata accessor for DynamicTypeLabel();
  v15[5] = &protocol witness table for UILabel;
  v15[1] = v8;
  v9 = v6;
  v10 = v7;
  v11 = v8;
  static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter();
  MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)();
  MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)();
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  return v13;
}

uint64_t type metadata accessor for MetadataRibbonEditorsChoiceView()
{
  result = qword_10097A170;
  if (!qword_10097A170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021F24C()
{
  sub_1000315A0();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10021F314@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB98);
}

uint64_t sub_10021F37C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_itemType;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB98);
  return swift_endAccess();
}

uint64_t sub_10021F458(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10021F524(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_10021F5E4()
{
  v1 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10021F628(char a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_10021F6D8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &qword_10096FB90);
}

uint64_t sub_10021F740(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore31MetadataRibbonEditorsChoiceView_id;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &qword_10096FB90);
  return swift_endAccess();
}

double sub_10021F834(uint64_t a1, void *a2)
{
  v80 = a2;
  v67 = a1;
  v2 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout.Metrics();
  __chkstk_darwin(v2 - 8);
  v76 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for MetadataRibbonEditorsChoiceViewLayout();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for ImagePlaceholder();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v72 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ImageAppearance();
  v83 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v65 - v8;
  __chkstk_darwin(v9);
  v82 = &v65 - v10;
  v66 = type metadata accessor for LabelPlaceholder();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DynamicTextAppearance();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v65 - v18;
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  DynamicTextAppearance.init()();
  static CustomTextStyle<>.metadataRibbon.getter();
  if (qword_10096EE60 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for MetadataRibbonTextStyle();
  v24 = sub_1000056A8(v23, qword_1009D3728);
  v91[3] = v23;
  v91[4] = sub_100032098();
  v25 = sub_1000056E0(v91);
  (*(*(v23 - 8) + 16))(v25, v24, v23);
  DynamicTextAppearance.withCustomTextStyle(_:)();
  v26 = *(v14 + 8);
  v26(v16, v13);
  sub_100007000(v91);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v81 = v13;
  v70 = v14 + 8;
  v69 = v26;
  v26(v19, v13);
  v27 = MetadataRibbonItem.useAdsLocale.getter();
  v28 = 0x8000000100808300;
  if (v27)
  {
    v29 = 0xD00000000000001ALL;
    localizedStringForAdsLanguage(_:)(*(&v28 - 1));
  }

  else
  {
    v30 = 0xD00000000000001ALL;
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    localizedString(_:comment:)(*(&v28 - 1), v31);
  }

  v32 = v71;
  v33 = *(v14 + 16);
  v71 = v22;
  v33(v19, v22, v81);
  LabelPlaceholder.Options.init(rawValue:)();
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.layoutTextView.getter();
  (*(v65 + 8))(v12, v66);
  v34 = v68;
  ImageAppearance.init()();
  v35 = v80;
  v36 = [v80 traitCollection];
  v37 = UITraitCollection.modifyingTraits(_:)();
  v38.super.isa = MetadataRibbonTextStyle.font(compatibleWith:)(v37).super.isa;
  v39 = [v36 preferredContentSizeCategory];
  v40 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v40)
  {
    v41 = 3;
  }

  else
  {
    v41 = 1;
  }

  v42 = [objc_opt_self() configurationWithFont:v38.super.isa scale:v41];

  v43 = v82;
  ImageAppearance.withSymbolConfiguration(_:)();

  v44 = v83;
  v45 = v75;
  v68 = *(v83 + 8);
  v67 = v83 + 8;
  (v68)(v34, v75);
  if (qword_10096D440 != -1)
  {
    swift_once();
  }

  v46 = qword_10097A108;
  v47 = *(v44 + 16);
  v83 = v44 + 16;
  v47(v32, v43, v45);
  v48 = v46;
  v49 = v72;
  ImagePlaceholder.init(_:with:)();
  v50 = [v35 traitCollection];
  ImagePlaceholder.measure(toFit:with:)();
  v66 = v51;
  v65 = v52;

  v53 = *(v73 + 8);
  v54 = v74;
  v53(v49, v74);
  if (qword_10096D448 != -1)
  {
    swift_once();
  }

  v55 = qword_10097A110;
  v47(v32, v43, v45);
  v56 = v55;
  ImagePlaceholder.init(_:with:)();
  v57 = [v35 traitCollection];
  ImagePlaceholder.measure(toFit:with:)();

  v53(v49, v54);
  v58 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v59 = LayoutViewPlaceholder.init(measurements:)();
  swift_allocObject();
  v60 = LayoutViewPlaceholder.init(measurements:)();
  v89 = v58;
  v90 = &protocol witness table for LayoutViewPlaceholder;
  v87 = &protocol witness table for LayoutViewPlaceholder;
  v88 = v59;
  v86 = v58;
  v85 = v60;
  sub_10002C0AC(v91, v84);

  static MetadataRibbonEditorsChoiceViewLayout.Metrics.standard.getter();
  v61 = v77;
  MetadataRibbonEditorsChoiceViewLayout.init(leadingLaurelView:trailingLaurelView:textLabel:metrics:)();
  MetadataRibbonEditorsChoiceViewLayout.measurements(fitting:in:)();
  v63 = v62;

  (*(v78 + 8))(v61, v79);
  (v68)(v82, v45);
  sub_100007000(v91);
  v69(v71, v81);
  return v63;
}