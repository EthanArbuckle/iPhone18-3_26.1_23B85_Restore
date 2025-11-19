uint64_t storeEnumTagSinglePayload for SceneListCombiner(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SceneListCombiner(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Bool>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>)
  {
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SearchScopeActivation.Role> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Image.Scale>(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FailedCallbacks<()>(255, a2, MEMORY[0x1E69E6370], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_2(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_3(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGACyxGAA04ViewF0AAWlTm_4(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>()
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>)
  {
    v0 = MEMORY[0x1E69801E0];
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06WidgetcD0VGMaTm_1(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, MEMORY[0x1E6980678], MEMORY[0x1E6980670], v0);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    v1 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>;
  if (!lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>)
  {
    type metadata accessor for _ConditionalContent<HalfOpenCircularGauge, CircularPercentageGauge>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ComplicationInterfaceIdiom>, MEMORY[0x1E6980678], MEMORY[0x1E6980670], MEMORY[0x1E69801E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InterfaceIdiomPredicate<ComplicationInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>()
{
  result = lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>;
  if (!lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>)
  {
    type metadata accessor for OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OrOperationViewInputPredicate<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, InterfaceIdiomPredicate<ComplicationInterfaceIdiom>> and conformance OrOperationViewInputPredicate<A, B>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance NavigationPresentationAdaptorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v3, v7, a3);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance NavigationPresentationAdaptorModifier()
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type _GraphInputs.NavigationPresentationAdaptorKey and conformance _GraphInputs.NavigationPresentationAdaptorKey();
  return PropertyList.subscript.setter();
}

uint64_t type metadata completion function for Observer2()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t Observer.init(modifier:environment:cycleDetector:lastValue:)@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v10 = *(a3 + 8);
  v11 = *(a3 + 12);
  *a8 = a1;
  *(a8 + 4) = a2;
  *(a8 + 8) = *a3;
  *(a8 + 16) = v10;
  *(a8 + 20) = v11;
  v12 = *(a7(0, a5, a6) + 44);
  v13 = type metadata accessor for Optional();
  v14 = *(*(v13 - 8) + 32);

  return v14(a8 + v12, a4, v13);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance Observer<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void type metadata accessor for TextField<EmptyView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t sub_18BE703A0()
{
  type metadata accessor for SearchSuggestionsModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  lazy protocol witness table accessor for type EnvironmentValues.SearchSuggestions and conformance EnvironmentValues.SearchSuggestions();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<SearchHasSuggestions> and conformance ViewInputFlagModifier<A>, &lazy cache variable for type metadata for ViewInputFlagModifier<SearchHasSuggestions>, lazy protocol witness table accessor for type SearchHasSuggestions and conformance SearchHasSuggestions);
  return swift_getWitnessTable();
}

void type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ViewInputFlagModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HasCustomAccessory> and conformance ViewInputFlagModifier<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ViewInputFlagModifier<SearchHasSuggestions>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ObjectFallbackDelegateBox.addDelegate(to:)()
{
  swift_getObjectType();
  v0 = swift_unknownObjectRetain();
  specialized EnvironmentValues.subscript.setter(v0);

  return swift_unknownObjectRelease();
}

uint64_t specialized EnvironmentValues.subscript.setter(uint64_t a1)
{
  v2 = a1;
  type metadata accessor for EnvironmentObjectKey();
  swift_getWitnessTable();
  return EnvironmentValues._set<A>(_:for:)(&v2);
}

{
  return specialized EnvironmentValues.subscript.setter(a1);
}

void ObservableFallbackDelegateBox.addDelegate(to:)()
{
  v1 = *(v0 + 16);
  v2 = v1;
  specialized EnvironmentValues.subscript.setter(v1);
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WithCurrentHostingControllerKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t NavigationSplitView.init<>(columnVisibility:sidebar:detail:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a5;
  v28 = a4;
  v25[1] = a3;
  v26 = a2;
  v29 = a8;
  MEMORY[0x1EEE9AC00](a1);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v13;
  if (*(v13 + 17))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | *(v13 + 16) | 0x4000;
  lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns();
  v19 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  v37[0] = v16;
  v37[1] = v19;
  v38 = v18;
  v39 = 1;
  v36 = 512;
  v21 = v26(v20);
  v28(v21);
  v22 = MEMORY[0x1E6981E70];
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v33);
  v30 = v33;
  v31 = v34;
  v32 = v35;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(v37, &v36, &v30, v15, v23, v11, a6, v22, v29, a7);
}

unint64_t lazy protocol witness table accessor for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns()
{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns;
  if (!lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyNavigationSplitVisibility.ToTwoColumns and conformance AnyNavigationSplitVisibility.ToTwoColumns);
  }

  return result;
}

uint64_t NavigationStack.init<>(path:root:)@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = *(a1 + 40);
  v9 = a1[6];
  v16 = a1[7];
  v17 = *a1;
  v10 = type metadata accessor for NavigationStack();
  *(a3 + v10[11]) = 0;
  v11 = a3 + v10[13];
  *v11 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  a2();
  type metadata accessor for AnyNavigationPath.HeterogeneousBoxBase();
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v6;
  *(v12 + 32) = v7;
  *(v12 + 40) = v8;
  *(v12 + 48) = v9;
  *(v12 + 56) = v16;
  outlined copy of NavigationPath.Representation(v5, v6, v7, v8);
  lazy protocol witness table accessor for type AnyNavigationPath.ToHeterogeneous and conformance AnyNavigationPath.ToHeterogeneous();

  v13 = dispatch thunk of AnyLocation.projecting<A>(_:)();

  outlined consume of NavigationPath.Representation(v5, v6, v7, v8);

  v15 = a3 + v10[12];
  *v15 = v17;
  *(v15 + 8) = v13;
  *(v15 + 16) = v12;
  *(v15 + 24) = 1;
  return result;
}

uint64_t View.navigationBarHidden(_:)(char a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement>();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 48) = 0u;
  *(inited + 64) = 0;
  *(inited + 32) = 0u;
  if (a1)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  View.toolbar(_:for:)(v7, inited, a2, a3);
  swift_setDeallocating();
  return outlined destroy of ToolbarPlacement(inited + 32);
}

void type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarPlacement>);
    }
  }
}

uint64_t View.toolbar(_:for:)(char a1, uint64_t a2, uint64_t a3)
{
  v28 = 1;
  v27 = 1;
  v5 = *(a2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v26;
    v8 = a2 + 32;
    do
    {
      outlined init with copy of ToolbarPlacement(v8, &v22);
      outlined init with copy of ToolbarPlacement.Storage(&v22, &v18);
      if (*(&v19 + 1) == 7)
      {
        outlined destroy of ToolbarPlacement(&v22);
        v9 = 0;
        v10 = 0uLL;
        v11 = 0uLL;
      }

      else
      {
        outlined destroy of ToolbarPlacement.Storage(&v18);
        v10 = v22;
        v11 = v23;
        v9 = v24;
      }

      v26 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v11;
        v17 = v10;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v10 = v17;
        v6 = v26;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 40 * v13;
      *(v14 + 32) = v10;
      *(v14 + 48) = v11;
      *(v14 + 64) = v9;
      v8 += 40;
      --v5;
    }

    while (v5);
  }

  LOBYTE(v18) = a1;
  *(&v18 + 1) = 0;
  *&v19 = 0;
  BYTE8(v19) = 4;
  *&v20 = 0;
  BYTE8(v20) = v28;
  *v21 = 0;
  v21[8] = v27;
  *&v21[9] = 770;
  v21[11] = 3;
  *&v21[16] = v6;
  v21[24] = 0;
  MEMORY[0x18D00A570](&v18, a3, &type metadata for ToolbarAppearanceModifier);
  v24 = v20;
  v25[0] = *v21;
  *(v25 + 9) = *&v21[9];
  v22 = v18;
  v23 = v19;
  return outlined destroy of ToolbarAppearanceModifier(&v22);
}

uint64_t initializeWithCopy for ToolbarPlacement(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 >= 8)
  {
    v4 = *(a2 + 32);
    *(result + 24) = v2;
    *(result + 32) = v4;
    v5 = result;
    (**(v2 - 8))();
    return v5;
  }

  else
  {
    v3 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v3;
    *(result + 32) = *(a2 + 32);
  }

  return result;
}

uint64_t initializeWithCopy for ToolbarAppearanceModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 59) = *(a2 + 59);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t sub_18BE713CC()
{
  lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>()
{
  if (!lazy cache variable for type metadata for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>)
  {
    v0 = type metadata accessor for NavigationSplitView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>);
    }
  }
}

void type metadata accessor for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>()
{
  if (!lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>)
  {
    lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
    lazy protocol witness table accessor for type ResolvedNavigationSplitStyle.ContentListContent and conformance ResolvedNavigationSplitStyle.ContentListContent();
    v0 = type metadata accessor for StaticSourceWriter();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticSourceWriter<NavigationSplitViewStyleConfiguration.Content, ResolvedNavigationSplitStyle.ContentListContent>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for _PreferenceWritingModifier<HasSwiftUINavigationKey>, &type metadata for HasSwiftUINavigationKey, &protocol witness table for HasSwiftUINavigationKey, MEMORY[0x1E6980750]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceWritingModifier<HasSwiftUINavigationKey> and conformance _PreferenceWritingModifier<A>);
  }

  return result;
}

uint64_t destroy for NavigationSplitViewStyleConfiguration()
{
}

uint64_t partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter@<X0>(_DWORD *a1@<X8>)
{
  return partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter(a1);
}

{
  return specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter(*(v1 + 16), a1);
}

uint64_t type metadata completion function for SelectionManagerBox()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t initializeWithCopy for NavigationSplitView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(a3[3] - 8);
  v8 = v7 + 16;
  v9 = *(v7 + 80);
  v10 = *(v6 + 48) + v9;
  v11 = (v10 + a1) & ~v9;
  v12 = (v10 + a2) & ~v9;
  (*(v7 + 16))(v11, v12);
  v13 = *(v8 + 48);
  v14 = *(a3[4] - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = v13 + v16;
  v18 = (v17 + v11) & ~v16;
  v19 = (v17 + v12) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v22 + 18);
  if (v23 >= 2)
  {
    v23 = *v22 + 2;
  }

  if (v23 == 1)
  {
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
    *(v21 + 16) = *(v22 + 16);

    v24 = 1;
  }

  else
  {
    v24 = 0;
    *v21 = *v22;
    *(v21 + 8) = *(v22 + 8);
  }

  *(v21 + 18) = v24;
  v25 = (v22 + 26) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v25 + 17);
  if (v26 >= 2)
  {
    v26 = *v25 + 2;
  }

  v27 = (v21 + 26) & 0xFFFFFFFFFFFFFFF8;
  if (v26 == 1)
  {
    *v27 = *v25;
    *(v27 + 8) = *(v25 + 8);
    *(v27 + 16) = *(v25 + 16);

    v28 = 1;
  }

  else
  {
    v28 = 0;
    *v27 = *v25;
    *(v27 + 8) = *(v25 + 8);
  }

  *(v27 + 17) = v28;
  *(v27 + 18) = *(v25 + 18);
  return a1;
}

uint64_t NavigationSplitView.visibility.getter(uint64_t a1)
{
  if (*(v1 + *(a1 + 76) + 18))
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
    v3 = v2;

    MEMORY[0x18D00ACC0](v3);
  }

  else
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for State<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981790]);

    State.wrappedValue.getter();
  }
}

uint64_t closure #1 in NavigationSplitView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v8, v11, v12);
  static ViewBuilder.buildExpression<A>(_:)(v10, a2, a5);
  return (*(v7 + 8))(v10, a2);
}

uint64_t type metadata completion function for List()
{
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for NavigableListModifier()
{
  type metadata accessor for SelectionManagerBox();
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ResolvedList()
{
  type metadata accessor for SelectionManagerBox();
  swift_getWitnessTable();
  result = type metadata accessor for _ListStyleConfiguration();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for SelectionManagerBox<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for _ListStyleConfiguration()
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

unint64_t instantiation function for generic protocol witness table for ListStyleContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent()
{
  result = lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent;
  if (!lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent;
  if (!lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListStyleContent and conformance ListStyleContent);
  }

  return result;
}

uint64_t sub_18BE721A0()
{
  type metadata accessor for TypesMatch();
  swift_getWitnessTable();
  type metadata accessor for InvertedViewInputPredicate();
  type metadata accessor for ResolvedList();
  type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(255, &lazy cache variable for type metadata for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>, &type metadata for AutomaticTextFieldLabelDisplayMode, &protocol witness table for AutomaticTextFieldLabelDisplayMode, type metadata accessor for TextFieldLabelDisplayModeModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier>, lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate, lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4_4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ListPresentationPredicate, ListPresentationSizingModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v6>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type ListStyleContent and conformance ListStyleContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for StaticSourceWriter();
  type metadata accessor for ModifiedContent();
  type metadata accessor for NavigableListModifier();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type ViewInputFlagModifier<ProvidesContextMenuInteraction> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for ResettableLazyLayoutRoot();
  return swift_getWitnessTable();
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>)
  {
    type metadata accessor for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E69808E8]);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsPredicate<ScrollViewStyleContext>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ScrollViewStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for TextFieldLabelDisplayModeModifier<AutomaticTextFieldLabelDisplayMode>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier>();
    _s7SwiftUI19NavigationStateHostCAC7Combine16ObservableObjectAAWlTm_0(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<StyleContextAcceptsPredicate<ScrollViewStyleContext>, DisabledFeature>, ListHasLazyStackBehaviorInScrollableAxisModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListPresentationPredicate and conformance ListPresentationPredicate()
{
  result = lazy protocol witness table cache variable for type ListPresentationPredicate and conformance ListPresentationPredicate;
  if (!lazy protocol witness table cache variable for type ListPresentationPredicate and conformance ListPresentationPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationPredicate and conformance ListPresentationPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier()
{
  result = lazy protocol witness table cache variable for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier;
  if (!lazy protocol witness table cache variable for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPresentationSizingModifier and conformance ListPresentationSizingModifier);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<ProvidesContextMenuInteraction>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesContextMenuInteraction>)
  {
    lazy protocol witness table accessor for type ProvidesContextMenuInteraction and conformance ProvidesContextMenuInteraction();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<ProvidesContextMenuInteraction>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t type metadata completion function for NavigationLink()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>)
  {
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>(255, &lazy cache variable for type metadata for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle>, lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle, &type metadata for AutomaticNavigationSplitViewStyle, type metadata accessor for NavigationSplitStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle> and conformance NavigationSplitStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle;
  if (!lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle and conformance AutomaticNavigationSplitViewStyle);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

void type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for NavigationSplitStyleModifier();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>>)
  {
    type metadata accessor for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>();
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>(255, &lazy cache variable for type metadata for NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>, lazy protocol witness table accessor for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>, NavigationSplitStyleModifier<BalancedNavigationSplitViewStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>)
  {
    type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>();
    type metadata accessor for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>(255, &lazy cache variable for type metadata for NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>, lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>, NavigationSplitStyleModifier<AutomaticNavigationSplitViewStyle_Phone>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone()
{
  result = lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone;
  if (!lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticNavigationSplitViewStyle_Phone and conformance AutomaticNavigationSplitViewStyle_Phone);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle()
{
  result = lazy protocol witness table cache variable for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle;
  if (!lazy protocol witness table cache variable for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BalancedNavigationSplitViewStyle and conformance BalancedNavigationSplitViewStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>()
{
  result = lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>;
  if (!lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>)
  {
    type metadata accessor for NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationSplitView<NavigationSplitViewStyleConfiguration.Sidebar, NavigationSplitViewStyleConfiguration.Content, NavigationSplitViewStyleConfiguration.Detail> and conformance NavigationSplitView<A, B, C>);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NSManagedObjectContextEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

id protocol witness for static EnvironmentKey.defaultValue.getter in conformance NSManagedObjectContextEnvironmentKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = static NSManagedObjectContextEnvironmentKey.defaultValue;
  *a1 = static NSManagedObjectContextEnvironmentKey.defaultValue;

  return v2;
}

id one-time initialization function for defaultValue()
{
  result = [objc_allocWithZone(MEMORY[0x1E695D628]) initWithConcurrencyType_];
  static NSManagedObjectContextEnvironmentKey.defaultValue = result;
  return result;
}

uint64_t NavigationSplitView.init<>(sidebar:detail:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = xmmword_18CDF3C70;
  v27 = 0;
  v28 = 0;
  v25 = 512;
  v15 = v14();
  a2(v15);
  v16 = MEMORY[0x1E6981E70];
  protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(&v22);
  v19 = v22;
  v20 = v23;
  v21 = v24;
  return NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)(&v26, &v25, &v19, v13, v17, v10, a3, v16, a5, a4);
}

uint64_t View.navigationBarTitle(_:displayMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v22 = a4;
  v23 = a8;
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for TransactionalPreferenceTransformModifier<NavigationTitleKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v22 - v16;
  LOBYTE(a5) = *a5;
  View.navigationTitle(_:)(a1, a2, a3, v22, a6, a7);
  v28 = a5;
  v26 = a7;
  v27 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v19 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v24 = WitnessTable;
  v25 = v19;
  v20 = swift_getWitnessTable();
  View.navigationBarTitleDisplayMode(_:)(&v28, v14, v20, v23);
  return (*(v15 + 8))(v17, v14);
}

uint64_t View.navigationTitle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  a7(v8, v9);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

__n128 FetchRequest.init(fetchRequest:animation:)@<Q0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{

  v6 = Transaction.init(animation:)();
  FetchRequest.init(fetchRequest:transaction:)(a1, v6, a2, v9);

  v7 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v7;
  *(a3 + 64) = v9[4];
  result = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = result;
  return result;
}

__n128 FetchRequest.init(fetchRequest:transaction:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSFetchRequest);
  swift_dynamicCast();
  type metadata accessor for DeferredFetchRequest();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = v12;
  v9 = DeferredFetchRequest.__allocating_init(_:)(partial apply for closure #1 in FetchRequest.init(fetchRequest:transaction:), v8);
  FetchRequest.init(deferredFetchRequest:transaction:)(v9, a2, v13);

  v10 = v13[3];
  *(a4 + 32) = v13[2];
  *(a4 + 48) = v10;
  *(a4 + 64) = v13[4];
  result = v13[1];
  *a4 = v13[0];
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_18BE73B10()
{

  return swift_deallocObject();
}

void *DeferredFetchRequest.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = a1;
  result[4] = a2;
  return result;
}

double FetchRequest.init(deferredFetchRequest:transaction:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(swift_allocObject() + 16) = *(v6 + 80);
  *(a3 + 16) = property wrapper backing initializer of FetchRequest.controller();
  *(a3 + 24) = v7;
  *(a3 + 32) = v8 & 1;
  property wrapper backing initializer of FetchRequest.results();
  result = *&v10;
  *(a3 + 40) = v10;
  *(a3 + 64) = a2;
  *(a3 + 72) = a1;
  *(a3 + 56) = v11;
  return result;
}

uint64_t property wrapper backing initializer of FetchRequest.controller()
{
  type metadata accessor for FetchedResults();
  type metadata accessor for FetchController();
  swift_getWitnessTable();
  return StateObject.init(wrappedValue:)();
}

uint64_t type metadata completion function for FetchController()
{
  type metadata accessor for Optional();
  type metadata accessor for Binding();
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t property wrapper backing initializer of FetchRequest.results()
{
  type metadata accessor for FetchedResults();
  type metadata accessor for Optional();
  return State.init(wrappedValue:)();
}

__n128 FetchRequest<>.init(sortDescriptors:predicate:animation:)@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for DeferredFetchRequest();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v9 = DeferredFetchRequest.__allocating_init(_:)(partial apply for closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:), v8);

  v10 = a2;
  v11 = Transaction.init(animation:)();
  FetchRequest.init(deferredFetchRequest:transaction:)(v9, v11, v14);

  v12 = v14[3];
  *(a4 + 32) = v14[2];
  *(a4 + 48) = v12;
  *(a4 + 64) = v14[4];
  result = v14[1];
  *a4 = v14[0];
  *(a4 + 16) = result;
  return result;
}

{
  *&v15[0] = a1;
  v14[2] = a3;
  type metadata accessor for SortDescriptor();
  v7 = type metadata accessor for Array();
  v8 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for NSSortDescriptor);
  WitnessTable = swift_getWitnessTable();
  v11 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in FetchRequest<>.init(sortDescriptors:predicate:animation:), v14, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  FetchRequest<>.init(sortDescriptors:predicate:animation:)(v11, a2, a3, v15);
  v12 = v15[3];
  *(a4 + 32) = v15[2];
  *(a4 + 48) = v12;
  *(a4 + 64) = v15[4];
  result = v15[1];
  *a4 = v15[0];
  *(a4 + 16) = result;
  return result;
}

uint64_t sub_18BE73FB0()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for ScrollViewBehavior(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t initializeWithCopy for FetchRequest(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(v6, v7, v8);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  if (v9)
  {
    v10 = *(a2 + 48);
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    v11 = v9;
    v12 = v10;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  v13 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v13;
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

id outlined copy of ToolbarStorage.NavigationProperties.DocumentProperties(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

id outlined copy of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    return a2;
  }

  else
  {
  }
}

uint64_t destroy for FetchRequest(uint64_t a1)
{
  outlined consume of Environment<NSManagedObjectContext>.Content(*a1, *(a1 + 8));
  outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(*(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
  }
}

uint64_t outlined consume of StateObject<FetchController<(), A, FetchedResults<A>>>.Storage<A>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return MEMORY[0x1EEE66BB8]();
  }

  else
  {
  }
}

void outlined consume of ResolvableCLKTextProvider.FontStorage(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

_WORD *storeEnumTagSinglePayload for AnyNavigationSplitVisibility(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 57347 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 57347 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x1FFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x1FFC)
  {
    v6 = ((a2 - 8189) >> 16) + 1;
    *result = a2 - 8189;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    v7 = ((-a2 >> 2) & 0x7FF) - (a2 << 11);
    *result = (8 * v7) & 0xFE00 | (4 * (v7 & 0x3F));
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnyNavigationSplitVisibility(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1FFD)
  {
    goto LABEL_17;
  }

  if (a2 + 57347 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 57347 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 57347;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 57347;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 57347;
    }
  }

LABEL_17:
  v6 = (*a1 & 0xFC | (*a1 >> 14) | (*a1 >> 1) & 0x1F00) ^ 0x1FFF;
  if (v6 >> 2 >= 0x7FF)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t NavigationSplitView.$visibility.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 76));
  v4 = *v3;
  v5 = v3[1];
  if (*(v3 + 18))
  {
    v6 = *(v3 + 8);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for State<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981790]);

    State.projectedValue.getter();
  }
}

uint64_t AutomaticNavigationSplitViewStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 18);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 18) = 1;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 41) = 1;
  *(a2 + 42) = v4;
}

uint64_t protocol witness for NavigationSplitViewStyle.makeBody(configuration:) in conformance AutomaticNavigationSplitViewStyle_Phone@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v3 = *(a1 + 16);
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  *a2 = implicit closure #2 in implicit closure #1 in variable initialization expression of NavigationSplitReader._stateHost;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = *a1;
  *(a2 + 48) = v3;
  *(a2 + 64) = *(a1 + 32);
  *(a2 + 80) = *(a1 + 48);
  *(a2 + 81) = 2;
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v6, &v5);
}

uint64_t _NavigationSplitReader.Core.value.getter@<X0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  v41 = *Value;
  v4 = *(Value + 16);
  v39 = *(Value + 24);
  v40 = *(Value + 8);
  v37 = *(Value + 26);
  v38 = *(Value + 25);

  v5 = AGGraphGetValue();
  v6 = *v5;
  v7 = *(v5 + 8);
  v35 = *(v5 + 18);
  v36 = *(v5 + 16);
  v8 = *MEMORY[0x1E698D3F8];
  if (*(v1 + 12) == *MEMORY[0x1E698D3F8])
  {

    v34 = 0;
  }

  else
  {
    _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for PreparedCompactColumn?, &type metadata for PreparedCompactColumn, MEMORY[0x1E69E6720]);

    v34 = *AGGraphGetValue();
  }

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v9 = AGGraphGetValue();
  result = outlined init with copy of NavigationAuthority?(v9, v89, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v90 == 1)
  {
    __break(1u);
  }

  else
  {
    v31 = a1;
    outlined init with take of NavigationAuthority(v89, v72);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v12 = *WeakValue;
      v13 = WeakValue[1] << 32;
    }

    else
    {
      v13 = 0xFFFFFFFF00000000;
      v12 = 0xFFFFFFFFLL;
    }

    type metadata accessor for UISplitViewControllerProxyStorage();
    v14 = AGGraphGetWeakValue();
    if (v14)
    {
      v15 = *v14;
    }

    else
    {
      v15 = 0;
    }

    if (*(v1 + 44) == v8)
    {
      v16 = 0;
      v32 = 0u;
      v33 = 0u;
    }

    else
    {
      type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(0, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?, type metadata accessor for UINavigationPresentationAdaptor);
      v17 = AGGraphGetValue();
      outlined init with copy of UINavigationPresentationAdaptor?(v17, v70);
      v32 = v70[1];
      v33 = v70[0];
      v16 = v71;
    }

    *&v73 = v41;
    BYTE8(v73) = v40;
    v74 = v4;
    v75 = v39;
    v76 = v38;
    v77 = v37;
    v78 = v6;
    v79 = v7;
    v80 = v36;
    v81 = v35;
    v82 = v34;
    outlined init with take of NavigationAuthority(v72, v83);
    v83[3] = v13 | v12;
    v84 = 0;
    v86 = v33;
    v87 = v32;
    v85 = v15;
    v88 = v16;
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
    v18 = AGGraphGetValue();
    v55 = *v18;
    v20 = *(v18 + 32);
    v19 = *(v18 + 48);
    v21 = *(v18 + 16);
    v59 = *(v18 + 64);
    v57 = v20;
    v58 = v19;
    v56 = v21;
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v55, v89, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
    v22 = AGGraphGetValue();
    v60 = *v22;
    v24 = *(v22 + 32);
    v23 = *(v22 + 48);
    v25 = *(v22 + 16);
    v64 = *(v22 + 64);
    v62 = v24;
    v63 = v23;
    v61 = v25;
    _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v60, v89, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
    v26 = AGGraphGetValue();
    v65 = *v26;
    v28 = *(v26 + 32);
    v27 = *(v26 + 48);
    v29 = *(v26 + 16);
    v69 = *(v26 + 64);
    v67 = v28;
    v68 = v27;
    v66 = v29;
    outlined init with take of _NavigationSplitReader.ForestRoot(&v73, v89);
    v47 = v57;
    v48 = v58;
    v45 = v55;
    v46 = v56;
    *&v49[24] = v61;
    *&v49[40] = v62;
    *&v49[56] = v63;
    *v49 = v59;
    *&v49[72] = v64;
    *&v49[8] = v60;
    v52 = v67;
    v53 = v68;
    v54 = v69;
    v50 = v65;
    v51 = v66;
    v102 = v67;
    v103 = v68;
    v98 = *&v49[48];
    v99 = *&v49[64];
    v100 = v65;
    v101 = v66;
    v104 = v69;
    v97 = *&v49[32];
    v93 = v57;
    v94 = v58;
    v95 = *v49;
    v96 = *&v49[16];
    v91 = v55;
    v92 = v56;
    outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v65, v42, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
    v30 = AGGraphGetValue();
    result = outlined init with copy of NavigationAuthority?(v30, v43, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (v44 != 1)
    {
      outlined init with take of NavigationAuthority(v43, v42);
      outlined init with take of NavigationAuthority?(v42, v31 + 368);
      return outlined init with take of VariadicViewForest<_NavigationSplitReader.ForestRoot, (ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>(v89, v31);
    }
  }

  __break(1u);
  return result;
}

uint64_t _NavigationSplitReader.CustomParameters.value.getter()
{
  v5 = *AGGraphGetValue();
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for UISplitViewControllerProxy?, &type metadata for UISplitViewControllerProxy, MEMORY[0x1E69E6720]);
  v1 = v0;
  v2 = lazy protocol witness table accessor for type _NavigationSplitReader.CustomParameters and conformance _NavigationSplitReader.CustomParameters();

  MEMORY[0x18D000B90](&unk_1EFFAE1A8, v1, v2);
  Rule.withObservation<A>(observationCenter:do:)();

  if (v6)
  {
    KeyPath = swift_getKeyPath();
    specialized UISplitViewControllerProxy.subscript.getter(KeyPath, v6);
  }

  return v5;
}

id sub_18BE74CDC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredSplitBehavior];
  *a2 = result;
  return result;
}

uint64_t NavigationSplitView.init(visibility:pureProgrammaticVisibility:preferredCompactColumn:sidebar:content:detail:)@<X0>(uint64_t *a1@<X0>, __int16 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v13 = *a1;
  v14 = a1[1];
  v15 = *(a1 + 8);
  v16 = *(a1 + 18);
  v17 = *a2;
  v25 = a3[1];
  v26 = *a3;
  v23 = *(a3 + 17);
  v24 = *(a3 + 16);
  v18 = type metadata accessor for NavigationSplitView();
  v19 = v18[21];
  *(a9 + v19) = 512;
  v20 = a9 + v18[19];
  *v20 = v13;
  *(v20 + 8) = v14;
  *(v20 + 16) = v15;
  *(v20 + 18) = v16;
  *(a9 + v19) = v17;
  v21 = a9 + v18[20];
  *v21 = v26;
  *(v21 + 8) = v25;
  *(v21 + 16) = v24;
  *(v21 + 17) = v23;
  (*(*(a7 - 8) + 32))(a9, a4, a7);
  (*(*(a8 - 8) + 32))(a9 + v18[17], a5, a8);
  return (*(*(a10 - 8) + 32))(a9 + v18[18], a6, a10);
}

void protocol witness for static _ViewTraitKey.defaultValue.getter in conformance FormRowInfoAction(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t destroy for NavigationSplitView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + a1;
  v6 = *(a2[3] - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2[4] - 8);
  v11 = v10 + 8;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  (*(v10 + 8))(v12);
  v13 = (*(v11 + 56) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 18);
  if (v14 >= 2)
  {
    v14 = *v13 + 2;
  }

  if (v14 == 1)
  {
  }

  v15 = (v13 + 26) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 17);
  if (v16 >= 2)
  {
    v16 = *v15 + 2;
  }

  if (v16 == 1)
  {
  }
}

uint64_t NavigationSplitView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v41 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Sidebar and conformance NavigationSplitViewStyleConfiguration.Sidebar();
  v4 = a1[5];
  v35 = a1[2];
  v36 = v4;
  *&v71 = &type metadata for NavigationSplitViewStyleConfiguration.Sidebar;
  *(&v71 + 1) = v35;
  *&v72 = v41;
  *(&v72 + 1) = v4;
  type metadata accessor for StaticSourceWriter();
  v5 = type metadata accessor for ModifiedContent();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v32 - v6;
  v7 = a1[3];
  v42 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Content and conformance NavigationSplitViewStyleConfiguration.Content();
  v8 = a1[6];
  *&v71 = &type metadata for NavigationSplitViewStyleConfiguration.Content;
  *(&v71 + 1) = v7;
  v33 = v7;
  *&v72 = v42;
  *(&v72 + 1) = v8;
  type metadata accessor for StaticSourceWriter();
  v39 = type metadata accessor for ModifiedContent();
  v46 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v32 - v9;
  v10 = a1[4];
  v43 = lazy protocol witness table accessor for type NavigationSplitViewStyleConfiguration.Detail and conformance NavigationSplitViewStyleConfiguration.Detail();
  v11 = a1[7];
  *&v71 = &type metadata for NavigationSplitViewStyleConfiguration.Detail;
  *(&v71 + 1) = v10;
  v34 = v10;
  *&v72 = v43;
  *(&v72 + 1) = v11;
  type metadata accessor for StaticSourceWriter();
  v12 = type metadata accessor for ModifiedContent();
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v40 = &v32 - v15;
  NavigationSplitView.configuration.getter(a1, v69);
  v16 = v35;
  *&v17 = v35;
  *(&v17 + 1) = v7;
  *&v18 = v10;
  *(&v18 + 1) = v36;
  v48 = v18;
  v49 = v17;
  v59[1] = v17;
  v59[2] = v18;
  v60 = v8;
  v61 = v11;
  v62 = v2;
  v19 = lazy protocol witness table accessor for type ResolvedNavigationSplitStyle and conformance ResolvedNavigationSplitStyle();
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationSplitViewStyleConfiguration.Sidebar, partial apply for closure #1 in NavigationSplitView.body.getter, v59, &type metadata for ResolvedNavigationSplitStyle, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, v16, v19);
  v71 = v69[0];
  v72 = v69[1];
  v73 = v69[2];
  v74 = v70;
  outlined destroy of ResolvedNavigationSplitStyle(&v71);
  v55[1] = v49;
  v55[2] = v48;
  v56 = v8;
  v57 = v11;
  v58 = v2;
  v20 = v2;
  v67 = v19;
  v68 = &protocol witness table for StaticSourceWriter<A, B>;
  WitnessTable = swift_getWitnessTable();
  v22 = v37;
  v23 = v50;
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationSplitViewStyleConfiguration.Content, partial apply for closure #2 in NavigationSplitView.body.getter, v55, v5, &type metadata for NavigationSplitViewStyleConfiguration.Content, v33, WitnessTable);
  (*(v45 + 8))(v23, v5);
  v51[1] = v49;
  v51[2] = v48;
  v52 = v8;
  v53 = v11;
  v54 = v20;
  v65 = WitnessTable;
  v66 = &protocol witness table for StaticSourceWriter<A, B>;
  v24 = v39;
  v25 = swift_getWitnessTable();
  v26 = v38;
  View.viewAlias<A, B>(_:_:)(&type metadata for NavigationSplitViewStyleConfiguration.Detail, partial apply for closure #3 in NavigationSplitView.body.getter, v51, v24, &type metadata for NavigationSplitViewStyleConfiguration.Detail, v34, v25);
  (*(v46 + 8))(v22, v24);
  v63 = v25;
  v64 = &protocol witness table for StaticSourceWriter<A, B>;
  v27 = swift_getWitnessTable();
  v28 = v40;
  v29 = v26;
  static ViewBuilder.buildExpression<A>(_:)(v26, v12, v27);
  v30 = *(v44 + 8);
  v30(v29, v12);
  static ViewBuilder.buildExpression<A>(_:)(v28, v12, v27);
  return (v30)(v28, v12);
}

uint64_t NavigationSplitView.configuration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  NavigationSplitView.$visibility.getter(a1, &v16);
  v5 = v16;
  v6 = v17;
  v7 = v18;
  v8 = *(v2 + *(a1 + 84));
  NavigationSplitView.visibility.getter(a1);
  v9 = v15 >> 14;
  if (v9 < 2 || v9 != 2 && v15 == 49152)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  result = NavigationSplitView.$preferredCompactColumn.getter(a1, &v16);
  v12 = v16;
  v13 = v17;
  v14 = v18;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 18) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  return result;
}

void type metadata accessor for State<NavigationSplitViewColumn>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t NavigationSplitView.$preferredCompactColumn.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (v2 + *(a1 + 80));
  v4 = *v3;
  v5 = v3[1];
  if (*(v3 + 17))
  {
    v6 = *(v3 + 16);
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  else
  {
    type metadata accessor for State<NavigationSplitViewColumn>(0, &lazy cache variable for type metadata for State<NavigationSplitViewColumn>, &type metadata for NavigationSplitViewColumn, MEMORY[0x1E6981790]);

    State.projectedValue.getter();
  }
}

uint64_t initializeWithCopy for NavigationSplitViewStyleConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t closure #2 in NavigationSplitView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[5] = v17;
  v18 = type metadata accessor for NavigationSplitView();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v18 + 68), a3, a6);
  static ViewBuilder.buildExpression<A>(_:)(v11, a3, a6);
  return (*(v9 + 8))(v11, a3);
}

uint64_t closure #3 in NavigationSplitView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v19 = type metadata accessor for NavigationSplitView();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v19 + 72), a4, a7);
  static ViewBuilder.buildExpression<A>(_:)(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

uint64_t ResolvedNavigationSplitStyle.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 18) = 1;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 41) = 1;
  *(a1 + 42) = v4;
  *(a1 + 48) = v6;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedNavigationSplitStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v2;
  v8 = *(v1 + 32);
  v3 = v8;
  v9 = *(v1 + 48);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return outlined init with copy of NavigationSplitViewStyleConfiguration(v7, v6);
}

uint64_t NavigationSplitStyleModifier.styleBody(configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v12;
  v16[2] = *(a1 + 32);
  v17 = *(a1 + 48);
  (*(v3 + 24))(v16, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v11, AssociatedTypeWitness);
}

uint64_t initializeWithCopy for NavigationSplitReader(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v7;
  *(a1 + 40) = a2[5];
  *(a1 + 48) = *(a2 + 12);
  v8 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v8;
  *(a1 + 72) = a2[9];
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);

  return a1;
}

uint64_t destroy for NavigationSplitReader()
{
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
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

void *NavigationSplitReader.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 64);
  v20 = *(v1 + 56);
  v7 = *(v1 + 72);
  v18 = *(v1 + 80);
  v19 = *(v1 + 50);
  v17 = *(v1 + 81);
  v16 = Namespace.wrappedValue.getter();
  v15 = Namespace.wrappedValue.getter();
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI21NavigationSplitColumnO_AC0ef4ViewG5WidthOTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  type metadata accessor for NavigationStateHost();
  lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type NavigationStateHost and conformance NavigationStateHost, type metadata accessor for NavigationStateHost);

  v8 = StateObject.wrappedValue.getter();
  v22 = v3;
  v23 = v4;
  v24 = v5;
  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for Binding<AnyNavigationSplitVisibility>, &type metadata for AnyNavigationSplitVisibility, MEMORY[0x1E6981948]);
  v10 = v9;

  result = MEMORY[0x18D00ACC0](&v21, v10);
  v12 = v21 >> 14;
  if (v12 < 2 || v12 != 2 && v21 == 49152)
  {
    v13 = 2;
  }

  else
  {
    v13 = 3;
  }

  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17;
  *(a1 + 24) = v14;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 58) = v19;
  *(a1 + 64) = v8;
  *(a1 + 72) = v20;
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = v18;
  *(a1 + 104) = v13;
  *(a1 + 112) = 1;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI21NavigationSplitColumnO_AC0ef4ViewG5WidthOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<Edge, Bool>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationSplitViewColumnWidth>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 3)
    {
      v5 = *(i - 8);
      v13 = i[1];
      v14 = *i;
      v6 = *(i + 32);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v9 = v3[7] + 40 * result;
      *v9 = v14;
      *(v9 + 16) = v13;
      *(v9 + 32) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t initializeWithCopy for _NavigationSplitReader(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t destroy for _NavigationSplitReader()
{
}

uint64_t *closure #1 in _NavigationSplitReader.CustomParameters.value.getter@<X0>(void *a1@<X8>)
{
  type metadata accessor for UISplitViewControllerProxyStorage();
  result = AGGraphGetWeakValue();
  if (result)
  {
    v3 = *result;
    swift_getKeyPath();
    lazy protocol witness table accessor for type NavigationStateHost and conformance NavigationStateHost(&lazy protocol witness table cache variable for type UISplitViewControllerProxyStorage and conformance UISplitViewControllerProxyStorage, type metadata accessor for UISplitViewControllerProxyStorage);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v3 + 16);
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t initializeWithCopy for NavigationSplitParameters(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);

  return a1;
}

uint64_t _NavigationSplitReader.DerivedAttributes.updateValue()()
{
  v41 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v1 = Value[1];
  *&v40 = *Value;
  *(&v40 + 1) = v1;

  swift_retain_n();
  v2 = AGGraphGetValue();
  v4 = *v2;
  v3 = v2[1];
  *&v28[0] = v4;
  *(&v28[0] + 1) = v3;

  EnvironmentValues.horizontalSizeClass.getter();

  LOBYTE(v28[0]) = v38[0] & 1;
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  LOBYTE(v28[0]) = 1;
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<InternalNavigationEnabledKey>, &type metadata for InternalNavigationEnabledKey, &protocol witness table for InternalNavigationEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<InternalNavigationEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey, MEMORY[0x1E697FE38]);
  memset(v28, 0, 17);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of NavigationAuthority?(v25 + 16, v28, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  v5 = *(&v28[0] + 1);
  outlined destroy of _VariadicView_Children.Element?(v28, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v5 != 1)
  {
    goto LABEL_17;
  }

  type metadata accessor for NavigationStateHost();
  AGGraphGetValue();

  v6 = AGGraphGetValue();
  v7 = *v6;
  v8 = v6[1];
  swift_weakInit();
  swift_weakAssign();

  *(&v28[0] + 1) = v7;
  *&v28[1] = v8;
  outlined assign with take of NavigationAuthority?(v28, v25 + 16);
  AGGraphGetValue();
  v1 = *(&v40 + 1);
  v28[0] = v40;

  NavigationStateHost.createState(environment:)(v28);

  _s7SwiftUI7BindingVyAA28AnyNavigationSplitVisibilityVGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationState.StackContent.Key>, &type metadata for NavigationState.StackContent.Key, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63410;
  v10 = *AGGraphGetValue();
  v11 = *AGGraphGetValue();
  *(inited + 32) = v10;
  *(inited + 40) = 0;
  *(inited + 48) = v11;
  v12 = *AGGraphGetValue();
  v13 = *AGGraphGetValue();
  *(inited + 56) = v12;
  *(inited + 64) = 2;
  *(inited + 72) = v13;
  if (*AGGraphGetValue() == 3)
  {
    v14 = *AGGraphGetValue();
    v15 = *AGGraphGetValue();
    v16 = 3;
    inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 80) = v14;
    *(inited + 88) = 1;
    *(inited + 96) = v15;
  }

  else
  {
    v16 = *(inited + 16);
    if (!v16)
    {
      goto LABEL_16;
    }
  }

  v24 = v1;
  v17 = 0;
  v18 = (inited + 48);
  do
  {
    if (v17 >= *(inited + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v19 = *(v18 - 2);
    v20 = *(v18 - 8);
    v21 = *v18;
    outlined init with copy of NavigationAuthority?(v25 + 16, v38, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (v39 == 1)
    {
      goto LABEL_22;
    }

    ++v17;
    memset(v28, 0, sizeof(v28));
    v29 = 22;
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v37 = 0;
    v34 = 0;
    v35 = 0;
    v33 = 0;
    v36 = 0;
    NavigationAuthority.enqueueRequest(_:)(v28);
    outlined destroy of NavigationRequest(v28);
    outlined destroy of NavigationAuthority(v38);
    v18 += 3;
  }

  while (v16 != v17);
  v1 = v24;
LABEL_16:

LABEL_17:
  LOBYTE(v28[0]) = 0;
  type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey>, &type metadata for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, &protocol witness table for ContainerBackgroundKeys.HasContainerBackgroundPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ContainerBackgroundKeys.HasContainerBackgroundPlacementKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  outlined init with copy of NavigationAuthority?(v25 + 16, v26, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v27 == 1)
  {
LABEL_23:
    __break(1u);
  }

  outlined init with take of NavigationAuthority(v26, v38);
  v22 = v40;
  outlined init with take of NavigationAuthority?(v38, v28);
  *(&v28[1] + 8) = v22;
  type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues)();

  AGGraphSetOutputValue();
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v28, type metadata accessor for (authority: NavigationAuthority?, computedEnvironment: EnvironmentValues));
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<NavigationStateSelectionSeed>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<NavigationCompactColumnKey>, &type metadata for NavigationCompactColumnKey, &protocol witness table for NavigationCompactColumnKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<NavigationCompactColumnKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t specialized closure #1 in Attribute.subscript.getter@<X0>(void *a1@<X8>)
{
  result = swift_getAtKeyPath();
  *a1 = v3;
  return result;
}

uint64_t specialized _NavigationSplitReader.PreparedColumn.updateValue()()
{
  v1 = v0;
  v81 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v0 + 4))
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      *&v11 = *WeakValue;
    }

    else
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
    }

    v49 = v11;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    *(v12 + 16) = v49;

    *(v1 + 5) = v12;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    result = outlined init with copy of NavigationState?(Value, &v70, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (*(&v70 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v15 = *(v1 + 8);
    v16 = *AGGraphGetValue();
    v17 = *AGGraphGetValue();
    outlined init with take of NavigationAuthority(&v70, v4);
    *(v4 + 3) = v16;
    v4[32] = v15;
    *(v4 + 5) = v17;
    UUID.init()();
    *&v4[*(v2 + 28)] = v12;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>();
    swift_allocObject();
    *(v1 + 4) = LocationBox.init(_:)();
  }

  else
  {
    v5 = *(v0 + 5);
    if (v5)
    {

      v6 = AGGraphGetWeakValue();
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        swift_beginAccess();
        if (*(v5 + 16) != v7 || *(v5 + 20) != v8)
        {
          *(v5 + 16) = v7;
          *(v5 + 20) = v8;
        }
      }
    }
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v18 = AGGraphGetValue();
  outlined init with copy of NavigationState?(v18, v79, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v80 == 1)
  {
    __break(1u);
  }

  v19 = *(v1 + 8);
  v20 = *AGGraphGetValue();
  v21 = *AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  if (Strong && (v23 = Strong, swift_beginAccess(), v24 = v23[8], v67 = v23[7], v68 = v24, v69[0] = v23[9], *(v69 + 10) = *(v23 + 154), v25 = v23[4], v63 = v23[3], v64 = v25, v26 = v23[6], v65 = v23[5], v66 = v26, v27 = v23[2], v61 = v23[1], v62 = v27, outlined init with copy of NavigationState?(&v61, v59, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v76 = v67, v77 = v68, v78[0] = v69[0], *(v78 + 10) = *(v69 + 10), v72 = v63, v73 = v64, v74 = v65, v75 = v66, v70 = v61, v71 = v62, getEnumTag for AccessibilityActionCategory.Category(&v70) != 1))
  {
    v56 = v67;
    v57 = v68;
    v58[0] = v69[0];
    *(v58 + 10) = *(v69 + 10);
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v50 = v61;
    v51 = v62;
    v28 = NavigationState.canDismissRoot(of:)(v20, v19, v21);
    v59[6] = v56;
    v59[7] = v57;
    v60[0] = v58[0];
    *(v60 + 10) = *(v58 + 10);
    v59[2] = v52;
    v59[3] = v53;
    v59[4] = v54;
    v59[5] = v55;
    v59[0] = v50;
    v59[1] = v51;
    outlined destroy of NavigationState(v59);
  }

  else
  {
    v28 = 0;
  }

  outlined destroy of NavigationAuthority(v79);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v49 = v19;
  if (v19 == 1)
  {
    v29 = 1;
  }

  else
  {
    AGGraphGetValue();
    AGGraphGetValue();
    v29 = v19 == 2;
  }

  AGGraphGetValue();
  v30 = *AGGraphGetValue();
  v48 = *AGGraphGetValue();
  KeyPath = swift_getKeyPath();
  v31 = *(v1 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  *(v32 + 32) = v28 & 1;
  v46 = swift_getKeyPath();
  v33 = v1[1];
  v61 = *v1;
  v62 = v33;
  v35 = *v1;
  v34 = v1[1];
  v63 = v1[2];
  v70 = v35;
  v71 = v34;
  v72 = v1[2];
  MEMORY[0x1EEE9AC00](v46);
  *(&v45 - 2) = &v61;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar, &protocol witness table for NavigationSplitViewStyleConfiguration.Sidebar, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  v37 = v36;
  v38 = lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Sidebar> and conformance _NavigationSplitReader.PreparedColumn<A>();

  MEMORY[0x18D000B40](v37, &type metadata for NavigationState.SelectionSeed, v38);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v39 = v59[0];
  v40 = v30;
  *&v70 = v30;
  v41 = v48;
  v42 = v49;
  *(&v70 + 1) = v49;
  *&v71 = v48;
  *(&v71 + 1) = -1;
  v44 = v46;
  v43 = KeyPath;
  *&v72 = KeyPath;
  *(&v72 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v73 = v32;
  *(&v73 + 1) = v46;
  LODWORD(v74) = v59[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
  AGGraphSetOutputValue();
  *&v70 = v40;
  *(&v70 + 1) = v42;
  *&v71 = v41;
  *(&v71 + 1) = -1;
  *&v72 = v43;
  *(&v72 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v73 = v32;
  *(&v73 + 1) = v44;
  LODWORD(v74) = v39;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v70, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Sidebar);
}

{
  v1 = v0;
  v81 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v0 + 4))
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      *&v11 = *WeakValue;
    }

    else
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
    }

    v49 = v11;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    *(v12 + 16) = v49;

    *(v1 + 5) = v12;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    result = outlined init with copy of NavigationState?(Value, &v70, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (*(&v70 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v15 = *(v1 + 8);
    v16 = *AGGraphGetValue();
    v17 = *AGGraphGetValue();
    outlined init with take of NavigationAuthority(&v70, v4);
    *(v4 + 3) = v16;
    v4[32] = v15;
    *(v4 + 5) = v17;
    UUID.init()();
    *&v4[*(v2 + 28)] = v12;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>();
    swift_allocObject();
    *(v1 + 4) = LocationBox.init(_:)();
  }

  else
  {
    v5 = *(v0 + 5);
    if (v5)
    {

      v6 = AGGraphGetWeakValue();
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        swift_beginAccess();
        if (*(v5 + 16) != v7 || *(v5 + 20) != v8)
        {
          *(v5 + 16) = v7;
          *(v5 + 20) = v8;
        }
      }
    }
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v18 = AGGraphGetValue();
  outlined init with copy of NavigationState?(v18, v79, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v80 == 1)
  {
    __break(1u);
  }

  v19 = *(v1 + 8);
  v20 = *AGGraphGetValue();
  v21 = *AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  if (Strong && (v23 = Strong, swift_beginAccess(), v24 = v23[8], v67 = v23[7], v68 = v24, v69[0] = v23[9], *(v69 + 10) = *(v23 + 154), v25 = v23[4], v63 = v23[3], v64 = v25, v26 = v23[6], v65 = v23[5], v66 = v26, v27 = v23[2], v61 = v23[1], v62 = v27, outlined init with copy of NavigationState?(&v61, v59, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v76 = v67, v77 = v68, v78[0] = v69[0], *(v78 + 10) = *(v69 + 10), v72 = v63, v73 = v64, v74 = v65, v75 = v66, v70 = v61, v71 = v62, getEnumTag for AccessibilityActionCategory.Category(&v70) != 1))
  {
    v56 = v67;
    v57 = v68;
    v58[0] = v69[0];
    *(v58 + 10) = *(v69 + 10);
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v50 = v61;
    v51 = v62;
    v28 = NavigationState.canDismissRoot(of:)(v20, v19, v21);
    v59[6] = v56;
    v59[7] = v57;
    v60[0] = v58[0];
    *(v60 + 10) = *(v58 + 10);
    v59[2] = v52;
    v59[3] = v53;
    v59[4] = v54;
    v59[5] = v55;
    v59[0] = v50;
    v59[1] = v51;
    outlined destroy of NavigationState(v59);
  }

  else
  {
    v28 = 0;
  }

  outlined destroy of NavigationAuthority(v79);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v49 = v19;
  if (v19 == 1)
  {
    v29 = 1;
  }

  else
  {
    AGGraphGetValue();
    AGGraphGetValue();
    v29 = v19 == 2;
  }

  AGGraphGetValue();
  v30 = *AGGraphGetValue();
  v48 = *AGGraphGetValue();
  KeyPath = swift_getKeyPath();
  v31 = *(v1 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  *(v32 + 32) = v28 & 1;
  v46 = swift_getKeyPath();
  v33 = v1[1];
  v61 = *v1;
  v62 = v33;
  v35 = *v1;
  v34 = v1[1];
  v63 = v1[2];
  v70 = v35;
  v71 = v34;
  v72 = v1[2];
  MEMORY[0x1EEE9AC00](v46);
  *(&v45 - 2) = &v61;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content>, &type metadata for NavigationSplitViewStyleConfiguration.Content, &protocol witness table for NavigationSplitViewStyleConfiguration.Content, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  v37 = v36;
  v38 = lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Content> and conformance _NavigationSplitReader.PreparedColumn<A>();

  MEMORY[0x18D000B40](v37, &type metadata for NavigationState.SelectionSeed, v38);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v39 = v59[0];
  v40 = v30;
  *&v70 = v30;
  v41 = v48;
  v42 = v49;
  *(&v70 + 1) = v49;
  *&v71 = v48;
  *(&v71 + 1) = -1;
  v44 = v46;
  v43 = KeyPath;
  *&v72 = KeyPath;
  *(&v72 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v73 = v32;
  *(&v73 + 1) = v46;
  LODWORD(v74) = v59[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
  AGGraphSetOutputValue();
  *&v70 = v40;
  *(&v70 + 1) = v42;
  *&v71 = v41;
  *(&v71 + 1) = -1;
  *&v72 = v43;
  *(&v72 + 1) = closure #1 in _NavigationSplitReader.PreparedColumn.updateValue()specialized partial apply;
  *&v73 = v32;
  *(&v73 + 1) = v44;
  LODWORD(v74) = v39;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v70, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Content, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Content);
}

{
  v1 = v0;
  v81 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static SemanticFeature.isEnabled.getter() & 1) != 0 && !*(v0 + 4))
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      *&v11 = *WeakValue;
    }

    else
    {
      *&v11 = -1;
      *(&v11 + 1) = -1;
    }

    v49 = v11;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for MutableBox<NavigationState.Seeds>, &type metadata for NavigationState.Seeds, MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    *(v12 + 16) = v49;

    *(v1 + 5) = v12;
    type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
    Value = AGGraphGetValue();
    result = outlined init with copy of NavigationState?(Value, &v70, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
    if (*(&v70 + 1) == 1)
    {
      __break(1u);
      return result;
    }

    v15 = *(v1 + 8);
    v16 = *AGGraphGetValue();
    v17 = *AGGraphGetValue();
    outlined init with take of NavigationAuthority(&v70, v4);
    *(v4 + 3) = v16;
    v4[32] = v15;
    *(v4 + 5) = v17;
    UUID.init()();
    *&v4[*(v2 + 28)] = v12;
    type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>();
    swift_allocObject();
    *(v1 + 4) = LocationBox.init(_:)();
  }

  else
  {
    v5 = *(v0 + 5);
    if (v5)
    {

      v6 = AGGraphGetWeakValue();
      if (v6)
      {
        v7 = *v6;
        v8 = v6[1];
        swift_beginAccess();
        if (*(v5 + 16) != v7 || *(v5 + 20) != v8)
        {
          *(v5 + 16) = v7;
          *(v5 + 20) = v8;
        }
      }
    }
  }

  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  v18 = AGGraphGetValue();
  outlined init with copy of NavigationState?(v18, v79, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v80 == 1)
  {
    __break(1u);
  }

  v19 = *(v1 + 8);
  v20 = *AGGraphGetValue();
  v21 = *AGGraphGetValue();
  Strong = swift_weakLoadStrong();
  if (Strong && (v23 = Strong, swift_beginAccess(), v24 = v23[8], v67 = v23[7], v68 = v24, v69[0] = v23[9], *(v69 + 10) = *(v23 + 154), v25 = v23[4], v63 = v23[3], v64 = v25, v26 = v23[6], v65 = v23[5], v66 = v26, v27 = v23[2], v61 = v23[1], v62 = v27, outlined init with copy of NavigationState?(&v61, v59, &lazy cache variable for type metadata for NavigationState?, &type metadata for NavigationState), , v76 = v67, v77 = v68, v78[0] = v69[0], *(v78 + 10) = *(v69 + 10), v72 = v63, v73 = v64, v74 = v65, v75 = v66, v70 = v61, v71 = v62, getEnumTag for AccessibilityActionCategory.Category(&v70) != 1))
  {
    v56 = v67;
    v57 = v68;
    v58[0] = v69[0];
    *(v58 + 10) = *(v69 + 10);
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v55 = v66;
    v50 = v61;
    v51 = v62;
    v28 = NavigationState.canDismissRoot(of:)(v20, v19, v21);
    v59[6] = v56;
    v59[7] = v57;
    v60[0] = v58[0];
    *(v60 + 10) = *(v58 + 10);
    v59[2] = v52;
    v59[3] = v53;
    v59[4] = v54;
    v59[5] = v55;
    v59[0] = v50;
    v59[1] = v51;
    outlined destroy of NavigationState(v59);
  }

  else
  {
    v28 = 0;
  }

  outlined destroy of NavigationAuthority(v79);
  AGGraphGetValue();
  AGGraphGetValue();
  *&v49 = v19;
  if (v19 == 1)
  {
    v29 = 1;
  }

  else
  {
    AGGraphGetValue();
    AGGraphGetValue();
    v29 = v19 == 2;
  }

  AGGraphGetValue();
  v30 = *AGGraphGetValue();
  v48 = *AGGraphGetValue();
  KeyPath = swift_getKeyPath();
  v31 = *(v1 + 4);
  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  *(v32 + 32) = v28 & 1;
  v46 = swift_getKeyPath();
  v33 = v1[1];
  v61 = *v1;
  v62 = v33;
  v35 = *v1;
  v34 = v1[1];
  v63 = v1[2];
  v70 = v35;
  v71 = v34;
  v72 = v1[2];
  MEMORY[0x1EEE9AC00](v46);
  *(&v45 - 2) = &v61;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail>, &type metadata for NavigationSplitViewStyleConfiguration.Detail, &protocol witness table for NavigationSplitViewStyleConfiguration.Detail, type metadata accessor for _NavigationSplitReader.PreparedColumn);
  v37 = v36;
  v38 = lazy protocol witness table accessor for type _NavigationSplitReader.PreparedColumn<NavigationSplitViewStyleConfiguration.Detail> and conformance _NavigationSplitReader.PreparedColumn<A>();

  MEMORY[0x18D000B40](v37, &type metadata for NavigationState.SelectionSeed, v38);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  v39 = v59[0];
  v40 = v30;
  *&v70 = v30;
  v41 = v48;
  v42 = v49;
  *(&v70 + 1) = v49;
  *&v71 = v48;
  *(&v71 + 1) = -1;
  v44 = v46;
  v43 = KeyPath;
  *&v72 = KeyPath;
  *(&v72 + 1) = partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue();
  *&v73 = v32;
  *(&v73 + 1) = v46;
  LODWORD(v74) = v59[0];
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
  AGGraphSetOutputValue();
  *&v70 = v40;
  *(&v70 + 1) = v42;
  *&v71 = v41;
  *(&v71 + 1) = -1;
  *&v72 = v43;
  *(&v72 + 1) = partial apply for specialized closure #1 in _NavigationSplitReader.PreparedColumn.updateValue();
  *&v73 = v32;
  *(&v73 + 1) = v44;
  LODWORD(v74) = v39;
  return outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(&v70, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, &lazy cache variable for type metadata for ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, &type metadata for NavigationSplitViewStyleConfiguration.Detail);
}

uint64_t type metadata accessor for _NavigationSplitReader.SplitPresentationModeLocation()
{
  result = type metadata singleton initialization cache for _NavigationSplitReader.SplitPresentationModeLocation;
  if (!type metadata singleton initialization cache for _NavigationSplitReader.SplitPresentationModeLocation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for _NavigationSplitReader.SplitPresentationModeLocation()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithTake for _NavigationSplitReader.SplitPresentationModeLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_weakTakeInit();
  *(v6 + 8) = *(a2 + 8);
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t NavigationState.canDismissRoot(of:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if ((a2 - 1) > 1u)
  {
LABEL_30:
    v21 = 0;
    return v21 & 1;
  }

  v7 = *(v3 + 3);
  v8 = *(v3 + 13);
  v9 = *(v3 + 112);
  v10 = *(v3 + 113);
  v11 = *(v3 + 153);
  if (v8 == 1)
  {
    goto LABEL_3;
  }

  if (*(v3 + 113) > 1u)
  {
    if (v10 == 2)
    {
LABEL_23:
      v21 = 1;
      return v21 & 1;
    }

LABEL_24:
    if (v11 != 3)
    {
      if (a2 == 2)
      {
        if (v11 == 2)
        {
          goto LABEL_23;
        }
      }

      else if ((v11 - 1) < 2)
      {
        goto LABEL_23;
      }
    }

LABEL_3:
    v12 = v3;
    if (!*(v7 + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2, a3), (v14 & 1) == 0) || (outlined init with copy of NavigationColumnState(*(v7 + 56) + 360 * v13, &v26), v15 = NavigationColumnState.hasDismissableColumnContent.getter(), outlined destroy of NavigationColumnState(&v26), (v15 & 1) == 0))
    {
      if (!*(v7 + 16))
      {
        goto LABEL_29;
      }

      v16 = a2 == 2 && a3 == 3;
      v17 = v16;
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v17, a3);
      if ((v19 & 1) == 0)
      {
        goto LABEL_29;
      }

      outlined init with copy of NavigationColumnState(*(v7 + 56) + 360 * v18, &v26);
      if (!v30)
      {
        outlined destroy of NavigationColumnState(&v26);
        goto LABEL_29;
      }

      v20 = NavigationListState.hasNonEmptySelection.getter();
      outlined destroy of NavigationColumnState(&v26);
      if ((v20 & 1) == 0)
      {
LABEL_29:
        if ((a2 - 2) >= 4u)
        {
          v26 = *v12;
          v27 = *(v12 + 2);
          v28 = v7;
          v23 = v12[4];
          v32 = v12[5];
          v24 = *(v12 + 12);
          v25 = v12[2];
          v30 = v12[3];
          v31 = v23;
          v29 = v25;
          v33 = v24;
          v34 = v8;
          v35 = v9;
          v36 = v10;
          *&v38[15] = *(v12 + 145);
          *v38 = *(v12 + 130);
          v37 = *(v12 + 114);
          v39 = v11;
          v21 = NavigationState.canDismissRoot(of:)(a1, 2, a3);
          return v21 & 1;
        }

        goto LABEL_30;
      }
    }

    goto LABEL_23;
  }

  if (!*(v3 + 113))
  {
    goto LABEL_24;
  }

  v21 = 1;
  if (a2 == 2 && v11 != 2)
  {
    goto LABEL_3;
  }

  return v21 & 1;
}

uint64_t specialized closure #1 in _NavigationSplitReader.PreparedColumn.columnSeeds.getter@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  type metadata accessor for Attribute<ViewGeometry>(0, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  result = outlined init with copy of NavigationState?(Value, v14, &lazy cache variable for type metadata for NavigationAuthority?, &type metadata for NavigationAuthority);
  if (v15 != 1)
  {
    Strong = swift_weakLoadStrong();
    result = outlined destroy of NavigationAuthority(v14);
    if (Strong)
    {
      v7 = *(Strong + 184);

      v8 = *AGGraphGetValue();
      v9 = *AGGraphGetValue();
      swift_getKeyPath();
      _s7SwiftUI23NavigationSelectionHostCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v7 + 16);

      if (*(v10 + 16))
      {
        v11 = specialized __RawDictionaryStorage.find<A>(_:)(v8, *(a1 + 8), v9);
        if (v12)
        {
          v13 = *(*(v10 + 56) + 4 * v11);

LABEL_8:
          *a2 = v13;
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

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Sidebar, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<NavigationSplitViewStyleConfiguration.Detail, InjectKeyModifier>, StaticIf<Semantics.DismissPopsInNavigationSplitViewRoots, _EnvironmentKeyTransformModifier<Binding<PresentationMode>>, EmptyModifier>>, _EnvironmentKeyWritingModifier<NavigationState.SelectionSeed>>(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  _s7SwiftUI15ModifiedContentVyACyACyAA37NavigationSplitViewStyleConfigurationV6DetailVAA17InjectKeyModifierVGAA8StaticIfVyAA9SemanticsV013DismissPopsInefG5RootsVAA012_Environmentl9TransformM0VyAA7BindingVyAA16PresentationModeVGGAA05EmptyM0VGGAA01_ul7WritingM0VyAA0E5StateV13SelectionSeedVGGMaTm_0(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_18BE78AF0()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of _NavigationSplitReader.ForestRoot(__int128 *a1, uint64_t a2)
{
  v4 = *a1;
  *(a2 + 11) = *(a1 + 11);
  *a2 = v4;
  v5 = a1[2];
  *(a2 + 48) = *(a1 + 12);
  *(a2 + 32) = v5;
  *(a2 + 56) = *(a1 + 7);
  swift_weakTakeInit();
  *(a2 + 72) = *(a1 + 72);
  v6 = *(a1 + 11);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 88) = v6;
  *(a2 + 104) = *(a1 + 13);
  v7 = a1[7];
  v8 = a1[8];
  *(a2 + 144) = *(a1 + 18);
  *(a2 + 112) = v7;
  *(a2 + 128) = v8;
  return a2;
}

uint64_t initializeWithTake for AccessibilityLargeContentViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 24) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t initializeWithTake for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  swift_weakTakeInit();
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v4 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v4;
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t initializeWithCopy for _NavigationSplitReader.ForestRoot(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  swift_weakCopyInit();
  v5 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v5;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(a2 + 136);

  if (v6)
  {
    v7 = *(a2 + 144);
    *(a1 + 136) = v6;
    *(a1 + 144) = v7;
    (**(v6 - 8))(a1 + 112, a2 + 112, v6);
  }

  else
  {
    v8 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v8;
    *(a1 + 144) = *(a2 + 144);
  }

  return a1;
}

uint64_t destroy for _NavigationSplitReader.ForestRoot(uint64_t a1)
{

  swift_weakDestroy();

  if (*(a1 + 136))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 112);
  }

  return result;
}

__n128 closure #1 in ForestRootBodyAccessor.updateBody(of:changed:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  v8 = v7;
  outlined init with copy of _Benchmark(Value, v21);
  outlined init with copy of _Benchmark(v21, v18);
  v9 = a4;
  default argument 2 of _VariadicView_Children.init(_:contentSubgraph:transform:)();
  *(&v19 + 1) = v9;
  v20 = v17;
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
  }

  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  *(v10 + 2) = v12 + 1;
  v13 = &v10[64 * v12];
  result = v18[0];
  v15 = v18[1];
  v16 = v20;
  *(v13 + 4) = v19;
  *(v13 + 5) = v16;
  *(v13 + 2) = result;
  *(v13 + 3) = v15;
  *a1 = v10;
  *(a1 + 8) = (*(a1 + 8) | v8) & 1;
  return result;
}

uint64_t ForestRootBodyAccessor.updateBody(of:changed:)(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  LOBYTE(v13) = 0;
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 32;
    do
    {
      v14 = *(a3 + v9);
      closure #1 in ForestRootBodyAccessor.updateBody(of:changed:)(&v12, &v14, a3, a4);
      v9 += 4;
      --v8;
    }

    while (v8);
    v7 = v12;
    v10 = v13;
    if (a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (a2)
    {
LABEL_11:
      v12 = a3;
      v13 = a4;
      MEMORY[0x1EEE9AC00](v7);
      type metadata accessor for ForestRootBodyAccessor();
      swift_getWitnessTable();
      BodyAccessor.setBody(_:)();
    }
  }

  if (v10)
  {
    goto LABEL_11;
  }
}

uint64_t _NavigationSplitReader.ForestRoot.body(children:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v2;
  v5 = result;
  result = outlined init with copy of _VariadicView_Children(result + 32, v46);
  if (v3 == 1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  result = outlined init with copy of _VariadicView_Children(v5 + 96, v45);
  if (v3 < 3)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v42 = a2;
  outlined init with copy of _VariadicView_Children(v5 + 160, v44);
  v40 = *v4;
  v41 = v4[7];
  v39 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = *(v4 + 25);
  v10 = *(v4 + 26);

  v11 = _NavigationSplitReader.ForestRoot.widths(from:)(v5);
  v12 = _NavigationSplitReader.ForestRoot.sidebarDimmingIgnoresSafeArea(_:)(v5);
  v13 = _NavigationSplitReader.ForestRoot.sidebarDimmingIgnoresSafeArea(_:)(v5);
  v14 = *(v11 + 16);
  if (v14)
  {
    v15 = v13;
    *&v47[0] = v7;
    v16 = *(v11 + 64);
    v17 = *(v11 + 48);
    v63[0] = *(v11 + 32);
    v63[1] = v17;
    v64 = v16;

    specialized Dictionary.subscript.setter(v63, 0);
    if (v14 == 1)
    {
      v18 = *&v47[0];
      v19 = *(*&v47[0] + 16);
      if (v19)
      {
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(1);
        if (v21)
        {
          v22 = (*(v18 + 56) + 40 * v20);
          v23 = v22 + 1;
          v24 = v22 + 2;
          v25 = v22 + 3;
          v26 = (v22 + 4);
LABEL_11:
          v19 = *v25;
          v27 = *v24;
          v28 = *v23;
          v29 = *v22;
          v30 = *v26;
LABEL_15:
          v61[0] = v29;
          v61[1] = v28;
          v61[2] = v27;
          v61[3] = v19;
          v62 = v30;
          specialized Dictionary.subscript.setter(v61, 1);

          v37 = v15;
          v38 = 0;
          v7 = *&v47[0];
          goto LABEL_16;
        }

        v29 = 0;
        v27 = 0;
        v19 = 0;
      }

      else
      {
        v29 = 0;
        v27 = 0;
      }

      v30 = 0;
      v28 = 0x1FFFFFFFELL;
      goto LABEL_15;
    }

    v22 = (v11 + 72);
    v23 = (v11 + 80);
    v24 = (v11 + 88);
    v25 = (v11 + 96);
    v26 = (v11 + 104);
    goto LABEL_11;
  }

  v12 = v9;
  v37 = v10;
  v38 = v8;
LABEL_16:
  v32 = v4[4];
  v31 = v4[5];
  v33 = *(v4 + 12);
  outlined init with copy of NavigationAuthority((v4 + 8), v43);
  if (*(v4 + 96))
  {
    v34 = -1;
  }

  else
  {
    v34 = *(v4 + 22);
  }

  if (*(v4 + 96))
  {
    v35 = -1;
  }

  else
  {
    v35 = *(v4 + 23);
  }

  v36 = v4[13];
  outlined init with copy of UINavigationPresentationAdaptor?((v4 + 14), &v60);
  v47[0] = v46[0];
  v47[1] = v46[1];
  v47[2] = v46[2];
  v47[3] = v46[3];
  v47[4] = v45[0];
  v47[5] = v45[1];
  v47[6] = v45[2];
  v47[7] = v45[3];
  v47[10] = v44[2];
  v47[11] = v44[3];
  v47[8] = v44[0];
  v47[9] = v44[1];
  v48 = v41;
  v49 = v40;
  v50 = v39;
  v51 = v7;
  v52 = v38;
  v53 = v12 & 1;
  v54 = v37 & 1;
  v55 = v32;
  v56 = v31;
  v57 = v33;
  outlined init with take of NavigationAuthority(v43, v58);
  v58[6] = v34;
  v58[7] = v35;
  v59 = v36;
  outlined init with take of NavigationSplitCore(v47, v42);
}

uint64_t _NavigationSplitReader.ForestRoot.widths(from:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v26 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v4 = 0;
    result = v26;
    v14 = v2;
    while (1)
    {
      v15 = result;
      v16 = v4;
      outlined init with copy of _VariadicView_Children(a1 + 32 + (v4 << 6), v25);
      outlined init with copy of _VariadicView_Children(v25, v23);
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0x1FFFFFFFELL;
      if (_VariadicView_Children.endIndex.getter())
      {
        break;
      }

LABEL_4:
      outlined destroy of _VariadicView_Children(v25);
      v24 = v9;
      outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v23, type metadata accessor for IndexingIterator<_VariadicView_Children>);
      result = v15;
      v26 = v15;
      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        result = v26;
      }

      v4 = v16 + 1;
      *(result + 16) = v12 + 1;
      v13 = result + 40 * v12;
      *(v13 + 32) = v5;
      *(v13 + 40) = v10;
      *(v13 + 48) = v6;
      *(v13 + 56) = v7;
      *(v13 + 64) = v8;
      if (v16 + 1 == v14)
      {
        return result;
      }
    }

    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v9 >= result)
      {
        break;
      }

      if (v10 >> 1 == 0xFFFFFFFF && v8 <= 1)
      {

        ViewTraitCollection.value<A>(for:defaultValue:)();
        outlined destroy of _VariadicView_Children.Element(v22);

        v5 = v17;
        v10 = v18;
        v6 = v19;
        v7 = v20;
        v8 = v21;
      }

      else
      {
        outlined destroy of _VariadicView_Children.Element(v22);
      }

      if (++v9 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySbGMaTm_1(255, &lazy cache variable for type metadata for NavigationSplitViewColumnWidth?, &type metadata for NavigationSplitViewColumnWidth, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<NavigationSplitViewColumnWidth?>);
    }
  }
}

void type metadata accessor for IndexingIterator<_VariadicView_Children>()
{
  if (!lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>)
  {
    lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children();
    v0 = type metadata accessor for IndexingIterator();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for IndexingIterator<_VariadicView_Children>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _VariadicView_Children and conformance _VariadicView_Children()
{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children;
  if (!lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView_Children and conformance _VariadicView_Children);
  }

  return result;
}

uint64_t _NavigationSplitReader.ForestRoot.sidebarDimmingIgnoresSafeArea(_:)(uint64_t result)
{
  if (!*(result + 16))
  {
LABEL_10:
    __break(1u);
    return result;
  }

  outlined init with copy of _VariadicView_Children(result + 32, v18);
  v1 = 0;
  if (_VariadicView_Children.endIndex.getter())
  {
    while (1)
    {
      _VariadicView_Children.subscript.getter();
      result = _VariadicView_Children.endIndex.getter();
      if (v1 >= result)
      {
        break;
      }

      v8 = v15;
      v9 = v16;
      v4 = v11;
      v5 = v12;
      ++v1;
      v10 = v17;
      v6 = v13;
      v7 = v14;
      *&v20 = v17;
      ViewTraitCollection.value<A>(for:defaultValue:)();
      if (v3 == 1)
      {
        v19 = v1;
        outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v18, type metadata accessor for IndexingIterator<_VariadicView_Children>);
        v24 = v8;
        v25 = v9;
        v26 = v10;
        v20 = v4;
        v21 = v5;
        v2 = 1;
        v22 = v6;
        v23 = v7;
        goto LABEL_8;
      }

      outlined destroy of _VariadicView_Children.Element(&v4);
      if (v1 == _VariadicView_Children.endIndex.getter())
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

LABEL_6:
  v19 = v1;
  outlined destroy of StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, LabelStyleWritingModifier<TitleAndIconLabelStyle>, EmptyModifier>(v18, type metadata accessor for IndexingIterator<_VariadicView_Children>);
  v2 = 0;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
LABEL_8:
  outlined destroy of _VariadicView_Children.Element?(&v20, &lazy cache variable for type metadata for _VariadicView_Children.Element?, MEMORY[0x1E697FFB8]);
  return v2;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  if ((a1 - 2) >= 3u)
  {
    MEMORY[0x18D00F6F0](0);
    v2 = a1 & 1;
  }

  else
  {
    v2 = a1 - 1;
  }

  MEMORY[0x18D00F6F0](v2);
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      switch(v7)
      {
        case 2:
          if (a1 == 2)
          {
            return result;
          }

          break;
        case 3:
          if (a1 == 3)
          {
            return result;
          }

          break;
        case 4:
          if (a1 == 4)
          {
            return result;
          }

          break;
        default:
          if (a1 - 2 >= 3 && ((v7 ^ a1) & 1) == 0)
          {
            return result;
          }

          break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t outlined init with copy of UINavigationPresentationAdaptor?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UINavigationPresentationAdaptor?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for LocationBox<_NavigationSplitReader.SplitPresentationModeLocation>?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t initializeWithTake for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v6;
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 128);
  v9 = *(a2 + 144);
  v10 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 211) = *(a2 + 211);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);
  swift_weakTakeInit();
  *(a1 + 264) = *(a2 + 264);
  v11 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v11;
  v12 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v12;
  *(a1 + 328) = *(a2 + 328);
  return a1;
}

uint64_t initializeWithCopy for NavigationSplitCore(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  v8 = v7;
  v9 = **(v7 - 8);
  v10 = v5;

  v9(a1 + 64, a2 + 64, v8);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = *(a2 + 120);
  v13 = *(a2 + 152);
  *(a1 + 152) = v13;
  v14 = v13;
  v15 = **(v13 - 8);
  v16 = v11;

  v15(a1 + 128, a2 + 128, v14);
  v17 = *(a2 + 168);
  v18 = *(a2 + 176);
  *(a1 + 168) = v17;
  *(a1 + 176) = v18;
  v19 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v19;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  v20 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v20;
  *(a1 + 248) = *(a2 + 248);
  v21 = v17;

  swift_weakCopyInit();
  v22 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v22;
  v23 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v23;
  v24 = *(a2 + 320);

  if (v24)
  {
    v25 = *(a2 + 328);
    *(a1 + 320) = v24;
    *(a1 + 328) = v25;
    (**(v24 - 8))(a1 + 296, a2 + 296, v24);
  }

  else
  {
    v26 = *(a2 + 312);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = v26;
    *(a1 + 328) = *(a2 + 328);
  }

  return a1;
}

uint64_t destroy for NavigationSplitCore(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  __swift_destroy_boxed_opaque_existential_1(a1 + 64);

  __swift_destroy_boxed_opaque_existential_1(a1 + 128);

  swift_weakDestroy();

  if (*(a1 + 320))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 296);
  }

  return result;
}

uint64_t NavigationSplitCore.uikitSplitRepresentable.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  outlined init with copy of _VariadicView_Children(v1, v21);
  outlined init with copy of _VariadicView_Children(v1 + 64, &v22);
  outlined init with copy of _VariadicView_Children(v1 + 128, v23);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  v8 = *(v1 + 224);
  v19 = *(v1 + 226);
  v20 = *(v1 + 225);
  v10 = *(v1 + 232);
  v9 = *(v1 + 240);
  v18 = *(v2 + 248);
  outlined init with copy of NavigationAuthority(v2 + 256, v32);
  v11 = *(v2 + 288);
  v12 = *(v2 + 280);
  outlined init with copy of UINavigationPresentationAdaptor?(v2 + 296, v33);
  v23[8] = v4;
  v23[9] = v5;
  v24 = v6;
  v25 = v7;
  v26 = v8;
  v27 = v20;
  v28 = v19;
  v29 = v10;
  v30 = v9;
  v31 = v18;
  v32[3] = v12;
  v32[4] = v11;
  v33[5] = swift_getKeyPath();
  v34 = 0;
  KeyPath = swift_getKeyPath();
  v36 = 0;
  v37 = swift_getKeyPath();
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = swift_getKeyPath();
  v43 = 0;
  v13 = swift_getKeyPath();
  outlined init with copy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(v21, a1);
  a1[53] = v13;

  v14 = static Alignment.center.getter();
  v16 = v15;
  result = outlined destroy of ModifiedContent<NavigationSplitRepresentable, IgnoresNonTabBarSafeArea>(v21);
  a1[54] = closure #1 in View.renderContainerBackground<A>(_:key:);
  a1[55] = 0;
  a1[56] = v14;
  a1[57] = v16;
  return result;
}

void type metadata accessor for UINavigationPresentationAdaptor?()
{
  if (!lazy cache variable for type metadata for UINavigationPresentationAdaptor?)
  {
    type metadata accessor for UINavigationPresentationAdaptor();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for UINavigationPresentationAdaptor?);
    }
  }
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F990, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x800000018CD3F250, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000013, 0x800000018CD3F2A0, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F140, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F7A0, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000018CD3F7F0, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result & 1;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x800000018CD3F400, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x800000018CD3F950, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result & 1;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x800000018CD3F490, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

{
  if (a2)
  {
    *a3 = result;
  }

  else
  {
    v10[8] = v3;
    v10[9] = v4;
    v5 = result;
    outlined copy of Environment<Selector?>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x800000018CD3F4B0, v10);
      _os_log_impl(&dword_18BD4A000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x18D0110E0](v9, -1, -1);
      MEMORY[0x18D0110E0](v8, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Selector?>.Content(v5, 0);
  }

  return result;
}

uint64_t initializeWithCopy for NavigationSplitRepresentable(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  v8 = v7;
  v9 = **(v7 - 8);
  v10 = v5;

  v9(a1 + 64, a2 + 64, v8);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = *(a2 + 120);
  v13 = *(a2 + 152);
  *(a1 + 152) = v13;
  v14 = v13;
  v15 = **(v13 - 8);
  v16 = v11;

  v15(a1 + 128, a2 + 128, v14);
  v17 = *(a2 + 168);
  v18 = *(a2 + 176);
  *(a1 + 168) = v17;
  *(a1 + 176) = v18;
  v19 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v19;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 226) = *(a2 + 226);
  v20 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v20;
  *(a1 + 248) = *(a2 + 248);
  v21 = v17;

  swift_weakCopyInit();
  v22 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v22;
  v23 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v23;
  v24 = *(a2 + 320);

  if (v24)
  {
    v25 = *(a2 + 328);
    *(a1 + 320) = v24;
    *(a1 + 328) = v25;
    (**(v24 - 8))(a1 + 296, a2 + 296, v24);
  }

  else
  {
    v26 = *(a2 + 312);
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 312) = v26;
    *(a1 + 328) = *(a2 + 328);
  }

  v27 = *(a2 + 336);
  v28 = *(a2 + 344);
  outlined copy of Environment<Bool>.Content(v27, v28);
  *(a1 + 336) = v27;
  *(a1 + 344) = v28;
  v29 = *(a2 + 352);
  v30 = *(a2 + 360);
  outlined copy of Environment<Bool>.Content(v29, v30);
  *(a1 + 352) = v29;
  *(a1 + 360) = v30;
  v31 = *(a2 + 368);
  v32 = *(a2 + 376);
  v33 = *(a2 + 384);
  v34 = *(a2 + 392);
  v35 = *(a2 + 400);
  outlined copy of Environment<NavigationEventHandlers>.Content(v31, v32, v33, v34, v35);
  *(a1 + 368) = v31;
  *(a1 + 376) = v32;
  *(a1 + 384) = v33;
  *(a1 + 392) = v34;
  *(a1 + 400) = v35;
  return a1;
}

uint64_t outlined copy of Environment<NavigationEventHandlers>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    outlined copy of AppIntentExecutor?(a1);

    return outlined copy of AppIntentExecutor?(a3);
  }

  else
  {
  }
}

uint64_t destroy for NavigationSplitRepresentable(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);

  __swift_destroy_boxed_opaque_existential_1(a1 + 64);

  __swift_destroy_boxed_opaque_existential_1(a1 + 128);

  swift_weakDestroy();

  if (*(a1 + 320))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 296);
  }

  outlined consume of Environment<Bool>.Content(*(a1 + 336), *(a1 + 344));
  outlined consume of Environment<Bool>.Content(*(a1 + 352), *(a1 + 360));
  v2 = *(a1 + 368);
  v3 = *(a1 + 376);
  v4 = *(a1 + 384);
  v5 = *(a1 + 392);
  v6 = *(a1 + 400);

  return outlined consume of Environment<NavigationEventHandlers>.Content(v2, v3, v4, v5, v6);
}

uint64_t outlined consume of Environment<NavigationEventHandlers>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a1);

    return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a3);
  }

  else
  {
  }
}

uint64_t closure #1 in View.renderContainerBackground<A>(_:key:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1] < 0)
  {
    v3 = 0;
    v4 = 0;
    result = 0;
  }

  else
  {
    v3 = *a1;

    v4 = -1;
    result = static Edge.Set.all.getter();
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  return result;
}

void type metadata completion function for SearchCompletionButtonStyle()
{
  type metadata accessor for Environment<DismissSearchAccessoryAction>.Content();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for DismissSearchAction()
{
  type metadata accessor for Binding<SearchFieldState>?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, ButtonStyleContainerModifier<WidgetBorderedButtonStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for Button<PrimitiveButtonStyleConfiguration.Label>, &type metadata for PrimitiveButtonStyleConfiguration.Label, &protocol witness table for PrimitiveButtonStyleConfiguration.Label, type metadata accessor for Button);
    a3(255);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for SearchCompletionButtonStyle()
{
  result = type metadata singleton initialization cache for SearchCompletionButtonStyle;
  if (!type metadata singleton initialization cache for SearchCompletionButtonStyle)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Environment<DismissSearchAccessoryAction>.Content()
{
  if (!lazy cache variable for type metadata for Environment<DismissSearchAccessoryAction>.Content)
  {
    type metadata accessor for DismissSearchAccessoryAction(255);
    v0 = type metadata accessor for Environment.Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Environment<DismissSearchAccessoryAction>.Content);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, lazy protocol witness table accessor for type PlatformItemListButtonStyle and conformance PlatformItemListButtonStyle, &type metadata for PlatformItemListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, lazy protocol witness table accessor for type DefaultListButtonStyle and conformance DefaultListButtonStyle, &type metadata for DefaultListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>();
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ContainerContextPredicate<ListContainerContext>, lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext, &type metadata for ListContainerContext, MEMORY[0x1E69804E8]);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>);
    lazy protocol witness table accessor for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>();
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>();
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>);
    }
  }
}

void type metadata accessor for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>()
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>();
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>);
    v0 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>()
{
  result = lazy protocol witness table cache variable for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>;
  if (!lazy protocol witness table cache variable for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<ContainerContextStylingDisabled>, MEMORY[0x1E6980A68], MEMORY[0x1E6980A60], MEMORY[0x1E6980680]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>()
{
  result = lazy protocol witness table cache variable for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>;
  if (!lazy protocol witness table cache variable for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ContainerContextPredicate<ListContainerContext>, lazy protocol witness table accessor for type ListContainerContext and conformance ListContainerContext, &type metadata for ListContainerContext, MEMORY[0x1E69804E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerContextPredicate<ListContainerContext> and conformance ContainerContextPredicate<A>);
  }

  return result;
}

void type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>);
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>();
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>);
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>);
    }
  }
}

void type metadata accessor for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>)
  {
    type metadata accessor for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}> and conformance StyleContextAcceptsAnyPredicate<Pack{repeat A}>, type metadata accessor for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>);
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>);
    }
  }
}

void type metadata accessor for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>()
{
  if (!lazy cache variable for type metadata for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>)
  {
    v0 = type metadata accessor for StyleContextAcceptsAnyPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DefaultListButtonStyle and conformance DefaultListButtonStyle()
{
  result = lazy protocol witness table cache variable for type DefaultListButtonStyle and conformance DefaultListButtonStyle;
  if (!lazy protocol witness table cache variable for type DefaultListButtonStyle and conformance DefaultListButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultListButtonStyle and conformance DefaultListButtonStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>(255);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, lazy protocol witness table accessor for type SidebarButtonStyle and conformance SidebarButtonStyle, &type metadata for SidebarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>();
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarButtonStyle and conformance SidebarButtonStyle()
{
  result = lazy protocol witness table cache variable for type SidebarButtonStyle and conformance SidebarButtonStyle;
  if (!lazy protocol witness table cache variable for type SidebarButtonStyle and conformance SidebarButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarButtonStyle and conformance SidebarButtonStyle);
  }

  return result;
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>();
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>)
  {
    type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>();
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyListStyleContext>);
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TableStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TabSectionStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, lazy protocol witness table accessor for type ToolbarButtonStyle and conformance ToolbarButtonStyle, &type metadata for ToolbarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonStyle and conformance ToolbarButtonStyle()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonStyle and conformance ToolbarButtonStyle;
  if (!lazy protocol witness table cache variable for type ToolbarButtonStyle and conformance ToolbarButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonStyle and conformance ToolbarButtonStyle);
  }

  return result;
}

void type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>()
{
  if (!lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>)
  {
    type metadata accessor for SearchCompletionButtonStyle();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type SearchCompletionButtonStyle and conformance SearchCompletionButtonStyle, type metadata accessor for SearchCompletionButtonStyle);
    v0 = type metadata accessor for PrimitiveButtonStyleContainerModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TextInputSuggestionsContext>);
    type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, lazy protocol witness table accessor for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle, &type metadata for SidebarSectionActionButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle()
{
  result = lazy protocol witness table cache variable for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle;
  if (!lazy protocol witness table cache variable for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle);
  }

  return result;
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<AccessibilityButtonStyle>, lazy protocol witness table accessor for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle, &type metadata for AccessibilityButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, MEMORY[0x1E6980158], MEMORY[0x1E6980150], MEMORY[0x1E69801E0]);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<PlatterButtonStyle>, lazy protocol witness table accessor for type PlatterButtonStyle and conformance PlatterButtonStyle, &type metadata for PlatterButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatterButtonStyle and conformance PlatterButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlatterButtonStyle and conformance PlatterButtonStyle;
  if (!lazy protocol witness table cache variable for type PlatterButtonStyle and conformance PlatterButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatterButtonStyle and conformance PlatterButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<PlatterButtonStyle>, lazy protocol witness table accessor for type PlatterButtonStyle and conformance PlatterButtonStyle, &type metadata for PlatterButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle()
{
  result = lazy protocol witness table cache variable for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle;
  if (!lazy protocol witness table cache variable for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle);
  }

  return result;
}

void type metadata accessor for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>()
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>();
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>);
    v0 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationVie()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<And(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<();
    lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>( &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>,  type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>,  lazy protocol witness table accessor for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<AnyListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<AnyListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>,  lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp(255);
    lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>( &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>,  type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, EmptyModifier>,  lazy protocol witness table accessor for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>,  lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPred);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>(255);
    lazy protocol witness table accessor for type Button<PrimitiveButtonStyleConfiguration.Label> and conformance Button<A>();
    lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>( &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>,  type metadata accessor for StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>,  lazy protocol witness table accessor for type AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>> and conformance AndOperationViewInputPredicate<A, B>,  lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, lazy protocol witness table accessor for type DefaultListButtonStyle and conformance DefaultListButtonStyle, &type metadata for DefaultListButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarButtonStyle>, lazy protocol witness table accessor for type SidebarButtonStyle and conformance SidebarButtonStyle, &type metadata for SidebarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SwipeActionsStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SwipeActionsStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SwipeActionsStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle>, lazy protocol witness table accessor for type ToolbarButtonStyle and conformance ToolbarButtonStyle, &type metadata for ToolbarButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<ToolbarButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarSectionActionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<SidebarSectionActionStyleContext>, PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>);
    lazy protocol witness table accessor for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle>, lazy protocol witness table accessor for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle, &type metadata for PlatformFallbackButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for ButtonStyleModifier<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for ButtonStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleModifier<DefaultButtonStyle> and conformance ButtonStyleModifier<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>()
{
  if (!lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>();
    type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>);
    v0 = type metadata accessor for OrOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>)
  {
    type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>();
    type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>);
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<SidebarListStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<SidebarListStyleContext>);
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<SidebarListStyleContext>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle()
{
  result = lazy protocol witness table cache variable for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle;
  if (!lazy protocol witness table cache variable for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TableStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TableStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TableStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TabSectionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TabSectionStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TabSectionStyleContext>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MenuStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MenuStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<TextInputSuggestionsContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<TextInputSuggestionsContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>, type metadata accessor for PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<TextInputSuggestionsContext>, PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderedButtonStyle>, lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle, &type metadata for BorderedButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<BorderedButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle>, lazy protocol witness table accessor for type SidebarSectionActionButtonStyle and conformance SidebarSectionActionButtonStyle, &type metadata for SidebarSectionActionButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<SidebarSectionActionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>)
  {
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for ButtonStyleContainerModifier<AccessibilityButtonStyle>, lazy protocol witness table accessor for type AccessibilityButtonStyle and conformance AccessibilityButtonStyle, &type metadata for AccessibilityButtonStyle, type metadata accessor for ButtonStyleContainerModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ButtonStyleContainerModifier<AccessibilityButtonStyle> and conformance ButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>)
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(255, &lazy cache variable for type metadata for InvertedViewInputPredicate<ContainerContextStylingDisabled>, MEMORY[0x1E6980A68], MEMORY[0x1E6980A60], MEMORY[0x1E6980680]);
    lazy protocol witness table accessor for type InvertedViewInputPredicate<ContainerContextStylingDisabled> and conformance InvertedViewInputPredicate<A>();
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>();
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(a4, a5);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<SearchCompletionButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>(&lazy protocol witness table cache variable for type InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>> and conformance InvertedViewInputPredicate<A>, type metadata accessor for InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>);
    v8 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext> and conformance StyleContextAcceptsPredicate<A>(&lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext> and conformance StyleContextAcceptsPredicate<A>, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>);
    lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AccessibilityQuickActionStyleContext>, PrimitiveButtonStyleContainerModifier<PlatformItemListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t static ToolbarContent.makeToolbarOutputs(placement:entries:inputs:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 64) + 1;

  PreferencesOutputs.init()();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
}

void type metadata accessor for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>)
  {
    type metadata accessor for ToolbarButtonStyle.ResolvedBody();
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemTintModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>>();
    lazy protocol witness table accessor for type Button<ModifiedContent<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _TraitWritingModifier<TransitionTraitKey>>, StaticIf<InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>, EmptyModifier>>> and conformance Button<A>(&lazy protocol witness table cache variable for type ToolbarButtonStyle.ResolvedBody and conformance ToolbarButtonStyle.ResolvedBody, type metadata accessor for ToolbarButtonStyle.ResolvedBody);
    _s7SwiftUI8StaticIfVyAA28StyleContextAcceptsPredicateVyAA07ToolbareF0VGAA0I21ButtonContentModifierVAA05EmptyL0VGACyxq_q0_GAA04ViewL0A2A0n5InputH0RzAaOR_AaOR0_rlWlTm_0(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>, &type metadata for ToolbarButtonContentModifier, lazy protocol witness table accessor for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ToolbarButtonStyle.ResolvedBody, StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonContentModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<TextAlignment>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier()
{
  result = lazy protocol witness table cache variable for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier;
  if (!lazy protocol witness table cache variable for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolbarButtonContentModifier and conformance ToolbarButtonContentModifier);
  }

  return result;
}

void type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>()
{
  if (!lazy cache variable for type metadata for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>)
  {
    lazy protocol witness table accessor for type CreatesToolbarSafeAreaInsetPredicate and conformance CreatesToolbarSafeAreaInsetPredicate();
    v0 = type metadata accessor for InvertedViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<CGFloat?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<CGFloat?>(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for AttributeInvalidatingSubscriber<ObservableObjectPublisher>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for AttributeInvalidatingSubscriber<ObservableObjectPublisher>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, &type metadata for IncludesStyledTextModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<DefaultToolbarBarPocketModifier>, BarPocketModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, lazy protocol witness table accessor for type _ViewModifier_Content<AllowsToolbarItemBridgingModifier> and conformance _ViewModifier_Content<A>, lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey> and conformance _PreferenceTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AllowsToolbarItemBridgingModifier>, _PreferenceTransformModifier<ToolbarItemBridgingPreferenceKey>>, IncludesStyledTextModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance IncludesStyledTextModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance IncludesStyledTextModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance BarEdgeReader<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

void type metadata accessor for Binding<PresentationMode>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t assignWithCopy for NavigationStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  if (v9 != v10)
  {
    v11 = *(v9 + 24);
    if (v11 >= 2)
    {
      v11 = *v9 + 2;
    }

    if (v11 == 1)
    {
    }

    v12 = *(v10 + 24);
    if (v12 >= 2)
    {
      v12 = *v10 + 2;
    }

    *v9 = *v10;
    *(v9 + 8) = *(v10 + 8);
    if (v12 == 1)
    {
      *(v9 + 16) = *(v10 + 16);
      *(v9 + 24) = 1;
    }

    else
    {
      *(v9 + 24) = 0;
    }
  }

  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>();
  *v13 = v15;
  *(v13 + 8) = v16;
  *(v13 + 16) = v17;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>();
  return a1;
}

uint64_t _ConditionalContent.init(__storage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t SheetPresentationModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v63 = a3;
  v6 = *(a2 + 24);
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v53 = v11;
  v12 = &v46[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(&v65 + 1) = *(v13 + 40);
  v14 = type metadata accessor for CoreSheetPresentationModifier();
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46[-v15];
  swift_getWitnessTable();
  v54 = type metadata accessor for _ViewModifier_Content();
  v60 = v14;
  v59 = type metadata accessor for ModifiedContent();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v56 = &v46[-v19];
  v20 = *(a2 + 32);
  v64 = *(a2 + 16);
  *&v65 = v20;
  v21 = type metadata accessor for SheetContent();
  v52 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v46[-v22];
  type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
  v51 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v51);
  v24 = 0;
  if (SheetPresentationModifier.isPresented.getter())
  {
    closure #1 in SheetPresentationModifier.body(content:)(v4, v64, v6, v65);
    swift_getKeyPath();
    v48 = v12;
    v50 = v6;
    v25 = *v4;
    v47 = *(v4 + 16);
    lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented();
    v49 = v9;

    v26 = dispatch thunk of AnyLocation.projecting<A>(_:)();

    v68 = v25;
    v69 = v26;
    v6 = v50;
    v70 = v47;
    WitnessTable = swift_getWitnessTable();
    View.environment<A>(_:_:)();
    v12 = v48;

    (*(v52 + 8))(v23, v21);
    v28 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>();
    v66 = WitnessTable;
    v67 = v28;
    v9 = v49;
    swift_getWitnessTable();
    v24 = AnyView.init<A>(_:)();
  }

  (*(v9 + 16))(v12, v4, a2);
  v29 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *&v31 = v64;
  v32 = v65;
  *(&v31 + 1) = v6;
  *(v30 + 16) = v31;
  *(v30 + 32) = v32;
  (*(v9 + 32))(v30 + v29, v12, a2);
  LOBYTE(v29) = *(v4 + 56);
  v33 = *(v4 + 57);
  v34 = v61;
  v35 = v62;
  (*(v62 + 16))(v61, v4 + *(a2 + 68), v6);
  v36 = *(v4 + *(a2 + 72));
  *v16 = 0;
  *(v16 + 1) = v24;
  *(v16 + 2) = partial apply for closure #2 in SheetPresentationModifier.body(content:);
  *(v16 + 3) = v30;
  v16[32] = v29;
  v16[33] = v33;
  *(v16 + 56) = 0u;
  *(v16 + 9) = 0;
  *(v16 + 40) = 0u;
  v37 = v60;
  (*(v35 + 32))(&v16[*(v60 + 56)], v34, v6);
  v16[*(v37 + 60)] = v36;
  v38 = v54;
  v39 = swift_getWitnessTable();
  v40 = v55;
  MEMORY[0x18D00A570](v16, v38, v37, v39);
  (*(v58 + 8))(v16, v37);
  v71 = v39;
  v72 = &protocol witness table for CoreSheetPresentationModifier<A>;
  v41 = v59;
  v42 = swift_getWitnessTable();
  v43 = v56;
  static ViewBuilder.buildExpression<A>(_:)(v40, v41, v42);
  v44 = *(v57 + 8);
  v44(v40, v41);
  static ViewBuilder.buildExpression<A>(_:)(v43, v41, v42);
  return (v44)(v43, v41);
}

uint64_t sub_18BE7EBD8()
{
  v4 = *(v0 + 24);
  v1 = type metadata accessor for SheetPresentationModifier();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  (*(*(v4 - 8) + 8))(v2 + *(v1 + 68));
  return swift_deallocObject();
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for Binding<PresentationMode>(255, a3, a4, a5);
    v6 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t SheetPresentationModifier.isPresented.getter()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  type metadata accessor for Binding<PresentationMode>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v4);
  return v4;
}

void *initializeWithCopy for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *v9;

  if (v10 < 0xFFFFFFFF)
  {
    *v8 = *v9;
  }

  else
  {
    v11 = *(v9 + 8);
    *v8 = v10;
    *(v8 + 8) = v11;
  }

  *(v8 + 16) = *(v9 + 16);
  *(v8 + 17) = *(v9 + 17);
  v12 = (v8 + 25) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v9 + 25) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 24);
  if (v14 < 0xFFFFFFFF)
  {
    v15 = *v13;
    v16 = *(v13 + 16);
    *(v12 + 32) = *(v13 + 32);
    *v12 = v15;
    *(v12 + 16) = v16;
  }

  else
  {
    *(v12 + 24) = v14;
    *(v12 + 32) = *(v13 + 32);
    (**(v14 - 8))(v12, v13);
  }

  v17 = *(*(a3 + 16) - 8);
  v18 = v17 + 16;
  v19 = *(v17 + 80);
  v20 = (v12 + v19 + 40) & ~v19;
  v21 = (v13 + v19 + 40) & ~v19;
  (*(v17 + 16))(v20, v21);
  *(v20 + *(v18 + 48)) = *(v21 + *(v18 + 48));
  return a1;
}

uint64_t destroy for CoreSheetPresentationModifier(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v4 >= 0xFFFFFFFFuLL)
  {
  }

  v5 = (v4 + 25) & 0xFFFFFFFFFFFFFFF8;
  if (*(v5 + 24) >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  v6 = *(*(a2 + 16) - 8);
  v7 = *(v6 + 8);
  v8 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);

  return v7(v8);
}

uint64_t CoreSheetPresentationModifier.resolve(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v27 = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  v26 = v14;
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v24 - v16;
  v19 = *a1;
  v18 = a1[1];
  v24[2] = *(a2 + 56);
  (*(v7 + 16))(v9, v4, a2, v15);
  v20 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = v12;
  *(v21 + 3) = v11;
  *(v21 + 4) = v19;
  *(v21 + 5) = v18;
  (*(v7 + 32))(&v21[v20], v9, a2);
  (*(v11 + 24))(partial apply for closure #1 in CoreSheetPresentationModifier.resolve(in:), v21, v12, v11);

  v22 = v25;
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type AllowPresentationPredicate and conformance AllowPresentationPredicate();
  ViewModifier.requiring<A>(_:)(&type metadata for AllowPresentationPredicate, v22);
  return (*(v26 + 8))(v17, v22);
}

uint64_t sub_18BE7F274()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for CoreSheetPresentationModifier();
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);

  v4 = v0 + v3;

  if (*(v0 + v3 + 16))
  {
  }

  if (*(v4 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1(v4 + 40);
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 56), v1);

  return swift_deallocObject();
}

uint64_t NullSheetAnchor.preferenceTransformModifier(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a1, a2, a3, a4);
  a5[1] = v6;
}

uint64_t partial apply for closure #1 in CoreSheetPresentationModifier.resolve(in:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CoreSheetPresentationModifier() - 8);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return closure #1 in CoreSheetPresentationModifier.resolve(in:)(a1, a2, v6, v7, v8);
}

uint64_t closure #1 in CoreSheetPresentationModifier.resolve(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a4;

  specialized static ResetGlassEnvironmentModifier.makeEnvironment(_:)();
  v8 = *(a5 + 8);
  v9 = &v30 + 8;
  outlined init with copy of SheetPreference.Value(a1, &v30 + 8);
  if (v8)
  {
    if (v35)
    {
      if (v35 == 1)
      {
        MEMORY[0x18D009810](0xD00000000000008BLL, 0x800000018CD47B40);
LABEL_7:

        return outlined destroy of SheetPreference.Value(&v30 + 8);
      }

      v29 = a2;

      v9 = a1;
    }

    else
    {
      v29 = a2;

      outlined destroy of SheetPreference.Value(a1);
    }

    outlined destroy of SheetPreference.Value(v9);
    v11 = *(a5 + 16);
    v12 = *(a5 + 24);
    outlined copy of AppIntentExecutor?(v11);
    v13 = Namespace.wrappedValue.getter();
    outlined init with copy of AnyHashable?(a5 + 40, v32);
    v14 = *(a5 + 32);
    v15 = *(a5 + 33);
    v16 = v36;
    v17 = v37;
    v18 = *(a5 + *(type metadata accessor for CoreSheetPresentationModifier() + 60));
    *&v30 = v8;
    *(&v30 + 1) = v11;
    *&v31 = v12;
    *(&v31 + 1) = v13;
    BYTE8(v33) = v14;
    BYTE9(v33) = v15;
    *v34 = v29;
    *&v34[8] = v16;
    *&v34[16] = v17;
    v34[24] = v18;
    v34[25] = 1;
    v19 = v31;
    *a1 = v30;
    *(a1 + 16) = v19;
    v20 = v32[0];
    v21 = v32[1];
    v22 = v33;
    *(a1 + 90) = *&v34[10];
    v23 = *v34;
    *(a1 + 64) = v22;
    *(a1 + 80) = v23;
    *(a1 + 32) = v20;
    *(a1 + 48) = v21;
    *(a1 + 106) = 1;
  }

  else
  {
    if (v35)
    {
      if (v35 == 1)
      {
        goto LABEL_7;
      }

      outlined destroy of SheetPreference.Value(a1);
      type metadata accessor for _ContiguousArrayStorage<(Namespace.ID, Transaction)>();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18CD63400;
      *(inited + 32) = Namespace.wrappedValue.getter();
      *(inited + 40) = a2;
      v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI9NamespaceV2IDV_AC11TransactionVTt0g5Tf4g_n(inited);
      swift_setDeallocating();

      outlined destroy of (Namespace.ID, Transaction)(inited + 32);

      *a1 = v28;
    }

    else
    {
      outlined destroy of SheetPreference.Value(a1);
      v24 = *(&v30 + 1);
      v25 = Namespace.wrappedValue.getter();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a2, v25, isUniquelyReferenced_nonNull_native);

      *a1 = v24;
    }

    *(a1 + 106) = 0;
  }

  return result;
}

void *assignWithCopy for ToolbarModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = *(*(a3 + 24) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (a1 + v8 + 16) & ~v8;
  v10 = (a2 + v8 + 16) & ~v8;
  (*(v6 + 24))(v9, v10);
  v11 = *(v7 + 40) + 7;
  v12 = ((v11 + v9) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v11 + v10) & 0xFFFFFFFFFFFFFFF8);
  v14 = v13[1];
  if (v12[1] < 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      *v12 = *v13;
      v12[1] = v13[1];
      v12[2] = v13[2];

      return a1;
    }

LABEL_7:
    v15 = *v13;
    v12[2] = v13[2];
    *v12 = v15;
    return a1;
  }

  if (v14 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *v12 = *v13;

  v12[1] = v13[1];

  v12[2] = v13[2];
  return a1;
}

uint64_t assignWithCopy for ToolbarItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (v8 != v9)
  {
    outlined destroy of ToolbarItemPlacement.Role(v8);
    if (*(v9 + 40) == 1)
    {
      v10 = *(v9 + 24);
      *(v8 + 24) = v10;
      *(v8 + 32) = *(v9 + 32);
      (**(v10 - 8))(v8, v9);
      *(v8 + 40) = 1;
    }

    else
    {
      v11 = *v9;
      v12 = *(v9 + 16);
      *(v8 + 25) = *(v9 + 25);
      *v8 = v11;
      *(v8 + 16) = v12;
    }
  }

  v13 = *(*(a3 + 24) - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v8 + v15 + 41) & ~v15;
  v17 = (v9 + v15 + 41) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(v14 + 40);
  v19 = (v16 + v18);
  v20 = (v17 + v18);
  *v19 = *v20;
  v19[1] = v20[1];
  v19[2] = v20[2];
  return a1;
}

uint64_t destroy for ToolbarItemPlacement.Role(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

uint64_t protocol witness for Rule.value.getter in conformance A?<A>.Child@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return Optional<A>.Child.value.getter(*(a1 + 16), *(a1 + 24), a2);
}

{
  return Optional<A>.Child.value.getter(*(a1 + 16), *(a1 + 24), a2);
}

uint64_t Optional<A>.Child.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for _ConditionalContent.Storage();
  v10 = type metadata accessor for Optional();
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  Optional<A>.ChildTableColumn.content.getter(v8);
  v25 = a1;
  v26 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.Child.value.getter, v24, MEMORY[0x1E69E73E0], v9, v17, v12);
  (*(v6 + 8))(v8, v5);
  v18 = *(v13 + 48);
  if (v18(v12, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v18(v12, 1, v9) != 1)
    {
      (*(v21 + 8))(v12, v22);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v12, v9);
  }

  return _ConditionalContent.init(__storage:)(v16, v23);
}

{
  v23 = a3;
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  v9 = type metadata accessor for _ConditionalContent.Storage();
  v10 = type metadata accessor for Optional();
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  Optional<A>.ChildTableColumn.content.getter(v8);
  v25 = a1;
  v26 = a2;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in Optional<A>.Child.value.getter, v24, MEMORY[0x1E69E73E0], v9, v17, v12);
  (*(v6 + 8))(v8, v5);
  v18 = *(v13 + 48);
  if (v18(v12, 1, v9) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v18(v12, 1, v9) != 1)
    {
      (*(v21 + 8))(v12, v22);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v12, v9);
  }

  return _ConditionalContent.init(__storage:)(v16, v23);
}

uint64_t _ConditionalContent<>.CommandsProvider.makeChildInputs()@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v12[0] = *v1;
  v12[1] = v3;
  v13[0] = v1[2];
  v4 = v13[0];
  *(v13 + 12) = *(v1 + 44);
  v5 = *(v13 + 12);
  v6 = v3;
  *a1 = v12[0];
  a1[1] = v3;
  a1[2] = v4;
  *(a1 + 44) = v5;
  swift_beginAccess();
  v7 = v6[3];
  v14[1] = v6[2];
  v14[2] = v7;
  v8 = v6[5];
  v14[3] = v6[4];
  v14[4] = v8;
  v14[0] = v6[1];
  type metadata accessor for MutableBox<CachedEnvironment>();
  v9 = swift_allocObject();
  memmove((v9 + 16), v6 + 1, 0x50uLL);
  outlined init with copy of _CommandsInputs(v12, v11);
  outlined init with copy of CachedEnvironment(v14, v11);

  *(a1 + 2) = v9;
  return result;
}

uint64_t _ConditionalContent<>.CommandsProvider.makeFalseOutputs(child:inputs:)(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  v7[0] = *a2;
  v7[1] = v4;
  *v8 = a2[2];
  *&v8[12] = *(a2 + 44);
  v5 = *(a3 + 24);
  _GraphValue.init(_:)();
  return (*(*(a3 + 40) + 32))(v9, v7, v5);
}

uint64_t _ConditionalContent<>.CommandsProvider.attachOutputs(to:)()
{

  PreferencesOutputs.attachIndirectOutputs(to:)();
}

uint64_t protocol witness for CoreViewRepresentable.makeViewProvider(context:) in conformance PlatformViewControllerRepresentableAdaptor<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = PlatformViewControllerRepresentableAdaptor.makeViewProvider(context:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t type metadata completion function for UIViewControllerRepresentableContext()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for StyleContextAcceptsPredicate<GroupedFormStyleContext>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for StyleContextAcceptsPredicate();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t PlatformViewControllerRepresentableAdaptor.makeViewProvider(context:)(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();
  v4 = type metadata accessor for PlatformViewRepresentableContext();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for UIViewControllerRepresentableContext();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v5 + 16))(v7, a1, v4, v12);
  swift_getWitnessTable();
  v15 = UIViewControllerRepresentableContext.init<A>(_:)(v7, v14);
  v16 = (*(v9 + 32))(v14, v8, v9, v15);
  (*(v11 + 8))(v14, v10);
  return v16;
}

double UIViewControllerRepresentableContext.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UIViewControllerRepresentableContext();
  v5 = v4[11];
  v6 = type metadata accessor for PlatformViewRepresentableContext();
  PlatformViewRepresentableContext.coordinator.getter();
  *(a2 + v5) = protocol witness for ArchivedViewHostStates.count.getter in conformance _ArchivedViewHost<A, B>.LegacyStates();
  *(a2 + v4[9]) = specialized PlatformViewRepresentableContext.transaction.getter(v6);

  PlatformViewRepresentableContext.environment.getter();
  (*(*(v6 - 8) + 8))(a1, v6);
  result = *&v8;
  *(a2 + v4[10]) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for TransferableDropAction.UserActionStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t initializeBufferWithCopyOfBuffer for SceneID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of SceneID(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t storeEnumTagSinglePayload for TransferableDropAction.UserActionStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t specialized static SceneID.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a5;
  v7 = a4;
  v8 = a2;
  if (a3)
  {
    if (a6)
    {
      v9 = a1 == a4 && a2 == a5;
      return v9 & 1;
    }

    v17 = _typeName(_:qualified:)();
    v19 = v13;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v14);

    v10 = v17;
    v8 = v19;

    goto LABEL_9;
  }

  if (a6)
  {
    v10 = a1;

    v16 = _typeName(_:qualified:)();
    v18 = v11;
    MEMORY[0x18D00C9B0](45, 0xE100000000000000);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18D00C9B0](v12);

    v7 = v16;
    v6 = v18;
LABEL_9:
    if (v10 != v7 || v8 != v6)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v9 & 1;
    }

LABEL_15:
    v9 = 1;
    return v9 & 1;
  }

  if (a1 == a4 && a2 == a5)
  {
    goto LABEL_15;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t @objc UIHostingController.preferredStatusBarUpdateAnimation.getter(void *a1)
{
  v1 = a1;
  updated = UIHostingController.preferredStatusBarUpdateAnimation.getter();

  return updated;
}

void *AppSceneDelegate.sceneItem()@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
  v4 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
  if (v4 != 255 && static AppGraph.shared)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace);
    v8 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8);
    v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 16);
    outlined copy of SceneID?(*v3, v6, *(v1 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16));

    outlined copy of SceneList.Namespace(v7, v8, v9);
    AppGraph.sceneList(namespace:)(v7, v8, v9, __src);
    outlined consume of SceneList.Namespace(v7, v8, v9);

    SceneList.item(id:where:)(v5, v6, v4 & 1, 0, __src);
    outlined consume of SceneID?(v5, v6, v4);

    if (__src[68])
    {
      return memcpy(a1, __src, 0x231uLL);
    }

    outlined destroy of RootEnvironmentModifier?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t RootViewDelegate.hostingView<A>(_:willUpdate:)(void *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  _UIHostingView.colorScheme.getter(&v9);
  EnvironmentValues.explicitPreferredColorScheme.setter();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

{
  v5 = *MEMORY[0x1E69E7D40] & *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    (*(v7 + 32))(a1, a2, *(v5 + 80), *(v5 + 88), ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t RootViewDelegate.hostingView<A>(_:didUpdate:)(void *a1, uint64_t *a2)
{
  v4 = *MEMORY[0x1E69E7D40] & *a1;
  v5 = *a2;
  v6 = a2[1];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v2 + 32);
    ObjectType = swift_getObjectType();
    v10[0] = v5;
    v10[1] = v6;
    (*(v8 + 24))(a1, v10, *(v4 + 80), *(v4 + 88), ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

void SceneList.item(id:where:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(uint64_t *)@<X3>, void *a5@<X8>)
{
  v24 = *v5;
  v23 = *(*v5 + 16);
  if (v23)
  {
    v6 = a4;
    v10 = 0;
    v11 = v24 + 32;
    v22 = a2;
    do
    {
      if (v10 >= *(v24 + 16))
      {
        __break(1u);
        return;
      }

      outlined init with copy of SceneList.Item(v11, __src);
      v12 = __src[17];
      v13 = __src[18];
      if (__src[19])
      {
        if (a3)
        {
          if (__src[17] != a1 || LOBYTE(__src[18]) != v22)
          {
            goto LABEL_3;
          }

          goto LABEL_21;
        }

        v26 = _typeName(_:qualified:)();
        v28 = v17;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v18 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v18);

        v13 = v28;

        v16 = a2;
        if (v26 != a1)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if ((a3 & 1) == 0)
        {
          if ((__src[17] != a1 || __src[18] != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_3;
          }

          goto LABEL_21;
        }

        outlined copy of SceneID(__src[17], __src[18], 0);
        v25 = _typeName(_:qualified:)();
        v27 = v14;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v15);
        v6 = a4;

        v16 = v27;
        if (v12 != v25)
        {
          goto LABEL_16;
        }
      }

      if (v13 != v16)
      {
LABEL_16:
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_21;
      }

LABEL_21:
      if (!v6 || (v6(__src) & 1) != 0)
      {
        memcpy(a5, __src, 0x231uLL);
        return;
      }

LABEL_3:
      ++v10;
      outlined destroy of SceneList.Item(__src);
      v11 += 568;
    }

    while (v23 != v10);
  }

  bzero(a5, 0x231uLL);
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<(index: Int, element: TabCustomizationID, id: TabCustomizationID)>(255, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t specialized AppGraph.addObserver(_:)(unint64_t *a1, uint64_t a2)
{

  return sub_18BE80EF0(a1, a2);
}

{
  v31 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v4 = *(a2 + 192);
  v5 = *(v4 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v25 = v7;
    v26 = a1;
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](v9);
    v10 = v24 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v8);
    v8 = 0;
    v7 = 0;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    v14 = (v11 + 63) >> 6;
    a1 = &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = v15 | (v7 << 6);
      outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v4 + 48) + 16 * v18, v30);
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        outlined destroy of HashableWeakBox<Swift.AnyObject>(v30, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
        *&v10[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_17:
          v20 = specialized _NativeSet.extractSubset(using:count:)(v10, v25, v8, v4);
          a1 = v26;
          goto LABEL_18;
        }
      }

      else
      {
        outlined destroy of HashableWeakBox<Swift.AnyObject>(v30, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
      }
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        goto LABEL_17;
      }

      v17 = *(v4 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v22 = swift_slowAlloc();
  v23 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy7SwiftUI15HashableWeakBoxVyyXlGG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_7i4UI15klM10VyyXlG_TG5ALxSbs5Error_pRi_zRi0_zlyAKIsgndzo_Tf1nc_n(v22, v7, v4, closure #1 in AppGraph.addObserver(_:));

  MEMORY[0x18D0110E0](v22, -1, -1);
  v20 = v23;
LABEL_18:
  *(a2 + 192) = v20;

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v28 = a1;
  swift_beginAccess();
  specialized Set._Variant.insert(_:)(v29, v27);
  swift_endAccess();
  return outlined destroy of HashableWeakBox<Swift.AnyObject>(v29, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
}

uint64_t sub_18BE80EF0(unint64_t *a1, uint64_t a2)
{

  return specialized AppGraph.addObserver(_:)(a1, a2);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>();
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    outlined init with copy of NavigationTitleStorage?(*(a4 + 48) + 16 * (v13 | (v11 << 6)), v25, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v26);
    result = Hasher._finalize()();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = outlined init with take of HashableWeakBox<Swift.AnyObject>(v25, *(v6 + 48) + 16 * v19);
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _SetStorage<UIOpenURLContext>, &lazy cache variable for type metadata for UIOpenURLContext, 0x1E69DCD08, &lazy protocol witness table cache variable for type UIOpenURLContext and conformance NSObject);
}

{
  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, a3, a4, &lazy cache variable for type metadata for _SetStorage<UIScene>, &lazy cache variable for type metadata for UIScene, 0x1E69DCE70, &lazy protocol witness table cache variable for type UIScene and conformance NSObject);
}

{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  type metadata accessor for _SetStorage<ToolbarPlacement.Role>();
  result = static _SetStorage.allocate(capacity:)();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    outlined init with copy of ToolbarPlacement.Role(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v34);
    Hasher.init(_seed:)();
    outlined init with copy of ToolbarPlacement.Role(v34, &v31);
    if (*(&v32 + 1) <= 2)
    {
      if (*(&v32 + 1))
      {
        if (*(&v32 + 1) == 1)
        {
          v16 = 1;
        }

        else
        {
          if (*(&v32 + 1) != 2)
          {
            goto LABEL_28;
          }

          v16 = 2;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else if (*(&v32 + 1) > 4)
    {
      if (*(&v32 + 1) == 5)
      {
        v16 = 5;
      }

      else
      {
        if (*(&v32 + 1) != 6)
        {
LABEL_28:
          v29[0] = v31;
          v29[1] = v32;
          v30 = v33;
          MEMORY[0x18D00F6F0](6);
          AnyHashable.hash(into:)();
          outlined destroy of AnyHashable(v29);
          goto LABEL_33;
        }

        v16 = 7;
      }
    }

    else if (*(&v32 + 1) == 3)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    MEMORY[0x18D00F6F0](v16);
LABEL_33:
    result = Hasher._finalize()();
    v17 = -1 << *(v6 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_43;
        }
      }

      goto LABEL_48;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_43:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = *(v6 + 48) + 40 * v20;
    v26 = v34[0];
    v27 = v34[1];
    *(v25 + 32) = v35;
    *v25 = v26;
    *(v25 + 16) = v27;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_49;
    }

    if (!v5)
    {
LABEL_45:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_45;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  type metadata accessor for ModifiedContent<Divider, OpacityRendererEffect>(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t outlined init with copy of HashableWeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  v10 = *(a1 + 8);
  MEMORY[0x18D00F6F0](v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    do
    {
      outlined init with copy of HashableWeakBox<Swift.AnyObject>(*(v9 + 48) + 16 * a2, v20);
      v14 = v21;
      outlined destroy of HashableWeakBox<Swift.AnyObject>(v20);
      if (v14 == v10)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of HashableWeakBox<Swift.AnyObject>(a1, *(v15 + 48) + 16 * a2);
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E69E8450], type metadata accessor for _SetStorage<UTType>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v7 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v25 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v24 = v8;
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    v24 = v8;
    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for CommandGroupPlacement(0);
  UUID.hash(into:)();
  v14 = Hasher._finalize()();
  v15 = -1 << *(v13 + 32);
  a2 = v14 & ~v15;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v26 + 72);
    do
    {
      outlined init with copy of HashableCommandGroupPlacementWrapper(*(v13 + 48) + v17 * a2, v10);
      v18 = static UUID.== infix(_:_:)();
      outlined destroy of (ToolbarPlacement.Role, ToolbarPlacement.Role)(v10, type metadata accessor for HashableCommandGroupPlacementWrapper);
      if (v18)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of HashableCommandGroupPlacementWrapper(a1, *(v19 + 48) + *(v26 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E6968FB0], type metadata accessor for _SetStorage<URL>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E6969C28], type metadata accessor for _SetStorage<IndexPath>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for DateComponents();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()(MEMORY[0x1E6968278], type metadata accessor for _SetStorage<DateComponents>);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278]);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type HashableCommandGroupPlacementWrapper and conformance HashableCommandGroupPlacementWrapper(&lazy protocol witness table cache variable for type DateComponents and conformance DateComponents, MEMORY[0x1E6968278]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void type metadata accessor for _SetStorage<HashableWeakBox<Swift.AnyObject>>()
{
  if (!lazy cache variable for type metadata for _SetStorage<HashableWeakBox<Swift.AnyObject>>)
  {
    type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(255, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    lazy protocol witness table accessor for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>();
    v0 = type metadata accessor for _SetStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SetStorage<HashableWeakBox<Swift.AnyObject>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>()
{
  result = lazy protocol witness table cache variable for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>;
  if (!lazy protocol witness table cache variable for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>)
  {
    type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(255, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HashableWeakBox<Swift.AnyObject> and conformance HashableWeakBox<A>);
  }

  return result;
}

uint64_t outlined init with take of HashableWeakBox<Swift.AnyObject>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ContiguousArrayStorage<ToolbarPlacement.Role>(0, &lazy cache variable for type metadata for HashableWeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E697E7A8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of HashableWeakBox<Swift.AnyObject>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for _ContiguousArrayStorage<AppPreview>(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<AppPreview>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void AppSceneDelegate.sceneDidBecomeActive(_:)(uint64_t a1, char a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_scenePhase;
  *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_scenePhase) = a2;
  v7 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window);
  if (v7)
  {
    v8 = [v7 rootViewController];
    if (v8)
    {
      v9 = v8;
      v10 = (v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID);
      v11 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneItemID + 16);
      if (v11 == 255)
      {
      }

      else
      {
        v12 = *v10;
        v13 = v10[1];
        outlined copy of SceneID(*v10, v13, v11 & 1);
        AppSceneDelegate.scenesDidChange(phaseChanged:)(1);
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v20 = *(v3 + v6);

        PlatformSceneCache.setPhase(_:id:host:)(&v20, v12, v13, v11 & 1, v9);

        outlined consume of SceneID?(v12, v13, v11);
      }
    }
  }

  v14 = *(v3 + OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneDelegateBox);
  if (v14)
  {
    v15 = *(*v14 + 80);

    v17 = v15(v16);

    if (v17)
    {
      v21 = &unk_1F00661F8;
      v18 = swift_dynamicCastObjCProtocolConditional();
      if (v18)
      {
        v19 = v18;
        if ([v18 respondsToSelector_])
        {
          [v19 *a3];
        }
      }
    }
  }
}

Swift::Void __swiftcall AppSceneDelegate.scenesDidChange(phaseChanged:)(Swift::Bool phaseChanged)
{
  v3 = v1;
  type metadata accessor for WeakBox<UISceneConnectionOptions>?(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v167 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v167 - v10;
  MEMORY[0x18D00ABE0](v9);
  AppSceneDelegate.sceneItem()(v191);
  v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
  if (!phaseChanged && *&v1[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_lastVersion] == v192)
  {
    outlined destroy of SceneList.Item(v191);
LABEL_119:
    static Update.end()();
    return;
  }

  v13 = v172;
  outlined init with copy of SceneList.Item.Value(v191, &v183);
  v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
  if (v190 > 4u)
  {
    if (v190 == 5)
    {
      v66 = v183;
      v67 = v184;
      v68 = *(&v184 + 1);
      v69 = v185;
      v70 = *&v3[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window];
      if (!v70 || (v71 = [v70 rootViewController]) == 0)
      {
        outlined consume of SceneID(v66, *(&v66 + 1), v67);
        outlined consume of UISceneAdaptorConfiguration.Kind(v68, v69);

        goto LABEL_116;
      }

      v72 = v71;
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
      v73 = swift_dynamicCastClass();
      if (!v73)
      {

        outlined consume of SceneID(v66, *(&v66 + 1), v67);
        outlined consume of UISceneAdaptorConfiguration.Kind(v68, v69);

        v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        goto LABEL_116;
      }

      v74 = v73;
      v169 = *(&v66 + 1);
      v171 = v68;
      LODWORD(v170) = v67;
      if (v69 == 1)
      {
        *&v175[0] = *(&v69 + 1);
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier>, MEMORY[0x1E6981910], &type metadata for ClarityUIInterfaceIdiomModifier, MEMORY[0x1E697E830]);
        lazy protocol witness table accessor for type ModifiedContent<AnyView, ClarityUIInterfaceIdiomModifier> and conformance <> ModifiedContent<A, B>();

        AnyView.init<A>(_:)();
      }

      else
      {
      }

      AppSceneDelegate.makeRootView(_:)(*(&v66 + 1), v175);

      v167 = direct field offset for UIHostingController.host;
      v168 = v74;
      v116 = *(&v74->isa + direct field offset for UIHostingController.host);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v175, v174);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v174, v172);
      v117 = *((*MEMORY[0x1E69E7D40] & *v116) + 0x60);
      swift_beginAccess();
      v118 = v116;
      outlined assign with take of ModifiedContent<AnyView, RootModifier>(v172, v116 + v117);
      swift_endAccess();
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      v119 = MEMORY[0x1E6981910];
      v120 = v3;
      v121 = MEMORY[0x1E697E830];
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v174, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
      v122 = v121;
      v3 = v120;
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v175, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, v119, &type metadata for RootModifier, v122);
      v123 = *(&v168->isa + v167);
      v175[0] = v193;

      v124 = v123;

      UIHostingViewBase.inheritedEnvironment.setter();

      outlined consume of SceneID(v66, v169, v170);
      outlined consume of UISceneAdaptorConfiguration.Kind(v171, v69);

LABEL_75:
      v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      goto LABEL_116;
    }

    if (v190 == 6)
    {
      v176 = v183;
      v177 = v184;
      v178 = v185;
      v179 = v186;
      v15 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
      v16 = *&v1[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window];
      if (!v16)
      {
        goto LABEL_15;
      }

      v17 = [v16 rootViewController];
      if (!v17)
      {
        goto LABEL_15;
      }

      v18 = v17;
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
      v19 = swift_dynamicCastClass();
      if (!v19)
      {
LABEL_14:

LABEL_15:
        v39 = &lazy cache variable for type metadata for WindowSceneConfiguration<SingleWindowConfigurationAttributes>;
        v40 = &type metadata for SingleWindowConfigurationAttributes;
        v41 = &protocol witness table for SingleWindowConfigurationAttributes;
LABEL_26:
        outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(&v176, v39, v40, v41, type metadata accessor for WindowSceneConfiguration);
LABEL_116:
        v157 = *&v3[v14[252]];
        if (v157)
        {
          v158 = v157;
          UIWindow.applyAccessibilityProperties(from:)(&v194);
        }

        v159 = v192;
        outlined destroy of SceneList.Item(v191);
        *&v3[v12[255]] = v159;
        goto LABEL_119;
      }

      v20 = v19;
      AppSceneDelegate.makeRootView(_:)(v176, v175);
      v21 = direct field offset for UIHostingController.host;
      v22 = *(v20 + direct field offset for UIHostingController.host);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v175, v174);
      outlined init with copy of ModifiedContent<AnyView, RootModifier>(v174, v172);
      v23 = *((*MEMORY[0x1E69E7D40] & *v22) + 0x60);
      swift_beginAccess();
      v24 = v22;
      outlined assign with take of ModifiedContent<AnyView, RootModifier>(v172, v22 + v23);
      swift_endAccess();
      type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
      lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>);
      ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

      v25 = MEMORY[0x1E6981910];
      v26 = v3;
      v27 = MEMORY[0x1E697E830];
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v174, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
      v28 = v27;
      v3 = v26;
      v29 = MEMORY[0x1E69E7D40];
      outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v175, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, v25, &type metadata for RootModifier, v28);
      v30 = *(v20 + v21);
      v175[0] = v193;

      v31 = v30;

      UIHostingViewBase.inheritedEnvironment.setter();

      v32 = *&v3[v15];
      if (v32)
      {
        v33 = [v32 windowScene];
        v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        if (v33)
        {
          v34 = v33;
          v35 = [v33 sizeRestrictions];

          if (v35)
          {

            v36 = qword_18CD77EC8[v195];
            v37 = direct field offset for UIHostingController.sizingOptions;
            swift_beginAccess();
            v38 = *(v20 + v37);
            *(v20 + v37) = v36;
            *v174 = v38;
            (*((*v29 & *v20) + 0x3D8))(v174);
          }
        }

        goto LABEL_14;
      }

      v141 = &lazy cache variable for type metadata for WindowSceneConfiguration<SingleWindowConfigurationAttributes>;
      v142 = &type metadata for SingleWindowConfigurationAttributes;
      v143 = &protocol witness table for SingleWindowConfigurationAttributes;
      goto LABEL_74;
    }

    if (v190 != 7)
    {
      goto LABEL_150;
    }

    v175[4] = v187;
    v175[5] = v188;
    v175[6] = v189[0];
    v175[7] = v189[1];
    v175[0] = v183;
    v175[1] = v184;
    v175[2] = v185;
    v175[3] = v186;
    v13 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
    v75 = *&v1[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window];
    if (!v75)
    {
      goto LABEL_115;
    }

    v76 = [v75 rootViewController];
    if (!v76)
    {
      goto LABEL_115;
    }

    v77 = v76;
    v78 = [v76 _appearState];

    if (v78 != 2)
    {
      goto LABEL_115;
    }

    static Log.documents.getter();
    v79 = type metadata accessor for Logger();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v11, 1, v79) == 1)
    {
      outlined destroy of PPTTestHost?(v11, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
    }

    else
    {
      v125 = Logger.logObject.getter();
      v2 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v125, v2))
      {
        v126 = swift_slowAlloc();
        v169 = v126;
        v170 = swift_slowAlloc();
        *v174 = v170;
        *v126 = 136315138;
        v127 = [objc_opt_self() _printHierarchy];
        LODWORD(v168) = v2;
        v128 = v127;
        v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v171 = v3;
        v131 = v130;

        v132 = v129;
        v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
        v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v131, v174);
        v3 = v171;

        v134 = v169;
        *(v169 + 1) = v133;
        v2 = v134;
        _os_log_impl(&dword_18BD4A000, v125, v168, "DocumentGroupIntroduction: scened did change. VC hierarchy:\n%s", v134, 0xCu);
        v168 = v125;
        v135 = v170;
        __swift_destroy_boxed_opaque_existential_1(v170);
        MEMORY[0x18D0110E0](v135, -1, -1);
        MEMORY[0x18D0110E0](v2, -1, -1);
      }

      else
      {
      }

      (*(v80 + 8))(v11, v79);
    }

    v144 = *(v13 + v3);
    v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
    if (!v144)
    {
      goto LABEL_115;
    }

    v145 = [v144 rootViewController];
    if (!v145)
    {
      goto LABEL_115;
    }

    v105 = v145;
    type metadata accessor for UIKitNavigationController();
    v146 = swift_dynamicCastClass();
    if (!v146)
    {

      goto LABEL_115;
    }

    v106 = [v146 viewControllers];
    v107 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
    v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v108 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_84;
      }
    }

    else if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_84:
      if ((v108 & 0xC000000000000001) != 0)
      {
        v147 = MEMORY[0x18D00E9C0](0, v108);
        goto LABEL_87;
      }

      if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v147 = *(v108 + 32);
LABEL_87:
        v148 = v147;

        v108 = [v148 childViewControllers];
        v149 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v149 >> 62)
        {
          if (__CocoaSet.count.getter())
          {
            goto LABEL_89;
          }
        }

        else if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_89:
          if ((v149 & 0xC000000000000001) != 0)
          {
LABEL_142:
            v150 = MEMORY[0x18D00E9C0](0, v149);
            goto LABEL_92;
          }

          if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v150 = *(v149 + 32);
LABEL_92:
            v151 = v150;

            type metadata accessor for CustomizableDocumentViewController();
            if (swift_dynamicCastClass())
            {
              *v174 = v193;

              v152 = v151;

              CustomizableDocumentViewController.update(with:in:)(v175, v174);

              AppSceneDelegate.rootModifier.getter(v174);
              v153 = v152;
              DocumentViewController.rootModifier.setter(v174);
            }

            else
            {
            }

            outlined destroy of DocumentIntroductionConfiguration(v175);
            v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
            goto LABEL_116;
          }

          __break(1u);
          goto LABEL_144;
        }

LABEL_115:
        outlined destroy of DocumentIntroductionConfiguration(v175);
        goto LABEL_116;
      }

      __break(1u);
      goto LABEL_121;
    }

    outlined destroy of DocumentIntroductionConfiguration(v175);

    goto LABEL_116;
  }

  if (!v190)
  {
    v176 = v183;
    v177 = v184;
    v178 = v185;
    v179 = v186;
    v42 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
    v43 = *&v1[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window];
    if (v43)
    {
      v44 = [v43 rootViewController];
      if (v44)
      {
        v45 = v44;
        type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for UIHostingController<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for UIHostingController);
        v46 = swift_dynamicCastClass();
        if (v46)
        {
          v47 = v46;
          AppSceneDelegate.makeRootView(_:)(v176, v175);
          v48 = direct field offset for UIHostingController.host;
          v49 = *(v47 + direct field offset for UIHostingController.host);
          outlined init with copy of ModifiedContent<AnyView, RootModifier>(v175, v174);
          outlined init with copy of ModifiedContent<AnyView, RootModifier>(v174, v172);
          v50 = *((*MEMORY[0x1E69E7D40] & *v49) + 0x60);
          swift_beginAccess();
          v51 = v49;
          outlined assign with take of ModifiedContent<AnyView, RootModifier>(v172, v49 + v50);
          swift_endAccess();
          type metadata accessor for UIHostingController<ModifiedContent<AnyView, RootModifier>>(0, &lazy cache variable for type metadata for _UIHostingView<ModifiedContent<AnyView, RootModifier>>, type metadata accessor for _UIHostingView);
          lazy protocol witness table accessor for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<AnyView, RootModifier>> and conformance _UIHostingView<A>);
          ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

          v52 = MEMORY[0x1E6981910];
          v53 = v3;
          v54 = MEMORY[0x1E697E830];
          outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v174, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
          v55 = v54;
          v3 = v53;
          v56 = MEMORY[0x1E69E7D40];
          outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(v175, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, v52, &type metadata for RootModifier, v55);
          v57 = *(v47 + v48);
          v175[0] = v193;

          v58 = v57;

          UIHostingViewBase.inheritedEnvironment.setter();

          v59 = *&v3[v42];
          if (!v59)
          {

            v141 = &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>;
            v142 = &type metadata for WindowGroupConfigurationAttributes;
            v143 = &protocol witness table for WindowGroupConfigurationAttributes;
LABEL_74:
            outlined destroy of WindowSceneConfiguration<WindowGroupConfigurationAttributes>(&v176, v141, v142, v143, type metadata accessor for WindowSceneConfiguration);
            goto LABEL_75;
          }

          v60 = [v59 windowScene];
          v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          if (v60)
          {
            v61 = v60;
            v62 = [v60 sizeRestrictions];

            if (v62)
            {

              v63 = qword_18CD77EC8[v195];
              v64 = direct field offset for UIHostingController.sizingOptions;
              swift_beginAccess();
              v65 = *(v47 + v64);
              *(v47 + v64) = v63;
              *v174 = v65;
              (*((*v56 & *v47) + 0x3D8))(v174);
            }
          }
        }
      }
    }

    v39 = &lazy cache variable for type metadata for WindowSceneConfiguration<WindowGroupConfigurationAttributes>;
    v40 = &type metadata for WindowGroupConfigurationAttributes;
    v41 = &protocol witness table for WindowGroupConfigurationAttributes;
    goto LABEL_26;
  }

  if (v190 != 2)
  {
    goto LABEL_150;
  }

  v180 = v187;
  v181 = v188;
  v182[0] = v189[0];
  *(v182 + 9) = *(v189 + 9);
  v176 = v183;
  v177 = v184;
  v178 = v185;
  v179 = v186;
  static Log.documents.getter();
  v81 = type metadata accessor for Logger();
  v82 = *(v81 - 8);
  if ((*(v82 + 48))(v7, 1, v81) == 1)
  {
    outlined destroy of PPTTestHost?(v7, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], type metadata accessor for WeakBox<UISceneConnectionOptions>?);
  }

  else
  {
    v83 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v83, v2))
    {
      v84 = swift_slowAlloc();
      v170 = v84;
      v171 = swift_slowAlloc();
      *&v175[0] = v171;
      *v84 = 136315138;
      v85 = [objc_opt_self() _printHierarchy];
      LODWORD(v169) = v2;
      v86 = v85;
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v88 = v3;
      v90 = v89;

      v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v90, v175);
      v3 = v88;
      v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;

      v92 = v170;
      *(v170 + 1) = v91;
      v2 = v92;
      _os_log_impl(&dword_18BD4A000, v83, v169, "DocumentGroup: scened did change. VC hierarchy:\n%s", v92, 0xCu);
      v93 = v171;
      __swift_destroy_boxed_opaque_existential_1(v171);
      v94 = v93;
      v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      MEMORY[0x18D0110E0](v94, -1, -1);
      MEMORY[0x18D0110E0](v2, -1, -1);
    }

    (*(v82 + 8))(v7, v81);
  }

  v95 = OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window;
  v96 = *&v3[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_window];
  if (!v96 || (v97 = [v96 rootViewController]) == 0 || (v98 = v97, v99 = objc_msgSend(v97, sel__appearState), v98, v99 != 2))
  {
LABEL_97:
    outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
    goto LABEL_116;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v6>, MEMORY[0x1E697DF60], MEMORY[0x1E697DF58], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v6> and conformance _SemanticFeature<A>();
  v100 = static SemanticFeature.isEnabled.getter();
  v101 = *&v3[v95];
  if ((v100 & 1) == 0)
  {
    if (v101)
    {
      v136 = [v101 rootViewController];
      if (v136)
      {
        v137 = v136;
        type metadata accessor for DocumentBrowserViewController();
        v138 = swift_dynamicCastClass();
        if (v138)
        {
          v139 = v138;
          AppSceneDelegate.rootModifier.getter(v175);
          v140 = OBJC_IVAR____TtC7SwiftUI29DocumentBrowserViewController_rootModifier;
          swift_beginAccess();
          outlined assign with copy of RootModifier(v175, v139 + v140);
          swift_endAccess();
          DocumentBrowserViewController.updateHosts()();

          outlined destroy of RootModifier(v175);
        }

        else
        {
        }
      }
    }

    goto LABEL_97;
  }

  if (!v101 || (v102 = [v101 rootViewController]) == 0)
  {
    v111 = 0;
    v2 = 0;
    v105 = 0;
    goto LABEL_124;
  }

  v103 = v102;
  type metadata accessor for UIKitNavigationController();
  v104 = swift_dynamicCastClass();
  v105 = v104;
  if (!v104)
  {

LABEL_123:
    v111 = 0;
    v2 = 0;
    goto LABEL_124;
  }

  v106 = [v104 viewControllers];
  v107 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
  v108 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v108 >> 62)
  {
LABEL_121:
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_122;
    }

    goto LABEL_54;
  }

  if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_122:

    goto LABEL_123;
  }

LABEL_54:
  if ((v108 & 0xC000000000000001) != 0)
  {
LABEL_144:
    v106 = v3;
    v109 = MEMORY[0x18D00E9C0](0, v108);
    goto LABEL_57;
  }

  if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_146;
  }

  v106 = v3;
  v109 = *(v108 + 32);
LABEL_57:
  v2 = v109;

  type metadata accessor for DocumentViewController(0);
  v110 = swift_dynamicCastClass();
  if (v110)
  {
    v111 = v110;
    v112 = v2;
    goto LABEL_59;
  }

  v154 = [v2 childViewControllers];
  v107 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v107 >> 62)
  {
LABEL_146:
    v3 = v106;
    if (__CocoaSet.count.getter())
    {
      goto LABEL_102;
    }

    goto LABEL_147;
  }

  v3 = v106;
  if (!*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_147:

    v111 = 0;
LABEL_124:
    if (!static AppGraph.shared)
    {

LABEL_134:
      outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
      v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
      goto LABEL_116;
    }

    v171 = v2;
    v148 = v3;
    v160 = &v3[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace];
    v161 = *&v3[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace];
    v162 = *&v3[OBJC_IVAR____TtC7SwiftUI16AppSceneDelegate_sceneNamespace + 8];
    v163 = v160[16];

    outlined copy of SceneList.Namespace(v161, v162, v163);
    AppGraph.sceneList(namespace:)(v161, v162, v163, v175);
    outlined consume of SceneList.Namespace(v161, v162, v163);

    v164 = *&v175[0];

    if (v111)
    {
      type metadata accessor for CustomizableDocumentViewController();
      v165 = swift_dynamicCastClass();
      if (v165)
      {
        v166 = *(v164 + 16);
        if (v166)
        {
          v149 = v165;
          v14 = 0;
          v3 = (v164 + 32);
          while (1)
          {
            if (v14 >= *(v164 + 16))
            {
              __break(1u);
              goto LABEL_142;
            }

            outlined init with copy of SceneList.Item(v3, v174);
            outlined init with copy of SceneList.Item.Value(v174, v172);
            if (v173 == 7)
            {
              break;
            }

            v14 = (v14 + 1);
            outlined destroy of SceneList.Item(v174);
            outlined destroy of SceneList.Item.Value(v172);
            v3 += 568;
            if (v166 == v14)
            {
              goto LABEL_132;
            }
          }

          outlined destroy of SceneList.Item.Value(v172);
          memcpy(v175, v174, 0x231uLL);
          outlined init with copy of SceneList.Item.Value(v175, v174);
          v3 = v148;
          v14 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          if (v174[128] == 7)
          {
            v172[4] = *&v174[64];
            v172[5] = *&v174[80];
            v172[6] = *&v174[96];
            v13[7] = *&v174[112];
            v172[0] = *v174;
            v172[1] = *&v174[16];
            v172[2] = *&v174[32];
            v172[3] = *&v174[48];
            *v174 = *(&v175[10] + 1);
            *&v174[8] = *&v175[11];

            CustomizableDocumentViewController.update(with:in:)(v172, v174);

            outlined destroy of DocumentIntroductionConfiguration(v172);

            outlined destroy of SceneList.Item(v175);
            goto LABEL_134;
          }

          outlined destroy of SceneList.Item(v175);
          outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
          outlined destroy of SceneList.Item.Value(v174);
          v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
          goto LABEL_116;
        }

LABEL_132:
        outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);

        v3 = v148;
        goto LABEL_75;
      }

      outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
    }

    else
    {
      outlined destroy of IdentifiedDocumentGroupConfiguration(&v176);
    }

    v3 = v148;
    v12 = &lazy cache variable for type metadata for _UISceneBSActionHandler;
    goto LABEL_116;
  }

LABEL_102:
  if ((v107 & 0xC000000000000001) != 0)
  {
    v106 = v3;
    v155 = MEMORY[0x18D00E9C0](0, v107);
LABEL_105:
    v156 = v155;

    v111 = swift_dynamicCastClass();
    if (!v111)
    {

LABEL_109:
      v3 = v106;
      goto LABEL_124;
    }

LABEL_59:
    v175[0] = v193;

    DocumentViewController.updateInheritedEnvironment(with:)(v175);

    v3 = v106;
    AppSceneDelegate.rootModifier.getter(v175);
    DocumentViewController.rootModifier.setter(v175);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_124;
    }

    v114 = Strong;
    type metadata accessor for DocumentHostingController(0);
    if (!swift_dynamicCastClass())
    {

      goto LABEL_124;
    }

    v115 = OBJC_IVAR____TtC7SwiftUI22DocumentViewController_rootModifier;
    swift_beginAccess();
    _ss11AnyHashableVSgWOcTm_2(v111 + v115, v174, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier);
    if (*&v174[48] == 1)
    {

      outlined destroy of RootEnvironmentModifier?(v174, &lazy cache variable for type metadata for RootModifier?, &type metadata for RootModifier);
    }

    else
    {
      outlined init with take of RootModifier(v174, v175);
      DocumentHostingController.updateRootView(with:rootModifier:)(&v176, v175);

      outlined destroy of RootModifier(v175);
    }

    goto LABEL_109;
  }

  if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v106 = v3;
    v155 = *(v107 + 32);
    goto LABEL_105;
  }

  __break(1u);
LABEL_150:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t outlined assign with take of ModifiedContent<AnyView, RootModifier>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.DocumentCommandsKey>(0, &lazy cache variable for type metadata for ModifiedContent<AnyView, RootModifier>, MEMORY[0x1E6981910], &type metadata for RootModifier, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t assignWithTake for RootModifier(uint64_t a1, uint64_t a2)
{
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  swift_weakTakeAssign();
  if (*(a1 + 48))
  {
    if (*(a2 + 48))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 24);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 24);
    }
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v4 = *(a1 + 88);
  if (v4 == 255)
  {
    goto LABEL_9;
  }

  v5 = *(a2 + 88);
  if (v5 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
LABEL_9:
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    goto LABEL_10;
  }

  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v5 & 1;
  outlined consume of SceneID(v6, v7, v4 & 1);
LABEL_10:
  v8 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t PlatformSceneCache.setPhase(_:id:host:)(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v11 = *a1;
  swift_beginAccess();
  v12 = *(v5 + 16);
  if (!*(v12 + 16))
  {
    return swift_endAccess();
  }

  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4 & 1);
  if ((v14 & 1) == 0)
  {
    return swift_endAccess();
  }

  v15 = *(*(v12 + 56) + 8 * v13);
  swift_endAccess();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v22 = a5;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v21, isUniquelyReferenced_nonNull_native);
  outlined destroy of HashableWeakBox<UIViewController>(v21);
  swift_beginAccess();

  outlined copy of SceneID(a2, a3, a4 & 1);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v6 + 16);
  *(v6 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a2, a3, a4 & 1, v17);
  outlined consume of SceneID(a2, a3, a4 & 1);
  *(v6 + 16) = v20;
  v18 = swift_endAccess();
  if (static AppGraph.shared)
  {
    MEMORY[0x1EEE9AC00](v18);

    static Update.ensure<A>(_:)();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  result = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      *(v16[7] + v10) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v15 >= result && (a3 & 1) == 0)
  {
    result = specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, a3 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_14:
    _s7SwiftUI15HashableWeakBoxVySo16UIViewControllerCGMaTm_0(0, &lazy cache variable for type metadata for HashableWeakBox<UIViewController>, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258, MEMORY[0x1E697E7A8]);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = result;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  outlined init with copy of HashableWeakBox<UIViewController>(a2, v18);
  return specialized _NativeDictionary._insert(at:key:value:)(v10, v18, a1, v16);
}

void closure #1 in PlatformSceneCache.setPhase(_:id:host:)(uint64_t a1, uint64_t a2)
{
  v24[3] = *MEMORY[0x1E69E9840];
  AppGraph.sceneList(namespace:)(0, 0, 2, v24);
  v3 = v24[0];

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      outlined init with copy of SceneList.Item(v5, v20);
      v7 = v21;
      v8 = v22;
      v9 = v23;
      swift_beginAccess();
      v10 = *(a2 + 16);
      if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8, v9), (v12 & 1) != 0))
      {
        v13 = *(*(v10 + 56) + 8 * v11);
        swift_endAccess();

        static Semantics.v6.getter();
        if (isLinkedOnOrAfter(_:)())
        {
          specialized Sequence<>.max()(v13, v19);
        }

        else
        {
          specialized Sequence<>.min()(v13, v19);
        }

        outlined destroy of SceneList.Item(v20);
        if (v19[0] == 3)
        {
          v14 = 0;
        }

        else
        {
          v14 = v19[0];
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
        }

        v16 = *(v6 + 2);
        v15 = *(v6 + 3);
        if (v16 >= v15 >> 1)
        {
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v6);
        }

        *(v6 + 2) = v16 + 1;
        v6[v16 + 32] = v14;
      }

      else
      {
        swift_endAccess();
        outlined destroy of SceneList.Item(v20);
      }

      v5 += 568;
      --v4;
    }

    while (v4);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  static Semantics.v6.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    specialized Sequence<>.max()(v6, v20, v17);
  }

  else
  {
    specialized Sequence<>.min()(v6, v20, v17);
  }

  v18 = v20[0];
  if (v20[0] == 3)
  {
    v18 = 0;
  }

  v20[0] = v18;
  if (AGGraphSetValue())
  {
    AppGraph.graphDidChange()();
  }
}

uint64_t assignWithCopy for RootModifier(uint64_t a1, uint64_t a2)
{
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  swift_weakCopyAssign();
  v4 = *(a2 + 48);
  if (*(a1 + 48))
  {
    v5 = (a1 + 24);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 24));
    }

    else
    {
      outlined destroy of AnyHashable(v5);
      v6 = *(a2 + 56);
      v7 = *(a2 + 40);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 40) = v7;
      *(a1 + 56) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 48) = v4;
    *(a1 + 56) = *(a2 + 56);
    (**(v4 - 8))(a1 + 24, a2 + 24);
  }

  else
  {
    v8 = *(a2 + 24);
    v9 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v9;
    *(a1 + 24) = v8;
  }

  *(a1 + 64) = *(a2 + 64);
  v10 = *(a2 + 88);
  if (*(a1 + 88) == 255)
  {
    if (v10 == 255)
    {
      v21 = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 72) = v21;
    }

    else
    {
      v17 = *(a2 + 72);
      v18 = *(a2 + 80);
      v19 = v10 & 1;
      outlined copy of SceneID(v17, v18, v10 & 1);
      *(a1 + 72) = v17;
      *(a1 + 80) = v18;
      *(a1 + 88) = v19;
    }
  }

  else if (v10 == 255)
  {
    outlined destroy of SceneID(a1 + 72);
    v20 = *(a2 + 88);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = v20;
  }

  else
  {
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v13 = v10 & 1;
    outlined copy of SceneID(v11, v12, v10 & 1);
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    v16 = *(a1 + 88);
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v13;
    outlined consume of SceneID(v14, v15, v16);
  }

  v22 = *(a1 + 96);
  v23 = *(a2 + 96);
  *(a1 + 96) = v23;
  v24 = v23;

  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X8>)
{
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 64);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
LABEL_9:
    v12 = *(result + 56);
    v13 = *(v12 + v6);
    if (!v7)
    {
      goto LABEL_11;
    }

    do
    {
      v14 = v5;
LABEL_15:
      v15 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v16 = *(v12 + (v15 | (v14 << 6)));
      if (v13 <= v16)
      {
        v13 = v16;
      }
    }

    while (v7);
LABEL_11:
    while (1)
    {
      v14 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        goto LABEL_20;
      }

      v7 = *(result + 64 + 8 * v14);
      ++v5;
      if (v7)
      {
        v5 = v14;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    while (v8 - 1 != v10)
    {
      v5 = v10 + 1;
      v11 = *(result + 72 + 8 * v10);
      v9 -= 64;
      ++v10;
      if (v11)
      {
        v7 = (v11 - 1) & v11;
        v6 = __clz(__rbit64(v11)) - v9;
        goto LABEL_9;
      }
    }

    v13 = 3;
LABEL_20:
    *a2 = v13;
  }

  return result;
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>, uint8x16_t a3@<Q1>)
{
  v3 = *(result + 16);
  if (!v3)
  {
    *a2 = 3;
    return result;
  }

  v4 = *(result + 32);
  v5 = v3 - 1;
  if (v3 != 1)
  {
    if (v3 < 5)
    {
      v6 = 1;
      goto LABEL_17;
    }

    if (v3 >= 0x21)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFE0;
      v8 = vdupq_n_s8(v4);
      v9 = (result + 49);
      v10 = v5 & 0xFFFFFFFFFFFFFFE0;
      a3 = v8;
      do
      {
        v8 = vmaxq_u8(v8, v9[-1]);
        a3 = vmaxq_u8(a3, *v9);
        v9 += 2;
        v10 -= 32;
      }

      while (v10);
      v11 = vmaxq_u8(v8, a3);
      v11.i8[0] = vmaxvq_u8(v11);
      v4 = v11.i32[0];
      if (v5 == v7)
      {
        goto LABEL_15;
      }

      if ((v5 & 0x1C) == 0)
      {
        v6 = v7 | 1;
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
    }

    v6 = v5 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v12 = vdup_n_s16(v4);
    v13 = (v7 + result + 33);
    v14 = v7 - (v5 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v15 = *v13++;
      a3.i32[0] = v15;
      a3.i64[0] = vmovl_u8(*a3.i8).u64[0];
      v12 = vmax_u16((*&v12 & 0xFF00FF00FF00FFLL), *a3.i8);
      v14 += 4;
    }

    while (v14);
    LOBYTE(v4) = vmaxv_u16(v12);
    if (v5 == (v5 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_15;
    }

LABEL_17:
    v16 = v3 - v6;
    v17 = (v6 + result + 32);
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v4 <= v19)
      {
        LOBYTE(v4) = v18;
      }

      --v16;
    }

    while (v16);
  }

LABEL_15:
  *a2 = v4;
  return result;
}