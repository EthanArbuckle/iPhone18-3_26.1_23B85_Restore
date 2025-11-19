void sub_2B4034()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchResultsContainerViewController);
  v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v3)
  {
    type metadata accessor for SearchResultsDiffablePageViewController();
    if (swift_dynamicCastClass())
    {
      v17 = v3;
      sub_5D6BC4(1);
      sub_75E310();
      v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController);
      *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = 0;
      if (v4)
      {
        v5 = [v4 presentingViewController];
        if (v5)
        {
          v6 = v5;
          [v5 dismissViewControllerAnimated:1 completion:0];
        }
      }

      sub_2AC99C(0);
      sub_2B0514(1);
LABEL_8:

      return;
    }

    type metadata accessor for SearchHintsViewController();
    if (swift_dynamicCastClass())
    {
      v7 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider36SearchResultsContainerViewController_searchFocusViewController);
      v17 = v3;
      if (v7)
      {
        sub_5D6BC4(3);
        sub_75E310();
        v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = 0;
        if (v8)
        {
          v9 = [v8 presentingViewController];
          if (v9)
          {
            v10 = v9;
            [v9 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_2AC99C(0);
      }

      else
      {
        sub_5D6BC4(0);
        sub_75E310();
        v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = 0;
        if (v14)
        {
          v15 = [v14 presentingViewController];
          if (v15)
          {
            v16 = v15;
            [v15 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_2AC99C(0);
        sub_2B1EF4();
      }

      goto LABEL_8;
    }

    sub_5D6BC4(0);
    sub_75E310();
    v11 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController);
    *(v1 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = 0;
    if (v11)
    {
      v12 = [v11 presentingViewController];
      if (v12)
      {
        v13 = v12;
        [v12 dismissViewControllerAnimated:1 completion:0];
      }
    }

    sub_2AC99C(0);

    sub_2B1EF4();
  }

  else
  {

    sub_2B0514(0);
  }
}

void sub_2B4314()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 50) = 0u;
  *(v2 + 40) = 0u;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___resultsMessageView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController____lazy_storage___tokenPalette) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_searchTextInput) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_showSearchLanding) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = 0;
  *(v2 + 24) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_activeSearchBarObservingViewController);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_pendingSearchAction) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_guidedSearchContainerImpressionMetrics;
  v5 = sub_768AB0();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_prefersLargeTitle) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  sub_76A840();
  __break(1u);
}

void sub_2B4478()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchViewController_facetNavigationController) = 0;
  if (v1)
  {
    v4 = v1;
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_2B4574(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2B458C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2B45C4()
{
  v1 = sub_7622B0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_2B4688()
{
  v1 = *(sub_7622B0() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_2B12C8(v2, v3);
}

uint64_t sub_2B46F4(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_2B4748()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_2B47A4()
{
  sub_BEB8(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_2B47E4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    return sub_F704(a3);
  }

  return result;
}

uint64_t sub_2B4830()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2B4884(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B48CC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2B4930()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_2B49D4(void *a1, void *a2, char a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 snapshotViewAfterScreenUpdates:0];

    if (v8)
    {
      v9 = [a1 tabBar];
      [v9 frame];
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      x = v44.origin.x;
      v37 = v44.origin.x;
      v14 = CGRectGetHeight(v44);
      v15 = 0.0;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectOffset(v45, 0.0, v14);
      v35 = v46.origin.y;
      v36 = v46.origin.x;
      v33 = v46.size.height;
      v34 = v46.size.width;
      v16 = a3 & 1;
      if (a3)
      {
        v17 = y;
      }

      else
      {
        x = v46.origin.x;
        v17 = v46.origin.y;
      }

      if (a3)
      {
        v18 = width;
      }

      else
      {
        v18 = v46.size.width;
      }

      if (a3)
      {
        v19 = height;
      }

      else
      {
        v19 = v46.size.height;
      }

      if (a3)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a3)
      {
        v15 = 1.0;
      }

      v21 = [objc_allocWithZone(UIView) initWithFrame:{x, v17, v18, v19}];
      [v21 setClipsToBounds:1];
      [v21 addSubview:v8];
      [v8 setAlpha:v15];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v47);
      [v8 bounds];
      v23 = MaxY - CGRectGetHeight(v48);
      [v8 frame];
      [v8 setFrame:{0.0, v23}];
      [v9 setHidden:1];

      v24 = [a2 containerView];
      [v24 addSubview:v21];

      v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v20 curve:0 animations:0.233333333];
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v16;
      *(v26 + 32) = v36;
      *(v26 + 40) = v35;
      *(v26 + 48) = v34;
      *(v26 + 56) = v33;
      *(v26 + 64) = v37;
      *(v26 + 72) = y;
      *(v26 + 80) = width;
      *(v26 + 88) = height;
      *(v26 + 96) = v8;
      v42 = sub_2B4E18;
      v43 = v26;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_23F0CC;
      v41 = &unk_88BE78;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v8;

      [v25 addAnimations:v27];
      _Block_release(v27);
      v30 = swift_allocObject();
      *(v30 + 16) = v9;
      *(v30 + 24) = v16;
      v42 = sub_2B4F14;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_19EE34;
      v41 = &unk_88BEC8;
      v31 = _Block_copy(&aBlock);
      v32 = v9;

      [v25 addCompletion:v31];
      _Block_release(v31);
      [v25 startAnimation];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2B4DD8()
{

  return _swift_deallocObject(v0, 104, 7);
}

id sub_2B4E18()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

uint64_t sub_2B4EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2B4EDC()
{

  return _swift_deallocObject(v0, 25, 7);
}

__n128 sub_2B4F3C(uint64_t a1, uint64_t a2)
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

uint64_t sub_2B4F60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2B4FA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_2B5010(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2B5058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for TodayPageLayoutSectionProvider()
{
  result = qword_94DD58;
  if (!qword_94DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B5160(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v56 = a8;
  v62 = a6;
  v63 = a7;
  v60 = a4;
  v61 = a5;
  v57 = a3;
  v58 = a2;
  v59 = a10;
  v11 = sub_764930();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v47 - v15;
  v17 = sub_BD88(&unk_94F1F0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  v55 = a1;
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  v24 = *(v18 + 8);
  v24(v23, v17);
  v52 = v16;
  v53 = v12;
  v25 = *(v12 + 88);
  v54 = v11;
  v26 = v25(v16, v11);
  if (v26 == enum case for Shelf.ContentType.todayCard(_:))
  {
    v27 = v58();
    v28 = sub_2B5718(v55, v27, v60, v61, v62, v63, v59);
  }

  else
  {
    v50 = &v47;
    __chkstk_darwin(v26);
    __chkstk_darwin(v29);
    v47 = v24;
    sub_762BA0();
    v30 = sub_762BB0();
    v48 = a9;
    v31 = v55;
    v49 = v30(v55, sub_60CC8, &v47 - 4, v60, v61, v62, v63, v56, a9, v59);
    sub_75DAA0();
    swift_getKeyPath();
    v32 = v51;
    sub_768750();

    v47(v20, v17);
    v33 = v54;
    v34 = v25(v32, v54);
    if (v34 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v35 = v58();
      v28 = sub_CB3B4(v31, v35, v60, v61, v62, v63, v56, v48, v59);

      v36 = v53;
    }

    else
    {
      v37 = v32;
      v38 = v48;
      v39 = v59;
      v40 = v60;
      v41 = v56;
      v43 = v61;
      v42 = v62;
      v44 = v63;
      v36 = v53;
      if (v34 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v45 = v58();
        v28 = sub_CC6F8(v31, v45, v40, v43, v42, v44, v41, v38, v39);

        v33 = v54;
      }

      else if (v34 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        v28 = v49;
        [v49 setOrthogonalScrollingBehavior:2];
        v33 = v54;
      }

      else
      {
        v33 = v54;
        (*(v53 + 8))(v37, v54);
        v28 = v49;
      }
    }

    (*(v36 + 8))(v52, v33);
  }

  return v28;
}

uint64_t sub_2B56BC()
{
  sub_762BC0();

  return swift_deallocClassInstance();
}

id sub_2B5718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v130[3] = a6;
  v13 = sub_75C840();
  v151 = *(v13 - 8);
  __chkstk_darwin(v13);
  v148 = v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7656C0();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v140 = v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v130 - v19;
  v152 = a2;
  v147 = v13;
  if ((sub_769490() & 1) == 0)
  {
    sub_BE70(0, &qword_945550);
    v109 = sub_769B80();
    v110 = [objc_opt_self() sectionWithGroup:v109];

    sub_762B80();
    return v110;
  }

  v130[1] = a3;
  v130[2] = a5;
  v146 = a7;
  v21 = sub_35299C(a1);
  v22 = *(v21 + 16);
  if (v22 <= 1)
  {
    v22 = 1;
  }

  v23 = (v22 - 1);
  sub_75DA20();
  sub_765570();
  v25 = v24;
  v26 = *(v16 + 8);
  v145 = v15;
  v144 = v16 + 8;
  v26(v20, v15);
  v27 = v25 * v23;
  v160 = _swiftEmptyArrayStorage;
  v28 = &selRef_absoluteDimension_;
  v29 = &selRef_absoluteDimension_;
  v30 = v20;
  v135 = *(v21 + 16);
  v143 = v26;
  if (!v135)
  {

    v111 = _swiftEmptyArrayStorage;
    goto LABEL_64;
  }

  v132 = objc_opt_self();
  v154 = objc_opt_self();
  v138 = objc_opt_self();
  v131 = objc_opt_self();
  v31 = 0;
  v32 = 0;
  v136 = v21;
  v134 = v21 + 32;
  v149 = v151 + 16;
  v150 = (v151 + 8);
  v142 = v20;
  v33 = v147;
  v34 = v148;
  v133 = a4;
  v141 = a1;
  do
  {
    if (v32 >= *(v136 + 16))
    {
      goto LABEL_71;
    }

    v139 = v32;
    v35 = *(v134 + 8 * v32);
    v36 = *(v35 + 16);
    if (v36)
    {
      v29 = *(v152 + 16);

      v37 = 0.0;
      v30 = 32;
      v155 = _swiftEmptyArrayStorage;
      v153 = v29;
      while (1)
      {
        if (v31 < v29)
        {
          if (v31 < 0)
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            sub_BE70(0, &qword_957F90);

            sub_76A850();

            goto LABEL_66;
          }

          v38 = v35;
          v39 = *(v35 + v30);
          (*(v151 + 16))(v34, v152 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v31++, v33);
          sub_765B70();
          sub_28E908();
          sub_75C750();
          v40 = aBlock[0];
          if (aBlock[0])
          {
            sub_762B70();
            sub_B170(aBlock, v157);
            if (sub_763770())
            {
              type metadata accessor for BaseTodayCardCollectionViewCell();
              v41 = swift_dynamicCastMetatype();
              if (v41)
              {
                v42 = v41;
                sub_BEB8(aBlock);
                swift_getKeyPath();
                v43 = v142;
                sub_75C7B0();

                swift_getKeyPath();
                sub_75C7B0();

                v44 = aBlock[0];
                v45 = (*(v42 + 528))(v40, v39, 0, v43, aBlock[0], 0);

                v46 = v143;
                v143(v43, v145);
                v47 = v140;
                sub_75DA20();
                sub_765BE0();
                sub_765630();
                switch(v39)
                {
                  case 6:
                    v53 = floor(v48);
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 5:
                    sub_765560();
                    v53 = v52;
                    v54 = v145;
                    v33 = v147;
                    break;
                  case 4:
                    v49 = v48;
                    v50 = sub_765680();
                    v33 = v147;
                    v35 = v38;
                    v29 = v153;
                    if (!v51)
                    {
                      goto LABEL_38;
                    }

                    if (v50 == 0x6972477961646F74 && v51 == 0xE900000000000064)
                    {

                      goto LABEL_37;
                    }

                    v71 = sub_76A950();

                    if (v71)
                    {
LABEL_37:
                      sub_7655F0();
                      v53 = floor((v49 - v72) * 0.5);
                    }

                    else
                    {
LABEL_38:
                      sub_765630();
                      v53 = v73;
                    }

                    v143(v47, v145);
LABEL_43:
                    if (v37 <= v45)
                    {
                      v37 = v45;
                    }

                    v82 = v155;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v82 = sub_7AE54(0, *(v82 + 2) + 1, 1, v82);
                    }

                    v84 = *(v82 + 2);
                    v83 = *(v82 + 3);
                    v155 = v82;
                    if (v84 >= v83 >> 1)
                    {
                      v155 = sub_7AE54((v83 > 1), v84 + 1, 1, v155);
                    }

                    v85 = v148;
                    (*v150)(v148, v33);
                    v86 = v155;
                    *(v155 + 2) = v84 + 1;
                    v87 = &v86[8 * v84];
                    v34 = v85;
                    *(v87 + 4) = v53;
                    v28 = &selRef_absoluteDimension_;
                    goto LABEL_11;
                  default:
                    sub_765BE0();
                    sub_765630();
                    if (v39 > 1)
                    {
                      v33 = v147;
                      if (v39 == 2)
                      {
                        sub_765550();
                        v59 = v58 + -1.0;
                        sub_765560();
                        v61 = v60;
                        sub_7655F0();
                        v63 = v59 + -1.0;
                        if (v59 + -1.0 < 0.0)
                        {
                          v63 = 0.0;
                        }

                        v64 = v61 * v59 + v62 * v63;
                        sub_765580();
                        v66 = v65;
                        sub_765620();
                        v69 = v66 - (v67 + v68);
                        sub_7655F0();
                        v55 = v69 - v70 - v64;
                      }

                      else
                      {
                        sub_765580();
                        v75 = v74;
                        sub_765620();
                        v78 = v75 - (v76 + v77);
                        sub_765560();
                        v80 = v78 - v79;
                        sub_7655F0();
                        v55 = v80 - v81;
                      }
                    }

                    else
                    {
                      v33 = v147;
                      if (v39)
                      {
                        v56 = v55;
                        sub_7655F0();
                        v55 = (v56 - v57) * 0.5;
                      }
                    }

                    v53 = floor(v55);
                    v54 = v145;
                    break;
                }

                v35 = v38;
                v29 = v153;
                v46(v47, v54);
                goto LABEL_43;
              }

              v34 = v148;
              v33 = v147;
              (*v150)(v148, v147);

              sub_BEB8(aBlock);
            }

            else
            {
              v33 = v147;
              (*v150)(v34, v147);

              sub_BEB8(aBlock);
            }

            v28 = &selRef_absoluteDimension_;
          }

          else
          {
            (*v150)(v34, v33);
          }

          v35 = v38;
          v29 = v153;
        }

LABEL_11:
        ++v30;
        if (!--v36)
        {

          v30 = v142;
          v88 = v155;
          goto LABEL_52;
        }
      }
    }

    v37 = 0.0;
    v88 = _swiftEmptyArrayStorage;
LABEL_52:
    v89 = *(v88 + 2);
    v90 = v154;
    if (v89)
    {
      v137 = v31;
      v155 = v88;
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_76A7C0();
      v153 = objc_opt_self();
      v91 = 32;
      v92 = v138;
      do
      {
        v93 = [v90 *v28];
        v94 = [v90 *v28];
        v95 = [v92 sizeWithWidthDimension:v93 heightDimension:v94];

        sub_BE70(0, &unk_956250);
        isa = sub_769450().super.isa;
        v97 = [(SEL *)v153 itemWithLayoutSize:v95 supplementaryItems:isa];

        sub_76A7A0();
        sub_76A7D0();
        v90 = v154;
        sub_76A7E0();
        sub_76A7B0();
        v91 += 8;
        --v89;
      }

      while (v89);

      v30 = v142;
      v33 = v147;
      v31 = v137;
    }

    else
    {
    }

    v98 = [v90 fractionalWidthDimension:1.0];
    v99 = [v90 *v28];
    v100 = [v138 sizeWithWidthDimension:v98 heightDimension:v99];

    sub_BE70(0, &qword_957F90);
    v101 = sub_769450().super.isa;

    v102 = [v132 horizontalGroupWithLayoutSize:v100 subitems:v101];

    sub_75DA20();
    sub_7655F0();
    v104 = v103;
    v143(v30, v145);
    v105 = [v131 fixedSpacing:v104];
    [v102 setInterItemSpacing:v105];

    v106 = v102;
    sub_769440();
    if (*(&dword_10 + (v160 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v160 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    v107 = v139 + 1;
    sub_769500();

    v32 = v107;
    v27 = v27 + v37;
    v108 = v107 == v135;
    v34 = v148;
    v29 = &selRef_absoluteDimension_;
  }

  while (!v108);
  v111 = v160;

LABEL_64:
  v112 = objc_opt_self();
  v113 = [v112 fractionalWidthDimension:1.0];
  v114 = [v112 absoluteDimension:v27];
  v29 = [objc_opt_self() v29[141]];

  if (v111 >> 62)
  {
    goto LABEL_72;
  }

  sub_76A960();
  sub_BE70(0, &qword_957F90);
LABEL_66:

  v115 = objc_opt_self();
  sub_BE70(0, &qword_957F90);
  v116 = sub_769450().super.isa;

  v117 = [v115 verticalGroupWithLayoutSize:v29 subitems:v116];

  v118 = objc_opt_self();
  sub_75DA20();
  sub_7655F0();
  v120 = v119;
  v121 = v145;
  v122 = v143;
  v143(v30, v145);
  v123 = [v118 fixedSpacing:v120];
  [v117 setInterItemSpacing:v123];

  v110 = [objc_opt_self() sectionWithGroup:v117];
  sub_75DA20();
  sub_765570();
  v125 = v124;
  v122(v30, v121);
  [v110 setInterGroupSpacing:v125];
  sub_762B90();
  v126 = sub_769480();
  v128 = v127;

  if (v126)
  {
    v158 = v126;
    v159 = v128;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_4E4820;
    v157 = &unk_88C008;
    v126 = _Block_copy(aBlock);
  }

  [v110 setVisibleItemsInvalidationHandler:v126];
  _Block_release(v126);
  sub_762B80();

  return v110;
}

uint64_t sub_2B67BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2B67DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_758ED0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757B90();
  v9 = sub_764EF0();
  v11 = v10;

  if (v11)
  {
    v25 = a3;
    v26 = v3;
    v27._countAndFlagsBits = 0x465F4E4F5F444441;
    v27._object = 0xEE005050415F524FLL;
    v28._object = 0x80000000007CF0F0;
    v28._countAndFlagsBits = 0xD000000000000031;
    sub_75B750(v27, v28);
    sub_BD88(&unk_944E30);
    v13 = swift_allocObject();
    v24 = xmmword_77B6D0;
    *(v13 + 16) = xmmword_77B6D0;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_FA4CC();
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;

    sub_769270();
    v15 = v14;

    v16 = sub_757B50();
    if (v16)
    {
      v17 = v16;
      sub_BD88(&qword_946458);
      inited = swift_initStackObject();
      v23[1] = v15;
      v19 = inited;
      *(inited + 16) = v24;
      *(inited + 32) = v9;
      v20 = inited + 32;
      *(inited + 40) = v11;
      *(inited + 48) = v17;
      *(inited + 56) = v25;
      (*(v6 + 104))(v8, enum case for StyledText.MediaType.plainText(_:), v5);
      sub_758EE0();
      swift_allocObject();

      v21 = sub_758EA0();
      sub_4ED3B8(v21, 0, v19);

      swift_setDeallocating();
      return sub_2B6ADC(v20);
    }

    else
    {

      (*(v6 + 104))(v8, enum case for StyledText.MediaType.plainText(_:), v5);
      sub_758EE0();
      swift_allocObject();
      v22 = sub_758EA0();
      sub_4ED3B8(v22, 0, _swiftEmptyArrayStorage);
    }
  }

  return result;
}

uint64_t sub_2B6ADC(uint64_t a1)
{
  v2 = sub_BD88(&qword_946460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2B6B58()
{
  result = qword_94DDB0;
  if (!qword_94DDB0)
  {
    sub_75D110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94DDB0);
  }

  return result;
}

void sub_2B6BB0(uint64_t a1, void **a2)
{
  v98 = a2;
  v103 = a1;
  v3 = sub_BD88(&qword_955640);
  __chkstk_darwin(v3 - 8);
  v92 = v79 - v4;
  v94 = sub_7580D0();
  v93 = *(v94 - 1);
  __chkstk_darwin(v94);
  v6 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_764CF0();
  v95 = *(v99 - 8);
  __chkstk_darwin(v99);
  v8 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_765300();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v10 = v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_765120();
  v89 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_765240();
  v86 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_768E70();
  v97 = *(v100 - 8);
  v17 = *(v97 + 64);
  __chkstk_darwin(v100);
  v90 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v101 = v79 - v19;
  v91 = sub_BD88(&qword_94DDC0);
  v102 = sub_768F90();
  v96 = v2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v21 = [Strong view];

  if (!v21)
  {
    __break(1u);
    return;
  }

  v22 = [v21 window];

  if (!v22 || (v23 = [v22 windowScene], v22, !v23))
  {
    sub_2B8144();
    swift_allocError();
    sub_768F50();

    return;
  }

  v85 = v23;
  v24 = sub_768900();
  sub_768ED0();
  sub_2B8198();
  v83 = v24;
  sub_768ED0();
  v84 = aBlock;
  v25 = sub_75D100();
  if (v26)
  {
    v81 = v25;
    v82 = v26;
    v27 = sub_75D0D0();
    if (v28)
    {
      v79[1] = v27;
      v79[2] = v28;
      if (sub_75D0F0())
      {
        sub_75F610();
        if (sub_75D0F0())
        {
          v29 = sub_765320();

          sub_75DEE0();
          v30 = sub_765230();
          v79[0] = v31;
          (*(v86 + 8))(v16, v14);
          aBlock = v30;
          v110 = v79[0];
          v86 = v29;
          v32 = sub_75DF20();
          if ((v33 & 1) == 0)
          {
            v108._countAndFlagsBits = 45;
            v108._object = 0xE100000000000000;
            v106 = v32;
            v115._countAndFlagsBits = sub_76A910();
            sub_769370(v115);

            sub_769370(v108);
          }

          sub_765380();
          v34 = sub_765110();
          v36 = v35;
          v89[1](v13, v11);
          v108._countAndFlagsBits = v34;
          v108._object = v36;
          v106 = 8217467;
          v107 = 0xE300000000000000;
          v104 = aBlock;
          v105 = v110;
          sub_12EC40();
          v37 = sub_76A4F0();
          v39 = v38;

          v108._countAndFlagsBits = v37;
          v108._object = v39;
          v106 = 8218235;
          v107 = 0xE300000000000000;
          sub_75DF10();
          v40 = sub_7652F0();
          v42 = v41;
          (*(v87 + 8))(v10, v88);
          v104 = v40;
          v105 = v42;
          sub_76A4F0();
        }

        else
        {
          sub_765380();
          sub_765110();
          v89[1](v13, v11);
        }

        v43 = objc_allocWithZone(sub_766400());
        v44 = sub_7663F0();

        v89 = v44;
        v45 = v44;
        goto LABEL_18;
      }
    }
  }

  v89 = 0;
LABEL_18:
  sub_BD88(&unk_944300);
  sub_768ED0();
  v46 = aBlock;
  swift_getObjectType();
  sub_75D0E0();
  v98 = v46;
  v47 = sub_758330();
  v48 = *(v95 + 8);
  v48(v8, v99);
  swift_getObjectType();
  v95 = v47;
  sub_758220();
  v49 = v93;
  v50 = v94;
  if ((*(v93 + 88))(v6, v94) == enum case for LegacyAppState.openable(_:))
  {
    (*(v49 + 96))(v6, v50);
    v51 = *&v6[*(sub_BD88(&unk_94DE40) + 48)];
    v52 = sub_75E270();
    (*(*(v52 - 8) + 8))(v6, v52);
    v53 = [v51 stringValue];
    sub_769240();
  }

  else
  {
    (*(v49 + 8))(v6, v50);
  }

  sub_75F600();
  v94 = v84;
  sub_75D0E0();
  sub_764CA0();
  v48(v8, v99);
  v54 = objc_allocWithZone(sub_7663C0());
  v55 = v89;
  v56 = sub_7663B0();
  v57 = v96;
  v58 = swift_unknownObjectUnownedLoadStrong();
  v59 = [v58 presentedViewController];

  if (!v59)
  {
    goto LABEL_24;
  }

  if ([v59 isBeingDismissed])
  {

LABEL_24:
    v60 = v101;
    v61 = sub_768E30();
    v62 = sub_768F90();
    v63 = sub_769590();
    v64 = v92;
    (*(*(v63 - 8) + 56))(v92, 1, 1, v63);
    v65 = swift_allocObject();
    v65[2] = 0;
    v65[3] = 0;
    v66 = v85;
    v65[4] = v85;
    v65[5] = v56;
    v65[6] = v61;
    v65[7] = v62;
    v67 = v66;
    v68 = v56;

    sub_54A098(0, 0, v64, &unk_791DE8, v65);

    sub_768F00();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v97 + 8))(v60, v100);
    return;
  }

  sub_2B82BC(v57, &v108);
  v69 = v97;
  v70 = v90;
  v71 = v100;
  (*(v97 + 16))(v90, v101, v100);
  v72 = (*(v69 + 80) + 40) & ~*(v69 + 80);
  v73 = (v17 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  sub_2B83DC(&v108, v74 + 16);
  v75 = v85;
  *(v74 + 24) = v85;
  *(v74 + 32) = v56;
  (*(v69 + 32))(v74 + v72, v70, v71);
  *(v74 + v73) = v102;
  v113 = sub_2B8414;
  v114 = v74;
  aBlock = _NSConcreteStackBlock;
  v110 = 1107296256;
  v111 = sub_23F0CC;
  v112 = &unk_88C100;
  v76 = _Block_copy(&aBlock);
  v77 = v75;
  v78 = v56;

  [v59 dismissViewControllerAnimated:1 completion:v76];
  _Block_release(v76);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v69 + 8))(v101, v71);
}

uint64_t sub_2B7994(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_BD88(&qword_955640);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_768E30();
  v9 = sub_768F90();
  v10 = sub_769590();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v8;
  v11[7] = v9;
  v12 = a2;
  v13 = a3;

  sub_54A098(0, 0, v7, &unk_791DF8, v11);

  sub_768F00();
}

uint64_t sub_2B7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = sub_7687C0();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = sub_7663A0();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_2B7C34, 0, 0);
}

uint64_t sub_2B7C34()
{
  sub_7663E0();
  swift_allocObject();
  v0[20] = sub_7663D0();
  v7 = (&async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:) + async function pointer to dispatch thunk of ReviewCoordinator.presentReviewComposer(scene:context:bag:));
  v1 = swift_task_alloc();
  v0[21] = v1;
  *v1 = v0;
  v1[1] = sub_2B7D08;
  v2 = v0[19];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  return v7(v2, v5, v3, v4);
}

uint64_t sub_2B7D08()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_2B7F0C;
  }

  else
  {
    (*(v2[18] + 8))(v2[19], v2[17]);
    v3 = sub_2B7E34;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_2B7E34()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  sub_768F60();

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2B7F0C()
{

  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_B1B4(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  sub_7685E0();
  sub_BDD0((v0 + 2));
  sub_768EA0();

  sub_768F50();

  v5 = v0[1];

  return v5();
}

unint64_t sub_2B8144()
{
  result = qword_94DDC8;
  if (!qword_94DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94DDC8);
  }

  return result;
}

unint64_t sub_2B8198()
{
  result = qword_94DDD0;
  if (!qword_94DDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_94DDD0);
  }

  return result;
}

uint64_t sub_2B81E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_254BD8;

  return sub_2B7B14(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2B82F4()
{
  v1 = sub_768E70();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectUnownedDestroy();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_2B8414()
{
  sub_768E70();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_2B7994(v0 + 16, v1, v2);
}

uint64_t sub_2B84A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2B84C0()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2B8518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_14FCC;

  return sub_2B7B14(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_2B8600()
{
  result = qword_94DE50;
  if (!qword_94DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94DE50);
  }

  return result;
}

uint64_t DebugMenuPage.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DebugMenuPage.debugSettingsProviders.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2B86F0(uint64_t a1, int a2)
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

uint64_t sub_2B8738(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell()
{
  result = qword_94DE88;
  if (!qword_94DE88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2B8880()
{
  if (qword_93C620 != -1)
  {
    swift_once();
  }

  v0 = sub_757CA0();
  sub_BE38(v0, qword_99B7F8);
  return sub_757C10();
}

void sub_2B88F0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider37InAppPurchaseLockupCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView;
  v3 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
  sub_759050();

  v4 = *(*(v1 + v2) + OBJC_IVAR____TtC18ASMessagesProvider17InAppPurchaseView_artworkView);
  sub_759210();
  sub_2B8A48(&qword_945810, &type metadata accessor for ArtworkView);
  v5 = v4;
  sub_75A0C0();
}

uint64_t sub_2B89F0(uint64_t a1)
{
  result = sub_2B8A48(&qword_94DE98, type metadata accessor for InAppPurchaseNonTiledLockupCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2B8A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2B8AC0(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_7664A0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v11 = sub_7666D0();
  v12 = sub_BE38(v11, qword_99F778);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_766CA0();
  *a3 = &protocol witness table for StaticDimension;
  sub_B1B4(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_B1B4(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_766CB0();
  return (*(v8 + 8))(v10, v7);
}

char *sub_2B8CB8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_760AD0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v14 - 8);
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v18 = sub_75C840();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView;
  *&v5[v19] = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v22 = sub_7666D0();
  v23 = sub_BE38(v22, qword_99F778);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v16, v23, v22);
  (*(v24 + 56))(v16, 0, 1, v22);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v25 = objc_allocWithZone(sub_75BB20());
  *&v5[v21] = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_pageTraits] = 0;
  v26 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v27 = sub_75FDA0();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v5[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace] = 1;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton] = 0;
  v28 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v36.receiver = v5;
  v36.super_class = v28;
  v29 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView]];

  v31 = [v29 contentView];
  [v31 addSubview:*&v29[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView]];

  v32 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_taglineLabel;
  v33 = *&v29[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_taglineLabel];
  sub_75BAD0();

  v34 = [v29 contentView];
  [v34 addSubview:*&v29[v32]];

  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v29;
}

uint64_t sub_2B9164@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:);
  v3 = sub_75FDA0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2B91D8(void *a1)
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView);
    v4 = [a1 superview];
    if (v4)
    {
      v5 = v4;
      sub_BE70(0, &qword_93E550);
      v6 = v3;
      v7 = sub_76A1C0();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_2B928C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2BAEB4(&qword_93F500, type metadata accessor for VideoView);
    v5 = v2;
    v6 = [v4 superview];
    if (v6)
    {
      v7 = v6;
      sub_BE70(0, &qword_93E550);
      v8 = v5;
      v9 = sub_76A1C0();

      if (v9)
      {
        v10 = swift_unknownObjectWeakLoadStrong();
        if (v10)
        {
          v11 = v10;
          [v10 removeFromSuperview];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v12 = v2;
  }

  swift_unknownObjectWeakAssign();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    [v2 addSubview:v13];
  }

  sub_55A7A8();
  [v2 setNeedsLayout];
}

void (*sub_2B942C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_2B9490;
}

void sub_2B9490(uint64_t a1, char a2)
{
  v4 = *a1;
  v29 = *(*(a1 + 8) + *(a1 + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_2BAEB4(&qword_93F500, type metadata accessor for VideoView);
      v7 = v4;
      v8 = v29;
      v9 = [v6 superview];
      if (v9)
      {
        v10 = v9;
        sub_BE70(0, &qword_93E550);
        v11 = v8;
        v12 = sub_76A1C0();

        if (v12)
        {
          v13 = swift_unknownObjectWeakLoadStrong();
          if (v13)
          {
            v14 = v13;
            [v13 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v4;
      v22 = v29;
    }

    swift_unknownObjectWeakAssign();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      [v29 addSubview:v24];
    }

    sub_55A7A8();
    [v29 setNeedsLayout];

    v26 = *a1;
  }

  else
  {
    if (Strong)
    {
      sub_2BAEB4(&qword_93F500, type metadata accessor for VideoView);
      v15 = v29;
      v16 = [v6 superview];
      if (v16)
      {
        v17 = v16;
        sub_BE70(0, &qword_93E550);
        v18 = v15;
        v19 = sub_76A1C0();

        if (v19)
        {
          v20 = swift_unknownObjectWeakLoadStrong();
          if (v20)
          {
            v21 = v20;
            [v20 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v23 = v29;
    }

    swift_unknownObjectWeakAssign();
    v27 = swift_unknownObjectWeakLoadStrong();
    if (v27)
    {
      v28 = v27;
      [v29 addSubview:v27];
    }

    sub_55A7A8();
    [v29 setNeedsLayout];

    v26 = v29;
  }
}

uint64_t sub_2B97B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v60 = sub_7664F0();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_75FE00();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75FDA0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = sub_BD88(&qword_94DF10);
  __chkstk_darwin(v14 - 8);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v49 - v18;
  v54 = sub_75FDE0();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v49 - v22;
  v24 = type metadata accessor for MixedMediaLockupCollectionViewCell();
  v67.receiver = v1;
  v67.super_class = v24;
  v51 = v24;
  objc_msgSendSuper2(&v67, "layoutSubviews");
  v61 = v1[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  swift_beginAccess();
  sub_8F554(&v1[v25], v19);
  v49 = v19;
  sub_8F554(v19, v16);
  v26 = *(v6 + 48);
  if (v26(v16, 1, v5) == 1)
  {
    (*(ObjectType + 224))();
    if (v26(v16, 1, v5) != 1)
    {
      sub_10A2C(v16, &qword_94DF10);
    }
  }

  else
  {
    (*(v6 + 32))(v13, v16, v5);
  }

  v27 = *(v6 + 16);
  v27(v10, v13, v5);
  v28 = (*(v6 + 88))(v10, v5);
  v29 = v23;
  if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    v30 = v50;
    if (qword_93C8C0 != -1)
    {
      swift_once();
    }

    sub_134D8(qword_99C688, v66);
  }

  else
  {
    v30 = v50;
    if (v28 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
    {
      if (qword_93C8B8 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C660, v66);
    }

    else
    {
      if (qword_93C8C0 != -1)
      {
        swift_once();
      }

      sub_134D8(qword_99C688, v66);
      (*(v6 + 8))(v10, v5);
    }
  }

  v27(v30, v13, v5);
  sub_134D8(v66, v65);
  sub_BE70(0, &qword_93F900);
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v31 = sub_7666D0();
  sub_BE38(v31, qword_99F778);
  v32 = [v1 traitCollection];
  sub_769E10();

  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v33 = sub_766CA0();
  v34 = sub_BE38(v33, qword_99FDE8);
  v63 = v33;
  v64 = &protocol witness table for StaticDimension;
  v35 = sub_B1B4(v62);
  (*(*(v33 - 8) + 16))(v35, v34, v33);
  sub_75FDC0();
  sub_BEB8(v66);
  (*(v6 + 8))(v13, v5);
  sub_10A2C(v49, &qword_94DF10);
  v36 = v53;
  v37 = v54;
  (*(v53 + 16))(v52, v29, v54);
  v38 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView];
  v66[3] = type metadata accessor for SmallLockupView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v38;
  v39 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView];
  v65[3] = type metadata accessor for LockupMediaView();
  v65[4] = &protocol witness table for UIView;
  v65[0] = v39;
  v40 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_taglineLabel];
  v41 = v38;
  v42 = v39;
  if ([v40 hasContent])
  {
    v43 = sub_75BB20();
    v44 = v40;
    v45 = &protocol witness table for UILabel;
  }

  else
  {
    v43 = 0;
    v45 = 0;
    v40 = 0;
    v62[1] = 0;
    v62[2] = 0;
  }

  v63 = v43;
  v64 = v45;
  v62[0] = v40;
  v46 = v55;
  sub_75FDF0();
  sub_75D650();
  v47 = v57;
  sub_75FDB0();
  (*(v59 + 8))(v47, v60);
  (*(v56 + 8))(v46, v58);
  return (*(v36 + 8))(v29, v37);
}

uint64_t sub_2BA0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_BD88(&unk_94DF00);
  __chkstk_darwin(v12 - 8);
  v14 = &v44[-v13];
  v15 = sub_75C930();
  v48 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v44[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v47 = &v44[-v19];
  if (sub_760760())
  {
    v46 = a6;
    if (a2 | a1)
    {
      v28 = v47;
      sub_7666A0();
      (*(v48 + 104))(v28, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v15);
      return (*(v48 + 32))(v46, v28, v15);
    }

    v20 = sub_55BABC(a3, a4, 0, 1);
    v21 = v20;
    v22 = v20 >> 62;
    if (v20 >> 62)
    {
      v23 = sub_76A860();
      if (a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v23 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
      if (a3)
      {
LABEL_5:
        v24 = sub_759690();
        goto LABEL_12;
      }
    }

    v24 = 0;
LABEL_12:
    v45 = sub_55BE04(v24);

    if (a3)
    {
      v29 = sub_759690();
    }

    else
    {
      v29 = 0;
    }

    v30 = sub_760770();
    v31 = *(v30 - 8);
    (*(v31 + 16))(v14, a5, v30);
    (*(v31 + 56))(v14, 0, 1, v30);
    v32 = sub_55C32C(v29, v14);

    sub_10A2C(v14, &unk_94DF00);
    if (v22)
    {
      result = sub_76A860();
      if (result)
      {
LABEL_17:
        if ((v21 & 0xC000000000000001) != 0)
        {
          sub_76A770();
        }

        else
        {
          if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            return result;
          }
        }

        v33 = sub_765150();

        if (v33)
        {
          v34 = v47;
          (*(v48 + 104))(v47, enum case for LockupMediaLayout.DisplayType.landscape(_:), v15);
          return (*(v48 + 32))(v46, v34, v15);
        }

LABEL_24:
        v35 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v36 = *(v48 + 104);
        v36(v17, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v15);
        v37 = sub_75C920();
        v38 = *(v48 + 8);
        v38(v17, v15);
        if (((v23 >= v37) & v32) != 0 || (v35 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v15), v39 = sub_75C920(), v38(v17, v15), ((v23 >= v39) & v45) != 0) || (v35 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v15), v40 = sub_75C920(), v38(v17, v15), v23 >= v40) || (v35 = enum case for LockupMediaLayout.DisplayType.oneUp(_:), v36(v17, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v15), v41 = sub_75C920(), v38(v17, v15), v23 == v41))
        {
          v34 = v47;
          v42 = v47;
          v43 = v35;
        }

        else
        {
          v43 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v34 = v47;
          v42 = v47;
        }

        v36(v42, v43, v15);
        return (*(v48 + 32))(v46, v34, v15);
      }
    }

    else
    {
      result = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (result)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_24;
  }

  v25 = enum case for LockupMediaLayout.DisplayType.none(_:);
  v26 = *(v48 + 104);

  return v26(a6, v25, v15);
}

uint64_t sub_2BA684()
{
  v1 = sub_769240();
  v3 = v2;
  if (v1 == sub_769240() && v3 == v4)
  {

    goto LABEL_15;
  }

  v6 = sub_76A950();

  if (v6)
  {
LABEL_15:
    v14 = *(v0 + 144);

    return v14();
  }

  v7 = sub_769240();
  v9 = v8;
  if (v7 == sub_769240() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_76A950();

    if ((v12 & 1) == 0)
    {

      return sub_766670();
    }
  }

  return sub_7666A0();
}

uint64_t sub_2BA814()
{
  result = sub_764E30();
  if (!v1)
  {
    return sub_764E20();
  }

  return result;
}

id sub_2BA924()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MixedMediaLockupCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MixedMediaLockupCollectionViewCell()
{
  result = qword_94DEC8;
  if (!qword_94DEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2BAA6C()
{
  sub_2BAB94(319, &qword_940840, &type metadata accessor for ItemLayoutContext);
  if (v0 <= 0x3F)
  {
    sub_2BAB94(319, &qword_94DEE0, &type metadata accessor for MixedMediaLockupLayout.LockupPosition);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2BAB94(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t (*sub_2BAC0C(uint64_t **a1))()
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
  v2[4] = sub_2B942C(v2);
  return sub_21028;
}

uint64_t sub_2BAC7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_2BACD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_2BAD3C(uint64_t *a1))()
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
  *(v3 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_2BAEB4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2BAEFC()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_itemLayoutContext;
  v10 = sub_75C840();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_lockupView;
  *(v1 + v11) = [objc_allocWithZone(type metadata accessor for SmallLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_mediaView;
  *(v1 + v12) = [objc_allocWithZone(type metadata accessor for LockupMediaView()) init];
  v13 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_taglineLabel;
  if (qword_93DA80 != -1)
  {
    swift_once();
  }

  v14 = sub_7666D0();
  v15 = sub_BE38(v14, qword_99F778);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, v15, v14);
  (*(v16 + 56))(v8, 0, 1, v14);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = objc_allocWithZone(sub_75BB20());
  *(v1 + v13) = sub_75BB10();
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_pageTraits) = 0;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_overrideLockupPosition;
  v19 = sub_75FDA0();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_alwaysIncludeTaglineSpace) = 1;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider34MixedMediaLockupCollectionViewCell_searchAdTransparencyButton) = 0;
  sub_76A840();
  __break(1u);
}

id sub_2BB25C(uint64_t a1)
{
  v57 = a1;
  v1 = sub_BD88(&unk_948710);
  __chkstk_darwin(v1 - 8);
  v56 = v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = v45 - v4;
  v5 = sub_BD88(&unk_93FD30);
  __chkstk_darwin(v5 - 8);
  v54 = v45 - v6;
  v7 = sub_75A6B0();
  __chkstk_darwin(v7 - 8);
  v50 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v45 - v10;
  v11 = sub_BD88(&unk_948720);
  __chkstk_darwin(v11 - 8);
  v48 = v45 - v12;
  v13 = sub_75A6E0();
  v46 = *(v13 - 8);
  __chkstk_darwin(v13);
  v47 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75DC30();
  v52 = *(v15 - 8);
  v53 = v15;
  __chkstk_darwin(v15);
  v51 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_764590();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = sub_7645F0();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_764600();
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 != enum case for Uber.AssetType.artwork(_:))
  {
    if (v28 == enum case for Uber.AssetType.video(_:))
    {
      if (sub_7645D0())
      {
        sub_75C360();
        sub_768880();
        v45[1] = v60[0];
        (*(v46 + 104))(v47, enum case for VideoFillMode.scaleAspectFill(_:), v13);
        sub_764BC0();
        sub_765260();
        v31 = v48;
        sub_7666A0();

        v32 = sub_766690();
        (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
        sub_764B60();
        sub_764BA0();
        sub_764B70();
        sub_764B50();
        sub_764BB0();
        v33 = v51;
        sub_75DC10();
        sub_764B40();
        v34 = v54;
        sub_764BD0();
        v35 = sub_7570A0();
        (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
        v36 = v55;
        sub_764B90();
        v37 = v56;
        sub_764B80();
        type metadata accessor for VideoView();
        sub_2BBBB4(&qword_93F500, type metadata accessor for VideoView);
        v38 = sub_75C340();
        sub_10A2C(v37, &unk_948710);
        sub_10A2C(v36, &unk_948710);
        sub_10A2C(v34, &unk_93FD30);
        sub_10A2C(v60, &unk_9443A0);
        if (v38)
        {
          v39 = v38;
          sub_764BC0();
          v40 = sub_7651A0();

          [v39 setBackgroundColor:v40];

          (*(v52 + 8))(v33, v53);
        }

        else
        {
          (*(v52 + 8))(v33, v53);
        }

        return v38;
      }
    }

    else if (v28 != enum case for Uber.AssetType.icon(_:))
    {
      (*(v25 + 8))(v27, v24);
    }

    return 0;
  }

  v29 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  sub_7645B0();
  (*(v18 + 104))(v20, enum case for Uber.Style.inline(_:), v17);
  sub_2BBBB4(&qword_9424D8, &type metadata accessor for Uber.Style);
  sub_769430();
  sub_769430();
  if (v60[0] == v58 && v60[1] == v59)
  {
    v30 = *(v18 + 8);
    v30(v20, v17);
    v30(v23, v17);
  }

  else
  {
    v41 = sub_76A950();
    v42 = *(v18 + 8);
    v42(v20, v17);
    v42(v23, v17);

    if ((v41 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  [v29 setContentMode:2];
LABEL_11:
  v38 = v29;
  if (!sub_7645E0() || (v43 = sub_7651A0(), , !v43))
  {
    if (sub_764580())
    {
      v43 = sub_7651A0();
    }

    else
    {
      v43 = 0;
    }
  }

  [v38 setBackgroundColor:v43];

  return v38;
}

uint64_t sub_2BBBB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2BBBFC()
{

  return swift_deallocClassInstance();
}

void sub_2BBC68(void *a1)
{
  v2 = v1;
  type metadata accessor for RiverTodayCardCollectionViewCell();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
    v6 = v4;
    v7 = a1;
    v8 = v5;
    sub_765990();

    v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView);
    v10 = v9[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
    v9[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = 1;
    if ((v10 & 1) == 0)
    {
      v11 = v9;
LABEL_4:
      sub_4A3E2C();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      goto LABEL_6;
    }

    v17 = v16;
    v18 = *(v16 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
    v19 = a1;
    if (v18)
    {
      v20 = v18;
      sub_765990();
    }

    v21 = *(v17 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
    v7 = a1;
    if (v21)
    {
      v22 = v21[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
      v21[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = 1;
      v7 = a1;
      if ((v22 & 1) == 0)
      {
        v11 = a1;
        v7 = v21;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  v12 = swift_conformsToProtocol2();
  if (v12 && a1)
  {
    v13 = v12;
    sub_765B70();
    sub_28E908();
    v14 = a1;
    sub_75C750();
    if (v23)
    {
      ObjectType = swift_getObjectType();
      (*(v13 + 192))(*(v2 + 24), ObjectType, v13);
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (sub_765A70())
        {
          sub_75E5C0();
        }

        swift_getObjectType();
        sub_75D990();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

id sub_2BBEF4(void *a1)
{
  type metadata accessor for RiverTodayCardCollectionViewCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_riverView);
    v4 = v2;
    v5 = a1;
    v6 = v3;
    sub_765990();

    v7 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider32RiverTodayCardCollectionViewCell_gradientView);
    v8 = v7[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
    v7[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = 0;
    if (v8 == 1)
    {
      v9 = v7;
LABEL_4:
      sub_4A3E2C();
    }
  }

  else
  {
    type metadata accessor for ListTodayCardCollectionViewCell();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverView);
    v14 = a1;
    if (v13)
    {
      v15 = v13;
      sub_765990();
    }

    v16 = *(v12 + OBJC_IVAR____TtC18ASMessagesProvider31ListTodayCardCollectionViewCell_riverBackgroundView);
    v5 = a1;
    if (v16)
    {
      v17 = v16[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating];
      v16[OBJC_IVAR____TtC18ASMessagesProvider28RiverTodayCardBackgroundView_isAnimating] = 0;
      v5 = a1;
      if (v17 == 1)
      {
        v9 = a1;
        v5 = v16;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result && a1)
  {

    return [a1 setHidden:0];
  }

  return result;
}

uint64_t sub_2BC090()
{
  v1 = sub_BD88(&unk_944D90);
  __chkstk_darwin(v1 - 8);
  v2 = sub_BD88(&qword_94E008);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_75C790();
  sub_768B30();
  if ([*(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_reviewSummaryView) + OBJC_IVAR____TtC18ASMessagesProvider17ReviewSummaryView_bodyLabel) + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton) isHidden])
  {
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77E280;
    sub_763CC0();
    sub_763CB0();
  }

  else
  {
    sub_B8D1C();
    sub_768AF0();
    sub_BD88(&qword_943A50);
    sub_763CD0();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_77DC20;
    sub_763CC0();
    sub_763CB0();
    sub_763CA0();
  }

  v8 = v6;
  sub_2BC9DC(&qword_943A58, &type metadata accessor for SelectableShelfComponentViewReaction);
  sub_BD88(&qword_943A60);
  sub_273628();
  sub_76A5A0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2BC424@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_2BC480(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31ReviewSummaryCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_2BC570(uint64_t a1)
{
  result = sub_2BC9DC(&qword_94E000, type metadata accessor for ReviewSummaryCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2BC5C8()
{
  v0 = sub_764A60();
  v22 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v21 - v4;
  v21 = sub_75DAB0();
  v6 = *(v21 - 8);
  __chkstk_darwin(v21);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&qword_946810);
  __chkstk_darwin(v9 - 8);
  v10 = sub_BD88(&qword_943920);
  v23 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  sub_75A4C0();
  sub_2BC9DC(&qword_943928, &type metadata accessor for ReviewSummary);
  result = sub_75C750();
  v14 = v26;
  if (v26)
  {
    sub_75C800();
    sub_769060();
    sub_75C720();
    sub_75DA70();
    (*(v6 + 8))(v8, v21);
    sub_764A00();
    sub_2BC9DC(&qword_9467F0, &type metadata accessor for Shelf.PresentationHints);
    v15 = sub_76A520();
    v16 = *(v22 + 8);
    v16(v2, v0);
    v16(v5, v0);
    v17 = v24;
    swift_getKeyPath();
    sub_B8D1C();
    sub_769040();

    if (v15)
    {
      v18 = 0;
      v19 = 1;
    }

    else
    {
      v18 = v25;
      v20 = [v17 traitCollection];
      v19 = sub_7699D0();
    }

    sub_16EFE0(v14, v18, v19 & 1, v15 & 1);

    return (*(v23 + 8))(v12, v10);
  }

  return result;
}

uint64_t sub_2BC9DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2BCA38()
{
  result = qword_94E010;
  if (!qword_94E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E010);
  }

  return result;
}

unint64_t sub_2BCA90()
{
  result = qword_94E018;
  if (!qword_94E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E018);
  }

  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_766690();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = sub_766690();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppEventDetailPageLayout.Metrics.contentHorizontalMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 20);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.formattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 24);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleFormattedDateTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 28);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonTopMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 32);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonLeadingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 36);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.closeButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.muteButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 44);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 48);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleKindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 52);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 56);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.titleTrailingMargin.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 60);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleOverlayBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 64);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonSize.setter(double a1, double a2)
{
  result = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v6 = (v2 + *(result + 68));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleShareButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 72);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonLeadingContentInset.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 76);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.shareButtonBaseline.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 80);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 84);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleDetailTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 88);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleContentContainerTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 92);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.requirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 96);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleRequirementsTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 100);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.notifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 104);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleNotifyMeButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 108);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 112);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.separatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 116);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 120);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleSeparatorBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 124);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.lockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 128);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.accessibleLockupBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventDetailPageLayout.Metrics(0) + 132);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventDetailPageLayout.Metrics.init(artworkAspectRatio:contentHorizontalMargin:formattedDateTopMargin:accessibleFormattedDateTopMargin:closeButtonTopMargin:closeButtonLeadingMargin:closeButtonSize:muteButtonSpace:kindTopSpace:accessibleKindTopSpace:titleTopSpace:titleTrailingMargin:accessibleOverlayBottomSpace:shareButtonSize:accessibleShareButtonTopSpace:shareButtonLeadingContentInset:shareButtonBaseline:detailTopSpace:accessibleDetailTopSpace:accessibleContentContainerTopSpace:requirementsTopSpace:accessibleRequirementsTopSpace:notifyMeButtonTopSpace:accessibleNotifyMeButtonTopSpace:separatorTopSpace:separatorBottomSpace:accessibleSeparatorTopSpace:accessibleSeparatorBottomSpace:lockupBottomSpace:accessibleLockupBottomSpace:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, __int128 *a14, __int128 *a15, __int128 *a16, __int128 *a17, __int128 *a18, __int128 *a19, __int128 *a20, __int128 *a21, __int128 *a22, __int128 *a23, __int128 *a24, __int128 *a25, __int128 *a26, __int128 *a27, __int128 *a28, __int128 *a29, __int128 *a30, __int128 *a31, __int128 *a32, __int128 *a33)
{
  v44 = sub_766690();
  (*(*(v44 - 8) + 32))(a9, a1, v44);
  v45 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  sub_10914(a2, a9 + v45[5]);
  sub_10914(a3, a9 + v45[6]);
  sub_10914(a4, a9 + v45[7]);
  sub_10914(a5, a9 + v45[8]);
  sub_10914(a6, a9 + v45[9]);
  v46 = (a9 + v45[10]);
  *v46 = a10;
  v46[1] = a11;
  sub_10914(a7, a9 + v45[11]);
  sub_10914(a8, a9 + v45[12]);
  sub_10914(a14, a9 + v45[13]);
  sub_10914(a15, a9 + v45[14]);
  sub_10914(a16, a9 + v45[15]);
  sub_10914(a17, a9 + v45[16]);
  v47 = (a9 + v45[17]);
  *v47 = a12;
  v47[1] = a13;
  sub_10914(a18, a9 + v45[18]);
  sub_10914(a19, a9 + v45[19]);
  sub_10914(a20, a9 + v45[20]);
  sub_10914(a21, a9 + v45[21]);
  sub_10914(a22, a9 + v45[22]);
  sub_10914(a23, a9 + v45[23]);
  sub_10914(a24, a9 + v45[24]);
  sub_10914(a25, a9 + v45[25]);
  sub_10914(a26, a9 + v45[26]);
  sub_10914(a27, a9 + v45[27]);
  sub_10914(a28, a9 + v45[28]);
  sub_10914(a29, a9 + v45[29]);
  sub_10914(a30, a9 + v45[30]);
  sub_10914(a31, a9 + v45[31]);
  sub_10914(a32, a9 + v45[32]);
  v48 = a9 + v45[33];

  return sub_10914(a33, v48);
}

uint64_t sub_2BE534(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AppEventDetailPageLayout.init(metrics:shadowView:cardContentView:borderView:contentContainerView:mediaContainerView:artworkView:videoView:gradientBlurView:mediaReplicationView:overlayContentContainerView:contentBackgroundBlurView:formattedDateView:closeButtonView:kindLabel:titleLabel:shareButtonView:detailLabel:requirementsLabel:notifyMeButton:separatorView:lockupView:isCollapsing:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 *a12, uint64_t a13, __int128 *a14, uint64_t a15, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23, char a24)
{
  sub_2BEEE4(a1, a9);
  v29 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_10914(a2, a9 + v29[5]);
  sub_10914(a3, a9 + v29[6]);
  sub_10914(a4, a9 + v29[7]);
  sub_10914(a5, a9 + v29[8]);
  sub_10914(a6, a9 + v29[9]);
  sub_10914(a7, a9 + v29[10]);
  v30 = a9 + v29[11];
  v31 = *(a8 + 16);
  *v30 = *a8;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a8 + 32);
  v32 = a9 + v29[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  v34 = a9 + v29[13];
  v35 = *(a11 + 16);
  *v34 = *a11;
  *(v34 + 16) = v35;
  *(v34 + 32) = *(a11 + 32);
  sub_10914(a12, a9 + v29[14]);
  v36 = a9 + v29[15];
  v37 = *(a13 + 16);
  *v36 = *a13;
  *(v36 + 16) = v37;
  *(v36 + 32) = *(a13 + 32);
  sub_10914(a14, a9 + v29[16]);
  v38 = a9 + v29[17];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 16) = v39;
  *(v38 + 32) = *(a15 + 32);
  sub_10914(a16, a9 + v29[18]);
  sub_10914(a17, a9 + v29[19]);
  v40 = a9 + v29[20];
  v41 = *(a18 + 16);
  *v40 = *a18;
  *(v40 + 16) = v41;
  *(v40 + 32) = *(a18 + 32);
  sub_10914(a19, a9 + v29[21]);
  v42 = a9 + v29[22];
  v43 = *(a20 + 16);
  *v42 = *a20;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a20 + 32);
  v44 = a9 + v29[23];
  v45 = *(a21 + 16);
  *v44 = *a21;
  *(v44 + 16) = v45;
  *(v44 + 32) = *(a21 + 32);
  sub_10914(a22, a9 + v29[24]);
  result = sub_10914(a23, a9 + v29[25]);
  *(a9 + v29[26]) = a24;
  return result;
}

uint64_t sub_2BEEE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityLayout(in:)()
{
  if (sub_769A00())
  {
    return sub_7699D0() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t static AppEventDetailPageLayout.prefersCompactAccessibilityTitleLayout(in:)(void *a1)
{
  if ((sub_7699D0() & 1) == 0)
  {
    return 0;
  }

  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_769B50();

  return v3 & 1;
}

uint64_t AppEventDetailPageLayout.placeChildren(relativeTo:in:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 traitCollection];
  v11 = sub_7699E0();

  if (v11)
  {
    sub_2BF114(a1, a2, a3, a4, a5);
    goto LABEL_8;
  }

  v12 = [a1 traitCollection];
  if (sub_769A00())
  {
    v13 = sub_7699D0();

    if (v13)
    {
      sub_2C0B0C(a1, a2, a3, a4, a5);
      goto LABEL_8;
    }
  }

  else
  {
  }

  sub_2C21A0(a1, v14, v15, a4, a5);
LABEL_8:

  return sub_7664B0();
}

uint64_t sub_2BF114(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_76A920();
  v13 = *(v12 - 1);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  LODWORD(v177) = sub_769A00();

  v18 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_B170((*&v6 + v18[5]), *(*&v6 + v18[5] + 24));
  sub_766530();
  sub_B170((*&v6 + v18[6]), *(*&v6 + v18[6] + 24));
  sub_766530();
  sub_B170((*&v6 + v18[7]), *(*&v6 + v18[7] + 24));
  sub_766530();
  sub_B170((*&v6 + v18[8]), *(*&v6 + v18[8] + 24));
  sub_766530();
  v190.origin.x = a2;
  v190.origin.y = a3;
  v190.size.width = a4;
  v190.size.height = a5;
  CGRectGetHeight(v190);
  sub_766650();
  v20 = floor(v19) + 4.0;
  v191.origin.x = a2;
  v191.origin.y = a3;
  v191.size.width = a4;
  v191.size.height = a5;
  v21 = CGRectGetHeight(v191) + 4.0;
  sub_B170((*&v6 + v18[9]), *(*&v6 + v18[9] + 24));
  v181 = a1;
  sub_769D20();
  sub_766530();
  sub_B170((*&v6 + v18[10]), *(*&v6 + v18[10] + 24));
  sub_766530();
  sub_1ED18(*&v6 + v18[11], v188, &unk_943B10);
  if (v189)
  {
    sub_B170(v188, v189);
    sub_766530();
    sub_BEB8(v188);
  }

  else
  {
    sub_10A2C(v188, &unk_943B10);
  }

  sub_1ED18(*&v6 + v18[13], v188, &unk_943B10);
  v179 = a2;
  if (v189)
  {
    sub_B170(v188, v189);
    v192.origin.x = a2;
    v192.origin.y = a3;
    v192.size.width = a4;
    v192.size.height = a5;
    CGRectGetWidth(v192);
    v193.origin.x = v179;
    v193.origin.y = a3;
    v193.size.width = a4;
    v193.size.height = a5;
    CGRectGetHeight(v193);
    a2 = v179;
    sub_766530();
    sub_BEB8(v188);
  }

  else
  {
    sub_10A2C(v188, &unk_943B10);
  }

  v194.origin.x = 0.0;
  v194.origin.y = 0.0;
  v194.size.width = v20;
  v194.size.height = v21;
  v22 = CGRectGetMaxX(v194) + -4.0;
  v195.origin.x = a2;
  v195.origin.y = a3;
  v195.size.width = a4;
  v195.size.height = a5;
  Width = CGRectGetWidth(v195);
  v196.origin.x = 0.0;
  v196.origin.y = 0.0;
  v196.size.width = v20;
  v196.size.height = v21;
  v24 = Width - CGRectGetWidth(v196) + 4.0;
  v197.origin.x = a2;
  v197.origin.y = a3;
  v197.size.width = a4;
  v197.size.height = a5;
  v25 = CGRectGetHeight(v197) + 4.0;
  sub_B170((*&v6 + v18[14]), *(*&v6 + v18[14] + 24));
  sub_769D20();
  sub_766530();
  v26 = v18[15];
  v176 = v6;
  sub_1ED18(*&v6 + v26, v188, &unk_943B10);
  v180 = v12;
  v174 = a5;
  v175 = a3;
  if (v189)
  {
    sub_B170(v188, v189);
    sub_769D20();
    sub_766530();
    sub_BEB8(v188);
  }

  else
  {
    sub_10A2C(v188, &unk_943B10);
  }

  v27 = a4;
  *&v28 = COERCE_DOUBLE(type metadata accessor for AppEventDetailPageLayout.Metrics(0));
  v29 = v176;
  sub_B170((*&v176 + v28[5]), *(*&v176 + v28[5] + 24));
  sub_33964();
  sub_766700();
  v31 = v30;
  v32 = *(v13 + 8);
  *&v183 = v13 + 8;
  v33 = v180;
  v32(v16, v180);
  v198.origin.y = 0.0;
  v198.origin.x = v22;
  v198.size.width = v24;
  v198.size.height = v25;
  v34 = CGRectGetWidth(v198) - (v31 + v31);
  v199.origin.y = 0.0;
  v199.origin.x = v22;
  v199.size.width = v24;
  v199.size.height = v25;
  Height = CGRectGetHeight(v199);
  v36 = v28[9];
  v37 = (*&v29 + v28[10]);
  v38 = *v37;
  v166 = *(v37 + 1);
  v167 = v38;
  sub_B170((*&v29 + v36), *(*&v29 + v36 + 24));
  sub_33964();
  sub_766700();
  v32(v16, v33);
  v200.origin.y = 0.0;
  v200.origin.x = v31;
  v200.size.width = v34;
  v200.size.height = Height;
  CGRectGetHeight(v200);
  v39 = (*&v29 + v18[16]);
  v185 = v18;
  sub_B170(v39, v39[3]);
  sub_7665A0();
  v41 = v40;
  v43 = v42;
  sub_B170((*&v29 + v28[6]), *(*&v29 + v28[6] + 24));
  sub_33964();
  sub_766700();
  v45 = v44;
  v32(v16, v33);
  v201.origin.y = 0.0;
  v201.origin.x = v31;
  v201.size.width = v34;
  v201.size.height = Height;
  MinX = CGRectGetMinX(v201);
  v202.origin.y = 0.0;
  v202.origin.x = v31;
  v202.size.width = v34;
  v202.size.height = Height;
  v47 = v45 + CGRectGetMinY(v202);
  sub_B170(v39, v39[3]);
  v168 = MinX;
  v172 = v41;
  v171 = v43;
  sub_769D20();
  v48 = v33;
  sub_766530();
  v178 = v28;
  sub_B170((*&v29 + v28[8]), *(*&v29 + v28[8] + 24));
  sub_33964();
  sub_766700();
  v173 = v16;
  v184 = *&v32;
  v32(v16, v33);
  v203.origin.x = v179;
  v203.origin.y = v175;
  v203.size.width = v27;
  v203.size.height = v174;
  CGRectGetMaxX(v203);
  v204.origin.y = 0.0;
  v204.origin.x = v31;
  v169 = v34;
  v204.size.width = v34;
  v182 = Height;
  v204.size.height = Height;
  CGRectGetMinY(v204);
  sub_1ED18(*&v29 + v185[17], v188, &unk_943B10);
  v49 = v31;
  if (v189)
  {
    sub_B170(v188, v189);
    sub_769D20();
    sub_766530();
    sub_BEB8(v188);
  }

  else
  {
    sub_10A2C(v188, &unk_943B10);
  }

  v205.origin.x = v168;
  v205.origin.y = v47;
  v205.size.width = v172;
  v205.size.height = v171;
  MaxY = CGRectGetMaxY(v205);
  v51 = v176;
  v52 = (*&v176 + v178[17]);
  v53 = v52[1];
  v171 = *v52;
  sub_B170((*&v176 + v178[20]), *(*&v176 + v178[20] + 24));
  v54 = v173;
  sub_33964();
  sub_766700();
  v168 = v55;
  v56 = v184;
  (*&v184)(v54, v48);
  v57 = v185;
  *&v172 = v185[20];
  sub_1ED18(*&v51 + *&v172, &v186, &unk_943B10);
  v58 = v169;
  v170 = v27;
  v167 = v53;
  if (v187)
  {
    sub_10914(&v186, v188);
    v59 = v49;
    if (LOBYTE(v177))
    {
      v60 = v51;
      v61 = v178;
      sub_B170((*&v60 + v178[18]), *(*&v60 + v178[18] + 24));
      sub_33964();
      sub_766700();
      v63 = v62;
      (*&v56)(v54, v48);
      sub_B170((*&v176 + v61[19]), *(*&v176 + v61[19] + 24));
      sub_33964();
      sub_766700();
      v65 = v64;
      (*&v56)(v54, v48);
      v206.origin.y = 0.0;
      v206.origin.x = v49;
      v206.size.width = v58;
      v66 = v182;
      v206.size.height = v182;
      v67 = CGRectGetMinX(v206) - v65;
      v68 = MaxY + v63;
      sub_B170(v188, v189);
      v51 = v176;
      v69 = v171;
      sub_769D20();
      v57 = v185;
      sub_766530();
      v207.origin.x = v67;
      v207.origin.y = v68;
      v207.size.width = v69;
      v207.size.height = v53;
      MaxY = CGRectGetMaxY(v207) - v168;
      sub_BEB8(v188);
      goto LABEL_19;
    }

    sub_BEB8(v188);
  }

  else
  {
    sub_10A2C(&v186, &unk_943B10);
    v59 = v49;
  }

  v66 = v182;
LABEL_19:
  v70 = (*&v51 + v57[18]);
  sub_B170(v70, v70[3]);
  sub_7665A0();
  v72 = v71;
  v74 = v73;
  v75 = 12;
  if (LOBYTE(v177))
  {
    v75 = 13;
  }

  v76 = v178;
  sub_B170((*&v51 + v178[v75]), *(*&v51 + v178[v75] + 24));
  sub_33964();
  sub_766700();
  v78 = v77;
  v79 = v180;
  (*&v184)(v54, v180);
  v208.origin.y = 0.0;
  v208.origin.x = v59;
  v208.size.width = v58;
  v208.size.height = v66;
  v80 = CGRectGetMinX(v208);
  sub_B170(v70, v70[3]);
  sub_769D20();
  sub_766530();
  v209.origin.x = v80;
  v209.origin.y = MaxY + v78;
  v209.size.width = v72;
  v209.size.height = v74;
  v81 = CGRectGetMaxY(v209);
  sub_1ED18(*&v51 + *&v172, v188, &unk_943B10);
  v82 = v189 == 0;
  sub_10A2C(v188, &unk_943B10);
  if (((v82 | LODWORD(v177)) & 1) == 0)
  {
    sub_B170((*&v51 + v76[15]), *(*&v51 + v76[15] + 24));
    sub_33964();
    sub_766700();
    (*&v184)(v54, v79);
  }

  v210.origin.y = 0.0;
  v210.origin.x = v59;
  v210.size.width = v58;
  v83 = v58;
  v84 = v59;
  v85 = v182;
  v210.size.height = v182;
  CGRectGetHeight(v210);
  v86 = (*&v51 + v185[19]);
  sub_B170(v86, v86[3]);
  sub_7665A0();
  v88 = v87;
  v90 = v89;
  v166 = v91;
  sub_B170((*&v51 + v76[14]), *(*&v51 + v76[14] + 24));
  sub_33964();
  sub_766700();
  v93 = v92;
  (*&v184)(v54, v79);
  v211.origin.y = 0.0;
  v211.origin.x = v84;
  v211.size.width = v83;
  v211.size.height = v85;
  v94 = CGRectGetMinX(v211);
  v95 = v81 + v93;
  sub_B170(v86, v86[3]);
  v176 = v84;
  sub_769D20();
  sub_766530();
  v212.origin.x = v94;
  v212.origin.y = v95;
  v212.size.width = v88;
  v212.size.height = v90;
  v96 = CGRectGetMaxY(v212);
  sub_1ED18(*&v51 + *&v172, &v186, &unk_943B10);
  if (v187)
  {
    sub_10914(&v186, v188);
    if ((LOBYTE(v177) & 1) == 0)
    {
      v213.origin.x = v94;
      v213.origin.y = v95;
      v213.size.width = v88;
      v213.size.height = v90;
      CGRectGetMinY(v213);
      v214.origin.y = 0.0;
      v214.origin.x = v176;
      v214.size.width = v83;
      v214.size.height = v182;
      CGRectGetMaxX(v214);
      sub_B170(v188, v189);
      sub_769D20();
      sub_766530();
    }

    sub_BEB8(v188);
  }

  else
  {
    sub_10A2C(&v186, &unk_943B10);
  }

  v97 = v184;
  v98 = v173;
  v99 = v178;
  v100 = (*&v51 + v185[21]);
  sub_B170(v100, v100[3]);
  v101 = v182;
  sub_7665A0();
  v103 = v102;
  v105 = v104;
  sub_B170((*&v51 + v99[21]), *(*&v51 + v99[21] + 24));
  sub_33964();
  sub_766700();
  v107 = v106;
  (*&v97)(v98, v180);
  v215.origin.y = 0.0;
  v215.origin.x = v176;
  v215.size.width = v83;
  v215.size.height = v101;
  v108 = CGRectGetMinX(v215);
  v109 = v185;
  sub_B170(v100, v100[3]);
  v110 = v83;
  sub_769D20();
  sub_766530();
  v216.origin.x = v108;
  v216.origin.y = v96 + v107;
  v216.size.width = v103;
  v216.size.height = v105;
  v111 = CGRectGetMaxY(v216);
  sub_1ED18(*&v51 + v109[22], &v186, &qword_9417D0);
  if (v187)
  {
    sub_10914(&v186, v188);
    sub_B170(v188, v189);
    if (sub_766540())
    {
      sub_BEB8(v188);
      v112 = v180;
    }

    else
    {
      sub_B170(v188, v189);
      v113 = sub_766500();
      v112 = v180;
      if (v113)
      {
        sub_B170(v188, v189);
        v114 = v182;
        sub_7665A0();
        v116 = v115;
        v118 = v117;
        sub_B170((*&v51 + v99[24]), *(*&v51 + v99[24] + 24));
        sub_33964();
        sub_766700();
        v120 = v119;
        (*&v184)(v98, v112);
        v217.origin.y = 0.0;
        v217.origin.x = v176;
        v217.size.width = v83;
        v217.size.height = v114;
        v121 = CGRectGetMinX(v217);
        sub_B170(v188, v189);
        v110 = v83;
        sub_769D20();
        sub_766530();
        v218.origin.x = v121;
        v218.origin.y = v111 + v120;
        v218.size.width = v116;
        v218.size.height = v118;
        v111 = CGRectGetMaxY(v218);
      }

      sub_BEB8(v188);
    }

    v109 = v185;
  }

  else
  {
    sub_10A2C(&v186, &qword_9417D0);
    v112 = v180;
  }

  sub_1ED18(*&v51 + v109[23], &v186, &unk_943B10);
  if (v187)
  {
    sub_10914(&v186, v188);
    sub_B170(v188, v189);
    v122 = sub_766540();
    v123 = v184;
    if (v122)
    {
      v177 = v111;
    }

    else
    {
      sub_B170(v188, v189);
      v124 = v182;
      sub_7665A0();
      v126 = v125;
      v128 = v127;
      sub_B170((*&v51 + v99[26]), *(*&v51 + v99[26] + 24));
      sub_33964();
      sub_766700();
      v130 = v129;
      (*&v123)(v98, v112);
      v219.origin.y = 0.0;
      v219.origin.x = v176;
      v219.size.width = v83;
      v219.size.height = v124;
      v131 = CGRectGetMinX(v219);
      sub_B170(v188, v189);
      v110 = v83;
      sub_769D20();
      sub_766530();
      v220.origin.x = v131;
      v220.origin.y = v111 + v130;
      v220.size.width = v126;
      v220.size.height = v128;
      v177 = CGRectGetMaxY(v220);
    }

    sub_BEB8(v188);
  }

  else
  {
    v177 = v111;
    sub_10A2C(&v186, &unk_943B10);
    v123 = v184;
  }

  sub_B170((*&v51 + v99[32]), *(*&v51 + v99[32] + 24));
  sub_33964();
  sub_766700();
  v133 = v132;
  (*&v123)(v98, v112);
  v134 = (*&v51 + v185[25]);
  v135 = v112;
  v136 = v134[3];
  v180 = v134;
  sub_B170(v134, v136);
  v137 = v182;
  sub_7665A0();
  v139 = v138;
  sub_B170((*&v51 + v99[29]), *(*&v51 + v99[29] + 24));
  sub_33964();
  sub_766700();
  v141 = v140;
  (*&v123)(v98, v112);
  sub_B170((*&v51 + v99[28]), *(*&v51 + v99[28] + 24));
  sub_33964();
  v142 = v181;
  sub_766700();
  v144 = v143;
  (*&v123)(v98, v135);
  v145 = [v142 traitCollection];
  sub_767500();
  v147 = v146;

  *&v178 = v147;
  v183 = v141;
  v184 = v139;
  v148 = v133;
  v149 = v133 + v139 + v141 + v144 + v147;
  v150 = v177;
  v151 = v177 + v149;
  v221.origin.x = v179;
  v221.origin.y = v175;
  v221.size.width = v170;
  v221.size.height = v174;
  v152 = CGRectGetHeight(v221);
  v222.origin.y = 0.0;
  v153 = v110;
  v154 = v176;
  v222.origin.x = v176;
  v222.size.width = v153;
  v222.size.height = v137;
  v179 = CGRectGetMinX(v222);
  if (v152 >= v151)
  {
    v227.origin.y = 0.0;
    v227.origin.x = v154;
    v227.size.width = v153;
    v227.size.height = v137;
    v159 = CGRectGetHeight(v227);
    v160 = v184;
    v161 = v159 - v184 - v148;
    v228.origin.y = 0.0;
    v228.origin.x = v154;
    v228.size.width = v153;
    v228.size.height = v137;
    v162 = CGRectGetWidth(v228);
    sub_B170(v180, v180[3]);
    v163 = v179;
    sub_769D20();
    sub_766530();
    v229.origin.y = 0.0;
    v229.origin.x = v154;
    v229.size.width = v153;
    v229.size.height = v137;
    CGRectGetMinX(v229);
    v230.origin.x = v163;
    v230.origin.y = v161;
    v230.size.width = v162;
    v230.size.height = v160;
    CGRectGetMinY(v230);
    v231.origin.y = 0.0;
    v231.origin.x = v154;
    v231.size.width = v153;
    v231.size.height = v137;
    CGRectGetWidth(v231);
    sub_B170((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
  }

  else
  {
    v155 = v150 + v144;
    v223.origin.y = 0.0;
    v223.origin.x = v154;
    v223.size.width = v153;
    v223.size.height = v137;
    v156 = CGRectGetWidth(v223);
    sub_B170((*&v51 + v185[24]), *(*&v51 + v185[24] + 24));
    v157 = v179;
    v158 = *&v178;
    sub_769D20();
    sub_766530();
    v224.origin.y = 0.0;
    v224.origin.x = v154;
    v224.size.width = v153;
    v224.size.height = v137;
    CGRectGetMinX(v224);
    v225.origin.x = v157;
    v225.origin.y = v155;
    v225.size.width = v156;
    v225.size.height = v158;
    CGRectGetMaxY(v225);
    v226.origin.y = 0.0;
    v226.origin.x = v154;
    v226.size.width = v153;
    v226.size.height = v137;
    CGRectGetWidth(v226);
    sub_B170(v180, v180[3]);
  }

  sub_769D20();
  return sub_766530();
}

uint64_t sub_2C0B0C(void *a1, double a2, double a3, CGFloat a4, double a5)
{
  v178 = sub_76A920();
  v11 = *(v178 - 8);
  __chkstk_darwin(v178);
  v13 = &v172 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766660();
  v15 = v14;
  v16 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_B170((v5 + v16[9]), *(v5 + v16[9] + 24));
  sub_766530();
  v191.origin.x = 0.0;
  v191.origin.y = 0.0;
  v191.size.width = a4;
  v191.size.height = v15;
  CGRectGetWidth(v191);
  v192.origin.x = 0.0;
  v192.origin.y = 0.0;
  v192.size.width = a4;
  v177 = v15;
  v192.size.height = v15;
  CGRectGetHeight(v192);
  sub_B170((v5 + v16[10]), *(v5 + v16[10] + 24));
  sub_766530();
  sub_1ED18(v5 + v16[11], v189, &unk_943B10);
  if (v190)
  {
    sub_B170(v189, v190);
    sub_766530();
    sub_BEB8(v189);
  }

  else
  {
    sub_10A2C(v189, &unk_943B10);
  }

  sub_1ED18(v5 + v16[12], v189, &unk_943B10);
  if (v190)
  {
    sub_B170(v189, v190);
    sub_766530();
    sub_BEB8(v189);
  }

  else
  {
    sub_10A2C(v189, &unk_943B10);
  }

  sub_B170((v5 + v16[14]), *(v5 + v16[14] + 24));
  sub_766530();
  v17 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v183 = v16;
  v18 = v17;
  sub_B170((v5 + *(v17 + 20)), *(v5 + *(v17 + 20) + 24));
  sub_33964();
  sub_766700();
  v20 = v19;
  v21 = *(v11 + 8);
  v22 = v178;
  v21(v13, v178);
  v23 = sub_705B8(a2, a3, a4, a5, 0.0, v20);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_B170((v5 + v18[8]), *(v5 + v18[8] + 24));
  sub_33964();
  sub_766700();
  v173 = v30;
  v174 = v13;
  v175 = v21;
  v21(v13, v22);
  v182 = v18;
  v31 = v18[10];
  v32 = v183;
  v176 = *(v5 + v31 + 8);
  v193.origin.x = v23;
  v193.origin.y = v25;
  v193.size.width = v27;
  v184 = v29;
  v193.size.height = v29;
  CGRectGetMinY(v193);
  v33 = v32[17];
  v186 = v5;
  sub_1ED18(v5 + v33, v189, &unk_943B10);
  v185 = v11 + 8;
  v181 = v23;
  if (v190)
  {
    sub_B170(v189, v190);
    v34 = v184;
    sub_769D20();
    sub_766530();
    sub_BEB8(v189);
    v35 = a4;
    v36 = v34;
  }

  else
  {
    sub_10A2C(v189, &unk_943B10);
    v35 = a4;
    v36 = v184;
  }

  v179 = v25;
  v37 = v178;
  v38 = 0;
  v39 = 0;
  v176 = v35;
  v40 = v177;
  Height = CGRectGetHeight(*(&v35 - 2));
  v42 = (v186 + v32[18]);
  sub_B170(v42, v42[3]);
  sub_7665A0();
  v173 = v43;
  v45 = v44;
  v46 = a1;
  v47 = [a1 traitCollection];
  v48 = sub_7699D0();
  v49 = v27;
  v180 = v27;
  v50 = v174;
  if (v48)
  {
    v51 = [v47 preferredContentSizeCategory];
    v52 = sub_769B50();

    v53 = v181;
    if (v52)
    {
      v54 = 16;
      v55 = v37;
      v56 = v175;
      v57 = v46;
      goto LABEL_15;
    }
  }

  else
  {

    v53 = v181;
  }

  v58 = v186;
  v59 = (v186 + v183[19]);
  sub_B170(v59, v59[3]);
  v57 = v46;
  sub_7665A0();
  v61 = v60;
  v63 = v62;
  sub_B170((v58 + v182[16]), *(v58 + v182[16] + 24));
  sub_33964();
  sub_766700();
  v65 = v64;
  v66 = v37;
  v55 = v37;
  v56 = v175;
  v175(v50, v66);
  v67 = Height - v65 - v63;
  v194.origin.x = v53;
  v194.origin.y = v179;
  v194.size.width = v180;
  v194.size.height = v184;
  MinX = CGRectGetMinX(v194);
  sub_B170(v59, v59[3]);
  sub_769D20();
  sub_766530();
  v195.origin.x = MinX;
  v195.origin.y = v67;
  v195.size.width = v61;
  v49 = v180;
  v36 = v184;
  v195.size.height = v63;
  Height = CGRectGetMinY(v195);
  v54 = 14;
LABEL_15:
  v69 = v182;
  sub_B170((v186 + v182[v54]), *(v186 + v182[v54] + 24));
  sub_33964();
  sub_766700();
  v71 = v70;
  v72 = v56;
  v56(v50, v55);
  v73 = Height - v71 - v45;
  v196.origin.x = v53;
  v74 = v179;
  v196.origin.y = v179;
  v196.size.width = v49;
  v196.size.height = v36;
  v75 = CGRectGetMinX(v196);
  sub_B170(v42, v42[3]);
  v76 = v173;
  sub_769D20();
  sub_766530();
  v77 = v186;
  sub_B170((v186 + v69[13]), *(v186 + v69[13] + 24));
  sub_33964();
  sub_766700();
  v79 = v78;
  v56(v50, v55);
  v197.origin.x = v75;
  v197.origin.y = v73;
  v197.size.width = v76;
  v197.size.height = v45;
  v80 = CGRectGetMinY(v197) - v79;
  v81 = v183;
  v82 = (v77 + v183[16]);
  sub_B170(v82, v82[3]);
  sub_7665A0();
  v84 = v83;
  v86 = v85;
  v87 = v80 - v85;
  v198.origin.x = v181;
  v198.origin.y = v74;
  v198.size.width = v49;
  v198.size.height = v36;
  v88 = CGRectGetMinX(v198);
  sub_B170(v82, v82[3]);
  sub_769D20();
  sub_766530();
  sub_B170((v77 + v182[7]), *(v77 + v182[7] + 24));
  sub_33964();
  sub_766700();
  v56(v50, v55);
  v199.origin.x = v88;
  v89 = v181;
  v199.origin.y = v87;
  v199.size.width = v84;
  v199.size.height = v86;
  CGRectGetMinY(v199);
  sub_1ED18(v77 + v81[20], &v187, &unk_943B10);
  v90 = v55;
  if (v188)
  {
    sub_10914(&v187, v189);
    v91 = v182;
    sub_B170((v186 + v182[20]), *(v186 + v182[20] + 24));
    sub_33964();
    sub_766700();
    v72(v50, v55);
    v200.origin.x = v89;
    v200.origin.y = v179;
    v200.size.width = v180;
    v200.size.height = v184;
    CGRectGetMinX(v200);
    sub_B170(v189, v190);
    sub_769D20();
    sub_766530();
    sub_BEB8(v189);
    v92 = v176;
  }

  else
  {
    sub_10A2C(&v187, &unk_943B10);
    v92 = v176;
    v91 = v182;
  }

  v93 = 0;
  v94 = 0;
  v95 = v177;
  MaxY = CGRectGetMaxY(*(&v92 - 2));
  v97 = [v57 traitCollection];
  if (sub_7699D0())
  {
    v98 = [v97 preferredContentSizeCategory];
    v99 = sub_769B50();

    if (v99)
    {
      v100 = v186;
      v101 = (v186 + v183[19]);
      sub_B170(v101, v101[3]);
      v102 = v180;
      v103 = v184;
      sub_7665A0();
      v105 = v104;
      v177 = v106;
      sub_B170((v100 + v91[23]), *(v100 + v91[23] + 24));
      sub_33964();
      sub_766700();
      v108 = v107;
      v72(v50, v90);
      v201.origin.x = v181;
      v201.origin.y = v179;
      v201.size.width = v102;
      v201.size.height = v103;
      v109 = CGRectGetMinX(v201);
      v110 = MaxY + v108;
      sub_B170(v101, v101[3]);
      v111 = v177;
      sub_769D20();
      sub_766530();
      sub_B170((v100 + v91[22]), *(v100 + v91[22] + 24));
      sub_33964();
      sub_766700();
      v113 = v112;
      v114 = v178;
      (v72)(v50);
      v202.origin.x = v109;
      v202.origin.y = v110;
      v202.size.width = v105;
      v202.size.height = v111;
      v177 = CGRectGetMaxY(v202);
      goto LABEL_23;
    }
  }

  else
  {
  }

  v177 = MaxY;
  sub_B170((v186 + v91[23]), *(v186 + v91[23] + 24));
  sub_33964();
  sub_766700();
  v113 = v115;
  v114 = v55;
  v72(v50, v55);
LABEL_23:
  v116 = v183;
  v117 = v186;
  v118 = (v186 + v183[21]);
  sub_B170(v118, v118[3]);
  v119 = v180;
  v120 = v184;
  sub_7665A0();
  v122 = v121;
  v124 = v123;
  v203.origin.x = v181;
  v203.origin.y = v179;
  v203.size.width = v119;
  v203.size.height = v120;
  v125 = CGRectGetMinX(v203);
  v126 = v113 + v177;
  sub_B170(v118, v118[3]);
  sub_769D20();
  sub_766530();
  v204.origin.x = v125;
  v204.origin.y = v126;
  v204.size.width = v122;
  v204.size.height = v124;
  v127 = CGRectGetMaxY(v204);
  sub_1ED18(v117 + v116[22], &v187, &qword_9417D0);
  if (!v188)
  {
    sub_10A2C(&v187, &qword_9417D0);
    goto LABEL_27;
  }

  sub_10914(&v187, v189);
  sub_B170(v189, v190);
  if (sub_766540())
  {
    sub_BEB8(v189);
LABEL_27:
    v128 = v182;
    goto LABEL_31;
  }

  sub_B170(v189, v190);
  v129 = sub_766500();
  v128 = v182;
  if (v129)
  {
    sub_B170(v189, v190);
    v130 = v180;
    v131 = v184;
    sub_7665A0();
    v177 = v132;
    v134 = v133;
    sub_B170((v186 + v128[25]), *(v186 + v128[25] + 24));
    sub_33964();
    sub_766700();
    v136 = v135;
    v72(v50, v114);
    v205.origin.x = v181;
    v205.origin.y = v179;
    v205.size.width = v130;
    v205.size.height = v131;
    v137 = CGRectGetMinX(v205);
    sub_B170(v189, v190);
    v138 = v177;
    sub_769D20();
    sub_766530();
    v206.origin.x = v137;
    v206.origin.y = v127 + v136;
    v206.size.width = v138;
    v206.size.height = v134;
    v127 = CGRectGetMaxY(v206);
  }

  sub_BEB8(v189);
LABEL_31:
  sub_1ED18(v186 + v183[23], &v187, &unk_943B10);
  if (v188)
  {
    sub_10914(&v187, v189);
    sub_B170(v189, v190);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(v189, v190);
      v177 = v127;
      v139 = v180;
      v140 = v184;
      sub_7665A0();
      v142 = v141;
      v144 = v143;
      sub_B170((v186 + v128[27]), *(v186 + v128[27] + 24));
      sub_33964();
      sub_766700();
      v146 = v145;
      v72(v50, v114);
      v207.origin.x = v181;
      v207.origin.y = v179;
      v207.size.width = v139;
      v207.size.height = v140;
      v147 = CGRectGetMinX(v207);
      v148 = v177 + v146;
      sub_B170(v189, v190);
      sub_769D20();
      sub_766530();
      v208.origin.x = v147;
      v208.origin.y = v148;
      v208.size.width = v142;
      v208.size.height = v144;
      v127 = CGRectGetMaxY(v208);
    }

    sub_BEB8(v189);
  }

  else
  {
    sub_10A2C(&v187, &unk_943B10);
  }

  v149 = v186;
  sub_B170((v186 + v128[30]), *(v186 + v128[30] + 24));
  sub_33964();
  sub_766700();
  v151 = v150;
  v72(v50, v114);
  v152 = [v57 traitCollection];
  sub_767500();
  v154 = v153;

  v155 = v181;
  v209.origin.x = v181;
  v156 = v179;
  v209.origin.y = v179;
  v157 = v180;
  v209.size.width = v180;
  v158 = v184;
  v209.size.height = v184;
  v159 = CGRectGetMinX(v209);
  v177 = v127 + v151;
  v210.origin.x = v155;
  v210.origin.y = v156;
  v210.size.width = v157;
  v210.size.height = v158;
  Width = CGRectGetWidth(v210);
  v161 = v183;
  sub_B170((v149 + v183[24]), *(v149 + v183[24] + 24));
  sub_769D20();
  sub_766530();
  sub_B170((v149 + v128[31]), *(v149 + v128[31] + 24));
  sub_33964();
  sub_766700();
  v163 = v162;
  v72(v50, v114);
  v211.origin.x = v159;
  v211.origin.y = v177;
  v211.size.width = Width;
  v211.size.height = v154;
  v164 = v163 + CGRectGetMaxY(v211);
  v165 = v161;
  v166 = (v149 + v161[25]);
  sub_B170(v166, v166[3]);
  sub_7665A0();
  v168 = v167;
  v212.origin.x = v155;
  v212.origin.y = v156;
  v212.size.width = v157;
  v212.size.height = v158;
  v169 = CGRectGetMinX(v212);
  v213.origin.x = v155;
  v213.origin.y = v156;
  v213.size.width = v157;
  v213.size.height = v158;
  v170 = CGRectGetWidth(v213);
  sub_B170(v166, v166[3]);
  sub_769D20();
  sub_766530();
  sub_B170((v149 + v182[33]), *(v149 + v182[33] + 24));
  sub_33964();
  sub_766700();
  v175(v50, v178);
  v214.origin.x = v169;
  v214.origin.y = v164;
  v214.size.width = v170;
  v214.size.height = v168;
  CGRectGetMaxY(v214);
  sub_B170((v149 + v165[8]), *(v149 + v165[8] + 24));
  sub_766530();
  sub_B170((v149 + v165[5]), *(v149 + v165[5] + 24));
  sub_766530();
  sub_B170((v149 + v165[6]), *(v149 + v165[6] + 24));
  sub_766530();
  sub_B170((v149 + v165[7]), *(v149 + v165[7] + 24));
  return sub_766530();
}

uint64_t sub_2C21A0(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v125 = sub_76A920();
  v10 = *(v125 - 8);
  __chkstk_darwin(v125);
  v12 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_766660();
  if (v13 >= a5)
  {
    v13 = a5;
  }

  v14 = floor(v13);
  v15 = type metadata accessor for AppEventDetailPageLayout(0);
  sub_B170((v5 + v15[5]), *(v5 + v15[5] + 24));
  sub_766530();
  sub_B170((v5 + v15[6]), *(v5 + v15[6] + 24));
  sub_766530();
  sub_B170((v5 + v15[7]), *(v5 + v15[7] + 24));
  sub_766530();
  sub_B170((v5 + v15[8]), *(v5 + v15[8] + 24));
  sub_766530();
  sub_B170((v5 + v15[9]), *(v5 + v15[9] + 24));
  sub_766530();
  sub_B170((v5 + v15[10]), *(v5 + v15[10] + 24));
  sub_766530();
  sub_1ED18(v5 + v15[11], v132, &unk_943B10);
  if (v133)
  {
    sub_B170(v132, v133);
    sub_766530();
    sub_BEB8(v132);
  }

  else
  {
    sub_10A2C(v132, &unk_943B10);
  }

  sub_1ED18(v5 + v15[12], v132, &unk_943B10);
  if (v133)
  {
    sub_B170(v132, v133);
    sub_766530();
    sub_BEB8(v132);
  }

  else
  {
    sub_10A2C(v132, &unk_943B10);
  }

  sub_B170((v5 + v15[14]), *(v5 + v15[14] + 24));
  sub_766530();
  v16 = type metadata accessor for AppEventDetailPageLayout.Metrics(0);
  v128 = v15;
  v17 = v16;
  sub_B170((v5 + *(v16 + 20)), *(v5 + *(v16 + 20) + 24));
  sub_33964();
  sub_766700();
  v19 = v18;
  v20 = *(v10 + 8);
  v129 = v10 + 8;
  v21 = v125;
  v20(v12, v125);
  MinX = v19;
  v22 = sub_705B8(0.0, 0.0, a4, v14, 0.0, v19);
  v121 = a4;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v17[9];
  v31 = (v5 + v17[10]);
  v32 = *v31;
  v122 = v31[1];
  v123 = v32;
  sub_B170((v5 + v30), *(v5 + v30 + 24));
  sub_33964();
  sub_766700();
  v20(v12, v21);
  sub_B170((v5 + v17[11]), *(v5 + v17[11] + 24));
  sub_33964();
  sub_766700();
  v20(v12, v21);
  v134.origin.x = v23;
  v134.origin.y = v25;
  v134.size.width = v27;
  v134.size.height = v29;
  CGRectGetHeight(v134);
  v33 = (v5 + v128[16]);
  sub_B170(v33, v33[3]);
  sub_7665A0();
  sub_B170((v5 + v17[6]), *(v5 + v17[6] + 24));
  sub_33964();
  sub_766700();
  v20(v12, v21);
  v34 = v23;
  v135.origin.x = v23;
  v135.origin.y = v25;
  v135.size.width = v27;
  v135.size.height = v29;
  CGRectGetMinX(v135);
  v136.origin.x = v23;
  v136.origin.y = v25;
  v136.size.width = v27;
  v136.size.height = v29;
  CGRectGetMinY(v136);
  sub_B170(v33, v33[3]);
  v35 = v27;
  sub_769D20();
  sub_766530();
  v127 = v17;
  v36 = v17[8];
  v37 = v128;
  sub_B170((v5 + v36), *(v5 + v36 + 24));
  sub_33964();
  sub_766700();
  v126 = v20;
  v20(v12, v21);
  v137.origin.x = v34;
  v137.origin.y = v25;
  v137.size.width = v27;
  v137.size.height = v29;
  CGRectGetMinY(v137);
  sub_1ED18(v5 + v37[17], v132, &unk_943B10);
  if (v133)
  {
    sub_B170(v132, v133);
    sub_769D20();
    sub_766530();
    sub_BEB8(v132);
  }

  else
  {
    sub_10A2C(v132, &unk_943B10);
  }

  v38 = (v5 + v37[25]);
  sub_B170(v38, v38[3]);
  sub_7665A0();
  v40 = v39;
  v41 = v127;
  sub_B170((v5 + v127[32]), *(v5 + v127[32] + 24));
  sub_33964();
  sub_766700();
  v43 = v42;
  v44 = v125;
  v126(v12, v125);
  v138.origin.x = v34;
  v138.origin.y = v25;
  v138.size.width = v35;
  v138.size.height = v29;
  MinX = CGRectGetMinX(v138);
  v139.origin.x = v34;
  v139.origin.y = v25;
  v139.size.width = v35;
  v139.size.height = v29;
  Height = CGRectGetHeight(v139);
  v123 = v40;
  v122 = Height - v40 - v43;
  v140.origin.x = v34;
  v140.origin.y = v25;
  v140.size.width = v35;
  v140.size.height = v29;
  Width = CGRectGetWidth(v140);
  sub_B170(v38, v38[3]);
  sub_769D20();
  v47 = v44;
  v48 = v128;
  sub_766530();
  sub_B170((v5 + v41[29]), *(v5 + v41[29] + 24));
  sub_33964();
  sub_766700();
  v50 = v49;
  v51 = v47;
  v52 = v126;
  v126(v12, v51);
  v53 = [a1 traitCollection];
  sub_767500();
  v55 = v54;

  v141.origin.x = v34;
  v141.origin.y = v25;
  v141.size.width = v35;
  v141.size.height = v29;
  v56 = CGRectGetMinX(v141);
  v142.origin.x = MinX;
  v142.origin.y = v122;
  v142.size.width = Width;
  v57 = v34;
  v142.size.height = v123;
  v58 = CGRectGetMinY(v142) - v50 - v55;
  v143.origin.x = v57;
  v143.origin.y = v25;
  v143.size.width = v35;
  v143.size.height = v29;
  v59 = CGRectGetWidth(v143);
  sub_B170((v6 + v48[24]), *(v6 + v48[24] + 24));
  MinX = v57;
  sub_769D20();
  sub_766530();
  v144.origin.x = v56;
  v144.origin.y = v58;
  v144.size.width = v59;
  v144.size.height = v55;
  MinY = CGRectGetMinY(v144);
  v61 = v41[28];
  v62 = v125;
  sub_B170((v6 + v61), *(v6 + v61 + 24));
  sub_33964();
  sub_766700();
  v64 = v63;
  v52(v12, v62);
  v65 = MinY - v64;
  sub_1ED18(v6 + v48[23], &v130, &unk_943B10);
  if (!v131)
  {
    sub_10A2C(&v130, &unk_943B10);
    goto LABEL_16;
  }

  sub_10914(&v130, v132);
  sub_B170(v132, v133);
  if (sub_766540())
  {
    sub_BEB8(v132);
    v52 = v126;
LABEL_16:
    v66 = v29;
    goto LABEL_18;
  }

  sub_B170(v132, v133);
  v66 = v29;
  sub_7665A0();
  v68 = v67;
  v70 = v69;
  v145.origin.x = MinX;
  v145.origin.y = v25;
  v145.size.width = v35;
  v145.size.height = v29;
  v71 = CGRectGetMinX(v145);
  sub_B170(v132, v133);
  sub_769D20();
  sub_766530();
  v146.origin.x = v71;
  v146.origin.y = v65 - v70;
  v146.size.width = v68;
  v146.size.height = v70;
  v72 = CGRectGetMinY(v146);
  sub_B170((v6 + v127[26]), *(v6 + v127[26] + 24));
  sub_33964();
  sub_766700();
  v74 = v73;
  v52 = v126;
  v126(v12, v62);
  v65 = v72 - v74;
  sub_BEB8(v132);
LABEL_18:
  sub_1ED18(v6 + v128[22], &v130, &qword_9417D0);
  if (v131)
  {
    sub_10914(&v130, v132);
    sub_B170(v132, v133);
    if ((sub_766540() & 1) == 0)
    {
      sub_B170(v132, v133);
      if (sub_766500())
      {
        sub_B170(v132, v133);
        sub_7665A0();
        v76 = v75;
        v78 = v77;
        v79 = v65 - v77;
        v147.origin.x = MinX;
        v147.origin.y = v25;
        v147.size.width = v35;
        v147.size.height = v66;
        v80 = CGRectGetMinX(v147);
        sub_B170(v132, v133);
        sub_769D20();
        sub_766530();
        v148.origin.x = v80;
        v148.origin.y = v79;
        v148.size.width = v76;
        v148.size.height = v78;
        v81 = CGRectGetMinY(v148);
        sub_B170((v6 + v127[24]), *(v6 + v127[24] + 24));
        sub_33964();
        sub_766700();
        v83 = v82;
        v52(v12, v62);
        v65 = v81 - v83;
      }
    }

    sub_BEB8(v132);
  }

  else
  {
    sub_10A2C(&v130, &qword_9417D0);
  }

  v84 = v128;
  v85 = (v6 + v128[21]);
  sub_B170(v85, v85[3]);
  sub_7665A0();
  v87 = v86;
  v89 = v88;
  v90 = v65 - v88;
  v149.origin.x = MinX;
  v149.origin.y = v25;
  v149.size.width = v35;
  v149.size.height = v66;
  v91 = CGRectGetMinX(v149);
  sub_B170(v85, v85[3]);
  sub_769D20();
  sub_766530();
  v150.origin.x = v91;
  v150.origin.y = v90;
  v150.size.width = v87;
  v150.size.height = v89;
  v92 = CGRectGetMinY(v150);
  v93 = v127;
  sub_B170((v6 + v127[21]), *(v6 + v127[21] + 24));
  sub_33964();
  sub_766700();
  v95 = v94;
  v96 = v126;
  v126(v12, v62);
  v97 = v92 - v95;
  v98 = (v6 + v93[17]);
  v99 = *v98;
  v121 = v98[1];
  *&v123 = v84[20];
  sub_1ED18(v6 + *&v123, v132, &unk_943B10);
  v100 = v133;
  sub_10A2C(v132, &unk_943B10);
  if (v100)
  {
    sub_B170((v6 + v127[15]), *(v6 + v127[15] + 24));
    sub_33964();
    sub_766700();
    v96(v12, v62);
  }

  v122 = v99;
  v101 = MinX;
  v151.origin.x = MinX;
  v151.origin.y = v25;
  v151.size.width = v35;
  v151.size.height = v66;
  CGRectGetHeight(v151);
  v102 = v128;
  v103 = (v6 + v128[19]);
  sub_B170(v103, v103[3]);
  sub_7665A0();
  v105 = v104;
  v106 = v25;
  v107 = v101;
  v109 = v108;
  v120 = v110;
  v111 = v97 - v108;
  v152.origin.x = v101;
  v152.origin.y = v106;
  v152.size.width = v35;
  v152.size.height = v66;
  v112 = CGRectGetMinX(v152);
  sub_B170(v103, v103[3]);
  sub_769D20();
  sub_766530();
  v116 = v112;
  v153.origin.x = v112;
  v117 = v111;
  v153.origin.y = v111;
  v119 = v105;
  v153.size.width = v105;
  v118 = v109;
  v153.size.height = v109;
  CGRectGetMinY(v153);
  sub_B170((v6 + v127[14]), *(v6 + v127[14] + 24));
  sub_33964();
  sub_766700();
  v96(v12, v62);
  v113 = (v6 + v102[18]);
  sub_B170(v113, v113[3]);
  sub_7665A0();
  v154.origin.x = v107;
  v154.origin.y = v106;
  v154.size.width = v35;
  v154.size.height = v66;
  CGRectGetMinX(v154);
  sub_B170(v113, v113[3]);
  sub_769D20();
  sub_766530();
  sub_1ED18(v6 + *&v123, &v130, &unk_943B10);
  if (!v131)
  {
    return sub_10A2C(&v130, &unk_943B10);
  }

  sub_10914(&v130, v132);
  sub_B170((v6 + v127[20]), *(v6 + v127[20] + 24));
  sub_33964();
  sub_766700();
  v96(v12, v62);
  v155.origin.x = v116;
  v155.origin.y = v117;
  v155.size.width = v119;
  v155.size.height = v118;
  CGRectGetMinY(v155);
  v156.origin.x = v107;
  v156.origin.y = v106;
  v156.size.width = v35;
  v156.size.height = v66;
  CGRectGetMaxX(v156);
  sub_B170(v132, v133);
  sub_769D20();
  sub_766530();
  return sub_BEB8(v132);
}

void sub_2C359C()
{
  type metadata accessor for AppEventDetailPageLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &unk_94E830);
    if (v1 <= 0x3F)
    {
      sub_7E0B0(319, &qword_94E850, &unk_9418A0);
      if (v2 <= 0x3F)
      {
        sub_70B18(319, &qword_941880);
        if (v3 <= 0x3F)
        {
          sub_7E0B0(319, &unk_94E840, &unk_941890);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2C3744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 24);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_2C3834(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_2C38F4()
{
  sub_766690();
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &qword_943C60);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

char *sub_2C39F4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v14 = [v13 contentView];
  [v14 addSubview:*&v13[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView]];

  return v13;
}

void sub_2C3C1C()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel);
  if (qword_93C420 != -1)
  {
    v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel);
    swift_once();
    v2 = v4;
  }

  [v2 setTextColor:qword_946630];
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_hasChevron) = 0;
  sub_14F5D4(v3);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight) = 0;
}

id sub_2C3E9C(char a1)
{
  ObjectType = swift_getObjectType();
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "setHighlighted:", a1 & 1);
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider26FootnoteCollectionViewCell_footnoteView];
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v8, "isHighlighted");
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_isHighlighted) = v5;
  if (v5 && *(v4 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLightensOnHighlight) == 1)
  {
    if (qword_93C428 != -1)
    {
      swift_once();
    }

    v6 = &qword_946638;
  }

  else
  {
    if (qword_93C420 != -1)
    {
      swift_once();
    }

    v6 = &qword_946630;
  }

  return [*(v4 + OBJC_IVAR____TtC18ASMessagesProvider12FootnoteView_textLabel) setTextColor:*v6];
}

uint64_t type metadata accessor for FootnoteCollectionViewCell()
{
  result = qword_94E230;
  if (!qword_94E230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2C4094()
{
  result = qword_94E240;
  if (!qword_94E240)
  {
    sub_7640F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E240);
  }

  return result;
}

void sub_2C40EC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v3 = 0;
    v12 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v5 = sub_76A770();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 items];
      sub_BE70(0, &qword_945588);
      v9 = v1;
      v10 = sub_769460();

      v11 = v10;
      v1 = v9;
      sub_10A708(v11);

      ++v3;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_2C4224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_7685A0();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v39 = a6;
    v40 = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = _swiftEmptyArrayStorage;
    v12 = (v11 + 16);
    v41 = a1;
    v13 = sub_7640E0();
    if (v13)
    {
      v14 = v13;
      if (qword_93DF00 != -1)
      {
        swift_once();
      }

      v15 = sub_768FF0();
      sub_BE38(v15, qword_9A0430);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768590();
      v48._countAndFlagsBits = 0xD00000000000004DLL;
      v48._object = 0x80000000007D93B0;
      sub_768580(v48);
      v45 = sub_BD88(&unk_947FF0);
      aBlock = v14;

      sub_768560();
      sub_BDD0(&aBlock);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_768580(v49);
      sub_7685B0();
      sub_768E80();

      v16 = [v41 sections];
      sub_BE70(0, &qword_94E258);
      v17 = sub_769460();

      sub_2C5220(v17, v12, v14);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_93DF00 != -1)
      {
        swift_once();
      }

      v18 = sub_768FF0();
      sub_BE38(v18, qword_9A0430);
      sub_BD88(&qword_93FD00);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77B6D0;
      sub_768540();
      sub_768E80();

      v19 = [v41 sections];
      sub_BE70(0, &qword_94E258);
      v20 = sub_769460();

      sub_2C40EC(v20);
    }

    v21 = *v12;
    if (*v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)); ; i = sub_76A860())
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = sub_76A770();
        }

        else
        {
          if (v23 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_30;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        [v24 setEnabled:1];

        ++v23;
        if (v26 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_22:

    v27 = sub_75A910();
    v28 = objc_allocWithZone(AMSNotificationSettingsTask);
    v29 = sub_769210();
    v30 = [v28 initWithIdentifier:v29 account:v40 bag:v27];

    swift_unknownObjectRelease();
    sub_BE70(0, &qword_945588);

    isa = sub_769450().super.isa;

    v32 = [v30 updateSettings:isa];

    if (v32)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v11;
      *(v33 + 24) = v39;
      v46 = sub_2C59D4;
      v47 = v33;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_509F0;
      v45 = &unk_88C3D8;
      v34 = _Block_copy(&aBlock);

      [v32 addFinishBlock:v34];

      _Block_release(v34);
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      sub_2C5894();
      swift_allocError();
      *v35 = 1;
    }

    swift_errorRetain();
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v36 = sub_768FF0();
    sub_BE38(v36, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v50._countAndFlagsBits = 0xD000000000000030;
    v50._object = 0x80000000007D9320;
    sub_768580(v50);
    swift_getErrorValue();
    v37 = sub_76A9C0();
    v45 = &type metadata for String;
    aBlock = v37;
    v43 = v38;
    sub_768560();
    sub_BDD0(&aBlock);
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_768580(v51);
    sub_7685B0();
    sub_768E80();

    sub_768F50();
  }
}

uint64_t sub_2C4AB0(id *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = [*a1 items];
  sub_BE70(0, &qword_945588);
  v5 = sub_769460();

  v23 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v17[5] = a2;
    v18 = i;
    v7 = 0;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_769240();
      a2 = v13;

      v22[0] = v12;
      v22[1] = a2;
      __chkstk_darwin(v14);
      v17[2] = v22;
      LOBYTE(v11) = sub_4F1408(sub_2C59DC, v17, v21);

      if (v11)
      {
        sub_76A7A0();
        a2 = v23[2];
        sub_76A7D0();
        sub_76A7E0();
        sub_76A7B0();
      }

      else
      {
      }

      ++v7;
      if (v10 == v18)
      {
        v15 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_18:

  return sub_10A708(v15);
}

uint64_t sub_2C4CE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_7687C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 48;
  v12 = sub_7685A0();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v21 = a4;
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v13 = sub_768FF0();
    sub_BE38(v13, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v24._countAndFlagsBits = 0xD000000000000037;
    v24._object = 0x80000000007D9430;
    sub_768580(v24);
    swift_beginAccess();
    v14 = *(a3 + 16);
    v23 = sub_BD88(&qword_945590);
    v22[0] = v14;

    sub_768560();
    sub_BDD0(v22);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_768580(v25);
    sub_7685B0();
    sub_768E80();

    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_768F60();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!a2)
    {
      sub_2C5894();
      swift_allocError();
      *v16 = 2;
    }

    swift_errorRetain();
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v17 = sub_768FF0();
    sub_BE38(v17, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v26._object = 0x80000000007D9400;
    v26._countAndFlagsBits = 0xD00000000000002DLL;
    sub_768580(v26);
    swift_beginAccess();
    v18 = *(a3 + 16);
    v23 = sub_BD88(&qword_945590);
    v22[0] = v18;

    sub_768560();
    sub_BDD0(v22);
    v27._countAndFlagsBits = 0x3A726F727245202ELL;
    v27._object = 0xE900000000000020;
    sub_768580(v27);
    swift_getErrorValue();
    v19 = sub_76A9C0();
    v23 = &type metadata for String;
    v22[0] = v19;
    v22[1] = v20;
    sub_768560();
    sub_BDD0(v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_768580(v28);
    sub_7685B0();
    sub_768E80();

    sub_768F50();
  }
}

void sub_2C5220(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_76A770();
      }

      else
      {
        if (v7 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_2C4AB0(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_2C5320(uint64_t a1)
{
  v2 = sub_7685A0();
  __chkstk_darwin(v2 - 8);
  sub_BD88(&qword_94DDC0);
  v3 = sub_768F90();
  sub_BE70(0, &qword_959CF0);
  sub_768900();
  sub_768ED0();
  v4 = [aBlock[0] ams_activeiTunesAccount];

  if (v4)
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v5 = sub_768FF0();
    sub_BE38(v5, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768590();
    v24._countAndFlagsBits = 0xD00000000000002DLL;
    v24._object = 0x80000000007D92B0;
    sub_768580(v24);
    v21 = sub_BE70(0, &qword_94E250);
    aBlock[0] = v4;
    v6 = v4;
    sub_768560();
    sub_BDD0(aBlock);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_768580(v25);
    sub_7685B0();
    sub_768E80();

    sub_75A920();
    sub_768ED0();
    v7 = aBlock[0];
    v8 = v6;
    v9 = sub_75A910();
    v10 = objc_allocWithZone(AMSNotificationSettingsTask);
    v11 = sub_769210();
    v12 = [v10 initWithIdentifier:v11 account:v8 bag:v9];

    swift_unknownObjectRelease();
    v13 = [v12 fetchAllSettings];
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v8;
    v14[4] = v7;
    v14[5] = v3;
    v22 = sub_2C5938;
    v23 = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151A34;
    v21 = &unk_88C360;
    v15 = _Block_copy(aBlock);
    v16 = v8;

    [v13 addFinishBlock:v15];
    _Block_release(v15);
  }

  else
  {
    if (qword_93DF00 != -1)
    {
      swift_once();
    }

    v17 = sub_768FF0();
    sub_BE38(v17, qword_9A0430);
    sub_BD88(&qword_93FD00);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    sub_2C5894();
    swift_allocError();
    *v18 = 0;
    sub_768F50();
  }

  return v3;
}

unint64_t sub_2C5894()
{
  result = qword_94E248;
  if (!qword_94E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E248);
  }

  return result;
}

uint64_t sub_2C58E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2C5944(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2C595C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2C5994()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_2C5A10()
{
  result = qword_94E260;
  if (!qword_94E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E260);
  }

  return result;
}

uint64_t sub_2C5A6C()
{
  v0 = sub_7615B0();
  sub_161DC(v0, qword_99C700);
  sub_BE38(v0, qword_99C700);
  return sub_761590();
}

UIColor sub_2C5B84()
{
  sub_396E8();
  v0 = objc_opt_self();
  v1 = [v0 systemBackgroundColor];
  v2.super.isa = [v0 secondarySystemBackgroundColor];
  v3.super.isa = v1;
  result.super.isa = sub_76A0C0(v3, v2).super.isa;
  qword_99C718 = result.super.isa;
  return result;
}

uint64_t sub_2C5C20()
{
  v0 = sub_BD88(&qword_940AD0);
  sub_161DC(v0, qword_99C728);
  sub_BE38(v0, qword_99C728);
  sub_BD88(&qword_93FBE0);
  return sub_7592E0();
}

char *sub_2C5CB8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v308 = sub_768C60();
  v306 = *(v308 - 8);
  __chkstk_darwin(v308);
  v302 = &v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7593D0();
  v290 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD88(&qword_94BAC0);
  __chkstk_darwin(v14 - 8);
  v288 = &v279 - v15;
  v16 = sub_7666D0();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v299 = &v279 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_760AD0();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v279 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v23 - 8);
  v298 = &v279 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v279 - v26;
  v28 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel;
  if (qword_93D728 != -1)
  {
    swift_once();
  }

  v289 = v13;
  v291 = v11;
  v29 = sub_BE38(v16, qword_99ED70);
  v30 = *(v17 + 16);
  v307 = (v17 + 16);
  v287 = v30;
  (v30)(v27, v29, v16);
  v301 = v17;
  v31 = *(v17 + 56);
  v286 = v16;
  v305 = (v17 + 56);
  v303 = v31;
  (v31)(v27, 0, 1, v16);
  v32 = *(v20 + 104);
  v295 = enum case for DirectionalTextAlignment.none(_:);
  v304 = v19;
  v297 = v20 + 104;
  v293 = v32;
  (v32)(v22);
  v33 = v22;
  v34 = sub_75BB20();
  v35 = objc_allocWithZone(v34);
  v294 = v33;
  *(v5 + v28) = sub_75BB10();
  v36 = type metadata accessor for RatingView();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
  v38 = &v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
  *v38 = 0;
  v38[8] = 1;
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = 5;
  if (qword_93D100 != -1)
  {
    swift_once();
  }

  v39 = qword_9552A8;
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
  v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = 1;
  *v38 = 0x4008000000000000;
  v38[8] = 0;
  v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 1;
  v40 = type metadata accessor for StarRow();
  v41 = objc_allocWithZone(v40);
  v42 = v39;
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
  v43 = objc_allocWithZone(v40);
  *&v37[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = sub_43DC44(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v314.receiver = v37;
  v314.super_class = v36;
  v44 = objc_msgSendSuper2(&v314, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_43B880();
  v45 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
  v46 = *&v44[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
  v47 = *&v46[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  *&v46[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v44[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
  v48 = v46;
  sub_43C36C(v47);

  if (*&v44[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView])
  {
    [v44 addSubview:?];
  }

  v300 = v34;
  v49 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_ratingView;
  [v44 addSubview:*&v44[v45]];

  *(v5 + v49) = v44;
  v296 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel;
  v50 = v304;
  v51 = v287;
  if (qword_93D740 != -1)
  {
    swift_once();
  }

  v52 = v286;
  v285 = sub_BE38(v286, qword_99EDB8);
  v51(v27);
  (v303)(v27, 0, 1, v52);
  v53 = v294;
  v54 = v295;
  v55 = v50;
  v56 = v293;
  v293(v294, v295, v55);
  v57 = v300;
  v58 = objc_allocWithZone(v300);
  *&v296[v5] = sub_75BB10();
  v296 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel;
  if (qword_93D748 != -1)
  {
    swift_once();
  }

  v59 = sub_BE38(v52, qword_99EDD0);
  (v51)(v27, v59, v52);
  (v303)(v27, 0, 1, v52);
  v56(v53, v54, v304);
  v60 = objc_allocWithZone(v57);
  *&v296[v5] = sub_75BB10();
  v61 = v51;
  v62 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel;
  if (qword_93D750 != -1)
  {
    swift_once();
  }

  v63 = sub_BE38(v52, qword_99EDE8);
  v61(v27, v63, v52);
  (v303)(v27, 0, 1, v52);
  v56(v53, v54, v304);
  v64 = objc_allocWithZone(v57);
  v65 = v61;
  *(v5 + v62) = sub_75BB10();
  v280 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel;
  v281 = v5;
  if (qword_93D738 != -1)
  {
    swift_once();
  }

  v66 = sub_BE38(v52, qword_99EDA0);
  v67 = v299;
  v284 = v66;
  (v61)(v299);
  v296 = objc_opt_self();
  v68 = [v296 clearColor];
  v283 = type metadata accessor for ExpandableTextView();
  v69 = objc_allocWithZone(v283);
  v70 = v68;
  v71 = sub_1A4998(v70, 0.0, 0.0, 0.0, 0.0);
  v65(v27, v67, v52);
  v72 = v303;
  v73 = v65;
  (v303)(v27, 0, 1, v52);
  sub_1E9A94(v27, v298);
  v74 = v71;
  sub_75BA40();

  sub_10A2C(v27, &unk_93E530);
  v75 = *(v301 + 8);
  v301 += 8;
  v282 = v75;
  v75(v67, v52);

  v76 = v281;
  *&v281[v280] = v74;
  v280 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseTitleLabel;
  v77 = v65;
  v78 = v52;
  v79 = v76;
  if (qword_93D730 != -1)
  {
    swift_once();
  }

  v80 = sub_BE38(v78, qword_99ED88);
  v73(v27, v80, v78);
  v72(v27, 0, 1, v78);
  v81 = v294;
  v82 = v295;
  v83 = v293;
  v293(v294, v295, v304);
  v84 = objc_allocWithZone(v300);
  *&v79[v280] = sub_75BB10();
  v280 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel;
  v77(v27, v285, v78);
  v72(v27, 0, 1, v78);
  v83(v81, v82, v304);
  v85 = objc_allocWithZone(v300);
  *&v79[v280] = sub_75BB10();
  v86 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel;
  v87 = v299;
  v88 = v77;
  v77(v299, v284, v78);
  v89 = [v296 clearColor];
  v90 = objc_allocWithZone(v283);
  v91 = v89;
  v92 = sub_1A4998(v91, 0.0, 0.0, 0.0, 0.0);
  v88(v27, v87, v78);
  (v303)(v27, 0, 1, v78);
  sub_1E9A94(v27, v298);
  v93 = v92;
  sub_75BA40();

  sub_10A2C(v27, &unk_93E530);
  v282(v87, v78);

  *&v79[v86] = v93;
  v94 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView;
  sub_758E80();
  *&v79[v94] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v95 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView;
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v79[v95] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v97 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_focusBackgroundView;
  *&v79[v97] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v98 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_cardContentView;
  *&v79[v98] = [objc_allocWithZone(UIView) init];
  v99 = &v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler];
  *v99 = 0;
  v99[1] = 0;
  v100 = &v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler];
  *v100 = 0;
  v100[1] = 0;
  v101 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapGestureRecognizer;
  *&v79[v101] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v102 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapGestureRecognizer;
  *&v79[v102] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isFlowPreviewingDestination] = 0;
  v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse] = 0;
  v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded] = 1;
  v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded] = 1;
  v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shouldHandleTextSelection] = 1;
  v103 = &v79[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_actionHandler];
  v104 = type metadata accessor for ProductReviewView();
  *v103 = 0;
  v103[1] = 0;
  v313.receiver = v79;
  v313.super_class = v104;
  v105 = objc_msgSendSuper2(&v313, "initWithFrame:", a1, a2, a3, a4);
  v106 = [v105 layer];
  [v106 setCornerRadius:20.0];

  v107 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView;
  v108 = qword_93C560;
  v109 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView);
  if (v108 != -1)
  {
    swift_once();
  }

  v110 = sub_765080();
  v111 = sub_BE38(v110, qword_99B580);
  v112 = *(v110 - 8);
  v113 = v288;
  (*(v112 + 16))(v288, v111, v110);
  (*(v112 + 56))(v113, 0, 1, v110);
  sub_758E60();

  v114 = *(v105 + v107);
  v115 = v290;
  v116 = v289;
  v117 = enum case for CornerStyle.continuous(_:);
  v118 = v291;
  v307 = *(v290 + 104);
  v307(v289);
  v119 = v114;
  sub_758E70();

  v305 = *(v115 + 8);
  v305(v116, v118);
  [v105 addSubview:*(v105 + v107)];
  v120 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView;
  v121 = qword_93C8D0;
  v122 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView);
  if (v121 != -1)
  {
    swift_once();
  }

  v123 = qword_99C718;
  [v122 setBackgroundColor:qword_99C718];

  v124 = *(v105 + v120);
  (v307)(v116, v117, v118);
  v125 = v124;
  sub_75CCD0();

  v305(v116, v118);
  [v105 addSubview:*(v105 + v120)];
  v126 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_cardContentView;
  [*(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_cardContentView) setBackgroundColor:v123];
  [*(v105 + v126) _setContinuousCornerRadius:20.0];
  [v105 addSubview:*(v105 + v126)];
  v127 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_focusBackgroundView;
  v128 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_focusBackgroundView);
  v129 = [v296 systemBackgroundColor];
  [v128 setBackgroundColor:v129];

  [*(v105 + v127) setAlpha:0.0];
  v130 = *(v105 + v127);
  (v307)(v116, v117, v118);
  v131 = v130;
  sub_75CCD0();

  v305(v116, v118);
  [*(v105 + v126) addSubview:*(v105 + v127)];
  v132 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel;
  v133 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v134 = v133;
  v135 = v302;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v136 = v306 + 8;
  v137 = *(v306 + 8);
  v137(v135, v308);
  [*(v105 + v126) addSubview:*(v105 + v132)];
  v138 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel;
  v139 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel);
  v140 = sub_396E8();
  v141 = v139;
  v142 = sub_769FF0();
  [v141 setTextColor:v142];

  v143 = *(v105 + v138);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v144 = v143;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v305 = v137;
  v306 = v136;
  v137(v135, v308);
  v307 = v126;
  [*(v105 + v126) addSubview:*(v105 + v138)];
  v145 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_ratingView;
  v146 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_ratingView);
  v147 = sub_769FD0();
  v148 = *&v146[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor];
  *&v146[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = v147;
  v149 = v147;
  if ((sub_76A1C0() & 1) == 0)
  {
    sub_43B880();
  }

  v150 = *(v105 + v145);
  v151 = sub_769FE0();
  v152 = sub_769FD0();
  v153 = sub_769FE0();
  v154.super.isa = sub_769FD0();
  v155.super.isa = v151;
  v156.super.isa = v152;
  v157.super.isa = v153;
  v158.super.isa = sub_76A110(v155, v156, v157, v154).super.isa;
  isa = v158.super.isa;
  v160 = *&v150[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor];
  *&v150[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = v158;
  if (v160)
  {
    v161 = v158.super.isa;
    v162 = v160;
    v163 = sub_76A1C0();

    if (v163)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v164 = v158.super.isa;
    v162 = 0;
  }

  sub_43B880();
  v161 = isa;
LABEL_28:

  v165 = *(v105 + v145);
  v166 = [v105 traitCollection];

  v167 = [v166 accessibilityContrast];
  v168 = v167 == 0;
  v169 = v165[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars];
  v165[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = v168;
  if ((v168 ^ v169))
  {
    v170 = *&v165[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView];
    if (v170)
    {
      v171 = *(v170 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled);
      *(v170 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled) = v168;
      if (((v167 == 0) ^ v171))
      {
        sub_43CE14();
      }
    }
  }

  v304 = v140;

  v172 = qword_93C8D8;
  v173 = *(v105 + v145);
  if (v172 != -1)
  {
    swift_once();
  }

  [v173 setMaximumContentSizeCategory:qword_99C720];

  v174 = *(v105 + v145);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v175 = v174;
  v176 = v302;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v177 = v308;
  v305(v176, v308);
  v178 = v307;
  [*(v307 + v105) addSubview:*(v105 + v145)];
  v179 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel;
  v180 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel);
  v181 = sub_769FF0();
  [v180 setTextColor:v181];

  v182 = *(v105 + v179);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v183 = v182;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v184 = v305;
  v305(v176, v177);
  [*(v178 + v105) addSubview:*(v105 + v179)];
  v185 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel;
  v186 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel);
  v187 = sub_769FF0();
  [v186 setTextColor:v187];

  v188 = *(v105 + v185);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v189 = v188;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v184(v176, v308);
  [*(v178 + v105) addSubview:*(v105 + v185)];
  v190 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel;
  v191 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel);
  v192 = sub_769FF0();
  [*&v191[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setTextColor:v192];

  v193 = *(v105 + v190);
  if (*(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse))
  {
    v194 = 2;
  }

  else
  {
    v194 = 6;
  }

  v195 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
  v196 = *&v193[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  *&v193[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = v194;
  v197 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if (v193[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed])
  {
    v198 = *&v193[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v199 = v193;
    [v198 setNumberOfLines:v194];
    if (*&v193[v195] == v196)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v200 = v193;
    if (v194 == v196)
    {
      goto LABEL_43;
    }
  }

  if (v193[v197])
  {
    sub_1A5974();
  }

LABEL_43:

  v201 = *(v105 + v190);
  v202 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded);
  v203 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v204 = v201[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
  v201[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = v202 ^ 1;
  if (v202)
  {
    v205 = 0;
  }

  else
  {
    v205 = *&v201[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  }

  v206 = *&v201[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  v207 = v201;
  [v206 setNumberOfLines:v205];
  if (v204 != v201[v203])
  {
    sub_1A5974();
  }

  [*(*(v105 + v190) + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setLineBreakMode:4];
  [*(*(v105 + v190) + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setTextAlignment:4];
  v208 = *(v105 + v190);
  v208[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton] = 0;
  v209 = v208;
  sub_1A5974();

  [*(v105 + v190) setUserInteractionEnabled:1];
  v210 = *(v105 + v190);
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v211 = v210;
  v212 = v302;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v305(v212, v308);
  v213 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapGestureRecognizer;
  v214 = *(v105 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapGestureRecognizer);
  v215 = v105;
  [v214 addTarget:v215 action:"moreReviewFrom:"];
  [*(v105 + v213) setDelegate:v215];
  v216 = *(v105 + v190);
  v301 = v213;
  [v216 addGestureRecognizer:*(v105 + v213)];
  v217 = *(v105 + v190);
  v218 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v219 = &v217[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  v220 = *&v217[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  *v219 = sub_2CA454;
  v219[1] = v218;
  swift_retain_n();
  v221 = v217;
  sub_F704(v220);
  v222 = *&v221[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton];

  [v222 setUserInteractionEnabled:1];

  v223 = *(v307 + v105);
  v303 = v190;
  [v223 addSubview:*(v105 + v190)];
  v224 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseTitleLabel;
  v225 = *&v215[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseTitleLabel];
  v315._object = 0x80000000007D32E0;
  v315._countAndFlagsBits = 0xD000000000000012;
  v316._countAndFlagsBits = 0;
  v316._object = 0xE000000000000000;
  sub_75B750(v315, v316);
  v226 = sub_769210();

  [v225 setText:v226];

  [*&v215[v224] setHidden:1];
  v227 = *&v215[v224];
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v228 = v227;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v229 = v308;
  v230 = v305;
  v305(v212, v308);
  [*(v307 + v105) addSubview:*&v215[v224]];
  v231 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel;
  v232 = *&v215[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel];
  v233 = sub_769FF0();
  [v232 setTextColor:v233];

  [*&v215[v231] setHidden:1];
  v234 = *&v215[v231];
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v235 = v234;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v230(v212, v229);
  [*(v307 + v105) addSubview:*&v215[v231]];
  v236 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel;
  v237 = *&v215[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel];
  v238 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
  v239 = *&v237[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  *&v237[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = 2;
  v240 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  if (v237[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] == 1)
  {
    v241 = *&v237[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
    v242 = v237;
    [v241 setNumberOfLines:2];
    if (*&v237[v238] == v239)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v243 = v237;
    if (v239 == 2)
    {
      goto LABEL_54;
    }
  }

  if (v237[v240])
  {
    sub_1A5974();
  }

LABEL_54:

  v244 = *&v215[v236];
  v245 = v215[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded];
  v246 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v247 = v244[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
  v244[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = v245 ^ 1;
  if (v245)
  {
    v248 = 0;
  }

  else
  {
    v248 = *&v244[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
  }

  v249 = *&v244[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  v250 = v244;
  [v249 setNumberOfLines:v248];
  if (v247 != v244[v246])
  {
    sub_1A5974();
  }

  [*(*&v215[v236] + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setLineBreakMode:4];
  v251 = *&v215[v236];
  v251[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton] = 0;
  v252 = v251;
  sub_1A5974();

  v253 = *&v215[v236];
  v254 = sub_769FF0();
  [*&v253[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setTextColor:v254];

  [*&v215[v236] setUserInteractionEnabled:1];
  [*&v215[v236] setHidden:1];
  v255 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapGestureRecognizer;
  v256 = *&v215[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapGestureRecognizer];
  v257 = v215;
  [v256 addTarget:v257 action:"moreResponseFrom:"];
  v258 = *&v215[v255];
  [v258 setDelegate:v257];

  [*&v215[v236] addGestureRecognizer:*&v215[v255]];
  v259 = *&v215[v236];
  v311 = 0u;
  v312 = 0u;
  v309 = 0u;
  v310 = 0u;
  v260 = v259;
  v261 = v302;
  sub_768C10();
  sub_10A2C(&v309, &unk_93FBD0);
  sub_10A2C(&v311, &unk_93FBD0);
  sub_769E70();

  v305(v261, v308);
  v262 = *&v215[v236];
  v263 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v264 = &v262[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  v265 = *&v262[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  *v264 = sub_2CA478;
  v264[1] = v263;
  swift_retain_n();
  v266 = v262;
  sub_F704(v265);
  v267 = *&v266[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton];

  [v267 setUserInteractionEnabled:1];

  [*(v307 + v105) addSubview:*&v215[v236]];
  v268 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v257 action:"stateChangedFor:"];

  [v257 addGestureRecognizer:v268];
  [*&v215[v255] setCancelsTouchesInView:0];
  [*(v105 + v301) setCancelsTouchesInView:0];
  v269 = *&v215[v236];
  v270 = &v269[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  v271 = *&v269[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  *v270 = 0;
  *(v270 + 1) = 0;
  v272 = v269;
  sub_F704(v271);
  [*&v272[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v273 = *&v303[v105];
  v274 = &v273[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  v275 = *&v273[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  *v274 = 0;
  *(v274 + 1) = 0;
  v276 = v273;
  sub_F704(v275);
  [*&v276[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  sub_2C8358();
  sub_BD88(&qword_9477F0);
  v277 = swift_allocObject();
  *(v277 + 16) = xmmword_77E280;
  *(v277 + 32) = sub_767B80();
  *(v277 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v277 + 48) = sub_767950();
  *(v277 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  sub_769F40();

  swift_unknownObjectRelease();

  return v257;
}

void sub_2C8154(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + *a2);
    if (v5)
    {

      v5(v6);
      sub_F704(v5);
    }
  }
}

void sub_2C822C()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isFlowPreviewingDestination;
  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isFlowPreviewingDestination))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView) setAlpha:v2];
  if (*(v0 + v1))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView) setAlpha:v3];
  v4 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_cardContentView);
  if (*(v0 + v1) == 1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_93C8D0 != -1)
    {
      swift_once();
    }

    v5 = qword_99C718;
  }

  v6 = v5;
  [v4 setBackgroundColor:?];
}

void sub_2C8358()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_769A00();

  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel] setHidden:v3 & 1];
  v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_ratingView];
  if (qword_93C8E0 != -1)
  {
    swift_once();
  }

  v5 = sub_BD88(&qword_940AD0);
  sub_BE38(v5, qword_99C728);
  v15 = v1;
  v6 = v1;
  sub_7592B0();

  v7 = v4 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding;
  *v7 = v16;
  *(v7 + 8) = 0;
  sub_43BA20(v16, 0);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView;
  if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView))
  {
    sub_43BA20(*v7, *(v7 + 8));
  }

  v9 = [v6 traitCollection];
  v10 = [v9 accessibilityContrast];

  v11 = v10 == 0;
  v12 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars);
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars) = v11;
  if (v11 != v12)
  {
    v13 = *(v4 + v8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled);
      *(v13 + OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_filled) = v11;
      if (((v10 == 0) ^ v14))
      {
        sub_43CE14();
      }
    }
  }
}

id sub_2C8558()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for ProductReviewView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  sub_2C8680();
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_focusBackgroundView];
  [v0 bounds];
  [v3 setFrame:?];
  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_cardContentView];
  [v0 bounds];
  return [v4 setFrame:?];
}

uint64_t sub_2C8680()
{
  v1 = v0;
  v2 = sub_BD88(&qword_9540B0);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2);
  v37 = v34 - v3;
  v4 = sub_7615B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v34 - v9;
  v11 = sub_7615D0();
  v35 = *(v11 - 8);
  v36 = v11;
  __chkstk_darwin(v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isFlowPreviewingDestination];
  if (qword_93C8C8 != -1)
  {
    swift_once();
  }

  v15 = sub_BE38(v4, qword_99C700);
  (*(v5 + 16))(v7, v15, v4);
  if (v14)
  {
    v59 = &type metadata for Double;
    v60 = &protocol witness table for Double;
    v58 = 0;
    sub_7615A0();
    v59 = &type metadata for Double;
    v60 = &protocol witness table for Double;
    v58 = 0x4018000000000000;
    sub_761580();
  }

  (*(v5 + 32))(v10, v7, v4);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel];
  v17 = sub_75BB20();
  v59 = v17;
  v60 = &protocol witness table for UILabel;
  v57 = &protocol witness table for UILabel;
  v58 = v16;
  v18 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel];
  v56 = v17;
  v54 = &protocol witness table for UILabel;
  v55 = v18;
  v34[1] = v10;
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel];
  v53 = v17;
  v52 = v19;
  v20 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel];
  v50 = v17;
  v51 = &protocol witness table for UILabel;
  v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel];
  v49 = v20;
  type metadata accessor for ExpandableTextView();
  v21 = v16;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  sub_7665D0();
  v25 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseTitleLabel];
  v46 = v17;
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v25;
  v26 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel];
  v43 = v17;
  v41 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel];
  v42 = v26;
  v27 = v25;
  v28 = v26;
  sub_7665D0();
  v40 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_ratingView];
  type metadata accessor for RatingView();
  sub_7665D0();
  sub_7615C0();
  [v1 bounds];
  v29 = [v1 traitCollection];
  sub_2C96A0();
  v31 = v36;
  v30 = v37;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v32 = v39;
  sub_7673E0();

  (*(v38 + 8))(v30, v32);
  return (*(v35 + 8))(v13, v31);
}

id sub_2C8B74(id result)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse;
  v3 = v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse];
  if (v3 != (result & 1))
  {
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel] setHidden:v3 ^ 1u];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseTitleLabel] setHidden:(v1[v2] & 1) == 0];
    [*&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel] setHidden:(v1[v2] & 1) == 0];
    v4 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel];
    if (v1[v2])
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    v6 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines;
    v7 = *(v4 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines);
    *(v4 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines) = v5;
    v8 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
    if (*(v4 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) == 1)
    {
      [*(v4 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setNumberOfLines:?];
      v5 = *(v4 + v6);
    }

    if (v5 != v7 && (*(v4 + v8) & 1) != 0)
    {
      sub_1A5974();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_2C8CC8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel);
  v7 = *(v1 + v3);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_1A5974();
  }

  return result;
}

id sub_2C8DA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseTitleLabel);
  v3 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel);
  v7 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded);
  v8 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_1A5974();
  }

  return result;
}

id sub_2C8F64(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

id sub_2C8FE0(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_2C9070(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v7 = a1;
  }

  v8 = *&a1[*a4];
  if (v8)
  {

    v8(v9);
    sub_F704(v8);
  }

  return sub_10A2C(v11, &unk_93FBD0);
}

id sub_2C91A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_2C9354()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_2C9640;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_23F0CC;
  v5[3] = &unk_88C588;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_2C948C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v13[4] = a5;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_23F0CC;
    v13[3] = a6;
    v11 = _Block_copy(v13);
    v12 = v6;

    [a1 addAnimations:v11];
    _Block_release(v11);
  }
}

uint64_t sub_2C9558()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_2C9590()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView) setAlpha:1.0];
  [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_2C9608(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2C9640()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

unint64_t sub_2C96A0()
{
  result = qword_94E350;
  if (!qword_94E350)
  {
    sub_7615D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_94E350);
  }

  return result;
}

void sub_2C971C()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v91 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_760AD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_93E530);
  __chkstk_darwin(v7 - 8);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_titleLabel;
  if (qword_93D728 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v0, qword_99ED70);
  v96 = *(v1 + 16);
  v97 = v1 + 16;
  v96(v11, v13, v0);
  v92 = v1;
  v14 = *(v1 + 56);
  v99 = v1 + 56;
  v14(v11, 0, 1, v0);
  v15 = *(v4 + 104);
  v95 = enum case for DirectionalTextAlignment.none(_:);
  v88 = v4 + 104;
  v89 = v3;
  v94 = v15;
  (v15)(v6);
  v93 = sub_75BB20();
  v16 = objc_allocWithZone(v93);
  *(v98 + v12) = sub_75BB10();
  v17 = type metadata accessor for RatingView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating] = 0;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarColor] = 0;
  v19 = &v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starPadding];
  *v19 = 0;
  v19[8] = 1;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_maxNumberOfStars] = 5;
  if (qword_93D100 != -1)
  {
    swift_once();
  }

  v20 = qword_9552A8;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starColor] = qword_9552A8;
  v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_starSize] = 1;
  *v19 = 0x4008000000000000;
  v19[8] = 0;
  v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_useCase] = 1;
  v21 = type metadata accessor for StarRow();
  v22 = objc_allocWithZone(v21);
  v23 = v20;
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView] = sub_43DC44(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_fillEmptyStars] = 0;
  v24 = objc_allocWithZone(v21);
  *&v18[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView] = sub_43DC44(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v100.receiver = v18;
  v100.super_class = v17;
  v25 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_43B880();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView;
  v27 = *&v25[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_filledStarRowView];
  v28 = *&v27[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating];
  *&v27[OBJC_IVAR____TtC18ASMessagesProviderP33_DC70C8EA8944F731B495ED3266C3CFFA7StarRow_currentRating] = *&v25[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_rating];
  v29 = v27;
  sub_43C36C(v28);

  if (*&v25[OBJC_IVAR____TtC18ASMessagesProvider10RatingView_emptyStarRowView])
  {
    [v25 addSubview:?];
  }

  v30 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_ratingView;
  [v25 addSubview:*&v25[v26]];

  *(v98 + v30) = v25;
  v31 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateLabel;
  v32 = v96;
  if (qword_93D740 != -1)
  {
    swift_once();
  }

  v84 = sub_BE38(v0, qword_99EDB8);
  v32(v11);
  v14(v11, 0, 1, v0);
  v33 = v89;
  v94(v6, v95, v89);
  v34 = objc_allocWithZone(v93);
  *(v98 + v31) = sub_75BB10();
  v35 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_authorLabel;
  if (qword_93D748 != -1)
  {
    swift_once();
  }

  v36 = sub_BE38(v0, qword_99EDD0);
  (v32)(v11, v36, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v37 = objc_allocWithZone(v93);
  *(v98 + v35) = sub_75BB10();
  v38 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_dateAuthorLabel;
  if (qword_93D750 != -1)
  {
    swift_once();
  }

  v39 = sub_BE38(v0, qword_99EDE8);
  (v32)(v11, v39, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v40 = objc_allocWithZone(v93);
  *(v98 + v38) = sub_75BB10();
  v79 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_bodyLabel;
  if (qword_93D738 != -1)
  {
    swift_once();
  }

  v85 = v6;
  v41 = sub_BE38(v0, qword_99EDA0);
  v42 = v91;
  v83 = v41;
  v32(v91);
  v82 = objc_opt_self();
  v43 = [v82 clearColor];
  v81 = type metadata accessor for ExpandableTextView();
  v44 = objc_allocWithZone(v81);
  v45 = v43;
  v46 = sub_1A4998(v45, 0.0, 0.0, 0.0, 0.0);
  (v32)(v11, v42, v0);
  v87 = v14;
  v14(v11, 0, 1, v0);
  sub_1E9A94(v11, v90);
  v47 = v46;
  sub_75BA40();

  sub_10A2C(v11, &unk_93E530);
  v48 = *(v92 + 8);
  v92 += 8;
  v80 = v48;
  v48(v42, v0);

  v49 = v98;
  *(v98 + v79) = v47;
  v79 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseTitleLabel;
  if (qword_93D730 != -1)
  {
    swift_once();
  }

  v50 = sub_BE38(v0, qword_99ED88);
  v96(v11, v50, v0);
  v51 = v87;
  v87(v11, 0, 1, v0);
  v52 = v85;
  v86 = v0;
  v53 = v95;
  v54 = v89;
  v55 = v94;
  v94(v85, v95, v89);
  v56 = v93;
  v57 = objc_allocWithZone(v93);
  *(v49 + v79) = sub_75BB10();
  v79 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseDateLabel;
  v58 = v86;
  v96(v11, v84, v86);
  v51(v11, 0, 1, v58);
  v55(v52, v53, v54);
  v59 = objc_allocWithZone(v56);
  *(v49 + v79) = sub_75BB10();
  v60 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_responseBodyLabel;
  v61 = v91;
  v62 = v86;
  v63 = v96;
  v96(v91, v83, v86);
  v64 = [v82 clearColor];
  v65 = objc_allocWithZone(v81);
  v66 = v64;
  v67 = sub_1A4998(v66, 0.0, 0.0, 0.0, 0.0);
  v63(v11, v61, v62);
  v87(v11, 0, 1, v62);
  sub_1E9A94(v11, v90);
  v68 = v67;
  sub_75BA40();

  sub_10A2C(v11, &unk_93E530);
  v80(v61, v62);

  *(v49 + v60) = v68;
  v69 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shadowView;
  sub_758E80();
  *(v49 + v69) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v70 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_roundedCornerView;
  sub_75CD70();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v49 + v70) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v72 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_focusBackgroundView;
  *(v49 + v72) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v73 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_cardContentView;
  *(v49 + v73) = [objc_allocWithZone(UIView) init];
  v74 = (v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapHandler);
  *v74 = 0;
  v74[1] = 0;
  v75 = (v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapHandler);
  *v75 = 0;
  v75[1] = 0;
  v76 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreReviewTapGestureRecognizer;
  *(v49 + v76) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v77 = OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_moreResponseTapGestureRecognizer;
  *(v49 + v77) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isFlowPreviewingDestination) = 0;
  *(v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_hasResponse) = 0;
  *(v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isReviewExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_isResponseExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_shouldHandleTextSelection) = 1;
  v78 = (v49 + OBJC_IVAR____TtC18ASMessagesProvider17ProductReviewView_actionHandler);
  *v78 = 0;
  v78[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_2CA41C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2CA4C4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a2;
  v3 = sub_7656C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&unk_94F1F0);
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v74 = &v68 - v9;
  v10 = sub_BD88(&unk_955F20);
  __chkstk_darwin(v10 - 8);
  v75 = &v68 - v11;
  v77 = sub_75ACC0();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v72 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_764930();
  v83 = *(v80 - 8);
  __chkstk_darwin(v80);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_BD88(&qword_945828);
  __chkstk_darwin(v78);
  v84 = &v68 - v14;
  v15 = sub_BD88(&qword_963790);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v68 - v19;
  __chkstk_darwin(v21);
  v23 = &v68 - v22;
  v24 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v24 - 8);
  v79 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  __chkstk_darwin(v29);
  v31 = &v68 - v30;
  if ((sub_75DA10() & 1) == 0)
  {
    v68 = v6;
    v69 = v4;
    v70 = v3;
    v71 = a1;
    sub_75DA50();
    sub_10A2C(v17, &qword_963790);
    sub_109C4(v20, v23, &qword_963790);
    v40 = v81;
    v41 = v82;
    if ((*(v82 + 48))(v23, 1, v81) == 1)
    {
      sub_10A2C(v23, &qword_963790);
      v42 = 1;
    }

    else
    {
      swift_getKeyPath();
      sub_768750();

      (*(v41 + 8))(v23, v40);
      v42 = 0;
    }

    v46 = v79;
    v45 = v80;
    v47 = v83;
    v48 = *(v83 + 56);
    v48(v31, v42, 1, v80);
    (*(v47 + 104))(v28, enum case for Shelf.ContentType.searchResultsContextCard(_:), v45);
    v48(v28, 0, 1, v45);
    v49 = *(v78 + 48);
    v50 = v84;
    sub_2C8FC(v31, v84);
    sub_2C8FC(v28, v50 + v49);
    v51 = *(v47 + 48);
    if (v51(v50, 1, v45) == 1)
    {
      sub_10A2C(v28, &qword_951BE0);
      v52 = v84;
      sub_10A2C(v31, &qword_951BE0);
      if (v51(v52 + v49, 1, v45) == 1)
      {
        sub_10A2C(v52, &qword_951BE0);
        v53 = v85;
        goto LABEL_17;
      }
    }

    else
    {
      sub_2C8FC(v50, v46);
      if (v51(v50 + v49, 1, v45) != 1)
      {
        v54 = v83;
        v55 = v73;
        (*(v83 + 32))(v73, v50 + v49, v45);
        sub_1AAB98();
        v56 = v50;
        v57 = sub_7691C0();
        v58 = *(v54 + 8);
        v58(v55, v45);
        sub_10A2C(v28, &qword_951BE0);
        sub_10A2C(v31, &qword_951BE0);
        v58(v46, v45);
        sub_10A2C(v56, &qword_951BE0);
        v53 = v85;
        if ((v57 & 1) == 0)
        {
          goto LABEL_27;
        }

LABEL_17:
        v59 = v74;
        sub_75DAA0();
        swift_getKeyPath();
        v60 = v81;
        sub_768750();

        (*(v82 + 8))(v59, v60);
        if (*(v86 + 16))
        {
          sub_134D8(v86 + 32, v87);

          sub_BD88(&unk_944DA0);
          sub_BD88(&qword_93F908);
          v61 = swift_dynamicCast();
          v62 = v77;
          v63 = v76;
          v64 = v75;
          if (v61)
          {
            if (*(&v89 + 1))
            {
              sub_B170(&v88, *(&v89 + 1));
              v53 = v85;
              sub_760470();
              sub_BEB8(&v88);
              if ((*(v63 + 48))(v64, 1, v62) != 1)
              {
                v65 = v72;
                (*(v63 + 32))(v72, v64, v62);
                if (sub_75ACB0())
                {
                  v66 = v68;
                  sub_75DA20();
                  v67 = sub_6CCC04(v66, v65);
                  (*(v69 + 8))(v66, v70);
                  *(&v89 + 1) = &type metadata for CGFloat;
                  v90 = &protocol witness table for CGFloat;
                  *&v88 = -v67;
                  (*(v63 + 8))(v65, v62);
                  return sub_34698(&v88, v53);
                }

                (*(v63 + 8))(v65, v62);
LABEL_27:
                *(&v89 + 1) = &type metadata for Double;
                v90 = &protocol witness table for Double;
                *&v88 = 0;
                return sub_34698(&v88, v53);
              }

LABEL_26:
              sub_10A2C(v64, &unk_955F20);
              goto LABEL_27;
            }
          }

          else
          {
            v90 = 0;
            v88 = 0u;
            v89 = 0u;
          }
        }

        else
        {

          v88 = 0u;
          v89 = 0u;
          v90 = 0;
          v62 = v77;
          v63 = v76;
          v64 = v75;
        }

        sub_10A2C(&v88, &qword_93F910);
        (*(v63 + 56))(v64, 1, 1, v62);
        goto LABEL_26;
      }

      sub_10A2C(v28, &qword_951BE0);
      v52 = v84;
      sub_10A2C(v31, &qword_951BE0);
      (*(v83 + 8))(v46, v45);
    }

    sub_10A2C(v52, &qword_945828);
    v53 = v85;
    goto LABEL_27;
  }

  v32 = v85;
  sub_75DA20();
  sub_765550();
  v34 = v33;
  v35 = *(v4 + 8);
  v35(v6, v3);
  if (v34 <= 1.0)
  {
    sub_75DA20();
    sub_765570();
    v44 = v43;
    result = (v35)(v6, v3);
    v32[3] = &type metadata for CGFloat;
    v32[4] = &protocol witness table for CGFloat;
    *v32 = v44 * 0.5;
  }

  else
  {
    if (qword_93DCF0 != -1)
    {
      swift_once();
    }

    v36 = sub_766CA0();
    v37 = sub_BE38(v36, qword_99FE18);
    v32[3] = v36;
    v32[4] = &protocol witness table for StaticDimension;
    v38 = sub_B1B4(v32);
    return (*(*(v36 - 8) + 16))(v38, v37, v36);
  }

  return result;
}

uint64_t sub_2CB064@<X0>(void *a1@<X8>)
{
  v59 = a1;
  v1 = sub_7656C0();
  v51 = *(v1 - 8);
  v52 = v1;
  __chkstk_darwin(v1);
  v50 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_BD88(&qword_93F918);
  __chkstk_darwin(v55);
  v58 = &v48 - v3;
  v4 = sub_BD88(&qword_963790);
  __chkstk_darwin(v4 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  v13 = sub_BD88(&qword_951BE0);
  __chkstk_darwin(v13 - 8);
  v49 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v48 - v16;
  v17 = sub_764930();
  v56 = *(v17 - 8);
  v57 = v17;
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&unk_94F1F0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - v22;
  sub_75DAA0();
  swift_getKeyPath();
  v53 = v19;
  sub_768750();

  v24 = *(v21 + 8);
  v24(v23, v20);
  sub_75DA50();
  sub_10A2C(v9, &qword_963790);
  sub_109C4(v6, v12, &qword_963790);
  if ((*(v21 + 48))(v12, 1, v20) == 1)
  {
    sub_10A2C(v12, &qword_963790);
    v25 = 1;
    v26 = v54;
  }

  else
  {
    swift_getKeyPath();
    v26 = v54;
    sub_768750();

    v24(v12, v20);
    v25 = 0;
  }

  v28 = v56;
  v27 = v57;
  (*(v56 + 56))(v26, v25, 1, v57);
  v29 = *(v55 + 48);
  v30 = v58;
  (*(v28 + 32))(v58, v53, v27);
  sub_109C4(v26, v30 + v29, &qword_951BE0);
  v31 = *(v28 + 88);
  v32 = v31(v30, v27);
  v33 = v32;
  if (v32 == enum case for Shelf.ContentType.searchResult(_:))
  {
    if ((*(v28 + 48))(v30 + v29, 1, v27) != 1)
    {
      v34 = v49;
      sub_2C8FC(v30 + v29, v49);
      if (v31(v34, v27) == v33)
      {
        v35 = v50;
        sub_75DA20();
        sub_765570();
        v37 = v36;
        (*(v51 + 8))(v35, v52);
        v38 = v59;
        v59[3] = &type metadata for CGFloat;
        v38[4] = &protocol witness table for CGFloat;
        *v38 = v37;
LABEL_10:
        sub_10A2C(v30 + v29, &qword_951BE0);
        return (*(v28 + 8))(v30, v27);
      }

      (*(v28 + 8))(v34, v27);
    }
  }

  else if (v32 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v39 = v50;
    sub_75DA20();
    sub_765570();
    v41 = v40;
    (*(v51 + 8))(v39, v52);
    v42 = v59;
    v59[3] = &type metadata for CGFloat;
    *(v42 + 4) = &protocol witness table for CGFloat;
    *v42 = v41 * 0.5;
    goto LABEL_10;
  }

  if (qword_93DCF0 != -1)
  {
    swift_once();
  }

  v44 = sub_766CA0();
  v45 = sub_BE38(v44, qword_99FE18);
  v46 = v59;
  v59[3] = v44;
  v46[4] = &protocol witness table for StaticDimension;
  v47 = sub_B1B4(v46);
  (*(*(v44 - 8) + 16))(v47, v45, v44);
  return sub_10A2C(v30, &qword_93F918);
}

uint64_t AppEventCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:notifyMePadding:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  sub_10914(a1, a8);
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v16 = v15[5];
  v17 = sub_766690();
  (*(*(v17 - 8) + 32))(a8 + v16, a2, v17);
  sub_10914(a3, a8 + v15[6]);
  sub_10914(a4, a8 + v15[7]);
  sub_10914(a5, a8 + v15[8]);
  sub_10914(a6, a8 + v15[9]);
  v18 = a8 + v15[10];

  return sub_10914(a7, v18);
}

uint64_t AppEventCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v145 = a2;
  v142 = COERCE_DOUBLE(sub_75CF00());
  v141 = *(*&v142 - 8);
  __chkstk_darwin(*&v142);
  v139 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_76A920();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_B170((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_766530();
  sub_B170((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_766530();
  sub_B170((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_766530();
  sub_B170(v7, v7[3]);
  sub_33964();
  sub_766700();
  v146 = v19;
  v147 = *(v15 + 8);
  (*&v147)(v17, v14);
  v20 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v158.origin.x = 0.0;
  v158.origin.y = 0.0;
  v158.size.width = a5;
  v158.size.height = a6;
  CGRectGetWidth(v158);
  sub_766660();
  Height = round(v21);
  v159.origin.x = 0.0;
  v159.origin.y = 0.0;
  v159.size.width = a5;
  v151 = a6;
  v159.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v159)) < 1.0)
  {
    v160.origin.x = 0.0;
    v160.origin.y = 0.0;
    v160.size.width = a5;
    v160.size.height = v151;
    Height = CGRectGetHeight(v160);
  }

  v161.origin.x = 0.0;
  v161.origin.y = 0.0;
  v161.size.width = a5;
  v161.size.height = v151;
  Width = CGRectGetWidth(v161);
  sub_B170((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_769D20();
  sub_766530();
  v162.origin.x = 0.0;
  v162.origin.y = 0.0;
  v162.size.width = Width;
  v162.size.height = Height;
  v24 = CGRectGetWidth(v162);
  sub_B170((v6 + v18[9]), *(v6 + v18[9] + 24));
  sub_769D20();
  sub_766530();
  sub_1ED18(v6 + v18[10], v156, &unk_943B10);
  if (v157)
  {
    sub_B170(v156, v157);
    sub_766530();
    sub_BEB8(v156);
  }

  else
  {
    sub_10A2C(v156, &unk_943B10);
  }

  sub_1ED18(v6 + v18[11], v156, &unk_943B10);
  if (v157)
  {
    sub_B170(v156, v157);
    sub_766530();
    sub_BEB8(v156);
  }

  else
  {
    sub_10A2C(v156, &unk_943B10);
  }

  sub_1ED18(v6 + v18[17], &v154, &unk_943B10);
  v148 = a4;
  v149 = a3;
  if (!v155)
  {
    sub_10A2C(&v154, &unk_943B10);
LABEL_17:
    LODWORD(v141) = 1;
    MinX = 0.0;
    v137 = 0.0;
    v136 = 0.0;
    v138 = 0.0;
    goto LABEL_18;
  }

  sub_10914(&v154, v156);
  sub_B170(v156, v157);
  if (sub_766540())
  {
LABEL_16:
    sub_BEB8(v156);
    goto LABEL_17;
  }

  sub_1ED18(v6 + v18[18], &v152, &unk_943B10);
  if (!v153)
  {
    sub_10A2C(&v152, &unk_943B10);
    goto LABEL_16;
  }

  sub_10914(&v152, &v154);
  sub_B170(&v154, v155);
  if (sub_766540())
  {
    sub_BEB8(&v154);
    goto LABEL_16;
  }

  MaxY = v24;
  v109 = sub_705B8(0.0, 0.0, a5, v151, 0.0, v146);
  v111 = v110;
  v138 = v112;
  v134 = v113;
  MinX = COERCE_DOUBLE(swift_getObjectType());
  v114 = [a1 traitCollection];
  v115 = [v114 preferredContentSizeCategory];
  v137 = *&UIContentSizeCategoryExtraExtraExtraLarge;
  v116 = sub_769B50();

  v144 = Height;
  v135 = Width;
  v133 = v20;
  if (v116)
  {
    if (qword_93C4E8 != -1)
    {
      swift_once();
    }

    v117 = qword_99B3D0;
  }

  else
  {
    if (qword_93C4E0 != -1)
    {
      swift_once();
    }

    v117 = qword_99B3B8;
  }

  v118 = v142;
  v119 = sub_BE38(*&v142, v117);
  v120 = v139;
  (*(*&v141 + 16))(v139, v119, COERCE_DOUBLE(*&v118));
  v121 = [a1 traitCollection];
  v122 = [v121 preferredContentSizeCategory];
  sub_769B50();

  type metadata accessor for SmallLockupView();
  v123 = v138;
  v124 = v134;
  sub_1FE304(v120, a1);
  v126 = ceil(v125);
  v181.origin.x = 0.0;
  v181.origin.y = 0.0;
  v181.size.width = a5;
  v127 = v151;
  v181.size.height = v151;
  MinX = CGRectGetMinX(v181);
  v182.origin.x = v109;
  v182.origin.y = v111;
  v182.size.width = v123;
  v182.size.height = v124;
  v128 = v111;
  v129 = v109;
  v130 = CGRectGetHeight(v182) - v126;
  v183.origin.x = 0.0;
  v183.origin.y = 0.0;
  v183.size.width = a5;
  v183.size.height = v127;
  v131 = CGRectGetWidth(v183);
  sub_B170(v156, v157);
  v137 = v130;
  v136 = v131;
  sub_766530();
  v184.origin.x = v129;
  v184.origin.y = v128;
  v184.size.width = v123;
  v184.size.height = v124;
  v132 = CGRectGetMinX(v184);
  v185.origin.x = v129;
  v185.origin.y = v128;
  v185.size.width = v123;
  v185.size.height = v124;
  CGRectGetMinY(v185);
  v186.origin.x = v129;
  v186.origin.y = v128;
  v186.size.width = v123;
  v186.size.height = v124;
  CGRectGetWidth(v186);
  sub_B170(&v154, v155);
  v138 = v126;
  sub_766530();
  (*(*&v141 + 8))(v120, COERCE_DOUBLE(*&v142));
  sub_BEB8(&v154);
  sub_BEB8(v156);
  LODWORD(v141) = 0;
  Height = v144;
  Width = v135;
  v24 = MaxY;
  a4 = v148;
  a3 = v149;
  v20 = v133;
LABEL_18:
  sub_1ED18(v7 + v18[12], &v154, &unk_943B10);
  v150 = a5;
  if (v155)
  {
    sub_10914(&v154, v156);
    sub_B170(v156, v157);
    v25 = v151;
    sub_7665A0();
    v144 = Height;
    v142 = v26;
    sub_B170((v7 + v20[6]), *(v7 + v20[6] + 24));
    sub_33964();
    sub_766700();
    MaxY = v24;
    (*&v147)(v17, v14);
    v163.origin.x = a3;
    v163.origin.y = a4;
    v163.size.width = a5;
    v163.size.height = v25;
    CGRectGetMaxX(v163);
    v164.origin.x = a3;
    v164.origin.y = a4;
    v164.size.width = a5;
    v164.size.height = v25;
    CGRectGetMinY(v164);
    sub_B170(v156, v157);
    v24 = MaxY;
    Height = v144;
    sub_769D20();
    sub_766530();
    sub_BEB8(v156);
  }

  else
  {
    sub_10A2C(&v154, &unk_943B10);
  }

  v27 = [a1 traitCollection];
  v28 = [v27 preferredContentSizeCategory];
  v29 = sub_769B50();

  if (v29)
  {
    v30 = sub_705B8(0.0, 0.0, v150, v151, 0.0, v146);
    v147 = v30;
    v32 = v31;
    v146 = v31;
    v34 = v33;
    v36 = v35;
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = v24;
    v165.size.height = Height;
    MaxY = CGRectGetMaxY(v165);
    v37 = (v7 + v18[13]);
    sub_B170(v37, v37[3]);
    sub_7665A0();
    v39 = v38;
    v41 = v40;
    v144 = v42;
    sub_B170((v7 + v20[7]), *(v7 + v20[7] + 24));
    sub_766720();
    v44 = v43;
    v166.origin.x = v30;
    v166.origin.y = v32;
    v166.size.width = v34;
    v166.size.height = v36;
    v45 = CGRectGetMinX(v166);
    v46 = MaxY + v44;
    sub_B170(v37, v37[3]);
    sub_769D20();
    sub_766530();
    v167.origin.x = v45;
    v167.origin.y = v46;
    v167.size.width = v39;
    v167.size.height = v41;
    v47 = CGRectGetMaxY(v167) - v144;
    v48 = (v7 + v18[14]);
    sub_B170(v48, v48[3]);
    v49 = v36;
    sub_7665A0();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    sub_B170((v7 + v20[8]), *(v7 + v20[8] + 24));
    v142 = v55;
    sub_766720();
    v57 = v56;
    v168.origin.x = v147;
    v168.origin.y = v146;
    v144 = v34;
    v168.size.width = v34;
    MaxY = v49;
    v168.size.height = v49;
    v58 = CGRectGetMinX(v168);
    sub_B170(v48, v48[3]);
    sub_769D20();
    sub_766530();
    v169.origin.x = v58;
    v169.origin.y = v47 + v57;
    v169.size.width = v51;
    v169.size.height = v53;
    v59 = CGRectGetMaxY(v169);
    sub_1ED18(v7 + v18[15], &v154, &qword_9417D0);
    if (v155)
    {
      sub_10914(&v154, v156);
      sub_B170(v156, v157);
      if (sub_766500())
      {
        v60 = v59 - v142;
        sub_B170(v156, v157);
        v61 = v144;
        v62 = MaxY;
        sub_7665A0();
        v64 = v63;
        v66 = v65;
        sub_B170((v7 + v20[9]), *(v7 + v20[9] + 24));
        sub_766720();
        v68 = v67;
        v170.origin.x = v147;
        v170.origin.y = v146;
        v170.size.width = v61;
        v170.size.height = v62;
        v69 = CGRectGetMinX(v170);
        sub_B170(v156, v157);
        sub_769D20();
        sub_766530();
        v171.origin.x = v69;
        v171.origin.y = v60 + v68;
        v171.size.width = v64;
        v171.size.height = v66;
        CGRectGetMaxY(v171);
      }

      sub_BEB8(v156);
    }

    else
    {
      sub_10A2C(&v154, &qword_9417D0);
    }

    sub_1ED18(v7 + v18[16], &v154, &unk_943B10);
    if (v155)
    {
      sub_10914(&v154, v156);
      sub_B170(v156, v157);
      if ((sub_766540() & 1) == 0 && (LOBYTE(v141) & 1) == 0)
      {
        sub_B170(v156, v157);
        v102 = v144;
        v103 = MaxY;
        sub_7665A0();
        v105 = v104;
        v178.origin.x = MinX;
        v178.origin.y = v137;
        v178.size.width = v136;
        v178.size.height = v138;
        v142 = CGRectGetMinY(v178) - v105;
        v106 = v147;
        v179.origin.x = v147;
        v107 = v146;
        v179.origin.y = v146;
        v179.size.width = v102;
        v179.size.height = v103;
        v141 = CGRectGetMinX(v179);
        v180.origin.x = v106;
        v180.origin.y = v107;
        v180.size.width = v102;
        v180.size.height = v103;
        CGRectGetWidth(v180);
        sub_B170(v156, v157);
        sub_766530();
      }

      sub_BEB8(v156);
    }

    else
    {
      sub_10A2C(&v154, &unk_943B10);
    }
  }

  else
  {
    v70 = sub_705B8(0.0, 0.0, Width, Height, 0.0, v146);
    v72 = v71;
    v74 = v73;
    v76 = v75;
    sub_B170((v7 + v20[10]), *(v7 + v20[10] + 24));
    sub_33964();
    sub_766700();
    v78 = v77;
    (*&v147)(v17, v14);
    v146 = v70;
    v172.origin.x = v70;
    v144 = v72;
    v172.origin.y = v72;
    v172.size.width = v74;
    v172.size.height = v76;
    v79 = CGRectGetHeight(v172) - v78;
    sub_1ED18(v7 + v18[15], &v154, &qword_9417D0);
    if (v155)
    {
      sub_10914(&v154, v156);
      sub_B170(v156, v157);
      if (sub_766500())
      {
        sub_B170(v156, v157);
        sub_7665A0();
        v81 = v80;
        v83 = v82;
        v147 = *&v84;
        MaxY = v85;
        v86 = v85 + v79 - v82;
        v173.origin.x = v146;
        v173.origin.y = v144;
        v173.size.width = v74;
        v173.size.height = v76;
        v87 = CGRectGetMinX(v173);
        sub_B170(v156, v157);
        sub_769D20();
        sub_766530();
        sub_B170((v7 + v20[9]), *(v7 + v20[9] + 24));
        sub_766720();
        v89 = v88;
        v174.origin.x = v87;
        v174.origin.y = v86;
        v174.size.width = v81;
        v174.size.height = v83;
        v79 = CGRectGetMinY(v174) - v89;
      }

      sub_BEB8(v156);
    }

    else
    {
      sub_10A2C(&v154, &qword_9417D0);
    }

    v90 = (v7 + v18[14]);
    sub_B170(v90, v90[3]);
    sub_7665A0();
    v92 = v91;
    v94 = v93;
    v147 = *&v95;
    v96 = v76;
    v97 = v74;
    MaxY = v98;
    v99 = v98 + v79 - v93;
    v175.origin.x = v146;
    v175.origin.y = v144;
    v175.size.width = v97;
    v175.size.height = v96;
    v100 = CGRectGetMinX(v175);
    sub_B170(v90, v90[3]);
    sub_769D20();
    sub_766530();
    sub_B170((v7 + v20[8]), *(v7 + v20[8] + 24));
    sub_766720();
    v176.origin.x = v100;
    v176.origin.y = v99;
    v176.size.width = v92;
    v176.size.height = v94;
    CGRectGetMinY(v176);
    v101 = (v7 + v18[13]);
    sub_B170(v101, v101[3]);
    sub_7665A0();
    v177.origin.x = v146;
    v177.origin.y = v144;
    v177.size.width = v97;
    v177.size.height = v96;
    CGRectGetMinX(v177);
    sub_B170(v101, v101[3]);
    sub_769D20();
    sub_766530();
  }

  return sub_7664B0();
}

__n128 AppEventCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:videoView:gradientBlurView:notifyMeButton:kindLabel:titleLabel:subtitleLabel:separatorView:lockupContainerView:lockupView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_17D680(a1, a9);
  v22 = type metadata accessor for AppEventCardLayout(0);
  sub_10914(a2, a9 + v22[5]);
  sub_10914(a3, a9 + v22[6]);
  sub_10914(a4, a9 + v22[7]);
  sub_10914(a5, a9 + v22[8]);
  sub_10914(a6, a9 + v22[9]);
  v23 = a9 + v22[10];
  v24 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a7 + 32);
  v25 = a9 + v22[11];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a8 + 32);
  v27 = a9 + v22[12];
  v28 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a10 + 32);
  sub_10914(a11, a9 + v22[13]);
  sub_10914(a12, a9 + v22[14]);
  v29 = a9 + v22[15];
  v30 = *(a13 + 16);
  *v29 = *a13;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a13 + 32);
  v31 = a9 + v22[16];
  v32 = *(a14 + 16);
  *v31 = *a14;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a14 + 32);
  v33 = a9 + v22[17];
  v34 = *(a15 + 16);
  *v33 = *a15;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a15 + 32);
  v35 = a9 + v22[18];
  result = *a16;
  v37 = *(a16 + 16);
  *v35 = *a16;
  *(v35 + 16) = v37;
  *(v35 + 32) = *(a16 + 32);
  return result;
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_766690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_766690();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppEventCardLayout.Metrics.notifyMePadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 24);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 28);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 32);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 36);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 40);
  sub_BEB8(v1 + v3);

  return sub_10914(a1, v1 + v3);
}

void static AppEventCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();

  sub_2CEF74(a1, a2, a3, a4, ObjectType);
}

void AppEventCardLayout.measurements(fitting:in:)(void *a1)
{
  ObjectType = swift_getObjectType();

  sub_2CDA90(a1, v1, ObjectType);
}

void sub_2CDA90(void *a1, uint64_t a2, int *a3)
{
  v81 = a3;
  v79 = sub_76A920();
  v83 = *(v79 - 8);
  __chkstk_darwin(v79);
  v82 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_766C30();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_766C50();
  v75 = *(v77 - 8);
  __chkstk_darwin(v77);
  v73 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_767170();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_75D850();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v66 = &v60 - v11;
  v12 = sub_75CF00();
  v71 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppEventCardLayout(0);
  sub_1ED18(a2 + v15[18], &v86, &unk_943B10);
  v16 = v87;
  sub_10A2C(&v86, &unk_943B10);
  v17 = [a1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];
  v19 = sub_769B50();

  if (v19)
  {
    v60 = v16;
    v80 = a2;
    v20 = v15[13];
    v21 = v15[14];
    v22 = v15[16];
    v63 = v15[15];
    v64 = v22;
    if (qword_93C4E8 != -1)
    {
      swift_once();
    }

    v61 = (v80 + v20);
    v62 = (v80 + v21);
    v23 = sub_BE38(v12, qword_99B3D0);
    v81 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_766660();
    v25 = v24;
    v26 = [a1 traitCollection];
    v27 = v71;
    (*(v71 + 16))(v14, v23, v12);
    v28 = sub_75CE70();
    v30 = v72;
    if ((v31 & 1) == 0 && ((v28 | v29) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_769A00())
      {
        if (qword_93C440 != -1)
        {
          swift_once();
        }

        v32 = qword_946920;
      }

      else
      {
        if (qword_93C448 != -1)
        {
          swift_once();
        }

        v32 = qword_946938;
      }

      v33 = v68;
      v34 = sub_BE38(v68, v32);
      v35 = v67;
      v36 = v65;
      (*(v67 + 16))(v65, v34, v33);
      v37 = v66;
      (*(v35 + 32))(v66, v36, v33);
      sub_75D800();
      sub_75D830();
      sub_75CE80();
      (*(v35 + 8))(v37, v33);
    }

    sub_75CDB0();
    v39 = v38;

    (*(v27 + 8))(v14, v12);
    *&v84 = _swiftEmptyArrayStorage;
    sub_BD88(&qword_941B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_77B6D0;
    v87 = &type metadata for CGFloat;
    v88 = &protocol witness table for CGFloat;
    *&v86 = v25;
    *(inited + 56) = v30;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_B1B4((inited + 32));
    sub_767180();
    sub_109F98(inited);
    v41 = v80;
    v42 = v79;
    if (v60)
    {
      v87 = &type metadata for CGFloat;
      v88 = &protocol witness table for CGFloat;
      *&v86 = ceil(v39 + 16.0 + 16.0);
      v43 = v69;
      sub_767180();
      v44 = v84;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_7AADC(0, v44[2] + 1, 1, v44);
      }

      v46 = v44[2];
      v45 = v44[3];
      if (v46 >= v45 >> 1)
      {
        v44 = sub_7AADC((v45 > 1), v46 + 1, 1, v44);
      }

      v87 = v30;
      v88 = &protocol witness table for VerticalSpaceMeasurable;
      v47 = sub_B1B4(&v86);
      v48 = v70;
      (*(v70 + 16))(v47, v43, v30);
      v44[2] = v46 + 1;
      sub_10914(&v86, &v44[5 * v46 + 4]);
      (*(v48 + 8))(v43, v30);
      *&v84 = v44;
    }

    (*(v76 + 104))(v74, enum case for StackMeasurable.Axis.vertical(_:), v78);
    v49 = v73;
    sub_766C40();
    sub_766C20();
    (*(v75 + 8))(v49, v77);
    sub_B170(v41, v41[3]);
    v50 = v82;
    sub_33964();
    sub_766700();
    v51 = *(v83 + 8);
    v83 += 8;
    v51(v50, v42);
    sub_769DA0();
    sub_B170(v61, v61[3]);
    sub_7665A0();
    v53 = v52;
    v54 = v81;
    sub_B170((v41 + v81[7]), *(v41 + v81[7] + 24));
    sub_766720();
    *&v86 = v53;
    sub_7666F0();
    sub_B170(v62, v62[3]);
    sub_7665A0();
    v56 = v55;
    sub_B170((v41 + v54[8]), *(v41 + v54[8] + 24));
    sub_766720();
    *&v86 = v56;
    sub_7666F0();
    sub_1ED18(v41 + v63, &v84, &qword_9417D0);
    if (v85)
    {
      sub_10914(&v84, &v86);
      sub_B170(&v86, v87);
      if (sub_766500())
      {
        sub_B170(&v86, v87);
        sub_7665A0();
        v58 = v57;
        sub_B170((v41 + v81[9]), *(v41 + v81[9] + 24));
        sub_766720();
        *&v84 = v58;
        sub_7666F0();
      }

      sub_BEB8(&v86);
    }

    else
    {
      sub_10A2C(&v84, &qword_9417D0);
    }

    sub_B170((v41 + v81[10]), *(v41 + v81[10] + 24));
    v59 = v82;
    sub_33964();
    sub_766700();
    v51(v59, v42);
    sub_1ED18(v41 + v64, &v84, &unk_943B10);
    if (v85)
    {
      sub_10914(&v84, &v86);
      sub_B170(&v86, v87);
      if ((sub_766540() & 1) == 0)
      {
        sub_B170(&v86, v87);
        sub_7665A0();
      }

      sub_BEB8(&v86);
    }

    else
    {
      sub_10A2C(&v84, &unk_943B10);
    }
  }

  else
  {
    sub_2CE848(a2, v16 != 0, a1);
  }
}

double sub_2CE848(uint64_t a1, int a2, void *a3)
{
  v45 = a2;
  v50 = sub_766C30();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_766C50();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_767170();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75D850();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v14 = sub_75CF00();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C4E0 != -1)
  {
    swift_once();
  }

  v18 = sub_BE38(v14, qword_99B3B8);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_766660();
  v20 = v19;
  v52 = a3;
  v21 = [a3 traitCollection];
  (*(v15 + 16))(v17, v18, v14);
  v22 = sub_75CE70();
  if ((v24 & 1) == 0 && ((v22 | v23) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_769A00())
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v25 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v25 = qword_946938;
    }

    v26 = sub_BE38(v8, v25);
    v27 = v42;
    (*(v42 + 16))(v10, v26, v8);
    (*(v27 + 32))(v13, v10, v8);
    sub_75D800();
    sub_75D830();
    sub_75CE80();
    (*(v27 + 8))(v13, v8);
  }

  sub_75CDB0();
  v29 = v28;

  (*(v15 + 8))(v17, v14);
  v56 = _swiftEmptyArrayStorage;
  sub_BD88(&qword_941B30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77B6D0;
  v54 = &type metadata for CGFloat;
  v55 = &protocol witness table for CGFloat;
  *&v53 = v20;
  v31 = v46;
  *(inited + 56) = v46;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_B1B4((inited + 32));
  sub_767180();
  sub_109F98(inited);
  if (v45)
  {
    v54 = &type metadata for CGFloat;
    v55 = &protocol witness table for CGFloat;
    *&v53 = ceil(v29 + 4.0 + 4.0);
    v32 = v43;
    sub_767180();
    v33 = v56;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_7AADC(0, v33[2] + 1, 1, v33);
    }

    v35 = v33[2];
    v34 = v33[3];
    if (v35 >= v34 >> 1)
    {
      v33 = sub_7AADC((v34 > 1), v35 + 1, 1, v33);
    }

    v54 = v31;
    v55 = &protocol witness table for VerticalSpaceMeasurable;
    v36 = sub_B1B4(&v53);
    v37 = v44;
    (*(v44 + 16))(v36, v32, v31);
    v33[2] = v35 + 1;
    sub_10914(&v53, &v33[5 * v35 + 4]);
    (*(v37 + 8))(v32, v31);
    v56 = v33;
  }

  (*(v48 + 104))(v47, enum case for StackMeasurable.Axis.vertical(_:), v50);
  sub_766C40();
  sub_766C20();
  v39 = v38;
  (*(v49 + 8))(v6, v51);
  return v39;
}

void sub_2CEF74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v21 = a5;
  v20 = a4;
  v27 = a3;
  v19 = a1;
  v26 = sub_7580D0();
  v6 = *(v26 - 8);
  __chkstk_darwin(v26);
  v25 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_764CF0();
  v8 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _swiftEmptyArrayStorage;
  v34 = _swiftEmptyArrayStorage;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + 32;
    do
    {
      sub_134D8(v12, v33);
      sub_10914(v33, v31);
      sub_BD88(&unk_944DA0);
      sub_758700();
      if ((swift_dynamicCast() & 1) != 0 && v32)
      {
        sub_769440();
        if (*(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v34 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v10 = v34;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  if (v10 >> 62)
  {
LABEL_25:
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = sub_76A860();
  }

  else
  {
    v28 = v10 & 0xFFFFFFFFFFFFFF8;
    v30 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
  }

  v13 = 0;
  v29 = v10 & 0xC000000000000001;
  v22 = (v8 + 8);
  ++v6;
  do
  {
    v14 = v13;
    if (v30 == v13)
    {
      break;
    }

    if (v29)
    {
      sub_76A770();
      if (__OFADD__(v14, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        break;
      }
    }

    else
    {
      if (v13 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (__OFADD__(v14, 1))
      {
        goto LABEL_21;
      }
    }

    if ((sub_7586A0() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_BD88(&unk_944300);
    sub_768900();
    sub_768ED0();
    swift_getObjectType();
    sub_7586E0();
    v15 = v23;
    sub_764F00();

    sub_758330();
    (*v22)(v15, v24);
    swift_getObjectType();
    sub_7586E0();
    sub_764E00();

    v8 = v25;
    sub_758230();
    v16 = sub_758080();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*v6)(v8, v26);
    v13 = v14 + 1;
  }

  while ((v16 & 1) == 0);
  v17 = v30 != v14;

  sub_2CE848(v19, v17, v20);
}

uint64_t sub_2CF404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2CF4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppEventCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_2CF594()
{
  type metadata accessor for AppEventCardLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_70B18(319, &unk_94E830);
    if (v1 <= 0x3F)
    {
      sub_7E0B0(319, &qword_94E850, &unk_9418A0);
      if (v2 <= 0x3F)
      {
        sub_70B18(319, &qword_941880);
        if (v3 <= 0x3F)
        {
          sub_7E0B0(319, &unk_94E840, &unk_941890);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2CF6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_766690();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2CF7A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_766690();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2CF844()
{
  result = sub_70B18(319, &qword_943C60);
  if (v1 <= 0x3F)
  {
    result = sub_766690();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_2CF910(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

double sub_2CFA14()
{
  v0 = sub_7656C0();
  v39 = *(v0 - 8);
  __chkstk_darwin(v0);
  v38 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_75E410();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75E430();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_762D10();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75A3E0();
  sub_2D008C(&qword_94E4F8, &type metadata accessor for PrivacyFooter);
  sub_75C750();
  v11 = v42[0];
  if (!v42[0])
  {
    return 0.0;
  }

  v33 = v0;
  v34 = v5;
  v35 = v4;
  sub_26F08();
  if (qword_93D868 != -1)
  {
    swift_once();
  }

  v12 = sub_7666D0();
  sub_BE38(v12, qword_99F130);
  swift_getKeyPath();
  sub_75C7B0();

  v13 = v42[0];
  v14 = sub_769E10();

  v32 = v11;
  sub_75A3D0();
  sub_759CE0();

  v15 = sub_758EC0();

  v16 = sub_7653B0();
  v43 = v16;
  v44 = sub_2D008C(&qword_93F9B0, &type metadata accessor for Feature);
  v17 = sub_B1B4(v42);
  (*(*(v16 - 8) + 104))(v17, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v31 = v15;
  v18 = v14;
  sub_765C30();
  sub_BEB8(v42);
  sub_762CD0();
  sub_762CE0();
  (*(v8 + 8))(v10, v7);
  if (qword_93DD40 != -1)
  {
    swift_once();
  }

  v19 = sub_BE38(v2, qword_99FFD0);
  (*(v36 + 16))(v37, v19, v2);
  v20 = v43;
  v21 = v44;
  v22 = sub_B170(v42, v43);
  v41[3] = v20;
  v41[4] = *(v21 + 8);
  v23 = sub_B1B4(v41);
  (*(*(v20 - 8) + 16))(v23, v22, v20);
  v24 = v40;
  sub_75E420();
  swift_getKeyPath();
  v25 = v38;
  sub_75C7B0();

  sub_765630();
  (*(v39 + 8))(v25, v33);
  swift_getKeyPath();
  sub_75C7B0();

  sub_2D008C(&unk_94E500, &type metadata accessor for PrivacyFooterLayout);
  v26 = v35;
  sub_7665A0();
  v28 = v27;

  swift_unknownObjectRelease();

  (*(v34 + 8))(v24, v26);
  sub_BEB8(v42);
  return v28;
}

uint64_t sub_2D008C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2D00D4()
{
  result = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  if (result)
  {
    qword_94E510 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2D0124()
{
  result = [objc_opt_self() colorEffectSaturate:2.0];
  qword_94E518 = result;
  return result;
}

void sub_2D0164()
{
  sub_BE70(0, &qword_94E5C0);
  v0 = [objc_opt_self() blackColor];
  v1 = [swift_getObjCClassFromMetadata() effectCompositingColor:v0 withMode:23 alpha:1.0];

  if (v1)
  {
    qword_94E520 = v1;
  }

  else
  {
    __break(1u);
  }
}

id sub_2D0200(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v111 = sub_768C60();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v11 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v115 = sub_75A010();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v112 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7664A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_766CA0();
  v17 = *(v109 - 1);
  __chkstk_darwin(v109);
  v19 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_BD88(&qword_95F810);
  __chkstk_darwin(v20 - 8);
  v108 = &v107 - v21;
  v22 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_itemLayoutContext;
  v23 = sub_75C840();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = 0;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupContentBackgroundView;
  v25 = [objc_allocWithZone(UIView) init];
  v113 = objc_opt_self();
  v26 = [v113 systemBackgroundColor];
  [v25 setBackgroundColor:v26];

  *&v5[v24] = v25;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView] = 0;
  v27 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel;
  sub_75BB20();
  *&v5[v27] = sub_75BB00();
  v28 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerLabelPresenter];
  *v29 = 0u;
  v29[1] = 0u;
  v30 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel;
  *&v5[v30] = sub_75BB00();
  v31 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel;
  *&v5[v31] = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel] = 0;
  v107 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView;
  v32 = sub_765770();
  (*(*(v32 - 8) + 56))(v108, 1, 1, v32);
  *v16 = UIFontTextStyleFootnote;
  (*(v14 + 104))(v16, enum case for FontSource.textStyle(_:), v13);
  *(&v122 + 1) = v13;
  v123 = &protocol witness table for FontSource;
  v33 = sub_B1B4(&v121);
  (*(v14 + 16))(v33, v16, v13);
  v34 = UIFontTextStyleFootnote;
  sub_766CB0();
  (*(v14 + 8))(v16, v13);
  (*(v114 + 104))(v112, enum case for WordmarkView.Alignment.center(_:), v115);
  v35 = v109;
  *(&v122 + 1) = v109;
  v123 = &protocol witness table for StaticDimension;
  v36 = sub_B1B4(&v121);
  (*(v17 + 16))(v36, v19, v35);
  v37 = objc_allocWithZone(sub_75A030());
  v38 = sub_75A000();
  (*(v17 + 8))(v19, v35);
  *&v5[v107] = v38;
  v39 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton;
  v40 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v39] = sub_1DD00C(0);
  v41 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel;
  *&v5[v41] = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bannerViewHeight] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = 0;
  v42 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer;
  *&v5[v42] = [objc_allocWithZone(UIView) init];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurEffect;
  *&v5[v43] = [objc_opt_self() effectWithStyle:7];
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayGradientMaskView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainerMaskView] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_keylineView] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView] = 0;
  v44 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  *v44 = 0;
  v44[1] = 0;
  v45 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView;
  sub_759210();
  *&v5[v45] = sub_759020();
  v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer] = 0;
  v46 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleText];
  *v46 = 0;
  v46[1] = 0;
  v47 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleText];
  *v47 = 0;
  v47[1] = 0;
  v48 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_theme;
  v49 = enum case for ProductPageTheme.infer(_:);
  v50 = sub_75BED0();
  (*(*(v50 - 8) + 104))(&v5[v48], v49, v50);
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel] = 0;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
  sub_75DC80();
  v51 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkObservation];
  *v51 = 0u;
  *(v51 + 1) = 0u;
  *(v51 + 4) = 0;
  v52 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerTapHandler];
  *v52 = 0;
  v52[1] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell____lazy_storage___changeSubtitleOnce] = 1;
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupOfferAnimationCount] = 0;
  v120.receiver = v5;
  v120.super_class = ObjectType;
  v53 = objc_msgSendSuper2(&v120, "initWithFrame:", a1, a2, a3, a4);
  v54 = [v53 contentView];
  v55 = [v54 layer];

  [v55 setAllowsGroupBlending:0];
  v56 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel;
  [*(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel) setHidden:1];
  v57 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel;
  [*(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel) setHidden:1];
  [*(v53 + v56) setLineBreakMode:4];
  v58 = *(v53 + v56);
  sub_BE70(0, &qword_93E540);
  v59 = v58;
  v60 = sub_769FF0();
  [v59 setTextColor:v60];

  *&v115 = v56;
  [*(v53 + v56) setUserInteractionEnabled:1];
  v61 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"developerLabelTapped:"];
  v112 = v61;

  [*(v53 + v56) addGestureRecognizer:v61];
  [*(v53 + v57) setLineBreakMode:4];
  v62 = *(v53 + v57);
  v63 = sub_769FF0();
  [v62 setTextColor:v63];

  [*(v53 + v57) setUserInteractionEnabled:1];
  v109 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v53 action:"taglineLabelTapped:"];
  v64 = *(v53 + v57);
  v65 = v57;
  v107 = v57;
  [v64 addGestureRecognizer:v109];
  v66 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerButton;
  swift_unknownObjectWeakAssign();
  v114 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel;
  v67 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel);
  v68 = sub_769FF0();
  [v67 setTextColor:v68];

  v108 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView;
  v69 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconView);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v70 = v69;
  sub_768C10();
  sub_10A2C(&v118, &unk_93FBD0);
  sub_10A2C(&v121, &unk_93FBD0);
  sub_769E70();

  v71 = *(v110 + 8);
  v72 = v111;
  v71(v11, v111);
  v110 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel;
  v73 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v74 = v73;
  sub_768C10();
  sub_10A2C(&v118, &unk_93FBD0);
  sub_10A2C(&v121, &unk_93FBD0);
  sub_769E70();

  v71(v11, v72);
  v75 = *(v53 + v115);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v76 = v75;
  sub_768C10();
  sub_10A2C(&v118, &unk_93FBD0);
  sub_10A2C(&v121, &unk_93FBD0);
  sub_769E70();

  v71(v11, v72);
  v77 = *(v53 + v65);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v78 = v77;
  sub_768C10();
  sub_10A2C(&v118, &unk_93FBD0);
  sub_10A2C(&v121, &unk_93FBD0);
  sub_769E70();

  v71(v11, v72);
  v79 = *(v53 + v66);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v80 = v79;
  sub_768C10();
  sub_10A2C(&v118, &unk_93FBD0);
  sub_10A2C(&v121, &unk_93FBD0);
  sub_769E70();

  v71(v11, v72);
  v81 = *(v53 + v114);
  v121 = 0u;
  v122 = 0u;
  v118 = 0u;
  v119 = 0u;
  v82 = v81;
  sub_768C10();
  sub_10A2C(&v118, &unk_93FBD0);
  sub_10A2C(&v121, &unk_93FBD0);
  sub_769E70();

  v71(v11, v72);
  v83 = [v53 contentView];
  v84 = v113;
  v85 = [v113 clearColor];
  [v83 setBackgroundColor:v85];

  v86 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer;
  v87 = *(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_backgroundContentContainer);
  v88 = [v84 clearColor];
  [v87 setBackgroundColor:v88];

  v89 = [v53 contentView];
  [v89 addSubview:*(v53 + v86)];

  v90 = [v53 contentView];
  [v90 addSubview:*(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_lockupContentBackgroundView)];

  v91 = [v53 contentView];
  [v91 addSubview:*&v108[v53]];

  v92 = [v53 contentView];
  [v92 addSubview:*(v53 + v110)];

  v93 = [v53 contentView];
  [v93 addSubview:*(v53 + v115)];

  v94 = [v53 contentView];
  [v94 addSubview:*(v53 + v66)];

  v95 = [v53 contentView];
  [v95 addSubview:*(v53 + v114)];

  v96 = [v53 contentView];
  [v96 addSubview:*(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView)];

  v97 = [v53 contentView];
  [v97 addSubview:*(v53 + v107)];

  sub_2D14F4();
  sub_134D8(v53 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkInquiry, &v118);
  sub_B170(&v118, *(&v119 + 1));
  v98 = sub_BE70(0, &qword_940340);
  v99 = sub_769970();
  v117[3] = v98;
  v117[4] = &protocol witness table for OS_dispatch_queue;
  v117[0] = v99;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_75ACF0();

  sub_BEB8(v117);
  v100 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkObservation;
  swift_beginAccess();
  sub_2DE64C(&v121, v53 + v100);
  swift_endAccess();
  sub_BEB8(&v118);
  sub_BD88(&qword_9477F0);
  v101 = swift_allocObject();
  v115 = xmmword_77B6D0;
  *(v101 + 16) = xmmword_77B6D0;
  *(v101 + 32) = sub_7676E0();
  *(v101 + 40) = &protocol witness table for UITraitLayoutDirection;
  v102 = ObjectType;
  *(&v122 + 1) = ObjectType;
  *&v121 = v53;
  v103 = v53;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(&v121);
  v104 = swift_allocObject();
  *(v104 + 16) = v115;
  *(v104 + 32) = sub_7677C0();
  *(v104 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(&v122 + 1) = v102;
  *&v121 = v103;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(&v121);
  v105 = swift_allocObject();
  *(v105 + 16) = v115;
  *(v105 + 32) = sub_767890();
  *(v105 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_769F40();

  swift_unknownObjectRelease();

  return v103;
}

void sub_2D14F4()
{
  v1 = sub_75BED0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  (*(v2 + 16))(v4, v0 + v5, v1);
  v6 = (*(v2 + 88))(v4, v1);
  if (v6 == enum case for ProductPageTheme.infer(_:))
  {
    sub_2D7930();
    return;
  }

  if (v6 == enum case for ProductPageTheme.blue(_:))
  {
    v7 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v7)
    {
      goto LABEL_14;
    }

    v8 = qword_93CB38;
    v9 = v7;
    if (v8 != -1)
    {
      swift_once();
    }

    v10 = qword_99CCA8;
    goto LABEL_13;
  }

  if (v6 == enum case for ProductPageTheme.orange(_:))
  {
    v11 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel);
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = qword_93CB40;
    v9 = v11;
    if (v12 != -1)
    {
      swift_once();
    }

    v10 = qword_99CCB0;
LABEL_13:
    [v9 setTextColor:v10];

LABEL_14:
    v13 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
    sub_BE70(0, &qword_93E540);
    v14 = v0;
    v15 = sub_769FD0();
    [v13 setTextColor:v15];

    v16 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
    v17 = sub_769FF0();
    [v16 setTextColor:v17];

    v18 = *(v14 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView);
    v19 = sub_769FF0();
    [v18 setTintColor:v19];

    v20 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v21 = *(v14 + v20);
    if (v21)
    {
      v22 = v21;
      v23 = sub_769FE0();
      [v22 setTextColor:v23];
    }

    return;
  }

  if (v6 == enum case for ProductPageTheme.white(_:))
  {
    v24 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel);
    sub_BE70(0, &qword_93E540);
    v25 = v0;
    v26 = sub_769FD0();
    [v24 setTextColor:v26];

    v27 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
    if (qword_93CB48 != -1)
    {
      v31 = *(v25 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel);
      swift_once();
      v27 = v31;
    }

    v28 = qword_99CCB8;
    [v27 setTextColor:qword_99CCB8];
    [*(v25 + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView) setTintColor:v28];
    v29 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
    swift_beginAccess();
    v30 = *(v25 + v29);
    if (v30)
    {
      [v30 setTextColor:v28];
    }
  }

  else
  {
    sub_2D7930();
    (*(v2 + 8))(v4, v1);
  }
}

void sub_2D191C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_B170((Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkInquiry), *(Strong + OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_networkInquiry + 24));
    if ((sub_75ACE0() & 1) == 0)
    {
      v2 = v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible];
      v1[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_isDownloadProgressVisible] = 0;
      sub_2D34AC(v2);
    }
  }
}