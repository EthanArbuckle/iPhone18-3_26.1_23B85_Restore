unint64_t sub_10009A098()
{
  result = qword_100970E80;
  if (!qword_100970E80)
  {
    type metadata accessor for ArtworkView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100970E80);
  }

  return result;
}

void sub_10009A0F0()
{
  *(v0 + OBJC_IVAR____TtC8AppStore19IconArtworkGridView_iconViews) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC8AppStore19IconArtworkGridView_layoutMetrics;
  if (qword_10096CF68 != -1)
  {
    swift_once();
  }

  v2 = v0 + v1;
  v3 = qword_1009CDB90;
  v4 = xmmword_1009CDB80;
  *(v2 + 40) = &type metadata for CGFloat;
  *(v2 + 48) = &protocol witness table for CGFloat;
  *(v2 + 16) = v3;
  v5 = byte_1009CDBC8;
  v6 = *algn_1009CDB98;
  v7 = *&qword_1009CDBB8;
  *v2 = v4;
  *(v2 + 56) = v6;
  *(v2 + 72) = v7;
  *(v2 + 88) = v5;
  sub_10009A1F0(&xmmword_1009CDB80, v0 + OBJC_IVAR____TtC8AppStore19IconArtworkGridView_config);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

__n128 sub_10009A258(uint64_t a1)
{
  result = v1[2];
  *(a1 + 56) = result;
  *(a1 + 72) = 0;
  return result;
}

unint64_t sub_10009A268()
{
  result = qword_100972B18;
  if (!qword_100972B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972B18);
  }

  return result;
}

double sub_10009A3AC()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_10009A4A0(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_10009A4A0(uint64_t a1)
{
  v2 = type metadata accessor for PageGrid();
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MixedMediaLockupLayout.LockupPosition();
  v47 = *(v4 - 8);
  __chkstk_darwin(v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v46 - v7;
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  v11 = sub_10002849C(&unk_100973CA0);
  __chkstk_darwin(v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  v54 = type metadata accessor for MixedMediaLockupLayout.Metrics();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v51 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Shelf.PresentationHints();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v46 - v23;
  ShelfLayoutContext.shelfPresentationHints.getter();
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_10009AD18(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints);
  v59 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v25 = *(v19 + 8);
  v25(v21, v18);
  v25(v24, v18);
  v58 = a1;
  v26 = ShelfLayoutContext.traitEnvironment.getter();
  v27 = v47;
  (*(v47 + 56))(v16, 1, 1, v4);
  v50 = v16;
  v28 = v16;
  v29 = v27;
  sub_10009AD60(v28, v13);
  v30 = *(v27 + 48);
  if (v30(v13, 1, v4) == 1)
  {
    (*(v48 + 224))();
    v31 = v10;
    if (v30(v13, 1, v4) != 1)
    {
      sub_10009ADD0(v13);
    }
  }

  else
  {
    (*(v27 + 32))(v10, v13, v4);
    v31 = v10;
  }

  v32 = *(v29 + 16);
  v33 = v49;
  v32(v49, v31, v4);
  v34 = (*(v29 + 88))(v33, v4);
  v35 = v52;
  if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.top(_:))
  {
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, v62);
  }

  else if (v34 == enum case for MixedMediaLockupLayout.LockupPosition.bottom(_:))
  {
    if (qword_10096CFE0 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDD98, v62);
  }

  else
  {
    if (qword_10096CFE8 != -1)
    {
      swift_once();
    }

    sub_10002C0AC(qword_1009CDDC0, v62);
    (*(v29 + 8))(v33, v4);
  }

  v32(v35, v31, v4);
  sub_10002C0AC(v62, v61);
  sub_1000367E8();
  if (qword_10096E290 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for FontUseCase();
  sub_1000056A8(v36, qword_1009D1730);
  v37 = [v26 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for StaticDimension();
  v39 = sub_1000056A8(v38, qword_1009D2430);
  v60[3] = v38;
  v60[4] = &protocol witness table for StaticDimension;
  v40 = sub_1000056E0(v60);
  (*(*(v38 - 8) + 16))(v40, v39, v38);
  v41 = v51;
  MixedMediaLockupLayout.Metrics.init(lockupPosition:taglineNumberOfLines:taglineSpace:taglineFont:alwaysIncludeTaglineSpace:verticalSpacing:layoutMargins:)();
  swift_unknownObjectRelease();
  sub_100007000(v62);
  (*(v29 + 8))(v31, v4);
  sub_10009ADD0(v50);
  v42 = v55;
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  (*(v56 + 8))(v42, v57);
  v43 = ShelfLayoutContext.traitEnvironment.getter();
  v44 = sub_10024A4A8(v41, v43);
  swift_unknownObjectRelease();
  (*(v53 + 8))(v41, v54);
  return v44;
}

uint64_t sub_10009AD18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009AD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100973CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009ADD0(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100973CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009AE3C()
{
  v1 = type metadata accessor for PageFacets.Facet.Option();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PageFacets.Facet();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A19E4(v0, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(sub_10002849C(&qword_100972C60) + 48);
    (*(v6 + 32))(v8, v11, v5);
    (*(v2 + 32))(v4, &v11[v12], v1);
    Hasher._combine(_:)(1uLL);
    sub_1000A1A48(&qword_100972C68, &type metadata accessor for PageFacets.Facet);
    dispatch thunk of Hashable.hash(into:)();
    sub_1000A1A48(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v4, v1);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(0);
    sub_1000A1A48(&qword_100972C68, &type metadata accessor for PageFacets.Facet);
    dispatch thunk of Hashable.hash(into:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10009B178()
{
  Hasher.init(_seed:)();
  sub_10009AE3C();
  return Hasher._finalize()();
}

Swift::Int sub_10009B1BC()
{
  Hasher.init(_seed:)();
  sub_10009AE3C();
  return Hasher._finalize()();
}

void sub_10009B1FC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v1, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10009B2D0(uint64_t a1)
{
  v3 = type metadata accessor for PageFacets();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_10002849C(&qword_100972CE8);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_1000A2EFC(v1 + v14, v13);
  sub_1000A2EFC(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_10002B894(v13, &qword_10097CD30);
    }

    goto LABEL_6;
  }

  sub_1000A2EFC(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_10002B894(v13, &qword_100972CE8);
    return sub_10009B5EC();
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_1000A1A48(&qword_100972CF0, &type metadata accessor for PageFacets);
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_10002B894(v13, &qword_10097CD30);
  if ((v18 & 1) == 0)
  {
    return sub_10009B5EC();
  }

  return result;
}

uint64_t sub_10009B5EC()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_100972CB0);
  __chkstk_darwin(v2 - 8);
  v81 = &v66 - v3;
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin(v4);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v66 - v8;
  v9 = type metadata accessor for PageFacets.Facet();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PageFacets.FacetGroup();
  v85 = *(v13 - 8);
  __chkstk_darwin(v13);
  v82 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = type metadata accessor for PageFacets();
  v70 = *(v18 - 8);
  __chkstk_darwin(v18);
  v69 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_10002849C(&qword_100972CB8);
  v68 = *(v87 - 8);
  __chkstk_darwin(v87);
  v21 = &v66 - v20;
  sub_1000A1A48(&qword_100972CC0, &type metadata accessor for PageFacets.FacetGroup);
  sub_1000A1A48(&qword_100972CC8, type metadata accessor for PageFacetsViewController.Item);
  v86 = v21;
  v84 = v13;
  NSDiffableDataSourceSnapshot.init()();
  v22 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  v23 = v1 + v22;
  v24 = v70;
  sub_1000A2EFC(v23, v17);
  if ((*(v24 + 48))(v17, 1, v18) == 1)
  {
    result = sub_10002B894(v17, &qword_10097CD30);
    v26 = *(v1 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
    if (v26)
    {
      v27 = v26;
      v28 = v86;
      dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

      return (*(v68 + 8))(v28, v87);
    }

    goto LABEL_33;
  }

  v29 = *(v24 + 32);
  v67 = v18;
  v29(v69, v17, v18);
  result = PageFacets.facetGroups.getter();
  v80 = *(result + 16);
  if (v80)
  {
    v30 = 0;
    v79 = *(v85 + 80);
    v78 = (v79 + 32) & ~v79;
    v77 = result + v78;
    v76 = v85 + 16;
    v75 = v85 + 8;
    v98 = v10 + 16;
    v90 = (v10 + 8);
    v71 = (v85 + 56);
    v74 = xmmword_1007B10D0;
    v73 = v1;
    v88 = v10;
    v89 = v6;
    v96 = v12;
    v72 = result;
    while (v30 < *(result + 16))
    {
      v33 = v84;
      v34 = *(v85 + 72);
      v83 = v30;
      v95 = *(v85 + 16);
      v35 = v82;
      v95(v82, v77 + v34 * v30, v84);
      sub_10002849C(&qword_100972CD0);
      v36 = v78;
      v37 = swift_allocObject();
      *(v37 + 16) = v74;
      v95((v37 + v36), v35, v33);
      NSDiffableDataSourceSnapshot.appendSections(_:)(v37);

      v38 = PageFacets.FacetGroup.facets.getter();
      result = (*(v85 + 8))(v35, v33);
      v94 = *(v38 + 16);
      if (v94)
      {
        v39 = 0;
        v92 = v38 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        v40 = _swiftEmptyArrayStorage;
        v41 = v90;
        v93 = v38;
        while (v39 < *(v38 + 16))
        {
          v42 = *(v10 + 72);
          v95 = v39;
          v43 = *(v10 + 16);
          v43(v12, v92 + v42 * v39, v9);
          if (PageFacets.Facet.displayOptionsInline.getter())
          {
            v44 = PageFacets.Facet.options.getter();
            v45 = *(v44 + 16);
            if (v45)
            {
              v46 = v9;
              v47 = type metadata accessor for PageFacets.Facet.Option();
              v48 = *(v47 - 8);
              v49 = *(v48 + 80);
              v91 = v44;
              v50 = v44 + ((v49 + 32) & ~v49);
              v51 = *(v48 + 72);
              v52 = (v48 + 16);
              v53 = v97;
              do
              {
                v54 = *(sub_10002849C(&qword_100972C60) + 48);
                v43(v53, v96, v46);
                (*v52)(v53 + v54, v50, v47);
                swift_storeEnumTagMultiPayload();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v40 = sub_1000344BC(0, *(v40 + 2) + 1, 1, v40);
                }

                v56 = *(v40 + 2);
                v55 = *(v40 + 3);
                if (v56 >= v55 >> 1)
                {
                  v40 = sub_1000344BC(v55 > 1, v56 + 1, 1, v40);
                }

                *(v40 + 2) = v56 + 1;
                v57 = v40 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v56;
                v53 = v97;
                sub_1000A2DF8(v97, v57);
                v50 += v51;
                --v45;
              }

              while (v45);

              v9 = v46;
              v10 = v88;
              v6 = v89;
              v12 = v96;
              v41 = v90;
            }

            else
            {
            }

            result = (*v41)(v12, v9);
          }

          else
          {
            v43(v6, v12, v9);
            swift_storeEnumTagMultiPayload();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_1000344BC(0, *(v40 + 2) + 1, 1, v40);
            }

            v59 = *(v40 + 2);
            v58 = *(v40 + 3);
            if (v59 >= v58 >> 1)
            {
              v40 = sub_1000344BC(v58 > 1, v59 + 1, 1, v40);
            }

            (*v41)(v12, v9);
            *(v40 + 2) = v59 + 1;
            result = sub_1000A2DF8(v6, v40 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v59);
          }

          v38 = v93;
          v39 = v95 + 1;
          if (v95 + 1 == v94)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_6:

      v31 = v83 + 1;
      v32 = v81;
      (*v71)(v81, 1, 1, v84);
      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();
      v30 = v31;

      sub_10002B894(v32, &qword_100972CB0);
      v1 = v73;
      result = v72;
      if (v31 == v80)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_29:

  v60 = *(v1 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
  v61 = v67;
  v62 = v70;
  v63 = v69;
  if (v60)
  {
    v64 = v60;
    v65 = v86;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v62 + 8))(v63, v61);
    return (*(v68 + 8))(v65, v87);
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_10009C0C8()
{
  v1 = v0;
  v2 = type metadata accessor for PageFacets.FacetGroup();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972CB8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v10 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource;
  v11 = *&v0[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  v13 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
  v14 = *(v13 + 16);
  if (!v14)
  {

    v25 = *&v1[v10];
    if (v25)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v33 = v10;
  v34 = v1;
  v35 = v7;
  v36 = v13;
  v15 = v2;
  v17 = *(v3 + 16);
  v16 = v3 + 16;
  v37 = v17;
  v18 = v9;
  v19 = v13 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
  v20 = *(v16 + 56);
  v21 = v6;
  v22 = (v16 - 8);
  do
  {
    v37(v5, v19, v15);
    v23 = v16;
    v24 = NSDiffableDataSourceSnapshot.itemIdentifiers(inSection:)();
    (*v22)(v5, v15);
    NSDiffableDataSourceSnapshot.reloadItems(_:)(v24);
    v16 = v23;

    v19 += v20;
    --v14;
  }

  while (v14);

  v6 = v21;
  v1 = v34;
  v7 = v35;
  v9 = v18;
  v25 = *&v34[v33];
  if (!v25)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_6:
  v26 = v25;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  v27 = &v1[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
  if (v1[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset + 16])
  {
    (*(v7 + 8))(v9, v6);
    return;
  }

  v29 = *v27;
  v28 = v27[1];
  v30 = [v1 collectionView];
  if (v30)
  {
    v31 = v30;
    [v30 setContentOffset:{v29, v28}];

    (*(v7 + 8))(v9, v6);
    *v27 = 0.0;
    v27[1] = 0.0;
    *(v27 + 16) = 1;
    return;
  }

LABEL_13:
  __break(1u);
}

id sub_10009C3D0()
{
  v15.receiver = v0;
  v15.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v15, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = objc_opt_self();
  v4 = [v3 systemBackgroundColor];
  [v2 setBackgroundColor:v4];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  v6 = [v3 systemBackgroundColor];
  [v5 setBackgroundColor:v6];

  v7 = sub_10009C60C();
  v8 = *&v0[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource];
  *&v0[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource] = v7;

  result = [v0 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v14[4] = sub_1000A2EF4;
    v14[5] = v10;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1002E9BD4;
    v14[3] = &unk_1008B3098;
    v12 = _Block_copy(v14);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    sub_10009CA20();
    return sub_10009B5EC();
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_10009C60C()
{
  v27 = sub_10002849C(&qword_100972CF8);
  v1 = *(v27 - 8);
  __chkstk_darwin(v27);
  v23[1] = v2;
  v24 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v23 - v4;
  v25 = sub_10002849C(&qword_100972D00);
  v6 = *(v25 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v25);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100972D08);
  type metadata accessor for PageFacetsViewController.Item(0);
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005744(0, &qword_100978E10);
  v26 = v5;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  result = [v0 collectionView];
  if (result)
  {
    v13 = v25;
    (*(v6 + 16))(v8, v11, v25);
    v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v15 = swift_allocObject();
    (*(v6 + 32))(v15 + v14, v8, v13);
    v16 = objc_allocWithZone(sub_10002849C(&qword_100972D10));
    v17 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v18 = v24;
    v19 = v26;
    v20 = v27;
    (*(v1 + 16))(v24, v26, v27);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v18, v20);
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    (*(v1 + 8))(v19, v20);
    (*(v6 + 8))(v11, v13);
    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009CA20()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10002849C(&unk_100984570);
  v19 = *(v1 - 8);
  v20 = v1;
  __chkstk_darwin(v1);
  v18 = v15 - v2;
  v3 = sub_10002849C(&qword_10097CCE0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - v5;
  PageFacetsPresenter.onFacetStateDidChange.getter();
  v7 = sub_100005744(0, &qword_1009729E0);
  v8 = static OS_dispatch_queue.main.getter();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v8;
  v15[1] = sub_10002849C(&unk_100984580);
  sub_100097060(&unk_10097CD10, &unk_100984580);
  v16 = v0;
  EventEmitter.addObserver<A>(on:target:method:)();

  v9 = v4 + 8;
  v10 = *(v4 + 8);
  v15[0] = v9;
  v10(v6, v3);
  sub_100007000(v21);
  PageFacetsPresenter.onSelectedFacetOptionsChanged.getter();
  v11 = static OS_dispatch_queue.main.getter();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v11;
  EventEmitter.addObserver<A>(on:target:method:)();

  v10(v6, v3);
  sub_100007000(v21);
  PageFacetsPresenter.onPerformPageFacetsChangeAction.getter();
  v12 = static OS_dispatch_queue.main.getter();
  v22 = v7;
  v23 = &protocol witness table for OS_dispatch_queue;
  v21[0] = v12;
  sub_10002849C(&qword_100984590);
  sub_100097060(&unk_10097CD20, &qword_100984590);
  v13 = v18;
  EventEmitter.addObserver<A>(on:target:method:)();

  (*(v19 + 8))(v13, v20);
  return sub_100007000(v21);
}

void sub_10009CE1C(unint64_t a1, uint64_t a2)
{
  v53 = a2;
  v50 = a1;
  v2 = sub_10002849C(&qword_100972CB8);
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v4 = &v45 - v3;
  v5 = type metadata accessor for PageFacets.FacetGroup();
  v46 = *(v5 - 8);
  v47 = v5;
  __chkstk_darwin(v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v45 = &v45 - v9;
  v10 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICollectionLayoutListConfiguration();
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v17, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v14, v19);
  UICollectionLayoutListConfiguration.init(appearance:)();
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v10);
  UICollectionLayoutListConfiguration.headerMode.setter();
  sub_100005744(0, &unk_100990AB0);
  v22 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_11:
    (*(v51 + 8))(v21, v52);
    return;
  }

  v24 = *(Strong + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
  v25 = Strong;
  v26 = v24;

  if (v24)
  {
    dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

    v27 = v49;
    v28 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
    (*(v48 + 8))(v4, v27);
    if ((v50 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v28 + 16) > v50)
    {
      v30 = v46;
      v29 = v47;
      (*(v46 + 16))(v7, v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v50, v47);

      v31 = v45;
      (*(v30 + 32))(v45, v7, v29);
      v32 = PageFacets.FacetGroup.title.getter();
      if (v33)
      {
        v34 = v32;
        v35 = v33;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v36)
        {
          v37 = objc_opt_self();
          v38 = [v37 fractionalWidthDimension:1.0];
          v39 = [v37 estimatedDimension:44.0];
          v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

          v41 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:UICollectionElementKindSectionHeader alignment:1];
          sub_10002849C(&qword_100973210);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1007B0B70;
          *(v42 + 32) = v41;
          sub_100005744(0, &qword_10097F460);
          v43 = v41;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v22 setBoundarySupplementaryItems:isa];
        }
      }

      (*(v30 + 8))(v31, v29);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_10009D42C(void *a1, uint64_t a2, void (*a3)(void, void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_10009D4A4(a1, a2, a3);
  }
}

uint64_t sub_10009D4A4(void *a1, uint64_t a2, void (*a3)(void, void))
{
  v170 = a3;
  v174 = a1;
  v146 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v145 = *(v146 - 8);
  __chkstk_darwin(v146);
  v144 = &v137 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for UICellAccessory.Placement();
  v149 = *(v150 - 8);
  __chkstk_darwin(v150);
  v152 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v151 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for PageFacets.Facet.DisplayType();
  v175 = *(v160 - 8);
  __chkstk_darwin(v160);
  v141 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v142 = &v137 - v8;
  __chkstk_darwin(v9);
  v148 = &v137 - v10;
  __chkstk_darwin(v11);
  v161 = &v137 - v12;
  __chkstk_darwin(v13);
  v159 = &v137 - v14;
  __chkstk_darwin(v15);
  v158 = &v137 - v16;
  v17 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v17 - 8);
  v163 = &v137 - v18;
  v140 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v138 = &v137 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for UICellAccessory.DisplayedState();
  v162 = *(v166 - 8);
  __chkstk_darwin(v166);
  v155 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for PageFacets.Facet.Option();
  v157 = *(v168 - 8);
  __chkstk_darwin(v168);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for PageFacets.Facet();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v156 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v147 = &v137 - v27;
  __chkstk_darwin(v28);
  v30 = &v137 - v29;
  __chkstk_darwin(v31);
  v169 = &v137 - v32;
  v33 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v33);
  v35 = &v137 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v137 - v37;
  __chkstk_darwin(v39);
  v41 = &v137 - v40;
  v42 = type metadata accessor for UIListContentConfiguration();
  v172 = *(v42 - 8);
  v173 = v42;
  __chkstk_darwin(v42);
  v143 = &v137 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v46 = &v137 - v45;
  static UIListContentConfiguration.cell()();
  sub_1000A19E4(v170, v41);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v171 = v24;
  if (EnumCaseMultiPayload != 1)
  {
    v165 = v46;
    v169 = v41;
    sub_1000A19E4(v41, v35);
    v69 = *(v24 + 16);
    v168 = v35;
    v164 = v23;
    v138 = v69;
    (v69)(v30, v35, v23);
    v70 = v158;
    PageFacets.Facet.displayType.getter();
    v71 = v175;
    v72 = v159;
    v73 = v160;
    v139 = *(v175 + 13);
    v157 = v175 + 104;
    (v139)(v159, enum case for PageFacets.Facet.DisplayType.toggle(_:), v160);
    v74 = sub_1000A1A48(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v140 = v74;
    dispatch thunk of RawRepresentable.rawValue.getter();
    v170 = v30;
    if (v178 == v176 && v179 == v177)
    {
      v75 = 1;
    }

    else
    {
      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v76 = *(v71 + 8);
    v76(v72, v73);
    v175 = (v71 + 8);
    v159 = v76;
    v76(v70, v73);

    if (v75)
    {
      PageFacets.Facet.title.getter();
      UIListContentConfiguration.text.setter();
      sub_100005744(0, &qword_10097CD40);
      v77 = swift_allocObject();
      v78 = v167;
      swift_unknownObjectWeakInit();
      v79 = v147;
      v80 = v164;
      (v138)(v147, v170, v164);
      v81 = v171;
      v82 = (*(v171 + 80) + 24) & ~*(v171 + 80);
      v83 = swift_allocObject();
      *(v83 + 16) = v77;
      v84 = v170;
      (*(v81 + 32))(v83 + v82, v79, v80);
      v85 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v86 = [objc_allocWithZone(UISwitch) initWithFrame:v85 primaryAction:{0.0, 0.0, 0.0, 0.0}];

      v87 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
      swift_beginAccess();
      v88 = *(v78 + v87);
      v60 = v172;
      if (*(v88 + 16) && (v89 = sub_1003D7A9C(v84), (v90 & 1) != 0))
      {
        v91 = *(*(v88 + 56) + 8 * v89);
        swift_endAccess();
        v92 = *(v91 + 16) != 0;
      }

      else
      {
        swift_endAccess();
        v92 = 0;
      }

      v100 = v174;
      [v86 setOn:v92];
      sub_10002849C(&qword_100972CA8);
      type metadata accessor for UICellAccessory();
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      v101 = sub_10002849C(&qword_100972D18);
      v102 = v152;
      v103 = &v152[*(v101 + 48)];
      (*(v162 + 104))(v152, enum case for UICellAccessory.DisplayedState.always(_:), v166);
      *v103 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
      v103[1] = 0;
      (*(v149 + 104))(v102, enum case for UICellAccessory.Placement.trailing(_:), v150);
      v104 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v104 - 8) + 56))(v163, 1, 1, v104);
      v105 = v86;
      v106 = v151;
      UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
      static UICellAccessory.customView(configuration:)();
      (*(v153 + 8))(v106, v154);
      UICollectionViewListCell.accessories.setter();
      v178 = 0x2D7465636166;
      v179 = 0xE600000000000000;
      v107 = v170;
      v108._countAndFlagsBits = PageFacets.Facet.id.getter();
      String.append(_:)(v108);

      v109 = String._bridgeToObjectiveC()();

      [v100 setAccessibilityIdentifier:v109];

      v110 = *(v81 + 8);
      v110(v107, v80);
      v110(v168, v80);
      v59 = v173;
      goto LABEL_25;
    }

    v93 = v170;
    v94 = v171;
    v95 = v164;
    v170 = *(v171 + 8);
    v170(v93, v164);
    v96 = v156;
    (*(v94 + 32))(v156, v168, v95);
    PageFacets.Facet.displayType.getter();
    v97 = v148;
    v98 = v139;
    (v139)(v148, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v73);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v60 = v172;
    if (v178 == v176 && v179 == v177)
    {
      v99 = v159;
      (v159)(v97, v73);
      v99(v161, v73);
    }

    else
    {
      v111 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v112 = v159;
      (v159)(v97, v73);
      v112(v161, v73);

      if (v111)
      {
        goto LABEL_22;
      }

      PageFacets.Facet.displayType.getter();
      v98(v141, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v73);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v178 != v176 || v179 != v177)
      {
        v135 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v136 = v159;
        (v159)(v141, v73);
        v136(v142, v73);

        if ((v135 & 1) == 0)
        {
          v170(v96, v164);
          UICollectionViewListCell.accessories.setter();
          v59 = v173;
LABEL_25:
          v41 = v169;
          v46 = v165;
          goto LABEL_30;
        }

LABEL_22:
        v113 = v143;
        static UIListContentConfiguration.valueCell()();
        v114 = v165;
        v59 = v173;
        (*(v60 + 8))(v165, v173);
        (*(v60 + 32))(v114, v113, v59);
        PageFacets.Facet.title.getter();
        UIListContentConfiguration.text.setter();
        v115 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
        v116 = v167;
        swift_beginAccess();
        v117 = *(v116 + v115);

        sub_10009F20C(v96, v117);

        UIListContentConfiguration.secondaryText.setter();
        sub_10002849C(&qword_100972CA8);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = xmmword_1007B10D0;
        v118 = v162;
        v119 = v155;
        v120 = v166;
        (*(v162 + 104))(v155, enum case for UICellAccessory.DisplayedState.always(_:), v166);
        v121 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v121 - 8) + 56))(v163, 1, 1, v121);
        v122 = v144;
        UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
        static UICellAccessory.disclosureIndicator(displayed:options:)();
        v123 = v156;
        (*(v145 + 8))(v122, v146);
        (*(v118 + 8))(v119, v120);
        v124 = v174;
        UICollectionViewListCell.accessories.setter();
        v125 = PageFacets.Facet.metricsParameterName.getter();
        if (v126)
        {
          v178 = 0x2D7465636166;
          v179 = 0xE600000000000000;
          String.append(_:)(*&v125);

          v127 = String._bridgeToObjectiveC()();

          [v124 setAccessibilityIdentifier:v127];
        }

        v170(v123, v164);
        goto LABEL_25;
      }

      v134 = v159;
      (v159)(v141, v73);
      v134(v142, v73);
    }

    goto LABEL_22;
  }

  v48 = v174;
  sub_1000A19E4(v41, v38);
  v49 = *(sub_10002849C(&qword_100972C60) + 48);
  v50 = v169;
  (*(v24 + 32))(v169, v38, v23);
  v51 = v157;
  (*(v157 + 4))(v22, &v38[v49], v168);
  v175 = v22;
  PageFacets.Facet.Option.title.getter();
  UIListContentConfiguration.text.setter();
  v52 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  v53 = v167;
  swift_beginAccess();
  v54 = *(v53 + v52);
  if (*(v54 + 16) && (v55 = sub_1003D7A9C(v50), (v56 & 1) != 0))
  {
    v164 = v23;
    v57 = *(*(v54 + 56) + 8 * v55);
    swift_endAccess();

    v58 = sub_10029615C(v175, v57);

    v60 = v172;
    v59 = v173;
    v61 = v48;
    if (v58)
    {
      sub_10002849C(&qword_100972CA8);
      v62 = *(type metadata accessor for UICellAccessory() - 8);
      v170 = ((*(v62 + 80) + 32) & ~*(v62 + 80));
      *(swift_allocObject() + 16) = xmmword_1007B10D0;
      v63 = v162;
      v64 = *(v162 + 104);
      v165 = v46;
      v65 = v155;
      v64(v155, enum case for UICellAccessory.DisplayedState.always(_:), v166);
      v66 = type metadata accessor for UICellAccessory.LayoutDimension();
      (*(*(v66 - 8) + 56))(v163, 1, 1, v66);
      v67 = v138;
      UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
      static UICellAccessory.checkmark(displayed:options:)();
      (*(v139 + 8))(v67, v140);
      v68 = v65;
      v46 = v165;
      (*(v63 + 8))(v68, v166);
    }

    v23 = v164;
  }

  else
  {
    swift_endAccess();
    v60 = v172;
    v59 = v173;
    v61 = v48;
  }

  UICollectionViewListCell.accessories.setter();
  v128 = v175;
  v129 = PageFacets.Facet.Option.metricsValue.getter();
  if (v130)
  {
    v178 = 0x2D7465636166;
    v179 = 0xE600000000000000;
    String.append(_:)(*&v129);

    v131 = String._bridgeToObjectiveC()();

    [v61 setAccessibilityIdentifier:v131];
  }

  (*(v51 + 1))(v128, v168);
  (*(v171 + 8))(v169, v23);
LABEL_30:
  sub_1000A244C(v41);
  v180 = v59;
  v181 = &protocol witness table for UIListContentConfiguration;
  v132 = sub_1000056E0(&v178);
  (*(v60 + 16))(v132, v46, v59);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v60 + 8))(v46, v59);
}

unint64_t sub_10009EB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a4;
  v4 = type metadata accessor for UIListContentConfiguration();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972CB8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for PageFacets.FacetGroup();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v23 = v4;
    v17 = *(result + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

      v19 = NSDiffableDataSourceSnapshot.sectionIdentifiers.getter();
      (*(v8 + 8))(v10, v7);
      result = IndexPath.subscript.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v19 + 16))
      {
        (*(v12 + 16))(v14, v19 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * result, v11);

        static UIListContentConfiguration.groupedHeader()();
        PageFacets.FacetGroup.title.getter();
        UIListContentConfiguration.text.setter();
        v20 = v23;
        v27[3] = v23;
        v27[4] = &protocol witness table for UIListContentConfiguration;
        v21 = sub_1000056E0(v27);
        v22 = v24;
        (*(v24 + 16))(v21, v6, v20);
        UICollectionViewCell.contentConfiguration.setter();

        (*(v22 + 8))(v6, v20);
        return (*(v12 + 8))(v14, v11);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10009EE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100972C80);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1000A19E4(a3, &v10 - v5);
  v7 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  sub_100005744(0, &qword_100972D08);
  v8 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_10002B894(v6, &qword_100972C80);
  return v8;
}

void sub_10009EF68()
{
  v0 = sub_10002849C(&qword_100972C98);
  __chkstk_darwin(v0 - 8);
  v2 = &v19 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    v6 = v5;
    if (v5)
    {
      v7 = [v5 collectionView];

      if (!v7)
      {
        __break(1u);
        return;
      }

      [v7 contentOffset];
      v19 = v8;
      v20 = v9;

      *&v10 = v19;
      *(&v10 + 1) = v20;
    }

    else
    {
      v10 = 0uLL;
    }

    v11 = &v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
    *v11 = v10;
    v11[16] = v6 == 0;
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;

    v14 = PageFacets.Facet.options.getter();
    if (*(v14 + 16))
    {
      v15 = v14;
      v16 = type metadata accessor for PageFacets.Facet.Option();
      v17 = *(v16 - 8);
      (*(v17 + 16))(v2, v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v16);

      (*(v17 + 56))(v2, 0, 1, v16);
    }

    else
    {

      v18 = type metadata accessor for PageFacets.Facet.Option();
      (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
    }

    PageFacetsPresenter.didSelect(option:in:)();

    sub_10002B894(v2, &qword_100972C98);
  }
}

uint64_t sub_10009F20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacets.Facet.Option();
  v63 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = PageFacets.Facet.showsSelectedOptions.getter();
  result = 0;
  if (v13)
  {
    if (*(a2 + 16) && (v15 = sub_1003D7A9C(a1), (v16 & 1) != 0))
    {
      v17 = *(*(a2 + 56) + 8 * v15);
      v18 = *(v17 + 16);

      v19 = *(PageFacets.Facet.options.getter() + 16);

      if (v18 == v19)
      {

        v20._countAndFlagsBits = 0xD000000000000025;
        v20._object = 0x80000001007FFD90;
        v21._countAndFlagsBits = 0;
        v21._object = 0xE000000000000000;
        return localizedString(_:comment:)(v20, v21)._countAndFlagsBits;
      }

      else
      {
        v66 = v17;
        result = PageFacets.Facet.options.getter();
        v61 = *(result + 16);
        if (v61)
        {
          v58 = v6;
          v27 = 0;
          v28 = v66;
          v64 = (v66 + 56);
          v65 = v63 + 16;
          v29 = (v63 + 8);
          v59 = _swiftEmptyArrayStorage;
          v60 = result;
          v57 = (v63 + 32);
          while (v27 < *(result + 16))
          {
            v62 = (*(v63 + 80) + 32) & ~*(v63 + 80);
            v30 = *(v63 + 72);
            v31 = *(v63 + 16);
            v31(v12, result + v62 + v30 * v27, v4);
            if (*(v28 + 16) && (sub_1000A1A48(&qword_100972C70, &type metadata accessor for PageFacets.Facet.Option), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = v66, v33 = -1 << *(v66 + 32), v34 = v32 & ~v33, ((*(v64 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
            {
              v35 = ~v33;
              while (1)
              {
                v31(v9, *(v28 + 48) + v34 * v30, v4);
                sub_1000A1A48(&qword_100972D20, &type metadata accessor for PageFacets.Facet.Option);
                v36 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v29)(v9, v4);
                if (v36)
                {
                  break;
                }

                v34 = (v34 + 1) & v35;
                v28 = v66;
                if (((*(v64 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                {
                  goto LABEL_11;
                }
              }

              v37 = *v57;
              (*v57)(v58, v12, v4);
              v38 = v59;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v40 = v38;
              v67 = v38;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_100144268(0, *(v38 + 2) + 1, 1);
                v40 = v67;
              }

              v28 = v66;
              v42 = *(v40 + 2);
              v41 = *(v40 + 3);
              if (v42 >= v41 >> 1)
              {
                sub_100144268(v41 > 1, v42 + 1, 1);
                v28 = v66;
                v40 = v67;
              }

              *(v40 + 2) = v42 + 1;
              v59 = v40;
              v37(v40 + v62 + v42 * v30, v58, v4);
            }

            else
            {
LABEL_11:
              (*v29)(v12, v4);
            }

            ++v27;
            result = v60;
            if (v27 == v61)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
        }

        else
        {
          v59 = _swiftEmptyArrayStorage;
LABEL_26:

          v43 = *(v59 + 2);
          if (v43)
          {
            v67 = _swiftEmptyArrayStorage;
            v44 = v59;
            sub_100144128(0, v43, 0);
            v45 = v67;
            v46 = *(v63 + 16);
            v47 = v44 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
            v65 = *(v63 + 72);
            v66 = v46;
            v63 += 16;
            v64 = (v63 - 8);
            do
            {
              (v66)(v9, v47, v4);
              v48 = PageFacets.Facet.Option.title.getter();
              v50 = v49;
              (*v64)(v9, v4);
              v67 = v45;
              v52 = *(v45 + 2);
              v51 = *(v45 + 3);
              if (v52 >= v51 >> 1)
              {
                sub_100144128((v51 > 1), v52 + 1, 1);
                v45 = v67;
              }

              *(v45 + 2) = v52 + 1;
              v53 = &v45[2 * v52];
              *(v53 + 4) = v48;
              *(v53 + 5) = v50;
              v47 += v65;
              --v43;
            }

            while (v43);
          }

          else
          {

            v45 = _swiftEmptyArrayStorage;
          }

          v67 = v45;
          v54._object = 0x80000001007FFD70;
          v54._countAndFlagsBits = 0xD00000000000001DLL;
          v55._countAndFlagsBits = 0;
          v55._object = 0xE000000000000000;
          localizedString(_:comment:)(v54, v55);
          sub_10002849C(&unk_100977380);
          sub_100097060(&qword_100973110, &unk_100977380);
          v56 = BidirectionalCollection<>.joined(separator:)();

          return v56;
        }
      }
    }

    else
    {
      v22 = PageFacets.Facet.options.getter();
      __chkstk_darwin(v22);
      *(&v57 - 2) = a1;
      v23 = sub_1004B23B8(sub_1000A32A4, (&v57 - 4), v22);

      if (*(v23 + 16))
      {
        v67 = v23;
        v24._object = 0x80000001007FFD70;
        v24._countAndFlagsBits = 0xD00000000000001DLL;
        v25._countAndFlagsBits = 0;
        v25._object = 0xE000000000000000;
        localizedString(_:comment:)(v24, v25);
        sub_10002849C(&unk_100977380);
        sub_100097060(&qword_100973110, &unk_100977380);
        v26 = BidirectionalCollection<>.joined(separator:)();

        return v26;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10009F968(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v11[-v7];
  PageFacetsPresenter.FacetsState.facets.getter();
  v9 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  swift_beginAccess();
  sub_1000A2EFC(a2 + v9, v5);
  swift_beginAccess();
  sub_1000A2FFC(v8, a2 + v9);
  swift_endAccess();
  sub_10009B2D0(v5);
  sub_10002B894(v5, &qword_10097CD30);
  return sub_10002B894(v8, &qword_10097CD30);
}

uint64_t (*sub_10009FAA0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000A2FF4;
}

void (*sub_10009FB04(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1000A2F7C;
}

void sub_10009FB68(uint64_t a1, uint64_t a2)
{
  v3 = PageFacetsPresenter.FacetsState.selectedFacetOptions.getter();
  v4 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  swift_beginAccess();
  v5 = *(a2 + v4);
  *(a2 + v4) = v3;

  sub_1000A1B0C(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    sub_10009C0C8();
  }
}

uint64_t sub_10009FBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_100972A00);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_objectGraph);
  v8 = sub_10002849C(&unk_100974490);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10002B894(v6, &unk_100972A00);
  }

  sub_1005F9AF4(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_10009FD48(void *a1))(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1000A2F6C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1000A2F74;
}

void sub_10009FDD8(void *a1, uint64_t a2)
{
  v163 = a2;
  v154 = a1;
  v147 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v124 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for IndexPath();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v136 = v5;
  v137 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for DispatchTime();
  v141 = *(v150 - 8);
  __chkstk_darwin(v150);
  v135 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = &v124 - v8;
  v9 = sub_10002849C(&qword_100972C90);
  __chkstk_darwin(v9 - 8);
  v128 = &v124 - v10;
  v130 = type metadata accessor for UICellAccessory.CheckmarkOptions();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v126 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for UICellAccessory.DisplayedState();
  v125 = *(v127 - 8);
  __chkstk_darwin(v127);
  v124 = &v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972C98);
  __chkstk_darwin(v13 - 8);
  v134 = &v124 - v14;
  v157 = type metadata accessor for PageFacets.Facet.DisplayType();
  v164 = *(v157 - 8);
  __chkstk_darwin(v157);
  v148 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v132 = &v124 - v17;
  __chkstk_darwin(v18);
  v20 = &v124 - v19;
  __chkstk_darwin(v21);
  v23 = &v124 - v22;
  __chkstk_darwin(v24);
  v131 = &v124 - v25;
  __chkstk_darwin(v26);
  v28 = &v124 - v27;
  __chkstk_darwin(v29);
  v152 = &v124 - v30;
  __chkstk_darwin(v31);
  v153 = &v124 - v32;
  __chkstk_darwin(v33);
  v35 = &v124 - v34;
  __chkstk_darwin(v36);
  v38 = &v124 - v37;
  v39 = type metadata accessor for PageFacets.Facet.Option();
  v155 = *(v39 - 8);
  v156 = v39;
  __chkstk_darwin(v39);
  v158 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PageFacets.Facet();
  v42 = *(v41 - 8);
  v161 = v41;
  v162 = v42;
  __chkstk_darwin(v41);
  v133 = &v124 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v151 = &v124 - v45;
  __chkstk_darwin(v46);
  v159 = &v124 - v47;
  v48 = sub_10002849C(&qword_100972C80);
  __chkstk_darwin(v48 - 8);
  v50 = &v124 - v49;
  v51 = type metadata accessor for PageFacetsViewController.Item(0);
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v124 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v160 = &v124 - v56;
  v149 = v2;
  v57 = *&v2[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource];
  if (!v57)
  {
    __break(1u);
    return;
  }

  v58 = v57;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v52 + 48))(v50, 1, v51) == 1)
  {
    sub_10002B894(v50, &qword_100972C80);
    return;
  }

  v59 = v160;
  sub_1000A2DF8(v50, v160);
  sub_1000A19E4(v59, v54);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v162 + 32))(v151, v54, v161);
    PageFacets.Facet.displayType.getter();
    v64 = *(v164 + 104);
    v64(v20, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v157);
    sub_1000A1A48(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock == v171 && v166 == v172)
    {
      v65 = 1;
    }

    else
    {
      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v77 = *(v164 + 8);
    v78 = v20;
    v79 = v157;
    v77(v78, v157);
    v77(v23, v79);

    v76 = v151;
    if ((v65 & 1) == 0)
    {
      v80 = v132;
      PageFacets.Facet.displayType.getter();
      v64(v148, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v79);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (aBlock == v171 && v166 == v172)
      {
        v77(v148, v79);
        v77(v80, v79);
      }

      else
      {
        v92 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v77(v148, v79);
        v77(v80, v79);

        if ((v92 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    v93 = v161;
    v94 = v133;
    (*(v162 + 16))(v133, v76, v161);
    v95 = v149;
    v96 = *&v149[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_facetsPresenter];
    v97 = v149[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_showDoneButton];
    v98 = objc_allocWithZone(type metadata accessor for PageFacetOptionsViewController());

    v99 = sub_10076F480(v94, v96, v97);

    *&v99[OBJC_IVAR____TtC8AppStore30PageFacetOptionsViewController_delegate + 8] = &off_1008B3010;
    swift_unknownObjectWeakAssign();
    v100 = [v95 navigationController];
    if (v100)
    {
      v101 = v100;
      [v100 pushViewController:v99 animated:1];

      v99 = v101;
    }

    (*(v162 + 8))(v76, v93);
    goto LABEL_48;
  }

  v148 = v28;
  v60 = *(sub_10002849C(&qword_100972C60) + 48);
  (*(v162 + 32))(v159, v54, v161);
  (*(v155 + 32))(v158, &v54[v60], v156);
  PageFacets.Facet.displayType.getter();
  v61 = enum case for PageFacets.Facet.DisplayType.multipleSelection(_:);
  v62 = v157;
  v151 = *(v164 + 104);
  (v151)(v35, enum case for PageFacets.Facet.DisplayType.multipleSelection(_:), v157);
  sub_1000A1A48(&qword_100972CA0, &type metadata accessor for PageFacets.Facet.DisplayType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  LODWORD(v133) = v61;
  if (aBlock == v171 && v166 == v172)
  {
    v63 = 1;
  }

  else
  {
    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v66 = v164 + 8;
  v67 = *(v164 + 8);
  v67(v35, v62);
  v164 = v66;
  v67(v38, v62);

  v68 = v149;
  if ((v63 & 1) == 0)
  {
    v69 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
    swift_beginAccess();
    v70 = *&v68[v69];
    if (*(v70 + 16) && (v71 = sub_1003D7A9C(v159), (v72 & 1) != 0))
    {
      v73 = *(*(v70 + 56) + 8 * v71);
      swift_endAccess();

      v74 = sub_10029615C(v158, v73);

      if (v74)
      {
        v75 = 0;
        v76 = v159;
        goto LABEL_24;
      }
    }

    else
    {
      swift_endAccess();
    }
  }

  [v154 contentOffset];
  v81 = &v68[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
  *v81 = v82;
  *(v81 + 1) = v83;
  v81[16] = 0;
  v85 = v155;
  v84 = v156;
  v86 = v134;
  (*(v155 + 16))(v134, v158, v156);
  v75 = 1;
  (*(v85 + 56))(v86, 0, 1, v84);
  v76 = v159;
  PageFacetsPresenter.didSelect(option:in:)();
  sub_10002B894(v86, &qword_100972C98);
LABEL_24:
  PageFacets.Facet.displayType.getter();
  (v151)(v152, enum case for PageFacets.Facet.DisplayType.singleSelection(_:), v62);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v152, v62);
    v67(v153, v62);

LABEL_27:

    goto LABEL_29;
  }

  v87 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v67(v152, v62);
  v67(v153, v62);

  if (v87)
  {
    goto LABEL_29;
  }

  PageFacets.Facet.displayType.getter();
  v102 = v131;
  (v151)(v131, v133, v62);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v171 && v166 == v172)
  {
    v67(v102, v62);
    v67(v148, v62);

    goto LABEL_27;
  }

  v103 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v67(v102, v62);
  v67(v148, v62);

  if (v103)
  {
LABEL_29:
    v88 = v163;
    if (v75)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v90 = [v154 cellForItemAtIndexPath:isa];

      if (v90)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v91 = *(UICollectionViewListCell.accessories.getter() + 16);

          if (!v91)
          {
            sub_10002849C(&qword_100972CA8);
            type metadata accessor for UICellAccessory();
            *(swift_allocObject() + 16) = xmmword_1007B10D0;
            v104 = v125;
            v105 = v124;
            v106 = v127;
            (*(v125 + 104))(v124, enum case for UICellAccessory.DisplayedState.always(_:), v127);
            v107 = type metadata accessor for UICellAccessory.LayoutDimension();
            (*(*(v107 - 8) + 56))(v128, 1, 1, v107);
            v108 = v126;
            UICellAccessory.CheckmarkOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
            static UICellAccessory.checkmark(displayed:options:)();
            (*(v129 + 8))(v108, v130);
            (*(v104 + 8))(v105, v106);
          }

          UICollectionViewListCell.accessories.setter();
        }
      }
    }

    sub_100005744(0, &qword_1009729E0);
    v109 = static OS_dispatch_queue.main.getter();
    v110 = v135;
    static DispatchTime.now()();
    v111 = v140;
    + infix(_:_:)();
    v164 = *(v141 + 8);
    (v164)(v110, v150);
    v112 = v138;
    v113 = v137;
    v114 = v88;
    v115 = v139;
    (*(v138 + 16))(v137, v114, v139);
    v116 = (*(v112 + 80) + 24) & ~*(v112 + 80);
    v117 = swift_allocObject();
    v118 = v154;
    *(v117 + 16) = v154;
    (*(v112 + 32))(v117 + v116, v113, v115);
    v169 = sub_1000A2E5C;
    v170 = v117;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_100007A08;
    v168 = &unk_1008B3070;
    v119 = _Block_copy(&aBlock);
    v120 = v118;

    v121 = v142;
    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_1000A1A48(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags);
    sub_10002849C(&unk_1009729F0);
    sub_100097060(&qword_100976F60, &unk_1009729F0);
    v122 = v144;
    v123 = v147;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v119);

    (*(v146 + 8))(v122, v123);
    (*(v143 + 8))(v121, v145);
    (v164)(v111, v150);
    (*(v155 + 8))(v158, v156);
    (*(v162 + 8))(v159, v161);
    goto LABEL_48;
  }

  (*(v155 + 8))(v158, v156);
LABEL_43:
  (*(v162 + 8))(v76, v161);
LABEL_48:
  sub_1000A244C(v160);
}

uint64_t sub_1000A14F4(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  sub_1000A29A8();
  LOBYTE(a1) = v11;

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

void sub_1000A1718()
{
  sub_1000A17EC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000A17EC()
{
  if (!qword_100972BA0)
  {
    type metadata accessor for PageFacets();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100972BA0);
    }
  }
}

void sub_1000A18B4()
{
  type metadata accessor for PageFacets.Facet();
  if (v0 <= 0x3F)
  {
    sub_1000A1928();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000A1928()
{
  if (!qword_100972C28)
  {
    type metadata accessor for PageFacets.Facet();
    type metadata accessor for PageFacets.Facet.Option();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100972C28);
    }
  }
}

uint64_t sub_1000A19E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1A48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A1A90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = PageFacets.Facet.defaultOptions.getter();
  v5 = sub_10029615C(a1, v4);

  if (v5)
  {
    result = PageFacets.Facet.Option.title.getter();
  }

  else
  {
    result = 0;
    v7 = 0;
  }

  *a2 = result;
  a2[1] = v7;
  return result;
}

void sub_1000A1B0C(uint64_t a1, uint64_t a2)
{
  v55 = type metadata accessor for PageFacets.Facet();
  v50 = *(v55 - 8);
  __chkstk_darwin(v55);
  v51 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = v45 - v6;
  v7 = sub_10002849C(&qword_100972CD8);
  __chkstk_darwin(v7 - 8);
  v52 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v48 = v45 - v10;
    v12 = 0;
    v46 = a1;
    v15 = *(a1 + 64);
    v14 = a1 + 64;
    v13 = v15;
    v16 = 1 << *(v14 - 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v13;
    v19 = (v16 + 63) >> 6;
    v45[0] = v14;
    v45[1] = v50 + 16;
    v53 = (v50 + 32);
    v47 = (v50 + 8);
    while (v18)
    {
      v54 = (v18 - 1) & v18;
      v20 = __clz(__rbit64(v18)) | (v12 << 6);
LABEL_16:
      v25 = v46;
      v26 = v49;
      v27 = v50;
      v28 = v55;
      (*(v50 + 16))(v49, *(v46 + 48) + *(v50 + 72) * v20, v55, v11);
      v29 = *(*(v25 + 56) + 8 * v20);
      v30 = sub_10002849C(&qword_100972CE0);
      v31 = *(v30 + 48);
      v32 = *(v27 + 32);
      v33 = v52;
      v32(v52, v26, v28);
      *(v33 + v31) = v29;
      (*(*(v30 - 8) + 56))(v33, 0, 1, v30);

LABEL_17:
      v34 = v48;
      sub_1000A2F84(v33, v48);
      v35 = sub_10002849C(&qword_100972CE0);
      if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
      {
        return;
      }

      v36 = *(v35 + 48);
      v37 = v51;
      v38 = v55;
      (*v53)(v51, v34, v55);
      v39 = *(v34 + v36);
      sub_1003D7A9C(v37);
      LOBYTE(v36) = v40;
      (*v47)(v37, v38);
      if ((v36 & 1) == 0)
      {

        return;
      }

      sub_10076F0D0(v41, v39);
      v43 = v42;

      v18 = v54;
      if ((v43 & 1) == 0)
      {
        return;
      }
    }

    if (v19 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v19;
    }

    v22 = v21 - 1;
    while (1)
    {
      v23 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v23 >= v19)
      {
        v44 = sub_10002849C(&qword_100972CE0);
        v33 = v52;
        (*(*(v44 - 8) + 56))(v52, 1, 1, v44);
        v54 = 0;
        v12 = v22;
        goto LABEL_17;
      }

      v24 = *(v45[0] + 8 * v23);
      ++v12;
      if (v24)
      {
        v54 = (v24 - 1) & v24;
        v20 = __clz(__rbit64(v24)) | (v23 << 6);
        v12 = v23;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000A1F88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacets.Facet.Option();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v43 - v7;
  v8 = type metadata accessor for PageFacets.Facet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v45 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for PageFacetsViewController.Item(0);
  __chkstk_darwin(v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v43 - v18;
  v20 = sub_10002849C(&qword_100972C78);
  __chkstk_darwin(v20 - 8);
  v22 = &v43 - v21;
  v24 = &v43 + *(v23 + 56) - v21;
  sub_1000A19E4(a1, &v43 - v21);
  sub_1000A19E4(a2, v24);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000A19E4(v22, v19);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v9 + 32))(v13, v24, v8);
      v35 = static PageFacets.Facet.== infix(_:_:)();
      v39 = *(v9 + 8);
      v39(v13, v8);
      v39(v19, v8);
      goto LABEL_11;
    }

    v16 = v19;
    goto LABEL_8;
  }

  sub_1000A19E4(v22, v16);
  v25 = *(sub_10002849C(&qword_100972C60) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v47 + 8))(&v16[v25], v48);
LABEL_8:
    (*(v9 + 8))(v16, v8);
    sub_10002B894(v22, &qword_100972C78);
    goto LABEL_9;
  }

  (*(v9 + 32))(v45, v24, v8);
  v26 = v47;
  v27 = *(v47 + 32);
  v28 = v48;
  v27(v46, &v16[v25], v48);
  v29 = &v24[v25];
  v30 = v44;
  v27(v44, v29, v28);
  v31 = v45;
  v32 = static PageFacets.Facet.== infix(_:_:)();
  v33 = *(v9 + 8);
  v33(v16, v8);
  if (v32)
  {
    v34 = v46;
    v35 = static PageFacets.Facet.Option.== infix(_:_:)();
    v36 = *(v26 + 8);
    v37 = v30;
    v38 = v48;
    v36(v37, v48);
    v36(v34, v38);
    v33(v31, v8);
LABEL_11:
    sub_1000A244C(v22);
    return v35 & 1;
  }

  v41 = *(v26 + 8);
  v42 = v48;
  v41(v30, v48);
  v41(v46, v42);
  v33(v31, v8);
  sub_1000A244C(v22);
LABEL_9:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1000A244C(uint64_t a1)
{
  v2 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000A24A8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_10097CD30);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  v13 = type metadata accessor for PageFacets();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  *&v4[v14] = sub_100398204(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource] = 0;
  v15 = &v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_facetsPresenter] = a1;
  *&v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_objectGraph] = a3;

  PageFacetsPresenter.pageFacets.getter();
  swift_beginAccess();
  sub_1000A2830(v11, &v4[v12]);
  swift_endAccess();

  v16 = PageFacetsPresenter.selectedFacetOptions.getter();

  swift_beginAccess();
  *&v4[v14] = v16;

  v4[OBJC_IVAR____TtC8AppStore24PageFacetsViewController_showDoneButton] = a2;
  v17 = [objc_allocWithZone(UICollectionViewLayout) init];
  v27.receiver = v4;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithCollectionViewLayout:", v17);

  if (a2)
  {
    v19 = [v18 navigationItem];
    sub_100005744(0, &qword_100983870);
    sub_100005744(0, &qword_10097CD40);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v28.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v28.is_nil = 0;
    isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v28, v29).super.super.isa;
    [v19 setRightBarButtonItem:isa];
  }

  v21 = [v18 navigationItem];
  v22._object = 0x80000001007FFD20;
  v22._countAndFlagsBits = 0xD000000000000019;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  localizedString(_:comment:)(v22, v23);
  v24 = String._bridgeToObjectiveC()();

  [v21 setTitle:v24];

  return v18;
}

uint64_t sub_1000A2830(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CD30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000A28A8()
{
  *(v0 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_pageFacets;
  v2 = type metadata accessor for PageFacets();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore24PageFacetsViewController_selectedFacetOptions;
  *(v0 + v3) = sub_100398204(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource) = 0;
  v4 = v0 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_preselectionContentOffset;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000A29A8()
{
  v1 = type metadata accessor for PageFacets.Facet.DisplayType();
  v30 = *(v1 - 8);
  __chkstk_darwin(v1);
  v29 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v29 - v4;
  v6 = type metadata accessor for PageFacets.Facet();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_100972C80);
  __chkstk_darwin(v9 - 8);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PageFacetsViewController.Item(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  v19 = *(v0 + OBJC_IVAR____TtC8AppStore24PageFacetsViewController_diffableDataSource);
  if (v19)
  {
    v20 = v19;
    dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_10002B894(v11, &qword_100972C80);
    }

    else
    {
      sub_1000A2DF8(v11, v18);
      sub_1000A19E4(v18, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v22 = v31;
      v23 = (v31 + 8);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1000A244C(v18);
        v24 = *(sub_10002849C(&qword_100972C60) + 48);
        v25 = type metadata accessor for PageFacets.Facet.Option();
        (*(*(v25 - 8) + 8))(&v15[v24], v25);
        (*v23)(v15, v32);
      }

      else
      {
        (*(v31 + 32))(v8, v15, v32);
        PageFacets.Facet.displayType.getter();
        v27 = v29;
        v26 = v30;
        (*(v30 + 104))(v29, enum case for PageFacets.Facet.DisplayType.toggle(_:), v1);
        sub_1000A1A48(&qword_100972C88, &type metadata accessor for PageFacets.Facet.DisplayType);
        dispatch thunk of static Equatable.== infix(_:_:)();
        v28 = *(v26 + 8);
        v28(v27, v1);
        v28(v5, v1);
        (*(v22 + 8))(v8, v32);
        sub_1000A244C(v18);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A2DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageFacetsViewController.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1000A2E5C()
{
  type metadata accessor for IndexPath();
  v1 = *(v0 + 16);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v1 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_1000A2EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A2F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972CD8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A2FFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097CD30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A307C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002849C(&qword_100972D00);

  return sub_10009EE34(a1, a2, a3);
}

uint64_t sub_1000A3110(uint64_t *a1)
{
  v2 = sub_10002849C(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1000A3194()
{
  sub_10002849C(&qword_100972CF8);
  sub_100005744(0, &qword_100978E10);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

void sub_1000A3230()
{
  type metadata accessor for PageFacets.Facet();

  sub_10009EF68();
}

char *sub_1000A32D0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView;
  v46[0] = sub_100113508;
  v46[1] = 0;
  v46[2] = sub_1005AB608;
  v46[3] = 0;
  v46[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[5] = 0;
  v46[6] = sub_100113508;
  v46[7] = 0;
  v46[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v46[9] = 0;
  v46[10] = sub_100287668;
  v46[11] = 0;
  v47 = 0x4000000000000000uLL;
  v48 = 0;
  v49 = 0x4018000000000000;
  v50 = 0;
  v51 = 1;
  v12 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *&v4[v11] = sub_100550DDC(v46, &v47);
  *&v4[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey] = 0;
  v13 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
  v14 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *&v4[v13] = sub_1001DCC8C(&off_1008AF6C0);
  v15 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *&v5[v15] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode] = 0;
  v16 = &v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  *v16 = 0;
  v16[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] = 7;
  v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory] = 7;
  v17 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  v18 = type metadata accessor for PageGrid();
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning] = 0;
  v19 = &v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType] = 0;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
  v23 = *&v21[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v24 = v21;
  v25 = v23;
  [v25 _setContinuousCornerRadius:20.0];
  v26 = [v25 layer];
  [v26 setMaskedCorners:12];

  [*&v25[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:20.0];
  v27 = *&v24[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType];
  if (v27)
  {
    v28 = *&v21[v22];
    v29 = *&v28[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
    *&v28[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v27;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    v32 = v24[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
    v31 = *&v21[v22];
    if (v32 == 6 && (v33 = [v24 traitCollection], v34 = UITraitCollection.prefersAccessibilityLayouts.getter(), v33, (v34 & 1) == 0))
    {
      v35 = &kCAGradientLayerRadial;
    }

    else
    {
      v35 = &kCAGradientLayerAxial;
    }

    v36 = *v35;
    v29 = *&v31[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
    *&v31[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v36;
    v30 = v36;
  }

  sub_1001DD204();
  [v24 addSubview:*&v21[v22]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView]];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer]];
  sub_10002849C(&qword_10097B110);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1007B10D0;
  *(v37 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v37 + 40) = &protocol witness table for UITraitLayoutDirection;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1007B10D0;
  *(v38 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v38 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v39 = [v24 traitCollection];
  LOBYTE(v38) = UITraitCollection.prefersRightToLeftLayouts.getter();

  v40 = *&v21[v22];
  v41 = 0.13962634;
  if (v38)
  {
    v41 = -0.13962634;
  }

  v42 = *(v40 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle);
  *(v40 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = v41;
  if (v41 != v42)
  {
    sub_1001DD518();
  }

  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1007B10D0;
  *(v43 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v43 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v24;
}

void sub_1000A3894()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "_continuousCornerRadius");
  v5 = v4;
  [v3 _setContinuousCornerRadius:?];
  v6 = [v3 layer];
  [v6 setMaskedCorners:12];

  [*&v3[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView] _setCornerRadius:1 continuous:12 maskedCorners:v5];
  v7 = &v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  if (*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v8 = *(v7 + 1);
    v9 = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(v9, v8);
    swift_unknownObjectRelease();
    v20.receiver = v1;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v11 _setContinuousCornerRadius:?];

    if (*v7)
    {
      v12 = *(v7 + 1);
      v13 = swift_getObjectType();
      v14 = *(v12 + 16);
      swift_unknownObjectRetain();
      v15 = v14(v13, v12);
      swift_unknownObjectRelease();
      v16 = [v15 layer];

      if (v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6)
      {
        v17 = [v1 traitCollection];
        v18 = UITraitCollection.prefersAccessibilityLayouts.getter();

        if (v18)
        {
          v19 = 12;
        }

        else
        {
          v19 = 15;
        }
      }

      else
      {
        v19 = 12;
      }

      [v16 setMaskedCorners:v19];
    }
  }
}

id sub_1000A3B10(id result)
{
  v2 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode;
  v3 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode];
  v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode] = result;
  if (v3 != result)
  {
    v4 = result != 1;
    if (result == 4)
    {
      v4 = 0;
    }

    v5 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
    v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_includeTopGradientFade] = v4;
    if (result == 1 || result == 4)
    {
      [*&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView] removeFromSuperview];
    }

    else
    {
      [v5 insertSubview:*&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientMaskView] aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView]];
    }

    [v5 setHidden:v1[v2] == 4];

    return [v1 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1000A3C18(uint64_t result)
{
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory) = result;
  if (result != 7)
  {
    *(*(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer) + OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory) = result;
    v2 = *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView);
    *(v2 + qword_10098B7C0) = result;
    *(*(v2 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = result;
    *(*(v2 + qword_10098B7E0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_originalSizeCategory) = result;
  }

  return result;
}

void sub_1000A3CB0()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer);
  v2 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning;
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning);
  v4 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning;
  v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] = v3 & 1;
  [v1 setHidden:(v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] == 4) & (v3 ^ 1u)];
  v1[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = (v1[v4] & 1) == 0;
  [v1 setNeedsLayout];
  *(*(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView) + qword_10098B800) = *(v0 + v2);
  sub_100551D80();
}

id sub_1000A3E28(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v167 = a4;
  v9 = a2;
  ObjectType = swift_getObjectType();
  v156 = type metadata accessor for EditorialDisplayOptions();
  v155 = *(v156 - 8);
  __chkstk_darwin(v156);
  v164 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v166 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v168 = &v136 - v15;
  __chkstk_darwin(v16);
  v160 = &v136 - v17;
  v18 = sub_10002849C(&qword_100972DB8);
  __chkstk_darwin(v18 - 8);
  v161 = &v136 - v19;
  v20 = sub_10002849C(&qword_10097DBD0);
  *&v21 = __chkstk_darwin(v20 - 8).n128_u64[0];
  v23 = &v136 - v22;
  v159 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] = a2;
  v24 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
  v24[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = a2;
  v25 = a2;
  if (v9 == 4)
  {
    v26 = v24[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
  }

  else
  {
    v26 = 0;
  }

  [v24 setHidden:{v26 & 1, v21}];
  v27 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
  v27[qword_10098B7B8] = v25;
  sub_10055189C();
  v28 = type metadata accessor for PageGrid();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v23, a3, v28);
  (*(v29 + 56))(v23, 0, 1, v28);
  v30 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v23, &v5[v30]);
  swift_endAccess();
  v31 = a1;
  v32 = TodayCard.titleArtwork.getter();
  if (v32)
  {
    v33 = a1;
    v34 = v167;
    sub_1000A54A8(v32, v33, v25, a3, v167);

    v35 = a3;
    LODWORD(v36) = v25;
    goto LABEL_73;
  }

  v165 = v25;
  v157 = v27;
  v147 = a3;
  TodayCard.media.getter();
  v37 = TodayCardMedia.otdTextStyle.getter();

  v153 = v37;
  v149 = v11;
  v148 = v12;
  if (v37)
  {
    v38 = sub_100113508;
    if (v165 == 4)
    {
      v38 = sub_1000DB5A0;
    }

    v143 = v38;
    v144 = sub_1005AB608;
    v39 = sub_100113508;
    if (v165 == 4)
    {
      v39 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    }

    v145 = v39;
  }

  else if (v165 == 4)
  {
    v143 = sub_1000DB5A0;
    v144 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
    v145 = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  }

  else
  {
    v145 = sub_100113508;
    v144 = sub_1005AB608;
    v143 = sub_100113508;
  }

  v40 = TodayCard.heading.getter();
  v152 = v41;
  v142 = TodayCard.title.getter();
  v158 = v42;
  v139 = TodayCard.shortTitle.getter();
  v150 = v43;
  v44 = v161;
  TodayCard.titleCharacteristics.getter();
  v45 = type metadata accessor for StringCharacteristics();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  v46 = TodayCard.inlineDescription.getter();
  v154 = v47;
  TodayCard.style.getter();
  TodayCard.editorialDisplayOptions.getter();
  v48 = TodayCard.overlay.getter();
  v146 = v31;
  v141 = v46;
  if (!v48)
  {
    goto LABEL_22;
  }

  type metadata accessor for TodayCardLockupOverlay();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for TodayCardMarketingLockupOverlay();
    if (swift_dynamicCastClass())
    {
      TodayCardMarketingLockupOverlay.lockup.getter();
      goto LABEL_20;
    }

LABEL_22:
    v140 = 0;
    v151 = 0;
    goto LABEL_23;
  }

  TodayCardLockupOverlay.lockup.getter();
LABEL_20:
  v140 = Lockup.title.getter();
  v151 = v49;

LABEL_23:
  v50 = v165;
  v51 = v157;
  v157[qword_10098B7E8] = v153 & 1;
  v52 = *&v51[qword_10098B7D0];
  *(v52 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v53 = *&v51[qword_10098B7C8];
  sub_10006E7C4(v40, v152);
  v54 = EditorialDisplayOptions.showBadgeInSmallCards.getter();
  v55 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v56 = *&v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v50 != 4 || (v54 & 1) != 0)
  {
    v57 = [v56 text];
    if (v57)
    {
      v58 = v57;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v59 = v157;
    v60 = static String.isNilOrEmpty(_:)();
    v61 = v60 & 1;

    if (v61 == [*&v53[v55] isHidden] || (v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:v61];
    }

    else
    {
      if ((v60 & 1) == 0)
      {
        [*&v53[v55] setAlpha:0.0];
        v62 = objc_opt_self();
        [v62 inheritedAnimationDuration];
        v64 = v63;
        v65 = swift_allocObject();
        *(v65 + 16) = v53;
        v173 = sub_1000A9214;
        v174 = v65;
        aBlock = _NSConcreteStackBlock;
        v170 = 1107296256;
        v138 = v60;
        v171 = sub_100007A08;
        v172 = &unk_1008B3418;
        v137 = _Block_copy(&aBlock);
        v66 = v53;

        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        v173 = sub_1000A9220;
        v174 = v67;
        v59 = v157;
        aBlock = _NSConcreteStackBlock;
        v170 = 1107296256;
        v171 = sub_100504C5C;
        v172 = &unk_1008B3468;
        v68 = _Block_copy(&aBlock);
        v69 = v66;
        LOBYTE(v60) = v138;

        v70 = v62;
        v71 = v137;
        [v70 animateWithDuration:0 delay:v137 options:v68 animations:v64 completion:0.0];
        _Block_release(v68);
        _Block_release(v71);
      }

      [*&v53[v55] setHidden:v60 & 1];
      v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }
  }

  else
  {
    if (([v56 isHidden] & 1) != 0 || (v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
    {
      [*&v53[v55] setHidden:1];
    }

    else
    {
      [*&v53[v55] setHidden:1];
      v53[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
      [v53 setNeedsLayout];
    }

    v59 = v157;
  }

  v72 = &v59[qword_10098B7F0];
  *v72 = v143;
  v72[1] = 0;
  v72[2] = v144;
  v72[3] = 0;
  v72[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[5] = 0;
  v72[6] = v145;
  v72[7] = 0;
  v72[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v72[9] = 0;
  v72[10] = sub_100287668;
  v72[11] = 0;

  sub_100551950();
  v73 = v154;
  v74 = v52;
  if (v158)
  {
    if (v153)
    {
      if (v165 != 4)
      {
        sub_100552D28(v161);
        v75 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
        [*(v52 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setAdjustsFontSizeToFitWidth:1];
        [*(v52 + v75) setMinimumScaleFactor:0.75];
        v76 = objc_allocWithZone(NSAttributedString);
        v77 = String._bridgeToObjectiveC()();
        type metadata accessor for Key(0);
        sub_1000A8C00(&qword_100976620, type metadata accessor for Key);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v79 = [v76 initWithString:v77 attributes:isa];

        v74 = v52;
        v80 = *(v52 + v75);
        v59 = v157;
        [v80 setAttributedText:v79];

        goto LABEL_53;
      }
    }

    else if (v165 != 4)
    {
      sub_10055321C();
      goto LABEL_45;
    }

    sub_1005531F8();
LABEL_45:
    LODWORD(v145) = v165 != 4;
    v81 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    v82 = *(v52 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
    v83 = objc_allocWithZone(NSAttributedString);
    v84 = v82;
    v85 = String._bridgeToObjectiveC()();
    type metadata accessor for Key(0);
    sub_1000A8C00(&qword_100976620, type metadata accessor for Key);
    v86 = Dictionary._bridgeToObjectiveC()().super.isa;
    v74 = v52;

    v87 = [v83 initWithString:v85 attributes:v86];

    [v84 setAttributedText:v87];
    [*(v52 + v81) setAdjustsFontSizeToFitWidth:0];
    [*(v52 + v81) setMinimumScaleFactor:0.0];
    [*(v52 + v81) setAttributedText:0];
    if (v145 & 1 | ((v153 & 1) == 0) || !v151)
    {
      v59 = v157;
      v73 = v154;
      if (v150 && v157[qword_10098B7C0] == 4)
      {
        if (v165 == 4)
        {
          sub_10006E8BC(v142, v158, v139, v150);
        }

        else
        {
          sub_10006E8BC(v139, v150, v142, v158);
        }
      }

      else
      {
        sub_10006E7C4(v142, v158);
      }
    }

    else
    {
      sub_10006E7C4(v140, v151);
      v59 = v157;
      v73 = v154;
    }
  }

LABEL_53:
  v88 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v89 = *(v74 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v90 = [v89 text];
  if (v90 || (v90 = [*(v74 + v88) attributedText]) != 0)
  {

    v91 = 0;
  }

  else
  {
    v91 = 1;
  }

  v92 = v165;
  [v89 setHidden:v91];

  [v59 setNeedsLayout];
  v93 = *&v59[qword_10098B7D8];
  [v93 setImage:0];
  [v93 setHidden:1];
  if (v92 != 4 && (EditorialDisplayOptions.suppressTagline.getter() & 1) == 0 && v73)
  {
    v98 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v98 = v141 & 0xFFFFFFFFFFFFLL;
    }

    v97 = v98 == 0;
    v94 = *&v59[qword_10098B7E0];
    v95 = &v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    v96 = *&v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
    goto LABEL_64;
  }

  v94 = *&v59[qword_10098B7E0];
  v95 = &v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v96 = *&v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  if (v73)
  {
    v97 = 1;
LABEL_64:
    v99 = v96;
    v73 = String._bridgeToObjectiveC()();
    goto LABEL_66;
  }

  v99 = v96;
  v97 = 1;
LABEL_66:
  [v99 setText:v73];

  if (v97 == [*v95 isHidden] || (v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning] & 1) == 0)
  {
    [*v95 setHidden:v97];
  }

  else
  {
    if (!v97)
    {
      [*v95 setAlpha:0.0];
      v100 = objc_opt_self();
      [v100 inheritedAnimationDuration];
      v102 = v101;
      v103 = swift_allocObject();
      *(v103 + 16) = v94;
      v173 = sub_1000A8B90;
      v174 = v103;
      aBlock = _NSConcreteStackBlock;
      v170 = 1107296256;
      v171 = sub_100007A08;
      v172 = &unk_1008B3378;
      v104 = _Block_copy(&aBlock);
      v105 = v94;

      v106 = swift_allocObject();
      *(v106 + 16) = v105;
      v173 = sub_1000A8B98;
      v174 = v106;
      v59 = v157;
      aBlock = _NSConcreteStackBlock;
      v170 = 1107296256;
      v171 = sub_100504C5C;
      v172 = &unk_1008B33C8;
      v107 = _Block_copy(&aBlock);
      v108 = v105;

      [v100 animateWithDuration:0 delay:v104 options:v107 animations:v102 completion:0.0];
      _Block_release(v107);
      _Block_release(v104);
    }

    [*v95 setHidden:v97];
    v94[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout] = 1;
    [v94 setNeedsLayout];
  }

  v34 = v167;
  v11 = v149;
  v109 = v160;
  sub_100550798(v160, 1);
  [v59 setNeedsLayout];

  (*(v155 + 8))(v164, v156);
  v12 = v148;
  (*(v148 + 8))(v109, v11);
  sub_10002B894(v161, &qword_100972DB8);
  [v5 setNeedsLayout];
  v35 = v147;
  LODWORD(v36) = v165;
  v31 = v146;
LABEL_73:
  sub_1005D6674(v31, v35, v36, v34);
  v110 = v166;
  if (*&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v111 = v31;
    v112 = v12;
    v113 = v36;
    v36 = v11;
    v114 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    v115 = swift_getObjectType();
    v116 = *(v114 + 16);
    swift_unknownObjectRetain();
    v117 = v116(v115, v114);
    swift_unknownObjectRelease();
    v118 = [v117 layer];

    if (v5[v159] == 6)
    {
      v119 = v5;
      v120 = [v5 traitCollection];
      v121 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v121)
      {
        v122 = 12;
      }

      else
      {
        v122 = 15;
      }
    }

    else
    {
      v119 = v5;
      v122 = 12;
    }

    [v118 setMaskedCorners:v122];

    v11 = v36;
    LOBYTE(v36) = v113;
    v12 = v112;
    v5 = v119;
    v31 = v111;
    v110 = v166;
  }

  v162 = v5;
  TodayCard.style.getter();
  (*(v12 + 104))(v110, enum case for TodayCard.Style.white(_:), v11);
  sub_1000A8C00(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v123 = v110;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v175 && v170 == v176)
  {
    v124 = v31;
    v125 = 1;
  }

  else
  {
    v124 = v31;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v125 = 1;
    }

    else
    {
      v125 = 2;
    }
  }

  v126 = *(v12 + 8);
  v126(v123, v11);
  v126(v168, v11);

  v127 = v162;
  [v162 setOverrideUserInterfaceStyle:v125];
  v128 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v129 = swift_allocObject();
  swift_weakInit();
  v130 = swift_allocObject();
  *(v130 + 16) = v128;
  *(v130 + 24) = v129;
  *(v130 + 32) = v124;
  *(v130 + 40) = v36;
  *(v130 + 48) = ObjectType;
  v131 = &v127[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  v132 = *&v127[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  *v131 = sub_1000A8B7C;
  v131[1] = v130;

  sub_10001F63C(v132);
  v133 = *v131;
  if (*v131)
  {

    (v133)(v134);

    sub_10001F63C(v133);
  }

  else
  {
  }

  return [v127 setNeedsLayout];
}

uint64_t sub_1000A54A8(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v64 = a5;
  v10 = a3;
  v11 = type metadata accessor for EditorialDisplayOptions();
  v61 = *(v11 - 8);
  v62 = v11;
  __chkstk_darwin(v11);
  v70 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TodayCard.Style();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v69 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v57 - v16;
  if (v10 == 4)
  {
    v18 = 5;
  }

  else
  {
    v18 = a3;
  }

  v19 = [v6 traitCollection];
  sub_100467918(v18, a4, v19);
  sub_100699534(v18);
  v65 = Artwork.config(_:mode:prefersLayeredImage:)();

  v20 = [v6 traitCollection];
  sub_100467918(a3, a4, v20);
  sub_100699534(a3);
  v21 = Artwork.config(_:mode:prefersLayeredImage:)();

  v67 = v6;
  v22 = *&v6[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
  v23 = &v22[qword_10098B7B0];
  v24 = *&v22[qword_10098B7B0];
  v25 = *&v22[qword_10098B7B0 + 32];
  v26 = v22[qword_10098B7B0 + 40];
  v63 = v21;
  ArtworkLoaderConfig.size.getter();
  *v23 = v24;
  *(v23 + 1) = v27;
  *(v23 + 2) = v28;
  *(v23 + 3) = 0x402C000000000000;
  *(v23 + 4) = v25;
  v23[40] = v26;
  [v22 setNeedsLayout];
  v29 = qword_10098B7D8;
  v30 = [*&v22[qword_10098B7D8] image];
  v68 = TodayCard.inlineDescription.getter();
  v32 = v31;
  v58 = v17;
  TodayCard.style.getter();
  v66 = a2;
  TodayCard.editorialDisplayOptions.getter();
  v33 = qword_10098B7C8;
  [*(*&v22[qword_10098B7C8] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
  v34 = qword_10098B7D0;
  [*(*&v22[qword_10098B7D0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
  v35 = *&v22[v29];
  v57 = v30;
  [v35 setImage:v30];
  v36 = qword_10098B7E0;
  v37 = *(*&v22[qword_10098B7E0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v38 = v37;
  if (v32)
  {
    v39 = String._bridgeToObjectiveC()();
  }

  else
  {
    v39 = 0;
  }

  [v37 setText:v39];

  [*(*&v22[v33] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
  [*(*&v22[v34] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
  [*&v22[v29] setHidden:0];
  v40 = *(*&v22[v36] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v41 = v70;
  v42 = EditorialDisplayOptions.suppressTagline.getter();
  v43 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v43 = v68 & 0xFFFFFFFFFFFFLL;
  }

  v44 = v43 == 0;
  if (v42)
  {
    v44 = 1;
  }

  if (v32)
  {
    v45 = v44;
  }

  else
  {
    v45 = 1;
  }

  [v40 setHidden:v45];

  sub_100551950();
  v46 = v59;
  v47 = v60;
  (*(v59 + 104))(v69, enum case for TodayCard.Style.white(_:), v60);
  sub_1000A8C00(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
  v48 = v58;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v71[0] == v72 && v71[1] == v73)
  {
    v49 = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v49 = 1;
  }

  else
  {
    v49 = 2;
  }

  v50 = *(v46 + 8);
  v50(v69, v47);

  [v22 setOverrideUserInterfaceStyle:v49];
  sub_100551E70();
  [v22 setNeedsLayout];

  (*(v61 + 8))(v41, v62);
  v50(v48, v47);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v51 = v67;
  v52 = v65;
  *&v67[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey] = v65;

  v72 = v22;
  type metadata accessor for TodayCardLabelsView();
  sub_1000A8C00(&qword_100972DB0, type metadata accessor for TodayCardLabelsView);
  v53 = v22;
  AnyHashable.init<A>(_:)();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v52;
  v55[4] = v66;

  ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

  sub_10002B894(v71, &qword_10096FB90);

  [v51 setNeedsLayout];
}

void sub_1000A5C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_weakLoadStrong();
    if (v6)
    {
      v7 = sub_1000A866C(a3, v6);
      sub_1000A3B10(v7);
      v8 = [v5 traitCollection];
      v9 = sub_1000A88D4();
      v11 = v10;

      v12 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
      v13 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
      sub_1001DC19C(a3, v9, v11);

      v14 = *&v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType];
      if (v14)
      {
        v15 = *&v5[v12];
        v16 = *&v15[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
        *&v15[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v14;
        v17 = v14;
        v18 = v15;
      }

      else
      {
        v19 = v5[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
        v18 = *&v5[v12];
        if (v19 == 6 && (v20 = [v5 traitCollection], v21 = UITraitCollection.prefersAccessibilityLayouts.getter(), v20, (v21 & 1) == 0))
        {
          v22 = &kCAGradientLayerRadial;
        }

        else
        {
          v22 = &kCAGradientLayerAxial;
        }

        v23 = *v22;
        v16 = *&v18[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType];
        *&v18[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientType] = v23;
        v17 = v23;
      }

      sub_1001DD204();
      [v5 setNeedsLayout];
    }

    else
    {
    }
  }
}

void sub_1000A5E10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for EditorialDisplayOptions();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v53 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayCard.Style();
  v50 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = *(Strong + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey);

    if (v19)
    {
      v58 = v19;
      v54 = a6;
      type metadata accessor for ArtworkLoaderConfig();
      sub_1000A8C00(&qword_100972DC8, &type metadata accessor for ArtworkLoaderConfig);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v20)
      {
        if (a4)
        {
          v21 = 0;
        }

        else
        {
          v21 = a1;
        }

        swift_beginAccess();
        v22 = swift_unknownObjectWeakLoadStrong();
        v23 = &StringUserDefaultsDebugSetting;
        if (v22)
        {
          v24 = v22;
          v25 = *(v22 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView);

          v26 = TodayCard.inlineDescription.getter();
          v28 = v27;
          TodayCard.style.getter();
          v29 = v28;
          TodayCard.editorialDisplayOptions.getter();
          v48 = qword_10098B7C8;
          [*(*&v25[qword_10098B7C8] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
          v47 = qword_10098B7D0;
          [*(*&v25[qword_10098B7D0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setText:0];
          v30 = qword_10098B7D8;
          v31 = *&v25[qword_10098B7D8];
          v49 = v21;
          [v31 setImage:v21];
          v32 = qword_10098B7E0;
          v33 = *(*&v25[qword_10098B7E0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
          v46 = v26;
          v34 = v33;
          if (v29)
          {
            v35 = v29;
            v29 = String._bridgeToObjectiveC()();
          }

          else
          {
            v35 = 0;
          }

          [v33 setText:{v29, v46}];

          [*(*&v25[v48] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
          [*(*&v25[v47] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setHidden:1];
          [*&v25[v30] setHidden:0];
          v36 = *(*&v25[v32] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
          v37 = EditorialDisplayOptions.suppressTagline.getter();
          v38 = HIBYTE(v35) & 0xF;
          if ((v35 & 0x2000000000000000) == 0)
          {
            v38 = v46 & 0xFFFFFFFFFFFFLL;
          }

          v39 = v38 == 0;
          if (v37)
          {
            v39 = 1;
          }

          v48 = v35;
          if (v35)
          {
            v40 = v39;
          }

          else
          {
            v40 = 1;
          }

          [v36 setHidden:v40];

          sub_100551950();
          v41 = v50;
          (*(v50 + 104))(v13, enum case for TodayCard.Style.white(_:), v11);
          sub_1000A8C00(&qword_100972DC0, &type metadata accessor for TodayCard.Style);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v54 == v56 && v55 == v57)
          {
            v42 = 1;
          }

          else if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            v42 = 1;
          }

          else
          {
            v42 = 2;
          }

          v43 = *(v41 + 8);
          v43(v13, v11);

          [v25 setOverrideUserInterfaceStyle:v42];
          sub_100551E70();
          v23 = &StringUserDefaultsDebugSetting;
          [v25 setNeedsLayout];

          (*(v51 + 8))(v53, v52);
          v43(v16, v11);

          v21 = v49;
        }

        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();
        if (v44)
        {
          v45 = v44;
          [v44 v23[41].base_meths];
        }
      }
    }
  }
}

id sub_1000A63B4(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097DBD0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v29[-v8];
  v10 = a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
  v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] = v10;
  if (v10 != 7)
  {
    v11 = *&v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
    v11[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = v10;
    if (v10 == 4)
    {
      v12 = v11[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isTransitioning] ^ 1;
    }

    else
    {
      v12 = 0;
    }

    [v11 setHidden:{v12 & 1, v7}];
    *(*&v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView] + qword_10098B7B8) = v10;
    sub_10055189C();
  }

  v13 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_1000A833C(&a1[v13], v9);
  v14 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  swift_beginAccess();
  sub_1000A83AC(v9, &v3[v14]);
  swift_endAccess();
  sub_1005533F0(*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView]);
  v15 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay];
  if (v15 && *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v16 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    v17 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v19 = *(v16 + 120);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v19(v15, v17, a2 & 1, ObjectType, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  sub_1000A3B10(a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode]);
  [v3 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  v20 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v21 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  v22 = *(v21 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style);
  v23 = *(v21 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_style + 8);

  sub_1001DC428(v22, v23);
  v24 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle;
  *(v20 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle) = *(v21 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_blurUserInterfaceStyle);
  v25 = OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView;
  v26 = *(v20 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_effectsView);

  sub_100005744(0, &qword_10097FB70);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v26 setBackgroundEffects:isa];

  [*(v20 + v25) setOverrideUserInterfaceStyle:*(v20 + v24)];
  return [v3 setNeedsLayout];
}

id sub_1000A66D4()
{
  v1 = v0;
  sub_1003CC15C();
  [*(*(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView) + qword_10098B7D8) setImage:0];
  sub_10006EAAC();
  sub_10006EAAC();
  sub_10006EAAC();
  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock);
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  v4 = *v2;
  if (*v2)
  {

    v4(v5);
    sub_10001F63C(v4);
  }

  v6 = *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer);
  sub_1006865EC();
  v6[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_isLayoutRequired] = 1;
  v6[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_sizeCategory] = 5;
  result = [v6 setHidden:0];
  v6[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_originalSizeCategory] = 5;
  return result;
}

uint64_t sub_1000A6820()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, "layoutSubviews");
  v2 = [v0 traitCollection];
  v3 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  sub_1000A805C(v2, v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory], &v25);
  v4 = v28;

  v5 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
  v6 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
  v7 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind];
  v8 = v1[v3];
  v9 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind + 8];
  v10 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory];
  v11 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded];
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = v27;
  *&v35 = v4;
  *(&v35 + 1) = v5;
  *v36 = v6;
  *&v36[8] = v7;
  v36[16] = v9;
  v36[17] = v8;
  v36[18] = v10;
  v36[19] = v11;
  v36[20] = 0;
  v29 = v25;
  v30 = v26;
  *(v33 + 13) = *&v36[13];
  v32 = v35;
  v33[0] = *v36;
  v31 = v27;
  v12 = v5;
  v13 = v6;
  [v1 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = [v1 traitCollection];
  sub_1006D05F8(v22, v15, v17, v19, v21);

  sub_1000A69C4();
  return sub_1000A8C48(v34);
}

void sub_1000A69C4()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_10097DBD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v70 - v6;
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v70 - v14;
  v16 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode];
  if (v16 > 1)
  {
    if (v16 != 2)
    {
      if (v16 != 3)
      {
        return;
      }

      v17 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
      v18 = 0.0;
      if (v17 != 7)
      {
        v19 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
        swift_beginAccess();
        sub_1000A833C(&v1[v19], v4);
        if ((*(v9 + 48))(v4, 1, v8) == 1)
        {
          sub_10002B894(v4, &qword_10097DBD0);
        }

        else
        {
          (*(v9 + 32))(v11, v4, v8);
          v55 = [v1 traitCollection];
          v73.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
          v73.value._rawValue = 0;
          isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v73, v75).super.isa;

          sub_1004674A4(v17, v11, isa);
          v18 = v57;

          (*(v9 + 8))(v11, v8);
        }
      }

      v58 = [v1 traitCollection];
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      v59 = sub_1002D2EF4(v58, &xmmword_1009D3ED0, 1);
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v61 = v60;
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v63 = v62;

      [v1 bounds];
      v64 = CGRectGetMaxY(v81) - (v59 + v61 + v63);
      v65 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView];
      [v65 frame];
      if (v64 >= CGRectGetMinY(v82))
      {
        [v65 frame];
        MinY = CGRectGetMinY(v83);
        v64 = MinY + sub_1005502C4();
      }

      if (v18 >= v64)
      {
        v47 = v64;
      }

      else
      {
        v47 = v18;
      }

      goto LABEL_40;
    }

LABEL_8:
    [*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView] frame];
    v20 = CGRectGetMinY(v76);
    v21 = v20 + sub_1005502C4();
    [v1 bounds];
    MaxY = CGRectGetMaxY(v77);
    if (*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
    {
      v23 = MaxY;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {

LABEL_15:
        if (v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6)
        {
          v37 = v23 + -75.0;
          v38 = [v1 traitCollection];
          v39 = UITraitCollection.prefersAccessibilityLayouts.getter();

          if ((v39 & 1) == 0)
          {
            v21 = v37;
          }
        }

        goto LABEL_18;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v40 = v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
    v41 = 0.0;
    if (v40 != 7)
    {
      v42 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
      swift_beginAccess();
      sub_1000A833C(&v1[v42], v7);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_10002B894(v7, &qword_10097DBD0);
      }

      else
      {
        (*(v9 + 32))(v15, v7, v8);
        v43 = [v1 traitCollection];
        v72.is_nil = UIContentSizeCategoryExtraExtraExtraLarge;
        v72.value._rawValue = 0;
        v44 = UITraitCollection.clampingContentSizeCategory(min:max:)(v72, v74).super.isa;

        sub_1004674A4(v40, v15, v44);
        v41 = v45;

        (*(v9 + 8))(v15, v8);
      }
    }

    if (v41 < v21 && v16 == 2)
    {
      v47 = v41;
    }

    else
    {
      v47 = v21;
    }

LABEL_40:
    sub_1000A8C9C(v1, v47);
    return;
  }

  if (!v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode])
  {
    goto LABEL_8;
  }

  if (*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    [*&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer] frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
  }

  else
  {
    v29 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
    v35 = 0.0;
  }

  v48 = *&v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  [v1 bounds];
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v29;
  v79.origin.y = v31;
  v79.size.width = v33;
  v79.size.height = v35;
  v50 = CGRectGetMinY(v79);
  v51 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  if (v1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory] == 6 && (v52 = [v1 traitCollection], v53 = UITraitCollection.prefersAccessibilityLayouts.getter(), v52, (v53 & 1) == 0))
  {
    Width = 570.0;
  }

  else
  {
    v80.origin.x = v29;
    v80.origin.y = v31;
    v80.size.width = v33;
    v80.size.height = v35;
    Width = CGRectGetWidth(v80);
  }

  if (v1[v51] == 6 && (v67 = [v1 traitCollection], v68 = UITraitCollection.prefersAccessibilityLayouts.getter(), v67, (v68 & 1) == 0))
  {
    Height = 325.0;
  }

  else
  {
    v84.origin.x = v29;
    v84.origin.y = v31;
    v84.size.width = v33;
    v84.size.height = v35;
    Height = CGRectGetHeight(v84);
  }

  [v48 setFrame:{MinX, v50, Width, Height}];
}

id sub_1000A71C4(uint64_t a1, double a2, double a3)
{
  if (*&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay])
  {
    v4 = v3;
    v8 = *&v3[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8];
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 16);
    swift_unknownObjectRetain();
    v11 = v10(ObjectType, v8);
    swift_unknownObjectRelease();
    [v4 convertPoint:v11 toCoordinateSpace:{a2, a3}];
    v13 = v12;
    v15 = v14;
    if ([v11 pointInside:a1 withEvent:?])
    {
      v16 = [v11 hitTest:a1 withEvent:{v13, v15}];

      return v16;
    }
  }

  return 0;
}

uint64_t sub_1000A735C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay))
  {
    v3 = *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay + 8);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 128);
    swift_unknownObjectRetain();
    v5(a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;

  v6 = *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView);
  type metadata accessor for TodayCardLabelsView();
  sub_1000A8C00(&qword_100972DB0, type metadata accessor for TodayCardLabelsView);
  v7 = v6;
  AnyHashable.init<A>(_:)();
  ArtworkLoader.forgetFetch(forHandlerKey:deprioritizingFetch:)();
  return sub_10003D614(v9);
}

uint64_t type metadata accessor for TodayCardInfoLayerView()
{
  result = qword_100972D98;
  if (!qword_100972D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A76C8()
{
  sub_1000A77BC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000A77BC()
{
  if (!qword_100977370)
  {
    type metadata accessor for PageGrid();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100977370);
    }
  }
}

uint64_t getEnumTagSinglePayload for TodayCardInfoLayerView.ProtectionMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayCardInfoLayerView.ProtectionMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A7968()
{
  result = qword_100972DA8;
  if (!qword_100972DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100972DA8);
  }

  return result;
}

uint64_t sub_1000A79D4(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1000A7A24(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  *v3 = a1;
  v3[1] = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_1000A7A50()
{
  swift_weakAssign();
}

void sub_1000A7ACC(char *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 != [a2 layoutDirection])
  {
    v6 = [a1 traitCollection];
    v7 = UITraitCollection.prefersRightToLeftLayouts.getter();

    v8 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
    v9 = 0.13962634;
    if (v7)
    {
      v9 = -0.13962634;
    }

    v10 = *(v8 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle);
    *(v8 + OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_rotationAngle) = v9;
    if (v9 != v10)
    {
      sub_1001DD518();
    }
  }
}

id sub_1000A7BA8(char *a1)
{
  sub_1000A3894();
  v2 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock];
  if (v2)
  {

    v2(v3);
    sub_10001F63C(v2);
  }

  return [a1 setNeedsLayout];
}

uint64_t sub_1000A7C28(uint64_t a1)
{
  v2 = type metadata accessor for TodayCard.Style();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0.1;
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
    goto LABEL_8;
  }

  if (v7 == enum case for TodayCard.Style.dark(_:))
  {
    v10 = &selRef_whiteColor;
    v8 = 0.16;
LABEL_9:
    v11 = [objc_opt_self() *v10];
    v12 = [v11 colorWithAlphaComponent:v8];

    return v12;
  }

  if (v7 == enum case for TodayCard.Style.light(_:))
  {
LABEL_8:
    v10 = &selRef_blackColor;
    goto LABEL_9;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(44);

  v15 = 0xD00000000000002ALL;
  v16 = 0x80000001007FFFC0;
  v14._countAndFlagsBits = TodayCard.Style.rawValue.getter();
  String.append(_:)(v14);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id sub_1000A7E58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = *&v2[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer];
  sub_1006865EC();
  if (a1)
  {
    v8 = swift_getObjectType();
    v9 = *(a2 + 16);
    swift_unknownObjectRetain();
    v10 = v9(v8, a2);
    v11 = OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView;
    v12 = *&v7[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView];
    *&v7[OBJC_IVAR____TtC8AppStore29InfoLayerOverlayContainerView_overlayView] = v10;
    v13 = v10;

    [v13 setAnchorPoint:{0.0, 1.0}];
    v14 = *&v7[v11];
    if (v14)
    {
      v21[0] = 0x3FF0000000000000;
      v21[1] = 0;
      v21[2] = 0;
      v21[3] = 0x3FF0000000000000;
      v21[4] = 0;
      v21[5] = 0;
      [v14 setTransform:v21];
    }

    [v7 addSubview:v13];
    [v13 setOverrideUserInterfaceStyle:{objc_msgSend(v3, "overrideUserInterfaceStyle")}];
    v20.receiver = v3;
    v20.super_class = ObjectType;
    objc_msgSendSuper2(&v20, "_continuousCornerRadius");
    [v13 _setContinuousCornerRadius:?];
    v15 = [v13 layer];
    if (*(v3 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) == 6)
    {
      v16 = [v3 traitCollection];
      v17 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if (v17)
      {
        v18 = 12;
      }

      else
      {
        v18 = 15;
      }
    }

    else
    {
      v18 = 12;
    }

    [v15 setMaskedCorners:v18];
    swift_unknownObjectRelease();
  }

  return [v3 setNeedsLayout];
}

double sub_1000A805C@<D0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    v6 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v9 = v8;
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v11 = v6 + v9 + v10;
    __asm { FMOV            V0.2D, #16.0 }

LABEL_16:
    *&_Q0 = v11;
    v26 = 16.0;
    goto LABEL_17;
  }

  if (a2 == 6)
  {
    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    v17 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v24 = v23;
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    __asm { FMOV            V0.2D, #30.0 }

    *&_Q0 = v17 + v24 + v25;
    v26 = 30.0;
  }

  else
  {
    if (a2 == 4)
    {
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      v7 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v20 = v19;
      UITraitCollection.prefersAccessibilityLayouts.getter();
      static UIEdgeInsets.vertical(top:bottom:)();
      v11 = v7 + v20 + v21;
      __asm { FMOV            V0.2D, #12.0 }

      goto LABEL_16;
    }

    if (qword_10096EFE0 != -1)
    {
      swift_once();
    }

    v18 = sub_1002D2EF4(a1, &xmmword_1009D3ED0, 1);
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    v28 = v27;
    UITraitCollection.prefersAccessibilityLayouts.getter();
    static UIEdgeInsets.vertical(top:bottom:)();
    __asm { FMOV            V0.2D, #20.0 }

    *&_Q0 = v18 + v28 + v29;
    v26 = 20.0;
  }

LABEL_17:
  *a3 = _Q0;
  *(a3 + 16) = v26;
  *(a3 + 24) = xmmword_1007B3E20;
  result = 353.0;
  *(a3 + 40) = xmmword_1007B3E30;
  return result;
}

uint64_t sub_1000A833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097DBD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A83AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10097DBD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000A841C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsView;
  v12[0] = sub_100113508;
  v12[1] = 0;
  v12[2] = sub_1005AB608;
  v12[3] = 0;
  v12[4] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[5] = 0;
  v12[6] = sub_100113508;
  v12[7] = 0;
  v12[8] = variable initialization expression of CondensedEditorialSearchResultContentView.iconGrid;
  v12[9] = 0;
  v12[10] = sub_100287668;
  v12[11] = 0;
  v13 = 0x4000000000000000uLL;
  v14 = 0;
  v15 = 0x4018000000000000;
  v16 = 0;
  v17 = 1;
  v3 = objc_allocWithZone(type metadata accessor for TodayCardLabelsView());
  *(v0 + v2) = sub_100550DDC(v12, &v13);
  *(v0 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_labelsArtworkFetchKey) = 0;
  v4 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView;
  v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
  *(v0 + v4) = sub_1001DCC8C(&off_1008AF6C0);
  v6 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayContainer;
  type metadata accessor for InfoLayerOverlayContainerView();
  *(v1 + v6) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionMode) = 0;
  v7 = (v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_protectionUpdateBlock);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) = 7;
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_originalSizeCategory) = 7;
  v8 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_pageGrid;
  v9 = type metadata accessor for PageGrid();
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isTransitioning) = 0;
  v10 = v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlayKind;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_overlay);
  *v11 = 0;
  v11[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000A866C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = a2;
  v4 = type metadata accessor for EditorialDisplayOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  TodayCard.editorialDisplayOptions.getter();
  v8 = EditorialDisplayOptions.suppressLockup.getter();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if ((v8 & 1) != 0 || !TodayCard.overlay.getter())
  {
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  v11 = [v3 traitCollection];
  v12 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v12)
  {
    TodayCard.editorialDisplayOptions.getter();
    v13 = EditorialDisplayOptions.suppressLockup.getter();
    v9(v7, v4);
    if ((v13 & 1) == 0 && TodayCard.overlay.getter() && (, type metadata accessor for TodayCardOverlayReusePool(), BaseObjectGraph.optional<A>(_:)(), v19[1]))
    {

      return 3;
    }

    else
    {
      return 2;
    }
  }

  else if (v10 && (*(v3 + OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory) != 6 || (v15 = [v3 traitCollection], v16 = UITraitCollection.prefersAccessibilityLayouts.getter(), v15, (v16 & 1) != 0)))
  {
    TodayCard.editorialDisplayOptions.getter();
    v17 = EditorialDisplayOptions.useMaterialBlur.getter();
    v9(v7, v4);
    return (v17 & 1) == 0;
  }

  else
  {
    TodayCard.editorialDisplayOptions.getter();
    v18 = EditorialDisplayOptions.useMaterialBlur.getter();
    v9(v7, v4);
    if (v18)
    {
      return 0;
    }

    else
    {
      return 4;
    }
  }
}

id sub_1000A88D4()
{
  TodayCard.media.getter();
  type metadata accessor for TodayCardMediaAppEvent();
  if (!swift_dynamicCastClass())
  {

    v7 = TodayCard.media.getter();
    type metadata accessor for TodayCardMedia();
    sub_10002849C(&qword_100972DD0);
    if (swift_dynamicCast())
    {
      sub_100005A38(v5, v8);
      sub_10002A400(v8, v8[3]);
      if (TodayCardMediaWithArtwork.video(for:)())
      {

        if (qword_10096D350 != -1)
        {
          swift_once();
        }

        v1 = qword_1009CE710;

        sub_100007000(v8);
        return v1;
      }

      sub_100007000(v8);
    }

    else
    {
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_10002B894(v5, &qword_100972DD8);
    }

    if (qword_10096D340 != -1)
    {
      swift_once();
    }

    v1 = xmmword_1009CE6F0;

    return v1;
  }

  v0 = TodayCardMediaAppEvent.tintColor.getter();
  sub_10002849C(&qword_100973210);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007B0B70;
  sub_100005744(0, &unk_1009856A0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata effectCompositingColor:v0 withMode:0 alpha:1.0];
  if (result)
  {
    *(v1 + 32) = result;
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1007B0B70;
    result = [ObjCClassFromMetadata effectCompositingColor:v0 withMode:0 alpha:1.0];
    if (result)
    {
      *(v4 + 32) = result;

      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A8BA0(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000A8C00(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000A8C9C(unsigned __int8 *a1, double a2)
{
  v4 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory;
  v5 = a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_sizeCategory];
  v6 = 0.174532925;
  if (v5 == 4)
  {
    v16 = 48.0;
    goto LABEL_23;
  }

  if (v5 != 6)
  {
    goto LABEL_11;
  }

  v7 = [a1 traitCollection];
  v8 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v8 & 1) != 0 || !*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_11;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    *&v15 = 100.0;
    goto LABEL_12;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
    *&v15 = 100.0;
  }

  else
  {
LABEL_11:
    *&v15 = 80.0;
  }

LABEL_12:
  v16 = *&v15;
  v17 = a1[v4];
  if (v17 == 4)
  {
    goto LABEL_23;
  }

  if (v17 != 6)
  {
    goto LABEL_21;
  }

  v18 = [a1 traitCollection];
  v19 = UITraitCollection.prefersAccessibilityLayouts.getter();

  if ((v19 & 1) != 0 || !*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
  {
    goto LABEL_21;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {
LABEL_21:
      v6 = 0.13962634;
      goto LABEL_23;
    }
  }

  v6 = 0.34906585;
LABEL_23:
  v26 = OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType;
  if (*&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_preferredGradientType])
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
    if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
    {
    }

    else
    {
      v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v32 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if (a1[v4] == 6)
    {
      v33 = [a1 traitCollection];
      v34 = UITraitCollection.prefersAccessibilityLayouts.getter();

      if ((v34 & 1) == 0)
      {
        v35 = 385.0;
        goto LABEL_34;
      }
    }
  }

LABEL_33:
  [a1 bounds];
  v35 = CGRectGetWidth(v58) * 0.5;
LABEL_34:
  v36 = v35 * tan(v6);
  [a1 bounds];
  v37 = ceil(v36 + v16 + CGRectGetHeight(v59) - a2);
  v38 = *&a1[OBJC_IVAR____TtC8AppStore22TodayCardInfoLayerView_gradientBlurView];
  if (a1[v4] == 6)
  {
    v39 = [a1 traitCollection];
    v40 = UITraitCollection.prefersAccessibilityLayouts.getter();

    if ((v40 & 1) == 0)
    {
      if (*&a1[v26])
      {
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;
        if (v41 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v43 == v44)
        {

          goto LABEL_42;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
          goto LABEL_42;
        }
      }

      [a1 bounds];
      CGRectGetMinX(v63);
      [a1 bounds];
      CGRectGetHeight(v64);
      v51 = [a1 traitCollection];
      [a1 bounds];
      CGRect.withLayoutDirection(using:relativeTo:)();
      MinX = v52;
      v48 = v53;
      v55 = v54;
      v57 = v56;

      v50 = v57;
      Width = v55;
      goto LABEL_46;
    }
  }

LABEL_42:
  [a1 bounds];
  MinX = CGRectGetMinX(v60);
  [a1 bounds];
  v47 = CGRectGetHeight(v61) - v37;
  if (v47 < 0.0)
  {
    v48 = 0.0;
  }

  else
  {
    v48 = v47;
  }

  [a1 bounds];
  Width = CGRectGetWidth(v62);
  v50 = v37;
LABEL_46:
  [v38 setFrame:{MinX, v48, Width, v50}];
  *&v38[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientStartY] = v36 / v37;
  sub_1001DD518();
  *&v38[OBJC_IVAR____TtC8AppStore28TodayCardProtectionLayerView_gradientEndY] = (v16 + v36) / v37;
  sub_1001DD518();
}

uint64_t sub_1000A9224(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for MetadataRibbonItemViewType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Feature();
  v32[3] = v8;
  v32[4] = sub_1000AE0F0(&qword_100972E50, &type metadata accessor for Feature);
  v9 = sub_1000056E0(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = isFeatureEnabled(_:)();
  sub_100007000(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    type metadata accessor for MetadataRibbonItem();
    if (Array.isNotEmpty.getter())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          MetadataRibbonItem.viewContainerType.getter();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_1000A9520()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  sub_100005644(v4, qword_1009CDC00);
  v46 = sub_1000056A8(v4, qword_1009CDC00);
  v96 = &type metadata for Double;
  v97 = &protocol witness table for Double;
  v95 = 0x4024000000000000;
  if (qword_10096DD00 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D0698);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  v7(v3, enum case for FontSource.useCase(_:), v0);
  v50 = v7;
  v93 = type metadata accessor for StaticDimension();
  v94 = &protocol witness table for StaticDimension;
  v8 = v93;
  v47 = v93;
  sub_1000056E0(v92);
  v90 = v0;
  v91 = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v89);
  v52 = v1[2];
  v52(v9, v3, v0);
  v48 = v1 + 2;
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v53 = v1 + 1;
  *v3 = UIFontTextStyleBody;
  v49 = enum case for FontSource.textStyle(_:);
  v54 = v1 + 13;
  (v7)(v3);
  v90 = v8;
  v91 = &protocol witness table for StaticDimension;
  sub_1000056E0(v89);
  v87 = v0;
  v88 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v86);
  v12 = v52;
  v52(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  *v3 = v13;
  v14 = v49;
  v15 = v50;
  v50(v3, v49, v0);
  v87 = v47;
  v88 = &protocol witness table for StaticDimension;
  sub_1000056E0(v86);
  v84 = v0;
  v85 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v83);
  v12(v16, v3, v0);
  v17 = v13;
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v51 = v10;
  *v3 = v17;
  v15(v3, v14, v0);
  v18 = v47;
  v84 = v47;
  v85 = &protocol witness table for StaticDimension;
  sub_1000056E0(v83);
  v81 = v0;
  v82 = &protocol witness table for FontSource;
  v19 = sub_1000056E0(v80);
  v20 = v52;
  v52(v19, v3, v0);
  v21 = v17;
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  *v3 = v21;
  v50(v3, v49, v0);
  v81 = v18;
  v82 = &protocol witness table for StaticDimension;
  sub_1000056E0(v80);
  v78 = v0;
  v79 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v77);
  v20(v22, v3, v0);
  v23 = v21;
  StaticDimension.init(_:scaledLike:)();
  v51(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v24 = v49;
  v25 = v50;
  v50(v3, v49, v0);
  v26 = v18;
  v78 = v18;
  v79 = &protocol witness table for StaticDimension;
  sub_1000056E0(v77);
  v75 = v0;
  v76 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v74);
  v28 = v52;
  v52(v27, v3, v0);
  v29 = UIFontTextStyleFootnote;
  StaticDimension.init(_:scaledLike:)();
  v30 = v51;
  v51(v3, v0);
  *v3 = v29;
  v25(v3, v24, v0);
  v75 = v26;
  v76 = &protocol witness table for StaticDimension;
  sub_1000056E0(v74);
  v72 = v0;
  v73 = &protocol witness table for FontSource;
  v31 = sub_1000056E0(v71);
  v28(v31, v3, v0);
  v32 = v29;
  StaticDimension.init(_:scaledLike:)();
  v30(v3, v0);
  *v3 = v32;
  v33 = v49;
  v34 = v50;
  v50(v3, v49, v0);
  v72 = v26;
  v73 = &protocol witness table for StaticDimension;
  sub_1000056E0(v71);
  v69 = v0;
  v70 = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v68);
  v52(v35, v3, v0);
  v36 = v32;
  StaticDimension.init(_:scaledLike:)();
  v51(v3, v0);
  *v3 = v36;
  v34(v3, v33, v0);
  v69 = v26;
  v70 = &protocol witness table for StaticDimension;
  sub_1000056E0(v68);
  v66 = v0;
  v67 = &protocol witness table for FontSource;
  v37 = sub_1000056E0(v65);
  v38 = v52;
  v52(v37, v3, v0);
  v39 = v36;
  StaticDimension.init(_:scaledLike:)();
  v40 = v51;
  v51(v3, v0);
  *v3 = v39;
  v34(v3, v33, v0);
  v66 = v26;
  v67 = &protocol witness table for StaticDimension;
  sub_1000056E0(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v41 = sub_1000056E0(v62);
  v38(v41, v3, v0);
  v42 = v39;
  StaticDimension.init(_:scaledLike:)();
  v40(v3, v0);
  v64 = &protocol witness table for Double;
  v63 = &type metadata for Double;
  v61[19] = &protocol witness table for Double;
  v62[0] = 0x4024000000000000;
  v61[18] = &type metadata for Double;
  v61[14] = &protocol witness table for Double;
  v61[15] = 0x4010000000000000;
  v61[13] = &type metadata for Double;
  v61[9] = &protocol witness table for Double;
  v61[10] = 0x4020000000000000;
  v61[8] = &type metadata for Double;
  v61[5] = 0x401C000000000000;
  *v3 = v42;
  v50(v3, v49, v0);
  v61[3] = v47;
  v61[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v43 = sub_1000056E0(v58);
  v52(v43, v3, v0);
  v44 = v42;
  StaticDimension.init(_:scaledLike:)();
  v51(v3, v0);
  v59 = &type metadata for Double;
  v60 = &protocol witness table for Double;
  v57 = &protocol witness table for Double;
  v58[0] = 0x4040000000000000;
  v56 = &type metadata for Double;
  v55 = 0x4024000000000000;
  return SmallSearchLockupLayout.Metrics.init(artworkSize:artworkMargin:headingSpace:titleRegularSpace:titleMediumSpace:titleShortSpace:titleWithHeadingSpace:subtitleSpace:tertiaryTitleSpace:offerTextSpace:metadataTextSpace:bottomSpace:offerButtonSize:offerButtonMargin:userRatingRightMargin:editorsChoiceMargin:adButtonRightMargin:descriptionSpace:regularWidthColumnSpacing:descriptionTopMargin:)();
}

uint64_t sub_1000A9EB4()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_100972DE0);
  sub_1000056A8(v0, qword_100972DE0);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1000A9F50(char a1)
{
  if (v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] != (a1 & 1))
  {
    v2 = v1;
    if (v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice])
    {
      v3 = v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_useAdsLocale];
      v4 = objc_allocWithZone(type metadata accessor for EditorsChoiceView());
      v5 = sub_10029CDF8(2u, 0, 0, v3, 0);
      v6 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView;
      v7 = *&v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
      *&v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView] = v5;

      v8 = *&v2[v6];
      if (!v8 || (sub_100005744(0, &qword_100970180), v9 = v8, v10 = static UIColor.secondaryText.getter(), [v9 setTintColor:v10], v9, v10, !*&v2[v6]))
      {
        __break(1u);
        return;
      }

      [v2 addSubview:?];
    }

    else
    {
      v11 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView;
      v12 = *&v2[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
      if (v12)
      {
        [v12 removeFromSuperview];
        v13 = *&v2[v11];
      }

      else
      {
        v13 = 0;
      }

      *&v2[v11] = 0;
    }

    [v2 setNeedsLayout];
  }
}

void sub_1000AA0AC(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
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
    [v1 addSubview:v6];
  }
}

uint64_t sub_1000AA154()
{
  v1 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v6 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd;
  v7 = *(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd);
  v8 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_isInsideSearchAd;
  result = swift_beginAccess();
  v5[v8] = v7;
  if (v7 == 1)
  {
    static MetadataRibbonViewLayout.Metrics.standard.getter();
    v10 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
    swift_beginAccess();
    (*(v2 + 24))(&v5[v10], v4, v1);
    swift_endAccess();
    [v5 setNeedsLayout];
    result = (*(v2 + 8))(v4, v1);
  }

  *(*(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView) + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_isInsideSearchAd) = *(v0 + v6);
  return result;
}

char *sub_1000AA2E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v101 = type metadata accessor for DirectionalTextAlignment();
  v103 = *(v101 - 1);
  __chkstk_darwin(v101);
  v11 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v12 - 8);
  v14 = &v94 - v13;
  v15 = type metadata accessor for FontSource();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRegularMargin] = 0x4024000000000000;
  *&v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataSmallMargin] = 0x401C000000000000;
  if (qword_10096E298 != -1)
  {
    swift_once();
  }

  v98 = v11;
  v19 = type metadata accessor for FontUseCase();
  v20 = sub_1000056A8(v19, qword_1009D1748);
  v100 = *(v19 - 8);
  v102 = *(v100 + 16);
  v104 = v100 + 16;
  v102(v18, v20, v19);
  (*(v16 + 104))(v18, enum case for FontSource.useCase(_:), v15);
  v109 = v15;
  v110 = &protocol witness table for FontSource;
  v21 = sub_1000056E0(v108);
  (*(v16 + 16))(v21, v18, v15);
  StaticDimension.init(_:scaledLike:)();
  (*(v16 + 8))(v18, v15);
  *&v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing] = 0x4040000000000000;
  v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeRatings] = 0;
  v22 = type metadata accessor for RatingView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v23[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v24 = &v23[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v24 = 0;
  v24[8] = 1;
  *&v23[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v25 = qword_100982C88;
  *&v23[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v23[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 3;
  *v24 = 0;
  v24[8] = 1;
  v23[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 0;
  v26 = type metadata accessor for StarRow();
  v27 = objc_allocWithZone(v26);
  v28 = v25;
  *&v23[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 3, 0, 1, 0, 0);
  v23[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v29 = objc_allocWithZone(v26);
  *&v23[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 3, 0, 1, 0, 0);
  v107.receiver = v23;
  v107.super_class = v22;
  v30 = objc_msgSendSuper2(&v107, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v31 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v32 = *&v30[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v33 = *&v32[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v32[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v30[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v34 = v32;
  sub_1003A3A64(v33);

  if (*&v30[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v30 addSubview:?];
  }

  v35 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView;
  [v30 addSubview:*&v30[v31]];

  *&v5[v35] = v30;
  v36 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
  v37 = v103;
  if (qword_10096E148 != -1)
  {
    swift_once();
  }

  v38 = sub_1000056A8(v19, qword_1009D1358);
  v102(v14, v38, v19);
  v39 = *(v100 + 56);
  v39(v14, 0, 1, v19);
  v40 = *(v37 + 104);
  v103 = v37 + 104;
  v41 = v98;
  LODWORD(v100) = enum case for DirectionalTextAlignment.none(_:);
  v97 = v40;
  v40(v98);
  v42 = type metadata accessor for DynamicTypeLabel();
  v43 = objc_allocWithZone(v42);
  *&v5[v36] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_useAdsLocale] = 0;
  v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includeEditorsChoice] = 0;
  *&v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView] = 0;
  v44 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView;
  *&v5[v44] = [objc_allocWithZone(type metadata accessor for MetadataRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v45 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView;
  *&v5[v45] = [objc_allocWithZone(type metadata accessor for SearchTagsRibbonView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton] = 0;
  v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd] = 0;
  v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_shouldEvenlyDistribute] = 2;
  *&v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsCalculator] = 0;
  v46 = &v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock];
  *v46 = 0;
  v46[1] = 0;
  if (qword_10096E140 != -1)
  {
    swift_once();
  }

  v47 = sub_1000056A8(v19, qword_1009D1340);
  v48 = v102;
  v102(v14, v47, v19);
  v95 = v19;
  v96 = v39;
  v39(v14, 0, 1, v19);
  v97(v41, v100, v101);
  v49 = objc_allocWithZone(v42);
  v50 = &unk_1009CD000;
  *&v5[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v106.receiver = v5;
  v106.super_class = ObjectType;
  v51 = objc_msgSendSuper2(&v106, "initWithFrame:", a1, a2, a3, a4);
  v52 = type metadata accessor for Feature();
  v109 = v52;
  v53 = sub_1000AE0F0(&qword_100972E50, &type metadata accessor for Feature);
  v110 = v53;
  v54 = sub_1000056E0(v108);
  v55 = *(v52 - 8);
  v56 = *(v55 + 104);
  LODWORD(v103) = enum case for Feature.search_tags(_:);
  ObjectType = v52;
  v100 = v55 + 104;
  v101 = v56;
  (v56)(v54);
  LOBYTE(v52) = isFeatureEnabled(_:)();
  sub_100007000(v108);
  v57 = v48;
  if (v52)
  {
    v98 = v53;
    v58 = v51;
    if (qword_10096DD20 != -1)
    {
      swift_once();
    }

    v59 = v95;
    v60 = sub_1000056A8(v95, qword_1009D06F8);
    v48(v14, v60, v59);
    v61 = v14;
    v62 = v14;
    v63 = v96;
    v96(v61, 0, 1, v59);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
    v64 = qword_10096DD30;
    v65 = *&v58[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
    if (v64 != -1)
    {
      swift_once();
    }

    v66 = sub_1000056A8(v59, qword_1009D0728);
    v57(v62, v66, v59);
    v63(v62, 0, 1, v59);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    v67 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel;
    v68 = *&v58[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
    static CustomTextStyle<>.metadataRibbon.getter();
    if (qword_10096EE58 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for MetadataRibbonTextStyle();
    v70 = sub_1000056A8(v69, qword_1009D3710);
    v109 = v69;
    v110 = sub_1000AE0F0(&qword_10096FBA0, &type metadata accessor for MetadataRibbonTextStyle);
    v71 = sub_1000056E0(v108);
    (*(*(v69 - 8) + 16))(v71, v70, v69);
    dispatch thunk of DynamicTypeLabel.customTextStyle.setter();

    v72 = *&v58[v67];
    sub_100005744(0, &qword_100970180);
    v73 = v72;
    v74 = static UIColor.secondaryText.getter();
    [v73 setTextColor:v74];

    [*&v58[v67] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
    v75 = v98;
    v50 = &unk_1009CD000;
  }

  else
  {
    v76 = *&v51[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
    sub_100005744(0, &qword_100970180);
    v77 = v76;
    v78 = static UIColor.tertiaryText.getter();
    [v77 setTextColor:v78];

    v75 = v53;
    v58 = v51;
  }

  v79 = v50[394];
  v80 = *&v58[v79];
  sub_100005744(0, &qword_100970180);
  v81 = v80;
  v82 = static UIColor.secondaryText.getter();
  [v81 setTextColor:v82];

  [*&v58[v79] setUserInteractionEnabled:0];
  v83 = v103;
  if (qword_10096CF78 != -1)
  {
    swift_once();
  }

  v84 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v84, qword_100972DE0);
  v105 = v58;
  v85 = v58;
  Conditional.evaluate(with:)();

  UILabel.alignment.setter();
  [v85 addSubview:*&v85[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView]];
  v86 = ObjectType;
  v109 = ObjectType;
  v110 = v75;
  v87 = sub_1000056E0(v108);
  v88 = v101;
  v101(v87, v83, v86);
  v89 = isFeatureEnabled(_:)();
  sub_100007000(v108);
  if (v89)
  {
    [v85 addSubview:*&v85[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel]];
  }

  v109 = v86;
  v110 = v75;
  v90 = sub_1000056E0(v108);
  v88(v90, v83, v86);
  v91 = isFeatureEnabled(_:)();
  sub_100007000(v108);
  v92 = &OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView;
  if ((v91 & 1) == 0)
  {
    v92 = &OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView;
  }

  [v85 addSubview:*&v85[*v92]];
  *(*&v85[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] + OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding) = 0;
  return v85;
}

double sub_1000AB0CC()
{
  v1 = v0;
  v2 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallSearchLockupLayout();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v2, qword_1009CDC00);
  (*(v3 + 16))(v5, v8, v2);
  v9 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v10 = &v9[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v9[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v11 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v9[v11], v120);
    sub_10002A400(v120, v121);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v13 = v12;
    v15 = v14;
    sub_100007000(v120);
    *v10 = v13;
    *(v10 + 1) = v15;
    v10[16] = 0;
  }

  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  v16 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v17 = type metadata accessor for ArtworkView();
  v122 = &protocol witness table for UIView;
  v121 = v17;
  v67 = v16;
  v120[0] = v16;
  v18 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel);
  v66 = v18;
  if (v18)
  {
    v19 = type metadata accessor for DynamicTypeLabel();
    v20 = &protocol witness table for UILabel;
    v21 = v18;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
    v116 = 0;
    v117 = 0;
  }

  v115 = v21;
  v118 = v19;
  v119 = v20;
  v22 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel);
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = v23;
  v114 = &protocol witness table for UILabel;
  v113 = v23;
  v112 = v22;
  v25 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  v111 = &protocol witness table for UILabel;
  v110 = v23;
  v64 = v25;
  v65 = v22;
  v109 = v25;
  v26 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
  if (v26)
  {
    v27 = &protocol witness table for UILabel;
    v28 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel);
    v29 = v23;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v105 = 0;
    v106 = 0;
  }

  v104 = v28;
  v107 = v29;
  v108 = v27;
  v30 = *(v1 + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v102 = v23;
  v103 = &protocol witness table for UILabel;
  v63 = v30;
  v101 = v30;
  v99 = type metadata accessor for OfferButton();
  v100 = &protocol witness table for UIView;
  v98 = v9;
  v31 = *(v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView);
  v96 = type metadata accessor for RatingView();
  v97 = &protocol witness table for UIView;
  v94 = &protocol witness table for UILabel;
  v95 = v31;
  v32 = *(v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel);
  v93 = v24;
  v61 = v32;
  v62 = v31;
  v92 = v32;
  v33 = *(v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView);
  v68 = v9;
  if (v33)
  {
    v34 = type metadata accessor for EditorsChoiceView();
    v35 = &protocol witness table for UIView;
    v36 = v33;
  }

  else
  {
    v36 = 0;
    v34 = 0;
    v35 = 0;
    v88 = 0;
    v89 = 0;
  }

  v87 = v36;
  v90 = v34;
  v91 = v35;
  v37 = *(v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton);
  v69 = v5;
  if (v37)
  {
    v38 = type metadata accessor for SearchAdTransparencyButton();
    v39 = &protocol witness table for UIView;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v83 = 0;
    v84 = 0;
  }

  v81 = &protocol witness table for UILabel;
  v82 = v37;
  v85 = v38;
  v86 = v39;
  v40 = *(v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel);
  v80 = v24;
  v79 = v40;
  v41 = *(v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView);
  v77 = type metadata accessor for MetadataRibbonView();
  v78 = &protocol witness table for UIView;
  v76 = v41;
  v42 = *(v1 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView);
  v74 = type metadata accessor for SearchTagsRibbonView();
  v75 = &protocol witness table for UIView;
  v73 = v42;
  v43 = v33;
  v44 = v37;
  v45 = v40;
  v46 = v41;
  v42;
  v47 = v67;
  v48 = v66;
  v49 = v65;
  v50 = v64;
  v51 = v26;
  v52 = v63;
  v53 = v68;
  v54 = v62;
  v55 = v61;
  MetadataRibbonView.hasContent.getter();
  sub_100045A48();
  v56 = v70;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  sub_1000AE0F0(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout);
  v57 = v72;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v59 = v58;
  (*(v71 + 8))(v56, v57);
  return v59;
}

double sub_1000AB734(void *a1)
{
  v112 = a1;
  v2 = type metadata accessor for SmallSearchLockupLayout();
  v101 = *(v2 - 8);
  v102 = v2;
  __chkstk_darwin(v2);
  v100 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LabelPlaceholderCompatibility();
  v94 = *(v7 - 8);
  v95 = v7;
  __chkstk_darwin(v7);
  v93 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OfferButtonMetrics();
  v109 = *(v9 - 8);
  v110 = v9;
  __chkstk_darwin(v9);
  v105 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v82 - v12;
  v13 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v106 = *(v13 - 8);
  __chkstk_darwin(v13);
  v99 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_10002849C(&unk_1009912C0);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v24 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v25 = *(v23 + v24);
  v26 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v22, v23 + v26, v4);
  v86 = v5;
  v87 = v4;
  v27 = *(v5 + 56);
  v103 = v22;
  v27(v22, 0, 1, v4);
  v28 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView];
  v29 = *(v28 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels);
  v84 = *(v28 + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_shouldEvenlyDistribute);
  v104 = v29;

  v111 = v25;

  [v1 layoutMargins];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v13, qword_1009CDC00);
  v96 = *(v106 + 16);
  v97 = v106 + 16;
  v96(v17, v30, v13);
  v31 = v112;
  v32 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v108 = v13;
  if (v32)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v33 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v33 = qword_100991028;
  }

  v34 = v110;
  v35 = sub_1000056A8(v110, v33);
  v36 = v109;
  v37 = v105;
  (*(v109 + 16))(v105, v35, v34);
  (*(v36 + 32))(v107, v37, v34);
  v38 = [v31 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  v105 = v17;
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v92 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v98 = LayoutViewPlaceholder.init(representing:)();
  v39 = objc_opt_self();
  v90 = v39;
  v40 = [v39 preferredFontForTextStyle:UIFontTextStyleBody];
  v41 = type metadata accessor for Feature();
  v149[3] = v41;
  v42 = sub_1000AE0F0(&qword_100972E50, &type metadata accessor for Feature);
  v149[4] = v42;
  v43 = sub_1000056E0(v149);
  v44 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v45 = *(v41 - 8);
  v91 = *(v45 + 104);
  v46 = v45 + 104;
  v88 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v91(v43, enum case for Feature.measurement_with_labelplaceholder(_:), v41);
  v89 = v46;
  isFeatureEnabled(_:)();
  sub_100007000(v149);
  v47 = v93;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v48 = v95;
  v94 = *(v94 + 8);
  (v94)(v47, v95);
  v49 = [v39 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v148[3] = v41;
  v148[4] = v42;
  v50 = sub_1000056E0(v148);
  v51 = v44;
  v52 = v91;
  v91(v50, v51, v41);
  isFeatureEnabled(_:)();
  sub_100007000(v148);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53 = v94;
  (v94)(v47, v48);
  v54 = [v90 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v41;
  v147[4] = v42;
  v55 = sub_1000056E0(v147);
  v52(v55, v88, v41);
  isFeatureEnabled(_:)();
  sub_100007000(v147);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v53(v47, v48);
  v56 = v111;
  LODWORD(v95) = sub_1000A9224(0, v111) & (v56 != 0);
  if (v95 == 1)
  {
    v57 = v92;
    v58 = objc_allocWithZone(type metadata accessor for TraitEnvironmentPlaceholder());
    v59 = v112;
    v60 = TraitEnvironmentPlaceholder.init(traitCollection:)();
    v61 = v83;
    sub_100031660(v103, v83, &unk_1009912C0);
    v63 = v86;
    v62 = v87;
    v64 = *(v86 + 48);
    if (v64(v61, 1, v87) == 1)
    {
      v65 = v85;
      static MetadataRibbonViewLayout.Metrics.standard.getter();
      if (v64(v61, 1, v62) != 1)
      {
        sub_10002B894(v61, &unk_1009912C0);
      }
    }

    else
    {
      v65 = v85;
      (*(v63 + 32))(v85, v61, v62);
    }

    v67 = v60;
    sub_1000AD91C(v111, v65, v67);

    (*(v63 + 8))(v65, v62);
    swift_allocObject();
    v66 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    v57 = v92;
    swift_allocObject();
    v66 = LayoutViewPlaceholder.init(representing:)();
  }

  v68 = v66;

  v69 = v104;
  if ((sub_1000A9224(v104, 0) & (v69 != 0)) == 1)
  {
    sub_100046528(v69, v84);
    swift_allocObject();
    v70 = LayoutViewPlaceholder.init(measurements:)();
  }

  else
  {
    swift_allocObject();
    v70 = LayoutViewPlaceholder.init(representing:)();
  }

  v71 = v70;
  v96(v99, v105, v108);
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v57;
  v144 = v98;
  v143 = 0;
  *&v141[40] = 0u;
  v142 = 0u;
  sub_10002C0AC(v149, v141);
  sub_10002C0AC(v148, &v140);
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;

  v72 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v133 = &protocol witness table for LayoutViewPlaceholder;
  v132 = v57;
  v131 = v72;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v121 = 0;
  v120 = 0u;
  *&v119[40] = 0u;
  sub_10002C0AC(v147, v119);
  v117 = v57;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  v116 = v68;
  v114 = v57;
  v113 = v71;
  v73 = v100;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_1007B0B70;
  v75 = v112;
  *(v74 + 32) = v112;
  v76 = v75;
  v77 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_1000AE0F0(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout);
  v78 = v102;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v80 = v79;

  (*(v101 + 8))(v73, v78);
  sub_100007000(v147);
  sub_100007000(v148);
  sub_100007000(v149);
  (*(v109 + 8))(v107, v110);
  (*(v106 + 8))(v105, v108);
  sub_10002B894(v103, &unk_1009912C0);
  return v80;
}

uint64_t sub_1000AC528()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for LayoutRect();
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v76 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallSearchLockupLayout();
  v74 = *(v9 - 8);
  v75 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v73 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130.receiver = v1;
  v130.super_class = ObjectType;
  v77 = ObjectType;
  objc_msgSendSuper2(&v130, "layoutSubviews", v10);
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v5, qword_1009CDC00);
  (*(v6 + 16))(v8, v12, v5);
  v13 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton];
  type metadata accessor for BaseLockupView();
  LayoutMarginsAware<>.layoutFrame.getter();
  v14 = &v13[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  if (v13[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16])
  {
    v15 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(&v13[v15], v127);
    sub_10002A400(v127, v128);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v17 = v16;
    v19 = v18;
    sub_100007000(v127);
    *v14 = v17;
    *(v14 + 1) = v19;
    v14[16] = 0;
  }

  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  v20 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
  v21 = type metadata accessor for ArtworkView();
  v129 = &protocol witness table for UIView;
  v128 = v21;
  v71 = v20;
  v127[0] = v20;
  v22 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
  v70 = v22;
  if (v22)
  {
    v23 = type metadata accessor for DynamicTypeLabel();
    v24 = &protocol witness table for UILabel;
    v25 = v22;
  }

  else
  {
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v123 = 0;
    v124 = 0;
  }

  v122 = v25;
  v125 = v23;
  v126 = v24;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel];
  v27 = type metadata accessor for DynamicTypeLabel();
  v28 = v27;
  v121 = &protocol witness table for UILabel;
  v120 = v27;
  v119 = v26;
  v29 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel];
  v118 = &protocol witness table for UILabel;
  v117 = v27;
  v67 = v29;
  v68 = v26;
  v116 = v29;
  v30 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
  if (v30)
  {
    v31 = &protocol witness table for UILabel;
    v32 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    v33 = v27;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v112 = 0;
    v113 = 0;
  }

  v111 = v32;
  v114 = v33;
  v115 = v31;
  v34 = *&v1[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel];
  v109 = v27;
  v110 = &protocol witness table for UILabel;
  v66 = v34;
  v108 = v34;
  v106 = type metadata accessor for OfferButton();
  v107 = &protocol witness table for UIView;
  v105 = v13;
  v35 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_userRatingView];
  v103 = type metadata accessor for RatingView();
  v104 = &protocol witness table for UIView;
  v101 = &protocol witness table for UILabel;
  v102 = v35;
  v36 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_ratingCountLabel];
  v100 = v28;
  v64 = v36;
  v65 = v35;
  v99 = v36;
  v37 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_editorsChoiceView];
  if (v37)
  {
    v38 = type metadata accessor for EditorsChoiceView();
    v39 = &protocol witness table for UIView;
    v40 = v37;
  }

  else
  {
    v40 = 0;
    v38 = 0;
    v39 = 0;
    v95 = 0;
    v96 = 0;
  }

  v94 = v40;
  v97 = v38;
  v98 = v39;
  v41 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
  v72 = v8;
  v69 = v13;
  v42 = 0;
  if (v41)
  {
    v42 = type metadata accessor for SearchAdTransparencyButton();
    v43 = &protocol witness table for UIView;
  }

  else
  {
    v43 = 0;
    v90 = 0;
    v91 = 0;
  }

  v88 = &protocol witness table for UILabel;
  v89 = v41;
  v92 = v42;
  v93 = v43;
  v44 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel];
  v87 = v28;
  v86 = v44;
  v45 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v84 = type metadata accessor for MetadataRibbonView();
  v85 = &protocol witness table for UIView;
  v83 = v45;
  v46 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView];
  v81 = type metadata accessor for SearchTagsRibbonView();
  v82 = &protocol witness table for UIView;
  v80 = v46;
  v47 = v37;
  v48 = v41;
  v49 = v44;
  v50 = v45;
  v51 = v46;
  v52 = v71;
  v53 = v70;
  v54 = v68;
  v55 = v67;
  v56 = v30;
  v57 = v66;
  v58 = v69;
  v59 = v65;
  v60 = v64;
  MetadataRibbonView.hasContent.getter();
  sub_100045A48();
  v61 = v73;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v62 = v76;
  SmallSearchLockupLayout.placeChildren(relativeTo:in:)();
  (*(v78 + 8))(v62, v79);
  return (*(v74 + 8))(v61, v75);
}

id sub_1000ACBE4(uint64_t a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = *&v3[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
  if (v8)
  {
    v9 = v8;
    [v3 convertPoint:v9 toCoordinateSpace:{a2, a3}];
    v10 = [v9 pointInside:a1 withEvent:?];
    result = v8;
    if (v10)
    {
      return result;
    }
  }

  v12.receiver = v3;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
}

id sub_1000ACD38(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v4 != result))
  {
    if (qword_10096CF78 != -1)
    {
      swift_once();
    }

    v6 = sub_10002849C(&unk_100972EC0);
    sub_1000056A8(v6, qword_100972DE0);
    v7 = v1;
    Conditional.evaluate(with:)();

    return UILabel.alignment.setter();
  }

  return result;
}

unint64_t sub_1000ACF48()
{
  v1 = v0;
  v2 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v20, v6);
  v7 = *&v0[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_descriptionLabel];
  v8 = [v7 superview];
  if (!v8 || (v9 = v8, sub_100005744(0, &qword_100972EB0), v10 = v0, v11 = static NSObject.== infix(_:_:)(), v9, v10, (v11 & 1) == 0))
  {
    [v1 addSubview:v7];
  }

  [v7 setHidden:1];
  [v7 setText:0];
  [v1 setNeedsLayout];
  v12 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchAdTransparencyButton];
  if (v13)
  {
    [v13 removeFromSuperview];
    v14 = *&v1[v12];
  }

  else
  {
    v14 = 0;
  }

  *&v1[v12] = 0;

  v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_includesMetadataInformationInLockup] = 0;
  v15 = *&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataRibbonView];
  v16 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  *&v15[v16] = _swiftEmptyArrayStorage;

  sub_1003296A4(_swiftEmptyArrayStorage);
  static MetadataRibbonViewLayout.Metrics.standard.getter();
  v17 = OBJC_IVAR____TtC8AppStore18MetadataRibbonView_metrics;
  swift_beginAccess();
  (*(v3 + 24))(&v15[v17], v5, v2);
  swift_endAccess();
  [v15 setNeedsLayout];
  (*(v3 + 8))(v5, v2);
  *(*&v1[OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC8AppStore20SearchTagsRibbonView_metadataRibbonItemModels) = _swiftEmptyArrayStorage;

  return sub_1000441A4(_swiftEmptyArrayStorage);
}

uint64_t sub_1000AD1F8()
{
  v1 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  if (*(v0 + v1))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v3 = *v2;
  *v2 = 0;
  v2[1] = 0;
  sub_10001F63C(v3);
  type metadata accessor for SearchTagsRibbonView();
  sub_1000AE0F0(&qword_1009912D0, type metadata accessor for SearchTagsRibbonView);
  return NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
}

uint64_t sub_1000AD300()
{
  v1 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_metadataTextSpace;
  v2 = type metadata accessor for StaticDimension();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);

  return sub_10001F63C(v3);
}

uint64_t type metadata accessor for SmallSearchLockupView()
{
  result = qword_100972E38;
  if (!qword_100972E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AD550()
{
  result = type metadata accessor for StaticDimension();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000AD6B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1000AD770()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1);
  return v2;
}

uint64_t sub_1000AD7CC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6);
}

uint64_t sub_1000AD88C()
{
  type metadata accessor for SearchTagsRibbonView();
  sub_1000AE0F0(&qword_1009912D0, type metadata accessor for SearchTagsRibbonView);
  return NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
}

uint64_t sub_1000AD91C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = type metadata accessor for MetadataRibbonItemViewType();
  v6 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MetadataRibbonViewLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MetadataRibbonViewLayout();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v50 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetadataRibbonItem();
  result = Array.isNotEmpty.getter();
  if (result)
  {
    v43 = v11;
    v44 = v9;
    if (a1 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v16 = result;
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = a2;
    v49 = a3;
    v46 = v8;
    v47 = v12;
    v45 = v13;
    if (v16)
    {
      if (v16 >= 1)
      {
        v17 = 0;
        v57 = a1 & 0xC000000000000001;
        v56 = (v6 + 88);
        v55 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v52 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v53 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v51 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v42 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v41 = enum case for MetadataRibbonItemViewType.divider(_:);
        v39 = (v6 + 8);
        v40 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v18 = _swiftEmptyArrayStorage;
        v54 = a1;
        while (1)
        {
          if (v57)
          {
            v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v19 = *(a1 + 8 * v17 + 32);
          }

          v20 = v58;
          MetadataRibbonItem.viewContainerType.getter();
          v21 = (*v56)(v20, v59);
          if (v21 == v55)
          {
            break;
          }

          if (v21 == v53)
          {
            v22 = type metadata accessor for MetadataRibbonEditorsChoiceView();
            v23 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v24 = &unk_100972E90;
            goto LABEL_24;
          }

          if (v21 == v52)
          {
            v22 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v23 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v24 = &unk_100970648;
            goto LABEL_24;
          }

          if (v21 == v51)
          {
            v22 = type metadata accessor for MetadataRibbonStarRatingView();
            v23 = type metadata accessor for MetadataRibbonStarRatingView;
            v24 = &unk_100972EA0;
            goto LABEL_24;
          }

          if (v21 == v42)
          {
            v22 = type metadata accessor for MetadataRibbonTagView();
            v23 = type metadata accessor for MetadataRibbonTagView;
            v24 = &unk_100970640;
            goto LABEL_24;
          }

          if (v21 == v41)
          {
            v22 = type metadata accessor for MetadataRibbonBarView();
            v23 = type metadata accessor for MetadataRibbonBarView;
            v24 = &unk_100972E80;
            goto LABEL_24;
          }

          if (v21 == v40)
          {
            v22 = type metadata accessor for MetadataRibbonHighlightedTextView();
            v23 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v24 = &unk_100970638;
            goto LABEL_24;
          }

          (*v39)(v58, v59);
LABEL_29:
          if (v16 == ++v17)
          {
            goto LABEL_33;
          }
        }

        v22 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView();
        v23 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v24 = &unk_100970650;
LABEL_24:
        v25 = sub_1000AE0F0(v24, v23);
        v26 = swift_allocObject();
        v26[2] = v22;
        v26[3] = v25;
        v26[4] = v19;
        v27 = type metadata accessor for LayoutViewPlaceholder();
        swift_allocObject();

        v28 = LayoutViewPlaceholder.init(measureWith:)();
        MetadataRibbonItem.id.getter();
        v71 = v27;
        v72 = &protocol witness table for LayoutViewPlaceholder;
        v70 = v28;
        v73 = dispatch thunk of static MetadataRibbonItemView.isBaselineAligned.getter() & 1;
        v74 = dispatch thunk of static MetadataRibbonItemView.shouldForceIntrinsicSizeDuringLayout.getter() & 1;
        sub_100031660(v69, v64, &unk_100972E70);
        v29 = v67;
        LOBYTE(v25) = v68;
        v60 = v64[0];
        v61 = v64[1];
        *&v62[0] = v65;
        sub_100005A38(&v66, v62 + 8);
        LOBYTE(v63) = v29;
        HIBYTE(v63) = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100033284(0, *(v18 + 2) + 1, 1, v18);
        }

        a1 = v54;
        v31 = *(v18 + 2);
        v30 = *(v18 + 3);
        if (v31 >= v30 >> 1)
        {
          v18 = sub_100033284((v30 > 1), v31 + 1, 1, v18);
        }

        *(v18 + 2) = v31 + 1;
        v32 = &v18[11 * v31];
        v33 = v61;
        *(v32 + 2) = v60;
        *(v32 + 3) = v33;
        v34 = v62[0];
        v35 = v62[1];
        v36 = v62[2];
        *(v32 + 56) = v63;
        *(v32 + 5) = v35;
        *(v32 + 6) = v36;
        *(v32 + 4) = v34;
        sub_10002B894(v69, &unk_100972E70);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
LABEL_33:
      (*(v44 + 16))(v43, v48, v46);
      v37 = v50;
      MetadataRibbonViewLayout.init(metadataRibbonItemLayoutContexts:metrics:)();
      MetadataRibbonViewLayout.measurements(fitting:in:)();
      return (*(v45 + 8))(v37, v47);
    }
  }

  return result;
}

uint64_t sub_1000AE0F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ButtonPlaceholder.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 32))(v2 + v3, a1, v4);
  return v2;
}

uint64_t ButtonPlaceholder.init(configuration:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button) = 0;
  v3 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t ButtonPlaceholder.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1000AE2C0()
{
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button;
  v6 = *(v0 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder____lazy_storage___button);
  }

  else
  {
    sub_1000AE6D8();
    (*(v2 + 16))(v4, v0 + OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration, v1);
    v8 = v0;
    v9 = UIButton.init(configuration:primaryAction:)();
    v10 = *(v0 + v5);
    *(v8 + v5) = v9;
    v7 = v9;

    v6 = 0;
  }

  v11 = v6;
  return v7;
}

double ButtonPlaceholder.measure(toFit:with:)()
{
  v0 = sub_1000AE2C0();
  UIButton.measure(toFit:with:)();
  v2 = v1;

  return v2;
}

uint64_t ButtonPlaceholder.deinit()
{
  v1 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v2 = type metadata accessor for UIButton.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ButtonPlaceholder.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8AppStore17ButtonPlaceholder_configuration;
  v2 = type metadata accessor for UIButton.Configuration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_1000AE574()
{
  v0 = sub_1000AE2C0();
  UIButton.measure(toFit:with:)();
  v2 = v1;

  return v2;
}

uint64_t type metadata accessor for ButtonPlaceholder()
{
  result = qword_100972F08;
  if (!qword_100972F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AE640()
{
  result = type metadata accessor for UIButton.Configuration();
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

unint64_t sub_1000AE6D8()
{
  result = qword_1009811E0;
  if (!qword_1009811E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009811E0);
  }

  return result;
}

BOOL sub_1000AE724()
{
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for FontUseCase();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_10097B3D0);
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  if (*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    return 1;
  }

  v71 = v10;
  v72 = v8;
  v74 = v4;
  v75 = v14;
  v73 = v12;
  v20 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems;
  v21 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems];
  if (v21 >> 62)
  {
    v69 = v16;
    v61 = v17;
    v62 = v19;
    v63 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v62;
    v17 = v61;
    v22 = v63;
    v16 = v69;
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = v3;
  if (v22 != 1)
  {
    return 1;
  }

  v24 = v11;
  v25 = *&v0[v20];
  if (v25 >> 62)
  {
    v69 = v16;
    v64 = v17;
    v65 = v19;
    v66 = _CocoaArrayWrapper.endIndex.getter();
    v19 = v65;
    v17 = v64;
    v67 = v66;
    v16 = v69;
    v26 = v6;
    if (!v67)
    {
      return 1;
    }
  }

  else
  {
    v26 = v6;
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return 1;
    }
  }

  v69 = v16;
  v70 = v0;
  if ((v25 & 0xC000000000000001) != 0)
  {
    v27 = v19;
    v28 = v17;

    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_34:
      swift_once();
      goto LABEL_17;
    }

    v27 = v19;
    v28 = v17;
  }

  v29 = AnnotationItem.textPairs.getter();
  if (v29 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v70;

  if (v30)
  {

    return 1;
  }

  v33 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  if (!(*(v28 + 48))(&v31[v33], 1, v69))
  {
    v49 = &v31[v33];
    v50 = v69;
    (*(v28 + 16))(v27, v49, v69);
    ObjectGraphPair.value.getter();
    (*(v28 + 8))(v27, v50);
    Action.title.getter();
    v31 = v70;
    v52 = v51;

    if (v52)
    {

      return 1;
    }
  }

  v34 = *&v31[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v34 sizeThatFits:{v35, v36}];
  v1 = v37;
  v2 = v38;
  if (qword_10096CF98 != -1)
  {
    goto LABEL_34;
  }

LABEL_17:
  v39 = sub_10002849C(&unk_1009730C0);
  sub_1000056A8(v39, qword_1009CDCD0);
  v77[0] = v70;
  v40 = v70;
  Conditional.evaluate(with:)();

  if (static ProductAnnotationLayout.isSummaryPlacedBelow(in:)())
  {
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v80);
    LayoutMarginsAware<>.layoutFrame.getter();
    Height = CGRectGetHeight(v81) - v2;
  }

  else
  {
    ProductAnnotationLayout.Metrics.horizontalSpacing.getter();
    sub_10002A400(v77, v78);
    v43 = v71;
    j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
    AnyDimension.value(in:rounded:)();
    v45 = v44;
    (*(v72 + 8))(v43, v7);
    sub_100007000(v77);
    LayoutMarginsAware<>.layoutFrame.getter();
    Width = CGRectGetWidth(v82) - (v1 + v45);
    LayoutMarginsAware<>.layoutFrame.getter();
    Height = CGRectGetHeight(v83);
  }

  v46 = *&v40[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  v47 = [v46 text];
  if (v47)
  {
    v48 = v47;
    ObjectType = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    ObjectType = 0;
  }

  if (qword_10096CF90 != -1)
  {
    swift_once();
  }

  v53 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v53, qword_100972FC0);
  v77[0] = v40;
  v54 = v40;
  Conditional.evaluate(with:)();

  [v46 numberOfLines];
  v55 = type metadata accessor for Feature();
  v78 = v55;
  v79 = sub_1000B3688(&qword_100972E50, &type metadata accessor for Feature);
  v56 = sub_1000056E0(v77);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  isFeatureEnabled(_:)();
  sub_100007000(v77);
  static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v58 = v57;

  (*(v74 + 8))(v26, v23);
  [v46 sizeThatFits:{Width, Height}];
  v60 = v59;

  (*(v73 + 8))(v75, v24);
  return floor(v60 - v58) > 0.0;
}

uint64_t sub_1000AEF84()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProductAnnotationLayout.Metrics();
  sub_100005644(v4, qword_1009CDCA0);
  v30 = sub_1000056A8(v4, qword_1009CDCA0);
  if (qword_10096CFB8 != -1)
  {
    swift_once();
  }

  v5 = qword_100973020;
  [v5 size];

  v6 = qword_100973020;
  [v6 contentInsets];

  v52[8] = &type metadata for Double;
  v52[9] = &protocol witness table for Double;
  v52[5] = 0x401C000000000000;
  if (qword_10096DEE8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D0C38);
  v9 = *(v7 - 8);
  v32 = *(v9 + 16);
  v10 = v9 + 16;
  v11 = v8;
  v34 = v7;
  v32(v3);
  v31 = enum case for FontSource.useCase(_:);
  v37 = v1[13];
  v38 = v1 + 13;
  v37(v3);
  v36 = type metadata accessor for StaticDimension();
  v52[3] = v36;
  v52[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v52);
  v50 = v0;
  v51 = &protocol witness table for FontSource;
  v12 = sub_1000056E0(v49);
  v35 = v1[2];
  v35(v12, v3, v0);
  v29 = v1 + 2;
  StaticDimension.init(_:scaledLike:)();
  v33 = v1[1];
  v33(v3, v0);
  v27 = v10;
  v28 = v1 + 1;
  v26 = v11;
  v13 = v7;
  v14 = v32;
  (v32)(v3, v11, v13);
  v15 = v31;
  (v37)(v3, v31, v0);
  v50 = v36;
  v51 = &protocol witness table for StaticDimension;
  sub_1000056E0(v49);
  v47 = v0;
  v48 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v46);
  v35(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v33(v3, v0);
  v48 = &protocol witness table for Double;
  v47 = &type metadata for Double;
  v46[0] = 0x4030000000000000;
  v14(v3, v11, v34);
  v17 = v15;
  v18 = v37;
  (v37)(v3, v17, v0);
  v19 = v36;
  v45[3] = v36;
  v45[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v42);
  v21 = v35;
  v35(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22 = v33;
  v33(v3, v0);
  (v32)(v3, v26, v34);
  (v18)(v3, v31, v0);
  v43 = v19;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v23 = sub_1000056E0(v39);
  v21(v23, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v22(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4034000000000000;
  return ProductAnnotationLayout.Metrics.init(disclosureSize:disclosureContentInsets:disclosureMargin:titleSpace:detailSpace:detailMargin:linkSpace:bottomSpace:horizontalSpacing:shouldDisclosureAlignWithContent:)();
}

uint64_t sub_1000AF508()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ProductAnnotationLayout.Metrics();
  sub_100005644(v4, qword_1009CDCB8);
  v24[2] = sub_1000056A8(v4, qword_1009CDCB8);
  if (qword_10096CFB8 != -1)
  {
    swift_once();
  }

  v5 = qword_100973020;
  [v5 size];

  v6 = qword_100973020;
  [v6 contentInsets];

  v45[8] = &type metadata for Double;
  v45[9] = &protocol witness table for Double;
  v45[5] = 0x401C000000000000;
  if (qword_10096DEE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for FontUseCase();
  v8 = sub_1000056A8(v7, qword_1009D0C20);
  v9 = *(v7 - 8);
  v10 = *(v9 + 16);
  v29 = v8;
  v31 = v10;
  v11 = v9 + 16;
  (v10)(v3);
  v12 = v1[13];
  v27 = enum case for FontSource.useCase(_:);
  v28 = v1 + 13;
  v13 = v12;
  (v12)(v3);
  v26 = type metadata accessor for StaticDimension();
  v45[3] = v26;
  v45[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v45);
  v43 = v0;
  v44 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v42);
  v30 = v1[2];
  v30(v14, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v25 = v1[1];
  v25(v3, v0);
  if (qword_10096DEE8 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v7, qword_1009D0C38);
  v31(v3, v15, v7);
  v24[0] = v7;
  v24[1] = v11;
  v13(v3, v27, v0);
  v43 = v26;
  v44 = &protocol witness table for StaticDimension;
  sub_1000056E0(v42);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v39);
  v30(v16, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v25(v3, v0);
  v41 = &protocol witness table for Double;
  v40 = &type metadata for Double;
  v39[0] = 0x4030000000000000;
  v31(v3, v29, v7);
  v17 = v27;
  v18 = v13;
  v13(v3, v27, v0);
  v19 = v26;
  v38[3] = v26;
  v38[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v38);
  v36 = v0;
  v37 = &protocol witness table for FontSource;
  v20 = sub_1000056E0(v35);
  v30(v20, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v21 = v25;
  v25(v3, v0);
  v31(v3, v29, v24[0]);
  v18(v3, v17, v0);
  v36 = v19;
  v37 = &protocol witness table for StaticDimension;
  sub_1000056E0(v35);
  v33 = v0;
  v34 = &protocol witness table for FontSource;
  v22 = sub_1000056E0(v32);
  v30(v22, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v21(v3, v0);
  v34 = &protocol witness table for Double;
  v33 = &type metadata for Double;
  v32[0] = 0x4034000000000000;
  return ProductAnnotationLayout.Metrics.init(disclosureSize:disclosureContentInsets:disclosureMargin:titleSpace:detailSpace:detailMargin:linkSpace:bottomSpace:horizontalSpacing:shouldDisclosureAlignWithContent:)();
}

uint64_t sub_1000AFABC()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_100970ED0);
  sub_100005644(v7, qword_100972FC0);
  sub_1000056A8(v7, qword_100972FC0);
  if (qword_10096DEE8 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009D0C38);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096DEE0 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009D0C20);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1000AFC9C()
{
  v0 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10002849C(&unk_1009730C0);
  sub_100005644(v7, qword_1009CDCD0);
  sub_1000056A8(v7, qword_1009CDCD0);
  if (qword_10096CF80 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v0, qword_1009CDCA0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_10096CF88 != -1)
  {
    swift_once();
  }

  v10 = sub_1000056A8(v0, qword_1009CDCB8);
  v9(v3, v10, v0);
  sub_10002849C(&qword_100973F50);
  return Conditional<>.init(regularValue:compactValue:)();
}

uint64_t sub_1000AFE88()
{
  v0 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v0, qword_100972FF0);
  sub_1000056A8(v0, qword_100972FF0);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional.init(_:)();
}

uint64_t sub_1000AFF24@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = UITraitCollection.prefersRightToLeftLayouts.getter();

  result = static ProductAnnotationLayout.isSummaryPlacedBelow(in:)();
  v6 = 2;
  if ((v4 ^ result))
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_1000AFFA0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002849C(&unk_100972EC0);
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  sub_10002849C(&qword_100973F50);
  type metadata accessor for NSTextAlignment(0);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

uint64_t sub_1000B0038()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.chevronDown(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_100973020 = v5;
  return result;
}

char *sub_1000B0130(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10002849C(&qword_1009730A0);
  __chkstk_darwin(v10);
  v11 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  v12 = type metadata accessor for ItemLayoutContext();
  (*(*(v12 - 8) + 56))(&v4[v11], 1, 1, v12);
  *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel] = 0;
  _s8ItemViewCMa();
  ViewRecycler.init()();
  sub_100097060(&qword_1009730A8, &qword_1009730A0);
  ReusePool.init(recycler:limit:)();
  *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView] = 0;
  v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isSeparatorDisplayed] = 0;
  v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] = 0;
  v13 = &v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
  *v14 = 0;
  v14[1] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;
  v15 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  v16 = sub_10002849C(&unk_10097B3D0);
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  if (qword_10096CFB8 != -1)
  {
    swift_once();
  }

  v17 = [objc_allocWithZone(UIImageView) initWithImage:qword_100973020];
  *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] = v17;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel] = v19;
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel] = v20;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  v22 = [v21 contentView];
  sub_100005744(0, &qword_100970180);
  v23 = static UIColor.defaultBackground.getter();
  [v22 setBackgroundColor:v23];

  v24 = [v21 contentView];
  [v24 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v25 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView;
  v26 = *&v21[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView];
  v27 = static UIColor.secondaryText.getter();
  [v26 setTintColor:v27];

  v28 = [v21 contentView];
  [v28 addSubview:*&v21[v25]];

  v29 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel;
  v30 = *&v21[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v21[v29] setNumberOfLines:1];
  v31 = *&v21[v29];
  v32 = static UIColor.secondaryText.getter();
  [v31 setTextColor:v32];

  v33 = *&v21[v29];
  v34 = static UIColor.defaultBackground.getter();
  [v33 setBackgroundColor:v34];

  v35 = [v21 contentView];
  [v35 addSubview:*&v21[v29]];

  v36 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel;
  v37 = *&v21[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [*&v21[v36] setNumberOfLines:1];
  v38 = *&v21[v36];
  v39 = static UIColor.primaryText.getter();
  [v38 setTextColor:v39];

  v40 = *&v21[v36];
  v41 = static UIColor.defaultBackground.getter();
  [v40 setBackgroundColor:v41];

  v42 = [v21 contentView];
  [v42 addSubview:*&v21[v36]];

  sub_1000B06C0();
  return v21;
}

void sub_1000B06C0()
{
  v1 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  if (qword_10096CFA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&unk_100972EC0);
  sub_1000056A8(v2, qword_100972FD8);
  v3 = v0;
  Conditional.evaluate(with:)();

  [v1 setTextAlignment:{v11, v0}];
  v4 = *&v3[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  if (qword_10096CFA8 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v2, qword_100972FF0);
  v5 = v3;
  Conditional.evaluate(with:)();

  [v4 setTextAlignment:{v11, v3}];
  v6 = *&v5[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
  if (v6)
  {
    v7 = qword_10096CFB0;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    sub_1000056A8(v2, qword_100973008);
    v10 = v5;
    v9 = v5;
    Conditional.evaluate(with:)();

    [v8 setTextAlignment:{v11, v10}];
  }
}

uint64_t sub_1000B08EC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10002849C(&qword_10097B3F0);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17[-v4];
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "prepareForReuse", v3);
  v6 = &v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText];
  *v6 = 0;
  *(v6 + 1) = 0;

  [*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel] setText:0];
  [v0 setNeedsLayout];
  v7 = &v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary];
  *v7 = 0;
  *(v7 + 1) = 0;

  sub_1000B19A4();
  [*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] setHidden:0];
  *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems] = _swiftEmptyArrayStorage;

  v8 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews;
  result = swift_beginAccess();
  v10 = *&v0[v8];
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_10:
    *&v0[v8] = _swiftEmptyArrayStorage;

    v15 = sub_10002849C(&unk_10097B3D0);
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
    swift_beginAccess();
    sub_10003715C(v5, &v0[v16]);
    swift_endAccess();
    sub_1000B1B2C();
    return sub_10002B894(v5, &qword_10097B3F0);
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v11 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11 >= 1)
  {

    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      [v13 removeFromSuperview];
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B0BD8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v63 = type metadata accessor for Separator.Position();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v64 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for Separator();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for LayoutRect();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for ProductAnnotationLayout();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v73 = *(v66 - 8);
  __chkstk_darwin(v66);
  v55 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v10 = sub_10002849C(&qword_100972ED0);
  __chkstk_darwin(v10 - 8);
  v12 = &v52 - v11;
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v1;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "layoutSubviews", v15);
  v18 = [v1 contentView];
  sub_100005744(0, &qword_100972EB0);
  LayoutMarginsAware<>.layoutFrame.getter();

  if (qword_10096CF90 != -1)
  {
    swift_once();
  }

  v19 = sub_10002849C(&unk_100970ED0);
  sub_1000056A8(v19, qword_100972FC0);
  v85 = v1;
  v20 = v1;
  Conditional.evaluate(with:)();

  v21 = *&v20[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleLabel];
  v22 = *(v14 + 16);
  v22(v12, v17, v13);
  v61 = v14;
  v23 = *(v14 + 56);
  v23(v12, 0, 1, v13);
  v54 = v21;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v24 = *&v20[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
  v22(v12, v17, v13);
  v23(v12, 0, 1, v13);
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v53 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel;
  v25 = *&v20[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
  if (v25)
  {
    v22(v12, v17, v13);
    v23(v12, 0, 1, v13);
    v26 = v25;
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  }

  v59 = v13;
  v60 = v17;
  v27 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded;
  [v24 setHidden:v20[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded]];
  v28 = *&v20[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView];
  if (v20[v27])
  {
    LOBYTE(v29) = 1;
  }

  else
  {
    v29 = !sub_1000AE724();
  }

  v30 = v66;
  v31 = v55;
  [v28 setHidden:v29];
  if (qword_10096CF98 != -1)
  {
    swift_once();
  }

  v32 = sub_10002849C(&unk_1009730C0);
  sub_1000056A8(v32, qword_1009CDCD0);
  v85 = v20;
  v33 = v72;
  Conditional.evaluate(with:)();
  ProductAnnotationLayout.Metrics.disclosureSize.getter();
  v34 = [v20 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  CGSize.scaled(_:)();
  ProductAnnotationLayout.Metrics.disclosureSize.setter();
  (*(v73 + 16))(v31, v33, v30);
  v35 = type metadata accessor for DynamicTypeLabel();
  v86 = v35;
  v87 = &protocol witness table for UILabel;
  v36 = v54;
  v84 = &protocol witness table for UILabel;
  v85 = v54;
  v83 = v35;
  v82 = v24;
  swift_beginAccess();
  v37 = v36;
  v38 = v24;

  sub_1002A53E8(v39);

  v40 = *&v20[v53];
  if (v40)
  {
    v41 = &protocol witness table for UIView;
  }

  else
  {
    v35 = 0;
    v41 = 0;
    v79 = 0;
    v78 = 0;
  }

  v77 = v40;
  v80 = v35;
  v81 = v41;
  v42 = sub_100005744(0, &qword_100973120);
  v76 = &protocol witness table for UIView;
  v75 = v42;
  v74 = v28;
  v43 = v28;
  v44 = v40;
  v45 = v65;
  ProductAnnotationLayout.init(metrics:titleText:summaryText:detailViews:linkText:disclosureView:isExpanded:)();
  v46 = v56;
  ProductAnnotationLayout.placeChildren(relativeTo:in:)();
  (*(v57 + 8))(v46, v58);
  (*(v62 + 104))(v64, enum case for Separator.Position.bottom(_:), v63);
  v86 = type metadata accessor for ZeroDimension();
  v87 = &protocol witness table for ZeroDimension;
  sub_1000056E0(&v85);
  static ZeroDimension.zero.getter();
  v47 = v69;
  Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
  v48 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView;
  swift_beginAccess();
  v49 = *&v20[v48];
  if (v49)
  {
    swift_endAccess();
    v50 = v49;
    Separator.frame(forBoundingRect:in:)();
    [v50 setFrame:?];

    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    return (*(v61 + 8))(v60, v59);
  }

  else
  {
    (*(v70 + 8))(v47, v71);
    (*(v67 + 8))(v45, v68);
    (*(v73 + 8))(v72, v30);
    (*(v61 + 8))(v60, v59);
    return swift_endAccess();
  }
}

void sub_1000B16F8()
{
  if (v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] != 1)
  {
    [*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] setHidden:0];
LABEL_15:
    [v0 setNeedsLayout];
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_14:
    [*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_disclosureView] setHidden:1];
    goto LABEL_15;
  }

  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    goto LABEL_14;
  }

LABEL_4:
  if (v2 >= 1)
  {
    v3 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews;

    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      swift_beginAccess();
      sub_10002849C(&unk_1009730D0);
      ReusePool.dequeue(or:)();
      swift_endAccess();
      sub_10015A754(v5);
      v6 = [v0 contentView];
      [v6 addSubview:v8];

      swift_beginAccess();
      v7 = v8;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v0[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v4;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    while (v2 != v4);

    goto LABEL_14;
  }

  __break(1u);
}

id sub_1000B1958@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(_s8ItemViewCMa()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

id sub_1000B19A4()
{
  if (!*&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary + 8])
  {
    v3 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];
    v4 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems];
    if (v4 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result)
      {
        goto LABEL_5;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_5:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = v0;

          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v6 = v0;
        }

        AnnotationItem.text.getter();
        v8 = v7;

        if (v8)
        {
          v2 = String._bridgeToObjectiveC()();
        }

        else
        {
          v2 = 0;
        }

        v0 = v6;
        goto LABEL_14;
      }
    }

    v2 = 0;
LABEL_14:
    [v3 setText:v2];
    goto LABEL_15;
  }

  v1 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_summaryLabel];

  v2 = String._bridgeToObjectiveC()();

  [v1 setText:v2];
LABEL_15:

  return [v0 setNeedsLayout];
}

void sub_1000B1B2C()
{
  v1 = sub_10002849C(&unk_10097B3D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  if (v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded] == 1 && (v5 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction, swift_beginAccess(), !(*(v2 + 48))(&v0[v5], 1, v1)) && ((*(v2 + 16))(v4, &v0[v5], v1), v9 = v0, ObjectGraphPair.value.getter(), (*(v2 + 8))(v4, v1), Action.title.getter(), v11 = v10, , v11))
  {
    type metadata accessor for DynamicTypeLabel();
    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    dispatch thunk of DynamicTypeLabel.axSetLinkStyleText(_:)();

    sub_100005744(0, &qword_100970180);
    v13 = v12;
    v14 = static UIColor.appTint.getter();
    [v13 setTextColor:v14];

    v15 = v13;
    v16 = static UIColor.defaultBackground.getter();
    [v15 setBackgroundColor:v16];

    [v15 setUserInteractionEnabled:1];
    v17 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v9 action:"linkLabelTapped:"];
    [v15 addGestureRecognizer:v17];

    v18 = [v9 contentView];
    [v18 addSubview:v15];

    v19 = *&v9[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
    *&v9[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel] = v15;
    v8 = v15;

    [v9 setNeedsLayout];
  }

  else
  {
    v6 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel;
    v7 = *&v0[OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel];
    if (v7)
    {
      [v7 removeFromSuperview];
      v8 = *&v0[v6];
    }

    else
    {
      v8 = 0;
    }

    *&v0[v6] = 0;
  }
}

void sub_1000B1E9C(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.prefersRightToLeftLayouts.getter();

  if (!a1 || (UITraitCollection.prefersRightToLeftLayouts.getter() & 1) != (v4 & 1))
  {
    sub_1000B06C0();
  }
}

double *sub_1000B2008()
{
  isUniquelyReferenced_nonNull_native = *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems);
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_native = v44)
  {
    v48 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v46 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;

    v3 = 0;
    v4 = _swiftEmptyArrayStorage;
    v47 = i;
    while (v48)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = __OFADD__(v3, 1);
      v6 = v3 + 1;
      if (v5)
      {
        goto LABEL_41;
      }

LABEL_10:
      sub_10002849C(&unk_100973100);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1007B1E00;
      *(inited + 32) = AnnotationItem.heading.getter();
      *(inited + 40) = v8;
      *(inited + 48) = AnnotationItem.text.getter();
      *(inited + 56) = v9;
      *(inited + 64) = AnnotationItem.listText.getter();
      *(inited + 72) = v10;
      isUniquelyReferenced_nonNull_native = AnnotationItem.textPairs.getter();
      v11 = isUniquelyReferenced_nonNull_native;
      if (isUniquelyReferenced_nonNull_native >> 62)
      {
        isUniquelyReferenced_nonNull_native = _CocoaArrayWrapper.endIndex.getter();
        v12 = isUniquelyReferenced_nonNull_native;
      }

      else
      {
        v12 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v6;
      v50 = v4;
      if (v12)
      {
        if (v12 < 1)
        {
          goto LABEL_42;
        }

        v13 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
          }

          v14 = AnnotationItem.TextPair.leadingText.getter();
          v17 = *(inited + 16);
          v16 = *(inited + 24);
          if (v17 >= v16 >> 1)
          {
            v25 = v14;
            v26 = v15;
            v27 = sub_1000344E4((v16 > 1), v17 + 1, 1, inited);
            v15 = v26;
            inited = v27;
            v14 = v25;
          }

          *(inited + 16) = v17 + 1;
          v18 = inited + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          v19 = AnnotationItem.TextPair.trailingText.getter();
          v21 = v20;
          v23 = *(inited + 16);
          v22 = *(inited + 24);
          if (v23 >= v22 >> 1)
          {
            inited = sub_1000344E4((v22 > 1), v23 + 1, 1, inited);
          }

          ++v13;

          *(inited + 16) = v23 + 1;
          v24 = inited + 16 * v23;
          *(v24 + 32) = v19;
          *(v24 + 40) = v21;
        }

        while (v12 != v13);
      }

      v28 = 0;
      v29 = *(inited + 16);
      v30 = _swiftEmptyArrayStorage;
LABEL_24:
      v31 = 16 * v28 + 40;
      while (v29 != v28)
      {
        if (v28 >= *(inited + 16))
        {
          __break(1u);
          goto LABEL_41;
        }

        ++v28;
        v32 = v31 + 16;
        v33 = *(inited + v31);
        v31 += 16;
        if (v33)
        {
          v34 = *(inited + v32 - 24);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_100033E38(0, *(v30 + 2) + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          v36 = *(v30 + 2);
          v35 = *(v30 + 3);
          if (v36 >= v35 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_100033E38((v35 > 1), v36 + 1, 1, v30);
            v30 = isUniquelyReferenced_nonNull_native;
          }

          *(v30 + 2) = v36 + 1;
          v37 = &v30[2 * v36];
          *(v37 + 4) = v34;
          *(v37 + 5) = v33;
          goto LABEL_24;
        }
      }

      sub_10002849C(&unk_100977380);
      sub_100097060(&qword_100973110, &unk_100977380);
      v38 = BidirectionalCollection<>.joined(separator:)();
      v40 = v39;

      v4 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_100033E38(0, *(v50 + 16) + 1, 1, v50);
      }

      v3 = v49;
      v42 = *(v4 + 2);
      v41 = *(v4 + 3);
      if (v42 >= v41 >> 1)
      {
        v4 = sub_100033E38((v41 > 1), v42 + 1, 1, v4);
      }

      *(v4 + 2) = v42 + 1;
      v43 = &v4[2 * v42];
      *(v43 + 4) = v38;
      *(v43 + 5) = v40;
      if (v49 == v47)
      {

        return v4;
      }
    }

    if (v3 >= *(v46 + 16))
    {
      goto LABEL_43;
    }

    v5 = __OFADD__(v3, 1);
    v6 = v3 + 1;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v44 = isUniquelyReferenced_nonNull_native;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return _swiftEmptyArrayStorage;
}

uint64_t type metadata accessor for AnnotationCollectionViewCell()
{
  result = qword_100973080;
  if (!qword_100973080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B26F0()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    sub_1000B2838();
    if (v1 <= 0x3F)
    {
      sub_1000798B8();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000B2838()
{
  if (!qword_100973098)
  {
    sub_10002D1A8(&qword_1009730A0);
    sub_100097060(&qword_1009730A8, &qword_1009730A0);
    v0 = type metadata accessor for ReusePool();
    if (!v1)
    {
      atomic_store(v0, &qword_100973098);
    }
  }
}

void *sub_1000B28DC(char *a1, int a2, void *a3)
{
  v76 = a2;
  v5 = type metadata accessor for ProductAnnotationLayout();
  v80 = *(v5 - 8);
  v81 = v5;
  __chkstk_darwin(v5);
  v77 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ProductAnnotationLayout.Metrics();
  v86 = *(v78 - 8);
  __chkstk_darwin(v78);
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v85 = &v68 - v9;
  v83 = type metadata accessor for LabelPlaceholderCompatibility();
  v87 = *(v83 - 8);
  __chkstk_darwin(v83);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FontUseCase();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009730E0);
  if (qword_10096CF90 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v16 = sub_10002849C(&unk_100970ED0);
    sub_1000056A8(v16, qword_100972FC0);
    v106[0] = a3;
    Conditional.evaluate(with:)();
    v79 = a3;
    v17 = [a3 traitCollection];
    v18 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

    (*(v13 + 8))(v15, v12);
    Annotation.title.getter();
    v19 = type metadata accessor for Feature();
    v106[3] = v19;
    v82 = sub_1000B3688(&qword_100972E50, &type metadata accessor for Feature);
    v106[4] = v82;
    v20 = sub_1000056E0(v106);
    v88 = a1;
    v21 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v22 = *(v19 - 8);
    v23 = *(v22 + 104);
    v24 = v22 + 104;
    v23(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
    v91 = v18;
    isFeatureEnabled(_:)();
    sub_100007000(v106);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v25 = v87 + 8;
    v26 = *(v87 + 8);
    v27 = v83;
    v26(v11, v83);
    Annotation.summary.getter();
    v90 = v28;
    v105[3] = v19;
    v105[4] = v82;
    v29 = sub_1000056E0(v105);
    v73 = v21;
    v30 = v21;
    v31 = v19;
    v71 = v24;
    v72 = v23;
    v23(v29, v30, v19);
    v32 = v91;
    v15 = isFeatureEnabled(_:)();
    sub_100007000(v105);
    LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
    LabelPlaceholderCompatibility.layoutTextView.getter();
    v70 = v26;
    v26(v11, v27);
    v33 = Annotation.items.getter();
    v34 = v33;
    v13 = v33 >> 62;
    v35 = v33 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v87 = v25;
    v74 = v31;
    v75 = v11;
    if (!v35)
    {
      break;
    }

    *&v99 = _swiftEmptyArrayStorage;
    result = sub_100143F04(0, v35 & ~(v35 >> 63), 0);
    if (v35 < 0)
    {
      __break(1u);
      return result;
    }

    a3 = v99;
    v69 = v32;
    v90 = v35;
    v89 = v34 & 0xFFFFFFFFFFFFFF8;
    if (v13)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v34;
    v91 = (v34 & 0xC000000000000001);
    v41 = _s8ItemViewCMa();
    a1 = 0;
    v11 = (v37 & ~(v37 >> 63));
    while (v11 != a1)
    {
      if (v91)
      {
        v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a1 >= *(v89 + 16))
        {
          goto LABEL_30;
        }

        v42 = *(v12 + 8 * a1 + 32);
      }

      v43 = swift_allocObject();
      *(v43 + 16) = v41;
      *(v43 + 24) = v42;
      v44 = type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();

      v45 = LayoutViewPlaceholder.init(measureWith:)();
      *(&v103 + 1) = v44;
      v104 = &protocol witness table for LayoutViewPlaceholder;

      *&v102 = v45;
      *&v99 = a3;
      v47 = a3[2];
      v46 = a3[3];
      if (v47 >= v46 >> 1)
      {
        sub_100143F04((v46 > 1), v47 + 1, 1);
      }

      ++a1;
      v48 = *(&v103 + 1);
      v13 = v104;
      v49 = sub_100047650(&v102, *(&v103 + 1));
      v50 = __chkstk_darwin(v49);
      v15 = &v68 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v52 + 16))(v15, v50);
      sub_1000B3484(v47, v15, &v99, v48, v13);
      sub_100007000(&v102);
      a3 = v99;
      if (v90 == a1)
      {

        v39 = v80;
        v38 = v81;
        v40 = v79;
        v32 = v69;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v39 = v80;
  v38 = v81;
  v40 = v79;
LABEL_20:
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  if (Annotation.linkAction.getter())
  {
    Action.title.getter();
    v54 = v53;

    if (v54)
    {
      v55 = v74;
      *(&v100 + 1) = v74;
      v101 = v82;
      v56 = sub_1000056E0(&v99);
      v72(v56, v73, v55);
      v57 = v32;
      isFeatureEnabled(_:)();
      sub_100007000(&v99);
      v58 = v75;
      LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      v70(v58, v83);
      sub_10002B894(&v102, &unk_10097E890);
      v102 = v99;
      v103 = v100;
      v104 = v101;
    }
  }

  if (qword_10096CF98 != -1)
  {
    swift_once();
  }

  v59 = sub_10002849C(&unk_1009730C0);
  sub_1000056A8(v59, qword_1009CDCD0);
  *&v99 = v40;
  v60 = v85;
  Conditional.evaluate(with:)();
  ProductAnnotationLayout.Metrics.disclosureSize.getter();
  v61 = [v40 traitCollection];
  _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

  CGSize.scaled(_:)();
  ProductAnnotationLayout.Metrics.disclosureSize.setter();
  v62 = v78;
  (*(v86 + 16))(v84, v60, v78);
  sub_10002C0AC(v106, &v99);
  sub_10002C0AC(v105, &v98);
  sub_100031660(&v102, &v92, &unk_10097E890);
  v63 = *(&v93 + 1);
  if (*(&v93 + 1))
  {
    v64 = v94;
    v65 = sub_10002A400(&v92, *(&v93 + 1));
    *(&v96 + 1) = v63;
    v97 = *(v64 + 8);
    v66 = sub_1000056E0(&v95);
    (*(*(v63 - 8) + 16))(v66, v65, v63);
    sub_100007000(&v92);
  }

  else
  {
    sub_10002B894(&v92, &unk_10097E890);
    v95 = 0u;
    v96 = 0u;
    v97 = 0;
  }

  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v67 = v77;
  ProductAnnotationLayout.init(metrics:titleText:summaryText:detailViews:linkText:disclosureView:isExpanded:)();
  sub_1000B3688(&unk_1009730F0, &type metadata accessor for ProductAnnotationLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v39 + 8))(v67, v38);
  (*(v86 + 8))(v85, v62);
  sub_10002B894(&v102, &unk_10097E890);
  sub_100007000(v105);
  return sub_100007000(v106);
}

uint64_t sub_1000B3484(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000056E0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100005A38(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000B351C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews;
  result = swift_beginAccess();
  v4 = *(v1 + v2);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v2) = _swiftEmptyArrayStorage;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v5 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v5 >= 1)
  {

    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      swift_beginAccess();
      sub_10002849C(&unk_1009730D0);
      ReusePool.recycle(_:)();
      swift_endAccess();
    }

    while (v5 != v6);

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B3688(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000B36D0()
{
  v1 = sub_10002849C(&qword_1009730A0);
  __chkstk_darwin(v1);
  v2 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_itemLayoutContext;
  v3 = type metadata accessor for ItemLayoutContext();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkLabel) = 0;
  _s8ItemViewCMa();
  ViewRecycler.init()();
  sub_100097060(&qword_1009730A8, &qword_1009730A0);
  ReusePool.init(recycler:limit:)();
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailViews) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_separatorLineView) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isSeparatorDisplayed) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_isExpanded) = 0;
  v4 = (v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_titleText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_explicitSummary);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_detailItems) = _swiftEmptyArrayStorage;
  v6 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  v7 = sub_10002849C(&unk_10097B3D0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1000B38FC()
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
  v11 = OBJC_IVAR____TtC8AppStore28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_100031660(v0 + v11, v6, &qword_10097B3F0);
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

uint64_t sub_1000B3C30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_1009731F0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  type metadata accessor for Badge();
  sub_1000B4070(&qword_100973128, &type metadata accessor for Badge);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v9 = v13;
  if (v13)
  {
    v10 = ItemLayoutContext.index.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v5 + 8))(v7, v4);
    v11 = *(v13 + 16);

    sub_10007B86C(v9, v10, 0, v11, 0, a2);
    [*&v2[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_topSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_bottomSeparatorView] setHidden:1];
    [*&v2[OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_verticalSeparatorView] setHidden:1];
    [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_1000B3E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1000B3EB8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore23BadgeCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1000B3F80()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_10050094C();
}

uint64_t sub_1000B3FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000B4070(&unk_100973130, type metadata accessor for BadgeCollectionViewCell);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1000B4070(unint64_t *a1, void (*a2)(uint64_t))
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

double *sub_1000B40B8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v12 = v10;
      a1(&v13, &v12);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v9 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_1000B4238(void (*a1)(_OWORD *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v18 = &_swiftEmptyArrayStorage;
  sub_10014430C(0, v4, 0);
  v5 = &_swiftEmptyArrayStorage;
  for (i = a3 + 32; ; i += 40)
  {
    a1(v16, i);
    if (v3)
    {
      break;
    }

    v18 = v5;
    v10 = v5[2];
    v9 = v5[3];
    if (v10 >= v9 >> 1)
    {
      sub_10014430C((v9 > 1), v10 + 1, 1);
      v5 = v18;
    }

    v5[2] = v10 + 1;
    v11 = &v5[9 * v10];
    *(v11 + 2) = v16[0];
    v12 = v16[1];
    v13 = v16[2];
    v14 = v16[3];
    v11[12] = v17;
    *(v11 + 4) = v13;
    *(v11 + 5) = v14;
    *(v11 + 3) = v12;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

void PageTraitEnvironment.pageColumnMargin.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = UITraitCollection.isRegularPad.getter();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_5:
      JUScreenClassGetLandscapeWidth();
      return;
    }

LABEL_9:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v4 >= v2)
  {
    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_5;
    }
  }
}

void sub_1000B4644(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000C10E4(&qword_100973190, type metadata accessor for VideoView);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView];
    sub_100005744(0, &qword_100972EB0);
    v8 = v7;
    v9 = static NSObject.== infix(_:_:)();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_1000B47F0(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000B4864;
}

void sub_1000B4864(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_1006643EC();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_1000B49A8()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView];
  sub_1002C1934();
  v2 = OBJC_IVAR____TtC8AppStore16AppPromotionView_appPromotionCardView;
  sub_1006604D0();
  v3 = &v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_longPressGestureRecognizer] setEnabled:1];
  return [v1 addSubview:*&v1[v2]];
}

uint64_t type metadata accessor for AppPromotionOfferCollectionViewCell()
{
  result = qword_100973168;
  if (!qword_100973168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B4B6C()
{
  sub_100027FAC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t (*sub_1000B4C3C(uint64_t **a1))()
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
  v2[4] = sub_1000B47F0(v2);
  return sub_1000B4CAC;
}

double sub_1000B4D10()
{
  [*(*(*v0 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView) + OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppPromotionView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v3);
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_1000B4D9C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_appPromotionView);
  [*&v1[OBJC_IVAR____TtC8AppStore16AppPromotionView_availabilityLabelView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppPromotionView();
  LayoutMarginsAware<>.layoutFrame.getter();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

uint64_t sub_1000B4E2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1000B4E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore35AppPromotionOfferCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000315F8(a1, v1 + v3, &unk_1009731E0);
  return swift_endAccess();
}

uint64_t sub_1000B4F5C(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v2 = sub_10002849C(&unk_1009731C0);
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v41 = &v31 - v3;
  v4 = type metadata accessor for Shelf.PresentationHints();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ComponentLayoutOptions();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10002849C(&unk_10097DAF0);
  v10 = *(v42 - 8);
  __chkstk_darwin(v42);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  v16 = sub_10002849C(&unk_1009731D0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v31 - v18;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v17 + 8))(v19, v16);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100079F24();
  sub_10002C0AC(v44, v43);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for AppPromotion();
  if (swift_dynamicCast())
  {
    v32 = v6;
    v20 = v15;
    v21 = v37;
    v22 = *(v10 + 16);
    v31 = v20;
    v22(v12);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    type metadata accessor for ContingentOffer();
    v23 = swift_dynamicCastClass();
    v24 = v38;
    if (v23)
    {
      v25 = v23;
      v26 = v34;

      sub_100539A70(v25, v33);
    }

    else
    {
      type metadata accessor for OfferItem();
      v27 = swift_dynamicCastClass();
      v26 = v34;
      v28 = v21;
      if (!v27)
      {
LABEL_8:
        [v26 setNeedsLayout];

        swift_unknownObjectRelease();
        (*(v35 + 8))(v41, v36);
        (*(v28 + 8))(v32, v24);
        (*(v39 + 8))(v9, v40);
        (*(v10 + 8))(v31, v42);
        return sub_100007000(v44);
      }

      v29 = v27;

      sub_100539C84(v29, v33);
    }

    v28 = v21;
    goto LABEL_8;
  }

  swift_unknownObjectRelease();
  (*(v37 + 8))(v6, v38);
  (*(v39 + 8))(v9, v40);
  (*(v10 + 8))(v15, v42);
  return sub_100007000(v44);
}

uint64_t sub_1000B54E0(uint64_t a1, uint64_t a2)
{
  v76 = a2;
  v2 = sub_10002849C(&unk_100970E00);
  __chkstk_darwin(v2 - 8);
  v73 = v56 - v3;
  v71 = type metadata accessor for OfferButtonSubtitlePosition();
  v67 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10002849C(&unk_1009701A0);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v69 = v56 - v5;
  v6 = sub_10002849C(&unk_100970170);
  __chkstk_darwin(v6 - 8);
  v65 = v56 - v7;
  v64 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v63 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100973230);
  __chkstk_darwin(v9 - 8);
  v66 = v56 - v10;
  v75 = sub_10002849C(&unk_1009731C0);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v77 = v56 - v11;
  v12 = type metadata accessor for Shelf.PresentationHints();
  v79 = *(v12 - 8);
  v80 = v12;
  __chkstk_darwin(v12);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for ComponentLayoutOptions();
  v15 = *(v78 - 8);
  __chkstk_darwin(v78);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10002849C(&unk_10097DAF0);
  v81 = *(v18 - 8);
  v82 = v18;
  __chkstk_darwin(v18);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = v56 - v22;
  v24 = sub_10002849C(&unk_1009731D0);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v56 - v26;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  v28 = v27;
  v29 = v14;
  (*(v25 + 8))(v28, v24);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v30 = sub_100079F24();
  sub_10002C0AC(v84, v83);
  sub_10002849C(&qword_100973D50);
  type metadata accessor for ArcadeShowcase();
  if (swift_dynamicCast())
  {
    v59 = v17;
    v60 = v15;
    v31 = *(v81 + 16);
    v58 = v23;
    v31(v20, v23, v82);
    type metadata accessor for NilState();
    WritableStateLens.init(_:)();
    v32 = v61;
    v33 = [v61 contentView];
    v56[1] = v30;
    [v30 pageMarginInsets];
    [v33 setLayoutMargins:?];

    v34 = ArcadeShowcase.iconArtworks.getter();
    v57 = v29;
    if (v34)
    {
      if (v34 >> 62)
      {
        v38 = v34;
        v39 = _CocoaArrayWrapper.endIndex.getter();
        v34 = v38;
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        v35 = v34;
        type metadata accessor for ArtworkLoader();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v36 = v83[0];
        v37 = *&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView];
        [v37 setHidden:0];
        *&v37[OBJC_IVAR____TtC8AppStore12IconGridView_impressionableArtworks] = v35;

        *&v37[OBJC_IVAR____TtC8AppStore12IconGridView_artworkLoader] = v36;

        sub_1006E7990(v35, v36);

LABEL_10:
        v56[0] = *&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerButton];
        v40 = ArcadeShowcase.offerDisplayProperties.getter();
        v41 = ArcadeShowcase.unsubscribedAction.getter();
        v42 = ArcadeShowcase.subscribedAction.getter();
        v43 = v62;
        v44 = v64;
        (*(v62 + 104))(v63, enum case for OfferButtonPresenterViewAlignment.center(_:), v64);
        (*(v43 + 56))(v65, 1, 1, v44);
        sub_1000C10E4(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment);
        v45 = v66;
        AccessibilityConditional.init(value:axValue:)();
        v46 = sub_10002849C(&unk_100973240);
        (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
        v47 = v67;
        v48 = v71;
        (*(v67 + 104))(v68, enum case for OfferButtonSubtitlePosition.above(_:), v71);
        (*(v47 + 56))(v73, 1, 1, v48);
        sub_1000C10E4(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition);
        v49 = v69;
        AccessibilityConditional.init(value:axValue:)();
        sub_10064AFA4(v40, v41, v42, v45, v49, v76, 0, 0);

        (*(v70 + 8))(v49, v72);
        sub_10002B894(v45, &unk_100973230);
        type metadata accessor for ArcadeSubscriptionManager();
        type metadata accessor for BaseObjectGraph();
        inject<A, B>(_:from:)();
        v50 = v83[0];
        ArcadeShowcase.subscribedDescription.getter();
        ArcadeShowcase.unsubscribedDescription.getter();
        v51 = type metadata accessor for ArcadeOfferLabelPresenter();
        swift_allocObject();
        v52 = v50;
        v53 = ArcadeOfferLabelPresenter.init(subscribedText:nonsubscribedText:subscriptionManager:)();
        sub_1000C10E4(&unk_100973250, type metadata accessor for ArcadeShowcaseCollectionViewCell);
        swift_unknownObjectRetain();
        ArcadeOfferLabelPresenter.view.setter();
        v83[3] = v51;
        v83[0] = v53;
        v54 = OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_offerLabelPresenter;
        swift_beginAccess();

        sub_1000315F8(v83, &v32[v54], &unk_1009711D0);
        swift_endAccess();
        [v32 setNeedsLayout];

        swift_unknownObjectRelease();

        (*(v74 + 8))(v77, v75);
        (*(v79 + 8))(v57, v80);
        (*(v60 + 8))(v59, v78);
        (*(v81 + 8))(v58, v82);
        return sub_100007000(v84);
      }
    }

    [*&v32[OBJC_IVAR____TtC8AppStore32ArcadeShowcaseCollectionViewCell_iconGridView] setHidden:1];
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
  (*(v79 + 8))(v29, v80);
  (*(v15 + 8))(v17, v78);
  (*(v81 + 8))(v23, v82);
  return sub_100007000(v84);
}

uint64_t sub_1000B6218(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t, uint64_t, char *, char *, id))
{
  v29 = a4;
  v31 = a3;
  v27 = a2;
  v30 = sub_10002849C(&unk_1009731C0);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v26 = &v26 - v4;
  v5 = type metadata accessor for Shelf.PresentationHints();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ComponentLayoutOptions();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10002849C(&unk_10097DAF0);
  v11 = *(v32 - 8);
  __chkstk_darwin(v32);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10002849C(&unk_1009731D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v26 - v19;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v18 + 8))(v20, v17);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v21 = sub_100079F24();
  sub_10002C0AC(v39, v38);
  sub_10002849C(&qword_100973D50);
  v31(0);
  if (swift_dynamicCast())
  {
    v22 = v37;
    v23 = v32;
    (*(v11 + 16))(v13, v16, v32);
    type metadata accessor for NilState();
    v24 = v26;
    WritableStateLens.init(_:)();
    v29(v22, v27, v10, v7, v21);
    swift_unknownObjectRelease();

    (*(v28 + 8))(v24, v30);
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v23);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v35 + 8))(v7, v36);
    (*(v33 + 8))(v10, v34);
    (*(v11 + 8))(v16, v32);
  }

  return sub_100007000(v39);
}