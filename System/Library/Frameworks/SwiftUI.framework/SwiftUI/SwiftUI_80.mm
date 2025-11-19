uint64_t partial apply for closure #2 in closure #1 in PasteHelper.validatedPasteHandler.getter(void (*a1)(id, unint64_t, void), uint64_t a2)
{
  type metadata accessor for UTType();
  type metadata accessor for IndexSet();
  v5 = *(v2 + 16);

  return closure #2 in closure #1 in PasteHelper.validatedPasteHandler.getter(a1, a2, v5);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> ();

  return closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(a1, v6, v7, v8, v9, v10, v4, v5);
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@out ());

  return specialized closure #1 in closure #1 in closure #1 in closure #1 in PasteHelper.init<A>(onPaste:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in NSItemProvider.loadTransferable<A>(for:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for Error();
  v4 = *(type metadata accessor for CheckedContinuation() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return closure #1 in closure #1 in NSItemProvider.loadTransferable<A>(for:)(a1, v5, v3);
}

uint64_t assignWithCopy for NavigationSplitReader(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  *(a1 + 24) = a2[3];
  *(a1 + 32) = a2[4];

  *(a1 + 40) = a2[5];

  *(a1 + 48) = *(a2 + 24);
  *(a1 + 50) = *(a2 + 25);
  *(a1 + 56) = a2[7];
  *(a1 + 64) = a2[8];

  *(a1 + 72) = a2[9];

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  return a1;
}

uint64_t assignWithTake for NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationSplitReader(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 82))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for NavigationSplitReader(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized Location.update()(_BYTE *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  Strong = swift_weakLoadStrong();
  if (Strong && (v7 = Strong, swift_beginAccess(), v8 = v7[8], v31 = v7[7], v32 = v8, v33[0] = v7[9], *(v33 + 10) = *(v7 + 154), v9 = v7[4], v27 = v7[3], v28 = v9, v10 = v7[6], v29 = v7[5], v30 = v10, v11 = v7[2], v25 = v7[1], v26 = v11, outlined init with copy of NavigationAuthority?(&v25, v23, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v34[6] = v31, v34[7] = v32, v35[0] = v33[0], *(v35 + 10) = *(v33 + 10), v34[2] = v27, v34[3] = v28, v34[4] = v29, v34[5] = v30, v34[0] = v25, v34[1] = v26, getEnumTag for AccessibilityActionCategory.Category(v34) != 1))
  {
    v20 = v31;
    v21 = v32;
    *v22 = v33[0];
    *&v22[10] = *(v33 + 10);
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v19 = v30;
    v14 = v25;
    v15 = v26;
    v12 = NavigationState.canDismissRoot(of:)(v3, v4, v5);
    v23[6] = v20;
    v23[7] = v21;
    v24[0] = *v22;
    *(v24 + 10) = *&v22[10];
    v23[2] = v16;
    v23[3] = v17;
    v23[4] = v18;
    v23[5] = v19;
    v23[0] = v14;
    v23[1] = v15;
    outlined destroy of NavigationState(v23);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12 & 1;
  return 1;
}

uint64_t specialized UISplitViewControllerProxy.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  type metadata accessor for UISplitViewControllerSplitBehavior(0);
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

uint64_t _NavigationSplitReader.PreparedColumn.authority.getter@<X0>(uint64_t a1@<X8>)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  return outlined init with copy of NavigationAuthority?(Value, a1, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
}

void protocol witness for static Rule.initialValue.getter in conformance _NavigationSplitReader.CustomParameters(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 23) = 0;
  *(a1 + 16) = 0;
}

uint64_t protocol witness for Rule.value.getter in conformance _NavigationSplitReader.CustomParameters@<X0>(uint64_t a1@<X8>)
{
  result = _NavigationSplitReader.CustomParameters.value.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5 & 1;
  *(a1 + 25) = v6 & 1;
  *(a1 + 26) = v7 & 1;
  return result;
}

uint64_t _NavigationSplitReader.PreparedColumn.columnSeeds.getter(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B40](a1, &type metadata for NavigationState.SelectionSeed, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();
}

uint64_t closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter@<X0>(_DWORD *a1@<X8>)
{
  type metadata accessor for _NavigationSplitReader.PreparedColumn();
  result = _NavigationSplitReader.PreparedColumn.authority.getter(v14);
  if (v15 != 1)
  {
    Strong = swift_weakLoadStrong();
    result = outlined destroy of NavigationAuthority(v14);
    if (Strong)
    {
      v4 = *(Strong + 184);

      v5 = _NavigationSplitReader.PreparedColumn.key.getter();
      v7 = v6;
      v9 = v8;
      swift_getKeyPath();
      lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v4 + 16);

      if (*(v10 + 16))
      {
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v9);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 4 * v11);

LABEL_8:
          *a1 = v13;
          return result;
        }
      }
    }

    v13 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t _NavigationSplitReader.PreparedColumn.key.getter()
{
  v0 = *AGGraphGetValue();
  AGGraphGetValue();
  return v0;
}

uint64_t _NavigationSplitReader.PreparedColumn.updateValue()(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v152[1] = *MEMORY[0x1E69E9840];
  v85 = *(*(a1 + 16) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v84 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v5;
  v6 = type metadata accessor for ModifiedContent();
  v90 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v89 = &v81 - v7;
  type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>();
  v91 = v6;
  v87 = v8;
  v9 = type metadata accessor for ModifiedContent();
  v93 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v81 - v10;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
  v95 = v9;
  v88 = v11;
  v12 = type metadata accessor for ModifiedContent();
  v96 = *(v12 - 8);
  v97 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v81 - v13;
  v14 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v2 + 4))
  {
    v22 = *(v2 + 5);
    WeakValue = AGGraphGetWeakValue();
    v19 = v3;
    if (WeakValue)
    {
      v24 = *WeakValue;
    }

    else
    {
      v24 = 0;
    }

    if (WeakValue)
    {
      v25 = v24;
    }

    else
    {
      v25 = -1;
    }

    if (WeakValue)
    {
      v26 = HIDWORD(v24);
    }

    else
    {
      v26 = -1;
    }

    v151 = v22;
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 20) = v26;

    outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(&v151, type metadata accessor for MutableBox<NavigationState.Seeds>?);
    *(v2 + 5) = v27;
    v28 = v2[1];
    v148 = *v2;
    v149 = v28;
    v150 = v2[2];
    result = _NavigationSplitReader.PreparedColumn.authority.getter(&v125);
    if (*(&v125 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v30 = v2[2];
    v146 = v2[1];
    v147 = v30;
    v145 = *v2;
    v152[0] = v30;
    v31 = _NavigationSplitReader.PreparedColumn.key.getter();
    v33 = v32;
    v35 = v34;
    outlined init with take of NavigationAuthority(&v125, v16);
    *(v16 + 3) = v31;
    v16[32] = v33;
    *(v16 + 5) = v35;
    UUID.init()();
    *&v16[*(v14 + 28)] = v27;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>();
    swift_allocObject();
    v36 = LocationBox.init(_:)();
    outlined destroy of LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(v152);
    *(v2 + 4) = v36;
    goto LABEL_21;
  }

  v17 = *(v2 + 5);
  if (v17)
  {

    v18 = AGGraphGetWeakValue();
    if (v18)
    {
      v19 = v3;
      v21 = *v18;
      v20 = v18[1];
      swift_beginAccess();
      if (*(v17 + 16) != v21 || *(v17 + 20) != v20)
      {
        *(v17 + 16) = v21;
        *(v17 + 20) = v20;
      }

LABEL_21:
      v3 = v19;
      goto LABEL_22;
    }
  }

LABEL_22:
  v37 = v2[1];
  v142 = *v2;
  v143 = v37;
  v144 = v2[2];
  _NavigationSplitReader.PreparedColumn.authority.getter(v138);
  if (v138[1] == 1)
  {
    __break(1u);
  }

  v38 = v2[1];
  v139 = *v2;
  v140 = v38;
  v141 = v2[2];
  v39 = _NavigationSplitReader.PreparedColumn.key.getter();
  v41 = v40;
  v43 = v42;
  Strong = swift_weakLoadStrong();
  if (Strong && (v45 = Strong, swift_beginAccess(), v46 = v45[8], v122 = v45[7], v123 = v46, v124[0] = v45[9], *(v124 + 10) = *(v45 + 154), v47 = v45[4], v118 = v45[3], v119 = v47, v48 = v45[6], v120 = v45[5], v121 = v48, v49 = v45[2], v116 = v45[1], v117 = v49, outlined init with copy of NavigationAuthority?(&v116, &v107, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v131 = v122, v132 = v123, v133[0] = v124[0], *(v133 + 10) = *(v124 + 10), v127 = v118, v128 = v119, v129 = v120, v130 = v121, v125 = v116, v126 = v117, getEnumTag for AccessibilityActionCategory.Category(&v125) != 1))
  {
    v104 = v122;
    v105 = v123;
    v106[0] = v124[0];
    *(v106 + 10) = *(v124 + 10);
    v100 = v118;
    v101 = v119;
    v102 = v120;
    v103 = v121;
    v98 = v116;
    v99 = v117;
    v83 = NavigationState.canDismissRoot(of:)(v39, v41, v43);
    v113 = v104;
    v114 = v105;
    v115[0] = v106[0];
    *(v115 + 10) = *(v106 + 10);
    v109 = v100;
    v110 = v101;
    v111 = v102;
    v112 = v103;
    v107 = v98;
    v108 = v99;
    outlined destroy of NavigationState(&v107);
  }

  else
  {
    v83 = 0;
  }

  outlined destroy of NavigationAuthority(v138);
  v50 = v2[1];
  v125 = *v2;
  v126 = v50;
  v127 = v2[2];
  _NavigationSplitReader.PreparedColumn.key.getter();
  if (v51 == 1)
  {
    v52 = 1;
  }

  else
  {
    v53 = v2[1];
    v116 = *v2;
    v117 = v53;
    v118 = v2[2];
    _NavigationSplitReader.PreparedColumn.key.getter();
    v52 = v54 == 2;
  }

  v55 = v3;
  v82 = v3;
  v56 = v86;
  Value = AGGraphGetValue();
  v58 = v84;
  v59 = v85;
  (*(v85 + 16))(v84, Value, v56);
  v60 = v2[2];
  v108 = v2[1];
  v109 = v60;
  v107 = *v2;
  v61 = v60;
  *&v98 = _NavigationSplitReader.PreparedColumn.key.getter();
  *(&v98 + 1) = v62;
  *&v99 = v63;
  *(&v99 + 1) = -1;
  v64 = *(v55 + 24);
  v65 = v89;
  MEMORY[0x18D00A570](&v98, v56, &type metadata for InjectKeyModifier, v64);
  (*(v59 + 8))(v58, v56);
  KeyPath = swift_getKeyPath();
  v67 = swift_allocObject();
  *(v67 + 16) = v52;
  *(v67 + 24) = v61;
  *(v67 + 32) = v83 & 1;
  *&v98 = KeyPath;
  *(&v98 + 1) = partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue();
  *&v99 = v67;
  v136 = v64;
  v137 = &protocol witness table for InjectKeyModifier;

  v68 = v91;
  WitnessTable = swift_getWitnessTable();
  v70 = v92;
  MEMORY[0x18D00A570](&v98, v68, v87, WitnessTable);

  (*(v90 + 8))(v65, v68);
  v71 = swift_getKeyPath();
  v72 = v2[1];
  v98 = *v2;
  v99 = v72;
  v100 = v2[2];
  v73 = v82;
  _NavigationSplitReader.PreparedColumn.columnSeeds.getter(v82);
  v138[0] = v71;
  v74 = lazy protocol witness table accessor for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v134 = WitnessTable;
  v135 = v74;
  v75 = v95;
  v76 = swift_getWitnessTable();
  v77 = v94;
  MEMORY[0x18D00A570](v138, v75, v88, v76);

  v78 = (*(v93 + 8))(v70, v75);
  MEMORY[0x1EEE9AC00](v78);
  *(&v81 - 2) = v73;
  *(&v81 - 1) = swift_getWitnessTable();
  v79 = v97;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v77, partial apply for closure #1 in StatefulRule.value.setter, (&v81 - 4), v97, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v80);
  return (*(v96 + 8))(v77, v79);
}

uint64_t key path getter for EnvironmentValues.navigationSelectionSeed : EnvironmentValues@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.navigationSelectionSeed : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationStateSelectionSeed>, &type metadata for NavigationStateSelectionSeed, &protocol witness table for NavigationStateSelectionSeed, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationStateSelectionSeed> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static StatefulRule.initialValue.getter in conformance _NavigationSplitReader.PreparedColumn<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
  v2 = type metadata accessor for ModifiedContent();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t _NavigationSplitReader.PreparedAlternativeCompactColumn.value.getter()
{
  type metadata accessor for [AlternateRepresentationPlacement.Value : AnyView]();
  result = AGGraphGetWeakValue();
  if (result)
  {
    if (*(*result + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(result), (v1 & 1) != 0))
    {
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance _NavigationSplitReader.PreparedAlternativeCompactColumn@<X0>(uint64_t *a1@<X8>)
{
  result = _NavigationSplitReader.PreparedAlternativeCompactColumn.value.getter();
  *a1 = result;
  return result;
}

uint64_t _NavigationSplitReader.SplitPresentationModeLocation.get()@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  result = swift_weakLoadStrong();
  if (result && (v7 = result, swift_beginAccess(), v8 = v7[8], v30 = v7[7], v31 = v8, v32[0] = v7[9], *(v32 + 10) = *(v7 + 154), v9 = v7[4], v26 = v7[3], v27 = v9, v10 = v7[6], v28 = v7[5], v29 = v10, v11 = v7[2], v24 = v7[1], v25 = v11, outlined init with copy of NavigationAuthority?(&v24, v22, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v33[6] = v30, v33[7] = v31, v34[0] = v32[0], *(v34 + 10) = *(v32 + 10), v33[2] = v26, v33[3] = v27, v33[4] = v28, v33[5] = v29, v33[0] = v24, v33[1] = v25, result = getEnumTag for AccessibilityActionCategory.Category(v33), result != 1))
  {
    v19 = v30;
    v20 = v31;
    *v21 = v32[0];
    *&v21[10] = *(v32 + 10);
    v15 = v26;
    v16 = v27;
    v17 = v28;
    v18 = v29;
    v13 = v24;
    v14 = v25;
    v12 = NavigationState.canDismissRoot(of:)(v3, v4, v5);
    v22[6] = v19;
    v22[7] = v20;
    v23[0] = *v21;
    *(v23 + 10) = *&v21[10];
    v22[2] = v15;
    v22[3] = v16;
    v22[4] = v17;
    v22[5] = v18;
    v22[0] = v13;
    v22[1] = v14;
    result = outlined destroy of NavigationState(v22);
  }

  else
  {
    v12 = 0;
  }

  *a1 = v12 & 1;
  return result;
}

double protocol witness for static Rule.initialValue.getter in conformance _NavigationSplitReader.Core@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 384) = 0;
  result = 0.0;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t PreparedCompactColumn.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  v5 = swift_getKeyPath();

  *a2 = a1;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = -1;
  return result;
}

uint64_t key path getter for EnvironmentValues.isNavigationEnabledInternal : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isNavigationEnabledInternal : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t assignWithCopy for _NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t assignWithTake for _NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 96) = *(a2 + 96);
  return a1;
}

uint64_t getEnumTagSinglePayload for InjectKeyModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 32))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = 6;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 7;
  if (v3 < 6)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for InjectKeyModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>();
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClearNavigationContextModifier>, MEMORY[0x1E6981910], &type metadata for ClearNavigationContextModifier, MEMORY[0x1E697E830]);
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>>();
    lazy protocol witness table accessor for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationEnabled>, &type metadata for NavigationEnabled);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<AnyView, ClearNavigationContextModifier>, _EnvironmentKeyWritingModifier<NavigationEnabled>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClearNavigationContextModifier>, MEMORY[0x1E6981910], &type metadata for ClearNavigationContextModifier, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<AnyView, ClearNavigationContextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<NavigationEnabled> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>(255, a3, a4, a5);
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>, &type metadata for NavigationState.SelectionSeed, MEMORY[0x1E6980A08]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for Binding<NavigationSplitViewColumn>?(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for MutableBox<NavigationState.Seeds>?()
{
  if (!lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>?)
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(255, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>?);
    }
  }
}

uint64_t outlined destroy of LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(uint64_t a1)
{
  type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(0, &lazy cache variable for type metadata for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?, type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined destroy of _VariadicView_Children.Element?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeBufferWithCopyOfBuffer for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = v11 + ((v4 + 16) & ~v4);
  }

  else
  {
    swift_weakCopyInit();
    v7 = a2[2];
    *(a1 + 8) = a2[1];
    *(a1 + 16) = v7;
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 40) = a2[5];
    v8 = *(a3 + 24);
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 16);

    v10(a1 + v8, a2 + v8, v9);
    *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  }

  return a1;
}

uint64_t assignWithCopy for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 24))(a1 + v6, a2 + v6, v7);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

uint64_t assignWithTake for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_weakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 40))(a1 + v6, a2 + v6, v7);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));

  return a1;
}

__n128 __swift_memcpy48_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 26) = *(a2 + 26);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  swift_weakTakeAssign();
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);

  if (*(a1 + 136))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 112);
  }

  v4 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.ForestRoot(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.ForestRoot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for _NavigationSplitReader.PreparedColumn()
{
}

uint64_t assignWithCopy for _NavigationSplitReader.PreparedColumn(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithTake for _NavigationSplitReader.PreparedColumn(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 28) = *(a2 + 28);

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.UpdateRequiredCompactColumn(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.UpdateRequiredCompactColumn(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t assignWithCopy for _NavigationSplitReader.DerivedAttributes(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  v4 = *(a2 + 24);
  if (*(a1 + 24) == 1)
  {
    if (v4 == 1)
    {
      v5 = *(a2 + 16);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 16) = v5;
    }

    else
    {
      swift_weakCopyInit();
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
    }
  }

  else
  {
    v6 = a1 + 16;
    if (v4 == 1)
    {
      outlined destroy of NavigationAuthority(v6);
      v7 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v7;
    }

    else
    {
      swift_weakCopyAssign();
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
    }
  }

  return a1;
}

__n128 initializeWithTake for _NavigationSplitReader.DerivedAttributes(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v3 = (a2 + 1);
  *a1 = v4;
  *&v4 = *(a2 + 3);
  v5 = (a2 + 24);
  if (v4 == 1)
  {
    result = *v3;
    *(a1 + 16) = *v3;
    *(a1 + 32) = v3[1].n128_u64[0];
  }

  else
  {
    swift_weakTakeInit();
    result = *v5;
    *(a1 + 24) = *v5;
  }

  return result;
}

uint64_t assignWithTake for _NavigationSplitReader.DerivedAttributes(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 16;
  *a1 = *a2;
  v4 = (a1 + 24);
  v6 = (a2 + 24);
  v5 = *(a2 + 24);
  if (*(a1 + 24) != 1)
  {
    v7 = a1 + 16;
    if (v5 != 1)
    {
      swift_weakTakeAssign();
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);

      return a1;
    }

    outlined destroy of NavigationAuthority(v7);
    goto LABEL_6;
  }

  if (v5 == 1)
  {
LABEL_6:
    *(a1 + 16) = *v3;
    *(a1 + 32) = *(v3 + 16);
    return a1;
  }

  swift_weakTakeInit();
  *v4 = *v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for _NavigationSplitReader.DerivedAttributes(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for _NavigationSplitReader.DerivedAttributes(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

_BYTE *specialized _NavigationSplitReader.SplitPresentationModeLocation.set(_:transaction:)(_BYTE *result)
{
  if ((*result & 1) == 0)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
    v4 = *(v1 + 40);
    result = swift_weakLoadStrong();
    if (result)
    {
      v5 = result;
      swift_beginAccess();
      v6 = v5[8];
      v24 = v5[7];
      v25 = v6;
      v26[0] = v5[9];
      *(v26 + 10) = *(v5 + 154);
      v7 = v5[4];
      v20 = v5[3];
      v21 = v7;
      v8 = v5[6];
      v22 = v5[5];
      v23 = v8;
      v9 = v5[2];
      v18 = v5[1];
      v19 = v9;
      outlined init with copy of NavigationAuthority?(&v18, v11, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState);

      v27[6] = v24;
      v27[7] = v25;
      v28[0] = v26[0];
      *(v28 + 10) = *(v26 + 10);
      v27[2] = v20;
      v27[3] = v21;
      v27[4] = v22;
      v27[5] = v23;
      v27[0] = v18;
      v27[1] = v19;
      result = getEnumTag for AccessibilityActionCategory.Category(v27);
      if (result != 1)
      {
        v12 = v24;
        v13 = v25;
        *v14 = v26[0];
        *&v14[10] = *(v26 + 10);
        *&v11[32] = v20;
        *&v11[48] = v21;
        *&v11[64] = v22;
        *&v11[80] = v23;
        *v11 = v18;
        *&v11[16] = v19;
        v10 = NavigationState.canDismissRoot(of:)(v2, v3, v4);
        v16[6] = v12;
        v16[7] = v13;
        v17[0] = *v14;
        *(v17 + 10) = *&v14[10];
        v16[2] = *&v11[32];
        v16[3] = *&v11[48];
        v16[4] = *&v11[64];
        v16[5] = *&v11[80];
        v16[0] = *v11;
        v16[1] = *&v11[16];
        result = outlined destroy of NavigationState(v16);
        if (v10)
        {
          *v11 = 2;
          memset(&v11[8], 0, 88);
          LOBYTE(v12) = 22;
          *(&v12 + 1) = v2;
          *&v13 = v3;
          v15 = 0;
          *(&v13 + 1) = v4;
          memset(v14, 0, 25);
          NavigationAuthority.enqueueRequest(_:)(v11);
          return outlined destroy of NavigationRequest(v11);
        }
      }
    }
  }

  return result;
}

uint64_t assignWithCopy for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  v4 = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 68) = v4;
  *(a1 + 88) = *(a2 + 88);

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  v5 = *(a2 + 168);
  if (*(a1 + 168))
  {
    if (v5)
    {
      v6 = *(a2 + 152);
      if (*(a1 + 152))
      {
        if (v6)
        {
          v7 = *(a2 + 128);
          v8 = *(a2 + 136);
          v9 = *(a2 + 144);
          outlined copy of Text.Storage(v7, v8, v9);
          v10 = *(a1 + 128);
          v11 = *(a1 + 136);
          v12 = *(a1 + 144);
          *(a1 + 128) = v7;
          *(a1 + 136) = v8;
          *(a1 + 144) = v9;
          outlined consume of Text.Storage(v10, v11, v12);
          *(a1 + 152) = *(a2 + 152);
        }

        else
        {
          outlined destroy of Text(a1 + 128);
          v25 = *(a2 + 144);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 144) = v25;
        }
      }

      else if (v6)
      {
        v19 = *(a2 + 128);
        v20 = *(a2 + 136);
        v21 = *(a2 + 144);
        outlined copy of Text.Storage(v19, v20, v21);
        *(a1 + 128) = v19;
        *(a1 + 136) = v20;
        *(a1 + 144) = v21;
        *(a1 + 152) = *(a2 + 152);
      }

      else
      {
        v27 = *(a2 + 144);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 144) = v27;
      }

      *(a1 + 160) = *(a2 + 160);

      *(a1 + 168) = *(a2 + 168);

      *(a1 + 176) = *(a2 + 176);
    }

    else
    {
      outlined destroy of DialogSuppressionConfiguration(a1 + 128);
      v17 = *(a2 + 144);
      v16 = *(a2 + 160);
      v18 = *(a2 + 128);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 144) = v17;
      *(a1 + 160) = v16;
      *(a1 + 128) = v18;
    }
  }

  else if (v5)
  {
    if (*(a2 + 152))
    {
      v13 = *(a2 + 128);
      v14 = *(a2 + 136);
      v15 = *(a2 + 144);
      outlined copy of Text.Storage(v13, v14, v15);
      *(a1 + 128) = v13;
      *(a1 + 136) = v14;
      *(a1 + 144) = v15;
      *(a1 + 152) = *(a2 + 152);
    }

    else
    {
      v26 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v26;
    }

    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v22 = *(a2 + 128);
    v23 = *(a2 + 144);
    v24 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 144) = v23;
    *(a1 + 160) = v24;
    *(a1 + 128) = v22;
  }

  *(a1 + 177) = *(a2 + 177);
  return a1;
}

uint64_t assignWithTake for ConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  swift_unknownObjectWeakTakeAssign();
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 168))
  {
    if (*(a2 + 168))
    {
      if (*(a1 + 152))
      {
        if (*(a2 + 152))
        {
          v5 = *(a2 + 144);
          v6 = *(a1 + 128);
          v7 = *(a1 + 136);
          v8 = *(a1 + 144);
          *(a1 + 128) = *(a2 + 128);
          *(a1 + 144) = v5;
          outlined consume of Text.Storage(v6, v7, v8);
          *(a1 + 152) = *(a2 + 152);

LABEL_10:
          *(a1 + 160) = *(a2 + 160);

          *(a1 + 168) = *(a2 + 168);

          *(a1 + 176) = *(a2 + 176);
          goto LABEL_11;
        }

        outlined destroy of Text(a1 + 128);
      }

      v10 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v10;
      goto LABEL_10;
    }

    outlined destroy of DialogSuppressionConfiguration(a1 + 128);
  }

  v9 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v9;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
LABEL_11:
  *(a1 + 177) = *(a2 + 177);
  return a1;
}

uint64_t storeEnumTagSinglePayload for ConfirmationDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t initializeBufferWithCopyOfBuffer for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(a3 + 24);
  v6 = *(v4 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v5 - 8);
  v10 = *(v9 + 80);
  v11 = v8 + v10;
  v12 = ((((-66 - v7) | v7) - (v8 + v10)) | v10) - *(v9 + 64);
  if ((v10 | v7) <= 7 && ((*(v9 + 80) | *(v6 + 80)) & 0x100000) == 0 && v12 >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    v28 = v5;
    v29 = a1;
    v17 = a1 & 0xFFFFFFFFFFFFFFF8;
    v18 = a2 & 0xFFFFFFFFFFFFFFF8;
    v26 = v4;
    v27 = v6;
    *(v17 + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    *(v17 + 16) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
    *(v17 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
    v19 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
    v20 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 40);
    v21 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);

    outlined copy of Text.Storage(v19, v20, v21);
    *(v17 + 32) = v19;
    *(v17 + 40) = v20;
    *(v17 + 48) = v21;
    *(v17 + 56) = *(v18 + 56);
    *(v17 + 64) = *(v18 + 64);
    v22 = (v17 + v7 + 65) & ~v7;
    v23 = (v18 + v7 + 65) & ~v7;
    v24 = *(v27 + 16);

    v24(v22, v23, v26);
    v16 = v29;
    (*(v9 + 16))((v22 + v11) & ~v10, (v23 + v11) & ~v10, v28);
  }

  else
  {
    v15 = *a2;
    *a1 = *a2;
    v16 = v15 + (((v10 | v7) & 0xF8 ^ 0x1F8) & ((v10 | v7) + 16));
  }

  return v16;
}

unint64_t initializeWithTake for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 8) = v6;
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 48);
  *(v5 + 32) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 32);
  *(v5 + 48) = v7;
  *(v5 + 64) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 64);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  v11 = (v10 + 65 + (a1 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  v12 = (v10 + 65 + (a2 & 0xFFFFFFFFFFFFFFF8)) & ~v10;
  (*(v8 + 32))(v11, v12);
  v13 = *(*(a3 + 24) - 8);
  (*(v13 + 32))((*(v9 + 32) + *(v13 + 80) + v11) & ~*(v13 + 80), (*(v9 + 32) + *(v13 + 80) + v12) & ~*(v13 + 80));
  return a1;
}

unint64_t assignWithTake for ConfirmationDialogModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v5 + 16) = *(v6 + 16);

  *(v5 + 24) = *(v6 + 24);
  v7 = *(v6 + 48);
  v8 = *(v5 + 32);
  v9 = *(v5 + 40);
  v10 = *(v5 + 48);
  *(v5 + 32) = *(v6 + 32);
  *(v5 + 48) = v7;
  outlined consume of Text.Storage(v8, v9, v10);
  *(v5 + 56) = *(v6 + 56);

  *(v5 + 64) = *(v6 + 64);
  v11 = *(*(a3 + 16) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v13 + 65 + v5) & ~v13;
  v15 = (v13 + 65 + v6) & ~v13;
  (*(v11 + 40))(v14, v15);
  v16 = *(*(a3 + 24) - 8);
  (*(v16 + 40))((*(v12 + 24) + *(v16 + 80) + v14) & ~*(v16 + 80), (*(v12 + 24) + *(v16 + 80) + v15) & ~*(v16 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for ConfirmationDialogModifier(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 65) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      v23 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v12 & 0x80000000) != 0)
      {
        v25 = (v23 + v9 + 65) & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v25);
        }

        else
        {
          return (*(v7 + 48))((v25 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v24 = *(v23 + 16);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void storeEnumTagSinglePayload for ConfirmationDialogModifier(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 65) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v15) = v20;
              }

              else
              {
                *(a1 + v15) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v15) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v15) = 0;
  }

  else if (v18)
  {
    *(a1 + v15) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  v24 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v13 & 0x80000000) != 0)
  {
    v25 = (v24 + v10 + 65) & ~v10;
    if (v8 == v14)
    {
      v26 = *(v6 + 56);

      v26(v25);
    }

    else
    {
      v27 = *(v9 + 56);
      v28 = (v25 + v11 + v12) & ~v12;

      v27(v28);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v24 + 24) = 0;
    *(v24 + 8) = a2 & 0x7FFFFFFF;
    *(v24 + 16) = 0;
  }

  else
  {
    *(v24 + 16) = a2 - 1;
  }
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(_DWORD *a1@<X0>, _DWORD *a2@<X8>)
{
  *a2 = *a1;
  return outlined init with copy of ConfirmationDialog((a1 + 2), (a2 + 2));
}

{
  *a2 = *a1;
  return outlined init with copy of InspectorStorage((a1 + 2), (a2 + 2));
}

uint64_t assignWithCopy for MakeConfirmationDialog(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  *(a1 + 105) = *(a2 + 105);
  v5 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (v5)
    {
      v6 = *(a2 + 136);
      if (*(a1 + 136))
      {
        if (v6)
        {
          v7 = *(a2 + 112);
          v8 = *(a2 + 120);
          v9 = *(a2 + 128);
          outlined copy of Text.Storage(v7, v8, v9);
          v10 = *(a1 + 112);
          v11 = *(a1 + 120);
          v12 = *(a1 + 128);
          *(a1 + 112) = v7;
          *(a1 + 120) = v8;
          *(a1 + 128) = v9;
          outlined consume of Text.Storage(v10, v11, v12);
          *(a1 + 136) = *(a2 + 136);
        }

        else
        {
          outlined destroy of Text(a1 + 112);
          v25 = *(a2 + 128);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 128) = v25;
        }
      }

      else if (v6)
      {
        v19 = *(a2 + 112);
        v20 = *(a2 + 120);
        v21 = *(a2 + 128);
        outlined copy of Text.Storage(v19, v20, v21);
        *(a1 + 112) = v19;
        *(a1 + 120) = v20;
        *(a1 + 128) = v21;
        *(a1 + 136) = *(a2 + 136);
      }

      else
      {
        v27 = *(a2 + 128);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 128) = v27;
      }

      *(a1 + 144) = *(a2 + 144);

      *(a1 + 152) = *(a2 + 152);

      *(a1 + 160) = *(a2 + 160);
    }

    else
    {
      outlined destroy of DialogSuppressionConfiguration(a1 + 112);
      v17 = *(a2 + 128);
      v16 = *(a2 + 144);
      v18 = *(a2 + 112);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 128) = v17;
      *(a1 + 144) = v16;
      *(a1 + 112) = v18;
    }
  }

  else if (v5)
  {
    if (*(a2 + 136))
    {
      v13 = *(a2 + 112);
      v14 = *(a2 + 120);
      v15 = *(a2 + 128);
      outlined copy of Text.Storage(v13, v14, v15);
      *(a1 + 112) = v13;
      *(a1 + 120) = v14;
      *(a1 + 128) = v15;
      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      v26 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v26;
    }

    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
  }

  else
  {
    v22 = *(a2 + 112);
    v23 = *(a2 + 128);
    v24 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 128) = v23;
    *(a1 + 144) = v24;
    *(a1 + 112) = v22;
  }

  return a1;
}

uint64_t assignWithTake for MakeConfirmationDialog(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v5;

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  if (*(a1 + 152))
  {
    v6 = *(a2 + 152);
    if (v6)
    {
      if (*(a1 + 136))
      {
        v7 = *(a2 + 136);
        if (v7)
        {
          v8 = *(a2 + 128);
          v9 = *(a1 + 112);
          v10 = *(a1 + 120);
          v11 = *(a1 + 128);
          *(a1 + 112) = *(a2 + 112);
          *(a1 + 128) = v8;
          outlined consume of Text.Storage(v9, v10, v11);
          *(a1 + 136) = v7;

LABEL_10:
          *(a1 + 144) = *(a2 + 144);

          *(a1 + 152) = v6;

          *(a1 + 160) = *(a2 + 160);
          return a1;
        }

        outlined destroy of Text(a1 + 112);
      }

      v13 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v13;
      goto LABEL_10;
    }

    outlined destroy of DialogSuppressionConfiguration(a1 + 112);
  }

  v12 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v12;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for MakeConfirmationDialog(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MakeConfirmationDialog(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t View.insetFloatingSidebarStyle()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x18D009810](0xD000000000000026, 0x800000018CD446D0);
  v5 = *(*(a1 - 8) + 16);

  return v5(a2, v2, a1);
}

void type metadata accessor for SidebarStyleModifier<_ContentListSidebarStyle>()
{
  if (!lazy cache variable for type metadata for SidebarStyleModifier<_ContentListSidebarStyle>)
  {
    lazy protocol witness table accessor for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle();
    v0 = type metadata accessor for SidebarStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SidebarStyleModifier<_ContentListSidebarStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle()
{
  result = lazy protocol witness table cache variable for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle;
  if (!lazy protocol witness table cache variable for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentListSidebarStyle and conformance _ContentListSidebarStyle);
  }

  return result;
}

uint64_t SidebarStyleModifier.styleBody(configuration:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  (*(v1 + 24))(v2, v1, v8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v6, AssociatedTypeWitness, AssociatedConformanceWitness);
  v12 = *(v4 + 8);
  v12(v6, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v10, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v12)(v10, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance SidebarStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance SidebarStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance SidebarStyleOptionsPreference(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  *a1 = (*a1 | v4) & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>, ToolbarRemovingModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>)
  {
    type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188]);
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SidebarStyleOptionsPreference>, &type metadata for SidebarStyleOptionsPreference, &protocol witness table for SidebarStyleOptionsPreference, MEMORY[0x1E6980750]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>>();
    lazy protocol witness table accessor for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, _PreferenceWritingModifier<SidebarStyleOptionsPreference>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v1 = MEMORY[0x1E6980190];
    v2 = MEMORY[0x1E6980188];
    type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, MEMORY[0x1E6980190], MEMORY[0x1E6980188]);
    lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>, &lazy cache variable for type metadata for StyleContextWriter<ContentListStyleContext>, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<SidebarStyleOptionsPreference>, &type metadata for SidebarStyleOptionsPreference, &protocol witness table for SidebarStyleOptionsPreference, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<SidebarStyleOptionsPreference> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for _SidebarConfiguration.Sidebar(uint64_t a1)
{
  result = lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar()
{
  result = lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar;
  if (!lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SidebarConfiguration.Sidebar and conformance _SidebarConfiguration.Sidebar);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>)
  {
    v1 = MEMORY[0x1E697F808];
    v2 = MEMORY[0x1E697F800];
    type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<SidebarStyleContext>, MEMORY[0x1E697F808], MEMORY[0x1E697F800]);
    lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>(&lazy protocol witness table cache variable for type StyleContextWriter<SidebarStyleContext> and conformance StyleContextWriter<A>, &lazy cache variable for type metadata for StyleContextWriter<SidebarStyleContext>, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<SidebarStyleContext>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_SidebarConfiguration.Sidebar, StyleContextWriter<ContentListStyleContext>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, a3, a4, a5, MEMORY[0x1E697F4C8]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type StyleContextWriter<ContentListStyleContext> and conformance StyleContextWriter<A>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StyleContextWriter<ContentListStyleContext>(255, a2, a3, a4, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options()
{
  result = lazy protocol witness table cache variable for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options;
  if (!lazy protocol witness table cache variable for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarStyleOptionsPreference.Options and conformance SidebarStyleOptionsPreference.Options);
  }

  return result;
}

void ImmersiveSpace.init<A>(makeContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(id:makeContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(id:for:makeContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(for:makeContent:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(id:for:makeContent:defaultValue:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

void ImmersiveSpace.init<A>(for:makeContent:defaultValue:)()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

unint64_t lazy protocol witness table accessor for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior()
{
  result = lazy protocol witness table cache variable for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior;
  if (!lazy protocol witness table cache variable for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationAppQuitBehavior and conformance PresentationAppQuitBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior()
{
  result = lazy protocol witness table cache variable for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior;
  if (!lazy protocol witness table cache variable for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationAppQuitBehavior.Behavior and conformance PresentationAppQuitBehavior.Behavior);
  }

  return result;
}

uint64_t AutomaticTokenFieldStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TokenFieldConfiguration(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TokenFieldConfiguration(a1, v7, type metadata accessor for TokenFieldConfiguration);
  v12 = &v11[*(v9 + 80)];
  outlined init with copy of TokenFieldConfiguration(v7, v11, type metadata accessor for Binding<AttributedString>);
  v13 = &v7[*(v5 + 36)];
  v15 = *v13;
  v14 = *(v13 + 1);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  v17 = &v11[*(v9 + 76)];
  *v17 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Binding<AnyToken>) -> (@owned AnyView);
  v17[1] = v16;
  v18 = &v7[*(v5 + 32)];
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  *v12 = *v18;
  v12[1] = v20;
  v12[2] = v21;
  v12[3] = v22;

  outlined copy of Text?(v19, v20, v21, v22);
  outlined destroy of TokenFieldConfiguration(v7, type metadata accessor for TokenFieldConfiguration);
  outlined init with copy of TokenFieldConfiguration(v11, a2, type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>);
  return outlined destroy of TokenFieldConfiguration(v11, type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>);
}

void type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>()
{
  if (!lazy cache variable for type metadata for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>)
  {
    lazy protocol witness table accessor for type AnyToken and conformance AnyToken();
    v0 = type metadata accessor for TokenField();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AnyToken and conformance AnyToken()
{
  result = lazy protocol witness table cache variable for type AnyToken and conformance AnyToken;
  if (!lazy protocol witness table cache variable for type AnyToken and conformance AnyToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyToken and conformance AnyToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyToken and conformance AnyToken;
  if (!lazy protocol witness table cache variable for type AnyToken and conformance AnyToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyToken and conformance AnyToken);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyToken and conformance AnyToken;
  if (!lazy protocol witness table cache variable for type AnyToken and conformance AnyToken)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyToken and conformance AnyToken);
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Binding<AnyToken>) -> (@owned AnyView)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of TokenFieldConfiguration(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TokenFieldConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>();
    lazy protocol witness table accessor for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>)
  {
    type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>();
    type metadata accessor for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>, TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>>);
    }
  }
}

void type metadata accessor for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>()
{
  if (!lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>)
  {
    lazy protocol witness table accessor for type SearchFieldConfigurationTokenFieldStyle and conformance SearchFieldConfigurationTokenFieldStyle();
    v0 = type metadata accessor for TokenFieldStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TokenFieldStyleModifier<SearchFieldConfigurationTokenFieldStyle>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>()
{
  result = lazy protocol witness table cache variable for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>;
  if (!lazy protocol witness table cache variable for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>)
  {
    type metadata accessor for TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenField<TokenFieldConfiguration.Label, AnyToken, AnyView> and conformance TokenField<A, B, C>);
  }

  return result;
}

uint64_t TabContent.customizationBehavior(_:for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = *a1;
  v6 = a2;
  TabContent.modifier<A>(_:)(v5, a3, &unk_1EFFAE9D8, a4);
}

uint64_t TabContent.customizationID(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5[0] = a1;
  v5[1] = a2;
  return TabContent.modifier<A>(_:)(v5, a3, &unk_1EFFAE958, a4);
}

unint64_t lazy protocol witness table accessor for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier()
{
  result = lazy protocol witness table cache variable for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier;
  if (!lazy protocol witness table cache variable for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI10TabContentRzlAA08ModifiedcD0VyxAA29CustomizationBehaviorModifier33_0BD63AC3193ED2016BE9565DB357DE28LLVGAaBHPxAaBHD1__AgA04ViewH0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedTabContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type CustomizationIDModifier and conformance CustomizationIDModifier()
{
  result = lazy protocol witness table cache variable for type CustomizationIDModifier and conformance CustomizationIDModifier;
  if (!lazy protocol witness table cache variable for type CustomizationIDModifier and conformance CustomizationIDModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CustomizationIDModifier and conformance CustomizationIDModifier);
  }

  return result;
}

uint64_t assignWithCopy for CustomizationBehaviorModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t assignWithTake for CustomizationBehaviorModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

unint64_t lazy protocol witness table accessor for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role()
{
  result = lazy protocol witness table cache variable for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role;
  if (!lazy protocol witness table cache variable for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabCustomizationBehavior.Role and conformance TabCustomizationBehavior.Role);
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance CustomizationBehaviorModifier()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationBehaviorModifier>, lazy protocol witness table accessor for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationBehaviorModifier>, lazy protocol witness table accessor for type CustomizationBehaviorModifier and conformance CustomizationBehaviorModifier);

  View.transformTrait<A>(_:transform:)();
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance CustomizationIDModifier()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(0, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationIDModifier>, lazy protocol witness table accessor for type CustomizationIDModifier and conformance CustomizationIDModifier);
  lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CustomizationIDModifier> and conformance _ViewModifier_Content<A>, &lazy cache variable for type metadata for _ViewModifier_Content<CustomizationIDModifier>, lazy protocol witness table accessor for type CustomizationIDModifier and conformance CustomizationIDModifier);

  View.transformTrait<A>(_:transform:)();
}

uint64_t partial apply for closure #1 in CustomizationBehaviorModifier.body(content:)(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 32);
  v6 = v4;
  v7 = v5;
  do
  {
    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = *v7++;
    --v6;
  }

  while (v8 == 1);
  *(result + 26) = v2;
LABEL_5:
  while (v4)
  {
    v9 = *v5++;
    --v4;
    if ((v9 - 1) <= 1)
    {
      *(result + 25) = v2;
      return result;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in CustomizationIDModifier.body(content:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);

  result = outlined consume of TabCustomizationID?(v5, v6, v7);
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  return result;
}

void type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for _ViewModifier_Content();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined consume of TabCustomizationID?(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return outlined consume of TabCustomizationID.Base();
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE14transformTrait_0D0Qrqd__m_y5ValueQyd__zctAA01_cE3KeyRd__lFQOyAA01_C16Modifier_ContentVyAA021CustomizationBehaviorH033_0BD63AC3193ED2016BE9565DB357DE28LLVG_AA10TabOptionsV0eG0VQo_HOTm(uint64_t a1, unint64_t *a2, void (*a3)(void), uint64_t a4, unint64_t *a5)
{
  type metadata accessor for _ViewModifier_Content<CustomizationBehaviorModifier>(255, a2, a3);
  lazy protocol witness table accessor for type _ViewModifier_Content<CustomizationBehaviorModifier> and conformance _ViewModifier_Content<A>(a5, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

uint64_t PageViewWrapper.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = static Alignment.bottom.getter();
  *(a1 + 8) = v3;
  closure #1 in PageViewWrapper.body.getter(v1, a1 + 16);
  PageViewWrapper.toolbarModifier.getter(a1 + 288);
  result = swift_getKeyPath();
  *(a1 + 520) = result;
  *(a1 + 528) = 4;
  return result;
}

uint64_t closure #1 in PageViewWrapper.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageViewWrapper();
  v5 = PageViewWrapper.selectedIndex.getter(v4);
  v7 = v6;
  v9 = v8;
  outlined init with copy of _VariadicView_Children(a1 + 48, &v15);
  v14[0] = v5;
  v14[1] = v7;
  v14[2] = v9;
  closure #1 in closure #1 in PageViewWrapper.body.getter(a1, v13);
  outlined init with copy of UIKitPagingView(v14, v12);
  outlined init with copy of IndexPath?(v13, v11, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  outlined init with copy of UIKitPagingView(v12, a2);
  outlined init with copy of IndexPath?(v11, a2 + 88, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  outlined destroy of IndexPath?(v13, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  outlined destroy of UIKitPagingView(v14);
  outlined destroy of IndexPath?(v11, type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
  return outlined destroy of UIKitPagingView(v12);
}

uint64_t PageViewWrapper.selectedIndex.getter(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  outlined init with copy of _VariadicView_Children(v2 + 48, v31);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *&v31[16];
  *(v5 + 32) = *v31;
  *(v5 + 48) = v6;
  v7 = v33;
  *(v5 + 64) = v32;
  *(v5 + 80) = v7;
  v22 = v3;
  v23 = v4;
  v24 = partial apply for implicit closure #2 in implicit closure #1 in SystemTabView.BodyContent.body.getter;
  v25 = v5;
  type metadata accessor for Binding();
  type metadata accessor for Optional();
  type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(0, &lazy cache variable for type metadata for Binding<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for thunk for @callee_guaranteed (@in_guaranteed Binding<A>) -> (@owned Binding<Int?>), v21, MEMORY[0x1E69E73E0], v8, v9, &v27);

  if (v28)
  {
    v10 = v29;
    v11 = v27;
    v12 = v30;
  }

  else
  {
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for State<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E6981790]);
    State.projectedValue.getter();
    outlined init with copy of _VariadicView_Children(v2 + 48, v31);
    type metadata accessor for ChildIndexProjection();
    v13 = swift_allocObject();
    v14 = *&v31[16];
    v13[1] = *v31;
    v13[2] = v14;
    v15 = v33;
    v13[3] = v32;
    v13[4] = v15;
    v11 = specialized Binding.projecting<A>(_:)(v13);
    v10 = v16;
    v12 = v17;

    outlined destroy of Binding<AnyHashable>(&v26);
  }

  KeyPath = swift_getKeyPath();
  v26 = 0;
  BindingOperations.NilCoalescing.init(defaultValue:)();
  v19 = *v31;
  *v31 = KeyPath;
  *&v31[8] = v19;
  v27 = v10;
  LOBYTE(v28) = v12 & 1;

  swift_getAtKeyPath();
  type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>();
  _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(&lazy protocol witness table cache variable for type ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>> and conformance ComposedProjection<A, B>, type metadata accessor for ComposedProjection<WritableKeyPath<Int?, Int?>, BindingOperations.NilCoalescing<Int>>);
  dispatch thunk of AnyLocation.projecting<A>(_:)();

  return v11;
}

double closure #1 in closure #1 in PageViewWrapper.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageViewWrapper();
  if (*(a1 + *(v4 + 44)) == 2)
  {
    *(a2 + 176) = 0;
    result = 0.0;
    *(a2 + 144) = 0u;
    *(a2 + 160) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    PageViewWrapper.indexView.getter(v4, v15);
    EdgeInsets.init(_all:)();
    BYTE8(v16) = 4;
    *&v17 = v6;
    *(&v17 + 1) = v7;
    *&v18 = v8;
    *(&v18 + 1) = v9;
    *(a2 + 176) = 0;
    v10 = v15[5];
    *(a2 + 64) = v15[4];
    *(a2 + 80) = v10;
    v11 = v15[7];
    *(a2 + 96) = v15[6];
    *(a2 + 112) = v11;
    v12 = v15[1];
    *a2 = v15[0];
    *(a2 + 16) = v12;
    v13 = v15[3];
    *(a2 + 32) = v15[2];
    *(a2 + 48) = v13;
    v14 = v17;
    *(a2 + 128) = v16;
    *(a2 + 144) = v14;
    result = *&v18;
    *(a2 + 160) = v18;
  }

  return result;
}

uint64_t PageViewWrapper.indexView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = PageViewWrapper.selectedIndex.getter(a1);
  v7 = v6;
  v9 = v8;
  outlined init with copy of _VariadicView_Children(v2 + 48, v14);
  v13[0] = v5;
  v13[1] = v7;
  v13[2] = v9;
  KeyPath = swift_getKeyPath();
  v11 = *(v2 + *(a1 + 44));
  v14[8] = KeyPath;
  v15 = v11;
  v16 = -1;
  v17 = 4;
  specialized View.accessibilitySortPriority(_:)(a2, -1.0);
  return outlined destroy of IndexPath?(v13, type metadata accessor for ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>);
}

uint64_t PageViewWrapper.toolbarModifier.getter@<X0>(uint64_t a1@<X8>)
{
  v4[0] = 0;
  v4[1] = 0;
  memset(&v5[192], 0, 24);
  closure #1 in PageViewWrapper.toolbarModifier.getter(v1, v5);
  outlined init with copy of IndexPath?(v4, a1, type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>);
  return outlined destroy of IndexPath?(v4, type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>);
}

uint64_t specialized View.accessibilitySortPriority(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *__src = a2;
  LOBYTE(__src[1]) = 0;
  AccessibilityProperties.init<A>(_:_:)();
  outlined init with copy of AccessibilityProperties(v8, v6);
  AccessibilityAttachment.init(properties:)();
  outlined destroy of AccessibilityProperties(v8);
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v4 = swift_allocObject();
  memcpy((v4 + 16), __src, 0x128uLL);
  result = outlined init with copy of IndexPath?(v2, a1, type metadata accessor for ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>);
  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  return result;
}

uint64_t closure #1 in PageViewWrapper.toolbarModifier.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for status != -1)
  {
    swift_once();
  }

  outlined init with copy of ToolbarItemPlacement(&static ToolbarItemPlacement.status, v6);
  outlined init with copy of ToolbarItemPlacement(v6, v5);
  outlined init with copy of ToolbarItemPlacement(v5, a2);
  *(a2 + 184) = 0;
  closure #1 in closure #1 in PageViewWrapper.toolbarModifier.getter(a1, a2 + 48);
  outlined destroy of ToolbarItemPlacement(v5);
  return outlined destroy of ToolbarItemPlacement(v6);
}

__n128 closure #1 in closure #1 in PageViewWrapper.toolbarModifier.getter@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PageViewWrapper();
  if (*(a1 + *(v4 + 44)) == 2)
  {
    *(a2 + 128) = 0;
    result.n128_u64[0] = 0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    PageViewWrapper.indexView.getter(v4, v9);
    v6 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v6;
    *(a2 + 128) = v10;
    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    v8 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v8;
    result = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t PageViewWrapper.init(children:selection:displayMode:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  AnyHashable.init<A>(_:)();
  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 40) = 0;
  v8 = a1[1];
  *(a4 + 48) = *a1;
  *(a4 + 64) = v8;
  v9 = a1[3];
  *(a4 + 80) = a1[2];
  *(a4 + 96) = v9;
  v10 = type metadata accessor for PageViewWrapper();
  v11 = *(v10 + 40);
  type metadata accessor for Binding();
  v12 = type metadata accessor for Optional();
  result = (*(*(v12 - 8) + 32))(a4 + v11, a2, v12);
  *(a4 + *(v10 + 44)) = v7;
  return result;
}

id UIKitPagingView.makeUIView(context:)(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [objc_allocWithZone(type metadata accessor for PagingLayout()) init];
  v3 = [objc_allocWithZone(type metadata accessor for PagingCollectionView()) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  v4 = v3;
  [v4 _setShouldSkipForcedLayoutBeforeBatchUpdates_];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor_];

  v8 = v6;
  [v8 setShowsHorizontalScrollIndicator_];
  [v8 setDataSource_];
  [v8 setDelegate_];

  [v8 setPagingEnabled_];
  type metadata accessor for UIKitPagingCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = MEMORY[0x18D00C850](0xD00000000000001CLL, 0x800000018CD44A20);
  [v8 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v10];

  v11 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView);
  *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView) = v8;
  v12 = v8;

  return v12;
}

uint64_t UIKitPagingView.updateUIView(_:context:)(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a2[3];
  v6 = *(a2 + 32);
  v7 = a2[5];
  v20 = *a2;
  v21 = *(a2 + 1);
  v22 = v5;
  v23 = v6;
  RepresentableContextValues.environment.getter();
  v20 = v18;
  *&v21 = v19;
  EnvironmentValues.layoutDirection.getter();

  v8 = v24;
  v9 = *(v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection);
  *(v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection) = v24;
  if (v9 != v8)
  {
    v10 = v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex;
    *v10 = 0;
    *(v10 + 8) = 1;
    v11 = v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex;
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex) = -1;
  }

  outlined init with copy of _VariadicView_Children((v2 + 3), &v20);
  v12 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
  swift_beginAccess();
  outlined assign with take of _VariadicView_Children(&v20, v7 + v12);
  swift_endAccess();
  Coordinator.updateDataSourceIfNeeded(_:)();
  v13 = v3[1];
  v14 = v3[2];
  v15 = (v7 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
  *v15 = *v3;
  v15[1] = v13;
  v15[2] = v14;

  v16 = Transaction.isPageScrollAnimated.getter();

  return Coordinator.scroll(_:isAnimated:)(a1, v16 & 1);
}

char *UIKitPagingView._identifiedViewTree(in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v2 + 2);
  v32 = *v2;
  v33 = v9;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v31);
  MEMORY[0x18D0006A0](*v31, 0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  v11 = [a1 cellForItemAtIndexPath_];

  if (v11)
  {
    type metadata accessor for UIKitPagingCell();
    v12 = swift_dynamicCastClass();
    if (v12 && (v13 = *(v12 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host)) != 0)
    {
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
      v14 = v13;
      ViewGraphRootValueUpdater._preferenceValue<A>(_:)();
      outlined init with copy of _IdentifiedViewTree(&v32, v31);
      if (v31[168] != 2 || (v15 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v31[40], *&v31[104]), vorrq_s8(*&v31[72], *&v31[136])), vorrq_s8(vorrq_s8(*&v31[56], *&v31[120]), vorrq_s8(*&v31[88], *&v31[152]))), vorrq_s8(*&v31[8], *&v31[24])), *&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *v31))
      {
        outlined destroy of _IdentifiedViewTree(v31);
        outlined init with copy of _IdentifiedViewTree(&v32, v31);
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        v19 = v16;

        outlined destroy of _IdentifiedViewTree(&v32);
        result = v19;
        *(v19 + 2) = v18 + 1;
        v21 = &v19[176 * v18];
        v23 = *&v31[16];
        v22 = *&v31[32];
        *(v21 + 2) = *v31;
        *(v21 + 3) = v23;
        *(v21 + 4) = v22;
        v24 = *&v31[96];
        v26 = *&v31[48];
        v25 = *&v31[64];
        *(v21 + 7) = *&v31[80];
        *(v21 + 8) = v24;
        *(v21 + 5) = v26;
        *(v21 + 6) = v25;
        v28 = *&v31[128];
        v27 = *&v31[144];
        v29 = *&v31[112];
        *(v21 + 185) = *&v31[153];
        *(v21 + 10) = v28;
        *(v21 + 11) = v27;
        *(v21 + 9) = v29;
        if (!*(v19 + 2))
        {
          goto LABEL_9;
        }

LABEL_12:
        v30 = 1;
        goto LABEL_13;
      }

      outlined destroy of _IdentifiedViewTree(&v32);

      outlined destroy of _IdentifiedViewTree(v31);
    }

    else
    {
    }
  }

  result = MEMORY[0x1E69E7CC0];
  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_12;
  }

LABEL_9:

  result = 0;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  v30 = 2;
  *(a2 + 8) = 0u;
LABEL_13:
  *a2 = result;
  *(a2 + 168) = v30;
  return result;
}

void UIKitPagingView._overrideSizeThatFits(_:in:uiView:)(double *a1, uint64_t a2, void *a3)
{
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    v5 = UIKitPagingView.layoutTraitsHost(for:)(a3);
    if (v5)
    {
      v6 = v5;
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
      ViewRendererHost.sizeThatFits(_:)();
      v8 = v7;
      v10 = v9;
      v11 = COERCE_DOUBLE(_ProposedSize.width.getter());
      if (v12)
      {
        v11 = 0.0;
      }

      if (v8 > v11)
      {
        v11 = v8;
      }

      *a1 = v11;
      *&v13 = COERCE_DOUBLE(_ProposedSize.height.getter());
      v15 = v14;

      v16 = *&v13;
      if (v15)
      {
        v16 = 0.0;
      }

      if (v10 > v16)
      {
        v16 = v10;
      }

      a1[1] = v16;
    }
  }
}

char *UIKitPagingView.layoutTraitsHost(for:)(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 2);
  v18 = *v1;
  v19 = v7;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](v17);
  MEMORY[0x18D0006A0](v17[0], 0);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v9 = [a1 cellForItemAtIndexPath_];

  if (v9)
  {
    type metadata accessor for UIKitPagingCell();
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host);
      v12 = v11;

      if (v11)
      {
        return v11;
      }
    }

    else
    {
    }
  }

  if (!_VariadicView_Children.endIndex.getter())
  {
    return 0;
  }

  _VariadicView_Children.subscript.getter();
  outlined init with copy of _ViewList_View(&v18, v17);
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
  v14 = objc_allocWithZone(v13);
  v11 = specialized _UIHostingView.init(rootView:)(v17);
  outlined destroy of _VariadicView_Children.Element(&v18);
  return v11;
}

uint64_t protocol witness for UIViewRepresentable.makeCoordinator() in conformance UIKitPagingView@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  outlined init with copy of _VariadicView_Children((v1 + 3), v10);
  v9 = 0;
  v6 = objc_allocWithZone(type metadata accessor for Coordinator());

  v7 = specialized Coordinator.init(selectedIndex:children:layoutDirection:)(v3, v4, v5, v10, &v9);

  *a1 = v7;
  return result;
}

void protocol witness for UIViewRepresentable._overrideLayoutTraits(_:for:) in conformance UIKitPagingView(uint64_t a1, void *a2)
{
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>();
  if ((static SemanticFeature.isEnabled.getter() & 1) == 0)
  {
    v3 = UIKitPagingView.layoutTraitsHost(for:)(a2);
    if (v3)
    {
      v4 = v3;
      static _ProposedSize.unspecified.getter();
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
      ViewRendererHost.sizeThatFits(_:)();
      _LayoutTraits.minSize.setter();
      _LayoutTraits.maxSize.setter();
      _LayoutTraits.idealSize.setter();
    }
  }
}

void PagingLayout.layoutAttributesForElements(in:)(double a1, double a2, double a3, double a4)
{
  v14.receiver = v4;
  v14.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v14, sel_layoutAttributesForElementsInRect_, a1, a2, a3, a4);
  if (v9)
  {
    v10 = v9;
    type metadata accessor for UICollectionViewLayoutAttributes();
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = __CocoaSet.count.getter();
      if (!v12)
      {
        return;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        return;
      }
    }

    if (v12 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v12; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x18D00E9C0](i, v11);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t Coordinator.updateDataSourceIfNeeded(_:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
  swift_beginAccess();
  outlined init with copy of _VariadicView_Children(v1 + v2, v7);
  v3 = _ViewList_Backing.ids.getter();
  outlined destroy of _ViewList_Backing(v7);

  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs11AnyHashableV_Tt1g5(v4, v3);

  if ((v5 & 1) == 0)
  {
    v7[0] = MEMORY[0x1E69E7CC0];
    type metadata accessor for CollectionChanges<Int, Int>();
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for [AnyHashable], MEMORY[0x1E69E69B8], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [AnyHashable] and conformance [A]();
    CollectionChanges.formChanges<A, B>(from:to:)();
    PagingCollectionView.apply(changes:newIDs:)(v7, v3);
  }
}

uint64_t Coordinator.updateContents(_:)(void *a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v7 = [a1 indexPathsForVisibleItems];
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v12;
    v13 = (*(v11 + 64) + 32) & ~*(v11 + 64);
    v19[1] = v8;
    v14 = v8 + v13;
    v15 = *(v11 + 56);
    v12(v6, v14, v2);
    while (1)
    {
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v17 = [v20 cellForItemAtIndexPath_];

      if (v17)
      {
        Coordinator.configureCell(_:at:)(v17);
      }

      (*(v11 - 8))(v6, v2);
      v14 += v15;
      if (!--v9)
      {
        break;
      }

      v10(v6, v14, v2);
    }
  }
}

uint64_t Coordinator.scroll(_:isAnimated:)(void *a1, int a2)
{
  v44 = a2;
  type metadata accessor for IndexPath?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v2;
  v11 = (v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex);
  v12 = (v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex);
  if (*(v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex + 8) == 1)
  {
    v13 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
    v46 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
    v47 = v13;
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    v12 = &v48;
    MEMORY[0x18D00ACC0](&v48);
  }

  MEMORY[0x18D0006A0](*v12, 0);
  v43 = *(v8 + 16);
  v43(v6, v10, v7);
  v42 = *(v8 + 56);
  v42(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v6, a1 + v14);
  swift_endAccess();
  v15 = v11;
  if (*(v11 + 8) == 1)
  {
    v16 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
    v46 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
    v47 = v16;
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    v15 = &v48;
    MEMORY[0x18D00ACC0](&v48);
  }

  v17 = *v15;
  v41 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex;
  if (v17 != *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex))
  {
    if (*(v11 + 8) == 1)
    {
      v19 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
      v46 = *(v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
      v47 = v19;
      _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
      v11 = &v48;
      MEMORY[0x18D00ACC0](&v48);
    }

    v20 = *v11;
    v21 = v45 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex;
    *v21 = v20;
    *(v21 + 8) = 0;
    [a1 contentOffset];
    v23 = v22;
    v25 = v24;
    v26 = [a1 window];
    if (v26)
    {

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:v44 & 1];
    }

    else
    {
      v43(v6, v10, v7);
      v42(v6, 0, 1, v7);
      v28 = v21;
      v29 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_pendingIndexPath;
      swift_beginAccess();
      v30 = a1 + v29;
      v21 = v28;
      outlined assign with take of IndexPath?(v6, v30);
      swift_endAccess();
    }

    [a1 contentOffset];
    if (v32 == v23 && v31 == v25)
    {
      [a1 contentOffset];
      v34 = v33;
      v36 = v35;
      [a1 bounds];
      Coordinator.index(at:in:)(v34, v36, v37);
      if ((v39 & 1) == 0)
      {
        *(v45 + v41) = v38;
        if ((*(v21 + 8) & 1) == 0 && *v21 == v38)
        {
          *v21 = 0;
          *(v21 + 8) = 1;
        }

        Coordinator.updateSelectedIndex(newIndex:)(v38);
      }
    }
  }

  return (*(v8 + 8))(v10, v7);
}

void Coordinator.index(at:in:)(double a1, double a2, double a3)
{
  if (a3 > 0.0)
  {
    v4 = round(a1 / a3);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        if (*(v3 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection) != 1)
        {
          return;
        }

        v5 = v4;
        v6 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
        swift_beginAccess();
        outlined init with copy of _VariadicView_Children(v3 + v6, v9);
        v7 = _VariadicView_Children.endIndex.getter();
        if ((_VariadicView_Children.endIndex.getter() & 0x8000000000000000) == 0)
        {
          v8 = _VariadicView_Children.endIndex.getter();
          outlined destroy of _VariadicView_Children(v9);
          if ((v7 & 0x8000000000000000) == 0 && v8 >= v7)
          {
            if (!__OFSUB__(v7 - 1, v5))
            {
              return;
            }

LABEL_16:
            __break(1u);
            return;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t @objc Coordinator.collectionView(_:willDisplay:forItemAt:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void Coordinator.scrollViewDidScroll(_:)(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView);
  if (v2)
  {
    v3 = v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize;
    if ((*(v3 + 16) & 1) == 0)
    {
      v4 = *v3;
      [a1 bounds];
      if (v4 == CGRectGetWidth(v15))
      {
        [a1 contentOffset];
        v7 = v6;
        v9 = v8;
        [a1 bounds];
        Coordinator.index(at:in:)(v7, v9, v10);
        if ((v12 & 1) == 0)
        {
          *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex) = v11;
          v13 = v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex;
          if ((*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex + 8) & 1) == 0 && *v13 == v11)
          {
            *v13 = 0;
            *(v13 + 8) = 1;
          }

          Coordinator.updateSelectedIndex(newIndex:)(v11);
        }
      }
    }
  }
}

void Coordinator.configureCell(_:at:)(void *a1)
{
  v2 = v1;
  type metadata accessor for UIKitPagingCell();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
  swift_beginAccess();
  outlined init with copy of _VariadicView_Children(v1 + v6, v42);
  v7 = a1;
  v8 = _VariadicView_Children.endIndex.getter();
  if (_VariadicView_Children.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v9 = _VariadicView_Children.endIndex.getter();
  outlined destroy of _VariadicView_Children(v42);
  if (v8 < 0 || v9 < v8)
  {
    goto LABEL_16;
  }

  v10 = IndexPath.item.getter();
  if ((v10 & 0x8000000000000000) != 0 || v10 >= v8)
  {
  }

  else
  {
    outlined init with copy of _VariadicView_Children(v2 + v6, v41);
    IndexPath.item.getter();
    _VariadicView_Children.subscript.getter();
    outlined destroy of _VariadicView_Children(v41);
    outlined init with copy of _ViewList_View(v42, v43);
    outlined destroy of _VariadicView_Children.Element(v42);
    v11 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host;
    v12 = *&v5[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host];
    if (v12)
    {
      v13 = v12;
      v14 = [v5 contentView];
      [v14 bounds];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;

      [v13 setFrame_];
      outlined init with copy of _ViewList_View(v43, v42);
      outlined init with copy of _ViewList_View(v42, v41);
      v23 = *((*MEMORY[0x1E69E7D40] & *v13) + 0x60);
      swift_beginAccess();
      outlined assign with take of _ViewList_View(v41, v13 + v23);
      swift_endAccess();
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      outlined destroy of _ViewList_View(v42);
    }

    else
    {
      outlined init with copy of _ViewList_View(v43, v42);
      _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
      v25 = objc_allocWithZone(v24);
      v26 = specialized _UIHostingView.init(rootView:)(v42);
      v27 = *&v5[v11];
      *&v5[v11] = v26;
      v28 = v26;

      v29 = *&v5[v11];
      if (v29)
      {
        *(v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x1C0) + 8) = &protocol witness table for UIKitPagingCell;
        swift_unknownObjectWeakAssign();
      }

      v30 = v7;
      v31 = [v5 contentView];
      [v31 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      [v28 setFrame_];
      [v28 setAutoresizingMask_];
      v40 = [v5 contentView];

      [v40 addSubview_];
    }

    outlined destroy of _ViewList_View(v43);
  }
}

void *Coordinator.updateSelectedIndex(newIndex:)(void *result)
{
  if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex + 8) == 1)
  {
    v2 = result;
    v3 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
    v6 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
    v7 = v3;
    _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
    result = MEMORY[0x18D00ACC0](&v5);
    if (v5 != v2)
    {
      v4 = v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex;
      if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex + 8))
      {
        *v4 = v2;
        *(v4 + 8) = 0;
        LOBYTE(v6) = 17;
        swift_allocObject();
        swift_unknownObjectWeakInit();

        static Update.enqueueAction(reason:_:)();
      }

      else if (*v4 != v2)
      {
        *v4 = v2;
        *(v4 + 8) = 0;
      }
    }
  }

  return result;
}

void closure #1 in Coordinator.updateSelectedIndex(newIndex:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex + 8];

    if ((v1 & 1) == 0)
    {
      swift_beginAccess();
      v2 = swift_unknownObjectWeakLoadStrong();
      if (v2)
      {
        v3 = v2;

        dispatch thunk of AnyLocation.set(_:transaction:)();
      }
    }
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = &v4[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex];
    *v5 = 0;
    v5[8] = 1;
  }
}

uint64_t PagingCollectionView.apply(changes:newIDs:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = a2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = partial apply for closure #1 in PagingCollectionView.apply(changes:newIDs:);
  *(v7 + 24) = v6;
  v17 = partial apply for thunk for @callee_guaranteed () -> ();
  v18 = v7;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed () -> ();
  v16 = &block_descriptor_20;
  v8 = _Block_copy(&v13);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = partial apply for closure #2 in PagingCollectionView.apply(changes:newIDs:);
  v18 = v9;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v16 = &block_descriptor_66;
  v10 = _Block_copy(&v13);

  [v2 performBatchUpdates:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in PagingCollectionView.apply(changes:newIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = type metadata accessor for IndexPath();
  v6 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v89 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v89 - v12;
  swift_beginAccess();
  v96 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = [Strong dataSource];

    if (v16)
    {
      type metadata accessor for Coordinator();
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        *(v17 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastIDs) = a2;
      }

      swift_unknownObjectRelease();
    }
  }

  v102 = 0;
  _sSnySiGMaTm_0(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v19 = v18;
  swift_bridgeObjectRetain_n();
  v89[2] = a3;
  v89[1] = v19;
  CollectionChanges.Projection.init(kind:changes:)();
  LODWORD(v95) = v103;
  v20 = v104;
  v21 = v105;
  v22 = v106;
  swift_beginAccess();
  v97 = v10;
  if (v21 != v22)
  {
    v94 = v20 + 32;
    v23 = MEMORY[0x1E69E7CD0];
    v58 = v21;
    v93 = v20;
    v92 = v21;
    v91 = v22;
    while ((v58 & 0x8000000000000000) == 0)
    {
      if (v58 >= *(v20 + 16))
      {
        goto LABEL_98;
      }

      v61 = v94 + 40 * v58;
      v10 = v58;
      if (*(v61 + 32) >= 2u)
      {
        goto LABEL_108;
      }

      v63 = *v61;
      v62 = *(v61 + 8);
      LOBYTE(v103) = v95;
      v104 = v20;
      v105 = v21;
      v106 = v22;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>();
      v98 = CollectionChanges.Projection.index(after:)(v10);
      if (v63 != v62)
      {
        if (v62 < v63)
        {
          goto LABEL_105;
        }

        v64 = v63;
        if (v63 >= v62)
        {
          goto LABEL_106;
        }

        do
        {
          v66 = v23 + 56;
          v67 = v64;
          while (1)
          {
            v64 = v67 + 1;
            v68 = MEMORY[0x18D00F6C0](*(v23 + 40), v67);
            v69 = -1 << *(v23 + 32);
            v10 = v68 & ~v69;
            if (((*(v66 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
            {
              break;
            }

            v70 = ~v69;
            while (*(*(v23 + 48) + 8 * v10) != v67)
            {
              v10 = (v10 + 1) & v70;
              if (((*(v66 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            ++v67;
            if (v64 == v62)
            {
              goto LABEL_62;
            }
          }

LABEL_54:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v103 = v23;
          specialized _NativeSet.insertNew(_:at:isUnique:)(v67, v10, isUniquelyReferenced_nonNull_native);
          v23 = v103;
        }

        while (v64 != v62);
      }

LABEL_62:
      v71 = v62 - v63;
      if (__OFSUB__(v62, v63))
      {
        goto LABEL_99;
      }

      if (v71)
      {
        v103 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v71 & ~(v71 >> 63), 0);
        v10 = v97;
        if (v62 < v63 || v71 < 0)
        {
          goto LABEL_103;
        }

        v72 = v103;
        while (1)
        {
          MEMORY[0x18D000680](v63, 0);
          v103 = v72;
          v74 = *(v72 + 16);
          v73 = *(v72 + 24);
          if (v74 >= v73 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1);
            v72 = v103;
          }

          *(v72 + 16) = v74 + 1;
          (*(v6 + 32))(v72 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v74, v13, v99);
          if (v62 == v63)
          {
            break;
          }

          if (v62 == ++v63)
          {
            goto LABEL_73;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v10 = v97;
LABEL_73:
      v75 = swift_unknownObjectWeakLoadStrong();
      if (v75)
      {
        v59 = v75;
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v59 deleteItemsAtIndexPaths_];
      }

      else
      {
      }

      v20 = v93;
      v21 = v92;
      v22 = v91;
      v58 = v98;
      if (v98 == v91)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_97;
  }

  v23 = MEMORY[0x1E69E7CD0];
LABEL_8:

  LOBYTE(v101) = 1;
  CollectionChanges.Projection.init(kind:changes:)();
  LODWORD(v95) = v103;
  v24 = v104;
  v25 = v105;
  v26 = v106;
  swift_beginAccess();
  v98 = v25;
  if (v25 != v26)
  {
    v94 = v24 + 32;
    v76 = v98;
    v92 = v24;
    v93 = v26;
    while ((v76 & 0x8000000000000000) == 0)
    {
      if (v76 >= *(v24 + 16))
      {
        goto LABEL_101;
      }

      v79 = v94 + 40 * v76;
      if (*(v79 + 32) >= 2u)
      {
        v103 = 0;
        v104 = 0xE000000000000000;
        _StringGuts.grow(_:)(17);

        v103 = 0x2064696C61766E69;
        v104 = 0xEF203A7865646E69;
        v100 = v76;
        goto LABEL_110;
      }

      v81 = *v79;
      v80 = *(v79 + 8);
      LOBYTE(v103) = v95;
      v104 = v24;
      v105 = v98;
      v106 = v26;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>();
      v82 = CollectionChanges.Projection.index(after:)(v76);
      v83 = v80 - v81;
      if (__OFSUB__(v80, v81))
      {
        goto LABEL_102;
      }

      v76 = v82;
      if (v83)
      {
        v103 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83 & ~(v83 >> 63), 0);
        if (v80 < v81 || v83 < 0)
        {
          goto LABEL_104;
        }

        v84 = v103;
        while (1)
        {
          MEMORY[0x18D000680](v81, 0);
          v103 = v84;
          v86 = *(v84 + 16);
          v85 = *(v84 + 24);
          if (v86 >= v85 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v85 > 1, v86 + 1, 1);
            v84 = v103;
          }

          *(v84 + 16) = v86 + 1;
          (*(v6 + 32))(v84 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v86, v10, v99);
          if (v80 == v81)
          {
            goto LABEL_94;
          }

          if (v80 == ++v81)
          {
            v24 = v92;
            break;
          }
        }
      }

      v87 = swift_unknownObjectWeakLoadStrong();
      v26 = v93;
      if (v87)
      {
        v77 = v87;
        v78 = Array._bridgeToObjectiveC()().super.isa;

        [v77 insertItemsAtIndexPaths_];

        v10 = v97;
      }

      else
      {
      }

      if (v76 == v26)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_100;
  }

LABEL_9:

  LOBYTE(v100) = 2;
  type metadata accessor for (Range<Int>, Range<Int>)();
  CollectionChanges.Projection.init(kind:changes:)();
  v94 = v104;
  v27 = v106;
  v93 = v105;
  if (v105 == v106)
  {
LABEL_43:
  }

  LODWORD(v92) = v103;
  swift_beginAccess();
  v28 = v23 + 56;
  v98 = v6 + 32;
  v29 = v93;
  v91 = v27;
  while (1)
  {
    v30 = v92;
    v31 = v94;
    v32 = v93;
    v33 = specialized CollectionChanges.Projection.subscript.getter(v29, v92, v94);
    v35 = v34;
    LOBYTE(v103) = v30;
    v36 = v33;
    v104 = v31;
    v105 = v32;
    v106 = v27;
    type metadata accessor for CollectionChanges<Int, Int>.Projection<(Range<Int>, Range<Int>)>();
    v95 = CollectionChanges.Projection.index(after:)(v29);
    v10 = MEMORY[0x1E69E7CC0];
    if (v36 != v35)
    {
      break;
    }

LABEL_13:
    v37 = *(v10 + 16);
    if (v37)
    {
      v103 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
      v38 = v103;
      v39 = 32;
      v40 = v90;
      do
      {
        MEMORY[0x18D000680](*(v10 + v39), 0);
        v103 = v38;
        v42 = *(v38 + 16);
        v41 = *(v38 + 24);
        if (v42 >= v41 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1);
          v38 = v103;
        }

        *(v38 + 16) = v42 + 1;
        (*(v6 + 32))(v38 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v42, v40, v99);
        v39 += 8;
        --v37;
      }

      while (v37);
    }

    v54 = swift_unknownObjectWeakLoadStrong();
    v27 = v91;
    v29 = v95;
    if (v54)
    {
      v55 = v54;
      v56 = Array._bridgeToObjectiveC()().super.isa;

      [v55 reloadItemsAtIndexPaths_];

      if (v29 == v27)
      {
        goto LABEL_43;
      }
    }

    else
    {

      if (v29 == v27)
      {
        goto LABEL_43;
      }
    }
  }

  if (v35 >= v36)
  {
    v43 = v36;
    v97 = v36;
LABEL_21:
    v44 = v43;
    if (v35 <= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v35;
    }

    v46 = v43;
    while (v44 >= v36)
    {
      if (v46 == v45)
      {
        goto LABEL_96;
      }

      v43 = v46 + 1;
      if (!*(v23 + 16) || (v47 = MEMORY[0x18D00F6C0](*(v23 + 40), v46), v48 = -1 << *(v23 + 32), v49 = v47 & ~v48, ((*(v28 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0))
      {
LABEL_35:
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v103 = v10;
        if ((v51 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
          v10 = v103;
        }

        v53 = *(v10 + 16);
        v52 = *(v10 + 24);
        if (v53 >= v52 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
          v10 = v103;
        }

        *(v10 + 16) = v53 + 1;
        *(v10 + 8 * v53 + 32) = v46;
        v36 = v97;
        if (v43 != v35)
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }

      v50 = ~v48;
      while (*(*(v23 + 48) + 8 * v49) != v46)
      {
        v49 = (v49 + 1) & v50;
        if (((*(v28 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      ++v46;
      if (v43 == v35)
      {
        goto LABEL_13;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
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
  }

  __break(1u);
LABEL_108:
  v103 = 0;
  v104 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v103 = 0x2064696C61766E69;
  v104 = 0xEF203A7865646E69;
  v101 = v10;
LABEL_110:
  v88 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v88);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #2 in PagingCollectionView.apply(changes:newIDs:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (![Strong dataSource])
    {
LABEL_5:

      return;
    }

    type metadata accessor for Coordinator();
    if (swift_dynamicCastClass())
    {
      Coordinator.updateContents(_:)(v1);
      swift_unknownObjectRelease();
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }
}

uint64_t PagingCollectionView.layoutSubviews()()
{
  v1 = v0;
  type metadata accessor for IndexPath?(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  v17 = &v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize];
  v18 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize];
  v19 = *&v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize + 8];
  v20 = v0[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastLayoutSize + 16];
  [v1 bounds];
  if ((v20 & 1) != 0 || (v18 == v21 ? (v23 = v19 == v22) : (v23 = 0), !v23))
  {
    v24 = [v1 collectionViewLayout];
    [v24 invalidateLayout];
  }

  v25 = type metadata accessor for PagingCollectionView();
  v41.receiver = v1;
  v41.super_class = v25;
  objc_msgSendSuper2(&v41, sel_layoutSubviews);
  v26 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_pendingIndexPath;
  swift_beginAccess();
  outlined init with copy of IndexPath?(v1 + v26, v9, type metadata accessor for IndexPath?);
  v27 = *(v11 + 48);
  if (v27(v9, 1, v10) == 1)
  {
    outlined destroy of IndexPath?(v9, type metadata accessor for IndexPath?);
    v28 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath;
    swift_beginAccess();
    v29 = v1 + v28;
    v30 = v40;
    outlined init with copy of IndexPath?(v29, v40, type metadata accessor for IndexPath?);
    if (v27(v30, 1, v10) == 1)
    {
      return outlined destroy of IndexPath?(v30, type metadata accessor for IndexPath?);
    }

    else
    {
      v33 = v39;
      (*(v11 + 32))(v39, v30, v10);
      [v1 bounds];
      if ((v17[16] & 1) != 0 || v34 != *v17 || v35 != *(v17 + 1))
      {
        [v1 bounds];
        *v17 = v36;
        *(v17 + 1) = v37;
        v17[16] = 0;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        [v1 scrollToItemAtIndexPath:isa atScrollPosition:16 animated:0];
      }

      return (*(v11 + 8))(v33, v10);
    }
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    (*(v11 + 56))(v6, 1, 1, v10);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v26);
    swift_endAccess();
    v32 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v1 scrollToItemAtIndexPath:v32 atScrollPosition:16 animated:0];

    return (*(v11 + 8))(v16, v10);
  }
}

id PagingCollectionView.scrollToItem(at:at:animated:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  type metadata accessor for IndexPath?(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v4 dataSource];
  if (result)
  {
    type metadata accessor for Coordinator();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastIDs);

      swift_unknownObjectRelease();
      v15 = *(v14 + 16);

      if (v15)
      {
        v16 = type metadata accessor for IndexPath();
        v17 = *(v16 - 8);
        (*(v17 + 16))(v11, a1, v16);
        (*(v17 + 56))(v11, 0, 1, v16);
        v18 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF020PagingCollectionView_lastScrolledIndexPath;
        swift_beginAccess();
        outlined assign with take of IndexPath?(v11, v4 + v18);
        swift_endAccess();
        [v4 setPagingEnabled_];
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v20 = type metadata accessor for PagingCollectionView();
        v22.receiver = v4;
        v22.super_class = v20;
        objc_msgSendSuper2(&v22, sel_scrollToItemAtIndexPath_atScrollPosition_animated_, isa, a2, a3 & 1);

        return [v4 setPagingEnabled_];
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id Coordinator.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for PagingCollectionView()
{
  result = type metadata singleton initialization cache for PagingCollectionView;
  if (!type metadata singleton initialization cache for PagingCollectionView)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for PagingCollectionView()
{
  type metadata accessor for IndexPath?(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined assign with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexPath?(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [AnyHashable] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AnyHashable] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AnyHashable] and conformance [A])
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, &lazy cache variable for type metadata for [AnyHashable], MEMORY[0x1E69E69B8], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AnyHashable] and conformance [A]);
  }

  return result;
}

id specialized Coordinator.init(selectedIndex:children:layoutDirection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v11 = *a5;
  *&v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_collectionView] = 0;
  v12 = &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSeenIndex];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_pendingSelectedIndex];
  *v13 = 0;
  v13[8] = 1;
  outlined init with copy of _VariadicView_Children(a4, &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children]);
  v14 = &v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex];
  *v14 = a1;
  v14[1] = a2;
  v14[2] = a3;
  v21[0] = a1;
  v21[1] = a2;
  v21[2] = a3;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  v16 = v15;

  MEMORY[0x18D00ACC0](&v22, v16);
  *&v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastSeenIndex] = v22;
  outlined init with copy of _VariadicView_Children(a4, v21);
  v17 = _ViewList_Backing.ids.getter();
  outlined destroy of _ViewList_Backing(v21);
  *&v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_lastIDs] = v17;
  v6[OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection] = v11;
  v20.receiver = v6;
  v20.super_class = type metadata accessor for Coordinator();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  outlined destroy of _VariadicView_Children(a4);
  return v18;
}

void specialized Coordinator.collectionView(_:willDisplay:forItemAt:)(void *a1)
{
  type metadata accessor for UIKitPagingCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host);
    if (v3)
    {
      v4 = a1;
      v5 = v3;
      if (UIHostingViewBase.isHiddenForReuse.getter())
      {
        UIHostingViewBase.isHiddenForReuse.setter();
      }
    }
  }
}

void specialized Coordinator.collectionView(_:didEndDisplaying:forItemAt:)(void *a1)
{
  type metadata accessor for UIKitPagingCell();
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF015UIKitPagingCell_host);
    if (v3)
    {
      v4 = a1;
      v5 = v3;
      if ((UIHostingViewBase.isHiddenForReuse.getter() & 1) == 0)
      {
        UIHostingViewBase.isHiddenForReuse.setter();
      }
    }
  }
}

uint64_t specialized Coordinator.collectionView(_:targetContentOffsetForProposedContentOffset:)(void *a1)
{
  v2 = v1;
  [a1 bounds];
  CGRectGetWidth(v12);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex + 16);
  v10 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_selectedIndex);
  v11 = v4;
  _s7SwiftUI7BindingVySiGMaTm_1(0, &lazy cache variable for type metadata for Binding<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E6981948]);
  result = MEMORY[0x18D00ACC0](v9);
  if (*(v1 + OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_layoutDirection) == 1)
  {
    [a1 bounds];
    CGRectGetWidth(v13);
    v6 = OBJC_IVAR____TtC7SwiftUIP33_8825076C2763A50452A210CBE1FA4AF011Coordinator_children;
    swift_beginAccess();
    outlined init with copy of _VariadicView_Children(v2 + v6, &v10);
    v7 = _VariadicView_Children.endIndex.getter();
    result = _VariadicView_Children.endIndex.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v8 = _VariadicView_Children.endIndex.getter();
      result = outlined destroy of _VariadicView_Children(&v10);
      if ((v7 & 0x8000000000000000) == 0 && v8 >= v7)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t type metadata accessor for UICollectionViewLayoutAttributes()
{
  result = lazy cache variable for type metadata for UICollectionViewLayoutAttributes;
  if (!lazy cache variable for type metadata for UICollectionViewLayoutAttributes)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UICollectionViewLayoutAttributes);
  }

  return result;
}

uint64_t type metadata completion function for PageViewWrapper()
{
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for PageViewWrapper(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 84);
  v8 = v6;
  v9 = v6 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v10 = ((v8 + 16) & ~v8) + *(v5 + 64);
  v11 = v6 & 0x100000;
  if (v8 <= 7 && v11 == 0 && v10 + (v9 & (v8 + 112)) + 1 <= 0x18)
  {
    v15 = *(a2 + 3);
    *(a1 + 24) = v15;
    (**(v15 - 8))(a1);
    v3[5] = a2[5];
    v17 = ((v3 + 55) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
    v19 = v18[3];
    v17[3] = v19;
    v17[4] = v18[4];
    v20 = **(v19 - 8);

    v20(v17, v18, v19);
    v21 = v18[5];
    v17[5] = v21;
    v17[6] = v18[6];
    v17[7] = v18[7];
    v22 = ((v17 + 71) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v18 + 71) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v21;

    if ((v7 & 0x80000000) != 0)
    {
      if ((*(v5 + 48))(v24 + 1, v7, v4))
      {
LABEL_14:
        memcpy(v22, v23, v10);
LABEL_17:
        *(v22 + v10) = *(v23 + v10);
        return v3;
      }
    }

    else
    {
      v26 = *v24;
      if (*v24 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if (v26 != -1)
      {
        goto LABEL_14;
      }
    }

    *v22 = *v23;
    v27 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v24;
    v28 = *(v5 + 16);

    v28(v27 + 1, v24 + 1, v4);
    goto LABEL_17;
  }

  v14 = *a2;
  *v3 = *a2;
  v3 = (v14 + (v9 & (v8 + 16)));

  return v3;
}

uint64_t destroy for PageViewWrapper(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  v4 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v4);

  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + (v7 | 7) + 64) & ~(v7 | 7);
  v9 = ~v7;
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = v6;
  if ((*(v6 + 84) & 0x80000000) != 0)
  {
    result = (*(v6 + 48))((v10 + v7 + 8) & v9);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v11 = *v10;
  if (*v10 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  result = (v11 + 1);
  if (v11 == -1)
  {
LABEL_7:

    v13 = *(v14 + 8);

    return v13((v10 + v7 + 8) & v9, v5);
  }

  return result;
}

uint64_t initializeWithCopy for PageViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  *(a1 + 40) = *(a2 + 40);
  v7 = ((a1 + 55) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[3];
  v7[3] = v9;
  v7[4] = v8[4];
  v10 = **(v9 - 8);

  v10(v7, v8, v9);
  v11 = v8[5];
  v7[5] = v11;
  v7[6] = v8[6];
  v7[7] = v8[7];
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 84);
  v15 = *(v13 + 80);
  v16 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  __dst = ((v7 + v15 + 64) & v16);
  v17 = ((v8 + v15 + 64) & v16);
  v18 = ~v15;
  v19 = ((v15 + 16) & ~v15) + *(v13 + 64);
  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = v11;

  if ((v14 & 0x80000000) == 0)
  {
    v22 = *v20;
    if (*v20 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    if (v22 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    v23 = __dst;
    *__dst = *v17;
    v24 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    v28 = v12;
    *v24 = *v20;
    v25 = v24 + v15 + 8;
    v26 = *(v13 + 16);

    v26(v25 & v18, (v20 + v15 + 8) & v18, v28);
    goto LABEL_8;
  }

  if (!(*(v13 + 48))((v20 + v15 + 8) & v18, v14, v12))
  {
    goto LABEL_7;
  }

LABEL_5:
  v23 = __dst;
  memcpy(__dst, v17, v19);
LABEL_8:
  *(v23 + v19) = *(v17 + v19);
  return a1;
}

uint64_t *assignWithCopy for PageViewWrapper(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  a1[5] = a2[5];

  v6 = ((a1 + 55) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v6, v7);
  v8 = v7[5];
  v9 = v6[5];
  v6[5] = v8;
  v10 = v8;

  v6[6] = v7[6];

  v6[7] = v7[7];
  v11 = *(a3 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  v15 = *(v12 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v16 = ((v6 + v14 + 64) & v15);
  v17 = ((v7 + v14 + 64) & v15);
  v18 = *(v12 + 64);
  v19 = ((v14 + 16) & ~v14) + v18;
  v20 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ~v14;
  if ((v13 & 0x80000000) != 0)
  {
    v33 = ((v14 + 16) & ~v14) + v18;
    v24 = *(v12 + 48);
    v32 = v24((v20 + v14 + 8) & ~v14, v13, v11);
    v21 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = v24((v21 + v14 + 8) & ~v14, v13, v11);
    v19 = v33;
    if (!v32)
    {
LABEL_5:
      if (!v23)
      {
        *v16 = *v17;

        *v20 = *v21;

        (*(v12 + 24))((v20 + v14 + 8) & v34, (v21 + v14 + 8) & v34, v11);
        goto LABEL_12;
      }

      (*(v12 + 8))((v20 + v14 + 8) & v34, v11);
      goto LABEL_9;
    }
  }

  else
  {
    v21 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = *v21;
    if (*v21 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v22) = -1;
    }

    v23 = v22 + 1;
    if (*v20 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v23)
  {
    *v16 = *v17;
    *v20 = *v21;
    v25 = v14 + 8;
    v26 = v19;
    v27 = v20 + v25;
    v28 = v21 + v25;
    v29 = *(v12 + 16);

    v30 = v27 & v34;
    v19 = v26;
    v29(v30, v28 & v34, v11);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v16, v17, v19);
LABEL_12:
  *(v16 + v19) = *(v17 + v19);
  return a1;
}

_OWORD *initializeWithTake for PageViewWrapper(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = a2[2];
  v5 = ((a1 + 55) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 55) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v5[2] = v6[2];
  v5[3] = v9;
  *v5 = v7;
  v5[1] = v8;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = *(v11 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v5 + v12 + 64) & v13);
  v15 = ((v6 + v12 + 64) & v13);
  v16 = ~v12;
  v17 = ((v12 + 16) & ~v12) + *(v11 + 64);
  v18 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v11 + 84) & 0x80000000) == 0)
  {
    v19 = *v18;
    if (*v18 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    if (v19 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v14 = *v15;
    v20 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v18;
    (*(v11 + 32))((v20 + v12 + 8) & v16, (v18 + v12 + 8) & v16, v10);
    goto LABEL_8;
  }

  if (!(*(v11 + 48))((v18 + v12 + 8) & v16))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v14, v15, v17);
LABEL_8:
  *(v14 + v17) = *(v15 + v17);
  return a1;
}

uint64_t assignWithTake for PageViewWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v7;

  v8 = (a1 + 55) & 0xFFFFFFFFFFFFFFF8;
  v9 = (a2 + 55) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v8);
  v10 = *v9;
  v11 = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);
  *v8 = v10;
  *(v8 + 16) = v11;
  v12 = *(v8 + 40);
  *(v8 + 40) = *(v9 + 40);

  *(v8 + 48) = *(v9 + 48);

  *(v8 + 56) = *(v9 + 56);
  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  v16 = *(v14 + 80);
  v17 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v18 = ((v16 + 64 + v8) & v17);
  v19 = ((v16 + 64 + v9) & v17);
  v20 = *(v14 + 64);
  v21 = ((v16 + 16) & ~v16) + v20;
  v22 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = ~v16;
  if ((v15 & 0x80000000) != 0)
  {
    v31 = ((v16 + 16) & ~v16) + v20;
    v26 = *(v14 + 48);
    v27 = v26((v22 + v16 + 8) & ~v16, v15, v13);
    v28 = v26;
    v30 = v27;
    v23 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v25 = v28((v23 + v16 + 8) & ~v16, v15, v13);
    v21 = v31;
    if (!v30)
    {
LABEL_5:
      if (!v25)
      {
        *v18 = *v19;

        *v22 = *v23;

        (*(v14 + 40))((v22 + v16 + 8) & v32, (v23 + v16 + 8) & v32, v13);
        goto LABEL_12;
      }

      (*(v14 + 8))((v22 + v16 + 8) & v32, v13);
      goto LABEL_9;
    }
  }

  else
  {
    v23 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = *v23;
    if (*v23 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v24) = -1;
    }

    v25 = v24 + 1;
    if (*v22 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v25)
  {
    *v18 = *v19;
    *v22 = *v23;
    (*(v14 + 32))((v22 + v16 + 8) & v32, (v23 + v16 + 8) & v32, v13);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v18, v19, v21);
LABEL_12:
  *(v18 + v21) = *(v19 + v21);
  return a1;
}

uint64_t getEnumTagSinglePayload for PageViewWrapper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = v6 - 1;
  v8 = *(v4 + 80);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_29;
  }

  v12 = ~(((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-113 - v8) | v10));
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_29:
      if ((v7 & 0x80000000) != 0)
      {
        v19 = ((((((a1 + 55) & 0xFFFFFFFFFFFFFFF8) + v10 + 64) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v5 & 0x80000000) != 0)
        {
          v21 = (*(v4 + 48))((v19 + v8 + 8) & ~v8);
        }

        else
        {
          v20 = *v19;
          if (v20 >= 0xFFFFFFFF)
          {
            LODWORD(v20) = -1;
          }

          v21 = v20 + 1;
        }

        if (v21 >= 2)
        {
          return v21 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v18 = *(a1 + 3);
        if (v18 >= 0xFFFFFFFF)
        {
          LODWORD(v18) = -1;
        }

        return (v18 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_29;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (((-17 - v8) | v8) - *(*(*(a3 + 16) - 8) + 64) + ((-113 - v8) | v10) != -1)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void storeEnumTagSinglePayload for PageViewWrapper(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  if ((v8 - 1) <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v8 - 1;
  }

  v11 = *(v6 + 80);
  v12 = ((v11 + 16) & ~v11) + *(*(*(a4 + 16) - 8) + 64);
  v13 = v12 + ((v11 + 112) & ~(v11 | 7)) + 1;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v19 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v19))
      {
        v16 = 4;
      }

      else
      {
        if (v19 < 0x100)
        {
          v20 = 1;
        }

        else
        {
          v20 = 2;
        }

        if (v19 >= 2)
        {
          v16 = v20;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v13 < 4)
    {
      v18 = (v17 >> (8 * v13)) + 1;
      if (v12 + ((v11 + 112) & ~(v11 | 7)) != -1)
      {
        v21 = v17 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_60:
              if (v16 == 2)
              {
                *&a1[v13] = v18;
              }

              else
              {
                *&a1[v13] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v16)
    {
      a1[v13] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v13] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v16)
  {
    goto LABEL_33;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v9 & 0x80000000) != 0)
  {
    v22 = ((((a1 + 55) & 0xFFFFFFFFFFFFFFF8) + (v11 | 7) + 64) & ~(v11 | 7));
    if (v9 >= a2)
    {
      v26 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v27 = *(v6 + 56);
        v28 = a2 + 1;

        v27((v26 + v11 + 8) & ~v11, v28);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v26 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v26 = a2;
      }
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (a2 - v8);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 5) = 0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

void type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>()
{
  if (!lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>)
  {
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>, type metadata accessor for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>, type metadata accessor for TupleToolbarContent);
    v0 = type metadata accessor for ToolbarModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>);
    }
  }
}

void type metadata accessor for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>()
{
  if (!lazy cache variable for type metadata for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>)
  {
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?();
    v0 = type metadata accessor for ToolbarItemGroup();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>);
    }
  }
}

void type metadata accessor for ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>)
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PageIndexDisplayMode>, &type metadata for PageIndexDisplayMode, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout> and conformance <> ModifiedContent<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type IndexView and conformance IndexView()
{
  result = lazy protocol witness table cache variable for type IndexView and conformance IndexView;
  if (!lazy protocol witness table cache variable for type IndexView and conformance IndexView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexView and conformance IndexView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<PageIndexDisplayMode>, &type metadata for PageIndexDisplayMode, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<PageIndexDisplayMode> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVySiGMaTm_1(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t outlined init with copy of IndexPath?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>()
{
  if (!lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)
  {
    type metadata accessor for IndexPath?(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<TabBarPlacement?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<TabBarPlacement?>>)
  {
    type metadata accessor for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarPlacement?>, &lazy cache variable for type metadata for TabBarPlacement?, &type metadata for TabBarPlacement, MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<TabBarPlacement?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>)
  {
    type metadata accessor for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>();
    type metadata accessor for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>()
{
  if (!lazy cache variable for type metadata for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>)
  {
    type metadata accessor for TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>(255);
    _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(&lazy protocol witness table cache variable for type TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)> and conformance TupleView<A>, type metadata accessor for TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>);
    }
  }
}

void type metadata accessor for (UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)()
{
  if (!lazy cache variable for type metadata for (UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>))
  {
    type metadata accessor for StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>));
    }
  }
}

void type metadata accessor for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>)
  {
    type metadata accessor for ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>>();
    _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(&lazy protocol witness table cache variable for type ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>> and conformance ZStack<A>, type metadata accessor for ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>);
    lazy protocol witness table accessor for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(UIKitPagingView, StaticIf<IndexViewPlacementModifier.IsAutomaticPredicate, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>, _PaddingLayout>?, EmptyView>)>>, StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _ss15WritableKeyPathCySiSgACGAByxq_G7SwiftUI10ProjectionAFWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier>();
    lazy protocol witness table accessor for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<IndexViewPlacementModifier.IsToolbarPredicate, ToolbarModifier<(), TupleToolbarContent<ToolbarItemGroup<ModifiedContent<ModifiedContent<ModifiedContent<IndexView, _EnvironmentKeyWritingModifier<PageIndexDisplayMode>>, _SafeAreaRegionsIgnoringLayout>, AccessibilityAttachmentModifier>?>>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate()
{
  result = lazy protocol witness table cache variable for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate;
  if (!lazy protocol witness table cache variable for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexViewPlacementModifier.IsToolbarPredicate and conformance IndexViewPlacementModifier.IsToolbarPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TabBarPlacement?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TabBarPlacement?>, &lazy cache variable for type metadata for TabBarPlacement?, &type metadata for TabBarPlacement, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<TabBarPlacement?> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>()
{
  result = lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>;
  if (!lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2_3>, MEMORY[0x1E697E4F8], MEMORY[0x1E697E4F0], MEMORY[0x1E697EC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2_3> and conformance _SemanticFeature<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _UIHostingView<_ViewList_View> and conformance _UIHostingView<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for _UIHostingView<_ViewList_View>, MEMORY[0x1E697D9F0], MEMORY[0x1E697D9E8], type metadata accessor for _UIHostingView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static Solarium.metricsEnabled.getter()
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  Solarium.EnablementIdiom.init(_:)();
  return static Solarium.useMetrics(for:)() & 1;
}

uint64_t static Solarium.testIf<A, B>(enabled:disabled:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = static Solarium.testIf<A>(enabled:)(a3, a7, a1);
  if (!v8)
  {
    return static Solarium.testIf<A>(disabled:)(a5, a8, a2);
  }

  return result;
}

uint64_t static Solarium.testIf<A>(enabled:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    result = a1();
    if (v3)
    {
      return result;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return (*(*(a2 - 8) + 56))(a3, v8, 1, a2);
}

uint64_t static Solarium.testIf<A>(disabled:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  static _GraphInputs.defaultInterfaceIdiom.getter();
  if (static Solarium.isEnabled(for:)())
  {
    v7 = 1;
  }

  else
  {
    result = a1();
    if (v3)
    {
      return result;
    }

    v7 = 0;
  }

  return (*(*(a2 - 8) + 56))(a3, v7, 1, a2);
}

uint64_t LeadingAlignedDisclosureGroupStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t protocol witness for DisclosureGroupStyle.makeBody(configuration:) in conformance LeadingAlignedDisclosureGroupStyle@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t closure #1 in StyledView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v52 = a4;
  type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>();
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
  v50 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v43 - v12;
  type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v49 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
  v44 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  *(v23 + 32) = a3;
  *v10 = 4;
  v24 = &v10[*(v8 + 44)];
  *v24 = partial apply for implicit closure #2 in implicit closure #1 in closure #1 in StyledView.body.getter;
  v24[1] = v23;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  v25 = *(v8 + 48);
  v47 = a1;

  v46 = a2;

  v48 = a3;
  closure #1 in closure #1 in StyledView.body.getter(a1, a2, a3, &v10[v25]);

  v53[0] = a1;
  v53[1] = a2;
  LOBYTE(v53[2]) = a3;
  _s7SwiftUI7BindingVySbGMaTm_3(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v27 = v26;
  MEMORY[0x18D00ACC0](v54);
  LOBYTE(v53[0]) = v54[0];
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue();
  AccessibilityValueStorage.init<A>(_:description:)();
  AccessibilityProperties.init()();
  outlined destroy of AccessibilityValueStorage?(v55);
  outlined init with copy of AccessibilityValueStorage(v56, v55);
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityValueStorage(v56);
  outlined destroy of AccessibilityProperties(v54);
  _s7SwiftUI7BindingVySbGMaTm_3(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v28 = swift_allocObject();
  memcpy((v28 + 16), v53, 0x128uLL);
  v29 = v45;
  outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(v10, v45, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
  v30 = v49;
  v31 = (v29 + *(v50 + 44));
  *v31 = v28;
  v31[1] = 0;
  outlined init with take of ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(v29, v30);
  KeyPath = swift_getKeyPath();
  v33 = swift_getKeyPath();
  outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(v30, v19, type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>);
  v34 = &v19[*(v44 + 44)];
  *v34 = KeyPath;
  v34[8] = 0;
  *(v34 + 2) = v33;
  v34[24] = 0;
  outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(v19, v22, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
  v53[0] = v47;
  v53[1] = v46;
  LOBYTE(v53[2]) = v48;
  MEMORY[0x18D00ACC0](v54, v27);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (LOBYTE(v54[0]) == 1)
  {
    v35 = static HorizontalAlignment.center.getter();
    lazy protocol witness table accessor for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition();
    v37 = AnyTransition.init<A>(_:)();
    v36 = 1;
  }

  v38 = v51;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v22, v51);
  v39 = v52;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v38, v52);
  type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)();
  v41 = (v39 + *(v40 + 48));
  *v41 = v35;
  v41[1] = 0;
  v41[2] = v36;
  v41[3] = v37;

  outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v22);

  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(v38);
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in StyledView.body.getter()
{
  swift_retain_n();

  Transaction.subscript.setter();
  Transaction.current.getter();
  withTransaction<A>(_:_:)();
}

uint64_t closure #1 in closure #1 in StyledView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = static VerticalAlignment.center.getter();
  v21 = a1;
  v22 = a2;
  v23 = a3;
  _s7SwiftUI7BindingVySbGMaTm_3(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  v10 = v9;
  MEMORY[0x18D00ACC0](&v20);
  v11 = v20;
  v12 = static VerticalAlignment.center.getter();
  v21 = a1;
  v22 = a2;
  v23 = a3;
  MEMORY[0x18D00ACC0](&v20, v10);
  v13 = v20;
  LOBYTE(v20) = 1;
  v14 = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  *a4 = v8;
  *(a4 + 8) = 0x4010000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 25) = v11;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = v12;
  *(a4 + 56) = 0;
  *(a4 + 64) = 1;
  *(a4 + 72) = 0;
  *(a4 + 80) = 257;
  *(a4 + 82) = v13;
  *(a4 + 88) = v14;
  *(a4 + 96) = v16;
  *(a4 + 104) = v17;
  *(a4 + 112) = v18;
  *(a4 + 120) = v19;
  *(a4 + 128) = 0;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance StyledView@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>();
  return closure #1 in StyledView.body.getter(v3, v4, v5, a1 + *(v6 + 44));
}

uint64_t one-time initialization function for verticalDisclosure()
{
  lazy protocol witness table accessor for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition();
  result = AnyTransition.init<A>(_:)();
  static AnyTransition.verticalDisclosure = result;
  return result;
}

uint64_t static AnyTransition.verticalDisclosure.getter()
{
  if (one-time initialization token for verticalDisclosure != -1)
  {
    swift_once();
  }
}

unint64_t lazy protocol witness table accessor for type StyledView and conformance StyledView()
{
  result = lazy protocol witness table cache variable for type StyledView and conformance StyledView;
  if (!lazy protocol witness table cache variable for type StyledView and conformance StyledView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyledView and conformance StyledView);
  }

  return result;
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?), MEMORY[0x1E6981F40]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?, type metadata accessor for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>();
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>);
    }
  }
}

void type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>()
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>);
    lazy protocol witness table accessor for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>(255);
    type metadata accessor for HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>(255);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>);
    }
  }
}

void type metadata accessor for TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>()
{
  if (!lazy cache variable for type metadata for TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>)
  {
    type metadata accessor for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)(255, &lazy cache variable for type metadata for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer));
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(a4, a5);
    v8 = type metadata accessor for HStack();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>()
{
  if (!lazy cache variable for type metadata for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>)
  {
    type metadata accessor for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)(255, &lazy cache variable for type metadata for (DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator));
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>);
    }
  }
}

void type metadata accessor for (RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>);
    lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>);
    lazy protocol witness table accessor for type TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for VStack<DisclosureGroupStyleConfiguration.Content>, &type metadata for DisclosureGroupStyleConfiguration.Content, &protocol witness table for DisclosureGroupStyleConfiguration.Content, MEMORY[0x1E6981860]);
    type metadata accessor for InterfaceIdiomPredicate<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, MEMORY[0x1E697F528], MEMORY[0x1E697F518], MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue;
  if (!lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityDisclosureValue and conformance AccessibilityDisclosureValue);
  }

  return result;
}

uint64_t outlined init with take of ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(0, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, type metadata accessor for Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 VerticalDisclosureTransition.body(content:phase:)@<Q0>(uint64_t a1@<X8>)
{
  static Alignment.top.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v3[6] = v4;
  *&v3[22] = v5;
  *&v3[38] = v6;
  *(a1 + 2) = *v3;
  *a1 = 256;
  *(a1 + 18) = *&v3[16];
  result = *&v3[32];
  *(a1 + 34) = *&v3[32];
  *(a1 + 48) = *(&v6 + 1);
  *(a1 + 56) = 0;
  return result;
}

uint64_t protocol witness for Transition._makeContentTransition(transition:) in conformance VerticalDisclosureTransition(uint64_t result)
{
  if (*result == 3)
  {
    v1 = result;
    result = outlined consume of _Transition_ContentTransition.Result(*(result + 24), *(result + 32));
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t outlined init with take of Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition()
{
  result = lazy protocol witness table cache variable for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition;
  if (!lazy protocol witness table cache variable for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type VerticalDisclosureTransition and conformance VerticalDisclosureTransition);
  }

  return result;
}

void type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?), MEMORY[0x1E6981F40]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>(255, &lazy cache variable for type metadata for TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)>, type metadata accessor for (ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?), MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>, ModifiedContent<VStack<DisclosureGroupStyleConfiguration.Content>, _TraitWritingModifier<TransitionTraitKey>>?)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, _ClipEffect<Rectangle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>)
  {
    _s7SwiftUI7BindingVySbGMaTm_3(255, &lazy cache variable for type metadata for PlaceholderContentView<VerticalDisclosureTransition>, &unk_1EFFAED20, MEMORY[0x1E697FEC0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>);
    }
  }
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<ModifiedContent<StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, HStack<TupleView<(RotatingDisclosureIndicator, DisclosureGroupStyleConfiguration.Label, Spacer)>>, HStack<TupleView<(DisclosureGroupStyleConfiguration.Label, Spacer, RotatingDisclosureIndicator)>>>, _PaddingLayout>>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout>, type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>);
    lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>, _FrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout>();
    lazy protocol witness table accessor for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<VerticalDisclosureTransition>, _FixedSizeLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>()
{
  result = lazy protocol witness table cache variable for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>;
  if (!lazy protocol witness table cache variable for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>)
  {
    _s7SwiftUI7BindingVySbGMaTm_3(255, &lazy cache variable for type metadata for PlaceholderContentView<VerticalDisclosureTransition>, &unk_1EFFAED20, MEMORY[0x1E697FEC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlaceholderContentView<VerticalDisclosureTransition> and conformance PlaceholderContentView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>)
  {
    type metadata accessor for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>(255, &lazy cache variable for type metadata for _ClipEffect<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Rectangle> and conformance _ClipEffect<A>);
  }

  return result;
}

_BYTE *FlipForRTLEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v6 = *Value;

  result = AGGraphGetValue();
  if (*result != 2)
  {
    result = EnvironmentValues.layoutDirection.setter();
    v3 = v6;
  }

  *a1 = v3;
  a1[1] = v4;
  return result;
}

double FlipForRTLContainerPosition.value.getter()
{
  v0 = *AGGraphGetValue();
  if (v0 == 2 || (Value = AGGraphGetValue(), result = 0.0, *Value != (v0 & 1)))
  {
    type metadata accessor for CGPoint(0);
    return *AGGraphGetValue();
  }

  return result;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance ArchivesInteractiveControlsEffect(uint64_t a1@<X8>)
{
  *a1 = 8;
  *(a1 + 8) = 0;
  *(a1 + 12) = 2;
}

unint64_t lazy protocol witness table accessor for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect()
{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect;
  if (!lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArchivesInteractiveControlsEffect and conformance ArchivesInteractiveControlsEffect);
  }

  return result;
}

void SwiftUISearchController.customAccessoryContent.setter(uint64_t a1)
{
  v2 = v1;
  v3 = &v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v4 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 48];
  v16[2] = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 32];
  v16[3] = v4;
  v16[4] = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 64];
  v17 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 80];
  v5 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 16];
  v16[0] = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v16[1] = v5;
  v6 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = *(a1 + 48);
  *(v3 + 2) = *(a1 + 32);
  *(v3 + 3) = v7;
  *(v3 + 4) = *(a1 + 64);
  *(v3 + 10) = *(a1 + 80);
  outlined destroy of ToolbarStorage.SearchItem?(v16, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
  SwiftUISearchController.updateCustomAccessory()();
  SwiftUISearchController.updateCustomAccessoryRecoveryGesture()();
  if (*v3 || (v8 = &v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions], v9 = v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions + 8], v9 == 255))
  {
    [v2 _setSearchSuggestionGroups_];
    return;
  }

  v10 = *v8;
  v11 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    outlined copy of PlatformItemCollection.Storage(*v8, 1);
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v13 = *WeakValue;

      outlined consume of PlatformItemCollection?(v10, v9);
      v10 = v13;
    }

    else
    {
      outlined consume of PlatformItemCollection?(v10, v9);
      v10 = MEMORY[0x1E69E7CC0];
    }
  }

  v15 = *(*&v2[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator] + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement);
  SearchSuggestionsVisitor.visit(platformItemList:)(v10);

  if (v11 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_11;
    }

LABEL_13:
    v14.super.isa = 0;
    goto LABEL_14;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_11:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UISearchSuggestionItemGroup);
  v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_14:

  [v2 _setSearchSuggestionGroups_];
}

void closure #1 in SwiftUISearchController.update(to:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = *(a1 + 48);
  v7 = a3;
  v21[2] = *(a1 + 32);
  v21[3] = v6;
  v21[4] = *(a1 + 64);
  v22 = *(a1 + 80);
  v8 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v8;
  v9 = SwiftUISearchController._searchBar.getter();
  v10 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v10;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v11 = *(a1 + 16);
  v15 = *a1;
  v16 = v11;
  outlined init with copy of BoundInputsView(v21, v23);
  UIKitSearchBar.updateCustomScopeBarView(_:)(&v15);

  v23[2] = v17;
  v23[3] = v18;
  v23[4] = v19;
  v24 = v20;
  v23[0] = v15;
  v23[1] = v16;
  outlined destroy of ToolbarStorage.SearchItem?(v23, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
  v12 = *(a2 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar);
  v13 = v12[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility];
  v12[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_customScopeBarVisibility] = a3;
  if ((v7 == 1) == (v13 != 1))
  {
    v14 = v12;
    UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(v7 == 1, 1);
  }
}

void @objc SwiftUISearchController.viewDidAppear(_:)(void *a1, uint64_t a2, uint64_t a3, const char **a4, void (*a5)(id))
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for SwiftUISearchController(0);
  v8 = *a4;
  v9 = v11.receiver;
  v10 = objc_msgSendSuper2(&v11, v8, a3);
  a5(v10);
}

void closure #1 in SwiftUISearchController.updateCustomAccessory()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *&Strong[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost];
    *&Strong[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost] = 0;
  }
}

void SwiftUISearchController.didChangeCustomAccessoryRecoveryGesture(oldValue:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture;
  v4 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture];
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_5;
  }

  v5 = a1;
  if (!v4 || (type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UITapGestureRecognizer), v6 = v4, v5 = v5, v7 = static NSObject.== infix(_:_:)(), v5, v6, (v7 & 1) == 0))
  {
    v8 = v5;
    v9 = [v2 searchBar];
    v10 = [v9 searchTextField];

    [v10 removeGestureRecognizer_];
    v4 = *&v2[v3];
    if (v4)
    {
LABEL_5:
      v11 = v4;
      v12 = [v2 searchBar];
      v13 = [v12 searchTextField];

      [v13 addGestureRecognizer_];
    }
  }
}

Swift::Void __swiftcall SwiftUISearchController.handleCustomAccessoryRecoveryGesture()()
{
  v1 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = MEMORY[0x1E69E6720];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(v0 + v12, v11, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v8, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v13 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of ToolbarStorage.SearchItem?(v11, v7, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    MEMORY[0x18D00ACC0](v5);
    if (*v3 != 2)
    {
      v14 = v3[2];
      if (v14 != 2 || (v14 = v3[3], v14 != 2))
      {
        if (v14)
        {
          *v3 = 1;
        }
      }
    }

    dispatch thunk of AnyLocation.set(_:transaction:)();
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v3, type metadata accessor for SearchFieldState);
    outlined destroy of ToolbarStorage.SearchItem?(v7, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v11, type metadata accessor for ToolbarStorage.SearchItem);
  }
}

uint64_t SearchSuggestionsVisitor.visit(platformItemList:)(uint64_t a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  v5 = (v4 + 16);
  visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(a1, *v2 & 1, v4, v2);
  swift_beginAccess();
  v6 = *v5;
  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      type metadata accessor for UISearchSuggestion();

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_4;
    }
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for UISearchSuggestion();
LABEL_4:
  v7 = objc_allocWithZone(MEMORY[0x1E69DD6D8]);
  type metadata accessor for UISearchSuggestion();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 initWithHeaderTitle:0 suggestionItems:isa];

  MEMORY[0x18D00CC30]();
  if (*((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v9 = *(v2 + 8);

  *(v2 + 8) = v9;
  return result;
}

id SwiftUISearchController.updateToolbarBehavior(to:)(id result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior;
  v4 = v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior];
  if (v4 == 3 || v4 != result)
  {
    if (result)
    {
      if (result == 1)
      {
        result = [v1 setHidesNavigationBarDuringPresentation_];
        goto LABEL_11;
      }
    }

    else
    {
      static Semantics.v7.getter();
      if (isLinkedOnOrAfter(_:)())
      {
        result = [v1 _resetHidesNavigationBarDuringPresentation];
        goto LABEL_11;
      }
    }

    result = [v1 setHidesNavigationBarDuringPresentation_];
  }

LABEL_11:
  v1[v3] = v2;
  return result;
}

void closure #1 in SwiftUISearchController.enqueueIsActiveUpdate(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SwiftUISearchController.flushPendingIsActive()();
  }
}

Swift::Void __swiftcall SwiftUISearchController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SwiftUISearchController(0);
  objc_msgSendSuper2(&v6, sel_viewDidLayoutSubviews);
  v2 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated;
  v3 = v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated];
  if (v3 != 2)
  {
    v4 = SwiftUISearchController._searchBar.getter();
    v5 = v4[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive];
    v4[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_isActive] = v3 & 1;
    if (v5 != (v3 & 1))
    {
      UIKitSearchBar.updateCustomScopeBarIsActive(_:isAnimated:)(v3 & 1, 1);
    }
  }

  v1[v2] = 2;
}

uint64_t closure #1 in SwiftUISearchController.searchController(_:willChangeTo:)(uint64_t a1, char a2)
{
  v3 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  v5[1] = a2 & 1;
  dispatch thunk of AnyLocation.set(_:transaction:)();
  return _s7SwiftUI16SearchFieldStateVWOhTm_1(v5, type metadata accessor for SearchFieldState);
}

Swift::Void __swiftcall SwiftUISearchController.willPresentSearchController(_:)(UISearchController *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v36[-v12];
  *(v2 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated) = 1;
  v14 = [(UISearchController *)a1 searchBar];
  v15 = [(UISearchBar *)v14 searchTextField];

  v16 = [(UISearchTextField *)v15 text];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = v16;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
LABEL_6:
    v23 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
    swift_beginAccess();
    outlined init with copy of ToolbarStorage.SearchItem?(v2 + v23, v13, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v24 = type metadata accessor for ToolbarStorage.SearchItem(0);
    if ((*(*(v24 - 8) + 48))(v13, 1, v24) == 1)
    {
      __break(1u);
      goto LABEL_21;
    }

    _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0]();
    v25 = *(v4 + 36);
    _s7SwiftUI16SearchFieldStateVWOhTm_1(v13, type metadata accessor for ToolbarStorage.SearchItem);
    v26 = AttributedString.isEmpty.getter();
    v27 = type metadata accessor for AttributedString();
    (*(*(v27 - 8) + 8))(&v6[v25], v27);
    v22 = v26 ^ 1;
  }

  v28 = [(UISearchTextField *)v15 tokens];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchToken);
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v29 >> 62)
  {
    v31 = __CocoaSet.count.getter();

    if (v31)
    {
LABEL_10:

      if ((v22 & 1) == 0)
      {
        return;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v30)
    {
      goto LABEL_10;
    }
  }

  v32 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(v2 + v32, v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v33 = type metadata accessor for ToolbarStorage.SearchItem(0);
  if ((*(*(v33 - 8) + 48))(v9, 1, v33) == 1)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v34 = *&v9[*(v33 + 20)];
  if (v34)
  {

    _s7SwiftUI16SearchFieldStateVWOhTm_1(v9, type metadata accessor for ToolbarStorage.SearchItem);
    v35 = *(v34 + 16);

    if (!(v22 & 1 | (v35 != 0)))
    {
      return;
    }

LABEL_11:
    *(*(v2 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator) + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) = 1;
    return;
  }

  _s7SwiftUI16SearchFieldStateVWOhTm_1(v9, type metadata accessor for ToolbarStorage.SearchItem);
  if (v22)
  {
    goto LABEL_11;
  }
}

id SwiftUISearchController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUISearchController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL protocol witness for UIKitSearchBarCoordinatorDelegate.coordinatorIsAnimating(_:) in conformance UISearchController()
{
  v1 = [v0 transitionCoordinator];
  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

Swift::Void __swiftcall SwiftUISearchController.presentationControllerWillDismiss(_:)(UIPresentationController a1)
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost);
  if (v11)
  {
    v12 = [v11 popoverPresentationController];
    if (v12)
    {
      v13 = v12;
      v14 = v1;
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIPresentationController);
      v21 = v13;
      v15 = a1.super.isa;
      v16 = static NSObject.== infix(_:_:)();

      if (v16)
      {
        v17 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
        swift_beginAccess();
        outlined init with copy of ToolbarStorage.SearchItem?(v14 + v17, v5, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

          outlined destroy of ToolbarStorage.SearchItem?(v5, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
        }

        else
        {
          v19 = outlined init with take of ToolbarStorage.SearchItem(v5, v10, type metadata accessor for SearchFieldConfiguration);
          MEMORY[0x1EEE9AC00](v19);
          *(&v20 - 2) = v10;
          static Animation.default.getter();
          withAnimation<A>(_:_:)();

          _s7SwiftUI16SearchFieldStateVWOhTm_1(v10, type metadata accessor for SearchFieldConfiguration);
        }
      }

      else
      {
        v18 = v21;
      }
    }
  }
}

uint64_t closure #1 in SwiftUISearchController.presentationControllerWillDismiss(_:)()
{
  v0 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v7 - v4;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v5, v2, type metadata accessor for SearchFieldState);
  if (*v2 != 2)
  {
    *v2 = 0;
  }

  if (!specialized static SearchFieldState.== infix(_:_:)(v5, v2))
  {
    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  _s7SwiftUI16SearchFieldStateVWOhTm_1(v2, type metadata accessor for SearchFieldState);
  return _s7SwiftUI16SearchFieldStateVWOhTm_1(v5, type metadata accessor for SearchFieldState);
}

void visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v7 = type metadata accessor for PlatformItemList.Item();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v16 = *(v8 + 72);
    v44 = a4;
    v45 = v16;
    do
    {
      _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v15, v13, type metadata accessor for PlatformItemList.Item);
      v17 = *(v13 + 42);
      if (v17 >> 62 == 3 && (v17 & 0xFFFFFFFFFFFFFFFCLL) != 0x3FFFFFFFCLL)
      {
        v22 = vorrq_s8(vorrq_s8(*(v13 + 344), *(v13 + 376)), vorrq_s8(*(v13 + 360), *(v13 + 392)));
        v23 = vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
        v24 = v17 == 0xC000000000000000 && *(v13 + 38) == 2;
        v25 = v24 && (*(v13 + 40) | *(v13 + 41) | *(v13 + 39)) == 0;
        v26 = v25 && *&v23 == 0;
        if (v26 && (v46 & 1) != 0)
        {
          v27 = *(a3 + 16);
          if (v27 >> 62)
          {
            if (__CocoaSet.count.getter())
            {
LABEL_28:
              if (*(a3 + 16) >> 62)
              {
                type metadata accessor for UISearchSuggestion();

                _bridgeCocoaArray<A>(_:)();
              }

              else
              {
                swift_bridgeObjectRetain_n();
                dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                type metadata accessor for UISearchSuggestion();
              }

              v28 = objc_allocWithZone(MEMORY[0x1E69DD6D8]);
              type metadata accessor for UISearchSuggestion();
              isa = Array._bridgeToObjectiveC()().super.isa;

              [v28 initWithHeaderTitle:0 suggestionItems:isa];

              MEMORY[0x18D00CC30]();
              if (*((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              *(a3 + 16) = MEMORY[0x1E69E7CC0];
            }
          }

          else if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          if (*v13)
          {
            v30 = [*v13 string];
            v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v33 = v32;

            v34 = *(v13 + 117);
            if (v34)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v31 = 0;
            v33 = 0;
            v34 = *(v13 + 117);
            if (v34)
            {
LABEL_35:
              visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(v34, 0, a3, a4);
            }
          }

          v35 = *(a3 + 16);
          if (v35 >> 62)
          {
            if (!__CocoaSet.count.getter())
            {
              goto LABEL_55;
            }

LABEL_38:
            v36 = *(a3 + 16);
            if (v36 >> 62)
            {
              v42 = v36 & 0xFFFFFFFFFFFFFF8;
              if (v36 < 0)
              {
                v42 = *(a3 + 16);
              }

              v43 = v42;
              type metadata accessor for UISearchSuggestion();

              _bridgeCocoaArray<A>(_:)();
            }

            else
            {
              swift_bridgeObjectRetain_n();
              dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
              type metadata accessor for UISearchSuggestion();
            }

            if (v33)
            {
              v37 = MEMORY[0x18D00C850](v31, v33);
            }

            else
            {
              v37 = 0;
            }

            v40 = objc_allocWithZone(MEMORY[0x1E69DD6D8]);
            type metadata accessor for UISearchSuggestion();
            v41 = Array._bridgeToObjectiveC()().super.isa;

            [v40 initWithHeaderTitle:v37 suggestionItems:v41];

            a4 = v44;
            MEMORY[0x18D00CC30]();
            if (*((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          }

          else
          {
            if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

LABEL_55:

            a4 = v44;
          }

          _s7SwiftUI16SearchFieldStateVWOhTm_1(v13, type metadata accessor for PlatformItemList.Item);
          *(a3 + 16) = MEMORY[0x1E69E7CC0];

          v16 = v45;
          goto LABEL_4;
        }
      }

      _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v13, v10, type metadata accessor for PlatformItemList.Item);
      v19 = type metadata accessor for UIKitSearchSuggestion(0);
      v20 = objc_allocWithZone(v19);
      if (*v10 && ([*v10 string], *(v10 + 52) > 1uLL))
      {
        _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v10, v20 + OBJC_IVAR____TtC7SwiftUI21UIKitSearchSuggestion_platformItem, type metadata accessor for PlatformItemList.Item);
        v47.receiver = v20;
        v47.super_class = v19;
        v38 = objc_msgSendSuper2(&v47, sel_init);
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v10, type metadata accessor for PlatformItemList.Item);
        swift_beginAccess();
        v39 = v38;
        MEMORY[0x18D00CC30]();
        if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v16 = v45;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();

        v21 = *(v13 + 117);
        if (!v21)
        {
          goto LABEL_3;
        }
      }

      else
      {
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v10, type metadata accessor for PlatformItemList.Item);
        swift_deallocPartialClassInstance();
        v21 = *(v13 + 117);
        if (!v21)
        {
          goto LABEL_3;
        }
      }

      visit #1 (_:allowSections:) in SearchSuggestionsVisitor.visit(platformItemList:)(v21, 0, a3, a4);
LABEL_3:
      _s7SwiftUI16SearchFieldStateVWOhTm_1(v13, type metadata accessor for PlatformItemList.Item);
LABEL_4:
      v15 += v16;
      --v14;
    }

    while (v14);
  }
}

uint64_t UIKitSearchSuggestion.iconImage.getter()
{
  v1 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v0 + OBJC_IVAR____TtC7SwiftUI21UIKitSearchSuggestion_platformItem, v3, type metadata accessor for PlatformItemList.Item);
  v4 = *(v3 + 13);
  v5 = *(v3 + 11);
  v35 = *(v3 + 12);
  v36 = v4;
  v6 = *(v3 + 13);
  v37[0] = *(v3 + 14);
  *(v37 + 11) = *(v3 + 235);
  v7 = *(v3 + 9);
  v8 = *(v3 + 7);
  v31 = *(v3 + 8);
  v32 = v7;
  v9 = *(v3 + 9);
  v10 = *(v3 + 11);
  v33 = *(v3 + 10);
  v34 = v10;
  v11 = *(v3 + 5);
  v28[0] = *(v3 + 4);
  v28[1] = v11;
  v12 = *(v3 + 7);
  v14 = *(v3 + 4);
  v13 = *(v3 + 5);
  v29 = *(v3 + 6);
  v30 = v12;
  v43[3] = v35;
  v44 = v6;
  v45[0] = *(v3 + 14);
  *(v45 + 11) = *(v3 + 235);
  v42 = v31;
  v43[0] = v9;
  v43[1] = v33;
  v43[2] = v5;
  v38 = v14;
  v39 = v13;
  v40 = v29;
  v41 = v8;
  v15 = 0;
  if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v38) != 1)
  {
    if (v44)
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v15 = swift_dynamicCastObjCClassUnconditional();
    }

    else
    {
      v26 = v42;
      v27[0] = v43[0];
      *(v27 + 12) = *(v43 + 12);
      v22 = v38;
      v23 = v39;
      v24 = v40;
      v25 = v41;
      v16 = *(v3 + 6);
      v17 = MEMORY[0x1E6981730];
      v18 = MEMORY[0x1E69E6720];
      outlined init with copy of ToolbarStorage.SearchItem?(v28, v20, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730], MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
      outlined init with copy of GraphicsImage(&v38, v20);
      v15 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v16);
      outlined destroy of ToolbarStorage.SearchItem?(v28, &lazy cache variable for type metadata for Image.Resolved?, v17, v18, type metadata accessor for Spacer?);
      v20[4] = v26;
      v21[0] = v27[0];
      *(v21 + 12) = *(v27 + 12);
      v20[0] = v22;
      v20[1] = v23;
      v20[2] = v24;
      v20[3] = v25;
      outlined destroy of GraphicsImage(v20);
    }
  }

  _s7SwiftUI16SearchFieldStateVWOhTm_1(v3, type metadata accessor for PlatformItemList.Item);
  return v15;
}

uint64_t type metadata completion function for UIKitSearchSuggestion()
{
  result = type metadata accessor for PlatformItemList.Item();
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

uint64_t specialized UIKitToolbarStrategy.configureNavigationItem(_:searchItem:controller:)(void *a1, uint64_t a2)
{
  v23 = a1;
  v3 = MEMORY[0x1E69E6720];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  outlined init with copy of ToolbarStorage.SearchItem?(a2, &v23 - v11, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, v3, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v13 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v12, 1, v13) == 1)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v12, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v15 = 8;
  }

  else
  {
    v16 = *&v12[*(v13 + 36) + 8];

    _s7SwiftUI16SearchFieldStateVWOhTm_1(v12, type metadata accessor for ToolbarStorage.SearchItem);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>();
    if (v16)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v15 = v24;
  }

  outlined init with copy of ToolbarStorage.SearchItem?(a2, v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  if (v14(v9, 1, v13) == 1)
  {
    outlined destroy of ToolbarStorage.SearchItem?(v9, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v17 = 0;
    if (v15 == 8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v18 = *&v9[*(v13 + 36) + 8];

    _s7SwiftUI16SearchFieldStateVWOhTm_1(v9, type metadata accessor for ToolbarStorage.SearchItem);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>();
    if (v18)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v17 = v25;
    if (v15 == 8)
    {
      goto LABEL_16;
    }
  }

  if ((((v15 & 0xFE) == 2) & v17) != 0)
  {
    v19 = 4;
LABEL_27:
    [v23 setPreferredSearchBarPlacement_];
    goto LABEL_28;
  }

LABEL_16:
  static Semantics.v4.getter();
  v20 = isLinkedOnOrAfter(_:)();
  if (v15 != 8 && (v20 & 1) != 0)
  {
    if (v15 <= 4)
    {
      if ((v15 - 2) < 2)
      {
        v19 = 0;
        goto LABEL_27;
      }

      if (v15 == 4)
      {
        v19 = 3;
        goto LABEL_27;
      }

LABEL_26:
      v19 = 2;
      goto LABEL_27;
    }

    if (v15 != 5 && v15 != 7)
    {
      goto LABEL_26;
    }
  }

LABEL_28:
  static Semantics.v7.getter();
  result = isLinkedOnOrAfter(_:)();
  if (v15 & 0xFE) == 2 && (result)
  {
    outlined init with copy of ToolbarStorage.SearchItem?(a2, v6, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    if (v14(v6, 1, v13) == 1)
    {
      return outlined destroy of ToolbarStorage.SearchItem?(v6, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    }

    else
    {
      v22 = v6[*(v13 + 56)];
      result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v6, type metadata accessor for ToolbarStorage.SearchItem);
      if (v22 == 1)
      {
        return [v23 setSearchBarPlacementAllowsExternalIntegration_];
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>, &type metadata for SearchScopeActivationKey, &protocol witness table for SearchScopeActivationKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>, &type metadata for EnvironmentValues.SearchPresentationToolbarBehaviorKey, &protocol witness table for EnvironmentValues.SearchPresentationToolbarBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t type metadata accessor for UISearchSuggestion()
{
  result = lazy cache variable for type metadata for UISearchSuggestion[0];
  if (!lazy cache variable for type metadata for UISearchSuggestion[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, lazy cache variable for type metadata for UISearchSuggestion);
  }

  return result;
}

uint64_t specialized SwiftUISearchController.searchController(_:willChangeTo:)(uint64_t a1)
{
  v2 = v1;
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v5 = v4;
  v32 = *(v4 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v34 = &v31 - v8;
  v9 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  result = static SemanticFeature.isEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_4:
    v19 = v5;
    v20 = 1;
    goto LABEL_5;
  }

  if (a1 != 1)
  {
    if (a1 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

  v19 = v5;
  v20 = 0;
LABEL_5:
  v21 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  swift_beginAccess();
  v31 = v2;
  outlined init with copy of ToolbarStorage.SearchItem?(v2 + v21, v17, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v22 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v23 = *(*(v22 - 8) + 48);
  result = v23(v17, 1, v22);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  MEMORY[0x18D00ACC0](v19);
  v24 = v11[1];
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v11, type metadata accessor for SearchFieldState);
  result = _s7SwiftUI16SearchFieldStateVWOhTm_1(v17, type metadata accessor for ToolbarStorage.SearchItem);
  if (v20 == v24)
  {
    return result;
  }

  outlined init with copy of ToolbarStorage.SearchItem?(v31 + v21, v14, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  result = v23(v14, 1, v22);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v25 = MEMORY[0x1E6981948];
  v26 = v34;
  outlined init with copy of ToolbarStorage.SearchItem?(v14, v34, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v14, type metadata accessor for ToolbarStorage.SearchItem);
  v35 = 17;
  v27 = v33;
  outlined init with copy of ToolbarStorage.SearchItem?(v26, v33, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v25, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v28 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v29 = v28 + v6;
  v30 = swift_allocObject();
  outlined init with take of Binding<SearchFieldState>(v27, v30 + v28);
  *(v30 + v29) = v20;
  static Update.enqueueAction(reason:_:)();

  return outlined destroy of ToolbarStorage.SearchItem?(v26, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v25, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
}

void specialized SwiftUISearchController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  v2 = type metadata accessor for ToolbarStorage.SearchItem(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive) = 2;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated) = 2;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior) = 3;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for UIKitSearchBarCoordinator(0)) init];
  v4 = v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions;
  *v4 = 0;
  *(v4 + 8) = -1;
  v5 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture) = 0;
  v7 = v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0;
  *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_allowsSecureDrawing) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t partial apply for closure #1 in SwiftUISearchController.searchController(_:willChangeTo:)()
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v2 = *(v1 - 8);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));

  return closure #1 in SwiftUISearchController.searchController(_:willChangeTo:)(v3, v4);
}

uint64_t AnimatedValueTrack<A>.VectorPath.init()()
{
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();

  return static Array._allocateUninitialized(_:)();
}

uint64_t AnimatedValueTrack<A>.VectorPath.isEmpty.getter()
{
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  type metadata accessor for Array();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t AnimatedValueTrack<A>.VectorPath.arcLength.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = type metadata accessor for Curve();
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v50 - v5;
  v71 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v52 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v64 = &v50 - v6;
  v7 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v50 - v12;
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v62 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v70 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v67 = AssociatedConformanceWitness;
  v75 = &v50 - v23;
  v72 = AssociatedTypeWitness;
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  if (!MEMORY[0x18D00CDE0](a1, v7))
  {
    return (*(v13 + 8))(v75, v72);
  }

  v50 = v9;
  v24 = v4;
  v25 = 0;
  v73 = (v8 + 32);
  v74 = (v8 + 16);
  v55 = (v52 + 4);
  v54 = (v13 + 16);
  v53 = (v24 + 8);
  v69 = (v13 + 8);
  ++v52;
  v26 = 0.0;
  v51 = (v13 + 32);
  v27 = v68;
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v8;
  v58 = v13;
  v57 = a1;
  v56 = v7;
  while (1)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v8 + 16))(v27, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, v7);
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    if (v50 != 8)
    {
      break;
    }

    v76 = result;
    (*v74)(v27, &v76, v7);
    swift_unknownObjectRelease();
    v31 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
LABEL_13:
      __break(1u);
      return (*(v13 + 8))(v75, v72);
    }

LABEL_7:
    (*v73)(v10, v27, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v33 = v64;
        v34 = v71;
        (*v55)(v64, v10);
        v35 = *v54;
        v36 = v72;
        (*v54)(v70, v75, v72);
        v37 = v61;
        v35(v61, v33, v36);
        v38 = v62;
        v35(v62, &v33[*(v34 + 36)], v36);
        v39 = v63;
        v35(v63, &v33[*(v34 + 40)], v36);
        v40 = v65;
        v41 = v37;
        v7 = v56;
        v42 = v38;
        a1 = v57;
        Curve.init(start:end:startTangent:endTangent:)(v70, v41, v42, v39, v36, v65);
        v43 = v66;
        Curve.arcLength(at:)(v66);
        v45 = v44;
        (*v53)(v40, v43);
        v46 = v75;
        (*v69)(v75, v36);
        v26 = v26 + v45;
        v47 = v36;
        v10 = v59;
        v35(v46, v33, v47);
        v27 = v68;
        v48 = v33;
        v13 = v58;
        v8 = v60;
        (*v52)(v48, v71);
      }
    }

    else
    {
      v28 = v75;
      v29 = v72;
      (*v69)(v75, v72);
      (*v51)(v28, v10, v29);
    }

    ++v25;
    if (v31 == MEMORY[0x18D00CDE0](a1, v7))
    {
      return (*(v13 + 8))(v75, v72);
    }
  }

  __break(1u);
  return result;
}

uint64_t Curve.init(start:end:startTangent:endTangent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = *(*(a5 - 8) + 32);
  v14(a6, a1, a5);
  v11 = type metadata accessor for Curve();
  v14(a6 + v11[9], a2, a5);
  v14(a6 + v11[10], a3, a5);
  v12 = a6 + v11[11];

  return (v14)(v12, a4, a5);
}

uint64_t AnimatedValueTrack<A>.VectorPath.value(atArcLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v65 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for Curve();
  v87 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v61 - v12;
  v82 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v72 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v14 = &v61 - v13;
  v15 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v81 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v61 - v18;
  v74 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v78 = &v61 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v61 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v61 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v61 - v28;
  if ((AnimatedValueTrack<A>.VectorPath.isEmpty.getter() & 1) == 0)
  {
    v76 = v11;
    v62 = a2;
    v63 = a3;
    v75 = AssociatedConformanceWitness;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v33 = a1;
    v34 = MEMORY[0x18D00CDE0](a1, v15);
    v35 = v14;
    v37 = v81;
    v36 = v82;
    IsNativeType = v29;
    v39 = v33;
    if (!v34)
    {
LABEL_19:
      v59 = v65;
      AnimatedValueTrack<A>.VectorPath.endValue.getter(v39, v62, v63);
      (*(v74 + 8))(IsNativeType, AssociatedTypeWitness);
      return (*(v74 + 56))(v59, 0, 1, AssociatedTypeWitness);
    }

    v40 = 0;
    v84 = (v81 + 32);
    v85 = (v81 + 16);
    v70 = (v72 + 4);
    v69 = (v74 + 16);
    v41 = (v74 + 8);
    v71 = (v87 + 8);
    ++v72;
    v68 = (v74 + 32);
    v87 = IsNativeType;
    v67 = v33;
    v66 = v15;
    v73 = (v74 + 8);
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v37 + 16))(v88, v39 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v40, v15);
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v64 != 8)
        {
          __break(1u);
          return result;
        }

        v89 = result;
        IsNativeType = result;
        (*v85)(v88, &v89, v15);
        swift_unknownObjectRelease();
        v44 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      (*v84)(v86, v88, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          (*v70)(v35, v86, v36);
          v46 = v36;
          v47 = AssociatedTypeWitness;
          v48 = *v69;
          (*v69)(v83, v87, v47);
          v49 = v77;
          v48(v77, v35, v47);
          v50 = v78;
          v48(v78, &v35[*(v46 + 36)], v47);
          v51 = &v35[*(v46 + 40)];
          v52 = v79;
          v48(v79, v51, v47);
          v53 = v80;
          Curve.init(start:end:startTangent:endTangent:)(v83, v49, v50, v52, v47, v80);
          v54 = v76;
          Curve.arcLength(at:)(v76);
          if (v55 >= a5)
          {
            Curve.parametricTime(forArcLength:)(v54, a5);
            v60 = v65;
            Curve.value(at:)(v54, v65);
            (*v71)(v53, v54);
            (*v72)(v35, v82);
            (*(v74 + 8))(v87, v47);
            return (*(v74 + 56))(v60, 0, 1, v47);
          }

          v56 = v55;
          (*v71)(v53, v54);
          v41 = v73;
          v57 = v87;
          (*v73)(v87, v47);
          a5 = a5 - v56;
          v48(v57, v35, v47);
          v58 = v82;
          (*v72)(v35, v82);
          AssociatedTypeWitness = v47;
          v36 = v58;
          v37 = v81;
          v39 = v67;
          v15 = v66;
        }
      }

      else
      {
        v42 = v87;
        (*v41)(v87, AssociatedTypeWitness);
        (*v68)(v42, v86, AssociatedTypeWitness);
      }

      v43 = MEMORY[0x18D00CDE0](v39, v15);
      ++v40;
      IsNativeType = v87;
      if (v44 == v43)
      {
        goto LABEL_19;
      }
    }
  }

  v30 = *(v74 + 56);
  v31 = v65;

  return v30(v31, 1, 1, AssociatedTypeWitness);
}

double specialized AnimatedValueTrack<A>.VectorPath.endValue.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = (a1 + 121);
  result = 0.0;
  do
  {
    v4 = *(v2 - 89);
    v6 = *v2;
    v2 += 96;
    v5 = v6;
    if (v6 == 1)
    {
      result = v4;
    }

    if (!v5)
    {
      result = v4;
    }

    --v1;
  }

  while (v1);
  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.endValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v11[-v8];
  v14 = a1;
  swift_getAssociatedConformanceWitness();

  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v12 = a2;
  v13 = a3;
  type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.reduce<A>(_:_:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t AnimatedValueTrack<A>.VectorPath.unitVelocityTangent(atArcLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Curve();
  v80 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v60 - v13;
  v82 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v71 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v15 = &v60 - v14;
  v16 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v60 - v19;
  v72 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v20);
  v77 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v60 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v60 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v83 = &v60 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  if (AnimatedValueTrack<A>.VectorPath.isEmpty.getter())
  {
    v31 = *(v72 + 56);

    return v31(a4, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v61 = a2;
    v74 = v12;
    v62 = a3;
    v63 = a4;
    v75 = AssociatedConformanceWitness;
    v85 = v30;
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    v33 = MEMORY[0x18D00CDE0](a1, v16);
    v73 = v15;
    v34 = v79;
    if (v33)
    {
      v35 = v16;
      v36 = 0;
      v37 = (v79 + 16);
      v84 = (v79 + 32);
      v68 = v71 + 4;
      v38 = (v72 + 16);
      v69 = (v80 + 1);
      v80 = (v72 + 8);
      v70 = (v71 + 1);
      v71 = (v72 + 32);
      v66 = a1;
      v65 = (v79 + 16);
      v67 = AssociatedTypeWitness;
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          result = (*(v34 + 16))(v87, a1 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v36, v35);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v64 != 8)
          {
            goto LABEL_21;
          }

          v88 = result;
          (*v37)(v87, &v88, v35);
          result = swift_unknownObjectRelease();
        }

        v40 = v36 + 1;
        v41 = v85;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        v42 = v35;
        (*v84)(v86, v87, v35);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v44 = v73;
            v45 = v82;
            (*v68)(v73, v86, v82);
            v46 = *v38;
            (*v38)(v83, v41, AssociatedTypeWitness);
            v46(v81, v44, AssociatedTypeWitness);
            v47 = v76;
            v46(v76, &v44[*(v45 + 36)], AssociatedTypeWitness);
            v48 = v77;
            v46(v77, &v44[*(v45 + 40)], AssociatedTypeWitness);
            v49 = v78;
            Curve.init(start:end:startTangent:endTangent:)(v83, v81, v47, v48, AssociatedTypeWitness, v78);
            v50 = v74;
            Curve.arcLength(at:)(v74);
            if (v51 >= a5)
            {
              Curve.parametricTime(forArcLength:)(v50, a5);
              v55 = v83;
              Curve.velocity(at:)(v50, v83);
              v56 = v75;
              v57 = v67;
              v58 = (*(v75 + 24))(v67, v75);
              (*(v56 + 16))(v57, v56, 1.0 / sqrt(v58));
              (*v69)(v49, v50);
              (*v70)(v44, v82);
              (*(v72 + 8))(v85, v57);
              v59 = v63;
              (*(v72 + 32))(v63, v55, v57);
              return (*(v72 + 56))(v59, 0, 1, v57);
            }

            v52 = v51;
            (*v69)(v49, v50);
            v53 = v85;
            AssociatedTypeWitness = v67;
            (*v80)(v85, v67);
            a5 = a5 - v52;
            v46(v53, v44, AssociatedTypeWitness);
            (*v70)(v44, v82);
            a1 = v66;
            v34 = v79;
            v37 = v65;
            v35 = v42;
          }
        }

        else
        {
          (*v80)(v41, AssociatedTypeWitness);
          (*v71)(v41, v86, AssociatedTypeWitness);
        }

        ++v36;
        if (v40 == MEMORY[0x18D00CDE0](a1, v35))
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
    }

    else
    {
LABEL_18:
      v54 = v63;
      AnimatedValueTrack<A>.VectorPath.endValue.getter(a1, v61, v62);
      (*(v72 + 8))(v85, AssociatedTypeWitness);
      return (*(v72 + 56))(v54, 0, 1, AssociatedTypeWitness);
    }
  }

  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.end(previousValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v3, a2, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v8 + 32))(v10, v14, v7);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      (*(*(AssociatedTypeWitness - 8) + 16))(a3, v10, AssociatedTypeWitness);
      return (*(v8 + 8))(v10, v7);
    }

    else
    {
      v20 = swift_getAssociatedTypeWitness();
      return (*(*(v20 - 8) + 16))(a3, a1, v20);
    }
  }

  else
  {
    v19 = swift_getAssociatedTypeWitness();
    return (*(*(v19 - 8) + 32))(a3, v14, v19);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.value(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v28 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v38 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if (AnimatedValueTrack<A>.VectorPath.isEmpty.getter())
  {
    v16 = *(v32 + 56);

    return v16(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    if (MEMORY[0x18D00CDE0](a1, v6))
    {
      v29 = v7;
      v18 = 0;
      v36 = (v40 + 16);
      v37 = AssociatedTypeWitness;
      v33 = (v40 + 8);
      v34 = (v32 + 8);
      v35 = (v40 + 32);
      v19 = (v32 + 32);
      v30 = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v31 = a2;
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          a2 = v39;
          (*(v40 + 16))(v39, a1 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v18, v6);
          AssociatedTypeWitness = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          a2 = v39;
          if (v29 != 8)
          {
            __break(1u);
            return result;
          }

          v41 = result;
          (*v36)(v39, &v41, v6);
          swift_unknownObjectRelease();
          AssociatedTypeWitness = v18 + 1;
          if (__OFADD__(v18, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        (*v35)(v8, a2, v6);
        AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v6);
        if (a3 < v21)
        {
          v26 = v31;
          AnimatedValueTrack<A>.VectorPath.Element.value(at:previousValue:)(v15, v6, v31, a3);
          (*v33)(v8, v6);
          v27 = v37;
          (*(v32 + 8))(v15, v37);
          return (*(v32 + 56))(v26, 0, 1, v27);
        }

        AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v6);
        a3 = a3 - v22;
        v23 = v38;
        AnimatedValueTrack<A>.VectorPath.Element.end(previousValue:)(v15, v6, v38);
        (*v33)(v8, v6);
        v24 = v37;
        (*v34)(v15, v37);
        v25 = *v19;
        (*v19)(v15, v23, v24);
        ++v18;
        if (AssociatedTypeWitness == MEMORY[0x18D00CDE0](a1, v6))
        {
          a2 = v31;
          AssociatedTypeWitness = v37;
          v25(v31, v15, v37);
          return (*(v32 + 56))(a2, 0, 1, AssociatedTypeWitness);
        }
      }
    }

    (*(v32 + 32))(a2, v15, AssociatedTypeWitness);
    return (*(v32 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.duration.getter(uint64_t a1)
{
  v3 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v1, a1, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      (*(v4 + 32))(v6, v10, v3);
      return (*(v4 + 8))(v6, v3);
    }
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    return (*(*(AssociatedTypeWitness - 8) + 8))(v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.value(at:previousValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v46 = a1;
  v47 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &AssociatedConformanceWitness - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v42 = &AssociatedConformanceWitness - v11;
  MEMORY[0x1EEE9AC00](v12);
  v41 = &AssociatedConformanceWitness - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &AssociatedConformanceWitness - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = type metadata accessor for Curve();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &AssociatedConformanceWitness - v17;
  v19 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v20 = *(v19 - 1);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &AssociatedConformanceWitness - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &AssociatedConformanceWitness - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26, v4, a2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return (*(v8 + 32))(v47, v26, AssociatedTypeWitness);
  }

  if (EnumCaseMultiPayload != 1)
  {
    return (*(v8 + 16))(v47, v46, AssociatedTypeWitness);
  }

  (*(v20 + 32))(v22, v26, v19);
  AnimatedValueTrack<A>.VectorPath.Element.duration.getter(a2);
  v29 = *(v8 + 16);
  if (v30 <= 0.0)
  {
    v29(v47, v22, AssociatedTypeWitness);
    return (*(v20 + 8))(v22, v19);
  }

  else
  {
    v29(v16, v46, AssociatedTypeWitness);
    v46 = v20;
    v31 = v41;
    v29(v41, v22, AssociatedTypeWitness);
    v32 = v42;
    v29(v42, &v22[v19[9]], AssociatedTypeWitness);
    v33 = v44;
    v29(v44, &v22[v19[10]], AssociatedTypeWitness);
    Curve.init(start:end:startTangent:endTangent:)(v16, v31, v32, v33, AssociatedTypeWitness, v18);
    v34 = v19[11];
    v35 = &v22[v19[12]];
    v36 = v35[32];
    v37 = *(v35 + 1);
    v48 = *v35;
    v49 = v37;
    v50 = v36;
    UnitCurve.value(at:)(a4 / *&v22[v34]);
    v38 = v45;
    Curve.value(at:)(v45, v47);
    (*(v43 + 8))(v18, v38);
    return (*(v46 + 8))(v22, v19);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.velocity(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v36 = &v26 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  if (AnimatedValueTrack<A>.VectorPath.isEmpty.getter())
  {
    v17 = *(v30 + 56);

    return v17(a2, 1, 1, AssociatedTypeWitness);
  }

  else
  {
    v19 = *(swift_getAssociatedConformanceWitness() + 8);
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    if (a3 >= 0.0)
    {
      v26 = v19;
      v27 = a2;
      if (MEMORY[0x18D00CDE0](a1, v6))
      {
        v20 = 0;
        v33 = (v7 + 32);
        v34 = (v7 + 16);
        v31 = (v7 + 8);
        v32 = (v30 + 8);
        v29 = (v30 + 32);
        do
        {
          IsNativeType = Array._hoistableIsNativeTypeChecked()();
          Array._checkSubscript(_:wasNativeTypeChecked:)();
          if (IsNativeType)
          {
            (*(v7 + 16))(v36, a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v6);
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_16;
            }
          }

          else
          {
            result = _ArrayBuffer._getElementSlowPath(_:)();
            if (v28 != 8)
            {
              __break(1u);
              return result;
            }

            v37 = result;
            (*v34)(v36, &v37, v6);
            swift_unknownObjectRelease();
            v22 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
LABEL_16:
              __break(1u);
              break;
            }
          }

          (*v33)(v9, v36, v6);
          AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v6);
          if (a3 < v23)
          {
            a2 = v27;
            AnimatedValueTrack<A>.VectorPath.Element.velocity(at:previousValue:)(v16, v6, v27, a3);
            (*v31)(v9, v6);
            (*(v30 + 8))(v16, AssociatedTypeWitness);
            return (*(v30 + 56))(a2, 0, 1, AssociatedTypeWitness);
          }

          AnimatedValueTrack<A>.VectorPath.Element.duration.getter(v6);
          a3 = a3 - v24;
          v25 = v35;
          AnimatedValueTrack<A>.VectorPath.Element.end(previousValue:)(v16, v6, v35);
          (*v31)(v9, v6);
          (*v32)(v16, AssociatedTypeWitness);
          (*v29)(v16, v25, AssociatedTypeWitness);
          ++v20;
        }

        while (v22 != MEMORY[0x18D00CDE0](a1, v6));
      }

      a2 = v27;
    }

    dispatch thunk of static AdditiveArithmetic.zero.getter();
    (*(v30 + 8))(v16, AssociatedTypeWitness);
    return (*(v30 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.Element.velocity(at:previousValue:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v52 = a3;
  v45 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for Curve();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v43 - v8;
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v44 = &v43 - v22;
  v23 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v24 = *(v23 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v43 - v25;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v31 + 16))(v30, v51, a2, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v24 + 32))(v26, v30, v23);
      v33 = *&v26[v23[11]];
      v34 = *(v49 + 16);
      if (v33 <= 0.0)
      {
        v34(v52, v26, AssociatedTypeWitness);
      }

      else
      {
        v34(v20, v45, AssociatedTypeWitness);
        v34(v17, v26, AssociatedTypeWitness);
        v34(v14, &v26[v23[9]], AssociatedTypeWitness);
        v34(v11, &v26[v23[10]], AssociatedTypeWitness);
        v35 = v46;
        v36 = AssociatedConformanceWitness;
        Curve.init(start:end:startTangent:endTangent:)(v20, v17, v14, v11, AssociatedTypeWitness, v46);
        v37 = &v26[v23[12]];
        v38 = v37[32];
        v39 = *(v37 + 1);
        v53 = *v37;
        v54 = v39;
        v55 = v38;
        UnitCurve.value(at:)(a4 / v33);
        v40 = v44;
        v41 = v48;
        Curve.velocity(at:)(v48, v44);
        (*(v47 + 8))(v35, v41);
        VectorArithmetic.scaled(by:)(AssociatedTypeWitness, v36, v52, 1.0 / v33);
        (*(v49 + 8))(v40, AssociatedTypeWitness);
      }

      return (*(v24 + 8))(v26, v23);
    }

    else
    {
      return dispatch thunk of static AdditiveArithmetic.zero.getter();
    }
  }

  else
  {
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    return (*(v49 + 8))(v30, AssociatedTypeWitness);
  }
}

uint64_t AnimatedValueTrack<A>.VectorPath.move(to:)(uint64_t a1)
{
  v2 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(v4, a1, AssociatedTypeWitness);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Array();
  return Array.append(_:)();
}

uint64_t AnimatedValueTrack<A>.VectorPath.addCurve(to:startTangent:endTangent:duration:timingCurve:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, double a6)
{
  v31 = a3;
  v29 = a1;
  v30 = a2;
  v8 = *(a5 + 24);
  v27 = *(a5 + 16);
  v28 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - v17;
  v19 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v25 - v20;
  LOBYTE(v8) = *(a4 + 32);
  v22 = *(v10 + 16);
  v23 = *a4;
  v25 = a4[1];
  v26 = v23;
  v22(v18, v29, AssociatedTypeWitness);
  v22(v15, v30, AssociatedTypeWitness);
  v22(v12, v31, AssociatedTypeWitness);
  v32[1] = v25;
  v32[0] = v26;
  v33 = v8;
  AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.init(to:startTangent:endTangent:duration:timingCurve:)(v18, v15, v12, v32, v21, a6);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Array();
  return Array.append(_:)();
}

__n128 AnimatedValueTrack<A>.VectorPath.Element.CurveSegment.init(to:startTangent:endTangent:duration:timingCurve:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v19 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(*(AssociatedTypeWitness - 8) + 32);
  v17 = *(a4 + 16);
  v18 = *a4;
  v13(a5, a1, AssociatedTypeWitness);
  v14 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element.CurveSegment();
  v13(a5 + v14[9], a2, AssociatedTypeWitness);
  v13(a5 + v14[10], a3, AssociatedTypeWitness);
  *(a5 + v14[11]) = a6;
  v15 = a5 + v14[12];
  result = v18;
  *v15 = v18;
  *(v15 + 16) = v17;
  *(v15 + 32) = v19;
  return result;
}

__n128 specialized AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(uint64_t a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = specialized AnimatedValueTrack<A>.VectorPath.endValue.getter(*v4);
  v12 = v11;
  v17 = *a1;
  v18 = *(a1 + 16);
  v19 = *(a1 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1, v9);
  }

  v14 = *(v9 + 16);
  v13 = *(v9 + 24);
  if (v14 >= v13 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v9);
  }

  *(v9 + 16) = v14 + 1;
  v15 = v9 + 96 * v14;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a2 - v10;
  *(v15 + 56) = a3 - v12;
  *(v15 + 64) = a2 - v10;
  *(v15 + 72) = a3 - v12;
  *(v15 + 80) = a4;
  result = v17;
  *(v15 + 120) = v19;
  *(v15 + 104) = v18;
  *(v15 + 88) = v17;
  *(v15 + 121) = 1;
  *v4 = v9;
  return result;
}

uint64_t AnimatedValueTrack<A>.VectorPath.addLine(to:duration:timingCurve:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v27 = a3;
  v10 = *(a3 + 16);
  v9 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v24 - v19;
  v26 = *(a2 + 32);
  AnimatedValueTrack<A>.VectorPath.endValue.getter(*v5, v10, v9);
  swift_getAssociatedConformanceWitness();
  v21 = *a2;
  v24 = *(a2 + 16);
  v25 = v21;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v28[1] = v24;
  v28[0] = v25;
  v29 = v26;
  AnimatedValueTrack<A>.VectorPath.addCurve(to:startTangent:endTangent:duration:timingCurve:)(a1, v17, v14, v28, v27, a4);
  v22 = *(v12 + 8);
  v22(v14, AssociatedTypeWitness);
  v22(v17, AssociatedTypeWitness);
  return (v22)(v20, AssociatedTypeWitness);
}

uint64_t AnimatedValueTrack<A>.VectorPath.hold(for:)(double a1)
{
  v2 = type metadata accessor for AnimatedValueTrack<A>.VectorPath.Element();
  MEMORY[0x1EEE9AC00](v2);
  *(&v5 - v3) = a1;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Array();
  return Array.append(_:)();
}