uint64_t outlined destroy of TextFieldState.FormatActions(uint64_t a1)
{

  return a1;
}

_OWORD *assignWithTake for TextFieldState.DeprecatedActions(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for Binding() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:formatter:deprecatedActions:)(a1, a2, v2 + v7, v8, v5);
}

uint64_t partial apply for closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = v7 + *(*(v5 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v9 = *(type metadata accessor for Binding() - 8);
  v10 = v2 + ((v8 + *(v9 + 80)) & ~*(v9 + 80));

  return closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(a1, a2, v2 + v7, v10, v5, v6);
}

{
  return closure #2 in static TextFieldFormattingUtilities.makeStateAndText<A>(value:format:)(a1, a2, v2 + ((*(*(*(v2 + 16) - 8) + 80) + 32) & ~*(*(*(v2 + 16) - 8) + 80)), *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

void type metadata accessor for _TraitWritingModifier<IsLinkedGroupTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<IsLinkedGroupTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<IsLinkedGroupTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<IsLinkedGroupTraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<IsLinkedGroupTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t View.springLoadingBehavior(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>, &type metadata for SpringLoadingBehavior, MEMORY[0x1E6980A08]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - v7;
  v9 = *a1;
  swift_getKeyPath();
  v13 = v9;
  View.environment<A>(_:_:)();

  v10 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>();
  v12[1] = a3;
  v12[2] = v10;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
  View.input<A>(_:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t EnvironmentValues.springLoadingBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.springLoadingBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.springLoadingBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>, &type metadata for SpringLoadingBehavior, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<SpringLoadingBehavior> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t EnvironmentValues.springLoadingBehavior.setter()
{
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.springLoadingBehavior.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.springLoadingBehavior.modify;
}

uint64_t EnvironmentValues.springLoadingBehavior.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
  lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t specialized implicit closure #1 in _GraphInputs.springLoadingBehavior.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>();
    lazy protocol witness table accessor for type ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SpringLoadingBehavior.Key> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<SpringLoadingBehavior.Key>);

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t View.springLoaded(automaticallyEnabled:onActivate:onHighlightChange:onEnded:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10[0] = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  return MEMORY[0x18D00A570](v10, a8, &type metadata for SpringLoadingInteractionModifier, a9);
}

unint64_t lazy protocol witness table accessor for type SpringLoadingBehavior and conformance SpringLoadingBehavior()
{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior and conformance SpringLoadingBehavior;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior and conformance SpringLoadingBehavior)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior and conformance SpringLoadingBehavior);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState()
{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.HighlightState and conformance SpringLoadingBehavior.HighlightState);
  }

  return result;
}

uint64_t type metadata accessor for SpringLoadedViewResponder()
{
  result = type metadata singleton initialization cache for SpringLoadedViewResponder;
  if (!type metadata singleton initialization cache for SpringLoadedViewResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static SpringLoadingInteractionModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *__return_ptr)@<X2>, void *a4@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  v34 = v5;
  v7 = a2[3];
  v35 = a2[4];
  v8 = a2[1];
  v31 = *a2;
  v32 = v8;
  v27 = v33;
  v28 = v7;
  v29 = a2[4];
  v9 = *a1;
  v36 = *(a2 + 20);
  v30 = *(a2 + 20);
  v25 = v31;
  v26 = v6;
  a3(&v19);
  v20 = v34;
  v21 = DWORD2(v34);
  *&v25 = v34;
  DWORD2(v25) = DWORD2(v34);
  if (PreferencesInputs.contains<A>(_:includeHostPreferences:)())
  {
    if (one-time initialization token for springLoadingBehavior != -1)
    {
      swift_once();
    }

    *&v23[0] = static CachedEnvironment.ID.springLoadingBehavior;
    swift_beginAccess();
    v10 = CachedEnvironment.attribute<A>(id:_:)();
    swift_endAccess();
    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    v11 = _ViewInputs.isEnabled.getter();
    v23[0] = v19;

    v12 = _ViewOutputs.viewResponders()();

    type metadata accessor for SpringLoadedViewResponder();
    v13 = swift_allocObject();
    *(v13 + 216) = 0;
    *(v13 + 224) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(v13 + 232) = 0;
    *(v13 + 240) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(v13 + 248) = 0;
    v14 = v33;
    v23[3] = v34;
    v23[4] = v35;
    v15 = v32;
    v23[0] = v31;
    *(v13 + 256) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
    *(v13 + 264) = 0;
    v24 = v36;
    v23[1] = v15;
    v23[2] = v14;
    outlined init with copy of _ViewInputs(&v31, &v22);
    v16 = DefaultLayoutViewResponder.init(inputs:)();
    *&v25 = __PAIR64__(v10, v9);
    *(&v25 + 1) = __PAIR64__(v12, v11);
    *&v26 = v16;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    type metadata accessor for [ViewResponder](0);
    lazy protocol witness table accessor for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter();
    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v25) = 0;
    v17 = PreferencesOutputs.subscript.setter();
    *&v25 = v20;
    DWORD2(v25) = v21;
    MEMORY[0x1EEE9AC00](v17);
    outlined init with copy of PreferencesInputs(&v20, v23);
    PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
  }

  *a4 = v19;
  result = *(&v19 + 1);
  a4[1] = *(&v19 + 1);
  return result;
}

uint64_t SpringLoadedViewResponder.__allocating_init(inputs:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = 0;
  *(v0 + 224) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v0 + 232) = 0;
  *(v0 + 240) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v0 + 248) = 0;
  *(v0 + 256) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v0 + 264) = 0;
  return DefaultLayoutViewResponder.init(inputs:)();
}

uint64_t SpringLoadedResponderFilter.updateValue()()
{
  v1 = *(v0 + 16);
  Value = AGGraphGetValue();
  v3 = 0;
  if (*Value == 1)
  {
    v4 = *AGGraphGetValue();
    v5 = AGGraphGetValue();
    if (v4 == 1)
    {
      v3 = 1;
    }

    else if (v4 == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = *v5;
    }
  }

  *(v1 + 216) = v3;
  v6 = AGGraphGetValue();
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  *(v1 + 224) = v8;
  *(v1 + 232) = v7;

  v9 = AGGraphGetValue();
  v11 = *(v9 + 24);
  v10 = *(v9 + 32);
  *(v1 + 240) = v11;
  *(v1 + 248) = v10;

  v12 = AGGraphGetValue();
  v14 = *(v12 + 40);
  v13 = *(v12 + 48);
  *(v1 + 256) = v14;
  *(v1 + 264) = v13;

  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v15)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_18CD69590;
    *(v17 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t SpringLoadedViewResponder.__allocating_init(inputs:viewSubgraph:)()
{
  v0 = swift_allocObject();
  *(v0 + 216) = 0;
  *(v0 + 224) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v0 + 232) = 0;
  *(v0 + 240) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v0 + 248) = 0;
  *(v0 + 256) = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  *(v0 + 264) = 0;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)();
}

uint64_t SpringLoadedViewResponder.__ivar_destroyer()
{
}

uint64_t SpringLoadedViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

void type metadata accessor for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>)
  {
    lazy protocol witness table accessor for type SpringLoadingBehavior.HasCustomSpringLoadedBehavior and conformance SpringLoadingBehavior.HasCustomSpringLoadedBehavior();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<SpringLoadingBehavior.HasCustomSpringLoadedBehavior>);
    }
  }
}

uint64_t destroy for SpringLoadingInteractionModifier()
{
}

uint64_t initializeWithCopy for SpringLoadingInteractionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 48);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;

  return a1;
}

uint64_t assignWithCopy for SpringLoadingInteractionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  return a1;
}

uint64_t assignWithTake for SpringLoadingInteractionModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  return a1;
}

unint64_t lazy protocol witness table accessor for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts()
{
  result = lazy protocol witness table cache variable for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts;
  if (!lazy protocol witness table cache variable for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadingBehavior.Guts and conformance SpringLoadingBehavior.Guts);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter()
{
  result = lazy protocol witness table cache variable for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter;
  if (!lazy protocol witness table cache variable for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpringLoadedResponderFilter and conformance SpringLoadedResponderFilter);
  }

  return result;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<SpringLoadingBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t assignWithCopy for SpringLoadedResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for SpringLoadedResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t storeEnumTagSinglePayload for SpringLoadedResponderFilter(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t __DesignTimeSelectionIdentifier.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static __DesignTimeSelectionIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int __DesignTimeSelectionIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __DesignTimeSelectionIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __DesignTimeSelectionIdentifier()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier()
{
  result = lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier;
  if (!lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __DesignTimeSelectionIdentifier and conformance __DesignTimeSelectionIdentifier);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __DesignTimeSelectionIdentifier(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>)
  {
    type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>);
    type metadata accessor for SectionStyleModifier<SidebarSectionStyle>(255, &lazy cache variable for type metadata for SectionStyleModifier<PlainSectionStyle>, lazy protocol witness table accessor for type PlainSectionStyle and conformance PlainSectionStyle);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, SectionStyleModifier<PlainSectionStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>()
{
  if (!lazy cache variable for type metadata for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>)
  {
    v0 = type metadata accessor for Section();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<AnyListStyleContext>, SectionStyleModifier<InlineActionsSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>, StaticIf<StyleContextAcceptsPredicate<SidebarListStyleContext>, SectionStyleModifier<SidebarSectionStyle>, EmptyModifier>>, StaticIf<StyleContextAcceptsPredicate<MenuStyleContext>, SectionStyleModifier<MenuSectionStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>)
  {
    type metadata accessor for Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Section<SectionStyleConfiguration.Header, SectionStyleConfiguration.RawContent, SectionStyleConfiguration.Footer> and conformance <> Section<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>();
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<TabViewContentToolbarHost>, lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>, ViewInputFlagModifier<TabViewContentToolbarHost>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>)
  {
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabViewCommonModifier>, lazy protocol witness table accessor for type TabViewCommonModifier and conformance TabViewCommonModifier, &type metadata for TabViewCommonModifier, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TabViewCommonModifier and conformance TabViewCommonModifier()
{
  result = lazy protocol witness table cache variable for type TabViewCommonModifier and conformance TabViewCommonModifier;
  if (!lazy protocol witness table cache variable for type TabViewCommonModifier and conformance TabViewCommonModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewCommonModifier and conformance TabViewCommonModifier);
  }

  return result;
}

void type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost()
{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost;
  if (!lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<TabViewCommonModifier>, UpdateBridgesToAllowedBehaviors>, IsSearchImplementedModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TabViewCommonModifier>, lazy protocol witness table accessor for type TabViewCommonModifier and conformance TabViewCommonModifier, &type metadata for TabViewCommonModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TabViewCommonModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for _ViewModifier_Content<TabViewCommonModifier>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<TabViewContentToolbarHost>, lazy protocol witness table accessor for type TabViewContentToolbarHost and conformance TabViewContentToolbarHost, &type metadata for TabViewContentToolbarHost, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<TabViewContentToolbarHost> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t EnvironmentValues.isTabBarShowingSections.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.isTabBarShowingSections : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isTabBarShowingSections : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsTabBarShowingSectionsKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsTabBarShowingSectionsKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.tabBarPlacement.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a1);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a4, a1);

    return PropertyList.subscript.getter();
  }
}

Swift::Int TabBarPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

Swift::Int TabViewBottomAccessoryPlacement.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type TabBarPlacement and conformance TabBarPlacement()
{
  result = lazy protocol witness table cache variable for type TabBarPlacement and conformance TabBarPlacement;
  if (!lazy protocol witness table cache variable for type TabBarPlacement and conformance TabBarPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarPlacement and conformance TabBarPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement()
{
  result = lazy protocol witness table cache variable for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement;
  if (!lazy protocol witness table cache variable for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabViewBottomAccessoryPlacement and conformance TabViewBottomAccessoryPlacement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement()
{
  result = lazy protocol witness table cache variable for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement;
  if (!lazy protocol witness table cache variable for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TabBarPlacement.Placement and conformance TabBarPlacement.Placement);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TabBarPlacement.Placement()
{
  v1 = *v0;
  v2 = 0x726142706F74;
  v3 = 0x61426D6F74746F62;
  v4 = 0x746E656D616E726FLL;
  if (v1 != 3)
  {
    v4 = 1701273968;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72616265646973;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ResetTabViewEnvironmentModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ResetTabViewEnvironmentModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

double _ViewTest.touchEvent(_:globalLocation:phase:maximumPossibleForce:timestamp:modifiers:type:)@<D0>(double a1@<X0>, double a2@<X1>, char a3@<W2>, char *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>)
{
  v16 = *a4;
  v17 = *a5;
  v18 = *a7;
  if (a3)
  {
    v19 = a9;
    v20 = a10;
    if (static _TestApp.host.getter())
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        [v21 convertPoint:0 toView:{a9, a10}];
        v19 = v22;
        v20 = v23;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v19 = a9;
        v20 = a10;
      }
    }
  }

  else
  {
    v19 = a1;
    v20 = a2;
  }

  *a8 = v17;
  *(a8 + 8) = v16;
  *(a8 + 16) = 0;
  *(a8 + 24) = a9;
  *(a8 + 32) = a10;
  *(a8 + 40) = v19;
  *(a8 + 48) = v20;
  result = 0.25;
  *(a8 + 56) = xmmword_18CD8BF90;
  *(a8 + 72) = a11;
  *(a8 + 88) = 0;
  *(a8 + 96) = 0;
  *(a8 + 80) = a6;
  *(a8 + 104) = v18;
  return result;
}

Swift::Void __swiftcall _ViewTest.sendTouchSequence(_:)(Swift::OpaquePointer a1)
{
  v55 = v2;
  v54 = v1;
  type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v52 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v52 - v10);
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?, type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = (&v52 - v16);
  v58 = eventId;
  if (__OFADD__(eventId, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  ++eventId;
  v18 = MEMORY[0x18D00CD40](a1._rawValue, v5, v15);
  v57 = v18 - 1;
  if (!__OFSUB__(v18, 1))
  {
    v56 = v11;
    v74[1] = a1._rawValue;
    type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)], type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date), MEMORY[0x1E69E62F8]);
    v20 = v19;
    v21 = lazy protocol witness table accessor for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A]();
    MEMORY[0x18D00CB20](&v66, v20, v21);
    v74[0] = v66;
    type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>, MEMORY[0x1E69E6E48]);
    EnumeratedSequence.makeIterator()();
    type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>.Iterator, MEMORY[0x1E69E6E40]);
    v61 = v22;
    for (i = v17; ; v17 = i)
    {
      v23 = v62;
      EnumeratedSequence.Iterator.next()();
      outlined init with take of (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?(v23, v17);
      type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))();
      v25 = v24;
      if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
      {

        return;
      }

      v63 = *v17;
      v26 = (v17 + *(v25 + 48));
      v27 = *v26;
      v28 = v26[1];
      v64 = v26[2];
      v29 = v64;
      v65 = v26[3];
      v30 = *(v26 + 32);
      v31 = *(v5 + 64);
      v32 = type metadata accessor for Date();
      v33 = *(v32 - 8);
      v34 = *(v33 + 32);
      v35 = v59;
      v34(&v59[v31], v26 + v31, v32);
      v36 = *(v5 + 64);
      v37 = v56;
      *v56 = v27;
      *(v37 + 8) = v28;
      v38 = v65;
      *(v37 + 16) = v29;
      *(v37 + 24) = v38;
      *(v37 + 32) = v30;
      v34((v37 + v36), &v35[v31], v32);
      v39 = v63 == v57 ? 2 : 1;
      if (!v63)
      {
        v39 = 0;
      }

      v70[0] = &unk_1EFFB1530;
      v70[1] = v58;
      LOBYTE(v74[0]) = v39;
      v40 = v60;
      outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(v37, v60, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
      v41 = *(v5 + 64);
      Date.timeIntervalSinceReferenceDate.getter();
      v43 = v42;
      (*(v33 + 8))(v40 + v41, v32);
      v66 = v43;
      v69 = 0;
      v72 = &type metadata for TouchEvent;
      v73 = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
      v71 = swift_allocObject();
      _ViewTest.touchEvent(_:globalLocation:phase:maximumPossibleForce:timestamp:modifiers:type:)(v64, v65, v30, v74, &v66, 0, &v69, v71 + 16, v27, v28, 6.66666667);
      type metadata accessor for _DictionaryStorage<EventID, EventType>();
      v44 = static _DictionaryStorage.allocate(capacity:)();
      outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(v70, &v66, type metadata accessor for (EventID, EventType));
      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
      if (v46)
      {
        break;
      }

      v44[(v45 >> 6) + 8] |= 1 << v45;
      v47 = (v44[6] + 16 * v45);
      v48 = v67;
      *v47 = v66;
      v47[1] = v48;
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(&v68, v44[7] + 40 * v45);
      v49 = v44[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_15;
      }

      v44[2] = v51;
      outlined destroy of (EventID, EventType)(v70, type metadata accessor for (EventID, EventType));
      specialized _ViewTest.sendEvents(_:)(v44);

      outlined destroy of (EventID, EventType)(v37, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

void _ViewTest.measureTouchSequence(host:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a5;
  v68 = a4;
  type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v67 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v66 = v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v75 = (v62 - v14);
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?, type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v72 = v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = (v62 - v19);
  v83 = MEMORY[0x1E69E7CC0];
  v65 = eventId;
  if (__OFADD__(eventId, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  ++eventId;
  v21 = MEMORY[0x18D00CD40](a3, v9, v18);
  v64 = v21 - 1;
  if (__OFSUB__(v21, 1))
  {
LABEL_19:
    __break(1u);
    return;
  }

  *&v81[0] = a3;
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)], type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date), MEMORY[0x1E69E62F8]);
  v23 = v22;
  v24 = lazy protocol witness table accessor for type [(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)] and conformance [A]();
  MEMORY[0x18D00CB20](v84, v23, v24);
  *&v81[0] = *&v84[0];
  type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>, MEMORY[0x1E69E6E48]);
  EnumeratedSequence.makeIterator()();
  type metadata accessor for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>(0, &lazy cache variable for type metadata for EnumeratedSequence<[(location: CGPoint, globalLocation: CGPoint?, timestamp: Date)]>.Iterator, MEMORY[0x1E69E6E40]);
  v71 = v25;
  v26 = MEMORY[0x1E69E7CC0];
  v62[1] = a1;
  v63 = a2;
  v62[0] = v20;
  while (1)
  {
    v27 = v72;
    EnumeratedSequence.Iterator.next()();
    outlined init with take of (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?(v27, v20);
    type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))();
    v29 = v28;
    if ((*(*(v28 - 8) + 48))(v20, 1, v28) == 1)
    {
      break;
    }

    v73 = *v20;
    v30 = (v20 + *(v29 + 48));
    v31 = *v30;
    v32 = v30[1];
    v33 = v30[2];
    v76 = v30[3];
    v77 = v33;
    v34 = *(v30 + 32);
    v35 = *(v9 + 64);
    v36 = type metadata accessor for Date();
    v37 = *(v36 - 8);
    v74 = v26;
    v38 = *(v37 + 32);
    v39 = v66;
    v38(&v66[v35], v30 + v35, v36);
    v40 = *(v9 + 64);
    v41 = v75;
    *v75 = v31;
    v41[1] = v32;
    v42 = v76;
    v41[2] = v77;
    v41[3] = v42;
    *(v41 + 32) = v34;
    v38(v41 + v40, &v39[v35], v36);
    v26 = v74;
    if (v73 == v64)
    {
      v43 = 2;
    }

    else
    {
      v43 = 1;
    }

    if (!v73)
    {
      v43 = 0;
    }

    v80 = v43;
    v44 = v67;
    outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(v41, v67, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    v45 = *(v9 + 64);
    Date.timeIntervalSinceReferenceDate.getter();
    v47 = v46;
    v48 = v36;
    a2 = v63;
    (*(v37 + 8))(v44 + v45, v48);
    v79 = v47;
    v78 = 0;
    _ViewTest.touchEvent(_:globalLocation:phase:maximumPossibleForce:timestamp:modifiers:type:)(v77, v76, v34, &v80, &v79, 0, &v78, v81, v31, v32, 6.66666667);
    v84[4] = v81[4];
    v85[0] = v82[0];
    *(v85 + 9) = *(v82 + 9);
    v84[0] = v81[0];
    v84[1] = v81[1];
    v84[2] = v81[2];
    v84[3] = v81[3];
    ObjectType = swift_getObjectType();
    MEMORY[0x1EEE9AC00](ObjectType);
    v50 = v69;
    v62[-6] = v68;
    v62[-5] = v50;
    v62[-4] = v70;
    v62[-3] = &unk_1EFFB1530;
    v60 = v65;
    v61 = v84;
    _BenchmarkHost.measureAction(action:)();
    v52 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
    }

    v54 = *(v26 + 2);
    v53 = *(v26 + 3);
    if (v54 >= v53 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v26);
    }

    *(v26 + 2) = v54 + 1;
    *&v26[8 * v54 + 32] = v52;
    v55 = _BenchmarkHost.measureRender(interval:)(0.0166666667);
    v57 = *(v26 + 2);
    v56 = *(v26 + 3);
    if (v57 >= v56 >> 1)
    {
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v26);
    }

    v20 = v62[0];
    outlined destroy of TouchEvent(v84);
    outlined destroy of (EventID, EventType)(v75, type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    *(v26 + 2) = v57 + 1;
    *&v26[8 * v57 + 32] = v55;
    v83 = v26;
  }

  v58 = swift_getObjectType();
  v59 = MEMORY[0x18D004EB0](v58, a2, 1.0);
  specialized Array.append<A>(contentsOf:)(v59);
}

uint64_t closure #1 in _ViewTest.measureTouchSequence(host:_:)(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = a2;
  *(inited + 40) = a3;
  *(inited + 72) = &type metadata for TouchEvent;
  *(inited + 80) = lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent();
  v8 = swift_allocObject();
  *(inited + 48) = v8;
  v9 = a4[1];
  v8[1] = *a4;
  v8[2] = v9;
  v10 = a4[3];
  v8[3] = a4[2];
  v8[4] = v10;
  v11 = a4[5];
  v8[5] = a4[4];
  v8[6] = v11;
  *(v8 + 105) = *(a4 + 89);
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined init with copy of TouchEvent(a4, v14);
  outlined destroy of (EventID, EventType)(inited + 32, type metadata accessor for (EventID, EventType));
  specialized _ViewTest.sendEvents(_:)(v12);
}

void type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)()
{
  if (!lazy cache variable for type metadata for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))
  {
    type metadata accessor for CGPoint(255);
    type metadata accessor for CGPoint?(255, &lazy cache variable for type metadata for CGPoint?, type metadata accessor for CGPoint, MEMORY[0x1E69E6720]);
    type metadata accessor for Date();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date));
    }
  }
}

void type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)))
  {
    type metadata accessor for (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)));
    }
  }
}

uint64_t outlined init with take of (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CGPoint?(0, &lazy cache variable for type metadata for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date))?, type metadata accessor for (offset: Int, element: (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)), MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<EventID, EventType>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>)
  {
    type metadata accessor for EventType();
    lazy protocol witness table accessor for type EventID and conformance EventID();
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<EventID, EventType>);
    }
  }
}

uint64_t outlined init with copy of (location: CGPoint, globalLocation: CGPoint?, timestamp: Date)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for CGPoint?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t EnvironmentValues.scenePhase.setter()
{
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

Swift::Int ScenePhase.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t EnvironmentValues.scenePhase.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.scenePhase : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.scenePhase.modify(uint64_t **a1))(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.scenePhase.modify;
}

uint64_t EnvironmentValues.scenePhase.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<ScenePhaseKey>();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ScenePhaseKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type ScenePhase and conformance ScenePhase()
{
  result = lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase;
  if (!lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase);
  }

  return result;
}

uint64_t *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyOptionButtonCollection(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance AnyOptionButtonCollection(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Sequence.makeIterator() in conformance AnyOptionButtonCollection()
{

  _diagnoseUnavailableCodeReached()();
  __break(1u);
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance AnyOptionButtonCollection(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t OptionButtonCollection.__ivar_destroyer()
{
  outlined destroy of SubviewsCollection(v0 + 16);
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedRadioGroupPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedRadioGroupPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance RadioGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance RadioGroupStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata accessor for RadioGroupStyleModifier<LayoutRadioGroupStyle<_HStackLayout>>()
{
  if (!lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_HStackLayout>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_HStackLayout>, MEMORY[0x1E697E258], MEMORY[0x1E697E240], type metadata accessor for LayoutRadioGroupStyle);
    lazy protocol witness table accessor for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>();
    v0 = type metadata accessor for RadioGroupStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_HStackLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>()
{
  result = lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>;
  if (!lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_HStackLayout>, MEMORY[0x1E697E258], MEMORY[0x1E697E240], type metadata accessor for LayoutRadioGroupStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_HStackLayout> and conformance LayoutRadioGroupStyle<A>);
  }

  return result;
}

void type metadata accessor for Slice<AnyOptionButtonCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyOptionButtonCollection();
    v7 = lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection, type metadata accessor for AnyOptionButtonCollection);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection()
{
  return lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection, type metadata accessor for AnyOptionButtonCollection);
}

{
  return lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type AnyOptionButtonCollection and conformance AnyOptionButtonCollection, type metadata accessor for AnyOptionButtonCollection);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance RadioGroupStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t destroy for OptionButtonElement(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for OptionButtonElement(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v6 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  v8 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v8;
  *(a1 + 128) = *(a2 + 128);
  v9 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v9;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);

  v10 = v7;

  return a1;
}

uint64_t assignWithCopy for OptionButtonElement(uint64_t a1, uint64_t a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a1 + 88);
  v5 = *(a2 + 88);
  *(a1 + 88) = v5;
  v6 = v5;

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  v7 = *(a2 + 120);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = v7;

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 129) = *(a2 + 129);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t assignWithTake for OptionButtonElement(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  v6 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 129) = *(a2 + 129);
  v7 = *(a2 + 144);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = v7;

  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  return a1;
}

uint64_t getEnumTagSinglePayload for OptionButtonElement(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t storeEnumTagSinglePayload for OptionButtonElement(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *assignWithCopy for ResolvedRadioGroupPicker(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *assignWithTake for ResolvedRadioGroupPicker(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void type metadata accessor for ForEach<Range<Int>, Int, OptionButtonElement>()
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, OptionButtonElement>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, OptionButtonElement>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type RadioGroupStyleContext and conformance RadioGroupStyleContext()
{
  result = lazy protocol witness table cache variable for type RadioGroupStyleContext and conformance RadioGroupStyleContext;
  if (!lazy protocol witness table cache variable for type RadioGroupStyleContext and conformance RadioGroupStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadioGroupStyleContext and conformance RadioGroupStyleContext);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OptionButtonElement and conformance OptionButtonElement()
{
  result = lazy protocol witness table cache variable for type OptionButtonElement and conformance OptionButtonElement;
  if (!lazy protocol witness table cache variable for type OptionButtonElement and conformance OptionButtonElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionButtonElement and conformance OptionButtonElement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<RadioGroupStyleContext>, lazy protocol witness table accessor for type RadioGroupStyleContext and conformance RadioGroupStyleContext, &type metadata for RadioGroupStyleContext, MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<RadioGroupStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker()
{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>)
  {
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for RadioGroupStyleModifier<AutomaticRadioGroupStyle>, lazy protocol witness table accessor for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle, &unk_1EFFB1998, type metadata accessor for RadioGroupStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RadioGroupStyleModifier<AutomaticRadioGroupStyle> and conformance RadioGroupStyleModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle()
{
  result = lazy protocol witness table cache variable for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle;
  if (!lazy protocol witness table cache variable for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutomaticRadioGroupStyle and conformance AutomaticRadioGroupStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ResolvedRadioGroupPicker.Label(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label()
{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label;
  if (!lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedRadioGroupPicker.Label and conformance ResolvedRadioGroupPicker.Label);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>>(255, &lazy cache variable for type metadata for _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, MEMORY[0x1E6981A60], MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey> and conformance _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>();
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>, &type metadata for KeyboardShortcutPickerOptionTraitKey, &protocol witness table for KeyboardShortcutPickerOptionTraitKey, MEMORY[0x1E697FDB8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>)
  {
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<HasKeyboardShortcut>, lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>);
    }
  }
}

void type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for OptionButton<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for OptionButton);
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6980B20]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, lazy protocol witness table accessor for type OptionButton<Subview> and conformance OptionButton<A>, lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<Bool> and conformance _EnvironmentKeyTransformModifier<A>);
    lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<KeyboardShortcut?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<KeyboardShortcut?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OptionButton<Subview> and conformance OptionButton<A>()
{
  result = lazy protocol witness table cache variable for type OptionButton<Subview> and conformance OptionButton<A>;
  if (!lazy protocol witness table cache variable for type OptionButton<Subview> and conformance OptionButton<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for OptionButton<Subview>, MEMORY[0x1E6981A60], MEMORY[0x1E6981A58], type metadata accessor for OptionButton);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OptionButton<Subview> and conformance OptionButton<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<HasKeyboardShortcut>, lazy protocol witness table accessor for type HasKeyboardShortcut and conformance HasKeyboardShortcut, &type metadata for HasKeyboardShortcut, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<HasKeyboardShortcut> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>>, type metadata accessor for ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, type metadata accessor for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, lazy protocol witness table accessor for type ResolvedRadioGroupPicker and conformance ResolvedRadioGroupPicker, lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ResolvedRadioGroupPicker, StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>>, RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for _ConditionalContent<Subview, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(255, &lazy cache variable for type metadata for RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, lazy protocol witness table accessor for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle, &unk_1EFFB1978, type metadata accessor for RadioGroupStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StyleContextWriter<RadioGroupStyleContext>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle()
{
  result = lazy protocol witness table cache variable for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle;
  if (!lazy protocol witness table cache variable for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupedFormRadioGroupStyle and conformance GroupedFormRadioGroupStyle);
  }

  return result;
}

void type metadata accessor for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>()
{
  if (!lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_VStackLayout>, MEMORY[0x1E697E300], MEMORY[0x1E697E2E8], type metadata accessor for LayoutRadioGroupStyle);
    lazy protocol witness table accessor for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>();
    v0 = type metadata accessor for RadioGroupStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RadioGroupStyleModifier<LayoutRadioGroupStyle<_VStackLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>()
{
  result = lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>;
  if (!lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for LayoutRadioGroupStyle<_VStackLayout>, MEMORY[0x1E697E300], MEMORY[0x1E697E2E8], type metadata accessor for LayoutRadioGroupStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LayoutRadioGroupStyle<_VStackLayout> and conformance LayoutRadioGroupStyle<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<GroupedFormStyleContext>, RadioGroupStyleModifier<GroupedFormRadioGroupStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<GroupedFormStyleContext>, &type metadata for GroupedFormStyleContext, MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<GroupedFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier>, type metadata accessor for ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>);
    lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>()
{
  if (!lazy cache variable for type metadata for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>)
  {
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>);
    v0 = type metadata accessor for LabeledContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>);
    }
  }
}

void type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>()
{
  if (!lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    type metadata accessor for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>();
    _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_0(&lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextAlignment>, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>);
    }
  }
}

void type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for _LayoutTrait<HorizintolControlGroupingItemKey>, &type metadata for HorizintolControlGroupingItemKey, &protocol witness table for HorizintolControlGroupingItemKey, MEMORY[0x1E697E060]);
    lazy protocol witness table accessor for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>();
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>;
  if (!lazy protocol witness table cache variable for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>)
  {
    type metadata accessor for LayoutRadioGroupStyle<_HStackLayout>(255, &lazy cache variable for type metadata for _LayoutTrait<HorizintolControlGroupingItemKey>, &type metadata for HorizintolControlGroupingItemKey, &protocol witness table for HorizintolControlGroupingItemKey, MEMORY[0x1E697E060]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutTrait<HorizintolControlGroupingItemKey> and conformance _LayoutTrait<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier>(255);
    lazy protocol witness table accessor for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>()
{
  result = lazy protocol witness table cache variable for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>;
  if (!lazy protocol witness table cache variable for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>)
  {
    type metadata accessor for LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>>();
    lazy protocol witness table accessor for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabeledContent<ResolvedRadioGroupPicker.Label, ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>> and conformance <> LabeledContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>(255, &lazy cache variable for type metadata for ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>);
    lazy protocol witness table accessor for type Slice<AnyOptionButtonCollection> and conformance <> Slice<A>(&lazy protocol witness table cache variable for type ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, lazy protocol witness table accessor for type ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>> and conformance _TraitWritingModifier<A>, type metadata accessor for _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ForEach<Range<Int>, Int, ModifiedContent<OptionButtonElement, _EnvironmentKeyWritingModifier<TextAlignment>>>, _TraitWritingModifier<_LayoutTrait<HorizintolControlGroupingItemKey>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<AnyOptionButtonCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<OptionButton<Subview>, _EnvironmentKeyTransformModifier<Bool>>, _EnvironmentKeyWritingModifier<KeyboardShortcut?>>, ViewInputFlagModifier<HasKeyboardShortcut>>, _TraitWritingModifier<KeyboardShortcutPickerOptionTraitKey>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

SwiftUI::InsetListStyle __swiftcall InsetListStyle.init(alternatesRowBackgrounds:)(Swift::Bool alternatesRowBackgrounds)
{
  result.options.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

SwiftUI::InsetListStyle __swiftcall InsetListStyle.init(alternatesRowBackgrounds:selectionFollowsCursor:)(Swift::Bool alternatesRowBackgrounds, Swift::Bool selectionFollowsCursor)
{
  result.options.rawValue = _diagnoseUnavailableCodeReached()();
  __break(1u);
  return result;
}

uint64_t static InsetListStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext);
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for PlainListBody();
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  type metadata accessor for InsetList();
  type metadata accessor for StaticIf();
  type metadata accessor for _ListValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for InsetListStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance InsetListStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext);
  type metadata accessor for SelectionManagerBox();
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  swift_getWitnessTable();
  type metadata accessor for PlainListBody();
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext);
  lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  type metadata accessor for InsetList();
  v2 = type metadata accessor for StaticIf();
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

void *initializeBufferWithCopyOfBuffer for InsetList(void *__dst, void *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ((v8 + 16) & ~v8) + *(v7 + 64);
  v10 = *(v5 - 8);
  v11 = *(v10 + 80);
  if ((v11 | v8) <= 7 && ((*(v10 + 80) | *(v7 + 80)) & 0x100000) == 0 && ((-9 - v11 - ((v9 + 7) & 0xFFFFFFFFFFFFFFF8)) | v11) - *(*(v5 - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v15 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((*(v7 + 84) & 0x80000000) != 0)
    {
      if ((*(v7 + 48))(v15 + 1))
      {
LABEL_13:
        memcpy(__dst, __src, v9);
LABEL_16:
        v19 = ((__dst + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        v20 = ((__src + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
        *v19 = *v20;
        (*(v10 + 16))(v19 + 1, v20 + 1, v5);
        return __dst;
      }
    }

    else
    {
      v16 = *v15;
      if (*v15 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if (v16 != -1)
      {
        goto LABEL_13;
      }
    }

    *__dst = *__src;
    v17 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v15;
    v18 = *(v7 + 16);

    v18(v17 + 1, v15 + 1, v6);
    goto LABEL_16;
  }

  v14 = *__src;
  *__dst = *__src;
  __dst = (v14 + (((v11 | v8) & 0xF8 ^ 0x1F8) & ((v11 | v8) + 16)));

  return __dst;
}

void *assignWithCopy for InsetList(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  v11 = ((v9 + 16) & ~v9) + v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v28 = ~v9;
  if ((v8 & 0x80000000) != 0)
  {
    v26 = ((v9 + 16) & ~v9) + v10;
    v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v17 = *(v7 + 48);
    v23 = v17((v12 + v9 + 8) & ~v9, v8, v6);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = v26;
    v12 = v24;
    v15 = v17((v13 + v9 + 8) & ~v9, v8, v6);
    v4 = a2;
    v5 = a1;
    v3 = a3;
    if (!v23)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *v4;

        *v12 = *v13;

        (*(v7 + 24))((v12 + v9 + 8) & v28, (v13 + v9 + 8) & v28, v6);
        goto LABEL_12;
      }

      (*(v7 + 8))((v12 + v9 + 8) & v28, v6);
      goto LABEL_9;
    }
  }

  else
  {
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v12 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *v4;
    *v12 = *v13;
    v18 = *(v7 + 16);

    v18((v12 + v9 + 8) & v28, (v13 + v9 + 8) & v28, v6);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, v4, v11);
LABEL_12:
  v19 = ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = *(*(v3 + 16) - 8);
  (*(v21 + 24))((v19 + *(v21 + 80) + 8) & ~*(v21 + 80), (v20 + *(v21 + 80) + 8) & ~*(v21 + 80));
  return v5;
}

void *initializeWithTake for InsetList(void *__dst, void *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    (*(v7 + 32))((v15 + v8 + 8) & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v16 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = *(*(a3 + 16) - 8);
  (*(v18 + 32))((v16 + *(v18 + 80) + 8) & ~*(v18 + 80), (v17 + *(v18 + 80) + 8) & ~*(v18 + 80));
  return __dst;
}

void *assignWithTake for InsetList(void *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = *(v6 + 64);
  v10 = ((v8 + 16) & ~v8) + v9;
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v30 = ~v8;
  if ((v7 & 0x80000000) != 0)
  {
    v28 = ((v8 + 16) & ~v8) + v9;
    v16 = *(v6 + 48);
    v17 = *(a3 + 24);
    v18 = v16((v11 + v8 + 8) & ~v8, v7, v17);
    v19 = v16;
    v26 = v18;
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v20 = v7;
    v12 = v17;
    v21 = v17;
    v5 = a1;
    v10 = v28;
    v15 = v19((v13 + v8 + 8) & ~v8, v20, v21);
    v3 = a3;
    if (!v26)
    {
LABEL_5:
      if (!v15)
      {
        *v5 = *a2;

        *v11 = *v13;

        (*(v6 + 40))((v11 + v8 + 8) & v30, (v13 + v8 + 8) & v30, v12);
        goto LABEL_12;
      }

      (*(v6 + 8))((v11 + v8 + 8) & v30, v12);
      goto LABEL_9;
    }
  }

  else
  {
    v12 = *(a3 + 24);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v14 = *v13;
    if (*v13 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 + 1;
    if (*v11 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v15)
  {
    *v5 = *a2;
    *v11 = *v13;
    (*(v6 + 32))((v11 + v8 + 8) & v30, (v13 + v8 + 8) & v30, v12);
    goto LABEL_12;
  }

LABEL_9:
  memcpy(v5, a2, v10);
LABEL_12:
  v22 = ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((a2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = *(*(v3 + 16) - 8);
  (*(v24 + 40))((v22 + *(v24 + 80) + 8) & ~*(v24 + 80), (v23 + *(v24 + 80) + 8) & ~*(v24 + 80));
  return v5;
}

uint64_t getEnumTagSinglePayload for InsetList(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v7 - 1;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v5 + 80);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v15 = ((v12 + 16) & ~v12) + *(*(*(a3 + 24) - 8) + 64);
  v16 = v13 + 8;
  v17 = a2 - v14;
  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v18 = ((v16 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + *(*(v9 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v22 < 2)
    {
LABEL_31:
      if (v8 >= v11)
      {
        v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v6 & 0x80000000) != 0)
        {
          v31 = (*(v5 + 48))((v29 + v12 + 8) & ~v12);
        }

        else
        {
          v30 = *v29;
          if (v30 >= 0xFFFFFFFF)
          {
            LODWORD(v30) = -1;
          }

          v31 = v30 + 1;
        }

        if (v31 >= 2)
        {
          return v31 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v26 = ~v13;
        v27 = *(v10 + 48);
        v28 = (v16 + ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & v26;

        return v27(v28, v11, v9);
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_31;
  }

LABEL_18:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v14 + (v25 | v23) + 1;
}

void storeEnumTagSinglePayload for InsetList(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(a4 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 80);
  v12 = *(v9 + 80);
  v13 = v8 - 1;
  if (v10 <= v8 - 1)
  {
    v14 = v8 - 1;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  v15 = ((v11 + 16) & ~v11) + *(*(*(a4 + 24) - 8) + 64);
  v16 = ((v12 + 8 + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v12) + *(v9 + 64);
  v17 = a3 >= v14;
  v18 = a3 - v14;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v14 < a2)
  {
    v20 = ~v14 + a2;
    if (v16 >= 4)
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v21 = (v20 >> (8 * v16)) + 1;
    if (v16)
    {
      v24 = v20 & ~(-1 << (8 * v16));
      bzero(a1, v16);
      if (v16 != 3)
      {
        if (v16 == 2)
        {
          *a1 = v24;
          if (v19 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v20;
          if (v19 > 1)
          {
LABEL_14:
            if (v19 == 2)
            {
              *&a1[v16] = v21;
            }

            else
            {
              *&a1[v16] = v21;
            }

            return;
          }
        }

LABEL_60:
        if (v19)
        {
          a1[v16] = v21;
        }

        return;
      }

      *a1 = v24;
      a1[2] = BYTE2(v24);
    }

    if (v19 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v10)
  {
    v25 = *(v9 + 56);

    v25((v12 + 8 + (&a1[v15 + 7] & 0xFFFFFFFFFFFFFFF8)) & ~v12);
    return;
  }

  if (v13 < a2)
  {
    if (v15 <= 3)
    {
      v26 = ~(-1 << (8 * v15));
    }

    else
    {
      v26 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v26 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
LABEL_49:
        *a1 = v27;
        return;
      }

LABEL_74:
      *a1 = v27;
      return;
    }

    goto LABEL_75;
  }

  if (a2 >= v8)
  {
    if (v15 <= 3)
    {
      v30 = ~(-1 << (8 * v15));
    }

    else
    {
      v30 = -1;
    }

    if (!v15)
    {
      return;
    }

    v27 = v30 & (a2 - v8);
    if (v15 <= 3)
    {
      v28 = v15;
    }

    else
    {
      v28 = 4;
    }

    bzero(a1, v15);
    if (v28 <= 2)
    {
      if (v28 == 1)
      {
        goto LABEL_49;
      }

      goto LABEL_74;
    }

LABEL_75:
    if (v28 == 3)
    {
      *a1 = v27;
      a1[2] = BYTE2(v27);
    }

    else
    {
      *a1 = v27;
    }

    return;
  }

  v29 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v31 = *(v6 + 56);
    v32 = a2 + 1;

    v31((v29 + v11 + 8) & ~v11, v32);
  }

  else if (((a2 + 1) & 0x80000000) != 0)
  {
    *v29 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v29 = a2;
  }
}

unint64_t instantiation function for generic protocol witness table for InsetListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();
  *(a1 + 8) = result;
  return result;
}

BOOL protocol witness for static StyleContext.accepts<A>(_:at:) in conformance InsetListStyleContext(uint64_t a1, uint64_t a2, ValueMetadata *a3, ValueMetadata *a4)
{
  lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext();

  return specialized static ListStyleContext.accepts<A>(_:at:)(a4, a3);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance InsetListStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t InsetList.TableViewRoot.body(children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v5 = *(a2 + 24);
  v29 = a2;
  type metadata accessor for Binding();
  v7 = type metadata accessor for Optional();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = v26 - v8;
  v9 = *(a2 + 40);
  v26[2] = swift_getAssociatedTypeWitness();
  v26[1] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for TableViewListDataSource();
  WitnessTable = swift_getWitnessTable();
  v36[0] = v10;
  v36[1] = v5;
  v36[2] = WitnessTable;
  v36[3] = v9;
  v11 = type metadata accessor for TableViewListCore();
  v28 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  outlined init with copy of _VariadicView_Children(a1, v35);
  v17 = specialized Environment.wrappedValue.getter(*v3, *(v3 + 8) | (*(v3 + 9) << 8));
  v19 = v18;
  v20 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24) | (*(v3 + 25) << 8)));
  if (v21)
  {
    v20 = 26.0;
  }

  TableViewListDataSource.init(_:style:minRowHeight:minHeaderHeight:)(v35, 0, v17, v19 & 1, v36, v20);
  v22 = v30;
  (*(v31 + 16))(v30, v3 + *(v29 + 60), v32);
  v23 = specialized Environment.wrappedValue.getter(*(v3 + 32), *(v3 + 40));
  static TableViewListCore.Configuration.inset(isInExpandedSplitView:)(v23 & 1, v34);
  TableViewListCore.init(dataSource:selection:configuration:)(v36, v22, v34, v10, v13);
  static ViewBuilder.buildExpression<A>(_:)(v13, v11, &protocol witness table for TableViewListCore<A, B>);
  v24 = *(v28 + 8);
  v24(v13, v11);
  static ViewBuilder.buildExpression<A>(_:)(v16, v11, &protocol witness table for TableViewListCore<A, B>);
  return (v24)(v16, v11);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeViewList(root:inputs:body:) in conformance InsetList<A, B>.TableViewRoot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDCF90](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t initializeBufferWithCopyOfBuffer for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 80);
  v7 = *(v4 - 8);
  v8 = *(v7 + 80);
  if ((v8 | v6) <= 7 && ((*(v7 + 80) | *(v5 + 80)) & 0x100000) == 0 && ((((-114 - v6) | v6) - (*(*(*(a3 + 16) - 8) + 64) + (v8 | 7))) | v8 | 7) - (((v8 + 16) & ~v8) + *(*(v4 - 8) + 64)) >= 0xFFFFFFFFFFFFFFE7)
  {
    __n = ((v8 + 16) & ~v8) + *(*(v4 - 8) + 64);
    v52 = *(v4 - 8);
    v53 = *(a3 + 24);
    v13 = *a2;
    v14 = *(a2 + 8);
    v48 = *(*(a3 + 16) - 8);
    v49 = *(a3 + 16);
    v15 = a2;
    v51 = *(v7 + 84);
    v50 = *(v48 + 64);
    outlined copy of Environment<Selector?>.Content(*a2, v14);
    *a1 = v13;
    *(a1 + 8) = v14;
    v54 = a1;
    v16 = a1 & 0xFFFFFFFFFFFFFFF8;
    v15 &= 0xFFFFFFFFFFFFFFF8;
    v17 = *(v15 + 16);
    v18 = *(v15 + 25);
    v19 = *(v15 + 24);
    outlined copy of Environment<CGFloat?>.Content(v17, v19, v18);
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 25) = v18;
    v20 = (v16 + 33) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v15 + 33) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v27 = *(v21 + 32);
    v26 = *(v21 + 40);
    v28 = *(v21 + 56);
    v45 = *(v21 + 48);
    v46 = *(v21 + 64);
    v47 = *(v21 + 65);
    outlined copy of Environment<ListPadding>.Content(*v21, v23, v24, v25, v27, v26, v45, v28, v46, v47);
    *v20 = v22;
    *(v20 + 8) = v23;
    *(v20 + 16) = v24;
    *(v20 + 24) = v25;
    *(v20 + 32) = v27;
    *(v20 + 40) = v26;
    *(v20 + 48) = v45;
    *(v20 + 56) = v28;
    *(v20 + 64) = v46;
    *(v20 + 65) = v47;
    v29 = (v20 + 73) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v21 + 73) & 0xFFFFFFFFFFFFFFF8;
    v31 = *v30;
    LOBYTE(v28) = *(v30 + 8);
    outlined copy of Environment<Selector?>.Content(*v30, v28);
    *v29 = v31;
    *(v29 + 8) = v28;
    v32 = (v30 + v6 + 9) & ~v6;
    (*(v48 + 16))((v29 + v6 + 9) & ~v6, v32, v49);
    v33 = v50 + 7 + ((v29 + v6 + 9) & ~v6);
    v34 = ((v50 + 7 + v32) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v51 < 0)
    {
      v38 = v52;
      v37 = v53;
      v40 = (*(v52 + 48))(v35 + 1);
      v39 = (v33 & 0xFFFFFFFFFFFFFFF8);
      if (v40)
      {
LABEL_13:
        memcpy(v39, v34, __n);
        return v54;
      }
    }

    else
    {
      v36 = *v35;
      if (*v35 >= 0xFFFFFFFF)
      {
        LODWORD(v36) = -1;
      }

      v38 = v52;
      v37 = v53;
      v39 = (v33 & 0xFFFFFFFFFFFFFFF8);
      if (v36 != -1)
      {
        goto LABEL_13;
      }
    }

    *v39 = *v34;
    v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v41 = *v35;
    v42 = *(v38 + 16);

    v42(v41 + 1, v35 + 1, v37);
    return v54;
  }

  v11 = *a2;
  *a1 = *a2;
  v12 = v11 + (((v8 | v6) & 0xF8 ^ 0x1F8) & ((v8 | v6) + 16));

  return v12;
}

uint64_t assignWithCopy for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v6;
  outlined consume of Environment<Selector?>.Content(v7, v8);
  v69 = a1;
  v9 = a1 & 0xFFFFFFFFFFFFFFF8;
  v10 = a2 & 0xFFFFFFFFFFFFFFF8;
  v11 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v10 + 25);
  v12 = *(v10 + 24);
  outlined copy of Environment<CGFloat?>.Content(v11, v12, v5);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v9 + 16) = v11;
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v9 + 24) = v12;
  *(v9 + 25) = v5;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = (v10 + 33) & 0xFFFFFFFFFFFFFFF8;
  v66 = *(v16 + 8);
  v67 = *v16;
  v17 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v18 = *(v16 + 16);
  v19 = *(v16 + 24);
  v20 = *(v16 + 32);
  v21 = *(v16 + 40);
  v22 = *(v16 + 48);
  v23 = *(v16 + 56);
  LOBYTE(v11) = *(v16 + 64);
  LOBYTE(v5) = *(v16 + 65);
  outlined copy of Environment<ListPadding>.Content(*v16, v66, v18, v19, v20, v21, v22, v23, v11, v5);
  v24 = *v17;
  v25 = *(v17 + 8);
  v26 = *(v17 + 16);
  v27 = *(v17 + 24);
  v28 = *(v17 + 32);
  v29 = *(v17 + 40);
  v30 = *(v17 + 48);
  v31 = *(v17 + 56);
  v32 = *(v17 + 64);
  v33 = *(v17 + 65);
  *v17 = v67;
  *(v17 + 8) = v66;
  *(v17 + 16) = v18;
  *(v17 + 24) = v19;
  *(v17 + 32) = v20;
  *(v17 + 40) = v21;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  *(v17 + 64) = v11;
  *(v17 + 65) = v5;
  outlined consume of Environment<ListPadding>.Content(v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
  v34 = (v17 + 73) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v16 + 73) & 0xFFFFFFFFFFFFFFF8;
  v36 = *v35;
  LOBYTE(v5) = *(v35 + 8);
  outlined copy of Environment<Selector?>.Content(*v35, v5);
  v37 = *v34;
  v38 = *(v34 + 8);
  *v34 = v36;
  *(v34 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v37, v38);
  v39 = *(*(a3 + 16) - 8);
  v40 = v39 + 24;
  v41 = *(v39 + 80);
  v42 = (v41 + 9 + v34) & ~v41;
  v43 = (v41 + 9 + v35) & ~v41;
  (*(v39 + 24))(v42, v43);
  v44 = *(a3 + 24);
  v45 = *(v44 - 8);
  v46 = *(v45 + 80);
  v47 = (v46 | 7) + *(v40 + 40);
  v48 = ((v47 + v42) & ~(v46 | 7));
  v49 = ((v47 + v43) & ~(v46 | 7));
  v50 = *(v45 + 84);
  v51 = ~v46;
  v52 = (v46 + 16) & ~v46;
  v53 = *(v45 + 64);
  v54 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v50 & 0x80000000) != 0)
  {
    v65 = *(v45 + 64);
    v60 = v49;
    v61 = *(v45 + 48);
    v64 = v61((v54 + v46 + 8) & ~v46, v50, v44);
    v55 = ((v60 + 15) & 0xFFFFFFFFFFFFFFF8);
    v51 = ~v46;
    v57 = v61((v55 + v46 + 8) & ~v46, v50, v44);
    v54 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v49 = v60;
    v53 = v65;
    v52 = (v46 + 16) & ~v46;
    if (!v64)
    {
LABEL_5:
      if (!v57)
      {
        *v48 = *v49;

        *v54 = *v55;

        (*(v45 + 24))((v54 + v46 + 8) & v51, (v55 + v46 + 8) & v51, v44);
        return v69;
      }

      v58 = v53;

      (*(v45 + 8))((v54 + v46 + 8) & v51, v44);
      v59 = v52 + v58;
      goto LABEL_10;
    }
  }

  else
  {
    v55 = ((v49 + 15) & 0xFFFFFFFFFFFFFFF8);
    v56 = *v55;
    if (*v55 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v56) = -1;
    }

    v57 = v56 + 1;
    if (*v54 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v57)
  {
    *v48 = *v49;
    *v54 = *v55;
    v62 = *(v45 + 16);

    v62((v54 + v46 + 8) & v51, (v55 + v46 + 8) & v51, v44);
    return v69;
  }

  v59 = v52 + v53;
LABEL_10:
  memcpy(v48, v49, v59);
  return v69;
}

uint64_t initializeWithTake for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  *(v5 + 24) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v5 + 16) = v6;
  v7 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v8 = ((a2 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v8 + 32);
  v9 = *(v8 + 48);
  v11 = *(v8 + 16);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 32) = v10;
  *(v7 + 48) = v9;
  *(v7 + 16) = v11;
  *v7 = *v8;
  v12 = (v7 + 73) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v8 + 73) & 0xFFFFFFFFFFFFFFF8;
  v14 = *v13;
  *(v12 + 8) = *(v13 + 8);
  *v12 = v14;
  v15 = *(*(a3 + 16) - 8);
  v16 = v15 + 32;
  v17 = *(v15 + 80);
  v18 = (v17 + 9 + v12) & ~v17;
  v19 = (v17 + 9 + v13) & ~v17;
  (*(v15 + 32))(v18, v19);
  v20 = *(a3 + 24);
  v21 = *(v16 + 32);
  v22 = *(v20 - 8);
  v23 = *(v22 + 80);
  v24 = (v23 | 7) + v21;
  v25 = ((v24 + v18) & ~(v23 | 7));
  v26 = ((v24 + v19) & ~(v23 | 7));
  v27 = ~v23;
  v28 = *(v22 + 64);
  v29 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v22 + 84) & 0x80000000) == 0)
  {
    v30 = *v29;
    if (*v29 >= 0xFFFFFFFF)
    {
      LODWORD(v30) = -1;
    }

    if (v30 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v25 = *v26;
    v31 = (v25 + 15);
    *(v31 & 0xFFFFFFFFFFFFFFF8) = *v29;
    (*(v22 + 32))((v23 + 8 + (v31 & 0xFFFFFFFFFFFFFFF8)) & v27, (v29 + v23 + 8) & v27, v20);
    return a1;
  }

  if (!(*(v22 + 48))((v29 + v23 + 8) & v27))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v25, v26, ((v23 + 16) & ~v23) + v28);
  return a1;
}

uint64_t assignWithTake for InsetList.CollectionViewBody(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *a1;
  v9 = *(a1 + 8);
  *a1 = v6;
  *(a1 + 8) = v7;
  outlined consume of Environment<Selector?>.Content(v8, v9);
  v10 = a1 & 0xFFFFFFFFFFFFFFF8;
  v4 = (v4 & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v4 + 24);
  v12 = *(v4 + 25);
  v13 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 16);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 25);
  *(v10 + 16) = v4[2];
  v15 = *((a1 & 0xFFFFFFFFFFFFFFF8) + 24);
  *(v10 + 24) = v11;
  *(v10 + 25) = v12;
  outlined consume of Environment<CGFloat?>.Content(v13, v15, v14);
  v16 = (v4 + 33) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 64);
  v18 = *(v16 + 65);
  v19 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  v23 = *(v19 + 24);
  v24 = *(v19 + 32);
  v25 = *(v19 + 40);
  v26 = *(v19 + 48);
  v27 = *(v19 + 56);
  v28 = *(v19 + 64);
  v29 = *(v19 + 65);
  v30 = *(v16 + 16);
  v31 = *(v16 + 32);
  v32 = *(v16 + 48);
  *v19 = *v16;
  *(v19 + 16) = v30;
  *(v19 + 32) = v31;
  *(v19 + 48) = v32;
  *(v19 + 64) = v17;
  *(v19 + 65) = v18;
  outlined consume of Environment<ListPadding>.Content(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v33 = (v19 + 73) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v16 + 73) & 0xFFFFFFFFFFFFFFF8;
  v35 = *(v34 + 8);
  v36 = *v33;
  v37 = *(v33 + 8);
  *v33 = *v34;
  *(v33 + 8) = v35;
  outlined consume of Environment<Selector?>.Content(v36, v37);
  v38 = *(*(a3 + 16) - 8);
  v39 = v38 + 40;
  v40 = *(v38 + 80);
  v41 = (v40 + 9 + v33) & ~v40;
  v42 = (v40 + 9 + v34) & ~v40;
  (*(v38 + 40))(v41, v42);
  v43 = *(a3 + 24);
  v44 = *(v43 - 8);
  v45 = *(v44 + 80);
  v46 = (v45 | 7) + *(v39 + 24);
  v47 = ((v46 + v41) & ~(v45 | 7));
  v48 = ((v46 + v42) & ~(v45 | 7));
  v49 = *(v44 + 84);
  v50 = (v45 + 16) & ~v45;
  v51 = *(v44 + 64);
  v52 = ((v47 + 15) & 0xFFFFFFFFFFFFFFF8);
  v63 = ~v45;
  if ((v49 & 0x80000000) != 0)
  {
    v62 = v48;
    v58 = *(v44 + 48);
    v61 = *(v44 + 64);
    v60 = v58((v52 + v45 + 8) & ~v45, v49, v43);
    v53 = ((v62 + 15) & 0xFFFFFFFFFFFFFFF8);
    v55 = v58((v53 + v45 + 8) & ~v45, v49, v43);
    v51 = v61;
    v50 = (v45 + 16) & ~v45;
    v48 = v62;
    if (!v60)
    {
LABEL_5:
      if (!v55)
      {
        *v47 = *v48;

        *v52 = *v53;

        (*(v44 + 40))((v52 + v45 + 8) & v63, (v53 + v45 + 8) & v63, v43);
        return a1;
      }

      v56 = v51;

      (*(v44 + 8))((v52 + v45 + 8) & v63, v43);
      v57 = v50 + v56;
      goto LABEL_10;
    }
  }

  else
  {
    v53 = ((v48 + 15) & 0xFFFFFFFFFFFFFFF8);
    v54 = *v53;
    if (*v53 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v54) = -1;
    }

    v55 = v54 + 1;
    if (*v52 > 0xFFFFFFFEuLL)
    {
      goto LABEL_5;
    }
  }

  if (!v55)
  {
    *v47 = *v48;
    *v52 = *v53;
    (*(v44 + 32))((v52 + v45 + 8) & v63, (v53 + v45 + 8) & v63, v43);
    return a1;
  }

  v57 = v50 + v51;
LABEL_10:
  memcpy(v47, v48, v57);
  return a1;
}

uint64_t getEnumTagSinglePayload for InsetList.CollectionViewBody(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a3 + 24) - 8);
  v9 = v8;
  v10 = *(v8 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v8 + 84);
  }

  v12 = v11 - 1;
  v13 = *(v6 + 80);
  v14 = *(*(v5 - 8) + 64);
  v15 = *(v8 + 80);
  if (v7 <= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v15 | 7;
  v18 = a2 - v16;
  if (a2 <= v16)
  {
    goto LABEL_31;
  }

  v19 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-114 - v13) | v13) - (v14 + v17)) | v17) - 2;
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((v18 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v23 < 2)
    {
LABEL_31:
      v27 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + v13 + 9) & ~v13;
      if (v7 >= v12)
      {
        v31 = *(v6 + 48);

        return v31(v27, v7, v5);
      }

      else
      {
        v28 = ((((v27 + v14 + v17) & ~v17) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) != 0)
        {
          v30 = (*(v9 + 48))((v28 + v15 + 8) & ~v15);
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          v30 = v29 + 1;
        }

        if (v30 >= 2)
        {
          return v30 - 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_31;
  }

LABEL_18:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (*(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-114 - v13) | v13) - (v14 + v17)) | v17) == 2)
  {
    v26 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v25 = *(*(*(a3 + 24) - 8) + 64) - ((-17 - v15) | v15) - ((((-114 - v13) | v13) - (v14 + v17)) | v17) - 2;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  return v16 + (v26 | v24) + 1;
}

void storeEnumTagSinglePayload for InsetList.CollectionViewBody(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = v13 - 1;
  if (v7 <= v13 - 1)
  {
    v15 = v13 - 1;
  }

  else
  {
    v15 = *(v6 + 84);
  }

  v16 = v12 | 7;
  v17 = ((v12 + 16) & ~v12) + *(v8 + 64);
  v18 = (((v12 | 7) + v11 + ((v10 + 113) & ~v10)) & ~(v12 | 7)) + v17;
  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v24 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v24))
      {
        v21 = 4;
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
          v21 = v25;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a2)
  {
    v22 = ~v15 + a2;
    if (v18 >= 4)
    {
      bzero(a1, v18);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_60;
    }

    v23 = (v22 >> (8 * v18)) + 1;
    if (v18)
    {
      v26 = v22 & ~(-1 << (8 * v18));
      bzero(a1, v18);
      if (v18 != 3)
      {
        if (v18 == 2)
        {
          *a1 = v26;
          if (v21 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v22;
          if (v21 > 1)
          {
LABEL_14:
            if (v21 == 2)
            {
              *(a1 + v18) = v23;
            }

            else
            {
              *(a1 + v18) = v23;
            }

            return;
          }
        }

LABEL_60:
        if (v21)
        {
          *(a1 + v18) = v23;
        }

        return;
      }

      *a1 = v26;
      *(a1 + 2) = BYTE2(v26);
    }

    if (v21 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_60;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *(a1 + v18) = 0;
  }

  else if (v21)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  v27 = ((((((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 73) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;
  if (v7 >= v14)
  {
    v32 = *(v6 + 56);

    v32(v27);
  }

  else
  {
    v28 = (v27 + v11 + v16) & ~v16;
    if (v14 >= a2)
    {
      if (a2 >= v13)
      {
        if (v17 <= 3)
        {
          v34 = ~(-1 << (8 * v17));
        }

        else
        {
          v34 = -1;
        }

        if (v17)
        {
          v30 = v34 & (a2 - v13);
          if (v17 <= 3)
          {
            v31 = v17;
          }

          else
          {
            v31 = 4;
          }

          bzero(((v27 + v11 + v16) & ~v16), v17);
          if (v31 <= 2)
          {
            if (v31 == 1)
            {
              goto LABEL_46;
            }

            goto LABEL_74;
          }

LABEL_75:
          if (v31 == 3)
          {
            *v28 = v30;
            *(v28 + 2) = BYTE2(v30);
          }

          else
          {
            *v28 = v30;
          }
        }
      }

      else
      {
        v33 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v35 = *(v8 + 56);
          v36 = a2 + 1;

          v35((v33 + v12 + 8) & ~v12, v36);
        }

        else if (((a2 + 1) & 0x80000000) != 0)
        {
          *v33 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v33 = a2;
        }
      }
    }

    else
    {
      if (v17 <= 3)
      {
        v29 = ~(-1 << (8 * v17));
      }

      else
      {
        v29 = -1;
      }

      if (v17)
      {
        v30 = v29 & (a2 - v13);
        if (v17 <= 3)
        {
          v31 = v17;
        }

        else
        {
          v31 = 4;
        }

        bzero(((v27 + v11 + v16) & ~v16), v17);
        if (v31 <= 2)
        {
          if (v31 == 1)
          {
LABEL_46:
            *v28 = v30;
            return;
          }

LABEL_74:
          *v28 = v30;
          return;
        }

        goto LABEL_75;
      }
    }
  }
}

uint64_t instantiation function for generic protocol witness table for InsetList<A, B>.TableViewRoot(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultMinListRowHeight : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.defaultMinListRowHeight.setter()
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues.defaultMinListHeaderHeight : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.defaultMinListHeaderHeight : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.defaultMinListHeaderHeight.setter()
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.defaultMinListHeaderHeight.getter(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();
    PropertyList.subscript.getter();
  }

  return v7;
}

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, void (*a5)(uint64_t))
{
  v7 = *(a2 + 48);
  v20 = *(a2 + 32);
  v21 = v7;
  v22 = *(a2 + 64);
  v23 = *(a2 + 80);
  v8 = *(a2 + 16);
  v18 = *a2;
  v19 = v8;
  LODWORD(v26[0]) = a1;
  v9 = outlined init with copy of _ViewInputs(a2, v28);
  a5(v9);
  static EnvironmentModifier._makeInputs(modifier:inputs:)();
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v25 = v23;
  v24[0] = v18;
  v24[1] = v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v12 = v18;
  v13 = v19;
  v10 = outlined init with copy of _ViewInputs(v24, v28);
  a3(v10, &v12);
  v26[2] = v14;
  v26[3] = v15;
  v26[4] = v16;
  v27 = v17;
  v26[0] = v12;
  v26[1] = v13;
  outlined destroy of _ViewInputs(v26);
  v28[2] = v20;
  v28[3] = v21;
  v28[4] = v22;
  v29 = v23;
  v28[0] = v18;
  v28[1] = v19;
  return outlined destroy of _ViewInputs(v28);
}

uint64_t specialized static ViewModifier<>._makeView(modifier:inputs:body:)(int a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, void (*a5)(_OWORD *, __int128 *))
{
  v7 = *(a2 + 48);
  v19 = *(a2 + 32);
  v20 = v7;
  v21 = *(a2 + 64);
  v22 = *(a2 + 80);
  v8 = *(a2 + 16);
  v17 = *a2;
  v18 = v8;
  LODWORD(v25[0]) = a1;
  outlined init with copy of _ViewInputs(a2, v27);
  a5(v25, &v17);
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
  v9 = outlined init with copy of _ViewInputs(v23, v27);
  a3(v9, &v11);
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26 = v16;
  v25[0] = v11;
  v25[1] = v12;
  outlined destroy of _ViewInputs(v25);
  v27[2] = v19;
  v27[3] = v20;
  v27[4] = v21;
  v28 = v22;
  v27[0] = v17;
  v27[1] = v18;
  return outlined destroy of _ViewInputs(v27);
}

uint64_t EnvironmentValues.listDeleteControlVisibility.getter(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (*(v4 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a1, a2, a3, MEMORY[0x1E697FE38]);
    a4();

    return PropertyList.subscript.getter();
  }
}

double EnvironmentValues.rowInset.getter()
{
  EnvironmentValues.defaultPadding.getter();
  EdgeInsets.horizontal.getter();
  return v0 * 0.5;
}

void (*EnvironmentValues.defaultMinListRowHeight.modify(void *a1))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v3[4] = *v1;
  v5 = v1[1];
  v3[5] = v5;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  if (*(v4 + 8) == 1)
  {
    v6 = EnvironmentValues.systemDefaultMinListRowHeight.getter();
  }

  else
  {
    v6 = *v4;
  }

  *(v4 + 2) = v6;
  return EnvironmentValues.defaultMinListRowHeight.modify;
}

void EnvironmentValues.defaultMinListRowHeight.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  *v1 = *(*a1 + 16);
  v1[8] = 0;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListRowHeightKey>, &type metadata for DefaultMinListRowHeightKey, &protocol witness table for DefaultMinListRowHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListRowHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

void (*EnvironmentValues.defaultMinListHeaderHeight.modify(void *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v3[5] = *v1;
  v5 = v1[1];
  v3[6] = v5;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();
  if (v5)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v6 = *(v4 + 24);
  *v4 = v4[2];
  *(v4 + 8) = v6;
  return EnvironmentValues.defaultMinListHeaderHeight.modify;
}

void EnvironmentValues.defaultMinListHeaderHeight.modify(void **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 8);
  v3 = (*a1)[6];
  (*a1)[2] = **a1;
  v1[24] = v2;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultMinListHeaderHeightKey>, &type metadata for DefaultMinListHeaderHeightKey, &protocol witness table for DefaultMinListHeaderHeightKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultMinListHeaderHeightKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v3)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  free(v1);
}

double EnvironmentValues.horizontalListMargin.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListMarginKey>, &type metadata for ListMarginKey, &protocol witness table for ListMarginKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListMarginKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance ListMarginKey@<X0>(double *a1@<X8>)
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
  result = static SemanticFeature.isEnabled.getter();
  v3 = 15.0;
  if (result)
  {
    v3 = 16.0;
  }

  *a1 = v3;
  return result;
}

uint64_t View.listHasStackBehavior()(uint64_t a1, uint64_t a2)
{
  v3 = 1;
  v4 = 256;
  return MEMORY[0x18D00A570](&v3, a1, &type metadata for ListHasStackBehaviorModifier, a2);
}

uint64_t View.listHasLazyStackBehavior()(uint64_t a1, uint64_t a2)
{
  v3 = 2;
  v4 = 256;
  return MEMORY[0x18D00A570](&v3, a1, &type metadata for ListHasStackBehaviorModifier, a2);
}

uint64_t View.listSizesToFit(maxHeight:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = 0;
  return MEMORY[0x18D00A570](&v4, a1, &type metadata for ListHasStackBehaviorModifier, a2);
}

uint64_t EnvironmentValues.listStackBehavior.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ListHasStackBehaviorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, lazy protocol witness table accessor for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier);
}

uint64_t protocol witness for static EnvironmentModifier.makeEnvironment(modifier:environment:) in conformance ListHasStackBehaviorModifier(uint64_t a1, uint64_t a2)
{
  Value = AGGraphGetValue();
  v4 = *(Value + 8) | (*(Value + 9) << 8);
  v5 = *Value;

  return specialized static ListHasStackBehaviorModifier.makeEnvironment(behavior:environment:)(v5, v4, a2);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListHasStackBehaviorModifier()
{
  lazy protocol witness table accessor for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ListHasLazyStackBehaviorInScrollableAxisModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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
  return specialized static ViewModifier<>._makeView(modifier:inputs:body:)(v4, v8, a3, a4, lazy protocol witness table accessor for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance ListHasStackBehaviorModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(int *, _BYTE *, uint64_t, uint64_t))
{
  v12 = *a1;
  outlined init with copy of _ViewListInputs(a2, v16);
  v15 = v12;
  v13 = a8(&v15, v16, a5, a7);
  a3(v13, v16);
  return outlined destroy of _ViewListInputs(v16);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance ListHasLazyStackBehaviorInScrollableAxisModifier()
{
  lazy protocol witness table accessor for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier();

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t static ListAccessoryVisibility.editing(_:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t View.listReorderControlVisibility(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t key path getter for EnvironmentValues.listReorderControlVisibility : EnvironmentValues, serialized(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t EnvironmentValues.listReorderControlVisibility.setter(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
  a5();

  PropertyList.subscript.setter();
  if (*(v5 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path setter for EnvironmentValues.listReorderControlVisibility : EnvironmentValues, serialized(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, void (*a8)(void))
{
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a5, a6, a7, MEMORY[0x1E697FE38]);
  a8();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.listReorderControlVisibility.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListAccessoryVisibilityKey>, &type metadata for ListAccessoryVisibilityKey, &protocol witness table for ListAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.listReorderControlVisibility.modify;
}

uint64_t key path getter for EnvironmentValues.listReorderControlVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, void (*a5)(void)@<X6>, _BYTE *a6@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();
    result = PropertyList.subscript.getter();
  }

  *a6 = v9;
  return result;
}

uint64_t (*EnvironmentValues.listDeleteControlVisibility.modify(uint64_t **a1))(uint64_t a1, uint64_t a2)
{
  v3 = *v1;
  v2 = v1[1];
  *a1 = v1;
  a1[1] = v3;
  a1[2] = v2;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey>, &type metadata for ListDeleteAccessoryVisibilityKey, &protocol witness table for ListDeleteAccessoryVisibilityKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListDeleteAccessoryVisibilityKey> and conformance EnvironmentPropertyKey<A>();
  if (v2)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return EnvironmentValues.listDeleteControlVisibility.modify;
}

uint64_t EnvironmentValues.listReorderControlVisibility.modify(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v7 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a3, a4, a5, MEMORY[0x1E697FE38]);
  a6();

  PropertyList.subscript.setter();
  if (v7)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ScrollContentBackground>, &type metadata for ScrollContentBackground, MEMORY[0x1E6980B20]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<ScrollContentBackground> and conformance _EnvironmentKeyTransformModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier()
{
  result = lazy protocol witness table cache variable for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier;
  if (!lazy protocol witness table cache variable for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollContentBackgroundModifier and conformance ScrollContentBackgroundModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA32_EnvironmentKeyTransformModifierVyAA06ScrollE10BackgroundVGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), void (*a5)(void))
{
  type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, a2, a3, a4);
  type metadata accessor for ModifiedContent();
  a5();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<ScrollContentBackground>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ListAccessoryVisibility>, &type metadata for ListAccessoryVisibility, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ListAccessoryVisibility> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ListStackBehavior(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 10) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts()
{
  result = lazy protocol witness table cache variable for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts;
  if (!lazy protocol witness table cache variable for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListAccessoryVisibility.Guts and conformance ListAccessoryVisibility.Guts);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.listStackBehavior.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 9) = v6;
  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.listReorderControlVisibility.getter@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, _BYTE *a6@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, a2, a3, a4, MEMORY[0x1E697FE38]);
    a5();

    PropertyList.subscript.getter();
  }

  *a6 = v9;
  return result;
}

uint64_t specialized static ListHasStackBehaviorModifier.makeEnvironment(behavior:environment:)(uint64_t a1, __int16 a2, uint64_t a3)
{
  v15 = a1;
  v16 = a2 & 0x1FF;
  type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  v6 = *(a3 + 8);
  if (v6)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  if ((a2 & 0x100) != 0 && a1 | a2)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    if (v6)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    v8 = v15;
    swift_getKeyPath();
    lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v15 + 16, &v15);
    swift_getKeyPath();
    v14[0] = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v8 + 280, v14);
    if (v14[3])
    {
      outlined init with take of ScrollEnvironmentTransform(v14, &v11);
      v9 = *(&v12 + 1);
      v10 = v13;
      __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
      (*(v10 + 8))(&v15, v9, v10);
      __swift_destroy_boxed_opaque_existential_1(&v11);
    }

    LOBYTE(v15) = 0;
    outlined init with copy of ScrollEnvironmentProperties(&v15, v14);
    type metadata accessor for ScrollEnvironmentStorage();
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    swift_allocObject();
    v14[0] = ScrollEnvironmentStorage.init(_:transform:)(v14, &v11);
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v6)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    return outlined destroy of ScrollEnvironmentProperties(&v15);
  }

  return result;
}

uint64_t specialized static ListHasLazyStackBehaviorInScrollableAxisModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2)
{
  EnvironmentValues.nearestScrollableAxes.getter();
  AGGraphGetValue();
  result = Axis.Set.contains(_:)();
  if (result)
  {
    v11 = 2;
    v12 = 256;
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListHasStackBehaviorKey>, &type metadata for ListHasStackBehaviorKey, &protocol witness table for ListHasStackBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListHasStackBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    v4 = *(a2 + 8);
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();

      type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {

      type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
      PropertyList.subscript.getter();
    }

    swift_getKeyPath();
    lazy protocol witness table accessor for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v10[0] + 16, &v11);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentTransform?(v10[0] + 280, v10);
    if (v10[3])
    {
      outlined init with take of ScrollEnvironmentTransform(v10, &v7);
      v5 = *(&v8 + 1);
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
      (*(v6 + 8))(&v11, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(&v7);
    }

    LOBYTE(v11) = 0;
    outlined init with copy of ScrollEnvironmentProperties(&v11, v10);
    type metadata accessor for ScrollEnvironmentStorage();
    v7 = 0u;
    v8 = 0u;
    v9 = 0;
    swift_allocObject();
    v10[0] = ScrollEnvironmentStorage.init(_:transform:)(v10, &v7);
    type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.setter();
    if (v4)
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    return outlined destroy of ScrollEnvironmentProperties(&v11);
  }

  return result;
}

unint64_t type metadata accessor for ScrollEnvironmentTransform()
{
  result = lazy cache variable for type metadata for ScrollEnvironmentTransform;
  if (!lazy cache variable for type metadata for ScrollEnvironmentTransform)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ScrollEnvironmentTransform);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier()
{
  result = lazy protocol witness table cache variable for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier;
  if (!lazy protocol witness table cache variable for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListHasLazyStackBehaviorInScrollableAxisModifier and conformance ListHasLazyStackBehaviorInScrollableAxisModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier()
{
  result = lazy protocol witness table cache variable for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier;
  if (!lazy protocol witness table cache variable for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListHasStackBehaviorModifier and conformance ListHasStackBehaviorModifier);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<DefaultMinListRowHeightKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t Scene.defaultSize(_:)(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.defaultSize(_:), v6, a1);
}

uint64_t closure #1 in Scene.defaultSize(_:)(uint64_t result, double a2, double a3)
{
  v3 = *result;
  v4 = *(*result + 16);
  if (v4)
  {
    v7 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v3 = result;
    }

    if (v4 > *(v3 + 16))
    {
      __break(1u);
    }

    else
    {
      v8 = (v3 + 568);
      do
      {
        *(v8 - 2) = a2;
        *(v8 - 1) = a3;
        *v8 = 0;
        v8 += 71;
        --v4;
      }

      while (v4);
      *v7 = v3;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role()
{
  result = lazy protocol witness table cache variable for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role;
  if (!lazy protocol witness table cache variable for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowCascadeBehavior.Role and conformance WindowCascadeBehavior.Role);
  }

  return result;
}

uint64_t type metadata completion function for PullDownMenuPresentationModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for PullDownMenuPresentationModifier(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64) + 7;
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + ((v6 + 17) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
  }

  else
  {
    *(a1 + 8) = a2[1];
    *(a1 + 16) = *(a2 + 16);
    v12 = (a1 + v6 + 17) & ~v6;
    v13 = (a2 + v6 + 17) & ~v6;
    v14 = *(v5 + 16);

    v14(v12, v13, v4);
    *((v7 + v12) & 0xFFFFFFFFFFFFFFF8) = *((v7 + v13) & 0xFFFFFFFFFFFFFFF8);
  }

  return a1;
}

uint64_t destroy for PullDownMenuPresentationModifier(uint64_t a1, uint64_t a2)
{

  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(*(*(a2 + 16) - 8) + 80) + 17) & ~*(*(*(a2 + 16) - 8) + 80));
}

uint64_t initializeWithCopy for PullDownMenuPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *((*(v7 + 48) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 48) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for PullDownMenuPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 24;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 24))(v9, v10);
  *((*(v7 + 40) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 40) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t initializeWithTake for PullDownMenuPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (v6 + 17 + a1) & ~v6;
  v8 = (v6 + 17 + a2) & ~v6;
  (*(v4 + 32))(v7, v8);
  *((*(v5 + 32) + 7 + v7) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 32) + 7 + v8) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for PullDownMenuPresentationModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  v6 = *(*(a3 + 16) - 8);
  v7 = v6 + 40;
  v8 = *(v6 + 80);
  v9 = (v8 + 17 + a1) & ~v8;
  v10 = (v8 + 17 + a2) & ~v8;
  (*(v6 + 40))(v9, v10);
  *((*(v7 + 24) + 7 + v9) & 0xFFFFFFFFFFFFFFF8) = *((*(v7 + 24) + 7 + v10) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t getEnumTagSinglePayload for PullDownMenuPresentationModifier(uint64_t a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for PullDownMenuPresentationModifier(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = &result[v8 + 17] & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        result[16] = 0;
        *result = a2 & 0x7FFFFFFF;
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PullDownMenuPresentationModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

void type metadata completion function for UITableViewListCoordinator()
{
  type metadata accessor for ShadowListUpdateRecorder();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Binding();
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      _s10Foundation9IndexPathVSgMaTm_0(319, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ListCoreBatchUpdates();
        if (v3 <= 0x3F)
        {
          type metadata accessor for Optional();
          if (v4 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)(uint64_t result)
{
  v2 = v1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  if (result)
  {
    v5 = result;
    v6 = v4;
    v11 = result;

    if (Transaction.animationIgnoringTransitionPhase.getter())
    {

      *(v2 + *((*v3 & *v2) + 0xF8)) = 1;
      UITableViewListCoordinator.isAnimatingInitialLayout.didset();
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = *(v6 + 80);
      *(v8 + 24) = *(v6 + 88);
      *(v8 + 40) = *(v6 + 104);
      *(v8 + 48) = v7;

      Transaction.addAnimationListener(allFinished:)();

      v5 = v11;
    }

    v9 = *((*v3 & *v2) + 0x88);
    swift_beginAccess();
    v10 = *(v2 + v9);
    *(v2 + v9) = v5;
    return outlined consume of ListItemTint?(v10);
  }

  return result;
}

id UITableViewListCoordinator.dragAndDropController.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xA8);
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = *&v0[v1];
  }

  else
  {
    v4 = closure #1 in UITableViewListCoordinator.dragAndDropController.getter(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v89 = a2;
  v92 = a1;
  v93 = (*MEMORY[0x1E69E7D40] & *v4);
  v6 = v93;
  v7 = v93[10];
  v81 = type metadata accessor for Optional();
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v74[-v8];
  v84 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v74[-v10];
  v11 = v6[12];
  v87 = type metadata accessor for ShadowListDataSource();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v74[-v12];
  v77 = v6[11];
  v13 = type metadata accessor for Binding();
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v74[-v16];
  v83 = v11;
  v88 = v7;
  v18 = type metadata accessor for ListCoreBatchUpdates();
  v19 = *(v18 - 1);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74[-v20];
  v82 = v6[31];
  if ((*(v4 + v82) & 1) == 0)
  {
    v22 = v93[17];
    swift_beginAccess();
    v23 = *(v4 + v22);
    *(v4 + v22) = a3;
    outlined consume of ListItemTint?(v23);
    v6 = (*MEMORY[0x1E69E7D40] & *v4);
  }

  v24 = v6[24];
  swift_beginAccess();
  v25 = *(v19 + 16);
  v94 = v24;
  v91 = v25;
  v25(v21, v4 + v24, v18);
  LOBYTE(v24) = ListCoreBatchUpdates.isEmpty.getter(v18);
  v90 = *(v19 + 8);
  v90(v21, v18);
  if (v24)
  {
    v26 = *v4;
    v27 = *MEMORY[0x1E69E7D40];
    if ((*(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xD8)) & 1) == 0)
    {
      v76 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xB0);
      if (*(v4 + v76))
      {
        v75 = 0;
      }

      else
      {
        UITableViewListCoordinator.resolvedEditMode.getter(v98);
        if (v98[0] == 1)
        {
          v75 = 0;
          v26 = *v4;
          v27 = *MEMORY[0x1E69E7D40];
        }

        else
        {
          v75 = [v92 isEditing];
          UITableViewListCoordinator.resolvedEditMode.getter(v98);
          v26 = *v4;
          v27 = *MEMORY[0x1E69E7D40];
          if (v75 == (v98[0] == 0))
          {
            v28 = 1;
          }

          else
          {
            v28 = *(v4 + *((v27 & v26) + 0xE8));
          }

          v75 = v28;
        }
      }

      v29 = *((v27 & v26) + 0x78);
      swift_beginAccess();
      (*(v15 + 16))(v17, v4 + v29, v14);
      v30 = (*(*(v13 - 8) + 48))(v17, 1, v13) != 1;
      (*(v15 + 8))(v17, v14);
      v31 = v92;
      [v92 setAllowsMultipleSelectionDuringEditing_];
      if (*(v4 + v76))
      {
        UITableViewListCoordinator.resolvedEditMode.getter(v97);
        if (v97[0])
        {
          specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(v31);
          [v31 setEditing:1 animated:0];
        }
      }

      else
      {
        v32 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
        swift_beginAccess();
        v33 = v86;
        v34 = v85;
        v35 = v87;
        (*(v86 + 16))(v85, v4 + v32, v87);
        swift_beginAccess();
        WitnessTable = swift_getWitnessTable();
        ListCoreBatchUpdates.formUpdates<A>(from:to:)(v34, v89, v18, v35, WitnessTable);
        swift_endAccess();
        v37 = v34;
        v31 = v92;
        (*(v33 + 8))(v37, v35);
        if (*(v4 + v82) == 1)
        {
          v91(v21, v4 + v94, v18);
          v38 = ListCoreBatchUpdates.isEmpty.getter(v18);
          v90(v21, v18);
          if (v38)
          {
            v39 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v40 = swift_allocObject();
            v41 = v77;
            v40[2] = v88;
            v40[3] = v41;
            v40[4] = v83;
            v40[5] = v93[13];
            v40[6] = v39;
            v40[7] = v31;
            v42 = MEMORY[0x1E69E7D40];
            v43 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x100));
            v44 = *v43;
            *v43 = partial apply for closure #1 in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
            v43[1] = v40;

            v45 = v31;
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v44);

            v46 = *v4;
            v47 = *v42;
LABEL_38:
            *(v4 + *((v47 & v46) + 0xB0)) = 0;
            return $defer #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(v4);
          }

          v48 = MEMORY[0x1E69E7D40];
          v49 = (v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x100));
          v50 = *v49;
          *v49 = 0;
          v49[1] = 0;
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v50);
          *(v4 + *((*v48 & *v4) + 0xF8)) = 0;
          UITableViewListCoordinator.isAnimatingInitialLayout.didset();
        }
      }

      if (UITableViewListCoordinator.isAnimated.getter())
      {
        v51 = 1;
      }

      else
      {
        type metadata accessor for ModifiedContent<TableViewListHeaderFooterContent, EmptyModifier>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>, MEMORY[0x1E697DF20], MEMORY[0x1E697DF18], MEMORY[0x1E697EC20]);
        lazy protocol witness table accessor for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>();
        v51 = static SemanticFeature.isEnabled.getter() ^ 1;
      }

      LODWORD(v93) = v51;
      v52 = MEMORY[0x1E69E7D40];
      *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0xE0)) = 0;
      if ([v31 style])
      {
        v53 = 0;
      }

      else
      {
        v53 = 100;
      }

      v54 = *((*v52 & *v4) + 0x88);
      swift_beginAccess();
      if (*(v4 + v54) == 1)
      {
        swift_endAccess();
      }

      else
      {
        Transaction.subscript.getter();
        v55 = v95;
        swift_endAccess();
        if (v55)
        {
          v56 = 0;
          goto LABEL_31;
        }
      }

      v56 = 100;
LABEL_31:
      v91(v21, v4 + v94, v18);
      v57 = ListCoreBatchUpdates.isEmpty.getter(v18);
      v90(v21, v18);
      v58 = *(v84 + 16);
      if (v57)
      {
        v59 = v78;
        v60 = v88;
        v58(v78, v89, v88);
        v61 = v85;
        ShadowListDataSource.init(_:)(v59, v60, v85);
        v62 = MEMORY[0x1E69E7D40];
        v63 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
        swift_beginAccess();
        (*(v86 + 40))(v4 + v63, v61, v87);
      }

      else
      {
        v64 = v79;
        v65 = v88;
        v66 = v84;
        v58(v79, v89, v88);
        (*(v66 + 56))(v64, 0, 1, v65);
        v62 = MEMORY[0x1E69E7D40];
        v67 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xC8);
        swift_beginAccess();
        (*(v80 + 40))(v4 + v67, v64, v81);
      }

      swift_endAccess();
      v91(v21, v4 + v94, v18);
      v68 = ListCoreBatchUpdates.isEmpty.getter(v18);
      v90(v21, v18);
      v46 = *v4;
      v47 = *v62;
      if (((v68 & 1) == 0 || (*(v4 + *((v47 & v46) + 0xD0)) & 1) == 0) && (*(v4 + v76) & 1) == 0)
      {
        *(v4 + *((v47 & v46) + 0xD0)) = 1;
        v96 = 17;
        v69 = swift_allocObject();
        *(v69 + 16) = v93 & 1;
        *(v69 + 24) = v4;
        *(v69 + 32) = v75;
        v70 = v92;
        *(v69 + 40) = v92;
        *(v69 + 48) = v53;
        *(v69 + 56) = v56;
        v71 = v70;
        v72 = v4;
        static Update.enqueueAction(reason:_:)();

        v46 = *v72;
        v47 = *v62;
      }

      goto LABEL_38;
    }
  }

  return $defer #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(v4);
}

_BYTE *closure #1 in variable initialization expression of UITableViewListCoordinator.helper()
{
  v0 = type metadata accessor for ScrollViewHelper();
  v1 = objc_allocWithZone(v0);
  v2 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState] = 0;
  v3 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState] = 0;
  v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize] = 0;
  EnvironmentValues.init()();
  v6 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
  *v6 = 257;
  *(v6 + 21) = 0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 67) = 0u;
  *(v6 + 44) = 4;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v7);
  v6[112] = 0;
  v6[120] = 0;
  *(v6 + 16) = 0;
  *(v6 + 68) = 0;
  v6[144] = 0;
  *(v6 + 19) = 0;
  *(v6 + 158) = 0;
  v6[166] = 1;
  *(v6 + 167) = 0u;
  *(v6 + 183) = 0u;
  v6[199] = 0;
  static EdgeInsets.zero.getter();
  *(v6 + 25) = v8;
  *(v6 + 26) = v9;
  *(v6 + 27) = v10;
  *(v6 + 28) = v11;
  v12 = static EdgeInsets.zero.getter();
  *(v6 + 29) = v13;
  *(v6 + 30) = v14;
  *(v6 + 31) = v15;
  *(v6 + 32) = v16;
  v17 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v18 = MEMORY[0x18D007050](v42, v12);
  v19 = MEMORY[0x18D007050](v44, v18);
  v20 = MEMORY[0x18D007050](v46, v19);
  MEMORY[0x18D007050](v48, v20);
  v21 = v42[1];
  *v17 = v42[0];
  v17[1] = v21;
  v17[2] = v43[0];
  *(v17 + 41) = *(v43 + 9);
  v22 = v44[1];
  v17[4] = v44[0];
  v17[5] = v22;
  v17[6] = v45[0];
  *(v17 + 105) = *(v45 + 9);
  v23 = v46[0];
  v24 = v46[1];
  v25 = v47[0];
  *(v17 + 169) = *(v47 + 9);
  v17[9] = v24;
  v17[10] = v25;
  v17[8] = v23;
  v26 = v48[1];
  v17[12] = v48[0];
  v17[13] = v26;
  v17[14] = v49[0];
  *(v17 + 233) = *(v49 + 9);
  v27 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground];
  *v27 = 0;
  *(v27 + 4) = 0;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 6;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v28 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastScrollOffset];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest] = 0;
  v31 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState];
  *(v31 + 2) = 0u;
  *(v31 + 3) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v31[66] = 0;
  *(v31 + 32) = 512;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase] = 0;
  v32 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity];
  *v32 = 0;
  v32[1] = 0;
  v33 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastBoundsSize];
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 1;
  *&v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate] = 2;
  v35 = &v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets];
  static EdgeInsets.zero.getter();
  *v35 = v36;
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  *&v1[v2] = 0;
  *&v1[v3] = 0;
  *&v1[v4] = 0;
  *&v1[v5] = 0;
  v1[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes] = 2;
  v41.receiver = v1;
  v41.super_class = v0;
  result = objc_msgSendSuper2(&v41, sel_init);
  result[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  return result;
}

uint64_t closure #1 in UITableViewListCoordinator.dragAndDropController.getter(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = type metadata accessor for ShadowListDataSource();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  type metadata accessor for TableViewListDragAndDropController();
  v8 = *((v3 & v2) + 0x70);
  swift_beginAccess();
  (*(v5 + 16))(v7, &a1[v8], v4);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = specialized CollectionViewListDragAndDropController.__allocating_init(dataSource:dispatchUpdate:)(v7, partial apply for closure #1 in PlatformViewCoordinator.weakDispatchUpdate.getter, v9);
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t UITableViewListCoordinator.isAnimated.getter()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    swift_endAccess();
  }

  else
  {
    v3 = Transaction.animation.getter();
    swift_endAccess();
    if (v3)
    {

      return 1;
    }
  }

  return *(v0 + *((*v1 & *v0) + 0xE0));
}

void *UITableViewListCoordinator.resolvedEditMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
  v4 = *(v3 + 1);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[16];
    v9 = v5;
    v10 = v4;
    v11 = v6;
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
    result = MEMORY[0x18D00ACC0](&v8);
    LOBYTE(v4) = v8;
  }

  *a1 = v4;
  return result;
}

void UITableViewListCoordinator.isAnimatingInitialLayout.didset()
{
  if ((*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xF8)) & 1) == 0)
  {
    v1 = (v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x100));
    v2 = *v1;
    if (*v1)
    {

      v2(v3);
      outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v2);
      v4 = *v1;
    }

    else
    {
      v4 = 0;
    }

    *v1 = 0;
    v1[1] = 0;

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v4);
  }
}

uint64_t closure #1 in UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v10[6] = a1;

  onMainThread(do:)();
}

void closure #1 in closure #1 in UITableViewListCoordinator.recordInitialTransactionIfNeeded(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + *((*MEMORY[0x1E69E7D40] & *Strong) + 0xF8)) = 0;
    UITableViewListCoordinator.isAnimatingInitialLayout.didset();
  }
}

uint64_t UITableViewListCoordinator.commitUpdates()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *v0;
  *(v0 + *((v2 & v1) + 0xD8)) = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = *((v2 & v1) + 0x50);
  *(v5 + 24) = *(v3 + 88);
  *(v5 + 40) = *((v2 & v1) + 0x68);
  *(v5 + 48) = v4;

  static Update.enqueueAction(reason:_:)();
}

void closure #1 in UITableViewListCoordinator.commitUpdates()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource();
    ShadowListDataSource.commitUpdates()();
    swift_endAccess();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    *(v3 + *((*v1 & *v3) + 0xD8)) = 0;
  }
}

void *$defer #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *result)
{
  if ((*(result + *((*MEMORY[0x1E69E7D40] & *result) + 0xF8)) & 1) == 0)
  {
    v1 = *((*MEMORY[0x1E69E7D40] & *result) + 0x88);
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + v1);
    *(v2 + v1) = 1;
    return outlined consume of ListItemTint?(v3);
  }

  return result;
}

void closure #1 in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    UITableViewListCoordinator.updateListContents(_:)(a2);
  }
}

void UITableViewListCoordinator.updateListContents(_:)(void *a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v148 = *MEMORY[0x1E69E7D40] & *v1;
  v6 = *((v5 & v3) + 0x50);
  v7 = *((v5 & v3) + 0x60);
  v8 = type metadata accessor for ShadowSectionCollection();
  v153 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v136 - v9;
  type metadata accessor for (IndexPath?, IndexPath?)();
  v167 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v166 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v161 = &v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v174 = &v136 - v15;
  v16 = *(*((v5 & v3) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v17);
  v146 = &v136 - v18;
  v147 = v19;
  v156 = type metadata accessor for Binding();
  v20 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v145 = &v136 - v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v151 = type metadata accessor for Optional();
  v182 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v158 = &v136 - v23;
  v159 = AssociatedTypeWitness;
  v179 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v155 = &v136 - v25;
  v184 = v6;
  v186 = v7;
  v26 = type metadata accessor for ShadowListDataSource();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v185 = &v136 - v28;
  v29 = type metadata accessor for IndexPath();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v157 = &v136 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v176 = &v136 - v33;
  UITableViewListCoordinator.clearDataSourceUpdates()();
  *(v1 + *((*v4 & *v1) + 0xD0)) = 0;
  v34 = [a1 indexPathsForVisibleRows];
  v187 = v1;
  v183 = a1;
  v178 = v26;
  if (v34)
  {
    v177 = v20;
    v144 = v8;
    v35 = v34;
    v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = v36;
    v38 = *(v36 + 16);
    if (v38)
    {
      v39 = v29;
      v40 = *v1;
      v41 = *MEMORY[0x1E69E7D40];
      v42 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x70);
      v160 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x80);
      v43 = *((v41 & v40) + 0x78);
      v173 = v16;
      v44 = *((v41 & v40) + 0xB8);
      v45 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v46 = v27;
      v139 = v37;
      v47 = v37 + v45;
      v172 = v42;
      swift_beginAccess();
      v149 = v43;
      swift_beginAccess();
      v164 = v44;
      swift_beginAccess();
      v49 = *(v30 + 16);
      v48 = v30 + 16;
      v181 = v49;
      v171 = (v46 + 16);
      v180 = v46;
      v170 = (v46 + 8);
      v154 = (v179 + 6);
      v50 = *(v48 + 56);
      v143 = (v179 + 4);
      v142 = (v177 + 48);
      v138 = (v177 + 16);
      v137 = (v177 + 8);
      v136 = v173 + 8;
      v141 = (v179 + 1);
      v179 = (v48 - 8);
      v140 = (v182 + 8);
      v163 = (v48 + 40);
      v162 = (v48 + 32);
      v182 = v48;
      v150 = (v48 + 16);
      v51 = v176;
      v175 = v39;
      v165 = v50;
      v49(v176, v47, v39);
      while (1)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v53 = [a1 cellForRowAtIndexPath_];

        if (!v53)
        {
          goto LABEL_5;
        }

        swift_getAssociatedTypeWitness();
        v54 = swift_dynamicCastUnknownClass();
        if (!v54)
        {

LABEL_5:
          (*v179)(v51, v39);
          goto LABEL_6;
        }

        v177 = v53;
        v55 = v187;
        v56 = v185;
        v57 = v54;
        v169 = *v171;
        v58 = v169(v185, &v187[v172], v26);
        MEMORY[0x1EEE9AC00](v58);
        *(&v136 - 2) = v55;
        *(&v136 - 1) = v57;
        WitnessTable = swift_getWitnessTable();
        ListCoreDataSource.visitContent<A>(atRow:visitor:)(v51, partial apply for closure #1 in UITableViewListCoordinator.updateListContents(_:), (&v136 - 4), v26, MEMORY[0x1E69E7CA8] + 8, WitnessTable, v189);
        v59 = v56;
        v60 = *v170;
        (*v170)(v59, v26);
        type metadata accessor for ListTableViewCell();
        v173 = v57;
        v61 = swift_dynamicCastClass();
        if (v61)
        {
          v62 = v61;
          v63 = v177;
          UITableViewListCoordinator.updateCell(_:in:at:isVisible:)(v62, a1, v51, 1);
        }

        v64 = [a1 isEditing];
        v65 = v174;
        if (!v64)
        {
          goto LABEL_21;
        }

        v66 = *(v160 + 1);
        if (v66)
        {
          v67 = v160[16];
          v189[0] = *v160;
          v189[1] = v66;
          v190 = v67;
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<EditMode>, &type metadata for EditMode, MEMORY[0x1E6981948]);
          MEMORY[0x18D00ACC0](&v188);
          if (v188 == 1)
          {
            goto LABEL_21;
          }
        }

        v68 = v187;
        v69 = v185;
        v169(v185, &v187[v172], v26);
        v70 = v158;
        ListCoreDataSource.selectionValue(forRowAt:)(v176, v26, WitnessTable, v158);
        v60(v69, v26);
        v71 = v159;
        if ((*v154)(v70, 1, v159) == 1)
        {
          (*v140)(v70, v151);
          goto LABEL_21;
        }

        v72 = v155;
        (*v143)(v155, v70, v71);
        if ((*v142)(&v68[v149], 1, v156))
        {
          break;
        }

        v73 = v145;
        v74 = v156;
        (*v138)(v145, &v68[v149], v156);
        v75 = v146;
        MEMORY[0x18D00ACC0](v74);
        (*v137)(v73, v74);
        v76 = v72;
        v77 = v147;
        v78 = (*(*(v148 + 104) + 64))(v76, v147);
        v71 = v159;
        LOBYTE(v74) = v78;
        v79 = v77;
        v72 = v155;
        (*v136)(v75, v79);
        if ((v74 & 1) == 0)
        {
          break;
        }

        v51 = v176;
        v80 = IndexPath._bridgeToObjectiveC()().super.isa;
        v81 = UITableViewListCoordinator.isAnimated.getter();
        a1 = v183;
        [v183 selectRowAtIndexPath:v80 animated:v81 & 1 scrollPosition:0];

        (*v141)(v72, v71);
LABEL_28:
        v39 = v175;
        (*v179)(v51, v175);
LABEL_32:
        v50 = v165;
LABEL_6:
        v47 += v50;
        if (!--v38)
        {

          v27 = v180;
          v4 = MEMORY[0x1E69E7D40];
          v8 = v144;
          v1 = v187;
          goto LABEL_35;
        }

        v181(v51, v47, v39);
      }

      (*v141)(v72, v71);
LABEL_21:
      v82 = v175;
      v181(v65, v176, v175);
      (*v163)(v65, 0, 1, v82);
      v83 = *(v167 + 48);
      v84 = MEMORY[0x1E6969C28];
      v85 = MEMORY[0x1E69E6720];
      v86 = v166;
      _s10Foundation9IndexPathVSgWOcTm_0(v65, v166, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
      _s10Foundation9IndexPathVSgWOcTm_0(&v187[v164], v86 + v83, &lazy cache variable for type metadata for IndexPath?, v84, v85, _s10Foundation9IndexPathVSgMaTm_0);
      v87 = *v162;
      if ((*v162)(v86, 1, v82) == 1)
      {
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v65, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
        v88 = v87(v86 + v83, 1, v82);
        a1 = v183;
        v26 = v178;
        if (v88 == 1)
        {

          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v86, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
          v89 = *v179;
LABEL_31:
          v39 = v175;
          v95 = v176;
          v89(v176, v175);
          v51 = v95;
          goto LABEL_32;
        }
      }

      else
      {
        v90 = v161;
        _s10Foundation9IndexPathVSgWOcTm_0(v86, v161, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
        if (v87(v86 + v83, 1, v82) != 1)
        {
          v92 = v157;
          (*v150)(v157, v86 + v83, v82);
          lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
          LODWORD(v169) = dispatch thunk of static Equatable.== infix(_:_:)();
          v89 = *v179;
          (*v179)(v92, v82);
          v93 = MEMORY[0x1E6969C28];
          v94 = MEMORY[0x1E69E6720];
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v174, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
          v89(v161, v82);
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v86, &lazy cache variable for type metadata for IndexPath?, v93, v94, _s10Foundation9IndexPathVSgMaTm_0);
          a1 = v183;
          v26 = v178;
          if (v169)
          {

            goto LABEL_31;
          }

          goto LABEL_27;
        }

        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v174, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
        (*v179)(v90, v82);
        a1 = v183;
        v26 = v178;
      }

      outlined destroy of (IndexPath?, IndexPath?)(v86);
LABEL_27:
      v51 = v176;
      v91 = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 deselectRowAtIndexPath:v91 animated:0];

      [v173 setSelected:0 animated:0];
      goto LABEL_28;
    }

    v4 = MEMORY[0x1E69E7D40];
    v8 = v144;
  }

LABEL_35:
  v96 = *((*v4 & *v1) + 0x70);
  swift_beginAccess();
  v97 = v27 + 16;
  v98 = *(v27 + 16);
  v99 = v1 + v96;
  v100 = v185;
  v98(v185, v99, v26);
  v101 = v152;
  ShadowListDataSource.sectionIDs.getter(v152);
  v102 = v27 + 8;
  v103 = *(v27 + 8);
  v180 = v102;
  v103(v100, v26);
  v104 = specialized ViewLeafView.platformView.getter(v8);
  (*(v153 + 8))(v101, v8);
  if (v104 < 0)
  {
    __break(1u);
  }

  else
  {
    v181 = v98;
    v182 = v96;
    if (v104)
    {
      v176 = *((*v4 & *v187) + 0x88);
      swift_beginAccess();
      v105 = 0;
      v179 = v104;
      do
      {
        v106 = [a1 headerViewForSection_];
        if (v106)
        {
          v107 = v106;
          swift_getAssociatedTypeWitness();
          v108 = swift_dynamicCastUnknownClass();
          if (v108)
          {
            v177 = v108;
            v109 = v103;
            v110 = v182;
            v111 = v185;
            v112 = v97;
            v113 = v181;
            v181(v185, &v187[v182], v26);
            swift_getWitnessTable();
            v114 = ListDiffable.hasHeader(forSectionAtOffset:)(v105);
            v109(v111, v26);
            if (v114)
            {
              v115 = v187;
              v113(v111, &v187[v110], v26);
              v116 = *(v115 + v176);
              outlined copy of Transaction?(v116);
              v117 = swift_getWitnessTable();
              ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:)(v177, v116, v105, v26, v117);
              outlined consume of ListItemTint?(v116);
              v109(v111, v26);
              type metadata accessor for ListTableViewHeaderFooter();
              v118 = swift_dynamicCastClass();
              v97 = v112;
              v103 = v109;
              if (v118)
              {
                v119 = v118;
                v120 = v107;
                v107 = v119;
                a1 = v183;
                specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(v107, 0, v183);
              }

              else
              {
                a1 = v183;
              }

              v26 = v178;
            }

            else
            {
              v97 = v112;
              v103 = v109;
              a1 = v183;
            }

            v104 = v179;
          }
        }

        v121 = [a1 footerViewForSection_];
        if (v121)
        {
          v122 = v121;
          swift_getAssociatedTypeWitness();
          v123 = swift_dynamicCastUnknownClass();
          if (v123)
          {
            v177 = v123;
            v124 = v103;
            v125 = v182;
            v126 = v185;
            v127 = v97;
            v128 = v181;
            v181(v185, &v187[v182], v26);
            swift_getWitnessTable();
            v129 = ListDiffable.hasFooter(forSectionAtOffset:)(v105);
            v124(v126, v26);
            if (v129)
            {
              v130 = v187;
              v128(v126, &v187[v125], v26);
              v131 = *(v130 + v176);
              outlined copy of Transaction?(v131);
              v132 = swift_getWitnessTable();
              ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:)(v177, v131, v105, v26, v132);
              outlined consume of ListItemTint?(v131);
              v124(v126, v26);
              type metadata accessor for ListTableViewHeaderFooter();
              v133 = swift_dynamicCastClass();
              v97 = v127;
              v103 = v124;
              if (v133)
              {
                v134 = v133;
                v135 = v122;
                v122 = v134;
                a1 = v183;
                specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(v122, 1, v183);
              }

              else
              {
                a1 = v183;
              }

              v26 = v178;
            }

            else
            {
              v97 = v127;
              v103 = v124;
              a1 = v183;
            }

            v104 = v179;
          }
        }

        ++v105;
      }

      while (v104 != v105);
    }
  }
}

void performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *a1, char a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v77 = a5;
  v78 = a6;
  v10 = *a1;
  v11 = MEMORY[0x1E69E7D40];
  v12 = *MEMORY[0x1E69E7D40];
  v70 = *MEMORY[0x1E69E7D40] & *a1;
  v13 = *((v12 & v10) + 0x50);
  v14 = type metadata accessor for Optional();
  v72 = *(v14 - 8);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v66 - v15;
  v76 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v74 = &v66 - v19;
  v68 = *((v12 & v10) + 0x60);
  v75 = v13;
  v20 = type metadata accessor for ListCoreBatchUpdates();
  v21 = *(v20 - 1);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v66 - v22;
  *(a1 + *((v12 & v10) + 0xD0)) = 1;
  if (a2)
  {
    if (*(a1 + *((*v11 & *a1) + 0xE8)) == 1)
    {
      UITableViewListCoordinator.resolvedEditMode.getter(&aBlock);
      if (aBlock)
      {
        specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a3);
        [a3 setEditing:0 animated:a4 & 1];
      }
    }

    UITableViewListCoordinator.resolvedEditMode.getter(&aBlock);
    v24 = aBlock != 0;
    specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a3);
    [a3 setEditing:v24 animated:a4 & 1];
    v11 = MEMORY[0x1E69E7D40];
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  *(isEscapingClosureAtFileLocation + 16) = a1;
  *(isEscapingClosureAtFileLocation + 24) = a4 & 1;
  *(isEscapingClosureAtFileLocation + 25) = a2 & 1;
  v27 = v77;
  v26 = v78;
  *(isEscapingClosureAtFileLocation + 32) = a3;
  *(isEscapingClosureAtFileLocation + 40) = v27;
  *(isEscapingClosureAtFileLocation + 48) = v26;
  v28 = *((*v11 & *a1) + 0xC0);
  swift_beginAccess();
  (*(v21 + 16))(v23, a1 + v28, v20);
  v29 = a1;
  v30 = a3;
  LOBYTE(v28) = ListCoreBatchUpdates.isEmpty.getter(v20);
  (*(v21 + 8))(v23, v20);
  if ((v28 & 1) == 0)
  {
    v66 = v30;
    v31 = *v11;
    v32 = v29;
    v33 = *((v31 & *v29) + 0xC8);
    swift_beginAccess();
    v34 = v72;
    v35 = v29 + v33;
    v23 = v71;
    v36 = v73;
    (*(v72 + 16))(v71, v35, v73);
    v37 = v75;
    v30 = v76;
    if ((*(v76 + 48))(v23, 1, v75) != 1)
    {
LABEL_13:
      v43 = v30;
      v44 = v30[4];
      v45 = v74;
      v44(v74, v23, v37);
      v46 = v30[2];
      v47 = v69;
      v46(v69, v45, v37);
      v48 = (*(v43 + 80) + 56) & ~*(v43 + 80);
      v49 = (v67 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
      v51 = swift_allocObject();
      v52 = v37;
      v53 = v51;
      v51[2] = v52;
      v54 = v52;
      v55 = v70;
      v56 = v68;
      v51[3] = *(v70 + 88);
      v51[4] = v56;
      v51[5] = *(v55 + 104);
      v51[6] = v32;
      v57 = v47;
      v58 = v54;
      (v44)(v51 + v48, v57);
      v59 = v66;
      *(v53 + v49) = v66;
      v60 = v78;
      *(v53 + v50) = v77;
      *(v53 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v60;
      v61 = swift_allocObject();
      *(v61 + 16) = partial apply for closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
      *(v61 + 24) = v53;
      v83 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
      v84 = v61;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = thunk for @escaping @callee_guaranteed () -> ();
      v82 = &block_descriptor_115;
      v62 = _Block_copy(&aBlock);
      v63 = v32;
      v64 = v59;

      v83 = partial apply for closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
      v84 = isEscapingClosureAtFileLocation;
      aBlock = MEMORY[0x1E69E9820];
      v80 = 1107296256;
      v81 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
      v82 = &block_descriptor_118;
      v65 = _Block_copy(&aBlock);

      [v64 performBatchUpdates:v62 completion:v65];
      _Block_release(v65);
      _Block_release(v62);

      (*(v76 + 8))(v74, v58);

      return;
    }

    (*(v34 + 8))(v23, v36);
    v30 = v66;
  }

  if (a2)
  {
    v83 = partial apply for closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
    v84 = isEscapingClosureAtFileLocation;
    aBlock = MEMORY[0x1E69E9820];
    v80 = 1107296256;
    v81 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v82 = &block_descriptor_105;
    v38 = _Block_copy(&aBlock);

    [v30 performBatchUpdates:0 completion:v38];

    _Block_release(v38);
    return;
  }

  v32 = objc_opt_self();
  v39 = swift_allocObject();
  *(v39 + 16) = v30;
  *(v39 + 24) = v29;
  v37 = swift_allocObject();
  *(v37 + 16) = partial apply for closure #3 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
  *(v37 + 24) = v39;
  v83 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v84 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed () -> ();
  v82 = &block_descriptor_102;
  v40 = _Block_copy(&aBlock);
  v41 = v29;
  v42 = v30;

  [v32 performWithoutAnimation_];

  _Block_release(v40);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_13;
  }
}

void closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(uint64_t a1, char *a2, char a3, char a4, void *a5, uint64_t a6, uint64_t a7)
{
  v21 = a7;
  v12 = *a2;
  v13 = *MEMORY[0x1E69E7D40];
  v14 = type metadata accessor for ListCoreBatchUpdates();
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  v18 = *((v13 & v12) + 0xC0);
  swift_beginAccess();
  (*(v15 + 16))(v17, &a2[v18], v14);
  LOBYTE(v18) = ListCoreBatchUpdates.isEmpty.getter(v14);
  v19 = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    UITableViewListCoordinator.enqueueLayoutInvalidationIfNeeded(_:)(a5);
    UITableViewListCoordinator.updateListContents(_:)(a5);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19);
    *(&v20 - 48) = a3 & 1;
    *(&v20 - 5) = a2;
    *(&v20 - 32) = a4 & 1;
    *(&v20 - 3) = a5;
    *(&v20 - 2) = a6;
    *(&v20 - 1) = v21;
    static Update.ensure<A>(_:)();
  }
}

uint64_t closure #1 in closure #1 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    return performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(a2, a3 & 1, a4, 1);
  }

  v12 = objc_opt_self();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3 & 1;
  *(v13 + 32) = a4;
  *(v13 + 40) = 0;
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  v14 = swift_allocObject();
  *(v14 + 16) = performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)partial apply;
  *(v14 + 24) = v13;
  v19[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
  v19[5] = v14;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed () -> ();
  v19[3] = &block_descriptor_129;
  v15 = _Block_copy(v19);
  v16 = a2;
  v17 = a4;

  [v12 performWithoutAnimation_];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void UITableViewListCoordinator.enqueueLayoutInvalidationIfNeeded(_:)(void *a1)
{
  v2 = v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  if (v2[9] != 1 || *v2 | v2[8])
  {
    v3 = specialized UIView.firstAncestorWhere(_:)(a1);
    if (v3)
    {
      v6 = v3;
      ObjectType = swift_getObjectType();
      v5 = swift_conformsToProtocol2();
      if (v5)
      {
        (*(v5 + 8))(ObjectType, v5);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t closure #2 in performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(void *a1, uint64_t a2, void *a3, char *a4, uint64_t a5)
{
  v87 = a2;
  v88 = a5;
  v80 = a4;
  v90 = a3;
  v6 = *a1;
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for IndexPath();
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for (source: IndexPath, destination: IndexPath)?, type metadata accessor for (source: IndexPath, destination: IndexPath), MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v91 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v18 = type metadata accessor for IndexSet();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v22 = *((v7 & v6) + 0x50);
  v84 = *((v7 & v6) + 0x60);
  v85 = v22;
  type metadata accessor for ShadowListDataSource();
  v23 = v18;
  v24 = v19;
  ShadowListDataSource.updateBase(to:)(v87);
  swift_endAccess();
  v25 = *((*MEMORY[0x1E69E7D40] & *a1) + 0xC0);
  v79 = a1;
  v26 = a1 + v25;
  swift_beginAccess();
  v27 = v19 + 16;
  v28 = *(v19 + 16);
  v87 = v26;
  v28(v21, v26, v23);
  LOBYTE(v26) = IndexSet.isEmpty.getter();
  v29 = *(v24 + 8);
  v86 = v24 + 8;
  v29(v21, v23);
  v30 = v28;
  v31 = v90;
  if ((v26 & 1) == 0)
  {
    v30(v21, v87, v23);
    IndexSet._bridgeToObjectiveC()(v32);
    v34 = v33;
    v29(v21, v23);
    [v31 deleteSections:v34 withRowAnimation:v80];
  }

  v35 = type metadata accessor for ListCoreBatchUpdates();
  v36 = v87 + *(v35 + 36);
  v83 = v30;
  v84 = v27;
  v30(v21, v36, v23);
  v37 = v35;
  v38 = IndexSet.isEmpty.getter();
  v82 = v29;
  v29(v21, v23);
  v85 = v23;
  if ((v38 & 1) == 0)
  {
    v83(v21, v87 + *(v35 + 36), v23);
    IndexSet._bridgeToObjectiveC()(v39);
    v41 = v40;
    v82(v21, v85);
    [v31 insertSections:v41 withRowAnimation:v80];
  }

  v42 = *(v87 + *(v35 + 40));
  v43 = *(v42 + 16);
  v80 = v21;
  v44 = v91;
  if (v43)
  {
    v45 = v37;

    v46 = (v42 + 40);
    do
    {
      [v31 moveSection:*(v46 - 1) toSection:*v46];
      v46 += 2;
      --v43;
    }

    while (v43);

    v37 = v45;
  }

  v47 = v88;
  if (*(*(v87 + v37[11]) + 16))
  {

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 deleteRowsAtIndexPaths:isa withRowAnimation:v47];
  }

  if (*(*(v87 + v37[12]) + 16))
  {

    v49 = Array._bridgeToObjectiveC()().super.isa;

    [v31 insertRowsAtIndexPaths:v49 withRowAnimation:v47];
  }

  v78 = v37;
  v50 = *(v87 + v37[13]);
  v51 = *(v50 + 16);
  v52 = (v81 + 32);
  v53 = (v81 + 8);
  v88 = v50;

  i = 0;
  if (v51)
  {
    goto LABEL_15;
  }

LABEL_14:
  type metadata accessor for (source: IndexPath, destination: IndexPath)();
  v57 = v56;
  (*(*(v56 - 8) + 56))(v44, 1, 1, v56);
  for (i = v51; ; ++i)
  {
    outlined init with take of (source: IndexPath, destination: IndexPath)?(v44, v17);
    type metadata accessor for (source: IndexPath, destination: IndexPath)();
    if ((*(*(v57 - 8) + 48))(v17, 1, v57) == 1)
    {
      break;
    }

    v62 = *v52;
    (*v52)(v12, &v17[*(v57 + 48)], v8);
    v63 = v89;
    v62(v89, v17, v8);
    v64 = IndexPath._bridgeToObjectiveC()().super.isa;
    v65 = *v53;
    (*v53)(v63, v8);
    v66 = IndexPath._bridgeToObjectiveC()().super.isa;
    [v90 moveRowAtIndexPath:v64 toIndexPath:v66];

    result = v65(v12, v8);
    v44 = v91;
    if (i == v51)
    {
      goto LABEL_14;
    }

LABEL_15:
    if ((i & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

    v58 = v88;
    if (i >= *(v88 + 16))
    {
      goto LABEL_25;
    }

    type metadata accessor for (source: IndexPath, destination: IndexPath)();
    v57 = v59;
    v60 = v58;
    v61 = *(v59 - 8);
    outlined init with copy of (source: IndexPath, destination: IndexPath)(v60 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * i, v91);
    (*(v61 + 56))(v91, 0, 1, v57);
    v44 = v91;
  }

  v67 = v78;
  v68 = v87;
  v69 = v80;
  v70 = v85;
  v71 = v83;
  v83(v80, v87 + v78[14], v85);
  v72 = IndexSet.isEmpty.getter();
  v73 = v82;
  v82(v69, v70);
  if ((v72 & 1) == 0)
  {
    v71(v69, v68 + v67[14], v70);
    IndexSet._bridgeToObjectiveC()(v74);
    v76 = v75;
    v73(v69, v70);
    [v90 reloadSections:v76 withRowAnimation:100];
  }

  return UITableViewListCoordinator.clearDataSourceUpdates()();
}

uint64_t UITableViewListCoordinator.clearDataSourceUpdates()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  swift_beginAccess();
  type metadata accessor for ListCoreBatchUpdates();
  ListCoreBatchUpdates.resetAll()();
  swift_endAccess();
  (*(*(v3 - 8) + 56))(v7, 1, 1, v3);
  v8 = *((*v2 & *v0) + 0xC8);
  swift_beginAccess();
  (*(v5 + 40))(&v1[v8], v7, v4);
  return swift_endAccess();
}

void closure #2 in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(char a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:)(a2, a3 & 1, a4, 1, a5, a6);
  }

  else
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a2;
    *(v12 + 24) = a3 & 1;
    *(v12 + 32) = a4;
    *(v12 + 40) = 0;
    *(v12 + 48) = a5;
    *(v12 + 56) = a6;
    v13 = swift_allocObject();
    *(v13 + 16) = partial apply for performUpdates #1 <A, B>() in UITableViewListCoordinator.updateUITableView(_:to:transaction:);
    *(v13 + 24) = v12;
    v18[4] = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v18[5] = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = thunk for @escaping @callee_guaranteed () -> ();
    v18[3] = &block_descriptor_89;
    v14 = _Block_copy(v18);
    v15 = a2;
    v16 = a4;

    [v11 performWithoutAnimation_];
    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t UITableViewListCoordinator.updateCell(_:in:at:isVisible:)(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    ListTableViewCell.updateSeparatorsFromConfiguration()();
  }

  v7 = a1 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_cellConfiguration;
  v8 = *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x90));
  swift_beginAccess();
  v9 = type metadata accessor for CellConfiguration();
  v10 = *(v9 + 20);
  v11 = *(v7 + v10);
  *(v7 + v10) = v8;
  specialized CellConfiguration.updateValues<A>(pre:post:)(v11, v8);
  swift_endAccess();
  v12 = OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host;
  v13 = *(a1 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
  if (v13)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
    v14 = v13;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(v7 + *(v9 + 32)) = [a2 style];
  v15 = *(a1 + v12);
  if (v15)
  {
    type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>();
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>> and conformance _UIHostingView<A>, type metadata accessor for _UIHostingView<ModifiedContent<_ViewList_View, ListTableCellModifier>>);
    v16 = v15;
    ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
  }

  *(a1 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_delegate + 8) = &protocol witness table for UITableViewListCoordinator<A, B>;
  return swift_unknownObjectWeakAssign();
}

void closure #1 in UITableViewListCoordinator.updateListContents(_:)(uint64_t a1, char *a2, void *a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *a2;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - v11;
  v13 = *((v8 & v7) + 0x70);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a2[v13], v9);
  v14 = *((*v6 & *a2) + 0xF8);
  if (a2[v14])
  {
    v15 = 1;
  }

  else
  {
    v16 = *((*v6 & *a2) + 0x88);
    swift_beginAccess();
    v15 = *&a2[v16];
    outlined copy of Transaction?(v15);
  }

  ShadowListDataSource.configureCell(_:transaction:context:)(a3, v15, a1, v9);
  outlined consume of ListItemTint?(v15);
  (*(v10 + 8))(v12, v9);
  v17 = [a3 layer];
  v18 = 0.0;
  if (a2[v14] == 1)
  {
    swift_getWitnessTable();
    v19[1] = *(a1 + *(type metadata accessor for _RowVisitationContext() + 40));
    ViewTraitCollection.zIndex.getter();
  }

  [v17 setZPosition_];
}

uint64_t @objc UITableViewListCoordinator.numberOfSections(in:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = specialized UITableViewListCoordinator.numberOfSections(in:)();

  return v6;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:numberOfRowsInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = specialized UITableViewListCoordinator.tableView(_:numberOfRowsInSection:)(a4);

  return v8;
}

uint64_t closure #1 in UITableViewListCoordinator.tableView(_:canEditRowAt:)@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for _RowVisitationContext();
  if (_RowVisitationContext.canDelete.getter(v2) || _RowVisitationContext.canMove.getter(v2))
  {
    result = 1;
  }

  else
  {
    result = _RowVisitationContext.hasSwipeActions.getter();
  }

  *a1 = result & 1;
  return result;
}

BOOL closure #1 in UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)@<W0>(_BOOL8 *a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for _RowVisitationContext();
  result = _RowVisitationContext.canDelete.getter(v2);
  *a1 = result;
  return result;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = specialized UITableViewListCoordinator.tableView(_:editingStyleForRowAt:)(v8);

  (*(v6 + 8))(v8, v5);
  return v11;
}

void UITableViewListCoordinator.tableView(_:commit:forRowAt:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E7D40] & *v3;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  if (a2 == 1)
  {
    *(v3 + *(v7 + 224)) = 1;
    (*(v9 + 16))(&aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8, v11);
    v12 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = *(v7 + 80);
    *(v13 + 24) = *(v7 + 88);
    *(v13 + 40) = *(v7 + 104);
    *(v13 + 48) = v3;
    (*(v9 + 32))(v13 + v12, &aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    *(v13 + ((v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    v14 = swift_allocObject();
    *(v14 + 16) = partial apply for closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:);
    *(v14 + 24) = v13;
    v26 = closure #1 in PlatformViewCoordinator.dispatchUpdate(reason:_:)partial apply;
    v27 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed () -> ();
    v25 = &block_descriptor_66_0;
    v15 = _Block_copy(&aBlock);
    v16 = v3;
    v17 = a1;

    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v17;
    v26 = partial apply for closure #2 in UITableViewListCoordinator.tableView(_:commit:forRowAt:);
    v27 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v23 = 1107296256;
    v24 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v25 = &block_descriptor_72;
    v19 = _Block_copy(&aBlock);
    v20 = v16;
    v21 = v17;

    [v21 performBatchUpdates:v15 completion:v19];
    _Block_release(v19);
    _Block_release(v15);
    UITableViewListCoordinator.commitUpdates()();
  }
}

void closure #1 in UITableViewListCoordinator.tableView(_:commit:forRowAt:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v5 = type metadata accessor for ShadowListDataSource();
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.deleteCell(forRowAt:)(a2, v5, WitnessTable);
  swift_endAccess();
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18CD63400;
  (*(v8 + 16))(v10 + v9, a2, v7);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a3 deleteRowsAtIndexPaths:isa withRowAnimation:100];
}

uint64_t @objc UITableViewListCoordinator.tableView(_:commit:forRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = a1;
  UITableViewListCoordinator.tableView(_:commit:forRowAt:)(v11, a4, v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t UITableViewListCoordinator.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *v3;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  v13 = *((v8 & v7) + 0x70);
  swift_beginAccess();
  (*(v10 + 16))(v12, &v3[v13], v9);
  WitnessTable = swift_getWitnessTable();
  v15 = ListCoreDataSource.canMoveCell(fromRowAt:to:)(a1, a2, v9, WitnessTable);
  (*(v10 + 8))(v12, v9);
  v16 = type metadata accessor for IndexPath();
  if (v15)
  {
    v17 = a2;
  }

  else
  {
    v17 = a1;
  }

  return (*(*(v16 - 8) + 16))(a3, v17, v16);
}

Class @objc UITableViewListCoordinator.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = a3;
  v16 = a1;
  UITableViewListCoordinator.tableView(_:targetIndexPathForMoveFromRowAt:toProposedIndexPath:)(v11, v8, v14);

  v17 = *(v6 + 8);
  v17(v8, v5);
  v17(v11, v5);
  v18.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v17(v14, v5);

  return v18.super.isa;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:moveRowAt:to:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  specialized UITableViewListCoordinator.tableView(_:moveRowAt:to:)(v11, v8);

  v14 = *(v6 + 8);
  v14(v8, v5);
  return (v14)(v11, v5);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:didEndEditingRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  if (a4)
  {
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for IndexPath();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for IndexPath();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = a3;
  v13 = a1;
  specialized UITableViewListCoordinator.tableView(_:didEndEditingRowAt:)();

  return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v9, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
}

void closure #1 in UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if ([v4 isEditing])
      {

        v4 = v6;
      }

      else
      {
        [v6 bounds];
        if (v2 == v7)
        {
        }

        else
        {
          type metadata accessor for UpdateCoalescingTableView();
          v8 = swift_dynamicCastClassUnconditional();
          v9 = (v8 + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_visibleCellsUpdate);
          if (*(v8 + OBJC_IVAR____TtC7SwiftUI25UpdateCoalescingTableView_visibleCellsUpdate + 8) >= 2)
          {
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }

          v10 = v8;
          v4 = v4;
          [v10 setNeedsLayout];

          *v9 = 1;
        }
      }
    }
  }
}

void @objc UITableViewListCoordinator.tableView(_:willDisplayHeaderView:forSection:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized UITableViewListCoordinator.tableView(_:willDisplayHeaderView:forSection:)(v6, v7);
}

void @objc UITableViewListCoordinator.tableView(_:didEndDisplayingHeaderView:forSection:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  type metadata accessor for ListTableViewHeaderFooter();
  v7 = swift_dynamicCastClass();
  v8 = a3;
  if (v7)
  {
    v11 = v8;
    v9 = a4;
    v10 = a1;
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(0, 0, 0, &OBJC_IVAR____TtC7SwiftUI25ListTableViewHeaderFooter_host, MEMORY[0x1E69DC3A0], &unk_1EFFB24D0, thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ()partial apply);

    v8 = v11;
  }
}

void UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v79 = a1;
  v7 = *v4;
  v8 = *MEMORY[0x1E69E7D40];
  v78 = *MEMORY[0x1E69E7D40] & *v4;
  v9 = type metadata accessor for IndexPath();
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v72 = v10;
  v73 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*((v8 & v7) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v59 - v13;
  v77 = v14;
  v66 = type metadata accessor for Binding();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v61 = &v59 - v15;
  v16 = *((v8 & v7) + 0x50);
  v17 = *((v8 & v7) + 0x60);
  v18 = type metadata accessor for ShadowListDataSource();
  v69 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  v75 = v17;
  v76 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v64 = type metadata accessor for Optional();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v23 = &v59 - v22;
  v71 = AssociatedTypeWitness;
  v70 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v59 - v25;
  type metadata accessor for ListTableViewCell();
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v60 = v26;
    v68 = a3;
    v67 = a2;
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(1, 0, 0, &OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host, MEMORY[0x1E69DC3F0], &unk_1EFFB23E0, partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ());
    v29 = *&v28[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host];
    if (v29)
    {
      v30 = v29;
      UIHostingViewBase.viewGraph.getter();

      specialized UITableViewListCoordinator.updateSizeThatFitsObserver(tableView:observedParent:viewGraph:)(v79);
    }

    v31 = [v79 isEditing];
    v32 = v68;
    if (v31)
    {
      v33 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x70);
      swift_beginAccess();
      v34 = v69;
      (*(v69 + 16))(v20, &v4[v33], v18);
      WitnessTable = swift_getWitnessTable();
      ListCoreDataSource.selectionValue(forRowAt:)(v32, v18, WitnessTable, v23);
      (*(v34 + 8))(v20, v18);
      v36 = v70;
      v37 = v71;
      if ((*(v70 + 48))(v23, 1, v71) == 1)
      {
        (*(v63 + 8))(v23, v64);
      }

      else
      {
        (*(v36 + 32))(v60, v23, v37);
        v38 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x78);
        swift_beginAccess();
        v39 = v65;
        v40 = v66;
        if (!(*(v65 + 48))(&v4[v38], 1, v66))
        {
          v41 = v61;
          (*(v39 + 16))(v61, &v4[v38], v40);
          v42 = v62;
          MEMORY[0x18D00ACC0](v40);
          (*(v39 + 8))(v41, v40);
          v43 = v77;
          v44 = (*(*(v78 + 104) + 64))(v60, v77);
          v37 = v71;
          v45 = v44;
          v46 = v42;
          v36 = v70;
          (*(v11 + 8))(v46, v43);
          if (v45)
          {
            [v28 setSelected:1 animated:0];
            (*(v36 + 8))(v60, v37);
LABEL_13:
            v47 = [objc_opt_self() sharedApplication];
            v49 = v73;
            v48 = v74;
            (*(v74 + 16))(v73, v32, v9);
            v50 = (*(v48 + 80) + 56) & ~*(v48 + 80);
            v51 = (v72 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
            v52 = swift_allocObject();
            v53 = v77;
            *(v52 + 2) = v76;
            *(v52 + 3) = v53;
            *(v52 + 4) = v75;
            *(v52 + 5) = *(v78 + 104);
            *(v52 + 6) = v4;
            (*(v48 + 32))(&v52[v50], v49, v9);
            *&v52[v51] = v28;
            v54 = v79;
            *&v52[(v51 + 15) & 0xFFFFFFFFFFFFFFF8] = v79;
            aBlock[4] = partial apply for closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:);
            aBlock[5] = v52;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
            aBlock[3] = &block_descriptor_39;
            v55 = _Block_copy(aBlock);
            v56 = v67;
            v57 = v4;
            v58 = v54;

            [v47 _performBlockAfterCATransactionCommits_];
            _Block_release(v55);

            ListTableViewCell.updateSeparatorsFromConfiguration()();
            return;
          }
        }

        (*(v36 + 8))(v60, v37);
      }
    }

    if ([v28 isSelected])
    {
      [v28 setSelected:0 animated:0];
    }

    goto LABEL_13;
  }
}

id closure #1 in UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a3 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_hasDragItemsPreference))
  {
    v6 = 1;
  }

  else
  {
    v6 = *(a3 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_hasItemProviderTrait);
  }

  UITableViewListCoordinator.updateIndexPathsWithDragItems(indexPath:hasDragItems:)(a2, v6);
  [a4 isEditing];
  return specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a4);
}

uint64_t UITableViewListCoordinator.updateIndexPathsWithDragItems(indexPath:hasDragItems:)(uint64_t a1, char a2)
{
  v20 = a2 & 1;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for IndexPath();
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xF0);
  swift_beginAccess();
  v15 = *(v2 + v14);

  v16 = a1;
  LODWORD(a1) = specialized Set.contains(_:)(a1, v15) & 1;

  if (a1 != v20)
  {
    if (a2)
    {
      v18 = v19;
      (*(v19 + 16))(v10, v16, v8);
      swift_beginAccess();
      specialized Set._Variant.insert(_:)(v13, v10);
      swift_endAccess();
      return (*(v18 + 8))(v13, v8);
    }

    else
    {
      swift_beginAccess();
      specialized Set._Variant.remove(_:)(v16, v7);
      swift_endAccess();
      return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v7, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    }
  }

  return result;
}

id UITableViewListCoordinator.tableView(_:didEndDisplaying:forRowAt:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ListTableViewCell();
  if (swift_dynamicCastClass())
  {
    specialized PlatformListViewBase.defaultUpdateViewGraphForDisplay(_:sizeThatFitsCallback:)(0, 0, 0, &OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host, MEMORY[0x1E69DC3F0], &unk_1EFFB23E0, partial apply for thunk for @escaping @callee_guaranteed (@unowned CGSize, @unowned CGSize) -> ());
  }

  UITableViewListCoordinator.updateIndexPathsWithDragItems(indexPath:hasDragItems:)(a3, 0);
  [a1 isEditing];

  return specialized UITableViewListCoordinator.updateDragInteractionEnabled(_:isEditing:)(a1);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:willDisplay:forRowAt:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, char *))
{
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v14, v15, v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:shouldIndentWhileEditingRowAt:)()
{
  v0 = type metadata accessor for IndexPath();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t UITableViewListCoordinator.tableView(_:shouldHighlightRowAt:)(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for ShadowListDataSource();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25[-v7 - 8];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25[-v13 - 8];
  if ([a1 isEditing])
  {
    v15 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
    swift_beginAccess();
    (*(v6 + 16))(v8, &v2[v15], v5);
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.selectionValue(forRowAt:)(a2, v5, WitnessTable, v14);
    (*(v6 + 8))(v8, v5);
    v17 = (*(*(AssociatedTypeWitness - 8) + 48))(v14, 1, AssociatedTypeWitness) != 1;
    (*(v11 + 8))(v14, v10);
  }

  else
  {
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [a1 cellForRowAtIndexPath_];

    if (v17)
    {
      type metadata accessor for ListTableViewCell();
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        v26[0] = *(v19 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior);
        v21 = *(v19 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32);
        v20 = *(v19 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48);
        v22 = *(v19 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16);
        v27 = *(v19 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64);
        v26[2] = v21;
        v26[3] = v20;
        v26[1] = v22;
        _s10Foundation9IndexPathVSgWOcTm_0(v26, v25, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

        if (*(&v26[0] + 1))
        {
          if (*(&v26[0] + 1) != 1)
          {
            _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v26, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
            return 1;
          }
        }

        else
        {
          _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v26, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return v17;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:shouldHighlightRowAt:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = UITableViewListCoordinator.tableView(_:shouldHighlightRowAt:)(v9, v8);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

Swift::Bool __swiftcall UITableViewListCoordinator.tableView(_:shouldDrawTopSeparatorForSection:)(UITableView *_, Swift::Int shouldDrawTopSeparatorForSection)
{
  v3 = v2;
  v50 = shouldDrawTopSeparatorForSection;
  v47 = _;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for IndexPath();
  v45 = *(v6 - 8);
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v43 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v41 = &v39 - v9;
  v10 = type metadata accessor for ShadowRowCollection();
  v11 = *(v10 - 8);
  v48 = v10;
  v49 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v39 - v12;
  v13 = type metadata accessor for ShadowSectionCollection();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - v15;
  v17 = type metadata accessor for ShadowListDataSource();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v39 - v21;
  v23 = *((v5 & v4) + 0x70);
  swift_beginAccess();
  v51 = *(v18 + 16);
  v51(v22, &v2[v23], v17);
  ShadowListDataSource.sectionIDs.getter(v16);
  v52 = *(v18 + 8);
  v52(v22, v17);
  swift_getWitnessTable();
  v24 = Collection.isEmpty.getter();
  (*(v14 + 8))(v16, v13);
  if (v24)
  {
    return 0;
  }

  v51(v22, &v3[v23], v17);
  WitnessTable = swift_getWitnessTable();
  v27 = v50;
  v39 = WitnessTable;
  ListDiffable.rowIDs(forSectionAtOffset:)(v50, v17, WitnessTable);
  v52(v22, v17);
  v28 = v48;
  swift_getWitnessTable();
  if ((Collection.isEmpty.getter() & 1) != 0 || (v29 = v51, v51(v22, &v3[v23], v17), v30 = &v3[v23], v31 = v40, v29(v40, v30, v17), v32 = v44, MEMORY[0x18D000680](0, v27), v33 = v41, v34 = ListDiffable.rowIndex(at:)(v41, v32, v17, v39), (*(v45 + 8))(v32, v46), v35 = v31, v36 = v52, v52(v35, v17), v37 = ShadowListDataSource.separatorConfiguration(forRowAt:)(v33, v34, v17), (*(v42 + 8))(v33, v43), v36(v22, v17), , , !v37))
  {
    v38 = [(UITableView *)v47 _drawsSeparatorAtTopOfSections];
    (*(v49 + 8))(v53, v28);
    return v38;
  }

  else
  {
    (*(v49 + 8))(v53, v28);
    return v37 == 1;
  }
}

Swift::Int @objc UITableViewListCoordinator.tableView(_:shouldDrawTopSeparatorForSection:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = UITableViewListCoordinator.tableView(_:shouldDrawTopSeparatorForSection:)(v6, a4);

  return a4 & 1;
}

Swift::Bool __swiftcall UITableViewListCoordinator.tableView(_:shouldDrawBottomSeparatorForSection:)(UITableView *_, Swift::Int shouldDrawBottomSeparatorForSection)
{
  v3 = v2;
  v76 = shouldDrawBottomSeparatorForSection;
  v70 = _;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for IndexPath();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v4;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  v66 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v64 = &v57 - v9;
  v10 = type metadata accessor for ShadowRowCollection();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v57 - v11;
  v12 = type metadata accessor for ShadowSectionCollection();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - v14;
  v16 = type metadata accessor for ShadowListDataSource();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v63 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  v22 = *((v5 & v75) + 0x70);
  swift_beginAccess();
  v71 = *(v17 + 16);
  v71(v21, &v2[v22], v16);
  ShadowListDataSource.sectionIDs.getter(v15);
  v75 = *(v17 + 8);
  (v75)(v21, v16);
  swift_getWitnessTable();
  v23 = Collection.isEmpty.getter();
  v24 = *(v13 + 8);
  v60 = v15;
  v61 = v13 + 8;
  v62 = v12;
  v59 = v24;
  v24(v15, v12);
  if (v23)
  {
    v25 = 0;
  }

  else
  {
    v26 = v71;
    v71(v21, &v3[v22], v16);
    WitnessTable = swift_getWitnessTable();
    v28 = v72;
    v58 = WitnessTable;
    ListDiffable.rowIDs(forSectionAtOffset:)(v76, v16, WitnessTable);
    (v75)(v21, v16);
    v29 = v74;
    v30 = ShadowRowCollection.count.getter(v74);
    (*(v73 + 8))(v28, v29);
    v31 = v30 < 1;
    v32 = v30 - 1;
    v33 = v22;
    v34 = v26;
    if (v31 || (v26(v21, &v3[v22], v16), v35 = v63, v34(v63, &v3[v22], v16), v36 = v67, MEMORY[0x18D000680](v32, v76), v74 = v33, v37 = v64, v38 = ListDiffable.rowIndex(at:)(v64, v36, v16, v58), (*(v68 + 8))(v36, v69), v39 = v35, v40 = v75, (v75)(v39, v16), ShadowListDataSource.separatorConfiguration(forRowAt:)(v37, v38, v16), v73 = v41, v43 = v42, v44 = v37, v33 = v74, (*(v65 + 8))(v44, v66), v40(v21, v16), , , !v43))
    {
      v46 = v75;
      v45 = v76;
      v47 = v3;
      v48 = [(UITableView *)v70 style];
      if (v48 == 1)
      {
        goto LABEL_7;
      }

      v73 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        return v48;
      }

      v49 = v34;
      v50 = v47;
      v49(v21, &v47[v33], v16);
      v51 = ListDiffable.hasFooter(forSectionAtOffset:)(v45);
      v46(v21, v16);
      if (v51)
      {
        v25 = 0;
      }

      else
      {
        v49(v21, &v47[v33], v16);
        v74 = v33;
        v52 = v60;
        ShadowListDataSource.sectionIDs.getter(v60);
        v46(v21, v16);
        v53 = v62;
        v54 = specialized ViewLeafView.platformView.getter(v62);
        v59(v52, v53);
        if (v73 >= v54)
        {
          v25 = 1;
        }

        else
        {
          v55 = v73;
          v49(v21, &v50[v74], v16);
          LOBYTE(v55) = ListDiffable.hasHeader(forSectionAtOffset:)(v55);
          v46(v21, v16);
          v25 = v55 ^ 1;
        }
      }

      static Semantics.v3.getter();
      if ((isLinkedOnOrAfter(_:)() & 1) != 0 && [(UITableView *)v70 style]== UITableViewStylePlain)
      {
LABEL_7:
        v25 = 1;
      }
    }

    else
    {
      v25 = v43 == 1;
    }
  }

  LOBYTE(v48) = v25 & 1;
  return v48;
}

Swift::Int @objc UITableViewListCoordinator.tableView(_:shouldDrawBottomSeparatorForSection:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  LOBYTE(a4) = UITableViewListCoordinator.tableView(_:shouldDrawBottomSeparatorForSection:)(v6, a4);

  return a4 & 1;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:selectionFollowsFocusForRowAt:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  LOBYTE(a1) = specialized UITableViewListCoordinator.tableView(_:selectionFollowsFocusForRowAt:)(v9);

  (*(v6 + 8))(v8, v5);
  return a1 & 1;
}

uint64_t UITableViewListCoordinator.tableView(_:cellForRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ShadowListDataSource();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v22 - v9;
  v11 = MEMORY[0x18D00C850](0x6C6C65437473694CLL, 0xE800000000000000, v8);

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v23 = a1;
  v13 = [a1 dequeueReusableCellWithIdentifier:v11 forIndexPath:isa];

  swift_getAssociatedTypeWitness();
  v14 = swift_dynamicCastUnknownClassUnconditional();
  v15 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
  swift_beginAccess();
  (*(v7 + 16))(v10, &v3[v15], v6);
  v25 = v3;
  v26 = v14;
  WitnessTable = swift_getWitnessTable();
  ListCoreDataSource.visitContent<A>(atRow:visitor:)(a2, partial apply for closure #1 in UITableViewListCoordinator.tableView(_:cellForRowAt:), v24, v6, MEMORY[0x1E69E7CA8] + 8, WitnessTable, &v27);
  (*(v7 + 8))(v10, v6);
  type metadata accessor for ListTableViewCell();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = v13;
    UITableViewListCoordinator.updateCell(_:in:at:isVisible:)(v18, v23, a2, 0);
    v20 = v19;
    [v18 setAutomaticallyUpdatesBackgroundConfiguration_];
    [v18 setAutomaticallyUpdatesContentConfiguration_];
  }

  return v14;
}

void closure #1 in UITableViewListCoordinator.tableView(_:cellForRowAt:)(uint64_t a1, char *a2, void *a3)
{
  v6 = MEMORY[0x1E69E7D40];
  v7 = *a2;
  v8 = *MEMORY[0x1E69E7D40];
  v9 = type metadata accessor for ShadowListDataSource();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  v13 = *((v8 & v7) + 0x70);
  swift_beginAccess();
  (*(v10 + 16))(v12, &a2[v13], v9);
  v14 = *((*v6 & *a2) + 0x88);
  swift_beginAccess();
  v15 = *&a2[v14];
  outlined copy of Transaction?(v15);
  ShadowListDataSource.configureCell(_:transaction:context:)(a3, v15, a1, v9);
  outlined consume of ListItemTint?(v15);
  (*(v10 + 8))(v12, v9);
  if (a2[*((*v6 & *a2) + 0xF8)] == 1)
  {
    v16 = [a3 layer];
    swift_getWitnessTable();
    v17[1] = *(a1 + *(type metadata accessor for _RowVisitationContext() + 40));
    ViewTraitCollection.zIndex.getter();
    [v16 setZPosition_];
  }
}

id @objc UITableViewListCoordinator.tableView(_:cellForRowAt:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = UITableViewListCoordinator.tableView(_:cellForRowAt:)(v9, v8);

  (*(v6 + 8))(v8, v5);

  return v11;
}

id @objc UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(v6, a4, ListDiffable.hasHeader(forSectionAtOffset:), ListCoreDataSource.configureHeader(_:transaction:forSectionAtOffset:), 0);
  v9 = v8;

  return v9;
}

uint64_t ListCoreDataSource.wantsCompactSpacing(forSectionAtOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v12 - v9;
  ListDiffable.sectionIndex(atOffset:)(a1, a2, v6);
  (*(a3 + 104))(&v12, v10, a2, a3);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  if (v14)
  {
    return 0;
  }

  else
  {
    return v13 & (v12 != 0);
  }
}

double @objc UITableViewListCoordinator.tableView(_:heightForHeaderInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  v8 = specialized UITableViewListCoordinator.tableView(_:heightForHeaderInSection:)(a4);

  return v8;
}

double @objc UITableViewListCoordinator.tableView(_:estimatedHeightForHeaderInSection:)(void *a1, uint64_t a2, void *a3, Swift::Int a4)
{
  v6 = a3;
  v7 = a1;
  v8 = specialized UITableViewListCoordinator.tableView(_:estimatedHeightForHeaderInSection:)(a4);

  return v8;
}

void UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), int a5)
{
  HIDWORD(v28) = a5;
  v32 = a4;
  v33 = a1;
  v7 = v5;
  v9 = *v5;
  v10 = *MEMORY[0x1E69E7D40];
  v30 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x50);
  v11 = type metadata accessor for ShadowListDataSource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v28 - v13;
  v15 = *((v10 & v9) + 0x70);
  swift_beginAccess();
  v16 = *(v12 + 16);
  v16(v14, &v7[v15], v11);
  WitnessTable = swift_getWitnessTable();
  v31 = a2;
  LOBYTE(a2) = a3(a2, v11, WitnessTable);
  v29 = *(v12 + 8);
  v29(v14, v11);
  if (a2)
  {
    v18 = MEMORY[0x18D00C850](0x646165487473694CLL, 0xEA00000000007265);

    v19 = [v33 dequeueReusableHeaderFooterViewWithIdentifier_];

    if (v19)
    {
      swift_getAssociatedTypeWitness();
      v20 = swift_dynamicCastUnknownClassUnconditional();
      v16(v14, &v7[v15], v11);
      v21 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x88);
      swift_beginAccess();
      v22 = *&v7[v21];
      outlined copy of Transaction?(v22);
      v23 = swift_getWitnessTable();
      v32(v20, v22, v31, v11, v23);
      outlined consume of ListItemTint?(v22);
      v29(v14, v11);
      type metadata accessor for ListTableViewHeaderFooter();
      v24 = swift_dynamicCastClass();
      if (v24)
      {
        v25 = v24;
        v26 = v19;
        v27 = v25;
        specialized UITableViewListCoordinator.updateHeaderFooter(_:section:position:in:)(v27, SBYTE4(v28), v33);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id @objc UITableViewListCoordinator.tableView(_:viewForFooterInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  UITableViewListCoordinator.tableView(_:viewForHeaderInSection:)(v6, a4, ListDiffable.hasFooter(forSectionAtOffset:), ListCoreDataSource.configureFooter(_:transaction:forSectionAtOffset:), 1);
  v9 = v8;

  return v9;
}

double @objc UITableViewListCoordinator.tableView(_:heightForFooterInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  specialized UITableViewListCoordinator.tableView(_:heightForFooterInSection:)(a4);
  v9 = v8;

  return v9;
}

double @objc UITableViewListCoordinator.tableView(_:estimatedHeightForFooterInSection:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  specialized UITableViewListCoordinator.tableView(_:estimatedHeightForFooterInSection:)(a4);
  v9 = v8;

  return v9;
}

uint64_t UITableViewListCoordinator.listTableViewCell(_:platformItemIsSelected:)(_BYTE *a1, int a2)
{
  type metadata accessor for (IndexPath?, IndexPath?)();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  v18 = type metadata accessor for IndexPath();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v28 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16];
  v87 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior];
  v88 = v28;
  v29 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48];
  v89 = *&a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32];
  v90 = v29;
  v91 = a1[OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64];
  result = *(&v87 + 1);
  if (*(&v87 + 1) == 1 || (BYTE1(v87) & 1) == 0 || (v87 & 1) != 0)
  {
    return result;
  }

  LODWORD(v82) = a2;
  v84 = v2;
  v79 = v11;
  v85 = &v75 - v25;
  v81 = v17;
  v80 = v8;
  v86 = v27;
  v83 = v26;
  v31 = *(&v88 + 1);
  v32 = *(&v89 + 1);
  outlined copy of AppIntentExecutor?(*(&v87 + 1));
  outlined copy of AppIntentExecutor?(v31);
  outlined copy of AppIntentExecutor?(v32);
  v33 = [a1 _tableView];
  if (!v33)
  {
    return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v87, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  }

  v34 = v33;
  v35 = [v33 indexPathForCell_];
  if (!v35)
  {

    return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v87, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  }

  v78 = v34;
  v36 = v35;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v38 = v85;
  v37 = v86;
  v39 = *(v86 + 32);
  v40 = v83;
  v39(v85, v23, v83);
  if (v82)
  {
    v41 = v81;
    (*(v37 + 16))(v81, v38, v40);
    (*(v37 + 56))(v41, 0, 1, v40);
    v42 = v84;
    v43 = v40;
    v44 = v38;
    v45 = v37;
    v46 = *((*MEMORY[0x1E69E7D40] & *v84) + 0xB8);
    swift_beginAccess();
    outlined assign with take of IndexPath?(v41, v42 + v46);
    swift_endAccess();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v48 = v78;
    [v78 selectRowAtIndexPath:isa animated:0 scrollPosition:0];

    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v87, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
    return (*(v45 + 8))(v44, v43);
  }

  v75 = v39;
  v49.super.isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v50 = v84;
  v51 = v37;
  v52 = v49.super.isa;
  [v78 deselectRowAtIndexPath:v49.super.isa animated:0];

  v53 = *((*MEMORY[0x1E69E7D40] & *v50) + 0xB8);
  swift_beginAccess();
  (*(v51 + 16))(v14, v38, v40);
  v54 = *(v51 + 56);
  v77 = v51 + 56;
  v76 = v54;
  v54(v14, 0, 1, v40);
  v55 = *(v6 + 48);
  v56 = MEMORY[0x1E6969C28];
  v57 = MEMORY[0x1E69E6720];
  v82 = v53;
  v58 = v50 + v53;
  v59 = v55;
  v60 = v80;
  _s10Foundation9IndexPathVSgWOcTm_0(v58, v80, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v61 = v86;
  _s10Foundation9IndexPathVSgWOcTm_0(v14, v60 + v59, &lazy cache variable for type metadata for IndexPath?, v56, v57, _s10Foundation9IndexPathVSgMaTm_0);
  v62 = *(v61 + 48);
  if (v62(v60, 1, v40) == 1)
  {

    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v87, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    (*(v61 + 8))(v85, v40);
    v63 = v60;
    if (v62(v60 + v59, 1, v40) == 1)
    {
      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v60, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
      v64 = v83;
      v65 = v84;
      v66 = v81;
LABEL_18:
      v76(v66, 1, 1, v64);
      v74 = v82;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v66, v65 + v74);
      return swift_endAccess();
    }

    return outlined destroy of (IndexPath?, IndexPath?)(v63);
  }

  v67 = v79;
  _s10Foundation9IndexPathVSgWOcTm_0(v60, v79, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v63 = v60;
  if (v62(v60 + v59, 1, v40) == 1)
  {

    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v87, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
    v68 = *(v86 + 8);
    v68(v85, v40);
    v68(v67, v40);
    return outlined destroy of (IndexPath?, IndexPath?)(v63);
  }

  v75(v20, v60 + v59, v40);
  lazy protocol witness table accessor for type IndexPath and conformance IndexPath(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x1E6969C28]);
  v69 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = v84;
  LODWORD(v75) = v69;

  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v87, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
  v70 = v67;
  v71 = *(v86 + 8);
  v71(v20, v40);
  v72 = MEMORY[0x1E6969C28];
  v73 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v14, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v71(v85, v40);
  v71(v70, v40);
  result = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v80, &lazy cache variable for type metadata for IndexPath?, v72, v73, _s10Foundation9IndexPathVSgMaTm_0);
  v64 = v40;
  v66 = v81;
  if (v75)
  {
    goto LABEL_18;
  }

  return result;
}

void UITableViewListCoordinator.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v66 = a2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v62 = *MEMORY[0x1E69E7D40] & v5;
  _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v56 - v8;
  v60 = *(*((v6 & v5) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v56 - v10;
  v61 = v11;
  v12 = type metadata accessor for Binding();
  v64 = *(v12 - 1);
  v65 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v56 - v13;
  v14 = type metadata accessor for ShadowListDataSource();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = type metadata accessor for Optional();
  v63 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - v25;
  if ([a1 isEditing])
  {
    v27 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
    swift_beginAccess();
    (*(v15 + 16))(v17, &v3[v27], v14);
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.selectionValue(forRowAt:)(v66, v14, WitnessTable, v21);
    (*(v15 + 8))(v17, v14);
    v29 = v22;
    if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
    {
      (*(v63 + 8))(v21, v19);
      return;
    }

    (*(v22 + 32))(v26, v21, AssociatedTypeWitness);
    v41 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
    swift_beginAccess();
    v43 = v64;
    v42 = v65;
    if (!(*(v64 + 48))(&v3[v41], 1, v65))
    {
      v45 = v58;
      (*(v43 + 16))(v58, &v3[v41], v42);
      swift_endAccess();
      v46 = v59;
      MEMORY[0x18D00ACC0](v42);
      v47 = v61;
      (*(*(v62 + 104) + 32))(v26, v61);
      specialized Binding.wrappedValue.setter();
      (*(v60 + 8))(v46, v47);
      (*(v43 + 8))(v45, v42);
      (*(v29 + 8))(v26, AssociatedTypeWitness);
      return;
    }

    (*(v29 + 8))(v26, AssociatedTypeWitness);
    goto LABEL_20;
  }

  v30 = v66;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v65 = [a1 cellForRowAtIndexPath_];

  if (!v65)
  {
    return;
  }

  type metadata accessor for ListTableViewCell();
  v32 = swift_dynamicCastClass();
  if (v32)
  {
    v67 = *(v32 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior);
    v34 = *(v32 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 32);
    v33 = *(v32 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 48);
    v35 = *(v32 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 16);
    v71 = *(v32 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_selectionBehavior + 64);
    v69 = v34;
    v70 = v33;
    v68 = v35;
    v36 = v67;
    v37 = *(&v67 + 1);
    if (*(&v67 + 1))
    {
      if (*(&v67 + 1) == 1)
      {
        goto LABEL_18;
      }

      v38 = *(&v68 + 1);
      v39 = *(&v69 + 1);
      outlined copy of AppIntentExecutor?(*(&v67 + 1));
      outlined copy of AppIntentExecutor?(v38);
      v40 = outlined copy of AppIntentExecutor?(v39);
      v37(v40);
    }

    else
    {
      v48 = *(&v68 + 1);
      v49 = *(&v69 + 1);
      outlined copy of AppIntentExecutor?(0);
      outlined copy of AppIntentExecutor?(v48);
      outlined copy of AppIntentExecutor?(v49);
    }

    v50 = MEMORY[0x1E69E7D40];
    if ((v36 & 1) == 0)
    {
      _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v67, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

      v52 = type metadata accessor for IndexPath();
      v53 = *(v52 - 8);
      v54 = v57;
      (*(v53 + 16))(v57, v30, v52);
      (*(v53 + 56))(v54, 0, 1, v52);
      v55 = *((*v50 & *v3) + 0xB8);
      swift_beginAccess();
      outlined assign with take of IndexPath?(v54, &v3[v55]);
LABEL_20:
      swift_endAccess();
      return;
    }

    v51 = IndexPath._bridgeToObjectiveC()().super.isa;
    [a1 deselectRowAtIndexPath:v51 animated:UITableViewListCoordinator.isAnimated.getter() & 1];
    _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v67, &lazy cache variable for type metadata for PlatformItemList.Item.SelectionBehavior?, &type metadata for PlatformItemList.Item.SelectionBehavior, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);

LABEL_18:
    return;
  }

  v44 = v65;
}

id UITableViewListCoordinator.tableView(_:didDeselectRowAt:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v44 = a2;
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v38 = *MEMORY[0x1E69E7D40] & v5;
  v39 = *(*((v6 & v5) + 0x58) - 8);
  MEMORY[0x1EEE9AC00](a1);
  v37 = &v35 - v7;
  v40 = v8;
  v9 = type metadata accessor for Binding();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v35 - v10;
  v11 = type metadata accessor for ShadowListDataSource();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = type metadata accessor for Optional();
  v41 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v35 - v22;
  result = [a1 isEditing];
  if (result)
  {
    v25 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x70);
    swift_beginAccess();
    (*(v12 + 16))(v14, &v3[v25], v11);
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.selectionValue(forRowAt:)(v44, v11, WitnessTable, v18);
    (*(v12 + 8))(v14, v11);
    v27 = v19;
    if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
    {
      return (*(v41 + 8))(v18, v16);
    }

    else
    {
      (*(v19 + 32))(v23, v18, AssociatedTypeWitness);
      v28 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
      swift_beginAccess();
      v30 = v42;
      v29 = v43;
      if ((*(v42 + 48))(&v3[v28], 1, v43))
      {
        (*(v27 + 8))(v23, AssociatedTypeWitness);
        return swift_endAccess();
      }

      else
      {
        v31 = &v3[v28];
        v32 = v36;
        (*(v30 + 16))(v36, v31, v29);
        swift_endAccess();
        v33 = v37;
        MEMORY[0x18D00ACC0](v29);
        v34 = v40;
        (*(*(v38 + 104) + 48))(v23, v40);
        specialized Binding.wrappedValue.setter();
        (*(v39 + 8))(v33, v34);
        (*(v30 + 8))(v32, v29);
        return (*(v27 + 8))(v23, AssociatedTypeWitness);
      }
    }
  }

  return result;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:didSelectRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v12, v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t @objc UITableViewListCoordinator.tableView(_:canEditRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t @objc UITableViewListCoordinator.tableView(_:willBeginEditingRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

id @objc UITableViewListCoordinator.tableView(_:contextMenuConfigurationForRowAt:point:)(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  v11 = specialized UITableViewListCoordinator.tableView(_:contextMenuConfigurationForRowAt:point:)(v9);

  (*(v6 + 8))(v8, v5);

  return v11;
}

uint64_t (*UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(void *a1, uint64_t a2))()
{
  v16 = a1;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v15 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v7 + 16))(&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v10 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *((v5 & v4) + 0x50);
  *(v11 + 24) = *(v15 + 88);
  v12 = v16;
  *(v11 + 40) = *((v5 & v4) + 0x68);
  *(v11 + 48) = v12;
  *(v11 + 56) = v9;
  (*(v7 + 32))(v11 + v10, &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v13 = v12;
  return partial apply for closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:);
}

uint64_t closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v30 = a5;
  v27 = a2;
  v28 = a1;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12, v15);
  v16 = (*(v13 + 80) + 56) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  *(v17 + 4) = a6;
  *(v17 + 5) = a7;
  v18 = v27;
  *(v17 + 6) = v27;
  (*(v13 + 32))(&v17[v16], &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v19 = v28;
  *&v17[(v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8] = v28;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:);
  *(v20 + 24) = v17;
  v35 = partial apply for thunk for @callee_guaranteed () -> ();
  v36 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed () -> ();
  v34 = &block_descriptor_22;
  v21 = _Block_copy(&aBlock);

  v22 = v19;

  v35 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  v36 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v34 = &block_descriptor_22_0;
  v23 = _Block_copy(&aBlock);
  [v22 performBatchUpdates:v21 completion:v23];
  _Block_release(v23);
  _Block_release(v21);
  LOBYTE(aBlock) = 17;
  v24 = swift_allocObject();
  v25 = v30;
  v24[2] = v29;
  v24[3] = v25;
  v24[4] = a6;
  v24[5] = a7;
  v24[6] = v18;

  static Update.enqueueAction(reason:_:)();

  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = type metadata accessor for ShadowListDataSource();
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.deleteCell(forRowAt:)(a2, v7, WitnessTable);
    swift_endAccess();
    _s10Foundation9IndexPathVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<IndexPath>, MEMORY[0x1E6969C28], MEMORY[0x1E69E6F90]);
    v9 = type metadata accessor for IndexPath();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_18CD63400;
    (*(v10 + 16))(v12 + v11, a2, v9);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [a3 deleteRowsAtIndexPaths:isa withRowAnimation:100];
  }
}

void closure #3 in closure #1 in UITableViewListCoordinator.destructiveAction(tableView:indexPath:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    type metadata accessor for ShadowListDataSource();
    ShadowListDataSource.discardUpdatesForDeletion()();
    swift_endAccess();
  }
}

uint64_t UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  result = 0;
  if (v3)
  {
    type metadata accessor for ListTableViewCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
      if (v6)
      {
        v7 = v6;
        UIHostingViewBase.viewGraph.getter();

        LOBYTE(v13) = 17;
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
        static Update.dispatchImmediately<A>(reason:_:)();
      }

      else
      {

        _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(&v27);
      }

      v12[11] = v38;
      v12[12] = v39;
      v12[7] = v34;
      v12[8] = v35;
      v12[9] = v36;
      v12[10] = v37;
      v12[3] = v30;
      v12[4] = v31;
      v12[5] = v32;
      v12[6] = v33;
      v12[0] = v27;
      v12[1] = v28;
      v12[2] = v29;
      v24 = v38;
      v25 = v39;
      v26 = v40;
      v20 = v34;
      v21 = v35;
      v22 = v36;
      v23 = v37;
      v16 = v30;
      v17 = v31;
      v18 = v32;
      v19 = v33;
      v12[13] = v40;
      v13 = v27;
      v14 = v28;
      v15 = v29;
      if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(&v13) == 1)
      {
        return 0;
      }

      else
      {
        v45 = v17;
        v46 = v18;
        v47 = v19;
        v41 = v13;
        v42 = v14;
        v43 = v15;
        v44 = v16;
        v8 = MEMORY[0x1E69E6720];
        _s10Foundation9IndexPathVSgWOcTm_0(&v13, &v11, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        v9 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v12, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        MEMORY[0x1EEE9AC00](v9);
        v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(partial apply for closure #1 in UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:));
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v13, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        return v10;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t UITableViewListCoordinator.tableView(_:trailingSwipeActionsConfigurationForRowAt:)(void *a1)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v3 = [a1 cellForRowAtIndexPath_];

  result = 0;
  if (v3)
  {
    type metadata accessor for ListTableViewCell();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7SwiftUI17ListTableViewCell_host);
      if (v6)
      {
        v7 = v6;
        UIHostingViewBase.viewGraph.getter();

        LOBYTE(v13[0]) = 17;
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0(0, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, MEMORY[0x1E69E6720]);
        static Update.dispatchImmediately<A>(reason:_:)();
      }

      else
      {

        _s7SwiftUI12SwipeActionsO5ValueVSgWOi0_(&v21);
      }

      v12[11] = v32;
      v12[12] = v33;
      v12[7] = v28;
      v12[8] = v29;
      v12[9] = v30;
      v12[10] = v31;
      v12[3] = v24;
      v12[4] = v25;
      v12[5] = v26;
      v12[6] = v27;
      v12[0] = v21;
      v12[1] = v22;
      v12[2] = v23;
      v18 = v32;
      v19 = v33;
      v20 = v34;
      v14 = v28;
      v15 = v29;
      v16 = v30;
      v17 = v31;
      v13[3] = v24;
      v13[4] = v25;
      v13[5] = v26;
      v13[6] = v27;
      v12[13] = v34;
      v13[0] = v21;
      v13[1] = v22;
      v13[2] = v23;
      if (_s7SwiftUI12SwipeActionsO5ValueVSgWOg(v13) == 1)
      {
        return 0;
      }

      else
      {
        v39 = v18;
        v40 = v19;
        v41 = v20;
        v35 = v14;
        v36 = v15;
        v37 = v16;
        v38 = v17;
        v8 = MEMORY[0x1E69E6720];
        _s10Foundation9IndexPathVSgWOcTm_0(&v14, &v11, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, MEMORY[0x1E69E6720], _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        v9 = _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(v12, &lazy cache variable for type metadata for SwipeActions.Value?, &type metadata for SwipeActions.Value, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        MEMORY[0x1EEE9AC00](v9);
        v10 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(partial apply for closure #1 in UITableViewListCoordinator.tableView(_:trailingSwipeActionsConfigurationForRowAt:));
        _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v14, &lazy cache variable for type metadata for SwipeActions.Configuration?, &type metadata for SwipeActions.Configuration, v8, _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgMaTm_0);
        return v10;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t closure #1 in UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X8>)
{
  v34 = a6;
  v32 = a5;
  v33 = a3;
  v35 = a7;
  v9 = *MEMORY[0x1E69E7D40];
  v29 = *a2;
  v30 = v9;
  v31 = v9 & v29;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = a1[5];
  v38[4] = a1[4];
  v38[5] = v13;
  v38[6] = a1[6];
  v14 = a1[1];
  v38[0] = *a1;
  v38[1] = v14;
  v15 = a1[3];
  v38[2] = a1[2];
  v38[3] = v15;
  v28 = type metadata accessor for UISwipeActionsConfiguration();
  v16 = a1[5];
  v37[4] = a1[4];
  v37[5] = v16;
  v37[6] = a1[6];
  v17 = a1[1];
  v37[0] = *a1;
  v37[1] = v17;
  v18 = a1[3];
  v37[2] = a1[2];
  v37[3] = v18;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  v20 = (*(v11 + 80) + 64) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v23 = v29;
  v22 = v30;
  *(v21 + 16) = *((v30 & v29) + 0x50);
  *(v21 + 24) = *(v31 + 88);
  *(v21 + 40) = *((v22 & v23) + 0x68);
  *(v21 + 48) = v19;
  v24 = v33;
  *(v21 + 56) = v33;
  (*(v11 + 32))(v21 + v20, &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  outlined init with copy of SwipeActions.Configuration(v38, &v36);
  v25 = v24;
  v26 = specialized UISwipeActionsConfiguration.init(configuration:graphHost:performDestructiveAction:)(v37, 0, v34, v21);

  *v35 = v26;
  return result;
}

uint64_t closure #1 in closure #1 in UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = UITableViewListCoordinator.destructiveAction(tableView:indexPath:)(a4, a5);

    v10();
  }

  return a1(1);
}

id @objc UITableViewListCoordinator.tableView(_:leadingSwipeActionsConfigurationForRowAt:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, char *))
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = a3;
  v13 = a1;
  v14 = a5(v12, v11);

  (*(v9 + 8))(v11, v8);

  return v14;
}

uint64_t UITableViewListCoordinator.appIntentsDataSourcePayloadProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x108);
  swift_beginAccess();
  return _s10Foundation9IndexPathVSgWOcTm_0(v1 + v3, a1, &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
}

double UITableViewListCoordinator.id(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v30 = *MEMORY[0x1E69E7D40] & *v2;
  v6 = *((v5 & v4) + 0x60);
  v28 = *((v5 & v4) + 0x50);
  v29 = v6;
  v7 = type metadata accessor for ShadowListDataSource();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for IntelligenceDataSourceItem();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a1, v10, v16);
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x1E69DBC38])
  {
    (*(v11 + 96))(v13, v10);
    (*(v15 + 32))(v18, v13, v14);
    v19 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x70);
    swift_beginAccess();
    v20 = v31;
    v21 = (*(v31 + 16))(v9, &v2[v19], v7);
    MEMORY[0x1EEE9AC00](v21);
    v22 = v30;
    v23 = *(v30 + 88);
    *(&v28 - 4) = v28;
    *(&v28 - 3) = v23;
    v24 = *(v22 + 104);
    *(&v28 - 2) = v29;
    *(&v28 - 1) = v24;
    WitnessTable = swift_getWitnessTable();
    ListCoreDataSource.visitContent<A>(atRow:visitor:)(v18, partial apply for closure #1 in UITableViewListCoordinator.id(for:), (&v28 - 6), v7, MEMORY[0x1E69E69B8], WitnessTable, v32);
    (*(v20 + 8))(v9, v7);
    (*(v15 + 8))(v18, v14);
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    v27 = v32;
    *(v32 + 32) = 0;
    result = 0.0;
    *v27 = 0u;
    v27[1] = 0u;
  }

  return result;
}

uint64_t closure #1 in UITableViewListCoordinator.id(for:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ShadowListDataSource();
  swift_getWitnessTable();
  v2 = type metadata accessor for _RowVisitationContext();
  return _RowVisitationContext.intelligenceDataSourceItemID.getter(v2, a1);
}

uint64_t UITableViewListCoordinator.__ivar_destroyer()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v3 = type metadata accessor for ShadowListDataSource();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *((*v1 & *v0) + 0x78);
  type metadata accessor for Binding();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = &v0[*((*v1 & *v0) + 0x80)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v6, v6[1]);
  outlined consume of ListItemTint?(*&v0[*((*v1 & *v0) + 0x88)]);

  v7 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v0[*((*v1 & *v0) + 0xB8)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v8 = *((*v1 & *v0) + 0xC0);
  v9 = type metadata accessor for ListCoreBatchUpdates();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  v10 = *((*v1 & *v0) + 0xC8);
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&v0[v10], v11);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&v0[*((*v1 & *v0) + 0x100)]);
  return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&v0[*((*v1 & *v0) + 0x108)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v7, _s10Foundation9IndexPathVSgMaTm_0);
}

uint64_t @objc UITableViewListCoordinator.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v4 = type metadata accessor for ShadowListDataSource();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *((*v2 & *a1) + 0x78);
  type metadata accessor for Binding();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);
  v7 = &a1[*((*v2 & *a1) + 0x80)];
  outlined consume of Binding<NavigationSplitViewColumn>?(*v7, v7[1]);
  outlined consume of ListItemTint?(*&a1[*((*v2 & *a1) + 0x88)]);

  v8 = MEMORY[0x1E69E6720];
  _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&a1[*((*v2 & *a1) + 0xB8)], &lazy cache variable for type metadata for IndexPath?, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720], _s10Foundation9IndexPathVSgMaTm_0);
  v9 = *((*v2 & *a1) + 0xC0);
  v10 = type metadata accessor for ListCoreBatchUpdates();
  (*(*(v10 - 8) + 8))(&a1[v9], v10);
  v11 = *((*v2 & *a1) + 0xC8);
  v12 = type metadata accessor for Optional();
  (*(*(v12 - 8) + 8))(&a1[v11], v12);

  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*&a1[*((*v2 & *a1) + 0x100)]);
  return _s7SwiftUI16PlatformItemListV0D0V17SelectionBehaviorVSgWOhTm_0(&a1[*((*v2 & *a1) + 0x108)], &lazy cache variable for type metadata for IntelligenceAppIntentsDataSourcePayloadProviding?, type metadata accessor for IntelligenceAppIntentsDataSourcePayloadProviding, v8, _s10Foundation9IndexPathVSgMaTm_0);
}