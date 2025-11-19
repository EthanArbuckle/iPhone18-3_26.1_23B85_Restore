uint64_t UICollectionViewListCoordinator.customBottomSpacing(offset:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ShadowSectionCollection();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = *((v5 & v4) + 0x88);
  swift_beginAccess();
  v14 = *(v10 + 16);
  v14(v12, &v1[v13], v9);
  WitnessTable = swift_getWitnessTable();
  v32 = a1;
  ListCoreDataSource.margins(forSectionAtOffset:)(a1, v9, WitnessTable);
  v15 = *(v10 + 8);
  v15(v12, v9);
  *&result = COERCE_DOUBLE(OptionalEdgeInsets.bottom.getter());
  if (v17)
  {
    v30 = v14;
    v14(v12, &v1[v13], v9);
    ShadowListDataSource.sectionIDs.getter(v8);
    v29 = v15;
    v15(v12, v9);
    v18 = v34;
    v19 = specialized ViewLeafView.platformView.getter(v34);
    *&result = COERCE_DOUBLE((*(v33 + 8))(v8, v18));
    if (__OFSUB__(v19, 1))
    {
      __break(1u);
    }

    else
    {
      v20 = v32;
      if (v19 - 1 == v32)
      {
        swift_beginAccess();
        v21 = OptionalEdgeInsets.bottom.getter();
        if ((v22 & 1) == 0)
        {
          v27 = v21;
          swift_endAccess();
          return v27;
        }

        swift_endAccess();
        goto LABEL_16;
      }

      v23 = v30;
      v30(v12, &v2[v13], v9);
      ListCoreDataSource.spacing(forSectionAtOffset:)(v20, v9, WitnessTable);
      v24 = v29;
      v29(v12, v9);
      if ((v37 & 1) == 0)
      {
        if (v36)
        {
          goto LABEL_16;
        }

        goto LABEL_17;
      }

      v23(v12, &v2[v13], v9);
      result = v20 + 1;
      if (!__OFADD__(v20, 1))
      {
        ListCoreDataSource.spacing(forSectionAtOffset:)(result, v9, WitnessTable);
        v24(v12, v9);
        if (v37 & 1) != 0 || (v36)
        {
          v25 = &v2[*((*MEMORY[0x1E69E7D40] & *v2) + 0x148)];
          if ((*(v25 + 9) & 1) == 0 && (v25[1] & 1) == 0)
          {
            v26 = *v25;
LABEL_18:
            *&result = v26 * 0.5;
            return result;
          }

LABEL_16:
          *&result = 0.0;
          return result;
        }

LABEL_17:
        v26 = v35;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ListCoreDataSource.spacing(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  (*(a3 + 104))(v10, a2, a3);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t _UIHostingView.focusedValues.setter(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x1D0);
  *v3 = *a1;
  v3[8] = v2;
  *(v3 + 1) = *(a1 + 16);

  return _UIHostingView.focusedValues.didset();
}

uint64_t ShadowListDataSource.spacing(forSectionAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v18 - v9;
  v11 = *(v5 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v3, v5, v13);
  updated = type metadata accessor for ShadowListUpdateRecorder();
  ShadowListUpdateRecorder.initialIndex(_:)(a1, updated, v10);
  (*(v6 + 104))(v10, v5, v6);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return (*(v11 + 8))(v15, v5);
}

uint64_t _UIHostingView.focusedValues.didset()
{
  type metadata accessor for _UIHostingView();
  swift_getWitnessTable();

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

unint64_t CollectionViewListDataSource.spacing(forSectionAt:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 64);
  if (*(v4 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  outlined init with copy of SectionAccumulator.Item(v4 + 152 * result + 32, v5);
  if (v6)
  {
    ViewTraitCollection.effectiveListSectionSpacing.getter(a2);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 256;
  }

  return outlined destroy of SectionAccumulator.Item(v5);
}

uint64_t ViewTraitCollection.effectiveListSectionSpacing.getter@<X0>(uint64_t a1@<X8>)
{
  v7 = *v1;
  result = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v10)
  {
    result = ViewTraitCollection.value<A>(for:defaultValue:)();
    v4 = v7;
    v5 = v7 ^ 1;
    v6 = v7;
  }

  else
  {
    v5 = 0;
    v6 = v9;
    v4 = v8;
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 9) = v5;
  return result;
}

uint64_t UICollectionViewListCoordinator.listConfiguration(offset:environment:)@<X0>(Swift::Int a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v114 = a1;
  v115 = a3;
  v6 = *v4;
  v7 = *MEMORY[0x1E69E7D40];
  v99 = *MEMORY[0x1E69E7D40] & *v4;
  v103 = type metadata accessor for UICollectionLayoutListConfiguration.ContentHuggingElements();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v106 = &v84 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v86 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v85 = &v84 - v14;
  _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(0, &lazy cache variable for type metadata for UICollectionLayoutListConfiguration.ContentHuggingElements?, MEMORY[0x1E69DC298], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v87 = &v84 - v16;
  v93 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *((v7 & v6) + 0x328);
  v97 = *((v7 & v6) + 0x338);
  v98 = v19;
  v20 = type metadata accessor for ShadowListDataSource();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v84 - v22;
  v24 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v84 - v29;
  v31 = a2[1];
  v95 = *a2;
  v94 = v31;
  UICollectionViewListCoordinator.listAppearance.getter();
  v32 = *MEMORY[0x1E69DC238];
  v112 = *(v25 + 104);
  (v112)(v27, v32, v24);
  v108 = v30;
  v33 = v114;
  LOBYTE(a2) = static UICollectionLayoutListConfiguration.Appearance.== infix(_:_:)();
  v34 = *(v25 + 8);
  v105 = v25 + 8;
  v104 = v34;
  v34(v27, v24);
  if (a2)
  {
    v35 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
    swift_beginAccess();
    (*(v21 + 16))(v23, &v4[v35], v20);
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.margins(forSectionAtOffset:)(v33, v20, WitnessTable);
    v113 = v21;
    (*(v21 + 8))(v23, v20);
    v116 = v119;
    v117 = v120;
    *v118 = *v121;
    *&v118[9] = *&v121[9];
    v37 = OptionalEdgeInsets.leading.getter();
    if (v38)
    {
LABEL_3:
      v33 = v114;
      v21 = v113;
      goto LABEL_5;
    }

    v33 = v114;
    v21 = v113;
    if ((v37 & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      v116 = v119;
      v117 = v120;
      *v118 = *v121;
      *&v118[9] = *&v121[9];
      v81 = OptionalEdgeInsets.trailing.getter();
      if (v82)
      {
        goto LABEL_3;
      }

      v33 = v114;
      v21 = v113;
      if ((v81 & 0x7FFFFFFFFFFFFFFFLL) == 0)
      {
        v83 = v108;
        v104(v108, v24);
        (v112)(v83, *MEMORY[0x1E69DC250], v24);
      }
    }
  }

LABEL_5:
  (*(v25 + 16))(v27, v108, v24);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v39 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
  swift_beginAccess();
  v40 = *(v21 + 16);
  v112 = v39;
  v111 = v21 + 16;
  v110 = v40;
  v40(v23, &v39[v4], v20);
  v96 = swift_getWitnessTable();
  ListCoreDataSource.cornerRadius(forSectionAtOffset:)(v33, v20, v96);
  v41 = *(v21 + 8);
  v113 = v21 + 8;
  v109 = v41;
  v41(v23, v20);
  UICollectionLayoutListConfiguration._cornerRadius.setter();
  v42 = v114;
  if (*&v4[OBJC_IVAR____TtC7SwiftUI39UICollectionViewListCoordinatorBaseBase_backgroundColor])
  {
    v43 = [objc_opt_self() clearColor];
    UICollectionLayoutListConfiguration.backgroundColor.setter();
  }

  v100 = v24;
  v107 = v4;
  v44 = v112;
  v45 = v110;
  v110(v23, &v112[v4], v20);
  v46 = v45;
  swift_getWitnessTable();
  LOBYTE(v45) = ListDiffable.hasHeader(forSectionAtOffset:)(v42);
  v47 = v20;
  v48 = v20;
  v49 = v109;
  v109(v23, v47);
  v50 = MEMORY[0x1E69DC280];
  if ((v45 & 1) == 0)
  {
    v50 = MEMORY[0x1E69DC290];
  }

  (*(v89 + 104))(v88, *v50, v90);
  UICollectionLayoutListConfiguration.headerMode.setter();
  v46(v23, &v44[v107], v48);
  v51 = ListDiffable.hasFooter(forSectionAtOffset:)(v114);
  v49(v23, v48);
  v52 = MEMORY[0x1E69DC270];
  if (!v51)
  {
    v52 = MEMORY[0x1E69DC278];
  }

  (*(v92 + 104))(v91, *v52, v93);
  v53 = v107;
  UICollectionLayoutListConfiguration.footerMode.setter();
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55 = swift_allocObject();
  v56 = v98;
  v55[2] = v98;
  v57 = v99;
  v58 = *(v99 + 816);
  v59 = v97;
  v55[3] = v58;
  v55[4] = v59;
  v60 = *(v57 + 832);
  v55[5] = v60;
  v55[6] = v54;
  UICollectionLayoutListConfiguration.itemSeparatorHandler.setter();
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  v62[2] = v56;
  v62[3] = v58;
  v62[4] = v59;
  v62[5] = v60;
  v62[6] = v61;
  UICollectionLayoutListConfiguration.leadingSwipeActionsConfigurationProvider.setter();
  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v64 = swift_allocObject();
  v64[2] = v56;
  v64[3] = v58;
  v64[4] = v59;
  v64[5] = v60;
  v64[6] = v63;
  v64[7] = v95;
  v64[8] = v94;

  UICollectionLayoutListConfiguration.trailingSwipeActionsConfigurationProvider.setter();
  v110(v23, &v112[v53], v48);
  LOBYTE(v63) = ShadowListDataSource.hasGlobalHeader.getter(v48);
  v109(v23, v48);
  v65 = v103;
  v66 = v102;
  if (v63)
  {
    UICollectionLayoutListConfiguration.headerTopPadding.setter();
    v67 = v85;
    static UICollectionLayoutListConfiguration.ContentHuggingElements.supplementaryHeader.getter();
    v99 = UICollectionLayoutListConfiguration.contentHuggingElements.modify();
    (*(v66 + 16))(v106);
    lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements, MEMORY[0x1E69DC298]);
    v68 = v86;
    dispatch thunk of SetAlgebra.intersection(_:)();
    if (dispatch thunk of SetAlgebra.isEmpty.getter())
    {
      v69 = *(v66 + 8);
      v69(v68, v65);
      v69(v67, v65);
      v70 = 1;
      v71 = v87;
    }

    else
    {
      dispatch thunk of SetAlgebra.subtract(_:)();
      (*(v66 + 8))(v67, v65);
      v72 = v68;
      v71 = v87;
      (*(v66 + 32))(v87, v72, v65);
      v70 = 0;
    }

    (*(v66 + 56))(v71, v70, 1, v65);
    outlined destroy of UICollectionLayoutListConfiguration.ContentHuggingElements?(v71, &lazy cache variable for type metadata for UICollectionLayoutListConfiguration.ContentHuggingElements?, MEMORY[0x1E69DC298]);
    (v99)(&v116, 0);
  }

  v73 = v106;
  UICollectionLayoutListConfiguration.contentHuggingElements.getter();
  v74 = v101;
  static UICollectionLayoutListConfiguration.ContentHuggingElements.supplementaryHeader.getter();
  lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.ContentHuggingElements and conformance UICollectionLayoutListConfiguration.ContentHuggingElements, MEMORY[0x1E69DC298]);
  v75 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v76 = *(v66 + 8);
  v76(v74, v65);
  v76(v73, v65);
  UICollectionViewListCoordinatorBase.sectionHeadersShouldHugContent.setter(v75 & 1);
  v110(v23, &v112[v53], v48);
  v77 = &v116;
  ListCoreDataSource.spacing(forSectionAtOffset:)(v114, v48, v96);
  v109(v23, v48);
  if (BYTE9(v116) == 1 && (v77 = (v53 + *((*MEMORY[0x1E69E7D40] & *v53) + 0x148)), *(v77 + 9) == 1))
  {
    v78 = v100;
  }

  else
  {
    v78 = v100;
    if ((*(v77 + 8) & 1) != 0 && *v77)
    {
      v79 = v100;
      UICollectionLayoutListConfiguration._hasCompactSectionSpacing.setter();
      v78 = v79;
    }
  }

  return (v104)(v108, v78);
}

uint64_t sub_18BFD93D4()
{

  return swift_deallocObject();
}

uint64_t sub_18BFD940C()
{

  return swift_deallocObject();
}

void type metadata accessor for UIBackgroundConfiguration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s5UIKit25UIBackgroundConfigurationVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

Swift::Bool __swiftcall ListDiffable.hasHeader(forSectionAtOffset:)(Swift::Int forSectionAtOffset)
{
  v3 = v2;
  v4 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ListDiffable.sectionIndex(atOffset:)(forSectionAtOffset, v4, v3);
  LOBYTE(v3) = (*(v3 + 64))(v9, v4, v3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t ShadowListDataSource.hasHeader(forSectionAt:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  updated = type metadata accessor for ShadowListUpdateRecorder();

  return a3(a1, updated);
}

uint64_t ShadowListUpdateRecorder.hasHeader(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ShadowListUpdateRecorder.initialIndex(_:)(a1, a2, &v11 - v8);
  LOBYTE(v4) = (*(v4 + 64))(v9, v5, v4);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v4 & 1;
}

Swift::Bool __swiftcall CollectionViewListDataSource.hasHeader(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
    return 0;
  }

  outlined init with copy of SectionAccumulator.Item(v2 + 152 * forSectionAt + 32, v14);
  if (!v15)
  {
    return 0;
  }

  v5[0] = v14[0];
  v5[1] = v14[1];
  v6 = v15;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v3 = *(&v20 + 1);
  outlined destroy of SectionAccumulator.Item(v5);
  return v3 > 0;
}

Swift::Bool __swiftcall ListDiffable.hasFooter(forSectionAtOffset:)(Swift::Int forSectionAtOffset)
{
  v3 = v2;
  v4 = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ListDiffable.sectionIndex(atOffset:)(forSectionAtOffset, v4, v3);
  LOBYTE(v3) = (*(v3 + 72))(v9, v4, v3);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v3 & 1;
}

uint64_t ShadowListUpdateRecorder.hasFooter(forSectionAt:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11 - v8;
  ShadowListUpdateRecorder.initialIndex(_:)(a1, a2, &v11 - v8);
  LOBYTE(v4) = (*(v4 + 72))(v9, v5, v4);
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return v4 & 1;
}

Swift::Bool __swiftcall CollectionViewListDataSource.hasFooter(forSectionAt:)(Swift::Int forSectionAt)
{
  if (forSectionAt < 0)
  {
    return 0;
  }

  v2 = *(v1 + 64);
  if (*(v2 + 16) <= forSectionAt)
  {
    return 0;
  }

  outlined init with copy of SectionAccumulator.Item(v2 + 152 * forSectionAt + 32, v14);
  if (!v15)
  {
    return 0;
  }

  v5[0] = v14[0];
  v5[1] = v14[1];
  v6 = v15;
  v10 = v19;
  v11 = v20;
  v12 = v21;
  v13 = v22;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v3 = v21;
  outlined destroy of SectionAccumulator.Item(v5);
  return v3 > 0;
}

Swift::Void __swiftcall UIKitNavigationController._observeScrollViewGeometryAffectingContentBottomDidChange(_:)(UIScrollView *a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for UIKitNavigationController();
  [(UIScrollView *)&v8 _observeScrollViewGeometryAffectingContentBottomDidChange:a1];
  v4 = [v2 tabBarController];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for UIKitTabBarController();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v2;
  PlatformBarUpdater.callAsFunction(context:)(v2, v6);
}

Swift::Void __swiftcall UpdateCoalescingCollectionView.invalidateStackBehaviorLayoutIfNeeded()()
{
  if (v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_isLazyStackBehaviorEnabled] == 1)
  {
    v1 = &v0[OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView__layoutContainer];
    if (swift_unknownObjectWeakLoadStrong())
    {
      goto LABEL_7;
    }

    v2 = specialized UIView.firstAncestorWhere(_:)(v0);
    if (!v2 || (swift_getObjectType(), (v3 = swift_conformsToProtocol2()) == 0))
    {

      v3 = 0;
    }

    *(v1 + 1) = v3;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    if (swift_unknownObjectWeakLoadStrong())
    {
LABEL_7:
      v4 = *(v1 + 1);
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(ObjectType, v4);

      swift_unknownObjectRelease();
    }
  }
}

id @objc UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(v9, v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

id UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23[-v11];
  v13 = *((v8 & v6) + 0x88);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v3[v13], v9);
  v24 = v3;
  v25 = a1;
  v26 = a2;
  v14 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a2, partial apply for closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:), v23, v9, v14, WitnessTable, &v27);
  (*(v10 + 8))(v12, v9);
  v16 = v27;
  if ((v3[*((*v7 & *v3) + 0xD8)] & 1) == 0)
  {
    UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(a1, a2);
  }

  if (v16)
  {
    return v16;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = MEMORY[0x18D00C850](0x6C65437974706D45, 0xE90000000000006CLL);

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v19];

  v20 = MEMORY[0x18D00C850](0x6C65437974706D45, 0xE90000000000006CLL);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v22 = [a1 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];

  return v22;
}

uint64_t ListCoreDataSource.visitContent<A>(atRow:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF, a7);
}

{
  return ListCoreDataSource.visitContent<A>(atRow:visitor:)(a1, a2, a3, a4, a5, a6, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF, a7);
}

uint64_t ListCoreDataSource.visitContent<A>(atRow:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(uint64_t, _BYTE *, uint64_t, void)@<X7>, uint64_t a9@<X8>)
{
  v22 = a8;
  v23 = a5;
  v24 = a7;
  v21 = a3;
  v14 = *(a6 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v21 - v17;
  v19 = ListDiffable.rowIndex(at:)(&v21 - v17, a1, a4, v14);
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v18, v19, a2, v21, a4, v23, a6, v24, a9, v22);
  return (*(v16 + 8))(v18, AssociatedTypeWitness);
}

uint64_t ListDiffable.rowIndex(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v16 - v8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = IndexPath.section.getter();
  ListDiffable.sectionIndex(atOffset:)(v14, a3, a4);
  (*(v11 + 16))(v17, v13, v10);
  (*(a4 + 80))(v13, a3, a4);
  IndexPath.row.getter();
  swift_getAssociatedConformanceWitness();
  Collection.index(atOffset:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  (*(v11 + 8))(v13, v10);
  return v18;
}

uint64_t assignWithCopy for NavigationStackCore.NavigationStackRepresentableRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  swift_weakCopyAssign();
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  v4 = *(a2 + 80);
  if (!*(a1 + 80))
  {
    if (v4)
    {
      *(a1 + 80) = v4;
      *(a1 + 88) = *(a2 + 88);
      (**(v4 - 8))(a1 + 56, a2 + 56);
      return a1;
    }

LABEL_7:
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 72) = v7;
    *(a1 + 56) = v6;
    return a1;
  }

  v5 = (a1 + 56);
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v5, (a2 + 56));
  return a1;
}

uint64_t protocol witness for Collection.index(_:offsetBy:) in conformance ShadowRowCollection<A>()
{
  swift_getWitnessTable();

  return BidirectionalCollection.index(_:offsetBy:)();
}

uint64_t ListCoreDataSource.visitRowAt<A>(_:visitor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(uint64_t, _BYTE *, uint64_t, void))
{
  v31 = a6;
  v32 = a4;
  v30 = a3;
  v27 = a2;
  v33 = a9;
  v34 = a10;
  v35 = a8;
  type metadata accessor for _RowVisitationContext();
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v14 = &v27 - v13;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v23 = &v27 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(&v27 - v22, a1, AssociatedTypeWitness, v21);
  *&v23[*(TupleTypeMetadata2 + 48)] = v27;
  (*(v17 + 16))(v19, v23, TupleTypeMetadata2);
  (*(a7 + 224))(v19, *&v19[*(TupleTypeMetadata2 + 48)], a5, a7);
  (*(v24 + 8))(v19, AssociatedTypeWitness);
  v37 = a5;
  v38 = v31;
  v39 = a7;
  v40 = v30;
  v41 = v32;
  v25 = v28;
  v34(v35, v36, v28, MEMORY[0x1E69E73E0]);
  (*(v29 + 8))(v14, v25);
  return (*(v17 + 8))(v23, TupleTypeMetadata2);
}

uint64_t type metadata completion function for _RowVisitationContext()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v5 = &v4;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      v7 = MEMORY[0x1E69E5CE8] + 64;
      swift_getAssociatedTypeWitness();
      result = type metadata accessor for Optional();
      if (v3 <= 0x3F)
      {
        v8 = *(result - 8) + 64;
        v9 = &unk_18CD71F98;
        v10 = &unk_18CD71FB0;
        v11 = &unk_18CD71FB0;
        swift_initStructMetadata();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_18BFDB0FC()
{

  return swift_deallocObject();
}

uint64_t lazy protocol witness table accessor for type ListCollectionViewHeaderFooter and conformance ListCollectionViewCellBase<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t *), uint64_t a9, void (*a10)(void *, void, uint64_t, uint64_t *, uint64_t, id, void, id, _DWORD), uint64_t (*a11)(uint64_t *), void (*a12)(uint64_t *), void (*a13)(unint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27)
{
  v273 = a8;
  v29 = v27;
  v275 = a5;
  v279 = a4;
  v281 = a2;
  v282 = a3;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v266 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = v266 - v35;
  v280 = a1;
  outlined init with copy of NavigationState.Base(a1, v286);
  v37 = MEMORY[0x1E69E7D40];
  v38 = (v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x70));
  swift_beginAccess();
  v39 = v38[2];
  if (!v39)
  {
    goto LABEL_242;
  }

  v274 = a16;
  v277 = a15;
  v276 = a14;
  v278 = a11;
  v42 = v38;
  v40 = *v38;
  v41 = v42[1];
  outlined init with copy of NavigationState.Base(v286, v288);
  v43 = swift_allocObject();
  v43[2] = v40;
  v43[3] = v41;
  v43[4] = v39;
  *(&v288[28] + 1) = a7;
  *&v288[29] = v43;
  *(&v288[29] + 1) = v39;
  outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v288, v290, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);

  outlined copy of NavigationStrategy_Phone?(v40, v41, v39);
  v44 = specialized NavigationState.StackContent.Views.ViewsSequence.unusedRoots()();
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v288, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  outlined destroy of NavigationState.StackContent.Views(v286);
  v45 = *v37 & *v29;
  v46 = *(v45 + 0x78);
  if (*(v29 + v46) != 2)
  {
    static Log.navigation.getter();
    v54 = type metadata accessor for Logger();
    v33 = *(v54 - 8);
    if ((*(v33 + 6))(v36, 1, v54) == 1)
    {
      outlined destroy of UINavigationPresentationAdaptor?(v36, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v79 = v44;
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_18BD4A000, v80, v81, "Updating stack views in place after end-user triggered transition or isTransitioningViewControllers", v82, 2u);
        MEMORY[0x18D0110E0](v82, -1, -1);
      }

      v83 = *(v33 + 1);
      v33 += 8;
      v83(v36, v54);
      v44 = v79;
    }

    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v282, v290, v279, v278);
    v37 = *(v29 + v46);
    if (*(v29 + v46) != 2)
    {
      *(v29 + v46) = 2;
      v84 = NavigationState.Base.count.getter();
      v85 = NavigationState.Base.count.getter();
      v86 = __OFSUB__(v84, v85);
      v87 = v84 - v85;
      if (v86)
      {
        goto LABEL_219;
      }

      v88 = v37 & 0x100;
      if ((v37 & 0x100) != 0)
      {
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v90 = Strong;
          swift_beginAccess();
          v91 = v90[8];
          v286[6] = v90[7];
          v286[7] = v91;
          v286[8] = v90[9];
          *(&v286[8] + 10) = *(v90 + 154);
          v92 = v90[4];
          v286[2] = v90[3];
          v286[3] = v92;
          v93 = v90[6];
          v286[4] = v90[5];
          v286[5] = v93;
          v94 = v90[2];
          v286[0] = v90[1];
          v286[1] = v94;
          outlined init with copy of NavigationState.StackContent?(v286, v283, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

          v288[7] = v286[7];
          v288[8] = v286[8];
          *(&v288[8] + 10) = *(&v286[8] + 10);
          v288[2] = v286[2];
          v288[3] = v286[3];
          v288[4] = v286[4];
          v288[5] = v286[5];
          v288[6] = v286[6];
          v288[0] = v286[0];
          v288[1] = v286[1];
          if (getEnumTag for AccessibilityActionCategory.Category(v288) != 1)
          {
            v283[6] = v288[6];
            v283[7] = v288[7];
            v284[0] = v288[8];
            *(v284 + 10) = *(&v288[8] + 10);
            v283[2] = v288[2];
            v283[3] = v288[3];
            v283[4] = v288[4];
            v283[5] = v288[5];
            v283[0] = v288[0];
            v283[1] = v288[1];
            v95 = v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x60);
            v96 = NavigationState.pendingPopCount(in:)(*v95, *(v95 + 8), *(v95 + 16));
            outlined destroy of PPTTestCase?(v286, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);
            v86 = __OFADD__(v87, v96);
            v87 += v96;
            if (v86)
            {
              goto LABEL_233;
            }
          }
        }
      }

      if (v87 >= 1)
      {
        v273 = v44;
        v97 = -v87;
        v98 = v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x68);
        if ((v37 & 1) == 0)
        {
          outlined init with copy of NavigationAuthority(v98, v288);
          v108 = NavigationAuthority.controllerCache.getter();
          outlined destroy of NavigationAuthority(v288);
          v157 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v281, v29, v277, v286);
          v158 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v157);
          v162 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, v97, v158, v159 & 1, v160, v161);
          if (v165 != 0xFF)
          {
            v97 = v162;
            v44 = v163;
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        outlined init with copy of NavigationAuthority(v98, v288);
        v44 = NavigationAuthority.controllerCache.getter();
        outlined destroy of NavigationAuthority(v288);
        v37 = v29;
        v99 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v281, v29, v277, v286);
        v100 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v99);
        v104 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v87, v100, v101 & 1, v102, v103);
        if (v107 != 0xFF)
        {
          v108 = v104;
          v46 = v105;
          goto LABEL_82;
        }

        goto LABEL_81;
      }
    }

LABEL_198:
    if (v44)
    {
      v246 = *v29;
      v247 = *MEMORY[0x1E69E7D40];
      goto LABEL_216;
    }

    return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v290, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
  }

  v285 = 1;
  v47 = *(v45 + 128);
  *(v29 + v47) = 1;
  if ((*(v29 + *((*v37 & *v29) + 0x98)) & 1) == 0)
  {
    goto LABEL_12;
  }

  v48 = [v282 view];
  if (!v48)
  {
    goto LABEL_246;
  }

  v49 = v48;
  v50 = [v48 window];

  if (v50 && (v51 = [v50 windowScene], v50, v51))
  {
    if ([objc_opt_self() areAnimationsEnabled])
    {
      if ([v51 activationState])
      {
        v52 = [v51 activationState];

        v53 = v52 == 1;
      }

      else
      {

        v53 = 1;
      }

      v272 = v53;
    }

    else
    {

      v272 = 0;
    }
  }

  else
  {
LABEL_12:
    v272 = 0;
  }

  v270 = v47;
  outlined init with copy of NavigationState.StackContent(v281, v288);
  v46 = NavigationState.StackContent.change(from:)(v288);
  v56 = v55;
  outlined destroy of PPTTestCase?(v288, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
  v266[1] = 0;
  v271 = a10;
  static Log.navigation.getter();
  v57 = type metadata accessor for Logger();
  v58 = *(v57 - 8);
  if ((*(v58 + 48))(v33, 1, v57) != 1)
  {
    v268 = v56;
    v269 = v46;
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v267 = v29;
      v266[0] = v112;
      *&v286[0] = v112;
      *v111 = 136315138;
      *&v288[0] = v269;
      BYTE8(v288[0]) = v268 & 1;
      v113 = String.init<A>(describing:)();
      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, v286);

      *(v111 + 4) = v115;
      v37 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_18BD4A000, v109, v110, "Updating stack content for change: %s", v111, 0xCu);
      v116 = v266[0];
      __swift_destroy_boxed_opaque_existential_1(v266[0]);
      v29 = v267;
      MEMORY[0x18D0110E0](v116, -1, -1);
      MEMORY[0x18D0110E0](v111, -1, -1);
    }

    (*(v58 + 8))(v33, v57);
    v46 = v269;
    if ((v268 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_45:
    if (v46 > 1)
    {
      v273 = v44;
      if (v46 == 2)
      {
        goto LABEL_61;
      }

      v166 = *((*v37 & *v29) + 0x68);
      outlined init with copy of NavigationAuthority(v29 + v166, v288);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v288);
      v167 = *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x60) + 8);
      if (v167 >= 3)
      {
        LOBYTE(v167) = 3;
      }

      LOBYTE(v288[0]) = v167;
      NavigationHostingControllerCache_UIKit.ejectAll(in:)(v288);

      v168 = v282;

      *&v286[0] = 0;
      BYTE8(v286[0]) = 1;
      outlined init with copy of NavigationAuthority(v29 + v166, v288);
      v169 = NavigationAuthority.controllerCache.getter();
      v170 = outlined destroy of NavigationAuthority(v288);
      MEMORY[0x1EEE9AC00](v170);
      v266[-6] = v290;
      v266[-5] = v279;
      v266[-4] = v29;
      v266[-3] = v168;
      v264 = v286;
      v171 = v29;
      v172 = v168;
      LOBYTE(v264) = 0;
      v37 = MEMORY[0x1E69E7D40];
      v271(v168, 0, a9, &v266[-8], v169, v171, v275 & 1, v172, v264);

      v44 = v273;
      goto LABEL_212;
    }

    if (v46)
    {
      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v282, v290, v279, v278);
      goto LABEL_212;
    }

    outlined init with copy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v290, v286, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    specialized Collection.dropLast(_:)(1uLL, v288);
    specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v282, v288, v279, v273);
    v117 = outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v288, type metadata accessor for Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>);
    specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v117);
    if ((v120 & 1) == 0 || v119 != 2 || v118)
    {
      v121 = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v121, v122 & 1, v123, v124);
      v125 = MEMORY[0x1E69E7D40];
      outlined init with copy of NavigationAuthority(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x68), v286);
      NavigationAuthority.controllerCache.getter();
      v126 = outlined destroy of NavigationAuthority(v286);
      MEMORY[0x1EEE9AC00](v126);
      v127 = v279;
      v266[-4] = v288;
      v266[-3] = v127;
      v265 = v282;
      MEMORY[0x1EEE9AC00](v282);
      v266[-8] = v128;
      v266[-7] = v29;
      v266[-6] = v288;
      v37 = v125;
      LOBYTE(v266[-5]) = v272;
      v129 = v281;
      v266[-4] = v280;
      v266[-3] = v129;
      v264 = &v285;
      specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v128, 0, a12, v130, a13, &v266[-10]);

      outlined destroy of NavigationState.StackContent.PositionedView(v288);
      goto LABEL_212;
    }

    goto LABEL_249;
  }

  outlined destroy of UINavigationPresentationAdaptor?(v33, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  if (v56)
  {
    goto LABEL_45;
  }

LABEL_15:
  v273 = v44;
  v44 = &selRef_titleTextAttributes;
  if (v46 == 1)
  {
    v59 = [v282 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v61 = v60 >> 62 ? __CocoaSet.count.getter() : *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v61 >= 2)
    {
      outlined init with copy of NavigationAuthority(v29 + *((*v37 & *v29) + 0x68), v288);
      NavigationAuthority.controllerCache.getter();
      outlined destroy of NavigationAuthority(v288);
      v62 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v281, v29, v277, v288);
      specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v62);
      if ((v65 & 1) != 0 && v64 == 2 && !v63)
      {
        goto LABEL_248;
      }

      v66 = specialized NavigationState.StackContent.Views.ViewsSequence.index(before:)(0, 1, 0, 2);
      v67 = *&v288[30];
      specialized NavigationState.StackContent.Views.ViewsSequence.subscript.getter(v66, v68 & 1, v69, v70);
      v67(v283, v286);
      outlined destroy of NavigationState.StackContent.PositionedView(v286);
      v71 = v283[0];
      v72 = *(&v283[0] + 1);
      outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v288, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
      LOBYTE(v286[0]) = v71;
      *(&v286[0] + 1) = v72;
      v73 = v286;
      NavigationHostingControllerCache_UIKit.eject(at:)(*&v73);

      v74 = [v282 viewControllers];
      v75 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v75 >> 62;
      if (!(v75 >> 62))
      {
        v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!__OFSUB__(0, v76))
        {
LABEL_24:
          if (v76)
          {
            v77 = v76 - 1;
            if (__OFSUB__(v76, 1))
            {
              goto LABEL_234;
            }

            if (v77 < 0)
            {
              goto LABEL_235;
            }

            if (!v37)
            {
              goto LABEL_28;
            }
          }

          else
          {
LABEL_105:
            v77 = 0;
            if (!v37)
            {
LABEL_28:
              v78 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_108;
            }
          }

          if ((__CocoaSet.count.getter() & 0x8000000000000000) == 0)
          {
            v78 = __CocoaSet.count.getter();
LABEL_108:
            if (v78 >= v77)
            {
              if ((v75 & 0xC000000000000001) != 0)
              {

                if (v77)
                {
                  v181 = 0;
                  do
                  {
                    v182 = v181 + 1;
                    _ArrayBuffer._typeCheckSlowPath(_:)(v181);
                    v181 = v182;
                  }

                  while (v77 != v182);
                }
              }

              else
              {
              }

              if (v37)
              {
                _CocoaArrayWrapper.subscript.getter();
                v184 = v185;
                v183 = v186;
                v188 = v187;

                v77 = v188 >> 1;
              }

              else
              {
                v183 = 0;
                v184 = (v75 & 0xFFFFFFFFFFFFFF8) + 32;
              }

              v37 = MEMORY[0x1E69E7D40];
              if (v183 == v77)
              {
                swift_unknownObjectRelease();
                v189 = 0;
              }

              else
              {
                if (v77 - 1 < v183)
                {
                  goto LABEL_237;
                }

                v189 = *(v184 + 8 * (v77 - 1));
                swift_unknownObjectRelease();
              }

              *(v29 + *((*v37 & *v29) + 0x88)) = v189;
              v44 = v273;
              if (v272)
              {
                outlined init with copy of NavigationState.StackContent(v281, v288);
                v190 = NavigationState.StackContent.shouldAnimate(from:)(v288);
                outlined destroy of PPTTestCase?(v288, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
              }

              else
              {
                v190 = 0;
              }

              v191 = v282;

              specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v191, v290, v279, v278);
              v192 = [v191 transitionCoordinator];
              if (!v192)
              {
                goto LABEL_211;
              }

              if (!v190)
              {
                goto LABEL_210;
              }

LABEL_209:
              v285 = 1;
              v259 = v192;
              v260 = swift_allocObject();
              swift_unknownObjectWeakInit();
              *&v288[2] = a17;
              v44 = v273;
              *(&v288[2] + 1) = v260;
              *&v288[0] = MEMORY[0x1E69E9820];
              *(&v288[0] + 1) = 1107296256;
              *&v288[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
              *(&v288[1] + 1) = a18;
              v261 = _Block_copy(v288);

              [v259 animateAlongsideTransition:0 completion:v261];

              v262 = v261;
              v37 = MEMORY[0x1E69E7D40];
              _Block_release(v262);
              swift_unknownObjectRelease();
              goto LABEL_212;
            }

LABEL_230:
            __break(1u);
LABEL_231:
            __break(1u);
            goto LABEL_232;
          }

LABEL_229:
          __break(1u);
          goto LABEL_230;
        }

LABEL_228:
        __break(1u);
        goto LABEL_229;
      }

LABEL_226:
      v76 = __CocoaSet.count.getter();
      if (!__OFSUB__(0, v76))
      {
        goto LABEL_24;
      }

      goto LABEL_228;
    }
  }

  v131 = [v282 viewControllers];
  v33 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v132 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v132 >> 62)
  {
    goto LABEL_221;
  }

  for (i = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {

    if (i >= 2)
    {
      v134 = [v282 *(v44 + 3144)];
      v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v136 = v135 >> 62 ? __CocoaSet.count.getter() : *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v46 < v136)
      {
        break;
      }
    }

LABEL_61:
    v146 = NavigationState.Base.count.getter();
    v147 = NavigationState.Base.count.getter();
    v86 = __OFSUB__(v146, v147);
    v108 = v146 - v147;
    if (v86)
    {
      goto LABEL_220;
    }

    if (v108 < 1)
    {
      goto LABEL_160;
    }

    outlined init with copy of NavigationAuthority(v29 + *((*v37 & *v29) + 0x68), v288);
    v33 = NavigationAuthority.controllerCache.getter();
    outlined destroy of NavigationAuthority(v288);
    v267 = v29;
    v148 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v281, v29, v277, v286);
    v37 = -v108;
    v149 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v148);
    v153 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v108, v149, v150 & 1, v151, v152);
    if (v156 == 0xFF)
    {
      v153 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v153);
    }

    v97 = v153;
    v29 = v154;
    v88 = v155;
    v44 = v156;
    v104 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v153);
    if ((v175 & 1) == 0)
    {
      if (v97 < v104)
      {
        goto LABEL_236;
      }

      if (v104 >= v97)
      {
        if (v44)
        {
          if (v44 == 1)
          {
            if (v174 != 1 || v88 >= v173)
            {
              goto LABEL_158;
            }

            __break(1u);
LABEL_81:
            v104 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v104);
            v108 = v104;
            v46 = v176;
LABEL_82:
            v33 = v106;
            v29 = v107;
            v162 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v104);
            if (v177)
            {
              if (v46)
              {
                goto LABEL_189;
              }

              __break(1u);
            }

            if (v46)
            {
              goto LABEL_189;
            }

            if (v108 < v162)
            {
              goto LABEL_238;
            }

            if (v162 < v108)
            {
              goto LABEL_189;
            }

            if (v29)
            {
              if (v29 == 1)
              {
                if (v174 != 1 || v33 >= v173)
                {
                  goto LABEL_189;
                }

                __break(1u);
LABEL_93:
                v162 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v162);
                v97 = v162;
                v44 = v178;
LABEL_94:
                v46 = v164;
                v33 = v165;
                v75 = v286;
                v179 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v162);
                if (v180)
                {
                  if (v44)
                  {
                    goto LABEL_196;
                  }

                  __break(1u);
                }

                if (v44)
                {
                  goto LABEL_196;
                }

                if (v97 < v179)
                {
                  goto LABEL_239;
                }

                if (v179 < v97)
                {
                  goto LABEL_196;
                }

                if (v33)
                {
                  if (v33 == 1)
                  {
                    if (v174 == 1 && v46 < v173)
                    {
                      __break(1u);
                      goto LABEL_105;
                    }

LABEL_196:
                    memcpy(&v288[4], v286, 0x1E0uLL);
                    *&v288[0] = v97;
                    BYTE8(v288[0]) = v44 & 1;
                    *&v288[1] = v46;
                    BYTE8(v288[1]) = v33;
                    *&v288[2] = 0;
                    BYTE8(v288[2]) = 1;
                    *&v288[3] = 0;
                    BYTE8(v288[3]) = 2;
                    v289 = v287;
                    specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v288);

                    outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v288, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
                    goto LABEL_197;
                  }

LABEL_154:
                  if (v174 == 2 && !v173)
                  {
                    goto LABEL_196;
                  }

                  __break(1u);
LABEL_157:
                  if (v88 < v173)
                  {
                    goto LABEL_241;
                  }

                  goto LABEL_158;
                }

LABEL_148:
                if (!v174)
                {
                  if (v46 < v173)
                  {
                    goto LABEL_244;
                  }

                  goto LABEL_196;
                }

                if (v174 == 2)
                {
                  goto LABEL_196;
                }

                __break(1u);
              }

              if (v174 == 2 && !v173)
              {
                goto LABEL_189;
              }

              __break(1u);
              goto LABEL_154;
            }

LABEL_145:
            if (!v174)
            {
              goto LABEL_188;
            }

            if (v174 == 2)
            {
              goto LABEL_189;
            }

            __break(1u);
            goto LABEL_148;
          }

LABEL_142:
          if (v174 == 2 && !v173)
          {
            goto LABEL_158;
          }

          __break(1u);
          goto LABEL_145;
        }

LABEL_139:
        if (!v174)
        {
          goto LABEL_157;
        }

        if (v174 == 2)
        {
          goto LABEL_158;
        }

        __break(1u);
        goto LABEL_142;
      }
    }

LABEL_158:
    memcpy(&v288[4], v286, 0x1E0uLL);
    *&v288[0] = v97;
    BYTE8(v288[0]) = v29 & 1;
    *&v288[1] = v88;
    BYTE8(v288[1]) = v44;
    *&v288[2] = 0;
    BYTE8(v288[2]) = 1;
    *&v288[3] = 0;
    BYTE8(v288[3]) = 2;
    v289 = v287;
    specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v288);

    outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v288, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
    v197 = [v282 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = specialized BidirectionalCollection.dropLast(_:)(v108, v37);
    v199 = v198;
    v201 = v200;
    v46 = v202;

    v203 = v46 >> 1;
    if (v201 == v46 >> 1)
    {
      swift_unknownObjectRelease();
      v29 = v267;
LABEL_160:
      if (!v272)
      {
        goto LABEL_164;
      }

      goto LABEL_161;
    }

    v29 = v267;
    if (v203 <= v201)
    {
      __break(1u);
      goto LABEL_226;
    }

    v205 = *(v199 + 8 * v203 - 8);
    swift_unknownObjectRelease();
    *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x88)) = v205;

    if (!v272)
    {
LABEL_164:
      v204 = 0;
      goto LABEL_165;
    }

LABEL_161:
    outlined init with copy of NavigationState.StackContent(v281, v288);
    v204 = NavigationState.StackContent.shouldAnimate(from:)(v288);
    outlined destroy of PPTTestCase?(v288, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
LABEL_165:
    v206 = [v282 viewControllers];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v207 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v278 = v108;
    LODWORD(v281) = v204;
    if (!v204)
    {

      v215 = 0;
LABEL_172:
      v208 = MEMORY[0x1E69E7D40];
      goto LABEL_173;
    }

    v208 = MEMORY[0x1E69E7D40];
    if (v207 >> 62)
    {
      v209 = __CocoaSet.count.getter();
    }

    else
    {
      v209 = *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v209 != 1 || (v211 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v210), (v214 & 1) != 0))
    {
      v215 = 1;
LABEL_173:
      *&v286[0] = 0;
      BYTE8(v286[0]) = 1;
      outlined init with copy of NavigationAuthority(v29 + *((*v208 & *v29) + 0x68), v288);
      v216 = NavigationAuthority.controllerCache.getter();
      v217 = outlined destroy of NavigationAuthority(v288);
      MEMORY[0x1EEE9AC00](v217);
      v266[-6] = v290;
      v266[-5] = v279;
      v266[-4] = v29;
      v218 = v282;
      v266[-3] = v282;
      v264 = v286;
      v219 = v29;
      v220 = v218;
      LOBYTE(v264) = v215;
      v271(v218, 0, a21, &v266[-8], v216, v219, v275 & 1, v220, v264);
      v37 = MEMORY[0x1E69E7D40];

      v221 = [v220 transitionCoordinator];
      v44 = v273;
      if (v221)
      {
        if (v278 >= 1 && (v281 & 1) != 0)
        {
          v222 = v273;
          v285 = 1;
          v223 = v221;
          v224 = swift_allocObject();
          swift_unknownObjectWeakInit();
          *&v288[2] = a22;
          v44 = v222;
          *(&v288[2] + 1) = v224;
          v37 = MEMORY[0x1E69E7D40];
          *&v288[0] = MEMORY[0x1E69E9820];
          *(&v288[0] + 1) = 1107296256;
          *&v288[1] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
          *(&v288[1] + 1) = a23;
          v225 = _Block_copy(v288);

          [v223 animateAlongsideTransition:0 completion:v225];
          _Block_release(v225);
        }

        swift_unknownObjectRelease();
      }

      goto LABEL_212;
    }

    v37 = 0;
    v226 = 0;
    while (1)
    {
      v44 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      v211 = specialized NavigationState.StackContent.Views.ViewsSequence.index(after:)(v211, v226 & 1, v212, v213);
      ++v37;
      if ((v226 & 1) != 0 && v213 >= 2u)
      {
        v215 = v44 != 1;
        goto LABEL_172;
      }
    }

    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    ;
  }

  outlined init with copy of NavigationAuthority(v29 + *((*v37 & *v29) + 0x68), v288);
  v37 = NavigationAuthority.controllerCache.getter();
  outlined destroy of NavigationAuthority(v288);
  v267 = v29;
  v137 = specialized previousPositions #1 <A>() in NavigationStackCoordinator.update(to:from:navigationController:transaction:transparentBackground:)(v281, v29, v277, v286);
  if (v46 < 0)
  {
    goto LABEL_231;
  }

  v138 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v137);
  v142 = specialized BidirectionalCollection.index(_:offsetBy:limitedBy:)(0, 1, 0, 2, -v46, v138, v139 & 1, v140, v141);
  if (v145 == 0xFF)
  {
    v142 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v142);
  }

  v97 = v142;
  v29 = v143;
  v88 = v144;
  v108 = v145;
  v195 = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(v142);
  if (v196)
  {
    goto LABEL_201;
  }

  if (v97 < v195)
  {
    goto LABEL_240;
  }

  if (v195 < v97)
  {
    goto LABEL_201;
  }

  if (v108)
  {
    if (v108 != 1)
    {
      goto LABEL_185;
    }

    if (v174 != 1 || v88 >= v173)
    {
      goto LABEL_201;
    }

    __break(1u);
    goto LABEL_139;
  }

  if (!v174)
  {
    if (v88 >= v173)
    {
      goto LABEL_201;
    }

    goto LABEL_245;
  }

  if (v174 != 2)
  {
    __break(1u);
LABEL_185:
    if (v174 != 2 || v173)
    {
      __break(1u);
LABEL_188:
      if (v33 < v173)
      {
        goto LABEL_243;
      }

LABEL_189:
      v281 = a25;
      v282 = a27;
      memcpy(&v288[4], v286, 0x1E0uLL);
      *&v288[0] = v108;
      BYTE8(v288[0]) = v46 & 1;
      *&v288[1] = v33;
      BYTE8(v288[1]) = v29;
      *&v288[2] = 0;
      BYTE8(v288[2]) = 1;
      *&v288[3] = 0;
      BYTE8(v288[3]) = 2;
      v289 = v287;

      v227 = specialized Sequence.compactMap<A>(_:)(v288, v44);
      outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v288, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);

      v228 = swift_allocObject();
      *(v228 + 16) = v227;
      v229 = swift_allocObject();
      v29 = v37;
      swift_unknownObjectWeakInit();
      v230 = *v37;
      v231 = MEMORY[0x1E69E7D40];
      v232 = *((*MEMORY[0x1E69E7D40] & v230) + 0xB0);
      swift_beginAccess();
      outlined init with copy of NavigationState.StackContent?(v29 + v232, v286, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      if (LOBYTE(v286[28]) == 255)
      {
        outlined destroy of PPTTestCase?(v286, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
        v233 = v29 + *((*v231 & *v29) + 0x60);
        v234 = *v233;
        v235 = *(v233 + 8);
        v236 = *(v233 + 16);
        if (v235 == 4)
        {
          LOBYTE(v235) = 0;
        }

        *&v288[0] = v234;
        BYTE8(v288[0]) = v235;
        *&v288[1] = v236;
        LOBYTE(v288[28]) = 0;
      }

      else
      {
        memcpy(v288, v286, 0x1C1uLL);
      }

      v237 = v231;
      v238 = NavigationState.StackContent.topKey.getter();
      v240 = v239;
      v242 = v241;
      outlined destroy of NavigationState.StackContent(v288);
      v243 = swift_allocObject();
      *(v243 + 16) = a26;
      *(v243 + 24) = v228;
      *(v243 + 32) = BYTE1(v88);
      *(v243 + 40) = v229;
      *(v243 + 48) = v238;
      *(v243 + 56) = v240;
      *(v243 + 64) = v242;
      v244 = (v29 + *((*v237 & *v29) + 0xA0));
      v245 = *v244;
      *v244 = v282;
      v244[1] = v243;

      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v245);

LABEL_197:
      v44 = v273;
      goto LABEL_198;
    }
  }

LABEL_201:
  memcpy(&v288[4], v286, 0x1E0uLL);
  *&v288[0] = v97;
  BYTE8(v288[0]) = v29 & 1;
  *&v288[1] = v88;
  BYTE8(v288[1]) = v108;
  *&v288[2] = 0;
  BYTE8(v288[2]) = 1;
  *&v288[3] = 0;
  BYTE8(v288[3]) = 2;
  v289 = v287;
  specialized NavigationHostingControllerCache_UIKit.eject<A>(at:)(v288);

  outlined destroy of LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>.Iterator(v288, &lazy cache variable for type metadata for LazyMapSequence<Slice<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>>, NavigationContentAbstractPosition>, MEMORY[0x1E69E6C98]);
  v248 = [v282 *(v44 + 3144)];
  v249 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized BidirectionalCollection.dropLast(_:)(v46, v249);
  v251 = v250;
  v253 = v252;
  v255 = v254;

  v256 = v255 >> 1;
  if (v253 != v255 >> 1)
  {
    v29 = v267;
    v37 = MEMORY[0x1E69E7D40];
    v44 = v273;
    if (v256 > v253)
    {
      v189 = *(v251 + 8 * v256 - 8);
      swift_unknownObjectRelease();
      *(v29 + *((*v37 & *v29) + 0x88)) = v189;
      if (v272)
      {
        outlined init with copy of NavigationState.StackContent(v281, v288);
        v257 = NavigationState.StackContent.shouldAnimate(from:)(v288);
        outlined destroy of PPTTestCase?(v288, &lazy cache variable for type metadata for NavigationState.StackContent?, &type metadata for NavigationState.StackContent);
      }

      else
      {
        v257 = 0;
      }

      v258 = v282;

      specialized NavigationStackCoordinator.updateExtantViews<A>(navigationController:views:transaction:)(v258, v290, v279, v278);
      v192 = [v258 transitionCoordinator];
      if (v192)
      {
        if (v257)
        {
          a17 = a19;
          a18 = a20;
          goto LABEL_209;
        }

LABEL_210:
        swift_unknownObjectRelease();
      }

LABEL_211:

LABEL_212:
      if (v285 == 1)
      {
        *(v29 + v270) = 0;
        *(v29 + *((*v37 & *v29) + 0x88)) = 0;
      }

      if (v44)
      {
        v246 = *v29;
        v247 = *v37;
LABEL_216:
        outlined init with copy of NavigationAuthority(v29 + *((v247 & v246) + 0x68), v288);
        NavigationAuthority.controllerCache.getter();
        outlined destroy of NavigationAuthority(v288);
        specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(v44);
      }

      return outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v290, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    }

LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
LABEL_238:
    __break(1u);
LABEL_239:
    __break(1u);
LABEL_240:
    __break(1u);
LABEL_241:
    __break(1u);
LABEL_242:
    __break(1u);
LABEL_243:
    __break(1u);
LABEL_244:
    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
  }

  swift_unknownObjectRelease();
  __break(1u);
LABEL_248:
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v288, type metadata accessor for LazyMapSequence<NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>, NavigationContentAbstractPosition>);
  __break(1u);
LABEL_249:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_18BFDD2BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t ShadowListDataSource.contextForItem(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a1;
  v50 = a3;
  v51 = a4;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v46 = *(v6 + 8);
  v47 = a2;
  v43 = v6;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v38 - v9;
  v40 = *(v5 - 8);
  v10 = v40;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v13;
  type metadata accessor for _RowVisitationContext();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v38 - v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v18 = v42;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v38 - v23;
  (*(v8 + 16))(&v38 - v23, v45, AssociatedTypeWitness, v22);
  *&v24[*(TupleTypeMetadata2 + 48)] = v47;
  (*(v10 + 16))(v13, v4, v5);
  (*(v18 + 16))(v20, v24, TupleTypeMetadata2);
  v25 = *&v20[*(TupleTypeMetadata2 + 48)];
  updated = type metadata accessor for ShadowListUpdateRecorder();
  v27 = v44;
  v28 = ShadowListUpdateRecorder.initialIndex(_:)(v44, v20, v25, updated);
  v29 = *(v8 + 8);
  v29(v20, AssociatedTypeWitness);
  v30 = v41;
  v31 = v28;
  v32 = v39;
  v33 = v43;
  (*(v43 + 224))(v27, v31, v5);
  v29(v27, AssociatedTypeWitness);
  (*(v40 + 8))(v32, v5);
  v53 = v5;
  v54 = v33;
  swift_getWitnessTable();
  v34 = type metadata accessor for _RowVisitationContext();
  v35 = v48;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in ShadowListDataSource.contextForItem(index:), v52, MEMORY[0x1E69E73E0], v34, v36, v51);
  (*(v49 + 8))(v30, v35);
  return (*(v42 + 8))(v24, TupleTypeMetadata2);
}

uint64_t ShadowListUpdateRecorder.initialIndex(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a1;
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  v44 = v9;
  v45 = v8;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - v16;
  v46 = *(AssociatedTypeWitness - 8);
  (*(v46 + 16))(&v41 - v16, a2, AssociatedTypeWitness, v15);
  v48 = TupleTypeMetadata2;
  v49 = a4;
  *&v17[*(TupleTypeMetadata2 + 48)] = a3;
  v50 = v4;
  ShadowListUpdateRecorder.updates.getter();
  v55 = v56;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v52 = AssociatedTypeWitness;
  *(&v52 + 1) = MEMORY[0x1E69E6530];
  v53 = AssociatedConformanceWitness;
  v54 = MEMORY[0x1E69E6548];
  v19 = type metadata accessor for ListUpdate();
  v20 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  *&v52 = v20;
  *(&v52 + 1) = v20;
  v53 = WitnessTable;
  v54 = WitnessTable;
  v22 = type metadata accessor for ConcatenatedCollection();
  v23 = swift_getWitnessTable();
  v24 = Collection.isEmpty.getter();

  if (v24)
  {
    v25 = v48;
    (*(v47 + 32))(v13, v17, v48);
    v26 = *(v13 + *(v25 + 48));
    (*(v46 + 32))(v51, v13, AssociatedTypeWitness);
  }

  else
  {
    updated = ShadowListUpdateRecorder.updates.getter();
    v56 = v52;
    MEMORY[0x1EEE9AC00](updated);
    v42 = v19;
    v28 = v44;
    v29 = v45;
    *(&v41 - 2) = v44;
    *(&v41 - 1) = v29;
    KeyPath = swift_getKeyPath();
    v43 = &v41;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v41 - 4) = v28;
    *(&v41 - 3) = v29;
    *(&v41 - 2) = v31;
    v33 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #3 in implicit closure #1 in UIKitWheelPicker.updateUIView(_:context:), (&v41 - 6), v22, v42, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v32);

    *&v56 = v33;
    v34 = swift_getWitnessTable();
    MEMORY[0x18D00C6D0](&v52, v20, v34);
    *&v56 = v52;
    v36 = v47;
    v35 = v48;
    (*(v47 + 16))(v13, v17, v48);
    v37 = *(v13 + *(v35 + 48));
    v38 = type metadata accessor for ReversedCollection();
    v39 = swift_getWitnessTable();
    v26 = ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(v51, &v56, v13, v37, v49, v38, v39);

    (*(v36 + 8))(v17, v35);
    (*(v46 + 8))(v13, AssociatedTypeWitness);
  }

  return v26;
}

uint64_t CollectionViewListDataSource.contextForItem(index:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getWitnessTable();
  v6 = type metadata accessor for ListContentVisitor();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  v12 = a1;
  ListContentVisitor.init(index:)(&v12, a2, &v11 - v7);
  swift_getWitnessTable();
  ListSectionInfo.visitRow<A>(index:visitor:)(a1, a2);
  type metadata accessor for _RowVisitationContext();
  v9 = type metadata accessor for Optional();
  return (*(*(v9 - 8) + 32))(a3, v8, v9);
}

BOOL NavigationColumnState.isRootReplaced.getter()
{
  outlined init with copy of NavigationColumnState.ColumnContent(v0 + 120, v5);
  if (v5[120])
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v5, v4);
  }

  else
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v5, v4);
  }

  if (v4[88] == 255)
  {
    v1 = 1;
  }

  else
  {
    outlined destroy of NavigationRequest.Action?(v4, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v1 = 0;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v5);
  v2 = *(v0 + 352);
  if (((v1 ^ (v2 == 1)) & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000017BLL, 0x800000018CD4CDD0);
  }

  return v2 == 1;
}

uint64_t type metadata completion function for ListContentVisitor()
{
  type metadata accessor for _RowVisitationContext();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    v3[4] = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    result = swift_getAssociatedTypeWitness();
    if (v2 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3[5] = v3;
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t ListContentVisitor.init(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = *(*(AssociatedTypeWitness - 8) + 32);
  v13(&v18 - v11, v18, AssociatedTypeWitness, v10);
  *&v12[*(TupleTypeMetadata2 + 48)] = v19;
  v14 = type metadata accessor for _RowVisitationContext();
  (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  (*(v6 + 32))(v8, v12, TupleTypeMetadata2);
  v15 = *&v8[*(TupleTypeMetadata2 + 48)];
  v16 = a3 + *(type metadata accessor for ListContentVisitor() + 36);
  result = (v13)(v16, v8, AssociatedTypeWitness);
  *(v16 + *(TupleTypeMetadata2 + 48)) = v15;
  return result;
}

void storeEnumTagSinglePayload for _RowVisitationContext(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = *(v3 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = 0;
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v5 + 80);
  v14 = *(v5 + 64);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  if (v7 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v7;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    v18 = 0x7FFFFFFF;
  }

  else
  {
    v18 = v17;
  }

  v19 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v13 + 8;
  v20 = v14 + 7;
  v21 = (v15 + 8 + ((v14 + 7 + (v19 & ~v13)) & 0xFFFFFFFFFFFFFFF8)) & ~v15;
  if (v11)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v23 = v22 + v21 + 3;
  if (a3 > v18)
  {
    if (v23 <= 3)
    {
      v24 = ((a3 - v18 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
      if (HIWORD(v24))
      {
        v8 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v8 = v25;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }
  }

  if (v18 < a2)
  {
    v26 = ~v18 + a2;
    if (v23 < 4)
    {
      v27 = (v26 >> (8 * v23)) + 1;
      if (v23)
      {
        v29 = v26 & ~(-1 << (8 * v23));
        bzero(a1, v23);
        if (v23 != 3)
        {
          if (v23 == 2)
          {
            *a1 = v29;
            if (v8 > 1)
            {
LABEL_61:
              if (v8 == 2)
              {
                *&a1[v23] = v27;
              }

              else
              {
                *&a1[v23] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v8 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v29;
        a1[2] = BYTE2(v29);
      }

      if (v8 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, v23);
      *a1 = v26;
      v27 = 1;
      if (v8 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v8)
    {
      a1[v23] = v27;
    }

    return;
  }

  v28 = a1;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    *&a1[v23] = 0;
  }

  else if (v8)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v4 == v18)
  {
    v30 = *(v3 + 56);
LABEL_47:

    v30(v28);
    return;
  }

  v28 = (&a1[v19] & ~v13);
  if (v6 == v18)
  {
    v30 = *(v5 + 56);
    goto LABEL_47;
  }

  v31 = (&v28[v20] & 0xFFFFFFFFFFFFFFF8);
  if ((v17 & 0x80000000) != 0)
  {
    if (v11 >= 2)
    {
      v33 = *(v10 + 56);

      v33((v31 + v15 + 8) & ~v15, a2 + 1);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v32 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v32 = a2 - 1;
    }

    *v31 = v32;
  }
}

unint64_t ListSectionInfo.visitRow<A>(index:visitor:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v2 + 64);
  if (*(v3 + 16) <= result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = outlined init with copy of SectionAccumulator.Item(v3 + 152 * result + 32, v8);
  if (__OFADD__(v12, a2))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v12 + a2;
  if (!v10)
  {
    outlined init with copy of _Benchmark(&v9, v5);
    goto LABEL_8;
  }

  if (*(v10 + 16) >= 2uLL)
  {
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v10 + 80, v5);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v5, v6);
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v6, v5);
LABEL_8:
    v6[0] = v11;

    ListSectionInfo.visitContent<A>(list:start:transform:visitor:)();

    __swift_destroy_boxed_opaque_existential_1(v5);
    return outlined destroy of SectionAccumulator.Item(v8);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (list: ViewList, attribute: Attribute<ViewList>)()
{
  if (!lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>))
  {
    type metadata accessor for ViewList();
    type metadata accessor for Attribute<ViewList>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (list: ViewList, attribute: Attribute<ViewList>));
    }
  }
}

uint64_t ListSectionInfo.visitContent<A>(list:start:transform:visitor:)()
{
  MEMORY[0x18D00ABE0]();

  _ViewList_SublistTransform.withTemporaryTransform<A>(do:)();

  return static Update.end()();
}

uint64_t closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  AGWeakAttributeGetAttribute();
  result = ViewList.applySublists(from:style:list:transform:to:)();
  *a2 = result & 1;
  return result;
}

uint64_t closure #1 in closure #1 in ListSectionInfo.visitContent<A>(list:start:transform:visitor:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v5 = a1[1];
  if (*a1 >= v5)
  {
    return 1;
  }

  v10 = *(a2 + 48);
  while (1)
  {
    v11 = a1[3];
    v12 = a1[2];
    outlined init with copy of _ViewList_SubgraphElements((a1 + 4), v18);
    v17 = a1[9];

    v13 = v10;

    v14 = _ViewList_SublistSubgraphStorage.retain()();

    v19 = v14;
    v20 = v12;
    v21 = v11;
    v22 = v6;
    v23 = v5;
    v24 = v10;
    v17 = a1[10];
    v15 = *(a5 + 8);

    LOBYTE(v14) = v15(v18, &v17, a4, a5);

    outlined destroy of _ViewList_View(v18);
    if ((v14 & 1) == 0)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ListContentVisitor.visit(view:traits:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v20 = &v20 - v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v20 - v12;
  v14 = *a2;
  v15 = type metadata accessor for _RowVisitationContext();
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 8))(v4, v16);
  (*(v11 + 16))(v13, v4 + *(a3 + 36), TupleTypeMetadata2);
  v17 = *&v13[*(TupleTypeMetadata2 + 48)];
  outlined init with copy of _ViewList_View(v21, v24);
  v23 = v14;
  v18 = v20;
  (*(*(AssociatedTypeWitness - 8) + 56))(v20, 1, 1, AssociatedTypeWitness);
  v22 = 0;
  _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)(v13, v17, v24, &v23, v18, 0, &v22 + 1, &v22, v4);
  (*(*(v15 - 8) + 56))(v4, 0, 1, v15);

  return 0;
}

uint64_t getEnumTagSinglePayload for _RowVisitationContext(unsigned __int16 *a1, unsigned int a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  v4 = *(v3 + 84);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v36 = swift_getAssociatedTypeWitness();
  v5 = *(v36 - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v7 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v5 + 80);
  v15 = *(v8 + 80);
  v16 = *(v8 + 64);
  if (v10)
  {
    v17 = 3;
  }

  else
  {
    v17 = 4;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + v14 + 8;
  v19 = *(v5 + 64) + 7;
  v20 = v15 + 8;
  v21 = a1;
  if (a2 <= v13)
  {
    goto LABEL_38;
  }

  v22 = v17 + v16 + ((v20 + ((v19 + (v18 & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  v23 = 8 * v22;
  if (v22 > 3)
  {
    goto LABEL_18;
  }

  v25 = ((a2 - v13 + ~(-1 << v23)) >> v23) + 1;
  if (HIWORD(v25))
  {
    v24 = *(a1 + v22);
    if (v24)
    {
      goto LABEL_25;
    }

LABEL_38:
    if (v4 == v13)
    {
      v29 = v37;
      v30 = *(v3 + 48);
      v31 = v4;

      return v30(v21, v31, v29);
    }

    v21 = ((a1 + v18) & ~v14);
    if (v6 == v13)
    {
      v30 = *(v5 + 48);
      v31 = v6;
      v29 = v36;

      return v30(v21, v31, v29);
    }

    v33 = ((v21 + v19) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) == 0)
    {
      v34 = *v33;
      if (*v33 >= 0xFFFFFFFF)
      {
        LODWORD(v34) = -1;
      }

      return (v34 + 1);
    }

    if (v10 >= 2)
    {
      v35 = (*(v9 + 48))((v33 + v20) & ~v15);
      if (v35 >= 2)
      {
        return v35 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v25 > 0xFF)
  {
    v24 = *(a1 + v22);
    if (*(a1 + v22))
    {
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (v25 < 2)
  {
    goto LABEL_38;
  }

LABEL_18:
  v24 = *(a1 + v22);
  if (!*(a1 + v22))
  {
    goto LABEL_38;
  }

LABEL_25:
  v26 = (v24 - 1) << v23;
  if (v22 > 3)
  {
    v26 = 0;
  }

  if (v22)
  {
    if (v22 <= 3)
    {
      v27 = v22;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v13 + (v28 | v26) + 1;
}

uint64_t PopoverConditionalStateProvider.popoverContent.getter()
{
  if ((PopoverConditionalStateProvider.isPresented.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v0 + 24);

  return v1;
}

uint64_t _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a4;
  v22 = *a7;
  v23 = *a8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(AssociatedTypeWitness - 8) + 32))(a9, a1, AssociatedTypeWitness);
  *(a9 + v15) = a2;
  v16 = type metadata accessor for _RowVisitationContext();
  v17 = v16[9];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedTypeWitness();
  (*(*(v18 - 8) + 32))(a9 + v17, a3, v18);
  *(a9 + v16[10]) = v13;
  v19 = v16[11];
  swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  result = (*(*(v20 - 8) + 32))(a9 + v19, a5, v20);
  *(a9 + v16[12]) = a6;
  *(a9 + v16[13]) = v22;
  *(a9 + v16[14]) = v23;
  return result;
}

uint64_t partial apply for closure #2 in PopoverPresentationModifier.PopoverModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for PopoverPresentationModifier.PopoverModifier();

  return closure #2 in PopoverPresentationModifier.PopoverModifier.body(content:)(a1, a2);
}

uint64_t initializeWithCopy for _RowVisitationContext(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8) + 16;
  (*v5)(a1, a2, AssociatedTypeWitness);
  v6 = *(v5 + 48) + 7;
  *((v6 + a1) & 0xFFFFFFFFFFFFFFF8) = *((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = v9 + 16;
  v11 = *(v9 + 80);
  v12 = v7 + v11 + 8;
  v13 = (v12 + a1) & ~v11;
  v14 = (v12 + a2) & ~v11;
  (*(v9 + 16))(v13, v14, v8);
  v15 = *(v10 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = swift_getAssociatedTypeWitness();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = ((v16 + v20 + 8) & ~v20);
  v22 = ((v17 + v20 + 8) & ~v20);
  v23 = *(v19 + 48);

  if (v23(v22, 1, v18))
  {
    v24 = *(v19 + 84);
    v25 = *(v19 + 64);
    if (v24)
    {
      v26 = v25;
    }

    else
    {
      v26 = v25 + 1;
    }

    memcpy(v21, v22, v26);
  }

  else
  {
    (*(v19 + 16))(v21, v22, v18);
    v28 = *(v19 + 56);
    v27 = v19 + 56;
    v28(v21, 0, 1, v18);
    v24 = *(v27 + 28);
    v25 = *(v27 + 8);
  }

  if (v24)
  {
    v29 = v25;
  }

  else
  {
    v29 = v25 + 1;
  }

  v30 = &v21[v29];
  v31 = &v22[v29];
  *v30 = *v31;
  v30[1] = v31[1];
  v30[2] = v31[2];
  return a1;
}

uint64_t closure #2 in PopoverPresentationModifier.PopoverModifier.body(content:)(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v6 = *a2;
  v7 = v3;
  v4 = type metadata accessor for PopoverPresentationModifier.PopoverModifier();
  return PopoverPresentationModifier.PopoverModifier.addAnchorGeometryIfNeeded(presentations:anchorGeometry:)(a1, &v6, v4);
}

uint64_t closure #1 in ShadowListDataSource.contextForItem(index:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v21 - v7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v21 - v11;
  (*(v13 + 16))(&v21 - v11, a1, TupleTypeMetadata2, v10);
  v14 = *&v12[*(TupleTypeMetadata2 + 48)];
  v15 = type metadata accessor for _RowVisitationContext();
  (*(v6 + 16))(v8, a1 + v15[9], AssociatedTypeWitness);
  v16 = v15[11];
  v26 = *(a1 + v15[10]);
  v17 = v21;
  (*(v22 + 16))(v21, a1 + v16, v23);
  LOBYTE(a1) = *(a1 + v15[12]);
  v18 = type metadata accessor for ShadowListDataSource();
  WitnessTable = swift_getWitnessTable();
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PrefersFullSizeDragPreviewsKey(&v25 + 1);
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance IsHandGestureShortcutEnabled(&v25, v18, WitnessTable);
  _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)(v12, v14, v8, &v26, v17, a1, &v25 + 1, &v25, v24);
}

uint64_t PopoverPresentationModifier.PopoverModifier.addAnchorGeometryIfNeeded(presentations:anchorGeometry:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 2);
  if (*(v3 + *(a3 + 56) + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView);
    result = PropertyList.subscript.getter();
  }

  if (v11[0] != 2 && (v11[0] & 1) != 0)
  {
    result = (*(*(a3 + 24) + 32))(*(a3 + 16));
    if (result)
    {
      v8 = *a1;
      v9 = *(*a1 + 16);
      if (v9)
      {
        outlined init with copy of PopoverPresentation(v8 + ((v9 - 1) << 7) + 32, v11);
        v12 = v5;
        v13 = v6;
        v14 = 0;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
          v8 = result;
        }

        if (v9 > *(v8 + 16))
        {
          __break(1u);
        }

        else
        {
          result = outlined assign with take of PopoverPresentation(v11, v8 + ((v9 - 1) << 7) + 32);
          *a1 = v8;
        }
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t destroy for _RowVisitationContext(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8) + 8;
  (*v3)(a1, AssociatedTypeWitness);
  v4 = (*(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = swift_getAssociatedTypeWitness();
  v6 = *(v5 - 8);
  v7 = v6 + 8;
  v8 = (a1 + *(v6 + 80) + v4 + 8) & ~*(v6 + 80);
  (*(v6 + 8))(v8, v5);
  v9 = (*(v7 + 56) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = v9 + v12 + 8;
  v16 = v11;
  result = (*(v11 + 48))(v13 & ~v12, 1, v10);
  if (!result)
  {
    v15 = *(v16 + 8);

    return v15(v13 & ~v12, v10);
  }

  return result;
}

void closure #1 in UICollectionViewListCoordinatorBase.collectionView(_:cellForItemAt:)(uint64_t a1@<X0>, char *a2@<X1>, UICollectionView *a3@<X2>, void *a4@<X8>)
{
  v43 = a4;
  v7 = MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ShadowListDataSource();
  v41 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  swift_getWitnessTable();
  v40 = v8;
  v39 = type metadata accessor for _RowVisitationContext();
  v42 = a1;
  v11._countAndFlagsBits = _RowVisitationContext.reuseIdentifier.getter();
  countAndFlagsBits = v11._countAndFlagsBits;
  object = v11._object;
  UICollectionViewListCoordinatorBase.registerIdentifierIfNeeded(_:in:)(v11, a3);
  v14 = MEMORY[0x18D00C850](countAndFlagsBits, object);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v44 = [(UICollectionView *)a3 dequeueReusableCellWithReuseIdentifier:v14 forIndexPath:isa];

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = swift_dynamicCastUnknownClassUnconditional();
  v18 = &a2[*((*v7 & *a2) + 0x108)];
  v19 = *v18;
  v20 = v18[8];
  v21 = *(swift_getAssociatedConformanceWitness() + 8);
  (*(v21 + 136))(v19, v20, AssociatedTypeWitness, v21);
  v22 = AssociatedTypeWitness;
  PlatformListViewBase.updateViewGraphForDisplay(_:)(0);
  type metadata accessor for AnyListCollectionViewCell();
  v23 = swift_dynamicCastClass();
  v24 = v23;
  if (v23)
  {
    *(v23 + OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_selectionDelegate + 8) = &protocol witness table for UICollectionViewListCoordinatorBase<A, B>;
    swift_unknownObjectWeakAssign();
    *&v24[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_insetsDelegate + 8] = &protocol witness table for UICollectionViewListCoordinatorBase<A, B>;
    swift_unknownObjectWeakAssign();
    *&v24[OBJC_IVAR____TtC7SwiftUI25AnyListCollectionViewCell_editMenuDelegate + 8] = &protocol witness table for UICollectionViewListCoordinatorBase<A, B>;
    swift_unknownObjectWeakAssign();
    v25 = v44;
  }

  v26 = MEMORY[0x1E69E7D40];
  v27 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x88);
  swift_beginAccess();
  v29 = v40;
  v28 = v41;
  (*(v41 + 16))(v10, &a2[v27], v40);
  v30 = *((*v26 & *a2) + 0xA0);
  swift_beginAccess();
  v31 = *&a2[v30];
  outlined copy of Transaction?(v31);
  v32 = v42;
  ShadowListDataSource.configureCell(_:transaction:context:)(v17, v31, v42, v29);
  outlined consume of ListItemTint?(v31);
  (*(v28 + 8))(v10, v29);
  v33 = [v17 layer];
  v45 = *(v32 + *(v39 + 40));
  ViewTraitCollection.zIndex.getter();
  [v33 setZPosition_];

  v34 = (*(v21 + 56))(v22, v21);
  if (v34)
  {
    v35 = specialized _UIHostingView.editMenuBridge.getter();

    type metadata accessor for ListCollectionViewCell(0);
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v44;
    }

    swift_unknownObjectWeakAssign();
  }

  *v43 = v17;
}

uint64_t partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:)()
{
  return (*(v0 + 40))();
}

{
  return partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:)();
}

uint64_t _RowVisitationContext.reuseIdentifier.getter()
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v0 = v6 == 0x6C6C65437473694CLL && v7 == 0xE800000000000000;
  if (v0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v2 = *(AssociatedConformanceWitness + 16);
    v3 = swift_checkMetadataState();
    v2(v3, AssociatedConformanceWitness);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v4);
  }

  return v6;
}

void protocol witness for ListCellContent.reuseIdentifier.getter in conformance _ViewList_View()
{
  v1 = *(v0 + 72);
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {

    _ViewList_ID.reuseIdentifier.getter();

    return;
  }

  __break(1u);
}

Swift::Void __swiftcall UICollectionViewListCoordinatorBase.registerIdentifierIfNeeded(_:in:)(Swift::String _, UICollectionView *in)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  swift_beginAccess();
  v7 = *(v2 + v6);

  v8 = specialized Set.contains(_:)(countAndFlagsBits, object, v7);

  if ((v8 & 1) == 0)
  {
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v11, countAndFlagsBits, object);
    swift_endAccess();

    swift_getAssociatedTypeWitness();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = MEMORY[0x18D00C850](countAndFlagsBits, object);
    [(UICollectionView *)in registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];
  }
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  MEMORY[0x18D00F6F0](a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = v10[1] == a2 && *v10 == a1;
    result = v11;
    if (v11)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t MergePlatformItemsView.Transform.value.getter(uint64_t a1)
{
  v2 = type metadata accessor for PlatformItemList.Item();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MergePlatformItemsView.Transform.list.getter(a1);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  PlatformItemList.mergedContentItem.getter(v7, v5);

  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v5, v9 + v8);
  return v9;
}

id @objc ListCollectionViewCell.init(frame:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

uint64_t protocol witness for Rule.value.getter in conformance MergePlatformItemsView<A>.Transform@<X0>(uint64_t *a1@<X8>)
{
  result = MergePlatformItemsView.Transform.value.getter(*v1);
  *a1 = result;
  return result;
}

id ListCollectionViewCellBase.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[direct field offset for ListCollectionViewCellBase.wasEditing] = 0;
  v4[direct field offset for ListCollectionViewCellBase.wasSwiped] = 0;
  v9 = &v4[direct field offset for ListCollectionViewCellBase.cellHostWidth];
  *v9 = 0;
  v9[8] = 1;
  v10 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  v11 = type metadata accessor for UIListContentConfiguration();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[direct field offset for ListCollectionViewCellBase.uniformHeight];
  *v12 = 0;
  v12[8] = 1;
  v4[direct field offset for ListCollectionViewCellBase.shouldHugContent] = 0;
  v13 = &v4[direct field offset for ListCollectionViewCellBase.viewListID];
  *v13 = 0;
  v13[1] = 0;
  v14 = &v4[direct field offset for ListCollectionViewCellBase.selectionBehavior];
  v14[64] = 0;
  *(v14 + 2) = 0u;
  *(v14 + 3) = 0u;
  *v14 = xmmword_18CD633F0;
  *(v14 + 1) = 0u;
  v15 = &v4[direct field offset for ListCollectionViewCellBase._secondaryNavigationBehavior];
  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  v15[3] = 1;
  v15[5] = 0;
  v15[6] = 0;
  v15[4] = 0;
  *&v4[direct field offset for ListCollectionViewCellBase.popUpButtonSeed] = -1;
  *&v4[direct field offset for ListCollectionViewCellBase.host] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for ListCollectionViewCellBase();
  v16 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  [v16 _setAllowsStateUpdatesWhenEvaluatingBackgroundAppearance_];
  [v16 setAutomaticallyUpdatesContentConfiguration_];

  return v16;
}

uint64_t ListCollectionViewCellBase.uniformHeight.setter(uint64_t result, char a2)
{
  v3 = v2 + direct field offset for ListCollectionViewCellBase.uniformHeight;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

void ListCollectionViewCellBase.updateViewGraphForDisplay(_:sizeThatFitsCallback:)(char a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    v8 = a2;
    v9 = a3;
    swift_once();
    a2 = v8;
    a3 = v9;
  }

  if ((static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv & 1) == 0)
  {
    v4 = a2;
    v5 = a3;
    v6 = type metadata accessor for ListCollectionViewCellBase();
    WitnessTable = swift_getWitnessTable();

    PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(a1 & 1, v4, v5, v6, WitnessTable);
  }
}

uint64_t one-time initialization function for isEnabledInProcessEnv()
{
  result = static ProcessEnvironment.BOOL(forKey:defaultValue:)();
  static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv = result & 1;
  return result;
}

void *protocol witness for PlatformListViewBase.host.getter in conformance ListCollectionViewCellBase<A>()
{
  v0 = specialized ListCollectionViewCellBase.host.getter();
  v1 = v0;
  return v0;
}

void PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a5 + 56);
  v11 = v10(a4, a5);
  if (v11)
  {
    v12 = v11;
    if (((_UIHostingView.isHiddenForReuse.getter() ^ a1) & 1) == 0)
    {
      _UIHostingView.isHiddenForReuse.setter((a1 & 1) == 0);
    }
  }

  v13 = (*(a5 + 88))(a4, a5);
  if (v13)
  {
    v14 = v13;
    if (((_UIHostingView.isHiddenForReuse.getter() ^ a1) & 1) == 0)
    {
      _UIHostingView.isHiddenForReuse.setter((a1 & 1) == 0);
    }
  }

  v15 = v10(a4, a5);
  if (v15)
  {
    v16 = v15;
    _UIHostingView.viewGraph.getter();

    swift_beginAccess();
    type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();
    ViewGraphGeometryObservers.removeAll()();
    swift_endAccess();
  }

  if (a1)
  {
    v17 = v10(a4, a5);
    if (v17)
    {
      v18 = v17;
      v19 = [v17 superview];
      if (v19)
      {
        v20 = v19;
        if (a2)
        {

          [v20 bounds];
          CGRectGetWidth(v22);
          _ProposedSize.init(width:height:)();
          _UIHostingView.viewGraph.getter();
          v21 = swift_allocObject();
          *(v21 + 16) = a2;
          *(v21 + 24) = a3;
          swift_beginAccess();
          type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>();

          ViewGraphGeometryObservers.addObserver(for:exclusive:callback:)();
          swift_endAccess();

          _UIHostingView.viewGraph.getter();
          swift_beginAccess();

          ViewGraphGeometryObservers.resetObserver(for:)();

          outlined consume of TriggerSubmitAction?(a2, a3);
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
}

uint64_t sub_18BFE1728()
{

  return swift_deallocObject();
}

uint64_t ListCollectionViewCellBase.backgroundHost.getter()
{
  type metadata accessor for UIBackgroundConfiguration?();
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x18D00DBA0](v1);
  v4 = type metadata accessor for UIBackgroundConfiguration();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v3, type metadata accessor for UIBackgroundConfiguration?);
    return 0;
  }

  v6 = UIBackgroundConfiguration.customView.getter();
  _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(v3, type metadata accessor for UIBackgroundConfiguration?);
  result = 0;
  if (v6)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void type metadata accessor for UIBackgroundConfiguration?()
{
  if (!lazy cache variable for type metadata for UIBackgroundConfiguration?)
  {
    type metadata accessor for UIBackgroundConfiguration();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIBackgroundConfiguration?);
    }
  }
}

uint64_t outlined destroy of UIBackgroundConfiguration?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for UICellAccessory.LayoutDimension?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s5UIKit25UIBackgroundConfigurationVSgWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ShadowListDataSource.configureCell(_:transaction:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v40 = a2;
  v5 = *(a4 + 16);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v29 - v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v30 = &v29 - v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v29 - v15;
  v32 = type metadata accessor for _RowVisitationContext();
  v17 = *(v32 - 8);
  v18 = MEMORY[0x1EEE9AC00](v32);
  v20 = &v29 - v19;
  (*(v14 + 16))(v16, a3, TupleTypeMetadata2, v18);
  v29 = *&v16[*(TupleTypeMetadata2 + 48)];
  swift_getWitnessTable();
  v21 = type metadata accessor for _RowVisitationContext();
  v22 = v30;
  (*(v11 + 16))(v30, a3 + v21[9], AssociatedTypeWitness);
  v23 = v21[11];
  v43 = *(a3 + v21[10]);
  v24 = v33;
  (*(v34 + 16))(v33, a3 + v23, v35);
  LOBYTE(a3) = *(a3 + v21[12]);
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.PrefersFullSizeDragPreviewsKey(&v42);
  protocol witness for static EnvironmentKey.defaultValue.getter in conformance IsHandGestureShortcutEnabled(&v41, v5, v8);
  _RowVisitationContext.init(index:view:traits:explicitSelectionValue:hasMultipleSelection:deleteControlVisibility:reorderControlVisibility:)(v16, v29, v22, &v43, v24, a3, &v42, &v41, v20);
  v25 = v36;
  v26 = v37;
  (*(v37 + 16))(v36, v38, v5);
  v27 = *(v8 + 128);

  v27(v39, v40, v20, v5, v8);
  (*(v26 + 8))(v25, v5);
  return (*(v17 + 8))(v20, v32);
}

uint64_t CollectionViewListDataSource.configureCell(_:transaction:context:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v39 = a1;
  WitnessTable = swift_getWitnessTable();
  v7 = type metadata accessor for _RowVisitationContext();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31[-v9];
  v34 = v11;
  (*(v11 + 16))(&v31[-v9], a3, v7, v8);
  v12 = *(v10 + 18);
  v13 = *(v10 + 19);
  v14 = *(v10 + 10);
  v15 = *(v10 + 14);
  v37 = v4;
  v38 = a4;
  v16 = *(v4 + *(a4 + 52));
  v17 = *(v14 + 16);
  swift_bridgeObjectRetain_n();
  v35 = v7;
  if (v17)
  {
    v18 = *(v14 + 32);
    v19 = *(v14 + 52);

    if (v19)
    {
      v20 = -1;
    }

    else
    {
      v20 = v13;
    }

    v32 = v20;
  }

  else
  {

    v18 = 0;
    v32 = v13;
  }

  KeyPath = swift_getKeyPath();
  v48 = 0;
  v49 = swift_getKeyPath();
  v50 = 0;
  v51 = swift_getKeyPath();
  v52 = 0;
  v53 = swift_getKeyPath();
  v54 = 0;
  v56 = 0;
  v55 = 0;
  v57 = 0;
  v21 = swift_getKeyPath();
  v46 = 0;
  v58 = v21;
  v59 = 0;
  v61 = 1;
  v62 = 0;
  v40 = v15;
  ViewTraitCollection.listRowInsets.getter();
  v40 = v15;
  v43 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v45 = v15;
  v43 = 1;
  v44 = 0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of ListItemTint?(v43);
  v22 = v40;
  v23 = v41;
  outlined consume of ListItemTint?(1);
  v61 = v22;
  v62 = v23;
  v63 = 0;
  v64 = v16;
  v65 = v12;
  v66 = v32;
  v67 = v18;
  v68 = 1;
  v60 = 0;
  v24 = (v39 + direct field offset for ListCollectionViewCellBase.viewListID);
  *v24 = v12 | (v13 << 32);
  v24[1] = v14;

  v40 = *(v10 + 14);
  LOBYTE(v43) = 0;

  v25 = ViewTraitCollection.listItemBackground(kind:)(&v43);

  if (*(v37 + *(v38 + 44) + 8))
  {
    v26 = MEMORY[0x1E697FE38];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();

    v27 = v35;
    v10[*(v35 + 52)] = v40;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, v26);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    v28 = MEMORY[0x1E697FE38];
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey);

    PropertyList.subscript.getter();
    v27 = v35;
    v10[*(v35 + 52)] = v40;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, v28);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey);
    PropertyList.subscript.getter();
  }

  v10[*(v27 + 56)] = v40;
  v10[*(v27 + 48)] = *(v37 + *(v38 + 48));
  ListCollectionViewCellBase.configureAccessories<A>(context:)(v10);
  outlined init with copy of _ViewList_View((v10 + 16), &v40);
  outlined init with copy of CollectionViewCellModifier(&KeyPath, &v42);
  v29 = v36;
  specialized ListCollectionViewCellBase.configureContent(_:transaction:)(&v40, v36);
  outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(&v40);
  _s7SwiftUI20PlatformListViewBasePAASo6UIViewCRbzrlE19configureBackground_6traits11transactionyAA15ModifiedContentVyAA03AnyE0V0I8ModifierQzGSg_AA0E15TraitCollectionVAA11TransactionVSgtFAA0dqe4CellF0CyAA01_ed1_E0VG_Tt0g5(v25, v29);

  outlined destroy of CollectionViewCellModifier(&KeyPath);
  return (*(v34 + 8))(v10, v27);
}

uint64_t ViewTraitCollection.listRowInsets.getter()
{
  v1 = *v0;
  v9 = *v0;
  v6 = 0u;
  v7 = 0u;
  v8 = 1;
  v2 = ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v5)
  {
    *&v6 = v1;
    MEMORY[0x18D007000](&v4, v2);
    return ViewTraitCollection.value<A>(for:defaultValue:)();
  }

  else
  {
    static Edge.Set.all.getter();
    return OptionalEdgeInsets.init(_:edges:)();
  }
}

unint64_t ViewTraitCollection.listItemBackground(kind:)(unsigned __int8 *a1)
{
  v1 = *a1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  outlined consume of Text.LineStyle?(0, 1);
  v2 = v5;
  if (v5 == 1)
  {
    if (v1)
    {
      return 0;
    }

LABEL_7:
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return v4;
  }

  if (v1 <= 0x3F && ((v4 >> v1) & 1) == 0)
  {
    outlined consume of Text.LineStyle?(v4, v5);
    if (v1)
    {
      return 0;
    }

    goto LABEL_7;
  }

  return v2;
}

uint64_t outlined consume of Text.LineStyle?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t ListCollectionViewCellBase.configureAccessories<A>(context:)(uint64_t a1)
{
  v2 = type metadata accessor for UICellAccessory.ReorderOptions();
  v81 = *(v2 - 8);
  v82 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v80 = &v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UICellAccessory.DeleteOptions();
  v88 = *(v4 - 8);
  v89 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIListContentConfiguration?(0, &lazy cache variable for type metadata for UICellAccessory.LayoutDimension?, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v94 = &v74 - v7;
  v8 = type metadata accessor for UICellAccessory.MultiselectOptions();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for UICellAccessory.DisplayedState();
  v95 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v79 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v74 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v74 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v85 = &v74 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v74 - v22;
  v93 = type metadata accessor for UICellAccessory();
  v24 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v83 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v90 = &v74 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = type metadata accessor for Optional();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v74 - v34;
  v36 = type metadata accessor for _RowVisitationContext();
  _RowVisitationContext.selectionValue(respectSelectionDisabled:)(1, v36, v35);
  v37 = (*(*(AssociatedTypeWitness - 8) + 48))(v35, 1, AssociatedTypeWitness);
  (*(v33 + 8))(v35, v32);
  if (v37 == 1)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v92;
    v40 = v24;
LABEL_8:
    v46 = v90;
    goto LABEL_9;
  }

  v40 = v24;
  if (*(a1 + v36[12]) != 1)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v39 = v92;
    goto LABEL_8;
  }

  v41 = v95;
  v39 = v92;
  (*(v95 + 104))(v23, *MEMORY[0x1E69DBF18], v92);
  v42 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v42 - 8) + 56))(v94, 1, 1, v42);
  v43 = v75;
  UICellAccessory.MultiselectOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
  static UICellAccessory.multiselect(displayed:options:)();
  (*(v76 + 8))(v43, v77);
  (*(v41 + 8))(v23, v39);
  v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v45 = v38[2];
  v44 = v38[3];
  if (v45 >= v44 >> 1)
  {
    v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v38);
  }

  v46 = v90;
  v38[2] = v45 + 1;
  (*(v40 + 32))(v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v45, v30, v93);
LABEL_9:
  v47 = _RowVisitationContext.canDelete.getter(v36);
  v48 = v91;
  if (v47 || *(a1 + v36[13]) && (_RowVisitationContext.hasSwipeActions.getter() & 1) != 0)
  {
    v49 = *(a1 + v36[13]);
    v50 = v49 >= 2;
    if (v49 > 2)
    {
      if (v49 != 3)
      {
        goto LABEL_23;
      }

      v92 = v40;
      v51 = MEMORY[0x1E69DBF28];
    }

    else
    {
      v92 = v40;
      v51 = MEMORY[0x1E69DBF20];
      if (!v50)
      {
        v51 = MEMORY[0x1E69DBF18];
      }
    }

    v52 = v95;
    v53 = v86;
    (*(v95 + 104))(v86, *v51, v39);
    v54 = *(v52 + 32);
    v55 = v85;
    v54(v85, v53, v39);
    v54(v48, v55, v39);
    v56 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v56 - 8) + 56))(v94, 1, 1, v56);
    v57 = v87;
    UICellAccessory.DeleteOptions.init(isHidden:reservedLayoutWidth:tintColor:backgroundColor:)();
    static UICellAccessory.delete(displayed:options:actionHandler:)();
    (*(v88 + 8))(v57, v89);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v40 = v92;
    v59 = v38[2];
    v58 = v38[3];
    if (v59 >= v58 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v58 > 1, v59 + 1, 1, v38);
    }

    (*(v95 + 8))(v48, v39);
    v38[2] = v59 + 1;
    (*(v40 + 32))(v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v59, v46, v93);
  }

LABEL_23:
  if (_RowVisitationContext.canMove.getter(v36))
  {
    v60 = *(a1 + v36[14]);
    v61 = v60 >= 2;
    if (v60 > 2)
    {
      v64 = v83;
      v63 = v84;
      if (v60 != 3)
      {
        return UICollectionViewListCell.accessories.setter();
      }

      v62 = MEMORY[0x1E69DBF28];
    }

    else
    {
      v62 = MEMORY[0x1E69DBF20];
      if (!v61)
      {
        v62 = MEMORY[0x1E69DBF18];
      }

      v64 = v83;
      v63 = v84;
    }

    v65 = v95;
    v66 = v79;
    (*(v95 + 104))(v79, *v62, v39);
    v67 = *(v65 + 32);
    v68 = v78;
    v67(v78, v66, v39);
    v67(v63, v68, v39);
    v69 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v69 - 8) + 56))(v94, 1, 1, v69);
    v70 = v80;
    UICellAccessory.ReorderOptions.init(isHidden:reservedLayoutWidth:tintColor:showsVerticalSeparator:)();
    static UICellAccessory.reorder(displayed:options:)();
    (*(v81 + 8))(v70, v82);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38[2] + 1, 1, v38);
    }

    v72 = v38[2];
    v71 = v38[3];
    if (v72 >= v71 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1, v38);
    }

    (*(v95 + 8))(v63, v39);
    v38[2] = v72 + 1;
    (*(v40 + 32))(v38 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v72, v64, v93);
  }

  return UICollectionViewListCell.accessories.setter();
}

uint64_t PlatformItemListTextRepresentable.PlatformRepresentation.value.getter()
{
  v0 = type metadata accessor for PlatformItemList.Item();
  v1 = (v0 - 8);
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v31 = *AGGraphGetValue();
  v5 = v31;
  v6 = PlatformTextRepresentableContext.text.getter();

  _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v32);
  memset(v30, 0, 304);
  v4[32] = 0;
  *(v4 + 3) = 0;
  *(v4 + 8) = 0u;
  *(v4 + 5) = -1;
  v4[56] = 1;
  v7 = v41;
  *(v4 + 12) = v40;
  *(v4 + 13) = v7;
  *(v4 + 14) = v42[0];
  *(v4 + 235) = *(v42 + 11);
  v8 = v37;
  *(v4 + 8) = v36;
  *(v4 + 9) = v8;
  v9 = v39;
  *(v4 + 10) = v38;
  *(v4 + 11) = v9;
  v10 = v33;
  *(v4 + 4) = v32;
  *(v4 + 5) = v10;
  v11 = v35;
  *(v4 + 6) = v34;
  *(v4 + 7) = v11;
  *(v4 + 19) = 0u;
  *(v4 + 20) = 0u;
  *(v4 + 17) = 0u;
  *(v4 + 18) = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 42) = 0x3FFFFFFFCLL;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0u;
  *(v4 + 392) = 0u;
  *(v4 + 51) = 0;
  *(v4 + 52) = 1;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  v4[472] = 0;
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  v4[504] = 0;
  *(v4 + 32) = 0u;
  v4[528] = 4;
  *(v4 + 536) = 0u;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  *(v4 + 600) = 0u;
  *(v4 + 616) = 0u;
  *(v4 + 632) = 0u;
  *(v4 + 648) = 0u;
  *(v4 + 664) = 0u;
  *(v4 + 680) = 0u;
  *(v4 + 696) = 0u;
  *(v4 + 712) = 0u;
  *(v4 + 728) = 0u;
  *(v4 + 744) = 0u;
  *(v4 + 760) = 0u;
  *(v4 + 776) = 0u;
  *(v4 + 792) = 0u;
  *(v4 + 808) = 0u;
  *(v4 + 824) = 0u;
  *(v4 + 840) = 0u;
  *(v4 + 107) = 0;
  *(v4 + 108) = 1;
  *(v4 + 872) = 0u;
  *(v4 + 888) = 0u;
  *(v4 + 904) = 0u;
  *(v4 + 920) = 0u;
  *(v4 + 936) = 0u;
  *(v4 + 476) = 1283;
  v4[954] = 3;
  v12 = v1[30];
  v13 = type metadata accessor for CommandOperation();
  (*(*(v13 - 8) + 56))(&v4[v12], 1, 1, v13);
  v4[v1[31]] = 0;
  v4[v1[32]] = 0;
  v4[v1[33]] = 2;
  v4[v1[34]] = 0;
  v4[v1[35]] = 0;
  v14 = v1[36];
  *v4 = v6;
  v15 = *(v4 + 13);
  v43[8] = *(v4 + 12);
  v43[9] = v15;
  v44[0] = *(v4 + 14);
  *(v44 + 11) = *(v4 + 235);
  v16 = *(v4 + 9);
  v43[4] = *(v4 + 8);
  v43[5] = v16;
  v17 = *(v4 + 11);
  v43[6] = *(v4 + 10);
  v43[7] = v17;
  v18 = *(v4 + 5);
  v43[0] = *(v4 + 4);
  v43[1] = v18;
  v19 = *(v4 + 7);
  v43[2] = *(v4 + 6);
  v43[3] = v19;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v43, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
  v20 = v41;
  *(v4 + 12) = v40;
  *(v4 + 13) = v20;
  *(v4 + 14) = v42[0];
  *(v4 + 235) = *(v42 + 11);
  v21 = v37;
  *(v4 + 8) = v36;
  *(v4 + 9) = v21;
  v22 = v39;
  *(v4 + 10) = v38;
  *(v4 + 11) = v22;
  v23 = v33;
  *(v4 + 4) = v32;
  *(v4 + 5) = v23;
  v24 = v35;
  *(v4 + 6) = v34;
  *(v4 + 7) = v24;
  v25 = *(v4 + 456);
  v45[2] = *(v4 + 440);
  v45[3] = v25;
  v46 = v4[472];
  v26 = *(v4 + 424);
  v45[0] = *(v4 + 408);
  v45[1] = v26;
  _s7SwiftUI16PlatformItemListV0D0V13AccessibilityVSgWOhTm_0(v45, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  *(v4 + 408) = xmmword_18CD633F0;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0u;
  v4[472] = 0;
  outlined assign with take of PlatformItemList.Item.Accessibility?(v30, (v4 + 536), &lazy cache variable for type metadata for PlatformItemList.Item.Accessibility?, &type metadata for PlatformItemList.Item.Accessibility);
  *&v4[v14] = 0;
  *(v4 + 6) = 0;
  _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v27 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_18CD63400;
  outlined init with take of PlatformItemList.Item(v4, v28 + v27);
  return v28;
}

uint64_t _RowVisitationContext.selectionValue(respectSelectionDisabled:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v18 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v17 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  v11 = *(a2 + 40);
  v20 = *(v3 + v11);
  v19 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v21 & 1) == 0 && (a1)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(v18, 1, 1, AssociatedTypeWitness);
  }

  (*(v17 + 16))(v10, v3 + *(a2 + 44), v8);
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, AssociatedTypeWitness) == 1)
  {
    v20 = *(v4 + v11);
    swift_getAssociatedConformanceWitness();

    ViewTraitCollection.listSelectionIdentityValue<A>(for:respectSelectionDisabled:)(1, AssociatedTypeWitness, v18);

    result = v14(v10, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v17 + 8))(v10, v8);
    }
  }

  else
  {
    v15 = v18;
    (*(v13 + 32))(v18, v10, AssociatedTypeWitness);
    return (*(v13 + 56))(v15, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

BOOL _RowVisitationContext.canDelete.getter(uint64_t a1)
{
  type metadata accessor for DeleteInteraction?(0, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  v9[1] = *(v1 + *(a1 + 40));
  ViewTraitCollection.deleteInteraction.getter((v9 - v4));
  v6 = type metadata accessor for DeleteInteraction();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of DeleteInteraction?(v5, &lazy cache variable for type metadata for DeleteInteraction?, type metadata accessor for DeleteInteraction);
    return 0;
  }

  else
  {
    v7 = *&v5[*(v6 + 24)] != 0;
    outlined destroy of MoveInteraction(v5, type metadata accessor for DeleteInteraction);
  }

  return v7;
}

void type metadata accessor for DeleteInteraction?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t type metadata accessor for DeleteInteraction()
{
  result = type metadata singleton initialization cache for DeleteInteraction;
  if (!type metadata singleton initialization cache for DeleteInteraction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for DeleteInteraction()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ViewTraitCollection.deleteInteraction.getter@<X0>(void *a1@<X8>)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if ((v11 & 1) != 0 || (ViewTraitCollection.value<A>(for:defaultValue:)(), (v2 = ViewTraitCollection.onDelete.getter()) == 0))
  {
    v6 = type metadata accessor for DeleteInteraction();
    return (*(*(v6 - 8) + 56))(a1, 1, 1, v6);
  }

  else
  {
    v4 = v2;
    v5 = v3;
    ViewTraitCollection.value<A>(for:defaultValue:)();

    v7 = type metadata accessor for DeleteInteraction();
    v8 = (a1 + *(v7 + 24));
    *a1 = v10;
    IndexSet.init(integer:)();
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
    *v8 = v4;
    v8[1] = v5;
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }
}

uint64_t (*ViewTraitCollection.onDelete.getter())()
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v1)
  {
    *(swift_allocObject() + 16) = v1;
    return partial apply for thunk for @escaping @callee_guaranteed (@inout UISplitViewControllerProxy) -> (@out ());
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return 0;
  }
}

uint64_t sub_18BFE3E2C()
{

  return swift_deallocObject();
}

uint64_t sub_18BFE3E7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IndexSet();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_18BFE3F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t outlined destroy of DeleteInteraction?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for DeleteInteraction?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

BOOL _RowVisitationContext.canMove.getter(uint64_t a1)
{
  type metadata accessor for DeleteInteraction?(0, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v9 - v4);
  v9[1] = *(v1 + *(a1 + 40));
  ViewTraitCollection.moveInteraction.getter(v9 - v4);
  v6 = type metadata accessor for MoveInteraction();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of DeleteInteraction?(v5, &lazy cache variable for type metadata for MoveInteraction?, type metadata accessor for MoveInteraction);
    return 0;
  }

  else
  {
    v7 = *v5 != 0;
    outlined destroy of MoveInteraction(v5, type metadata accessor for MoveInteraction);
  }

  return v7;
}

uint64_t type metadata accessor for MoveInteraction()
{
  result = type metadata singleton initialization cache for MoveInteraction;
  if (!type metadata singleton initialization cache for MoveInteraction)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MoveInteraction()
{
  result = type metadata accessor for IndexSet();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t ViewTraitCollection.moveInteraction.getter@<X0>(uint64_t a1@<X8>)
{
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v9)
  {
    v2 = type metadata accessor for MoveInteraction();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v3 = ViewTraitCollection.onMove.getter();
    v5 = v4;
    v6 = type metadata accessor for MoveInteraction();
    IndexSet.init(integer:)();
    *a1 = v3;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    *(a1 + *(v6 + 28)) = v8;
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }
}

void partial apply for implicit closure #2 in implicit closure #1 in PlatformItemLabelView.body.getter(uint64_t *a1)
{
  type metadata accessor for PlatformItemLabelView();

  specialized PlatformItemLabelView.applyLabel(_:)(a1);
}

void specialized PlatformItemLabelView.applyLabel(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for PlatformItemList.Item();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v20 - v10);
  v12 = *a1;
  v13 = *(*a1 + 16);
  if (v13)
  {
    v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    outlined init with copy of PlatformItemList.Item(v12 + v14, &v20 - v10);
    if (v13 == 1)
    {
    }

    else
    {
      outlined init with copy of PlatformItemList.Item(v12 + v14 + *(v3 + 72), v8);
      v15 = *(v8 + 112);
      v16 = v15;
      if (!v15)
      {
        v16 = *v8;
        v17 = *v8;
      }

      v18 = v15;
      _s7SwiftUI16CommandOperationVWOhTm_0(v8, type metadata accessor for PlatformItemList.Item);

      v11[112] = v16;
    }

    outlined init with copy of PlatformItemList.Item(v11, v5);
    _s7SwiftUI16CommandOperationVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_18CD63400;
    outlined init with take of PlatformItemList.Item(v5, v19 + v14);
    *a1 = v19;
    _s7SwiftUI16CommandOperationVWOhTm_0(v11, type metadata accessor for PlatformItemList.Item);
  }
}

uint64_t (*ViewTraitCollection.onMove.getter())(uint64_t a1, uint64_t a2)
{
  *&v3 = *v0;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (v2)
  {
    return 0;
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  if (!v3)
  {
    ViewTraitCollection.value<A>(for:defaultValue:)();
    return 0;
  }

  *(swift_allocObject() + 16) = v3;
  return partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IndexSet, @in_guaranteed Int) -> (@out ());
}

uint64_t sub_18BFE47CC()
{

  return swift_deallocObject();
}

void *sub_18BFE481C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18BFE48D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for IndexSet();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t outlined destroy of MoveInteraction(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI15MoveInteractionVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for MoveInteraction(char *a1, uint64_t a2)
{
  if (*a1)
  {
  }

  v4 = *(a2 + 24);
  v5 = type metadata accessor for IndexSet();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v4], v5);
}

uint64_t UIKitButtonStyleModifier.ResolvedBody.transform(itemList:)(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for PlatformItemList.Item();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v23 - v10;
  PlatformItemList.mergedContentItem.getter(*a1, v23 - v10);

  v12 = v2 + *(a2 + 40);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = 0;
  v16 = 0;
  if (specialized Environment.wrappedValue.getter(*v12, v14))
  {
    v17 = v2 + *(a2 + 36);
    v15 = *(v17 + 8);
    v16 = *(v17 + 16);
    outlined copy of AppIntentExecutor?(v15);
  }

  v24 = v11[472];
  v18 = *(v11 + 456);
  v23[2] = *(v11 + 440);
  v23[3] = v18;
  v19 = *(v11 + 424);
  v23[0] = *(v11 + 408);
  v23[1] = v19;
  _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_0(v23, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior);
  v11[408] = 1;
  *(v11 + 409) = 0;
  *(v11 + 52) = v15;
  *(v11 + 53) = v16;
  *(v11 + 27) = 0u;
  *(v11 + 28) = 0u;
  *(v11 + 457) = 0u;
  v11[56] = specialized Environment.wrappedValue.getter(v13, v14) & 1;
  outlined init with copy of PlatformItemList.Item(v11, v8, type metadata accessor for PlatformItemList.Item);
  type metadata accessor for UIButton.Configuration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_18CD63400;
  outlined init with take of StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(v8, v21 + v20, type metadata accessor for PlatformItemList.Item);
  *a1 = v21;
  return outlined destroy of UIKitSystemButtonConfigurationModifier(v11, type metadata accessor for PlatformItemList.Item);
}

uint64_t outlined destroy of AccessibilityProperties?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<Text>(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for PlatformItemList.Item.SelectionBehavior?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityLabelPresentation?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for [ContentScrollViewBox](0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s7SwiftUI23AccessibilityPropertiesVSgWOhTm_3(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI22AnyAccessibilityActionVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t initializeWithCopy for CollectionViewCellModifier(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v8 = *(a2 + 32);
  v9 = *(a2 + 41);
  v10 = *(a2 + 40);
  outlined copy of Environment<ListItemTint?>.Content(v8, v10, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v10;
  *(a1 + 41) = v9;
  v11 = *(a2 + 48);
  v12 = *(a2 + 56);
  v13 = *(a2 + 64);
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  outlined copy of Environment<EdgeInsets>.Content(v11, v12, v13, v14, v15);
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v14;
  *(a1 + 80) = v15;
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  v18 = *(a2 + 104);
  v19 = *(a2 + 112);
  v20 = *(a2 + 120);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  v23 = *(a2 + 144);
  v30 = *(a2 + 152);
  v31 = *(a2 + 160);
  v32 = *(a2 + 168);
  v33 = *(a2 + 169);
  outlined copy of Environment<ListContentStyling>.Content(v16, v17, v18, v19, v20, v21, v22, v23, v30, v31, v32, v33);
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  *(a1 + 104) = v18;
  *(a1 + 112) = v19;
  *(a1 + 120) = v20;
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v23;
  *(a1 + 152) = v30;
  *(a1 + 160) = v31;
  *(a1 + 168) = v32;
  *(a1 + 169) = v33;
  *(a1 + 170) = *(a2 + 170);
  v24 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v24;
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  v25 = *(a2 + 256);
  if (v25 == 1)
  {
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 264) = *(a2 + 264);
  }

  else
  {
    *(a1 + 256) = v25;
    *(a1 + 264) = *(a2 + 264);
  }

  *(a1 + 265) = *(a2 + 265);
  *(a1 + 272) = *(a2 + 272);
  v26 = *(a2 + 350);
  if (v26 == 2)
  {
    v27 = *(a2 + 304);
    *(a1 + 304) = v27;
    (**(v27 - 8))(a1 + 280, a2 + 280);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 328) = *(a2 + 328);
  }

  else if (v26 == 1)
  {
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 288) = *(a2 + 288);
  }

  else
  {
    v28 = *(a2 + 304);
    *(a1 + 304) = v28;
    (**(v28 - 8))(a1 + 280, a2 + 280);
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 328) = *(a2 + 328);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 344) = *(a2 + 344);
    *(a1 + 348) = *(a2 + 348);
  }

  *(a1 + 350) = v26;

  return a1;
}

uint64_t outlined init with copy of PlatformItemList.Item(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_2(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI16PlatformItemListV0D0VWOcTm_3(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of StaticIf<InterfaceIdiomPredicate<CarPlayInterfaceIdiom>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>, StaticIf<UseFlattenedUIKitButton, UIKitFlattenedButtonAdaptor<HStack<UIKitButtonConfiguration.Label>>, UIKitButtonAdaptor<ViewContent<HStack<UIKitButtonConfiguration.Label>>>>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined copy of Environment<EdgeInsets>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t outlined copy of Environment<ListContentStyling>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  if (a12)
  {

    return outlined copy of Transaction?(a10);
  }

  else
  {
  }
}

uint64_t protocol witness for Rule.value.getter in conformance UIKitMenuButton<A, B>.TransformItemList@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = UIKitMenuButton.TransformItemList.value.getter(*v2, *(v2 + 8), *(v2 + 16), a1[2], a1[3], a1[4], a1[5]);
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a2[1] = result;
  return result;
}

uint64_t specialized ListCollectionViewCellBase.configureContent(_:transaction:)(uint64_t a1, unint64_t a2)
{
  type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv == 1)
  {
    v11 = outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v25, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
    v12 = &v7[*(v5 + 56)];
    *v12 = 1;
    MEMORY[0x18D007050](v11);
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 1;
    *(v12 + 97) = 1;
    v13 = type metadata accessor for UIHostingConfigurationStorage(0);
    v14 = v13[9];
    v15 = type metadata accessor for UICellConfigurationState();
    (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
    v12[v13[10]] = 0;
    *&v12[v13[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    outlined init with copy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, v7, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
    *v12 = 0;
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 0;
    static Edge.Set.all.getter();
    outlined init with copy of TableCellFormula(v7, v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v16 = &v10[*(v5 + 56)];
    v17 = *(v16 + 24);
    v22 = *(v16 + 8);
    v23 = v17;
    v24[0] = *(v16 + 40);
    *(v24 + 9) = *(v16 + 49);
    OptionalEdgeInsets.init(_:edges:)();
    OptionalEdgeInsets.adding(_:)();
    outlined destroy of TableCellFormula(v7, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v18 = v25[29];
    *(v16 + 8) = v25[28];
    *(v16 + 24) = v18;
    *(v16 + 40) = v26[0];
    *(v16 + 49) = *(v26 + 9);
    v16[97] = 0;
    *&v16[v13[11] + 8] = &protocol witness table for ListCollectionViewCellBase<A>;
    swift_unknownObjectWeakAssign();
    *(&v23 + 1) = v5;
    *&v24[0] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView> and conformance UIHostingConfiguration<A, B>, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    outlined init with copy of TableCellFormula(v10, boxed_opaque_existential_1, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    *(boxed_opaque_existential_1 + *(v5 + 56) + v13[10]) = 1;
    outlined destroy of TableCellFormula(v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    MEMORY[0x18D00DB90](&v22);
    return outlined destroy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
  }

  else
  {

    return specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(a1, a2);
  }
}

{
  type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21[-v9];
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv == 1)
  {
    v11 = outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v25, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    v12 = &v7[*(v5 + 56)];
    *v12 = 1;
    MEMORY[0x18D007050](v11);
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 1;
    *(v12 + 97) = 1;
    v13 = type metadata accessor for UIHostingConfigurationStorage(0);
    v14 = v13[9];
    v15 = type metadata accessor for UICellConfigurationState();
    (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
    v12[v13[10]] = 0;
    *&v12[v13[11] + 8] = 0;
    swift_unknownObjectWeakInit();
    outlined init with copy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, v7, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
    *v12 = 0;
    *(v12 + 9) = 0;
    v12[80] = 1;
    *(v12 + 11) = 0;
    v12[96] = 0;
    static Edge.Set.all.getter();
    outlined init with copy of TableCellFormula(v7, v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v16 = &v10[*(v5 + 56)];
    v17 = *(v16 + 24);
    v22 = *(v16 + 8);
    v23 = v17;
    v24[0] = *(v16 + 40);
    *(v24 + 9) = *(v16 + 49);
    OptionalEdgeInsets.init(_:edges:)();
    OptionalEdgeInsets.adding(_:)();
    outlined destroy of TableCellFormula(v7, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    v18 = v26;
    *(v16 + 8) = *&v25[488];
    *(v16 + 24) = v18;
    *(v16 + 40) = v27[0];
    *(v16 + 49) = *(v27 + 9);
    v16[97] = 0;
    *&v16[v13[11] + 8] = &protocol witness table for ListCollectionViewCellBase<A>;
    swift_unknownObjectWeakAssign();
    *(&v23 + 1) = v5;
    *&v24[0] = lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, EmptyModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView> and conformance UIHostingConfiguration<A, B>, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
    outlined init with copy of TableCellFormula(v10, boxed_opaque_existential_1, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    *(boxed_opaque_existential_1 + *(v5 + 56) + v13[10]) = 1;
    outlined destroy of TableCellFormula(v10, type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    MEMORY[0x18D00DB90](&v22);
    return outlined destroy of ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(v25, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView);
  }

  else
  {

    return specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(a1, a2);
  }
}

uint64_t (*UIKitMenuButton.TransformItemList.value.getter(unint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))(uint64_t *a1)
{
  v11 = a2;
  v12 = a1;
  v13 = HIDWORD(a1);
  v14 = HIDWORD(a2);
  v15 = *AGGraphGetValue();
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 48) = v15;
  *(v16 + 56) = v12;
  *(v16 + 60) = v13;
  *(v16 + 64) = v11;
  *(v16 + 68) = v14;
  *(v16 + 72) = a3;

  return partial apply for closure #1 in UIKitMenuButton.TransformItemList.value.getter;
}

uint64_t sub_18BFE5B04()
{

  return swift_deallocObject();
}

void type metadata accessor for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>()
{
  if (!lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for UIHostingConfiguration();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UIHostingConfiguration<ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, EmptyView>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, a3, a4, &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfigurationBackedList>, lazy protocol witness table accessor for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, MEMORY[0x1E697FD28]);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

Swift::Void __swiftcall PlatformItemListGenerator.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v39 = *MEMORY[0x1E69E9840];
  if (!AGGraphGetOutputValue())
  {
    v4 = v2[3];
    v5 = v2[5];
    v31 = v2[4];
    v32[0] = v5;
    *(v32 + 12) = *(v2 + 92);
    v6 = v2[1];
    v28[0] = *v2;
    v28[1] = v6;
    v7 = v2[3];
    v9 = *v2;
    v8 = v2[1];
    v29 = v2[2];
    v30 = v7;
    v10 = v2[5];
    v26 = v31;
    v27[0] = v10;
    *(v27 + 12) = *(v2 + 92);
    v22 = v9;
    v23 = v8;
    v24 = v29;
    v25 = v4;
    v11 = implicit closure #1 in PlatformItemListGenerator.updateValue()(&v22, v3[2], v3[3], v3[4], v3[5]);
    v37 = v26;
    v38[0] = v27[0];
    *(v38 + 12) = *(v27 + 12);
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v36 = v25;
    v12 = *(v3 - 1);
    (*(v12 + 16))(&v21, v28, v3);
    (*(v12 + 8))(&v33, v3);
    AGGraphClearUpdate();
    v13 = AGSubgraphGetCurrent();
    v14 = AGSubgraphSetCurrent();
    v15 = (v11)(v14);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();

    *(v2 + 26) = v15;
  }

  v16 = v2[5];
  v37 = v2[4];
  v38[0] = v16;
  *(v38 + 12) = *(v2 + 92);
  v17 = v2[1];
  v33 = *v2;
  v34 = v17;
  v18 = v2[3];
  v35 = v2[2];
  v36 = v18;
  v19 = PlatformItemListGenerator.itemList.getter();
  if (v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *&v33 = v20;
  AGGraphSetOutputValue();
}

void type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _s7SwiftUI15ModifiedContentVyAA12TableRowViewVAA010CollectionG12CellModifierVGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t (*implicit closure #1 in PlatformItemListGenerator.updateValue()(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v10 = a1[5];
  v20[4] = a1[4];
  v21[0] = v10;
  *(v21 + 12) = *(a1 + 92);
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = a1[3];
  v20[2] = a1[2];
  v20[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  v14 = a1[5];
  *(v13 + 112) = a1[4];
  *(v13 + 128) = v14;
  *(v13 + 140) = *(a1 + 92);
  v15 = a1[1];
  *(v13 + 48) = *a1;
  *(v13 + 64) = v15;
  v16 = a1[3];
  *(v13 + 80) = a1[2];
  *(v13 + 96) = v16;
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  v17 = type metadata accessor for PlatformItemListGenerator();
  (*(*(v17 - 8) + 16))(v19, v20, v17);
  return partial apply for implicit closure #2 in implicit closure #1 in PlatformItemListGenerator.updateValue();
}

uint64_t sub_18BFE60C0()
{

  return swift_deallocObject();
}

void type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t PlatformItemListGenerator.makeItemList()(uint64_t a1)
{
  v2 = v1[5];
  v48 = v1[4];
  *v49 = v2;
  *&v49[12] = *(v1 + 92);
  v3 = v1[1];
  v46 = *v1;
  v47[0] = v3;
  v4 = v1[3];
  v47[1] = v1[2];
  v47[2] = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v1[4];
  v42 = v1[3];
  v43 = v8;
  v44 = v1[5];
  v45 = *(v1 + 24);
  v9 = v1[2];
  v40 = v1[1];
  v41 = v9;
  if (v49[20] == 1)
  {
    v10 = v1[4];
    v11 = v1[2];
    v30 = v1[3];
    v31 = v10;
    v12 = v1[4];
    v32 = v1[5];
    v13 = v1[2];
    v28 = v1[1];
    v29 = v13;
    v21 = v30;
    v22 = v12;
    v23 = v1[5];
    v33 = *(v1 + 24);
    v24 = *(v1 + 24);
    v19 = v28;
    v20 = v11;
    outlined init with copy of _ViewInputs(v47, &v34);
    outlined init with copy of _ViewInputs(&v28, &v34);
    _ViewInputs.withoutGeometryDependencies.getter();
    v14 = v1[4];
    v36 = v1[3];
    v37 = v14;
    v38 = v1[5];
    v39 = *(v1 + 24);
    v15 = v1[2];
    v34 = v1[1];
    v35 = v15;
    outlined destroy of _ViewInputs(&v34);
    outlined destroy of _ViewInputs(&v28);
    PreferenceKeys.init()();
    v26 = v19;
    type metadata accessor for GraphHost();
    MEMORY[0x18D00B7D0]();
    v25 = 0;
    GraphHost.intern<A>(_:for:id:)();

    PreferencesInputs.init(hostKeys:)();

    *&v43 = v19;
    DWORD2(v43) = DWORD2(v19);
  }

  else
  {
    outlined init with copy of _ViewInputs(v47, &v34);
  }

  _ViewInputs.addPlatformItemListKey<A>(flags:editOperation:)(v5, 0, v5, v6);
  LOBYTE(v34) = 1;
  lazy protocol witness table accessor for type IsPlatformItemListSourceInput and conformance IsPlatformItemListSourceInput();
  PropertyList.subscript.setter();
  if ((v7 & 0x10) != 0)
  {
    *&v34 = v48;
    DWORD2(v34) = DWORD2(v48);
    if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
    {
      PreferenceKeys.add(_:)();
    }
  }

  _GraphValue.init(_:)();
  v30 = v42;
  v31 = v43;
  v32 = v44;
  v33 = v45;
  v28 = v40;
  v29 = v41;
  v21 = v42;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  v19 = v40;
  v20 = v41;
  outlined init with copy of _ViewInputs(&v28, &v34);
  static View.makeDebuggableView(view:inputs:)();
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v34 = v19;
  v35 = v20;
  outlined destroy of _ViewInputs(&v34);
  *&v19 = v26;
  DWORD2(v19) = v27;
  v16 = PreferencesOutputs.subscript.getter();

  if ((v16 & 0x100000000) != 0)
  {
    v17 = *MEMORY[0x1E698D3F8];
  }

  else
  {
    v17 = v16;
  }

  v21 = v42;
  v22 = v43;
  v23 = v44;
  v24 = v45;
  v19 = v40;
  v20 = v41;
  outlined destroy of _ViewInputs(&v19);
  return v17;
}

unint64_t lazy protocol witness table accessor for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList()
{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList;
  if (!lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList);
  }

  return result;
}

uint64_t _ViewInputs.addPlatformItemListKey<A>(flags:editOperation:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  PreferenceKeys.add(_:)();
  lazy protocol witness table accessor for type PlatformItemListTextRepresentable and conformance PlatformItemListTextRepresentable();
  _ViewInputs.requestedTextRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListImageRepresentable and conformance PlatformItemListImageRepresentable();
  _ViewInputs.requestedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListNamedImageRepresentable and conformance PlatformItemListNamedImageRepresentable();
  _ViewInputs.requestedNamedImageRepresentation.setter();
  lazy protocol witness table accessor for type PlatformItemListSpacerRepresentable and conformance PlatformItemListSpacerRepresentable();
  _ViewInputs.requestedSpacerRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DividerRepresentationKey and conformance _GraphInputs.DividerRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.setter();
  lazy protocol witness table accessor for type PlatformItemListHiddenRepresentable and conformance PlatformItemListHiddenRepresentable();
  _ViewInputs.requestedHiddenRepresentation.setter();
  lazy protocol witness table accessor for type _GraphInputs.DynamicHiddenRepresentationKey and conformance _GraphInputs.DynamicHiddenRepresentationKey();
  result = PropertyList.subscript.setter();
  if (v7 != 2)
  {
    (*(a4 + 8))(a3, a4);
    lazy protocol witness table accessor for type PlatformItemListFlagsInput and conformance PlatformItemListFlagsInput();
    if (a2)
    {
      PropertyList.subscript.getter();
    }

    return PropertyList.subscript.setter();
  }

  return result;
}

unint64_t type metadata accessor for PlatformDividerRepresentable.Type()
{
  result = lazy cache variable for type metadata for PlatformDividerRepresentable.Type;
  if (!lazy cache variable for type metadata for PlatformDividerRepresentable.Type)
  {
    type metadata accessor for PlatformDividerRepresentable();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDividerRepresentable.Type);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<TableRowView, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewList_View, CollectionViewCellModifier>, ViewInputFlagModifier<IsInHostingConfigurationBackedList>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for PlatformDividerRepresentable.Type?()
{
  if (!lazy cache variable for type metadata for PlatformDividerRepresentable.Type?)
  {
    type metadata accessor for PlatformDividerRepresentable.Type();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformDividerRepresentable.Type?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, a2, MEMORY[0x1E697D9F0], a3, MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t type metadata accessor for PlatformDividerRepresentable()
{
  result = lazy cache variable for type metadata for PlatformDividerRepresentable;
  if (!lazy cache variable for type metadata for PlatformDividerRepresentable)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformDividerRepresentable);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier()
{
  result = lazy protocol witness table cache variable for type CollectionViewCellModifier and conformance CollectionViewCellModifier;
  if (!lazy protocol witness table cache variable for type CollectionViewCellModifier and conformance CollectionViewCellModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _RowVisitationContext<TableDataSourceAdaptor>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsInHostingConfigurationBackedList>, lazy protocol witness table accessor for type IsInHostingConfigurationBackedList and conformance IsInHostingConfigurationBackedList, &type metadata for IsInHostingConfigurationBackedList, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsInHostingConfigurationBackedList> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

void type metadata accessor for PlatformViewThatFitsRepresentable.Type?()
{
  if (!lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type?)
  {
    type metadata accessor for PlatformViewThatFitsRepresentable.Type();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type?);
    }
  }
}

unint64_t type metadata accessor for PlatformViewThatFitsRepresentable.Type()
{
  result = lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type;
  if (!lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for PlatformViewThatFitsRepresentable);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for PlatformViewThatFitsRepresentable.Type);
  }

  return result;
}

uint64_t specialized PlatformListCell<>.defaultConfigureContent(_:transaction:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  static Update.lock()();
  v6 = direct field offset for ListCollectionViewCellBase.host;
  v7 = *&v3[direct field offset for ListCollectionViewCellBase.host];
  if (v7)
  {
    if (a2 >= 2)
    {
      v29 = v7;
      outlined copy of Transaction?(a2);
      specialized _UIHostingView.setRootView(_:transaction:)(a1);

      outlined consume of ListItemTint?(a2);
    }

    else
    {
      v8 = MEMORY[0x1E697D9F0];
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v8, &type metadata for CollectionViewCellModifier);
      v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
      swift_beginAccess();
      v10 = v7;
      outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v32, v7 + v9, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v8, &type metadata for CollectionViewCellModifier);
      swift_endAccess();
      type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v8, &type metadata for CollectionViewCellModifier);
    }
  }

  else
  {
    v11 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier);
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for CellHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>, type metadata accessor for CellHostingView);
    v13 = objc_allocWithZone(v12);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, v31, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    v14 = specialized _UIHostingView.init(rootView:)(v31);
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    v15 = v14;
    UIHostingViewBase.isHiddenForReuse.setter();
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, v11, &type metadata for CollectionViewCellModifier);
    if (a2 != 1)
    {

      UIHostingViewBase.viewGraph.getter();

      GraphHost.emptyTransaction(_:)();

      outlined consume of ListItemTint?(a2);
    }

    v16 = *&v3[v6];
    *&v3[v6] = v14;
    v17 = v15;

    specialized ListCollectionViewCellBase.host.didset();
    v18 = [v3 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v17 setFrame_];
    v27 = v17;
    [v27 setAutoresizingMask_];
    [v27 setPreservesSuperviewLayoutMargins_];

    v28 = [v3 contentView];
    [v28 addSubview_];
  }

  return static Update.unlock()();
}

{
  v3 = v2;
  static Update.lock()();
  v6 = direct field offset for ListCollectionViewCellBase.host;
  v7 = *&v3[direct field offset for ListCollectionViewCellBase.host];
  if (v7)
  {
    if (a2 >= 2)
    {
      v27 = v7;
      outlined copy of Transaction?(a2);
      specialized _UIHostingView.setRootView(_:transaction:)(a1);

      outlined consume of ListItemTint?(a2);
    }

    else
    {
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, v30, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
      v8 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
      swift_beginAccess();
      v9 = v7;
      outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v30, v7 + v8, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
      swift_endAccess();
      type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for _UIHostingView, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    }
  }

  else
  {
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>(0, &lazy cache variable for type metadata for CellHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>, type metadata accessor for CellHostingView);
    v11 = objc_allocWithZone(v10);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, v30, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v30, v29, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    v12 = specialized _UIHostingView.init(rootView:)(v29);
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v30, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    v13 = v12;
    UIHostingViewBase.isHiddenForReuse.setter();
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v31, &lazy cache variable for type metadata for ModifiedContent<TableRowView, CollectionViewCellModifier>, &type metadata for TableRowView, &type metadata for CollectionViewCellModifier);
    if (a2 != 1)
    {

      UIHostingViewBase.viewGraph.getter();

      GraphHost.emptyTransaction(_:)();

      outlined consume of ListItemTint?(a2);
    }

    v14 = *&v3[v6];
    *&v3[v6] = v12;
    v15 = v13;

    specialized ListCollectionViewCellBase.host.didset();
    v16 = [v3 contentView];
    [v16 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v15 setFrame_];
    v25 = v15;
    [v25 setAutoresizingMask_];
    [v25 setPreservesSuperviewLayoutMargins_];

    v26 = [v3 contentView];
    [v26 addSubview_];
  }

  return static Update.unlock()();
}

{
  v3 = v2;
  static Update.lock()();
  v6 = OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host;
  v7 = *&v3[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
  if (v7)
  {
    if (a2 >= 2)
    {
      v29 = v7;
      outlined copy of Transaction?(a2);
      specialized _UIHostingView.setRootView(_:transaction:)(a1);

      outlined consume of ListItemTint?(a2);
    }

    else
    {
      v8 = MEMORY[0x1E697D9F0];
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
      outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v8, &type metadata for ListTableCellModifier);
      v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x60);
      swift_beginAccess();
      v10 = v7;
      outlined assign with take of ModifiedContent<TableRowView, CollectionViewCellModifier>(v32, v7 + v9, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v8, &type metadata for ListTableCellModifier);
      swift_endAccess();
      type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, type metadata accessor for _UIHostingView, type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v8, &type metadata for ListTableCellModifier);
    }
  }

  else
  {
    v11 = MEMORY[0x1E697D9F0];
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(a1, v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, MEMORY[0x1E697D9F0], &type metadata for ListTableCellModifier);
    type metadata accessor for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>(0, &lazy cache variable for type metadata for CellHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>, type metadata accessor for CellHostingView);
    v13 = objc_allocWithZone(v12);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, v31, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    v14 = specialized _UIHostingView.init(rootView:)(v31);
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v32, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    v15 = v14;
    UIHostingViewBase.isHiddenForReuse.setter();
    outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(v33, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, ListTableCellModifier>, v11, &type metadata for ListTableCellModifier);
    if (a2 != 1)
    {

      UIHostingViewBase.viewGraph.getter();

      GraphHost.emptyTransaction(_:)();

      outlined consume of ListItemTint?(a2);
    }

    v16 = *&v3[v6];
    *&v3[v6] = v14;
    v17 = v15;

    ListTableViewCell.host.didset();
    v18 = [v3 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    [v17 setFrame_];
    v27 = v17;
    [v27 setAutoresizingMask_];
    [v27 setPreservesSuperviewLayoutMargins_];

    v28 = [v3 contentView];
    [v28 addSubview_];
  }

  return static Update.unlock()();
}

uint64_t outlined init with copy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, a3, a4, a5, MEMORY[0x1E697E830]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance MenuStyleConfiguration.Content(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  v6[2] = *(a2 + 32);
  v6[3] = v3;
  v6[4] = *(a2 + 64);
  v7 = *(a2 + 80);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  return _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22MenuStyleConfigurationV7ContentV_Tt2B5(v2, v6);
}

uint64_t _s7SwiftUI9ViewAliasPAAE05_makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA22MenuStyleConfigurationV7ContentV_Tt2B5(int a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v30 = *(a2 + 32);
  v31 = v4;
  v32 = *(a2 + 64);
  v33 = *(a2 + 80);
  v5 = *(a2 + 16);
  v28 = *a2;
  v29 = v5;
  type metadata accessor for SourceInput<ListStyleContent>(0, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Content>, lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content);
  outlined init with copy of _ViewInputs(a2, v26);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(&lazy protocol witness table cache variable for type SourceInput<MenuStyleConfiguration.Content> and conformance SourceInput<A>, &lazy cache variable for type metadata for SourceInput<MenuStyleConfiguration.Content>, lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content);
  PropertyList.subscript.getter();
  if (!*&v24[0])
  {
    *&v26[0] = 0;
    PropertyList.subscript.setter();
    goto LABEL_5;
  }

  v6 = *(*&v24[0] + 48);
  v7 = *(*&v24[0] + 16);
  v8 = *(*&v24[0] + 24);
  v14 = *(*&v24[0] + 32);
  v9 = *(*&v24[0] + 40);
  v10 = *(*&v24[0] + 44);

  *&v24[0] = v6;
  *&v26[0] = v6;
  PropertyList.subscript.setter();
  if (!v7)
  {
LABEL_5:
    _ViewOutputs.init()();
    goto LABEL_6;
  }

  _GraphInputs.resetCurrentStyleableView()();
  v21 = a1;
  v22[2] = v30;
  v22[3] = v31;
  v22[4] = v32;
  v23 = v33;
  v22[0] = v28;
  v22[1] = v29;
  v17 = v30;
  v18 = v31;
  v19 = v32;
  v20 = v33;
  v15 = v28;
  v16 = v29;
  v11 = *(v8 + 8);
  outlined init with copy of _ViewInputs(v22, v26);
  v12 = lazy protocol witness table accessor for type MenuStyleConfiguration.Content and conformance MenuStyleConfiguration.Content();
  LOBYTE(v26[0]) = v10;
  v11(&v21, v7, v8, v14, v9 | (v10 << 32), &v15, &type metadata for MenuStyleConfiguration.Content, v12, v7, v8);
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  v24[0] = v15;
  v24[1] = v16;
  outlined destroy of _ViewInputs(v24);
LABEL_6:
  v26[2] = v30;
  v26[3] = v31;
  v26[4] = v32;
  v27 = v33;
  v26[0] = v28;
  v26[1] = v29;
  return outlined destroy of _ViewInputs(v26);
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    v7 = v6;
    v8 = lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, ListTableCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, lazy protocol witness table accessor for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>, _EnvironmentKeyWritingModifier<Visibility>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t partial apply for closure #1 in FocusStoreLocation.set(_:transaction:)()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  return closure #1 in FocusStoreLocation.set(_:transaction:)(*(v0 + 32), v0 + ((v2 + 40) & ~v2), (v0 + ((*(v1 + 64) + v2 + ((v2 + 40) & ~v2)) & ~v2)), *(v0 + 16), *(v0 + 24));
}

uint64_t closure #1 in FocusStoreLocation.set(_:transaction:)(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(void, void, void))
{
  v63 = a3;
  v61 = a2;
  v7 = type metadata accessor for FocusStore.Entry();
  v8 = type metadata accessor for Optional();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v52 - v11;
  v60 = v7;
  v62 = *(v7 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v54 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v52 - v17;
  v55 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v52 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    (*(*(TupleTypeMetadata2 - 8) + 56))(v25, 1, 1, TupleTypeMetadata2);
    v28 = *(*v27 + class metadata base offset for FocusStoreLocation + 48);
    swift_beginAccess();
    (*(v23 + 40))(&v27[v28], v25, v22);
    swift_endAccess();
    v29 = v61;
    v30 = a5;
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      FocusStoreLocation.getValue(forReading:)(0, v20);
      v31 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v55 + 8))(v20, a4);
      v32 = v62;
      if ((v31 & 1) == 0)
      {
        v33 = *(*v27 + class metadata base offset for FocusStoreLocation + 56);
        swift_beginAccess();
        v34 = v58;
        v35 = &v27[v33];
        v36 = v52;
        v37 = v59;
        (*(v58 + 16))(v52, v35, v59);
        v38 = v60;
        if ((*(v32 + 48))(v36, 1, v60) == 1)
        {

          return (*(v34 + 8))(v36, v37);
        }

        else
        {
          v63 = *(v32 + 32);
          v48 = v53;
          v63(v53, v36, v38);
          v64 = 17;
          v49 = v54;
          (*(v32 + 16))(v54, v48, v38);
          v50 = (*(v32 + 80) + 32) & ~*(v32 + 80);
          v51 = swift_allocObject();
          *(v51 + 16) = a4;
          *(v51 + 24) = v30;
          v63((v51 + v50), v49, v38);
          static Update.enqueueAction(reason:_:)();

          return (*(v32 + 8))(v53, v38);
        }
      }
    }

    else
    {
      v63 = a5;
      v39 = v56;
      FocusStoreLocation.findEntry(with:)(v56);
      v40 = v62;
      v41 = v60;
      if ((*(v62 + 48))(v39, 1, v60) != 1)
      {
        v42 = *(v40 + 32);
        v43 = v57;
        v42(v57, v39, v41);
        v65 = 17;
        v44 = v54;
        (*(v40 + 16))(v54, v43, v41);
        v45 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v46 = swift_allocObject();
        v47 = v63;
        *(v46 + 16) = a4;
        *(v46 + 24) = v47;
        v42((v46 + v45), v44, v41);
        static Update.enqueueAction(reason:_:)();

        return (*(v40 + 8))(v57, v41);
      }

      (*(v58 + 8))(v39, v59);
      FocusStoreLocation.deferUpdate(_:)(v29);
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>)
  {
    type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<LabelsHiddenModifier>, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier, &type metadata for LabelsHiddenModifier, MEMORY[0x1E697FDE8]);
    type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(255, &lazy cache variable for type metadata for _LabeledContentStyleModifier<HiddenLabeledContentStyle>, lazy protocol witness table accessor for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle, &type metadata for HiddenLabeledContentStyle, type metadata accessor for _LabeledContentStyleModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, a2, MEMORY[0x1E697D9F0], a3, MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier()
{
  result = lazy protocol witness table cache variable for type LabelsHiddenModifier and conformance LabelsHiddenModifier;
  if (!lazy protocol witness table cache variable for type LabelsHiddenModifier and conformance LabelsHiddenModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelsHiddenModifier and conformance LabelsHiddenModifier);
  }

  return result;
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v0 = type metadata accessor for _UIHostingView.EnableVFDFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.EnableVFDFeature);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v0 = type metadata accessor for _UIHostingView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle()
{
  result = lazy protocol witness table cache variable for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle;
  if (!lazy protocol witness table cache variable for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HiddenLabeledContentStyle and conformance HiddenLabeledContentStyle);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Visibility>);
    }
  }
}

void type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph()
{
  if (!lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph)
  {
    type metadata accessor for ModifiedContent<AnyView, _SafeAreaInsetsModifier>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewList_View, CollectionViewCellModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, &type metadata for CollectionViewCellModifier, lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier);
    v0 = type metadata accessor for _UIHostingView.HostViewGraph();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<_ViewList_View, CollectionViewCellModifier>>.HostViewGraph);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<LabelsHiddenModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<LabelsHiddenModifier>, lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier, &type metadata for LabelsHiddenModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<LabelsHiddenModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

Swift::Void __swiftcall CellHostingView.appendViewGraphFeatures()()
{
  UIItemHostingView.appendViewGraphFeatures()();
  type metadata accessor for _SemanticFeature<Semantics_v4>();
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    _UIHostingView.viewGraph.getter();
    lazy protocol witness table accessor for type CellViewGraph and conformance CellViewGraph();
    ViewGraph.append<A>(feature:)();
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<LabelsHiddenModifier>, _LabeledContentStyleModifier<HiddenLabeledContentStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall UIItemHostingView.appendViewGraphFeatures()()
{
  _UIHostingView.viewGraph.getter();
  lazy protocol witness table accessor for type ItemHostingViewGraph and conformance ItemHostingViewGraph();
  ViewGraph.append<A>(feature:)();
}

unint64_t lazy protocol witness table accessor for type ItemHostingViewGraph and conformance ItemHostingViewGraph()
{
  result = lazy protocol witness table cache variable for type ItemHostingViewGraph and conformance ItemHostingViewGraph;
  if (!lazy protocol witness table cache variable for type ItemHostingViewGraph and conformance ItemHostingViewGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ItemHostingViewGraph and conformance ItemHostingViewGraph);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Visibility>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Visibility> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(uint64_t a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_listSectionIndexVisibility>(0, &lazy cache variable for type metadata for ModifiedContent<_ViewList_View, CollectionViewCellModifier>, MEMORY[0x1E697D9F0], &type metadata for CollectionViewCellModifier, MEMORY[0x1E697E830]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t destroy for CollectionViewCellModifier(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<ListItemTint?>.Content(*(a1 + 32), *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<EdgeInsets>.Content(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80));
  outlined consume of Environment<ListContentStyling>.Content(*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 169));
  result = *(a1 + 256);
  if (result != 1)
  {
  }

  v3 = *(a1 + 350);
  if (*(a1 + 350))
  {
    if (v3 == 1)
    {
      goto LABEL_9;
    }

    if (v3 != 2)
    {
      return result;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 280);
LABEL_9:
}

uint64_t outlined consume of Environment<EdgeInsets>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t static PickerStyleWriter._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PickerStyleWriter();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  if (*(*(a3 - 8) + 64))
  {
    closure #1 in static PickerStyleWriter._makeInputs(modifier:inputs:)(1, a3);
  }

  AGGraphCreateOffsetAttribute2();
  type metadata accessor for StyleType();
  lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput();
  return PropertyList.subscript.setter();
}

uint64_t outlined consume of Environment<ListContentStyling>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char a12)
{
  if (a12)
  {

    return outlined consume of ListItemTint?(a10);
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput()
{
  result = lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput;
  if (!lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput;
  if (!lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PickerStyleInput and conformance PickerStyleInput);
  }

  return result;
}

uint64_t specialized static NavigationColumnState.change(from:to:previousSplitViewState:splitViewState:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 48);
  v101[2] = *(a3 + 32);
  v101[3] = v4;
  v102 = *(a3 + 64);
  v5 = *(a3 + 16);
  v101[0] = *a3;
  v101[1] = v5;
  v6 = *(a4 + 48);
  v99[2] = *(a4 + 32);
  v99[3] = v6;
  v100 = *(a4 + 64);
  v7 = *(a4 + 16);
  v99[0] = *a4;
  v99[1] = v7;
  v8 = *(a2 + 16);
  if (!v8)
  {
    return 1;
  }

  v9 = 0;
  v10 = result + 32;
  v11 = a2 + 32;
  v73 = result;
  v74 = result + 32;
  v12 = *(result + 16);
  v77 = v8 - 1;
  v78 = v12;
  v75 = a2;
  v76 = "m a non-list context";
  v13 = &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?;
  while (1)
  {
    if (v9 >= v12)
    {
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
      goto LABEL_227;
    }

    v16 = v13;
    v17 = 360 * v9;
    result = outlined init with copy of NavigationColumnState(v10 + 360 * v9, v96);
    if (v9 >= v8)
    {
      goto LABEL_220;
    }

    outlined init with copy of NavigationColumnState(v11 + v17, v93);
    outlined init with copy of NavigationColumnState(v10 + v17, v88);
    if (v89 > 2u)
    {
      if (v89 - 3 < 2)
      {
LABEL_31:
        v21 = 0;
        goto LABEL_34;
      }

LABEL_32:
      v21 = 1;
      goto LABEL_34;
    }

    if (!v89)
    {
      goto LABEL_31;
    }

    if (v89 != 1)
    {
      v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v88, v9, v73) ^ 1;
      goto LABEL_34;
    }

    result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v88, v9, v73);
    if (result)
    {
      goto LABEL_31;
    }

    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_223;
    }

    if (v18 >= v12)
    {
      goto LABEL_32;
    }

    if (v18 < 0)
    {
      goto LABEL_225;
    }

    outlined init with copy of NavigationColumnState(v10 + 360 * v18, v85);
    if (v86 > 2u)
    {
      if (v86 - 3 >= 2)
      {
        goto LABEL_115;
      }
    }

    else if (v86)
    {
      if (v86 != 1)
      {
        v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v85, v9 + 1, v73) ^ 1;
        goto LABEL_118;
      }

      if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v85, v9 + 1, v73) & 1) == 0)
      {
        if (v9 + 2 < v12)
        {
          outlined init with copy of NavigationColumnState(v10 + 360 * (v9 + 2), v83);
          if (v84 > 2u)
          {
            if (v84 - 3 >= 2)
            {
LABEL_125:
              v21 = 1;
              goto LABEL_128;
            }
          }

          else if (v84)
          {
            v19 = v9 + 2;
            if (v84 != 1)
            {
              v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v83, v19, v73) ^ 1;
              goto LABEL_128;
            }

            if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v83, v19, v73) & 1) == 0)
            {
              if (v9 + 3 < v78)
              {
                outlined init with copy of NavigationColumnState(v10 + 360 * (v9 + 3), v81);
                if (v82 > 2u)
                {
                  if (v82 - 3 >= 2)
                  {
                    v21 = 1;
                    goto LABEL_138;
                  }
                }

                else if (v82)
                {
                  v20 = v9 + 3;
                  if (v82 != 1)
                  {
                    v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v81, v20, v73) ^ 1;
                    goto LABEL_137;
                  }

                  if (specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v81, v20, v73))
                  {
                    v21 = 0;
LABEL_137:
                    v10 = v74;
                    goto LABEL_138;
                  }

                  if (v9 + 4 >= v78)
                  {
                    v21 = 1;
                    goto LABEL_137;
                  }

                  outlined init with copy of NavigationColumnState(v74 + 360 * (v9 + 4), v79);
                  if (v80 > 2u)
                  {
                    if (v80 - 3 >= 2)
                    {
                      goto LABEL_164;
                    }
                  }

                  else if (v80)
                  {
                    v43 = v9 + 4;
                    if (v80 != 1)
                    {
                      v21 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v79, v43, v73) ^ 1;
                      goto LABEL_167;
                    }

                    if ((specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v101, v79, v43, v73) & 1) == 0)
                    {
                      if (v9 + 5 < v78)
                      {
                        v21 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v9 + 5, v73, v101);
LABEL_167:
                        outlined destroy of NavigationColumnState(v79);
                        goto LABEL_137;
                      }

LABEL_164:
                      v21 = 1;
                      goto LABEL_167;
                    }
                  }

                  v21 = 0;
                  goto LABEL_167;
                }

                v21 = 0;
LABEL_138:
                outlined destroy of NavigationColumnState(v81);
                goto LABEL_128;
              }

              goto LABEL_125;
            }
          }

          v21 = 0;
LABEL_128:
          outlined destroy of NavigationColumnState(v83);
          goto LABEL_118;
        }

LABEL_115:
        v21 = 1;
        goto LABEL_118;
      }
    }

    v21 = 0;
LABEL_118:
    outlined destroy of NavigationColumnState(v85);
LABEL_34:
    outlined destroy of NavigationColumnState(v88);
    outlined init with copy of NavigationColumnState(v11 + v17, v88);
    if (v89 > 2u)
    {
      v13 = v16;
      if (v89 - 3 < 2)
      {
LABEL_59:
        v14 = outlined destroy of NavigationColumnState(v88);
        if (v21)
        {
          goto LABEL_174;
        }

        goto LABEL_60;
      }

      goto LABEL_3;
    }

    v13 = v16;
    if (!v89)
    {
      goto LABEL_59;
    }

    if (v89 != 1)
    {
      v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v88, v9, v75) ^ 1;
      goto LABEL_83;
    }

    result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v88, v9, v75);
    if (result)
    {
      goto LABEL_59;
    }

    v22 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_224;
    }

    if (v22 < v8)
    {
      break;
    }

LABEL_3:
    v14 = outlined destroy of NavigationColumnState(v88);
    if ((v21 & 1) == 0)
    {
      goto LABEL_192;
    }

LABEL_4:
    outlined destroy of NavigationColumnState(v93);
    result = outlined destroy of NavigationColumnState(v96);
    v15 = __OFADD__(v9++, 1);
    if (v15)
    {
      goto LABEL_222;
    }

LABEL_5:
    v12 = v78;
    if (v9 >= v8)
    {
      return 1;
    }
  }

  if (v22 < 0)
  {
    goto LABEL_226;
  }

  outlined init with copy of NavigationColumnState(v11 + 360 * v22, v85);
  if (v86 > 2u)
  {
    if (v86 - 3 >= 2)
    {
      goto LABEL_116;
    }

LABEL_114:
    v25 = 0;
    goto LABEL_120;
  }

  if (!v86)
  {
    goto LABEL_114;
  }

  if (v86 != 1)
  {
    v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v85, v9 + 1, v75) ^ 1;
    goto LABEL_120;
  }

  result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v85, v9 + 1, v75);
  if (result)
  {
    goto LABEL_114;
  }

  v23 = v9 + 2;
  if (v9 + 2 >= v8)
  {
LABEL_116:
    v25 = 1;
    goto LABEL_120;
  }

  if (v23 < 0)
  {
    goto LABEL_242;
  }

  v72 = v9 + 2;
  outlined init with copy of NavigationColumnState(v11 + 360 * v23, v83);
  if (v84 > 2u)
  {
    if (v84 - 3 >= 2)
    {
      goto LABEL_126;
    }

LABEL_124:
    v25 = 0;
    goto LABEL_130;
  }

  if (!v84)
  {
    goto LABEL_124;
  }

  if (v84 != 1)
  {
    v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v83, v72, v75) ^ 1;
    goto LABEL_130;
  }

  result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v83, v72, v75);
  if (result)
  {
    goto LABEL_124;
  }

  v24 = v9 + 3;
  if (v9 + 3 >= v8)
  {
LABEL_126:
    v25 = 1;
    goto LABEL_130;
  }

  if (v24 < 0)
  {
    goto LABEL_243;
  }

  v72 = v9 + 3;
  outlined init with copy of NavigationColumnState(v11 + 360 * v24, v81);
  if (v82 > 2u)
  {
    if (v82 - 3 >= 2)
    {
      v25 = 1;
      goto LABEL_142;
    }

LABEL_134:
    v25 = 0;
    goto LABEL_142;
  }

  if (!v82)
  {
    goto LABEL_134;
  }

  if (v82 != 1)
  {
    v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v81, v72, v75) ^ 1;
    goto LABEL_141;
  }

  result = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v81, v72, v75);
  if (result)
  {
    v25 = 0;
    goto LABEL_141;
  }

  v44 = v9 + 4;
  if (v9 + 4 >= v8)
  {
    v25 = 1;
    goto LABEL_141;
  }

  if (v44 < 0)
  {
    goto LABEL_244;
  }

  outlined init with copy of NavigationColumnState(v11 + 360 * v44, v79);
  if (v80 > 2u)
  {
    if (v80 - 3 >= 2)
    {
      goto LABEL_165;
    }

    goto LABEL_163;
  }

  if (!v80)
  {
    goto LABEL_163;
  }

  v45 = v9 + 4;
  if (v80 != 1)
  {
    v25 = specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v79, v45, v75) ^ 1;
    goto LABEL_169;
  }

  if (specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(v99, v79, v45, v75))
  {
LABEL_163:
    v25 = 0;
    goto LABEL_169;
  }

  if (v9 + 5 < v8)
  {
    v25 = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(v9 + 5, v75, v99);
    goto LABEL_169;
  }

LABEL_165:
  v25 = 1;
LABEL_169:
  outlined destroy of NavigationColumnState(v79);
LABEL_141:
  v13 = v16;
  v10 = v74;
LABEL_142:
  outlined destroy of NavigationColumnState(v81);
LABEL_130:
  outlined destroy of NavigationColumnState(v83);
LABEL_120:
  outlined destroy of NavigationColumnState(v85);
LABEL_83:
  v14 = outlined destroy of NavigationColumnState(v88);
  if (v21)
  {
    if ((v25 & 1) == 0)
    {
LABEL_174:
      v88[0] = v75;
      MEMORY[0x1EEE9AC00](v14);
      v70 = v88;
      v71 = v99;
      v46 = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v69, v9, v8) != 1;
      outlined destroy of NavigationColumnState(v93);
      outlined destroy of NavigationColumnState(v96);
      return 2 * v46;
    }

    goto LABEL_4;
  }

  if (v25)
  {
LABEL_192:
    v88[0] = v73;
    MEMORY[0x1EEE9AC00](v14);
    v70 = v88;
    v71 = v101;
    v52 = specialized Sequence.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:), v69, v9, v78);
    outlined destroy of NavigationColumnState(v93);
    outlined destroy of NavigationColumnState(v96);
    return v52;
  }

LABEL_60:
  if (v9 == v77)
  {
    outlined init with copy of NavigationColumnState(v96, v88);
    v47 = v103;
    v48 = NavigationColumnState.change(from:)(v88);
    if (v47)
    {
      outlined destroy of NavigationRequest.Action?(v88, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationColumnState(v93);
      return outlined destroy of NavigationColumnState(v96);
    }

    else
    {
      v53 = v48;
      outlined destroy of NavigationRequest.Action?(v88, &lazy cache variable for type metadata for NavigationColumnState?, &type metadata for NavigationColumnState, MEMORY[0x1E69E6720]);
      outlined destroy of NavigationColumnState(v93);
      outlined destroy of NavigationColumnState(v96);
      return v53;
    }
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v97, v88);
  if (v92)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v88, v85);
  }

  else
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v88, v85);
  }

  if (v87 == 255)
  {
    v26 = 1;
  }

  else
  {
    outlined destroy of NavigationRequest.Action?(v85, v13, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v26 = 0;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v88);
  v27 = v98;
  if (((v26 ^ (v98 == 1)) & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000017BLL, v76 | 0x8000000000000000);
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v94, v88);
  if (v92)
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v88, v85);
  }

  else
  {
    outlined init with copy of NavigationColumnState.ColumnContent(v88, v85);
  }

  if (v87 == 255)
  {
    v28 = 1;
  }

  else
  {
    outlined destroy of NavigationRequest.Action?(v85, v13, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v28 = 0;
  }

  outlined destroy of NavigationColumnState.ColumnContent(v88);
  v29 = v95;
  if (((v28 ^ (v95 == 1)) & 1) == 0)
  {
    MEMORY[0x18D009810](0xD00000000000017BLL, v76 | 0x8000000000000000);
  }

  if ((v27 == 1) != (v29 == 1))
  {
    goto LABEL_190;
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v97, v88);
  if (v92)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v88);
    outlined init with copy of NavigationColumnState.ColumnContent(v94, v88);
    v30 = v16;
    if (v92)
    {
      outlined destroy of NavigationColumnState.ColumnContent(v88);
      goto LABEL_93;
    }

    v31 = MEMORY[0x1E69E6720];
    v32 = v16;
  }

  else
  {

    v31 = MEMORY[0x1E69E6720];
    v30 = v16;
    v32 = v16;
  }

  outlined destroy of NavigationRequest.Action?(v88, v32, &type metadata for NavigationColumnState.ReplacedRoot, v31);

  outlined init with copy of NavigationColumnState.ColumnContent(v97, v88);
  if (v92)
  {
    goto LABEL_178;
  }

  v33 = v90;

  outlined destroy of NavigationRequest.Action?(v88, v30, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  outlined init with copy of NavigationColumnState.ColumnContent(v94, v88);
  if (v92)
  {

LABEL_178:
    outlined destroy of NavigationColumnState(v93);
    outlined destroy of NavigationColumnState(v96);
    outlined destroy of NavigationColumnState.ColumnContent(v88);
    return 2;
  }

  v34 = v90;

  v30 = v16;

  outlined destroy of NavigationRequest.Action?(v88, v16, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v35 = v103;
  v36 = (*(*v34 + 136))(v33);
  v103 = v35;
  if (v35)
  {

    outlined destroy of NavigationColumnState(v93);
    return outlined destroy of NavigationColumnState(v96);
  }

  if (v37)
  {
    if (v36 == 1)
    {

      v10 = v74;
LABEL_93:
      outlined init with copy of NavigationColumnState.ColumnContent(v97, v88);
      if (v92)
      {
        outlined destroy of NavigationColumnState.ColumnContent(v88);
        v38 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v38 = v91;
        outlined destroy of NavigationRequest.Action?(v88, v30, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      }

      v39 = *(v38 + 16);

      outlined init with copy of NavigationColumnState.ColumnContent(v94, v88);
      if (v92)
      {
        outlined destroy of NavigationColumnState.ColumnContent(v88);
        v40 = MEMORY[0x1E69E7CC0];
        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      }

      else
      {

        v40 = v91;
        outlined destroy of NavigationRequest.Action?(v88, v16, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      }

      v41 = *(v40 + 16);

      if (v39)
      {
        if (v41)
        {
          outlined init with copy of NavigationColumnState(v93, v88);
          outlined init with copy of NavigationColumnState(v96, v85);
          if (v39 == v41)
          {
            v42 = closure #1 in NavigationColumnState.change(from:)(v88, v85);
            outlined destroy of NavigationColumnState(v85);
            outlined destroy of NavigationColumnState(v88);
            outlined destroy of NavigationColumnState(v93);
            result = outlined destroy of NavigationColumnState(v96);
            if ((v42 & 1) == 0)
            {
              return 2;
            }

            v15 = __OFADD__(v9++, 1);
            if (v15)
            {
              goto LABEL_221;
            }

            goto LABEL_108;
          }

          outlined destroy of NavigationColumnState(v85);
          outlined destroy of NavigationColumnState(v88);
LABEL_190:
          outlined destroy of NavigationColumnState(v93);
          outlined destroy of NavigationColumnState(v96);
          return 2;
        }

        v50 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          v51 = v75;
          if (v8 >= v50)
          {
            if ((v50 & 0x8000000000000000) == 0)
            {
              v88[0] = v75;
              MEMORY[0x1EEE9AC00](result);
              v70 = v88;
              v71 = v99;
              result = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v69, v9 + 1, v8);
              if (result)
              {
                outlined destroy of NavigationColumnState(v93);
                outlined destroy of NavigationColumnState(v96);
                return 2;
              }

              if (v78 >= v50)
              {
                v88[0] = v51;
                MEMORY[0x1EEE9AC00](0);
                v70 = v88;
                v71 = v99;
                v67 = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v69, v9 + 1, v66);
                outlined destroy of NavigationColumnState(v93);
                outlined destroy of NavigationColumnState(v96);
                result = v67 + 1;
                if (!__OFADD__(v67, 1))
                {
                  return result;
                }

LABEL_240:
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
LABEL_244:
                __break(1u);
                return result;
              }

LABEL_239:
              __break(1u);
              goto LABEL_240;
            }

LABEL_229:
            __break(1u);
LABEL_230:
            __break(1u);
            goto LABEL_231;
          }

LABEL_228:
          __break(1u);
          goto LABEL_229;
        }

LABEL_227:
        __break(1u);
        goto LABEL_228;
      }

      if (!v41)
      {
        outlined destroy of NavigationColumnState(v93);
        result = outlined destroy of NavigationColumnState(v96);
        v15 = __OFADD__(v9++, 1);
        if (v15)
        {
          goto LABEL_221;
        }

LABEL_108:
        v13 = v16;
        goto LABEL_5;
      }

      v59 = v9 + 1;
      if (!__OFADD__(v9, 1))
      {
        v60 = v75;
        if (v78 >= v59)
        {
          if ((v59 & 0x8000000000000000) == 0)
          {
            v88[0] = v73;
            MEMORY[0x1EEE9AC00](result);
            v70 = v88;
            v71 = v101;
            result = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v69, v9 + 1, v78);
            if (result)
            {
              outlined destroy of NavigationColumnState(v93);
              outlined destroy of NavigationColumnState(v96);
              return 2;
            }

            if (v8 < v59)
            {
              goto LABEL_241;
            }

            v88[0] = v60;
            MEMORY[0x1EEE9AC00](0);
            v70 = v88;
            v71 = v99;
            v68 = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v69, v9 + 1, v8);
            outlined destroy of NavigationColumnState(v93);
            outlined destroy of NavigationColumnState(v96);
            if (v68)
            {
              return 2;
            }

            return 0;
          }

LABEL_238:
          __break(1u);
          goto LABEL_239;
        }

LABEL_237:
        __break(1u);
        goto LABEL_238;
      }

LABEL_236:
      __break(1u);
      goto LABEL_237;
    }

    if ((v36 - 2) < 2)
    {

      goto LABEL_190;
    }

    outlined init with copy of NavigationColumnState.ColumnContent(v97, v88);
    if (v92)
    {
      result = outlined destroy of NavigationColumnState.ColumnContent(v88);
      goto LABEL_207;
    }

    v61 = v91;
    outlined destroy of NavigationRequest.Action?(v88, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    v62 = *(v61 + 16);

    if (v62)
    {
LABEL_206:

      outlined destroy of NavigationColumnState(v93);
      outlined destroy of NavigationColumnState(v96);
      return 2;
    }

LABEL_207:
    v63 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      if (v78 >= v63)
      {
        if ((v63 & 0x8000000000000000) == 0)
        {
          v88[0] = v73;
          MEMORY[0x1EEE9AC00](result);
          v70 = v88;
          v71 = v101;
          v65 = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v69, v64, v78);

          outlined destroy of NavigationColumnState(v93);
          outlined destroy of NavigationColumnState(v96);
          if (v65)
          {
            return 2;
          }

          return 0;
        }

        goto LABEL_235;
      }

LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
      goto LABEL_236;
    }

LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  v78 = v36;
  outlined init with copy of NavigationColumnState.ColumnContent(v94, v88);
  if (v92)
  {
    result = outlined destroy of NavigationColumnState.ColumnContent(v88);
    v49 = v75;
    goto LABEL_195;
  }

  v54 = v91;
  outlined destroy of NavigationRequest.Action?(v88, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  v55 = *(v54 + 16);

  v49 = v75;
  if (v55)
  {
    goto LABEL_206;
  }

LABEL_195:
  v56 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
    goto LABEL_230;
  }

  if (v8 < v56)
  {
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  if (v56 < 0)
  {
LABEL_232:
    __break(1u);
    goto LABEL_233;
  }

  v88[0] = v49;
  MEMORY[0x1EEE9AC00](result);
  v70 = v88;
  v71 = v99;
  v58 = specialized Sequence.reduce<A>(_:_:)(0, closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)specialized partial apply, v69, v57, v8);

  outlined destroy of NavigationColumnState(v93);
  outlined destroy of NavigationColumnState(v96);
  if (!v58)
  {
    return v78;
  }

  return 2;
}

uint64_t outlined destroy of ModifiedContent<_ViewList_View, CollectionViewCellModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent<TableRowView, CollectionViewCellModifier>(0, a2, a3, a4, MEMORY[0x1E697E830]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t type metadata completion function for WheelPicker()
{
  result = type metadata accessor for PickerStyleConfiguration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized ListCollectionViewCellBase.host.didset()
{
  v1 = v0;
  MEMORY[0x18D00ABE0]();
  v2 = direct field offset for ListCollectionViewCellBase.host;
  v3 = *(v0 + direct field offset for ListCollectionViewCellBase.host);
  if (v3)
  {
    *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x1C0) + 8) = &protocol witness table for ListCollectionViewCellBase<A>;
    swift_unknownObjectWeakAssign();
    v4 = *(v0 + v2);
    if (v4)
    {
      v5 = v4;
      UIHostingViewBase.viewGraph.getter();

      lazy protocol witness table accessor for type SwipeActions.Feature and conformance SwipeActions.Feature();
      ViewGraph.append<A>(feature:)();

      v6 = *(v0 + v2);
      if (v6)
      {
        v7 = v6;
        UIHostingViewBase.viewGraph.getter();

        GraphHost.addPreference<A>(_:)();
      }
    }
  }

  v8 = direct field offset for ListCollectionViewCellBase.popUpButtonSeed;
  swift_beginAccess();
  *(v1 + v8) = -1;
  return static Update.end()();
}

uint64_t type metadata completion function for PickerStyleConfiguration()
{
  result = type metadata accessor for Binding();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void @objc CellHostingView.layoutMarginsDidChange()(void *a1)
{
  v1 = a1;
  CellHostingView.layoutMarginsDidChange()();
}

uint64_t instantiation function for generic protocol witness table for PickerStyleConfiguration<A>.Label(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

Swift::Void __swiftcall CellHostingView.layoutMarginsDidChange()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutMarginsDidChange);
  swift_getWitnessTable();
  ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
}

void type metadata accessor for UICellAccessory.LayoutDimension?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for PickerStyleConfiguration<A>.Content(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void specialized ListCollectionViewCellBase.backgroundHost.setter(void *a1)
{
  v2 = type metadata accessor for UIBackgroundConfiguration();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UICellAccessory.LayoutDimension?(0, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  v12 = a1;
  MEMORY[0x18D00DBA0]();
  if ((*(v3 + 48))(v11, 1, v2))
  {
    outlined destroy of UIBackgroundConfiguration?(v11, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
LABEL_3:
    v13 = 0;
    goto LABEL_4;
  }

  v16 = UIBackgroundConfiguration.customView.getter();
  outlined destroy of UIBackgroundConfiguration?(v11, &lazy cache variable for type metadata for UIBackgroundConfiguration?, MEMORY[0x1E69DC0D8]);
  if (!v16)
  {
    goto LABEL_3;
  }

  type metadata accessor for _UIHostingView<ModifiedContent<AnyView, EmptyModifier>>();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
  }

LABEL_4:
  if (a1)
  {

    if (v13 && (swift_unknownObjectRelease(), v13 == a1))
    {
    }

    else
    {
      v14 = v12;
      UIHostingViewBase.isHiddenForReuse.setter();
      static UIBackgroundConfiguration.clear()();
      v15 = v14;
      UIBackgroundConfiguration.customView.setter();
      (*(v3 + 16))(v8, v5, v2);
      (*(v3 + 56))(v8, 0, 1, v2);
      MEMORY[0x18D00DBB0](v8);

      (*(v3 + 8))(v5, v2);
    }
  }

  else if (v13)
  {
    v17 = swift_unknownObjectRelease();
    MEMORY[0x18D00DBC0](v17);
    (*(v3 + 56))(v8, 0, 1, v2);
    MEMORY[0x18D00DBB0](v8);
  }
}

void UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v109 = a2;
  v101 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v98 = *MEMORY[0x1E69E7D40] & v4;
  v6 = type metadata accessor for IndexPath();
  v106 = *(v6 - 8);
  v107 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (IndexPath?, IndexPath?)();
  v104 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v91 - v11;
  _s10Foundation9IndexPathVSgMaTm_1(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v93 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v91 - v19;
  v20 = *((v5 & v4) + 0x68);
  v21 = type metadata accessor for Optional();
  v96 = *(v21 - 8);
  v97 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v91 - v27;
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v91 - v31;
  UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(v109, v28);
  v33 = (*(v29 + 48))(v28, 1, AssociatedTypeWitness);
  v105 = v3;
  if (v33 == 1)
  {
    (*(v26 + 8))(v28, v25);
    v34 = v108;
    goto LABEL_11;
  }

  (*(v29 + 32))(v32, v28, AssociatedTypeWitness);
  UICollectionViewListCoordinatorBase.currentSelection.getter(v23);
  v35 = *(v20 - 8);
  if ((*(v35 + 48))(v23, 1, v20) == 1)
  {
    v96[1](v23, v97);
    v34 = v108;
LABEL_10:
    (*(v29 + 8))(v32, AssociatedTypeWitness);
LABEL_11:
    v42 = v106;
    v41 = v107;
    v43 = *(v106 + 16);
    v98 = v106 + 16;
    v96 = v43;
    (v43)(v34, v109, v107);
    v44 = *(v42 + 56);
    v97 = v42 + 56;
    v95 = v44;
    v44(v34, 0, 1, v41);
    v45 = v105;
    v46 = v34;
    v47 = *((*MEMORY[0x1E69E7D40] & *v105) + 0xE0);
    swift_beginAccess();
    v48 = *(v104 + 48);
    v49 = MEMORY[0x1E6969C28];
    v50 = MEMORY[0x1E69E6720];
    v51 = v46;
    v52 = v102;
    outlined init with copy of SwipeActions.Configuration?(v51, v102, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
    v53 = v49;
    v54 = v41;
    outlined init with copy of SwipeActions.Configuration?(v45 + v47, v52 + v48, &lazy cache variable for type metadata for IndexPath?, v53, v50, _s10Foundation9IndexPathVSgMaTm_1);
    v55 = *(v42 + 48);
    if (v55(v52, 1, v41) == 1)
    {
      _s10Foundation9IndexPathVSgWOhTm_1(v108, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      v56 = v55(v52 + v48, 1, v41);
      v57 = v103;
      if (v56 == 1)
      {
        v58 = MEMORY[0x1E6969C28];
        v59 = MEMORY[0x1E69E6720];
        v60 = v52;
LABEL_20:
        _s10Foundation9IndexPathVSgWOhTm_1(v60, &lazy cache variable for type metadata for IndexPath?, v58, v59);
        return;
      }
    }

    else
    {
      v61 = v99;
      outlined init with copy of SwipeActions.Configuration?(v52, v99, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
      v62 = v55(v52 + v48, 1, v41);
      v57 = v103;
      if (v62 != 1)
      {
        v92 = v55;
        v77 = v106;
        v78 = v94;
        (*(v106 + 32))(v94, v52 + v48, v41);
        _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
        v79 = v52;
        v80 = dispatch thunk of static Equatable.== infix(_:_:)();
        v81 = *(v77 + 8);
        v81(v78, v41);
        v82 = v61;
        v83 = MEMORY[0x1E6969C28];
        v84 = MEMORY[0x1E69E6720];
        _s10Foundation9IndexPathVSgWOhTm_1(v108, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
        v81(v82, v107);
        v54 = v107;
        _s10Foundation9IndexPathVSgWOhTm_1(v79, &lazy cache variable for type metadata for IndexPath?, v83, v84);
        if (v80)
        {
          return;
        }

LABEL_17:
        (v96)(v57, v109, v54);
        v95(v57, 0, 1, v54);
        v63 = v105;
        v64 = *((*MEMORY[0x1E69E7D40] & *v105) + 0xE8);
        swift_beginAccess();
        v65 = *(v104 + 48);
        v66 = MEMORY[0x1E6969C28];
        v67 = MEMORY[0x1E69E6720];
        v68 = v100;
        outlined init with copy of SwipeActions.Configuration?(v57, v100, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
        v69 = v63 + v64;
        v70 = v107;
        outlined init with copy of SwipeActions.Configuration?(v69, v68 + v65, &lazy cache variable for type metadata for IndexPath?, v66, v67, _s10Foundation9IndexPathVSgMaTm_1);
        v71 = v92;
        if (v92(v68, 1, v70) == 1)
        {
          _s10Foundation9IndexPathVSgWOhTm_1(v57, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
          if (v71(v68 + v65, 1, v70) == 1)
          {
            v58 = MEMORY[0x1E6969C28];
            v59 = MEMORY[0x1E69E6720];
            v60 = v68;
            goto LABEL_20;
          }
        }

        else
        {
          v72 = v93;
          outlined init with copy of SwipeActions.Configuration?(v68, v93, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_1);
          if (v71(v68 + v65, 1, v70) != 1)
          {
            v85 = v106;
            v86 = v94;
            (*(v106 + 32))(v94, v68 + v65, v70);
            _s10Foundation8IndexSetVACSlAAWlTm_0(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
            v87 = dispatch thunk of static Equatable.== infix(_:_:)();
            v88 = *(v85 + 8);
            v88(v86, v70);
            v89 = MEMORY[0x1E6969C28];
            v90 = MEMORY[0x1E69E6720];
            _s10Foundation9IndexPathVSgWOhTm_1(v57, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
            v88(v72, v70);
            _s10Foundation9IndexPathVSgWOhTm_1(v68, &lazy cache variable for type metadata for IndexPath?, v89, v90);
            if (v87)
            {
              return;
            }

            goto LABEL_24;
          }

          _s10Foundation9IndexPathVSgWOhTm_1(v57, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
          (*(v106 + 8))(v72, v70);
        }

        _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v68, type metadata accessor for (IndexPath?, IndexPath?));
LABEL_24:
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v74 = [v101 cellForItemAtIndexPath_];

        if (v74)
        {
          v75 = [v74 isSelected];

          if (v75)
          {
            v76 = IndexPath._bridgeToObjectiveC()().super.isa;
            [v101 deselectItemAtIndexPath:v76 animated:UICollectionViewListCoordinatorBase.isAnimated.getter() & 1];
          }
        }

        return;
      }

      _s10Foundation9IndexPathVSgWOhTm_1(v108, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      (*(v106 + 8))(v61, v41);
    }

    v92 = v55;
    _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(v52, type metadata accessor for (IndexPath?, IndexPath?));
    goto LABEL_17;
  }

  v36 = (*(*(v98 + 120) + 64))(v32, v20);
  (*(v35 + 8))(v23, v20);
  v34 = v108;
  if ((v36 & 1) == 0)
  {
    goto LABEL_10;
  }

  v37 = IndexPath._bridgeToObjectiveC()().super.isa;
  v38 = [v101 cellForItemAtIndexPath_];

  if (!v38 || (v39 = [v38 isSelected], v38, (v39 & 1) == 0))
  {
    v40 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v101 selectItemAtIndexPath:v40 animated:UICollectionViewListCoordinatorBase.isAnimated.getter() & 1 scrollPosition:0];
  }

  (*(v29 + 8))(v32, AssociatedTypeWitness);
}

uint64_t instantiation function for generic protocol witness table for PickerStyleConfiguration<A>.CurrentValueLabel(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for (IndexPath?, IndexPath?)()
{
  if (!lazy cache variable for type metadata for (IndexPath?, IndexPath?))
  {
    _s10Foundation9IndexPathVSgMaTm_0(255, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (IndexPath?, IndexPath?));
    }
  }
}

uint64_t UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1;
  v22 = a2;
  v3 = *v2;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v20[0] = *(*((*MEMORY[0x1E69E7D40] & *v2) + 0x70) + 8);
  v20[1] = v5;
  v6 = type metadata accessor for ShadowListDataSource();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - v8;
  v10 = type metadata accessor for Binding();
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v15 = *((v4 & v3) + 0x110);
  swift_beginAccess();
  (*(v12 + 16))(v14, &v2[v15], v11);
  LODWORD(v10) = (*(*(v10 - 8) + 48))(v14, 1, v10);
  (*(v12 + 8))(v14, v11);
  if (v10 == 1)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 56))(v22, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v18 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
    swift_beginAccess();
    (*(v7 + 16))(v9, &v2[v18], v6);
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.selectionValue(forRowAt:)(v21, v6, WitnessTable, v22);
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t ListCoreDataSource.selectionValue(forRowAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v15 - v11;
  v13 = ListDiffable.rowIndex(at:)(&v15 - v11, a1, a2, v8);
  ListCoreDataSource.selectionValue(forRowAt:)(v12, v13, a2, a3, a4);
  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_18BFEDF2C()
{
  type metadata accessor for ResolvedPicker();
  type metadata accessor for PickerStyleConfiguration.Label();
  swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleConfiguration.Content();
  swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for PickerStyleConfiguration.CurrentValueLabel();
  swift_getWitnessTable();
  type metadata accessor for OptionalSourceWriter();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t ListCoreDataSource.selectionValue(forRowAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 16))(&v20 - v16, a1, AssociatedTypeWitness, v15);
  *&v17[*(TupleTypeMetadata2 + 48)] = a2;
  (*(v11 + 16))(v13, v17, TupleTypeMetadata2);
  (*(a4 + 240))(v13, *&v13[*(TupleTypeMetadata2 + 48)], 1, a3, a4);
  (*(v11 + 8))(v17, TupleTypeMetadata2);
  return (*(v18 + 8))(v13, AssociatedTypeWitness);
}

void specialized NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(id a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void (*a5)(unint64_t), uint64_t a6)
{
  v120 = a6;
  v121 = a5;
  type metadata accessor for UINavigationPresentationAdaptor?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v120 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v120 - v16;
  v149[0] = 0;
  v147 = v6;
  v148 = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();

  a3(&v147);
  v19 = v148;
  if (v148 >> 62)
  {
    goto LABEL_109;
  }

  for (i = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v133 = a1;
    v131 = v19;
    if (!i)
    {
      break;
    }

    v21 = 0;
    v138 = v19 & 0xC000000000000001;
    v136 = v19 & 0xFFFFFFFFFFFFFF8;
    *&v18 = 138412290;
    v130 = v18;
    *&v18 = 138412546;
    v124 = v18;
    v132 = v11;
    v134 = v14;
    v135 = v17;
    v137 = i;
    while (v138)
    {
      v22 = MEMORY[0x18D00E9C0](v21, v19);
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_106;
      }

LABEL_11:
      v139 = v23;
      v24 = v22;
      v25 = [v24 navigationController];
      v26 = v25;
      if (!v25)
      {

        if (!a1)
        {
          static Log.navigation.getter();
          v30 = type metadata accessor for Logger();
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(v17, 1, v30) == 1)
          {

            outlined destroy of UINavigationPresentationAdaptor?(v17, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          }

          else
          {
            v59 = v24;
            v60 = Logger.logObject.getter();
            v61 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              v63 = swift_slowAlloc();
              *v62 = v130;
              *(v62 + 4) = v59;
              *v63 = v59;
              v129 = v59;
              outlined destroy of NSObject?(v63);
              v64 = v63;
              v11 = v132;
              MEMORY[0x18D0110E0](v64, -1, -1);
              v65 = v62;
              v17 = v135;
              MEMORY[0x18D0110E0](v65, -1, -1);
              v59 = v60;
              v60 = v129;
            }

            v19 = v131;

            (*(v31 + 8))(v17, v30);
          }

          v14 = v134;
          goto LABEL_33;
        }

        goto LABEL_20;
      }

      if (!a1)
      {

LABEL_20:
        static Log.navigation.getter();
        v32 = type metadata accessor for Logger();
        v33 = *(v32 - 8);
        if ((*(v33 + 48))(v11, 1, v32) == 1)
        {

          outlined destroy of UINavigationPresentationAdaptor?(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
          a1 = v133;
        }

        else
        {
          v34 = v24;
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            *v37 = v130;
            *(v37 + 4) = v34;
            *v38 = v34;
            v39 = v34;
            _os_log_impl(&dword_18BD4A000, v35, v36, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController or destination were nil", v37, 0xCu);
            outlined destroy of NSObject?(v38);
            v40 = v38;
            v14 = v134;
            MEMORY[0x18D0110E0](v40, -1, -1);
            v41 = v37;
            v11 = v132;
            MEMORY[0x18D0110E0](v41, -1, -1);
          }

          (*(v33 + 8))(v11, v32);
          a1 = v133;
          v19 = v131;
          v17 = v135;
        }

        goto LABEL_33;
      }

      if (v25 == a1)
      {

        static Log.navigation.getter();
        v42 = type metadata accessor for Logger();
        v43 = *(v42 - 8);
        if ((*(v43 + 48))(v14, 1, v42) != 1)
        {
          v127 = v42;
          v44 = v24;
          v45 = v26;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.debug.getter();
          v128 = v45;

          LODWORD(v126) = v47;
          v129 = v46;
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            v125 = v49;
            v50 = swift_slowAlloc();
            *&v141 = v50;
            *v48 = v124;
            *(v48 + 4) = v44;
            *v49 = v44;
            *(v48 + 12) = 2080;
            *&v140[0] = v26;
            _sSo22UINavigationControllerCSgMaTm_0(0, &lazy cache variable for type metadata for UINavigationController?, &lazy cache variable for type metadata for UINavigationController);
            v51 = v44;
            v128 = v128;
            v52 = String.init<A>(describing:)();
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v141);

            *(v48 + 14) = v54;
            v55 = v129;
            _os_log_impl(&dword_18BD4A000, v129, v126, "[NavigationHostingControllerCache_UIKit] %@ containment skipped because sourceNavigationController and destination were equal %s", v48, 0x16u);
            v56 = v125;
            outlined destroy of NSObject?(v125);
            MEMORY[0x18D0110E0](v56, -1, -1);
            __swift_destroy_boxed_opaque_existential_1(v50);
            MEMORY[0x18D0110E0](v50, -1, -1);
            v57 = v48;
            v19 = v131;
            MEMORY[0x18D0110E0](v57, -1, -1);

            v58 = v128;
          }

          else
          {

            v58 = v129;
          }

          v66 = v137;
          v67 = v139;
          v14 = v134;
          (*(v43 + 8))(v134, v127);
          v11 = v132;
          v17 = v135;
          goto LABEL_34;
        }

        outlined destroy of UINavigationPresentationAdaptor?(v14, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
        v11 = v132;
      }

      else
      {
        v27 = v25;
        v28 = a1;
        [v24 willMoveToParentViewController_];
        v29 = [v24 view];

        if (!v29)
        {
          __break(1u);
          return;
        }

        [v29 removeFromSuperview];

        specialized mustRemove #1 <A>(_:from:) in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(v24, v27, v149);
        v19 = v131;
      }

LABEL_33:
      v66 = v137;
      v67 = v139;
LABEL_34:
      ++v21;
      if (v67 == v66)
      {
        goto LABEL_38;
      }
    }

    if (v21 >= *(v136 + 16))
    {
      goto LABEL_108;
    }

    v22 = *(v19 + 8 * v21 + 32);
    v23 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      goto LABEL_11;
    }

LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    ;
  }

LABEL_38:
  swift_beginAccess();
  v68 = v149[0];
  if (!v149[0])
  {
    v121(v19);
    goto LABEL_102;
  }

  v69 = v149[0] + 64;
  v70 = 1 << *(v149[0] + 32);
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  else
  {
    v71 = -1;
  }

  v19 = v71 & *(v149[0] + 64);
  v72 = (v70 + 63) >> 6;

  v73 = 0;
  v123 = v68 + 64;
  *&v124 = v68;
  v122 = v72;
  if (v19)
  {
LABEL_48:
    while (1)
    {
      v126 = v73;
      v76 = (v73 << 9) | (8 * __clz(__rbit64(v19)));
      v77 = *(*(v68 + 56) + v76);
      v78 = *(*(v68 + 48) + v76);
      v139 = v77;

      v128 = v78;
      v79 = [v78 _swiftui_viewControllers];
      v127 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v141 = MEMORY[0x1E69E7CC0];
      if (v17 >> 62)
      {
        break;
      }

      v11 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v129 = v19;
      if (v11)
      {
        goto LABEL_50;
      }

LABEL_74:
      v97 = v139 & 0xC000000000000001;
LABEL_75:

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v128 _swiftui_setViewControllers:isa];

      if (v97)
      {
        __CocoaSet.makeIterator()();
        _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
        lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
        Set.Iterator.init(_cocoa:)();
        v99 = v149[2];
        v139 = v149[1];
        v100 = v149[3];
        v101 = v149[4];
        v19 = v149[5];
      }

      else
      {
        v101 = 0;
        v99 = v139 + 56;
        v102 = -1 << *(v139 + 32);
        v100 = ~v102;
        v103 = -v102;
        if (v103 < 64)
        {
          v104 = ~(-1 << v103);
        }

        else
        {
          v104 = -1;
        }

        v19 = v104 & *(v139 + 56);
      }

      v129 &= v129 - 1;
      v17 = (v100 + 64) >> 6;
      if (v139 < 0)
      {
        goto LABEL_88;
      }

      while (1)
      {
        v105 = v101;
        v106 = v19;
        v11 = v101;
        if (!v19)
        {
          while (1)
          {
            v11 = v105 + 1;
            if (__OFADD__(v105, 1))
            {
              break;
            }

            if (v11 >= v17)
            {
              goto LABEL_92;
            }

            v106 = *(v99 + 8 * v11);
            ++v105;
            if (v106)
            {
              goto LABEL_86;
            }
          }

          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

LABEL_86:
        v14 = ((v106 - 1) & v106);
        v107 = *(*(v139 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v106)))));
        if (!v107)
        {
          break;
        }

        while (1)
        {
          [v107 removeFromParentViewController];
          [v107 willMoveToParentViewController_];

          v101 = v11;
          v19 = v14;
          if ((v139 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_88:
          v108 = __CocoaSet.Iterator.next()();
          if (v108)
          {
            *&v140[0] = v108;
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
            swift_dynamicCast();
            v107 = v141;
            v11 = v101;
            v14 = v19;
            if (v141)
            {
              continue;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_92:
      outlined consume of Set<UIPress>.Iterator._Variant();

      v69 = v123;
      v68 = v124;
      v72 = v122;
      v73 = v126;
      v19 = v129;
      if (!v129)
      {
        goto LABEL_43;
      }
    }

    v11 = __CocoaSet.count.getter();
    v129 = v19;
    if (!v11)
    {
      goto LABEL_74;
    }

LABEL_50:
    v80 = 0;
    v136 = v17 & 0xFFFFFFFFFFFFFF8;
    v137 = v17 & 0xC000000000000001;
    v125 = v17;
    v134 = v139 & 0xC000000000000001;
    v135 = v17 + 32;
    v81 = v139 & 0xFFFFFFFFFFFFFF8;
    if (v139 < 0)
    {
      v81 = v139;
    }

    v132 = v81;
    v138 = v139 + 56;
    v82 = MEMORY[0x1E6981910];
    while (1)
    {
      if (v137)
      {
        v83 = MEMORY[0x18D00E9C0](v80, v125);
      }

      else
      {
        if (v80 >= *(v136 + 16))
        {
          goto LABEL_105;
        }

        v83 = *(v135 + 8 * v80);
      }

      v17 = v83;
      if (__OFADD__(v80++, 1))
      {
        goto LABEL_104;
      }

      v19 = v11;
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v82, MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      v14 = v85;
      if (swift_dynamicCastClass())
      {
        if (v134)
        {
          v86 = v17;
          v87 = __CocoaSet.contains(_:)();

          if (v87)
          {

            goto LABEL_55;
          }
        }

        else if (*(v139 + 16))
        {
          v88 = v139;
          v89 = *(v139 + 40);
          *&v130 = v17;
          v90 = NSObject._rawHashValue(seed:)(v89);
          v91 = -1 << *(v88 + 32);
          v92 = v90 & ~v91;
          if ((*(v138 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92))
          {
            v93 = ~v91;
            while (1)
            {
              v94 = *(*(v88 + 48) + 8 * v92);
              v95 = static NSObject.== infix(_:_:)();

              if (v95)
              {
                break;
              }

              v92 = (v92 + 1) & v93;
              v88 = v139;
              if (((*(v138 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
              {
                goto LABEL_53;
              }
            }

            v96 = v130;

            a1 = v133;
            v82 = MEMORY[0x1E6981910];
            goto LABEL_55;
          }

LABEL_53:

          a1 = v133;
          v82 = MEMORY[0x1E6981910];
        }
      }

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_55:
      if (v80 == v11)
      {
        v97 = v134;
        goto LABEL_75;
      }
    }
  }

LABEL_43:
  v74 = v131;
  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      goto LABEL_107;
    }

    if (v75 >= v72)
    {
      break;
    }

    v19 = *(v69 + 8 * v75);
    ++v73;
    if (v19)
    {
      v73 = v75;
      goto LABEL_48;
    }
  }

  v121(v74);
  v109 = -1 << *(v68 + 32);
  v110 = ~v109;
  v111 = *(v68 + 64);
  v112 = -v109;
  if (v112 < 64)
  {
    v113 = ~(-1 << v112);
  }

  else
  {
    v113 = -1;
  }

  *&v141 = v68;
  *(&v141 + 1) = v69;
  v142 = v110;
  *&v143 = v113 & v111;
  *(&v143 + 1) = closure #2 in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:);
  *&v144 = 0;
  *(&v144 + 1) = 0xF000000000000007;
  v145 = 0u;
  v146 = 0u;
  specialized FlattenSequence.Iterator.next()();
  if (v114)
  {
    v115 = v114;
    v116 = MEMORY[0x1E6981910];
    v117 = MEMORY[0x1E6981900];
    do
    {
      [v115 didMoveToParentViewController_];
      v118 = *&v115[direct field offset for UIHostingController.host];
      static ViewGraphRootValues.all.getter();
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, v116, v117, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      a1 = v133;
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      specialized FlattenSequence.Iterator.next()();
      v115 = v119;
    }

    while (v119);
  }

  v140[2] = v143;
  v140[3] = v144;
  v140[4] = v145;
  v140[5] = v146;
  v140[0] = v141;
  v140[1] = v142;
  outlined destroy of NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>(v140, type metadata accessor for FlattenSequence<LazyMapSequence<[UINavigationController : Set<NavigationStackHostingController<AnyView>>].Values, Set<NavigationStackHostingController<AnyView>>>>.Iterator);
LABEL_102:
  outlined destroy of NavigationHostingControllerCache_UIKit.Source(&v147);
}

uint64_t ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v27 - v19;
  v21 = *(v12 - 8);
  (*(v21 + 16))(&v27 - v19, v30, v12, v18);
  *&v20[*(TupleTypeMetadata2 + 48)] = v31;
  (*(v14 + 16))(v16, v20, TupleTypeMetadata2);
  v22 = *&v16[*(TupleTypeMetadata2 + 48)];
  v35 = a4;
  v36 = a5;
  v37 = v32;
  ListCoreDataSource.visitRowAt<A>(_:visitor:)(v16, v22, partial apply for closure #1 in ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:), v34, a4, AssociatedTypeWitness, a5, partial apply for closure #1 in ListCoreDataSource.visitRowAt<A>(_:visitor:), v11, _sSq7flatMapyqd_0_SgABxqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF);
  (*(v14 + 8))(v20, TupleTypeMetadata2);
  (*(v21 + 8))(v16, v12);
  v23 = *(AssociatedTypeWitness - 8);
  v24 = *(v23 + 48);
  if (v24(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v23 + 56))(v33, 1, 1, AssociatedTypeWitness);
    result = v24(v11, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v28 + 8))(v11, v29);
    }
  }

  else
  {
    v26 = v33;
    (*(v23 + 32))(v33, v11, AssociatedTypeWitness);
    return (*(v23 + 56))(v26, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t closure #1 in ListCoreDataSource.selectionValue(forRowAt:respectSelectionDisabled:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = type metadata accessor for _RowVisitationContext();
  _RowVisitationContext.selectionValue(respectSelectionDisabled:)(a1, v9, v8);
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 56))(a2, 1, 1, AssociatedTypeWitness);
    result = v11(v8, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v6 + 8))(v8, v5);
    }
  }

  else
  {
    (*(v10 + 32))(a2, v8, AssociatedTypeWitness);
    return (*(v10 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t outlined init with copy of SwipeActions.Configuration?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _s7SwiftUI12SwipeActionsO13ConfigurationVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _s7SwiftUI32_EnvironmentKeyTransformModifierVyAA14SymbolVariantsVGMaTm_0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id specialized UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:)(void *a1, char a2)
{
  v3 = v2;
  v6 = *&v2[direct field offset for UIHostingController.host];
  _s7SwiftUI29PresentationHostingControllerCyAA7AnyViewVGMaTm_1(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for _UIHostingView);
  lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  v7 = v6;
  ViewGraphRootValueUpdater._preferenceValue<A>(_:)();

  if (*(&v36 + 1) == 1)
  {
    outlined destroy of MatchedTransitionIdentifier?(&v34, &lazy cache variable for type metadata for _NavigationTransitionOutputs?, &type metadata for _NavigationTransitionOutputs);
LABEL_7:
    [v2 setPreferredTransition_];
    return swift_unknownObjectWeakAssign();
  }

  outlined init with copy of _NavigationTransitionOutputs.Content(&v34, &aBlock);
  outlined destroy of _NavigationTransitionOutputs(&v34);
  if (!v40)
  {
    goto LABEL_7;
  }

  v8 = aBlock;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD320]) init];
  [v9 set:a2 & 1 popPreemptsPushInSwiftUIEnabled:?];
  result = [a1 view];
  if (result)
  {
    v11 = result;
    MEMORY[0x1EEE9AC00](result);
    v32 = v8;
    v33 = &v34;
    v13 = _sSo6UIViewC7SwiftUIE20firstDescendantWhereyABSgSbABXEF05_sSo6a2C7B103UIE15firstDescendant6ofType9predicatexSgxm_SbxXEtlFSbABXEfU_AC34MatchedTransitionSourceMarkingViewC_Tg5xSbRi_zRi0_zlyAC0stuvW0CIsgnd_Tf1cn_nTf4ng_n(v12, partial apply for specialized closure #1 in UIView._findMatchedTransitionSource<A>(id:in:), v31);

    type metadata accessor for MatchedTransitionSourceMarkingView();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewControllerTransition);
      v15 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v14;
      v17[3] = v15;
      v17[4] = v16;
      v18 = v13;
      v19 = v9;

      v20 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();
    }

    else
    {

      MEMORY[0x1EEE9AC00](v21);
      v32 = &v34;
      v33 = v8;
      v22 = UIViewController.firstDescendantWhere(_:)(partial apply for specialized closure #1 in UIViewController.findMatchedTransitionBarButtonItem<A>(id:in:), v31);
      if (v22)
      {
        v23 = v22;
        v18 = specialized UIViewController.matchingBarButton<A>(id:in:)(&v34, v8);
      }

      else
      {
        v18 = 0;
      }

      v24 = objc_opt_self();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v27 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v28 = swift_allocObject();
      v28[2] = v25;
      v28[3] = v26;
      v28[4] = v27;
      *&v40 = partial apply for specialized closure #2 in UIHostingController.configurePreferredTransition(pushingFrom:enablePreemption:);
      *(&v40 + 1) = v28;
      aBlock = MEMORY[0x1E69E9820];
      *&v38 = 1107296256;
      *(&v38 + 1) = thunk for @escaping @callee_guaranteed (@guaranteed UIAccessibilityCustomRotorSearchPredicate) -> (@owned UIAccessibilityCustomRotorItemResult?);
      v39 = &block_descriptor_70_0;
      v29 = _Block_copy(&aBlock);
      v30 = v9;

      v20 = [v24 _zoomWithOptions_sourceItemProvider_];
      _Block_release(v29);
    }

    [v3 setPreferredTransition_];

    specialized UIHostingController.configureBackgroundForZoom()();
    return outlined destroy of AnyHashable(&v34);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18BFEFF40()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18BFEFF78()
{

  return swift_deallocObject();
}

uint64_t sub_18BFEFFC0()
{

  return swift_deallocObject();
}

uint64_t outlined destroy of IndexPath?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for Text.Style?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_1(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t _s10Foundation9IndexPathVSgWOhTm_2(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  _s10Foundation9IndexPathVSgMaTm_2(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined destroy of MenuVisitor(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI11MenuVisitor33_0F42DDF44729C152DA9EC9F6F4D00118LLVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance NavigationTransitionKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of _NavigationTransitionOutputs?(&static NavigationTransitionKey.defaultValue, v2);
}

uint64_t @objc ListCollectionViewCellBase.updateConfiguration(using:)(void *a1)
{
  v2 = type metadata accessor for UICellConfigurationState();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = a1;
  ListCollectionViewCellBase.updateConfiguration(using:)(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t ListCollectionViewCellBase.updateConfiguration(using:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for UIListContentConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UIListContentConfiguration?(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UICellConfigurationState._bridgeToObjectiveC()().super.super.isa;
  v14 = *((v5 & v4) + 0xB0);
  v15 = type metadata accessor for ListCollectionViewCellBase();
  v55.receiver = v2;
  v55.super_class = v15;
  objc_msgSendSuper2(&v55, sel__bridgedUpdateConfigurationUsingState_, isa);

  v48 = a1;
  v16 = UICellConfigurationState.isEditing.getter();
  v17 = direct field offset for ListCollectionViewCellBase.wasEditing;
  if ((v16 & 1) != *(v2 + direct field offset for ListCollectionViewCellBase.wasEditing))
  {
    v18 = *(v2 + direct field offset for ListCollectionViewCellBase.host);
    if (v18)
    {
      v19 = v18;
      v20 = v14;
      v21 = _UIHostingView.base.getter();

      UIHostingViewBase.allowUIKitAnimationsForNextUpdate.setter();
      v14 = v20;
    }

    *(v2 + v17) = UICellConfigurationState.isEditing.getter() & 1;
  }

  MEMORY[0x18D00DDF0]();
  v22 = type metadata accessor for UICellConfigurationState();
  v50 = v22;
  v51 = MEMORY[0x1E69DC0B0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(aBlock);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v48, v22);
  UIListContentConfiguration.updated(for:)();
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  (*(v7 + 56))(v12, 0, 1, v6);
  v24 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
  swift_beginAccess();
  outlined assign with take of UIListContentConfiguration?(v12, v2 + v24);
  swift_endAccess();
  v25 = direct field offset for ListCollectionViewCellBase.host;
  v26 = *(v2 + direct field offset for ListCollectionViewCellBase.host);
  if (v26)
  {
    type metadata accessor for ModifiedContent();
    v27 = *(v14 + 8);
    v28 = lazy protocol witness table accessor for type CollectionViewCellModifier and conformance CollectionViewCellModifier();
    v53 = v27;
    v54 = v28;
    v29 = v26;
    swift_getWitnessTable();
    type metadata accessor for _UIHostingView();
    swift_getWitnessTable();
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

    v30 = *(v2 + v25);
    if (v30)
    {
      v31 = v30;
      v32 = [v2 contentView];
      [v32 bounds];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;

      [v31 setFrame_];
    }
  }

  result = UICellConfigurationState.isSwiped.getter();
  v42 = direct field offset for ListCollectionViewCellBase.wasSwiped;
  if ((result & 1) != *(v2 + direct field offset for ListCollectionViewCellBase.wasSwiped))
  {
    result = ListCollectionViewCellBase.canUpdateSwipeActionPresentationBinding.getter();
    if (result)
    {
      *(v2 + v42) = UICellConfigurationState.isSwiped.getter() & 1;
      if (UICellConfigurationState.isSwiped.getter())
      {
        return ListCollectionViewCellBase.updateSwipeActionPresentationBinding()();
      }

      else
      {
        v43 = swift_allocObject();
        *(v43 + 16) = v2;
        v44 = objc_opt_self();
        v45 = swift_allocObject();
        *(v45 + 16) = partial apply for closure #1 in ListCollectionViewCellBase.updateConfiguration(using:);
        *(v45 + 24) = v43;
        v51 = partial apply for closure #1 in UIKitSearchScopeCoordinating<>.onChange(selectedScope:);
        v52 = v45;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
        v50 = &block_descriptor_56;
        v46 = _Block_copy(aBlock);
        v2;

        LODWORD(v44) = [v44 _addCompletion_];
        _Block_release(v46);
        if (!v44)
        {
          ListCollectionViewCellBase.updateSwipeActionPresentationBinding()();
        }
      }
    }
  }

  return result;
}

uint64_t sub_18BFF0910()
{

  return swift_deallocObject();
}

uint64_t sub_18BFF0948()
{

  return swift_deallocObject();
}

uint64_t outlined assign with take of UIListContentConfiguration?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIBackgroundConfiguration?(0, &lazy cache variable for type metadata for UIListContentConfiguration?, MEMORY[0x1E69DC118]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of _NavigationTransitionOutputs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _NavigationTransitionOutputs?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ResolvedPicker._makeViewList(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  lazy protocol witness table accessor for type PickerStyleInput and conformance PickerStyleInput();
  PropertyList.subscript.getter();
  if (v11[0])
  {
    LODWORD(v11[0]) = v9;
    return (*(v11[1] + 16))(v11);
  }

  else
  {
    LODWORD(v11[0]) = v9;
    return static ResolvedPicker.makeViewList<A>(view:style:inputs:)(v11, 0, a2, a3, &type metadata for DefaultPickerStyle, a4, &protocol witness table for DefaultPickerStyle, a5);
  }
}

Class @objc ListCollectionViewCellBase.preferredLayoutAttributesFitting(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6.super.isa = ListCollectionViewCellBase.preferredLayoutAttributesFitting(_:)(v4).super.isa;

  return v6.super.isa;
}

UICollectionViewLayoutAttributes __swiftcall ListCollectionViewCellBase.preferredLayoutAttributesFitting(_:)(UICollectionViewLayoutAttributes a1)
{
  if (one-time initialization token for isEnabledInProcessEnv != -1)
  {
    swift_once();
  }

  if (static ListUsesUIHostingConfigurationFeature.isEnabledInProcessEnv)
  {
    v10.receiver = v1;
    v10.super_class = type metadata accessor for ListCollectionViewCellBase();
    v3 = objc_msgSendSuper2(&v10, sel_preferredLayoutAttributesFittingAttributes_, a1.super.isa);

    return v3;
  }

  else
  {
    [v1 effectiveUserInterfaceLayoutDirection];
    [v1 _contentViewInset];
    v5 = type metadata accessor for ListCollectionViewCellBase();
    WitnessTable = swift_getWitnessTable();
    v7 = PlatformListViewBase<>.hostPreferredLayoutAttributes(fitting:insets:)(a1.super.isa, v5, WitnessTable);
    if (PlatformListViewBase.useUniformSizing.getter(v5, WitnessTable))
    {
      [v7 size];
      v8 = direct field offset for ListCollectionViewCellBase.lastConfiguration;
      swift_beginAccess();
      v9 = type metadata accessor for UIListContentConfiguration();
      if ((*(*(v9 - 8) + 48))(&v1[v8], 1, v9))
      {
        swift_endAccess();
        [v1 directionalLayoutMargins];
      }

      else
      {
        UIListContentConfiguration.directionalLayoutMargins.getter();
        swift_endAccess();
      }

      CGSize.outset(by:)();
      [v7 setSize_];
    }

    return v7;
  }
}

void *PlatformListViewBase<>.hostPreferredLayoutAttributes(fitting:insets:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [a1 size];
  v8 = [a1 representedElementKind];
  if (!v8)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    goto LABEL_10;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!v12)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v10 == v13 && v12 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v17 = [a1 respondsToSelector_];
  if (v17)
  {
    v17 = [a1 _listLayoutItemMaxWidth];
    if (v41 > 0.0)
    {
      v17 = [a1 _listLayoutItemMaxWidth];
    }
  }

LABEL_11:
  MEMORY[0x1EEE9AC00](v17);
  CGRect.inset(by:layoutDirection:)();
  v19 = v18;
  v21 = v20;
  v22 = *(a3 + 80);
  v23 = v22(a2, a3);

  if (v23 != v4)
  {
    v24 = v22(a2, a3);
    UIView.invalidateRendererHostSafeAreaInsets()();
  }

  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  swift_dynamicCast();
  (*(a3 + 128))(a2, a3);
  if ((v25 & 1) != 0 || (v26 = (*(a3 + 56))(a2, a3)) == 0)
  {
    PlatformListViewBase<>.hostSizeThatFits(width:)(a2, a3);
    v37 = v39;
    v38 = v40;
  }

  else
  {
    v30 = v26;
    v48 = v21;
    v31 = v19;
    v32 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v26, v27, v28, v29);
    v34 = v33;
    _UIHostingView.viewGraph.getter();
    GraphHost.environment.getter();

    EnvironmentValues.pixelLength.getter();
    v36 = v35;

    if (v36 == 1.0)
    {
      v37 = ceil(v32);
      v38 = ceil(v34);
    }

    else
    {
      v37 = v36 * ceil(v32 / v36);
      v38 = v36 * ceil(v34 / v36);
    }

    v19 = v31;
    v21 = v48;
  }

  v42 = v22(a2, a3);

  if (v42 != v4)
  {
    v43 = v22(a2, a3);
    [v43 setFrame_];
  }

  EdgeInsets.vertical.getter();
  v45 = v38 + v44;
  EdgeInsets.horizontal.getter();
  [v49 setSize_];
  return v49;
}

uint64_t outlined destroy of MatchedTransitionIdentifier?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for PresentationOptionsPreference?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for PresentationOptionsPreference?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

id protocol witness for PlatformListViewBase.hostParentView.getter in conformance ListTableViewHeaderFooter()
{
  v1 = [v0 contentView];

  return v1;
}

void UIView.invalidateRendererHostSafeAreaInsets()()
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v0)
  {
    swift_getObjectType();
    v1 = v0;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  v2 = [v0 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x18D00E9C0](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    UIView.invalidateRendererHostSafeAreaInsets()();
  }

LABEL_13:
}

uint64_t type metadata completion function for _PickerValue()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for PickerStyleConfiguration();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

void specialized UIHostingController.didChangeRequiredBridges(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v80[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v80[-1] - v11;
  if (a2 == a1)
  {
    return;
  }

  MEMORY[0x18D00ABE0](v10);
  v13 = *&v3[direct field offset for UIHostingController.requiredBridges];
  v14 = (v13 ^ a1) & a1;
  v15 = (v13 ^ a1) & v13;
  if ((v14 & 2) != 0)
  {
    v22 = direct field offset for UIHostingController.keyboardShortcutBridge;
    v23 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    if (v23)
    {
      v24 = *&v3[direct field offset for UIHostingController.host];
      v25 = v23;
      v26 = v24;
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();

      v25[OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences] = 0;

      v27 = *&v3[v22];
      if (v27)
      {
        _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for UIHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIHostingController);
        v80[3] = v28;
        v80[4] = &protocol witness table for UIHostingController<A>;
        v80[0] = v3;
        v29 = v27;
        v30 = v3;
        KeyboardShortcutBridge.flushKeyCommands(_:)(v80);

        outlined destroy of KeyboardShortcutSource?(v80, &lazy cache variable for type metadata for KeyboardShortcutSource?, type metadata accessor for KeyboardShortcutSource);
        v23 = *&v3[v22];
      }

      else
      {
        v23 = 0;
      }
    }

    *&v3[v22] = 0;

    if ((v14 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v31 = direct field offset for UIHostingController.navigationBridge;
    if (*&v3[direct field offset for UIHostingController.navigationBridge])
    {
      v32 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v31] = 0;
    goto LABEL_17;
  }

  if ((v15 & 2) != 0)
  {
    v16 = [objc_allocWithZone(type metadata accessor for KeyboardShortcutBridge()) init];
    v17 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    *&v3[direct field offset for UIHostingController.keyboardShortcutBridge] = v16;
  }

  if ((v14 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v15 & 4) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for NavigationBridge_PhoneTV();
  swift_allocObject();
  v18 = UIKitNavigationBridge.init()();
  v19 = direct field offset for UIHostingController.navigationBridge;
  *&v3[direct field offset for UIHostingController.navigationBridge] = v18;

  v20 = direct field offset for UIHostingController.host;
  *(v18 + 24) = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
  swift_unknownObjectWeakAssign();

  if (!*&v3[v19])
  {
    __break(1u);
    goto LABEL_63;
  }

  v21 = *&v3[v20];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_17:

LABEL_18:
  if (v14)
  {
    static Log.toolbar.getter();
    v35 = type metadata accessor for Logger();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v37 = v3;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v79 = v15;
        v15 = v41;
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_18BD4A000, v38, v39, "Removed toolbar bridge from %@", v40, 0xCu);
        outlined destroy of NSObject?(v15);
        v43 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v43, -1, -1);
        MEMORY[0x18D0110E0](v40, -1, -1);
      }

      (*(v36 + 8))(v12, v35);
    }

    v44 = direct field offset for UIHostingController.toolbarBridge;
    v45 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    if (v45)
    {
      v46 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v45 = *&v3[v44];
    }

    *&v3[v44] = 0;
  }

  else if (v15)
  {
    static Log.toolbar.getter();
    v33 = type metadata accessor for Logger();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v8, 1, v33) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v8, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v51 = v3;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v79 = v15;
        v15 = v55;
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&dword_18BD4A000, v52, v53, "Added toolbar bridge to %@", v54, 0xCu);
        outlined destroy of NSObject?(v15);
        v57 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v57, -1, -1);
        MEMORY[0x18D0110E0](v54, -1, -1);
      }

      (*(v34 + 8))(v8, v33);
    }

    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for ToolbarBridge<UIKitToolbarStrategy>, &type metadata for UIKitToolbarStrategy, &protocol witness table for UIKitToolbarStrategy, type metadata accessor for ToolbarBridge);
    v59 = [objc_allocWithZone(v58) init];
    v60 = direct field offset for UIHostingController.toolbarBridge;
    v61 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    *&v3[direct field offset for UIHostingController.toolbarBridge] = v59;

    if (*&v3[v60])
    {
      v62 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();

      if ((v14 & 0x10) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if ((v14 & 0x10) != 0)
  {
LABEL_39:
    v63 = direct field offset for UIHostingController.contentScrollViewBridge;
    if (*&v3[direct field offset for UIHostingController.contentScrollViewBridge])
    {
      v64 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v63] = 0;
    goto LABEL_42;
  }

LABEL_31:
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_43;
  }

  type metadata accessor for UIKitContentScrollViewBridge();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = MEMORY[0x1E69E7CC8];
  *(v47 + 24) = -1;
  *(v47 + 32) = v48;
  *(v47 + 40) = 0;
  *(v47 + 48) = 0x3FF0000000000000;
  v49 = direct field offset for UIHostingController.contentScrollViewBridge;
  *&v3[direct field offset for UIHostingController.contentScrollViewBridge] = v47;

  swift_unknownObjectWeakAssign();

  if (!*&v3[v49])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = *&v3[direct field offset for UIHostingController.host];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_42:

LABEL_43:
  if ((v14 & 0x20) != 0)
  {
    v68 = direct field offset for UIHostingController.alwaysOnBridge;
    if (*&v3[direct field offset for UIHostingController.alwaysOnBridge])
    {
      v69 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v68] = 0;
    goto LABEL_50;
  }

  if ((v15 & 0x20) != 0)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for AlwaysOnBridge<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for AlwaysOnBridge);
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v65 + 44) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 40) = 0;
    *(v65 + 48) = MEMORY[0x1E69E7CC0];
    v66 = direct field offset for UIHostingController.alwaysOnBridge;
    *&v3[direct field offset for UIHostingController.alwaysOnBridge] = v65;

    swift_unknownObjectWeakAssign();

    if (*&v3[v66])
    {
      v67 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
LABEL_50:

      goto LABEL_51;
    }

LABEL_65:
    __break(1u);
    return;
  }

LABEL_51:
  if (v14 < 0)
  {
    v76 = direct field offset for UIHostingController.inspectorBridgeV5;
    v77 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    if (v77)
    {
      v78 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v77 = *&v3[v76];
    }

    *&v3[v76] = 0;
  }

  else if ((v15 & 0x80) != 0)
  {
    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for UIKitInspectorBridgeV5<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for UIKitInspectorBridgeV5);
    v71 = [objc_allocWithZone(v70) init];
    v72 = direct field offset for UIHostingController.inspectorBridgeV5;
    v73 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    *&v3[direct field offset for UIHostingController.inspectorBridgeV5] = v71;
    v74 = v71;

    if (v74)
    {
      *&v74[direct field offset for SheetBridge.host + 8] = lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>();
      swift_unknownObjectWeakAssign();
    }

    if (*&v3[v72])
    {
      v75 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
    }
  }

  static Update.end()();
}

{
  v3 = v2;
  _s2os6LoggerVSgMaTm_2(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v80[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v80[-1] - v11;
  if (a2 == a1)
  {
    return;
  }

  MEMORY[0x18D00ABE0](v10);
  v13 = *&v3[direct field offset for UIHostingController.requiredBridges];
  v14 = (v13 ^ a1) & a1;
  v15 = (v13 ^ a1) & v13;
  if ((v14 & 2) != 0)
  {
    v22 = direct field offset for UIHostingController.keyboardShortcutBridge;
    v23 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    if (v23)
    {
      v24 = *&v3[direct field offset for UIHostingController.host];
      v25 = v23;
      v26 = v24;
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();

      v25[OBJC_IVAR____TtC7SwiftUI22KeyboardShortcutBridge_isObservingPreferences] = 0;

      v27 = *&v3[v22];
      if (v27)
      {
        type metadata accessor for UIHostingController<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIHostingController<BridgedPresentation.RootView>, type metadata accessor for UIHostingController);
        v80[3] = v28;
        v80[4] = &protocol witness table for UIHostingController<A>;
        v80[0] = v3;
        v29 = v27;
        v30 = v3;
        KeyboardShortcutBridge.flushKeyCommands(_:)(v80);

        outlined destroy of KeyboardShortcutSource?(v80, &lazy cache variable for type metadata for KeyboardShortcutSource?, type metadata accessor for KeyboardShortcutSource);
        v23 = *&v3[v22];
      }

      else
      {
        v23 = 0;
      }
    }

    *&v3[v22] = 0;

    if ((v14 & 4) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v31 = direct field offset for UIHostingController.navigationBridge;
    if (*&v3[direct field offset for UIHostingController.navigationBridge])
    {
      v32 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v31] = 0;
    goto LABEL_17;
  }

  if ((v15 & 2) != 0)
  {
    v16 = [objc_allocWithZone(type metadata accessor for KeyboardShortcutBridge()) init];
    v17 = *&v3[direct field offset for UIHostingController.keyboardShortcutBridge];
    *&v3[direct field offset for UIHostingController.keyboardShortcutBridge] = v16;
  }

  if ((v14 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v15 & 4) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for NavigationBridge_PhoneTV();
  swift_allocObject();
  v18 = UIKitNavigationBridge.init()();
  v19 = direct field offset for UIHostingController.navigationBridge;
  *&v3[direct field offset for UIHostingController.navigationBridge] = v18;

  v20 = direct field offset for UIHostingController.host;
  *(v18 + 24) = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, type metadata accessor for _UIHostingView);
  swift_unknownObjectWeakAssign();

  if (!*&v3[v19])
  {
    __break(1u);
    goto LABEL_63;
  }

  v21 = *&v3[v20];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_17:

LABEL_18:
  if (v14)
  {
    static Log.toolbar.getter();
    v35 = type metadata accessor for Logger();
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(v12, 1, v35) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v12, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v37 = v3;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v79 = v15;
        v15 = v41;
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v37;
        v42 = v37;
        _os_log_impl(&dword_18BD4A000, v38, v39, "Removed toolbar bridge from %@", v40, 0xCu);
        outlined destroy of NSObject?(v15);
        v43 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v43, -1, -1);
        MEMORY[0x18D0110E0](v40, -1, -1);
      }

      (*(v36 + 8))(v12, v35);
    }

    v44 = direct field offset for UIHostingController.toolbarBridge;
    v45 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    if (v45)
    {
      v46 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v45 = *&v3[v44];
    }

    *&v3[v44] = 0;
  }

  else if (v15)
  {
    static Log.toolbar.getter();
    v33 = type metadata accessor for Logger();
    v34 = *(v33 - 8);
    if ((*(v34 + 48))(v8, 1, v33) == 1)
    {
      outlined destroy of KeyboardShortcutSource?(v8, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420]);
    }

    else
    {
      v51 = v3;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v79 = v15;
        v15 = v55;
        *v54 = 138412290;
        *(v54 + 4) = v51;
        *v55 = v51;
        v56 = v51;
        _os_log_impl(&dword_18BD4A000, v52, v53, "Added toolbar bridge to %@", v54, 0xCu);
        outlined destroy of NSObject?(v15);
        v57 = v15;
        LOBYTE(v15) = v79;
        MEMORY[0x18D0110E0](v57, -1, -1);
        MEMORY[0x18D0110E0](v54, -1, -1);
      }

      (*(v34 + 8))(v8, v33);
    }

    _s7SwiftUI22EnvironmentPropertyKeyVyAA018InheritedColorSeedE0VGMaTm_0(0, &lazy cache variable for type metadata for ToolbarBridge<UIKitToolbarStrategy>, &type metadata for UIKitToolbarStrategy, &protocol witness table for UIKitToolbarStrategy, type metadata accessor for ToolbarBridge);
    v59 = [objc_allocWithZone(v58) init];
    v60 = direct field offset for UIHostingController.toolbarBridge;
    v61 = *&v3[direct field offset for UIHostingController.toolbarBridge];
    *&v3[direct field offset for UIHostingController.toolbarBridge] = v59;

    if (*&v3[v60])
    {
      v62 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();

      if ((v14 & 0x10) != 0)
      {
        goto LABEL_39;
      }

      goto LABEL_31;
    }

LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if ((v14 & 0x10) != 0)
  {
LABEL_39:
    v63 = direct field offset for UIHostingController.contentScrollViewBridge;
    if (*&v3[direct field offset for UIHostingController.contentScrollViewBridge])
    {
      v64 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v63] = 0;
    goto LABEL_42;
  }

LABEL_31:
  if ((v15 & 0x10) == 0)
  {
    goto LABEL_43;
  }

  type metadata accessor for UIKitContentScrollViewBridge();
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v48 = MEMORY[0x1E69E7CC8];
  *(v47 + 24) = -1;
  *(v47 + 32) = v48;
  *(v47 + 40) = 0;
  *(v47 + 48) = 0x3FF0000000000000;
  v49 = direct field offset for UIHostingController.contentScrollViewBridge;
  *&v3[direct field offset for UIHostingController.contentScrollViewBridge] = v47;

  swift_unknownObjectWeakAssign();

  if (!*&v3[v49])
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v50 = *&v3[direct field offset for UIHostingController.host];
  UIHostingViewBase.viewGraph.getter();

  GraphHost.addPreference<A>(_:)();
LABEL_42:

LABEL_43:
  if ((v14 & 0x20) != 0)
  {
    v68 = direct field offset for UIHostingController.alwaysOnBridge;
    if (*&v3[direct field offset for UIHostingController.alwaysOnBridge])
    {
      v69 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
    }

    *&v3[v68] = 0;
    goto LABEL_50;
  }

  if ((v15 & 0x20) != 0)
  {
    type metadata accessor for UIHostingController<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for AlwaysOnBridge<BridgedPresentation.RootView>, type metadata accessor for AlwaysOnBridge);
    v65 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v65 + 44) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 40) = 0;
    *(v65 + 48) = MEMORY[0x1E69E7CC0];
    v66 = direct field offset for UIHostingController.alwaysOnBridge;
    *&v3[direct field offset for UIHostingController.alwaysOnBridge] = v65;

    swift_unknownObjectWeakAssign();

    if (*&v3[v66])
    {
      v67 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
LABEL_50:

      goto LABEL_51;
    }

LABEL_65:
    __break(1u);
    return;
  }

LABEL_51:
  if (v14 < 0)
  {
    v76 = direct field offset for UIHostingController.inspectorBridgeV5;
    v77 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    if (v77)
    {
      v78 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.removePreference<A>(_:)();
      GraphHost.removePreference<A>(_:)();

      v77 = *&v3[v76];
    }

    *&v3[v76] = 0;
  }

  else if ((v15 & 0x80) != 0)
  {
    type metadata accessor for UIHostingController<BridgedPresentation.RootView>(0, &lazy cache variable for type metadata for UIKitInspectorBridgeV5<BridgedPresentation.RootView>, type metadata accessor for UIKitInspectorBridgeV5);
    v71 = [objc_allocWithZone(v70) init];
    v72 = direct field offset for UIHostingController.inspectorBridgeV5;
    v73 = *&v3[direct field offset for UIHostingController.inspectorBridgeV5];
    *&v3[direct field offset for UIHostingController.inspectorBridgeV5] = v71;
    v74 = v71;

    if (v74)
    {
      *&v74[direct field offset for SheetBridge.host + 8] = lazy protocol witness table accessor for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<BridgedPresentation.RootView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<BridgedPresentation.RootView>, type metadata accessor for _UIHostingView);
      swift_unknownObjectWeakAssign();
    }

    if (*&v3[v72])
    {
      v75 = *&v3[direct field offset for UIHostingController.host];
      UIHostingViewBase.viewGraph.getter();

      GraphHost.addPreference<A>(_:)();
      GraphHost.addPreference<A>(_:)();
    }
  }

  static Update.end()();
}