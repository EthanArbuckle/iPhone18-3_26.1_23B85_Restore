uint64_t sub_1004E4E68(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v24[1] = a1;
  v6 = sub_10076E21C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076B6EC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  type metadata accessor for InAppPurchaseLockupView();
  sub_1000CBBB0(a4);
  sub_10076B6BC();
  sub_1002B62A4(&unk_100946780, &type metadata accessor for Shelf.PresentationHints);
  sub_10077124C();
  (*(v11 + 8))(v13, v10);
  sub_100079BE0(a4, v9);
  sub_10076E1DC();
  (*(v7 + 8))(v9, v6);
  [a4 pageMarginInsets];
  v14 = [a4 traitCollection];
  LOBYTE(v6) = sub_1007706FC();

  if ((v6 & 1) != 0 || (JUScreenClassGetPortraitWidth(), v15 >= a2))
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v19 = v20;
  }

  else
  {
    PageTraitEnvironment.pageColumnWidth.getter();
    v17 = v16;
    PageTraitEnvironment.pageColumnMargin.getter();
    v19 = v17 - (v18 + v18);
  }

  v21 = [objc_opt_self() absoluteDimension:v19];
  v22 = sub_1007665BC();

  return v22;
}

char *sub_1004E5304(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_10095A5C0) = 0;
  v5 = qword_10095A5C8;
  type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v2 + v5) = v6;

  v7 = sub_100485A34(a1, a2);
  result = [v7 collectionView];
  if (result)
  {
    v9 = result;
    sub_10000A5D4(&unk_100945BF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100783DD0;
    *(v10 + 32) = sub_10076E88C();
    *(v10 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_100016F40(0, &unk_10094D220);
    sub_100770C6C();
    swift_unknownObjectRelease();

    v11 = sub_10076962C();
    if (v11)
    {
      v12 = v11;
      v13 = [v7 navigationItem];
      sub_100016F40(0, &qword_100958FF0);

      v14 = sub_10076B8EC();
      v16 = v15;
      v21 = 0u;
      v22 = 0u;

      v23.is_nil = sub_1004E7E48(v12, a1, 0, &v21);
      v26.value._countAndFlagsBits = v14;
      v26.value._object = v16;
      v23.value.super.isa = 0;
      v24.value.super.super.isa = 0;
      isa = sub_10077055C(v26, v23, v24, v25).super.super.isa;
      [v13 setRightBarButtonItem:{isa, v21, v22}];
    }

    v18 = v7;
    sub_10076964C();
    v19 = sub_10076FF6C();

    [v18 setTitle:v19];

    v18[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
    v20 = [v18 navigationItem];
    [v20 setLargeTitleDisplayMode:3];

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004E55C4(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10000A5D4(&qword_10095AB80);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_10076341C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10075E11C();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v1;
  v20.super_class = ObjectType;
  result = objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v13);
  v17 = qword_10095A5C0;
  if ((*(v1 + qword_10095A5C0) & 1) == 0)
  {
    sub_1004E587C(v6);
    v18 = sub_10000A5D4(&qword_10095AB88);
    if ((*(*(v18 - 8) + 48))(v6, 1, v18) == 1)
    {
      result = sub_10000CFBC(v6, &qword_10095AB80);
    }

    else
    {
      v19 = *(v18 + 48);
      (*(v12 + 32))(v15, v6, v11);
      (*(v8 + 32))(v10, &v6[v19], v7);
      sub_1004E6628(v15);
      (*(v8 + 8))(v10, v7);
      result = (*(v12 + 8))(v15, v11);
    }
  }

  *(v1 + v17) = 1;
  return result;
}

uint64_t sub_1004E587C@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v91 = sub_100760F8C();
  v64 = *(v91 - 8);
  __chkstk_darwin(v91);
  v74 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1007633FC();
  v82 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10076341C();
  v66 = *(v89 - 8);
  __chkstk_darwin(v89);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10075E11C();
  v65 = *(v87 - 8);
  __chkstk_darwin(v87);
  v77 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_10000A5D4(&unk_100946710);
  v73 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v61 - v7;
  v93 = sub_10000A5D4(&qword_10095AB90);
  v83 = *(v93 - 8);
  __chkstk_darwin(v93);
  v72 = (&v61 - v8);
  v9 = sub_10000A5D4(&qword_10095AB98);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v92 = sub_10000A5D4(&unk_100946720);
  v15 = *(v92 - 8);
  __chkstk_darwin(v92);
  v17 = &v61 - v16;
  v18 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v21 = sub_10076469C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v90 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v1;
  sub_10076963C();
  if (!*(&v95 + 1))
  {
    sub_10000CFBC(&v94, &qword_100943310);
    goto LABEL_24;
  }

  v97[0] = v94;
  v97[1] = v95;
  v98 = v96;
  sub_1004E7744(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_100016C74(v97);
    sub_10000CFBC(v20, &unk_10095DCF0);
    goto LABEL_24;
  }

  v25 = v90;
  (*(v22 + 32))(v90, v20, v21);
  v26 = qword_1009503C8;
  swift_beginAccess();
  v27 = *(v24 + v26);
  if (!v27)
  {
    (*(v22 + 8))(v25, v21);
    sub_100016C74(v97);
    swift_endAccess();
    goto LABEL_24;
  }

  v61 = v22;
  v62 = v21;
  swift_endAccess();
  v28 = v27;
  v29 = v25;
  sub_10076468C();
  v30 = sub_1007699CC();

  result = (*(v15 + 8))(v17, v92);
  if (!v30)
  {
    (*(v61 + 8))(v29, v62);
    sub_100016C74(v97);
LABEL_24:
    v57 = v71;
    v54 = sub_10000A5D4(&qword_10095AB88);
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
    sub_100023AD0(v44, v11, &qword_10095AB90);
    v39 = 0;
    ++v32;
LABEL_14:
    (*v84)(v11, v39, 1, v38);
    v45 = v85;
    sub_100023AD0(v11, v85, &qword_10095AB98);
    if ((*v83)(v45, 1, v38) == 1)
    {

      (*(v61 + 8))(v90, v62);
      sub_100016C74(v97);
      v54 = sub_10000A5D4(&qword_10095AB88);
      v55 = *(*(v54 - 8) + 56);
      v56 = v71;
      return v55(v56, 1, 1, v54);
    }

    v46 = v11;
    (*v81)(v37, v45 + *(v38 + 48), v36);
    sub_10076467C();
    sub_10075E08C();
    v47 = v86;
    sub_1007633EC();
    v48 = v35;
    v49 = v92;
    sub_1007645EC();
    (*v80)(v47, v88);
    sub_100760FAC();
    sub_1004E8114(&qword_10094FAE8, &type metadata accessor for ProductReview);
    sub_10076332C();
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
    sub_100760F9C();
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
    sub_10076BC4C();
    v53 = sub_1007713EC();

    sub_100016C74(&v94);
    v37 = v75;
    v36 = v76;
    (*v82)(v75, v76);
    v35 = v77;
    v38 = v93;
    if (v53)
    {

      (*(v61 + 8))(v90, v62);
      sub_100016C74(v97);
      v58 = sub_10000A5D4(&qword_10095AB88);
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

uint64_t sub_1004E6628(uint64_t a1)
{
  v15[0] = a1;
  v2 = sub_10000A5D4(&unk_100946710);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_10000A5D4(&unk_1009520C0);
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000A5D4(&qword_10094A330);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v15 - v9;
  sub_10076336C();
  sub_10076F87C();
  sub_10013E624();
  sub_10076F83C();
  sub_1007633BC();
  sub_10076966C();
  sub_1004E8114(&qword_10095AB50, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_1007690AC();
  (*(v3 + 8))(v5, v2);
  v11 = [v1 collectionView];
  if (v11)
  {
    v12 = v11;
    isa = sub_10075E02C().super.isa;
    [v12 scrollToItemAtIndexPath:isa atScrollPosition:1 animated:0];
  }

  return (*(v8 + 8))(v10, v7);
}

void sub_1004E6904(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1004E55C4(a3);
}

uint64_t sub_1004E6958(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_10095AB78);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v8 - v5;
  (*(v3 + 16))(&v8 - v5, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) != enum case for DiffablePagePresenter.UpdatePhase.started<A>(_:) || (sub_10076961C() & 1) == 0)
  {
    sub_100736B30(a1);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1004E6AA0(void *a1, double a2, double a3)
{
  v17.receiver = v3;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v15 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v16 = 0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1006F5994;
  v14 = &unk_100898248;
  v7 = _Block_copy(&v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  v15 = sub_1004E8108;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1006F5994;
  v14 = &unk_100898298;
  v9 = _Block_copy(&v11);
  v10 = v3;

  [a1 animateAlongsideTransition:v7 completion:v9];
  _Block_release(v9);
  _Block_release(v7);
}

void sub_1004E6C18(int a1, id a2)
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

void sub_1004E6C78(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v9 = a1;
  sub_1004E6AA0(a5, a2, a3);
  swift_unknownObjectRelease();
}

unint64_t sub_1004E6CF8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_10099E360);
  sub_100760F1C();
  swift_allocObject();

  v4 = sub_100760F0C();
  swift_allocObject();
  v5 = sub_100760F0C();
  a1[3] = &type metadata for ReviewsPageGridProvider;
  result = sub_1004E8064();
  a1[4] = result;
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v3;
  return result;
}

uint64_t sub_1004E6D9C@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  sub_1004E8114(&qword_10095AB48, type metadata accessor for ReviewsDiffablePageViewController);
  v2 = sub_10076A6BC();
  v19[3] = swift_getObjectType();
  v19[0] = v2;
  v3 = sub_10076A6AC();
  v20[3] = swift_getObjectType();
  v20[0] = v3;
  sub_10000CD08(v19, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v18)
  {
    v14 = v18;
    v4 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v6 = v4[2];
    v5 = v4[3];
    if (v6 >= v5 >> 1)
    {
      v4 = sub_10049CD38((v5 > 1), v6 + 1, 1, v4);
    }

    v4[2] = v6 + 1;
    *&v4[2 * v6 + 4] = v14;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10000CD08(v20, v17);
  sub_10000CD64(v17, v16);
  sub_10000A5D4(&qword_100942460);
  if (swift_dynamicCast() && v18)
  {
    v15 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10049CD38(0, v4[2] + 1, 1, v4);
    }

    v8 = v4[2];
    v7 = v4[3];
    v9 = v15;
    if (v8 >= v7 >> 1)
    {
      v13 = sub_10049CD38((v7 > 1), v8 + 1, 1, v4);
      v9 = v15;
      v4 = v13;
    }

    v4[2] = v8 + 1;
    *&v4[2 * v8 + 4] = v9;
  }

  swift_arrayDestroy();
  sub_10076A6DC();
  v10 = type metadata accessor for GenericPageLayoutSectionProvider();
  swift_allocObject();
  sub_10000A570(v17, v16);

  v11 = sub_1007697CC();
  result = sub_10000CD74(v17);
  a1[3] = v10;
  a1[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a1 = v11;
  return result;
}

uint64_t sub_1004E709C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph);
  type metadata accessor for ReviewsPageShelfSupplementaryProvider();
  v2 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  v3 = sub_1004E8114(&qword_10095AB58, &type metadata accessor for ReviewsDiffablePagePresenter);
  *(v2 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = v3;
  swift_unknownObjectWeakAssign();
  *(v2 + 16) = v1;
  sub_1004E8114(&qword_10095AB68, type metadata accessor for ReviewsPageShelfSupplementaryProvider);

  return v2;
}

uint64_t sub_1004E71B4()
{
  v1 = v0;
  swift_getObjectType();
  sub_1006DEBD8();
  sub_10076A43C();
  if (swift_dynamicCastClass())
  {
    v2 = sub_10076A40C();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    swift_allocObject();
    v2 = sub_10076A42C();
  }

  sub_10000A5D4(&qword_100942480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100784500;
  sub_1004E8114(&qword_10095AB48, type metadata accessor for ReviewsDiffablePageViewController);

  sub_10076A6DC();
  sub_1004E8114(&qword_10095AB50, &type metadata accessor for ReviewsDiffablePagePresenter);
  sub_1004E8114(&qword_10095AB58, &type metadata accessor for ReviewsDiffablePagePresenter);
  type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v4 + qword_10094FA90) = 0;
  swift_unknownObjectWeakAssign();
  sub_10000A570(v10, v4 + qword_10094FA88);

  v5 = sub_10076AEEC();
  sub_10000CD74(v10);
  *(v3 + 32) = v5;
  *(v3 + 40) = &protocol witness table for SelectionHandlerCollectionElementsObserver;
  v6 = *(v1 + qword_10095A5C8);
  v7 = sub_1004E8114(&qword_10095AB60, type metadata accessor for ProductReviewFlowPreviewingCollectionElementsObserver);
  *(v3 + 48) = v6;
  *(v3 + 56) = v7;

  v8._rawValue = v3;
  sub_10076A3FC(v8);

  return v2;
}

void sub_1004E74DC()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = sub_10077073C();

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    if (qword_1009412B0 != -1)
    {
      swift_once();
    }

    v6 = [qword_1009A2590 resolvedColorWithTraitCollection:v3];
    [v5 setBackgroundColor:v6];

    *(*&v1[qword_10095A5C8] + 16) = 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_1004E7604(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = a2;
    v3 = [v4 traitCollection];
    [v3 userInterfaceLevel];

    sub_10008B8A4(a1, *(a1 + 24));
    sub_10076E33C();
  }
}

void sub_1004E76AC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor:v3];

    *(*&v0[qword_10095A5C8] + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1004E7744(char *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v51 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v50 = &v32 - v8;
  v45 = sub_10000A5D4(&unk_100946720);
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v32 - v10;
  v11 = sub_10000A5D4(&unk_10095DCF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_10076469C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v48 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = qword_1009503C8;
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
  v22 = sub_10076E75C();

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
  sub_1004E8114(&qword_10095AB48, type metadata accessor for ReviewsDiffablePageViewController);
  v25 = 0;
  v14 = v46;
  v37 = v22;
  while (1)
  {
    sub_10076A67C();
    if ((*v24)(v13, 1, v14) == 1)
    {
      sub_10000CFBC(v13, &unk_10095DCF0);
      goto LABEL_7;
    }

    v36 = *v42;
    v36(v48, v13, v14);
    v26 = v44;
    sub_10076468C();
    swift_getKeyPath();
    v27 = v45;
    sub_10076F49C();

    (*v40)(v26, v27);
    v28 = v43;
    (*v38)(v51, v39, v43);
    sub_1004E8114(&qword_10094C660, &type metadata accessor for Shelf.ContentType);
    sub_10077018C();
    sub_10077018C();
    if (v54 == v52 && v55 == v53)
    {
      break;
    }

    v47 = sub_10077167C();
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
  result = qword_10095A5F8;
  if (!qword_10095A5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004E7E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10076B8EC();
  if (v7)
  {
    v8 = sub_10076B8FC();
    if (v8)
    {
      v9 = v8;
      if (sub_10076BE0C())
      {
        sub_10076044C();
      }

      else if (sub_10076BDFC())
      {
        sub_1005A6008(v9, 0);
      }
    }

    sub_100016F40(0, &qword_1009641D0);
    sub_10003F0D4(a4, v14);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = &protocol witness table for ReviewsDiffablePagePresenter;
    *(v11 + 32) = a1;
    v12 = v14[1];
    *(v11 + 40) = v14[0];
    *(v11 + 56) = v12;
    v10 = sub_100770F1C();
    sub_10000CFBC(a4, &unk_1009434C0);
  }

  else
  {
    sub_10000CFBC(a4, &unk_1009434C0);

    return 0;
  }

  return v10;
}

uint64_t sub_1004E7FFC()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_10000CD74(v0 + 40);
  }

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_1004E8064()
{
  result = qword_10095AB70;
  if (!qword_10095AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095AB70);
  }

  return result;
}

uint64_t sub_1004E80B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004E80D0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004E8114(unint64_t *a1, void (*a2)(uint64_t))
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

double ShelfHeaderLayout.measure(toFit:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_10077085C();

  v9 = sub_10076E04C();
  v10 = &protocol witness table for Margins;
  sub_10000DB7C(&v8);
  if (v3)
  {
    v4 = sub_1004EB81C;
  }

  else
  {
    v4 = sub_1004E9D00;
  }

  sub_1004E9994(a1, sub_1001C50E0, v4);
  sub_100012498(&v8, v11);
  sub_10000CF78(v11, v11[3]);
  sub_10076E0FC();
  v6 = v5;
  sub_10000CD74(v11);
  return v6;
}

uint64_t ShelfHeaderLayout.place(at:with:)(void *a1)
{
  v2 = [a1 preferredContentSizeCategory];
  v3 = sub_10077085C();

  v7 = sub_10076E04C();
  v8 = &protocol witness table for Margins;
  sub_10000DB7C(&v6);
  if (v3)
  {
    v4 = sub_1004EB81C;
  }

  else
  {
    v4 = sub_1004E9D00;
  }

  sub_1004E9994(a1, sub_1001C50E0, v4);
  sub_100012498(&v6, v9);
  sub_10000CF78(v9, v9[3]);
  sub_10076E0EC();
  return sub_10000CD74(v9);
}

double ShelfHeaderLayout.init(metrics:separatorView:eyebrowButton:eyebrowImage:titleLabel:titleImage:subtitleLabel:accessoryView:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v57 = a7;
  v58 = a6;
  v59 = a5;
  v60 = a4;
  v61 = a3;
  v56 = a1;
  sub_1004ECC70(a1, a9, type metadata accessor for ShelfHeaderLayout.Metrics);
  v55 = a2;
  sub_100016E2C(a2, v62, &unk_10094DA00);
  v12 = v63;
  if (v63)
  {
    v13 = v64;
    sub_10000CF78(v62, v63);
    v14 = sub_1007711AC();
    v15 = *(v14 - 8);
    __chkstk_darwin(v14);
    v17 = &v55 - v16;
    sub_10076D21C();
    v18 = *(v12 - 8);
    if ((*(v18 + 48))(v17, 1, v12) == 1)
    {
      (*(v15 + 8))(v17, v14);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v12;
      v67 = v13;
      v19 = sub_10000DB7C(&v65);
      (*(v18 + 32))(v19, v17, v12);
    }

    sub_10000CD74(v62);
  }

  else
  {
    sub_10000CFBC(v62, &unk_10094DA00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v20 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = a9 + v20[5];
  v22 = v66;
  *v21 = v65;
  *(v21 + 16) = v22;
  *(v21 + 32) = v67;
  sub_100016E2C(v61, a9 + v20[6], &unk_10094B230);
  sub_100016E2C(v60, v62, &unk_10094DA00);
  v23 = v63;
  if (v63)
  {
    v24 = v64;
    sub_10000CF78(v62, v63);
    v25 = sub_1007711AC();
    v26 = *(v25 - 8);
    __chkstk_darwin(v25);
    v28 = &v55 - v27;
    sub_10076D21C();
    v29 = *(v23 - 8);
    if ((*(v29 + 48))(v28, 1, v23) == 1)
    {
      (*(v26 + 8))(v28, v25);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v23;
      v67 = v24;
      v30 = sub_10000DB7C(&v65);
      (*(v29 + 32))(v30, v28, v23);
    }

    sub_10000CD74(v62);
  }

  else
  {
    sub_10000CFBC(v62, &unk_10094DA00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v31 = a9 + v20[7];
  v32 = v66;
  *v31 = v65;
  *(v31 + 16) = v32;
  *(v31 + 32) = v67;
  sub_10000A570(v59, a9 + v20[8]);
  sub_100016E2C(v58, v62, &unk_10094DA00);
  v33 = v63;
  if (v63)
  {
    v34 = v64;
    sub_10000CF78(v62, v63);
    v35 = sub_1007711AC();
    v36 = *(v35 - 8);
    __chkstk_darwin(v35);
    v38 = &v55 - v37;
    sub_10076D21C();
    v39 = *(v33 - 8);
    if ((*(v39 + 48))(v38, 1, v33) == 1)
    {
      (*(v36 + 8))(v38, v35);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v33;
      v67 = v34;
      v41 = sub_10000DB7C(&v65);
      (*(v39 + 32))(v41, v38, v33);
    }

    v40 = v57;
    sub_10000CD74(v62);
  }

  else
  {
    sub_10000CFBC(v62, &unk_10094DA00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
    v40 = v57;
  }

  v42 = a9 + v20[9];
  v43 = v66;
  *v42 = v65;
  *(v42 + 16) = v43;
  *(v42 + 32) = v67;
  sub_100016E2C(v40, a9 + v20[10], &unk_10094B230);
  sub_100016E2C(a8, v62, &unk_10094DA00);
  v44 = v63;
  if (v63)
  {
    v45 = v64;
    sub_10000CF78(v62, v63);
    v46 = sub_1007711AC();
    v47 = *(v46 - 8);
    __chkstk_darwin(v46);
    v49 = &v55 - v48;
    sub_10076D21C();
    v50 = *(v44 - 8);
    if ((*(v50 + 48))(v49, 1, v44) == 1)
    {
      sub_10000CFBC(a8, &unk_10094DA00);
      sub_10000CFBC(v57, &unk_10094B230);
      sub_10000CFBC(v58, &unk_10094DA00);
      sub_10000CD74(v59);
      sub_10000CFBC(v60, &unk_10094DA00);
      sub_10000CFBC(v61, &unk_10094B230);
      sub_10000CFBC(v55, &unk_10094DA00);
      sub_1004E9C34(v56);
      (*(v47 + 8))(v49, v46);
      v67 = 0;
      v65 = 0u;
      v66 = 0u;
    }

    else
    {
      *(&v66 + 1) = v44;
      v67 = v45;
      v51 = sub_10000DB7C(&v65);
      (*(v50 + 32))(v51, v49, v44);
      sub_10000CFBC(a8, &unk_10094DA00);
      sub_10000CFBC(v57, &unk_10094B230);
      sub_10000CFBC(v58, &unk_10094DA00);
      sub_10000CD74(v59);
      sub_10000CFBC(v60, &unk_10094DA00);
      sub_10000CFBC(v61, &unk_10094B230);
      sub_10000CFBC(v55, &unk_10094DA00);
      sub_1004E9C34(v56);
    }

    sub_10000CD74(v62);
  }

  else
  {
    sub_10000CFBC(a8, &unk_10094DA00);
    sub_10000CFBC(v40, &unk_10094B230);
    sub_10000CFBC(v58, &unk_10094DA00);
    sub_10000CD74(v59);
    sub_10000CFBC(v60, &unk_10094DA00);
    sub_10000CFBC(v61, &unk_10094B230);
    sub_10000CFBC(v55, &unk_10094DA00);
    sub_1004E9C34(v56);
    sub_10000CFBC(v62, &unk_10094DA00);
    v65 = 0u;
    v66 = 0u;
    v67 = 0;
  }

  v52 = a9 + v20[11];
  result = *&v65;
  v54 = v66;
  *v52 = v65;
  *(v52 + 16) = v54;
  *(v52 + 32) = v67;
  return result;
}

void ShelfHeaderLayout.Metrics.eyebrowVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 40);

  return sub_1004E9C90(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleLineHeight.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 48));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 60);

  return sub_1004E9C90(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.accessoryMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 68));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.titleLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout(0) + 32);

  return sub_10000A570(v3, a1);
}

uint64_t sub_1004E9994(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = sub_10076D65C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  v10 = type metadata accessor for ShelfHeaderLayout(0);
  sub_100016E2C(v3 + *(v10 + 20), &v13, &unk_10094DA00);
  if (v14)
  {
    sub_100012498(&v13, v15);
    sub_10000CF78(v15, v16);
    sub_10076D2DC();
    sub_10076D5FC();
    sub_10000CD74(&v13);
    sub_10000CD74(v15);
  }

  else
  {
    sub_10000CFBC(&v13, &unk_10094DA00);
  }

  v16 = sub_10076E04C();
  v17 = &protocol witness table for Margins;
  sub_10000DB7C(v15);
  a3(a1);
  sub_10076D5FC();
  sub_10000CD74(v15);
  sub_1007704BC();
  v16 = v6;
  v17 = &protocol witness table for VerticalStack;
  v11 = sub_10000DB7C(v15);
  (*(v7 + 16))(v11, v9, v6);
  sub_10076E03C();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1004E9C34(uint64_t a1)
{
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E9C90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_1009467E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E9D00@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v5 = type metadata accessor for ShelfHeaderLayout(0);
  v6 = v5 - 8;
  v19 = *(v5 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10076D65C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  sub_100016E2C(v3 + *(v6 + 32), v21, &unk_10094B230);
  v12 = v22;
  sub_10000CFBC(v21, &unk_10094B230);
  if (v12)
  {
    v22 = sub_10076D8DC();
    v23 = &protocol witness table for HorizontalStack;
    v13 = sub_10000DB7C(v21);
    sub_1004EA00C(a1, v13);
    sub_1004ECC70(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfHeaderLayout);
    v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v15 = swift_allocObject();
    sub_1004ECCDC(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    sub_10076D5FC();

    sub_10000CD74(v21);
  }

  sub_1004EA8E0(a1, v21);
  sub_10076D5FC();
  sub_10000CD74(v21);
  sub_1007704EC();
  v22 = v8;
  v23 = &protocol witness table for VerticalStack;
  v16 = sub_10000DB7C(v21);
  (*(v9 + 16))(v16, v11, v8);
  sub_10076E03C();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004EA00C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = v5;
  v69 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076DFEC();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v60 = (&v53 - v9);
  __chkstk_darwin(v10);
  v59 = (&v53 - v11);
  __chkstk_darwin(v12);
  v58 = (&v53 - v13);
  v14 = sub_10076DFFC();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10077164C();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = sub_10076D39C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  sub_10076D8AC();
  v72 = v4;
  sub_100016E2C(v2 + *(v4 + 28), &v77, &unk_10094DA00);
  if (v78)
  {
    sub_100012498(&v77, v80);
    v26 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016E2C(v2 + *(v26 + 40), v21, &unk_1009467E0);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_10000CFBC(v21, &unk_1009467E0);
      sub_10000CD74(v80);
    }

    else
    {
      v55 = v22;
      v56 = v23;
      v27 = *(v23 + 32);
      v54 = v25;
      v27(v25, v21, v22);
      sub_10076D17C();
      sub_10076D97C();
      v28 = *(v57 + 8);
      v28(v18, v16);
      sub_10076D17C();
      sub_10076D97C();
      v28(v18, v16);
      sub_10076D31C();
      v30 = v29;
      v32 = v31;
      v33 = (*(v2 + 32) - v31) * 0.5;
      sub_10000CF78(v80, v80[3]);
      sub_10076D2DC();
      v57 = v2;
      v34 = v58;
      *(v58 + 3) = &type metadata for CGFloat;
      *(v34 + 4) = &protocol witness table for CGFloat;
      *v34 = v30;
      v35 = enum case for Resize.Rule.replaced(_:);
      v36 = v63;
      v37 = *(v62 + 104);
      v37(v34, enum case for Resize.Rule.replaced(_:), v63);
      v38 = v59;
      *(v59 + 3) = &type metadata for CGFloat;
      *(v38 + 4) = &protocol witness table for CGFloat;
      *v38 = v32;
      v37(v38, v35, v36);
      v39 = enum case for Resize.Rule.unchanged(_:);
      v37(v60, enum case for Resize.Rule.unchanged(_:), v36);
      v37(v61, v39, v36);
      v40 = v64;
      sub_10076E00C();
      v41 = v66;
      v76[3] = v66;
      v76[4] = &protocol witness table for Resize;
      v42 = sub_10000DB7C(v76);
      v43 = v65;
      (*(v65 + 16))(v42, v40, v41);
      v75[8] = &type metadata for CGFloat;
      v75[9] = &protocol witness table for CGFloat;
      *&v75[5] = v33;
      v44 = sub_10076D67C();
      v75[3] = v44;
      v75[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v75);
      sub_10076D66C();
      v74[3] = v44;
      v74[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v74);
      sub_10076D66C();
      v73[3] = v44;
      v73[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v73);
      sub_10076D66C();
      v78 = sub_10076E04C();
      v79 = &protocol witness table for Margins;
      sub_10000DB7C(&v77);
      sub_10076E05C();
      v45 = v57;
      v46 = v69;
      sub_1004ECC70(v57, v69, type metadata accessor for ShelfHeaderLayout);
      v47 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v48 = (v68 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_1004ECCDC(v46, v49 + v47);
      v50 = v70;
      *(v49 + v48) = v70;
      v51 = v50;
      sub_10076D89C();

      (*(v43 + 8))(v40, v41);
      (*(v56 + 8))(v54, v55);
      sub_10000CD74(&v77);
      sub_10000CD74(v80);
      v2 = v45;
    }
  }

  else
  {
    sub_10000CFBC(&v77, &unk_10094DA00);
  }

  sub_100016E2C(v2 + *(v72 + 24), &v77, &unk_10094B230);
  if (!v78)
  {
    return sub_10000CFBC(&v77, &unk_10094B230);
  }

  sub_100012498(&v77, v80);
  sub_10076D89C();
  return sub_10000CD74(v80);
}

uint64_t sub_1004EA8E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v3 = sub_10076DF4C();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_10076D65C();
  v95 = *(v110 - 8);
  __chkstk_darwin(v110);
  v94 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v83 - v7;
  v8 = type metadata accessor for ShelfHeaderLayout(0);
  v105 = *(v8 - 8);
  __chkstk_darwin(v8);
  v106 = v9;
  v107 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076DFEC();
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin(v10);
  v104 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v103 = (&v83 - v13);
  __chkstk_darwin(v14);
  v102 = (&v83 - v15);
  __chkstk_darwin(v16);
  v18 = (&v83 - v17);
  v101 = sub_10076DFFC();
  v19 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10077164C();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - v25;
  v27 = sub_10076D39C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v93 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076D8DC();
  v108 = *(v30 - 8);
  v109 = v30;
  __chkstk_darwin(v30);
  v111 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D8AC();
  v112 = v8;
  v32 = *(v8 + 36);
  v33 = v98;
  sub_100016E2C(v98 + v32, &v119, &unk_10094DA00);
  if (v120)
  {
    v87 = v19;
    v34 = a1;
    sub_100012498(&v119, v122);
    v35 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016E2C(v33 + *(v35 + 60), v26, &unk_1009467E0);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_10000CFBC(v26, &unk_1009467E0);
      sub_10000CD74(v122);
      v36 = v33;
    }

    else
    {
      v85 = v27;
      v86 = v28;
      (*(v28 + 32))(v93, v26, v27);
      sub_10076D17C();
      v84 = v34;
      sub_10076D97C();
      v37 = v33;
      v38 = *(v88 + 8);
      v38(v23, v21);
      sub_10076D17C();
      sub_10076D97C();
      v38(v23, v21);
      sub_10076D31C();
      v40 = v39;
      v42 = v41;
      v43 = (*(v37 + *(v35 + 44)) - v41) * 0.5;
      sub_10000CF78(v122, v123);
      sub_10076D2DC();
      v45 = v99;
      v44 = v100;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v40;
      v46 = enum case for Resize.Rule.replaced(_:);
      v47 = *(v45 + 104);
      v47(v18, enum case for Resize.Rule.replaced(_:), v44);
      v48 = v102;
      *(v102 + 3) = &type metadata for CGFloat;
      *(v48 + 4) = &protocol witness table for CGFloat;
      *v48 = v42;
      v47(v48, v46, v44);
      v49 = enum case for Resize.Rule.unchanged(_:);
      v47(v103, enum case for Resize.Rule.unchanged(_:), v44);
      v47(v104, v49, v44);
      v50 = v89;
      sub_10076E00C();
      v51 = v101;
      v117 = v101;
      v118 = &protocol witness table for Resize;
      v52 = sub_10000DB7C(v116);
      v53 = v87;
      (*(v87 + 16))(v52, v50, v51);
      v115[8] = &type metadata for CGFloat;
      v115[9] = &protocol witness table for CGFloat;
      *&v115[5] = v43;
      v54 = sub_10076D67C();
      v115[3] = v54;
      v115[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v115);
      sub_10076D66C();
      v114[3] = v54;
      v114[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v114);
      sub_10076D66C();
      v113[3] = v54;
      v113[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v113);
      sub_10076D66C();
      v120 = sub_10076E04C();
      v121 = &protocol witness table for Margins;
      sub_10000DB7C(&v119);
      sub_10076E05C();
      v55 = v98;
      v56 = v107;
      sub_1004ECC70(v98, v107, type metadata accessor for ShelfHeaderLayout);
      v57 = (*(v105 + 80) + 16) & ~*(v105 + 80);
      v58 = (v106 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_1004ECCDC(v56, v59 + v57);
      v60 = v84;
      *(v59 + v58) = v84;
      v61 = v60;
      sub_10076D89C();

      (*(v53 + 8))(v50, v51);
      (*(v86 + 8))(v93, v85);
      sub_10000CD74(&v119);
      sub_10000CD74(v122);
      v36 = v55;
    }
  }

  else
  {
    sub_10000CFBC(&v119, &unk_10094DA00);
    v36 = v33;
  }

  sub_10000A570(v36 + v112[8], &v119);
  *v18 = sub_10007C300;
  v18[1] = 0;
  v62 = v100;
  v63 = *(v99 + 104);
  v63(v18, enum case for Resize.Rule.recalculated(_:), v100);
  v64 = enum case for Resize.Rule.unchanged(_:);
  v63(v102, enum case for Resize.Rule.unchanged(_:), v62);
  v63(v103, v64, v62);
  v63(v104, v64, v62);
  v123 = v101;
  v124 = &protocol witness table for Resize;
  sub_10000DB7C(v122);
  sub_10076E00C();
  v65 = v111;
  sub_10076D89C();
  sub_10000CD74(v122);
  v66 = v94;
  sub_10076D63C();
  v67 = v109;
  v123 = v109;
  v124 = &protocol witness table for HorizontalStack;
  v68 = sub_10000DB7C(v122);
  (*(v108 + 16))(v68, v65, v67);
  v69 = v107;
  sub_1004ECC70(v36, v107, type metadata accessor for ShelfHeaderLayout);
  v70 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v71 = swift_allocObject();
  sub_1004ECCDC(v69, v71 + v70);
  v72 = v96;
  sub_10076D64C();

  v73 = v95;
  v74 = *(v95 + 8);
  v74(v66, v110);
  sub_10000CD74(v122);
  sub_100016E2C(v36 + v112[10], &v119, &unk_10094B230);
  if (v120)
  {
    sub_100012498(&v119, v122);
    sub_10076D5FC();
    sub_10000CD74(v122);
  }

  else
  {
    sub_10000CFBC(&v119, &unk_10094B230);
  }

  sub_100016E2C(v36 + v112[11], &v119, &unk_10094DA00);
  if (v120)
  {
    sub_100012498(&v119, v122);
    type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_10000CF78(v122, v123);
    sub_10076D2DC();
    v120 = sub_10076E04C();
    v121 = &protocol witness table for Margins;
    sub_10000DB7C(&v119);
    sub_10076E03C();
    (*(v90 + 104))(v92, enum case for Pin.Edge.trailingEdge(_:), v91);
    v75 = v110;
    v117 = v110;
    v118 = &protocol witness table for VerticalStack;
    v76 = sub_10000DB7C(v116);
    (*(v73 + 16))(v76, v72, v75);
    v77 = sub_10076DF5C();
    v78 = v97;
    v97[3] = v77;
    v78[4] = &protocol witness table for Pin;
    sub_10000DB7C(v78);
    sub_10076DF6C();
    v74(v72, v75);
    (*(v108 + 8))(v111, v109);
    return sub_10000CD74(v122);
  }

  else
  {
    sub_10000CFBC(&v119, &unk_10094DA00);
    v80 = v97;
    v81 = v110;
    v97[3] = v110;
    v80[4] = &protocol witness table for VerticalStack;
    v82 = sub_10000DB7C(v80);
    (*(v73 + 32))(v82, v72, v81);
    return (*(v108 + 8))(v111, v109);
  }
}

uint64_t sub_1004EB6C8(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = a3;
  v5 = a3;
  v6 = sub_10076DEEC();
  sub_10076C8FC();

  return sub_10076D87C();
}

uint64_t sub_1004EB7A0()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_10076D5BC();
  return sub_10076D5CC();
}

uint64_t sub_1004EB81C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a1;
  v96 = a2;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = v5;
  v83 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076DFEC();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v75 - v9;
  __chkstk_darwin(v10);
  v90 = &v75 - v11;
  __chkstk_darwin(v12);
  v85 = &v75 - v13;
  v87 = sub_10077164C();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_1009467E0);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = sub_10076D39C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v89 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v95 = sub_10076D65C();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  v98 = v4;
  sub_100016E2C(v3 + *(v4 + 28), &v99, &unk_10094DA00);
  v93 = v7;
  if (v100)
  {
    sub_100012498(&v99, &v102);
    v29 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016E2C(v3 + *(v29 + 40), v20, &unk_1009467E0);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_10000CFBC(v20, &unk_1009467E0);
      sub_10000CD74(&v102);
      v30 = v22;
    }

    else
    {
      v78 = v22;
      v31 = *(v22 + 32);
      v76 = v26;
      v79 = v21;
      v31(v26, v20, v21);
      v32 = v84;
      sub_10076D17C();
      sub_10076D97C();
      v80 = v28;
      v33 = *(v86 + 8);
      v34 = v87;
      v33(v32, v87);
      sub_10076D17C();
      sub_10076D97C();
      v33(v32, v34);
      sub_10076D31C();
      v36 = v35;
      v38 = v37;
      sub_10000CF78(&v102, v103);
      sub_10076D2DC();
      v77 = v17;
      v39 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v39 + 4) = &protocol witness table for CGFloat;
      *v39 = v36;
      v40 = enum case for Resize.Rule.replaced(_:);
      v41 = *(v91 + 104);
      v42 = v88;
      v43 = v92;
      v41(v39, enum case for Resize.Rule.replaced(_:), v92);
      v44 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v44 + 4) = &protocol witness table for CGFloat;
      v28 = v80;
      v45 = v93;
      *v44 = v38;
      v41(v44, v40, v43);
      v46 = enum case for Resize.Rule.unchanged(_:);
      v41(v42, enum case for Resize.Rule.unchanged(_:), v43);
      v41(v45, v46, v43);
      v100 = sub_10076DFFC();
      v101 = &protocol witness table for Resize;
      sub_10000DB7C(&v99);
      v17 = v77;
      v47 = v79;
      sub_10076E00C();
      sub_10076D5FC();
      v30 = v78;
      v21 = v47;
      (*(v78 + 8))(v76, v47);
      sub_10000CD74(&v99);
      sub_10000CD74(&v102);
    }
  }

  else
  {
    sub_10000CFBC(&v99, &unk_10094DA00);
    v30 = v22;
  }

  sub_100016E2C(v3 + v98[6], &v99, &unk_10094B230);
  if (v100)
  {
    sub_100012498(&v99, &v102);
    sub_10076D5FC();
    sub_10000CD74(&v102);
  }

  else
  {
    sub_10000CFBC(&v99, &unk_10094B230);
  }

  sub_100016E2C(v3 + v98[9], &v99, &unk_10094DA00);
  if (v100)
  {
    sub_100012498(&v99, &v102);
    v48 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100016E2C(v3 + *(v48 + 60), v17, &unk_1009467E0);
    if ((*(v30 + 48))(v17, 1, v21) == 1)
    {
      sub_10000CFBC(v17, &unk_1009467E0);
    }

    else
    {
      v49 = *(v30 + 32);
      v79 = v21;
      v49(v89, v17, v21);
      v50 = v84;
      sub_10076D17C();
      sub_10076D97C();
      v51 = *(v86 + 8);
      v78 = v30;
      v52 = v87;
      v51(v50, v87);
      sub_10076D17C();
      sub_10076D97C();
      v51(v50, v52);
      sub_10076D31C();
      v54 = v53;
      v56 = v55;
      sub_10000CF78(&v102, v103);
      sub_10076D2DC();
      v57 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v57 + 4) = &protocol witness table for CGFloat;
      *v57 = v54;
      v58 = enum case for Resize.Rule.replaced(_:);
      v59 = v88;
      v80 = v28;
      v60 = *(v91 + 104);
      v61 = v92;
      v60(v57, enum case for Resize.Rule.replaced(_:), v92);
      v62 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v62 + 4) = &protocol witness table for CGFloat;
      *v62 = v56;
      v60(v62, v58, v61);
      v63 = enum case for Resize.Rule.unchanged(_:);
      v60(v59, enum case for Resize.Rule.unchanged(_:), v61);
      v60(v93, v63, v61);
      v28 = v80;
      v100 = sub_10076DFFC();
      v101 = &protocol witness table for Resize;
      sub_10000DB7C(&v99);
      sub_10076E00C();
      v64 = v83;
      sub_1004ECC70(v3, v83, type metadata accessor for ShelfHeaderLayout);
      v65 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v66 = (v82 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      sub_1004ECCDC(v64, v67 + v65);
      v68 = v97;
      *(v67 + v66) = v97;
      v69 = v68;
      sub_10076D5FC();

      (*(v78 + 8))(v89, v79);
      sub_10000CD74(&v99);
    }

    sub_10000CD74(&v102);
  }

  else
  {
    sub_10000CFBC(&v99, &unk_10094DA00);
  }

  v70 = v98;
  sub_10076D5FC();
  sub_100016E2C(v3 + v70[10], &v99, &unk_10094B230);
  if (v100)
  {
    sub_100012498(&v99, &v102);
    sub_10076D5FC();
    sub_10000CD74(&v102);
  }

  else
  {
    sub_10000CFBC(&v99, &unk_10094B230);
  }

  sub_100016E2C(v3 + v98[11], &v99, &unk_10094DA00);
  if (v100)
  {
    sub_100012498(&v99, &v102);
    sub_10000CF78(&v102, v103);
    sub_10076D2DC();
    sub_10076D5FC();
    sub_10000CD74(&v99);
    sub_10000CD74(&v102);
  }

  else
  {
    sub_10000CFBC(&v99, &unk_10094DA00);
  }

  sub_1007704EC();
  v71 = v95;
  v103 = v95;
  v104 = &protocol witness table for VerticalStack;
  v72 = sub_10000DB7C(&v102);
  v73 = v94;
  (*(v94 + 16))(v72, v28, v71);
  sub_10076E03C();
  return (*(v73 + 8))(v28, v71);
}

uint64_t sub_1004EC56C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007841E0;
  *(v6 + 32) = a3;
  v7 = a3;
  v8 = sub_10076DEEC();
  sub_10076C8FC();
  v10 = v9;

  v12[3] = &type metadata for CGFloat;
  v12[4] = &protocol witness table for CGFloat;
  v12[0] = v10;
  return a4(v12);
}

uint64_t sub_1004EC670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1004EC744(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 24) = (a2 - 1);
  }

  return result;
}

void sub_1004EC800()
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v0 <= 0x3F)
  {
    sub_1001A3380(319, &qword_100950F80, &qword_10094CF50);
    if (v1 <= 0x3F)
    {
      sub_1001A3380(319, &unk_10095AC08, &qword_10094AE80);
      if (v2 <= 0x3F)
      {
        sub_1004EC8F8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1004EC8F8()
{
  result = qword_100948EF8;
  if (!qword_100948EF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100948EF8);
  }

  return result;
}

uint64_t sub_1004EC970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10076D9AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = sub_10000A5D4(&unk_1009467E0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1004ECA84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10076D9AC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = sub_10000A5D4(&unk_1009467E0);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 40);

    return v15(v16, a2, a2, v14);
  }
}

void sub_1004ECB90()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_10076D9AC();
    if (v1 <= 0x3F)
    {
      sub_1003B518C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1004ECC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004ECCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004ECD74()
{
  v19 = type metadata accessor for ShelfHeaderLayout(0);
  v22 = *(*(v19 - 1) + 80);
  v20 = *(*(v19 - 1) + 64);
  v21 = (v22 + 16) & ~v22;
  v23 = v0;
  v1 = v0 + v21;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = sub_10076D39C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v19[5];
  if (*(v11 + 24))
  {
    sub_10000CD74(v11);
  }

  v12 = v1 + v19[6];
  if (*(v12 + 24))
  {
    sub_10000CD74(v12);
  }

  v13 = v1 + v19[7];
  if (*(v13 + 24))
  {
    sub_10000CD74(v13);
  }

  sub_10000CD74(v1 + v19[8]);
  v14 = v1 + v19[9];
  if (*(v14 + 24))
  {
    sub_10000CD74(v14);
  }

  v15 = v1 + v19[10];
  if (*(v15 + 24))
  {
    sub_10000CD74(v15);
  }

  v16 = v1 + v19[11];
  if (*(v16 + 24))
  {
    sub_10000CD74(v16);
  }

  v17 = (v20 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v23, v17 + 8, v22 | 7);
}

uint64_t sub_1004ED034(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1004EB6C8(a1, v1 + v4, v5);
}

uint64_t sub_1004ED0D0()
{
  v18 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = *(*(v18 - 1) + 80);
  v19 = *(*(v18 - 1) + 64);
  v20 = (v21 + 16) & ~v21;
  v22 = v0;
  v1 = v0 + v20;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = sub_10076D9AC();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = sub_10076D39C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = v1 + v18[5];
  if (*(v11 + 24))
  {
    sub_10000CD74(v11);
  }

  v12 = v1 + v18[6];
  if (*(v12 + 24))
  {
    sub_10000CD74(v12);
  }

  v13 = v1 + v18[7];
  if (*(v13 + 24))
  {
    sub_10000CD74(v13);
  }

  sub_10000CD74(v1 + v18[8]);
  v14 = v1 + v18[9];
  if (*(v14 + 24))
  {
    sub_10000CD74(v14);
  }

  v15 = v1 + v18[10];
  if (*(v15 + 24))
  {
    sub_10000CD74(v15);
  }

  v16 = v1 + v18[11];
  if (*(v16 + 24))
  {
    sub_10000CD74(v16);
  }

  return _swift_deallocObject(v22, v20 + v19, v21 | 7);
}

uint64_t sub_1004ED38C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1004ED428(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1004EC56C(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

id sub_1004ED4D8(unint64_t a1, char a2, char *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_1007688CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_shouldEvenlyDistribute) = a2;
  v12 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    while (1)
    {
      v29[1] = a3;
      v30 = v4;
      v13 = 0;
      v38 = a1;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = a1 & 0xC000000000000001;
      v4 = (v9 + 88);
      a1 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
      v14 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
      v15 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
      LODWORD(v39) = enum case for MetadataRibbonItemViewType.starRating(_:);
      v35 = enum case for MetadataRibbonItemViewType.divider(_:);
      v36 = enum case for MetadataRibbonItemViewType.textLabel(_:);
      v31 = (v9 + 8);
      v32 = v11;
      v34 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
      while (v41)
      {
        v9 = sub_10077149C();
        a3 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v4 = v30;
          *(v30 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = v42;

          v11 = 0;
          v8 = 0;
          v12 = _swiftEmptyArrayStorage;
          v23 = v38;
          while (1)
          {
            if (v41)
            {
              v24 = sub_10077149C();
              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v11 >= *(v40 + 16))
              {
                goto LABEL_48;
              }

              v24 = *(v23 + 8 * v11 + 32);

              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            v43 = v24;
            sub_1004EE7BC(&v43, v4, &v42);

            if (v42)
            {
              v39 = v42;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_10049D090(0, *(v12 + 2) + 1, 1, v12);
              }

              a1 = *(v12 + 2);
              v25 = *(v12 + 3);
              v26 = v39;
              if (a1 >= v25 >> 1)
              {
                v27 = sub_10049D090((v25 > 1), a1 + 1, 1, v12);
                v26 = v39;
                v12 = v27;
              }

              *(v12 + 2) = a1 + 1;
              *(v12 + a1 + 2) = v26;
            }

            ++v11;
            if (a3 == v9)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_8:
        v12 = v9;
        sub_10076432C();
        v16 = (*v4)(v11, v8);
        if (v16 == a1 || v16 == v14 || v16 == v15 || v16 == v39 || v16 == v36 || v16 == v35 || v16 == v34)
        {
          v12 = &v42;
          sub_1007714CC();
          sub_1007714FC();
          v11 = v32;
          sub_10077150C();
          sub_1007714DC();
        }

        else
        {

          (*v31)(v11, v8);
        }

        ++v13;
        v9 = v37;
        if (a3 == v37)
        {
          goto LABEL_32;
        }
      }

      if (v13 < *(v40 + 16))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v37 = sub_10077158C();
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    v9 = *(v38 + 8 * v13 + 32);

    a3 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_50:
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = v12;

LABEL_51:
  sub_1004EDB68(v12);
  return [v4 setNeedsLayout];
}

id sub_1004ED934(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemViews] = _swiftEmptyArrayStorage;
  sub_10076899C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_shouldEvenlyDistribute] = 2;
  v4[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_isInsideSearchAd] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_1009406F8 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_10095AD10];
  sub_10000A5D4(&unk_100945BF0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  *(v16 + 32) = sub_10076E3FC();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v15;
}

id sub_1004EDB68(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemViews;
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemViews];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      [*(v5 + v7) removeFromSuperview];
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = a1;

  v8 = *&v2[v4];

  v9 = sub_10076898C();
  result = sub_100236B78(v9, v8);
  v14 = (v13 >> 1) - v12;
  if (v13 >> 1 != v12)
  {
    if ((v13 >> 1) <= v12)
    {
      __break(1u);
      return result;
    }

    v15 = (v11 + 16 * v12);
    do
    {
      v16 = *v15;
      v15 += 2;
      [v2 addSubview:v16];
      --v14;
    }

    while (v14);
  }

  swift_unknownObjectRelease();

  return [v2 setNeedsLayout];
}

uint64_t sub_1004EDC78()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v42 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1007689AC();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_10095AD58);
  __chkstk_darwin(v6 - 8);
  v49 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v52 = sub_10000A5D4(&qword_100959170);
  v11 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v36 - v12;
  v13 = sub_1007689BC();
  v40 = *(v13 - 8);
  v41 = v13;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v36 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54.receiver = v0;
  v54.super_class = ObjectType;
  v43 = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v14);
  v46 = v0;
  v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemViews];
  v17 = *(v16 + 16);

  v50 = v17;
  if (v17)
  {
    v19 = 0;
    v47 = v11;
    v48 = (v11 + 48);
    v20 = v16 + 40;
    v53 = _swiftEmptyArrayStorage;
    v21 = &unk_1007A8660;
    while (v19 < *(v16 + 16))
    {
      v22 = *(v20 - 8);
      swift_getObjectType();
      v23 = v22;
      v24 = v21;
      v25 = v49;
      sub_10076693C();
      v26 = v25;
      v21 = v24;
      sub_100023AD0(v26, v10, &qword_10095AD58);

      if ((*v48)(v10, 1, v52) == 1)
      {
        result = sub_10000CFBC(v10, &qword_10095AD58);
      }

      else
      {
        sub_100023AD0(v10, v51, &qword_100959170);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_10049CECC(0, v53[2] + 1, 1, v53);
        }

        v28 = v53[2];
        v27 = v53[3];
        if (v28 >= v27 >> 1)
        {
          v53 = sub_10049CECC(v27 > 1, v28 + 1, 1, v53);
        }

        v29 = v53;
        v53[2] = v28 + 1;
        result = sub_100023AD0(v51, v29 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v28, &qword_100959170);
      }

      ++v19;
      v20 += 16;
      if (v50 == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v53 = _swiftEmptyArrayStorage;
LABEL_13:

    v30 = v46;
    (*(v38 + 16))(v37, &v46[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metrics], v39);
    v31 = v36;
    sub_10076895C();
    sub_10076422C();
    v32 = v42;
    sub_10076897C();
    (*(v44 + 8))(v32, v45);
    v33 = &v30[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsUpdateBlock];
    swift_beginAccess();
    v34 = *v33;
    if (*v33)
    {
      swift_endAccess();

      v34(v35);
      sub_1000167E0(v34);
      return (*(v40 + 8))(v31, v41);
    }

    else
    {
      (*(v40 + 8))(v31, v41);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1004EE27C(uint64_t a1)
{
  v30 = a1;
  v27 = sub_1007689AC();
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1007689BC();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10095AD58);
  __chkstk_darwin(v4 - 8);
  v33 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v36 = sub_10000A5D4(&qword_100959170);
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v23 - v10;
  v29 = v1;
  v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemViews);
  v12 = *(v11 + 16);

  v34 = v12;
  if (v12)
  {
    v14 = 0;
    v31 = v9;
    v32 = (v9 + 48);
    v15 = v11 + 40;
    v37 = _swiftEmptyArrayStorage;
    while (v14 < *(v11 + 16))
    {
      v16 = *(v15 - 8);
      swift_getObjectType();
      v17 = v16;
      v18 = v33;
      sub_10076693C();
      sub_100023AD0(v18, v8, &qword_10095AD58);

      if ((*v32)(v8, 1, v36) == 1)
      {
        result = sub_10000CFBC(v8, &qword_10095AD58);
      }

      else
      {
        sub_100023AD0(v8, v35, &qword_100959170);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_10049CECC(0, v37[2] + 1, 1, v37);
        }

        v20 = v37[2];
        v19 = v37[3];
        if (v20 >= v19 >> 1)
        {
          v37 = sub_10049CECC(v19 > 1, v20 + 1, 1, v37);
        }

        v21 = v37;
        v37[2] = v20 + 1;
        result = sub_100023AD0(v35, v21 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v20, &qword_100959170);
      }

      ++v14;
      v15 += 16;
      if (v34 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_13:

    (*(v25 + 16))(v24, v29 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metrics, v27);
    v22 = v23;
    sub_10076895C();
    sub_10076896C();
    return (*(v26 + 8))(v22, v28);
  }

  return result;
}

uint64_t sub_1004EE7BC@<X0>(uint64_t *a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v6 = sub_10076DA7C();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v66 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_10076DD3C();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v61 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v62 = &v52 - v10;
  __chkstk_darwin(v11);
  v64 = &v52 - v12;
  v13 = sub_10000A5D4(&qword_100943318);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - v14;
  v16 = *a1;
  result = sub_10062F33C();
  if (result)
  {
    v19 = result;
    v20 = v18;
    v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_10076697C();
    sub_10076434C();
    sub_10076695C();
    sub_10076437C();
    v22 = sub_1007668DC();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
    sub_10076698C();
    v56 = sub_10076431C();
    v24 = v23;
    v25 = [a2 traitCollection];
    v59 = v20;
    v60 = a3;
    v57 = v21;
    v58 = v19;
    if (v24)
    {
    }

    else
    {
      v52 = v25;
      v53 = v24;
      v54 = a2;
      v55 = v16;
      v26 = v61;
      sub_10076DD2C();
      sub_10076D84C();
      if (qword_10093F698 != -1)
      {
        swift_once();
      }

      v27 = sub_10076715C();
      v28 = sub_10000A61C(v27, qword_10099CE38);
      v70 = v27;
      v71 = sub_1004F0B04(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
      v29 = sub_10000DB7C(v69);
      (*(*(v27 - 8) + 16))(v29, v28, v27);
      v30 = v62;
      sub_10076DC8C();
      v31 = v63;
      v32 = *(v63 + 8);
      v33 = v65;
      v32(v26, v65);
      sub_10000CD74(v69);
      v34 = v64;
      sub_10076DD1C();
      v32(v30, v33);
      v72._countAndFlagsBits = 77;
      v72._object = 0xE100000000000000;
      sub_10077013C(v72, v56);
      (*(v31 + 16))(v30, v34, v33);
      sub_10076DA5C();
      v35 = v66;
      sub_10076DA9C();
      v36 = v52;
      sub_10076DA6C();

      (*(v67 + 8))(v35, v68);
      v32(v34, v33);
      v20 = v59;
      a3 = v60;
      a2 = v54;
      v21 = v57;
    }

    sub_1007668FC();
    v56 = sub_10076435C();
    v38 = v37;
    v39 = [a2 traitCollection];
    if (v38)
    {
    }

    else
    {
      v54 = v39;
      LODWORD(v55) = v38;
      v40 = v61;
      sub_10076DD2C();
      sub_10076D84C();
      if (qword_10093F698 != -1)
      {
        swift_once();
      }

      v41 = sub_10076715C();
      v42 = sub_10000A61C(v41, qword_10099CE38);
      v70 = v41;
      v71 = sub_1004F0B04(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
      v43 = sub_10000DB7C(v69);
      (*(*(v41 - 8) + 16))(v43, v42, v41);
      v44 = v62;
      sub_10076DC8C();
      v45 = v63;
      v46 = *(v63 + 8);
      v47 = v40;
      v48 = v65;
      v46(v47, v65);
      sub_10000CD74(v69);
      v49 = v64;
      sub_10076DD1C();
      v46(v44, v48);
      v73._countAndFlagsBits = 77;
      v73._object = 0xE100000000000000;
      sub_10077013C(v73, v56);
      (*(v45 + 16))(v44, v49, v48);
      sub_10076DA5C();
      v50 = v66;
      sub_10076DA9C();
      v51 = v54;
      sub_10076DA6C();

      (*(v67 + 8))(v50, v68);
      v46(v49, v48);
      v20 = v59;
      a3 = v60;
      v21 = v57;
    }

    sub_10076694C();
    sub_1007642FC();
    result = sub_10076691C();
    *a3 = v21;
    a3[1] = v20;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t sub_1004EEFC8()
{
  swift_getObjectType();

  v1 = sub_1000E99EC(v0, 0);

  return v1 & 1;
}

void sub_1004EF034()
{
  v0 = sub_10000A5D4(&qword_1009492E0);
  __chkstk_darwin(v0 - 8);
  v2 = v36 - v1;
  v3 = sub_10076F7FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = v9;
      v11 = *&v8[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels];
      if (v11)
      {
        v42 = v6;
        v38 = v8;
        v12 = *&v8[OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemViews];
        v13 = *(v12 + 16);

        v47 = v13;
        if (v13)
        {
          v14 = 0;
          v15 = v11 & 0xFFFFFFFFFFFFFF8;
          if (v11 >= 0)
          {
            v16 = v11 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v16 = v11;
          }

          v36[1] = v16;
          v43 = (v4 + 48);
          v44 = v11 & 0xFFFFFFFFFFFFFF8;
          v39 = (v4 + 8);
          v40 = (v4 + 32);
          v17 = 32;
          v45 = v11 & 0xC000000000000001;
          v46 = v11 >> 62;
          v37 = v2;
          v41 = v11;
          while (v14 < *(v12 + 16))
          {
            v18 = *(v12 + v17);
            if (v46)
            {
              if (v14 == sub_10077158C())
              {
                goto LABEL_24;
              }
            }

            else if (v14 == *(v15 + 16))
            {
              goto LABEL_24;
            }

            if (v45)
            {
              v35 = v18;
              sub_10077149C();
            }

            else
            {
              if (v14 >= *(v15 + 16))
              {
                goto LABEL_29;
              }

              v19 = v18;
            }

            sub_10076430C();
            if ((*v43)(v2, 1, v3) == 1)
            {

              sub_10000CFBC(v2, &qword_1009492E0);
            }

            else
            {
              v20 = v42;
              (*v40)(v42, v2, v3);
              if ([v18 isHidden])
              {
                (*v39)(v20, v3);
              }

              else
              {
                [v18 frame];
                v22 = v21;
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v29 = v3;
                v30 = v12;
                v31 = v10;
                v32 = v38;
                v33 = [v38 superview];
                v34 = v32;
                v10 = v31;
                v12 = v30;
                v3 = v29;
                v2 = v37;
                [v34 convertRect:v33 toView:{v22, v24, v26, v28}];

                sub_1007660EC();

                (*v39)(v20, v3);
              }
            }

            ++v14;
            v17 += 16;
            v15 = v44;
            if (v47 == v14)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
        }

        else
        {
LABEL_24:
        }
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

uint64_t type metadata accessor for SearchTagsRibbonView()
{
  result = qword_10095AD48;
  if (!qword_10095AD48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004EF59C()
{
  result = sub_1007689AC();
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

uint64_t sub_1004EF6AC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1004EF764()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1);
  return v2;
}

uint64_t sub_1004EF7C0(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6);
}

void (*sub_1004EF880())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1004F0BFC;
}

uint64_t sub_1004EF920(void *a1)
{
  sub_10000CF78(a1, a1[3]);
  v2 = sub_10076E36C();
  if (qword_1009406F8 != -1)
  {
    swift_once();
  }

  v3 = qword_10095AD10;
  if (sub_10077086C())
  {
    v3;
  }

  sub_10008B8A4(a1, a1[3]);
  return sub_10076E37C();
}

uint64_t sub_1004EF9EC(unint64_t a1, int a2)
{
  v99 = a2;
  v3 = sub_1007689AC();
  __chkstk_darwin(v3 - 8);
  v98 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007689BC();
  v101 = *(v5 - 8);
  __chkstk_darwin(v5);
  v100 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10076DA7C();
  v7 = *(v120 - 8);
  __chkstk_darwin(v120);
  v119 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_10076DD3C();
  v9 = *(v118 - 8);
  __chkstk_darwin(v118);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v117 = &v92 - v13;
  __chkstk_darwin(v14);
  v116 = &v92 - v15;
  v130 = sub_10000A5D4(&qword_100959170);
  v115 = *(v130 - 1);
  __chkstk_darwin(v130);
  v128 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v114 = &v92 - v18;
  __chkstk_darwin(v19);
  v131 = &v92 - v20;
  v122 = sub_1007688CC();
  v21 = *(v122 - 8);
  __chkstk_darwin(v122);
  v121 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076439C();
  v123 = a1;
  result = sub_1007701EC();
  if (result)
  {
    v113 = sub_10077073C();
    if (v123 >> 62)
    {
      result = sub_10077158C();
    }

    else
    {
      result = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = v5;
    if (result)
    {
      if (result >= 1)
      {
        v24 = 0;
        v111 = v123 & 0xC000000000000001;
        v110 = (v21 + 88);
        v93 = (v21 + 8);
        v108 = (v9 + 8);
        v107 = (v9 + 16);
        v106 = (v7 + 8);
        v25 = _swiftEmptyArrayStorage;
        v109 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v104 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v103 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v102 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v96 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v95 = enum case for MetadataRibbonItemViewType.divider(_:);
        v94 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v105 = v11;
        v112 = result;
        while (1)
        {
          if (v111)
          {
            v26 = sub_10077149C();
          }

          else
          {
            v26 = *(v123 + 8 * v24 + 32);
          }

          v27 = v121;
          sub_10076432C();
          v28 = (*v110)(v27, v122);
          v126 = v25;
          v127 = v24;
          if (v28 == v109)
          {
            break;
          }

          if (v28 == v104)
          {
            v29 = type metadata accessor for MetadataRibbonEditorsChoiceView();
            v30 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v31 = &unk_1009428B0;
            goto LABEL_24;
          }

          if (v28 == v103)
          {
            v29 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v30 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v31 = &unk_1009428A8;
            goto LABEL_24;
          }

          if (v28 == v102)
          {
            v29 = type metadata accessor for MetadataRibbonStarRatingView();
            v30 = type metadata accessor for MetadataRibbonStarRatingView;
            v31 = &unk_1009428C0;
            goto LABEL_24;
          }

          if (v28 == v96)
          {
            v29 = type metadata accessor for MetadataRibbonTagView();
            v30 = type metadata accessor for MetadataRibbonTagView;
            v31 = &unk_100942898;
            goto LABEL_24;
          }

          if (v28 == v95)
          {
            v29 = type metadata accessor for MetadataRibbonBarView();
            v30 = type metadata accessor for MetadataRibbonBarView;
            v31 = &unk_1009428A0;
            goto LABEL_24;
          }

          if (v28 == v94)
          {
            v29 = type metadata accessor for MetadataRibbonHighlightedTextView();
            v30 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v31 = &unk_100942888;
            goto LABEL_24;
          }

          (*v93)(v121, v122);
LABEL_37:
          if (v112 == ++v24)
          {
            goto LABEL_41;
          }
        }

        v29 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
        v30 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v31 = &unk_1009428B8;
LABEL_24:
        v32 = sub_1004F0B04(v31, v30);
        v33 = swift_allocObject();
        v33[2] = v29;
        v33[3] = v32;
        v33[4] = v26;
        v34 = sub_10076DDDC();
        swift_allocObject();

        v35 = sub_10076DD9C();
        v36 = v131;
        v37 = v130[20];
        sub_10076434C();
        *(v36 + 64) = v34;
        *(v36 + 72) = &protocol witness table for LayoutViewPlaceholder;
        *(v36 + 40) = v35;
        *(v36 + 80) = sub_10076696C() & 1;
        sub_10076437C();
        v38 = sub_1007668DC();
        (*(*(v38 - 8) + 56))(v36 + v37, 0, 1, v38);
        v39 = sub_10076431C();
        v41 = v40;
        v42 = 0;
        v43 = 0;
        v129 = v26;
        if ((v40 & 1) == 0)
        {
          v44 = v39;
          sub_10076DD2C();
          sub_10076D84C();
          if (qword_10093F698 != -1)
          {
            swift_once();
          }

          v45 = sub_10076715C();
          v46 = sub_10000A61C(v45, qword_10099CE38);
          v133 = v45;
          v134 = sub_1004F0B04(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
          v47 = sub_10000DB7C(&v132);
          (*(*(v45 - 8) + 16))(v47, v46, v45);
          v48 = v117;
          sub_10076DC8C();
          v49 = *v108;
          v50 = v118;
          (*v108)(v11, v118);
          sub_10000CD74(&v132);
          v51 = v116;
          sub_10076DD1C();
          v49(v48, v50);
          v135._countAndFlagsBits = 77;
          v135._object = 0xE100000000000000;
          sub_10077013C(v135, v44);
          (*v107)(v48, v51, v50);
          sub_10076DA5C();
          v52 = v119;
          sub_10076DA9C();
          sub_10076DA6C();
          v43 = v53;
          (*v106)(v52, v120);
          v49(v51, v50);
        }

        v54 = v131 + v130[24];
        *v54 = v43;
        *(v54 + 8) = v41 & 1;
        v55 = sub_10076435C();
        v57 = v56;
        if ((v56 & 1) == 0)
        {
          v58 = v55;
          sub_10076DD2C();
          sub_10076D84C();
          if (qword_10093F698 != -1)
          {
            swift_once();
          }

          v59 = sub_10076715C();
          v60 = sub_10000A61C(v59, qword_10099CE38);
          v133 = v59;
          v134 = sub_1004F0B04(&qword_10094B6A0, &type metadata accessor for MetadataRibbonTextStyle);
          v61 = sub_10000DB7C(&v132);
          (*(*(v59 - 8) + 16))(v61, v60, v59);
          v62 = v117;
          sub_10076DC8C();
          v63 = *v108;
          v64 = v118;
          (*v108)(v11, v118);
          sub_10000CD74(&v132);
          v65 = v116;
          sub_10076DD1C();
          v63(v62, v64);
          v136._countAndFlagsBits = 77;
          v136._object = 0xE100000000000000;
          sub_10077013C(v136, v58);
          (*v107)(v62, v65, v64);
          sub_10076DA5C();
          v66 = v119;
          sub_10076DA9C();
          sub_10076DA6C();
          v42 = v67;
          (*v106)(v66, v120);
          v63(v65, v64);
        }

        v68 = v130;
        v69 = v131;
        v70 = v131 + v130[28];
        v71 = v130[32];
        *v70 = v42;
        *(v70 + 8) = v57 & 1;
        *(v69 + v71) = sub_1007642FC();
        v72 = v114;
        sub_1004F0A94(v69, v114);
        v73 = *(v72 + 80);
        v74 = v68[20];
        v75 = v68[24];
        v125 = *(v72 + v75);
        v124 = *(v72 + v75 + 8);
        v76 = v68[28];
        v77 = *(v72 + v76);
        v78 = *(v72 + v76 + 8);
        v79 = v68[32];
        v80 = *(v72 + v79);
        v81 = v128;
        v82 = v128 + v75;
        v83 = v128 + v76;
        v84 = *(v72 + 16);
        *v128 = *v72;
        v81[1] = v84;
        *(v81 + 4) = *(v72 + 32);
        sub_100012498((v72 + 40), v81 + 40);
        *(v81 + 80) = v73;
        sub_100023AD0(v72 + v74, v81 + v74, &qword_100943318);
        *v82 = v125;
        v82[8] = v124;
        *v83 = v77;
        v83[8] = v78;
        *(v81 + v79) = v80;
        v25 = v126;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_10049CECC(0, v25[2] + 1, 1, v25);
        }

        v24 = v127;
        v86 = v25[2];
        v85 = v25[3];
        v11 = v105;
        if (v86 >= v85 >> 1)
        {
          v25 = sub_10049CECC(v85 > 1, v86 + 1, 1, v25);
        }

        v25[2] = v86 + 1;
        sub_100023AD0(v128, v25 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v86, &qword_100959170);
        sub_10000CFBC(v131, &qword_100959170);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
LABEL_41:
      sub_10076899C();
      v87 = v100;
      sub_10076895C();
      sub_10076DEDC();
      sub_10000A5D4(&unk_100942870);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_1007841E0;
      v89 = v113;
      *(v88 + 32) = v113;
      v90 = v89;
      v91 = sub_10076DEEC();
      sub_10076896C();

      return (*(v101 + 8))(v87, v97);
    }
  }

  return result;
}

uint64_t sub_1004F0A2C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004F0A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100959170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F0B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F0B4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F0B84()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004F0BBC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1004F0C04()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  sub_10076899C();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_shouldEvenlyDistribute) = 2;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_isInsideSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsCalculator) = 0;
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t type metadata accessor for AppPromotionIAPFallbackView()
{
  result = qword_10095AD88;
  if (!qword_10095AD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1004F0D74(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = sub_10075E77C();
  __chkstk_darwin(v13 - 8);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_10095AD68;
  sub_10075FD2C();
  *&v6[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = qword_10095AD70;
  *&v6[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10095AD78;
  *&v6[v18] = [objc_allocWithZone(UIVisualEffectView) init];
  v19 = &v6[qword_10095AD80];
  v20 = a1[3];
  *(v19 + 2) = a1[2];
  *(v19 + 3) = v20;
  v21 = *a1;
  v22 = a1[1];
  *(v19 + 8) = *(a1 + 8);
  *v19 = v21;
  *(v19 + 1) = v22;
  sub_10075E6FC();
  v23 = objc_allocWithZone(type metadata accessor for InAppPurchaseView());
  *&v6[qword_10095AD60] = sub_1005B7DD4(v15, 2);
  v41.receiver = v6;
  v41.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v41, "initWithFrame:", a2, a3, a4, a5);
  v25 = qword_10095AD70;
  v26 = *&v24[qword_10095AD70];
  v26[OBJC_IVAR____TtC20ProductPageExtension12GradientView_kind] = 2;
  v27 = v24;
  v28 = v26;
  v29 = [v28 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setType:kCAGradientLayerConic];

  v30 = *&v24[v25];
  v31 = [v30 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.5}];

  v32 = *&v24[v25];
  v33 = [v32 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  v34 = qword_10095AD78;
  v35 = *&v27[qword_10095AD78];
  sub_10000A5D4(&unk_100942870);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100785D70;
  v37 = objc_opt_self();
  v38 = v35;
  result = [v37 effectWithBlurRadius:100.0];
  if (result)
  {
    *(v36 + 32) = result;
    *(v36 + 40) = [objc_opt_self() colorEffectSaturate:1.25];
    sub_100016F40(0, &qword_1009492C0);
    isa = sub_1007701AC().super.isa;

    [v38 setBackgroundEffects:isa];

    [v27 addSubview:*&v24[v25]];
    [v27 addSubview:*&v27[v34]];
    [v27 addSubview:*&v27[qword_10095AD68]];
    [v27 addSubview:*&v27[qword_10095AD60]];

    return v27;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1004F11CC()
{
  xmmword_1009A0430 = xmmword_1007A8670;
  unk_1009A0440 = xmmword_1007A8680;
  result = 10.0;
  xmmword_1009A0450 = xmmword_1007A8690;
  unk_1009A0460 = xmmword_1007A86A0;
  qword_1009A0470 = 0x4020000000000000;
  return result;
}

double sub_1004F1208()
{
  xmmword_1009A0480 = xmmword_1007A86B0;
  *algn_1009A0490 = xmmword_1007A8680;
  result = 146.0;
  xmmword_1009A04A0 = xmmword_1007A86C0;
  unk_1009A04B0 = xmmword_1007A86D0;
  qword_1009A04C0 = 0x4020000000000000;
  return result;
}

__n128 sub_1004F1244@<Q0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v12 = *(v2 + qword_10095AD80 + 32);
  v13 = *(v2 + qword_10095AD80 + 48);
  v14 = *(v2 + qword_10095AD80 + 64);
  v10 = *(v2 + qword_10095AD80);
  v11 = *(v2 + qword_10095AD80 + 16);
  v4 = *(v2 + qword_10095AD60);
  a1[3] = &type metadata for AppPromotionIAPFallbackLayout;
  a1[4] = sub_1004F1FE8();
  v5 = swift_allocObject();
  *a1 = v5;
  *(v5 + 112) = type metadata accessor for InAppPurchaseView();
  *(v5 + 120) = sub_1004F208C(&qword_10095ADE0, type metadata accessor for InAppPurchaseView);
  *(v5 + 88) = v4;
  type metadata accessor for GradientView();
  v6 = v4;
  sub_10076D2DC();
  v7 = *(v2 + qword_10095AD68);
  *(v5 + 232) = sub_10075FD2C();
  *(v5 + 240) = sub_1004F208C(&qword_10094B250, &type metadata accessor for ArtworkView);
  *(v5 + 208) = v7;
  sub_100016F40(0, &qword_100952278);
  v8 = v7;
  sub_10076D2DC();
  *(v5 + 48) = v12;
  *(v5 + 64) = v13;
  *(v5 + 80) = v14;
  result = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  return result;
}

id sub_1004F1414()
{
  sub_10076D9FC();
  v1 = sub_10076DA0C();
  v1();
  v2 = v0 + qword_10095AD80;
  v3 = *(v0 + qword_10095AD60);
  CGAffineTransformMakeRotation(&v18, *(v0 + qword_10095AD80 + 40) * 3.14159265 / 180.0);
  [v3 setTransform:&v18];
  CGAffineTransformMakeRotation(&v18, *(v2 + 48) * 3.14159265 / 180.0);
  a = v18.a;
  b = v18.b;
  c = v18.c;
  d = v18.d;
  tx = v18.tx;
  ty = v18.ty;
  v16 = v18.ty;
  v17 = v18.tx;
  v10 = *(v0 + qword_10095AD68);
  [v10 bounds];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = tx;
  v18.ty = ty;
  v20 = CGRectApplyAffineTransform(v19, &v18);
  [v10 center];
  v12 = v11;
  [v3 center];
  v14 = v13;
  v18.a = 1.0;
  v18.b = 0.0;
  v18.c = 0.0;
  v18.d = 1.0;
  v18.tx = 0.0;
  v18.ty = 0.0;
  [v10 setTransform:&v18];
  [v10 bounds];
  [v10 setBounds:?];
  [v10 setCenter:{v12, v14}];
  v18.a = a;
  v18.b = b;
  v18.c = c;
  v18.d = d;
  v18.tx = v17;
  v18.ty = v16;
  return [v10 setTransform:&v18];
}

void sub_1004F1620()
{
  v1 = *(v0 + qword_10095AD78);
}

void sub_1004F1680(uint64_t a1)
{
  v2 = *(a1 + qword_10095AD78);
}

uint64_t sub_1004F16F4()
{
  v1 = sub_10076C49C();
  sub_10076C4BC();
  sub_10075E67C();
  if (swift_dynamicCastClass())
  {
    sub_10075E66C();
    v2 = sub_10076BB5C();
  }

  else
  {

    sub_10076C4BC();
    v2 = sub_10076BB5C();
  }

  if (v2 && (v3 = sub_10076BE1C()) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = [objc_opt_self() grayColor];
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  v5 = sub_10076BE3C();
  if (v5)
  {
    v6 = v5;
    if (!v1)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v6 = [objc_opt_self() whiteColor];
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_12:

  v7 = sub_10076BE1C();

  if (v7)
  {
    goto LABEL_14;
  }

LABEL_13:
  v7 = [objc_opt_self() grayColor];
  if (v1)
  {
LABEL_14:

    v8 = sub_10076BE3C();

    if (v8)
    {
      goto LABEL_16;
    }
  }

  v8 = [objc_opt_self() whiteColor];
LABEL_16:
  v9 = *(v0 + qword_10095AD70);
  sub_10000A5D4(&unk_100942870);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100786040;
  *(v10 + 32) = v6;
  *(v10 + 40) = v4;
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  *(v9 + OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors) = v10;
  v11 = v6;
  v12 = v4;
  v13 = v7;
  v14 = v8;

  sub_1001C05B8();
}

uint64_t sub_1004F1948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10076BF6C();
  __chkstk_darwin(v10 - 8);
  v11 = sub_10076BEDC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a4;
  v44[4] = a5;
  v15 = sub_10000DB7C(v44);
  (*(*(a4 - 8) + 16))(v15, a1, a4);
  sub_10000A570(v44, v43);
  sub_10000A5D4(&unk_100942830);
  sub_10076C52C();
  if (swift_dynamicCast())
  {
    v39 = a3;
    v16 = v42;
    v17 = sub_10076C49C();
    sub_10076C4BC();
    sub_10075E67C();
    v18 = swift_dynamicCastClass();
    v37 = v16;
    if (v18)
    {
      sub_10075E66C();
      v19 = sub_10076BB5C();
    }

    else
    {

      sub_10076C4BC();
      v19 = sub_10076BB5C();
    }

    v40 = a2;
    v38 = v11;
    if (v19)
    {
      v36 = v17;
      v20 = v39;

      sub_10076BEEC();
      sub_10076BE9C();
      v41 = v12;
      v35 = *(v12 + 8);
      v35(v14, v11);
      sub_10076BFCC();
      v21 = *(v20 + qword_10095AD68);
      sub_10076BF7C();
      sub_10075FCCC();
      [v21 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();
      sub_10076BEEC();
      v22 = sub_10076BE9C();
      v11 = v38;
      v35(v14, v38);
      [v21 setContentMode:v22];
      sub_10075FD2C();
      sub_1004F208C(&qword_100941820, &type metadata accessor for ArtworkView);
      sub_100760B8C();

      v12 = v41;
      v17 = v36;
    }

    v36 = v19;
    if (v17)
    {
      v23 = v11;
      v24 = v39;
      sub_10076BEEC();
      sub_10076BE9C();
      v25 = *(v12 + 8);
      v41 = v12 + 8;
      v35 = v25;
      v25(v14, v23);
      sub_10076BFCC();
      v26 = *(v24 + qword_10095AD60);
      v27 = OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView;
      v28 = *(v26 + OBJC_IVAR____TtC20ProductPageExtension17InAppPurchaseView_artworkView);
      sub_10076BF7C();
      sub_10075FCCC();
      [v28 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10);
        sub_100770D5C();
      }

      sub_10075FB8C();

      v29 = *(v26 + v27);
      sub_10076BEEC();
      v30 = sub_10076BE9C();
      v35(v14, v38);
      [v29 setContentMode:v30];

      v31 = *(v26 + v27);
      sub_10075FD2C();
      sub_1004F208C(&qword_100941820, &type metadata accessor for ArtworkView);
      v32 = v31;
      sub_100760B8C();
    }

    else
    {
    }
  }

  return sub_10000CD74(v44);
}

void sub_1004F1F1C()
{
  v1 = qword_10095AD68;
  sub_10075FD2C();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = qword_10095AD70;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v3 = qword_10095AD78;
  *(v0 + v3) = [objc_allocWithZone(UIVisualEffectView) init];
  sub_10077156C();
  __break(1u);
}

unint64_t sub_1004F1FE8()
{
  result = qword_10095ADD8;
  if (!qword_10095ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095ADD8);
  }

  return result;
}

uint64_t sub_1004F203C()
{
  sub_10000CD74(v0 + 88);
  sub_10000CD74(v0 + 128);
  sub_10000CD74(v0 + 168);
  sub_10000CD74(v0 + 208);

  return _swift_deallocObject(v0, 248, 7);
}

uint64_t sub_1004F208C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F20E4()
{
  v0 = sub_100769C7C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100942908);
  sub_10000DB18(v4, qword_10095AE00);
  sub_10000A61C(v4, qword_10095AE00);
  sub_100769C6C();
  sub_100769C5C();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  v8[1] = v6;
  sub_10001E290();
  return sub_10076C29C();
}

uint64_t sub_1004F222C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000A5D4(&qword_100942908);
  sub_10000DB18(v3, a2);
  sub_10000A61C(v3, a2);
  sub_10001E290();
  return sub_10076C29C();
}

uint64_t sub_1004F22B0()
{
  v0 = sub_10000A5D4(&qword_100942900);
  __chkstk_darwin(v0 - 8);
  v56 = &v44 - v1;
  v64 = sub_10076C2DC();
  v59 = *(v64 - 8);
  __chkstk_darwin(v64);
  v3 = (&v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10000A5D4(&qword_100942908);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v55 = &v44 - v8;
  __chkstk_darwin(v9);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v54.i64[0] = sub_10076C20C();
  v13 = *(v54.i64[0] - 8);
  __chkstk_darwin(v54.i64[0]);
  v48 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v47 = &v44 - v16;
  sub_10000A5D4(&qword_100942910);
  v17 = *(v13 + 72);
  v49 = v13;
  v18 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100785C70;
  v51 = v19;
  v57 = v19 + v18;
  if (qword_100940710 != -1)
  {
    swift_once();
  }

  v58 = v17;
  v20 = sub_10000A61C(v4, qword_10095ADE8);
  v23 = *(v5 + 16);
  v22 = v5 + 16;
  v21 = v23;
  v46 = v20;
  (v23)(v12);
  v65 = 0x4030000000000000;
  v66 = 0x4020000000000000;
  v63 = sub_10001E290();
  sub_10076C27C();
  if (qword_100940720 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A61C(v4, qword_10095AE18);
  v25 = v4;
  v53 = v4;
  v62 = v24;
  v26 = v55;
  v21(v55, v24, v25);
  __asm { FMOV            V0.2D, #16.0 }

  *v3 = _Q0;
  v61 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v45 = v21;
  v32 = v59 + 104;
  v60 = *(v59 + 104);
  v60(v3);
  LOBYTE(v66) = 0;
  v52 = v22;
  sub_10076C29C();
  v66 = 0;
  sub_10076C29C();
  v33 = v47;
  v34 = v26;
  sub_10076C1CC();
  sub_10076C1FC();
  v44 = v12;
  v49 = *(v49 + 8);
  (v49)(v33, v54.i64[0]);
  v35 = v53;
  v36 = v45;
  v45(v12, v46, v53);
  v65 = 0x4034000000000000;
  v66 = 0x4024000000000000;
  sub_10076C27C();
  v36(v34, v62, v35);
  __asm { FMOV            V0.2D, #20.0 }

  *v3 = _Q0;
  v59 = v32;
  (v60)(v3, v61, v64);
  LOBYTE(v66) = 0;
  sub_10076C29C();
  v66 = 0;
  sub_10076C29C();
  v38 = v48;
  v39 = v44;
  v40 = v55;
  sub_10076C1CC();
  sub_10076C1FC();
  (v49)(v38, v54.i64[0]);
  v41 = v36;
  v42 = v53;
  if (qword_100940718 != -1)
  {
    swift_once();
  }

  v56 = sub_10000A61C(v42, qword_10095AE00);
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  sub_10076C29C();
  v41(v40, v62, v42);
  v54 = vdupq_n_s64(0x4041000000000000uLL);
  *v3 = v54;
  (v60)(v3, v61, v64);
  sub_10076C1EC();
  v41(v39, v56, v42);
  v66 = 0x4034000000000000;
  sub_10076C29C();
  v41(v40, v62, v42);
  *v3 = v54;
  (v60)(v3, v61, v64);
  sub_1007704BC();
  sub_10076C1EC();
  v41(v39, v56, v42);
  v66 = 0x4038000000000000;
  sub_10076C29C();
  v41(v40, v62, v42);
  *v3 = vdupq_n_s64(0x404A000000000000uLL);
  (v60)(v3, v61, v64);
  sub_10076C1EC();
  return v51;
}

uint64_t sub_1004F2C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_10076270C();
  if (v7)
  {
    v8 = v7;
    v9 = sub_10000A5D4(&unk_1009428E0);
    sub_10076F5AC();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {

      sub_1000527AC(v6);
    }

    else
    {
      sub_100263BF0(v8, 1, a3, v6);

      (*(v10 + 8))(v6, v9);
    }
  }

  return 3;
}

double sub_1004F2E48(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_10076997C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093F860 != -1)
  {
    v29 = v10;
    swift_once();
    v10 = v29;
  }

  v39 = v10;
  v38 = sub_10076DDDC();
  swift_allocObject();
  v37 = sub_10076DDBC();
  sub_1007626FC();
  v13 = sub_10005312C();
  v34 = a1;
  v14 = v13;
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  sub_10000A61C(v15, qword_1009A16D8);
  ObjectType = swift_getObjectType();
  v16 = [a5 traitCollection];
  v35 = a5;
  v17 = v16;
  sub_100770B3C();

  v18 = sub_10076C04C();
  v41 = v18;
  v33 = sub_1004F3420(&qword_100943230, &type metadata accessor for Feature);
  v42 = v33;
  v19 = sub_10000DB7C(v40);
  v20 = *(*(v18 - 8) + 104);
  v30[1] = v14;
  v31 = v20;
  v32 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v20(v19);
  sub_10076C90C();
  sub_10000CD74(v40);
  sub_10076996C();
  sub_10076994C();
  v21 = *(v9 + 8);
  v22 = v39;
  v21(v12, v39);
  v34 = sub_1007626EC();
  v30[0] = v23;
  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v15, qword_1009A16F0);
  v24 = v35;
  v25 = [v35 traitCollection];
  sub_100770B3C();

  v41 = v18;
  v42 = v33;
  v26 = sub_10000DB7C(v40);
  v31(v26, v32, v18);
  sub_10076C90C();
  sub_10000CD74(v40);
  sub_10076996C();
  sub_10076994C();
  v21(v12, v22);
  sub_1001691A0(&xmmword_10099D2E0, v40);
  v44 = v38;
  v45 = &protocol witness table for LayoutViewPlaceholder;
  v43 = v37;
  sub_10000A570(v49, &v47);
  sub_10000A570(v48, &v46);
  v27 = sub_1005D14C8(v24, v40, a2);
  sub_1001691FC(v40);
  sub_10000CD74(v48);
  sub_10000CD74(v49);
  return v27;
}

void sub_1004F32E8(int a1, int a2, int a3, int a4, id a5)
{
  v6 = v5;
  [a5 pageMarginInsets];
  v7 = (v5 + OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_insets);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v12 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_artworkView);
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  sub_10075FCEC(v21, v13);

  v14 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_displayName);
  sub_1007626EC();
  if (v15)
  {
    v16 = sub_10076FF6C();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension39SmallGameCenterPlayerCollectionViewCell_alias);
  sub_1007626FC();
  if (v18)
  {
    v19 = sub_10076FF6C();
  }

  else
  {
    v19 = 0;
  }

  [v17 setText:v19];
}

uint64_t sub_1004F3420(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004F3468(void *a1)
{
  v3 = sub_10076B21C();
  v75 = *(v3 - 8);
  v76 = v3;
  __chkstk_darwin(v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&qword_100942C30);
  __chkstk_darwin(v6);
  v8 = &v69 - v7;
  v9 = sub_10000A5D4(&qword_100942C38);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  __chkstk_darwin(v15);
  v17 = &v69 - v16;
  if (!*(v1 + 32))
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = Strong;
  v20 = [Strong collectionView];

  if (!v20)
  {
    return;
  }

  sub_100016F40(0, &qword_100954BD0);
  v21 = a1;
  v74 = v6;
  v22 = v14;
  v23 = v17;
  v24 = v1;
  v25 = v11;
  v26 = v5;
  v27 = v8;
  v28 = v21;
  v29 = sub_100770EEC();

  v73 = v28;
  v30 = v27;
  v31 = v26;
  v32 = v25;
  v33 = v24;
  v34 = v23;
  v35 = v22;
  v36 = v74;
  if ((v29 & 1) == 0 || *(v33 + 88) != 1)
  {
    return;
  }

  [v73 contentOffset];
  v38 = v37;
  v39 = *(v33 + 32);
  if (v39)
  {
    v40 = swift_unknownObjectWeakLoadStrong();
    v41 = v39;
    sub_1002085F0(v40);
    v43 = v42;

    v44 = v38 / v43;
    if (v38 / v43 >= 1.0)
    {
      v44 = 1.0;
    }
  }

  else
  {
    v44 = v37 / 0.0;
    v45 = 1.0;
    if (v37 / 0.0 >= 1.0)
    {
      goto LABEL_13;
    }
  }

  if (v44 < 0.0)
  {
    v45 = 0.0;
  }

  else
  {
    v45 = v44;
  }

LABEL_13:
  v46 = *(v33 + 40);
  if (v46)
  {

    v46(v47, v45, 0.0);
    sub_1000167E0(v46);
  }

  v48 = *(v33 + 72);
  v49 = v76;
  if (!v48)
  {
    goto LABEL_28;
  }

  v50 = *(v33 + 80);
  v51 = *(v33 + 32);
  v72 = *(v33 + 72);
  v70 = v31;
  v71 = v50;
  if (v51)
  {
    sub_10001CE50(v48);

    sub_10076B23C();

    v52 = v75;
    v53 = *(v75 + 56);
    v53(v34, 0, 1, v49);
  }

  else
  {
    v52 = v75;
    v54 = *(v75 + 56);
    v69 = v32;
    v53 = v54;
    v54(v34, 1, 1, v76);
    v32 = v69;
  }

  (*(v52 + 104))(v35, enum case for Uber.Style.inline(_:), v49);
  v53(v35, 0, 1, v49);
  v55 = v49;
  v56 = *(v36 + 48);
  sub_1004F51A0(v34, v30);
  sub_1004F51A0(v35, v30 + v56);
  v57 = *(v52 + 48);
  if (v57(v30, 1, v55) == 1)
  {
    sub_10000CFBC(v35, &qword_100942C38);
    sub_10000CFBC(v34, &qword_100942C38);
    if (v57(v30 + v56, 1, v55) == 1)
    {
      sub_10000CFBC(v30, &qword_100942C38);
      v58 = v72;
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  sub_1004F51A0(v30, v32);
  if (v57(v30 + v56, 1, v55) == 1)
  {
    sub_10000CFBC(v35, &qword_100942C38);
    sub_10000CFBC(v34, &qword_100942C38);
    (*(v75 + 8))(v32, v55);
LABEL_24:
    sub_10000CFBC(v30, &qword_100942C30);
    v58 = v72;
    goto LABEL_27;
  }

  v59 = v75;
  v60 = v30 + v56;
  v61 = v70;
  (*(v75 + 32))(v70, v60, v55);
  sub_1004F5210();
  LODWORD(v74) = sub_10076FF1C();
  v62 = *(v59 + 8);
  v62(v61, v55);
  sub_10000CFBC(v35, &qword_100942C38);
  sub_10000CFBC(v34, &qword_100942C38);
  v62(v32, v55);
  sub_10000CFBC(v30, &qword_100942C38);
  v58 = v72;
  if (v74)
  {
LABEL_26:
    if ((sub_1004F3E9C() & 1) == 0)
    {
      if (v45 >= 0.5)
      {
        v68 = 0.35;
      }

      else
      {
        v68 = 0.2;
      }

      v63.n128_u64[0] = 1.0;
      if (v45 < 0.5)
      {
        v63.n128_f64[0] = 0.0;
      }

      v58(v63, v68);
      sub_1004F49A8(v73, *&v68, 0, v45);
      sub_1000167E0(v58);
      goto LABEL_29;
    }
  }

LABEL_27:
  sub_1000167E0(v58);
LABEL_28:
  sub_1004F49A8(v73, 0, 1, v45);
LABEL_29:
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = [v64 navigationController];

    if (v66)
    {
      v67 = [v66 navigationBar];

      [v67 _setTitleOpacity:v45];
    }
  }
}

void sub_1004F3B94()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2)
  {

    v2(v3, 1.0, 0.0);
    sub_1000167E0(v2);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      v7 = [v6 navigationBar];

      [v7 _setTitleOpacity:1.0];
    }
  }

  *(v1 + 88) = 0;
}

void sub_1004F3C58()
{
  if (!*(v0 + 32) || (v1 = swift_unknownObjectWeakLoadStrong()) == 0 || (v2 = v1, v3 = [v1 navigationController], v2, !v3) || ((v4 = objc_msgSend(v3, "viewControllers"), v3, sub_100016F40(0, &qword_1009453B0), v5 = sub_1007701BC(), v4, v5 >> 62) ? (v6 = sub_10077158C()) : (v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)), (, v6 != 1) || (v7 = swift_unknownObjectWeakLoadStrong()) == 0 || (v8 = v7, v9 = (*((swift_isaMask & *v7) + 0xB8))(), v8, (v9 & 1) == 0)))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong navigationController];

      if (v12)
      {
        v13 = [v12 navigationBar];

        [v13 frame];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;

        v25.origin.x = v15;
        v25.origin.y = v17;
        v25.size.width = v19;
        v25.size.height = v21;
        CGRectGetMaxY(v25);
      }
    }

    v22 = *(v0 + 32);
    if (v22)
    {
      v23 = swift_unknownObjectWeakLoadStrong();
      v24 = v22;
      sub_1002085F0(v23);
    }
  }
}

uint64_t sub_1004F3E9C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong navigationController];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 viewControllers];

  sub_100016F40(0, &qword_1009453B0);
  v4 = sub_1007701BC();

  v5 = v4 >> 62 ? sub_10077158C() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v5 != 1)
  {
    return 0;
  }

  v6 = swift_unknownObjectWeakLoadStrong();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = (*((swift_isaMask & *v6) + 0xB8))();

  return v8 & 1;
}

void sub_1004F3FD8(void *a1, void *a2)
{
  v32 = a2;
  v4 = sub_10076B21C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100942C30);
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = sub_10000A5D4(&qword_100942C38);
  __chkstk_darwin(v10 - 8);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = *(v2 + 32);
  v33 = v2;
  *(v2 + 32) = a1;
  a1;

  if (a1)
  {
    sub_10076B23C();
    v19 = *(v5 + 56);
    v19(v17, 0, 1, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v17, 1, 1, v4);
  }

  (*(v5 + 104))(v14, enum case for Uber.Style.inline(_:), v4);
  v19(v14, 0, 1, v4);
  v20 = *(v7 + 48);
  sub_1004F51A0(v17, v9);
  sub_1004F51A0(v14, &v9[v20]);
  v21 = *(v5 + 48);
  if (v21(v9, 1, v4) == 1)
  {
    sub_10000CFBC(v14, &qword_100942C38);
    sub_10000CFBC(v17, &qword_100942C38);
    if (v21(&v9[v20], 1, v4) == 1)
    {
      sub_10000CFBC(v9, &qword_100942C38);
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v22 = v31;
  sub_1004F51A0(v9, v31);
  if (v21(&v9[v20], 1, v4) == 1)
  {
    sub_10000CFBC(v14, &qword_100942C38);
    sub_10000CFBC(v17, &qword_100942C38);
    (*(v5 + 8))(v22, v4);
LABEL_9:
    sub_10000CFBC(v9, &qword_100942C30);
    goto LABEL_12;
  }

  v23 = v30;
  (*(v5 + 32))(v30, &v9[v20], v4);
  sub_1004F5210();
  v24 = v22;
  v25 = sub_10076FF1C();
  v26 = *(v5 + 8);
  v26(v23, v4);
  sub_10000CFBC(v14, &qword_100942C38);
  sub_10000CFBC(v17, &qword_100942C38);
  v26(v24, v4);
  sub_10000CFBC(v9, &qword_100942C38);
  if (v25)
  {
LABEL_11:
    if ((sub_1004F3E9C() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

LABEL_12:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    sub_1004F3C58();
    (*((swift_isaMask & *v28) + 0x1A8))(v29, 0);
  }

LABEL_14:
  sub_1004F3468(v32);
}

uint64_t sub_1004F44C8(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v10 = sub_10076B21C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_100942C30);
  __chkstk_darwin(v14);
  v16 = v36 - v15;
  v17 = sub_10000A5D4(&qword_100942C38);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v36 - v21;
  __chkstk_darwin(v23);
  v25 = v36 - v24;
  if (a4 > a2)
  {
    goto LABEL_2;
  }

  if (fabs(a6) <= 0.4)
  {
    v36[1] = v6;
    if (*(v6 + 32))
    {

      sub_10076B23C();

      v27 = *(v11 + 56);
      v27(v25, 0, 1, v10);
    }

    else
    {
      v27 = *(v11 + 56);
      v27(v36 - v24, 1, 1, v10);
    }

    (*(v11 + 104))(v22, enum case for Uber.Style.inline(_:), v10);
    v27(v22, 0, 1, v10);
    v28 = *(v14 + 48);
    sub_1004F51A0(v25, v16);
    sub_1004F51A0(v22, &v16[v28]);
    v29 = *(v11 + 48);
    if (v29(v16, 1, v10) == 1)
    {
      sub_10000CFBC(v22, &qword_100942C38);
      sub_10000CFBC(v25, &qword_100942C38);
      if (v29(&v16[v28], 1, v10) == 1)
      {
        sub_10000CFBC(v16, &qword_100942C38);
        v26 = 0;
        return v26 & 1;
      }

      goto LABEL_12;
    }

    sub_1004F51A0(v16, v19);
    if (v29(&v16[v28], 1, v10) == 1)
    {
      sub_10000CFBC(v22, &qword_100942C38);
      sub_10000CFBC(v25, &qword_100942C38);
      (*(v11 + 8))(v19, v10);
LABEL_12:
      sub_10000CFBC(v16, &qword_100942C30);
      goto LABEL_13;
    }

    (*(v11 + 32))(v13, &v16[v28], v10);
    sub_1004F5210();
    v34 = sub_10076FF1C();
    v35 = *(v11 + 8);
    v35(v13, v10);
    sub_10000CFBC(v22, &qword_100942C38);
    sub_10000CFBC(v25, &qword_100942C38);
    v35(v19, v10);
    sub_10000CFBC(v16, &qword_100942C38);
    if (v34)
    {
LABEL_2:
      v26 = 0;
      return v26 & 1;
    }
  }

LABEL_13:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    v32 = [Strong traitCollection];

    LOBYTE(v31) = sub_10077071C();
    v26 = v31 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  return v26 & 1;
}

uint64_t sub_1004F49A8(void *a1, uint64_t a2, char a3, double a4)
{
  v9 = sub_10076B21C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100942C30);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = sub_10000A5D4(&qword_100942C38);
  __chkstk_darwin(v15 - 8);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  *&v21 = __chkstk_darwin(v20).n128_u64[0];
  v23 = &v41 - v22;
  if (a3)
  {
    [a1 _verticalVelocity];
    v25 = v24;
  }

  else
  {
    v25 = *&a2;
  }

  v26 = *(v4 + 32);
  v44 = v4;
  if (v26)
  {

    sub_10076B23C();

    v27 = *(v10 + 56);
    v27(v23, 0, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(v23, 1, 1, v9);
  }

  (*(v10 + 104))(v19, enum case for Uber.Style.inline(_:), v9);
  v27(v19, 0, 1, v9);
  v28 = *(v12 + 48);
  sub_1004F51A0(v23, v14);
  sub_1004F51A0(v19, &v14[v28]);
  v29 = *(v10 + 48);
  if (v29(v14, 1, v9) == 1)
  {
    sub_10000CFBC(v19, &qword_100942C38);
    sub_10000CFBC(v23, &qword_100942C38);
    v30 = v29(&v14[v28], 1, v9);
    v31 = v44;
    if (v30 == 1)
    {
      result = sub_10000CFBC(v14, &qword_100942C38);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v33 = v43;
  sub_1004F51A0(v14, v43);
  if (v29(&v14[v28], 1, v9) == 1)
  {
    sub_10000CFBC(v19, &qword_100942C38);
    sub_10000CFBC(v23, &qword_100942C38);
    (*(v10 + 8))(v33, v9);
    v31 = v44;
LABEL_12:
    result = sub_10000CFBC(v14, &qword_100942C30);
    goto LABEL_13;
  }

  v35 = &v14[v28];
  v36 = v42;
  (*(v10 + 32))(v42, v35, v9);
  sub_1004F5210();
  v37 = v33;
  v38 = sub_10076FF1C();
  v39 = *(v10 + 8);
  v39(v36, v9);
  sub_10000CFBC(v19, &qword_100942C38);
  sub_10000CFBC(v23, &qword_100942C38);
  v39(v37, v9);
  result = sub_10000CFBC(v14, &qword_100942C38);
  v31 = v44;
  if (v38)
  {
LABEL_16:
    v34 = *(v31 + 56);
    if (!v34)
    {
      return result;
    }

    goto LABEL_17;
  }

LABEL_13:
  v34 = *(v31 + 40);
  if (!v34)
  {
    return result;
  }

LABEL_17:

  v34(v40, a4, v25);
  return sub_1000167E0(v34);
}

void sub_1004F4E8C(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  if (*(v4 + 32))
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong collectionView];

      if (v12)
      {
        sub_100016F40(0, &qword_100954BD0);
        v13 = a1;
        v14 = sub_100770EEC();

        if (v14)
        {
          [v13 contentSize];
          v16 = v15;
          v18 = v17;
          [v13 frame];
          if ((sub_1004F44C8(v16, v18, v19, v20, a3, a4) & 1) != 0 && *(a2 + 8) > 0.0)
          {
            [v13 contentInset];
            v22 = v21;
            [v13 _systemContentInset];
            v24 = v23;
            v25 = swift_unknownObjectWeakLoadStrong();
            v26 = 0.0;
            MaxY = 0.0;
            if (v25)
            {
              v28 = v25;
              v29 = [v25 navigationController];

              if (v29)
              {
                v30 = [v29 navigationBar];

                [v30 frame];
                v32 = v31;
                v34 = v33;
                v36 = v35;
                v38 = v37;

                v51.origin.x = v32;
                v51.origin.y = v34;
                v51.size.width = v36;
                v51.size.height = v38;
                MaxY = CGRectGetMaxY(v51);
              }
            }

            v39 = *(v5 + 32);
            if (v39)
            {
              v40 = swift_unknownObjectWeakLoadStrong();
              v41 = v39;
              sub_1002085F0(v40);
              v43 = v42;

              v44 = *(v5 + 32);
              if (v44)
              {
                v26 = *(v44 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_reflectionOutset);
              }
            }

            else
            {
              v43 = 0.0;
            }

            v45 = v43 + v26 - v24;
            v46 = *(a2 + 8);
            if (v45 >= 0.0)
            {
              if (v46 > v45)
              {
                return;
              }
            }

            else
            {
              if (v46 > 0.0)
              {
                return;
              }

              v45 = 0.0;
            }

            if (a4 >= 0.0)
            {
              v47 = 0.07;
            }

            else
            {
              v47 = 0.5;
            }

            v48 = v45 * v47;
            v49 = v45 - MaxY;
            if (v46 <= v48)
            {
              v50 = -(v22 + v24);
            }

            else
            {
              v50 = v49;
            }

            *(a2 + 8) = v50;
          }
        }
      }
    }
  }
}

uint64_t sub_1004F511C()
{
  sub_10000CC8C(v0 + 16);

  sub_1000167E0(*(v0 + 40));
  sub_1000167E0(*(v0 + 56));
  sub_1000167E0(*(v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_1004F51A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100942C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004F5210()
{
  result = qword_100942C50;
  if (!qword_100942C50)
  {
    sub_10076B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942C50);
  }

  return result;
}

uint64_t sub_1004F5268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 88) = 1;
  *(a2 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return a2;
}

id sub_1004F52FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = &v4[*a3];
  *v7 = a1;
  *(v7 + 1) = a2;

  v8 = *&v4[*a4];
  if (a2)
  {
    v9 = sub_10076FF6C();
  }

  else
  {
    v9 = 0;
  }

  [v8 setText:v9];

  v10 = sub_10077002C();

  [v8 setHidden:v10 & 1];

  return [v4 setNeedsLayout];
}

id sub_1004F53EC()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueText];
  v3 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel;
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueText + 8])
  {
    if (!v4)
    {
      type metadata accessor for FadeableDynamicTypeLabel(0);
      v5 = sub_10076269C();
      sub_1004F9364(v5);

      v6 = *&v0[v3];
      if (v6)
      {
        [v6 setLineBreakMode:2];
      }
    }
  }

  else
  {
    if (v4)
    {
      [v4 removeFromSuperview];
      v7 = *&v0[v3];
    }

    else
    {
      v7 = 0;
    }

    *&v0[v3] = 0;

    [v0 setNeedsLayout];
  }

  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
  if (v8)
  {
    if (*(v2 + 1))
    {
      v9 = v8;

      v10 = sub_10076FF6C();
    }

    else
    {
      v9 = v8;
      v10 = 0;
    }

    [v9 setText:v10];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1004F5548(uint64_t a1)
{
  v3 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_action;
  swift_beginAccess();
  sub_10031DCE8(a1, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_tapGestureRecognizer);
  sub_100016E2C(v1 + v6, v5, &qword_100952650);
  v8 = sub_10000A5D4(&qword_100955BD0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  v10 = v7;
  sub_10000CFBC(v5, &qword_100952650);
  [v10 setEnabled:v9];

  return sub_10000CFBC(a1, &qword_100952650);
}

uint64_t sub_1004F56BC()
{
  v58 = sub_100766DFC();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v44[-((v0 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v1 = sub_10076C45C();
  v53 = *(v1 - 8);
  v54 = v1;
  __chkstk_darwin(v1);
  v57 = &v44[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_100766DEC();
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v55 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10076256C();
  v47 = *(v5 - 8);
  v48 = v5;
  __chkstk_darwin(v5);
  v52 = &v44[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100765C9C();
  sub_10000DB18(v11, qword_1009A04D8);
  v49 = sub_10000A61C(v11, qword_1009A04D8);
  if (qword_100940BB8 != -1)
  {
    swift_once();
  }

  v12 = sub_10076D3DC();
  v13 = sub_10000A61C(v12, qword_1009A1120);
  v14 = *(v12 - 8);
  v15 = *(v14 + 16);
  v16 = v14 + 16;
  v15(v10, v13, v12);
  v17 = v8[13];
  v18 = enum case for FontSource.useCase(_:);
  v68 = v8 + 13;
  v65 = v17;
  v17(v10);
  v19 = sub_10076D9AC();
  v86[3] = v19;
  v86[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v86);
  v84 = v7;
  v85 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v83);
  v21 = v8[2];
  v69 = v8 + 2;
  v67 = v21;
  v21(v20, v10, v7);
  sub_10076D9BC();
  v22 = v8[1];
  v66 = v8 + 1;
  v63 = v22;
  v22(v10, v7);
  if (qword_100940BB0 != -1)
  {
    swift_once();
  }

  v60 = sub_10000A61C(v12, qword_1009A1108);
  v15(v10, v60, v12);
  v45 = v18;
  v65(v10, v18, v7);
  v84 = v19;
  v85 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v83);
  v23 = v16;
  v24 = v15;
  v81 = v7;
  v82 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v80);
  v26 = v67;
  v67(v25, v10, v7);
  sub_10076D9BC();
  v27 = v63;
  v63(v10, v7);
  v64 = v12;
  v61 = v23;
  v62 = v24;
  v24(v10, v60, v12);
  v28 = v45;
  v29 = v65;
  v65(v10, v45, v7);
  v81 = v19;
  v82 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v80);
  v78 = v7;
  v79 = &protocol witness table for FontSource;
  v30 = sub_10000DB7C(v77);
  v26(v30, v10, v7);
  sub_10076D9BC();
  v27(v10, v7);
  v31 = v28;
  v32 = v19;
  v33 = v29;
  if (qword_100940B98 != -1)
  {
    swift_once();
  }

  v34 = v64;
  v46 = sub_10000A61C(v64, qword_1009A10C0);
  v35 = v62;
  v62(v10, v46, v34);
  v33(v10, v28, v7);
  v78 = v32;
  v79 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v77);
  v36 = v33;
  v60 = v32;
  v75 = v7;
  v76 = &protocol witness table for FontSource;
  v37 = sub_10000DB7C(v74);
  v67(v37, v10, v7);
  sub_10076D9BC();
  v63(v10, v7);
  v38 = v46;
  v35(v10, v46, v64);
  v36(v10, v28, v7);
  v75 = v60;
  v76 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v74);
  v72 = v7;
  v73 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v71);
  v40 = v67;
  v67(v39, v10, v7);
  sub_10076D9BC();
  v41 = v63;
  v63(v10, v7);
  v62(v10, v38, v64);
  v65(v10, v31, v7);
  v72 = v60;
  v73 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v71);
  v70[3] = v7;
  v70[4] = &protocol witness table for FontSource;
  v42 = sub_10000DB7C(v70);
  v40(v42, v10, v7);
  sub_10076D9BC();
  v41(v10, v7);
  (*(v47 + 104))(v52, enum case for BadgeViewSpacing.standard(_:), v48);
  (*(v50 + 104))(v55, enum case for BadgeCaptionCappingType.none(_:), v51);
  (*(v53 + 104))(v57, enum case for BadgeType.chartPosition(_:), v54);
  (*(v56 + 104))(v59, enum case for BadgeValueViewAlignment.baseline(_:), v58);
  return sub_100765C2C();
}

char *sub_1004F6004(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_leadingValue;
  v13 = enum case for BadgeLeadingValue.infer(_:);
  v14 = sub_10076300C();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  v15 = &v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_caption];
  *v15 = 0;
  v15[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView] = 0;
  v16 = &v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_heading];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueText];
  *v17 = 0;
  v17[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_isTruncatable] = 1;
  v18 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionCappingType;
  v19 = enum case for BadgeCaptionCappingType.none(_:);
  v20 = sub_100766DEC();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_requiresRemainingWidth] = 0;
  v21 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueViewAlignment;
  v22 = enum case for BadgeValueViewAlignment.baseline(_:);
  v23 = sub_100766DFC();
  (*(*(v23 - 8) + 104))(&v4[v21], v22, v23);
  v24 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_spacing;
  v25 = enum case for BadgeViewSpacing.standard(_:);
  v26 = sub_10076256C();
  (*(*(v26 - 8) + 104))(&v4[v24], v25, v26);
  v27 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_action;
  v28 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v28 - 8) + 56))(&v4[v27], 1, 1, v28);
  v29 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgeType;
  v30 = enum case for BadgeType.custom(_:);
  v31 = sub_10076C45C();
  (*(*(v31 - 8) + 104))(&v4[v29], v30, v31);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView] = 0;
  v32 = &v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgePositionInRibbon];
  *v32 = 0;
  v32[8] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_overallBadgeCount] = 0;
  v33 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_tapGestureRecognizer;
  *&v4[v33] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v34] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v36 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel;
  *&v4[v36] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v37 = type metadata accessor for BadgeView(0);
  v61.receiver = v4;
  v61.super_class = v37;
  v38 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v42 = v38;
  [v42 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v43 = objc_opt_self();
  v44 = v42;
  v45 = [v43 systemGrayColor];
  [v44 setTintColor:v45];

  v46 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_tapGestureRecognizer;
  [*&v44[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_tapGestureRecognizer] setEnabled:0];
  v47 = *&v44[v46];
  [v47 addTarget:v44 action:"didTapBadgeView:"];

  [v44 addGestureRecognizer:*&v44[v46]];
  v48 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel;
  [*&v44[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel] setNumberOfLines:1];
  [*&v44[v48] setTextAlignment:1];
  [*&v44[v48] setLineBreakMode:2];
  v49 = qword_100940BB0;
  v50 = *&v44[v48];
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = sub_10076D3DC();
  v52 = sub_10000A61C(v51, qword_1009A1108);
  v53 = *(v51 - 8);
  v54 = *(v53 + 16);
  v54(v11, v52, v51);
  v55 = *(v53 + 56);
  v55(v11, 0, 1, v51);
  sub_1007625DC();

  [v44 addSubview:*&v44[v48]];
  v56 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel;
  [*&v44[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel] setNumberOfLines:1];
  [*&v44[v56] setTextAlignment:1];
  [*&v44[v56] setLineBreakMode:2];
  v57 = qword_100940BB8;
  v58 = *&v44[v56];
  if (v57 != -1)
  {
    swift_once();
  }

  v59 = sub_10000A61C(v51, qword_1009A1120);
  v54(v11, v59, v51);
  v55(v11, 0, 1, v51);
  sub_1007625DC();

  [v44 addSubview:*&v44[v56]];
  sub_1004F6F80();
  sub_1004F7370();

  return v44;
}

id sub_1004F6718()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for BadgeView(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004F6A7C()
{
  v1 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v1 - 8);
  v32 = &v30 - v2;
  v31 = sub_100766DEC();
  v3 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076300C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for BadgeLeadingValue.infer(_:), v6, v8);
  v11 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_leadingValue;
  swift_beginAccess();
  (*(v7 + 24))(&v0[v11], v10, v6);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v7 + 8))(v10, v6);
  v12 = &v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_caption];
  *v12 = 0;
  *(v12 + 1) = 0;

  v13 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel];
  [v13 setText:0];

  LOBYTE(v10) = sub_10077002C();

  [v13 setHidden:v10 & 1];
  [v0 setNeedsLayout];
  v14 = &v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_heading];
  *v14 = 0;
  *(v14 + 1) = 0;

  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel];
  [v15 setText:0];

  LOBYTE(v7) = sub_10077002C();

  [v15 setHidden:v7 & 1];
  [v0 setNeedsLayout];
  v16 = &v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueText];
  *v16 = 0;
  *(v16 + 1) = 0;

  sub_1004F53EC();
  v17 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel;
  v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
  if (v18)
  {
    [v18 removeFromSuperview];
    v19 = *&v0[v17];
  }

  else
  {
    v19 = 0;
  }

  *&v0[v17] = 0;

  [v0 setNeedsLayout];
  v20 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView;
  v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView];
  if (v21)
  {
    [v21 removeFromSuperview];
    v22 = *&v0[v20];
  }

  else
  {
    v22 = 0;
  }

  *&v0[v20] = 0;

  [v0 setNeedsLayout];
  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView];
  *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView] = 0;

  v24 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment] = 4;
  [*&v0[v17] setTextAlignment:4];
  [v13 setTextAlignment:*&v0[v24]];
  [v15 setTextAlignment:*&v0[v24]];
  [v0 setNeedsLayout];
  v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_isTruncatable] = 1;
  [v0 setNeedsLayout];
  v25 = v31;
  (*(v3 + 104))(v5, enum case for BadgeCaptionCappingType.none(_:), v31);
  v26 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v3 + 24))(&v0[v26], v5, v25);
  swift_endAccess();
  [v0 setNeedsLayout];
  (*(v3 + 8))(v5, v25);
  v27 = sub_10000A5D4(&qword_100955BD0);
  v28 = v32;
  (*(*(v27 - 8) + 56))(v32, 1, 1, v27);
  return sub_1004F5548(v28);
}

void sub_1004F6F80()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  if (qword_100940B98 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A10C0);
  v7.super.isa = [v1 traitCollection];
  isa = v7.super.isa;
  v9 = sub_10076D3BC(v7).super.isa;
  v10 = [(objc_class *)v9 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v10)
  {
    v18 = [objc_opt_self() fontWithDescriptor:v10 size:0.0];

    if (v18)
    {
      v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
      if (v11)
      {
        v12 = v11;
        [v12 setFont:v18];
      }

      v13 = v18;

      return;
    }
  }

  else
  {
  }

  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
  if (v14)
  {
    v15 = *(v5 - 8);
    (*(v15 + 16))(v4, v6, v5);
    (*(v15 + 56))(v4, 0, 1, v5);
    v16 = v14;
    sub_1007625DC();
  }
}

void sub_1004F71E8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 tintColor];
    [v2 setTintColor:v3];
  }

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [v0 tintColor];
    [v5 setTextColor:v6];
  }
}

void sub_1004F7370()
{
  v1 = objc_opt_self();
  v2 = [v1 systemBackgroundColor];
  [v0 setBackgroundColor:v2];

  v3 = [v1 systemGrayColor];
  [v0 setTintColor:v3];

  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel];
  v5 = [v1 systemGrayColor];
  [v4 setTextColor:v5];

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel];
  sub_100016F40(0, &qword_100942F10);
  v7 = [objc_allocWithZone(UIColor) initWithRed:0.235294118 green:0.235294118 blue:0.262745098 alpha:0.4];
  v8.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.921568627 green:0.921568627 blue:0.960784314 alpha:0.5];
  v9.super.isa = v7;
  isa = sub_100770DEC(v9, v8).super.isa;
  [v6 setTextColor:isa];
}

void sub_1004F7510(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = sub_10076C45C();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10076256C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v47 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076300C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v43 - v10;
  v44 = sub_100766DFC();
  v11 = *(v44 - 8);
  __chkstk_darwin(v44);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100766DEC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940728 != -1)
  {
    swift_once();
  }

  v18 = sub_100765C9C();
  v19 = sub_10000A61C(v18, qword_1009A04D8);
  (*(*(v18 - 8) + 16))(a1, v19, v18);
  v20 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v15 + 16))(v17, &v2[v20], v14);
  sub_100765C5C();
  v21 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v11 + 16))(v13, &v2[v21], v44);
  sub_100765BFC();
  sub_100765C7C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_leadingValue;
  swift_beginAccess();
  v23 = v45;
  (*(v7 + 16))(v45, &v2[v22], v6);
  v24 = v46;
  (*(v7 + 104))(v46, enum case for BadgeLeadingValue.view(_:), v6);
  sub_1004F9B08(&qword_10095B030, &type metadata accessor for BadgeLeadingValue);
  sub_10076FF1C();
  v25 = *(v7 + 8);
  v25(v24, v6);
  v25(v23, v6);
  sub_100765C4C();
  v26 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_spacing;
  swift_beginAccess();
  (*(v48 + 16))(v47, &v2[v26], v49);
  sub_100765C1C();
  v27 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgeType;
  swift_beginAccess();
  (*(v51 + 16))(v50, &v2[v27], v52);
  sub_100765C8C();
  v28 = *&v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView];
  if (v28)
  {
    v29 = v28;
    sub_10075FC4C();
  }

  sub_100765C6C();
  if ((v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgePositionInRibbon + 8] & 1) == 0)
  {
    v30 = *&v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgePositionInRibbon];
    v31 = *&v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_overallBadgeCount];
    v32 = [v2 traitCollection];
    v33 = sub_10077070C();
    v34 = v33;
    if (!v30 && (v33 & 1) == 0)
    {
      goto LABEL_10;
    }

    if (__OFSUB__(v31, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (((v30 == v31 - 1) & v33) == 1)
    {
LABEL_10:
      v35 = sub_100765BEC();
      *(v36 + 8) = 0;
      v35(v53, 0);
      v37 = sub_100765C0C();
      *(v38 + 8) = 0;
      v37(v53, 0);
    }

    if (!v30 && ((v34 ^ 1) & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!__OFSUB__(v31, 1))
    {
      if ((v30 != v31 - 1) | v34 & 1)
      {
LABEL_16:

        return;
      }

LABEL_15:
      v39 = sub_100765BEC();
      *(v40 + 24) = 0;
      v39(v53, 0);
      v41 = sub_100765C0C();
      *(v42 + 24) = 0;
      v41(v53, 0);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1004F7C54()
{
  v27 = sub_10076D1FC();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100765C9C();
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100765CBC();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeView(0);
  v44.receiver = v0;
  v44.super_class = v9;
  objc_msgSendSuper2(&v44, "layoutSubviews");
  sub_1004F7510(v5);
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel];
  v11 = sub_1007626BC();
  v42 = v11;
  v43 = &protocol witness table for UILabel;
  v41 = v10;
  v12 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView];
  v13 = sub_100016F40(0, &qword_1009441F0);
  v39 = v13;
  v40 = &protocol witness table for UIView;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel];
  }

  v38 = v14;
  v15 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
  if (v15)
  {
    v16 = &protocol witness table for UILabel;
    v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
  }

  else
  {
    v17 = 0;
    v11 = 0;
    v16 = 0;
    v34 = 0;
    v35 = 0;
  }

  v33 = v17;
  v36 = v11;
  v37 = v16;
  v18 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView];
  if (v18)
  {
    v19 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v19 = 0;
    v29 = 0;
    v30 = 0;
  }

  v28 = v18;
  v31 = v13;
  v32 = v19;
  v20 = v15;
  v21 = v18;
  v22 = v10;
  v23 = v12;
  sub_100765CAC();
  sub_10076422C();
  sub_100765BCC();
  (*(v26 + 8))(v2, v27);
  return (*(v6 + 8))(v8, v25);
}

double sub_1004F7FB4()
{
  v1 = sub_100765C9C();
  __chkstk_darwin(v1 - 8);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100765CBC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F7510(v3);
  v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel);
  v9 = sub_1007626BC();
  v25[18] = v9;
  v25[19] = &protocol witness table for UILabel;
  v25[15] = v8;
  v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView);
  v11 = sub_100016F40(0, &qword_1009441F0);
  v25[13] = v11;
  v25[14] = &protocol witness table for UIView;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel);
  }

  v25[10] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel);
  if (v13)
  {
    v14 = &protocol witness table for UILabel;
    v15 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel);
  }

  else
  {
    v15 = 0;
    v9 = 0;
    v14 = 0;
    v25[6] = 0;
    v25[7] = 0;
  }

  v25[5] = v15;
  v25[8] = v9;
  v25[9] = v14;
  v16 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView);
  if (v16)
  {
    v17 = &protocol witness table for UIView;
  }

  else
  {
    v11 = 0;
    v17 = 0;
    v25[1] = 0;
    v25[2] = 0;
  }

  v25[0] = v16;
  v25[3] = v11;
  v25[4] = v17;
  v18 = v13;
  v19 = v16;
  v20 = v8;
  v21 = v10;
  sub_100765CAC();
  sub_1004F9B08(&qword_10095B038, &type metadata accessor for BadgeViewRibbonLayout);
  sub_10076D2AC();
  v23 = v22;
  (*(v5 + 8))(v7, v4);
  return v23;
}

void sub_1004F82A8(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for BadgeView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = sub_10077071C();

  v6 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment;
  if (v5)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  *&v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment] = v7;
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel] setTextAlignment:?];
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel] setTextAlignment:*&v2[v6]];
  [*&v2[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel] setTextAlignment:*&v2[v6]];
  [v2 setNeedsLayout];
  sub_1004F6F80();
}

void sub_1004F84A8()
{
  sub_10076300C();
  if (v0 <= 0x3F)
  {
    sub_100766DEC();
    if (v1 <= 0x3F)
    {
      sub_100766DFC();
      if (v2 <= 0x3F)
      {
        sub_10076256C();
        if (v3 <= 0x3F)
        {
          sub_1001D92E0();
          if (v4 <= 0x3F)
          {
            sub_10076C45C();
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1004F8758()
{
  if (v0[qword_10095AFB0] == 1)
  {
    if (*&v0[qword_10095AFB8])
    {
      return;
    }

    v2 = *&v0[qword_10095AFC0];
    v3 = *&v0[qword_10095AF90];
    if (v2 == -1)
    {
      v6 = v3;
      v7 = [v0 traitCollection];
      v4 = sub_10077070C();
    }

    else
    {
      v4 = v2 == 1;
      v5 = v3;
    }

    v8 = sub_100564640(v3, v4 & 1);

    v1 = v8;
  }

  else
  {
    v1 = 0;
  }

  sub_1004F8848(v1);
}

void sub_1004F8848(void *a1)
{
  v3 = qword_10095AFB8;
  v4 = *&v1[qword_10095AFB8];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v10 = a1;

  v6 = [v1 layer];
  [v6 setMasksToBounds:0];

  v7 = *&v1[v3];
  if (v7)
  {
    v8 = v7;
    v9 = [v1 layer];
    [v9 addSublayer:v8];
  }
}

id sub_1004F8934(void *a1)
{
  v6.receiver = a1;
  v6.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = v6.receiver;
  v2 = objc_msgSendSuper2(&v6, "text");
  if (v2)
  {
    v3 = v2;
    sub_10076FF9C();

    v4 = sub_10076FF6C();
  }

  else
  {

    v4 = 0;
  }

  return v4;
}

void sub_1004F89E8(char *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_10076FF9C();
    v4 = a1;

    v5 = sub_10076FF6C();
  }

  else
  {
    v6 = a1;
    v5 = 0;
  }

  v10.receiver = a1;
  v10.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v10, "setText:", v5);

  sub_100764D2C();
  sub_100764CDC();
  sub_100764CCC();
  v7 = sub_100764D4C();
  if (v7)
  {
    v8 = v7;
    [a1 bounds];
    CGRectGetWidth(v11);
    [a1 lineBreakMode];
    v9 = sub_100764CEC();
  }

  else
  {
    v9 = -1;
  }

  *&a1[qword_10095AFC0] = v9;
}

id sub_1004F8B30(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v1 = objc_msgSendSuper2(&v3, "attributedText");

  return v1;
}

void sub_1004F8B8C(void *a1, uint64_t a2, void *a3)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  v4 = v11.receiver;
  v5 = a3;
  objc_msgSendSuper2(&v11, "setAttributedText:", v5);
  if (v5)
  {
    v6 = sub_100764D2C();
    v7 = v5;
    sub_100764CCC();
    v8 = objc_allocWithZone(v6);
    v9 = sub_100764D3C();
    [v4 bounds];
    CGRectGetWidth(v12);
    [v4 lineBreakMode];
    v10 = sub_100764CEC();
  }

  else
  {
    v10 = -1;
  }

  *&v4[qword_10095AFC0] = v10;
}

void sub_1004F8CAC()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  objc_msgSendSuper2(&v11, "layoutSubviews");
  if (v0[qword_10095AFA8] == 1)
  {
    [v0 frame];
    [v0 sizeThatFits:{v1, v2}];
    v4 = v3;
    [v0 frame];
    v5 = floor(v4 - CGRectGetWidth(v12)) > COERCE_DOUBLE(1);
    v6 = qword_10095AFB0;
    v0[qword_10095AFB0] = v5;
    sub_1004F8758();
    v7 = *&v0[qword_10095AFB8];
    if (v7)
    {
      if (v0[v6] == 1)
      {
        v8 = v7;
        [v0 frame];
        CGRectGetWidth(v13);
        [v0 bounds];
        CGRectGetMaxX(v14);
        [v0 bounds];
        CGRectGetMinY(v15);
        [v0 bounds];
        CGRectGetHeight(v16);
        v9 = *&v0[qword_10095AFC0];
        v10 = v8;
        [v0 bounds];
        if (v9 == -1)
        {
          sub_100770A4C();
        }

        else
        {
          sub_100770A5C();
        }

        [v10 setFrame:?];
      }
    }
  }
}

void sub_1004F8E88(void *a1)
{
  v1 = a1;
  sub_1004F8CAC();
}

void sub_1004F8ED0()
{
  if (*&v0[qword_10095AFB8])
  {
    v1 = *&v0[qword_10095AFC0];
    v2 = *&v0[qword_10095AF90];
    if (v1 == -1)
    {
      v5 = v2;
      v6 = [v0 traitCollection];
      v3 = sub_10077070C();
    }

    else
    {
      v3 = v1 == 1;
      v4 = v2;
    }

    v7 = sub_100564640(v2, v3 & 1);

    sub_1004F8848(v7);
  }
}

void sub_1004F8FA4(void *a1)
{
  v1 = a1;
  sub_1004F8ED0();
}

uint64_t sub_1004F8FEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a7;
  v27 = a8;
  v25 = a5;
  v22[1] = a4;
  v23 = a2;
  v24 = a3;
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v15 - 8);
  v17 = v22 - v16;
  v18 = objc_allocWithZone(v8);
  v19 = qword_10095AF90;
  sub_100016F40(0, &qword_100942F10);
  *&v18[v19] = sub_100770D2C();
  *&v18[qword_10095AF98] = 0x3FD0000000000000;
  *&v18[qword_10095AFA0] = 0x4034000000000000;
  v18[qword_10095AFA8] = 1;
  v18[qword_10095AFB0] = 0;
  *&v18[qword_10095AFB8] = 0;
  *&v18[qword_10095AFC0] = -1;
  sub_100016E2C(a1, v17, &unk_100943250);
  (*(v12 + 16))(v14, a6, v11);
  v20 = sub_1007626AC();
  (*(v12 + 8))(a6, v11);
  sub_10000CFBC(a1, &unk_100943250);
  return v20;
}

void sub_1004F9230()
{
  v1 = *(v0 + qword_10095AFB8);
}

id sub_1004F9270()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeableDynamicTypeLabel(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004F92A8(uint64_t a1)
{
  v2 = *(a1 + qword_10095AFB8);
}

unint64_t sub_1004F9310()
{
  result = qword_10095B028;
  if (!qword_10095B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10095B028);
  }

  return result;
}

id sub_1004F9364(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel];
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
    v7 = v6;
    [v7 setNumberOfLines:1];
    [v7 setLineBreakMode:2];
    [v7 setTextAlignment:1];
    v8 = [v1 tintColor];
    [v7 setTextColor:v8];

    [v1 addSubview:v7];
    sub_1004F6F80();
  }

  return [v1 setNeedsLayout];
}

void sub_1004F947C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_leadingValue;
  v2 = enum case for BadgeLeadingValue.infer(_:);
  v3 = sub_10076300C();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_caption);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView) = 0;
  v5 = (v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_heading);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_isTruncatable) = 1;
  v7 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionCappingType;
  v8 = enum case for BadgeCaptionCappingType.none(_:);
  v9 = sub_100766DEC();
  (*(*(v9 - 8) + 104))(v0 + v7, v8, v9);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_requiresRemainingWidth) = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueViewAlignment;
  v11 = enum case for BadgeValueViewAlignment.baseline(_:);
  v12 = sub_100766DFC();
  (*(*(v12 - 8) + 104))(v0 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_spacing;
  v14 = enum case for BadgeViewSpacing.standard(_:);
  v15 = sub_10076256C();
  (*(*(v15 - 8) + 104))(v0 + v13, v14, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_action;
  v17 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v17 - 8) + 56))(v0 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgeType;
  v19 = enum case for BadgeType.custom(_:);
  v20 = sub_10076C45C();
  (*(*(v20 - 8) + 104))(v0 + v18, v19, v20);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView) = 0;
  v21 = v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgePositionInRibbon;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension9BadgeView_overallBadgeCount) = 0;
  v22 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_tapGestureRecognizer;
  *(v0 + v22) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v23 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel;
  type metadata accessor for FadeableDynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v0 + v23) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel;
  *(v0 + v25) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1004F97D4()
{
  v1 = sub_10000A5D4(&unk_100943200);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_10000A5D4(&qword_100955BD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_action;
  swift_beginAccess();
  sub_100016E2C(v0 + v11, v6, &qword_100952650);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_100952650;
    v13 = v6;
    return sub_10000CFBC(v13, v12);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_100761FDC();
  v14 = sub_10000A5D4(&unk_1009428E0);
  sub_10076F5AC();

  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    (*(v8 + 8))(v10, v7);
    v12 = &unk_100943200;
    v13 = v3;
    return sub_10000CFBC(v13, v12);
  }

  sub_100761FEC();
  v17 = sub_100761FDC();
  sub_100263BF0(v18, 1, v17, v3);

  (*(v8 + 8))(v10, v7);

  return (*(v15 + 8))(v3, v14);
}

uint64_t sub_1004F9B08(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004F9B50()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v0;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "prepareForReuse", v4);
  v7 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = Strong;
  sub_1004FB200(&qword_100942810, type metadata accessor for VideoView);
  v10 = [v9 superview];
  if (v10)
  {
    v11 = v10;
    sub_1000ACA5C();
    v12 = v7;
    v13 = sub_100770EEC();

    if ((v13 & 1) == 0)
    {
      goto LABEL_7;
    }

    v14 = swift_unknownObjectWeakLoadStrong();
    if (!v14)
    {
      goto LABEL_7;
    }

    v9 = v14;
    [v14 removeFromSuperview];
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = v15;
    (*(v3 + 104))(v6, enum case for CornerStyle.continuous(_:), v2);
    sub_1007638AC();
    (*(v3 + 8))(v6, v2);
    [v7 addSubview:v16];
    [v7 sendSubviewToBack:v16];
    [v7 setNeedsLayout];
  }
}

void sub_1004F9DA0(void *a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase] = a1;
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

void sub_1004F9E68(void *a1)
{
  v18 = a1;
  v2 = sub_10075FEEC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_1004FB200(&qword_100942810, type metadata accessor for VideoView);
    v9 = [v8 superview];
    if (!v9)
    {
LABEL_6:

      goto LABEL_7;
    }

    v10 = v9;
    sub_1000ACA5C();
    v11 = v6;
    v12 = sub_100770EEC();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v8 = v13;
        [v13 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14)
  {
    v15 = v14;
    (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
    sub_1007638AC();
    (*(v3 + 8))(v5, v2);
    [v6 addSubview:v15];
    [v6 sendSubviewToBack:v15];
    [v6 setNeedsLayout];
  }

  else
  {
    v16 = v18;
  }
}

char *sub_1004FA0D8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10075FEEC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_1009473D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_itemLayoutContext;
  v19 = sub_10076341C();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView;
  *&v5[v20] = [objc_allocWithZone(type metadata accessor for VideoCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase] = 0;
  v21 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_shadowView;
  sub_10075F99C();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 setClipsToBounds:0];

  v25 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_shadowView;
  v26 = qword_10093F8A0;
  v27 = *&v22[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_shadowView];
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = sub_10076BCFC();
  v29 = sub_10000A61C(v28, qword_10099D480);
  v30 = *(v28 - 8);
  (*(v30 + 16))(v17, v29, v28);
  (*(v30 + 56))(v17, 0, 1, v28);
  sub_10075F97C();

  v31 = *&v22[v25];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v32 = v31;
  sub_10075F98C();

  (*(v12 + 8))(v14, v11);
  v33 = *&v22[v25];
  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 secondarySystemBackgroundColor];
  [v35 setBackgroundColor:v36];

  v37 = [v22 contentView];
  [v37 addSubview:*&v22[v25]];

  v38 = [v22 contentView];
  [v38 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView]];

  return v22;
}

void (*sub_1004FA58C(uint64_t *a1))(void ***a1, char a2)
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
  v5 = sub_10075FEEC();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  v4[3] = v7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension13VideoCardView_videoView;
  v4[4] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  v4[5] = v8;
  *v4 = swift_unknownObjectWeakLoadStrong();
  return sub_1004FA684;
}

void sub_1004FA684(void ***a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_1004FB200(&qword_100942810, type metadata accessor for VideoView);
      v7 = v4;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        v10 = v3[4];
        sub_1000ACA5C();
        v11 = v10;
        v12 = sub_100770EEC();

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
    }

    swift_unknownObjectWeakAssign();
    v28 = swift_unknownObjectWeakLoadStrong();
    if (v28)
    {
      v29 = v28;
      v31 = v3[3];
      v30 = v3[4];
      v32 = v3[1];
      v33 = v3[2];
      v33[13](v31, enum case for CornerStyle.continuous(_:), v32);
      sub_1007638AC();
      (v33[1])(v31, v32);
      [v30 addSubview:v29];
      [v30 sendSubviewToBack:v29];
      [v30 setNeedsLayout];
    }

    v27 = v3[3];

    v4 = *v3;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_1004FB200(&qword_100942810, type metadata accessor for VideoView);
    v15 = [v6 superview];
    if (v15)
    {
      v16 = v15;
      v17 = v3[4];
      sub_1000ACA5C();
      v18 = v17;
      v19 = sub_100770EEC();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_13;
      }

      v6 = v20;
      [v20 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    v24 = v3[3];
    v23 = v3[4];
    v25 = v3[1];
    v26 = v3[2];
    v26[13](v24, enum case for CornerStyle.continuous(_:), v25);
    sub_1007638AC();
    (v26[1])(v24, v25);
    [v23 addSubview:v22];
    [v23 sendSubviewToBack:v22];
    [v23 setNeedsLayout];
  }

  v27 = v3[3];
LABEL_21:

  free(v27);

  free(v3);
}

void sub_1004FA9F0()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame:{v4, v6, v8, v10}];
  [v1 layoutIfNeeded];
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_shadowView];
  v12 = [v0 contentView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  [v11 setFrame:{v14, v16, v18, v20}];
  sub_1004FB200(&qword_100952FE8, type metadata accessor for VideoCardCollectionViewCell);
  sub_1007676CC();
}

uint64_t type metadata accessor for VideoCardCollectionViewCell()
{
  result = qword_10095B068;
  if (!qword_10095B068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004FACC0()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1004FAD8C(uint64_t **a1))()
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
  v2[4] = sub_1004FA58C(v2);
  return sub_10001D41C;
}

double sub_1004FADFC(double a1)
{
  type metadata accessor for VideoCardView();
  swift_getObjectType();

  return sub_1000C31A8(a1);
}

uint64_t sub_1004FAE74()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004FB200(&unk_10095B090, type metadata accessor for VideoCardCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004FAEE8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004FB200(&unk_10095B090, type metadata accessor for VideoCardCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004FAF74(uint64_t *a1))()
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
  sub_1004FB200(&unk_10095B090, type metadata accessor for VideoCardCollectionViewCell);
  *(v3 + 32) = sub_10076483C();
  return sub_100019A4C;
}

uint64_t sub_1004FB058(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000ACA5C();
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_1004FB200(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004FB248()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_videoCardView;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for VideoCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_avatarShowcase) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension27VideoCardCollectionViewCell_shadowView;
  sub_10075F99C();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

id sub_1004FB358(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076D3DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_presenter] = a1;
  v8 = objc_allocWithZone(UIPickerView);

  v9 = [v8 init];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_countryPicker] = v9;
  v10 = [objc_allocWithZone(UIPickerView) init];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_languagePicker] = v10;
  sub_10076313C();
  if (qword_100940F70 != -1)
  {
    swift_once();
  }

  v11 = sub_10000A61C(v4, qword_1009A1C48);
  v12 = *(v5 + 16);
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_submitButton] = sub_10076312C();
  v12(v7, v11, v4);
  *&v2[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_backToUSButton] = sub_10076312C();
  v13 = type metadata accessor for DebugStorefrontPickerViewController();
  v17.receiver = v2;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  sub_1004FC564(&qword_10095B1C0);
  v15 = v14;
  sub_100769B5C();

  return v15;
}

id sub_1004FB5EC()
{
  v1 = v0;
  v29.receiver = v0;
  v29.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v29, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  [v1 pageMarginInsets];
  [v3 setLayoutMargins:?];

  result = [v1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  [v4 setBackgroundColor:v6];

  result = [v1 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  v8 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_countryPicker];
  [result addSubview:v8];

  result = [v1 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = result;
  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_languagePicker];
  [result addSubview:v10];

  result = [v1 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v11 = result;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_submitButton];
  [result addSubview:v12];

  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result;
  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_backToUSButton];
  [result addSubview:v14];

  [v8 setDelegate:v1];
  [v8 setDataSource:v1];
  [v10 setDelegate:v1];
  [v10 setDataSource:v1];
  [v8 selectRow:sub_100769B3C() inComponent:0 animated:0];
  [v10 selectRow:sub_100769B4C() inComponent:0 animated:0];
  v15 = sub_10076FF6C();
  [v12 setTitle:v15 forState:0];

  v16 = [v12 titleLabel];
  if (v16)
  {
    v17 = v16;
    [v16 setTextAlignment:1];
  }

  result = [v1 view];
  if (!result)
  {
    goto LABEL_20;
  }

  v18 = result;
  v19 = [result tintColor];

  [v12 setBackgroundColor:v19];
  v20 = [v5 whiteColor];
  [v12 setTitleColor:v20 forState:0];

  v21 = [v5 whiteColor];
  [v12 setTitleColor:v21 forState:2];

  [v12 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
  [v12 addTarget:v1 action:"setStorefront" forControlEvents:64];
  [v12 _setCornerRadius:10.0];
  sub_1004FBFF8();
  v22 = sub_10076FF6C();
  [v14 setTitle:v22 forState:0];

  v23 = [v14 titleLabel];
  if (v23)
  {
    v24 = v23;
    [v23 setTextAlignment:1];
  }

  result = [v1 view];
  if (result)
  {
    v25 = result;
    v26 = [result tintColor];

    [v14 setBackgroundColor:v26];
    v27 = [v5 whiteColor];
    [v14 setTitleColor:v27 forState:0];

    v28 = [v5 whiteColor];
    [v14 setTitleColor:v28 forState:2];

    [v14 setTitleEdgeInsets:{5.0, 10.0, 5.0, 10.0}];
    [v14 addTarget:v1 action:"setStorefrontToUS" forControlEvents:64];
    return [v14 _setCornerRadius:10.0];
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_1004FBBC0()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  objc_msgSendSuper2(&v40, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_countryPicker];
    sub_100016F40(0, &qword_1009441F0);
    sub_10076422C();
    [v4 sizeThatFits:{v5, v6}];
    v8 = v7;
    sub_10076422C();
    MinX = CGRectGetMinX(v41);
    sub_10076422C();
    v10 = CGRectGetMinY(v42) + 20.0;
    sub_10076422C();
    [v4 setFrame:{MinX, v10, CGRectGetWidth(v43), v8}];
    v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_languagePicker];
    sub_10076422C();
    [v11 sizeThatFits:{v12, v13}];
    v15 = v14;
    sub_10076422C();
    v16 = CGRectGetMinX(v44);
    [v4 frame];
    MaxY = CGRectGetMaxY(v45);
    sub_10076422C();
    [v11 setFrame:{v16, MaxY, CGRectGetWidth(v46), v15}];
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_submitButton];
    sub_10076422C();
    [v18 measurementsWithFitting:v3 in:{v19, v20}];
    v22 = v21;
    sub_10076422C();
    v23 = CGRectGetMinX(v47);
    [v11 frame];
    v24 = CGRectGetMaxY(v48) + 20.0;
    sub_10076422C();
    Width = CGRectGetWidth(v49);
    [v18 titleEdgeInsets];
    v27 = v22 + v26;
    [v18 titleEdgeInsets];
    [v18 setFrame:{v23, v24, Width, v27 + v28}];
    v29 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_backToUSButton];
    sub_10076422C();
    [v29 measurementsWithFitting:v3 in:{v30, v31}];
    v33 = v32;
    sub_10076422C();
    v34 = CGRectGetMinX(v50);
    [v18 frame];
    v35 = CGRectGetMaxY(v51) + 10.0;
    sub_10076422C();
    v36 = CGRectGetWidth(v52);
    [v29 titleEdgeInsets];
    v38 = v33 + v37;
    [v29 titleEdgeInsets];
    [v29 setFrame:{v34, v35, v36, v38 + v39}];
  }
}

void sub_1004FBFF8()
{
  v1 = v0;
  v2 = sub_100769ADC();
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  v5 = v2 & 1;
  *(v4 + 24) = v2 & 1;
  v15 = sub_1004FC5DC;
  v16 = v4;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_10009AEDC;
  v14 = &unk_100898578;
  v6 = _Block_copy(&v11);
  v7 = v1;

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v5;
  v15 = sub_1004FC628;
  v16 = v8;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000513F0;
  v14 = &unk_1008985C8;
  v9 = _Block_copy(&v11);
  v10 = v7;

  [v3 animateWithDuration:v6 animations:v9 completion:0.2];
  _Block_release(v9);
  _Block_release(v6);
}

id sub_1004FC3DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugStorefrontPickerViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004FC564(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DebugStorefrontPickerViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004FC5A4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1004FC5DC()
{
  v1 = 0.4;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(*(v0 + 16) + OBJC_IVAR____TtC20ProductPageExtension35DebugStorefrontPickerViewController_submitButton) setAlpha:v1];
}

uint64_t sub_1004FC610(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004FC648()
{
  sub_100016F40(0, &qword_10094D040);
  if (sub_100770EEC())
  {
    return sub_100769B1C();
  }

  if (sub_100770EEC())
  {
    return sub_100769B2C();
  }

  return 0;
}

uint64_t sub_1004FC6EC()
{
  sub_100016F40(0, &qword_10094D040);
  if (sub_100770EEC())
  {
    return sub_100769B6C();
  }

  if (sub_100770EEC())
  {
    return sub_100769B7C();
  }

  return 0;
}

uint64_t sub_1004FC7A8()
{
  sub_100016F40(0, &qword_10094D040);
  if (sub_100770EEC())
  {
    return sub_100769AFC();
  }

  result = sub_100770EEC();
  if (result)
  {
    return sub_100769B0C();
  }

  return result;
}

id sub_1004FCA5C(uint64_t isEscapingClosureAtFileLocation)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
  result = swift_beginAccess();
  v5 = *&v1[v3];
  if (v5)
  {
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview:v6];

    [v1 setNeedsLayout];
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1004FD078;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1000349FC;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C5148;
    aBlock[3] = &unk_100898650;
    v11 = _Block_copy(aBlock);
    v12 = v1;

    [v8 performWithoutAnimation:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    return [isEscapingClosureAtFileLocation removeFromSuperview];
  }

  return result;
}

void sub_1004FCC4C()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v1 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame:{v6, v8, v10, v12}];
  }
}

char *sub_1004FCD70(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  result = swift_dynamicCastClass();
  if (result)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
    result = swift_beginAccess();
    v6 = *&v1[v5];
    if (v6)
    {
      v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY];
      result = *(*(v6 + OBJC_IVAR____TtC20ProductPageExtension14UberHeaderView_contentView) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
      v8 = *&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
      *&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v7;
      if (v7 != v8)
      {
        return [result setNeedsLayout];
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for UberCollectionViewCell()
{
  result = qword_10095B1F0;
  if (!qword_10095B1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004FCF58()
{
  sub_10000D6A4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_1004FCFF0()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension22UberCollectionViewCell_uberView;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1004FD040()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004FD098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004FD0B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v136 = a5;
  v141 = a4;
  v139 = a3;
  v138 = a2;
  v10 = sub_10076F9AC();
  v143 = *(v10 - 8);
  v144 = v10;
  __chkstk_darwin(v10);
  v142 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100952650);
  __chkstk_darwin(v12 - 8);
  v134 = &v116 - v13;
  v132 = sub_10076256C();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v129 = (&v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v130 = &v116 - v16;
  v145 = sub_10076C45C();
  v148 = *(v145 - 8);
  __chkstk_darwin(v145);
  v137 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v133 = &v116 - v19;
  __chkstk_darwin(v20);
  v128 = &v116 - v21;
  __chkstk_darwin(v22);
  v123 = &v116 - v23;
  v126 = sub_100766DFC();
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v124 = &v116 - v26;
  v27 = sub_10000A5D4(&qword_100949DF0);
  __chkstk_darwin(v27 - 8);
  v117 = &v116 - v28;
  v135 = sub_10076300C();
  v29 = *(v135 - 1);
  __chkstk_darwin(v135);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100766DEC();
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v122 = &v116 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v116 - v36;
  sub_100760C4C();
  v38 = sub_10076F64C();
  v119 = a6;
  v118 = v38;
  sub_10076FC1C();
  v39 = *&v151[0];
  v121 = sub_1004FFCD8();
  v120 = v40;

  v41 = sub_1005004D4(a1, v39);
  v140 = v39;

  v149 = v33;
  v42 = *(v33 + 104);
  v146 = v37;
  v147 = v32;
  v42(v37, enum case for BadgeCaptionCappingType.none(_:), v32);
  sub_10076B3FC();
  v43 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_leadingValue;
  swift_beginAccess();
  v44 = v135;
  (*(v29 + 24))(&v7[v43], v31, v135);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v29 + 8))(v31, v44);
  v45 = &v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueText];
  v46 = v120;
  *v45 = v121;
  *(v45 + 1) = v46;

  sub_1004F53EC();
  v47 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView;
  v48 = *&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueView];
  v49 = v41;
  if (v48)
  {
    [v48 removeFromSuperview];
    v48 = *&v7[v47];
  }

  *&v7[v47] = v41;
  v50 = v49;

  v51 = v147;
  v52 = v125;
  if (v41)
  {
    v53 = [v7 tintColor];
    [v50 setTintColor:v53];

    [v7 addSubview:v50];
  }

  [v7 setNeedsLayout];
  v135 = v50;

  v54 = sub_10076B4DC();
  if (v55)
  {
    *&v151[0] = v54;
    *(&v151[0] + 1) = v55;
    v56 = v117;
    sub_10075DE6C();
    v57 = sub_10075DE9C();
    (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
    sub_10002564C();
    v58 = sub_1007711DC();
    v60 = v59;
    sub_10000CFBC(v56, &qword_100949DF0);

    v54 = v58;
  }

  else
  {
    v60 = 0;
  }

  v61 = v127;
  sub_1004F52E8(v54, v60);
  v62 = [v7 traitCollection];
  v63 = sub_10077071C();

  if (v63)
  {
    v64 = 4;
  }

  else
  {
    v64 = 1;
  }

  v65 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment;
  *&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_alignment] = v64;
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueLabel] setTextAlignment:?];
  v66 = *&v7[v65];
  v121 = *&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionLabel];
  [v121 setTextAlignment:v66];
  [*&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_headingLabel] setTextAlignment:*&v7[v65]];
  [v7 setNeedsLayout];
  v67 = v149;
  v68 = v122;
  (*(v149 + 16))(v122, v146, v51);
  v69 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionCappingType;
  swift_beginAccess();
  (*(v67 + 24))(&v7[v69], v68, v51);
  swift_endAccess();
  [v7 setNeedsLayout];
  v70 = *(v67 + 8);
  v149 = v67 + 8;
  v127 = v70;
  (v70)(v68, v51);
  v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_isTruncatable] = sub_10076B40C() & 1;
  [v7 setNeedsLayout];
  v71 = v123;
  sub_10076B48C();
  v72 = v145;
  v73 = *(v148 + 88);
  v74 = v73(v71, v145);
  if (v74 == enum case for BadgeType.contentRating(_:))
  {
    v75 = v126;
    (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.center(_:), v126);
    v76 = enum case for BadgeType.chartPosition(_:);
  }

  else
  {
    v76 = enum case for BadgeType.chartPosition(_:);
    v75 = v126;
    if (v74 == enum case for BadgeType.chartPosition(_:))
    {
      v76 = v74;
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.topOfValueLabel(_:), v126);
    }

    else if (v74 == enum case for BadgeType.artwork(_:))
    {
      (*(v52 + 104))(v61, enum case for BadgeValueViewAlignment.centerOfView(_:), v126);
    }

    else
    {
      v77 = *(v52 + 104);
      if (v74 == enum case for BadgeType.paragraph(_:))
      {
        v77(v61, enum case for BadgeValueViewAlignment.topOfView(_:), v126);
      }

      else
      {
        v77(v61, enum case for BadgeValueViewAlignment.baseline(_:), v126);
        (*(v148 + 8))(v71, v72);
      }
    }
  }

  v78 = v124;
  (*(v52 + 32))(v124, v61, v75);
  v79 = v75;
  v80 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_valueViewAlignment;
  swift_beginAccess();
  (*(v52 + 24))(&v7[v80], v78, v79);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v52 + 8))(v78, v79);
  v81 = v128;
  sub_10076B48C();
  v82 = v73;
  if (v73(v81, v72) == v76)
  {
    v83 = v129;
    *v129 = 0;
    v84 = v131;
    v85 = v132;
    (*(v131 + 104))(v83, enum case for BadgeViewSpacing.spacing(_:), v132);
  }

  else
  {
    v84 = v131;
    v83 = v129;
    v85 = v132;
    (*(v131 + 104))(v129, enum case for BadgeViewSpacing.standard(_:), v132);
    (*(v148 + 8))(v81, v72);
  }

  v86 = v134;
  v87 = v130;
  (*(v84 + 32))(v130, v83, v85);
  v88 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_spacing;
  swift_beginAccess();
  (*(v84 + 24))(&v7[v88], v87, v85);
  swift_endAccess();
  [v7 setNeedsLayout];
  (*(v84 + 8))(v87, v85);
  v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_requiresRemainingWidth] = sub_1005017EC() & 1;
  if (v136)
  {
    *&v151[0] = v136;
    sub_10076B90C();
    sub_100501A48(&qword_100956710, &type metadata accessor for Action);

    v72 = v145;
    sub_10076F56C();

    v89 = 0;
  }

  else
  {
    v89 = 1;
  }

  v90 = sub_10000A5D4(&qword_100955BD0);
  (*(*(v90 - 8) + 56))(v86, v89, 1, v90);
  sub_1004F5548(v86);
  v91 = v133;
  sub_10076B48C();
  v92 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgeType;
  swift_beginAccess();
  v93 = v148;
  (*(v148 + 40))(&v7[v92], v91, v72);
  swift_endAccess();
  v94 = &v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_badgePositionInRibbon];
  *v94 = v138;
  v94[8] = v139 & 1;
  v95 = v72;
  v96 = v141;
  *&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_overallBadgeCount] = v141;
  v97 = v137;
  sub_10076B48C();
  v98 = v97;
  v99 = v82(v97, v95);
  v100 = v147;
  if (v99 == enum case for BadgeType.rating(_:))
  {
    v101 = sub_100500154();
    v102 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView;
    v103 = *&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView];
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

    v109 = &v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_caption];
    *v109 = 0;
    *(v109 + 1) = 0;

    v110 = v121;
    [v121 setText:0];

    v111 = sub_10077002C();

    [v110 setHidden:v111 & 1];
    [v7 setNeedsLayout];
  }

  else
  {
    (*(v93 + 8))(v98, v95);
    v105 = OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView;
    v106 = *&v7[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_captionView];
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

    if (v96 < 4 || (v112 = sub_10076B3DC(), !v113))
    {
      v112 = sub_10076B4BC();
    }

    sub_1004F52D4(v112, v113);
  }

  sub_1004F7370();
  [v7 setNeedsLayout];
  *&v151[0] = 0x2E6567646162;
  *(&v151[0] + 1) = 0xE600000000000000;
  v152._countAndFlagsBits = sub_10076B44C();
  sub_1007700CC(v152);

  memset(v151, 0, sizeof(v151));
  memset(v150, 0, sizeof(v150));
  v114 = v142;
  sub_10076F91C();

  sub_10000CFBC(v150, &unk_1009434C0);
  sub_10000CFBC(v151, &unk_1009434C0);
  sub_100770B9C();

  (*(v143 + 8))(v114, v144);
  return (v127)(v146, v100);
}

void sub_1004FE1EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000A5D4(&qword_100943190);
  __chkstk_darwin(v8 - 8);
  v10 = &v28[-v9 - 8];
  sub_10003267C(a3, &v28[-v9 - 8]);
  v11 = sub_10076BD9C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000CFBC(v10, &qword_100943190);
  }

  else
  {
    v16 = sub_10076BD5C();
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
            v25 = sub_10075FC6C();
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
    sub_10075FC5C(v29, v14);
  }
}

double sub_1004FE3F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7, uint64_t a8, uint64_t a9)
{
  v124 = a9;
  v139 = a5;
  v127 = a4;
  v135 = a3;
  v123 = sub_10076997C();
  v122 = *(v123 - 8);
  __chkstk_darwin(v123);
  v121 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10076256C();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v131 = &v121 - v17;
  v144 = sub_100765C9C();
  v136 = *(v144 - 8);
  __chkstk_darwin(v144);
  v19 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&qword_100949DF0);
  __chkstk_darwin(v20 - 8);
  v126 = &v121 - v21;
  v138 = sub_100766DEC();
  v147 = *(v138 - 8);
  __chkstk_darwin(v138);
  v130 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v146 = &v121 - v24;
  v140 = sub_10076D3DC();
  v125 = *(v140 - 8);
  __chkstk_darwin(v140);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10076048C();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_10076C45C();
  v143 = *(v148 - 8);
  __chkstk_darwin(v148);
  v129 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v128 = &v121 - v33;
  __chkstk_darwin(v34);
  v36 = &v121 - v35;
  v145 = a1;
  sub_1004FFCD8();
  v137 = a2;
  v132 = v15;
  if (v37)
  {
    if (qword_100940B98 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v140, qword_1009A10C0);
    v38 = sub_10076C04C();
    v152 = v38;
    v153 = sub_100501A48(&qword_100943230, &type metadata accessor for Feature);
    v39 = sub_10000DB7C(v151);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.measurement_with_labelplaceholder(_:), v38);
    sub_10076C90C();
    sub_10000CD74(v151);
    sub_10076991C();
  }

  sub_10076B48C();
  v142 = *(v143 + 88);
  v141 = v143 + 88;
  v40 = v142(v36, v148);
  v41 = enum case for BadgeType.rating(_:);
  if (v40 != enum case for BadgeType.rating(_:))
  {
    if (v40 == enum case for BadgeType.contentRating(_:))
    {
      v50 = sub_10076B4CC();
      v51 = sub_10075E2FC();
      v48 = v136;
      v49 = v138;
      if (!*(v50 + 16))
      {

        v42 = v139;
        goto LABEL_38;
      }

      v53 = sub_100561E0C(v51, v52);
      v55 = v54;

      v42 = v139;
      if (v55)
      {
        sub_10000CD08(*(v50 + 56) + 32 * v53, v151);

        if (swift_dynamicCast())
        {
          v56 = sub_1005A5DB8(v149, v150, 0);

          [v56 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v49 = v138;
    if (v40 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v48) = enum case for BadgeType.rating(_:);
      v154._countAndFlagsBits = 0xD000000000000020;
      v154._object = 0x80000001007D52F0;
      v156._countAndFlagsBits = 0;
      v156._object = 0xE000000000000000;
      sub_1007622EC(v154, v156);
      if (qword_100940BA0 != -1)
      {
        goto LABEL_73;
      }

      goto LABEL_14;
    }

    v48 = v136;
    if (v40 == enum case for BadgeType.editorsChoice(_:))
    {
      v69 = type metadata accessor for EditorsChoiceView();
      v155._object = 0x80000001007CEB90;
      v157._countAndFlagsBits = 0xD000000000000050;
      v157._object = 0x80000001007CEBB0;
      v155._countAndFlagsBits = 0xD000000000000017;
      sub_1007622EC(v155, v157);
      v70 = sub_1007700AC();

      v42 = v139;
      sub_100043A10(v70 < 19, 1, 0, v139, 0, 2, v69);
      goto LABEL_38;
    }

    v71 = v139;
    v72 = v148;
    if (v40 == enum case for BadgeType.artwork(_:))
    {
      if (qword_100940728 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v144, qword_1009A04D8);
      sub_100765C3C();
      v42 = v71;
      v73 = [v71 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_100770A8C();
      goto LABEL_39;
    }

    if (v40 == enum case for BadgeType.paragraph(_:))
    {
      sub_1004FFE94();
      if (qword_100940B90 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v140, qword_1009A10A8);
      v76 = sub_10076C04C();
      v152 = v76;
      v153 = sub_100501A48(&qword_100943230, &type metadata accessor for Feature);
      v77 = sub_10000DB7C(v151);
      (*(*(v76 - 8) + 104))(v77, enum case for Feature.measurement_with_labelplaceholder(_:), v76);
      sub_10076C90C();
      sub_10000CD74(v151);
      sub_10076991C();
      v79 = v78;

      v42 = v71;
      v80 = [v71 traitCollection];
      sub_1000182D0(v79, a6);
    }

    else
    {
      if (v40 != enum case for BadgeType.friendsPlaying(_:))
      {
        v42 = v139;
        (*(v143 + 8))(v36, v148);
        goto LABEL_39;
      }

      v81 = sub_10076B4CC();
      v82 = sub_10075E51C();
      if (!*(v81 + 16))
      {
        v42 = v71;

        goto LABEL_39;
      }

      v84 = sub_100561E0C(v82, v83);
      v86 = v85;

      v42 = v71;
      if ((v86 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10000CD08(*(v81 + 56) + 32 * v84, v151);

      sub_100016F40(0, &qword_1009441F0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v80 = v149;
      [v149 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v42 = v139;
  v43 = [v139 traitCollection];
  v44 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v28 + 104))(v30, enum case for SystemImage.star(_:), v27);
  v45 = v41;
  v46 = [v44 configurationWithTraitCollection:v43];
  v47 = sub_10076046C();

  v41 = v45;
  (*(v28 + 8))(v30, v27);
  [v47 contentInsets];
  [v47 contentInsets];
  [v47 size];
  [v47 contentInsets];
  [v47 contentInsets];
  [v47 size];

  v48 = v136;
  v49 = v138;
LABEL_38:
  while (1)
  {
    v72 = v148;
LABEL_39:
    v87 = v128;
    sub_10076B48C();
    if (v142(v87, v72) == v41)
    {
      v88 = sub_100500154();
      [v88 frame];
      CGRectGetWidth(v158);
    }

    else
    {
      (*(v143 + 8))(v87, v72);
      if (v127 >= 4 && (sub_10076B3DC(), v89) || (sub_10076B4BC(), v90))
      {
        if (qword_100940BB0 != -1)
        {
          swift_once();
        }

        sub_10000A61C(v140, qword_1009A1108);
        v91 = sub_10076C04C();
        v152 = v91;
        v153 = sub_100501A48(&qword_100943230, &type metadata accessor for Feature);
        v92 = sub_10000DB7C(v151);
        (*(*(v91 - 8) + 104))(v92, enum case for Feature.measurement_with_labelplaceholder(_:), v91);
        sub_10076C90C();
        sub_10000CD74(v151);
        sub_10076991C();

        v72 = v148;
      }
    }

    (*(v147 + 104))(v146, enum case for BadgeCaptionCappingType.none(_:), v49);
    v93 = sub_10076B4DC();
    if (v94)
    {
      v95 = v49;
      v151[0] = v93;
      v151[1] = v94;
      v96 = v126;
      sub_10075DE6C();
      v97 = sub_10075DE9C();
      (*(*(v97 - 8) + 56))(v96, 0, 1, v97);
      sub_10002564C();
      sub_1007711DC();
      sub_10000CFBC(v96, &qword_100949DF0);

      if (qword_100940BB8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v140, qword_1009A1120);
      v98 = sub_10076C04C();
      v152 = v98;
      v153 = sub_100501A48(&qword_100943230, &type metadata accessor for Feature);
      v99 = sub_10000DB7C(v151);
      (*(*(v98 - 8) + 104))(v99, enum case for Feature.measurement_with_labelplaceholder(_:), v98);
      sub_10076C90C();
      sub_10000CD74(v151);
      sub_10076991C();

      v72 = v148;
      v49 = v95;
    }

    v100 = v134;
    if (qword_100940728 != -1)
    {
      swift_once();
    }

    v101 = v144;
    v102 = sub_10000A61C(v144, qword_1009A04D8);
    (*(v48 + 16))(v19, v102, v101);
    v26 = v49;
    (*(v147 + 16))(v130, v146, v49);
    sub_100765C5C();
    v103 = v129;
    sub_10076B48C();
    if (v142(v103, v72) == enum case for BadgeType.chartPosition(_:))
    {
      v104 = v132;
      *v132 = 0;
      v105 = v133;
      (*(v133 + 104))(v104, enum case for BadgeViewSpacing.spacing(_:), v100);
    }

    else
    {
      v105 = v133;
      v104 = v132;
      (*(v133 + 104))(v132, enum case for BadgeViewSpacing.standard(_:), v100);
      (*(v143 + 8))(v103, v72);
    }

    v106 = v137;
    (*(v105 + 32))(v131, v104, v100);
    sub_100765C1C();
    v49 = v26;
    if (v135)
    {
      break;
    }

    v107 = [v42 traitCollection];
    v108 = sub_10077070C();
    v109 = v108;
    if (!v106 && (v108 & 1) == 0)
    {
      goto LABEL_61;
    }

    if (__OFSUB__(v127, 1))
    {
      __break(1u);
      goto LABEL_72;
    }

    if (((v127 - 1 == v106) & v108) == 1)
    {
LABEL_61:
      v110 = sub_100765BEC();
      *(v111 + 8) = 0;
      v110(v151, 0);
      v112 = sub_100765C0C();
      *(v113 + 8) = 0;
      v112(v151, 0);
      v49 = v138;
    }

    if (!v106 && ((v109 ^ 1) & 1) == 0)
    {
      goto LABEL_66;
    }

    if (!__OFSUB__(v127, 1))
    {
      if (!((v127 - 1 != v106) | v109 & 1))
      {
LABEL_66:
        v114 = sub_100765BEC();
        *(v115 + 24) = 0;
        v114(v151, 0);
        v116 = sub_100765C0C();
        *(v117 + 24) = 0;
        v116(v151, 0);
      }

      break;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
LABEL_14:
    v57 = v140;
    v58 = sub_10000A61C(v140, qword_1009A10D8);
    (*(v125 + 16))(v26, v58, v57);
    v59.super.isa = [v139 traitCollection];
    isa = v59.super.isa;
    v61 = sub_10076D3BC(v59).super.isa;
    v62 = [(objc_class *)v61 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v62)
    {
      v63 = [objc_opt_self() fontWithDescriptor:v62 size:0.0];

      v41 = v48;
      if (v63)
      {
        v64 = sub_10076C04C();
        v152 = v64;
        v153 = sub_100501A48(&qword_100943230, &type metadata accessor for Feature);
        v65 = sub_10000DB7C(v151);
        (*(*(v64 - 8) + 104))(v65, enum case for Feature.measurement_with_labelplaceholder(_:), v64);
        v66 = v63;
        sub_10076C90C();
        sub_10000CD74(v151);
        v67 = v121;
        sub_10076996C();
        sub_100501A48(&unk_1009511B0, &type metadata accessor for LabelPlaceholderCompatibility);
        v68 = v123;
        sub_10076D2AC();

        (*(v122 + 8))(v67, v68);
        goto LABEL_26;
      }
    }

    else
    {

      v41 = v48;
    }

    v74 = sub_10076C04C();
    v152 = v74;
    v153 = sub_100501A48(&qword_100943230, &type metadata accessor for Feature);
    v75 = sub_10000DB7C(v151);
    (*(*(v74 - 8) + 104))(v75, enum case for Feature.measurement_with_labelplaceholder(_:), v74);
    sub_10076C90C();
    sub_10000CD74(v151);
    sub_10076991C();

LABEL_26:
    (*(v125 + 8))(v26, v140);
    v42 = v139;
    v48 = v136;
  }

  sub_100765BBC();
  v119 = v118;
  (*(v48 + 8))(v19, v144);
  (*(v147 + 8))(v146, v49);
  return v119;
}

uint64_t sub_1004FFCD8()
{
  v0 = sub_10076C45C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10076B48C();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == enum case for BadgeType.contentRating(_:))
  {
    v5 = sub_10076B4CC();
    v6 = sub_10075E30C();
    goto LABEL_5;
  }

  if (v4 == enum case for BadgeType.chartPosition(_:))
  {
    v5 = sub_10076B4CC();
    v6 = sub_10076926C();
LABEL_5:
    if (*(v5 + 16))
    {
      v8 = sub_100561E0C(v6, v7);
      v10 = v9;

      if (v10)
      {
        sub_10000CD08(*(v5 + 56) + 32 * v8, v12);

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

uint64_t sub_1004FFE94()
{
  v0 = sub_10076C45C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v17 - v5;
  sub_10076B48C();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_100501A48(&unk_100952C60, &type metadata accessor for BadgeType);
  sub_10077018C();
  sub_10077018C();
  if (v17[0] == v18 && v17[1] == v19)
  {
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v6, v0);
  }

  else
  {
    v8 = sub_10077167C();
    v9 = *(v1 + 8);
    v9(v3, v0);
    v9(v6, v0);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = sub_10076B4CC();
  v11 = sub_10076927C();
  if (!*(v10 + 16))
  {

    goto LABEL_10;
  }

  v13 = sub_100561E0C(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  sub_10000CD08(*(v10 + 56) + 32 * v13, v17);

  if (swift_dynamicCast())
  {
    return v18;
  }

  return 0;
}

char *sub_100500154()
{
  v0 = type metadata accessor for RatingView();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor] = 0;
  v2 = &v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding];
  *v2 = 0;
  v2[8] = 1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_maxNumberOfStars] = 5;
  if (qword_10093F570 != -1)
  {
    swift_once();
  }

  v3 = qword_100944D30;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = qword_100944D30;
  v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starSize] = 1;
  *v2 = 0;
  v2[8] = 1;
  v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_useCase] = 1;
  v4 = type metadata accessor for StarRow();
  v5 = objc_allocWithZone(v4);
  v6 = v3;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView] = sub_10006446C(5, 1, 1, 0, 1, 0, 1);
  v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_fillEmptyStars] = 0;
  v7 = objc_allocWithZone(v4);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView] = sub_10006446C(5, 0, 1, 0, 1, 0, 1);
  v26.receiver = v1;
  v26.super_class = v0;
  v8 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1000620A4();
  v9 = OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView;
  v10 = *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_filledStarRowView];
  v11 = *&v10[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating];
  *&v10[OBJC_IVAR____TtC20ProductPageExtensionP33_06779790DFC391F4528ECB93682635147StarRow_currentRating] = *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating];
  v12 = v10;
  sub_100062B94(v11);

  if (*&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarRowView])
  {
    [v8 addSubview:?];
  }

  [v8 addSubview:*&v8[v9]];

  v13 = sub_10076B4CC();
  v14 = sub_100765BAC();
  if (!*(v13 + 16))
  {

    goto LABEL_10;
  }

  v16 = sub_100561E0C(v14, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_10:

    goto LABEL_11;
  }

  sub_10000CD08(*(v13 + 56) + 32 * v16, v25);

  sub_100016F40(0, &qword_1009492D0);
  if (swift_dynamicCast())
  {
    v19 = v24;
    [v24 floatValue];
    sub_100062020(v20);
    goto LABEL_14;
  }

LABEL_11:
  sub_100062020(0.0);
  v21 = [objc_opt_self() systemMidGrayColor];
  v19 = *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor];
  *&v8[OBJC_IVAR____TtC20ProductPageExtension10RatingView_starColor] = v21;
  sub_100016F40(0, &qword_100942F10);
  v22 = v21;
  if ((sub_100770EEC() & 1) == 0)
  {
    sub_1000620A4();
  }

LABEL_14:
  return v8;
}

char *sub_1005004D4(uint64_t a1, uint64_t a2)
{
  v133 = a2;
  v2 = sub_10076A32C();
  __chkstk_darwin(v2 - 8);
  v132 = &v132 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076771C();
  v142 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100943250);
  __chkstk_darwin(v7 - 8);
  v9 = &v132 - v8;
  v10 = sub_10076BF6C();
  __chkstk_darwin(v10 - 8);
  v138 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076BEDC();
  v136 = *(v12 - 8);
  v137 = v12;
  __chkstk_darwin(v12);
  v135 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_100959C90);
  __chkstk_darwin(v14 - 8);
  v134 = &v132 - v15;
  v139 = sub_10076D39C();
  v141 = *(v139 - 8);
  __chkstk_darwin(v139);
  v140 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100765C9C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076C45C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B48C();
  v25 = (*(v22 + 88))(v24, v21);
  if (v25 == enum case for BadgeType.rating(_:))
  {
    v26 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v27 = sub_10076B4CC();
    v28 = sub_100769BCC();
    if (*(v27 + 16))
    {
      v30 = sub_100561E0C(v28, v29);
      v32 = v31;

      if (v32)
      {
        sub_10000CD08(*(v27 + 56) + 32 * v30, v146);

        if (swift_dynamicCast())
        {
          v33 = *&v26[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel];
          v34 = sub_10076FF6C();
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
        v35 = *&v26[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel];
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
    v36 = sub_10076B4CC();
    v37 = sub_10075E2FC();
    if (*(v36 + 16))
    {
      v39 = sub_100561E0C(v37, v38);
      v41 = v40;

      if (v41)
      {
        sub_10000CD08(*(v36 + 56) + 32 * v39, v146);

        if (swift_dynamicCast())
        {
          v42 = sub_1005A5DB8(v144, v145, 0);

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
    if (qword_100940BA0 != -1)
    {
      swift_once();
    }

    v44 = sub_10076D3DC();
    v45 = sub_10000A61C(v44, qword_1009A10D8);
    v46 = *(v44 - 8);
    (*(v46 + 16))(v9, v45, v44);
    (*(v46 + 56))(v9, 0, 1, v44);
    v142[13](v6, enum case for DirectionalTextAlignment.none(_:), v4);
    v47 = objc_allocWithZone(sub_1007626BC());
    v48 = sub_1007626AC();
    v49.super.isa = [v143 traitCollection];
    isa = v49.super.isa;
    v51 = sub_10076D3BC(v49).super.isa;
    v52 = [(objc_class *)v51 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v52)
    {
      v53 = [objc_opt_self() fontWithDescriptor:v52 size:0.0];

      if (!v53)
      {
LABEL_18:
        [v48 setTextAlignment:1];
        v148._countAndFlagsBits = 0xD000000000000020;
        v148._object = 0x80000001007D52F0;
        v150._countAndFlagsBits = 0;
        v150._object = 0xE000000000000000;
        sub_1007622EC(v148, v150);
        v54 = sub_10076FF6C();

        [v48 setText:v54];

        v55 = objc_opt_self();
        v43 = v48;
        v56 = [v55 systemGrayColor];
        [v43 setTextColor:v56];

        return v43;
      }

      [v48 setFont:v53];
      isa = v53;
    }

    goto LABEL_18;
  }

  if (v25 == enum case for BadgeType.editorsChoice(_:))
  {
    v149._object = 0x80000001007CEB90;
    v151._countAndFlagsBits = 0xD000000000000050;
    v151._object = 0x80000001007CEBB0;
    v149._countAndFlagsBits = 0xD000000000000017;
    sub_1007622EC(v149, v151);
    v57 = sub_1007700AC();

    v58 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
    return sub_100040B8C(v57 < 19, 1, 0, 0, 2u);
  }

  if (v25 == enum case for BadgeType.artwork(_:))
  {
    v59 = sub_10076B4AC();
    if (!v59)
    {
      return 0;
    }

    v60 = v59;
    v61 = v143;
    sub_1004F7510(v20);
    sub_100765C3C();
    (*(v18 + 8))(v20, v17);
    v62 = [v61 traitCollection];
    _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

    sub_100770A8C();
    v64 = v63;
    v66 = v65;
    sub_10076BEFC();
    v67 = v140;
    sub_10076D3AC();
    LOBYTE(v62) = sub_10076D2FC();
    v68 = v141 + 8;
    v69 = *(v141 + 8);
    v70 = v139;
    v69(v67, v139);
    v141 = v68;
    if (v62)
    {
      sub_10076BEFC();
      sub_10076D3AC();
      sub_10076D30C();
      v64 = v71;
      v66 = v72;
      v69(v67, v70);
    }

    v73 = v134;
    v43 = [objc_allocWithZone(sub_10075FD2C()) initWithFrame:{0.0, 0.0, v64, v66}];
    sub_10076BD3C();
    v74 = sub_10076BD2C();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_10000CFBC(v73, &qword_100959C90);
      v76 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1];
    }

    else
    {
      v101 = sub_10076BD1C();
      (*(v75 + 8))(v73, v74);
      v76 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1 scale:v101];
    }

    v142 = v76;
    sub_10075FC3C();
    v102 = v135;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v136 + 8))(v102, v137);
    sub_10076BFCC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v43 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10);
      sub_100770D5C();
    }

    sub_10075FB8C();
    v103 = objc_opt_self();
    v104 = [v103 clearColor];
    sub_10075FB8C();
    if (sub_10076B3EC())
    {
      v105 = [v103 secondaryLabelColor];
      sub_10075FBBC();
      [v43 setAccessibilityIgnoresInvertColors:0];
    }

    if (sub_10076BDFC())
    {
      v106 = sub_1005A6008(v60, 0);
      v107 = v106;
      sub_10075FCAC();
      if (v106)
      {
        [v107 size];
        v108 = v140;
        sub_10076D3AC();
        v109 = v69;
        v110 = sub_10076D2EC();
        v109(v108, v70);
        [v107 size];
        sub_10076D3AC();
        if (v110)
        {
          sub_10076D31C();
          v112 = v111;
          v114 = v113;
          v109(v108, v70);
          v115 = sub_10075FC6C();
          *(v116 + 16) = v112;
          *(v116 + 24) = v114;
          v115(v146, 0);

          v61 = v143;
LABEL_71:
          v127 = *&v61[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView];
          *&v61[OBJC_IVAR____TtC20ProductPageExtension9BadgeView_artworkView] = v43;
          v128 = v43;

          return v43;
        }

        sub_10076D30C();
        v121 = v123;
        v122 = v124;
        v109(v108, v70);
        v61 = v143;
      }

      else
      {
        v121 = 0;
        v122 = 0;
      }

      v125 = sub_10075FC6C();
      *(v126 + 16) = v121;
      *(v126 + 24) = v122;
      v125(v146, 0);
    }

    else if (v133)
    {
      v147 = 0;
      memset(v146, 0, sizeof(v146));
      v117 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v118 = swift_allocObject();
      v119 = v142;
      *(v118 + 16) = v142;
      *(v118 + 24) = v117;
      v120 = v119;

      sub_100760B7C();

      sub_10000CFBC(v146, &qword_100943310);
LABEL_70:

      goto LABEL_71;
    }

    goto LABEL_70;
  }

  if (v25 == enum case for BadgeType.paragraph(_:))
  {
    v43 = [objc_allocWithZone(type metadata accessor for BadgeParagraphView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_1004FFE94();
    if (!v77)
    {
      return v43;
    }

    v78 = *&v43[OBJC_IVAR____TtC20ProductPageExtension18BadgeParagraphView_paragraphLabel];
    v79 = sub_10076FF6C();
    [v78 setText:v79];

    [v43 setNeedsLayout];
    goto LABEL_23;
  }

  if (v25 != enum case for BadgeType.friendsPlaying(_:))
  {
    (*(v22 + 8))(v24, v21);
    return 0;
  }

  v80 = sub_10076B4CC();
  v81 = sub_10076ABCC();
  if (!*(v80 + 16))
  {
    goto LABEL_50;
  }

  v83 = sub_100561E0C(v81, v82);
  v85 = v84;

  if ((v85 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_10000CD08(*(v80 + 56) + 32 * v83, v146);

  sub_100016F40(0, &qword_1009492D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v86 = v144;
  v87 = [v144 integerValue];

  v88 = sub_10076B4CC();
  v89 = sub_1007631FC();
  if (!*(v88 + 16))
  {
    goto LABEL_50;
  }

  v91 = sub_100561E0C(v89, v90);
  v93 = v92;

  if ((v93 & 1) == 0)
  {
    goto LABEL_51;
  }

  sub_10000CD08(*(v88 + 56) + 32 * v91, v146);

  sub_10000A5D4(&qword_10095B200);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v94 = v144;
  if (!v133)
  {
    goto LABEL_51;
  }

  v95 = (v144 >> 62);
  if (v144 >> 62)
  {
LABEL_88:
    v96 = sub_10077158C();
  }

  else
  {
    v96 = *((v144 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v96 >= v87)
  {
    v97 = v87;
  }

  else
  {
    v97 = v96;
  }

  v98 = v132;
  sub_10076A31C();
  v99 = objc_allocWithZone(type metadata accessor for AvatarShowcaseView());
  v43 = sub_10005615C(v97, v98);
  *&v146[0] = _swiftEmptyArrayStorage;
  if (v95)
  {
    v87 = sub_10077158C();
  }

  else
  {
    v87 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v129 = 0;
  v95 = _swiftEmptyArrayStorage;
  while (v87 != v129)
  {
    if ((v94 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      v130 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v129 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_87;
      }

      v130 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }
    }

    v131 = sub_10076271C();

    ++v129;
    if (v131)
    {
      sub_10077019C();
      if (*((*&v146[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v146[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v95 = *&v146[0];
      v129 = v130;
    }
  }

  sub_1000564CC(v95, v133);

  return v43;
}

uint64_t sub_1005017EC()
{
  v0 = sub_10076C45C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_10076B48C();
  (*(v1 + 104))(v3, enum case for BadgeType.paragraph(_:), v0);
  sub_100501A48(&unk_100952C60, &type metadata accessor for BadgeType);
  sub_10077018C();
  sub_10077018C();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_10077167C();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

uint64_t sub_1005019C8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100501A00()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100501A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100501A90@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for ComponentSeparator.Position.trailing(_:), v3);
  sub_100763FAC();
  v6 = sub_100763FDC();
  return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
}

void sub_100501BA4(void *a1)
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
    [v16 setFrame:{sub_100501C90(v12, v14, v15)}];
  }

  else
  {
    __break(1u);
  }
}

double sub_100501C90(double a1, double a2, double a3)
{
  v5 = *(v3 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
  if (v6)
  {
    v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_alternateCell);
  }

  else
  {
    v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell + 8);
    v8 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension27ArticleHeaderViewController_cell);
    v6 = 0;
  }

  v9 = v6;
  sub_1003175A4(a3, v8, v7);

  type metadata accessor for ListTodayCardCollectionViewCell();
  swift_dynamicCastClass();
  return 0.0;
}

uint64_t sub_100501DB4()
{

  return swift_deallocClassInstance();
}

id sub_100501E78()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    [v1 frame];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v16.origin.x = v4;
    v16.origin.y = v6;
    v16.size.width = v8;
    v16.size.height = v10;
    MaxX = CGRectGetMaxX(v16);
  }

  else
  {
    MaxX = 0.0;
  }

  [v0 bounds];
  v12 = MaxX + 10.0;
  v13 = CGRectGetMaxX(v17) - MaxX + -20.0;
  [v0 bounds];
  return [*&v0[OBJC_IVAR____TtC20ProductPageExtension15DebugSliderCell_slider] setFrame:{v12, 0.0, v13, CGRectGetHeight(v18)}];
}

uint64_t sub_100502034()
{
  sub_10000A5D4(&unk_100945BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100785C70;
  v1 = sub_10076E4CC();
  *(v0 + 32) = v1;
  *(v0 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  *(v0 + 48) = sub_10076E88C();
  *(v0 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v0 + 64) = sub_10076E3EC();
  *(v0 + 72) = &protocol witness table for UITraitLayoutDirection;
  *(v0 + 80) = v1;
  *(v0 + 88) = &protocol witness table for UITraitUserInterfaceStyle;
  result = sub_10076E59C();
  *(v0 + 96) = result;
  *(v0 + 104) = &protocol witness table for UITraitHorizontalSizeClass;
  qword_10095B2F0 = v0;
  return result;
}

uint64_t sub_1005020E8()
{
  v0 = sub_10076D39C();
  sub_10000DB18(v0, qword_1009A05C0);
  sub_10000A61C(v0, qword_1009A05C0);
  return sub_10076D3AC();
}

__n128 sub_10050213C()
{
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  xmmword_1009A05E0 = *&UIEdgeInsetsZero.top;
  *&qword_1009A05F0 = v1;
  return result;
}

uint64_t sub_100502158()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10095B2F8);
  sub_10000A61C(v0, qword_10095B2F8);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10099DDA0);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005022BC(uint64_t a1)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007639BC();
  v36 = a1;
  sub_1007639FC();
  if (qword_100940AF0 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v7 = sub_10000A61C(v6, qword_1009A0EE0);
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v35 = v8 + 16;
  v9(v5, v7, v6);
  v10 = v3[13];
  v33 = enum case for FontSource.useCase(_:);
  v10(v5);
  v11 = sub_10076D9AC();
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v38);
  v13 = v3[2];
  v37 = v3 + 2;
  v34 = v13;
  v13(v12, v5, v2);
  sub_10076D9BC();
  v14 = v3[1];
  v14(v5, v2);
  sub_100763ABC();
  if (qword_100940AE8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000A61C(v6, qword_1009A0EC8);
  (v9)(v5);
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v31 = v9;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v38);
  v34(v15, v5, v2);
  sub_10076D9BC();
  v14(v5, v2);
  sub_100763A3C();
  v32 = v14;
  if (qword_100940AD8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_1009A0E98);
  v31(v5, v16, v6);
  v17 = v33;
  (v10)(v5, v33, v2);
  v42 = v11;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v38);
  v34(v18, v5, v2);
  sub_10076D9BC();
  v32(v5, v2);
  sub_1007639DC();
  v19 = v11;
  if (qword_100940AE0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v6, qword_1009A0EB0);
  v21 = v31;
  v31(v5, v20, v6);
  (v10)(v5, v17, v2);
  v42 = v19;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v29 = v19;
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v38);
  v28 = v10;
  v23 = v34;
  v34(v22, v5, v2);
  sub_10076D9BC();
  v24 = v32;
  v32(v5, v2);
  sub_100763ACC();
  sub_100763A1C();
  v21(v5, v30, v6);
  (v28)(v5, v33, v2);
  v42 = v29;
  v43 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v41);
  v39 = v2;
  v40 = &protocol witness table for FontSource;
  v25 = sub_10000DB7C(v38);
  v23(v25, v5, v2);
  sub_10076D9BC();
  v24(v5, v2);
  return sub_100763A2C();
}

uint64_t sub_1005028A4()
{
  v0 = sub_100763ADC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000DB18(v4, qword_10095B310);
  sub_10000A61C(v0, qword_10095B310);
  if (qword_100940748 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_10095B2F8);
  (*(v1 + 16))(v3, v5, v0);
  sub_10076C13C();
  return (*(v1 + 8))(v3, v0);
}