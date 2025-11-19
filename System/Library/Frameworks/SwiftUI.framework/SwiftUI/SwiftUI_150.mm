void specialized Zip2Sequence.Iterator.next()(uint64_t a1@<X8>)
{
  if (*(v1 + 361) == 1)
  {
    *(a1 + 25) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 41) = 1;
    return;
  }

  v2 = *(v1 + 248);
  v3 = *(v1 + 256);
  v4 = *(v1 + 264);
  if (v2 == *(v1 + 224))
  {
    if (*(v1 + 264))
    {
      if (*(v1 + 240))
      {
        goto LABEL_29;
      }

      v4 = 1;
    }

    else
    {
      if (v3 == *(v1 + 232))
      {
        v5 = *(v1 + 240);
      }

      else
      {
        v5 = 1;
      }

      if ((v5 & 1) == 0)
      {
        goto LABEL_29;
      }

      v4 = 0;
    }
  }

  v6 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  v7 = *(v1 + 192);
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    if (v4)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_35;
    }
  }

  *(v1 + 248) = v6;
  *(v1 + 256) = v8;
  *(v1 + 264) = v6 == v7;
  v9 = *(v1 + 344);
  v10 = *(v1 + 352);
  v11 = *(v1 + 360);
  if (v9 == *(v1 + 320))
  {
    if (*(v1 + 360))
    {
      if ((*(v1 + 336) & 1) == 0)
      {
        v11 = 1;
        goto LABEL_26;
      }

LABEL_29:
      *(v1 + 361) = 1;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 25) = 0u;
      *(a1 + 41) = 1;
      return;
    }

    if (v10 == *(v1 + 328))
    {
      v12 = *(v1 + 336);
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      goto LABEL_29;
    }

    v11 = 0;
  }

LABEL_26:
  v13 = v9 + 1;
  if (__OFADD__(v9, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v14 = *(*(v1 + 272) + 16);
  if (v13 == v14)
  {
    v15 = 0;
LABEL_32:
    *(v1 + 344) = v13;
    *(v1 + 352) = v15;
    *(v1 + 360) = v13 == v14;
    *a1 = v2;
    *(a1 + 8) = v3;
    *(a1 + 16) = v4;
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    *(a1 + 40) = v11;
    *(a1 + 41) = 0;
    return;
  }

  if ((v11 & 1) == 0)
  {
    v15 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_32;
    }

    goto LABEL_36;
  }

LABEL_38:
  __break(1u);
}

BOOL _sSLsE2leoiySbx_xtFZ7SwiftUI15NavigationStateV12StackContentV5ViewsV0H8SequenceV5IndexVy___AB22_VariadicView_ChildrenVAB08ModifiedG0VyAB0D24SearchAdjustmentModifierVAPyAPyAB0d6ColumnQ0VAB09InjectKeyQ0VGAB0d16BackgroundReaderQ033_7632008E3567AB610EB09B57688D0EDELLVGG_G_Tt1g5(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  if (a2)
  {
    v8 = a6 ^ 1;
  }

  else
  {
    if (a6)
    {
      goto LABEL_4;
    }

    if (a5 < a1)
    {
      v8 = 1;
      return (v8 & 1) == 0;
    }

    if (a1 < a5)
    {
LABEL_4:
      v8 = 0;
    }

    else if (a8)
    {
      v10 = a4 == 1 && a7 < a3;
      if (a3)
      {
        v11 = 0;
      }

      else
      {
        v11 = a4 == 2;
      }

      v12 = !v11;
      if (a8 == 1)
      {
        v8 = v10;
      }

      else
      {
        v8 = v12;
      }
    }

    else if (a4)
    {
      v8 = a4 == 1;
    }

    else
    {
      v8 = a7 < a3;
    }
  }

  return (v8 & 1) == 0;
}

void specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(char a1@<W0>, uint64_t a2@<X8>)
{
  *&v6 = *(v2 + 152);
  v9 = 1;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  if ((v10 & 1) != 0 || (a1 & 1) == 0)
  {
    outlined init with copy of Binding<AnySelectionManager>(v2 + 160, &v6, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    if (*(&v7 + 1))
    {
      v5 = v7;
      *a2 = v6;
      *(a2 + 16) = v5;
      *(a2 + 32) = v8;
    }

    else
    {
      _s7SwiftUI19ViewTraitCollectionVAAE26listSelectionIdentityValue3for07respectG8DisabledxSgxm_SbtSHRzlFs11AnyHashableV_Tt0B5(1, *(v2 + 152), a2);
      if (*(&v7 + 1))
      {
        _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v6, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
      }
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }
}

double _s7SwiftUI19ViewTraitCollectionVAAE26listSelectionIdentityValue3for07respectG8DisabledxSgxm_SbtSHRzlFs11AnyHashableV_Tt0B5@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v21 = a2;
  if ((ViewTraitCollection.isAuxiliaryContent.getter() & 1) == 0)
  {
    *&v21 = a2;
    LOBYTE(v13[0]) = 1;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    if ((v17 & 1) != 0 || (a1 & 1) == 0)
    {
      *&v17 = a2;
      ViewTraitCollection.tag<A>(for:)();
      if (*(&v22 + 1))
      {
        result = *&v21;
        v7 = v22;
        *a3 = v21;
        *(a3 + 16) = v7;
        *(a3 + 32) = v23;
        return result;
      }

      v8 = MEMORY[0x1E69E6720];
      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v21, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
      v16 = a2;
      memset(v13, 0, 24);
      v13[3] = 1;
      v14 = 0u;
      v15 = 0u;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v13, &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?, &type metadata for NavigationLinkSelectionIdentifier, v8);
      if (*(&v18 + 1) == 1)
      {
        v9 = &lazy cache variable for type metadata for NavigationLinkSelectionIdentifier?;
        v10 = &type metadata for NavigationLinkSelectionIdentifier;
      }

      else
      {
        v21 = v17;
        v22 = v18;
        v23 = v19;
        v24 = v20;
        outlined init with copy of Binding<AnySelectionManager>(&v21, &v17, &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?, &type metadata for AnyNavigationLinkPresentedValue, MEMORY[0x1E69E6720]);
        v11 = *(&v18 + 1);
        if (*(&v18 + 1))
        {
          v12 = v19;
          __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
          (*(v12 + 48))(MEMORY[0x1E69E69B8], MEMORY[0x1E69E69B8], v11, v12);
          outlined destroy of NavigationLinkSelectionIdentifier(&v21);
          outlined destroy of AnyNavigationLinkPresentedValue(&v17);
          return result;
        }

        outlined destroy of NavigationLinkSelectionIdentifier(&v21);
        v9 = &lazy cache variable for type metadata for AnyNavigationLinkPresentedValue?;
        v10 = &type metadata for AnyNavigationLinkPresentedValue;
      }

      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v17, v9, v10, MEMORY[0x1E69E6720]);
    }
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

double _s7SwiftUI27CollectionViewListUtilitiesO11makeOutputs6inputs11coordinator0J4Kind14scrollGeometryAA01_dH0VAA01_D6InputsV_14AttributeGraph0O0VyAA012UICollectiondE11CoordinatorCyxq_GGAC0rK0OAM08IndirectO0VyAA06ScrollM0VGtAA0cdE14DataSourceBaseRzAA16SelectionManagerR_0X5ValueQy_A1_Rtzr0_lFZAA05TableuV7AdaptorV_AA03AnyxY0VTt4B5@<D0>(uint64_t a1@<X0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, double *a5@<X8>)
{
  v76 = a4;
  v79 = a3;
  LODWORD(v78) = a2;
  v77 = a5;
  v105 = *MEMORY[0x1E69E9840];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for BridgedListState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = 1;
  v87 = *(a1 + 48);
  v88 = *(a1 + 56);
  *&v89[0] = *(a1 + 48);
  DWORD2(v89[0]) = *(a1 + 56);
  outlined init with copy of PreferencesInputs(&v87, v100);
  outlined init with copy of PreferencesInputs(&v87, v100);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    static ScrollGeometry.zero.getter();
    v12 = 0;
    v80 = v89[0];
    v74 = v89[2];
    v75 = v89[1];
    v71 = v92;
    v72 = v91;
    v73 = v90;
    v13 = v93;
    v14 = v94;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v80 = 0u;
    v12 = v81;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v71 = 0u;
  }

  v15 = type metadata accessor for BridgedListState.ScrollTarget(0);
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  v16 = static SemanticFeature.isEnabled.getter();
  v17 = 15.0;
  if (v16)
  {
    v17 = 16.0;
  }

  *v11 = v17;
  outlined init with take of BridgedListState.ScrollTarget?(v8, v11 + v9[5], &lazy cache variable for type metadata for BridgedListState.ScrollTarget?, type metadata accessor for BridgedListState.ScrollTarget);
  v18 = v11 + v9[6];
  v19 = v75;
  *v18 = v80;
  *(v18 + 1) = v19;
  v20 = v73;
  *(v18 + 2) = v74;
  *(v18 + 3) = v20;
  v21 = v71;
  *(v18 + 4) = v72;
  *(v18 + 5) = v21;
  *(v18 + 12) = v13;
  *(v18 + 13) = v14;
  v18[112] = v12;
  *(v11 + v9[7]) = 0;
  LODWORD(v80) = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of BridgedListState(v11, type metadata accessor for BridgedListState);
  v89[0] = *a1;
  v22 = *(a1 + 16);
  *(&v89[1] + 8) = *(a1 + 24);
  *(&v89[2] + 1) = *(a1 + 40);
  *&v75 = v22;
  *&v89[1] = v22;
  v23 = _GraphInputs.scrollPhaseState.getter();
  v24 = v23;
  v25 = v23;
  LODWORD(v73) = *MEMORY[0x1E698D3F8];
  if (v23 == v73)
  {
    default argument 1 of ScrollPhaseState.init(phase:velocity:)();
    ScrollPhaseState.init(phase:velocity:)();
    v100[0] = v89[0];
    *&v100[8] = *(v89 + 8);
    v25 = Attribute.init<A>(body:value:flags:update:)();
  }

  LODWORD(v89[0]) = v80;
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type UpdateBridgedState and conformance UpdateBridgedState();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateBridgedState(v89);
  AGGraphGetFlags();
  AGGraphSetFlags();
  swift_unknownObjectWeakInit();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UIScrollView?();
  lazy protocol witness table accessor for type ListScrollViewProvider and conformance ListScrollViewProvider();
  v27 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of ListScrollViewProvider(v89);
  *&v72 = type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for Scrollable);
  v28 = Attribute.init<A>(body:value:flags:update:)();
  LODWORD(v89[0]) = v78;
  BYTE4(v89[0]) = v79 & 1;
  *(&v89[0] + 1) = __PAIR64__(v25, v26);
  v79 = v27;
  LODWORD(v89[1]) = v27;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for ListRepresentable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for ListRepresentable);
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for MakeRepresentable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for MakeRepresentable);
  lazy protocol witness table accessor for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>(&lazy protocol witness table cache variable for type MakeRepresentable<TableDataSourceAdaptor, AnySelectionManager> and conformance MakeRepresentable<A, B>, &lazy cache variable for type metadata for MakeRepresentable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for MakeRepresentable);
  v29 = Attribute.init<A>(body:value:flags:update:)();
  v30 = *(a1 + 48);
  v101 = *(a1 + 32);
  v102 = v30;
  v103 = *(a1 + 64);
  v104 = *(a1 + 80);
  v31 = *(a1 + 16);
  *v100 = *a1;
  *&v100[16] = v31;
  outlined init with copy of _ViewInputs(a1, v89);
  LODWORD(v74) = v28;
  _ViewInputs.scrollable.setter();
  if (v24 == v73)
  {
    MEMORY[0x18D003C90](v25);
  }

  PreferenceKeys.remove(_:)();
  LODWORD(v95[0]) = v29;
  v96[2] = v101;
  v96[3] = v102;
  v96[4] = v103;
  v97 = v104;
  v96[0] = *v100;
  v96[1] = *&v100[16];
  v89[2] = v101;
  v90 = v102;
  v91 = v103;
  LODWORD(v92) = v104;
  v89[0] = *v100;
  v89[1] = *&v100[16];
  outlined init with copy of _ViewInputs(v96, v98);
  static View.makeDebuggableView(view:inputs:)();
  v98[2] = v89[2];
  v98[3] = v90;
  v98[4] = v91;
  v99 = v92;
  v98[0] = v89[0];
  v98[1] = v89[1];
  outlined destroy of _ViewInputs(v98);
  v32 = AGCreateWeakAttribute();
  v33 = v32;
  v78 = HIDWORD(v32);
  v34 = AGCreateWeakAttribute();
  v35 = v34;
  *&v71 = HIDWORD(v34);
  v36 = AGCreateWeakAttribute();
  v37 = v36;
  v70 = HIDWORD(v36);
  *&v89[0] = v85;
  DWORD2(v89[0]) = LODWORD(v86);
  PreferencesOutputs.subscript.getter();
  v38 = AGCreateWeakAttribute();
  v39 = v38;
  v40 = HIDWORD(v38);
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for MutableBox<UInt32>, MEMORY[0x1E69E7668], MEMORY[0x1E697DAC0]);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for CollectionViewListScrollable);
  v95[3] = v42;
  v95[4] = lazy protocol witness table accessor for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>(&lazy protocol witness table cache variable for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>, &lazy cache variable for type metadata for CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for CollectionViewListScrollable);
  v43 = swift_allocObject();
  v95[0] = v43;
  v44 = v78;
  *(v43 + 16) = v33;
  *(v43 + 20) = v44;
  v45 = v70;
  v46 = v71;
  *(v43 + 24) = v35;
  *(v43 + 28) = v46;
  *(v43 + 32) = v37;
  *(v43 + 36) = v45;
  *(v43 + 40) = v39;
  *(v43 + 44) = v40;
  *(v43 + 48) = v41;
  v47 = v74;
  AGGraphSetValue();
  __swift_destroy_boxed_opaque_existential_1(v95);
  *&v89[0] = v87;
  DWORD2(v89[0]) = v88;
  v48 = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
  *&v89[0] = v87;
  DWORD2(v89[0]) = v88;
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) != 0 || (v48)
  {
    LODWORD(v89[0]) = v47;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for [Scrollable]();
    lazy protocol witness table accessor for type UnaryScrollablePreferenceProvider and conformance UnaryScrollablePreferenceProvider();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v89[0]) = 0;
    PreferencesOutputs.subscript.setter();
    if (v48)
    {
      AccessibilityProperties.init()();
      LOBYTE(v89[0]) = 0;
      DWORD1(v89[0]) = v49;
      v50 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of AccessibilityScrollableModifier(v89);
      _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(v50, a1, v85, SLODWORD(v86), &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityScrollableModifier>, lazy protocol witness table accessor for type AccessibilityScrollableModifier and conformance AccessibilityScrollableModifier, &type metadata for AccessibilityScrollableModifier);
      PreferencesOutputs.subscript.setter();
    }
  }

  LODWORD(v89[0]) = v80;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryProvider and conformance ScrollGeometryProvider();
  v51 = Attribute.init<A>(body:value:flags:update:)();
  v52 = *(a1 + 48);
  v89[2] = *(a1 + 32);
  v90 = v52;
  v91 = *(a1 + 64);
  LODWORD(v92) = *(a1 + 80);
  v53 = *(a1 + 16);
  v89[0] = *a1;
  v89[1] = v53;
  _ViewInputs.position.getter();
  ScrollGeometryTransformProvider.init(position:transform:)();
  *&v89[0] = v82;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ScrollGeometryTransformProvider and conformance ScrollGeometryTransformProvider();
  v54 = Attribute.init<A>(body:value:flags:update:)();
  LOBYTE(v89[0]) = 2;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  LOBYTE(v82) = 0;
  v55 = GraphHost.intern<A>(_:for:id:)();

  *&v89[0] = __PAIR64__(v55, v51);
  DWORD2(v89[0]) = v54;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  v56 = MEMORY[0x1E69E62F8];
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for [ScrollGeometryState], MEMORY[0x1E697F7D0], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type ScrollGeometryStateProvider and conformance ScrollGeometryStateProvider();
  v57 = Attribute.init<A>(body:value:flags:update:)();
  *&v89[0] = v87;
  DWORD2(v89[0]) = v88;
  MEMORY[0x1EEE9AC00](v57);
  *(&v69 - 4) = v58;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  AGGraphSetIndirectAttribute();
  swift_beginAccess();
  v59 = *(a1 + 72);
  v60 = *(a1 + 48);
  v89[2] = *(a1 + 32);
  v90 = v60;
  v91 = *(a1 + 64);
  LODWORD(v92) = *(a1 + 80);
  v61 = *(a1 + 16);
  v89[0] = *a1;
  v89[1] = v61;
  _ViewInputs.position.getter();
  ResolvedSafeAreaInsets.init(regions:environment:size:position:transform:safeAreaInsets:)();
  *&v89[0] = v82;
  *(v89 + 8) = v83;
  DWORD2(v89[1]) = v84;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ResolvedSafeAreaInsets and conformance ResolvedSafeAreaInsets();
  v62 = Attribute.init<A>(body:value:flags:update:)();
  v63 = *(a1 + 48);
  v89[2] = *(a1 + 32);
  v90 = v63;
  v91 = *(a1 + 64);
  LODWORD(v92) = *(a1 + 80);
  v64 = *(a1 + 16);
  v89[0] = *a1;
  v89[1] = v64;
  *&v89[0] = __PAIR64__(_ViewInputs.position.getter(), v79);
  *(&v89[0] + 1) = __PAIR64__(v62, v59);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox, v56);
  lazy protocol witness table accessor for type ScrollViewPreferenceProvider and conformance ScrollViewPreferenceProvider();
  v65 = Attribute.init<A>(body:value:flags:update:)();
  v82 = v87;
  LODWORD(v83) = v88;
  MEMORY[0x1EEE9AC00](v65);
  *(&v69 - 4) = v66;
  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

  v89[2] = v101;
  v90 = v102;
  v91 = v103;
  LODWORD(v92) = v104;
  v89[0] = *v100;
  v89[1] = *&v100[16];
  outlined destroy of _ViewInputs(v89);
  v67 = v77;
  *v77 = v85;
  result = v86;
  v67[1] = v86;
  return result;
}

unint64_t _s7SwiftUI25WeakSelectionBasedStorageVyACyxGAA0deF0VyxGcfCAA04TextD0V_Tt0g5Tm(unint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x1E698D3F8];
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = AGCreateWeakAttribute();
    v6 = v7 & 0xFFFFFFFF00000000;
    v5 = v7;
  }

  if (v4 == v3)
  {
    if (v4 != a2)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (v4 == HIDWORD(a2))
    {
      return v6 | v5;
    }

    goto LABEL_7;
  }

  AGCreateWeakAttribute();
  if (v4 == a2)
  {
    goto LABEL_9;
  }

LABEL_6:
  AGCreateWeakAttribute();
  if (v4 != HIDWORD(a2))
  {
LABEL_7:
    AGCreateWeakAttribute();
  }

  return v6 | v5;
}

void specialized UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v87 = a1;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v84 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v21 = *MEMORY[0x1E69E7D40] & *v4;
  v22 = *(v21 + 0xC8);
  v89 = v4;
  if ((*(v4 + v22) & 1) == 0)
  {
    v82 = v9;
    v83 = v8;
    v73 = &v70 - v18;
    v74 = v20;
    v75 = v19;
    v76 = v17;
    v77 = a4;
    v78 = a3;
    v79 = v14;
    v23 = *(a2 + 168);
    v85 = a2;
    v24 = *(a2 + 169) != 2;
    v72 = v23;
    v25 = v24 & ~v23;
    v26 = *(v21 + 136);
    v27 = v89;
    swift_beginAccess();
    v88 = v26;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v26 + v27, v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of TableDataSourceAdaptor(v92, v93);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v80 = v11;
    v81 = v12;
    if (v94 == 1)
    {
      outlined destroy of TableDataSourceAdaptor(v93);
      v28 = 0;
    }

    else
    {
      v29 = v95;
      outlined destroy of TableDataSourceAdaptor(v93);
      v28 = v29 != 2;
    }

    v71 = v25;
    v86 = v25 ^ v28;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v88 + v89, v100, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v100, v92, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v92, v99);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v100, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v99, v98, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    v98[25] = 0;
    v30 = v99[24];
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v99, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    v98[26] = v30;
    _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v98, v93, type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
    v31 = 0;
    v32 = v96;
    while (v32 != v31)
    {
      v33 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        return;
      }

      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v88 + v89, v91, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v91, v90, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      v34 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v31);
      _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v90, v34, v92);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v91, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v35 = v92[26];
      specialized ShadowRowCollection.endIndex.getter();
      v37 = v36;
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v92, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
      ++v31;
      if (v35 != v37)
      {
        outlined destroy of BridgedListState(v98, type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
        v97 = v33;
        outlined destroy of BridgedListState(v93, type metadata accessor for IndexingIterator<DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        goto LABEL_11;
      }
    }

    outlined destroy of BridgedListState(v98, type metadata accessor for DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>);
    v97 = v32;
    v38 = outlined destroy of BridgedListState(v93, type metadata accessor for IndexingIterator<DefaultIndices<ShadowSectionCollection<TableDataSourceAdaptor>>>);
    MEMORY[0x1EEE9AC00](v38);
    *(&v70 - 2) = v39;
    specialized Sequence.first(where:)(partial apply for specialized closure #2 in implicit closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:), (&v70 - 4), 0, v40);
    v86 |= v41 ^ 1;
LABEL_11:
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v88 + v89, v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of TableDataSourceAdaptor(v92, v93);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v92, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v42 = v94;
    outlined destroy of TableDataSourceAdaptor(v93);
    v44 = v75;
    v43 = v76;
    v45 = *(v75 + 104);
    v46 = *MEMORY[0x1E69DC248];
    v47 = *MEMORY[0x1E69DC240];
    if (v42)
    {
      v48 = v46;
    }

    else
    {
      v48 = v47;
    }

    v49 = v73;
    v45(v73, v48, v76);
    if (v72)
    {
      v50 = v46;
    }

    else
    {
      v50 = v47;
    }

    v51 = v74;
    v45(v74, v50, v43);
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type UICollectionLayoutListConfiguration.Appearance and conformance UICollectionLayoutListConfiguration.Appearance, MEMORY[0x1E69DC260]);
    v52 = dispatch thunk of static Equatable.== infix(_:_:)();
    v53 = *(v44 + 8);
    v53(v51, v43);
    v53(v49, v43);
    specialized UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(v87, v85, v78, v77 & 1);
    v55 = v82;
    v54 = v83;
    v57 = v80;
    v56 = v81;
    v58 = v79;
    v59 = v86;
    if (v52 & 1) == 0 || (v86)
    {
      v60 = [v87 collectionViewLayout];
      [v60 invalidateLayout];

      if (v59)
      {
        v61 = v87;
        v88 = [v87 collectionViewLayout];
        objc_opt_self();
        v62 = swift_dynamicCastObjCClassUnconditional();
        v63 = v71;
        v64 = specialized UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(v71);
        [v62 setConfiguration_];

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v65 = static OS_dispatch_queue.main.getter();
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        *(v67 + 24) = v61;
        *(v67 + 32) = v63;
        v92[4] = partial apply for specialized closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:);
        v92[5] = v67;
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 1107296256;
        v92[2] = thunk for @escaping @callee_guaranteed () -> ();
        v92[3] = &block_descriptor_67;
        v68 = _Block_copy(v92);
        v69 = v61;

        static DispatchQoS.unspecified.getter();
        v92[0] = MEMORY[0x1E69E7CC0];
        lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
        _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x18D00DA20](0, v58, v57, v68);
        _Block_release(v68);

        (*(v55 + 8))(v57, v54);
        (*(v84 + 8))(v58, v56);
      }
    }
  }
}

uint64_t specialized ListCoreBatchUpdates.isEmpty.getter()
{
  if ((IndexSet.isEmpty.getter() & 1) == 0)
  {
    return 0;
  }

  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v2 = v1;
  if ((IndexSet.isEmpty.getter() & 1) == 0 || *(*(v0 + v2[10]) + 16) || *(*(v0 + v2[11]) + 16) || *(*(v0 + v2[12]) + 16) || *(*(v0 + v2[13]) + 16))
  {
    return 0;
  }

  else
  {
    return IndexSet.isEmpty.getter() & 1;
  }
}

uint64_t specialized ListBatchUpdates.formUpdates<A>(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v7 + 16));
  }

  else
  {
    updated = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10ListUpdateOyAF13CountingIndexVySiGAKG_Tt1g5(0, *(v7 + 24) >> 1);

    *v3 = updated;
  }

  if (*(v3[3] + 16))
  {
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = v3[3];
    type metadata accessor for _NativeDictionary<Int, (Int, CountingIndex<Int>)>();
    _NativeDictionary.removeAll(isUnique:)(v9);
    v3[3] = v13[0];
  }

  if (*(v3[4] + 16))
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = v3[4];
    type metadata accessor for _NativeDictionary<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>();
    _NativeDictionary.removeAll(isUnique:)(v10);
    v3[4] = v13[0];
  }

  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, v13, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  outlined init with copy of TableDataSourceAdaptor(a2, v12);
  specialized ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(v13, v12);
  specialized ListBatchUpdates.computeMoves<A>(from:to:)(v13, v12);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v12, &lazy cache variable for type metadata for CountingIndexListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for CountingIndexListDataSource);
  return outlined destroy of BridgedListState(v13, type metadata accessor for CountingIndexListDataSource<ShadowListDataSource<TableDataSourceAdaptor>>);
}

uint64_t specialized ListCoreBatchUpdates.formResult<A>(_:)(uint64_t *a1)
{
  v2 = v1;
  type metadata accessor for (source: IndexPath, destination: IndexPath)();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v61 = v59 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v67 = v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v66 = v59 - v15;
  specialized ListCoreBatchUpdates.resetAll()();
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[3];
  v59[3] = a1[2];
  v59[4] = v17;
  v59[2] = v18;
  v59[1] = a1[4];
  v19 = *(v16 + 16);
  v59[5] = v16;
  if (!v19)
  {
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, v70, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
LABEL_58:
  }

  v69 = v7;
  v20 = v16 + 32;
  result = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, v70, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
  v22 = 0;
  v68 = (v8 + 32);
  v23 = v8;
  v65 = v20;
  v60 = v8;
  while (v22 < v19)
  {
    v24 = v20 + 96 * v22;
    v25 = *(v24 + 8);
    result = *(v24 + 32);
    v26 = *(v24 + 89);
    if (v26 > 2)
    {
      if (*(v24 + 89) <= 4u)
      {
        if (v26 == 3)
        {
          if (*(v24 + 16))
          {
            goto LABEL_79;
          }

          if (*(v24 + 40))
          {
            goto LABEL_78;
          }

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            goto LABEL_64;
          }

          MEMORY[0x18D000680](result, *(v24 + 8));
          _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
          v29 = *(v28 + 44);
          v30 = *(v2 + v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
          }

          v32 = v30[2];
          v31 = v30[3];
          if (v32 >= v31 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v31 > 1, v32 + 1, 1, v30);
          }

          v30[2] = v32 + 1;
          result = (*(v23 + 32))(v30 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v32, v66, v69);
        }

        else
        {
          if (*(v24 + 16))
          {
            goto LABEL_76;
          }

          if (*(v24 + 40))
          {
            goto LABEL_75;
          }

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            goto LABEL_65;
          }

          MEMORY[0x18D000680](result, *(v24 + 8));
          _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
          v29 = *(v56 + 48);
          v30 = *(v2 + v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
          }

          v58 = v30[2];
          v57 = v30[3];
          if (v58 >= v57 >> 1)
          {
            v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57 > 1, v58 + 1, 1, v30);
          }

          v30[2] = v58 + 1;
          result = (*(v23 + 32))(v30 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v58, v67, v69);
        }

        goto LABEL_52;
      }

      if (v26 == 5)
      {
        if (*(v24 + 16))
        {
          goto LABEL_74;
        }

        if (*(v24 + 40))
        {
          goto LABEL_72;
        }

        if (*(v24 + 64))
        {
          goto LABEL_71;
        }

        if (*(v24 + 88))
        {
          goto LABEL_70;
        }

        v27 = __OFADD__(v22++, 1);
        if (v27)
        {
          goto LABEL_66;
        }

        v33 = *(v24 + 56);
        v34 = *(v24 + 80);
        v35 = v6;
        v36 = v61;
        MEMORY[0x18D000680](result, *(v24 + 8));
        v37 = v62;
        MEMORY[0x18D000680](v34, v33);
        v38 = *(v64 + 48);
        v39 = *v68;
        v40 = v35;
        v41 = v36;
        v6 = v35;
        v42 = v69;
        (*v68)(v40, v41, v69);
        v39(&v6[v38], v37, v42);
        _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
        v29 = *(v43 + 52);
        v30 = *(v2 + v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30[2] + 1, 1, v30);
        }

        v20 = v65;
        v45 = v30[2];
        v44 = v30[3];
        if (v45 >= v44 >> 1)
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v30);
        }

        v30[2] = v45 + 1;
        result = _s7SwiftUI16TableCellFormulaVWObTm_0(v6, v30 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v45, type metadata accessor for (source: IndexPath, destination: IndexPath));
LABEL_52:
        *(v2 + v29) = v30;
        goto LABEL_4;
      }

      if (*(v24 + 16))
      {
        goto LABEL_73;
      }

      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        goto LABEL_60;
      }

LABEL_55:
      _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
      v46 = v25;
LABEL_3:
      result = *&IndexSet.insert(_:)(v46);
      goto LABEL_4;
    }

    if (!*(v24 + 89))
    {
      if (*(v24 + 16))
      {
        goto LABEL_77;
      }

      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        goto LABEL_62;
      }

      v46 = *(v24 + 8);
      goto LABEL_3;
    }

    if (v26 == 1)
    {
      if (*(v24 + 16))
      {
        goto LABEL_69;
      }

      v27 = __OFADD__(v22++, 1);
      if (v27)
      {
        goto LABEL_61;
      }

      goto LABEL_55;
    }

    if (*(v24 + 16))
    {
      goto LABEL_68;
    }

    if (*(v24 + 40))
    {
      goto LABEL_67;
    }

    v27 = __OFADD__(v22++, 1);
    if (v27)
    {
      goto LABEL_63;
    }

    v47 = v6;
    v48 = *(v24 + 32);
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    v50 = *(v49 + 40);
    v51 = *(v2 + v50);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
      v51 = result;
    }

    v53 = *(v51 + 16);
    v52 = *(v51 + 24);
    if (v53 >= v52 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v51);
      v51 = result;
    }

    v54 = v48;
    v6 = v47;
    *(v51 + 16) = v53 + 1;
    v55 = v51 + 16 * v53;
    *(v55 + 32) = v25;
    *(v55 + 40) = v54;
    *(v2 + v50) = v51;
    v23 = v60;
    v20 = v65;
LABEL_4:
    if (v22 == v19)
    {
      goto LABEL_58;
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
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
  return result;
}

void specialized ListCoreBatchUpdates.resetAll()()
{
  v1 = v0;
  IndexSet.removeAll()();
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v3 = v2;
  IndexSet.removeAll()();
  v4 = v3[10];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v0 + v4);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
  }

  else
  {
    v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Sit_Tt1g5(0, *(v6 + 24) >> 1);

    *(v1 + v4) = v7;
  }

  v8 = v3[11];
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if (v9)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v10 + 16));
  }

  else
  {
    v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v10 + 24) >> 1);

    *(v1 + v8) = v11;
  }

  v12 = v3[12];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(v1 + v12);
  if (v13)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
  }

  else
  {
    v15 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV_Tt1g5(0, *(v14 + 24) >> 1);

    *(v1 + v12) = v15;
  }

  v16 = v3[13];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v1 + v16);
  if (v17)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v18 + 16));
  }

  else
  {
    v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation9IndexPathV6source_AH11destinationt_Tt1g5(0, *(v18 + 24) >> 1);

    *(v1 + v16) = v19;
  }

  IndexSet.removeAll()();
}

uint64_t specialized ListBatchUpdates.computeRemovesAndInserts<A>(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v132, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v132, v154);
  v79 = a2;
  *&v132 = *(a2 + 40);
  v5 = v132;
  *(&v132 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
  *&v133 = 0;
  type metadata accessor for CollectionChanges<CountingIndex<Int>, CountingIndex<Int>>();
  type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>();
  type metadata accessor for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>();
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>);
  v81 = v5;

  CollectionChanges.formChanges<A, B>(from:to:)();

  outlined destroy of BridgedListState(v154, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);
  v6 = v3[1];
  v7 = *(v6 + 2);
  if (v7)
  {
    v75 = v6 + 32;

    v9 = 0;
    v74 = result;
    while (v9 < v7)
    {
      v10 = &v75[96 * v9];
      v11 = *v10;
      v12 = *(v10 + 1);
      v82 = *(v10 + 3);
      v76 = v9;
      v77 = *(v10 + 4);
      v13 = v10[40];
      v14 = v10[16];
      if (v10[89])
      {
        if (v10[89] == 1)
        {
          v15 = *(v81 + 16);
          LOBYTE(v102[0]) = v15 == 0;
          LOBYTE(v97) = 1;
          LOBYTE(v92[0]) = v14 & 1;
          LOBYTE(v84) = v13 & 1;
          *&v127 = v81;
          *(&v127 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
          *&v129 = 0;
          v128 = 0uLL;
          BYTE8(v129) = v15 == 0;
          v130 = v15;
          LOBYTE(v131) = 1;
          swift_bridgeObjectRetain_n();
          outlined destroy of BridgedListState(&v127, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
          *&v108 = v81;
          *(&v108 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
          *&v109 = 0;
          *(&v109 + 1) = v11;
          *&v110 = v12;
          v16 = v92[0];
          BYTE8(v110) = v92[0];
          *&v111 = v82;
          *(&v111 + 1) = v77;
          v17 = v84;
          LOBYTE(v112) = v84;
          *&v132 = v81;
          *(&v132 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
          *&v133 = 0;
          *(&v133 + 1) = v11;
          *&v134 = v12;
          BYTE8(v134) = v92[0];
          *&v135 = v82;
          *(&v135 + 1) = v77;
          LOBYTE(v136) = v84;
          _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v108, v154, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
          result = outlined destroy of BridgedListState(&v132, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
          while (1)
          {
            if (v82 == v11)
            {
              if (v16)
              {
                if (v17)
                {
                  goto LABEL_3;
                }
              }

              else if ((v17 & 1) == 0 && v12 == v77)
              {
LABEL_3:

                goto LABEL_4;
              }
            }

            v18 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            v19 = *(v81 + 16);
            v20 = v18 == v19;
            if (v18 == v19)
            {
              v21 = 0;
            }

            else
            {
              if (v16)
              {
                goto LABEL_67;
              }

              v21 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                goto LABEL_64;
              }
            }

            v22 = *v3;
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
              v22 = result;
            }

            v24 = *(v22 + 2);
            v23 = *(v22 + 3);
            if (v24 >= v23 >> 1)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v22);
              v22 = result;
            }

            LOBYTE(v92[0]) = v16 & 1;
            *(v22 + 2) = v24 + 1;
            v25 = &v22[96 * v24];
            *(v25 + 4) = v11;
            *(v25 + 5) = v12;
            v25[48] = v92[0];
            *(v25 + 49) = v154[0];
            v26 = v154[1];
            v27 = v154[2];
            v28 = v154[3];
            *(v25 + 113) = v155;
            *(v25 + 97) = v28;
            *(v25 + 81) = v27;
            *(v25 + 65) = v26;
            v25[121] = 1;
            *v3 = v22;
            ++v11;
            v12 = v21;
            v16 = v20;
          }

          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
          break;
        }

        v44 = v10[88];
        v45 = v10[64];
        v73 = *(v10 + 72);
        v46 = *(v10 + 6);
        v47 = *(v10 + 7);
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v127, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v127, &v108);
        v142 = v118;
        v143 = v119;
        v138 = v114;
        v139 = v115;
        v140 = v116;
        v141 = v117;
        v134 = v110;
        v135 = v111;
        v136 = v112;
        v137 = v113;
        v132 = v108;
        v133 = v109;
        v144 = v120;
        v145 = v11;
        v146 = v12;
        v147 = v14 & 1;
        v148 = v82;
        v149 = v77;
        v150 = v13 & 1;
        v48 = *(v81 + 16);
        v107 = v48 == 0;
        v106 = 1;
        LOBYTE(v84) = v45 & 1;
        v91 = v44 & 1;
        v92[0] = v81;
        v92[1] = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
        memset(&v92[2], 0, 24);
        v93 = v48 == 0;
        v94 = v48;
        v95 = 0;
        v96 = 1;
        swift_bridgeObjectRetain_n();
        outlined destroy of BridgedListState(v92, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
        *&v97 = v81;
        *(&v97 + 1) = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
        *&v98 = 0;
        *(&v98 + 1) = v46;
        *&v99 = v47;
        BYTE8(v99) = v84;
        v100 = v73;
        v101 = v91;
        v153[32] = v91;
        v151 = v97;
        v152 = v98;
        *v153 = v99;
        *&v153[16] = v73;
        v102[0] = v81;
        v102[1] = protocol witness for OptionSet.init(rawValue:) in conformance MainMenuItem.Template.Options;
        v102[2] = 0;
        v102[3] = v46;
        v102[4] = v47;
        v103 = v84;
        v104 = v73;
        v105 = v91;
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v97, &v127, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
        outlined destroy of BridgedListState(v102, type metadata accessor for DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>);
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v132, v154, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v49 = v145;
        v50 = v146;
        LOBYTE(v46) = v147;
        outlined destroy of BridgedListState(&v132, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v160 = v49;
        v161 = v50;
        v162 = v46;
        v163 = v151;
        v164 = v152;
        v165 = *v153;
        v166 = v153[8];
        v167 = *&v153[9];
        v168 = *&v153[25];
        v169 = *(&v152 + 1);
        v170 = *v153;
        v171 = v153[8] & 1;
        v172 = 0;
        while (1)
        {
          specialized Zip2Sequence.Iterator.next()(&v84);
          if (v90)
          {
            break;
          }

          v51 = v84;
          v52 = v85;
          v53 = v86;
          v54 = v87;
          updated = _s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E84from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(a1, v84, v85, v86, v79, v87, v88, v89);
          specialized Array.append<A>(contentsOf:)(updated);
          v56 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v51);
          v57 = TableDataSourceAdaptor.hasHeader(forSectionAt:)(v56);
          if ((v57 ^ TableDataSourceAdaptor.hasHeader(forSectionAt:)(v54)))
          {
            v58 = *v3;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v58 + 2) + 1, 1, v58);
            }

            v60 = *(v58 + 2);
            v59 = *(v58 + 3);
            if (v60 >= v59 >> 1)
            {
              v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v58);
            }

            v91 = v53;
            *(v58 + 2) = v60 + 1;
            v61 = &v58[96 * v60];
            *(v61 + 4) = v51;
            *(v61 + 5) = v52;
            v61[48] = v91;
            *(v61 + 49) = v127;
            v62 = v128;
            v63 = v129;
            v64 = v130;
            *(v61 + 113) = v131;
            *(v61 + 97) = v64;
            *(v61 + 81) = v63;
            *(v61 + 65) = v62;
            v61[121] = 6;
            *v3 = v58;
          }

          if (specialized ShadowListUpdateRecorder.hasFooter(forSectionAt:)(v51))
          {
            v65 = *v3;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
            }

            v67 = *(v65 + 2);
            v66 = *(v65 + 3);
            if (v67 >= v66 >> 1)
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1, v65);
            }

            v91 = v53;
            *(v65 + 2) = v67 + 1;
            v68 = &v65[96 * v67];
            *(v68 + 4) = v51;
            *(v68 + 5) = v52;
            v68[48] = v91;
            *(v68 + 49) = v127;
            v69 = v128;
            v70 = v129;
            v71 = v130;
            *(v68 + 113) = v131;
            *(v68 + 97) = v71;
            *(v68 + 81) = v70;
            *(v68 + 65) = v69;
            v68[121] = 6;
            *v3 = v65;
          }
        }

        v72 = type metadata accessor for Zip2Sequence<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>, DefaultIndices<CountingIndexCollection<LazyMapSequence<[TableSections.Item], Int>>>>.Iterator;
      }

      else
      {
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v108, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v108, &v132);
        v118 = v142;
        v119 = v143;
        v114 = v138;
        v115 = v139;
        v116 = v140;
        v117 = v141;
        v110 = v134;
        v111 = v135;
        v112 = v136;
        v113 = v137;
        v108 = v132;
        v109 = v133;
        v120 = v144;
        v121 = v11;
        v122 = v12;
        v123 = v14 & 1;
        v124 = v82;
        v125 = v77;
        v126 = v13 & 1;
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v108, v154, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v29 = v121;
        v30 = v122;
        v31 = v123;
        result = outlined destroy of BridgedListState(&v108, type metadata accessor for DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>);
        v160 = v29;
        v161 = v30;
        v162 = v31;
        v32 = v157;
        v78 = v158;
        v83 = v159;
        if (v157 != v29)
        {
          goto LABEL_32;
        }

LABEL_26:
        if (v31)
        {
          if (!v83)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v33 = v83;
          if (v30 != v78)
          {
            v33 = 1;
          }

          if (v33)
          {
LABEL_32:
            while (1)
            {
              v34 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                goto LABEL_63;
              }

              v35 = v34 == v156;
              if (v34 == v156)
              {
                v36 = 0;
              }

              else
              {
                if (v31)
                {
                  goto LABEL_68;
                }

                v36 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  goto LABEL_65;
                }
              }

              v160 = v29 + 1;
              v161 = v36;
              v162 = v34 == v156;
              v37 = *v3;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1, v37);
                v37 = result;
              }

              v39 = *(v37 + 16);
              v38 = *(v37 + 24);
              if (v39 >= v38 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
                v37 = result;
              }

              LOBYTE(v108) = v31;
              *(v37 + 16) = v39 + 1;
              v40 = v37 + 96 * v39;
              *(v40 + 32) = v29;
              *(v40 + 40) = v30;
              *(v40 + 48) = v108;
              *(v40 + 49) = v132;
              v41 = v133;
              v42 = v134;
              v43 = v135;
              *(v40 + 113) = v136;
              *(v40 + 97) = v43;
              *(v40 + 81) = v42;
              *(v40 + 65) = v41;
              *(v40 + 121) = 0;
              *v3 = v37;
              ++v29;
              v30 = v36;
              v31 = v35;
              if (v32 == v29)
              {
                goto LABEL_26;
              }
            }
          }
        }

        v72 = type metadata accessor for IndexingIterator<DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>>>;
      }

      outlined destroy of BridgedListState(v154, v72);
LABEL_4:
      result = v74;
      v9 = v76 + 1;
      v7 = *(v74 + 16);
      if (v76 + 1 == v7)
      {
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
  }

  return result;
}

uint64_t specialized ListBatchUpdates.computeMoves<A>(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC0];
  v167 = MEMORY[0x1E69E7CC0];
  v5 = *v2;
  v6 = *(*v2 + 2);
  if (!v6)
  {
    v124 = 0;
    v7 = 0;
LABEL_119:
    specialized Array.replaceSubrange<A>(_:with:)(v7, v124);
    return specialized Array.append<A>(contentsOf:)(v4);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_144:
    v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
  }

  v7 = 0;
  v8 = 0;
  v9 = v5 + 32;
  v10 = 32;
  v148 = v5;
  v149 = v6;
  v152 = v5 + 32;
  while (1)
  {
    if (v6 == v8)
    {
      goto LABEL_121;
    }

    v12 = *(v5 + 2);
    if (v8 != v7)
    {
      if (v8 >= v12)
      {
        goto LABEL_123;
      }

      if (v7 >= v12)
      {
        goto LABEL_124;
      }

      memmove(&v9[96 * v7], &v5[v10], 0x5AuLL);
      v12 = *(v5 + 2);
    }

    if (v7 >= v12)
    {
      goto LABEL_122;
    }

    v13 = &v9[96 * v7];
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = v13[16];
    v17 = v13[89];
    if (v17 <= 2)
    {
      v153 = v10;
      if (!v13[89])
      {
        v18 = v6;
        v143 = v13[16];
        v19 = v3;
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v162, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v162, &v159);
        v3 = v14;
        v20 = *&v160[24];

        v6 = &v159;
        v21 = v3;
        v22 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v3);
        if ((v22 & 0x8000000000000000) != 0)
        {
          goto LABEL_126;
        }

        if (v22 >= *(v20 + 16))
        {
          goto LABEL_128;
        }

        outlined init with copy of TableSections.Item(v20 + 96 * v22 + 32, &v162);
        v3 = v162;
        outlined destroy of TableSections.Item(&v162);
        outlined destroy of BridgedListState(&v159, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);

        v6 = v19[3];
        if (!*(v6 + 2))
        {
          v62 = v21;
          v63 = v19;
LABEL_66:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v159 = v63[3];
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, v62, v15, v143 & 1, v3, isUniquelyReferenced_nonNull_native);
          v63[3] = v159;
          v10 = v153;
          v6 = v18;
          v9 = v152;
          v3 = v63;
          goto LABEL_7;
        }

        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
        if ((v24 & 1) == 0)
        {
          v62 = v21;
          v63 = v19;
          goto LABEL_66;
        }

        v25 = *(v6 + 7) + 32 * v23;
        v26 = *v25;
        if ((*v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_137;
        }

        if (v26 >= *(v148 + 2))
        {
          goto LABEL_139;
        }

        if (v152[96 * v26 + 89] != 1)
        {
          v5 = v148;
          v3 = v19;
          v10 = v153;
          v6 = v18;
          v9 = v152;
          goto LABEL_7;
        }

        v135 = &v152[96 * v26];
        v27 = *(v25 + 8);
        v28 = *(v25 + 16);
        v140 = *(v25 + 24);
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
        if (v30)
        {
          v132 = v29;
          v31 = swift_isUniquelyReferenced_nonNull_native();
          v32 = v19[3];
          *&v159 = v32;
          if (!v31)
          {
            specialized _NativeDictionary.copy()();
            v32 = v159;
          }

          specialized _NativeDictionary._delete(at:)(v132, v32);
          v19[3] = v32;
        }

        LOBYTE(v159) = v143 & 1;
        LOBYTE(v162) = v140;
        if (v26 >= *(v148 + 2))
        {
          goto LABEL_147;
        }

        *v135 = v21;
        *(v135 + 1) = v15;
        v135[16] = v159;
        *(v135 + 3) = v27;
        *(v135 + 4) = v28;
        v135[40] = v162;
        v135[89] = 2;
        updated = _s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E84from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(a1, v21, v15, v143 & 1, a2, v27, v28, v140);
        specialized Array.append<A>(contentsOf:)(updated);
        --v7;
        v5 = v148;
        v6 = v149;
        v9 = v152;
        v3 = v19;
        goto LABEL_6;
      }

      if (v17 != 1)
      {
        goto LABEL_153;
      }

      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_125;
      }

      v40 = *(a2 + 40);
      if (v14 >= *(v40 + 16))
      {
        goto LABEL_127;
      }

      v151 = *(v13 + 1);
      outlined init with copy of TableSections.Item(v40 + 96 * v14 + 32, &v159);
      v41 = v159;
      outlined destroy of TableSections.Item(&v159);
      v6 = v3[3];
      v42 = v3;
      if (*(v6 + 2))
      {
        v3 = v41;
        v43 = specialized __RawDictionaryStorage.find<A>(_:)(v41);
        if (v44)
        {
          v45 = *(v6 + 7) + 32 * v43;
          v46 = *v45;
          if ((*v45 & 0x8000000000000000) != 0)
          {
            goto LABEL_138;
          }

          if (v46 >= *(v5 + 2))
          {
            goto LABEL_140;
          }

          v47 = v16;
          v48 = v14;
          v49 = &v152[96 * v46];
          if (!v49[89])
          {
            v142 = *(v45 + 16);
            v144 = *(v45 + 8);
            v50 = *(v45 + 24);
            v51 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
            if (v52)
            {
              v136 = v51;
              v53 = swift_isUniquelyReferenced_nonNull_native();
              v54 = v42[3];
              *&v159 = v54;
              if (!v53)
              {
                specialized _NativeDictionary.copy()();
                v54 = v159;
              }

              specialized _NativeDictionary._delete(at:)(v136, v54);
              v42[3] = v54;
            }

            LOBYTE(v159) = v50;
            LOBYTE(v162) = v47 & 1;
            if (v46 >= *(v148 + 2))
            {
              goto LABEL_149;
            }

            *v49 = v144;
            *(v49 + 1) = v142;
            v49[16] = v159;
            *(v49 + 3) = v48;
            *(v49 + 4) = v151;
            v49[40] = v162;
            v49[89] = 2;
            v55 = _s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E84from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(a1, v144, v142, v50, a2, v48, v151, v47 & 1);
            specialized Array.append<A>(contentsOf:)(v55);
            --v7;
            v5 = v148;
          }

          v6 = v149;
          v9 = v152;
          v3 = v42;
          goto LABEL_6;
        }

        v64 = v16;
        v65 = v42;
        v138 = v14;
      }

      else
      {
        v3 = v41;
        v64 = v16;
        v65 = v42;
        v138 = v14;
      }

      v75 = swift_isUniquelyReferenced_nonNull_native();
      *&v159 = v65[3];
      v6 = v159;
      v76 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
      v78 = *(v6 + 2);
      v79 = (v77 & 1) == 0;
      v80 = __OFADD__(v78, v79);
      v81 = v78 + v79;
      if (v80)
      {
        goto LABEL_129;
      }

      v82 = v77;
      if (*(v6 + 3) >= v81)
      {
        if ((v75 & 1) == 0)
        {
          v122 = v76;
          specialized _NativeDictionary.copy()();
          v76 = v122;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v81, v75);
        v76 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
        if ((v82 & 1) != (v83 & 1))
        {
          goto LABEL_155;
        }
      }

      v6 = v149;
      v84 = v159;
      if (v82)
      {
        v11 = *(v159 + 56) + 32 * v76;
        *v11 = v7;
        *(v11 + 8) = v138;
        *(v11 + 16) = v151;
        *(v11 + 24) = v64 & 1;
      }

      else
      {
        *(v159 + 8 * (v76 >> 6) + 64) |= 1 << v76;
        *(*(v84 + 6) + 8 * v76) = v3;
        v85 = *(v84 + 7) + 32 * v76;
        *v85 = v7;
        *(v85 + 8) = v138;
        *(v85 + 16) = v151;
        *(v85 + 24) = v64 & 1;
        v86 = *(v84 + 2);
        v80 = __OFADD__(v86, 1);
        v87 = v86 + 1;
        if (v80)
        {
          goto LABEL_136;
        }

        *(v84 + 2) = v87;
      }

      v3 = v65;
      v65[3] = v84;
      v9 = v152;
LABEL_6:
      v10 = v153;
      goto LABEL_7;
    }

    if (v17 - 5 < 2)
    {
      goto LABEL_7;
    }

    v141 = *(v13 + 3);
    v150 = *(v13 + 1);
    v131 = *(v13 + 4);
    v133 = v13[40];
    if (v17 == 3)
    {
      break;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_130;
    }

    v6 = *(a2 + 40);
    if (v14 >= *(v6 + 2))
    {
      goto LABEL_133;
    }

    v145 = v13[16];
    v56 = *v13;
    v57 = &v6[96 * v14];
    outlined init with copy of TableSections.Item((v57 + 32), &v159);
    v5 = v159;
    outlined destroy of TableSections.Item(&v159);
    v137 = v56;
    if (v56 >= *(v6 + 2))
    {
      goto LABEL_134;
    }

    v58 = *(v57 + 14);
    v59 = v141 - v58;
    if (__OFSUB__(v141, v58))
    {
      goto LABEL_135;
    }

    v60 = v3;
    v6 = *(v57 + 12);
    v61 = v57[104];
    if (v61)
    {
      if ((v59 & 0x8000000000000000) != 0)
      {
        goto LABEL_141;
      }

      if (v59 >= *(v6 + 2))
      {
        goto LABEL_142;
      }

      outlined init with copy of TableRowID(&v6[48 * v59 + 32], &v162);
    }

    else
    {
      v88 = *(*v6 + 104);

      v88(&v162, v59);
    }

    v159 = v162;
    *v160 = v163[0];
    *&v160[9] = *(v163 + 9);
    outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v6, v61);
    v3 = v60;
    v9 = v152;
    if (*(v60[3] + 2) && (specialized __RawDictionaryStorage.find<A>(_:)(v5), (v89 & 1) != 0))
    {
      outlined destroy of TableRowID(&v159);
      v5 = v148;
      v6 = v149;
    }

    else
    {
      v6 = v60[4];
      if (!*(v6 + 2))
      {
        v5 = v148;
LABEL_89:
        outlined init with copy of TableRowID(&v159, &v162);
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v161[0] = v60[4];
        v100 = v161[0];
        v101 = specialized __RawDictionaryStorage.find<A>(_:)(&v162);
        v103 = *(v100 + 16);
        v104 = (v102 & 1) == 0;
        v80 = __OFADD__(v103, v104);
        v105 = v103 + v104;
        if (v80)
        {
          goto LABEL_146;
        }

        v106 = v102;
        if (*(v100 + 24) >= v105)
        {
          if ((v99 & 1) == 0)
          {
            v123 = v101;
            specialized _NativeDictionary.copy()();
            v101 = v123;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v105, v99);
          v101 = specialized __RawDictionaryStorage.find<A>(_:)(&v162);
          if ((v106 & 1) != (v107 & 1))
          {
            goto LABEL_154;
          }
        }

        v116 = v161[0];
        if (v106)
        {
          v117 = *(v161[0] + 56) + 56 * v101;
          *v117 = v7;
          *(v117 + 8) = v137;
          *(v117 + 16) = v150;
          *(v117 + 24) = v145 & 1;
          *(v117 + 32) = v141;
          *(v117 + 40) = v131;
          *(v117 + 48) = v133 & 1;
          outlined destroy of TableRowID(&v162);
          outlined destroy of TableRowID(&v159);
        }

        else
        {
          *(v161[0] + 8 * (v101 >> 6) + 64) |= 1 << v101;
          v118 = v101;
          outlined init with copy of TableRowID(&v162, *(v116 + 6) + 48 * v101);
          v119 = *(v116 + 7) + 56 * v118;
          *v119 = v7;
          *(v119 + 8) = v137;
          *(v119 + 16) = v150;
          *(v119 + 24) = v145 & 1;
          *(v119 + 32) = v141;
          *(v119 + 40) = v131;
          *(v119 + 48) = v133 & 1;
          outlined destroy of TableRowID(&v162);
          outlined destroy of TableRowID(&v159);
          v120 = *(v116 + 2);
          v80 = __OFADD__(v120, 1);
          v121 = v120 + 1;
          if (v80)
          {
            goto LABEL_151;
          }

          *(v116 + 2) = v121;
        }

        v60[4] = v116;
        v6 = v149;
        v9 = v152;
        v3 = v60;
        goto LABEL_7;
      }

      v90 = specialized __RawDictionaryStorage.find<A>(_:)(&v159);
      v5 = v148;
      if ((v91 & 1) == 0)
      {
        LOBYTE(v162) = 1;
        v166 = 1;
        goto LABEL_89;
      }

      v92 = *(v6 + 7) + 56 * v90;
      v93 = *v92;
      v94 = *(v92 + 8);
      v95 = *(v92 + 24);
      v96 = *(v92 + 32);
      v97 = *(v92 + 48);
      v166 = 0;
      if ((v93 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
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
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }

      if (v93 >= *(v148 + 2))
      {
        goto LABEL_148;
      }

      v109 = v3;
      v110 = &v152[96 * v93];
      if (v110[89] == 3)
      {
        v126 = v96;
        v128 = v94;
        v130 = v95;
        v111 = specialized __RawDictionaryStorage.find<A>(_:)(&v159);
        if (v112)
        {
          v113 = v111;
          v114 = swift_isUniquelyReferenced_nonNull_native();
          v115 = v109[4];
          *&v162 = v115;
          if (!v114)
          {
            specialized _NativeDictionary.copy()();
            v115 = v162;
          }

          outlined destroy of TableRowID(*(v115 + 48) + 48 * v113);
          specialized _NativeDictionary._delete(at:)(v113, v115);
          v109[4] = v115;
        }

        LOBYTE(v162) = v130;
        LOBYTE(v161[0]) = v97;
        v165 = v145 & 1;
        v164 = v133 & 1;
        outlined destroy of TableRowID(&v159);
        if (v93 >= *(v148 + 2))
        {
          goto LABEL_152;
        }

        *v110 = v128;
        v110[16] = v130;
        *(v110 + 24) = v126;
        v110[40] = v97;
        *(v110 + 6) = v137;
        *(v110 + 7) = v150;
        v110[64] = v145 & 1;
        *(v110 + 9) = v141;
        *(v110 + 10) = v131;
        v110[88] = v133 & 1;
        --v7;
        v110[89] = 5;
        v5 = v148;
      }

      else
      {
        outlined destroy of TableRowID(&v159);
      }

      v6 = v149;
      v9 = v152;
      v3 = v109;
    }

LABEL_7:
    ++v8;
    ++v7;
    v10 += 96;
    if (v6 == v8)
    {
      *v3 = v5;
      v124 = *(v5 + 2);
      if (v124 >= v7)
      {
        v4 = v167;
        goto LABEL_119;
      }

      goto LABEL_143;
    }
  }

  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v162, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v162, &v159);
  v5 = v14;
  v34 = *&v160[24];

  v6 = &v159;
  v35 = v5;
  v36 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v5);
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_131;
  }

  if (v36 >= *(v34 + 16))
  {
    goto LABEL_132;
  }

  outlined init with copy of TableSections.Item(v34 + 96 * v36 + 32, &v162);
  v37 = v162;
  outlined destroy of TableSections.Item(&v162);
  outlined destroy of BridgedListState(&v159, type metadata accessor for CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>);

  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v162, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v38 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v35);
  _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(&v162, v38, &v159);
  specialized ShadowRowCollection.subscript.getter(v141, v161);
  outlined destroy of BridgedListState(&v159, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);
  if (*(v3[3] + 2))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v37);
    if (v39)
    {
      outlined destroy of TableRowID(v161);
LABEL_86:
      v5 = v148;
      v6 = v149;
      goto LABEL_7;
    }
  }

  v66 = v3[4];
  if (!*(v66 + 2) || (v67 = specialized __RawDictionaryStorage.find<A>(_:)(v161), (v68 & 1) == 0))
  {
    v98 = swift_isUniquelyReferenced_nonNull_native();
    *&v159 = v3[4];
    v154[0] = v7;
    v154[1] = v35;
    v154[2] = v150;
    v155 = v16 & 1;
    v156 = v141;
    v157 = v131;
    v158 = v133 & 1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v154, v161, v98);
    outlined destroy of TableRowID(v161);
    v3[4] = v159;
    goto LABEL_86;
  }

  v69 = *(v66 + 7) + 56 * v67;
  v70 = *v69;
  v71 = *(v69 + 8);
  v72 = *(v69 + 24);
  v73 = *(v69 + 32);
  v146 = *(v69 + 48);
  LOBYTE(v162) = 0;
  if ((v70 & 0x8000000000000000) == 0)
  {
    v6 = v149;
    if (v70 >= *(v148 + 2))
    {
      goto LABEL_145;
    }

    v108 = &v9[96 * v70];
    if (v108[89] == 4)
    {
      v127 = v73;
      v129 = v71;
      v139 = v70;
      specialized Dictionary._Variant.removeValue(forKey:)(v161, &v159);
      LOBYTE(v159) = v16 & 1;
      v166 = v133 & 1;
      v165 = v72;
      v164 = v146;
      outlined destroy of TableRowID(v161);
      if (v139 >= *(v148 + 2))
      {
        goto LABEL_150;
      }

      *v108 = v35;
      *(v108 + 1) = v150;
      v108[16] = v16 & 1;
      *(v108 + 3) = v141;
      *(v108 + 4) = v131;
      v108[40] = v133 & 1;
      *(v108 + 3) = v129;
      v108[64] = v72;
      *(v108 + 72) = v127;
      v108[88] = v146;
      --v7;
      v108[89] = 5;
      v5 = v148;
      v6 = v149;
      v9 = v152;
    }

    else
    {
      outlined destroy of TableRowID(v161);
      v5 = v148;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_154:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_155:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI16ListBatchUpdatesV27computeRowRemovesAndInserts33_A424F5232720E51D2A2BD1A8E90C36E8LL4from13sourceSection2to06targetW0SayAA0C6UpdateOyAA13CountingIndexVy0W3IDs_5IndexQZGAMySiGGGAA013CountingIndexC10DataSourceAELLVyqd__G_AqVyxGAQtAA0C8DiffableRd__0G3IDs_7ElementQYd__AZ_A_RTzAN_A_QYd__AN_A_RTzAN_AOQYd__APRSlFAA22TableDataSourceAdaptorV_AA06ShadowC10DataSourceVyA6_GTt3B5(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, char a8)
{
  v13 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, &v68, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v43 = a2;
  v14 = specialized ShadowListUpdateRecorder.initialIndex(_:)(a2);
  result = _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(&v68, v14, v108);
  if ((a6 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = *(a5 + 40);
  if (*(v16 + 16) > a6)
  {
    v42 = a6;
    v17 = v16 + 96 * a6;
    v18 = *(v17 + 96);
    v19 = *(v17 + 104);
    v21 = *(v17 + 112);
    v20 = *(v17 + 120);
    *&v68 = v18;
    BYTE8(v68) = v19;
    v46 = v20;
    v47 = v21;
    *&v69 = v21;
    *(&v69 + 1) = v20;
    *&v54 = v13;
    outlined copy of ResolvedTableRowIDs.Storage(v18, v19);
    v48 = v18;
    v49 = v19;
    outlined copy of ResolvedTableRowIDs.Storage(v18, v19);
    type metadata accessor for CollectionChanges<CountingIndex<Int>, CountingIndex<Int>>();
    type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>();
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for CountingIndexCollection<ResolvedTableRowIDs>, lazy protocol witness table accessor for type ResolvedTableRowIDs and conformance ResolvedTableRowIDs, &type metadata for ResolvedTableRowIDs, MEMORY[0x1E6980198]);
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>> and conformance CountingIndexCollection<A>, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);
    lazy protocol witness table accessor for type CountingIndexCollection<ResolvedTableRowIDs> and conformance CountingIndexCollection<A>();
    lazy protocol witness table accessor for type TableRowID and conformance TableRowID();
    CollectionChanges.formChanges<A, B>(from:to:)();
    result = outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v68, SBYTE8(v68));
    v22 = v13;
    v53 = *(v13 + 16);
    if (!v53)
    {
LABEL_20:
      outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v48, v49);
      outlined destroy of BridgedListState(v108, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);

      return v114;
    }

    v23 = 0;
    v40 = v47 + v46;
    v24 = __OFADD__(v47, v46);
    v41 = v24;
    v25 = (v54 + 64);
    v38 = a8 & 1;
    v39 = a4 & 1;
    v52 = v54;
    while (v23 < *(v22 + 16))
    {
      v27 = *(v25 - 4);
      v28 = *(v25 - 3);
      v30 = *(v25 - 1);
      v29 = *v25;
      v31 = *(v25 + 8);
      v32 = *(v25 - 16);
      if (*(v25 + 57))
      {
        if (*(v25 + 57) == 1)
        {
          v107 = v49;
          if (v41)
          {
            goto LABEL_22;
          }

          v106 = v47 == v40;
          v105 = 1;
          v94 = v49;
          v93 = v32 & 1;
          v92 = v31 & 1;
          v95 = v48;
          v96 = v107;
          v97 = v47;
          v98 = v46;
          v99 = v47;
          v100 = 0;
          v101 = v47 == v40;
          v102 = v47 + v46;
          v103 = 0;
          v104 = 1;
          outlined copy of ResolvedTableRowIDs.Storage(v48, v49);
          outlined copy of ResolvedTableRowIDs.Storage(v48, v49);
          outlined destroy of BridgedListState(&v95, type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
          *&v54 = v48;
          BYTE8(v54) = v94;
          *&v55 = v47;
          *(&v55 + 1) = v46;
          *&v56 = v27;
          *(&v56 + 1) = v28;
          v57[0] = v93;
          *&v57[8] = v30;
          *&v57[16] = v29;
          v57[24] = v92;
          *&v68 = v48;
          BYTE8(v68) = v94;
          *&v69 = v47;
          *(&v69 + 1) = v46;
          *&v70 = v27;
          *(&v70 + 1) = v28;
          v22 = v52;
          LOBYTE(v71) = v93;
          *(&v71 + 1) = v30;
          *&v72 = v29;
          BYTE8(v72) = v92;
          _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(&v54, v91, type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
          outlined destroy of BridgedListState(&v68, type metadata accessor for DefaultIndices<CountingIndexCollection<ResolvedTableRowIDs>>);
          v91[0] = v38;
          v33 = swift_allocObject();
          *(v33 + 16) = v42;
          *(v33 + 24) = a7;
          *(v33 + 32) = v91[0];
          v115[2] = v56;
          v116[0] = *v57;
          *(v116 + 9) = *&v57[9];
          v115[0] = v54;
          v115[1] = v55;
          v117 = partial apply for specialized closure #2 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:);
          v118 = v33;
          result = specialized Array.append<A>(contentsOf:)(v115);
        }
      }

      else
      {
        result = _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v108, &v54, type metadata accessor for CountingIndexCollection<ShadowRowCollection<TableDataSourceAdaptor>>);
        v34 = v111 + v112;
        if (__OFADD__(v111, v112))
        {
          goto LABEL_23;
        }

        v50 = v28;
        v51 = v30;
        v35 = v113;
        v36 = v110;
        v37 = v109;
        if (*(v110 + 16) | *(v109 + 16))
        {

          specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v68, v36, v37, v35, v34);
        }

        if (*(v36 + 16) | *(v37 + 16))
        {

          specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v68, v36, v37, v35, v34);
        }

        v80 = v65;
        v81 = v66;
        v82 = v67;
        v76 = v61;
        v77 = v62;
        v78 = v63;
        v79 = v64;
        v72 = *&v57[16];
        v73 = v58;
        v74 = v59;
        v75 = v60;
        v68 = v54;
        v69 = v55;
        v70 = v56;
        v71 = *v57;
        LOBYTE(v95) = v32 & 1;
        v91[0] = v31 & 1;
        v107 = v39;
        v26 = swift_allocObject();
        *(v26 + 16) = v43;
        *(v26 + 24) = a3;
        *(v26 + 32) = v107;
        v83 = v27;
        v84 = v50;
        v85 = v32 & 1;
        v86 = v51;
        v87 = v29;
        v88 = v31 & 1;
        v89 = partial apply for specialized closure #1 in ListBatchUpdates.computeRowRemovesAndInserts<A>(from:sourceSection:to:targetSection:);
        v90 = v26;
        result = specialized Array.append<A>(contentsOf:)(&v68);
        v22 = v52;
      }

      ++v23;
      v25 += 12;
      if (v53 == v23)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t)@<X2>, char a4@<W4>, uint64_t a5@<X5>, uint64_t (*a6)(uint64_t)@<X7>, void *a7@<X8>)
{
  a3(v25, a2);
  if ((a4 & 1) == 0)
  {
    if (*(a5 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v14 & 1) != 0))
    {
      v15 = *(*(a5 + 56) + 16 * v13 + 9);
      v16 = a6(a2);
      if (v15)
      {
        if (v15 == 1)
        {
          goto LABEL_6;
        }

LABEL_11:
        outlined destroy of TableColumnCustomizationID(v25);
        type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
        return (*(*(v24 - 8) + 56))(a7, 1, 1, v24);
      }
    }

    else
    {
      v16 = a6(a2);
    }

    if (v16 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_6:
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v18 = v17;
  v19 = *(v17 + 48);
  v20 = a7 + *(v17 + 64);
  *a7 = a1;
  _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(a2, a7 + v19, type metadata accessor for TableColumnCollection.Entry);
  v21 = v25[1];
  *v20 = v25[0];
  *(v20 + 1) = v21;
  v20[32] = v26;
  v22 = *(*(v18 - 8) + 56);

  return v22(a7, 0, 1, v18);
}

unint64_t specialized closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(void *a1, void *a2, uint64_t a3)
{
  v23[3] = a2;
  v23[2] = a1;
  result = specialized Collection.firstIndex(where:)(closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, v23, a3);
  if (v7)
  {
    return *a1 < *a2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *(a3 + 16))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v8 = a3 + 40 * result;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  v13 = *(v8 + 64);
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v15 = a1 + *(v14 + 64);
  v16 = *v15;
  v17 = *(v15 + 1);
  if (v13)
  {
    if (v15[32])
    {
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      v20 = v9 == v16 && v10 == v17;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v11 == v18 && v12 == v19)
        {
          return 1;
        }

LABEL_22:
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }
  }

  else if ((v15[32] & 1) == 0)
  {
    if (v9 == v16 && v10 == v17)
    {
      return 1;
    }

    goto LABEL_22;
  }

  return 0;
}

{
  v23[3] = a2;
  v23[2] = a1;
  result = specialized Collection.firstIndex(where:)(closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)specialized partial apply, v23, a3);
  if (v7)
  {
    return *a1 < *a2;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (result >= *(a3 + 16))
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v8 = a3 + 40 * result;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  v11 = *(v8 + 48);
  v12 = *(v8 + 56);
  v13 = *(v8 + 64);
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
  v15 = a1 + *(v14 + 64);
  v16 = *v15;
  v17 = *(v15 + 1);
  if (v13)
  {
    if (v15[32])
    {
      v18 = *(v15 + 2);
      v19 = *(v15 + 3);
      v20 = v9 == v16 && v10 == v17;
      if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v11 == v18 && v12 == v19)
        {
          return 1;
        }

LABEL_22:
        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }
  }

  else if ((v15[32] & 1) == 0)
  {
    if (v9 == v16 && v10 == v17)
    {
      return 1;
    }

    goto LABEL_22;
  }

  return 0;
}

uint64_t specialized closure #1 in closure #2 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v7 = *(v6 + 64);
  v8 = a2 + v7;
  v9 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  v11 = *(a2 + v7 + 32);
  v12 = *a1;
  v13 = a1[1];
  if (a1[4])
  {
    v14 = a1[2];
    v15 = a1[3];
    if (v11)
    {
      v16 = *(v8 + 16);
      v17 = *(v8 + 24);
      v18 = v12 == v9 && v13 == v10;
      if (v18 || (v19 = v6, v20 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = v19, (v20 & 1) != 0))
      {
        if (v14 == v16 && v15 == v17)
        {
          return 1;
        }

        v22 = v6;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v6 = v22;
        if (v23)
        {
          return 1;
        }
      }

      v7 = *(v6 + 64);
    }

    v24 = a3 + v7;
    if (*(v24 + 32) != 1)
    {
      return 0;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v27 = v12 == *v24 && v13 == *(v24 + 8);
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v14 != v26 || v15 != v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      if (v12 == v9 && v13 == v10)
      {
        return 1;
      }

      v33 = v6;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }

      v7 = *(v33 + 64);
    }

    v29 = a3 + v7;
    if (*(v29 + 32))
    {
      return 0;
    }

    if (v12 != *v29 || v13 != *(v29 + 8))
    {
LABEL_31:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

{
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID), type metadata accessor for TableCellFormula);
  v7 = *(v6 + 64);
  v8 = a2 + v7;
  v9 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  v11 = *(a2 + v7 + 32);
  v12 = *a1;
  v13 = a1[1];
  if (a1[4])
  {
    v14 = a1[2];
    v15 = a1[3];
    if (v11)
    {
      v16 = *(v8 + 16);
      v17 = *(v8 + 24);
      v18 = v12 == v9 && v13 == v10;
      if (v18 || (v19 = v6, v20 = _stringCompareWithSmolCheck(_:_:expecting:)(), v6 = v19, (v20 & 1) != 0))
      {
        if (v14 == v16 && v15 == v17)
        {
          return 1;
        }

        v22 = v6;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v6 = v22;
        if (v23)
        {
          return 1;
        }
      }

      v7 = *(v6 + 64);
    }

    v24 = a3 + v7;
    if (*(v24 + 32) != 1)
    {
      return 0;
    }

    v26 = *(v24 + 16);
    v25 = *(v24 + 24);
    v27 = v12 == *v24 && v13 == *(v24 + 8);
    if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v14 != v26 || v15 != v25)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((v11 & 1) == 0)
    {
      if (v12 == v9 && v13 == v10)
      {
        return 1;
      }

      v33 = v6;
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }

      v7 = *(v33 + 64);
    }

    v29 = a3 + v7;
    if (*(v29 + 32))
    {
      return 0;
    }

    if (v12 != *v29 || v13 != *(v29 + 8))
    {
LABEL_31:
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }
  }

  return 1;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Bool) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_29;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = 0;
    v13 = a7 + 64;
    v14 = a5;
    v28 = a7 + 72;
    v29 = a5;
    while (!__OFADD__(v11++, 1))
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v16 = 1 << *(a7 + 32);
      if (v8 >= v16)
      {
        goto LABEL_25;
      }

      v17 = v8 >> 6;
      v18 = *(v13 + 8 * (v8 >> 6));
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(a7 + 36) != v10)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v10, 0);
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = v7;
        v21 = v13;
        v22 = v9;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v28 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_21;
          }
        }

        result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v10, 0);
        v8 = v16;
LABEL_21:
        v9 = v22;
        v13 = v21;
        v7 = v20;
        v14 = v29;
        if (v10 != v9)
        {
          goto LABEL_28;
        }
      }

      v10 = v14;
      if (v8 == v7)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  outlined consume of Set<UIOpenURLContext>.Index._Variant(a4, a2, 0);
  return 0;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, _BOOL4 a2, uint64_t a3, int a4, uint64_t a5)
{
  if ((a4 & 1) == 0)
  {
    if (a2)
    {
      goto LABEL_26;
    }

    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    if (a3 < result)
    {
      goto LABEL_26;
    }
  }

  if (((a4 ^ a2) & 1) == 0 && result == a3)
  {
    return 0;
  }

  for (i = 0; ; ++i)
  {
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = __OFADD__(result++, 1);
    if (a2)
    {
      if (v8)
      {
        goto LABEL_24;
      }

      a2 = 1;
    }

    else
    {
      if (v8)
      {
        goto LABEL_25;
      }

      v9 = *(a5 + 16);
      a2 = result == v9;
      if (result == v9)
      {
        result = 0;
      }
    }

    if (((a2 ^ a4) & 1) == 0 && result == a3)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(uint64_t a1)
{
  outlined init with copy of TableColumnCollection.Backing(v1, v10);
  if (v11)
  {
    v3 = *(*&v10[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v10, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v3 = (*(v6 + 8))(v5, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  if ((a1 & 0x8000000000000000) == 0 && v3 > a1)
  {
    return a1 + 1;
  }

  __break(1u);
  return result;
}

void specialized UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(void *a1, char a2, uint64_t (*a3)(void, double, double))
{
  v74 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *MEMORY[0x1E69E7D40] & *v3;
  v75 = v3;
  v72 = a3;
  if (a2)
  {
    v71 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *(v9 + 136);
    swift_beginAccess();
    v11 = type metadata accessor for ShadowListDataSource;
    v12 = v10;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v10 + v3, v77, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v77, v80, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v80, v78);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v77, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v13 = v78[24];
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v78, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    if (v13 < 0)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v69 = v7;
    v70 = v6;
    if (v13)
    {
      a3 = v10;
      v73 = v13;
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v10 + v75, v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v14 = type metadata accessor for ShadowListUpdateRecorder;
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v76, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v76, v77);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v77, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v77, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      v15 = specialized ShadowListUpdateRecorder.initialIndex(_:)(0);
      _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v77, v15, v78);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v13 = v79;
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v78, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
      v16 = 0;
      if (v13 > 0)
      {
LABEL_10:
        v19 = v71;
        MEMORY[0x18D000680](0, v16);
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        (*(v69 + 8))(v19, v70);
        v21 = [v74 cellForItemAtIndexPath_];

        if (v21)
        {
          type metadata accessor for AnyListCollectionViewCell();
          v22 = swift_dynamicCastClass();
          if (v22)
          {
            v23 = v22;
            v24 = v21;
            v25 = [v23 contentView];
            [v25 frame];
            v27 = v26;
            v29 = v28;
            v31 = v30;
            v33 = v32;

            v81.origin.x = v27;
            v81.origin.y = v29;
            v81.size.width = v31;
            v81.size.height = v33;
            MinX = CGRectGetMinX(v81);
            v35 = [v23 contentView];

            [v35 bounds];
            v37 = v36;
            v39 = v38;

            v40 = static HorizontalAlignment.listRowSeparatorLeading.getter();
            a3 = *((*MEMORY[0x1E69E7D40] & *v23) + 0x68);
            *&v41 = COERCE_DOUBLE(a3(v40, v37, v39));
            if (v42)
            {
              v43 = static HorizontalAlignment.leadingText.getter();
              *&v44 = COERCE_DOUBLE(a3(v43, v37, v39));
              v46 = v45;

              v47 = 0.0;
              v48 = v75;
              if ((v46 & 1) == 0)
              {
                v47 = *&v44;
              }
            }

            else
            {
              v57 = *&v41;

              v47 = v57;
              v48 = v75;
            }

            *(v48 + *((*MEMORY[0x1E69E7D40] & *v48) + 0x348)) = MinX + v47;
          }

          else
          {
          }
        }
      }

      else
      {
        v17 = 1;
        while (v73 != v17)
        {
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_31;
          }

          outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v12 + v75, v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
          v14 = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
          outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v76, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
          _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v76, v77);
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v77, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
          outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v80, v77, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
          v18 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v17);
          _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v77, v18, v78);
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v80, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
          v13 = v79;
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v78, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
          ++v17;
          if (v13 > 0)
          {
            v16 = v17 - 1;
            goto LABEL_10;
          }
        }
      }
    }
  }

  else
  {
    *(v3 + *(v9 + 840)) = 0;
  }

  v13 = [v74 visibleSupplementaryViewsOfKind_];
  v73 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v14 >> 62)
  {
LABEL_31:
    v49 = __CocoaSet.count.getter();
    v11 = v75;
    if (!v49)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v49 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v75;
    if (!v49)
    {
      goto LABEL_32;
    }
  }

  if (v49 < 1)
  {
    __break(1u);
    goto LABEL_46;
  }

  v50 = 0;
  v51 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x348);
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v52 = MEMORY[0x18D00E9C0](v50, v14);
    }

    else
    {
      v52 = *(v14 + 8 * v50 + 32);
    }

    v53 = v52;
    type metadata accessor for TableCollectionViewCell();
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      *(v54 + direct field offset for TableCollectionViewCell.headerLeadingMargin) = *(v11 + v51);
      v55 = *(v54 + direct field offset for ListCollectionViewCellBase.host);
      if (v55)
      {
        type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>();
        lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<TableRowView, CollectionViewCellModifier>>);
        v56 = v55;
        v11 = v75;
        ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
      }
    }

    ++v50;
  }

  while (v49 != v50);
LABEL_32:

  a3 = v72;
  if (v72)
  {
    v58 = v72;
    goto LABEL_40;
  }

  v59 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);
  v60 = [v74 visibleSupplementaryViewsOfKind_];

  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v13 >> 62)
  {
LABEL_47:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_36;
    }

LABEL_48:

    return;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_36:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x18D00E9C0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v61 = *(v13 + 32);
  }

  v62 = v61;

  v58 = v62;
LABEL_40:
  type metadata accessor for TableGlobalHeader();
  v63 = swift_dynamicCastClass();
  if (v63)
  {
    v64 = *(v11 + *((*MEMORY[0x1E69E7D40] & *v11) + 0x348));
    v65 = *(v63 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin);
    v66 = v63;
    *(v63 + OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_headerLeadingMargin) = v64;
    v67 = a3;
    if (v65 != v64)
    {
      [v66 setNeedsUpdateConfiguration];
    }
  }

  else
  {
    v68 = a3;
  }
}

uint64_t specialized UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v68 = a4;
  v71 = a2;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v65 - v9;
  LOBYTE(v82) = 17;
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v75);
  v10 = v78;
  if (v78)
  {
    v11 = v79;
    __swift_project_boxed_opaque_existential_1(&v75, v78);
    v12 = (*(v11 + 24))(v10, v11);
    outlined destroy of AnySelectionManager(&v75);
  }

  else
  {
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v75, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v12 & 1;
  v70 = a1;
  static Update.enqueueAction(reason:_:)();

  v14 = MEMORY[0x1E69E7D40];
  v15 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xA0);
  swift_beginAccess();
  v16 = *(v5 + v15);
  v72 = v15;
  *(v5 + v15) = a3;
  outlined consume of ListItemTint?(v16);
  v17 = v5 + *((*v14 & *v5) + 0xB8);
  swift_beginAccess();
  v18 = v73;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v17, v73, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);

  v19 = specialized ListCoreBatchUpdates.isEmpty.getter();
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v18, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v20 = *v14 & *v5;
  if ((v19 & 1) == 0)
  {
    v27 = *((*v14 & *v5) + 0x88);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v5 + v27, &v75, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    swift_beginAccess();
    v28 = v17 + *(v69 + 60);
    v29 = v71;
    specialized ListBatchUpdates.formUpdates<A>(from:to:)(&v75, v71);
    v30 = *(v28 + 16);
    v82 = *v28;
    v83 = v30;
    v84 = *(v28 + 32);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(&v82, v74, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    specialized ListCoreBatchUpdates.formResult<A>(_:)(&v82);
    swift_endAccess();
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v82, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v75, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined init with copy of TableDataSourceAdaptor(v29, &v75);
    v31 = *((*MEMORY[0x1E69E7D40] & *v5) + 0xD0);
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(&v75, v5 + v31, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
    swift_endAccess();
    v32 = v72;
    goto LABEL_31;
  }

  v67 = v17;
  v21 = v5 + *(v20 + 296);
  v22 = *(v21 + 1);
  if (v22)
  {
    v23 = v21[16];
    v75 = *v21;
    v76 = v22;
    v77 = v23;
    type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    v25 = v24;
    MEMORY[0x18D00ACC0](&v82);
    if (v82 == 1)
    {
      v26 = 0;
      goto LABEL_14;
    }

    v34 = *(v21 + 1);
    if (v34)
    {
      v35 = v21[16];
      v75 = *v21;
      v76 = v34;
      v77 = v35;
      MEMORY[0x18D00ACC0](&v82, v25);
      v33 = v82 != 0;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v26 = v33 ^ [v70 isEditing];
LABEL_14:
  v36 = *v14 & *v5;
  v37 = *(v36 + 0xC0);
  if (*(v5 + v37) == 1)
  {
    *(v5 + v37) = 0;
    v38 = *(v21 + 1);
    v32 = v72;
    if (v38)
    {
      v39 = v21[16];
      v75 = *v21;
      v76 = v38;
      v77 = v39;
      type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](&v82);
      if (v82)
      {
        [v70 setEditing_];
      }
    }

    goto LABEL_31;
  }

  v66 = v26;
  if (v68)
  {
    v40 = *(v36 + 136);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v5 + v40, &v75, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v41 = v67;
    swift_beginAccess();
    v42 = v41 + *(v69 + 60);
    specialized ListBatchUpdates.formUpdates<A>(from:to:)(&v75, v71);
    v43 = *(v42 + 16);
    v82 = *v42;
    v83 = v43;
    v84 = *(v42 + 32);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(&v82, v74, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    specialized ListCoreBatchUpdates.formResult<A>(_:)(&v82);
    swift_endAccess();
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v82, &lazy cache variable for type metadata for ListBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListBatchUpdates);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v75, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  }

  v44 = v67;
  v45 = v73;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v67, v73, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v46 = specialized ListCoreBatchUpdates.isEmpty.getter();
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v45, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  if (v46)
  {
    v47 = v71;
    outlined init with copy of TableDataSourceAdaptor(v71, &v75);
    v48 = MEMORY[0x1E69E7CC0];
    v80 = MEMORY[0x1E69E7CC0];
    v81 = MEMORY[0x1E69E7CC0];
    v49 = *((*v14 & *v5) + 0x88);
    swift_beginAccess();
    outlined assign with copy of ShadowListDataSource<TableDataSourceAdaptor>(&v75, v5 + v49);
    swift_endAccess();
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v75, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v50 = specialized UICollectionViewListCoordinatorBase.dragAndDropController.getter();
    outlined init with copy of TableDataSourceAdaptor(v47, &v75);
    v80 = v48;
    v81 = v48;
    v51 = *((*v14 & *v50) + 0x60);
    swift_beginAccess();
    outlined assign with take of ShadowListDataSource<TableDataSourceAdaptor>(&v75, v50 + v51);
    swift_endAccess();
  }

  else
  {
    outlined init with copy of TableDataSourceAdaptor(v71, &v75);
    v52 = *((*v14 & *v5) + 0xD0);
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(&v75, v5 + v52, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
    swift_endAccess();
  }

  v53 = v73;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v44, v73, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v54 = specialized ListCoreBatchUpdates.isEmpty.getter();
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v53, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v55 = *v5;
  v56 = *v14;
  v32 = v72;
  if ((v54 & 1) == 0 || (*(v5 + *((v56 & v55) + 0xD8)) & 1) == 0)
  {
    *(v5 + *((v56 & v55) + 0xD8)) = 1;
    swift_beginAccess();
    if (*(v5 + v32) == 1)
    {
      swift_endAccess();
    }

    else
    {
      v57 = Transaction.animation.getter();
      swift_endAccess();
      if (v57)
      {

        v58 = 1;
LABEL_30:
        LOBYTE(v75) = 17;
        v59 = swift_allocObject();
        *(v59 + 16) = v58;
        v60 = v70;
        *(v59 + 24) = v5;
        *(v59 + 32) = v60;
        *(v59 + 40) = v66;
        v61 = v60;
        v62 = v5;
        static Update.enqueueAction(reason:_:)();

        goto LABEL_31;
      }
    }

    v58 = 0;
    goto LABEL_30;
  }

LABEL_31:
  v63 = *(v5 + v32);
  *(v5 + v32) = 1;
  return outlined consume of ListItemTint?(v63);
}

void specialized closure #3 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(uint64_t a1, void *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    specialized UICollectionViewListCoordinator.updateLeadingHeaderMargin(collectionView:hasGlobalHeader:existingView:)(a2, a3 & 1, 0);
  }
}

void specialized UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x100));
  v3 = v2[2];
  v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
  {
LABEL_8:
    v10 = v0 + *((*v1 & *v0) + 0x108);
    v11 = *v10;
    v12 = v10[8];
    *v10 = 0;
    v10[8] = 1;

    specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v11, v12);
    return;
  }

  v6 = *v2;
  v5 = v2[1];
  v8 = v2[3];
  v7 = v2[4];
  if (v4 == 0x1FFFFFFFCLL || v4 == 0x1FFFFFFFELL)
  {
LABEL_7:
    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v3);
    goto LABEL_8;
  }

  if (v3 >> 62)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_8;
    }

    v13 = v2[2];
    outlined copy of ResolvedSubviewsSizingOptions?(v6, v5, v3);
    outlined copy of ResolvedSubviewsSizingOptions(v6, v5, v13);
    v14 = Axis.Set.contains(_:)();
    if (v14)
    {
      if (!v8)
      {
LABEL_17:
        v3 = v13;
        goto LABEL_7;
      }

      if (!(v13 & 1 | (*&v5 <= 0.0)))
      {
        v25[1] = v25;
        MEMORY[0x1EEE9AC00](v14);
        static Update.ensure<A>(_:)();
        v22 = v0 + *((*v1 & *v0) + 0x108);
        v23 = *v22;
        v24 = v22[8];
        *v22 = v25[3];
        v22[8] = 0;
        specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v23, v24);
        outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v13);
        outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v13);
        return;
      }
    }

    outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v13);
    goto LABEL_17;
  }

  v15 = v2[2];
  v16 = Axis.Set.contains(_:)();
  if (v16)
  {
    v17 = v8;
  }

  else
  {
    v17 = 0;
  }

  v18 = v7 | ~v16;
  v19 = v0 + *((*v1 & *v0) + 0x108);
  v20 = *v19;
  v21 = v19[8];
  *v19 = v17;
  v19[8] = v18 & 1;
  specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(v20, v21);

  outlined consume of ResolvedSubviewsSizingOptions?(v6, v5, v15);
}

uint64_t specialized UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(void (*a1)(_OWORD *))
{
  v2 = v1;
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v14);
  if (!*(&v15 + 1))
  {
    v6 = &lazy cache variable for type metadata for AnySelectionManager?;
    v7 = MEMORY[0x1E69E6720];
    goto LABEL_6;
  }

  v19[0] = v14;
  v19[1] = v15;
  v20 = v16;
  a1(v19);
  if ((static CoreTesting.isRunning.getter() & 1) == 0)
  {
    outlined init with copy of AnySelectionManager(v19, &v14);
    v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
    swift_beginAccess();
    v11 = MEMORY[0x1E69E6720];
    outlined init with copy of Binding<AnySelectionManager>(v1 + v10, v17, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    swift_beginAccess();
    outlined assign with copy of AnySelectionManager?(&v14, v1 + v10, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v11, type metadata accessor for MutableBox<UInt32>);
    swift_endAccess();
    if (!v18)
    {
      *(swift_allocObject() + 16) = v1;
      v12 = v1;
      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
    }

    v13 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v14, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    outlined destroy of AnySelectionManager(v19);
    v9 = v17;
    v6 = &lazy cache variable for type metadata for AnySelectionManager?;
    v8 = v13;
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v9, v6, &type metadata for AnySelectionManager, v8);
  }

  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  swift_beginAccess();
  result = outlined init with copy of Binding<AnySelectionManager>?(v2 + v4, &v14, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (*(&v14 + 1))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
    outlined destroy of AnySelectionManager(v19);
    v6 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
    v7 = MEMORY[0x1E6981948];
LABEL_6:
    v8 = v7;
    v9 = &v14;
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v9, v6, &type metadata for AnySelectionManager, v8);
  }

  __break(1u);
  return result;
}

id specialized UICollectionViewListCoordinatorBase.dragAndDropController.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x170);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v0 + v5, v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for CollectionViewListDragAndDropController<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for CollectionViewListDragAndDropController);
    v8 = objc_allocWithZone(v7);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v19, v18, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    *(v8 + *((*v1 & *v8) + 0x70)) = 0;
    v9 = (v8 + *((*v1 & *v8) + 0x78));
    *v9 = xmmword_18CD633F0;
    v9[1] = 0u;
    v9[2] = 0u;
    v9[3] = 0u;
    *(v9 + 57) = 0u;
    v10 = MEMORY[0x1E69E7CC0];
    *(v8 + *((*v1 & *v8) + 0x80)) = MEMORY[0x1E69E7CC0];
    *(v8 + *((*v1 & *v8) + 0x88)) = v10;
    swift_unknownObjectWeakInit();
    *(v8 + *((*v1 & *v8) + 0x98)) = 0;
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v18, v8 + *((*v1 & *v8) + 0x60), &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v11 = (v8 + *((*v1 & *v8) + 0x68));
    *v11 = partial apply for closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter;
    v11[1] = v6;
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListDragAndDropControllerBase<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListDragAndDropControllerBase);
    v17.receiver = v8;
    v17.super_class = v12;
    v13 = objc_msgSendSuper2(&v17, sel_init);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v18, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v14 = *(v0 + v2);
    *(v0 + v2) = v13;
    v4 = v13;

    v3 = 0;
  }

  v15 = v3;
  return v4;
}

uint64_t specialized UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>?(v1 + v4, v14, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  v5 = v14[1];
  result = outlined destroy of Binding<AnySelectionManager>?(v14, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (v5)
  {
    v7 = *((*v3 & *v1) + 0x88);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v1 + v7, v17, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v8 = IndexPath.section.getter();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v17, v16, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v16, v14);
    v9 = v8 & ~(v8 >> 63);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v14, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v17, v16, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    v10 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v9);
    _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v16, v10, v14);
    result = IndexPath.row.getter();
    if (result < 0)
    {
      v12 = 0;
      v13 = v15;
      while (1)
      {
        v11 = v15;
        if (v13 != v15)
        {
          v11 = (v13 - 1);
          if (__OFSUB__(v13, 1))
          {
            break;
          }
        }

        --v12;
        v13 = v11;
        if (result >= v12)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = v15;
      if (!result)
      {
LABEL_6:
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v14, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
        specialized ListCoreDataSource.selectionValue(forRowAt:)(v9, v11, a1);
        return outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v17, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      }

      if ((v15 ^ 0x7FFFFFFFFFFFFFFFLL) > result - 1)
      {
        v11 = (v15 + result);
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void specialized UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for IndexPath();
  v108 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v91[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for (IndexPath?, IndexPath?)();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v91[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v91[-v13];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v91[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v107 = &v91[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v91[-v20];
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v91[-v22];
  specialized UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(&v109);
  v104 = a1;
  if (!*(&v110 + 1))
  {
    v93 = v16;
    v100 = v11;
    v36 = &lazy cache variable for type metadata for AnyHashable?;
    v37 = MEMORY[0x1E69E69B8];
LABEL_10:
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v109, v36, v37, MEMORY[0x1E69E6720]);
    goto LABEL_12;
  }

  v112[0] = v109;
  v112[1] = v110;
  v113 = v111;
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v109);
  v24 = *(&v110 + 1);
  if (!*(&v110 + 1))
  {
    v93 = v16;
    v100 = v11;
    outlined destroy of AnyHashable(v112);
    v36 = &lazy cache variable for type metadata for AnySelectionManager?;
    v37 = &type metadata for AnySelectionManager;
    goto LABEL_10;
  }

  v25 = v23;
  v26 = v9;
  v27 = v111;
  __swift_project_boxed_opaque_existential_1(&v109, *(&v110 + 1));
  v28 = (*(v27 + 40))(v112, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], v24, v27);
  outlined destroy of AnySelectionManager(&v109);
  if (v28)
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v30 = [v104 cellForItemAtIndexPath_];

    if (!v30 || (v31 = [v30 isSelected], v30, (v31 & 1) == 0))
    {
      v32.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v33 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xA0);
      swift_beginAccess();
      if (*(v3 + v33) == 1)
      {
        swift_endAccess();
        v34 = 0;
        v35 = v104;
      }

      else
      {
        v87 = Transaction.animation.getter();
        swift_endAccess();
        v88 = v87;
        v35 = v104;
        if (v88)
        {

          v34 = 1;
        }

        else
        {
          v34 = 0;
        }
      }

      [v35 selectItemAtIndexPath:v32.super.isa animated:v34 scrollPosition:0];
    }

    outlined destroy of AnyHashable(v112);
    return;
  }

  v93 = v16;
  v100 = v11;
  outlined destroy of AnyHashable(v112);
  v9 = v26;
  v23 = v25;
LABEL_12:
  v38 = v108;
  v39 = *(v108 + 16);
  v105 = a2;
  v98 = v108 + 16;
  v96 = v39;
  v39(v23, a2, v6);
  v40 = *(v38 + 56);
  v97 = v38 + 56;
  v95 = v40;
  v40(v23, 0, 1, v6);
  v41 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xE0);
  swift_beginAccess();
  v99 = v9;
  v42 = *(v9 + 48);
  v43 = MEMORY[0x1E6969C28];
  v44 = MEMORY[0x1E69E6720];
  v45 = v106;
  outlined init with copy of Binding<AnySelectionManager>?(v23, v106, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v103 = v3;
  v46 = v3 + v41;
  v47 = v42;
  outlined init with copy of Binding<AnySelectionManager>?(v46, &v45[v42], &lazy cache variable for type metadata for IndexPath?, v43, v44, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v48 = *(v38 + 48);
  if (v48(v45, 1, v6) == 1)
  {
    outlined destroy of Binding<AnySelectionManager>?(v23, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    v49 = v48(&v45[v47], 1, v6);
    v50 = v107;
    if (v49 == 1)
    {
      outlined destroy of Binding<AnySelectionManager>?(v45, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      return;
    }

    goto LABEL_17;
  }

  v51 = v23;
  v52 = v102;
  outlined init with copy of Binding<AnySelectionManager>?(v45, v102, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v53 = v48(&v45[v47], 1, v6);
  v50 = v107;
  if (v53 == 1)
  {
    outlined destroy of Binding<AnySelectionManager>?(v23, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    (*(v108 + 8))(v52, v6);
LABEL_17:
    v94 = v48;
    outlined destroy of BridgedListState(v45, type metadata accessor for (IndexPath?, IndexPath?));
    v54 = v105;
    goto LABEL_18;
  }

  v94 = v48;
  v72 = v6;
  v73 = v108;
  v74 = &v45[v47];
  v75 = v101;
  (*(v108 + 32))(v101, v74, v72);
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
  v92 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = v73;
  v6 = v72;
  v77 = *(v76 + 8);
  v77(v75, v72);
  v78 = MEMORY[0x1E6969C28];
  v79 = MEMORY[0x1E69E6720];
  outlined destroy of Binding<AnySelectionManager>?(v51, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v77(v52, v72);
  outlined destroy of Binding<AnySelectionManager>?(v106, &lazy cache variable for type metadata for IndexPath?, v78, v79, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v54 = v105;
  if (v92)
  {
    return;
  }

LABEL_18:
  v96(v50, v54, v6);
  v95(v50, 0, 1, v6);
  v55 = v103;
  v56 = *((*MEMORY[0x1E69E7D40] & *v103) + 0xE8);
  swift_beginAccess();
  v57 = *(v99 + 48);
  v58 = MEMORY[0x1E6969C28];
  v59 = MEMORY[0x1E69E6720];
  v60 = v50;
  v61 = v100;
  outlined init with copy of Binding<AnySelectionManager>?(v60, v100, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  outlined init with copy of Binding<AnySelectionManager>?(v55 + v56, v61 + v57, &lazy cache variable for type metadata for IndexPath?, v58, v59, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  v62 = v94;
  if (v94(v61, 1, v6) == 1)
  {
    outlined destroy of Binding<AnySelectionManager>?(v107, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    if (v62(v61 + v57, 1, v6) == 1)
    {
      outlined destroy of Binding<AnySelectionManager>?(v61, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      return;
    }
  }

  else
  {
    v63 = v93;
    outlined init with copy of Binding<AnySelectionManager>?(v61, v93, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    if (v62(v61 + v57, 1, v6) != 1)
    {
      v80 = v6;
      v81 = v108;
      v82 = v101;
      (*(v108 + 32))(v101, v61 + v57, v80);
      lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      v83 = dispatch thunk of static Equatable.== infix(_:_:)();
      v84 = *(v81 + 8);
      v84(v82, v80);
      v85 = MEMORY[0x1E6969C28];
      v86 = MEMORY[0x1E69E6720];
      outlined destroy of Binding<AnySelectionManager>?(v107, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      v84(v63, v80);
      outlined destroy of Binding<AnySelectionManager>?(v61, &lazy cache variable for type metadata for IndexPath?, v85, v86, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      if (v83)
      {
        return;
      }

      goto LABEL_24;
    }

    outlined destroy of Binding<AnySelectionManager>?(v107, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    (*(v108 + 8))(v63, v6);
  }

  outlined destroy of BridgedListState(v61, type metadata accessor for (IndexPath?, IndexPath?));
LABEL_24:
  v64 = IndexPath._bridgeToObjectiveC()().super.isa;
  v65 = [v104 cellForItemAtIndexPath_];

  if (v65)
  {
    v66 = [v65 isSelected];

    if (v66)
    {
      v67.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v68 = v103;
      v69 = *((*MEMORY[0x1E69E7D40] & *v103) + 0xA0);
      swift_beginAccess();
      if (*(v68 + v69) == 1)
      {
        swift_endAccess();
        v70 = 0;
        v71 = v104;
      }

      else
      {
        v89 = Transaction.animation.getter();
        swift_endAccess();
        v90 = v89;
        v71 = v104;
        if (v90)
        {

          v70 = 1;
        }

        else
        {
          v70 = 0;
        }
      }

      [v71 deselectItemAtIndexPath:v67.super.isa animated:v70];
    }
  }
}

void specialized UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, int a2)
{
  v3 = v2;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43[-v7];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43[-v10];
  v12 = MEMORY[0x1E69E7D40];
  *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8)) = 1;
  v44 = a2;
  if (a2)
  {
    specialized UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
  }

  v13 = type metadata accessor for IndexPath();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = *((*v12 & *v3) + 0xE0);
  swift_beginAccess();
  outlined assign with take of Binding<AnySelectionManager>?(v11, v3 + v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  swift_endAccess();
  v15 = *((*v12 & *v3) + 0xB8);
  swift_beginAccess();
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v3 + v15, v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  LOBYTE(v14) = specialized ListCoreBatchUpdates.isEmpty.getter();
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  if ((v14 & 1) == 0)
  {
    v16 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xD0);
    swift_beginAccess();
    outlined init with copy of Binding<AnySelectionManager>(v3 + v16, &v46, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
    if (*(&v47 + 1))
    {
      v64 = v54;
      v65[0] = v55[0];
      *(v65 + 11) = *(v55 + 11);
      v60 = v50;
      v61 = v51;
      v62 = v52;
      v63 = v53;
      v56 = v46;
      v57 = v47;
      v58 = v48;
      v59 = v49;
      outlined init with copy of TableDataSourceAdaptor(&v56, &v46);
      v17 = swift_allocObject();
      v18 = v52;
      *(v17 + 136) = v53;
      v19 = v55[0];
      *(v17 + 152) = v54;
      *(v17 + 168) = v19;
      *(v17 + 179) = *(v55 + 11);
      v20 = v48;
      *(v17 + 72) = v49;
      v21 = v51;
      *(v17 + 88) = v50;
      *(v17 + 104) = v21;
      *(v17 + 120) = v18;
      v22 = v47;
      *(v17 + 24) = v46;
      *(v17 + 40) = v22;
      *(v17 + 16) = v3;
      *(v17 + 56) = v20;
      *(v17 + 200) = a1;
      v23 = swift_allocObject();
      *(v23 + 16) = partial apply for specialized closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      *(v23 + 24) = v17;
      v45[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
      v45[5] = v23;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 1107296256;
      v45[2] = thunk for @escaping @callee_guaranteed () -> ();
      v45[3] = &block_descriptor_55_0;
      v24 = _Block_copy(v45);
      v25 = v3;
      v26 = a1;

      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      *(v27 + 24) = v26;
      *(v27 + 32) = v44 & 1;
      *&v48 = partial apply for specialized closure #2 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
      *(&v48 + 1) = v27;
      *&v46 = MEMORY[0x1E69E9820];
      *(&v46 + 1) = 1107296256;
      *&v47 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      *(&v47 + 1) = &block_descriptor_61_0;
      v28 = _Block_copy(&v46);
      v29 = v25;
      v30 = v26;

      [v30 performBatchUpdates:v24 completion:v28];
      _Block_release(v28);
      _Block_release(v24);
      outlined destroy of TableDataSourceAdaptor(&v56);

      return;
    }

    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v46, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
  }

  if (v44 & 1) != 0 && (outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v3 + v15, v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates), v31 = specialized ListCoreBatchUpdates.isEmpty.getter(), outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v8, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates), (v31))
  {
    v32 = swift_allocObject();
    *(v32 + 16) = v3;
    *(v32 + 24) = a1;
    *(v32 + 32) = 1;
    *&v58 = partial apply for specialized closure #3 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
    *(&v58 + 1) = v32;
    *&v56 = MEMORY[0x1E69E9820];
    *(&v56 + 1) = 1107296256;
    *&v57 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    *(&v57 + 1) = &block_descriptor_45;
    v33 = _Block_copy(&v56);
    v34 = v3;
    v35 = a1;

    [v35 performBatchUpdates:0 completion:v33];
    _Block_release(v33);
  }

  else
  {
    v36 = objc_opt_self();
    v37 = swift_allocObject();
    *(v37 + 16) = a1;
    *(v37 + 24) = v3;
    v38 = swift_allocObject();
    *(v38 + 16) = partial apply for specialized closure #4 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:);
    *(v38 + 24) = v37;
    *&v58 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    *(&v58 + 1) = v38;
    *&v56 = MEMORY[0x1E69E9820];
    *(&v56 + 1) = 1107296256;
    *&v57 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v57 + 1) = &block_descriptor_39_2;
    v39 = _Block_copy(&v56);
    v40 = v3;
    v41 = a1;

    [v36 performWithoutAnimation_];
    _Block_release(v39);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void specialized UICollectionViewListCoordinatorBase.finishBatchUpdate(collectionView:shouldSetEditing:)(void *a1, char a2)
{
  v3 = v2;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = [a1 window];
  if (v10)
  {

    v11 = MEMORY[0x1E69E7D40];
    v12 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xB8);
    swift_beginAccess();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v3 + v12, v9, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    LOBYTE(v12) = specialized ListCoreBatchUpdates.isEmpty.getter();
    updated = outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v9, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    if (v12)
    {
      specialized UICollectionViewListCoordinatorBase.updateEditingState(_:)(a1);
      v14 = v3 + *((*v11 & *v3) + 0xF0);
      if (v14[9] != 1 || !(*v14 ^ 1 | v14[8]))
      {
        v15 = specialized UIView.firstAncestorWhere(_:)(a1);
        if (v15)
        {
          ObjectType = swift_getObjectType();
          v17 = swift_conformsToProtocol2();
          if (v17)
          {
            (*(v17 + 8))(ObjectType, v17);
          }
        }
      }

      specialized UICollectionViewListCoordinatorBase.updateListContents(_:)(a1);
    }

    else
    {
      MEMORY[0x1EEE9AC00](updated);
      *(&v18 - 4) = v3;
      *(&v18 - 3) = a1;
      *(&v18 - 16) = a2 & 1;
      static Update.ensure<A>(_:)();
    }
  }

  else
  {
    *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0xD8)) = 0;
  }
}

uint64_t specialized UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(void *a1)
{
  v69 = type metadata accessor for IndexPath();
  v3 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = v59 - v7;
  v67 = type metadata accessor for IndexSet.Index();
  v8 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<IndexSet>();
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  swift_beginAccess();
  v19 = *(v11 + 16);
  v59[1] = v18;
  v19(v13, v18, v10);
  v20 = MEMORY[0x1E6969B50];
  lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
  dispatch thunk of Sequence.makeIterator()();
  v65 = *(v15 + 44);
  v21 = lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, v20);
  v64 = (v8 + 8);
  v70 = MEMORY[0x1E69E7CC0];
  v68 = a1;
  v61 = v10;
  v62 = v21;
  v63 = v17;
  while (1)
  {
    v23 = v66;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet.Index and conformance IndexSet.Index, MEMORY[0x1E6969B18]);
    v24 = v67;
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v64)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v28 = *v27;
    v26(v72, 0);
    dispatch thunk of Collection.formIndex(after:)();
    result = [v68 numberOfItemsInSection_];
    if (result < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    v29 = result;
    if (result)
    {
      v72[0] = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
      v30 = 0;
      v31 = v72[0];
      v32 = v69;
      do
      {
        MEMORY[0x18D0006A0](v30, v28);
        v72[0] = v31;
        v34 = *(v31 + 16);
        v33 = *(v31 + 24);
        if (v34 >= v33 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1);
          v31 = v72[0];
        }

        ++v30;
        *(v31 + 16) = v34 + 1;
        (*(v3 + 32))(v31 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v34, v5, v32);
      }

      while (v29 != v30);
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v31 + 16);
    result = v70;
    v36 = v70[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      goto LABEL_39;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v38 = v70;
    if (!result || v37 > v70[3] >> 1)
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v39, 1, v70);
      v38 = result;
    }

    v17 = v63;
    v40 = *(v31 + 16);
    v70 = v38;
    if (v40)
    {
      if ((v38[3] >> 1) - v38[2] < v35)
      {
        goto LABEL_41;
      }

      swift_arrayInitWithCopy();

      if (v35)
      {
        v41 = v70[2];
        v42 = __OFADD__(v41, v35);
        v43 = v41 + v35;
        if (v42)
        {
          goto LABEL_42;
        }

        v70[2] = v43;
      }
    }

    else
    {

      if (v35)
      {
        goto LABEL_40;
      }
    }
  }

  outlined destroy of BridgedListState(v17, type metadata accessor for IndexingIterator<IndexSet>);
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
  v72[0] = v70;

  specialized Array.append<A>(contentsOf:)(v44);
  v45 = *(v72[0] + 16);
  if (v45)
  {
    v48 = *(v3 + 16);
    v46 = v3 + 16;
    v47 = v48;
    v49 = *(v46 + 64);
    v65 = v72[0];
    v50 = v72[0] + ((v49 + 32) & ~v49);
    v70 = (v46 - 8);
    v67 = *(v46 + 56);
    v51 = v60;
    v53 = v68;
    v52 = v69;
    v48(v60, v50, v69);
    while (1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*v70)(v51, v52);
      v55 = [v53 cellForItemAtIndexPath_];

      if (v55)
      {
        type metadata accessor for TableCollectionViewCell();
        v56 = swift_dynamicCastClass();
        if (v56 && (v57 = *(v56 + direct field offset for ListCollectionViewCellBase.host)) != 0)
        {
          v66 = v57;
          UIHostingViewBase.viewGraph.getter();

          GraphHost.environment.getter();

          if (v72[1])
          {
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();

            v53 = v68;
            PropertyList.Tracker.value<A>(_:for:)();
          }

          else
          {
            _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FocusBridgeKey>, &type metadata for FocusBridgeKey, &protocol witness table for FocusBridgeKey, MEMORY[0x1E697FE38]);
            lazy protocol witness table accessor for type EnvironmentPropertyKey<FocusBridgeKey> and conformance EnvironmentPropertyKey<A>();
            PropertyList.subscript.getter();
          }

          Strong = swift_weakLoadStrong();

          outlined destroy of Binding<AnySelectionManager>?(v71, &lazy cache variable for type metadata for WeakBox<FocusBridge>, type metadata accessor for FocusBridge, MEMORY[0x1E6981A78], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
          v51 = v60;
          if (Strong)
          {
            *(Strong + 177) = 1;
          }
        }

        else
        {
        }
      }

      v50 += v67;
      if (!--v45)
      {
        break;
      }

      v47(v51, v50, v52);
    }
  }
}

void specialized UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(uint64_t *a1)
{
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x100));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v12 = *a1;
  v11 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v16 = a1[4];
  v15 = a1[5];
  v17 = a1[6];
  if (v14 >> 1 == 4294967293)
  {
    v24 = a1[1];
    v25 = v3[1];
    outlined copy of ResolvedSubviewsSizingOptions?(v5, v4, v6);
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
    {
      outlined init with copy of Binding<AnySelectionManager>(a1, &v35, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
      outlined consume of ResolvedSubviewsSizingOptions?(v12, v24, v14);
      return;
    }

    outlined init with copy of Binding<AnySelectionManager>(a1, &v35, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
    v21 = v24;
    v19 = v12;
    v20 = v25;
    goto LABEL_7;
  }

  v35 = *a1;
  v36 = v11;
  v37 = v14;
  v38 = v13;
  v39 = v16;
  v40 = v15;
  v41 = v17;
  if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFALL)
  {
    v26 = v4;
    outlined copy of ResolvedSubviewsSizingOptions?(v5, v4, v6);
    outlined init with copy of Binding<AnySelectionManager>(a1, &v28, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
    v18 = v11;
    outlined copy of ResolvedSubviewsSizingOptions?(v12, v11, v14);
    outlined consume of ResolvedSubviewsSizingOptions(v12, v11, v14);
    v19 = v12;
    v20 = v26;
    v21 = v18;
LABEL_7:
    outlined consume of ResolvedSubviewsSizingOptions?(v19, v21, v14);
    outlined consume of ResolvedSubviewsSizingOptions?(v5, v20, v6);
LABEL_8:
    specialized UICollectionViewListCoordinatorBase.onSubviewsSizingOptionsSet()();
    return;
  }

  v28 = v5;
  v29 = v4;
  v30 = v6;
  v31 = v7;
  v32 = v8;
  v33 = v9;
  v34 = v10;
  outlined copy of ResolvedSubviewsSizingOptions?(v5, v4, v6);
  outlined init with copy of Binding<AnySelectionManager>(a1, v27, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
  outlined copy of ResolvedSubviewsSizingOptions?(v12, v11, v14);
  v22 = v11;
  v23 = specialized static ResolvedSubviewsSizingOptions.== infix(_:_:)(&v35, &v28);
  outlined consume of ResolvedSubviewsSizingOptions(v28, v29, v30);
  outlined consume of ResolvedSubviewsSizingOptions(v35, v36, v37);
  outlined consume of ResolvedSubviewsSizingOptions?(v12, v22, v14);
  if (!v23)
  {
    goto LABEL_8;
  }
}

void specialized UICollectionViewListCoordinatorBase.subviewUniformHeight.didset(uint64_t a1, char a2)
{
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1E69E7D40];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v36 = Strong;
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    v12 = v36;
LABEL_18:

    return;
  }

  v11 = v10;
  v12 = v36;
  v13 = (v2 + *((*v8 & *v2) + 0x108));
  v14 = *(v13 + 8);
  if (a2)
  {
    if (v13[1])
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (*v13 != *&a1)
    {
      v14 = 1;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v37 = MEMORY[0x1E69E7CC0];
  v15 = v36;
  v16 = [v11 visibleCells];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = v15;
  v19 = v2;
  specialized Sequence.forEach(_:)(v17, v11, v19, &v37);

  v20 = [objc_allocWithZone(MEMORY[0x1E69DC860]) init];
  type metadata accessor for IndexPath();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v20 invalidateItemsAtIndexPaths_];

  v22 = [v11 collectionViewLayout];
  [v22 invalidateLayoutWithContext_];

  v23 = v19 + *((*v8 & *v19) + 0xF0);
  if (v23[9] != 1 || !(*v23 ^ 1 | v23[8]))
  {
    v24 = specialized UIView.firstAncestorWhere(_:)(v11);
    if (v24)
    {
      ObjectType = swift_getObjectType();
      v26 = swift_conformsToProtocol2();
      if (v26)
      {
        (*(v26 + 8))(ObjectType, v26);
      }
    }
  }

  static Log.listMisc.getter();
  v27 = type metadata accessor for Logger();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v7, 1, v27) == 1)
  {

    outlined destroy of Binding<AnySelectionManager>?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  }

  else
  {
    v29 = v19;
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = v32;
      *v32 = 134217984;
      v34 = *v13;
      if (*(v13 + 8))
      {
        v34 = -1.0;
      }

      *(v32 + 4) = v34;
      _os_log_impl(&dword_18BD4A000, v30, v31, "subviewUniformHeight = %f", v32, 0xCu);
      MEMORY[0x18D0110E0](v33, -1, -1);
    }

    (*(v28 + 8))(v7, v27);
  }
}

uint64_t specialized closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset(void *a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x118);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>(a1 + v2, &v10, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  if (!*(&v11 + 1))
  {
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v10, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  }

  v13[0] = v10;
  v13[1] = v11;
  v14 = v12;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v3 = MEMORY[0x1E69E6720];
  outlined init with copy of Binding<AnySelectionManager>(a1 + v2, v8, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  swift_beginAccess();
  outlined assign with copy of AnySelectionManager?(&v10, a1 + v2, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v3, type metadata accessor for MutableBox<UInt32>);
  swift_endAccess();
  if (!v9)
  {
    *(swift_allocObject() + 16) = a1;
    v4 = a1;
    static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
  }

  v5 = MEMORY[0x1E69E6720];
  _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v10, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  v6 = _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v8, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v5);
  v8[0] = 17;
  MEMORY[0x1EEE9AC00](v6);
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for ()?, MEMORY[0x1E69E7CA8] + 8, v5);
  static Update.dispatchImmediately<A>(reason:_:)();
  return outlined destroy of AnySelectionManager(v13);
}

uint64_t specialized UICollectionViewListCoordinatorBase.currentSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = static CoreTesting.isRunning.getter();
  v4 = MEMORY[0x1E69E7D40];
  if (v3)
  {
    v5 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x110);
    result = swift_beginAccess();
    if (!*(v5 + 8))
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return result;
    }

    v7 = MEMORY[0x1E6981948];
    outlined init with copy of Binding<AnySelectionManager>(v5, v15, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
    type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v7);
    MEMORY[0x18D00ACC0]();
    v8 = v15;
    v9 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
    v10 = v7;
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v8, v9, &type metadata for AnySelectionManager, v10);
  }

  v11 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x118);
  swift_beginAccess();
  result = outlined init with copy of Binding<AnySelectionManager>(v1 + v11, &v16, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
  if (*(&v17 + 1))
  {
    v12 = v17;
    *a1 = v16;
    *(a1 + 16) = v12;
    *(a1 + 32) = v18;
    return result;
  }

  v13 = v1 + *((*v4 & *v1) + 0x110);
  result = swift_beginAccess();
  if (!*(v13 + 8))
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    if (!*(&v17 + 1))
    {
      return result;
    }

    goto LABEL_11;
  }

  v14 = MEMORY[0x1E6981948];
  outlined init with copy of Binding<AnySelectionManager>(v13, v15, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v14);
  MEMORY[0x18D00ACC0]();
  result = _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v15, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v14);
  if (*(&v17 + 1))
  {
LABEL_11:
    v9 = &lazy cache variable for type metadata for AnySelectionManager?;
    v10 = MEMORY[0x1E69E6720];
    v8 = &v16;
    return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v8, v9, &type metadata for AnySelectionManager, v10);
  }

  return result;
}

void specialized closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:)(char a1, void *a2, void *a3, char a4)
{
  if (a1)
  {
    specialized UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(a3, a4 & 1);
  }

  else
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = a4 & 1;
    v9 = swift_allocObject();
    *(v9 + 16) = partial apply for specialized closure #1 in closure #2 in UICollectionViewListCoordinatorBase.update(_:to:transaction:performDiff:);
    *(v9 + 24) = v8;
    v14[4] = partial apply for thunk for @callee_guaranteed () -> ();
    v14[5] = v9;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = &block_descriptor_29_2;
    v10 = _Block_copy(v14);
    v11 = a2;
    v12 = a3;

    [v7 performWithoutAnimation_];
    _Block_release(v10);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

id specialized UICollectionViewListCoordinatorBase.updateEditingState(_:)(void *a1)
{
  v2 = v1;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 indexPathsForSelectedItems];
  if (v14)
  {
    v15 = v14;
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v16 = 0;
  }

  v17 = [a1 isEditing];
  v18 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x128);
  v19 = *(v18 + 1);
  if (!v19)
  {
    [a1 setEditing_];
    if (v17)
    {

      goto LABEL_10;
    }
  }

  v20 = *v18;
  v21 = v18[16];
  *&v59 = v20;
  *(&v59 + 1) = v19;
  LOBYTE(v60) = v21;
  type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v64);
  v22 = v64;
  result = [a1 setEditing_];
  if ((v17 & 1) == 0)
  {
    if (v22)
    {
      if (!v16)
      {
        return result;
      }

      v29 = *(v16 + 16);

      if (v29 != 1)
      {
        return result;
      }

      specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v59);
      if (*(&v60 + 1))
      {
        v64 = v59;
        v65 = v60;
        v30 = v61;
        v66 = v61;
        v31 = *(&v60 + 1);
        __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v60 + 1));
        (*(v30 + 72))(v31, v30);
        if ((static CoreTesting.isRunning.getter() & 1) == 0)
        {
          outlined init with copy of AnySelectionManager(&v64, &v59);
          v53 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
          swift_beginAccess();
          v54 = MEMORY[0x1E69E6720];
          outlined init with copy of Binding<AnySelectionManager>(v2 + v53, v62, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
          swift_beginAccess();
          outlined assign with copy of AnySelectionManager?(&v59, v2 + v53, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v54, type metadata accessor for MutableBox<UInt32>);
          swift_endAccess();
          if (!v63)
          {
            *(swift_allocObject() + 16) = v2;
            v55 = v2;
            static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
          }

          v56 = MEMORY[0x1E69E6720];
          _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v59, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
          outlined destroy of AnySelectionManager(&v64);
          v52 = v62;
          v33 = &lazy cache variable for type metadata for AnySelectionManager?;
          v51 = v56;
          return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v52, v33, &type metadata for AnySelectionManager, v51);
        }

        v32 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
        swift_beginAccess();
        result = outlined init with copy of Binding<AnySelectionManager>?(v2 + v32, &v59, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
        if (!*(&v59 + 1))
        {
LABEL_43:
          __break(1u);
          return result;
        }

        dispatch thunk of AnyLocation.set(_:transaction:)();
        outlined destroy of AnySelectionManager(&v64);
        v33 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
        v34 = MEMORY[0x1E6981948];
      }

      else
      {
        v33 = &lazy cache variable for type metadata for AnySelectionManager?;
        v34 = MEMORY[0x1E69E6720];
      }

      v51 = v34;
      v52 = &v59;
      return _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v52, v33, &type metadata for AnySelectionManager, v51);
    }
  }

  if (v22)
  {
    return result;
  }

LABEL_10:
  specialized UICollectionViewListCoordinatorBase.currentSelection.getter(&v59);
  if (!*(&v60 + 1))
  {
    v27 = &lazy cache variable for type metadata for AnySelectionManager?;
    v28 = MEMORY[0x1E69E6720];
    goto LABEL_23;
  }

  v64 = v59;
  v65 = v60;
  v24 = v61;
  v66 = v61;
  v25 = *(&v60 + 1);
  __swift_mutable_project_boxed_opaque_existential_1(&v64, *(&v60 + 1));
  (*(v24 + 72))(v25, v24);
  if ((static CoreTesting.isRunning.getter() & 1) == 0)
  {
    outlined init with copy of AnySelectionManager(&v64, &v59);
    v37 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x118);
    swift_beginAccess();
    v38 = MEMORY[0x1E69E6720];
    outlined init with copy of Binding<AnySelectionManager>(v2 + v37, v62, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    swift_beginAccess();
    outlined assign with copy of AnySelectionManager?(&v59, v2 + v37, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, v38, type metadata accessor for MutableBox<UInt32>);
    swift_endAccess();
    if (!v63)
    {
      *(swift_allocObject() + 16) = v2;
      v39 = v2;
      static UIHostingViewBase.UpdateCycle.addPreCommitObserverOrAsyncMain(_:)();
    }

    v40 = MEMORY[0x1E69E6720];
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v59, &lazy cache variable for type metadata for AnySelectionManager?, &type metadata for AnySelectionManager, MEMORY[0x1E69E6720]);
    outlined destroy of AnySelectionManager(&v64);
    v36 = v62;
    v27 = &lazy cache variable for type metadata for AnySelectionManager?;
    v35 = v40;
    goto LABEL_27;
  }

  v26 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x110);
  swift_beginAccess();
  result = outlined init with copy of Binding<AnySelectionManager>?(v2 + v26, &v59, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (!*(&v59 + 1))
  {
    __break(1u);
    goto LABEL_43;
  }

  dispatch thunk of AnyLocation.set(_:transaction:)();
  outlined destroy of AnySelectionManager(&v64);
  v27 = &lazy cache variable for type metadata for Binding<AnySelectionManager>;
  v28 = MEMORY[0x1E6981948];
LABEL_23:
  v35 = v28;
  v36 = &v59;
LABEL_27:
  _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v36, v27, &type metadata for AnySelectionManager, v35);
  v41 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE0);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>?(v2 + v41, v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return outlined destroy of Binding<AnySelectionManager>?(v8, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  }

  (*(v10 + 32))(v13, v8, v9);
  type metadata accessor for UpdateCoalescingCollectionView(0);
  v42 = swift_dynamicCastClass();
  if (v42)
  {
    v43 = v42;
    v44 = a1;
    v45 = specialized UICollectionViewListCoordinatorBase.selectionValue(forRowAt:)(&v64);
    if (*(&v65 + 1))
    {
      v59 = v64;
      v60 = v65;
      v61 = v66;
      MEMORY[0x1EEE9AC00](v45);
      *(&v57 - 2) = &v59;
      specialized UICollectionViewListCoordinatorBase.enqueueSelectionUpdate(_:)(partial apply for specialized closure #2 in UICollectionViewListCoordinatorBase.updateEditingState(_:));
      outlined destroy of AnyHashable(&v59);
    }

    else
    {
      _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(&v64, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    }

    v46 = v58;
    (*(v10 + 16))(v58, v13, v9);
    (*(v10 + 56))(v46, 0, 1, v9);
    v47 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
    swift_beginAccess();
    outlined assign with take of Binding<AnySelectionManager>?(v46, v43 + v47, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    swift_endAccess();
    v48 = swift_allocObject();
    *(v48 + 16) = v43;
    *(v48 + 24) = v2;
    v49 = v2;
    v50 = v44;
    onNextMainRunLoop(do:)();
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t specialized closure #1 in UICollectionViewListCoordinatorBase.performUpdates(collectionView:shouldSetEditing:)(void *a1, uint64_t a2, void *a3)
{
  v131 = a3;
  v127 = a2;
  v4 = type metadata accessor for IndexSet.Index();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for IndexPath();
  v125 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v114 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v129 = &v111 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v128 = &v111 - v12;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v130 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v111 - v16;
  v18 = type metadata accessor for IndexSet();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v122 = &v111 - v23;
  v24 = MEMORY[0x1E69E7D40];
  v25 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x88);
  result = swift_beginAccess();
  if (*(*(v25 + 176) + 16))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {
    v115 = v21;
    v123 = v18;
    v111 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(v25 + 184);
    v112 = v4;
    v113 = v7;
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v28 + 16));
    }

    else
    {
      *(v25 + 184) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI10ListUpdateOyS2iG_Tt1g5(0, *(v28 + 24) >> 1);
    }

    v29 = v19;
    v30 = v127;
    outlined assign with copy of TableDataSourceAdaptor(v127, v25);
    swift_endAccess();
    specialized UICollectionViewListCoordinatorBase.disableFocusEventsForDeletedCells(collectionView:)(v131);
    v31 = specialized UICollectionViewListCoordinatorBase.dragAndDropController.getter();
    outlined init with copy of TableDataSourceAdaptor(v30, v134);
    v135 = MEMORY[0x1E69E7CC0];
    v136 = MEMORY[0x1E69E7CC0];
    v32 = *((*v24 & *v31) + 0x60);
    swift_beginAccess();
    outlined assign with take of ShadowListDataSource<TableDataSourceAdaptor>(v134, v31 + v32);
    swift_endAccess();

    v33 = a1 + *((*v24 & *a1) + 0xB8);
    swift_beginAccess();
    v34 = v29 + 16;
    v35 = *(v29 + 16);
    v36 = v122;
    v37 = v123;
    v35(v122, v33, v123);
    v38 = IndexSet.isEmpty.getter();
    v40 = *(v29 + 8);
    v39 = v29 + 8;
    v124 = v40;
    v40(v36, v37);
    if ((v38 & 1) == 0)
    {
      v35(v36, v33, v37);
      IndexSet._bridgeToObjectiveC()(v41);
      v43 = v42;
      v124(v36, v37);
      [v131 deleteSections_];
    }

    v118 = a1;
    _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for ListCoreBatchUpdates<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ListCoreBatchUpdates);
    v45 = v44;
    v35(v36, &v33[v44[9]], v37);
    v46 = IndexSet.isEmpty.getter();
    v124(v36, v37);
    v116 = v39;
    v120 = v34;
    v119 = v35;
    if (v46)
    {
      v47 = v38 ^ 1;
      v48 = v131;
    }

    else
    {
      v35(v36, &v33[v45[9]], v37);
      IndexSet._bridgeToObjectiveC()(v49);
      v51 = v50;
      v124(v36, v37);
      v48 = v131;
      [v131 insertSections_];

      v47 = 1;
    }

    v52 = *&v33[v45[10]];
    v53 = *(v52 + 16);
    v54 = v33;
    if (v53)
    {
      v55 = v45;

      v56 = (v52 + 40);
      do
      {
        [v48 moveSection:*(v56 - 1) toSection:*v56];
        v56 += 2;
        --v53;
      }

      while (v53);

      v47 = 1;
      v45 = v55;
    }

    if (*(*&v54[v45[11]] + 16))
    {

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v131 deleteItemsAtIndexPaths_];

      v47 = 1;
    }

    v58 = v131;
    if (*(*&v54[v45[12]] + 16))
    {

      v59 = Array._bridgeToObjectiveC()().super.isa;

      [v58 insertItemsAtIndexPaths_];

      v47 = 1;
    }

    v117 = v45;
    v60 = v45[13];
    v121 = v54;
    v61 = *(*&v54[v60] + 16);
    v62 = (v125 + 32);
    v63 = (v125 + 8);
    v127 = *&v54[v60];

    v64 = 0;
    v126 = v63;
    while (1)
    {
      v65 = v130;
      if (v64 == v61)
      {
        type metadata accessor for (source: IndexPath, destination: IndexPath)();
        v67 = v66;
        (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
        v64 = v61;
      }

      else
      {
        if ((v64 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (v64 >= *(v127 + 16))
        {
          goto LABEL_39;
        }

        v68 = v61;
        v69 = v62;
        v70 = v17;
        v71 = v47;
        v72 = v127;
        type metadata accessor for (source: IndexPath, destination: IndexPath)();
        v67 = v73;
        v74 = *(v73 - 8);
        v75 = v72 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
        v47 = v71;
        v17 = v70;
        v62 = v69;
        v61 = v68;
        v63 = v126;
        _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(v75 + *(v74 + 72) * v64++, v65, type metadata accessor for (source: IndexPath, destination: IndexPath));
        (*(v74 + 56))(v65, 0, 1, v67);
      }

      outlined init with take of BridgedListState.ScrollTarget?(v65, v17, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath));
      type metadata accessor for (source: IndexPath, destination: IndexPath)();
      if ((*(*(v67 - 8) + 48))(v17, 1, v67) == 1)
      {
        break;
      }

      v76 = *v62;
      v77 = v128;
      v78 = v132;
      (*v62)(v128, &v17[*(v67 + 48)], v132);
      v79 = v129;
      v76(v129, v17, v78);
      v80 = IndexPath._bridgeToObjectiveC()().super.isa;
      v81 = *v63;
      (*v63)(v79, v78);
      v82 = IndexPath._bridgeToObjectiveC()().super.isa;
      [v131 moveItemAtIndexPath:v80 toIndexPath:v82];

      result = v81(v77, v78);
      v47 = 1;
    }

    v83 = v123;
    v84 = v121;
    v85 = v119;
    if ((v47 & 1) == 0)
    {
      v86 = v122;
      v119(v122, &v121[v117[14]], v123);
      v87 = IndexSet.isEmpty.getter();
      v124(v86, v83);
      if ((v87 & 1) == 0)
      {
        v88 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
        v89 = [v131 collectionViewLayout];
        ObjCClassFromObject = swift_getObjCClassFromObject();

        [ObjCClassFromObject invalidationContextClass];
        swift_getObjCClassMetadata();
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewLayoutInvalidationContext);
        swift_dynamicCastMetatypeUnconditional();
        v91 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v92 = v115;
        v85(v115, &v84[v117[14]], v83);
        v93 = lazy protocol witness table accessor for type DefaultIndices<CountingIndexCollection<ShadowSectionCollection<TableDataSourceAdaptor>>> and conformance DefaultIndices<A>(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50]);
        v94 = dispatch thunk of Collection.count.getter();
        if (v94)
        {
          v95 = v94;
          v129 = v91;
          v133 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v94 & ~(v94 >> 63), 0);
          v96 = v133;
          v97 = v113;
          result = dispatch thunk of Collection.startIndex.getter();
          if (v95 < 0)
          {
            goto LABEL_41;
          }

          v98 = v114;
          v130 = v93;
          do
          {
            v99 = dispatch thunk of Collection.subscript.read();
            v99(v134, 0);
            IndexPath.init(index:)();
            v133 = v96;
            v100 = v92;
            v102 = *(v96 + 16);
            v101 = *(v96 + 24);
            if (v102 >= v101 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v101 > 1, v102 + 1, 1);
              v96 = v133;
            }

            *(v96 + 16) = v102 + 1;
            (*(v125 + 32))(v96 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v102, v98, v132);
            dispatch thunk of Collection.formIndex(after:)();
            --v95;
            v92 = v100;
          }

          while (v95);
          (*(v111 + 8))(v97, v112);
          v124(v100, v83);
          v88 = &_OBJC_LABEL_PROTOCOL___RPTTestRunnerDelegate;
          v91 = v129;
        }

        else
        {
          v124(v92, v83);
        }

        v103 = *MEMORY[0x1E69DDC08];
        v104 = Array._bridgeToObjectiveC()().super.isa;
        [v91 invalidateSupplementaryElementsOfKind:v103 atIndexPaths:v104];

        v105 = *MEMORY[0x1E69DDC00];
        v106 = Array._bridgeToObjectiveC()().super.isa;

        [v91 invalidateSupplementaryElementsOfKind:v105 atIndexPaths:v106];

        v107 = [v131 v88[236]];
        [v107 invalidateLayoutWithContext_];
      }
    }

    swift_beginAccess();
    specialized ListCoreBatchUpdates.resetAll()();
    swift_endAccess();
    v108 = v118;
    v109 = *MEMORY[0x1E69E7D40] & *v118;
    memset(v134, 0, 171);
    v110 = *(v109 + 208);
    swift_beginAccess();
    outlined assign with take of TableHeaderView?(v134, v108 + v110, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
    return swift_endAccess();
  }

  return result;
}

void specialized UICollectionViewListCoordinatorBase.updateListContents(_:)(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v102 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v91 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v92 = &v91 - v11;
  v12 = MEMORY[0x1E69E7D40];
  swift_beginAccess();
  specialized ListCoreBatchUpdates.resetAll()();
  swift_endAccess();
  v13 = *v12 & *v1;
  memset(v126, 0, 171);
  v14 = *(v13 + 208);
  swift_beginAccess();
  outlined assign with take of TableHeaderView?(v126, v2 + v14, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor);
  swift_endAccess();
  v15 = *((*v12 & *v2) + 0xD8);
  v106 = v2;
  *(v2 + v15) = 0;
  v16 = [a1 preparedCells];
  if (!v16)
  {
    goto LABEL_77;
  }

  v17 = v16;
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionViewCell);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    goto LABEL_70;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v103 = a1;
  v105 = v4;
  v97 = v9;
  if (!v19)
  {
    goto LABEL_28;
  }

  if (v19 < 1)
  {
    __break(1u);
    goto LABEL_75;
  }

  v20 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
  v104 = v18 & 0xC000000000000001;
  v96 = v20;
  swift_beginAccess();
  v21 = 0;
  v94 = (v18 + 32);
  v95 = v18;
  v99 = (v102 + 8);
  v100 = v19;
  while (1)
  {
    v22 = v104 ? MEMORY[0x18D00E9C0](v21, v18) : *(v94 + v21);
    v23 = v22;
    v24 = [a1 indexPathForCell_];
    if (v24)
    {
      break;
    }

LABEL_8:
    if (++v21 == v19)
    {
      goto LABEL_28;
    }
  }

  v25 = v24;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  type metadata accessor for TableCollectionViewCell();
  v26 = swift_dynamicCastClass();
  if (!v26)
  {

    (*v99)(v6, v4);
    v19 = v100;
    goto LABEL_8;
  }

  v98 = v26;
  v27 = v106;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v96 + v106, v128, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  v101 = v27;
  v28 = v23;
  v29 = IndexPath.section.getter();
  v4 = v6;
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v128, v117, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(v117, v126);
  v30 = v29 & ~(v29 >> 63);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v128, v117, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v31 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v30);
  _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5(v117, v31, v126);
  v32 = IndexPath.row.getter();
  if ((v32 & 0x8000000000000000) == 0)
  {
    a1 = v127;
    v9 = v97;
    v18 = v101;
    if (v32)
    {
      if ((v127 ^ 0x7FFFFFFFFFFFFFFFLL) <= v32 - 1)
      {
        goto LABEL_69;
      }

      a1 = (v32 + v127);
    }

LABEL_18:
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowRowCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowRowCollection);
    specialized ShadowListDataSource.contextForItem(index:)(v30, a1, v126);
    outlined init with copy of Binding<AnySelectionManager>?(v126, v117, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
    if (v123)
    {
      v115 = v124;
      v116[0] = v125[0];
      *(v116 + 11) = *(v125 + 11);
      v111 = v120;
      v112 = v121;
      v113 = v122;
      v114 = v123;
      v108[1] = v118;
      v108[2] = v119[0];
      v109 = v119[1];
      v110 = v119[2];
      v107 = v117[0];
      v108[0] = v117[1];
      specialized closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:)(&v107, v18, v98);
      outlined destroy of BridgedListState(&v107, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>);
    }

    outlined destroy of Binding<AnySelectionManager>?(v126, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);

    a1 = v103;
    v19 = v100;
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v128, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    specialized UICollectionViewListCoordinatorBase.mirrorSelection(collectionView:indexPath:)(a1, v6);

    v4 = v105;
    (*v99)(v6, v105);
    v18 = v95;
    goto LABEL_8;
  }

  v33 = 0;
  v34 = v127;
  v9 = v97;
  v18 = v101;
  while (1)
  {
    a1 = v127;
    if (v34 != v127)
    {
      a1 = v34 - 1;
      if (__OFSUB__(v34, 1))
      {
        break;
      }
    }

    --v33;
    v34 = a1;
    if (v32 >= v33)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_28:

  v35 = &selRef_bundleIdentifier;
  v96 = *MEMORY[0x1E69DDC08];
  v36 = [a1 indexPathsForVisibleSupplementaryElementsOfKind_];
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v37;
  v6 = *(v37 + 16);
  if (v6)
  {
    v39 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
    v40 = *((*MEMORY[0x1E69E7D40] & *v106) + 0xA0);
    v41 = v102;
    v42 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v91 = v38;
    v43 = v38 + v42;
    v104 = v39;
    swift_beginAccess();
    v93 = v40;
    swift_beginAccess();
    v44 = *(v41 + 2);
    v41 = (v41 + 16);
    v99 = *(v41 + 7);
    v100 = v44;
    v18 = &type metadata for TableDataSourceAdaptor;
    v101 = v41;
    v98 = (v41 - 8);
    v44(v9, v43, v4);
    while (1)
    {
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v45 = IndexPath.section.getter();
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
      v46 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v45 & ~(v45 >> 63));
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        v19 = __CocoaSet.count.getter();
        goto LABEL_4;
      }

      if (v46 >= *(*(&v118 + 1) + 16))
      {
        goto LABEL_68;
      }

      if (*(*(&v118 + 1) + 96 * v46 + 40) == 1)
      {
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      }

      else
      {
        if (v46 || (BYTE8(v124) & 1) != 0)
        {
          outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
LABEL_32:
          (*v98)(v9, v4);
          goto LABEL_33;
        }

        v57 = BYTE9(v124);
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
        if (v57 == 2)
        {
          goto LABEL_32;
        }
      }

      v47 = v96;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v49 = [a1 supplementaryViewForElementKind:v47 atIndexPath:isa];

      if (!v49)
      {
        goto LABEL_32;
      }

      type metadata accessor for TableCollectionViewCell();
      v50 = swift_dynamicCastClass();
      if (v50)
      {
        v51 = v50;
        v95 = lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor;
        v94 = type metadata accessor for ShadowListDataSource;
        v52 = v106;
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
        v53 = *(v52 + v93);
        outlined copy of Transaction?(v53);
        v54 = IndexPath.section.getter();
        outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
        _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
        v9 = v97;
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
        v55 = specialized ShadowListUpdateRecorder.initialIndex(_:)(v54 & ~(v54 >> 63));
        TableDataSourceAdaptor.configureHeader(_:transaction:forSectionAt:)(v51, v53, v55);

        v56 = v53;
        a1 = v103;
        outlined consume of ListItemTint?(v56);
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, v95, &type metadata for TableDataSourceAdaptor, v94);
      }

      else
      {
      }

      v4 = v105;
      (*v98)(v9, v105);
LABEL_33:
      v43 += v99;
      if (!--v6)
      {

        v35 = &selRef_bundleIdentifier;
        goto LABEL_49;
      }

      (v100)(v9, v43, v4);
    }
  }

LABEL_49:
  v58 = v35[407];
  v98 = *MEMORY[0x1E69DDC00];
  v59 = [a1 v58];
  v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v61 = *(v60 + 16);
  if (v61)
  {
    v62 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
    v63 = v102;
    v64 = (*(v102 + 80) + 32) & ~*(v102 + 80);
    v97 = v60;
    v65 = v60 + v64;
    v104 = v62;
    swift_beginAccess();
    v66 = *(v63 + 16);
    v63 += 16;
    v100 = *(v63 + 56);
    v101 = v66;
    v102 = v63;
    v99 = (v63 - 8);
    v67 = v92;
    v66(v92, v65, v4);
    while (1)
    {
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v69 = IndexPath.section.getter();
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
      _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
      LOBYTE(v69) = specialized ShadowListUpdateRecorder.hasFooter(forSectionAt:)(v69 & ~(v69 >> 63));
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      if (v69)
      {
        v70 = v98;
        v71 = IndexPath._bridgeToObjectiveC()().super.isa;
        v72 = [v103 supplementaryViewForElementKind:v70 atIndexPath:v71];

        if (v72)
        {
          type metadata accessor for TableCollectionViewCell();
          v73 = swift_dynamicCastClass();

          if (v73)
          {
            break;
          }
        }
      }

      v68 = v105;
      (*v99)(v67, v105);
      v65 += v100;
      if (!--v61)
      {
        goto LABEL_57;
      }

      v101(v67, v65, v68);
    }

    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v106 + v104, v117, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    v74 = IndexPath.section.getter();
    outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v117, &v107, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
    _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5(&v107, v126);
    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowSectionCollection<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowSectionCollection);
    specialized ShadowListUpdateRecorder.initialIndex(_:)(v74 & ~(v74 >> 63));
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_57:

    a1 = v103;
  }

  else
  {
  }

  v75 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);
  v76 = [a1 visibleSupplementaryViewsOfKind_];

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UICollectionReusableView);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_72;
    }

LABEL_61:
    if ((v19 & 0xC000000000000001) == 0)
    {
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v77 = *(v19 + 32);
        goto LABEL_64;
      }

      __break(1u);
LABEL_77:
      __break(1u);
      return;
    }

LABEL_75:
    v77 = MEMORY[0x18D00E9C0](0, v19);
LABEL_64:
    v78 = v77;

    type metadata accessor for TableGlobalHeader();
    v79 = swift_dynamicCastClass();
    if (v79)
    {
      v80 = v79;
      v81 = v106;
      v82 = MEMORY[0x1E69E7D40];
      v83 = *((*MEMORY[0x1E69E7D40] & *v106) + 0x88);
      swift_beginAccess();
      outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(v81 + v83, v126, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
      v84 = *((*v82 & *v81) + 0xA0);
      swift_beginAccess();
      v85 = *(v81 + v84);
      outlined init with copy of TableDataSourceAdaptor(v126, v117);
      outlined copy of Transaction?(v85);
      v86 = v78;
      [v80 setAutomaticallyUpdatesContentConfiguration_];
      v87 = v121;
      v88 = v122;
      outlined init with copy of TableColumnCollection(v119, v108 + 8);
      outlined copy of Binding<[SwiftUIAnySortComparator]>?(v87, *(&v87 + 1));
      v89 = TableDataSourceAdaptor.headerDisplayMode.getter();
      v107 = v87;
      *&v108[0] = v88;
      BYTE1(v109) = v89;
      BYTE2(v109) = BYTE8(v120);
      v90 = OBJC_IVAR____TtC7SwiftUI17TableGlobalHeader_globalHeader;
      swift_beginAccess();
      outlined assign with take of TableHeaderView?(&v107, v80 + v90, &lazy cache variable for type metadata for TableHeaderView?, &type metadata for TableHeaderView);
      swift_endAccess();
      [v80 setNeedsUpdateConfiguration];

      outlined destroy of TableDataSourceAdaptor(v117);
      outlined consume of ListItemTint?(v85);

      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v126, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
    }

    else
    {
    }

    return;
  }

  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_61;
  }

LABEL_72:
}

uint64_t specialized closure #3 in UICollectionViewListCoordinatorBase.updateEditingState(_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969C28];
  v9 = MEMORY[0x1E69E6720];
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  (*(v5 + 56))(&v21 - v15, 1, 1, v4, v14);
  v17 = OBJC_IVAR____TtC7SwiftUI30UpdateCoalescingCollectionView_pendingDeselectedItem;
  swift_beginAccess();
  outlined assign with take of Binding<AnySelectionManager>?(v16, a1 + v17, &lazy cache variable for type metadata for IndexPath?, v8, v9, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  swift_endAccess();
  v18 = *((*MEMORY[0x1E69E7D40] & *a2) + 0xE0);
  swift_beginAccess();
  outlined init with copy of Binding<AnySelectionManager>?(a2 + v18, v12, &lazy cache variable for type metadata for IndexPath?, v8, v9, _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return outlined destroy of Binding<AnySelectionManager>?(v12, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  }

  (*(v5 + 32))(v7, v12, v4);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

  return (*(v5 + 8))(v7, v4);
}

void specialized closure #1 in UICollectionViewListCoordinatorBase.updateListContents(_:)(uint64_t *a1, void *a2, _BYTE *a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x88);
  swift_beginAccess();
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a2 + v7, v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  v8 = *((*v6 & *a2) + 0xA0);
  swift_beginAccess();
  v9 = *(a2 + v8);
  v11 = *a1;
  v10 = a1[1];
  outlined init with copy of TableRowView((a1 + 2), v16);
  v12 = a1[19];
  outlined init with copy of Binding<AnySelectionManager>((a1 + 20), v17, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  v13 = *(a1 + 200);
  v15[0] = v11;
  v15[1] = v10;
  v16[17] = v12;
  v17[40] = v13;
  v18 = 0;
  outlined copy of Transaction?(v9);

  TableDataSourceAdaptor.configureCell(_:transaction:context:)(a3, v9, v15);
  outlined consume of ListItemTint?(v9);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v15, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
  outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v19, &lazy cache variable for type metadata for ShadowListDataSource<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListDataSource);
  v14 = [a3 layer];
  v15[0] = a1[19];
  ViewTraitCollection.zIndex.getter();
  [v14 setZPosition_];
}

uint64_t specialized ShadowListUpdateRecorder.hasFooter(forSectionAt:)(uint64_t a1)
{
  v3 = *(v1 + 176);
  v2 = *(v1 + 184);
  if (*(v2 + 16) | *(v3 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v2, v3);

    specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(updated, a1);
  }

  return 0;
}

uint64_t specialized ShadowListUpdateRecorder.initialIndex(_:)(uint64_t a1)
{
  v2 = a1;
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  if (*(v3 + 16) | *(v4 + 16))
  {
    MEMORY[0x1EEE9AC00](a1);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v3, v4);

    v2 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(updated, v2);
  }

  return v2;
}

uint64_t specialized ShadowListDataSource.contextForItem(index:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = outlined init with copy of TableDataSourceAdaptor(v3, &v15);
  v9 = *(v3 + 176);
  v8 = *(v3 + 184);
  if (*(v8 + 16) | *(v9 + 16))
  {
    MEMORY[0x1EEE9AC00](v7);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v8, v9);

    a2 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v20, updated, a1, a2);

    a1 = v20;
  }

  TableDataSourceAdaptor.contextForItem(index:)(a1, a2, v21);
  result = outlined destroy of TableDataSourceAdaptor(&v15);
  if (v22)
  {
    v16[5] = v21[6];
    v16[6] = v21[7];
    v16[7] = v21[8];
    v16[1] = v21[2];
    v16[2] = v21[3];
    v16[3] = v21[4];
    v16[4] = v21[5];
    v15 = v21[0];
    v16[0] = v21[1];
    v17 = v22;
    v18[0] = v23;
    v18[1] = v24;
    v19[0] = v25[0];
    *(v19 + 15) = *(v25 + 15);
    v12 = v21[0];
    outlined init with copy of TableRowView(v16, a3 + 16);
    v13 = *&v18[0];
    outlined init with copy of Binding<AnySelectionManager>(v18 + 8, a3 + 160, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v14 = v19[1];

    result = outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v15, &lazy cache variable for type metadata for _RowVisitationContext<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for _RowVisitationContext);
    *a3 = v12;
    *(a3 + 200) = v14;
    *(a3 + 201) = 0;
  }

  else
  {
    v13 = 0;
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 187) = 0u;
  }

  *(a3 + 152) = v13;
  return result;
}

uint64_t specialized ListCoreDataSource.selectionValue(forRowAt:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X1>, int8x16_t *a3@<X8>)
{
  specialized ShadowListDataSource.contextForItem(index:)(a1, a2, v22);
  outlined init with copy of Binding<AnySelectionManager>?(v22, v18, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if (!v19)
  {
    result = outlined destroy of Binding<AnySelectionManager>?(v22, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
LABEL_11:
    v6 = 0;
    v4 = 0;
    v5 = 0;
    v10 = 0uLL;
    goto LABEL_12;
  }

  v16[10] = v20;
  v17[0] = v21[0];
  *(v17 + 11) = *(v21 + 11);
  v16[6] = v18[6];
  v16[7] = v18[7];
  v16[8] = v18[8];
  v16[9] = v19;
  v16[2] = v18[2];
  v16[3] = v18[3];
  v16[4] = v18[4];
  v16[5] = v18[5];
  v16[0] = v18[0];
  v16[1] = v18[1];
  specialized _RowVisitationContext.selectionValue(respectSelectionDisabled:)(1, &v12);
  v11 = v12;
  v4 = v14;
  if (v14)
  {
    v5 = v15;
  }

  else
  {
    v5 = 0;
  }

  if (v14)
  {
    v6 = v13;
  }

  else
  {
    v6 = 0;
  }

  outlined destroy of BridgedListState(v16, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>);
  result = outlined destroy of Binding<AnySelectionManager>?(v22, &lazy cache variable for type metadata for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>?, type metadata accessor for _RowVisitationContext<ShadowListDataSource<TableDataSourceAdaptor>>, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
  if (!v4)
  {
    goto LABEL_11;
  }

  v8.i64[0] = 0;
  v9.i64[0] = v4;
  v10 = vandq_s8(v11, vdupq_lane_s64(vmvnq_s8(vceqq_s64(v9, v8)).i64[0], 0));
LABEL_12:
  *a3 = v10;
  a3[1].i64[0] = v6;
  a3[1].i64[1] = v4;
  a3[2].i64[0] = v5;
  return result;
}

uint64_t static CollectionViewTableRoot._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v100 = *MEMORY[0x1E69E9840];
  v13 = *(a2 + 16);
  v14 = *(a2 + 48);
  v75 = *(a2 + 32);
  v76 = v14;
  v77 = *(a2 + 64);
  v15 = *(a2 + 16);
  v73 = *a2;
  v74 = v15;
  v79 = v73;
  v80 = v15;
  v81 = v75;
  v16 = *a1;
  v40 = *a1;
  v78 = *(a2 + 80);
  v60 = v73;
  v61 = v13;
  v62 = v75;
  outlined init with copy of _GraphInputs(&v79, &v56);
  _ViewInputs.init(withoutGeometry:)();
  v60 = v79;
  v61 = v80;
  v66 = *v85;
  v67 = *&v85[16];
  v62 = v81;
  v63 = v82;
  HIDWORD(v69) = *MEMORY[0x1E698D3F8];
  LODWORD(v68) = *&v85[32];
  v64 = v83;
  v65 = v84;
  outlined init with copy of _GraphInputs(&v79, &v56);
  outlined init with copy of _ViewInputs(&v82, &v56);
  PreferencesInputs.init(hostKeys:)();
  *(&v68 + 1) = v56;
  LODWORD(v69) = DWORD2(v56);
  PreferenceKeys.add(_:)();
  v92 = v66;
  v93 = v67;
  v94 = v68;
  v88 = v62;
  v89 = v63;
  v90 = v64;
  v91 = v65;
  v86 = v60;
  v95 = v69;
  v87 = v61;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v17 = a7;
  v37 = a7;
  v55 = a7;
  LODWORD(v98[0]) = v16;
  *&v60 = a3;
  *(&v60 + 1) = a4;
  *&v61 = a5;
  *(&v61 + 1) = a6;
  v18 = a5;
  *&v62 = v17;
  type metadata accessor for CollectionViewTableRoot();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v66 = v92;
  v67 = v93;
  v68 = v94;
  v69 = v95;
  v62 = v88;
  v63 = v89;
  v64 = v90;
  v65 = v91;
  v60 = v86;
  v61 = v87;
  (*(a6 + 48))(&v56, v96, &v60, a4, a6);
  v38 = v56;
  v39 = DWORD2(v56);
  v70 = v82;
  v71 = v83;
  v72 = v84;
  v44 = *&v85[12];
  v45 = *&v85[28];
  *&v56 = *v85;
  DWORD2(v56) = *&v85[8];
  outlined init with copy of _ViewInputs(&v82, &v60);

  PreferenceKeys.add(_:)();
  v19 = v56;
  LODWORD(a5) = DWORD2(v56);

  v46 = a3;
  v47 = a4;
  v32 = a6;
  v33 = a4;
  v48 = v18;
  v49 = a6;
  v50 = v37;
  LODWORD(v41) = v40;
  _GraphValue.subscript.getter();
  v96[1] = v71;
  v96[2] = v72;
  v96[0] = v70;
  v35 = v19;
  *v97 = v19;
  v34 = a5;
  *&v97[8] = a5;
  v20 = v18;
  *&v97[28] = v45;
  *&v97[12] = v44;
  v62 = v72;
  v63 = *v97;
  v64 = *&v97[16];
  LODWORD(v65) = HIDWORD(v45);
  v60 = v70;
  v61 = v71;
  v21 = *(v37 + 64);
  outlined init with copy of _TableColumnInputs(v96, &v56);
  v21(&v56, v43, &v60, v18, v37);
  v98[2] = v62;
  v98[3] = v63;
  v98[4] = v64;
  v99 = v65;
  v98[0] = v60;
  v98[1] = v61;
  outlined destroy of _TableColumnInputs(v98);
  v22 = v56;
  v23 = DWORD2(v56);
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  static ScrollGeometry.zero.getter();
  LOBYTE(v56) = 0;
  GraphHost.intern<A>(_:for:id:)();

  IndirectAttribute2 = AGGraphCreateIndirectAttribute2();
  *&v60 = v38;
  DWORD2(v60) = v39;
  v25 = PreferencesOutputs.subscript.getter();
  if ((v25 & 0x100000000) != 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  v26 = v25;

  *&v60 = v22;
  DWORD2(v60) = v23;
  v27 = PreferencesOutputs.subscript.getter();
  if ((v27 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

  v28 = v27;

  LODWORD(v41) = v40;
  v58 = v75;
  *v59 = v76;
  *&v59[16] = v77;
  *&v59[32] = v78;
  v56 = v73;
  v57 = v74;
  outlined init with copy of _ViewInputs(&v73, &v60);
  UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(v26, v28, &v41, &v56, IndirectAttribute2, a3, v33, v20, &v60, v32, v37);
  outlined init with copy of UpdateCollectionViewTableCoordinator(&v60, &v56);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for UICollectionViewListCoordinator);
  lazy protocol witness table accessor for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator();
  v29 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of UpdateCollectionViewTableCoordinator(&v56);
  AGGraphGetFlags();
  AGGraphSetFlags();
  _s7SwiftUI27CollectionViewListUtilitiesO11makeOutputs6inputs11coordinator0J4Kind14scrollGeometryAA01_dH0VAA01_D6InputsV_14AttributeGraph0O0VyAA012UICollectiondE11CoordinatorCyxq_GGAC0rK0OAM08IndirectO0VyAA06ScrollM0VGtAA0cdE14DataSourceBaseRzAA16SelectionManagerR_0X5ValueQy_A1_Rtzr0_lFZAA05TableuV7AdaptorV_AA03AnyxY0VTt4B5(&v73, v29, 0, IndirectAttribute2, &v41);
  *&v56 = v76;
  DWORD2(v56) = DWORD2(v76);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    *&v56 = AGCreateWeakAttribute();
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityCollectionViewTableAttachment and conformance AccessibilityCollectionViewTableAttachment();
    v30 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC9Transform8modifier6inputs7outputs14AttributeGraph0K0VyAA0C8NodeListVGSgAA01_L5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10ScrollableE0V_Tt2B5Tm(v30, &v73, v41, v42, &lazy cache variable for type metadata for AccessibilityViewModifierAccessor<AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type AccessibilityAttachmentModifier and conformance AccessibilityAttachmentModifier, &type metadata for AccessibilityAttachmentModifier);
    PreferencesOutputs.subscript.setter();
    outlined destroy of _TableRowInputs(&v86);
    outlined destroy of _ViewInputs(&v82);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v60);
  }

  else
  {
    outlined destroy of UpdateCollectionViewTableCoordinator(&v60);
    outlined destroy of _ViewInputs(&v82);
    outlined destroy of _TableRowInputs(&v86);
  }

  *a8 = v41;
  a8[1] = v42;
  v56 = v70;
  v57 = v71;
  v58 = v72;
  *v59 = v35;
  *&v59[8] = v34;
  *&v59[12] = v44;
  *&v59[28] = v45;
  return outlined destroy of _TableColumnInputs(&v56);
}

uint64_t closure #1 in static CollectionViewTableRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v11[2] = type metadata accessor for CollectionViewTableRoot();
  v11[3] = a3;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v11, a3, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v12;
}

uint64_t closure #2 in static CollectionViewTableRoot._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v8 = type metadata accessor for CollectionViewTableRoot();
  v9 = *(v8 + 60);
  v13[2] = v8;
  v13[3] = a4;
  v10 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v9, partial apply for closure #1 in static PointerOffset.of(_:), v13, a4, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v11);
  return v14;
}

uint64_t UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)@<X0>(int a1@<W0>, int a2@<W1>, int *a3@<X2>, __int128 *a4@<X3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v42 = a5;
  v58 = *MEMORY[0x1E69E9840];
  v17 = a4[2];
  v18 = a4[4];
  v55 = a4[3];
  v56 = v18;
  v19 = a4[1];
  v52 = *a4;
  v20 = *a3;
  v57 = *(a4 + 20);
  v53 = v19;
  v54 = v17;
  swift_unknownObjectWeakInit();
  *(a9 + 251) = 0u;
  *(a9 + 224) = 0u;
  *(a9 + 240) = 0u;
  *(a9 + 192) = 0u;
  *(a9 + 208) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  v21 = AGSubgraphGetCurrent();
  if (!v21)
  {
    __break(1u);
  }

  v43 = &v41;
  *(a9 + 272) = v21;
  *a9 = a1;
  *(a9 + 4) = a2;
  MEMORY[0x1EEE9AC00](v21);
  v40[2] = a6;
  v40[3] = a7;
  v40[4] = a8;
  v40[5] = a10;
  v40[6] = a11;
  LODWORD(v45) = v20;
  *&v46 = a6;
  *(&v46 + 1) = a7;
  *&v47 = a8;
  *(&v47 + 1) = a10;
  *&v48 = a11;
  type metadata accessor for CollectionViewTableRoot();
  type metadata accessor for _GraphValue();
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  v22 = _GraphValue.subscript.getter();
  *(a9 + 8) = v46;
  v43 = v40;
  MEMORY[0x1EEE9AC00](v22);
  v40[-6] = a6;
  v40[-5] = a7;
  v40[-4] = a8;
  v40[-3] = a10;
  v40[-2] = a11;
  LODWORD(v46) = v20;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
  v23 = _GraphValue.subscript.getter();
  *(a9 + 12) = v45;
  v43 = v40;
  MEMORY[0x1EEE9AC00](v23);
  v40[-6] = a6;
  v40[-5] = a7;
  v40[-4] = a8;
  v40[-3] = a10;
  v40[-2] = a11;
  LODWORD(v46) = v20;
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
  _GraphValue.subscript.getter();
  v24 = HIDWORD(v53);
  *(a9 + 16) = v45;
  *(a9 + 20) = v24;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for editMode != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.editMode;
  swift_beginAccess();
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<EditMode>?, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode);
  v25 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 24) = v25;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for menuOrder != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.menuOrder;
  swift_beginAccess();
  v26 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 28) = v26;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for tableColumnHeadersVisibility != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.tableColumnHeadersVisibility;
  swift_beginAccess();
  v27 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 36) = v27;
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for tableShowsFirstColumnOnly != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.tableShowsFirstColumnOnly;
  swift_beginAccess();
  v28 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 32) = v28;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v51 = v57;
  v46 = v52;
  v47 = v53;
  *(a9 + 40) = _ViewInputs.accessibilityEnabled.getter();
  outlined init with copy of _GraphInputs(&v52, &v46);
  if (one-time initialization token for appIntentsDataSourcePayloadProvider != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.appIntentsDataSourcePayloadProvider;
  swift_beginAccess();
  type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], type metadata accessor for CVarArg);
  v29 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 48) = v29;
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v2VGMaTm_2(0, &lazy cache variable for type metadata for _GraphInputs.SelectionBasedStorageKey<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], type metadata accessor for _GraphInputs.SelectionBasedStorageKey);
  outlined init with copy of _GraphInputs(&v52, &v46);
  lazy protocol witness table accessor for type _GraphInputs.SelectionBasedStorageKey<AnyHashable> and conformance _GraphInputs.SelectionBasedStorageKey<A>();
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(&v52);
  *(a9 + 52) = _s7SwiftUI25WeakSelectionBasedStorageVyACyxGAA0deF0VyxGcfCAA04TextD0V_Tt0g5Tm(v46, *(&v46 + 1));
  *(a9 + 60) = v30;
  *(a9 + 68) = v31;
  *(a9 + 76) = v32;
  _s7SwiftUI33AccessibilityViewModifierAccessor33_71F62EDC1DAE3BBC7A74521E45BA5A66LLCyAA0c10AttachmentE0VGMaTm_0(0, &lazy cache variable for type metadata for SourceInput<ListRowHeightTemplateContent>, lazy protocol witness table accessor for type ListRowHeightTemplateContent and conformance ListRowHeightTemplateContent, &type metadata for ListRowHeightTemplateContent, type metadata accessor for SourceInput);
  lazy protocol witness table accessor for type SourceInput<ListRowHeightTemplateContent> and conformance SourceInput<A>();
  PropertyList.subscript.getter();
  if (v46)
  {

    Attribute = AGWeakAttributeGetAttribute();
    v34 = *MEMORY[0x1E698D3F8];
    v35 = Attribute;
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type TableTemplateRowWrapperView.ViewRule and conformance TableTemplateRowWrapperView.ViewRule();
      v44 = Attribute.init<A>(body:value:flags:update:)();
      v48 = v54;
      v49 = v55;
      v50 = v56;
      v51 = v57;
      v46 = v52;
      v47 = v53;
      lazy protocol witness table accessor for type TableTemplateRowWrapperView and conformance TableTemplateRowWrapperView();
      static View.makeDebuggableView(view:inputs:)();
      v46 = v45;
      v36 = _ViewOutputs.layoutComputer.getter();

      if ((v36 & 0x100000000) != 0)
      {
        v35 = v34;
      }

      else
      {
        v35 = v36;
      }

      Attribute = v42;
    }
  }

  else
  {
    Attribute = *MEMORY[0x1E698D3F8];
    v35 = *MEMORY[0x1E698D3F8];
  }

  if (one-time initialization token for subviewsSizingOption != -1)
  {
    swift_once();
  }

  *&v45 = static CachedEnvironment.ID.subviewsSizingOption;
  swift_beginAccess();
  v37 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();
  *&v46 = __PAIR64__(v35, v37);
  DWORD2(v46) = Attribute;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SubviewSizingHandlingForUniform and conformance SubviewSizingHandlingForUniform();
  v38 = Attribute.init<A>(body:value:flags:update:)();
  result = outlined destroy of _ViewInputs(&v52);
  *(a9 + 44) = v38;
  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CollectionViewTableRoot<A, B, C>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t UpdateCollectionViewTableCoordinator.hasMultipleSelection.getter()
{
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  Value = AGGraphGetValue();
  outlined init with copy of Binding<AnySelectionManager>?(Value, v10, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
  if (v11)
  {
    v1 = MEMORY[0x1E6981948];
    outlined init with copy of Binding<AnySelectionManager>(v10, v9, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, MEMORY[0x1E6981948]);
    outlined destroy of Binding<AnySelectionManager>?(v10, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
    type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v1);
    MEMORY[0x18D00ACC0](v6);
    _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v9, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, v1);
    v2 = v7;
    v3 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    v4 = (*(v3 + 24))(v2, v3);
    outlined destroy of AnySelectionManager(v6);
  }

  else
  {
    outlined destroy of Binding<AnySelectionManager>?(v10, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t closure #1 in UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v7 = type metadata accessor for CollectionViewTableRoot();
  v8 = *(v7 + 64);
  v14[2] = v7;
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
  v10 = v9;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

uint64_t closure #2 in UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v7 = type metadata accessor for CollectionViewTableRoot();
  v8 = *(v7 + 68);
  v14[2] = v7;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
  v10 = v9;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

uint64_t closure #3 in UpdateCollectionViewTableCoordinator.init<A, B, C>(rowList:columnList:view:viewInputs:scrollGeometry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v7 = type metadata accessor for CollectionViewTableRoot();
  v8 = *(v7 + 72);
  v14[2] = v7;
  type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
  v10 = v9;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_20, v14, v10, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15;
}

Swift::Void __swiftcall UpdateCollectionViewTableCoordinator.updateValue()()
{
  v1 = v0;
  v228 = *MEMORY[0x1E69E9840];
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v167 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v164 = v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v166 = v147 - v6;
  v7 = type metadata accessor for TableColumnCollection.Entry(0);
  v165 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v158 = v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  v161 = v10;
  outlined init with copy of TableRowList(Value, v227);
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for TableColumnList);
  v11 = AGGraphGetValue();
  v13 = v12;
  outlined init with copy of _Benchmark(v11, v224);
  v14 = v13 & 1;
  v15 = AGGraphGetValue();
  v17 = v16;
  v159 = *v15;
  type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(0, &lazy cache variable for type metadata for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>, type metadata accessor for UICollectionViewListCoordinator);
  v19 = v18;
  OutputValue = AGGraphGetOutputValue();
  v162 = v19;
  v163 = v1;
  if (OutputValue && (v161 & 1) == 0 && !v14 && (v17 & 1) == 0)
  {
    outlined init with copy of Binding<AnySelectionManager>(v1 + 96, &v210, &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
    if (!*(&v211 + 1))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v195 = v214;
    v196 = v215;
    v197 = v216;
    v191 = v210;
    v192 = v211;
    v194 = v213;
    v193 = v212;
    LODWORD(v190[0]) = *v217;
    *(v190 + 3) = *&v217[3];
    v21 = v218;
    v22 = v219;
    v165 = v221;
    v166 = v220;
    v164 = v222;
    LODWORD(v167) = v223;
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
    updated = UpdateCollectionViewTableCoordinator.hasMultipleSelection.getter();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
    v24 = updated & 1;
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
    _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
    v25 = AGGraphGetValue();
    v26 = *v25;
    v27 = v25[1];
    v28 = v25[2];
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(*v25, v27);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
    outlined consume of Binding<[A1]>?<A, B, C><A1>(v21, v22);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v163, &v210);
    type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    v29 = AGGraphGetValue();
    v31 = *v29;
    v30 = v29[1];
    v32 = v29[2];
    v33 = v29[3];
    outlined copy of Binding<AnyTableColumnCustomization>?(*v29, v30);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
    outlined consume of Binding<AnyTableColumnCustomization>?(v166, v165);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v163, &v210);
    v34 = *AGGraphGetValue();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
    v159 = 0;
    *&v186 = v197;
    v184 = v195;
    v185 = v196;
    v180 = v191;
    v181 = v192;
    v182 = v193;
    v183 = v194;
    BYTE8(v186) = v24;
    HIDWORD(v186) = *(v190 + 3);
    *(&v186 + 9) = v190[0];
    *&v187 = v26;
    *(&v187 + 1) = v27;
    *&v188 = v28;
    *(&v188 + 1) = v31;
    *&v189[0] = v30;
    *(&v189[0] + 1) = v32;
    *&v189[1] = v33;
    BYTE8(v189[1]) = v34;
    *(&v189[1] + 9) = v167;
    v1 = v163;
    v35 = MEMORY[0x1E69E7D40];
LABEL_32:
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
    v92 = AGGraphGetOutputValue();
    if (v92)
    {
      v93 = *v92;
      outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v191);
      type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
      v94 = AGGraphGetValue();
      outlined init with copy of Binding<AnySelectionManager>?(v94, v190, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
      v95 = *((*v35 & *v93) + 0x110);
      swift_beginAccess();
      outlined assign with take of Binding<AnySelectionManager>?(v190, v93 + v95, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      swift_endAccess();

      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
      v96 = AGGraphGetOutputValue();
      if (v96)
      {
        v97 = *v96;
        outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
        outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v191);
        type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<EditMode>?, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode);
        v98 = AGGraphGetValue();
        v99 = *v98;
        v100 = *(v98 + 8);
        v101 = *(v98 + 16);
        outlined copy of Binding<Int>?(*v98, v100);
        outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
        v102 = v97 + *((*v35 & *v97) + 0x128);
        v103 = *v102;
        v104 = *(v102 + 1);
        *v102 = v99;
        *(v102 + 1) = v100;
        v102[16] = v101;
        outlined consume of Binding<NavigationSplitViewColumn>?(v103, v104);

        outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
        v105 = AGGraphGetOutputValue();
        if (v105)
        {
          v106 = *v105;
          outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
          outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v191);
          v107 = *AGGraphGetValue();
          outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
          *(v106 + *((*v35 & *v106) + 0x138)) = v107;

          outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
          v108 = AGGraphGetOutputValue();
          if (v108)
          {
            v109 = *v108;
            outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
            v110 = (v109 + *((*v35 & *v109) + 0x130));
            v111 = *(v1 + 68);
            *v110 = *(v1 + 52);
            v110[1] = v111;

            outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v191);
            v112 = AGGraphGetOutputValue();
            if (v112)
            {
              v113 = v35;
              v114 = *v112;
              outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
              outlined init with copy of UpdateCollectionViewTableCoordinator(v1, v190);
              v115 = AGGraphGetValue();
              v116 = *v115;
              v117 = v115[1];
              v118 = v115[2];
              v119 = v115[3];
              v120 = v115[4];
              v121 = v115[5];
              v122 = v115[6];
              outlined copy of ResolvedSubviewsSizingOptions(*v115, v117, v118);
              outlined destroy of UpdateCollectionViewTableCoordinator(v190);
              v123 = v114 + *((*v113 & *v114) + 0x100);
              v124 = *(v123 + 6);
              v125 = *(v123 + 2);
              v126 = *v123;
              v178[1] = *(v123 + 1);
              v178[2] = v125;
              v179 = v124;
              v178[0] = v126;
              v128 = *v123;
              v127 = *(v123 + 1);
              v129 = *(v123 + 3);
              v166 = *(v123 + 2);
              v167 = v127;
              v165 = v129;
              v130 = *(v123 + 5);
              v164 = *(v123 + 4);
              v160 = *(v123 + 6);
              v161 = v130;
              *v123 = v116;
              *(v123 + 1) = v117;
              *(v123 + 2) = v118;
              *(v123 + 3) = v119;
              *(v123 + 4) = v120;
              *(v123 + 5) = v121;
              v131 = v163;
              *(v123 + 6) = v122;
              v132 = MEMORY[0x1E69E6720];
              outlined init with copy of Binding<AnySelectionManager>(v178, &v200, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, MEMORY[0x1E69E6720]);
              outlined consume of ResolvedSubviewsSizingOptions?(v128, v167, v166);
              specialized UICollectionViewListCoordinatorBase.subviewsSizingOptions.didset(v178);
              _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0(v178, &lazy cache variable for type metadata for ResolvedSubviewsSizingOptions?, &type metadata for ResolvedSubviewsSizingOptions, v132);

              outlined init with copy of UpdateCollectionViewTableCoordinator(v131, &v191);
              v133 = AGGraphGetOutputValue();
              if (v133)
              {
                v134 = *v133;
                outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
                outlined init with copy of UpdateCollectionViewTableCoordinator(v131, v190);
                type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69DBD30], type metadata accessor for CVarArg);
                v135 = AGGraphGetValue();
                outlined init with copy of IntelligenceAppIntentsDataSourcePayloadProviding?(v135, &v200);
                outlined destroy of UpdateCollectionViewTableCoordinator(v190);
                v136 = *((*MEMORY[0x1E69E7D40] & *v134) + 0x178);
                swift_beginAccess();
                outlined assign with take of IntelligenceAppIntentsDataSourcePayloadProviding?(&v200, v134 + v136);
                swift_endAccess();

                Strong = swift_unknownObjectWeakLoadStrong();
                if (!Strong)
                {
LABEL_41:
                  outlined destroy of TableRowList(v227);
                  _s7SwiftUI7BindingVyAA27AnyTableColumnCustomizationVGWOhTm_0((v131 + 6), &lazy cache variable for type metadata for TableDataSourceAdaptor?, &type metadata for TableDataSourceAdaptor, MEMORY[0x1E69E6720]);
                  v142 = v189[0];
                  v131[14] = v188;
                  v131[15] = v142;
                  *(v131 + 251) = *(v189 + 11);
                  v143 = v185;
                  v131[10] = v184;
                  v131[11] = v143;
                  v144 = v187;
                  v131[12] = v186;
                  v131[13] = v144;
                  v145 = v181;
                  v131[6] = v180;
                  v131[7] = v145;
                  v146 = v183;
                  v131[8] = v182;
                  v131[9] = v146;
                  __swift_destroy_boxed_opaque_existential_1(v224);
                  return;
                }

                v138 = Strong;
                outlined init with copy of UpdateCollectionViewTableCoordinator(v131, &v191);
                v139 = AGGraphGetOutputValue();
                if (v139)
                {
                  v140 = *v139;
                  outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
                  AGGraphClearUpdate();
                  outlined init with copy of UpdateCollectionViewTableCoordinator(v131, v190);
                  v141 = *AGGraphGetValue();

                  outlined destroy of UpdateCollectionViewTableCoordinator(v190);
                  AGGraphSetUpdate();
                  specialized UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(v138, &v180, v141, v159 & 1);

                  goto LABEL_41;
                }

                __break(1u);
                goto LABEL_49;
              }

LABEL_47:
              __break(1u);
            }

LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  if (!OutputValue || v14)
  {
    *&v180 = MEMORY[0x1E69E7CC0];
    v36 = v225;
    v37 = v226;
    __swift_project_boxed_opaque_existential_1(v224, v225);
    TableColumnList.visitAll<A>(applying:)(&v180, v36, &type metadata for MakeCellFormulas, v37, &protocol witness table for MakeCellFormulas);
    v38 = v180;
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
    type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    v39 = AGGraphGetValue();
    v40 = *v39;
    v41 = v39[1];
    v42 = v39[2];
    v43 = v39[3];
    outlined copy of Binding<AnyTableColumnCustomization>?(*v39, v41);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
    if (v41)
    {
      *&v191 = v40;
      *(&v191 + 1) = v41;
      *&v192 = v42;
      *(&v192 + 1) = v43;
      type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
      MEMORY[0x18D00ACC0](v190);
      v44 = v190[0];
      v45 = v190[1];
    }

    else
    {
      v44 = 0;
      v45 = 0;
    }

    v160 = _s7SwiftUI27AnyTableColumnCustomizationV15arrangedColumns_13customization13includeHidden17defaultVisibility2idSayxGq__ACSgSbAA0M0OxXEAA0deF2IDVxXEt7ElementQy_RszSlR_r0_lFZAA0D11CellFormulaV_SayARGTt4g5(v38, v44, v45, 0, specialized implicit closure #5 in UpdateCollectionViewTableCoordinator.updateValue(), 0, specialized implicit closure #6 in UpdateCollectionViewTableCoordinator.updateValue(), 0);
    outlined consume of AttributedTextFormatting.Constraints?(v44);

    v19 = v162;
LABEL_15:
    outlined init with copy of TableRowList(v227, v199);
    outlined init with copy of _Benchmark(v224, v198);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
    LODWORD(v46) = UpdateCollectionViewTableCoordinator.hasMultipleSelection.getter();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v191);
    _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<[SwiftUIAnySortComparator]>?, type metadata accessor for Binding<[SwiftUIAnySortComparator]>, MEMORY[0x1E69E6720]);
    v47 = AGGraphGetValue();
    v48 = *v47;
    v49 = v47[2];
    v156 = v47[1];
    v157 = v48;
    v155 = v49;
    outlined copy of Binding<[SwiftUIAnySortComparator]>?(v48, v156);
    outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, v190);
    type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>?, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization);
    v50 = AGGraphGetValue();
    v51 = *v50;
    v52 = v50[1];
    v54 = v50[2];
    v53 = v50[3];
    outlined copy of Binding<AnyTableColumnCustomization>?(*v50, v52);
    outlined destroy of UpdateCollectionViewTableCoordinator(v190);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v180);
    v154 = *AGGraphGetValue();
    outlined destroy of UpdateCollectionViewTableCoordinator(&v180);
    outlined init with copy of UpdateCollectionViewTableCoordinator(v1, v178);
    v153 = *AGGraphGetValue();
    outlined destroy of UpdateCollectionViewTableCoordinator(v178);
    outlined init with copy of _Benchmark(v198, &v200);
    BYTE8(v202) = 0;
    if (v52)
    {
      v149 = v3;
      v152 = v46;
      *&v169 = v51;
      *(&v169 + 1) = v52;
      *&v170 = v54;
      *(&v170 + 1) = v53;
      type metadata accessor for MutableBox<UInt32>(0, &lazy cache variable for type metadata for Binding<AnyTableColumnCustomization>, &type metadata for AnyTableColumnCustomization, MEMORY[0x1E6981948]);
      v56 = v55;

      MEMORY[0x18D00ACC0](v168, v56);
      v57 = v168[0];
      v58 = v168[1];
      v148 = v53;

      v150 = v52;

      v151 = v51;

      v59 = outlined init with copy of TableColumnCollection(&v200, &v169);
      MEMORY[0x1EEE9AC00](v59);
      v147[-8] = specialized implicit closure #2 in TableDataSourceAdaptor.init(rowList:columnList:cellFormulas:hasMultipleSelection:sortOrder:columnCustomization:showsFirstColumnOnly:tableColumnHeadersVisibility:accessibilityEnabled:);
      v147[-7] = 0;
      LOBYTE(v147[-6]) = 0;
      v147[1] = v57;
      v147[-5] = v57;
      v147[-4] = v58;
      v147[-3] = specialized implicit closure #1 in TableDataSourceAdaptor.init(rowList:columnList:cellFormulas:hasMultipleSelection:sortOrder:columnCustomization:showsFirstColumnOnly:tableColumnHeadersVisibility:accessibilityEnabled:);
      v147[-2] = 0;
      v60 = specialized Sequence.compactMap<A>(_:)(&v169, partial apply for specialized closure #1 in static AnyTableColumnCustomization.arrangedColumns<A, B>(_:customization:includeHidden:defaultVisibility:id:), &v147[-10]);
      outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(&v169, &lazy cache variable for type metadata for EnumeratedSequence<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E6E48]);
      *&v169 = v60;
      v147[2] = v58;
      if (v58)
      {

        specialized MutableCollection<>.sort(by:)(&v169, v58, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry, specialized _ArrayBuffer._consumeAndCreateNew(), specialized UnsafeMutableBufferPointer._stableSortImpl(by:));

        v60 = v169;
      }

      v61 = v149;
      v149 = v54;
      v62 = v60[2];
      if (v62)
      {
        v168[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
        v63 = v168[0];
        v64 = *(v61 + 80);
        v147[0] = v60;
        v65 = v60 + ((v64 + 32) & ~v64);
        v66 = *(v61 + 72);
        v67 = v158;
        do
        {
          v68 = v166;
          outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v65, v166, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
          v69 = v68;
          v70 = v164;
          outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v69, v164, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
          v71 = *(v167 + 48);
          v72 = v70 + *(v167 + 64);
          outlined consume of TableColumnCustomizationID.Base(*v72, *(v72 + 8), *(v72 + 16), *(v72 + 24), *(v72 + 32));
          _s7SwiftUI16TableCellFormulaVWObTm_0(v70 + v71, v67, type metadata accessor for TableColumnCollection.Entry);
          v168[0] = v63;
          v74 = *(v63 + 16);
          v73 = *(v63 + 24);
          if (v74 >= v73 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1);
            v67 = v158;
            v63 = v168[0];
          }

          *(v63 + 16) = v74 + 1;
          _s7SwiftUI16TableCellFormulaVWObTm_0(v67, v63 + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v74, type metadata accessor for TableColumnCollection.Entry);
          v65 += v66;
          --v62;
        }

        while (v62);

        v19 = v162;
        v1 = v163;
        v75 = v160;
      }

      else
      {

        v75 = v160;
        v63 = MEMORY[0x1E69E7CC0];
      }

      *&v172[0] = v63;
      BYTE8(v173) = 1;
      v35 = MEMORY[0x1E69E7D40];
      v76 = v159;
      LOBYTE(v46) = v152;
      v52 = v150;
      v51 = v151;
      v53 = v148;
      v54 = v149;
      if (!v159)
      {
        goto LABEL_29;
      }
    }

    else
    {
      outlined init with copy of TableColumnCollection(&v200, v172);
      v35 = MEMORY[0x1E69E7D40];
      v76 = v159;
      v75 = v160;
      if (!v159)
      {
        goto LABEL_29;
      }
    }

    v77 = v53;
    v78 = v54;
    v79 = v52;
    v80 = v76;
    v81 = v46;
    v46 = v51;
    v82 = Array<A>.withResolvedOffsets.getter(v75);

    v75 = v82;
    v51 = v46;
    LOBYTE(v46) = v81;
    v76 = v80;
    v52 = v79;
    v54 = v78;
    v53 = v77;
    v19 = v162;
    v35 = MEMORY[0x1E69E7D40];
LABEL_29:
    *&v174 = v75;
    outlined init with copy of TableRowList(v199, v168);
    TableSections.init(list:)(v168, &v169);
    outlined destroy of TableColumnCollection(&v200);
    __swift_destroy_boxed_opaque_existential_1(v198);
    outlined destroy of TableRowList(v199);
    BYTE8(v174) = v46 & 1;
    *&v175 = v157;
    *(&v175 + 1) = v156;
    *&v176 = v155;
    *(&v176 + 1) = v51;
    *&v177[0] = v52;
    *(&v177[0] + 1) = v54;
    *&v177[1] = v53;
    BYTE8(v177[1]) = v154;
    BYTE10(v177[1]) = v76;
    BYTE9(v177[1]) = v153;
    v204 = v172[1];
    v205 = v173;
    v200 = v169;
    v201 = v170;
    v203 = v172[0];
    v202 = v171;
    v208 = v176;
    v209[0] = v177[0];
    *(v209 + 11) = *(v177 + 11);
    v207 = v175;
    v206 = v174;
    if (!AGGraphGetOutputValue())
    {
      outlined init with copy of TableDataSourceAdaptor(&v200, v190);
      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v210);
      type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager);
      v83 = AGGraphGetValue();
      outlined init with copy of Binding<AnySelectionManager>?(v83, v178, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      outlined destroy of UpdateCollectionViewTableCoordinator(&v210);
      outlined init with copy of UpdateCollectionViewTableCoordinator(v1, &v191);
      type metadata accessor for Binding<EditMode>?(0, &lazy cache variable for type metadata for Binding<EditMode>?, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode);
      v84 = AGGraphGetValue();
      v85 = *v84;
      v86 = *(v84 + 8);
      v87 = *(v84 + 16);
      outlined copy of Binding<Int>?(*v84, v86);
      outlined destroy of UpdateCollectionViewTableCoordinator(&v191);
      v88 = objc_allocWithZone(v19);
      *(v88 + *((*MEMORY[0x1E69E7D40] & *v88) + 0x348)) = 0;
      outlined init with copy of TableDataSourceAdaptor(v190, &v180);
      outlined init with copy of Binding<AnySelectionManager>?(v178, &v169, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      v89 = v86;
      v35 = MEMORY[0x1E69E7D40];
      v90 = v87;
      v1 = v163;
      v91 = specialized UICollectionViewListCoordinatorBase.init(dataSource:selection:editMode:transaction:)(&v180, &v169, v85, v89, v90, 1);
      outlined destroy of Binding<AnySelectionManager>?(v178, &lazy cache variable for type metadata for Binding<AnySelectionManager>?, &lazy cache variable for type metadata for Binding<AnySelectionManager>, &type metadata for AnySelectionManager, type metadata accessor for Binding<EditMode>?);
      outlined destroy of TableDataSourceAdaptor(v190);
      *&v210 = v91;
      AGGraphSetOutputValue();
    }

    v159 = (AGGraphGetOutputValue() == 0) | v161;
    v188 = v208;
    v189[0] = v209[0];
    *(v189 + 11) = *(v209 + 11);
    v184 = v204;
    v185 = v205;
    v186 = v206;
    v187 = v207;
    v180 = v200;
    v181 = v201;
    v182 = v202;
    v183 = v203;
    goto LABEL_32;
  }

  if (*(v1 + 120))
  {
    v160 = *(v1 + 192);

    goto LABEL_15;
  }

LABEL_50:
  __break(1u);
}

uint64_t specialized implicit closure #6 in UpdateCollectionViewTableCoordinator.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for TableCellFormula() + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  result = outlined copy of TableColumnCustomizationID.Base(*v3, v5, v6, v7, v8);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t key path getter for ListUpdate.inverse : <A>ListUpdate<A.SectionIDs.Index, Int>@<X0>(char *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for ListUpdate();
  return ListUpdate.inverse.getter(v2, a1);
}

unint64_t *specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(unint64_t *result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v5 = *(v4 + 40);
  if (*(v5 + 16) <= a3)
  {
LABEL_49:
    __break(1u);
    return result;
  }

  v6 = *(a2 + 16);
  if (!v6)
  {
    goto LABEL_47;
  }

  v7 = *(v5 + 96 * a3 + 112);
  v8 = a2 + 40 * v6 + 8;
  while (1)
  {
    v9 = *(v8 - 16);
    v10 = *(v8 - 8);
    v11 = *(v8 + 16);
    if (v11 == 3)
    {
      if (v9 == a3)
      {
        v17 = a4 >= v10 && v7 < a4;
        a4 -= v17;
      }

      goto LABEL_6;
    }

    if (v11 != 4)
    {
      break;
    }

    if (v9 == a3 && a4 >= v10 && __OFADD__(a4++, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

LABEL_6:
    v8 -= 40;
    if (!--v6)
    {
      goto LABEL_47;
    }
  }

  if (v11 != 5)
  {
    goto LABEL_6;
  }

  v13 = *v8;
  v12 = *(v8 + 8);
  if (v9 == a3)
  {
    if (v10 == a4)
    {
      a4 = *(v8 + 8);
      a3 = *v8;
      goto LABEL_6;
    }

    v20 = v10 < a4 && v7 < a4;
    v18 = a4 - v20;
    if (v12 >= v10)
    {
      goto LABEL_39;
    }

LABEL_30:
    if (v13 != a3)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

  v18 = a4;
  if (v13 != a3)
  {
    goto LABEL_6;
  }

  if (v12 < v10)
  {
    goto LABEL_30;
  }

LABEL_39:
  if (v13 != a3)
  {
LABEL_5:
    a4 = v18;
    goto LABEL_6;
  }

  if (v9 == a3)
  {
    if (v12 < a4)
    {
      goto LABEL_44;
    }

    goto LABEL_5;
  }

LABEL_43:
  if (a4 < v12)
  {
    goto LABEL_5;
  }

LABEL_44:
  a4 = v18 + 1;
  if (!__OFADD__(v18, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
LABEL_47:
  *result = a3;
  return a4;
}

unint64_t *specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  v6 = *(v5 + 40);
  if (*(v6 + 16) > a4)
  {
    v7 = *(a2 + 16);
    v8 = *(a3 + 16);
    v9 = v7 == 0;
    if (!(v7 | v8))
    {
LABEL_4:
      *result = a4;
      return a5;
    }

    v10 = 0;
    v11 = *(v6 + 96 * a4 + 112);
    v12 = a2 + 32;
    v13 = a3 + 32;
    while (1)
    {
      if (v9)
      {
        if (v10 >= v8)
        {
          goto LABEL_64;
        }

        if (__OFADD__(v10, 1))
        {
          goto LABEL_66;
        }

        v15 = (v13 + 40 * v10);
        v9 = 1;
        ++v10;
      }

      else
      {
        if (v10 >= v7)
        {
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v16 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_65;
        }

        v15 = (v12 + 40 * v10);
        v9 = v16 == v7;
        if (v16 == v7)
        {
          v10 = 0;
        }

        else
        {
          ++v10;
        }
      }

      v17 = *(v15 + 32);
      v18 = *v15;
      v19 = v15[1];
      if (v17 == 3)
      {
        if (v18 == a4)
        {
          v25 = a5 >= v19 && v11 < a5;
          a5 -= v25;
        }

        goto LABEL_7;
      }

      if (v17 != 4)
      {
        break;
      }

      if (v18 == a4 && a5 >= v19 && __OFADD__(a5++, 1))
      {
        goto LABEL_67;
      }

LABEL_7:
      if (v10 == v8 && v9)
      {
        goto LABEL_4;
      }
    }

    if (v17 != 5)
    {
      goto LABEL_7;
    }

    v21 = v15[2];
    v20 = v15[3];
    if (v18 == a4)
    {
      if (v19 == a5)
      {
        a5 = v15[3];
        a4 = v15[2];
        goto LABEL_7;
      }

      v29 = v19 < a5 && v11 < a5;
      v26 = a5 - v29;
      if (v20 >= v19)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v26 = a5;
      if (v21 != a4)
      {
        goto LABEL_7;
      }

      if (v20 >= v19)
      {
LABEL_57:
        if (v21 == a4)
        {
          if (v18 == a4)
          {
            if (v20 < a5)
            {
              goto LABEL_47;
            }
          }

          else if (a5 >= v20)
          {
            goto LABEL_47;
          }
        }

LABEL_6:
        a5 = v26;
        goto LABEL_7;
      }
    }

    if (v21 == a4 && a5 >= v20)
    {
LABEL_47:
      a5 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_70;
      }

      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return a2;
  }

  for (i = a1 + 40 * v2; ; i -= 40)
  {
    v5 = *(i - 8);
    v6 = *(i + 24);
    if (!*(i + 24))
    {
      v12 = a2 > 0 && a2 >= v5;
      result = a2 - v12;
      goto LABEL_4;
    }

    if (v6 == 1)
    {
      break;
    }

    if (v6 != 2)
    {
      goto LABEL_3;
    }

    result = *i;
    if (v5 != a2)
    {
      v7 = a2 > 0 && v5 < a2;
      v8 = v7;
      v9 = a2 - v8;
      v10 = result >= v5 ? result < a2 : a2 >= result;
      result = v9;
      if (v10)
      {
        result = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_34;
        }
      }
    }

LABEL_4:
    a2 = result;
    if (!--v2)
    {
      return result;
    }
  }

  if (a2 < v5)
  {
LABEL_3:
    result = a2;
    goto LABEL_4;
  }

  result = a2 + 1;
  if (!__OFADD__(a2, 1))
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return a2;
}

uint64_t _s7SwiftUI23ShadowSectionCollectionVyACyxGAA0C18ListUpdateRecorderVyxGcfCAA22TableDataSourceAdaptorV_Tt1g5@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, a2, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  v5 = *(a1[5] + 16);
  v7 = a1[22];
  v6 = a1[23];
  v8 = *(v6 + 16);
  v9 = *(v7 + 16);
  LOBYTE(v10) = v8 == 0;
  if (!(v8 | v9))
  {
LABEL_2:

    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(a1, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);

    *(a2 + 192) = v5;
    return result;
  }

  v11 = 0;
  while (1)
  {
    if (v10)
    {
      if (v11 >= v9)
      {
        goto LABEL_23;
      }

      if (__OFADD__(v11, 1))
      {
        goto LABEL_26;
      }

      v14 = (v7 + 64 + 40 * v11);
      v10 = 1;
      ++v11;
    }

    else
    {
      if (v11 >= v8)
      {
        goto LABEL_24;
      }

      v15 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_25;
      }

      v14 = (v6 + 64 + 40 * v11);
      v10 = v15 == v8;
      if (v15 == v8)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }
    }

    v16 = *v14;
    if (v16 != 1)
    {
      break;
    }

    v12 = __OFADD__(v5++, 1);
    if (v12)
    {
      goto LABEL_27;
    }

LABEL_5:
    if (v11 == v9 && v10)
    {
      goto LABEL_2;
    }
  }

  if (v16)
  {
    goto LABEL_5;
  }

  v12 = __OFSUB__(v5--, 1);
  if (!v12)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t _s7SwiftUI19ShadowRowCollectionV_7sectionACyxGAA0C18ListUpdateRecorderVyxG_10SectionIDs_5IndexQZtcfCAA22TableDataSourceAdaptorV_Tt2g5@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, a3, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);
  *(a3 + 224) = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  v7 = a1[5];
  if (*(v7 + 16) <= a2)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  else
  {
    v8 = v7 + 96 * a2;
    result = *(v8 + 96);
    v9 = *(v8 + 104);
    v10 = *(v8 + 112);
    v11 = *(v8 + 120);
    *(a3 + 192) = result;
    *(a3 + 200) = v9;
    *(a3 + 208) = v10;
    *(a3 + 216) = v11;
    v13 = a1[22];
    v12 = a1[23];
    v14 = *(v12 + 16);
    v15 = *(v13 + 16);
    LOBYTE(v16) = v14 == 0;
    if (v14 | v15)
    {
      v17 = 0;
      do
      {
        if (v16)
        {
          if (v17 >= v15)
          {
            goto LABEL_41;
          }

          if (__OFADD__(v17, 1))
          {
            goto LABEL_44;
          }

          v20 = v13 + 32 + 40 * v17;
          v16 = 1;
          ++v17;
        }

        else
        {
          if (v17 >= v14)
          {
            goto LABEL_42;
          }

          v21 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            goto LABEL_43;
          }

          v20 = v12 + 32 + 40 * v17;
          v16 = v21 == v14;
          if (v21 == v14)
          {
            v17 = 0;
          }

          else
          {
            ++v17;
          }
        }

        v22 = *(v20 + 32);
        v23 = *v20;
        if (v22 == 5)
        {
          v25 = *(v20 + 16);
          if (v23 == a2)
          {
            if (v25 != a2)
            {
              v24 = __OFSUB__(v11--, 1);
              if (v24)
              {
                goto LABEL_48;
              }
            }
          }

          else if (v25 == a2)
          {
            v24 = __OFADD__(v11++, 1);
            if (v24)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v22 == 4)
        {
          if (v23 == a2)
          {
            v24 = __OFADD__(v11++, 1);
            if (v24)
            {
              goto LABEL_45;
            }
          }
        }

        else if (v22 == 3 && v23 == a2)
        {
          v24 = __OFSUB__(v11--, 1);
          if (v24)
          {
            __break(1u);
LABEL_41:
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
            goto LABEL_47;
          }
        }
      }

      while (v17 != v15 || !v16);
    }

    outlined copy of ResolvedTableRowIDs.Storage(result, v9);

    outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(a1, &lazy cache variable for type metadata for ShadowListUpdateRecorder<TableDataSourceAdaptor>, lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor, &type metadata for TableDataSourceAdaptor, type metadata accessor for ShadowListUpdateRecorder);

    *(a3 + 232) = v11;
  }

  return result;
}

void specialized ShadowRowCollection.endIndex.getter()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  else
  {
    v5 = v0[22];
    v4 = v0[23];
    if (*(v4 + 16) | *(v5 + 16))
    {
      v6 = v0[28];

      specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v7, v4, v5, v6, v3);
    }
  }
}

uint64_t specialized ShadowRowCollection.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = v2[28];
  v7 = v2[22];
  v6 = v2[23];
  if (*(v6 + 16) | *(v7 + 16))
  {
    MEMORY[0x1EEE9AC00](result);
    lazy protocol witness table accessor for type TableDataSourceAdaptor and conformance TableDataSourceAdaptor();
    swift_getKeyPath();

    updated = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(v6, v7);

    v3 = specialized ShadowListUpdateRecorder.applyUpdates<A>(_:to:)(&v17, updated, v5, v3);

    v5 = v17;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v2[5];
  if (v5 >= *(v9 + 16))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9 + 96 * v5;
  v13 = *(v10 + 96);
  v11 = v10 + 96;
  v12 = v13;
  v14 = *(v11 + 16);
  v15 = v3 - v14;
  if (__OFSUB__(v3, v14))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v11 + 8) == 1)
  {
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < v12[2])
      {
        return outlined init with copy of TableRowID(&v12[6 * v15 + 4], a2);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v16 = *(*v12 + 104);

  v16(v15);
  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v12, 0);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, MEMORY[0x1E6969C28]);
}

{
  return specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for ToolbarStorage.Entry);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a4, a5);
  v9 = *(*(v8 - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

unint64_t *specialized closure #2 in implicit closure #1 in UICollectionViewListCoordinator.update(_:to:transaction:performDiff:)(unint64_t *result, uint64_t a2)
{
  v2 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *(a2 + 40);
  if (v2 >= *(v3 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3 + 96 * v2;
  v5 = *(v4 + 112);
  v6 = *(v4 + 120);
  v7 = __OFADD__(v5, v6);
  v8 = v5 + v6;
  if (!v7)
  {
    return (v5 != v8);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #1 in UICollectionViewListCoordinatorBase.pendingSelection.didset@<X0>(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1 + *((*MEMORY[0x1E69E7D40] & *a1) + 0x110);
  result = swift_beginAccess();
  v5 = *(v3 + 1);
  if (v5)
  {
    result = dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  *a2 = v5 == 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator()
{
  result = lazy protocol witness table cache variable for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator;
  if (!lazy protocol witness table cache variable for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdateCollectionViewTableCoordinator and conformance UpdateCollectionViewTableCoordinator);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CollectionViewListScrollable<TableDataSourceAdaptor, AnySelectionManager> and conformance CollectionViewListScrollable<A, B>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UICollectionViewListCoordinator<TableDataSourceAdaptor, AnySelectionManager>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Binding<EditMode>?(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for MutableBox<UInt32>(255, a3, a4, MEMORY[0x1E6981948]);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF7SwiftUI22ConcatenatedCollectionVySayAF10ListUpdateOyS2iGGALG_AKs5NeverOTB503_s7d10UI24ShadowhI95RecorderV12initialIndexy10SectionIDs_0H0QZAGFAA0dE0OyAGSiGAJcfu_AA22TableDataSourceAdaptorV_TG5s7KeyPathCyA2KGTf1cn_nTf4ng_nTm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2 == 0;
  v17 = *(a2 + 16);
  v4 = specialized Collection.distance(from:to:)(0, v2 == 0, v17, 1, a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v21 = MEMORY[0x1E69E7CC0];
  v7 = v4 & ~(v4 >> 63);
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v5 = v21;
  if (v2)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
LABEL_6:
    v9 = 0;
    while (v7)
    {
      if (v3)
      {
        if (v9 >= v17)
        {
          goto LABEL_27;
        }
      }

      else if (v9 >= v2)
      {
        goto LABEL_28;
      }

      result = swift_getAtKeyPath();
      v10 = v18;
      v11 = v19;
      v13 = *(v21 + 16);
      v12 = *(v21 + 24);
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v19;
        v10 = v18;
      }

      *(v21 + 16) = v13 + 1;
      v14 = v21 + 40 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      *(v14 + 64) = v20;
      v16 = __OFADD__(v9++, 1);
      if (v3)
      {
        if (v16)
        {
          goto LABEL_30;
        }

        v3 = 1;
      }

      else
      {
        if (v16)
        {
          goto LABEL_29;
        }

        v3 = v9 == v2;
        if (v9 == v2)
        {
          v9 = 0;
        }
      }

      --v7;
      if (!--v6)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, void *a2, void *a3, size_t *a4)
{
  v46 = a4;
  v7 = type metadata accessor for IndexPath();
  v41 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - v11;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v13)
  {
    v14 = 0;
    v42 = (a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x108));
    v43 = v13;
    v50 = a1 & 0xC000000000000001;
    v48 = (v41 + 8);
    v49 = a1 & 0xFFFFFFFFFFFFFF8;
    v39[1] = v41 + 32;
    v40 = (v41 + 16);
    v44 = a2;
    v47 = v12;
    do
    {
      if (v50)
      {
        v15 = MEMORY[0x18D00E9C0](v14, a1, v10);
      }

      else
      {
        if (v14 >= *(v49 + 16))
        {
          goto LABEL_29;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      a3 = v15;
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        v13 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      v17 = [a2 indexPathForCell_];
      if (v17)
      {
        v18 = v17;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        swift_getObjectType();
        v19 = swift_conformsToProtocol2();
        if (v19 && a3)
        {
          v20 = v19;
          v21 = v7;
          v22 = a1;
          ObjectType = swift_getObjectType();
          v24 = *(v20 + 128);
          a3 = a3;
          v25 = COERCE_DOUBLE(v24(ObjectType, v20));
          v28 = *v42;
          a1 = v22;
          if (v29)
          {
            if ((v42[1] & 1) == 0)
            {
              goto LABEL_20;
            }

LABEL_19:
            v7 = v21;
            v12 = v47;
            (*v48)();
          }

          else
          {
            if ((v42[1] & 1) == 0)
            {
              v26.n128_f64[0] = *v42;
              v27.n128_f64[0] = v25;
              if (v25 == v28)
              {
                goto LABEL_19;
              }
            }

LABEL_20:
            (*(v20 + 136))(COERCE_DOUBLE(*&v28), v26, v27);
            v7 = v21;
            (*v40)(v45, v47, v21);
            v30 = v46;
            v31 = *v46;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v30 = v31;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
              *v46 = v31;
            }

            v34 = v31[2];
            v33 = v31[3];
            v12 = v47;
            if (v34 >= v33 >> 1)
            {
              v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33 > 1, v34 + 1, 1, v31);
              *v46 = v38;
            }

            v35 = v41;
            (*(v41 + 8))(v12, v7);
            v36 = v45;
            v37 = *v46;
            *(v37 + 16) = v34 + 1;
            (*(v35 + 32))(v37 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v36, v7);
          }

          v13 = v43;
          a2 = v44;
          goto LABEL_6;
        }

        (*v48)(v12, v7);
      }

LABEL_6:

      ++v14;
    }

    while (v16 != v13);
  }
}

void *specialized Sequence.compactMap<A>(_:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v70 = a3;
  v61 = a2;
  type metadata accessor for (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)?(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)?, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v47 - v5;
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
  v60 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v49 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v47 - v11;
  _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0(0, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v57 = &v47 - v13;
  v56 = type metadata accessor for TableColumnCollection.Visitor(0);
  MEMORY[0x1EEE9AC00](v56);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for TableColumnCollection.Entry(0);
  v16 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (offset: Int, element: TableColumnCollection.Entry)(0, &lazy cache variable for type metadata for (offset: Int, element: TableColumnCollection.Entry), type metadata accessor for TableColumnCollection.Entry);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v59 = (&v47 - v21);
  outlined init with copy of ListBatchUpdates<TableDataSourceAdaptor>(a1, v67, &lazy cache variable for type metadata for EnumeratedSequence<TableColumnCollection>, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E6E48]);
  v22 = 0;
  v68 = 0;
  v69 = 0;
  v54 = (v16 + 56);
  v51 = v16;
  v53 = (v16 + 48);
  v23 = v15;
  v48 = v8;
  v58 = (v8 + 48);
  v50 = MEMORY[0x1E69E7CC0];
  v52 = v20;
  while (1)
  {
    outlined init with copy of TableColumnCollection.Backing(v67, v65);
    if (v66)
    {
      v24 = *(*&v65[0] + 16);

      if (v22 == v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v65, v62);
      v25 = v63;
      v26 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v27 = (*(v26 + 8))(v25, v26);
      __swift_destroy_boxed_opaque_existential_1(v62);
      if (v22 == v27)
      {
LABEL_22:
        outlined destroy of ShadowListUpdateRecorder<TableDataSourceAdaptor>(v67, &lazy cache variable for type metadata for EnumeratedSequence<TableColumnCollection>.Iterator, lazy protocol witness table accessor for type TableColumnCollection and conformance TableColumnCollection, &type metadata for TableColumnCollection, MEMORY[0x1E69E6E40]);
        return v50;
      }
    }

    result = outlined init with copy of TableColumnCollection.Backing(v67, v65);
    if (v66)
    {
      if (v22 >= *(*&v65[0] + 16))
      {
        goto LABEL_24;
      }

      _s7SwiftUI21TableColumnCollectionV5EntryVWOcTm_0(*&v65[0] + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v22, v18, type metadata accessor for TableColumnCollection.Entry);
    }

    else
    {
      v29 = v6;
      v30 = v18;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v65, v62);
      v31 = v56;
      v32 = *(v56 + 20);
      v33 = v55;
      (*v54)(v23 + v32, 1, 1, v55);
      *v23 = v22;
      v34 = v63;
      v35 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      TableColumnList.visitColumns<A>(applying:from:)(v23, v22, v34, v31, v35, &protocol witness table for TableColumnCollection.Visitor);
      v36 = v57;
      outlined init with copy of Binding<AnySelectionManager>?(v23 + v32, v57, &lazy cache variable for type metadata for TableColumnCollection.Entry?, type metadata accessor for TableColumnCollection.Entry, MEMORY[0x1E69E6720], _s7SwiftUI16BridgedListStateV12ScrollTargetVSgMaTm_0);
      result = (*v53)(v36, 1, v33);
      if (result == 1)
      {
        goto LABEL_25;
      }

      outlined destroy of BridgedListState(v23, type metadata accessor for TableColumnCollection.Visitor);
      v18 = v30;
      _s7SwiftUI16TableCellFormulaVWObTm_0(v36, v30, type metadata accessor for TableColumnCollection.Entry);
      __swift_destroy_boxed_opaque_existential_1(v62);
      v6 = v29;
      v20 = v52;
    }

    outlined init with copy of TableColumnCollection.Backing(v67, v65);
    if (v66)
    {
      v37 = *(*&v65[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v65, v62);
      v38 = v63;
      v39 = v64;
      __swift_project_boxed_opaque_existential_1(v62, v63);
      v37 = (*(v39 + 8))(v38, v39);
      result = __swift_destroy_boxed_opaque_existential_1(v62);
    }

    if (v22 >= v37)
    {
      break;
    }

    v40 = v22 + 1;
    v68 = v22 + 1;
    v41 = *(v20 + 48);
    v42 = v59;
    *v59 = v22;
    _s7SwiftUI16TableCellFormulaVWObTm_0(v18, v42 + v41, type metadata accessor for TableColumnCollection.Entry);
    v69 = v22 + 1;
    v61(v22, v42 + v41);
    outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v42, &lazy cache variable for type metadata for (offset: Int, element: TableColumnCollection.Entry), type metadata accessor for TableColumnCollection.Entry, type metadata accessor for (offset: Int, element: TableColumnCollection.Entry));
    if ((*v58)(v6, 1, v60) == 1)
    {
      outlined destroy of (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)?(v6, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)?, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
      ++v22;
    }

    else
    {
      v43 = v47;
      outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v6, v47, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
      outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v43, v49, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50[2] + 1, 1, v50);
      }

      v45 = v50[2];
      v44 = v50[3];
      if (v45 >= v44 >> 1)
      {
        v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1, v50);
      }

      v46 = v50;
      v50[2] = v45 + 1;
      outlined init with take of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v49, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v45, &lazy cache variable for type metadata for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID), type metadata accessor for TableColumnCollection.Entry);
      v22 = v40;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

id specialized UICollectionViewListCoordinator.layoutConfiguration(hasGlobalHeader:)(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC810]) init];
  v12 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v3 = objc_opt_self();
    v4 = [v3 fractionalWidthDimension_];
    v5 = [v3 estimatedDimension_];
    v6 = [objc_opt_self() sizeWithWidthDimension:v4 heightDimension:v5];

    v7 = MEMORY[0x18D00C850](0xD000000000000011, 0x800000018CD4D770);
    v8 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v6 elementKind:v7 alignment:1];

    [v8 setZIndex_];
    [v8 setPinToVisibleBounds_];
    [v8 setExtendsBoundary_];
    v9 = v8;
    MEMORY[0x18D00CC30]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setBoundarySupplementaryItems_];

  return v2;
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, unint64_t *a6, void (*a7)(uint64_t), uint64_t (*a8)(void *), uint64_t (*a9)(void *))
{
  v114 = a8;
  v10 = v9;
  v118 = a6;
  v119 = a7;
  type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a6, a7);
  v116 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v111 = (&v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v112 = &v104 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v104 - v24);
  v27 = *(v26 + 72);
  if (!v27)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_115;
  }

  v28 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v27 != -1)
  {
    v113 = a3;
    v29 = (a2 - a1) / v27;
    v122 = a1;
    v121 = a4;
    if (v29 < v28 / v27)
    {
      v30 = v29 * v27;
      if (a4 < a1 || a1 + v30 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v112 = (a4 + v30);
      v120 = a4 + v30;
      if (v30 >= 1 && a2 < v113)
      {
        v110 = v27;
        v111 = v22;
        v109 = a5 + 32;
        v115 = a5;
        while (1)
        {
          v36 = v118;
          v35 = v119;
          outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(a2, v25, v118, v119);
          v37 = v36;
          v38 = v111;
          v39 = outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(a4, v111, v37, v35);
          MEMORY[0x1EEE9AC00](v39);
          *(&v104 - 2) = v25;
          *(&v104 - 1) = v38;
          v40 = specialized Collection.firstIndex(where:)(v114, (&v104 - 4), a5);
          v117 = v10;
          if ((v41 & 1) == 0)
          {
            break;
          }

          v42 = *v25;
          v43 = v38;
          v45 = v118;
          v44 = v119;
          v46 = a2;
          v47 = *v43;
          outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v43, v118, v119, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
          outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v25, v45, v44, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
          v48 = v42 < v47;
          a2 = v46;
          if (v48)
          {
            goto LABEL_45;
          }

LABEL_51:
          v65 = v110;
          v69 = a4 + v110;
          if (a1 < a4 || a1 >= v69)
          {
            swift_arrayInitWithTakeFrontToBack();
            v10 = v117;
          }

          else
          {
            v10 = v117;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v121 = v69;
          a4 += v65;
LABEL_58:
          a5 = v115;
          a1 += v65;
          v122 = a1;
          if (a4 >= v112 || a2 >= v113)
          {
            goto LABEL_109;
          }
        }

        if ((v40 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        if (v40 >= *(a5 + 16))
        {
          goto LABEL_111;
        }

        v49 = v109 + 40 * v40;
        v50 = *v49;
        v51 = *(v49 + 8);
        v52 = v25 + *(v116 + 64);
        v53 = *v52;
        v54 = *(v52 + 1);
        if (*(v49 + 32))
        {
          if (v52[32])
          {
            v56 = *(v49 + 16);
            v55 = *(v49 + 24);
            v57 = *(v52 + 2);
            v58 = *(v52 + 3);
            v59 = v50 == v53 && v51 == v54;
            if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              if (v56 == v57 && v55 == v58)
              {
                goto LABEL_44;
              }

LABEL_43:
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_44;
              }
            }
          }
        }

        else if ((v52[32] & 1) == 0)
        {
          if (v50 == v53 && v51 == v54)
          {
LABEL_44:
            v62 = v38;
            v64 = v118;
            v63 = v119;
            outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v62, v118, v119, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
            outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v25, v64, v63, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
LABEL_45:
            v65 = v110;
            if (a1 < a2 || a1 >= a2 + v110)
            {
              swift_arrayInitWithTakeFrontToBack();
              a2 += v65;
              v10 = v117;
            }

            else
            {
              v10 = v117;
              if (a1 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              a2 += v65;
            }

            goto LABEL_58;
          }

          goto LABEL_43;
        }

        v66 = v38;
        v68 = v118;
        v67 = v119;
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v66, v118, v119, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v25, v68, v67, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
        goto LABEL_51;
      }

      goto LABEL_109;
    }

    v31 = a4;
    v32 = v28 / v27 * v27;
    if (v31 < a2 || a2 + v32 <= v31)
    {
      swift_arrayInitWithTakeFrontToBack();
      v33 = v112;
    }

    else
    {
      v33 = v112;
      if (v31 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v117 = v9;
    v109 = v31;
    v70 = v31 + v32;
    if (v32 < 1)
    {
LABEL_108:
      v122 = a2;
      v120 = v70;
LABEL_109:
      specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v122, &v121, &v120, v118, v119);
      return;
    }

    v107 = a9;
    v71 = -v27;
    v114 = -v27;
    v115 = a5;
    v105 = a5 + 32;
    v72 = v31 + v32;
    v73 = v113;
LABEL_64:
    v104 = v70;
    v74 = a2;
    v75 = v111;
    v108 = a2;
    v110 = a2 + v71;
    while (1)
    {
      if (v74 <= a1)
      {
        v122 = v74;
        v120 = v104;
        goto LABEL_109;
      }

      v76 = v73;
      v106 = v70;
      v77 = (v72 + v71);
      v79 = v118;
      v78 = v119;
      outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v72 + v71, v33, v118, v119);
      v80 = outlined init with copy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v110, v75, v79, v78);
      MEMORY[0x1EEE9AC00](v80);
      *(&v104 - 2) = v33;
      *(&v104 - 1) = v75;
      v81 = v117;
      v82 = specialized Collection.firstIndex(where:)(v107, (&v104 - 4), v115);
      v117 = v81;
      v113 = v77;
      if (v83)
      {
        v84 = *v33 < *v75;
        goto LABEL_95;
      }

      if ((v82 & 0x8000000000000000) != 0)
      {
        goto LABEL_112;
      }

      if (v82 >= *(v115 + 16))
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v85 = v105 + 40 * v82;
      v86 = *v85;
      v87 = *(v85 + 8);
      v88 = v33 + *(v116 + 64);
      v89 = *v88;
      v90 = *(v88 + 1);
      if ((*(v85 + 32) & 1) == 0)
      {
        break;
      }

      if (v88[32])
      {
        v92 = *(v85 + 16);
        v91 = *(v85 + 24);
        v93 = *(v88 + 2);
        v94 = *(v88 + 3);
        v95 = v86 == v89 && v87 == v90;
        if (v95 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v92 == v93 && v91 == v94)
          {
            goto LABEL_93;
          }

LABEL_92:
          v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_94;
        }
      }

      v84 = 0;
LABEL_94:
      v33 = v112;
LABEL_95:
      v98 = &v76[v114];
      v99 = v75;
      v101 = v118;
      v100 = v119;
      outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v99, v118, v119, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
      outlined destroy of (index: Int, element: TableCellFormula, id: TableColumnCustomizationID)(v33, v101, v100, type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID));
      if (v84)
      {
        v73 = v98;
        if (v76 < v108 || v98 >= v108)
        {
          a2 = v110;
          swift_arrayInitWithTakeFrontToBack();
          v103 = v109;
          v33 = v112;
          v70 = v106;
        }

        else
        {
          v59 = v76 == v108;
          v103 = v109;
          a2 = v110;
          v33 = v112;
          v70 = v106;
          if (!v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v71 = v114;
        if (v72 <= v103)
        {
          goto LABEL_108;
        }

        goto LABEL_64;
      }

      v102 = v113;
      v70 = v113;
      v73 = v98;
      if (v76 < v72 || v98 >= v72)
      {
        swift_arrayInitWithTakeFrontToBack();
        v75 = v111;
        v33 = v112;
      }

      else
      {
        v75 = v111;
        v33 = v112;
        if (v76 != v72)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v72 = v70;
      v74 = v108;
      v71 = v114;
      if (v102 <= v109)
      {
        a2 = v108;
        goto LABEL_108;
      }
    }

    if (v88[32])
    {
      v84 = 0;
      goto LABEL_95;
    }

    if (v86 == v89 && v87 == v90)
    {
LABEL_93:
      v84 = 1;
      goto LABEL_94;
    }

    goto LABEL_92;
  }

LABEL_116:
  __break(1u);
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, unint64_t a2, uint64_t *a3, uint64_t a4, unint64_t *a5, void (*a6)(uint64_t), uint64_t (*a7)(void *), uint64_t (*a8)(void *))
{
  v9 = v8;
  v10 = a1;
  v11 = *a1;

  v34 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
  }

  v26 = v10;
  *v10 = v34;
  v12 = v34 + 16;
  v10 = *(v34 + 2);
  if (v10 < 2)
  {
LABEL_10:

    *v26 = v34;
    return 1;
  }

  else
  {
    v27 = (v34 + 16);
    while (1)
    {
      v13 = *a3;
      if (!*a3)
      {
        break;
      }

      v14 = &v34[16 * v10];
      v15 = *v14;
      v16 = &v12[16 * v10];
      v18 = *v16;
      v17 = *(v16 + 1);
      type metadata accessor for (index: Int, element: TableColumnCollection.Entry, id: TableColumnCustomizationID)(0, a5, a6);
      v20 = *(*(v19 - 8) + 72);
      v21 = v13 + v20 * v15;
      v35 = v13 + v20 * v18;
      v22 = v13 + v20 * v17;

      specialized _merge<A>(low:mid:high:buffer:by:)(v21, v35, v22, a2, a4, a5, a6, a7, a8);

      if (v9)
      {
        *v26 = v34;

        return 1;
      }

      if (v17 < v15)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v12 = v34 + 16;
      v23 = *v27;
      if (v10 - 2 >= *v27)
      {
        goto LABEL_14;
      }

      *v14 = v15;
      *(v14 + 1) = v17;
      v24 = v23 - v10;
      if (v23 < v10)
      {
        goto LABEL_15;
      }

      v10 = v23 - 1;
      memmove(v16, v16 + 16, 16 * v24);
      *v27 = v10;
      if (v10 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v26 = v34;
    __break(1u);
  }

  return result;
}