__n128 __swift_memcpy86_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 78) = *(a2 + 78);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for _DigitalCrownConfiguration(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 25) = *(a2 + 25);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 41) = *(a2 + 41);
  *(result + 42) = *(a2 + 42);
  *(result + 43) = *(a2 + 43);
  *(result + 44) = *(a2 + 44);
  *(result + 45) = *(a2 + 45);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 57) = *(a2 + 57);
  v3 = *(result + 80);
  if (v3 == 255)
  {
    *(result + 64) = *(a2 + 64);
    *(result + 80) = *(a2 + 80);
  }

  else
  {
    v4 = *(a2 + 80);
    if (v4 == 255)
    {
      v8 = result;
      outlined destroy of _CrownHapticsConfiguration(result + 64);
      result = v8;
      *(v8 + 64) = *(a2 + 64);
      *(v8 + 80) = *(a2 + 80);
    }

    else
    {
      v6 = *(result + 64);
      v5 = *(result + 72);
      *(result + 64) = *(a2 + 64);
      *(result + 80) = v4;
      v7 = result;
      outlined consume of _CrownHapticsConfiguration(v6, v5, v3);
      result = v7;
    }
  }

  *(result + 81) = *(a2 + 81);
  *(result + 82) = *(a2 + 82);
  *(result + 84) = *(a2 + 84);
  *(result + 85) = *(a2 + 85);
  return result;
}

uint64_t getEnumTagSinglePayload for _DigitalCrownConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 86))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _DigitalCrownConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 84) = 0;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 86) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 86) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey>()
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey>)
  {
    v0 = type metadata accessor for _TraitWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey> and conformance _TraitWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey> and conformance _TraitWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey> and conformance _TraitWritingModifier<A>)
  {
    type metadata accessor for _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _TraitWritingModifier<NavigationSplitViewOpaqueBackgroundTraitKey> and conformance _TraitWritingModifier<A>);
  }

  return result;
}

uint64_t View.handGestureShortcut(_:isEnabled:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for _ConditionalContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  View.handGestureShortcutBuilder(_:isEnabled:)(a2, a3, a4, v13 - v9);
  v11 = lazy protocol witness table accessor for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier();
  v13[2] = a4;
  v13[3] = v11;
  v13[0] = swift_getWitnessTable();
  v13[1] = a4;
  swift_getWitnessTable();
  lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut();
  View.input<A>(_:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t View.handGestureShortcutBuilder(_:isEnabled:)@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = type metadata accessor for _ConditionalContent();
  v24 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  v30 = a1;
  MEMORY[0x18D00A570](&v30, a2, &type metadata for ExternalGestureActionModifier, a3, v15);
  v18 = lazy protocol witness table accessor for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier();
  v28 = a3;
  v29 = v18;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v10, v7, WitnessTable);
  v20 = *(v8 + 8);
  v20(v10, v7);
  static ViewBuilder.buildExpression<A>(_:)(v13, v7, WitnessTable);
  static ViewBuilder.buildEither<A, B>(first:)(v10, v7);
  v20(v10, v7);
  v20(v13, v7);
  v26 = WitnessTable;
  v27 = a3;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v17, v14, v21);
  return (*(v24 + 8))(v17, v14);
}

unint64_t lazy protocol witness table accessor for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier()
{
  result = lazy protocol witness table cache variable for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier;
  if (!lazy protocol witness table cache variable for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut()
{
  result = lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut;
  if (!lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut;
  if (!lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut;
  if (!lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut;
  if (!lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut;
  if (!lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsHandGestureShortcut and conformance IsHandGestureShortcut);
  }

  return result;
}

uint64_t ExternalGestureActionModifier.body(content:)@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  result = swift_getKeyPath();
  *a2 = a1;
  *(a2 + 8) = result;
  *(a2 + 16) = a1;
  return result;
}

uint64_t EnvironmentValues.isHandGestureShortcutEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>();
    lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsHandGestureShortcutEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>();
    lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsHandGestureShortcutEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.isHandGestureShortcutEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>();
    lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsHandGestureShortcutEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>();
    lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsHandGestureShortcutEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isHandGestureShortcutEnabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>();
  lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<IsHandGestureShortcutEnabled> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ExternalGestureActionModifier.ContentView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView();

  return MEMORY[0x1EEDE2370](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ExternalGestureActionModifier.ContentView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView();

  return MEMORY[0x1EEDE2378](a1, a2, a3, v6);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsHandGestureShortcut()
{
  lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t HandGestureShortcutInteractiveControl.body(content:)@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x68536E6F74747562 && a2 == 0xEB00000000657061)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.encode(to:)(void *a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys, &unk_1EFF90918, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = a2;
  v13 = a3 & 0x1FF;
  lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v8 + 8))(v10, v7);
}

void *protocol witness for Decodable.init(from:) in conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

uint64_t HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader.body(content:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 25);
  result = specialized Environment.wrappedValue.getter(*v1, *(v1 + 8));
  v7 = result;
  if (result)
  {
    result = specialized Environment.wrappedValue.getter(v3, v4 | (v5 << 8), &v10);
    v8 = v10;
    v9 = v11;
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 10) = (v7 & 1) == 0;
  return result;
}

uint64_t HandGestureShortcutInteractiveControl.BorderShape.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v43 = a2;
  v42 = a3;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys, &unk_1EFF90B48, MEMORY[0x1E69E6F58]);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v28 - v6;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys, &unk_1EFF90B28, v4);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v28 - v8;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys, &unk_1EFF90A98, v4);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v28 - v10;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys, &unk_1EFF90A78, v4);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v28 - v12;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys, &unk_1EFF90A58, v4);
  v14 = v13;
  v29 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - v15;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<HandGestureShortcutInteractiveControl.BorderShape.CodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys, &unk_1EFF90A38, v4);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v28 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if ((v42 & 1) == 0)
  {
    v48 = 3;
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys();
    v22 = v39;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v44 = v43;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v23 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v40 + 8))(v22, v23);
    return (*(v19 + 8))(v21, v18);
  }

  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v47 = 2;
      lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys();
      v25 = v33;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v34;
      v26 = v35;
    }

    else
    {
      v49 = 4;
      lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys();
      v25 = v36;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v27 = v37;
      v26 = v38;
    }

    goto LABEL_10;
  }

  if (v43)
  {
    v46 = 1;
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys();
    v25 = v30;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v27 = v31;
    v26 = v32;
LABEL_10:
    (*(v27 + 8))(v25, v26);
    return (*(v19 + 8))(v21, v18);
  }

  v45 = 0;
  lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v29 + 8))(v16, v14);
  return (*(v19 + 8))(v21, v18);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6974616D6F747561;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000019;
  if (v1 != 3)
  {
    v3 = 0x656C63726963;
  }

  if (v1 != 2)
  {
    v4 = v3;
  }

  if (*v0)
  {
    v2 = 0x656C7573706163;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized HandGestureShortcutInteractiveControl.BorderShape.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HandGestureShortcut.Storage()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HandGestureShortcut.Storage()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737569646172 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance HandGestureShortcutInteractiveControl.BorderShape@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized HandGestureShortcutInteractiveControl.BorderShape.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsHandGestureShortcut> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsHandGestureShortcut> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsHandGestureShortcut> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsHandGestureShortcut>, lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut, &unk_1EFF90618, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsHandGestureShortcut> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcut.Storage and conformance HandGestureShortcut.Storage()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcut.Storage and conformance HandGestureShortcut.Storage;
  if (!lazy protocol witness table cache variable for type HandGestureShortcut.Storage and conformance HandGestureShortcut.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcut.Storage and conformance HandGestureShortcut.Storage);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<IsHandGestureShortcutEnabled>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter(uint64_t result, int a2, int a3)
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

  *(result + 10) = v3;
  return result;
}

uint64_t destroy for HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader(uint64_t a1)
{
  outlined consume of Environment<Bool>.Content(*a1, *(a1 + 8));
  v2 = *(a1 + 16);
  v3 = *(a1 + 25);
  v4 = *(a1 + 24);

  return outlined consume of Environment<CGFloat?>.Content(v2, v4, v3);
}

uint64_t initializeWithCopy for HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = a2[2];
  v7 = *(a2 + 25);
  v8 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v6, v8, v7);
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  *(a1 + 25) = v7;
  return a1;
}

uint64_t *assignWithCopy for HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = a2[2];
  v9 = *(a2 + 25);
  v10 = *(a2 + 24);
  outlined copy of Environment<CGFloat?>.Content(v8, v10, v9);
  v11 = a1[2];
  v12 = *(a1 + 25);
  a1[2] = v8;
  v13 = *(a1 + 24);
  *(a1 + 24) = v10;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v11, v13, v12);
  return a1;
}

uint64_t *assignWithTake for HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a2 + 25);
  v10 = a1[2];
  v11 = *(a1 + 25);
  a1[2] = a2[2];
  v12 = *(a1 + 24);
  *(a1 + 24) = v8;
  *(a1 + 25) = v9;
  outlined consume of Environment<CGFloat?>.Content(v10, v12, v11);
  return a1;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>, ViewInputFlagModifier<IsHandGestureShortcut>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>, ViewInputFlagModifier<IsHandGestureShortcut>>)
  {
    type metadata accessor for ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>();
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsHandGestureShortcut>, lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut, &unk_1EFF90618, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>, ViewInputFlagModifier<IsHandGestureShortcut>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>();
    lazy protocol witness table accessor for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView();
    lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView()
{
  result = lazy protocol witness table cache variable for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView;
  if (!lazy protocol witness table cache variable for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView;
  if (!lazy protocol witness table cache variable for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ExternalGestureActionModifier.ContentView, _EnvironmentKeyWritingModifier<Bool>>, ViewInputFlagModifier<IsHandGestureShortcut>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl>, StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl>, StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>>)
  {
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HandGestureShortcutInteractiveControl>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl, &type metadata for HandGestureShortcutInteractiveControl, MEMORY[0x1E697FDE8]);
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl>, StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>>);
    }
  }
}

void type metadata accessor for StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>)
  {
    type metadata accessor for AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>);
    }
  }
}

void type metadata accessor for AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>()
{
  if (!lazy cache variable for type metadata for AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>)
  {
    lazy protocol witness table accessor for type IsHandGestureShortcut and conformance IsHandGestureShortcut();
    lazy protocol witness table accessor for type IsArchivingHandGesture and conformance IsArchivingHandGesture();
    v0 = type metadata accessor for AndOperationViewInputPredicate();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type IsArchivingHandGesture and conformance IsArchivingHandGesture()
{
  result = lazy protocol witness table cache variable for type IsArchivingHandGesture and conformance IsArchivingHandGesture;
  if (!lazy protocol witness table cache variable for type IsArchivingHandGesture and conformance IsArchivingHandGesture)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IsArchivingHandGesture and conformance IsArchivingHandGesture);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<HandGestureShortcutInteractiveControl> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HandGestureShortcutInteractiveControl>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl and conformance HandGestureShortcutInteractiveControl, &type metadata for HandGestureShortcutInteractiveControl, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier>();
    lazy protocol witness table accessor for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>(&lazy protocol witness table cache variable for type AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture> and conformance AndOperationViewInputPredicate<A, B>, type metadata accessor for AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>);
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<AndOperationViewInputPredicate<IsHandGestureShortcut, IsArchivingHandGesture>, HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ExternalGestureActionModifier.ContentView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ExternalGestureActionModifier.ContentView and conformance ExternalGestureActionModifier.ContentView();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
  a1[2] = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
  result = lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
  a1[3] = result;
  return result;
}

void *specialized HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.init(from:)(void *a1)
{
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys, &unk_1EFF90918, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys();
  v9 = v8;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
    v9 = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape and conformance HandGestureShortcutInteractiveControl.BorderShape);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<ExternalGestureActionModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<ExternalGestureActionModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<ExternalGestureActionModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for _ViewModifier_Content<ExternalGestureActionModifier>, lazy protocol witness table accessor for type ExternalGestureActionModifier and conformance ExternalGestureActionModifier, &type metadata for ExternalGestureActionModifier, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<ExternalGestureActionModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void type metadata accessor for _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>();
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>, _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>)
  {
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter>();
    lazy protocol witness table accessor for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, HandGestureShortcutInteractiveControl.HandGestureShortcutPreferenceWriter> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(255, &lazy cache variable for type metadata for _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader and conformance HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, &type metadata for HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<HandGestureShortcutInteractiveControl.HandGestureShortcutEnvironmentReader> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t specialized HandGestureShortcutInteractiveControl.BorderShape.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C7573706163 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000018CD3DA50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018CD3DA70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C63726963 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized HandGestureShortcutInteractiveControl.BorderShape.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys, &unk_1EFF90B48, MEMORY[0x1E69E6F48]);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v36 - v4;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys, &unk_1EFF90B28, v2);
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v36 - v7;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys, &unk_1EFF90A98, v2);
  v41 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v36 - v9;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys, &unk_1EFF90A78, v2);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v36 - v11;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys, &unk_1EFF90A58, v2);
  v13 = v12;
  v37 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v36 - v14;
  type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<HandGestureShortcutInteractiveControl.BorderShape.CodingKeys>, lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys, &unk_1EFF90A38, v2);
  v17 = v16;
  v46 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys();
  v21 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v21)
  {
    v51 = v13;
    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = KeyedDecodingContainer.allKeys.getter();
    v27 = (2 * *(v26 + 16)) | 1;
    v53 = v26;
    v54 = v26 + 32;
    v55 = 0;
    v56 = v27;
    v28 = specialized Collection<>.popFirst()();
    if (v28 == 5 || v55 != v56 >> 1)
    {
      v31 = v19;
      v19 = type metadata accessor for DecodingError();
      swift_allocError();
      v33 = v32;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)();
      *v33 = &type metadata for HandGestureShortcutInteractiveControl.BorderShape;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v19 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v19);
      swift_willThrow();
      (*(v46 + 8))(v31, v17);
      swift_unknownObjectRelease();
    }

    else if (v28 <= 1u)
    {
      if (v28)
      {
        LOBYTE(v57) = 1;
        lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v39 + 8))(v22, v40);
        (*(v46 + 8))(v19, v17);
        swift_unknownObjectRelease();
        v19 = 1;
      }

      else
      {
        LOBYTE(v57) = 0;
        lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v37 + 8))(v15, v51);
        (*(v46 + 8))(v19, v17);
        swift_unknownObjectRelease();
        v19 = 0;
      }
    }

    else if (v28 == 2)
    {
      LOBYTE(v57) = 2;
      lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v46;
      (*(v38 + 8))(v23, v41);
      (*(v35 + 8))(v19, v17);
      swift_unknownObjectRelease();
      v19 = 2;
    }

    else
    {
      v29 = v46;
      if (v28 == 3)
      {
        LOBYTE(v57) = 3;
        lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v30 = v44;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v45 + 8))(v24, v30);
        (*(v29 + 8))(v19, v17);
        swift_unknownObjectRelease();
        v19 = v57;
      }

      else
      {
        LOBYTE(v57) = 4;
        lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v42 + 8))(v25, v43);
        (*(v29 + 8))(v19, v17);
        swift_unknownObjectRelease();
        v19 = 3;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v19;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CircleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.RoundedRectangleAutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CapsuleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.AutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys;
  if (!lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HandGestureShortcutInteractiveControl.BorderShape.CodingKeys and conformance HandGestureShortcutInteractiveControl.BorderShape.CodingKeys);
  }

  return result;
}

void type metadata accessor for (@thick Any.Type, DecodingError.Context)()
{
  if (!lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context))
  {
    type metadata accessor for @thick Any.Type();
    type metadata accessor for DecodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (@thick Any.Type, DecodingError.Context));
    }
  }
}

unint64_t type metadata accessor for @thick Any.Type()
{
  result = lazy cache variable for type metadata for @thick Any.Type;
  if (!lazy cache variable for type metadata for @thick Any.Type)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for @thick Any.Type);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<IsHandGestureShortcut>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

double one-time initialization function for defaultCornerRadius()
{
  if (one-time initialization token for componentCornerRadius != -1)
  {
    swift_once();
  }

  result = *&static ClarityUIMetrics.componentCornerRadius;
  defaultCornerRadius = static ClarityUIMetrics.componentCornerRadius;
  return result;
}

uint64_t PlatterButtonStyleView.ClippingShape.actualShape.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (one-time initialization token for defaultCornerRadius != -1)
      {
        v7 = a1;
        result = swift_once();
        a1 = v7;
      }

      v5 = *&defaultCornerRadius;
    }

    else
    {
      v3 = v1[2];
      v4 = *(v1 + 24);
      if (v3 < 30.0)
      {
        v4 = 1;
      }

      if (v4 == 1)
      {
        if (one-time initialization token for fallbackDisplayCornerRadius != -1)
        {
          v8 = a1;
          result = swift_once();
          a1 = v8;
        }

        v3 = *&static ClarityUIMetrics.fallbackDisplayCornerRadius;
      }

      if (one-time initialization token for componentHorizontalPadding != -1)
      {
        v6 = a1;
        result = swift_once();
        a1 = v6;
      }

      v5 = v3 - *&static ClarityUIMetrics.componentHorizontalPadding;
    }

    *(a1 + 16) = 1;
    *a1 = v5;
    *(a1 + 8) = v5;
  }

  else
  {
    *(a1 + 16) = 1;
    *a1 = v2;
    *(a1 + 8) = v2;
  }

  return result;
}

double PlatterButtonStyleView.ClippingShape.path(in:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  v9 = *v1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  PlatterButtonStyleView.ClippingShape.actualShape.getter(&v8);
  RoundedRectangle.path(in:)();
  result = *&v13;
  v7 = v14;
  *a1 = v13;
  *(a1 + 16) = v7;
  *(a1 + 32) = v15;
  return result;
}

double PlatterButtonStyleView.ClippingShape.inset(by:)@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *(v2 + 8);
  v6 = v2[2];
  v7 = *(v2 + 24);
  v12 = *v2;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  PlatterButtonStyleView.ClippingShape.actualShape.getter(&v10);
  v8 = v11;
  result = *&v10;
  *a1 = v10;
  *(a1 + 16) = v8;
  *(a1 + 24) = a2;
  return result;
}

double protocol witness for Shape.path(in:) in conformance PlatterButtonStyleView<A>.ClippingShape@<D0>(uint64_t a1@<X8>)
{
  PlatterButtonStyleView.ClippingShape.path(in:)(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for Animatable.animatableData.modify in conformance PlatterButtonStyleView<A>.ClippingShape;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance PlatterButtonStyleView<A>.ClippingShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance PlatterButtonStyleView<A>.ClippingShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for View.body.getter in conformance PlatterButtonStyleView<A>.ClippingShape(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t PlatterButtonStyleView.padding.getter(uint64_t a1)
{
  if ((*(v1 + *(a1 + 48)) & 1) == 0)
  {
    return static EdgeInsets.zero.getter();
  }

  if (one-time initialization token for buttonVerticalPadding != -1)
  {
    swift_once();
  }

  static Edge.Set.vertical.getter();
  EdgeInsets.init(_:edges:)();
  if (one-time initialization token for buttonHorizontalPadding != -1)
  {
    swift_once();
  }

  static Edge.Set.horizontal.getter();
  return EdgeInsets.init(_:edges:)();
}

uint64_t PlatterButtonStyleView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
  v3 = *(a1 + 24);
  v37 = *(a1 + 16);
  v36 = v3;
  type metadata accessor for _BackgroundStyleModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _OverlayModifier<Color>();
  type metadata accessor for ModifiedContent();
  v4 = MEMORY[0x1E69815C0];
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v5 = type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for PlatterButtonStyleView.ClippingShape();
  v53 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E697E858];
  v51 = swift_getWitnessTable();
  v52 = lazy protocol witness table accessor for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _OverlayModifier<Color> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<Color>);
  v35 = v7;
  v49 = swift_getWitnessTable();
  v50 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, v4);
  v34 = v5;
  v32 = swift_getWitnessTable();
  v33 = v6;
  v31 = swift_getWitnessTable();
  v45 = v5;
  v46 = v6;
  v47 = v32;
  v48 = v31;
  v8 = type metadata accessor for PlatterShadowedContent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for ModifiedContent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - v17;
  v19 = a1;
  v20 = *(a1 + 44);
  v21 = v38;
  v22 = v38 + v20;
  v23 = *v22;
  LOBYTE(v4) = *(v22 + 8);
  v24 = specialized Environment.wrappedValue.getter(*(v38 + *(v19 + 52)), *(v38 + *(v19 + 52) + 8) | (*(v38 + *(v19 + 52) + 9) << 8));
  v45 = v23;
  LOBYTE(v46) = v4;
  v47 = v24;
  LOBYTE(v48) = v25 & 1;
  LOBYTE(v23) = *(v21 + 1);
  v40 = v37;
  v41 = v36;
  v42 = v21;
  PlatterShadowedContent.init(shape:isPressed:content:)(&v45, v23, partial apply for closure #1 in PlatterButtonStyleView.body.getter, v33, v11);
  static UnitPoint.center.getter();
  v26 = swift_getWitnessTable();
  View.scaleEffect(_:anchor:)();
  (*(v9 + 8))(v11, v8);
  v43 = v26;
  v44 = MEMORY[0x1E697E070];
  swift_getWitnessTable();
  v27 = *(v13 + 16);
  v27(v18, v15, v12);
  v28 = *(v13 + 8);
  v28(v15, v12);
  v27(v39, v18, v12);
  return (v28)(v18, v12);
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>();
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>)
  {
    type metadata accessor for TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>();
    lazy protocol witness table accessor for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>, type metadata accessor for TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>);
    }
  }
}

void type metadata accessor for TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>()
{
  if (!lazy cache variable for type metadata for TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>)
  {
    type metadata accessor for (Spacer?, ButtonStyleConfiguration.Label, Spacer?)();
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>);
    }
  }
}

void type metadata accessor for (Spacer?, ButtonStyleConfiguration.Label, Spacer?)()
{
  if (!lazy cache variable for type metadata for (Spacer?, ButtonStyleConfiguration.Label, Spacer?))
  {
    type metadata accessor for Spacer?(255, &lazy cache variable for type metadata for Spacer?, MEMORY[0x1E6981840], MEMORY[0x1E69E6720]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (Spacer?, ButtonStyleConfiguration.Label, Spacer?));
    }
  }
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for Spacer?(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _OverlayModifier<Color>()
{
  if (!lazy cache variable for type metadata for _OverlayModifier<Color>)
  {
    v0 = type metadata accessor for _OverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayModifier<Color>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in PlatterButtonStyleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v62 = a3;
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
  v48 = v5;
  v49 = type metadata accessor for _BackgroundStyleModifier();
  v6 = type metadata accessor for ModifiedContent();
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43[-v7];
  type metadata accessor for _OverlayModifier<Color>();
  v52 = v6;
  v8 = type metadata accessor for ModifiedContent();
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v43[-v9];
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
  v59 = v8;
  v56 = type metadata accessor for ModifiedContent();
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v43[-v12];
  v47 = static VerticalAlignment.center.getter();
  LOBYTE(v77[0]) = 1;
  v50 = a2;
  v13 = type metadata accessor for PlatterButtonStyleView();
  v14 = (*(a1 + *(v13 + 48)) & 1) == 0;
  LOBYTE(v69) = (*(a1 + *(v13 + 48)) & 1) == 0;
  LOBYTE(v81) = v14;
  v46 = LOBYTE(v77[0]);
  if (one-time initialization token for clarityUIButtonTitle != -1)
  {
    swift_once();
  }

  v15 = static Font.clarityUIButtonTitle;
  KeyPath = swift_getKeyPath();

  v61 = a1;
  PlatterButtonStyleView.padding.getter(v13);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v44 = static Edge.Set.all.getter();
  v79 = 0;
  if (one-time initialization token for minimumComponentHeight != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v80[55] = v84;
  *&v80[71] = v85;
  *&v80[87] = v86;
  *&v80[103] = v87;
  *&v80[7] = v81;
  *&v80[23] = v82;
  *&v80[39] = v83;
  v69 = v47;
  LOBYTE(v70) = v46;
  *(&v70 + 1) = 0;
  LOBYTE(v71) = 0;
  BYTE1(v71) = v14;
  *(&v71 + 1) = 0;
  LOBYTE(v72) = 0;
  BYTE1(v72) = v14;
  *(&v72 + 1) = KeyPath;
  *&v73 = v15;
  BYTE8(v73) = v44;
  *&v74 = v17;
  *(&v74 + 1) = v19;
  *&v75 = v21;
  *(&v75 + 1) = v23;
  v76[0] = 0;
  *&v76[65] = *&v80[64];
  *&v76[81] = *&v80[80];
  *&v76[97] = *&v80[96];
  *&v76[112] = *(&v87 + 1);
  *&v76[1] = *v80;
  *&v76[17] = *&v80[16];
  *&v76[33] = *&v80[32];
  *&v76[49] = *&v80[48];
  static Edge.Set.all.getter();
  v24 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
  v47 = v13;
  v25 = v51;
  View.background<A>(_:ignoresSafeAreaEdges:)();
  v77[12] = *&v76[80];
  v77[13] = *&v76[96];
  v78 = *&v76[112];
  v77[8] = *&v76[16];
  v77[9] = *&v76[32];
  v77[10] = *&v76[48];
  v77[11] = *&v76[64];
  v77[4] = v73;
  v77[5] = v74;
  v77[6] = v75;
  v77[7] = *v76;
  v77[0] = v69;
  v77[1] = v70;
  v77[2] = v71;
  v77[3] = v72;
  v26 = outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(v77);
  v48 = v43;
  MEMORY[0x1EEE9AC00](v26);
  static Alignment.center.getter();
  WitnessTable = swift_getWitnessTable();
  v67 = v24;
  v68 = WitnessTable;
  v28 = v52;
  v29 = swift_getWitnessTable();
  v30 = v54;
  v31 = MEMORY[0x1E69815C0];
  View.overlay<A>(alignment:content:)();
  (*(v53 + 8))(v25, v28);
  v32 = lazy protocol witness table accessor for type TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _OverlayModifier<Color> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<Color>);
  v65 = v29;
  v66 = v32;
  v33 = v59;
  v34 = swift_getWitnessTable();
  v35 = v55;
  View.foregroundColor(_:)();
  (*(v58 + 8))(v30, v33);
  v36 = lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, v31);
  v63 = v34;
  v64 = v36;
  v37 = v56;
  swift_getWitnessTable();
  v38 = v60;
  v39 = *(v60 + 16);
  v40 = v57;
  v39(v57, v35, v37);
  v41 = *(v38 + 8);
  v41(v35, v37);
  v39(v62, v40, v37);
  return (v41)(v40, v37);
}

uint64_t closure #2 in closure #1 in PlatterButtonStyleView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 1) == 1)
  {
    if (one-time initialization token for clarityUIPressedButtonOverlay != -1)
    {
      swift_once();
    }
  }

  else
  {
    result = static Color.clear.getter();
  }

  *a2 = result;
  return result;
}

uint64_t PlatterShadowedContent.init(shape:isPressed:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for PlatterShadowedContent();
  v11 = v10[15];
  *(a5 + v11) = static Color.black.getter();
  *(a5 + v10[16]) = 1045220557;
  *(a5 + v10[17]) = 0x4000000000000000;
  *(a5 + v10[18]) = 0xBFF0000000000000;
  v12 = v10[19];
  *(a5 + v12) = static Color.white.getter();
  *(a5 + v10[20]) = 1045220557;
  *(a5 + v10[21]) = 0x3FF0000000000000;
  *(a5 + v10[22]) = 0x3FF0000000000000;
  v13 = v10[23];
  static Color.white.getter();
  v14 = Color.opacity(_:)();

  *(a5 + v13) = v14;
  v15 = v10[24];
  static Color.black.getter();
  v16 = Color.opacity(_:)();

  *(a5 + v15) = v16;
  *(a5 + v10[25]) = 0x3FF0000000000000;
  v17 = *(a4 - 8);
  v18 = (*(v17 + 16))(a5, a1, a4);
  *(a5 + v10[13]) = a2;
  a3(v18);
  return (*(v17 + 8))(a1, a4);
}

uint64_t PlatterButtonStyleView.init(configuration:background:foregroundColor:type:includesPadding:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = *a4;
  v14 = *(a4 + 8);
  v15 = type metadata accessor for PlatterButtonStyleView();
  v16 = &a7[v15[13]];
  *v16 = swift_getKeyPath();
  *(v16 + 4) = 0;
  *a7 = v11;
  a7[1] = v12;
  result = (*(*(a6 - 8) + 32))(&a7[v15[9]], a2, a6);
  *&a7[v15[10]] = a3;
  v18 = &a7[v15[11]];
  *v18 = v13;
  v18[8] = v14;
  a7[v15[12]] = a5;
  return result;
}

uint64_t PlatterShadowedContent.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  v3 = a1[5];
  v4 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v75 = &v51 - v6;
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v80 = AssociatedTypeWitness;
  v76 = v7;
  v8 = type metadata accessor for _ShadowView();
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v51 - v9;
  v10 = a1[2];
  v60 = *(v3 + 8);
  type metadata accessor for _ShadowView();
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  v62 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v64 = type metadata accessor for _OverlayModifier();
  v11 = type metadata accessor for ModifiedContent();
  v67 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v51 - v12;
  v98 = v4;
  v99 = MEMORY[0x1E697E3F0];
  v100 = MEMORY[0x1E6981E70];
  v101 = v3;
  v13 = v3;
  v55 = v3;
  v102 = MEMORY[0x1E697E3E0];
  v103 = MEMORY[0x1E6981E60];
  v57 = type metadata accessor for StrokeBorderShapeView();
  v58 = swift_getWitnessTable();
  v61 = type metadata accessor for _OverlayModifier();
  v14 = type metadata accessor for ModifiedContent();
  v65 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v51 - v15;
  v53 = v4;
  v68 = type metadata accessor for _ClipEffect();
  v17 = type metadata accessor for ModifiedContent();
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v51 - v18;
  v82 = v8;
  v19 = type metadata accessor for _BackgroundModifier();
  v73 = v17;
  v70 = v19;
  v66 = type metadata accessor for ModifiedContent();
  v74 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v51 - v22;
  v77 = a1;
  v23 = a1[4];
  *&v24 = v23;
  *(&v24 + 1) = v13;
  v51 = v24;
  *&v25 = v10;
  *(&v25 + 1) = v4;
  v52 = v25;
  v87 = v25;
  v88 = v24;
  v26 = v59;
  v89 = v59;
  static Alignment.center.getter();
  v27 = v56;
  View.overlay<A>(alignment:content:)();
  v85 = v51;
  v84 = v52;
  v86 = v26;
  static Alignment.center.getter();
  v28 = swift_getWitnessTable();
  v96 = v23;
  v97 = v28;
  v29 = swift_getWitnessTable();
  v30 = v54;
  View.overlay<A>(alignment:content:)();
  (*(v67 + 8))(v27, v11);
  v31 = v75;
  v32 = swift_getWitnessTable();
  v94 = v29;
  v95 = v32;
  v33 = swift_getWitnessTable();
  v34 = v53;
  View.clipShape<A>(_:style:)();
  (*(v65 + 8))(v16, v14);
  (*(v55 + 32))(v34, 1.0);
  if (one-time initialization token for clarityUIButtonShadowColor != -1)
  {
    swift_once();
  }

  v35 = 6.0;
  if (*(v26 + *(v77 + 13)))
  {
    v35 = 0.0;
  }

  v36 = 3.0;
  if (*(v26 + *(v77 + 13)))
  {
    v36 = 0.0;
  }

  v37 = v78;
  v38 = v80;
  Shape.fillShadow(color:radius:x:y:)(static Color.clarityUIButtonShadowColor, v80, v78, v35, 0.0, v36);
  (*(v79 + 8))(v31, v38);
  static Alignment.center.getter();
  v39 = swift_getWitnessTable();
  v92 = v33;
  v93 = v39;
  v40 = v73;
  v41 = swift_getWitnessTable();
  v42 = v69;
  v43 = v82;
  View.background<A>(_:alignment:)();
  (*(v81 + 8))(v37, v43);
  (*(v72 + 8))(v30, v40);
  v44 = swift_getWitnessTable();
  v90 = v41;
  v91 = v44;
  v45 = v66;
  swift_getWitnessTable();
  v46 = v74;
  v47 = *(v74 + 16);
  v48 = v71;
  v47(v71, v42, v45);
  v49 = *(v46 + 8);
  v49(v42, v45);
  v47(v83, v48, v45);
  return (v49)(v48, v45);
}

uint64_t closure #1 in PlatterShadowedContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  WitnessTable = a4;
  v43 = a6;
  v38 = *(a5 + 8);
  v10 = type metadata accessor for _ShadowView();
  v45 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v35 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v35 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v44 = &v35 - v22;
  *v62 = a2;
  *&v62[8] = a3;
  v23 = a3;
  v39 = a3;
  *&v62[16] = WitnessTable;
  *&v62[24] = a5;
  v24 = type metadata accessor for PlatterShadowedContent();
  Shape.fillShadow(color:radius:x:y:)(*(a1 + v24[15]), v23, v12, *(a1 + v24[17]), 0.0, *(a1 + v24[18]));
  v25 = *(a1 + v24[16]);
  v50 = 1065353216;
  v52 = 0;
  v51 = 0;
  v53 = 0x3F80000000000000;
  v55 = 0;
  v54 = 0;
  v56 = 0x3F80000000000000;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = -v25;
  v61 = v25;
  v36 = v10;
  View._colorMatrix(_:)();
  v26 = *(v45 + 8);
  v45 += 8;
  v37 = v26;
  v26(v12, v10);
  v49[2] = &protocol witness table for _ShadowView<A>;
  v49[3] = MEMORY[0x1E697F580];
  WitnessTable = swift_getWitnessTable();
  v27 = *(v14 + 16);
  v27(v44, v20, v13);
  v28 = *(v14 + 8);
  v28(v20, v13);
  Shape.fillShadow(color:radius:x:y:)(*(a1 + v24[19]), v39, v12, *(a1 + v24[21]), 0.0, *(a1 + v24[22]));
  v29 = *(a1 + v24[20]);
  *&v62[4] = 0uLL;
  *&v62[20] = 0x3F80000000000000uLL;
  v63 = 0;
  v64 = 0x3F80000000000000;
  v66 = 0;
  v65 = 0;
  *v62 = 1065353216;
  v67 = 0;
  v68 = -v29;
  v69 = v29;
  v30 = v41;
  v31 = v36;
  View._colorMatrix(_:)();
  v37(v12, v31);
  v27(v20, v30, v13);
  v28(v30, v13);
  v32 = v44;
  v27(v30, v44, v13);
  v49[0] = v30;
  v33 = v42;
  v27(v42, v20, v13);
  v49[1] = v33;
  v48[0] = v13;
  v48[1] = v13;
  v46 = WitnessTable;
  v47 = WitnessTable;
  static ViewBuilder.buildBlock<each A>(_:)(v49, 2uLL, v48);
  v28(v20, v13);
  v28(v32, v13);
  v28(v33, v13);
  return (v28)(v30, v13);
}

uint64_t closure #2 in PlatterShadowedContent.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v32 = a6;
  v33 = a3;
  v34 = MEMORY[0x1E697E3F0];
  v35 = MEMORY[0x1E6981E70];
  v36 = a5;
  v37 = MEMORY[0x1E697E3E0];
  v38 = MEMORY[0x1E6981E60];
  v11 = type metadata accessor for StrokeBorderShapeView();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - v16;
  type metadata accessor for Spacer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18CD63410;
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a5;
  v19 = type metadata accessor for PlatterShadowedContent();
  *(v18 + 32) = *(a1 + *(v19 + 92));
  *(v18 + 40) = *(a1 + *(v19 + 96));

  static UnitPoint.top.getter();
  v21 = v20;
  v23 = v22;
  static UnitPoint.bottom.getter();
  v25 = v24;
  v27 = v26;
  v33 = MEMORY[0x18D00B0A0](v18);
  v34 = v21;
  v35 = v23;
  v36 = v25;
  v37 = v27;
  InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)(&v33, 1, a3, MEMORY[0x1E697E3F0], a5, MEMORY[0x1E697E3E0], v14);

  swift_getWitnessTable();
  v28 = *(v12 + 16);
  v28(v17, v14, v11);
  v29 = *(v12 + 8);
  v29(v14, v11);
  v28(v32, v17, v11);
  return (v29)(v17, v11);
}

uint64_t InsettableShape.strokeBorder<A>(_:lineWidth:antialiased:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  InsettableShape.strokeBorder<A>(_:style:antialiased:)(a1, v15, a2, a3, a4, a5, a6, a7);
  return outlined destroy of StrokeStyle(v15);
}

uint64_t key path getter for EnvironmentValues.displayCornerRadius : EnvironmentValues@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.displayCornerRadius.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t type metadata completion function for PlatterButtonStyleView()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for PlatterButtonStyleView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64) + 7;
  if (v5 > 7 || (*(v4 + 80) & 0x100000) != 0 || ((((((v6 + ((v5 + 2) & ~v5)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10 > 0x18)
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  else
  {
    *a1 = *a2;
    v10 = (a1 + v5 + 2) & ~v5;
    v11 = (a2 + v5 + 2) & ~v5;
    (*(v4 + 16))(v10, v11);
    v12 = ((v6 + v11) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((v6 + v10) & 0xFFFFFFFFFFFFFFF8);
    *v13 = *v12;
    v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
    v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *v15;
    *(v14 + 8) = *(v15 + 8);
    *v14 = v16;
    *(v14 + 9) = *(v15 + 9);
    v17 = (v14 + 17) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v15 + 17) & 0xFFFFFFFFFFFFFFF8;
    v19 = *v18;
    LOBYTE(v11) = *(v18 + 9);
    v20 = *(v18 + 8);

    outlined copy of Environment<CGFloat?>.Content(v19, v20, v11);
    *v17 = v19;
    *(v17 + 8) = v20;
    *(v17 + 9) = v11;
  }

  return v3;
}

uint64_t destroy for PlatterButtonStyleView(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = v2 + 8;
  v4 = (a1 + *(v2 + 80) + 2) & ~*(v2 + 80);
  (*(v2 + 8))(v4);
  v5 = ((*(v3 + 56) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15;

  v6 = ((v5 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v7 = *v6;
  v8 = *(v6 + 9);
  v9 = *(v6 + 8);

  return outlined consume of Environment<CGFloat?>.Content(v7, v9, v8);
}

_WORD *initializeWithCopy for PlatterButtonStyleView(_WORD *a1, _WORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 16;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 2) & ~v6;
  v8 = (a2 + v6 + 2) & ~v6;
  (*(v4 + 16))(v7, v8);
  v9 = *(v5 + 48) + 7;
  v10 = v9 + v7;
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  v10 &= 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  *(v12 + 9) = *(v13 + 9);
  v15 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v8) = *(v16 + 9);
  v18 = *(v16 + 8);

  outlined copy of Environment<CGFloat?>.Content(v17, v18, v8);
  *v15 = v17;
  *(v15 + 8) = v18;
  *(v15 + 9) = v8;
  return a1;
}

_BYTE *assignWithCopy for PlatterButtonStyleView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 24;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 2] & ~v6;
  v8 = &a2[v6 + 2] & ~v6;
  (*(v4 + 24))(v7, v8);
  v9 = *(v5 + 40) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = v9 + v8;
  v12 = (v11 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v10 = *(v11 & 0xFFFFFFFFFFFFFFF8);

  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v12 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v13 = v14;
  *(v13 + 9) = *((v12 & 0xFFFFFFFFFFFFFFF8) + 9);
  v15 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v12 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  LOBYTE(v12) = *(v16 + 9);
  LOBYTE(v10) = *(v16 + 8);
  outlined copy of Environment<CGFloat?>.Content(*v16, v10, v12);
  v18 = *v15;
  v19 = *(v15 + 9);
  *v15 = v17;
  v20 = *(v15 + 8);
  *(v15 + 8) = v10;
  *(v15 + 9) = v12;
  outlined consume of Environment<CGFloat?>.Content(v18, v20, v19);
  return a1;
}

_WORD *initializeWithTake for PlatterButtonStyleView(_WORD *a1, _WORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 32;
  v6 = *(v4 + 80);
  v7 = (a1 + v6 + 2) & ~v6;
  v8 = (a2 + v6 + 2) & ~v6;
  (*(v4 + 32))(v7, v8);
  v9 = *(v5 + 32) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v13 + 8);
  *v12 = *v13;
  *(v12 + 8) = v14;
  *(v12 + 9) = *(v13 + 9);
  v15 = (v12 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v16 + 8);
  *v15 = *v16;
  *(v15 + 8) = v17;
  return a1;
}

_BYTE *assignWithTake for PlatterButtonStyleView(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  v4 = *(*(a3 + 16) - 8);
  v5 = v4 + 40;
  v6 = *(v4 + 80);
  v7 = &a1[v6 + 2] & ~v6;
  v8 = &a2[v6 + 2] & ~v6;
  (*(v4 + 40))(v7, v8);
  v9 = *(v5 + 24) + 7;
  v10 = ((v9 + v7) & 0xFFFFFFFFFFFFFFF8);
  v11 = (v9 + v8) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v11 += 15;
  *v10 = v12;

  v13 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v11 & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 8);
  *v13 = v14;
  *(v13 + 9) = *((v11 & 0xFFFFFFFFFFFFFFF8) + 9);
  v15 = (v13 + 17) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v11 & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v17 = *v16;
  v18 = *(v16 + 8);
  LOBYTE(v16) = *(v16 + 9);
  v19 = *v15;
  v20 = *(v15 + 9);
  *v15 = v17;
  v21 = *(v15 + 8);
  *(v15 + 8) = v18;
  *(v15 + 9) = v16;
  outlined consume of Environment<CGFloat?>.Content(v19, v21, v20);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatterButtonStyleView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((((((v8 + ((v6 + 2) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10;
  v10 = (a2 - v7 + 0xFFFF) >> 16;
  if (v9 <= 3)
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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v9);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v9), !*(a1 + v9)))
  {
LABEL_28:
    v18 = (a1 + v6 + 2) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v16 = (v14 - 1) << (8 * v9);
  if (v9 <= 3)
  {
    v17 = *a1;
  }

  else
  {
    v16 = 0;
    v17 = *a1;
  }

  return v7 + (v17 | v16) + 1;
}

void storeEnumTagSinglePayload for PlatterButtonStyleView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v11 = ((((((v10 + ((v9 + 2) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v8 >= a3)
  {
    v15 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = (a3 - v8 + 0xFFFF) >> 16;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v15 > 1)
      {
        if (v15 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v15)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      v18 = &a1[v9 + 2] & ~v9;
      if (v7 < 0x7FFFFFFF)
      {
        v20 = ((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v6 + 56);

        v19(v18);
      }

      return;
    }
  }

  v16 = ~v8 + a2;
  bzero(a1, ((((((v10 + ((v9 + 2) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 10);
  if (v11 <= 3)
  {
    v17 = HIWORD(v16) + 1;
  }

  else
  {
    v17 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v16;
    if (v15 > 1)
    {
LABEL_27:
      if (v15 == 2)
      {
        *&a1[v11] = v17;
      }

      else
      {
        *&a1[v11] = v17;
      }

      return;
    }
  }

  else
  {
    *a1 = v16;
    if (v15 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v15)
  {
    a1[v11] = v17;
  }
}

uint64_t type metadata completion function for PlatterShadowedContent()
{
  result = swift_checkMetadataState();
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

void *initializeBufferWithCopyOfBuffer for PlatterShadowedContent(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = *(v7 + 64);
  v10 = v8 | *(v4 + 80) & 0xF8;
  v11 = v10 <= 7 && ((*(v4 + 80) | *(v7 + 80)) & 0x100000) == 0;
  if (v11 && (v12 = v9 + 7, ((((((((((((((((((((((v9 + 7 + ((v8 + v5 + 1) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x18))
  {
    (*(v4 + 16))(a1);
    *(v3 + v5) = *(a2 + v5);
    v14 = a2 + v5 + v8;
    v15 = (v3 + v5 + v8 + 1) & ~v8;
    v16 = (v14 + 1) & ~v8;
    (*(v7 + 16))(v15, v16, v6);
    v17 = ((v12 + v15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((v12 + v16) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
    v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v27 = *v28;
    v29 = ((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
    v30 = ((v28 + 11) & 0xFFFFFFFFFFFFFFF8);
    *v29 = *v30;
    v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
    v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v31 = *v32;
    v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
    v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v33 = *v34;
    v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
    v36 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v35 = *v36;
    *((v35 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v36 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v37 = *a2;
    *a1 = *a2;
    v3 = (v37 + (((v10 | 7) + 16) & ~(v10 | 7)));
  }

  return v3;
}

uint64_t destroy for PlatterShadowedContent(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  (*(*(*(a2 + 16) - 8) + 8))((a1 + *(v4 + 56) + *(*(*(a2 + 16) - 8) + 80) + 1) & ~*(*(*(a2 + 16) - 8) + 80));
}

uint64_t initializeWithCopy for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 16;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 16))(v13, v14);
  v15 = *(v11 + 48) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  *((v34 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v35 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t assignWithCopy for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 24))(v13, v14);
  v15 = *(v11 + 40) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = v15 + v14;
  v18 = (v17 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v16 = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v16 += 11;

  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v18 & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = (((v18 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v22 += 15;
  *v21 = v23;
  v21 += 15;
  v24 = (v22 & 0xFFFFFFFFFFFFFFF8) + 11;
  *(v21 & 0xFFFFFFFFFFFFFFF8) = *(v22 & 0xFFFFFFFFFFFFFFF8);
  v25 = (v21 & 0xFFFFFFFFFFFFFFF8) + 11;

  *(v25 & 0xFFFFFFFFFFFFFFF8) = *(v24 & 0xFFFFFFFFFFFFFFF8);
  v26 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = (v26 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v29 += 15;
  *v28 = v30;
  v28 += 15;
  v31 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *(v28 & 0xFFFFFFFFFFFFFFF8) = *(v29 & 0xFFFFFFFFFFFFFFF8);
  v32 = (v28 & 0xFFFFFFFFFFFFFFF8) + 15;

  v32 &= 0xFFFFFFFFFFFFFFF8;
  v31 &= 0xFFFFFFFFFFFFFFF8;
  *v32 = *v31;

  *((v32 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t initializeWithTake for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 32))(v13, v14);
  v15 = *(v11 + 32) + 7;
  v16 = ((v15 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + v14) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v18 = ((v16 + 11) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v17 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  v20 = ((v18 + 11) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((v19 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v20 = *v21;
  v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 11) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v27 + 11) & 0xFFFFFFFFFFFFFFF8);
  *v28 = *v29;
  v30 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v31 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v30 = *v31;
  v32 = ((v30 + 15) & 0xFFFFFFFFFFFFFFF8);
  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v32 = *v33;
  v34 = ((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  v35 = ((v33 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v34 = *v35;
  *((v34 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t assignWithTake for PlatterShadowedContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24);
  v8 = (v7 + a1);
  v9 = (v7 + a2);
  *v8 = *v9;
  v10 = *(*(a3 + 16) - 8);
  v11 = v10 + 40;
  v12 = *(v10 + 80);
  v13 = &v8[v12 + 1] & ~v12;
  v14 = &v9[v12 + 1] & ~v12;
  (*(v10 + 40))(v13, v14);
  v15 = *(v11 + 24) + 7;
  v16 = (v15 + v13) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v15 + v14) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  v17 += 11;
  *v16 = v18;
  v16 += 11;

  *(v16 & 0xFFFFFFFFFFFFFFF8) = *(v17 & 0xFFFFFFFFFFFFFFF8);
  v19 = (((v16 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v20 = (((v17 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
  v22 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v22 += 15;
  *v21 = v23;
  v24 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (v22 & 0xFFFFFFFFFFFFFFF8) + 11;
  *v24 = *(v22 & 0xFFFFFFFFFFFFFFF8);
  v24 += 11;

  *(v24 & 0xFFFFFFFFFFFFFFF8) = *(v25 & 0xFFFFFFFFFFFFFFF8);
  v26 = (((v24 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  v27 = (((v25 & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = ((v26 + 15) & 0xFFFFFFFFFFFFFFF8);
  v29 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = *v29;
  v29 += 15;
  *v28 = v30;
  v31 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 = (v29 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v31 = *(v29 & 0xFFFFFFFFFFFFFFF8);

  v33 = ((v31 + 15) & 0xFFFFFFFFFFFFFFF8);
  v32 &= 0xFFFFFFFFFFFFFFF8;
  *v33 = *v32;

  *((v33 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v32 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatterShadowedContent(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v4 + 64);
  v9 = *(v6 + 80);
  if (v5 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v4 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v6 + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v12 = ((((((((((((((((((((((v11 + ((v8 + v9 + 1) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v13 = a2 - v10;
  v14 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = v13 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v18 = *(a1 + v12);
      if (!v18)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v12)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1, v5, *(a3 + 24));
    }

    v22 = (a1 + v8 + v9 + 1) & ~v9;
    if (v7 == v10)
    {
      return (*(v6 + 48))(v22);
    }

    v23 = *((v11 + v22) & 0xFFFFFFFFFFFFFFF8);
    if (v23 >= 0xFFFFFFFF)
    {
      LODWORD(v23) = -1;
    }

    return (v23 + 1);
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    v21 = *a1;
  }

  else
  {
    v21 = 0;
  }

  return v10 + (v21 | v20) + 1;
}

_BYTE *storeEnumTagSinglePayload for PlatterShadowedContent(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  if (v6 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v5 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v7 + 64) + 7;
  v13 = ((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 >= a3)
  {
    v17 = 0;
    v18 = a2 - v11;
    if (a2 <= v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = a3 - v11;
    if (((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v11;
    if (a2 <= v11)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *&result[v13] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_35;
        }

        *&result[v13] = 0;
      }

      else if (v17)
      {
        result[v13] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return result;
      }

LABEL_35:
      if (v6 == v11)
      {
        v22 = *(v5 + 56);

        return v22();
      }

      else
      {
        result = (&result[v9 + 1 + v10] & ~v10);
        if (v8 == v11)
        {
          v23 = *(v7 + 56);

          return v23(result);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v24 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v24 = a2 - 1;
          }

          *(&result[v12] & 0xFFFFFFFFFFFFFFF8) = v24;
        }
      }

      return result;
    }
  }

  if (((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v20 = ~v11 + a2;
    v21 = result;
    bzero(result, ((((((((((((((((((((((v12 + ((v9 + v10 + 1) & ~v10)) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *&result[v13] = v19;
    }

    else
    {
      *&result[v13] = v19;
    }
  }

  else if (v17)
  {
    result[v13] = v19;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlatterButtonStyleView.ClippingShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlatterButtonStyleView.ClippingShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAnimatableData and conformance EmptyAnimatableData()
{
  result = lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData;
  if (!lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAnimatableData and conformance EmptyAnimatableData);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for PlatterButtonStyleView<A>.ClippingShape(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t InsettableShape.strokeBorder<A>(_:style:antialiased:)@<X0>(uint64_t a1@<X0>, double *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return StrokeBorderShapeView.init(shape:style:strokeStyle:isAntialiased:background:)(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x1E6981E70], a8, a6, a7, MEMORY[0x1E6981E60]);
}

uint64_t StrokeBorderShapeView.init(shape:style:strokeStyle:isAntialiased:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = a5;
  LODWORD(v50) = a4;
  v45 = a3;
  v48 = a2;
  v56 = a1;
  v57 = a9;
  v41 = a11;
  v46 = a8;
  v49 = *(a8 - 8);
  v53 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for _BackgroundModifier();
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v37 - v15;
  v37 = a7;
  v44 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v40 = *(swift_getAssociatedConformanceWitness() + 8);
  v19 = type metadata accessor for _StrokedShape();
  MEMORY[0x1EEE9AC00](v19);
  WitnessTable = swift_getWitnessTable();
  v58 = v19;
  v59 = a7;
  v60 = WitnessTable;
  v61 = a11;
  v43 = type metadata accessor for _ShapeView();
  v21.n128_f64[0] = MEMORY[0x1EEE9AC00](v43);
  v39 = &v37 - v22;
  v23 = *(a6 - 8);
  v24 = *(v23 + 16);
  v38 = a6;
  v24(v57, v56, a6, v21);
  (*(v55 + 32))(a6, *v45 * 0.5);
  _StrokedShape.init(shape:style:)();
  v25 = v44;
  v26 = v48;
  v27 = v37;
  (*(v44 + 16))(v42, v48, v37);
  v28 = v27;
  v29 = v41;
  _ShapeView.init(shape:style:fillStyle:)();
  v30 = v49;
  v31 = v46;
  v32 = v52;
  (*(v49 + 16))(v47, v52, v46);
  static Alignment.center.getter();
  v50 = v33;
  (*(v30 + 8))(v32, v31);
  (*(v25 + 8))(v26, v27);
  v34 = v38;
  (*(v23 + 8))(v56, v38);
  v35 = v53;
  _BackgroundModifier.init(background:alignment:)();
  v58 = v34;
  v59 = v28;
  v60 = v31;
  v61 = v55;
  v62 = v29;
  v63 = v35;
  type metadata accessor for StrokeBorderShapeView();
  return ModifiedContent.init(content:modifier:)();
}

uint64_t outlined destroy of ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _FlexFrameLayout>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Spacer?, ButtonStyleConfiguration.Label, Spacer?)>>, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset()
{
  result = lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset;
  if (!lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset);
  }

  return result;
}

uint64_t UISceneSessionActivationRequest.init<A>(hostingDelegateClass:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  BridgedSceneCoordinator.register<A>(_:)(a1, a2, a3);
  v8 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v8);
  type metadata accessor for SceneList.Item?(0, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720]);
  static Update.ensure<A>(_:)();
  if (v13[68])
  {
    memcpy(v14, v13, 0x231uLL);
    outlined init with copy of SceneList.Item(v14, v13);
    UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(v13, 0, 0xF000000000000000, a4);
    outlined destroy of SceneList.Item(v14);
    v9 = 0;
  }

  else
  {
    outlined destroy of SceneList.Item?(v13, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720], type metadata accessor for SceneList.Item?);
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v9 = 1;
  }

  v11 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v11 - 8) + 56))(a4, v9, 1, v11);
}

void closure #1 in UISceneSessionActivationRequest.init<A>(hostingDelegateClass:)(void *a1@<X8>)
{
  if (static AppGraph.shared)
  {
    static UIHostingSceneDelegate.namespace.getter();
    v3 = v2;
    v5 = v4;
    v7 = v6;

    AppGraph.sceneList(namespace:)(v3, v5, v7, &v9);
    outlined consume of SceneList.Namespace(v3, v5, v7);

    v8 = v9;

    if (*(v8 + 16))
    {
      outlined init with copy of SceneList.Item(v8 + 32, a1);

      return;
    }
  }

  bzero(a1, 0x231uLL);
}

id UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, NSObject *a4@<X8>)
{
  v51 = a2;
  _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  result = SceneList.Item.sceneSessionRole.getter();
  if (result)
  {
    v47 = a4;
    v48 = result;
    v49 = a3;
    v50 = v9;
    if (*(a1 + 560) == 1)
    {
      v11 = result;
      v46 = objc_opt_self();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = static UIHostingSceneDelegate.bridgingID.getter();
      v14 = MEMORY[0x18D00C850](v13);

      type metadata accessor for AppSceneDelegate();
      v15 = [v46 _internalConfigurationWithRole_sceneClass_delegateClass_bridgingID_sceneDelegateWrapper_];

      v16 = v15;
    }

    else
    {
      v17 = result;
      v18 = static UIHostingSceneDelegate.bridgingID.getter();
      v20 = v19;
      type metadata accessor for AppSceneDelegate();
      v21 = MEMORY[0x18D00C850](v18, v20);

      v22 = swift_getObjCClassFromMetadata();
      v23 = [objc_opt_self() _configurationWithRole_bridgingID_sceneDelegateWrapper_];

      v24 = swift_getObjCClassFromMetadata();
      v16 = v23;
      [v16 setDelegateClass_];
    }

    UISceneSessionActivationRequest.init(configuration:userActivity:options:)();
    static UIHostingSceneDelegate.namespace.getter();
    v25 = *(a1 + 136);
    v26 = *(a1 + 144);
    v27 = *(a1 + 152);
    *&v56 = v28;
    *(&v56 + 1) = v29;
    LOBYTE(v57) = v30;
    *(&v57 + 1) = v25;
    *&v58 = v26;
    BYTE8(v58) = v27;
    v31 = v51;
    v32 = v49;
    *&v59 = v51;
    *(&v59 + 1) = v49;
    v62 = v58;
    v63 = v59;
    v60 = v56;
    v61 = v57;
    v53[0] = v56;
    v53[1] = v57;
    v53[2] = v58;
    v53[3] = v59;
    outlined copy of SceneID(v25, v26, v27);
    outlined copy of Data?(v31, v32);
    outlined init with copy of OpenScenePayload(&v56, v55);
    lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition();
    UISceneSessionActivationRequest.subscript.setter();
    v33 = v50;
    static Log.openScene.getter();
    v34 = type metadata accessor for Logger();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v33, 1, v34) == 1)
    {
      outlined destroy of SceneList.Item(a1);

      outlined destroy of OpenScenePayload(&v56);
      outlined consume of Data?(v31, v32);
      return outlined destroy of SceneList.Item?(v33, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0);
    }

    else
    {
      outlined init with copy of SceneList.Item(a1, v53);
      outlined init with copy of OpenScenePayload(&v56, v55);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      outlined destroy of OpenScenePayload(&v56);
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v52 = v39;
        *v38 = 136315394;
        outlined init with copy of OpenScenePayload(&v56, v55);
        v40 = OpenScenePayload.description.getter();
        v47 = v36;
        v42 = v41;
        outlined destroy of OpenScenePayload(&v56);
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v52);

        *(v38 + 4) = v43;
        *(v38 + 12) = 1024;
        LODWORD(v43) = v54;
        outlined destroy of SceneList.Item(v53);
        *(v38 + 14) = v43;
        v44 = v47;
        _os_log_impl(&dword_18BD4A000, v47, v37, "Creating activation request for bridged scene with %s, isInternal: %{BOOL}d", v38, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v39);
        v33 = v50;
        MEMORY[0x18D0110E0](v39, -1, -1);
        MEMORY[0x18D0110E0](v38, -1, -1);

        outlined destroy of OpenScenePayload(&v56);
        outlined consume of Data?(v51, v49);
      }

      else
      {
        outlined destroy of SceneList.Item(v53);

        outlined destroy of OpenScenePayload(&v56);
        outlined consume of Data?(v31, v32);
      }

      outlined destroy of SceneList.Item(a1);
      return (*(v35 + 8))(v33, v34);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t UISceneSessionActivationRequest.init<A>(hostingDelegateClass:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    swift_beginAccess();
    BridgedSceneCoordinator.register<A>(_:)(a1, a4, a5);
    swift_endAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    static UIHostingSceneDelegate.namespace.getter();
    v15 = static AppGraph.shared;
    if (!static AppGraph.shared)
    {
      outlined consume of SceneList.Namespace(v12, v13, v14);
      goto LABEL_22;
    }

    v33[2] = a1;
    v33[3] = a4;
    v33[4] = a5;
    v34 = a6;
    v35 = v33;
    MEMORY[0x1EEE9AC00](v12);
    v17 = v16;
    a1 = v18;
    v20 = v19;

    static Update.ensure<A>(_:)();
    outlined consume of SceneList.Namespace(v17, v20, a1);
    a5 = v39[0];
    a6 = *(v39[0] + 16);
    if (!a6)
    {
      break;
    }

    v33[0] = v39[1];
    v33[1] = v39[2];
    v35 = v15;
    v21 = 0;
    a4 = v39[0] + 32;
    while (v21 < *(a5 + 16))
    {
      outlined init with copy of SceneList.Item(a4, v39);
      a1 = v39[18];
      if (v39[19])
      {
        v37 = _typeName(_:qualified:)();
        v38 = v22;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        v36 = a1;
        v23 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v23);

        if (v37 == a2 && v38 == a3)
        {

LABEL_26:

          memcpy(v40, v39, 0x231uLL);
          outlined init with copy of SceneList.Item(v40, v39);
          a6 = v34;
          UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(v39, 0, 0xF000000000000000, v34);
          outlined destroy of SceneList.Item(v40);
          v30 = 0;
          goto LABEL_27;
        }

        a1 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (a1)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v24 = v39[17] == a2 && v39[18] == a3;
        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
LABEL_19:

          goto LABEL_26;
        }
      }

      v21 = (v21 + 1);
      outlined destroy of SceneList.Item(v39);
      a4 += 568;
      if (a6 == v21)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_29:
    swift_once();
  }

LABEL_21:

  a6 = v34;
LABEL_22:
  v25 = static os_log_type_t.fault.getter();
  v26 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v26, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136315138;
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v40);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_18BD4A000, v26, v25, "No Scene with id %s is defined.", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x18D0110E0](v28, -1, -1);
    MEMORY[0x18D0110E0](v27, -1, -1);
  }

  else
  {
  }

  v30 = 1;
LABEL_27:
  v31 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v31 - 8) + 56))(a6, v30, 1, v31);
}

uint64_t UISceneSessionActivationRequest.init<A, B>(hostingDelegateClass:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, NSObject *a9@<X8>)
{
  if (one-time initialization token for shared != -1)
  {
    v34 = a2;
    swift_once();
    a2 = v34;
  }

  v35 = a2;
  swift_beginAccess();
  BridgedSceneCoordinator.register<A>(_:)(a1, a3, a5);
  swift_endAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  static UIHostingSceneDelegate.namespace.getter();
  v18 = v17;
  v20 = v19;
  v22 = v21;

  SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:presenting:where:)(v18, protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key, 0, __src, a4, a6, a7, a8);
  outlined consume of SceneList.Namespace(v18, v20, v22);

  if (__src[68])
  {
    memcpy(__dst, __src, 0x231uLL);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v28 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v30 = v29;
    outlined init with copy of SceneList.Item(__dst, __src);
    UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(__src, v28, v30, a9);

    (*(*(a4 - 8) + 8))(v35, a4);
    outlined destroy of SceneList.Item(__dst);
    v31 = 0;
  }

  else
  {
    outlined destroy of SceneList.Item?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720], type metadata accessor for SceneList.Item?);
    static os_log_type_t.fault.getter();
    v23 = static Log.runtimeIssuesLog.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_18CD63400;
    v31 = 1;
    v25 = _typeName(_:qualified:)();
    v27 = v26;
    *(v24 + 56) = MEMORY[0x1E69E6158];
    *(v24 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    (*(*(a4 - 8) + 8))(v35, a4);
  }

  v32 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v32 - 8) + 56))(a9, v31, 1, v32);
}

uint64_t UISceneSessionActivationRequest.init<A, B>(hostingDelegateClass:id:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, NSObject *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14 = a5;
  if (one-time initialization token for shared != -1)
  {
    v40 = a4;
    swift_once();
    a4 = v40;
    v14 = a5;
  }

  v43 = a4;
  v44 = a9;
  swift_beginAccess();
  BridgedSceneCoordinator.register<A>(_:)(a1, v14, a7);
  swift_endAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v18 = static SceneNavigationStrategy_Phone.shared;
  v19 = qword_1EAB09798;
  static UIHostingSceneDelegate.namespace.getter();
  v21 = v20;
  v23 = v22;
  v25 = v24;

  LOBYTE(v41) = v18;
  SceneNavigationStrategy_Phone.sceneListItem<A>(namespace:id:presenting:where:)(v21, a2, a3, protocol witness for static PreferenceKey._isReadableByHost.getter in conformance AccessibilityLargeContentViewTree.Key, 0, __src, v41, v19, a6, a8, a10, a11);
  outlined consume of SceneList.Namespace(v21, v23, v25);

  if (__src[68])
  {

    memcpy(__dst, __src, 0x231uLL);
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v32 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v34 = v33;
    outlined init with copy of SceneList.Item(__dst, __src);
    v35 = v44;
    UISceneSessionActivationRequest.init<A>(hostingDelegateClass:item:data:)(__src, v32, v34, v44);

    (*(*(a6 - 8) + 8))(v43, a6);
    outlined destroy of SceneList.Item(__dst);
    v36 = 0;
  }

  else
  {
    outlined destroy of SceneList.Item?(__src, &lazy cache variable for type metadata for SceneList.Item?, &type metadata for SceneList.Item, MEMORY[0x1E69E6720], type metadata accessor for SceneList.Item?);
    static os_log_type_t.fault.getter();
    v26 = static Log.runtimeIssuesLog.getter();
    _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_18CD63410;
    v28 = MEMORY[0x1E69E6158];
    *(v27 + 56) = MEMORY[0x1E69E6158];
    v29 = lazy protocol witness table accessor for type String and conformance String();
    *(v27 + 64) = v29;
    *(v27 + 32) = a2;
    *(v27 + 40) = a3;
    v36 = 1;
    v30 = _typeName(_:qualified:)();
    *(v27 + 96) = v28;
    *(v27 + 104) = v29;
    *(v27 + 72) = v30;
    *(v27 + 80) = v31;
    os_log(_:dso:log:_:_:)();

    (*(*(a6 - 8) + 8))(v43, a6);
    v35 = v44;
  }

  v37 = type metadata accessor for UISceneSessionActivationRequest();
  return (*(*(v37 - 8) + 56))(v35, v36, 1, v37);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t type metadata accessor for CVarArg()
{
  result = lazy cache variable for type metadata for CVarArg;
  if (!lazy cache variable for type metadata for CVarArg)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for CVarArg);
  }

  return result;
}

void _ss23_ContiguousArrayStorageCys7CVarArg_pGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition()
{
  result = lazy protocol witness table cache variable for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition;
  if (!lazy protocol witness table cache variable for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition);
  }

  return result;
}

uint64_t outlined destroy of SceneList.Item?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t type metadata completion function for Settings()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for Settings(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    outlined copy of ResolvedTableRowIDs.Storage(*v11, v13);
    *v10 = v12;
    *(v10 + 8) = v13;
  }

  return v3;
}

uint64_t destroy for Settings(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *v4;
  v6 = *(v4 + 8);

  return outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v5, v6);
}

uint64_t initializeWithCopy for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v5) = *(v8 + 8);
  outlined copy of ResolvedTableRowIDs.Storage(*v8, v5);
  *v7 = v9;
  *(v7 + 8) = v5;
  return a1;
}

uint64_t assignWithCopy for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v5) = *(v8 + 8);
  outlined copy of ResolvedTableRowIDs.Storage(*v8, v5);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v5;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v10, v11);
  return a1;
}

uint64_t initializeWithTake for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  *v7 = *v8;
  *(v7 + 8) = v9;
  return a1;
}

uint64_t assignWithTake for Settings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v8;
  outlined consume of Environment<[SceneID : KeyboardShortcut]>.Content(v10, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for Settings(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      if (*&a1[v8])
      {
        goto LABEL_24;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_24;
      }
    }

LABEL_28:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))();
    }

    v17 = *((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v12)
  {
    goto LABEL_28;
  }

  v13 = a1[v8];
  if (!a1[v8])
  {
    goto LABEL_28;
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

void storeEnumTagSinglePayload for Settings(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0xFE)
        {
          *(v18 + 8) = 0;
          *v18 = a2 - 255;
        }

        else
        {
          *(v18 + 8) = -a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void SceneList.itemForConnectionOptions(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  lazy protocol witness table accessor for type OpenSceneConnectionOptionDefinition and conformance OpenSceneConnectionOptionDefinition();
  UISceneConnectionOptions.subscript.getter();
  if (v18 != 255)
  {
    v11 = v5;
    v12 = v6;
    v13 = v7;
    SceneList.item(id:where:)(v16, v17, v18 & 1, 0, __src);
    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for OpenScenePayload?);
    if (__src[68])
    {
      memcpy(a2, __src, 0x231uLL);
      return;
    }

    outlined destroy of AnyAccessibilityValue?(__src, &lazy cache variable for type metadata for SceneList.Item?);
  }

  v8 = [a1 userActivities];
  type metadata accessor for NSUserActivity();
  lazy protocol witness table accessor for type NSUserActivity and conformance NSObject();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = specialized Collection.first.getter(v9);

  if (v10)
  {
    __src[0] = v5;
    __src[1] = v6;
    __src[2] = v7;
    SceneList.itemForUserActivity(_:)(v10, a2);
  }

  else
  {
    bzero(a2, 0x231uLL);
  }
}

void SceneList.itemForUserActivity(_:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v6 = [a1 activityType];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (one-time initialization token for userActivityTypeOpenWindowByID != -1)
  {
    swift_once();
  }

  if (v7 == static NSUserActivity.userActivityTypeOpenWindowByID && v9 == *algn_1EAB09078)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = [a1 userInfo];
  if (!v12)
  {
    goto LABEL_18;
  }

  v13 = v12;
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v28 = 0xD000000000000019;
  v29 = 0x800000018CD3D380;
  AnyHashable.init<A>(_:)();
  if (!*(v14 + 16) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(__src), (v16 & 1) == 0))
  {

    outlined destroy of AnyHashable(__src);
LABEL_18:
    v30 = 0u;
    v31 = 0u;
    goto LABEL_19;
  }

  outlined init with copy of Any(*(v14 + 56) + 32 * v15, &v30);
  outlined destroy of AnyHashable(__src);

  if (!*(&v31 + 1))
  {
LABEL_19:
    outlined destroy of AnyAccessibilityValue?(&v30, &lazy cache variable for type metadata for Any?);
    goto LABEL_20;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    bzero(a2, 0x231uLL);
    return;
  }

  v17 = __src[1];
  v18 = *(v5 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = __src[0];
    v21 = v5 + 32;
    while (v19 < *(v5 + 16))
    {
      outlined init with copy of SceneList.Item(v21, __src);
      v23 = __src[18];
      if (__src[19])
      {
        *&v30 = _typeName(_:qualified:)();
        *(&v30 + 1) = v24;
        MEMORY[0x18D00C9B0](45, 0xE100000000000000);
        LOBYTE(v28) = v23;
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x18D00C9B0](v25);

        if (v30 == __PAIR128__(v17, v20))
        {

LABEL_34:
          memcpy(a2, __src, 0x231uLL);
          goto LABEL_35;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v26 = __src[17] == v20 && __src[18] == v17;
        if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_34;
        }
      }

      ++v19;
      outlined destroy of SceneList.Item(__src);
      v21 += 568;
      if (v18 == v19)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:
    bzero(a2, 0x231uLL);
LABEL_35:
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SceneList.Namespace.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953722216;
  }

  else
  {
    v3 = 0x676E69727473;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953722216;
  }

  else
  {
    v5 = 0x676E69727473;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SceneList.Namespace.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SceneList.Namespace.CodingKeys()
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SceneList.Namespace.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SceneList.Namespace.CodingKeys@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SceneList.Namespace.CodingKeys.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance SceneList.Namespace.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1953722216;
  if (!*v1)
  {
    v2 = 0x676E69727473;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SceneList.Namespace.CodingKeys()
{
  if (*v0)
  {
    return 1953722216;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SceneList.Namespace.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SceneList.Namespace.CodingKeys.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SceneList.Namespace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SceneList.Namespace.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SceneList.Namespace.encode(to:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v12[1] = a3;
  type metadata accessor for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<SceneList.Namespace.CodingKeys>, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (a4)
  {
    if (a4 == 1)
    {
      v15 = 1;
    }

    else
    {
      v13 = 1;
    }

    KeyedEncodingContainer.encode(_:forKey:)();
  }

  else
  {
    v14 = 0;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SceneList.Namespace@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = specialized SceneList.Namespace.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t specialized SceneList.Namespace.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12[15] = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    if (v10)
    {
      v8 = v9;
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v12[14] = 1;
      v8 = KeyedDecodingContainer.decode(_:forKey:)();
      (*(v5 + 8))(v7, v4);
      if (v8 == -1)
      {
        v8 = 0;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys;
  if (!lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedDecodingContainer<SceneList.Namespace.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type SceneList.Namespace.CodingKeys and conformance SceneList.Namespace.CodingKeys();
    v7 = a3(a1, &unk_1EFF90E00, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t type metadata accessor for NSUserActivity()
{
  result = lazy cache variable for type metadata for NSUserActivity;
  if (!lazy cache variable for type metadata for NSUserActivity)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSUserActivity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserActivity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject)
  {
    type metadata accessor for NSUserActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserActivity and conformance NSObject);
  }

  return result;
}

uint64_t View.sliderThumbVisibility(_:)()
{
  return View.sliderThumbVisibility(_:)();
}

{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.sliderThumbVisibility.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
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
    PropertyList.subscript.getter();
  }

  return v8;
}

uint64_t key path getter for EnvironmentValues.sliderThumbVisibility : EnvironmentValues@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X3>, unint64_t *a3@<X6>, _BYTE *a4@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a3, a2);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a2);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a3, a2);
    result = PropertyList.subscript.getter();
  }

  *a4 = v8;
  return result;
}

uint64_t key path setter for EnvironmentValues.sliderThumbVisibility : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a5);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a8, a5);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

unint64_t lazy protocol witness table accessor for type SliderTintProminence and conformance SliderTintProminence()
{
  result = lazy protocol witness table cache variable for type SliderTintProminence and conformance SliderTintProminence;
  if (!lazy protocol witness table cache variable for type SliderTintProminence and conformance SliderTintProminence)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderTintProminence and conformance SliderTintProminence);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind()
{
  result = lazy protocol witness table cache variable for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind;
  if (!lazy protocol witness table cache variable for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SliderTintProminence.Kind and conformance SliderTintProminence.Kind);
  }

  return result;
}

uint64_t View.scenePadding(_:edges:)()
{
  EdgeInsets.init(_all:)();
  EdgeInsets.in(_:)();

  return View.padding(_:)();
}

Swift::Int PepperUICoreFeatureFlag.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag()
{
  result = lazy protocol witness table cache variable for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag;
  if (!lazy protocol witness table cache variable for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PepperUICoreFeatureFlag and conformance PepperUICoreFeatureFlag);
  }

  return result;
}

uint64_t static __App._registerPerformanceTests(_:)(uint64_t a1)
{
  static TestingAppDelegate.performanceTests = a1;
}

void _BenchmarkHost._started(test:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  v6 = [objc_opt_self() sharedApplication];
  v7 = MEMORY[0x18D00C850](v3, v5);

  [v6 startedTest_];
}

void _BenchmarkHost._finished(test:)(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v9 = v8;
  v10 = [objc_opt_self() sharedApplication];
  v11 = MEMORY[0x18D00C850](v7, v9);

  [v10 *a4];
}

void key path setter for static WindowResizability.automatic : WindowResizability.Type()
{
  static os_log_type_t.fault.getter();
  v0 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t Scene.windowResizability(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  Scene.transformSceneList(transform:)(partial apply for closure #1 in Scene.windowResizability(_:), v4, a2);
}

uint64_t closure #1 in Scene.windowResizability(_:)(uint64_t result, char a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v2 = result;
    }

    if (v3 > *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    if (v3 == 1)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v7 = v3 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v2;
      do
      {
        *(v8 + 520) = a2;
        *(v8 + 1088) = a2;
        v8 += 1136;
        v7 -= 2;
      }

      while (v7);
      if (v3 == v6)
      {
        goto LABEL_12;
      }
    }

    v9 = v3 - v6;
    v10 = (v2 + 568 * v6 + 520);
    do
    {
      *v10 = a2;
      v10 += 568;
      --v9;
    }

    while (v9);
LABEL_12:
    *v5 = v2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WindowResizability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type WindowResizability.Role and conformance WindowResizability.Role()
{
  result = lazy protocol witness table cache variable for type WindowResizability.Role and conformance WindowResizability.Role;
  if (!lazy protocol witness table cache variable for type WindowResizability.Role and conformance WindowResizability.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowResizability.Role and conformance WindowResizability.Role);
  }

  return result;
}

void static __App.run<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __App.ShoeboxAdaptor();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v11 - v9;
  (*(v4 + 16))(v6, a1, a2, v8);
  (*(v4 + 32))(v10, v6, a2);
  swift_getWitnessTable();
  runApp<A>(_:)();
}

uint64_t __App.ShoeboxAdaptor.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v23 = a2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = *(v7 + 24);
  v21 = *(v7 + 16);
  v9 = type metadata accessor for WindowGroup();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v13);
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v21;
  *(v17 + 24) = v8;
  (*(v5 + 32))(v17 + v16, &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  WindowGroup.init(makeContent:)(partial apply for closure #1 in __App.ShoeboxAdaptor.body.getter, v17, v11);
  swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v9, v15);
  v18 = *(v22 + 8);
  v18(v11, v9);
  static SceneBuilder.buildBlock<A>(_:)(v15, v9, v23);
  return v18(v15, v9);
}

uint64_t closure #1 in __App.ShoeboxAdaptor.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v6, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t partial apply for closure #1 in __App.ShoeboxAdaptor.body.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for __App.ShoeboxAdaptor() - 8);
  v4 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in __App.ShoeboxAdaptor.body.getter(v4, v1, v2);
}

uint64_t protocol witness for static StyleContext.acceptsAny<A>(_:) in conformance AnyListStyleContext(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  if (v3)
  {
    memcpy(&v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v1);
  }

  return static StyleContext.acceptsAny<A>(_:)() & 1;
}

uint64_t static ResolvedList.makeView<A>(view:style:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v34 = a7;
  v35 = a2;
  v33 = a1;
  v36 = a8;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v16;
  v41 = v15;
  v42 = v18;
  v43 = v17;
  v19 = type metadata accessor for _ListValue.Init1();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v32 - v24;
  v26 = *v33;
  v27 = *(a3 + 48);
  v38[2] = *(a3 + 32);
  v38[3] = v27;
  v38[4] = *(a3 + 64);
  v39 = *(a3 + 80);
  v28 = *(a3 + 16);
  v38[0] = *a3;
  v38[1] = v28;
  v37 = v26;
  type metadata accessor for ResolvedList();
  type metadata accessor for _GraphValue();
  LODWORD(a3) = _GraphValue.value.getter();
  (*(v12 + 16))(v14, v35, a5);
  *v25 = a3;
  v40 = a5;
  v41 = a4;
  v29 = v34;
  v42 = v34;
  v43 = a6;
  v30 = type metadata accessor for _ListValue.Init1();
  (*(v12 + 32))(&v25[*(v30 + 52)], v14, a5);
  (*(v20 + 16))(v22, v25, v19);
  v40 = a5;
  v41 = a4;
  v42 = v29;
  v43 = a6;
  type metadata accessor for _ListValue();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  (*(v29 + 8))(&v40, v38, a4, a6, a5, v29);
  return (*(v20 + 8))(v25, v19);
}

uint64_t *initializeBufferWithCopyOfBuffer for _ListValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 & 0xF8 | 7;
  v10 = *(v7 + 64);
  if (*(v7 + 84))
  {
    v11 = *(v7 + 64);
  }

  else
  {
    v11 = v10 + 1;
  }

  if (v11 > v10)
  {
    v10 = v11;
  }

  if (v10 <= 8)
  {
    v12 = 8;
  }

  else
  {
    v12 = v10;
  }

  v13 = v12 + (((v8 & 0xF8) + 23) & ~v9) + 1;
  v14 = *(v4 + 80) & 0xF8 | v9;
  v15 = (*(v4 + 80) | v8) & 0x100000;
  if (v14 != 7 || v15 != 0 || v13 + ((v5 + v9) & ~v9) > 0x18)
  {
    v18 = *a2;
    *v3 = *a2;
    v3 = (v18 + ((v14 + 16) & ~v14));

    return v3;
  }

  (*(v4 + 16))(a1);
  v20 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v22 < 0xFFFFFFFFuLL)
  {
    memcpy(v20, v21, v13);
    return v3;
  }

  *v20 = *v21;
  v23 = (v20 + 23);
  *((v20 + 15) & 0xFFFFFFFFFFFFFFF8) = *v22;
  v24 = ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = *(v24 + v12);

  if (v25 >= 3)
  {
    if (v12 <= 3)
    {
      v26 = v12;
    }

    else
    {
      v26 = 4;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *v24;
      }

      else if (v26 == 3)
      {
        v27 = *v24 | (*(v24 + 2) << 16);
      }

      else
      {
        v27 = *v24;
      }

      goto LABEL_32;
    }

    if (v26)
    {
      v27 = *v24;
LABEL_32:
      v28 = (v27 | ((v25 - 3) << (8 * v12))) + 3;
      v29 = v27 + 3;
      if (v12 >= 4)
      {
        v25 = v29;
      }

      else
      {
        v25 = v28;
      }
    }
  }

  v30 = (v23 & 0xFFFFFFFFFFFFFFF8);
  if (v25 == 2)
  {
    (*(v7 + 16))(v23 & 0xFFFFFFFFFFFFFFF8, v24, v6);
    v31 = 2;
LABEL_43:
    *(v30 + v12) = v31;
    return v3;
  }

  if (v25 == 1)
  {
    if ((*(v7 + 48))(v24, 1, v6))
    {
      memcpy((v23 & 0xFFFFFFFFFFFFFFF8), v24, v11);
    }

    else
    {
      (*(v7 + 16))(v23 & 0xFFFFFFFFFFFFFFF8, v24, v6);
      (*(v7 + 56))(v23 & 0xFFFFFFFFFFFFFFF8, 0, 1, v6);
    }

    v31 = 1;
    goto LABEL_43;
  }

  *v30 = *v24;
  *(v30 + v12) = 0;

  return v3;
}

uint64_t assignWithCopy for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v62 = *(a3 + 24);
  v7 = *(v62 - 8);
  v8 = *(v7 + 84);
  v63 = v7;
  v9 = *(v7 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = *(v6 + 40) + (v9 | 7);
  v12 = ~(v9 | 7);
  v13 = ((v11 + a1) & v12);
  v14 = ((v11 + a2) & v12);
  v15 = *(v7 + 64);
  v16 = (v9 + 23) & v12;
  v17 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = *v18;
  if (*v17 >= 0xFFFFFFFFuLL)
  {
    v64 = a1;
    if (v19 >= 0xFFFFFFFF)
    {
      *v13 = *v14;

      *v17 = *v18;

      v20 = v17 + v10 + 8;
      v21 = (v20 & v12);
      v22 = v18 + v10 + 8;
      v23 = (v22 & v12);
      if ((v20 & v12) == (v22 & v12))
      {
        return a1;
      }

      if (v8)
      {
        v24 = v15;
      }

      else
      {
        v24 = v15 + 1;
      }

      if (v24 <= v15)
      {
        v25 = v15;
      }

      else
      {
        v25 = v24;
      }

      if (v25 <= 8)
      {
        v26 = 8;
      }

      else
      {
        v26 = v25;
      }

      v27 = v21[v26];
      v28 = v27 - 3;
      if (v27 < 3)
      {
        v30 = v62;
        v31 = v63;
        goto LABEL_101;
      }

      if (v26 <= 3)
      {
        v29 = v26;
      }

      else
      {
        v29 = 4;
      }

      v30 = v62;
      v31 = v63;
      if (v29 <= 1)
      {
        if (!v29)
        {
          goto LABEL_101;
        }

        v32 = *v21;
      }

      else if (v29 == 2)
      {
        v32 = *v21;
      }

      else if (v29 == 3)
      {
        v32 = *v21 | (v21[2] << 16);
      }

      else
      {
        v32 = *v21;
      }

      v56 = (v32 | (v28 << (8 * v26))) + 3;
      v27 = v32 + 3;
      if (v26 < 4)
      {
        v27 = v56;
      }

LABEL_101:
      if (v27 != 2)
      {
        if (v27 != 1)
        {

LABEL_106:
          v57 = *(v23 + v26);
          v58 = v57 - 3;
          if (v57 >= 3)
          {
            if (v26 <= 3)
            {
              v59 = v26;
            }

            else
            {
              v59 = 4;
            }

            if (v59 > 1)
            {
              if (v59 == 2)
              {
                v60 = *v23;
              }

              else if (v59 == 3)
              {
                v60 = *v23 | (*(v23 + 2) << 16);
              }

              else
              {
                v60 = *v23;
              }

LABEL_118:
              v61 = (v60 | (v58 << (8 * v26))) + 3;
              v57 = v60 + 3;
              if (v26 < 4)
              {
                v57 = v61;
              }

              goto LABEL_120;
            }

            if (v59)
            {
              v60 = *v23;
              goto LABEL_118;
            }
          }

LABEL_120:
          if (v57 != 2)
          {
            if (v57 == 1)
            {
              if ((*(v31 + 48))(v23, 1, v30))
              {
                memcpy(v21, v23, v24);
              }

              else
              {
                (*(v31 + 16))(v21, v23, v30);
                (*(v31 + 56))(v21, 0, 1, v30);
              }

              a1 = v64;
              v21[v26] = 1;
            }

            else
            {
              a1 = v64;
              *v21 = *v23;
              v21[v26] = 0;
            }

            return a1;
          }

          (*(v31 + 16))(v21, v23, v30);
          v21[v26] = 2;
          return v64;
        }

        if ((*(v31 + 48))(v21, 1, v30))
        {
          goto LABEL_106;
        }
      }

      (*(v31 + 8))(v21, v30);
      goto LABEL_106;
    }

    v42 = ((v17 + v10 + 8) & v12);
    if (v8)
    {
      v43 = v15;
    }

    else
    {
      v43 = v15 + 1;
    }

    if (v43 <= v15)
    {
      v43 = v15;
    }

    if (v43 <= 8)
    {
      v44 = 8;
    }

    else
    {
      v44 = v43;
    }

    v45 = *(v42 + v44);
    v46 = v45 - 3;
    if (v45 < 3)
    {
      v48 = v62;
      v49 = v63;
    }

    else
    {
      if (v44 <= 3)
      {
        v47 = v44;
      }

      else
      {
        v47 = 4;
      }

      v48 = v62;
      v49 = v63;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v50 = *v42;
        }

        else if (v47 == 3)
        {
          v50 = *v42 | (*(v42 + 2) << 16);
        }

        else
        {
          v50 = *v42;
        }

LABEL_85:
        v54 = (v50 | (v46 << (8 * v44))) + 3;
        v45 = v50 + 3;
        if (v44 < 4)
        {
          v45 = v54;
        }

        goto LABEL_87;
      }

      if (v47)
      {
        v50 = *v42;
        goto LABEL_85;
      }
    }

LABEL_87:
    if (v45 == 2)
    {
      goto LABEL_90;
    }

    if (v45 != 1)
    {

      goto LABEL_92;
    }

    if (!(*(v49 + 48))(v42, 1, v48))
    {
LABEL_90:
      (*(v49 + 8))(v42, v48);
    }

LABEL_92:
    memcpy(v13, v14, v44 + v16 + 1);
    return v64;
  }

  if (v19 < 0xFFFFFFFF)
  {
    if (v8)
    {
      v51 = *(*(v62 - 8) + 64);
    }

    else
    {
      v51 = v15 + 1;
    }

    if (v51 <= v15)
    {
      v51 = *(*(v62 - 8) + 64);
    }

    if (v51 <= 8)
    {
      v51 = 8;
    }

    memcpy(v13, v14, v51 + v16 + 1);
    return a1;
  }

  v64 = a1;
  *v13 = *v14;
  *v17 = *v18;
  v33 = ((v17 + v10 + 8) & v12);
  v34 = ((v18 + v10 + 8) & v12);
  if (v8)
  {
    v35 = v15;
  }

  else
  {
    v35 = v15 + 1;
  }

  if (v35 <= v15)
  {
    v36 = v15;
  }

  else
  {
    v36 = v35;
  }

  if (v36 <= 8)
  {
    v37 = 8;
  }

  else
  {
    v37 = v36;
  }

  v38 = *(v34 + v37);

  if (v38 < 3)
  {
    v40 = v63;
  }

  else
  {
    if (v37 <= 3)
    {
      v39 = v37;
    }

    else
    {
      v39 = 4;
    }

    v40 = v63;
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v41 = *v34;
      }

      else if (v39 == 3)
      {
        v41 = *v34 | (*(v34 + 2) << 16);
      }

      else
      {
        v41 = *v34;
      }

      goto LABEL_73;
    }

    if (v39)
    {
      v41 = *v34;
LABEL_73:
      v52 = (v41 | ((v38 - 3) << (8 * v37))) + 3;
      v53 = v41 + 3;
      if (v37 >= 4)
      {
        v38 = v53;
      }

      else
      {
        v38 = v52;
      }
    }
  }

  if (v38 == 2)
  {
    (*(v40 + 16))(v33, v34, v62);
    *(v33 + v37) = 2;
    return v64;
  }

  if (v38 == 1)
  {
    if ((*(v40 + 48))(v34, 1, v62))
    {
      memcpy(v33, v34, v35);
    }

    else
    {
      (*(v40 + 16))(v33, v34, v62);
      (*(v40 + 56))(v33, 0, 1, v62);
    }

    a1 = v64;
    *(v33 + v37) = 1;
  }

  else
  {
    a1 = v64;
    *v33 = *v34;
    *(v33 + v37) = 0;
  }

  return a1;
}

uint64_t initializeWithTake for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) & 0xF8 | 7;
  v11 = *(v6 + 32) + v10;
  v12 = ~v10;
  v13 = ((v11 + a1) & ~v10);
  v14 = ((v11 + a2) & ~v10);
  v15 = *(v8 + 64);
  v16 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (*v16 < 0xFFFFFFFFuLL)
  {
    v27 = (v10 + 16) & v12;
    if (v9)
    {
      v28 = *(*(v7 - 8) + 64);
    }

    else
    {
      v28 = v15 + 1;
    }

    if (v28 > v15)
    {
      v15 = v28;
    }

    if (v15 <= 8)
    {
      v15 = 8;
    }

    memcpy(v13, v14, v15 + v27 + 1);
    return a1;
  }

  *v13 = *v14;
  v17 = (v13 + 15);
  *(v17 & 0xFFFFFFFFFFFFFFF8) = *v16;
  v18 = v10 + 8;
  v19 = ((v18 + (v17 & 0xFFFFFFFFFFFFFFF8)) & v12);
  v20 = ((v16 + v18) & v12);
  if (v9)
  {
    v21 = v15;
  }

  else
  {
    v21 = v15 + 1;
  }

  if (v21 > v15)
  {
    v15 = v21;
  }

  if (v15 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v15;
  }

  v23 = *(v20 + v22);
  v24 = v23 - 3;
  if (v23 >= 3)
  {
    if (v22 <= 3)
    {
      v25 = v22;
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 1)
    {
      if (v25 == 2)
      {
        v26 = *v20;
      }

      else if (v25 == 3)
      {
        v26 = *v20 | (*(v20 + 2) << 16);
      }

      else
      {
        v26 = *v20;
      }

LABEL_30:
      v29 = (v26 | (v24 << (8 * v22))) + 3;
      v23 = v26 + 3;
      if (v22 < 4)
      {
        v23 = v29;
      }

      goto LABEL_32;
    }

    if (v25)
    {
      v26 = *v20;
      goto LABEL_30;
    }
  }

LABEL_32:
  if (v23 == 2)
  {
    (*(v8 + 32))(v19, v20, v7);
    v30 = 2;
LABEL_40:
    *(v19 + v22) = v30;
    return a1;
  }

  if (v23 == 1)
  {
    if ((*(v8 + 48))(v20, 1, v7))
    {
      memcpy(v19, v20, v21);
    }

    else
    {
      (*(v8 + 32))(v19, v20, v7);
      (*(v8 + 56))(v19, 0, 1, v7);
    }

    v30 = 1;
    goto LABEL_40;
  }

  *v19 = *v20;
  *(v19 + v22) = 0;
  return a1;
}

uint64_t assignWithTake for _ListValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(v6 + 24) + (v10 | 7);
  v13 = a1;
  v14 = ~(v10 | 7);
  v15 = ((v12 + a1) & v14);
  v16 = ((v12 + a2) & v14);
  v17 = *(v8 + 64);
  v18 = (v10 + 23) & v14;
  v19 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  v21 = *v20;
  if (*v19 < 0xFFFFFFFFuLL)
  {
    if (v21 < 0xFFFFFFFF)
    {
      if (v9)
      {
        v49 = *(v8 + 64);
      }

      else
      {
        v49 = v17 + 1;
      }

      if (v49 <= v17)
      {
        v49 = *(v8 + 64);
      }

      if (v49 <= 8)
      {
        v49 = 8;
      }

      memcpy(v15, v16, v49 + v18 + 1);
      return v13;
    }

    *v15 = *v16;
    *v19 = *v20;
    v23 = ((v19 + v11 + 8) & v14);
    v25 = ((v20 + v11 + 8) & v14);
    if (v9)
    {
      v27 = v17;
    }

    else
    {
      v27 = v17 + 1;
    }

    if (v27 <= v17)
    {
      v36 = v17;
    }

    else
    {
      v36 = v27;
    }

    if (v36 <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v36;
    }

    v37 = v25[v29];
    v38 = v37 - 3;
    if (v37 < 3)
    {
      v26 = v13;
    }

    else
    {
      if (v29 <= 3)
      {
        v39 = v29;
      }

      else
      {
        v39 = 4;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v40 = *v25;
        }

        else if (v39 == 3)
        {
          v40 = *((v20 + v11 + 8) & v14) | (*(((v20 + v11 + 8) & v14) + 2) << 16);
        }

        else
        {
          v40 = *v25;
        }

        v26 = v13;
LABEL_74:
        v52 = (v40 | (v38 << (8 * v29))) + 3;
        v37 = v40 + 3;
        if (v29 < 4)
        {
          v37 = v52;
        }

        goto LABEL_76;
      }

      v26 = v13;
      if (v39)
      {
        v40 = *v25;
        goto LABEL_74;
      }
    }

LABEL_76:
    if (v37 != 2)
    {
      if (v37 == 1)
      {
        v53 = v7;
        v54 = v8;
        if (!(*(v8 + 48))(v25, 1))
        {
LABEL_123:
          (*(v54 + 32))(v23, v25, v53);
          (*(v54 + 56))(v23, 0, 1, v53);
          goto LABEL_124;
        }

LABEL_79:
        memcpy(v23, v25, v27);
LABEL_124:
        v64 = 1;
LABEL_128:
        v23[v29] = v64;
        return v26;
      }

      goto LABEL_125;
    }

    (*(v8 + 32))(v23, v25);
LABEL_127:
    v64 = 2;
    goto LABEL_128;
  }

  v66 = *(v7 - 8);
  v67 = v7;
  if (v21 < 0xFFFFFFFF)
  {

    v41 = v9 == 0;
    v42 = ((v19 + v11 + 8) & v14);
    if (v41)
    {
      v43 = v17 + 1;
    }

    else
    {
      v43 = v17;
    }

    if (v43 <= v17)
    {
      v43 = v17;
    }

    if (v43 <= 8)
    {
      v44 = 8;
    }

    else
    {
      v44 = v43;
    }

    v45 = *(v42 + v44);
    v46 = v45 - 3;
    if (v45 < 3)
    {
      v26 = v13;
      v50 = v66;
      v51 = v67;
    }

    else
    {
      if (v44 <= 3)
      {
        v47 = v44;
      }

      else
      {
        v47 = 4;
      }

      v26 = v13;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v48 = *v42;
        }

        else if (v47 == 3)
        {
          v48 = *((v19 + v11 + 8) & v14) | (*(((v19 + v11 + 8) & v14) + 2) << 16);
        }

        else
        {
          v48 = *v42;
        }

        v50 = v66;
        v51 = v67;
LABEL_83:
        v55 = (v48 | (v46 << (8 * v44))) + 3;
        v45 = v48 + 3;
        if (v44 < 4)
        {
          v45 = v55;
        }

        goto LABEL_85;
      }

      v50 = v66;
      v51 = v67;
      if (v47)
      {
        v48 = *v42;
        goto LABEL_83;
      }
    }

LABEL_85:
    if (v45 == 2)
    {
      (*(v50 + 8))(v42, v51);
    }

    else if (v45 == 1)
    {
      v56 = v50;
      if (!(*(v50 + 48))(v42, 1, v51))
      {
        (*(v56 + 8))(v42, v51);
      }
    }

    else
    {
    }

    memcpy(v15, v16, v44 + v18 + 1);
    return v26;
  }

  *v15 = *v16;

  *v19 = *v20;

  v22 = v19 + v11 + 8;
  v23 = (v22 & v14);
  v24 = v20 + v11 + 8;
  v25 = (v24 & v14);
  v26 = v13;
  if ((v22 & v14) != (v24 & v14))
  {
    if (v9)
    {
      v27 = v17;
    }

    else
    {
      v27 = v17 + 1;
    }

    if (v27 <= v17)
    {
      v28 = v17;
    }

    else
    {
      v28 = v27;
    }

    if (v28 <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = v28;
    }

    v30 = v23[v29];
    v31 = v30 - 3;
    if (v30 < 3)
    {
      v34 = v66;
      v33 = v67;
      goto LABEL_98;
    }

    if (v29 <= 3)
    {
      v32 = v29;
    }

    else
    {
      v32 = 4;
    }

    v34 = v66;
    v33 = v67;
    if (v32 <= 1)
    {
      if (!v32)
      {
        goto LABEL_98;
      }

      v35 = *v23;
    }

    else if (v32 == 2)
    {
      v35 = *v23;
    }

    else if (v32 == 3)
    {
      v35 = *v23 | (v23[2] << 16);
    }

    else
    {
      v35 = *v23;
    }

    v57 = (v35 | (v31 << (8 * v29))) + 3;
    v30 = v35 + 3;
    if (v29 < 4)
    {
      v30 = v57;
    }

LABEL_98:
    if (v30 == 2)
    {
      (*(v34 + 8))(v23, v33);
    }

    else if (v30 == 1)
    {
      if (!(*(v34 + 48))(v23, 1, v33))
      {
        (*(v66 + 8))(v23, v67);
      }
    }

    else
    {
    }

    v58 = v25[v29];
    v59 = v58 - 3;
    if (v58 < 3)
    {
      v61 = v66;
      v53 = v67;
    }

    else
    {
      if (v29 <= 3)
      {
        v60 = v29;
      }

      else
      {
        v60 = 4;
      }

      v61 = v66;
      v53 = v67;
      if (v60 > 1)
      {
        if (v60 == 2)
        {
          v62 = *v25;
        }

        else if (v60 == 3)
        {
          v62 = *v25 | (v25[2] << 16);
        }

        else
        {
          v62 = *v25;
        }

LABEL_118:
        v63 = (v62 | (v59 << (8 * v29))) + 3;
        v58 = v62 + 3;
        if (v29 < 4)
        {
          v58 = v63;
        }

        goto LABEL_120;
      }

      if (v60)
      {
        v62 = *v25;
        goto LABEL_118;
      }
    }

LABEL_120:
    if (v58 != 2)
    {
      if (v58 == 1)
      {
        v54 = v61;
        if (!(*(v61 + 48))(v25, 1, v53))
        {
          goto LABEL_123;
        }

        goto LABEL_79;
      }

LABEL_125:
      *v23 = *v25;
      v23[v29] = 0;
      return v26;
    }

    (*(v61 + 32))(v23, v25, v53);
    goto LABEL_127;
  }

  return v26;
}

uint64_t getEnumTagSinglePayload for _ListValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a3 + 24) - 8);
  v7 = *(v6 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (*(v6 + 84))
  {
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 <= v7)
  {
    v9 = *(v6 + 64);
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v6 + 80) & 0xF8;
  v11 = v10 | 7;
  v12 = *(*(*(a3 + 16) - 8) + 64) + (v10 | 7);
  v13 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_33;
  }

  v14 = v9 + ((v10 + 23) & ~v11) + (v12 & ~v11) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_33;
      }

      goto LABEL_22;
    }

    if (v18 < 2)
    {
LABEL_33:
      if (v5 >= 0x7FFFFFFE)
      {
        return (*(v4 + 48))();
      }

      v20 = *((((a1 + v12) & ~v11) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v20 >= 0xFFFFFFFF)
      {
        LODWORD(v20) = -1;
      }

      if ((v20 + 1) >= 2)
      {
        return v20;
      }

      else
      {
        return 0;
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_33;
  }

LABEL_22:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  return v8 + (v14 | v19) + 1;
}

void storeEnumTagSinglePayload for _ListValue(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 64);
  if (v6 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = *(v7 + 84) == 0;
  v11 = *(v7 + 80) & 0xF8;
  v12 = v11 | 7;
  v13 = *(*(*(a4 + 16) - 8) + 64) + (v11 | 7);
  v14 = v13 & ~(v11 | 7);
  v15 = (v11 + 23) & ~(v11 | 7);
  if (v10)
  {
    v16 = v8 + 1;
  }

  else
  {
    v16 = v8;
  }

  if (v16 > v8)
  {
    v8 = v16;
  }

  if (v8 <= 8)
  {
    v8 = 8;
  }

  v17 = v8 + v15 + 1;
  v18 = v17 + v14;
  v19 = a3 >= v9;
  v20 = a3 - v9;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
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

  if (v9 < a2)
  {
    v22 = ~v9 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = a1;
        bzero(a1, v18);
        a1 = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_62:
              if (v21 == 2)
              {
                *&a1[v18] = v24;
              }

              else
              {
                *&a1[v18] = v24;
              }

              return;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v23 = a1;
      bzero(a1, v18);
      a1 = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v21)
    {
      a1[v18] = v24;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *&a1[v18] = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v21)
  {
    goto LABEL_37;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v6 < 0x7FFFFFFE)
  {
    v30 = (&a1[v13] & ~v12);
    if (a2 > 0x7FFFFFFE)
    {
      if (v17 <= 3)
      {
        v31 = ~(-1 << (8 * v17));
      }

      else
      {
        v31 = -1;
      }

      if (v17)
      {
        v32 = v31 & (a2 - 0x7FFFFFFF);
        if (v17 <= 3)
        {
          v33 = v17;
        }

        else
        {
          v33 = 4;
        }

        bzero(v30, v17);
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            *v30 = v32;
            v30[2] = BYTE2(v32);
          }

          else
          {
            *v30 = v32;
          }
        }

        else if (v33 == 1)
        {
          *v30 = v32;
        }

        else
        {
          *v30 = v32;
        }
      }
    }

    else
    {
      *((v30 + 15) & 0xFFFFFFFFFFFFFFF8) = a2;
    }
  }

  else
  {
    v29 = *(v5 + 56);

    v29();
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for ResolvedList(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  v8 = ((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8;
  if (*(v4 + 84))
  {
    v9 = *(v4 + 64);
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 > v7)
  {
    v7 = v9;
  }

  if (v7 <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v10 + v8 + 1;
  if ((v6 & 0x1000F8) != 0 || v11 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    v14 = v13 + v8;

    return v14;
  }

  v16 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v17 = *v16;
  if (*v16 >= 0xFFFFFFFF)
  {
    *a1 = *a2;
    v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v19 = v17;
    v20 = v19 + 15;
    v21 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = v21[v10];

    if (v22 < 3)
    {
      goto LABEL_34;
    }

    if (v10 <= 3)
    {
      v23 = v10;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_34;
      }

      v24 = *v21;
    }

    else if (v23 == 2)
    {
      v24 = *v21;
    }

    else if (v23 == 3)
    {
      v24 = *v21 | (v21[2] << 16);
    }

    else
    {
      v24 = *v21;
    }

    v25 = (v24 | ((v22 - 3) << (8 * v10))) + 3;
    v26 = v24 + 3;
    if (v10 >= 4)
    {
      v22 = v26;
    }

    else
    {
      v22 = v25;
    }

LABEL_34:
    v27 = (v20 & 0xFFFFFFFFFFFFFFF8);
    if (v22 == 2)
    {
      (*(v5 + 16))(v20 & 0xFFFFFFFFFFFFFFF8, v21, v3);
      v28 = 2;
    }

    else
    {
      if (v22 != 1)
      {
        *v27 = *v21;
        *(v27 + v10) = 0;

        return a1;
      }

      if ((*(v5 + 48))(v21, 1, v3))
      {
        memcpy((v20 & 0xFFFFFFFFFFFFFFF8), v21, v9);
      }

      else
      {
        (*(v5 + 16))(v20 & 0xFFFFFFFFFFFFFFF8, v21, v3);
        (*(v5 + 56))(v20 & 0xFFFFFFFFFFFFFFF8, 0, 1, v3);
      }

      v28 = 1;
    }

    *(v27 + v10) = v28;
    return a1;
  }

  return memcpy(a1, a2, v11);
}

void *initializeWithTake for ResolvedList(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80) & 0xF8 | 7;
  v8 = ~v7;
  v9 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  if (*v9 >= 0xFFFFFFFF)
  {
    *result = *a2;
    v11 = v5 == 0;
    v12 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = v10;
    v13 = ((v12 + v7 + 8) & v8);
    v14 = ((v9 + v7 + 8) & v8);
    if (v11)
    {
      v15 = v6 + 1;
    }

    else
    {
      v15 = v6;
    }

    if (v15 > v6)
    {
      v6 = v15;
    }

    if (v6 <= 8)
    {
      v16 = 8;
    }

    else
    {
      v16 = v6;
    }

    v17 = v14[v16];
    v18 = v17 - 3;
    if (v17 < 3)
    {
      goto LABEL_34;
    }

    if (v16 <= 3)
    {
      v19 = v16;
    }

    else
    {
      v19 = 4;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
LABEL_34:
        if (v17 == 2)
        {
          v25 = result;
          (*(v4 + 32))(v13, v14, v3);
          result = v25;
          *(v13 + v16) = 2;
        }

        else if (v17 == 1)
        {
          v24 = result;
          if ((*(v4 + 48))(v14, 1, v3))
          {
            memcpy(v13, v14, v15);
          }

          else
          {
            (*(v4 + 32))(v13, v14, v3);
            (*(v4 + 56))(v13, 0, 1, v3);
          }

          *(v13 + v16) = 1;
          return v24;
        }

        else
        {
          *v13 = *v14;
          *(v13 + v16) = 0;
        }

        return result;
      }

      v20 = *v14;
    }

    else if (v19 == 2)
    {
      v20 = *v14;
    }

    else if (v19 == 3)
    {
      v20 = *v14 | (v14[2] << 16);
    }

    else
    {
      v20 = *v14;
    }

    v23 = (v20 | (v18 << (8 * v16))) + 3;
    v17 = v20 + 3;
    if (v16 < 4)
    {
      v17 = v23;
    }

    goto LABEL_34;
  }

  v21 = (v7 + 16) & v8;
  if (v5)
  {
    v22 = *(v4 + 64);
  }

  else
  {
    v22 = v6 + 1;
  }

  if (v22 > v6)
  {
    v6 = v22;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  return memcpy(result, a2, v6 + v21 + 1);
}

void *assignWithTake for ResolvedList(void *a1, void *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = *(v5 + 80) & 0xF8;
  v9 = v8 | 7;
  v10 = ~(v8 | 7);
  v11 = (v8 + 23) & v10;
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 < 0xFFFFFFFFuLL)
  {
    if (v14 < 0xFFFFFFFF)
    {
      if (v6)
      {
        v44 = *(*(v4 - 8) + 64);
      }

      else
      {
        v44 = v7 + 1;
      }

      if (v44 <= v7)
      {
        v44 = *(*(v4 - 8) + 64);
      }

      if (v44 <= 8)
      {
        v44 = 8;
      }

      v45 = v44 + v11 + 1;
      goto LABEL_90;
    }

    *a1 = *a2;
    *v12 = *v13;
    v27 = ((v12 + v9 + 8) & v10);
    v28 = ((v13 + v9 + 8) & v10);
    if (v6)
    {
      v29 = v7;
    }

    else
    {
      v29 = v7 + 1;
    }

    if (v29 <= v7)
    {
      v30 = v7;
    }

    else
    {
      v30 = v29;
    }

    if (v30 <= 8)
    {
      v31 = 8;
    }

    else
    {
      v31 = v30;
    }

    v32 = *(v28 + v31);
    v33 = v32 - 3;
    if (v32 >= 3)
    {
      if (v31 <= 3)
      {
        v34 = v31;
      }

      else
      {
        v34 = 4;
      }

      if (v34 > 1)
      {
        if (v34 == 2)
        {
          v35 = *v28;
        }

        else if (v34 == 3)
        {
          v35 = *v28 | (*(v28 + 2) << 16);
        }

        else
        {
          v35 = *v28;
        }

LABEL_71:
        v46 = (v35 | (v33 << (8 * v31))) + 3;
        v32 = v35 + 3;
        if (v31 < 4)
        {
          v32 = v46;
        }

        goto LABEL_73;
      }

      if (v34)
      {
        v35 = *v28;
        goto LABEL_71;
      }
    }

LABEL_73:
    if (v32 == 2)
    {
      (*(v5 + 32))(v27, v28);
      *(v27 + v31) = 2;
    }

    else if (v32 == 1)
    {
      v47 = v4;
      if ((*(v5 + 48))(v28, 1))
      {
        memcpy(v27, v28, v29);
      }

      else
      {
        (*(v5 + 32))(v27, v28, v47);
        (*(v5 + 56))(v27, 0, 1, v47);
      }

      *(v27 + v31) = 1;
    }

    else
    {
      *v27 = *v28;
      *(v27 + v31) = 0;
    }

    return v3;
  }

  v15 = v4;
  if (v14 >= 0xFFFFFFFF)
  {
    *a1 = *a2;

    *v12 = *v13;

    v16 = v9 + 8;
    v17 = ((v12 + v9 + 8) & v10);
    v18 = ((v13 + v16) & v10);
    if (v17 == v18)
    {
      return v3;
    }

    if (v6)
    {
      v19 = v7;
    }

    else
    {
      v19 = v7 + 1;
    }

    if (v19 <= v7)
    {
      v20 = v7;
    }

    else
    {
      v20 = v19;
    }

    if (v20 <= 8)
    {
      v21 = 8;
    }

    else
    {
      v21 = v20;
    }

    v22 = v17[v21];
    v23 = v22 - 3;
    if (v22 < 3)
    {
      v25 = v15;
      goto LABEL_99;
    }

    if (v21 <= 3)
    {
      v24 = v21;
    }

    else
    {
      v24 = 4;
    }

    v25 = v15;
    if (v24 <= 1)
    {
      if (!v24)
      {
        goto LABEL_99;
      }

      v26 = *v17;
    }

    else if (v24 == 2)
    {
      v26 = *v17;
    }

    else if (v24 == 3)
    {
      v26 = *v17 | (v17[2] << 16);
    }

    else
    {
      v26 = *v17;
    }

    v50 = (v26 | (v23 << (8 * v21))) + 3;
    v22 = v26 + 3;
    if (v21 < 4)
    {
      v22 = v50;
    }

LABEL_99:
    if (v22 == 2)
    {
      (*(v5 + 8))(v17, v25);
    }

    else if (v22 == 1)
    {
      if (!(*(v5 + 48))(v17, 1, v25))
      {
        (*(v5 + 8))(v17, v15);
      }
    }

    else
    {
    }

    v51 = v18[v21];
    v52 = v51 - 3;
    if (v51 < 3)
    {
      goto LABEL_120;
    }

    if (v21 <= 3)
    {
      v53 = v21;
    }

    else
    {
      v53 = 4;
    }

    if (v53 <= 1)
    {
      if (!v53)
      {
LABEL_120:
        if (v51 == 2)
        {
          (*(v5 + 32))(v17, v18, v15);
          v56 = 2;
LABEL_128:
          v17[v21] = v56;
          return v3;
        }

        if (v51 == 1)
        {
          if ((*(v5 + 48))(v18, 1, v15))
          {
            memcpy(v17, v18, v19);
          }

          else
          {
            (*(v5 + 32))(v17, v18, v15);
            (*(v5 + 56))(v17, 0, 1, v15);
          }

          v56 = 1;
          goto LABEL_128;
        }

        *v17 = *v18;
        v17[v21] = 0;
        return v3;
      }

      v54 = *v18;
    }

    else if (v53 == 2)
    {
      v54 = *v18;
    }

    else if (v53 == 3)
    {
      v54 = *v18 | (v18[2] << 16);
    }

    else
    {
      v54 = *v18;
    }

    v55 = (v54 | (v52 << (8 * v21))) + 3;
    v51 = v54 + 3;
    if (v21 < 4)
    {
      v51 = v55;
    }

    goto LABEL_120;
  }

  v36 = a2;

  v37 = ((v12 + v9 + 8) & v10);
  if (v6)
  {
    v38 = v7;
  }

  else
  {
    v38 = v7 + 1;
  }

  if (v38 <= v7)
  {
    v38 = v7;
  }

  if (v38 <= 8)
  {
    v39 = 8;
  }

  else
  {
    v39 = v38;
  }

  v40 = *(v37 + v39);
  v41 = v40 - 3;
  if (v40 < 3)
  {
    goto LABEL_84;
  }

  if (v39 <= 3)
  {
    v42 = v39;
  }

  else
  {
    v42 = 4;
  }

  if (v42 > 1)
  {
    if (v42 == 2)
    {
      v43 = *v37;
    }

    else if (v42 == 3)
    {
      v43 = *v37 | (*(v37 + 2) << 16);
    }

    else
    {
      v43 = *v37;
    }

LABEL_82:
    v48 = (v43 | (v41 << (8 * v39))) + 3;
    v40 = v43 + 3;
    if (v39 < 4)
    {
      v40 = v48;
    }

    goto LABEL_84;
  }

  if (v42)
  {
    v43 = *v37;
    goto LABEL_82;
  }

LABEL_84:
  if (v40 == 2)
  {
    goto LABEL_87;
  }

  if (v40 != 1)
  {

    goto LABEL_89;
  }

  if (!(*(v5 + 48))(v37, 1, v15))
  {
LABEL_87:
    (*(v5 + 8))(v37, v15);
  }

LABEL_89:
  v45 = v39 + v11 + 1;
  a1 = v3;
  a2 = v36;
LABEL_90:

  return memcpy(a1, a2, v45);
}

uint64_t getEnumTagSinglePayload for ResolvedList(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (*(v3 + 84))
  {
    v5 = *(v3 + 64);
  }

  else
  {
    v5 = v4 + 1;
  }

  if (v5 <= v4)
  {
    v5 = *(v3 + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_30;
  }

  v6 = v5 + (((*(v3 + 80) & 0xF8) + 23) & ~(*(v3 + 80) & 0xF8) & 0x1F8) + 1;
  v7 = 8 * v6;
  if (v6 > 3)
  {
    goto LABEL_11;
  }

  v10 = (a2 - 2147483646 + ~(-1 << v7)) >> v7;
  if (v10 > 0xFFFE)
  {
    v8 = *(a1 + v6);
    if (v8)
    {
      goto LABEL_19;
    }

LABEL_30:
    v12 = *((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if ((v12 + 1) >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFE)
  {
    v8 = *(a1 + v6);
    if (*(a1 + v6))
    {
      goto LABEL_19;
    }

    goto LABEL_30;
  }

  if (!v10)
  {
    goto LABEL_30;
  }

LABEL_11:
  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_30;
  }

LABEL_19:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 0x7FFFFFFF;
}

void storeEnumTagSinglePayload for ResolvedList(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (*(v5 + 84))
  {
    v7 = *(v5 + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (v7 <= v6)
  {
    v7 = *(v5 + 64);
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v8 = v7 + (((*(v5 + 80) & 0xF8) + 23) & ~(*(v5 + 80) & 0xF8) & 0x1F8) + 1;
  if (a3 < 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = (a3 - 2147483646 + ~(-1 << (8 * v8))) >> (8 * v8);
    if (v12 > 0xFFFE)
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0xFF)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0x7FFFFFFE)
  {
    v10 = a2 - 0x7FFFFFFF;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_44;
      }

      goto LABEL_41;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_44:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_44;
          }
        }

LABEL_41:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_44;
    }

    goto LABEL_41;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_30:
      *((a1 + 15) & 0xFFFFFFFFFFFFFFF8) = a2;
      return;
    }

LABEL_29:
    if (!a2)
    {
      return;
    }

    goto LABEL_30;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_29;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_30;
  }
}

void *initializeBufferWithCopyOfBuffer for _ListStyleConfiguration(void *__dst, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  if (v6 > 7 || (*(v5 + 80) & 0x100000) != 0 || v7 > 0x18)
  {
    v10 = *a2;
    *__dst = *a2;
    __dst = (v10 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));

    return __dst;
  }

  v11 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) == 0)
  {
    v12 = *v11;
    if (*v11 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    if (v12 != -1)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  v14 = a2;
  v15 = (*(v5 + 48))(v11 + 1, *(v5 + 84), v4);
  a2 = v14;
  if (!v15)
  {
LABEL_18:
    *__dst = *a2;
    v16 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v16 = *v11;
    v17 = *(v5 + 16);

    v17(v16 + 1, v11 + 1, v4);
    return __dst;
  }

LABEL_14:

  return memcpy(__dst, a2, v7);
}

void *initializeWithCopy for _ListStyleConfiguration(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = *(v4 + 16);
    v19 = a1;

    v18(v16 & v6, v17 & v6, v3);
    return v19;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithCopy for _ListStyleConfiguration(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v6 + 64);
  v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v24 = (a1 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v6 + 64);
    v19 = *(v6 + 48);
    v22 = v19((v12 + v8 + 8) & v9, v7, v5);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v4 = a1;
    v15 = v19((v13 + v8 + 8) & v9, v7, v5);
    v12 = v24;
    v3 = a2;
    v11 = v23;
    v10 = (v8 + 16) & ~v8;
    if (!v22)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      v17 = v10 + v11;
      goto LABEL_10;
    }

    *v4 = *v3;
    *v12 = *v13;
    v21 = *(v6 + 16);

    v21((v12 + v8 + 8) & ~v8, (v13 + v8 + 8) & ~v8, v5);
    return v4;
  }

  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v12 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v12 = *v13;

    (*(v6 + 24))((v12 + v8 + 8) & v9, (v13 + v8 + 8) & v9, v5);
    return v4;
  }

  v16 = v11;

  (*(v6 + 8))((v12 + v8 + 8) & v9, v5);
  v17 = v10 + v16;
LABEL_10:

  return memcpy(v4, v3, v17);
}

void *initializeWithTake for _ListStyleConfiguration(void *a1, void *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  v7 = *(v4 + 64);
  v8 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v4 + 84) & 0x80000000) == 0)
  {
    v9 = *v8;
    if (*v8 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    if (v9 != -1)
    {
      goto LABEL_5;
    }

LABEL_9:
    *a1 = *a2;
    v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v8;
    v16 = v15 + v5 + 8;
    v17 = v8 + v5 + 8;
    v18 = a1;
    (*(v4 + 32))(v16 & v6, v17 & v6, v3);
    return v18;
  }

  v11 = a1;
  v12 = a2;
  v13 = (*(v4 + 48))((v8 + v5 + 8) & v6, *(v4 + 84), v3);
  a2 = v12;
  v14 = v13;
  a1 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_5:

  return memcpy(a1, a2, ((v5 + 16) & ~v5) + v7);
}

void *assignWithTake for _ListStyleConfiguration(void *a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ~v7;
  v9 = (v7 + 16) & ~v7;
  v10 = *(v5 + 64);
  v11 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v6 & 0x80000000) != 0)
  {
    v16 = *(v5 + 48);
    v17 = *(a3 + 16);
    v21 = v16((v11 + v7 + 8) & v8, v6, v17);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = v6;
    v12 = v17;
    v19 = v17;
    v9 = (v7 + 16) & ~v7;
    v4 = a1;
    v15 = v16((v13 + v7 + 8) & v8, v18, v19);
    v3 = a2;
    if (!v21)
    {
      goto LABEL_5;
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    *v4 = *v3;
    *v11 = *v13;
    (*(v5 + 32))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  v12 = *(a3 + 16);
  v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v13 >= 0xFFFFFFFFuLL)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 + 1;
  if (*v11 <= 0xFFFFFFFEuLL)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (!v15)
  {
    *v4 = *v3;

    *v11 = *v13;

    (*(v5 + 40))((v11 + v7 + 8) & v8, (v13 + v7 + 8) & v8, v12);
    return v4;
  }

  (*(v5 + 8))((v11 + v7 + 8) & v8, v12);
LABEL_9:

  return memcpy(v4, v3, v9 + v10);
}

uint64_t getEnumTagSinglePayload for _ListStyleConfiguration(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  if (v7 - 1 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 > 3)
  {
    goto LABEL_7;
  }

  v12 = (((1 << v9) + a2 - v7) >> v9) + 1;
  if (HIWORD(v12))
  {
    v10 = *(a1 + v8);
    if (v10)
    {
      goto LABEL_15;
    }

LABEL_28:
    v16 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      v18 = (*(v4 + 48))((v16 + v6 + 8) & ~v6);
    }

    else
    {
      v17 = *v16;
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      v18 = v17 + 1;
    }

    if (v18 >= 2)
    {
      return v18 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v12 > 0xFF)
  {
    v10 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_15;
    }

    goto LABEL_28;
  }

  if (v12 < 2)
  {
    goto LABEL_28;
  }

LABEL_7:
  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 <= 3)
    {
      v14 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        v15 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v15 = *a1;
      }
    }

    else if (v14 == 1)
    {
      v15 = *a1;
    }

    else
    {
      v15 = *a1;
    }
  }

  else
  {
    v15 = 0;
  }

  return (v15 | v13) + v7;
}

void storeEnumTagSinglePayload for _ListStyleConfiguration(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = *(v6 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(*(a4 + 16) - 8) + 64);
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

unint64_t instantiation function for generic protocol witness table for AnyListStyleContext(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnyListStyleContext and conformance AnyListStyleContext();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnyListStyleContext and conformance AnyListStyleContext()
{
  result = lazy protocol witness table cache variable for type AnyListStyleContext and conformance AnyListStyleContext;
  if (!lazy protocol witness table cache variable for type AnyListStyleContext and conformance AnyListStyleContext)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyListStyleContext and conformance AnyListStyleContext);
  }

  return result;
}

BOOL specialized static AnyListStyleContext.accepts<A>(_:at:)(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    v2 = a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

void *initializeBufferWithCopyOfBuffer for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-5 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))((a1 + v5 + 4) & ~v5, (a2 + v5 + 4) & ~v5);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xFC ^ 0x1FC) & (v5 + 16)));
  }

  return v3;
}

_DWORD *initializeWithCopy for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithCopy for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 24))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *initializeWithTake for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

_DWORD *assignWithTake for _ListValue.Init1(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))((a1 + *(v4 + 80) + 4) & ~*(v4 + 80), (a2 + *(v4 + 80) + 4) & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for _ListValue.Init1(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
  }

  v8 = ((v6 + 4) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 4) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void storeEnumTagSinglePayload for _ListValue.Init1(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 4) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 4] & ~v8;

  v18(v19);
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t type metadata completion function for AppIntentExecutingLocation()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AppIntentExecutingLocation(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 48 > 0x18)
  {
    v8 = *a2;
    *a1 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    outlined copy of Environment<AppIntentExecutor?>.Content(*v11, v13, v14);
    *v10 = v12;
    *(v10 + 8) = v13;
    *(v10 + 16) = v14;
    v15 = *(v11 + 24);
    *(v10 + 24) = v15;
    v16 = *(v11 + 40);
    *(v10 + 32) = *(v11 + 32);
    *(v10 + 40) = v16;
    v17 = v15;
  }

  return v3;
}

uint64_t destroy for AppIntentExecutingLocation(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<AppIntentExecutor?>.Content(*v4, *(v4 + 8), *(v4 + 16));
}

uint64_t initializeWithCopy for AppIntentExecutingLocation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  outlined copy of Environment<AppIntentExecutor?>.Content(*v8, v10, v11);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  v12 = *(v8 + 24);
  *(v7 + 24) = v12;
  v13 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v13;
  v14 = v12;

  return a1;
}