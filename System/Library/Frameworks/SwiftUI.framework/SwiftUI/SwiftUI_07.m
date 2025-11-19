uint64_t type metadata completion function for SheetPresentationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata accessor for NullSheetAnchor<SheetPreference.Key>()
{
  if (!lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>)
  {
    v0 = type metadata accessor for NullSheetAnchor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for NullSheetAnchor<SheetPreference.Key>);
    }
  }
}

void type metadata accessor for NullSheetAnchor<SheetPreference.Key>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for Attribute<()>()
{
  if (!lazy cache variable for type metadata for Attribute<()>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<()>);
    }
  }
}

void type metadata accessor for Binding<PresentationMode>()
{
  if (!lazy cache variable for type metadata for Binding<PresentationMode>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<PresentationMode>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IsSearchAllowedInput and conformance IsSearchAllowedInput()
{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput;
  if (!lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsSearchAllowedInput and conformance IsSearchAllowedInput);
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI24ScrollEnvironmentStorageCAC11Observation10ObservableAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance IsHandGestureShortcut(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v7 = *a1;
  v6 = a1[1];
  v13[2] = a1[2];
  v10 = v7;
  v11 = v6;
  v12 = a1[2];
  v8 = *(a3 + 8);
  outlined init with copy of _GraphInputs(v13, v14);
  LOBYTE(v3) = v8(&v10, a2, v3);
  v14[0] = v10;
  v14[1] = v11;
  v14[2] = v12;
  outlined destroy of _GraphInputs(v14);
  return v3 & 1;
}

uint64_t static SourceFormula.makeViewList<A>(view:source:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
  {

    return static _ViewListOutputs.emptyViewList(inputs:)();
  }

  else
  {
    if ((a5 & 0x100000000) != 0)
    {
      _GraphValue.init(_:)();
    }

    else
    {
      type metadata accessor for Optional();
      _GraphValue.init(_:)();
      swift_getWitnessTable();
    }

    return static View.makeDebuggableViewList(view:inputs:)();
  }
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(unint64_t *a1, void (*a2)(void), uint64_t a3, unint64_t *a4)
{
  type metadata accessor for SourceInput<ListStyleContent>(0, a1, a2);
  lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(a4, a1, a2);
  PropertyList.subscript.getter();
  if (v9)
  {
    v7 = *(v9 + 16);
  }

  else
  {
    v7 = 0;
  }

  PropertyList.subscript.setter();
  return v7;
}

uint64_t lazy protocol witness table accessor for type SourceInput<ListStyleContent> and conformance SourceInput<A>(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SourceInput<ListStyleContent>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for SourceInput<ListStyleContent>(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for SourceInput();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_18BDA7B0C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance AccessibilityNodesKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = unk_1ED5A77B0;
  *a1 = static AccessibilityNodesKey.defaultValue;
  a1[1] = v2;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier>, type metadata accessor for ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>, PresentedSceneValueInputModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for _ViewModifier_Content<RootModifier>()
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<RootModifier>)
  {
    lazy protocol witness table accessor for type RootModifier and conformance RootModifier();
    v0 = type metadata accessor for _ViewModifier_Content();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ViewModifier_Content<RootModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier>(255);
    lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(&lazy protocol witness table cache variable for type _ViewModifier_Content<RootModifier> and conformance _ViewModifier_Content<A>, type metadata accessor for _ViewModifier_Content<RootModifier>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<RootModifier>, RootEnvironmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SceneBridge and conformance SceneBridge(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier, &type metadata for PresentedSceneValueInputModifier);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static AccessibilityLabeledContentRootModifier._makeViewInputs(modifier:inputs:));
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, specialized static ClearNavigationContextModifier._makeViewInputs(modifier:inputs:));
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type AccessibilityClearLabeledContentModifier and conformance AccessibilityClearLabeledContentModifier, &type metadata for AccessibilityClearLabeledContentModifier);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type IndexViewPlacementModifier and conformance IndexViewPlacementModifier, &type metadata for IndexViewPlacementModifier);
}

{
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(a1, a2, a3, a4, lazy protocol witness table accessor for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier, &type metadata for TableRowForegroundStyleModifier);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PresentedSceneValueInputModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v4, v8, a3, a4);
}

unint64_t lazy protocol witness table accessor for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier()
{
  result = lazy protocol witness table cache variable for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier;
  if (!lazy protocol witness table cache variable for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentedSceneValueInputModifier and conformance PresentedSceneValueInputModifier);
  }

  return result;
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance PresentedSceneValueInputModifier()
{
  AGGraphCreateOffsetAttribute2();
  lazy protocol witness table accessor for type PresentedSceneValueInput and conformance PresentedSceneValueInput();
  return PropertyList.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type PresentedSceneValueInput and conformance PresentedSceneValueInput()
{
  result = lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput;
  if (!lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput;
  if (!lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentedSceneValueInput and conformance PresentedSceneValueInput);
  }

  return result;
}

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF9FE08[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F0003958;
  outlined init with copy of _ViewInputs(a2, v25);
  type metadata accessor for ContentConfigurationBasedRootEnvironment();
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFAC088;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFD80F8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFD8AD0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFF0320;
  outlined init with copy of _ViewInputs(a2, v25);
  type metadata accessor for SearchEnvironmentWritingModifier(0);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFB14F0[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFEAF78[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFF0668;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE7E98;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA7FB0[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF96D90;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF9EAA0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFF9EAB0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFAC078;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  v7 = *(a2 + 16);
  v19 = *(a2 + 32);
  v20 = v5;
  v8 = *(a2 + 16);
  v21 = v6;
  v22 = *(a2 + 80);
  v17 = *a2;
  v18 = v7;
  LODWORD(v25) = a1;
  *(&v25 + 1) = _s14AttributeGraph0A0V13dynamicMemberACyqd__Gs7KeyPathCyxqd__G_tcluigqd__xcfU_7SwiftUI19RefreshableModifier33_C0C4B6507641C712ECFA855200E15009LLV_yyYaYbcTG5TA_0;
  *&v26 = swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(v4, v31);
  type metadata accessor for @Sendable ()();
  type metadata accessor for Map<RefreshableModifier, @Sendable ()>();
  lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(&lazy protocol witness table cache variable for type Map<RefreshableModifier, @Sendable ()> and conformance Map<A, B>, type metadata accessor for Map<RefreshableModifier, @Sendable ()>);

  LODWORD(v4) = Attribute.init<A>(body:value:flags:update:)();

  swift_beginAccess();
  LODWORD(v31[0]) = *(v8 + 16);
  DWORD1(v31[0]) = v4;
  UniqueID.init()();
  v25 = v31[0];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RefreshableModifier.ChildEnvironment and conformance RefreshableModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter();
  v23[2] = v19;
  v23[3] = v20;
  v23[4] = v21;
  v24 = v22;
  v23[0] = v17;
  v23[1] = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v11 = v17;
  v12 = v18;
  v9 = outlined init with copy of _ViewInputs(v23, v31);
  a3(v9, &v11);
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v25 = v11;
  v26 = v12;
  outlined destroy of _ViewInputs(&v25);
  v31[2] = v19;
  v31[3] = v20;
  v31[4] = v21;
  v32 = v22;
  v31[0] = v17;
  v31[1] = v18;
  return outlined destroy of _ViewInputs(v31);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCB2F8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCDA60;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCDA50;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFCF130;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFDB8B8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFDEBD8;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE41E0[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE43C0;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFEC258[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFEEB48[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFFD450;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFFD460[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFFFE70;
  outlined init with copy of _ViewInputs(a2, v25);
  type metadata accessor for KeyPressModifier(0);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F0010DD8[0];
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1F00118C0[0];
  outlined init with copy of _ViewInputs(a2, v25);
  type metadata accessor for TabViewCustomizationModifier();
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA1328;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for _SymbolEffectModifier, &protocol witness table for _SymbolEffectModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA1338;
  outlined init with copy of _ViewInputs(a2, v25);
  v6(v23, &v15, &type metadata for _SymbolEffectsModifier, &protocol witness table for _SymbolEffectsModifier);
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFA1348;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

{
  v4 = *(a2 + 48);
  v18 = *(a2 + 32);
  v19 = v4;
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  v5 = *(a2 + 16);
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1EFFACD08;
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for _IndefiniteSymbolEffectModifier(0);
  v6(v24, &v16, v7, &protocol witness table for _IndefiniteSymbolEffectModifier);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = *(a2 + 48);
  v18 = *(a2 + 32);
  v19 = v4;
  v20 = *(a2 + 64);
  v21 = *(a2 + 80);
  v5 = *(a2 + 16);
  v16 = *a2;
  v17 = v5;
  LODWORD(v24[0]) = a1;
  v6 = off_1EFFACD28[0];
  outlined init with copy of _ViewInputs(a2, v26);
  v7 = type metadata accessor for _ConditionalSymbolEffectModifier(0);
  v6(v24, &v16, v7, &protocol witness table for _ConditionalSymbolEffectModifier);
  v22[2] = v18;
  v22[3] = v19;
  v22[4] = v20;
  v23 = v21;
  v22[0] = v16;
  v22[1] = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v10 = v16;
  v11 = v17;
  v8 = outlined init with copy of _ViewInputs(v22, v26);
  a3(v8, &v10);
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v25 = v15;
  v24[0] = v10;
  v24[1] = v11;
  outlined destroy of _ViewInputs(v24);
  v26[2] = v18;
  v26[3] = v19;
  v26[4] = v20;
  v27 = v21;
  v26[0] = v16;
  v26[1] = v17;
  return outlined destroy of _ViewInputs(v26);
}

{
  v4 = *(a2 + 48);
  v17 = *(a2 + 32);
  v18 = v4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 80);
  v5 = *(a2 + 16);
  v15 = *a2;
  v16 = v5;
  LODWORD(v23[0]) = a1;
  v6 = off_1EFFE1D10;
  outlined init with copy of _ViewInputs(a2, v25);
  v6();
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v19;
  v22 = v20;
  v21[0] = v15;
  v21[1] = v16;
  v11 = v17;
  v12 = v18;
  v13 = v19;
  v14 = v20;
  v9 = v15;
  v10 = v16;
  v7 = outlined init with copy of _ViewInputs(v21, v25);
  a3(v7, &v9);
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24 = v14;
  v23[0] = v9;
  v23[1] = v10;
  outlined destroy of _ViewInputs(v23);
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v19;
  v26 = v20;
  v25[0] = v15;
  v25[1] = v16;
  return outlined destroy of _ViewInputs(v25);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RootEnvironmentModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance RootEnvironmentModifier(int *a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a2 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v10 = 0;
  v11 = 1;
  v6[0] = v2;
  v6[1] = v4;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child();
  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of RootEnvironmentModifier.Child(v6);
  return _GraphInputs.environment.setter();
}

unint64_t lazy protocol witness table accessor for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child()
{
  result = lazy protocol witness table cache variable for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child;
  if (!lazy protocol witness table cache variable for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RootEnvironmentModifier.Child and conformance RootEnvironmentModifier.Child);
  }

  return result;
}

uint64_t initializeWithCopy for RootEnvironmentModifier.Child(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (*(a2 + 64) == 1)
  {
    v5 = *(a2 + 24);
    *v4 = *(a2 + 8);
    v4[1] = v5;
    v6 = *(a2 + 56);
    v4[2] = *(a2 + 40);
    v4[3] = v6;
  }

  else
  {
    swift_weakCopyInit();
    swift_weakCopyInit();
    swift_weakCopyInit();
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 56);
    if (v7 == 255)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      v8 = *(a2 + 40);
      v9 = *(a2 + 48);
      v10 = v7 & 1;
      outlined copy of SceneID(v8, v9, v7 & 1);
      *(a1 + 40) = v8;
      *(a1 + 48) = v9;
      *(a1 + 56) = v10;
    }

    v11 = *(a2 + 64);
    *(a1 + 64) = v11;
    v12 = v11;
  }

  return a1;
}

void destroy for RootEnvironmentModifier.Child(uint64_t a1)
{
  if (*(a1 + 64) != 1)
  {
    swift_weakDestroy();
    swift_weakDestroy();
    swift_weakDestroy();
    v3 = *(a1 + 56);
    if (v3 != 255)
    {
      outlined consume of SceneID(*(a1 + 40), *(a1 + 48), v3 & 1);
    }

    v4 = *(a1 + 64);
  }
}

uint64_t protocol witness for ViewGraphFeature.modifyViewOutputs(outputs:inputs:graph:) in conformance PPTFeature()
{
  PreferencesOutputs.subscript.getter();
  result = AGCreateWeakAttribute();
  *v0 = result;
  return result;
}

uint64_t _s7SwiftUI10AppStorageV3key9transform5store12defaultValueACyxGSS_AA012UserDefaultsI9Transform_pXpSo06NSUserK0CSgxtcfCSb_Tt3g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  type metadata accessor for PropertyListTransform<Data>(0, &lazy cache variable for type metadata for UserDefaultLocation<Bool>, MEMORY[0x1E69E6370], type metadata accessor for UserDefaultLocation);
  v12 = swift_allocObject();
  *(v12 + 72) = 0;
  *(v12 + 80) = 2;
  *(v12 + 88) = [objc_opt_self() standardUserDefaults];
  *(v12 + 96) = 0;
  *(v12 + 104) = 0;
  *(v12 + 108) = 0;
  *(v12 + 116) = 1;
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 48) = a6;
  *(v12 + 56) = a5;
  *(v12 + 64) = 0;
  return v12;
}

double specialized static ScalarUserDefaultsValueTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x18D00C850](a2, a3);
  v9 = [a1 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined destroy of Any?(v13);
    *(a4 + 24) = MEMORY[0x1E69E6370];
    v10 = MEMORY[0x18D00C850](a2, a3);
    v11 = [a1 BOOLForKey_];

    *a4 = v11;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    outlined destroy of Any?(v13);
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

char *AppStorage.init<A>(wrappedValue:_:store:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for RawRepresentableTransform();
  v11 = specialized AppStorage.init(key:transform:store:defaultValue:)(a2, a3, v10, &protocol witness table for RawRepresentableTransform<A, B>, a4, a1, a5);
  (*(*(a5 - 8) + 8))(a1, a5);
  return v11;
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)(a1, a2, a3, a4, a5);
}

{
  return AppStorage.init<A>(wrappedValue:_:store:)(a1, a2, a3, a4, a5);
}

id GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(char a1, char a2, uint64_t a3)
{
  v5 = v3[5];
  v108 = v3[4];
  v109[0] = v5;
  *(v109 + 12) = *(v3 + 92);
  v6 = v3[1];
  v105 = *v3;
  v106 = v6;
  v7 = v3[3];
  *v107 = v3[2];
  *&v107[16] = v7;
  v8 = v105;
  v9 = BYTE8(v105);
  if (BYTE8(v105) == 2)
  {
    v86 = a3;
    v11 = *(v105 + 32);
    v101 = *(v105 + 16);
    v102 = v11;
    v103 = *(v105 + 48);
    v12 = *(v105 + 32);
    v95 = *(v105 + 16);
    v96 = v12;
    *&v97 = *(v105 + 48);
    outlined init with copy of ResolvedVectorGlyph(&v101, &v89);
    v13 = ResolvedVectorGlyph.glyph.getter();
    if (v13)
    {
      v14 = v13;
      v15 = [v13 name];
      if (v15)
      {
        v16 = v15;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v99 = v108;
        v100[0] = v109[0];
        *(v100 + 12) = *(v109 + 12);
        v95 = v105;
        v96 = v106;
        v97 = *v107;
        v98 = *&v107[16];
        v89 = v101;
        v90 = v102;
        *&v91 = v103;
        v20 = ResolvedVectorGlyph.value.getter();
        v104 = v102;
        v88 = v102;
        outlined init with copy of Image.Location(&v104, &v87);
        v21 = GraphicsImage.image(with:variableValue:at:)(v17, v19, v20 | ((HIDWORD(v20) & 1) << 32), &v88);

        outlined consume of Image.Location(v88);
        if (v21)
        {
          if (a1)
          {
            [v14 pointSize];
            v23 = v22;
            v24 = specialized UIImageSymbolWeight.init(_:)([v14 glyphWeight]);
            v25 = [v14 glyphSize];
            if ((v25 - 1) >= 3)
            {
              v26 = -1;
            }

            else
            {
              v26 = v25;
            }

            v27 = [objc_opt_self() configurationWithPointSize:v24 weight:v26 scale:v23];
            MEMORY[0x1EEE9AC00](v27);
            v85[2] = v14;
            v85[3] = &v101;
            v28 = swift_allocObject();
            *(v28 + 16) = partial apply for closure #1 in GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:);
            *(v28 + 24) = v85;
            *&v97 = partial apply for thunk for @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
            *(&v97 + 1) = v28;
            *&v95 = MEMORY[0x1E69E9820];
            *(&v95 + 1) = 1107296256;
            *&v96 = thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ();
            *(&v96 + 1) = &block_descriptor_3;
            v29 = _Block_copy(&v95);
            v30 = objc_opt_self();
            v31 = v27;

            v32 = [v30 traitCollectionWithTraits_];
            _Block_release(v29);

            isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

            if (isEscapingClosureAtFileLocation)
            {
              __break(1u);
              goto LABEL_58;
            }

            isEscapingClosureAtFileLocation = [v31 configurationWithTraitCollection_];

LABEL_29:
            v95 = v101;
            v96 = v102;
            *&v97 = v103;
            ResolvedVectorGlyph.resolvedRenderingMode.getter();
            if (v88 <= 8u)
            {
              if (((1 << v88) & 0x64) != 0)
              {
                v32 = [v21 imageWithRenderingMode_];
                if ((v108 & 1) == 0)
                {
                  v95 = *&v107[12];
                  LODWORD(v96) = *&v107[28];
                  v60 = objc_opt_self();
                  type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
                  v61 = swift_allocObject();
                  *(v61 + 16) = xmmword_18CD69590;
                  Color.ResolvedHDR.kitColor.getter();
                  objc_opt_self();
                  *(v61 + 32) = swift_dynamicCastObjCClassUnconditional();
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
                  isa = Array._bridgeToObjectiveC()().super.isa;

                  v63 = [v60 _configurationWithHierarchicalColors_];

                  v64 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];
                  isEscapingClosureAtFileLocation = v64;
                }

                goto LABEL_56;
              }

              if (((1 << v88) & 0x88) != 0)
              {
                v99 = v108;
                v100[0] = v109[0];
                *(v100 + 12) = *(v109 + 12);
                v95 = v105;
                v96 = v106;
                v97 = *v107;
                v98 = *&v107[16];
                GraphicsImage.styleResolverMode.getter();
                v31 = WORD4(v89);

                if (v86)
                {
                  v32 = v21;

                  EnvironmentValues.init()();
                  v28 = v89;
                  if (one-time initialization token for configuredForPlatform == -1)
                  {
LABEL_34:
                    if (v28)
                    {
                      if (!static EnvironmentValues.configuredForPlatform || v28 != static EnvironmentValues.configuredForPlatform)
                      {
                        EnvironmentValues._configureForPlatform(traitCollection:)(0);
                      }
                    }

                    else if (static EnvironmentValues.configuredForPlatform)
                    {

                      EnvironmentValues.plist.setter();
                    }

                    outlined init with copy of GraphicsImage(&v105, &v95);
                    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_So7UIColorCs5NeverOTg50121_s7SwiftUI13GraphicsImageVAAE012makePlatformD024fixedSymbolConfiguration16flattenMaskColor13colorResolverSo7UIImageCSgSb_v31AA0F8ItemListV0P0V0dlN0VSgtFSo7D9CSiXEfU0_0G2UI0lyZ0V0Y0V0j5ColorR0VAL17EnvironmentValuesVAL0iJ0VTf1cn_nTf4ngnd_n(0, v31);
                    outlined destroy of GraphicsImage(&v105);

                    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
                    v73 = Array._bridgeToObjectiveC()().super.isa;

                    v74 = [objc_opt_self() configurationWithPaletteColors_];

                    v75 = v74;
                    v76 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];

                    isEscapingClosureAtFileLocation = v76;
                    goto LABEL_56;
                  }

LABEL_58:
                  swift_once();
                  goto LABEL_34;
                }

                if (v108)
                {
                  v72 = v21;
                }

                else
                {
                  v95 = *&v107[12];
                  LODWORD(v96) = *&v107[28];
                  type metadata accessor for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>();
                  v77 = swift_allocObject();
                  *(v77 + 16) = xmmword_18CD63400;
                  v78 = *MEMORY[0x1E69DE8A8];
                  *(v77 + 32) = *MEMORY[0x1E69DE8A8];
                  v79 = v21;
                  v80 = v78;
                  Color.ResolvedHDR.kitColor.getter();
                  objc_opt_self();
                  *(v77 + 40) = swift_dynamicCastObjCClassUnconditional();
                  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23_UIImageNamedColorStylea_So7UIColorCTt0g5Tf4g_n(v77);
                  swift_setDeallocating();
                  outlined destroy of (_UIImageNamedColorStyle, UIColor)(v77 + 32);
                  swift_deallocClassInstance();
                  type metadata accessor for _UIImageNamedColorStyle(0);
                  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
                  lazy protocol witness table accessor for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle();
                  v81 = Dictionary._bridgeToObjectiveC()().super.isa;

                  v82 = [objc_opt_self() _configurationWithNamedColorStyles_];

                  v83 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];
                  isEscapingClosureAtFileLocation = v83;
                }

                v32 = [v21 imageWithRenderingMode_];

LABEL_56:
                v84 = [v32 imageWithConfiguration_];
                outlined destroy of ResolvedVectorGlyph(&v101);

                return v84;
              }

              if (((1 << v88) & 0x110) != 0)
              {
                goto LABEL_44;
              }
            }

            if (v88)
            {
              if ((v108 & 1) == 0)
              {
                v89 = *&v107[12];
                LODWORD(v90) = *&v107[28];
                type metadata accessor for _ContiguousArrayStorage<(_UIImageNamedColorStyle, UIColor)>();
                v66 = swift_allocObject();
                *(v66 + 16) = xmmword_18CD63400;
                v67 = *MEMORY[0x1E69DE8A8];
                *(v66 + 32) = *MEMORY[0x1E69DE8A8];
                v68 = v67;
                Color.ResolvedHDR.kitColor.getter();
                objc_opt_self();
                *(v66 + 40) = swift_dynamicCastObjCClassUnconditional();
                _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo23_UIImageNamedColorStylea_So7UIColorCTt0g5Tf4g_n(v66);
                swift_setDeallocating();
                outlined destroy of (_UIImageNamedColorStyle, UIColor)(v66 + 32);
                swift_deallocClassInstance();
                type metadata accessor for _UIImageNamedColorStyle(0);
                type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor);
                lazy protocol witness table accessor for type _UIImageNamedColorStyle and conformance _UIImageNamedColorStyle();
                v69 = Dictionary._bridgeToObjectiveC()().super.isa;

                v70 = [objc_opt_self() _configurationWithNamedColorStyles_];

                v71 = [isEscapingClosureAtFileLocation configurationByApplyingConfiguration_];
                isEscapingClosureAtFileLocation = v71;
              }

              v65 = [v21 imageWithRenderingMode_];
            }

            else
            {
LABEL_44:
              v65 = [v21 imageWithRenderingMode_];
            }

            v32 = v65;
            goto LABEL_56;
          }

          v95 = v101;
          v96 = v102;
          *&v97 = v103;
          ResolvedVectorGlyph.resolvedRenderingMode.getter();
          if (v89 == 3)
          {
            isEscapingClosureAtFileLocation = [objc_opt_self() unspecifiedConfiguration];
            goto LABEL_29;
          }

          outlined destroy of ResolvedVectorGlyph(&v101);

          return v21;
        }
      }
    }

    outlined destroy of ResolvedVectorGlyph(&v101);
  }

  v99 = v108;
  v100[0] = v109[0];
  *(v100 + 12) = *(v109 + 12);
  v95 = v105;
  v96 = v106;
  v97 = *v107;
  v98 = *&v107[16];
  v93 = v108;
  v94[0] = v109[0];
  *(v94 + 12) = *(v109 + 12);
  v89 = v105;
  v90 = v106;
  v91 = *v107;
  v92 = *&v107[16];
  GraphicsImage.size.getter();
  v36.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(v35, v34), 0).value;
  if (!v36.value)
  {
    return 0;
  }

  value = v36.value;
  v99 = v108;
  v100[0] = v109[0];
  *(v100 + 12) = *(v109 + 12);
  v95 = v105;
  v96 = v106;
  v97 = *v107;
  v98 = *&v107[16];
  GraphicsImage.scale.getter();
  v93 = v108;
  v94[0] = v109[0];
  *(v94 + 12) = *(v109 + 12);
  v89 = v105;
  v90 = v106;
  v91 = *v107;
  v92 = *&v107[16];
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:value scale:qword_18CD725D8[GraphicsImage.bitmapOrientation.getter()] orientation:v38];
  v40 = v39;
  v41 = *&v107[12];
  v42 = *&v107[20];
  v43 = *&v107[28];
  v44 = v108;
  if (v108)
  {
    v45 = 1;
  }

  else
  {
    v45 = 2;
  }

  v21 = [v39 imageWithRenderingMode_];

  if ((a2 & 1) != 0 && (v44 & 1) == 0)
  {
    *&v89 = v41;
    *(&v89 + 1) = v42;
    LODWORD(v90) = v43;
    v46 = Color.ResolvedHDR.kitColor.getter();
    objc_opt_self();
    v47 = [v21 imageWithTintColor_];

    v21 = v47;
  }

  if (v9 != 2)
  {

    return v21;
  }

  v48 = *(v8 + 24);
  v49 = *(v8 + 32);
  v50 = *(v8 + 40);
  v51 = *(v8 + 44);
  v52 = *(v8 + 45);
  v53 = *(v8 + 48);
  *&v95 = *(v8 + 16);
  BYTE8(v95) = v48;
  *&v96 = v49;
  DWORD2(v96) = v50;
  BYTE12(v96) = v51;
  BYTE13(v96) = v52;
  *&v97 = v53;
  v54 = v95;
  outlined copy of Image.Location(v49);
  v55 = v53;
  v56 = ResolvedVectorGlyph.glyph.getter();
  if (!v56)
  {

    outlined consume of Image.Location(v49);
    return v21;
  }

  v57 = v56;
  result = [v21 _imageWithSymbolMetricsFromNamedVectorGlyph_];
  if (result)
  {
    v59 = result;

    outlined consume of Image.Location(v49);
    return v59;
  }

  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed UIMutableTraits) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id partial apply for closure #1 in GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [v3 scale];
  [a1 setDisplayScale_];
  v5 = *(v4 + 8);

  return [a1 setLayoutDirection_];
}

unint64_t GraphicsImage.image(with:variableValue:at:)(uint64_t a1, void *a2, uint64_t a3, void **a4)
{
  v4 = *a4;
  if ((a3 & 0x100000000) != 0)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        v18 = v4;
        v19 = MEMORY[0x18D00C850](a1, a2);
        v12 = [objc_opt_self() imageNamed:v19 inBundle:v18];
        outlined consume of Image.Location(v4);

        return v12;
      }

      v6 = MEMORY[0x18D00C850]();
      v7 = [objc_opt_self() _systemImageNamed_];
    }

    else
    {
      v6 = MEMORY[0x18D00C850]();
      v7 = [objc_opt_self() systemImageNamed_];
    }
  }

  else
  {
    v5 = *&a3;
    if (!v4)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);

      v10._countAndFlagsBits = a1;
      v10._object = a2;
      v20.value.super.isa = 0;
      return UIImage.init(systemName:variableValue:configuration:)(v10, v5, v20);
    }

    if (v4 != 1)
    {
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage);

      outlined copy of Image.Location(v4);
      v15._countAndFlagsBits = a1;
      v15._object = a2;
      v21.value.super.isa = v4;
      v21.is_nil = 0;
      return UIImage.init(named:in:variableValue:configuration:)(v15, v21, v5, v22);
    }

    v6 = MEMORY[0x18D00C850]();
    v7 = [objc_opt_self() _systemImageNamed_variableValue_withConfiguration_];
  }

  v12 = v7;

  return v12;
}

void outlined consume of Image.Location(id a1)
{
  if (a1 >= 2)
  {
  }
}

uint64_t specialized UIImageSymbolWeight.init(_:)(uint64_t result)
{
  if ((result - 1) >= 9)
  {
    return 4;
  }

  return result;
}

uint64_t type metadata accessor for RawRepresentableTransform()
{
  return swift_getGenericMetadata();
}

{
  return __swift_instantiateGenericMetadata();
}

char *specialized AppStorage.init(key:transform:store:defaultValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UserDefaultLocation();
  (*(v14 + 16))(v16, a6, a7);
  swift_allocObject();
  return UserDefaultLocation.init(key:transform:store:defaultValue:base:)(a1, a2, a3, a4, a5, v16, 0);
}

char *UserDefaultLocation.init(key:transform:store:defaultValue:base:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *v7;
  *&v7[*(*v7 + 128)] = 0;
  v15 = *(v14 + 80);
  v16 = *(v15 - 8);
  (*(v16 + 56))(&v7[*(*v7 + 136)], 1, 1, v15);
  v17 = *(*v7 + 144);
  *&v7[v17] = [objc_opt_self() standardUserDefaults];
  *&v7[*(*v7 + 152)] = 0;
  v7[*(*v7 + 160)] = 0;
  v18 = &v7[*(*v7 + 168)];
  *v18 = 0;
  v18[8] = 1;
  *&v7[*(*v7 + 112)] = a5;
  *(v7 + 2) = a1;
  *(v7 + 3) = a2;
  *(v7 + 4) = a3;
  *(v7 + 5) = a4;
  (*(v16 + 32))(&v7[*(*v7 + 104)], a6, v15);
  *&v7[*(*v7 + 120)] = a7;
  return v7;
}

uint64_t type metadata completion function for FocusedValue.Content()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

void specialized static AppStorage._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GraphHost();
  v4 = MEMORY[0x18D00B7D0]();
  v5 = *(a3 + 16);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = AGCreateWeakAttribute();
  specialized UserDefaultPropertyBox.init(host:environment:signal:)(v4, v6, v7);
  v9 = v8;

  type metadata accessor for UserDefaultPropertyBox();
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  type metadata accessor for AppStorage();
  static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)();
}

uint64_t specialized UserDefaultPropertyBox.init(host:environment:signal:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a3;
  v5 = HIDWORD(a3);
  v6 = type metadata accessor for UserDefaultObserver();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  swift_weakInit();
  v12 = v3;
  v13 = v5;
  v14 = 0;
  outlined init with take of UserDefaultObserver.Target(v11, &v7[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target]);
  v10.receiver = v7;
  v10.super_class = v6;
  objc_msgSendSuper2(&v10, sel_init);
  return a2;
}

uint64_t initializeWithTake for UserDefaultObserver.Target(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 >= 2)
  {
    v2 = *a2 + 2;
  }

  if (v2 == 1)
  {
    *result = *a2;
    *(result + 16) = 1;
  }

  else
  {
    result = swift_weakTakeInit();
    *(result + 8) = *(a2 + 8);
    *(result + 16) = 0;
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_18BDAA230(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = v3;
  return a1;
}

uint64_t type metadata completion function for FocusedValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  result = a4(319, *(a1 + 16));
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t static _TupleScene._makeScene(scene:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  v33 = *a2;
  v5 = *a1;
  v34 = v4;
  *v35 = a2[2];
  *&v35[12] = *(a2 + 44);
  _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA05SceneD0V_Tt1g5(a3, v31);
  v6 = *v31;
  *&v31[52] = *&v35[12];
  *&v31[40] = *v35;
  *&v31[24] = v34;
  *&v31[8] = v33;
  *v31 = v5;
  *&v31[72] = 0;
  v32 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    outlined init with copy of _SceneInputs(&v33, v29);
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v8 = (v8 + 24);
      *&v31[72] = AGTupleElementOffset();
      v29[0] = v9;
      List = type metadata accessor for _TupleScene.MakeList();
      TypeConformance<>.visitType<A>(visitor:)(v31, List, &protocol witness table for _TupleScene<A>.MakeList);
      --v7;
    }

    while (v7);

    v11 = v32;
  }

  else
  {
    outlined init with copy of _SceneInputs(&v33, v29);

    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  if (v12)
  {
    *&v29[0] = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = *&v29[0];
    v14 = (v11 + 40);
    do
    {
      v15 = *(v14 - 1);
      v16 = *v14;
      *&v29[0] = v13;
      v17 = *(v13 + 16);
      v18 = *(v13 + 24);

      if (v17 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
        v13 = *&v29[0];
      }

      v14 += 4;
      *(v13 + 16) = v17 + 1;
      v19 = v13 + 16 * v17;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      --v12;
    }

    while (v12);
  }

  PreferencesOutputs.init()();
  v27 = *&v29[0];
  v28 = DWORD2(v29[0]);
  v20 = *(*&v35[16] + 16);
  if (v20)
  {
    lazy protocol witness table accessor for type PreferenceKeys and conformance PreferenceKeys();

    v21 = -v20;
    v22 = 1;
    do
    {
      v23 = protocol witness for Collection.subscript.read in conformance PreferenceKeys();
      v23(v29, 0);
      static PreferenceKey.visitKey<A>(_:)();
      ++v22;
    }

    while (v21 + v22 != 1);
  }

  else
  {
  }

  *a4 = v27;
  *(a4 + 8) = v28;
  v29[2] = *&v31[32];
  v29[3] = *&v31[48];
  v29[4] = *&v31[64];
  v30 = v32;
  v29[0] = *v31;
  v29[1] = *&v31[16];
  v24 = type metadata accessor for _TupleScene.MakeList();
  return (*(*(v24 - 8) + 8))(v29, v24);
}

unint64_t lazy protocol witness table accessor for type SceneDescriptor and conformance SceneDescriptor()
{
  result = lazy protocol witness table cache variable for type SceneDescriptor and conformance SceneDescriptor;
  if (!lazy protocol witness table cache variable for type SceneDescriptor and conformance SceneDescriptor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneDescriptor and conformance SceneDescriptor);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>)
  {
    _s7SwiftUI21ViewInputFlagModifierVyAA014InAdaptableTabC7ContextVGMaTm_0(255, &lazy cache variable for type metadata for TupleTypeDescription<SceneDescriptor>, lazy protocol witness table accessor for type SceneDescriptor and conformance SceneDescriptor, &type metadata for SceneDescriptor, MEMORY[0x1E697FAA8]);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>);
    }
  }
}

uint64_t _TupleScene.MakeList.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for _TupleScene();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  AGGraphCreateOffsetAttribute2();
  _GraphValue.init(_:)();
  v8 = *(v4 + 24);
  v24[0] = *(v4 + 8);
  v24[1] = v8;
  v25[0] = *(v4 + 40);
  *(v25 + 12) = *(v4 + 52);
  v9 = *(v4 + 24);
  v18 = *(v4 + 8);
  v19 = v9;
  *v20 = *(v4 + 40);
  *&v20[12] = *(v4 + 52);
  v10 = *(a4 + 32);
  outlined init with copy of _SceneInputs(v24, v26);
  v10(&v22, v21, &v18, a3, a4);
  v26[0] = v18;
  v26[1] = v19;
  v27[0] = *v20;
  *(v27 + 12) = *&v20[12];
  outlined destroy of _SceneInputs(v26);
  v11 = v22;
  v12 = v23;
  v13 = *(v4 + 80);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 16 * v16;
  *(v17 + 32) = v11;
  *(v17 + 40) = v12;
  *(v5 + 80) = v13;
  return result;
}

uint64_t static Commands._makeCommands(content:inputs:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a2[1];
  v31 = *a2;
  v32 = v4;
  v33[0] = a2[2];
  *(v33 + 12) = *(a2 + 44);
  static DynamicPropertyCache.fields(of:)();
  v5 = v38;
  v28 = v31;
  v29 = v32;
  v30[0] = v33[0];
  *(v30 + 12) = *(v33 + 12);
  v14 = DWORD1(v38);
  v15 = v3;
  v16 = *(&v37 + 1);
  v17 = v37;
  v34 = v37;
  LOBYTE(v35) = v38;
  DWORD1(v35) = DWORD1(v38);
  outlined init with copy of _CommandsInputs(&v31, &v37);
  static Commands.makeBody(commands:inputs:fields:)();
  v6 = *(&v37 + 1);
  v13 = v37;
  LOBYTE(v3) = v38;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = v28;
  v35 = v29;
  v36[0] = v30[0];
  *(v36 + 12) = *(v30 + 12);
  v25 = v28;
  v26 = v29;
  v27[0] = v30[0];
  *(v27 + 12) = *(v30 + 12);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = *(AssociatedConformanceWitness + 32);
  outlined init with copy of _CommandsInputs(&v34, &v37);
  v9(&v19, v24, &v25, AssociatedTypeWitness, AssociatedConformanceWitness);
  v37 = v25;
  v38 = v26;
  v39[0] = v27[0];
  *(v39 + 12) = *(v27 + 12);
  outlined destroy of _CommandsInputs(&v37);
  v10 = v19;
  v11 = v20;
  if ((v3 & 1) == 0)
  {
    v24[0] = v13;
    v24[1] = v6;
    v23 = v15;
    v19 = v17;
    v20 = v16;
    v21 = v5;
    v22 = v14;
    _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
  }

  v25 = v28;
  v26 = v29;
  v27[0] = v30[0];
  *(v27 + 12) = *(v30 + 12);
  outlined destroy of _CommandsInputs(&v25);
  result = outlined consume of DynamicPropertyCache.Fields.Layout();
  *a3 = v10;
  *(a3 + 8) = v11;
  return result;
}

uint64_t static Commands.makeBody(commands:inputs:fields:)()
{
  if (AGTypeID.isValueType.getter())
  {
    type metadata accessor for CommandsBodyAccessor();
    swift_getWitnessTable();
    return BodyAccessor.makeBody(container:inputs:fields:)();
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v1 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized static FocusedObject._makeProperty<A>(in:container:fieldOffset:inputs:)()
{
  v4 = *MEMORY[0x1E69E9840];
  Attribute.init<A>(body:value:flags:update:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.getter();
  v0 = AGCreateWeakAttribute();
  StoreBox.init(host:focusedValues:signal:)(v3, v0, &v3);
  v1 = type metadata accessor for StoreBox();
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  type metadata accessor for FocusedObject();
  static DynamicProperty.addTreeValue<A, B>(_:as:at:in:flags:)();
  return (*(*(v1 - 8) + 8))(&v3, v1);
}

uint64_t StoreBox.init(host:focusedValues:signal:)@<X0>(int a1@<W1>, unint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = HIDWORD(a2);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for SubscriptionLifetime();
  swift_allocObject();
  v7 = SubscriptionLifetime.init()();
  type metadata accessor for AttributeInvalidatingSubscriber();
  swift_allocObject();
  result = AttributeInvalidatingSubscriber.init(host:attribute:)();
  *a3 = a1;
  *(a3 + 4) = v3;
  *(a3 + 8) = v6;
  *(a3 + 16) = result;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t initializeWithCopy for StoreBox(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  swift_unknownObjectRetain();
  return a1;
}

uint64_t destroy for StoreBox()
{

  return swift_unknownObjectRelease();
}

uint64_t specialized static FocusedValue._makeProperty<A>(in:container:fieldOffset:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FocusedValueBox();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  lazy protocol witness table accessor for type FocusedValuesInputKey and conformance FocusedValuesInputKey();
  PropertyList.subscript.getter();
  v9 = v11[3];
  *(v8 + 1) = 0;
  (*(*(a4 - 8) + 56))(&v8[*(v5 + 32)], 1, 1, a4);
  *v8 = v9;
  swift_getWitnessTable();
  _DynamicPropertyBuffer.append<A>(_:fieldOffset:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for static Commands._makeCommands(content:inputs:) in conformance SidebarCommands@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 12) = *(a1 + 44);
  return specialized static Commands._makeCommands(content:inputs:)(v4, a2);
}

uint64_t specialized static Commands._makeCommands(content:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  static DynamicPropertyCache.fields(of:)();
  v3 = v18;
  v4 = v19;
  v5 = DWORD1(v19);
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v17[0] = a1[2];
  *(v17 + 12) = *(a1 + 44);
  outlined init with copy of _CommandsInputs(a1, &v18);
  if (AGTypeID.isValueType.getter())
  {
    v18 = v3;
    LOBYTE(v19) = v4;
    DWORD1(v19) = v5;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<SidebarCommands>, lazy protocol witness table accessor for type SidebarCommands and conformance SidebarCommands, &type metadata for SidebarCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v13;
    v18 = v15;
    v19 = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v12);
    v8 = v12;
    v9 = DWORD2(v12);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v12 = v15;
    v13 = v16;
    v14[0] = v17[0];
    *(v14 + 12) = *(v17 + 12);
    outlined destroy of _CommandsInputs(&v12);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v3 = v18;
  v4 = v19;
  v5 = DWORD1(v19);
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v17[0] = a1[2];
  *(v17 + 12) = *(a1 + 44);
  outlined init with copy of _CommandsInputs(a1, &v18);
  if (AGTypeID.isValueType.getter())
  {
    v18 = v3;
    LOBYTE(v19) = v4;
    DWORD1(v19) = v5;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<TextFormattingCommands>, lazy protocol witness table accessor for type TextFormattingCommands and conformance TextFormattingCommands, &type metadata for TextFormattingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<TextFormattingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v13;
    v18 = v15;
    v19 = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v12);
    v8 = v12;
    v9 = DWORD2(v12);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v12 = v15;
    v13 = v16;
    v14[0] = v17[0];
    *(v14 + 12) = *(v17 + 12);
    outlined destroy of _CommandsInputs(&v12);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v3 = v18;
  v4 = v19;
  v5 = DWORD1(v19);
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v17[0] = a1[2];
  *(v17 + 12) = *(a1 + 44);
  outlined init with copy of _CommandsInputs(a1, &v18);
  if (AGTypeID.isValueType.getter())
  {
    v18 = v3;
    LOBYTE(v19) = v4;
    DWORD1(v19) = v5;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<TextEditingCommands>, lazy protocol witness table accessor for type TextEditingCommands and conformance TextEditingCommands, &type metadata for TextEditingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<TextEditingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v13;
    v18 = v15;
    v19 = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v12);
    v8 = v12;
    v9 = DWORD2(v12);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v12 = v15;
    v13 = v16;
    v14[0] = v17[0];
    *(v14 + 12) = *(v17 + 12);
    outlined destroy of _CommandsInputs(&v12);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v3 = v16;
  v4 = v17;
  v5 = DWORD1(v17);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  *v18 = a1[2];
  *&v18[12] = *(a1 + 44);
  outlined init with copy of _CommandsInputs(a1, &v13);
  if (AGTypeID.isValueType.getter())
  {
    v13 = v3;
    LOBYTE(v14) = v4;
    DWORD1(v14) = v5;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<InspectorCommands>, lazy protocol witness table accessor for type InspectorCommands and conformance InspectorCommands, &type metadata for InspectorCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<InspectorCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();

    v7 = PreferencesOutputs.init()();
    MEMORY[0x1EEE9AC00](v7);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();

    v8 = v13;
    v9 = DWORD2(v13);
    if ((v12 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = *v18;
    *(v15 + 12) = *&v18[12];
    outlined destroy of _CommandsInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v3 = v18;
  v4 = v19;
  v5 = DWORD1(v19);
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v17[0] = a1[2];
  *(v17 + 12) = *(a1 + 44);
  outlined init with copy of _CommandsInputs(a1, &v18);
  if (AGTypeID.isValueType.getter())
  {
    v18 = v3;
    LOBYTE(v19) = v4;
    DWORD1(v19) = v5;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<PrintingCommands>, lazy protocol witness table accessor for type PrintingCommands and conformance PrintingCommands, &type metadata for PrintingCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<PrintingCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v13;
    v18 = v15;
    v19 = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    _s7SwiftUI19_ConditionalContentVA2A8CommandsRzAaDR_rlE05_makeE07content6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA15WithCommandFlagVyAA05EmptyE0VG_ATTt2B5(&v18, &v12);
    v8 = v12;
    v9 = DWORD2(v12);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v12 = v15;
    v13 = v16;
    v14[0] = v17[0];
    *(v14 + 12) = *(v17 + 12);
    outlined destroy of _CommandsInputs(&v12);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v3 = v18;
  v4 = v19;
  v5 = DWORD1(v19);
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v17[0] = a1[2];
  *(v17 + 12) = *(a1 + 44);
  outlined init with copy of _CommandsInputs(a1, &v18);
  if (AGTypeID.isValueType.getter())
  {
    v18 = v3;
    LOBYTE(v19) = v4;
    DWORD1(v19) = v5;
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<ToolbarCommands>, lazy protocol witness table accessor for type ToolbarCommands and conformance ToolbarCommands, &type metadata for ToolbarCommands, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<ToolbarCommands> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v13;
    v18 = v15;
    v19 = v16;
    v20[0] = v17[0];
    *(v20 + 12) = *(v17 + 12);
    _s7SwiftUI15WithCommandFlagV13_makeCommands7content6inputsAA01_G7OutputsVAA11_GraphValueVyACyxGG_AA01_G6InputsVtFZAA05EmptyG0V_Tt2B5(&v12);
    v8 = v12;
    v9 = DWORD2(v12);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v12 = v15;
    v13 = v16;
    v14[0] = v17[0];
    *(v14 + 12) = *(v17 + 12);
    outlined destroy of _CommandsInputs(&v12);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

{
  static DynamicPropertyCache.fields(of:)();
  v3 = v19;
  v4 = v20;
  v5 = DWORD1(v20);
  v6 = a1[1];
  v16 = *a1;
  v17 = v6;
  v18[0] = a1[2];
  *(v18 + 12) = *(a1 + 44);
  outlined init with copy of _CommandsInputs(a1, &v19);
  if (AGTypeID.isValueType.getter())
  {
    v19 = v3;
    LOBYTE(v20) = v4;
    DWORD1(v20) = v5;
    type metadata accessor for WithCommandFlag<EmptyCommands>(0, &lazy cache variable for type metadata for CommandsBodyAccessor<Never>, MEMORY[0x1E69E73E0], &protocol witness table for Never, type metadata accessor for CommandsBodyAccessor);
    lazy protocol witness table accessor for type CommandsBodyAccessor<Never> and conformance CommandsBodyAccessor<A>();
    BodyAccessor.makeBody(container:inputs:fields:)();
    v7 = v14;
    v19 = v16;
    v20 = v17;
    v21[0] = v18[0];
    *(v21 + 12) = *(v18 + 12);
    outlined init with copy of _CommandsInputs(&v19, &v13);
    specialized static Commands._makeCommands(content:inputs:)(&v13, v12, &v19);
    outlined destroy of _CommandsInputs(&v19);
    v8 = v13;
    v9 = DWORD2(v13);
    if ((v7 & 1) == 0)
    {
      _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)();
    }

    v13 = v16;
    v14 = v17;
    v15[0] = v18[0];
    *(v15 + 12) = *(v18 + 12);
    outlined destroy of _CommandsInputs(&v13);
    result = outlined consume of DynamicPropertyCache.Fields.Layout();
    *a2 = v8;
    *(a2 + 8) = v9;
  }

  else
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(32);

    *&v19 = 0xD00000000000001ELL;
    *(&v19 + 1) = 0x800000018CD50BC0;
    MEMORY[0x18D00C9B0](0x726576654ELL, 0xE500000000000000);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type SidebarCommands and conformance SidebarCommands()
{
  result = lazy protocol witness table cache variable for type SidebarCommands and conformance SidebarCommands;
  if (!lazy protocol witness table cache variable for type SidebarCommands and conformance SidebarCommands)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarCommands and conformance SidebarCommands);
  }

  return result;
}

uint64_t _s7SwiftUI15TupleDescriptorPAAE16tupleDescriptionyAA0c4TypeF0VyxGSo07AGTupleG0aFZAA05SceneD0V_Tt1g5@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static SceneDescriptor.typeCache;
  if (*(static SceneDescriptor.typeCache + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    *a2 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    lazy protocol witness table accessor for type SceneDescriptor and conformance SceneDescriptor();
    TupleTypeDescription.init(_:)();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = static SceneDescriptor.typeCache;
    static SceneDescriptor.typeCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, a1, isUniquelyReferenced_nonNull_native);
    static SceneDescriptor.typeCache = v9;
    result = swift_endAccess();
    *a2 = v10;
  }

  return result;
}

uint64_t type metadata completion function for FocusedValueBox()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

_DWORD *initializeWithCopy for FocusedValueBox(_DWORD *a1, int *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 11;
  *a1 = v5;
  v6 = ((a1 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = *(a3 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = v6 + v9 + 8;
  v11 = v9 + 8 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v12 = *(v8 + 48);

  if (v12(v11 & ~v9, 1, v7))
  {
    if (*(v8 + 84))
    {
      v13 = *(v8 + 64);
    }

    else
    {
      v13 = *(v8 + 64) + 1;
    }

    memcpy((v10 & ~v9), (v11 & ~v9), v13);
  }

  else
  {
    (*(v8 + 16))(v10 & ~v9, v11 & ~v9, v7);
    (*(v8 + 56))(v10 & ~v9, 0, 1, v7);
  }

  return a1;
}

uint64_t destroy for FocusedValueBox(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 11) & 0xFFFFFFFFFFFFFFF8;

  v4 = *(a2 + 16);
  v9 = *(v4 - 8);
  v5 = *(v9 + 80);
  v6 = v3 + v5 + 8;
  result = (*(v9 + 48))(v6 & ~v5, 1, v4);
  if (!result)
  {
    v8 = *(v9 + 8);

    return v8(v6 & ~v5, v4);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for OpenWindowAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OpenWindowAction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t lazy protocol witness table accessor for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>)
  {
    type metadata accessor for CommandsBodyAccessor<PrototypePrintingCommands>(255, &lazy cache variable for type metadata for CommandsBodyAccessor<SidebarCommands>, lazy protocol witness table accessor for type SidebarCommands and conformance SidebarCommands, &type metadata for SidebarCommands, type metadata accessor for CommandsBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CommandsBodyAccessor<SidebarCommands> and conformance CommandsBodyAccessor<A>);
  }

  return result;
}

uint64_t static TransformSceneListModifier._makeScene(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v14 = *(a2 + 40);
  v4 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 24);
  v5 = *(a2 + 56);
  lazy protocol witness table accessor for type _SceneInputs.NamespaceInput and conformance _SceneInputs.NamespaceInput();
  PropertyList.subscript.getter();
  v6 = v16;
  v10 = v15;
  v7 = BYTE8(v16);
  swift_getKeyPath();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  type metadata accessor for Map<TransformSceneListModifier, (_:)>();
  lazy protocol witness table accessor for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>();

  Attribute.init<A>(body:value:flags:update:)();

  v15 = v4;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v3;
  v20 = v5;
  a3(v8, &v15);
  v15 = v3;
  LODWORD(v16) = v5;

  PreferencesOutputs.makePreferenceTransformer<A>(inputs:key:transform:)();
  outlined consume of SceneList.Namespace(v10, v6, v7);
}

uint64_t sub_18BDABFC8()
{

  return swift_deallocObject();
}

uint64_t sub_18BDAC000@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = v5;
}

void type metadata accessor for Map<TransformSceneListModifier, (_:)>()
{
  if (!lazy cache variable for type metadata for Map<TransformSceneListModifier, (_:)>)
  {
    type metadata accessor for (_:)();
    v0 = type metadata accessor for Map();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Map<TransformSceneListModifier, (_:)>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform()
{
  result = lazy protocol witness table cache variable for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform;
  if (!lazy protocol witness table cache variable for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TransformSceneListModifier.SceneListTransform(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t MakeObservableObjectDelegateBox.visit<A>(type:)()
{
  type metadata accessor for UnsafeObservableObjectFallbackDelegateBox();
  outlined init with copy of Any(v0, v4);
  swift_dynamicCast();
  v1 = swift_allocObject();
  *(v1 + 16) = v3;

  *(v0 + 32) = v1;
  return result;
}

uint64_t destroy for MakeObservableObjectDelegateBox(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance SceneList.Key@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static SceneList.Key.defaultValue;
}

uint64_t AppStorage.objectWillChange.getter()
{
  v0 = UserDefaultLocation.canonicalLocation.getter();
  v1 = *(v0 + *(*v0 + 128));

  return v1;
}

uint64_t AppStorage.objectWillChange.setter(uint64_t a1)
{
  UserDefaultLocation.canonicalLocation.getter();
  specialized UserDefaultLocation.observableObjectPublisher.setter(a1);
}

void specialized UserDefaultLocation.observableObjectPublisher.setter(uint64_t a1)
{
  *(v1 + *(*v1 + 128)) = a1;

  UserDefaultLocation.observableObjectPublisher.didset();
}

void UserDefaultLocation.observableObjectPublisher.didset()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + *(v1 + 152));
    if (v4)
    {
      v21 = *(v0 + v2);
      v22 = 1;
      v5 = OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target;
      swift_beginAccess();
      v6 = v4;

      outlined assign with take of UserDefaultObserver.Target(&v21, v4 + v5);
      swift_endAccess();
    }

    else
    {
      v9 = type metadata accessor for UserDefaultObserver();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v12 = &v10[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target];
      *v12 = v3;
      v12[16] = 1;
      v23.receiver = v10;
      v23.super_class = v9;
      swift_retain_n();
      v13 = objc_msgSendSuper2(&v23, sel_init);
      v14 = *(*v0 + 152);
      v15 = *(v0 + v14);
      *(v0 + v14) = v13;

      v16 = *(v0 + *(*v0 + 152));
      if (v16)
      {
        v17 = UserDefaultLocation.store.getter();
        v19 = v0[2];
        v18 = v0[3];
        v20 = v16;
        UserDefaultObserver.observeDefaults(_:key:)(v17, v19, v18);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    v7 = *(v1 + 152);
    v8 = *(v0 + v7);
    *(v0 + v7) = 0;
  }
}

uint64_t Scene.handlesExternalEvents(matching:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;

  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.handlesExternalEvents(matching:), v4, a2);
}

uint64_t sub_18BDAC7AC()
{

  return swift_deallocObject();
}

uint64_t Scene.transformSceneList(transform:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return Scene.modifier<A>(_:)(v4, a3, &type metadata for TransformSceneListModifier);
}

uint64_t FocusedValue.init<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a1, a1, a2, a3);
  KeyPath = swift_getKeyPath();
  result = FocusedValue.init(_:)(KeyPath, &v8);
  v7 = v9;
  *a4 = v8;
  *(a4 + 8) = v7;
  return result;
}

uint64_t sub_18BDAC888@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v5[1] = *a1;
  v6 = v3;
  v7 = *(a1 + 16);
  result = FocusedValues.subscript.getter(v5);
  *a2 = v5[0];
  return result;
}

__n128 sub_18BDAC948(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t FocusedValue.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for FocusedValue.Content();

  return swift_storeEnumTagMultiPayload();
}

void *sub_18BDAC9DC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  swift_unknownObjectRetain();
  return a1;
}

void *initializeWithCopy for FocusedValue(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = a2[v7];
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    if (v10 <= 1)
    {
      if (!v10)
      {
        goto LABEL_21;
      }

      v11 = *a2;
    }

    else if (v10 == 2)
    {
      v11 = *a2;
    }

    else if (v10 == 3)
    {
      v11 = *a2 | (a2[2] << 16);
    }

    else
    {
      v11 = *a2;
    }

    v12 = (v11 | (v9 << (8 * v7))) + 2;
    v8 = v11 + 2;
    if (v7 < 4)
    {
      v8 = v12;
    }
  }

LABEL_21:
  if (v8 == 1)
  {
    if ((*(v5 + 48))(a2, 1, v4))
    {
      memcpy(a1, a2, v6);
    }

    else
    {
      (*(v5 + 16))(a1, a2, v4);
      (*(v5 + 56))(a1, 0, 1, v4);
    }

    *(a1 + v7) = 1;
  }

  else
  {
    *a1 = *a2;
    *(a1 + v7) = 0;
  }

  return a1;
}

uint64_t destroy for FocusedValue(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  if (*(v3 + 84))
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = *(v3 + 64) + 1;
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  v5 = a1[v4];
  v6 = v5 - 2;
  if (v5 >= 2)
  {
    if (v4 <= 3)
    {
      v7 = v4;
    }

    else
    {
      v7 = 4;
    }

    if (v7 <= 1)
    {
      if (!v7)
      {
        goto LABEL_20;
      }

      v8 = *a1;
    }

    else if (v7 == 2)
    {
      v8 = *a1;
    }

    else if (v7 == 3)
    {
      v8 = *a1 | (a1[2] << 16);
    }

    else
    {
      v8 = *a1;
    }

    v9 = (v8 | (v6 << (8 * v4))) + 2;
    v5 = v8 + 2;
    if (v4 < 4)
    {
      v5 = v9;
    }
  }

LABEL_20:
  if (v5 == 1)
  {
    v13 = *(*(a2 + 16) - 8);
    result = (*(v3 + 48))();
    if (!result)
    {
      v12 = *(v13 + 8);

      return v12(a1, v2);
    }
  }

  else
  {
  }

  return result;
}

uint64_t WindowGroup.init<A, B>(id:for:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a6;
  *(v17 + 24) = a7;
  *(v17 + 32) = a8;
  *(v17 + 40) = a10;
  *(v17 + 48) = a11;
  *(v17 + 64) = a4;
  *(v17 + 72) = a5;
  *&v28 = a6;
  *(&v28 + 1) = a7;
  *&v29 = a8;
  *(&v29 + 1) = a10;
  v30 = a11;
  type metadata accessor for PresentedWindowContent();
  WindowGroup.init(id:makeContent:)(a1, a2, partial apply for closure #1 in WindowGroup.init<A, B>(id:for:content:), v17, &v28);
  v18 = v34;
  v19 = v31;
  *(a9 + 32) = v30;
  *(a9 + 48) = v19;
  *(a9 + 64) = v32;
  v20 = v33;
  v21 = v29;
  *a9 = v28;
  *(a9 + 16) = v21;
  *(a9 + 80) = v20;
  *(a9 + 88) = a3;
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a8;
  v22[4] = a10;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #1 in standardDecoder<A>(forType:);
  *(v23 + 24) = v22;
  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v18);
  *(a9 + 96) = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Data) -> (@out AnyHashable);
  *(a9 + 104) = v23;
  return result;
}

uint64_t sub_18BDACEB8()
{

  return swift_deallocObject();
}

uint64_t sub_18BDACEF0()
{

  return swift_deallocObject();
}

uint64_t Scene.allowsSecureDrawing(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  Scene.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t PickerContent.keyboardShortcut(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = *(v10 + 24);
  (*(v6 + 16))(v9, v3, a2, v7);
  (*(v6 + 32))(a3, v9, a2);
  v15 = a3 + *(type metadata accessor for _KeyboardShortcutPickerContent() + 36);
  *v15 = v12;
  *(v15 + 8) = v11;
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
}

uint64_t PickerContent.keyboardShortcut(_:modifiers:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a2;
  v7 = 0;
  return PickerContent.keyboardShortcut(_:)(v6, a3, a4);
}

uint64_t PickerContent.disabled(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2, v8);
  (*(v7 + 32))(a3, v10, a2);
  result = type metadata accessor for _DisabledPickerContent();
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t destroy for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

unsigned int *storeEnumTagSinglePayload for _DisabledPickerContent(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t PickerOption._identifiedView.getter(void *a1)
{
  v3 = a1[3];
  v4 = a1[5];
  v5 = type metadata accessor for VStack();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-v7];
  v9 = a1[2];
  *&v10 = v9;
  *(&v10 + 1) = v3;
  *&v11 = a1[4];
  *(&v11 + 1) = v4;
  v15 = v10;
  v16 = v11;
  v17 = v1;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  View.tag<A>(_:includeOptional:)(v1, 1, v5, v9, WitnessTable);
  return (*(v6 + 8))(v8, v5);
}

uint64_t View.tag<A>(_:includeOptional:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for _TagTraitWritingModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x18D00A570](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_18BDAD87C()
{
  type metadata accessor for VStack();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t initializeWithCopy for _DisabledPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  *(*(v5 + 48) + a1) = *(*(v5 + 48) + a2);
  return a1;
}

uint64_t sub_18BDAD9AC()
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>();
  type metadata accessor for ModifiedContent();
  swift_getAssociatedConformanceWitness();
  lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>();
  return swift_getWitnessTable();
}

void type metadata accessor for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>);
    }
  }
}

uint64_t getEnumTagSinglePayload for _KeyboardShortcutPickerContent(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 25;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

uint64_t View.pickerStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PickerStyleWriter();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t Toggle.init(isOn:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Binding<Bool>>, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_18CD63400;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  *(v14 + 48) = a3;
  v19 = v14;
  type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(0, &lazy cache variable for type metadata for [Binding<Bool>], MEMORY[0x1E69E62F8]);
  v16 = v15;
  v17 = lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A]();

  Toggle.init<A>(toggledOn:label:)(&v19, a4, a5, v16, a6, v17, a7);
}

uint64_t initializeWithCopy for Toggle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;

  v6(v9, v10, v5);
  v11 = *(v7 + 48) + 7;
  v12 = (v11 + v9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + v10) & 0xFFFFFFFFFFFFFFF8;
  if (*(v13 + 24) < 0xFFFFFFFFuLL)
  {
    v20 = *v13;
    v21 = *(v13 + 32);
    *(v12 + 16) = *(v13 + 16);
    *(v12 + 32) = v21;
    *v12 = v20;
  }

  else
  {
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v13, v15, v16);
    *v12 = v14;
    *(v12 + 8) = v15;
    *(v12 + 16) = v16;
    v17 = *(v13 + 24);
    *(v12 + 24) = v17;
    v18 = *(v13 + 40);
    *(v12 + 32) = *(v13 + 32);
    *(v12 + 40) = v18;
    v19 = v17;
  }

  return a1;
}

uint64_t one-time initialization function for sidebar(uint64_t a1)
{
  return one-time initialization function for appInfo(xmmword_18CDF7030, a1, static CommandGroupPlacement.sidebar);
}

{
  return one-time initialization function for regular(a1, static Material._GlassVariant.sidebar, MEMORY[0x1E6999CD8]);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEffectConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for SymbolEffectOptions();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void, void))
{
  v6 = a4(0, *(a3 + 16), *(a3 + 24));
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_get_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }

  else
  {
    v13 = *(a1 + *(a3 + 28));
    if (v13 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    return (v13 + 1);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_get_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_9(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_get_extra_inhabitant_indexTm_11(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MainMenuItem.Identifier(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void type metadata accessor for _PreferenceWritingModifier<ToolbarItemViewHiddenKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t PickerOption.init(value:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a3 - 8);
  (*(v7 + 16))(a4, a1, a3);
  v8 = type metadata accessor for PickerOption();
  a2(v8, v9, v10, v11);
  return (*(v7 + 8))(a1, a3);
}

uint64_t Label.init(title:icon:)(void (*a1)(void), uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  a1();
  v4 = type metadata accessor for Label();
  return a3(v4, v5, v6, v7);
}

uint64_t _KeyboardShortcutPickerContent._identifiedView.getter(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v13 - v8;
  (*(v3 + 56))(v4, v3, v7);
  v10 = (v1 + *(a1 + 36));
  v11 = *(v10 + 24);
  v13 = *v10;
  v14 = *(v10 + 1);
  v15 = v11;
  swift_getAssociatedConformanceWitness();

  View._trait<A>(_:_:)();

  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t Picker.init(selection:content:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = type metadata accessor for Picker();
  *(a6 + v12[19]) = 0;
  v13 = type metadata accessor for Binding();
  type metadata accessor for _ContiguousArrayStorage();
  v14 = *(v13 - 8);
  swift_allocObject();
  v15 = static Array._adoptStorage(_:count:)();
  (*(v14 + 32))(v16, a1, v13);
  _finalizeUninitializedArray<A>(_:)();
  *a6 = v15;
  (*(*(a5 - 8) + 32))(a6 + v12[18], a2, a5);
  return (*(*(a4 - 8) + 32))(a6 + v12[17], a3, a4);
}

uint64_t Picker<>.init<A>(_:selection:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v33 = a7;
  v34 = a6;
  v38 = a4;
  v39 = a9;
  v37 = a3;
  v35 = a1;
  v36 = a2;
  v31 = a11;
  v32 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v16;
  v41 = a10;
  v42 = v17;
  v43 = a12;
  v18 = type metadata accessor for PickerBuilder.Content();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = type metadata accessor for Binding();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v31 - v24;
  v26 = (*(v22 + 16))(&v31 - v24, a5, v21, v23);
  v34(v26);
  PickerBuilder.Content.init(_:)(v15, a8, a10, v31, a12);
  v40 = Text.init(_:tableName:bundle:comment:)();
  v41 = v27;
  LOBYTE(v42) = v28 & 1;
  v43 = v29;
  swift_getWitnessTable();
  Picker.init(selection:content:label:)(v25, v20, &v40, MEMORY[0x1E6981148], v18, v39);
  return (*(v22 + 8))(v32, v21);
}

uint64_t type metadata completion function for _DisabledPickerContent()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeWithCopy for _KeyboardShortcutPickerContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);

  return a1;
}

uint64_t closure #1 in PickerOption._identifiedView.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  v15 = type metadata accessor for PickerOption();
  static ViewBuilder.buildExpression<A>(_:)(a1 + *(v15 + 52), a3, a5);
  static ViewBuilder.buildExpression<A>(_:)(v10, a3, a5);
  return (*(v8 + 8))(v10, a3);
}

uint64_t _DisabledPickerContent._identifiedView.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v6 + 16);
  v7 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = v17 - v12;
  (*(v7 + 56))(v8, v7, v11);
  (*(v4 + 16))(v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v7;
  (*(v4 + 32))(v15 + v14, v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedConformanceWitness();
  View.transformTrait<A>(_:transform:)();

  return (*(v10 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_18BDAF604()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for _DisabledPickerContent() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for _DisabledPickerContent(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

void *initializeWithCopy for Picker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(v5 - 8) + 16;
  v8 = *(*(v5 - 8) + 80);
  v9 = (a1 + v8 + 8) & ~v8;
  v10 = (a2 + v8 + 8) & ~v8;

  v6(v9, v10, v5);
  v11 = *(*(a3 + 32) - 8);
  v12 = v11 + 16;
  v13 = *(v11 + 80);
  v14 = *(v7 + 48) + v13;
  v15 = (v14 + v9) & ~v13;
  v16 = (v14 + v10) & ~v13;
  (*(v11 + 16))(v15, v16);
  *((*(v12 + 48) + 7 + v15) & 0xFFFFFFFFFFFFFFF8) = *((*(v12 + 48) + 7 + v16) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for Picker(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 8) & ~*(v4 + 80);
  (*(v4 + 8))(v6);
  (*(*(*(a2 + 32) - 8) + 8))((v6 + *(v5 + 56) + *(*(*(a2 + 32) - 8) + 80)) & ~*(*(*(a2 + 32) - 8) + 80));
}

void type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    _s7SwiftUI7BindingVySbGMaTm_4(255, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type [Binding<Bool>] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A])
  {
    type metadata accessor for _ContiguousArrayStorage<Binding<Bool>>(255, &lazy cache variable for type metadata for [Binding<Bool>], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Binding<Bool>] and conformance [A]);
  }

  return result;
}

uint64_t Toggle.init<A>(toggledOn:label:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v31 = a6;
  v33 = a3;
  v34 = a1;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v28 = v14;
  v15 = *(type metadata accessor for Toggle() + 40);
  v32 = a7;
  v16 = (a7 + v15);
  v16[1] = 0u;
  v16[2] = 0u;
  *v16 = 0u;
  a2();
  v29 = *(v12 + 16);
  v29(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a4);
  v17 = *(v12 + 80);
  v18 = v12;
  v30 = v12;
  v19 = (v17 + 64) & ~v17;
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = v33;
  *(v20 + 5) = a4;
  v21 = v31;
  *(v20 + 6) = a5;
  *(v20 + 7) = v21;
  v22 = *(v18 + 32);
  v22(&v20[v19], &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v29(&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v34, a4);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v33;
  *(v23 + 5) = a4;
  *(v23 + 6) = v28;
  *(v23 + 7) = v21;
  v22(&v23[v19], &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  Binding.init(get:set:)();
  result = (*(v30 + 8))(v34, a4);
  v25 = v36;
  v26 = v37;
  v27 = v32;
  *v32 = v35;
  v27[1] = v25;
  *(v27 + 16) = v26;
  return result;
}

uint64_t destroy for Toggle(uint64_t a1, uint64_t a2)
{

  v4 = *(*(a2 + 16) - 8);
  v5 = v4 + 8;
  v6 = (a1 + *(v4 + 80) + 17) & ~*(v4 + 80);
  result = (*(v4 + 8))(v6);
  v8 = (*(v5 + 56) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 24) >= 0xFFFFFFFFuLL)
  {
    outlined consume of Environment<AppIntentExecutor?>.Content(*v8, *(v8 + 8), *(v8 + 16));
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityLargeContentViewModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

uint64_t sub_18BDB012C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CommandGroupPlacement(0);
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

uint64_t sub_18BDB020C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void @objc UIHostingContentView._defaultListContentConfigurationMayHaveChanged()(void *a1)
{
  v1 = a1;
  UIHostingContentView._defaultListContentConfigurationMayHaveChanged()();
}

void @objc UIHostingContentView._preferredSeparatorInsetsDidChangeHandler.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
  }

  else
  {
    v5 = 0;
  }

  v6 = a1;
  UIHostingContentView._preferredSeparatorInsetsDidChangeHandler.setter(v4, v5);
}

uint64_t UIHostingContentView._preferredSeparatorInsetsDidChangeHandler.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x778));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
}

void @objc UIHostingContentView._defaultListContentConfigurationProvider.setter(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@autoreleased UIListContentConfiguration?);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  specialized UIHostingContentView._defaultListContentConfigurationProvider.setter(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v7);
}

uint64_t specialized UIHostingContentView._defaultListContentConfigurationProvider.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x740));
  v4 = *v3;
  *v3 = a1;
  v3[1] = a2;
  outlined copy of AppIntentExecutor?(a1);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);

  return UIHostingContentView.updateHostedViews()();
}

id partial apply for thunk for @escaping @callee_unowned @convention(block) () -> (@autoreleased UIListContentConfiguration?)()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

unint64_t lazy protocol witness table accessor for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>()
{
  result = lazy protocol witness table cache variable for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>;
  if (!lazy protocol witness table cache variable for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>)
  {
    type metadata accessor for Map<TransformSceneListModifier, (_:)>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Map<TransformSceneListModifier, (_:)> and conformance Map<A, B>);
  }

  return result;
}

void storeEnumTagSinglePayload for CommandMenu(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 32] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 3) = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for CommandMenu(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 32) & ~v6);
      }

      v15 = *(a1 + 3);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance AllowPresentationPredicate(_OWORD *a1)
{
  v1 = a1[1];
  v9[0] = *a1;
  v9[1] = v1;
  v3 = *a1;
  v2 = a1[1];
  v9[2] = a1[2];
  v6 = v3;
  v7 = v2;
  v8 = a1[2];
  outlined init with copy of _GraphInputs(v9, v10);
  v4 = specialized static AllowPresentationPredicate.evaluate(inputs:)();
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;
  outlined destroy of _GraphInputs(v10);
  return v4 & 1;
}

uint64_t implicit closure #1 in _SceneOutputs.transformSceneList(inputs:transform:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type TransformSceneListModifier.SceneListTransform and conformance TransformSceneListModifier.SceneListTransform();
  return Attribute.init<A>(body:value:flags:update:)();
}

{

  return implicit closure #1 in _SceneOutputs.transformSceneList(inputs:transform:)();
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void *UserDefaultObserver.observeDefaults(_:key:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v3[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  v9 = *&v3[OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_state];
  if (v9)
  {
    v11 = *(v8 + 1);
    v10 = *(v8 + 2);
    type metadata accessor for NSUserDefaults();
    v12 = v9;

    if (static NSObject.== infix(_:_:)())
    {
      v13 = v11 == a2 && v10 == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
      }
    }

    UserDefaultObserver.unobserve(oldDefaults:key:)(v12, v11, v10);

    *(swift_allocObject() + 16) = v3;
    v15 = v3;
    static Update.enqueueAction(reason:_:)();
  }

  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {
    v16 = [objc_opt_self() defaultCenter];
    [v16 addObserver:v4 selector:sel_userDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:{a1, v19, v20}];
  }

  else
  {
    v16 = MEMORY[0x18D00C850](a2, a3);
    [a1 addObserver:v4 forKeyPath:v16 options:0 context:{&static UserDefaultObserver.observationContext, 46, 0xE100000000000000}];
  }

  v17 = *v8;
  *v8 = a1;
  *(v8 + 1) = a2;
  *(v8 + 2) = a3;
  v18 = a1;

  return outlined consume of UserDefaultObserver.State(v17);
}

uint64_t sub_18BDB0E98()
{

  return swift_deallocObject();
}

void *outlined consume of UserDefaultObserver.State(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t UserDefaultPropertyBox.update(property:phase:)(char **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  v7 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v30 = a1;
  v10 = UserDefaultLocation.canonicalLocation.getter();
  v11 = *(v3 + 8);
  v31 = *(v3 + 16);
  v12 = *(AGGraphGetValue() + 8);

  type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultAppStorageDefaultsKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
  if (v12)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v13 = v34[0];

  v14 = *(*v10 + 144);
  v15 = *(v10 + v14);
  *(v10 + v14) = v13;

  v16 = UserDefaultLocation.store.getter();
  v17 = v10[2];
  v18 = v10[3];

  UserDefaultObserver.observeDefaults(_:key:)(v16, v17, v18);

  v19 = OBJC_IVAR____TtC7SwiftUIP33_F2BB00CEA25D2617C18DE8984EB64B5319UserDefaultObserver_target;
  swift_beginAccess();
  outlined init with copy of UserDefaultObserver.Target(v11 + v19, v34);
  if (v35 == 1)
  {
    outlined destroy of UserDefaultObserver.Target(v34);
    v20 = 0;
  }

  else
  {
    outlined init with take of UserDefaultObserver.Target.GraphAttribute(v34, v32);
    outlined destroy of weak AnyGestureResponder?(v32);
    WeakValue = AGGraphGetWeakValue();
    v20 = 0;
    if (WeakValue && (v22 & 1) != 0)
    {
      if (v31)
      {
        *(v4 + 16) = 0;
      }

      else
      {
        v23 = UserDefaultLocation.copy()(WeakValue);

        *v30 = v23;
      }

      v20 = 1;
      (*(*(v6 - 8) + 56))(v9, 1, 1, v6);
      UserDefaultLocation.cachedValue.setter(v9);
    }
  }

  outlined init with copy of UserDefaultObserver.Target(v11 + v19, v34);
  v24 = v35;
  if (v35)
  {
    outlined destroy of UserDefaultObserver.Target(v34);
    v25 = 0;
  }

  else
  {
    outlined init with take of UserDefaultObserver.Target.GraphAttribute(v34, v32);
    v25 = v33;
    outlined destroy of weak AnyGestureResponder?(v32);
  }

  v26 = v10 + *(*v10 + 168);
  *v26 = v25;
  v26[8] = v24;
  if (v20)
  {
    v27 = *(*v10 + 160);
    swift_beginAccess();
    v28 = *(v10 + v27);
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

void type metadata accessor for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultAppStorageDefaultsKey>);
    }
  }
}

id protocol witness for static EnvironmentKey.defaultValue.getter in conformance DefaultAppStorageDefaultsKey@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() standardUserDefaults];
  *a1 = result;
  return result;
}

uint64_t initializeWithCopy for UserDefaultObserver.Target(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    *a1 = *a2;

    v4 = 1;
  }

  else
  {
    swift_weakCopyInit();
    v4 = 0;
    *(a1 + 8) = *(a2 + 8);
  }

  *(a1 + 16) = v4;
  return a1;
}

uint64_t outlined init with take of UserDefaultObserver.Target.GraphAttribute(uint64_t a1, uint64_t a2)
{
  swift_weakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t UserDefaultLocation.cachedValue.setter(uint64_t a1)
{
  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t closure #1 in TransformSceneListModifier.SceneListTransform.value.getter(void **a1, uint64_t a2, uint64_t a3, char a4)
{
  type metadata accessor for (_:)();
  v9 = *AGGraphGetValue();

  outlined copy of SceneList.Namespace(a2, a3, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a1;
  v20 = *a1;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      *a1 = v11;
      if (v12)
      {
        goto LABEL_8;
      }

LABEL_11:
      EnvironmentValues.init()();
      specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, MEMORY[0x1E69E7CC0], v21, v22, v11);
      goto LABEL_12;
    }

LABEL_10:
    specialized _NativeDictionary.copy()();
    v11 = v20;
    *a1 = v20;
    if (v4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, isUniquelyReferenced_nonNull_native);
  v11 = v20;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  if ((v4 & 1) != (v18 & 1))
  {

    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v17;
  *a1 = v20;
  if ((v4 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  outlined consume of SceneList.Namespace(a2, a3, a4);
LABEL_12:
  v9(v11[7] + 24 * v13);
}

double partial apply for specialized closure #1 in Attribute.subscript.getter@<D0>(_OWORD *a1@<X8>)
{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  return result;
}

{
  swift_getAtKeyPath();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t type metadata accessor for (_:)(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for _GraphInputs.SelectionBasedStorageKey<AnyHashable>(255, &lazy cache variable for type metadata for Set<AnyHashable>, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0], MEMORY[0x1E69E64E8]);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, a2);
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<SceneList.Namespace, SceneList>, lazy protocol witness table accessor for type SceneList.Namespace and conformance SceneList.Namespace);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = v21[2];
        v25 = *(v4 + 48) + v17;
        v26 = *(v18 + 16);
        *v25 = *v18;
        *(v25 + 8) = v20;
        *(v25 + 16) = v26;
        v27 = (*(v4 + 56) + v17);
        *v27 = v22;
        v27[1] = v23;
        v27[2] = v24;
        outlined copy of SceneList.Namespace(v19, v20, v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, SizeFittingState.Child>, lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = v19[1];
        v17 *= 48;
        v21 = (*(v2 + 56) + v17);
        v22 = *v19;
        v23 = *(v21 + 25);
        v24 = v21[1];
        v30 = *v21;
        v31[0] = v24;
        *(v31 + 9) = v23;
        v25 = (*(v4 + 48) + v18);
        *v25 = v22;
        v25[1] = v20;
        v26 = (*(v4 + 56) + v17);
        v27 = v30;
        v28 = v31[0];
        *(v26 + 25) = *(v31 + 9);
        *v26 = v27;
        v26[1] = v28;

        result = outlined init with copy of SizeFittingState.Child(&v30, &v29);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<HashableWeakBox<UIViewController>, ScenePhase>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of HashableWeakBox<UIViewController>(*(v2 + 48) + 16 * v17, v19);
        v18 = *(*(v2 + 56) + v17);
        result = outlined init with take of HashableWeakBox<UIViewController>(v19, *(v4 + 48) + 16 * v17);
        *(*(v4 + 56) + v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.StackContent.Key, NavigationColumnState>, lazy protocol witness table accessor for type NavigationState.StackContent.Key and conformance NavigationState.StackContent.Key);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    v25 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = memcpy((*(v25 + 56) + v22), __src, 0x163uLL))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 24 * v16;
      v18 = *(v2 + 48) + 24 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = 360 * v16;
      outlined init with copy of NavigationColumnState(*(v2 + 56) + 360 * v16, __src);
      v23 = *(v25 + 48) + v17;
      *v23 = v19;
      *(v23 + 8) = v20;
      *(v23 + 16) = v21;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v24;
        v4 = v25;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, Transaction>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, AlertStorage>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of AlertStorage(&v45, v44))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      v18 = *(v2 + 56) + 248 * v16;
      v19 = *(v18 + 112);
      v21 = *(v18 + 64);
      v20 = *(v18 + 80);
      v51 = *(v18 + 96);
      v52 = v19;
      v49 = v21;
      v50 = v20;
      v22 = *(v18 + 176);
      v24 = *(v18 + 128);
      v23 = *(v18 + 144);
      v55 = *(v18 + 160);
      v56 = v22;
      v53 = v24;
      v54 = v23;
      v26 = *(v18 + 208);
      v25 = *(v18 + 224);
      v27 = *(v18 + 192);
      v60 = *(v18 + 240);
      v58 = v26;
      v59 = v25;
      v57 = v27;
      v29 = *v18;
      v28 = *(v18 + 16);
      v30 = *(v18 + 48);
      v47 = *(v18 + 32);
      v48 = v30;
      v45 = v29;
      v46 = v28;
      *(*(v4 + 48) + 4 * v16) = v17;
      v31 = *(v4 + 56) + 248 * v16;
      v32 = v45;
      v33 = v46;
      v34 = v48;
      *(v31 + 32) = v47;
      *(v31 + 48) = v34;
      *v31 = v32;
      *(v31 + 16) = v33;
      v35 = v49;
      v36 = v50;
      v37 = v52;
      *(v31 + 96) = v51;
      *(v31 + 112) = v37;
      *(v31 + 64) = v35;
      *(v31 + 80) = v36;
      v38 = v53;
      v39 = v54;
      v40 = v56;
      *(v31 + 160) = v55;
      *(v31 + 176) = v40;
      *(v31 + 128) = v38;
      *(v31 + 144) = v39;
      v41 = v57;
      v42 = v58;
      v43 = v59;
      *(v31 + 240) = v60;
      *(v31 + 208) = v42;
      *(v31 + 224) = v43;
      *(v31 + 192) = v41;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, ToolbarAppearanceConfiguration>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of ToolbarAppearanceConfiguration(&v32, v30))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 5 * v16;
      v18 = 40 * v16;
      outlined init with copy of ToolbarPlacement.Role(*(v2 + 48) + 40 * v16, v30);
      v19 = (*(v2 + 56) + 16 * v17);
      v21 = v19[1];
      v20 = v19[2];
      v22 = v19[3];
      *(v35 + 9) = *(v19 + 57);
      v35[0] = v22;
      v32 = *v19;
      v33 = v21;
      v34 = v20;
      v23 = *(v4 + 48) + v18;
      v24 = v30[0];
      v25 = v30[1];
      *(v23 + 32) = v31;
      *v23 = v24;
      *(v23 + 16) = v25;
      v26 = (*(v4 + 56) + 16 * v17);
      v27 = *(v35 + 9);
      v28 = v33;
      v29 = v35[0];
      v26[2] = v34;
      v26[3] = v29;
      v26[1] = v28;
      *(v26 + 57) = v27;
      *v26 = v32;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, Toolbar.VendedItem>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v19;
        v23[1] = v20;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
        v25 = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AnyHashable, Any>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        outlined init with copy of Any(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = outlined init with take of Any(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<_DisplayList_Identity, DisplayList>, lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LODWORD(v18) = *(v18 + 12);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 12) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for DisplayList.HostedViewState.Key(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<DisplayList.HostedViewState.Key, DisplayList.HostedViewState.ViewInfo>();
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v1;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 64);
    for (i = (v13 + 63) >> 6; v15; *(v22 + 16) = v30)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = v17 | (v12 << 6);
      v21 = *(v3 + 72) * v20;
      outlined init with copy of TabSidebarCustomization(*(v6 + 48) + v21, v5, type metadata accessor for DisplayList.HostedViewState.Key);
      v20 *= 184;
      outlined init with copy of DisplayList.HostedViewState.ViewInfo(*(v6 + 56) + v20, v34);
      result = outlined init with take of TabSidebarCustomization(v5, *(v8 + 48) + v21, type metadata accessor for DisplayList.HostedViewState.Key);
      v22 = *(v8 + 56) + v20;
      v23 = v34[8];
      v24 = v34[9];
      v25 = v34[10];
      *(v22 + 176) = v35;
      *(v22 + 144) = v24;
      *(v22 + 160) = v25;
      *(v22 + 128) = v23;
      v26 = v34[4];
      v27 = v34[5];
      v28 = v34[7];
      *(v22 + 96) = v34[6];
      *(v22 + 112) = v28;
      *(v22 + 64) = v26;
      *(v22 + 80) = v27;
      v29 = v34[0];
      v30 = v34[1];
      v31 = v34[3];
      *(v22 + 32) = v34[2];
      *(v22 + 48) = v31;
      *v22 = v29;
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= i)
      {

        v1 = v33;
        goto LABEL_21;
      }

      v19 = *(v6 + 64 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableColumnDescriptor>>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Any>, outlined init with take of Any);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<TableRowDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, WeakBox<Swift.AnyObject>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v21 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        v19 = MEMORY[0x1E6981A78];
        v20 = MEMORY[0x1E69E7C98];
        outlined init with copy of WeakBox<Swift.AnyObject>(*(v2 + 56) + v17, v22, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E6981A78]);
        *(*(v4 + 48) + v17) = v18;
        result = outlined init with take of WeakBox<Swift.AnyObject>(v22, *(v4 + 56) + v17, &lazy cache variable for type metadata for WeakBox<Swift.AnyObject>, v20 + 8, v19, type metadata accessor for [TabCustomizationID]);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v21;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.Relationship, [AccessibilityNode]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.Key, [AccessibilityRelationshipScope.Relationship : [AccessibilityNode]]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of AccessibilityRelationshipScope.Key(*(v2 + 48) + 48 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = (*(v4 + 48) + 48 * v17);
        v20 = v22[0];
        v21 = v22[2];
        v19[1] = v22[1];
        v19[2] = v21;
        *v19 = v20;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGAttribute, (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode])>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 4 * v17);
        result = outlined init with copy of TabSidebarCustomization(*(v2 + 56) + (v17 << 6), v23, type metadata accessor for (key: AccessibilityRelationshipScope.Key, relationship: AccessibilityRelationshipScope.Relationship, nodes: [AccessibilityNode]));
        *(*(v4 + 48) + 4 * v17) = v18;
        v19 = (*(v4 + 56) + (v17 << 6));
        v21 = v23[2];
        v20 = v23[3];
        v22 = v23[1];
        *v19 = v23[0];
        v19[1] = v22;
        v19[2] = v21;
        v19[3] = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AccessibilityRelationshipScope.NodeRelation, Set<AccessibilityRelationshipScope.Key>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 16 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, Any>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<CommandsDescriptor>>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<SceneDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<EventID, EventType>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        outlined init with copy of _Benchmark(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AnyHashable, DisplayList.Version>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<SceneID, PlatformSceneCache.Info>, lazy protocol witness table accessor for type SceneID and conformance SceneID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = *(v4 + 48) + 24 * v17;
        *v23 = *v18;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
        outlined copy of SceneID(v19, v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, AnyListSelection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        v19 = *(v2 + 48) + 48 * v17;
        v20 = *(v19 + 32);
        v21 = *(v19 + 40);
        v28 = *(v19 + 16);
        v29 = *v19;
        v22 = 40 * v17;
        result = outlined init with copy of AnyListSelection(*(v2 + 56) + 40 * v17, v30);
        v23 = *(v4 + 48) + v18;
        *v23 = v29;
        *(v23 + 16) = v28;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v31;
        v26 = v30[1];
        *v24 = v30[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, NavigationListState.Selection>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 48 * v17;
        v19 = *(v2 + 48) + 48 * v17;
        v20 = *(v19 + 32);
        v21 = *(v19 + 40);
        v29 = *(v19 + 16);
        v30 = *v19;
        v22 = 72 * v17;
        result = outlined init with copy of NavigationListState.Selection(*(v2 + 56) + 72 * v17, v31);
        v23 = *(v4 + 48) + v18;
        *v23 = v30;
        *(v23 + 16) = v29;
        *(v23 + 32) = v20;
        *(v23 + 40) = v21;
        v24 = *(v4 + 56) + v22;
        v25 = v32;
        v26 = v31[3];
        v27 = v31[2];
        *(v24 + 16) = v31[1];
        *(v24 + 32) = v27;
        *(v24 + 48) = v26;
        *(v24 + 64) = v25;
        *v24 = v31[0];
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationState.ListKey, Bool>, lazy protocol witness table accessor for type NavigationState.ListKey and conformance NavigationState.ListKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 48 * v14;
      v18 = *(v17 + 32);
      v19 = *(*(v2 + 56) + v14);
      v20 = *(v17 + 40);
      v21 = *(v4 + 48) + 48 * v14;
      v22 = *(v17 + 16);
      *v21 = *v17;
      *(v21 + 16) = v22;
      *(v21 + 32) = v18;
      *(v21 + 40) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<NavigationState.ListKey, [Binding<Bool>]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 48 * v17;
        v19 = *(v18 + 32);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v18 + 40);
        v22 = *(v4 + 48) + 48 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 16) = v23;
        *(v22 + 32) = v19;
        *(v22 + 40) = v21;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationLinkSelectionIdentifier, Int>, lazy protocol witness table accessor for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = outlined init with copy of NavigationLinkSelectionIdentifier(*(v2 + 48) + (v17 << 6), v23);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = (*(v4 + 48) + (v17 << 6));
        v21 = v23[2];
        v20 = v23[3];
        v22 = v23[1];
        *v19 = v23[0];
        v19[1] = v22;
        v19[2] = v21;
        v19[3] = v20;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Int, [ObjectIdentifier]>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, Decodable & Encodable.Type>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationState.StackContent.PositionedView>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        result = outlined init with copy of NavigationState.StackContent.PositionedView(*(v2 + 56) + 96 * v17, v24);
        *(*(v4 + 48) + v17) = v18;
        v19 = (*(v4 + 56) + 96 * v17);
        v20 = v24[1];
        *v19 = v24[0];
        v19[1] = v20;
        v21 = v24[2];
        v22 = v24[3];
        v23 = v25[0];
        *(v19 + 73) = *(v25 + 9);
        v19[3] = v22;
        v19[4] = v23;
        v19[2] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<CGPoint, Bool>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<GridIndex, Int>, lazy protocol witness table accessor for type GridIndex and conformance GridIndex);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PropertyList>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<NavigationDestinationDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<VerticalEdge, Double>, lazy protocol witness table accessor for type VerticalEdge and conformance VerticalEdge);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, PlatformBarUpdates>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = outlined init with copy of ToolbarPlacement.Role(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 2 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 2 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, Int>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, ConfirmationDialog>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with take of ConfirmationDialog(v18, *(v4 + 56) + 184 * v16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 4 * v16);
      outlined init with copy of ConfirmationDialog(*(v2 + 56) + 184 * v16, v18);
      *(*(v4 + 48) + 4 * v16) = v17;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<UInt, ObjectIdentifier>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, [Any]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ToolbarContentDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGAttribute, ArrayWith2Inline<AccessibilityNode>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        result = outlined copy of ArrayWith2Inline<AccessibilityNode>.Storage(v19, v20, v21);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, TabItemGroup.HostCache>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = (*(v4 + 48) + v18);
        *v27 = v20;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        *v28 = v24;
        v28[1] = v23;
        v28[2] = v25;
        v28[3] = v26;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<TabCustomizationID, TabCustomizationEntry>, lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 2 * v17;
        v17 *= 24;
        v19 = *(v2 + 48) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOWORD(v19) = *(*(v2 + 56) + v18);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v21;
        *(v23 + 16) = v22;
        *(*(v4 + 56) + v18) = v19;
        result = outlined copy of TabCustomizationID.Base();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<TabCustomizationID, TabSectionCustomizationEntry>, lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        *v22 = *v18;
        *(v22 + 8) = v19;
        *(v22 + 16) = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        outlined copy of TabCustomizationID.Base();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UInt32, ScrollViewCommitInfo>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 4 * v17;
        v19 = *(*(v2 + 48) + 4 * v17);
        v17 *= 80;
        v20 = (*(v2 + 56) + v17);
        v22 = v20[1];
        v21 = v20[2];
        v23 = v20[4];
        v32 = v20[3];
        v33 = v23;
        v29 = *v20;
        v30 = v22;
        v31 = v21;
        *(*(v4 + 48) + v18) = v19;
        v24 = (*(v4 + 56) + v17);
        *v24 = v29;
        v25 = v30;
        v26 = v31;
        v27 = v33;
        v24[3] = v32;
        v24[4] = v27;
        v24[1] = v25;
        v24[2] = v26;
        result = outlined init with copy of ScrollViewCommitInfo(&v29, &v28);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for ToolbarContentDescription(0);
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<ContentToolbarPlacement.Placement, ToolbarContentDescription>();
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        outlined init with copy of TabSidebarCustomization(*(v5 + 56) + v22, v4, type metadata accessor for ToolbarContentDescription);
        *(*(v7 + 48) + v20) = v21;
        result = outlined init with take of TabSidebarCustomization(v4, *(v7 + 56) + v22, type metadata accessor for ToolbarContentDescription);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v7;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventBinding>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for HashableCommandGroupPlacementWrapper(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<HashableCommandGroupPlacementWrapper, CommandAccumulator>();
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        outlined init with copy of TabSidebarCustomization(*(v6 + 48) + v22, v5, type metadata accessor for HashableCommandGroupPlacementWrapper);
        v21 *= 16;
        v23 = *(v8 + 48);
        v26 = *(*(v6 + 56) + v21);
        outlined init with take of TabSidebarCustomization(v5, v23 + v22, type metadata accessor for HashableCommandGroupPlacementWrapper);
        *(*(v8 + 56) + v21) = v26;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<DisplayList.Index.ID, DisplayList.AccessibilityUpdater.CacheValue>, lazy protocol witness table accessor for type DisplayList.Index.ID and conformance DisplayList.Index.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + v17) = v18;
        v19 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityAttachmentToken, DisplayList.Version>, lazy protocol witness table accessor for type AccessibilityAttachmentToken and conformance AccessibilityAttachmentToken);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 12 * v14;
      v18 = *v17;
      LOBYTE(v17) = *(v17 + 8);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 12 * v14;
      *v20 = v18;
      *(v20 + 8) = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<Int, Int>);
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<UUID, PlatformItemList>();
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<KeyCommandID, ()>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Character, String>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<String, MainMenuItemCoordinator>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ToolbarPlacement.Role, BarEnvironmentViewModel>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of ToolbarPlacement.Role(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarPlacement.Role, AnyShapeStyle>, lazy protocol witness table accessor for type ToolbarPlacement.Role and conformance ToolbarPlacement.Role);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of ToolbarPlacement.Role(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ViewIdentity, (_:)>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, [String : PassthroughSubject<Any, Never>]>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<String, PassthroughSubject<Any, Never>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, TouchEvent>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of TouchEvent(&v35, &v34))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 112;
      v21 = (*(v2 + 56) + v16);
      v23 = v21[4];
      v22 = v21[5];
      v24 = v21[3];
      *(v40 + 9) = *(v21 + 89);
      v39 = v23;
      v40[0] = v22;
      v38 = v24;
      v26 = v21[1];
      v25 = v21[2];
      v35 = *v21;
      v36 = v26;
      v37 = v25;
      v27 = (*(v4 + 48) + v17);
      *v27 = v20;
      v27[1] = v19;
      v28 = (*(v4 + 56) + v16);
      v29 = v35;
      v30 = v37;
      v28[1] = v36;
      v28[2] = v30;
      *v28 = v29;
      v31 = v38;
      v32 = v39;
      v33 = v40[0];
      *(v28 + 89) = *(v40 + 9);
      v28[4] = v32;
      v28[5] = v33;
      v28[3] = v31;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, PhysicalButtonEvent>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        LOBYTE(v22) = *(v22 + 24);
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        *(v27 + 24) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<ViewDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationSplitColumn, NavigationSplitViewColumnWidth>, lazy protocol witness table accessor for type NavigationSplitColumn and conformance NavigationSplitColumn);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 32) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 40 * v14;
      v18 = *(v17 + 32);
      v19 = *v17;
      v20 = *(v17 + 16);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
      v21 = *(v4 + 56) + 40 * v14;
      *v21 = v19;
      *(v21 + 16) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<TableColumnCustomizationID, TableColumnCustomizationEntry>, lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        v17 *= 16;
        v25 = *(v2 + 56) + v17;
        v26 = *v25;
        v27 = *(v25 + 8);
        LOBYTE(v25) = *(v25 + 9);
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 8) = v21;
        *(v28 + 16) = v22;
        *(v28 + 24) = v23;
        *(v28 + 32) = v24;
        v29 = *(v4 + 56) + v17;
        *v29 = v26;
        *(v29 + 8) = v27;
        *(v29 + 9) = v25;
        result = outlined copy of TableColumnCustomizationID.Base(v20, v21, v22, v23, v24);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<SpatialEventCollection.Event.ID, SpatialEventCollection.Event>, lazy protocol witness table accessor for type SpatialEventCollection.Event.ID and conformance SpatialEventCollection.Event.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v21[1] = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 80 * v14);
      v18 = v17[2];
      *v22 = v17[3];
      *&v22[9] = *(v17 + 57);
      v20 = *v17;
      v19 = v17[1];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = (*(v4 + 56) + 80 * v14);
      *(v21 + 57) = *&v22[9];
      v21[2] = v18;
      v21[3] = *v22;
      *v21 = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<AccessibilityEnabledTechnology, [AccessibilityFocus.Match : Set<UniqueID>]>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<AccessibilityFocus.Match, Set<UniqueID>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityEnabledTechnology, AccessibilityFocus.Match>, lazy protocol witness table accessor for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UInt64, WeakBox<EntityGestureResponder>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v18 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with take of WeakBox<Swift.AnyObject>(v19, *(v4 + 56) + v16, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder, MEMORY[0x1E6981A78], type metadata accessor for SceneStorage<TabSidebarCustomization>))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 8 * (v13 | (v8 << 6));
      v17 = *(*(v2 + 48) + v16);
      outlined init with copy of WeakBox<PlatformDocument>(*(v2 + 56) + v16, v19, &lazy cache variable for type metadata for WeakBox<EntityGestureResponder>, type metadata accessor for EntityGestureResponder);
      *(*(v4 + 48) + v16) = v17;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        v1 = v18;
        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<AccessibilityRotorContentDescriptor>>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, AccessibilitySortCache>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v21[2] = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 96 * v14);
      v18 = v17[3];
      *v23 = v17[4];
      *&v23[9] = *(v17 + 73);
      v19 = v17[1];
      v22 = v17[2];
      v20 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = (*(v4 + 56) + 96 * v14);
      *v21 = v20;
      v21[1] = v19;
      *(v21 + 73) = *&v23[9];
      v21[3] = v18;
      v21[4] = *v23;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<String, SceneStorageValues.Entry>);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ViewIdentity, InspectorStorage>, lazy protocol witness table accessor for type ViewIdentity and conformance ViewIdentity);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 4 * v17);
        result = outlined init with copy of InspectorStorage(*(v2 + 56) + 120 * v17, v26);
        *(*(v4 + 48) + 4 * v17) = v18;
        v19 = *(v4 + 56) + 120 * v17;
        v20 = v26[3];
        v21 = v26[1];
        v22 = v26[0];
        *(v19 + 32) = v26[2];
        *(v19 + 48) = v20;
        *v19 = v22;
        *(v19 + 16) = v21;
        v23 = v26[4];
        v24 = v26[5];
        v25 = v26[6];
        *(v19 + 112) = v27;
        *(v19 + 80) = v24;
        *(v19 + 96) = v25;
        *(v19 + 64) = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, OrnamentPresentation>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of OrnamentPresentation(&v34, v33))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 8 * v16;
      v18 = *(*(v2 + 48) + 8 * v16);
      v16 *= 120;
      v19 = *(v2 + 56) + v16;
      v21 = *(v19 + 80);
      v20 = *(v19 + 96);
      v22 = *(v19 + 64);
      v41 = *(v19 + 112);
      v39 = v21;
      v40 = v20;
      v38 = v22;
      v24 = *v19;
      v23 = *(v19 + 16);
      v25 = *(v19 + 48);
      v36 = *(v19 + 32);
      v37 = v25;
      v34 = v24;
      v35 = v23;
      *(*(v4 + 48) + v17) = v18;
      v26 = *(v4 + 56) + v16;
      v27 = v34;
      v28 = v35;
      v29 = v37;
      *(v26 + 32) = v36;
      *(v26 + 48) = v29;
      *v26 = v27;
      *(v26 + 16) = v28;
      v30 = v38;
      v31 = v39;
      v32 = v40;
      *(v26 + 112) = v41;
      *(v26 + 80) = v31;
      *(v26 + 96) = v32;
      *(v26 + 64) = v30;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Selector, CommandAction>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of _Benchmark(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v19, *(v4 + 56) + 40 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ContainerBackgroundKeys.AnyCustomKey, AnyView>, lazy protocol witness table accessor for type ContainerBackgroundKeys.AnyCustomKey and conformance ContainerBackgroundKeys.AnyCustomKey);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<Namespace.ID, NavigationDestinationPresentation>, lazy protocol witness table accessor for type Namespace.ID and conformance Namespace.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        result = outlined init with copy of NavigationDestinationPresentation(*(v2 + 56) + 96 * v17, v24);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 96 * v17);
        v20 = v24[1];
        *v19 = v24[0];
        v19[1] = v20;
        v21 = v24[2];
        v22 = v24[3];
        v23 = v25[0];
        *(v19 + 73) = *(v25 + 9);
        v19[3] = v22;
        v19[4] = v23;
        v19[2] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AnyHashable, Anchor<CGRect?>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v17, v22);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = *(v4 + 48) + 40 * v17;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationLinkSelectionIdentifier, UpdateViewDestinationRequest>, lazy protocol witness table accessor for type NavigationLinkSelectionIdentifier and conformance NavigationLinkSelectionIdentifier);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = v17 << 6;
        outlined init with copy of NavigationLinkSelectionIdentifier(*(v2 + 48) + (v17 << 6), v24);
        v17 *= 192;
        outlined init with copy of UpdateViewDestinationRequest(*(v2 + 56) + v17, v23);
        v19 = (*(v4 + 48) + v18);
        v21 = v24[2];
        v20 = v24[3];
        v22 = v24[1];
        *v19 = v24[0];
        v19[1] = v22;
        v19[2] = v21;
        v19[3] = v20;
        result = outlined init with take of UpdateViewDestinationRequest(v23, *(v4 + 56) + v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, PositionedNavigationDestination.Storage.SeededRequest>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    v37 = v1;
    __src = (v2 + 64);
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, __src, 8 * v6);
    }

    v8 = 0;
    v39 = v2;
    v40 = v4;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    if (v11)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v41 = (v11 - 1) & v11;
LABEL_17:
        v16 = v13 | (v8 << 6);
        v17 = 48 * v16;
        v18 = *(v2 + 56);
        v19 = *(v2 + 48) + 48 * v16;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        v25 = *(v19 + 40);
        v26 = 176 * v16;
        result = outlined init with copy of PositionedNavigationDestination.Storage.SeededRequest(v18 + 176 * v16, v42);
        v27 = *(v40 + 48) + v17;
        *v27 = v21;
        *(v27 + 8) = v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v23;
        *(v27 + 32) = v24;
        v2 = v39;
        *(v27 + 40) = v25;
        v28 = (*(v40 + 56) + v26);
        v29 = *&v43[12];
        v30 = *v43;
        v31 = v42[8];
        v28[7] = v42[7];
        v28[8] = v31;
        v28[9] = v30;
        *(v28 + 156) = v29;
        v32 = v42[6];
        v33 = v42[5];
        v34 = v42[4];
        v28[3] = v42[3];
        v28[4] = v34;
        v28[5] = v33;
        v28[6] = v32;
        v35 = v42[2];
        v36 = v42[1];
        *v28 = v42[0];
        v28[1] = v36;
        v28[2] = v35;
        v11 = v41;
      }

      while (v41);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v1 = v37;
        v4 = v40;
        goto LABEL_21;
      }

      v15 = *(__src + v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, [AnyConnectionOptionActionBox]>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<ObjectIdentifier, TupleTypeDescription<WidgetDescriptor>>);
}

{
  return specialized _NativeDictionary.copy()(type metadata accessor for _DictionaryStorage<CodingUserInfoKey, Sendable>, outlined init with take of Sendable);
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, TabEntry>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 288 * v17;
        outlined init with copy of TabEntry(*(v2 + 56) + 288 * v17, __src);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        memcpy((*(v4 + 56) + v22), __src, 0x119uLL);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, Int>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, (uiKitHostIndex: Int, swiftuiHostIndex: Int, platformIdentifier: String)>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 32 * v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v21 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 32 * v17;
        *v22 = v21;
        *(v22 + 16) = v20;
        *(v22 + 24) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, DragReorderableLayoutCoordinator.ChildFrame>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v21[2] = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 56) + 48 * v14);
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = (*(v4 + 56) + 48 * v14);
      *v21 = v18;
      v21[1] = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v31 = type metadata accessor for UUID();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<UUID, (_:)>();
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v35 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v21 = v30;
        v22 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v18 *= 16;
        v23 = v32;
        v24 = *(v32 + 48);
        v25 = *(v19 + 32);
        v34 = *(*(v3 + 56) + v18);
        v25(v24 + v20, v21, v22);
        *(*(v23 + 56) + v18) = v34;

        v13 = v35;
      }

      while (v35);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v27;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<PartialKeyPath<UISplitViewController>, Any>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<Edge, Bool>, lazy protocol witness table accessor for type Edge and conformance Edge);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<Edge, ScrollEdgeEffectStyle>, lazy protocol witness table accessor for type Edge and conformance Edge);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<Toolbar.BarLocation, Toolbar.LocationStorage>, lazy protocol witness table accessor for type Toolbar.BarLocation and conformance Toolbar.BarLocation);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        outlined init with copy of Toolbar.BarLocation(*(v2 + 48) + 40 * v17, v28);
        v19 = 24 * v17;
        v20 = (*(v2 + 56) + 24 * v17);
        v21 = *v20;
        v22 = v20[1];
        v23 = v20[2];
        v24 = *(v4 + 48) + v18;
        v25 = v28[0];
        v26 = v28[1];
        *(v24 + 32) = v29;
        *v24 = v25;
        *(v24 + 16) = v26;
        v27 = (*(v4 + 56) + v19);
        *v27 = v21;
        v27[1] = v22;
        v27[2] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AGAttribute, AGAttribute>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<AlternateRepresentationPlacement.Value, AnyView>, lazy protocol witness table accessor for type AlternateRepresentationPlacement.Value and conformance AlternateRepresentationPlacement.Value);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 56) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for ToolbarStorage.Entry(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _DictionaryStorage<String, ToolbarStorage.Entry>();
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        outlined init with copy of TabSidebarCustomization(*(v4 + 56) + v26, v30, type metadata accessor for ToolbarStorage.Entry);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        outlined init with take of TabSidebarCustomization(v25, *(v27 + 56) + v26, type metadata accessor for ToolbarStorage.Entry);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_21;
      }

      v19 = *(v4 + 64 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<AccessibilityEnabledTechnology, AccessibilityFocus.Target>, lazy protocol witness table accessor for type AccessibilityEnabledTechnology and conformance AccessibilityEnabledTechnology);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + v17);
        outlined init with copy of AccessibilityFocus.Target(*(v2 + 56) + 8 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = outlined init with take of AccessibilityFocus.Target(v19, *(v4 + 56) + 8 * v17);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<KeyboardShortcut, KeyboardShortcutBridge.Shortcut>, lazy protocol witness table accessor for type KeyboardShortcut and conformance KeyboardShortcut);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v21 = *v19;
        v20 = *(v19 + 8);
        v22 = *(v19 + 16);
        LOBYTE(v19) = *(v19 + 24);
        v17 *= 24;
        v23 = *(v2 + 56) + v17;
        v24 = *(v23 + 16);
        v25 = *(v4 + 48) + v18;
        v29 = *v23;
        v26 = *v23;
        *v25 = v21;
        *(v25 + 8) = v20;
        *(v25 + 16) = v22;
        *(v25 + 24) = v19;
        v27 = *(v4 + 56) + v17;
        *v27 = v26;
        *(v27 + 16) = v24;

        v28 = v29;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, WeakBox<PlatformDocument>>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with take of WeakBox<Swift.AnyObject>(v24, *(v4 + 56) + 8 * v16, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument, MEMORY[0x1E6981A78], type metadata accessor for SceneStorage<TabSidebarCustomization>))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      outlined init with copy of IdentifiedDocumentGroupConfiguration(*(v2 + 48) + (v16 << 7), v25);
      outlined init with copy of WeakBox<PlatformDocument>(*(v2 + 56) + 8 * v16, v24, &lazy cache variable for type metadata for WeakBox<PlatformDocument>, type metadata accessor for PlatformDocument);
      v17 = (*(v4 + 48) + (v16 << 7));
      v18 = v25[4];
      v19 = v25[5];
      v20 = v26[0];
      *(v17 + 105) = *(v26 + 9);
      v17[5] = v19;
      v17[6] = v20;
      v17[4] = v18;
      v21 = v25[0];
      v22 = v25[1];
      v23 = v25[3];
      v17[2] = v25[2];
      v17[3] = v23;
      *v17 = v21;
      v17[1] = v22;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {

        goto LABEL_21;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UIMenuIdentifier, [UIMenuElement]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, RawPanGesture.StateType.EventInfo>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; v26[1] = v25)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = (*(v2 + 48) + 16 * v14);
      v20 = *v18;
      v19 = v18[1];
      v21 = 32 * v14;
      v22 = (*(v2 + 56) + v21);
      v23 = (*(v4 + 48) + v17);
      v24 = *v22;
      v25 = v22[1];
      *v23 = v20;
      v23[1] = v19;
      v26 = (*(v4 + 56) + v21);
      *v26 = v24;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<ToolbarStorage.Entry.ID, Int>, lazy protocol witness table accessor for type ToolbarStorage.Entry.ID and conformance ToolbarStorage.Entry.ID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v16) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      result = outlined init with copy of ToolbarStorage.Entry.ID(*(v2 + 48) + 88 * v16, v23);
      v17 = *(*(v2 + 56) + 8 * v16);
      v18 = *(v4 + 48) + 88 * v16;
      v19 = v23[4];
      v20 = v23[3];
      v21 = v23[2];
      *(v18 + 80) = v24;
      *(v18 + 48) = v20;
      *(v18 + 64) = v19;
      *(v18 + 32) = v21;
      v22 = v23[1];
      *v18 = v23[0];
      *(v18 + 16) = v22;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<TableRowID, (Int, (CountingIndex<Int>, CountingIndex<Int>))>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        result = outlined init with copy of TableRowID(*(v2 + 48) + 48 * v17, &v28);
        v18 = *(v2 + 56) + 56 * v17;
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v18 + 48);
        v22 = (*(v4 + 48) + 48 * v17);
        v23 = *(v18 + 32);
        v24 = *v18;
        v25 = v28;
        v26 = v29[0];
        *(v22 + 25) = *(v29 + 9);
        *v22 = v25;
        v22[1] = v26;
        v27 = *(v4 + 56) + 56 * v17;
        *v27 = v24;
        *(v27 + 16) = v19;
        *(v27 + 24) = v20;
        *(v27 + 32) = v23;
        *(v27 + 48) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, (Int, CountingIndex<Int>)>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(v21 + 24) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 56) + 32 * v14;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      v20 = *v17;
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
      v21 = *(v4 + 56) + 32 * v14;
      *v21 = v20;
      *(v21 + 16) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, HoverEvent>, lazy protocol witness table accessor for type EventID and conformance EventID);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = (*(v4 + 48) + v18);
        v27 = *(v22 + 24);
        *v26 = v21;
        v26[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v25;
        *(v28 + 24) = v27;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<EventID, [KeyPress.Handler]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<IdentifiedDocumentGroupConfiguration, [WeakBox<DocumentViewController>]>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        outlined init with copy of IdentifiedDocumentGroupConfiguration(*(v2 + 48) + (v17 << 7), v26);
        v18 = *(*(v2 + 56) + 8 * v17);
        v19 = (*(v4 + 48) + (v17 << 7));
        v21 = v26[5];
        v20 = v27[0];
        v22 = v26[4];
        *(v19 + 105) = *(v27 + 9);
        v19[5] = v21;
        v19[6] = v20;
        v19[4] = v22;
        v23 = v26[0];
        v24 = v26[1];
        v25 = v26[3];
        v19[2] = v26[2];
        v19[3] = v25;
        *v19 = v23;
        v19[1] = v24;
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<String, String>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<NavigationStackViewPosition, VersionSeed>, lazy protocol witness table accessor for type NavigationStackViewPosition and conformance NavigationStackViewPosition);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 48 * v14;
      v18 = *(v17 + 16);
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = *(v17 + 40);
      v21 = *(v4 + 48) + 48 * v14;
      v22 = *(v17 + 24);
      *v21 = *v17;
      *(v21 + 16) = v18;
      *(v21 + 24) = v22;
      *(v21 + 40) = v20;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Int, Image.Resolved>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = outlined init with copy of Image.Resolved(&v39, &v38))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = *(*(v2 + 48) + 8 * v16);
      v18 = (*(v2 + 56) + 192 * v16);
      v19 = v18[7];
      v21 = v18[4];
      v20 = v18[5];
      v45 = v18[6];
      v46 = v19;
      v43 = v21;
      v44 = v20;
      v23 = v18[9];
      v22 = v18[10];
      v24 = v18[8];
      *(v49 + 11) = *(v18 + 171);
      v48 = v23;
      v49[0] = v22;
      v47 = v24;
      v26 = *v18;
      v25 = v18[1];
      v27 = v18[3];
      v41 = v18[2];
      v42 = v27;
      v39 = v26;
      v40 = v25;
      *(*(v4 + 48) + 8 * v16) = v17;
      v28 = (*(v4 + 56) + 192 * v16);
      v29 = v39;
      v30 = v40;
      v31 = v42;
      v28[2] = v41;
      v28[3] = v31;
      *v28 = v29;
      v28[1] = v30;
      v32 = v43;
      v33 = v44;
      v34 = v46;
      v28[6] = v45;
      v28[7] = v34;
      v28[4] = v32;
      v28[5] = v33;
      v35 = v47;
      v36 = v48;
      v37 = v49[0];
      *(v28 + 171) = *(v49 + 11);
      v28[9] = v36;
      v28[10] = v37;
      v28[8] = v35;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<Namespace.ID, Transaction>(0, &lazy cache variable for type metadata for _DictionaryStorage<AdaptableTabBarPlacement, Visibility>, lazy protocol witness table accessor for type AdaptableTabBarPlacement and conformance AdaptableTabBarPlacement);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<UniqueID, (_ViewList_ID.Canonical, AccessibilitySectionContext?)>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 20);
        v22 = *v18;
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 24 * v17;
        *v23 = v22;
        *(v23 + 8) = v19;
        *(v23 + 20) = v21;
        *(v23 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

{
  v1 = v0;
  type metadata accessor for _DictionaryStorage<AnyHashable, _ScrollableLayoutProxy.SizeRecord>();
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = outlined init with copy of AnyHashable(*(v2 + 48) + v17, v26);
        v18 = *(v2 + 56) + v17;
        v19 = *v18;
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        v22 = *(v18 + 24);
        v23 = v26[0];
        v24 = v26[1];
        *(v20 + 32) = v27;
        *v20 = v23;
        *(v20 + 16) = v24;
        v25 = *(v4 + 56) + v17;
        *v25 = v19;
        *(v25 + 8) = v21;
        *(v25 + 24) = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}