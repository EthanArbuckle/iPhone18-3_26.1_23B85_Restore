uint64_t closure #1 in ListPicker.body.getter(uint64_t a1)
{
  v2 = type metadata accessor for PickerContentView();
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v2, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v5, v2, WitnessTable);
  return (*(*(v2 - 8) + 8))(v5, v2);
}

uint64_t closure #2 in ListPicker.body.getter()
{
  KeyPath = swift_getKeyPath();
  v20 = 0;
  v1 = swift_getKeyPath();
  v19 = 0;
  v2 = swift_getKeyPath();
  v18 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  v17 = BYTE8(v21);
  v16 = BYTE8(v22);
  *&v8 = KeyPath;
  BYTE8(v8) = 0;
  *&v9 = v1;
  BYTE8(v9) = 0;
  v10 = v2;
  v11 = 0uLL;
  LOBYTE(v12) = 0;
  *(&v12 + 1) = v21;
  LOBYTE(v13) = BYTE8(v21);
  *(&v13 + 1) = v22;
  LOBYTE(v14) = BYTE8(v22);
  *(&v14 + 1) = v23;
  v15 = BYTE8(v23);
  v3 = type metadata accessor for PickerContentView();
  WitnessTable = swift_getWitnessTable();
  *&v21 = MEMORY[0x1E69E73E0];
  *(&v21 + 1) = v3;
  *&v22 = MEMORY[0x1E69E73F0];
  *(&v22 + 1) = WitnessTable;
  type metadata accessor for List();
  type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>();
  v5 = type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  swift_getWitnessTable();
  lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>, lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  v6 = swift_getWitnessTable();
  lazy protocol witness table accessor for type CheckmarkToggleStyle and conformance CheckmarkToggleStyle();
  View.toggleStyle<A>(_:)(&v8, v5, &type metadata for CheckmarkToggleStyle, v6);
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  return outlined destroy of CheckmarkToggleStyle(&v21);
}

uint64_t ListPicker.resolvedList<A>(list:)@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v24 = a5;
  v25 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = a2[3];
  v34 = a2[2];
  v35 = v13;
  v14 = a2[4];
  v22 = v34;
  v23 = v14;
  v15 = a2[5];
  v36 = a3;
  v37 = v14;
  v38 = v15;
  v39 = a4;
  v40 = v11;
  v26 = v34;
  v27 = v13;
  v28 = a3;
  v29 = v14;
  v30 = v15;
  v31 = a4;
  v21[1] = a4;
  v32 = v11;
  v33 = v5;
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v16 = type metadata accessor for ModifiedContent();
  v53 = a4;
  v54 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v51 = WitnessTable;
  v52 = v18;
  v49 = swift_getWitnessTable();
  v50 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v47 = swift_getWitnessTable();
  v48 = v18;
  v19 = swift_getWitnessTable();
  v41 = &type metadata for TextPlatformItemListFlags;
  v42 = v16;
  v43 = v22;
  v44 = &protocol witness table for TextPlatformItemListFlags;
  v45 = v19;
  v46 = v23;
  type metadata accessor for PlatformItemListReader();
  lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate();
  StaticIf<>.init(_:then:else:)();
  return (*(v25 + 8))(v11, a3);
}

uint64_t closure #1 in ListPicker.resolvedList<A>(list:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v12, v13, v14);
  static ViewBuilder.buildExpression<A>(_:)(v11, a4, a7);
  return (*(v9 + 8))(v11, a4);
}

uint64_t closure #2 in ListPicker.resolvedList<A>(list:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v42 = a8;
  v48 = a7;
  v47 = a4;
  v49 = a2;
  v46 = a1;
  v50 = a9;
  v44 = *(a5 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  v70 = a8;
  v71 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v16 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v68 = WitnessTable;
  v69 = v16;
  v66 = swift_getWitnessTable();
  v67 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v64 = swift_getWitnessTable();
  v65 = v16;
  v41 = v14;
  v38 = swift_getWitnessTable();
  v58 = &type metadata for TextPlatformItemListFlags;
  v59 = v14;
  v17 = a3;
  v60 = a3;
  v61 = &protocol witness table for TextPlatformItemListFlags;
  v62 = v38;
  v63 = a6;
  v39 = type metadata accessor for PlatformItemListReader();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v37 = &v37 - v22;
  v23 = v44;
  v24 = v43;
  (*(v44 + 16))(v43, v46, a5, v21);
  v25 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v26 = swift_allocObject();
  v27 = v47;
  v26[2] = v17;
  v26[3] = v27;
  v28 = a5;
  v26[4] = a5;
  v26[5] = a6;
  v29 = v48;
  v30 = v42;
  v26[6] = v48;
  v26[7] = v30;
  v31 = v26 + v25;
  v32 = v28;
  (*(v23 + 32))(v31, v24);
  v51 = v17;
  v52 = v27;
  v53 = v32;
  v54 = a6;
  v55 = v29;
  v56 = v30;
  v57 = v49;
  PlatformItemListReader.init(flags:content:source:)(partial apply for closure #1 in closure #2 in ListPicker.resolvedList<A>(list:), v26, v19);
  v33 = v37;
  v34 = v39;
  static ViewBuilder.buildExpression<A>(_:)(v19, v39, &protocol witness table for PlatformItemListReader<A, B, C>);
  v35 = *(v40 + 8);
  v35(v19, v34);
  static ViewBuilder.buildExpression<A>(_:)(v33, v34, &protocol witness table for PlatformItemListReader<A, B, C>);
  return v35(v33, v34);
}

uint64_t closure #1 in closure #2 in ListPicker.resolvedList<A>(list:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v36 = a2;
  v37 = a4;
  v38 = a5;
  v7 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for TransactionalPreferenceTransformModifier<NavigationTitleKey>, &type metadata for NavigationTitleKey, &protocol witness table for NavigationTitleKey, type metadata accessor for TransactionalPreferenceTransformModifier);
  v35 = a3;
  type metadata accessor for ModifiedContent();
  type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<ToolbarKey>, &type metadata for ToolbarKey, &protocol witness table for ToolbarKey, MEMORY[0x1E6980910]);
  v10 = type metadata accessor for ModifiedContent();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v33 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  PlatformItemList.mergedContentItem.getter(a1, v9);
  v20 = *v9;
  v21 = *v9;
  outlined destroy of PlatformItemList.Item(v9);
  if (v20)
  {
    v22 = [v21 string];

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v47[0] = v23;
  v47[1] = v25;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = v37;
  View.navigationTitle<A>(_:)(v47, v35, v37, v12);

  LOBYTE(v47[0]) = 1;
  v45 = v26;
  v46 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v28 = lazy protocol witness table accessor for type _PreferenceTransformModifier<ToolbarKey> and conformance _PreferenceTransformModifier<A>();
  v43 = WitnessTable;
  v44 = v28;
  v29 = swift_getWitnessTable();
  View.navigationBarTitleDisplayMode(_:)(v47, v10, v29, v16);
  (*(v34 + 8))(v12, v10);
  v41 = v29;
  v42 = &protocol witness table for TransactionalPreferenceTransformModifier<A>;
  v39 = swift_getWitnessTable();
  v40 = v28;
  v30 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v16, v13, v30);
  v31 = *(v14 + 8);
  v31(v16, v13);
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, v30);
  return (v31)(v19, v13);
}

uint64_t closure #2 in closure #2 in closure #1 in NavigationPickerButton.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v10, v11, v12);
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a5);
  return (*(v7 + 8))(v9, a2);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance ListPickerStyleIsGroupedPredicate()
{
  if ((static StyleContextAcceptsPredicate.evaluate(inputs:)() & 1) != 0 && (static Semantics.v4_4.getter(), (isLinkedOnOrAfter(_:)() & 1) == 0))
  {
    v0 = 1;
  }

  else
  {
    static Semantics.v4.getter();
    v0 = isLinkedOnOrAfter(_:)() ^ 1;
  }

  return v0 & 1;
}

uint64_t key path getter for EnvironmentValues.dismiss : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PresentationModeKey>, &type metadata for PresentationModeKey, &protocol witness table for PresentationModeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PresentationModeKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t type metadata completion function for NavigationPickerButton.DetailView()
{
  result = type metadata accessor for Binding();
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

uint64_t *initializeBufferWithCopyOfBuffer for NavigationPickerButton.DetailView(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v4 = *(a3 + 40);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v4 - 8);
  v9 = *(v8 + 80);
  v10 = ((v7 + 16) & ~v7) + *(v6 + 64) + v9;
  v11 = *(v8 + 64) + 7;
  v12 = (*(v8 + 80) | *(v6 + 80)) & 0x100000;
  v13 = *a2;
  *a1 = *a2;
  if ((v9 | v7) > 7 || v12 != 0 || ((v11 + (v10 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
  {
    a1 = (v13 + (((v9 | v7) & 0xF8 ^ 0x1F8) & ((v9 | v7) + 16)));
  }

  else
  {
    v16 = ~v9;
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v17 = *v18;
    v19 = *(v6 + 16);
    v26 = v4;

    v19(v17 + 1, v18 + 1, v5);
    (*(v8 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v26);
    v20 = (v11 + ((a1 + v10) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v11 + ((a2 + v10) & v16)) & 0xFFFFFFFFFFFFFFF8;
    v22 = *v21;
    v23 = *(v21 + 8);
    LOBYTE(v17) = *(v21 + 17);
    LOBYTE(v18) = *(v21 + 16);
    outlined copy of Environment<DismissAction>.Content(*v21, v23, v18, v17);
    *v20 = v22;
    *(v20 + 8) = v23;
    *(v20 + 16) = v18;
    *(v20 + 17) = v17;
  }

  return a1;
}

uint64_t destroy for NavigationPickerButton.DetailView(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 15;

  v5 = *(*(a2 + 32) - 8);
  v6 = v5 + 8;
  v7 = *(v5 + 80);
  (*(v5 + 8))(((v4 & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7);
  v8 = *(*(a2 + 40) - 8);
  v9 = v8 + 8;
  v10 = (*(v6 + 56) + a1 + *(v8 + 80) + ((v7 + 16) & ~v7)) & ~*(v8 + 80);
  (*(v8 + 8))(v10);
  v11 = (*(v9 + 56) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = *(v11 + 17);
  v15 = *(v11 + 16);

  return outlined consume of Environment<DismissAction>.Content(v12, v13, v15, v14);
}

void *initializeWithCopy for NavigationPickerButton.DetailView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(a3 + 32);
  v9 = *(*(v8 - 8) + 16);
  v10 = *(v8 - 8) + 16;
  v11 = *(*(v8 - 8) + 80);
  v12 = v6 + v11 + 8;
  v13 = v7 + v11 + 8;

  v9(v12 & ~v11, v13 & ~v11, v8);
  v14 = *(*(a3 + 40) - 8);
  v15 = v14 + 16;
  v16 = *(v14 + 80);
  v17 = ((v11 + 16) & ~v11) + *(v10 + 48) + v16;
  v18 = (a1 + v17) & ~v16;
  v19 = (a2 + v17) & ~v16;
  (*(v14 + 16))(v18, v19);
  v20 = *(v15 + 48) + 7;
  v21 = (v20 + v18) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v20 + v19) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  v24 = *(v22 + 8);
  LOBYTE(v15) = *(v22 + 17);
  LOBYTE(v8) = *(v22 + 16);
  outlined copy of Environment<DismissAction>.Content(*v22, v24, v8, v15);
  *v21 = v23;
  *(v21 + 8) = v24;
  *(v21 + 16) = v8;
  *(v21 + 17) = v15;
  return a1;
}

void *assignWithCopy for NavigationPickerButton.DetailView(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  (*(v8 + 24))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = *(v9 + 40);
  v12 = *(*(a3 + 40) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = ((v10 + 16) & ~v10) + v11 + v14;
  v16 = (a1 + v15) & ~v14;
  v17 = (a2 + v15) & ~v14;
  (*(v12 + 24))(v16, v17);
  v18 = *(v13 + 40) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(v13) = *(v20 + 17);
  LOBYTE(v6) = *(v20 + 16);
  outlined copy of Environment<DismissAction>.Content(*v20, v22, v6, v13);
  v23 = *v19;
  v24 = *(v19 + 8);
  v25 = *(v19 + 17);
  *v19 = v21;
  *(v19 + 8) = v22;
  v26 = *(v19 + 16);
  *(v19 + 16) = v6;
  *(v19 + 17) = v13;
  outlined consume of Environment<DismissAction>.Content(v23, v24, v26, v25);
  return a1;
}

void *initializeWithTake for NavigationPickerButton.DetailView(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 32;
  v10 = *(v8 + 80);
  (*(v8 + 32))((v6 + v10 + 8) & ~v10, (v7 + v10 + 8) & ~v10);
  v11 = *(v9 + 32);
  v12 = *(*(a3 + 40) - 8);
  v13 = v12 + 32;
  v14 = *(v12 + 80);
  v15 = ((v10 + 16) & ~v10) + v11 + v14;
  v16 = (a1 + v15) & ~v14;
  v17 = (a2 + v15) & ~v14;
  (*(v12 + 32))(v16, v17);
  v18 = *(v13 + 32) + 7;
  v19 = (v18 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v17) & 0xFFFFFFFFFFFFFFF8;
  v21 = *(v20 + 16);
  *v19 = *v20;
  *(v19 + 16) = v21;
  return a1;
}

void *assignWithTake for NavigationPickerButton.DetailView(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 32) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = *(*(a3 + 40) - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = ((v10 + 16) & ~v10) + *(v9 + 24) + v13;
  v15 = (a1 + v14) & ~v13;
  v16 = (a2 + v14) & ~v13;
  (*(v11 + 40))(v15, v16);
  v17 = *(v12 + 24) + 7;
  v18 = (v17 + v15) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 + v16) & 0xFFFFFFFFFFFFFFF8;
  v20 = *(v19 + 16);
  v21 = *(v19 + 17);
  v22 = *v18;
  v23 = *(v18 + 8);
  v24 = *(v18 + 17);
  *v18 = *v19;
  v25 = *(v18 + 16);
  *(v18 + 16) = v20;
  *(v18 + 17) = v21;
  outlined consume of Environment<DismissAction>.Content(v22, v23, v25, v24);
  return a1;
}

uint64_t getEnumTagSinglePayload for NavigationPickerButton.DetailView(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 32) - 8);
  v5 = *(v4 + 84);
  if (v5 <= 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
  }

  else
  {
    v6 = *(v4 + 84);
  }

  v7 = *(a3 + 40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v4 + 80);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = ((v10 + 16) & ~v10) + *(*(*(a3 + 32) - 8) + 64) + v11;
  if (v12 >= a2)
  {
    goto LABEL_31;
  }

  v14 = ((*(*(v7 - 8) + 64) + (v13 & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  v15 = (a2 - v12 + 0xFFFF) >> 16;
  if (v14 <= 3)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_31;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v14), !*(a1 + v14)))
  {
LABEL_31:
    if (v6 < v9)
    {
      return (*(v8 + 48))((a1 + v13) & ~v11, v9, v7);
    }

    v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v23 + v10 + 8) & ~v10);
    }

    v24 = *v23;
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = (v19 - 1) << (8 * v14);
  if (v14 <= 3)
  {
    v22 = *a1;
  }

  else
  {
    v21 = 0;
    v22 = *a1;
  }

  return v12 + (v22 | v21) + 1;
}

void storeEnumTagSinglePayload for NavigationPickerButton.DetailView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 32) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 40) - 8);
  if (v7 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  v10 = *(v8 + 84);
  v11 = *(v6 + 80);
  v12 = *(v8 + 80);
  if (v10 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v8 + 84);
  }

  v14 = ((v11 + 16) & ~v11) + *(*(*(a4 + 32) - 8) + 64);
  v15 = ((*(v8 + 64) + ((v14 + v12) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v13 >= a3)
  {
    v19 = 0;
    if (v13 >= a2)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v16 = (a3 - v13 + 0xFFFF) >> 16;
    if (v15 <= 3)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v13 >= a2)
    {
LABEL_20:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *&a1[v15] = 0;
      }

      else if (v19)
      {
        a1[v15] = 0;
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
      if (v9 >= v10)
      {
        if (v9 >= a2)
        {
          v26 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
          if ((v7 & 0x80000000) != 0)
          {
            v28 = *(v6 + 56);

            v28((v26 + v11 + 8) & ~v11);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v27 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v27 = a2 - 1;
            }

            *v26 = v27;
          }
        }

        else
        {
          if (v14 <= 3)
          {
            v23 = ~(-1 << (8 * v14));
          }

          else
          {
            v23 = -1;
          }

          if (v14)
          {
            v24 = v23 & (~v9 + a2);
            if (v14 <= 3)
            {
              v25 = v14;
            }

            else
            {
              v25 = 4;
            }

            bzero(a1, v14);
            if (v25 > 2)
            {
              if (v25 == 3)
              {
                *a1 = v24;
                a1[2] = BYTE2(v24);
              }

              else
              {
                *a1 = v24;
              }
            }

            else if (v25 == 1)
            {
              *a1 = v24;
            }

            else
            {
              *a1 = v24;
            }
          }
        }
      }

      else
      {
        v22 = *(v8 + 56);

        v22(&a1[v14 + v12] & ~v12);
      }

      return;
    }
  }

  v20 = ~v13 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v21 = HIWORD(v20) + 1;
  }

  else
  {
    v21 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v20;
    if (v19 > 1)
    {
LABEL_30:
      if (v19 == 2)
      {
        *&a1[v15] = v21;
      }

      else
      {
        *&a1[v15] = v21;
      }

      return;
    }
  }

  else
  {
    *a1 = v20;
    if (v19 > 1)
    {
      goto LABEL_30;
    }
  }

  if (v19)
  {
    a1[v15] = v21;
  }
}

uint64_t type metadata completion function for ListPicker()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Binding();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ListPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | *(v4 + 80) & 0xF8;
  if (v9 > 7 || ((*(v4 + 80) | *(v7 + 80)) & 0x100000) != 0 || ((-17 - v8) | v8) - *(v7 + 64) + ((-65 - ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) - (v8 | 7)) | v8 | 7) + 26 > 0x18)
  {
    v12 = *a2;
    *v3 = *a2;
    v3 = (v12 + (((v9 | 7) + 16) & ~(v9 | 7)));
  }

  else
  {
    (*(v4 + 16))(a1);
    v14 = v3 + v5;
    v15 = a2 + v5;
    v16 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    v18 = v17[3];
    v16[3] = v18;
    v16[4] = v17[4];
    (**(v18 - 8))(v16, v17);
    v19 = v17[5];
    v16[5] = v19;
    v16[6] = v17[6];
    v16[7] = v17[7];
    v20 = ((v14 + 71) & 0xFFFFFFFFFFFFFFF8);
    v21 = ((v15 + 71) & 0xFFFFFFFFFFFFFFF8);
    *v20 = *v21;
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v22 = *v23;
    v24 = *(v7 + 16);
    v25 = v19;

    v24(v22 + 1, v23 + 1, v6);
  }

  return v3;
}

uint64_t destroy for ListPicker(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = (a1 + *(v4 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1(v5);

  v6 = *(a2 + 24);
  v10 = *(v6 - 8);
  v7 = *(v10 + 80);

  v8 = *(v10 + 8);

  return v8((v7 + ((((v5 + (v7 | 7) + 64) & ~(v7 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7, v6);
}

uint64_t initializeWithCopy for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[3];
  v8[3] = v10;
  v8[4] = v9[4];
  (**(v10 - 8))(v8, v9);
  v11 = v9[5];
  v8[5] = v11;
  v8[6] = v9[6];
  v8[7] = v9[7];
  v12 = *(a3 + 24);
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 80);
  v16 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v8 + v15 + 64) & v16);
  v18 = ((v9 + v15 + 64) & v16);
  *v17 = *v18;
  v19 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v20 = ((v18 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v19 = *v20;
  v21 = v19 + v15 + 8;
  v22 = v20 + v15 + 8;
  v23 = v11;

  v14(v21 & ~v15, v22 & ~v15, v12);
  return a1;
}

uint64_t assignWithCopy for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  __swift_assign_boxed_opaque_existential_1(v8, v9);
  v10 = v9[5];
  v11 = v8[5];
  v8[5] = v10;
  v12 = v10;

  v8[6] = v9[6];

  v8[7] = v9[7];
  v13 = *(a3 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = v8 + v15 + 64;
  v17 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v18 = v9 + v15 + 64;
  v19 = (v18 & v17) + 15;
  *(v16 & v17) = *(v18 & v17);
  v20 = (v16 & v17) + 15;

  v20 &= 0xFFFFFFFFFFFFFFF8;
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v19;

  (*(v14 + 24))((v15 + 8 + v20) & ~v15, (v15 + 8 + v19) & ~v15, v13);
  return a1;
}

uint64_t initializeWithTake for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(v6 + 32) + 7;
  v8 = ((v7 + a1) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + a2) & 0xFFFFFFFFFFFFFFF8);
  v10 = v9[3];
  v12 = *v9;
  v11 = v9[1];
  v8[2] = v9[2];
  v8[3] = v10;
  *v8 = v12;
  v8[1] = v11;
  v13 = *(*(a3 + 24) - 8);
  v14 = *(v13 + 80);
  v15 = *(v13 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v16 = ((v9 + v14 + 64) & v15);
  v17 = ((v8 + v14 + 64) & v15);
  *v17 = *v16;
  v18 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v18 = *v19;
  (*(v13 + 32))((v18 + v14 + 8) & ~v14, (v19 + v14 + 8) & ~v14);
  return a1;
}

uint64_t assignWithTake for ListPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(v6 + 24) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
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
  v13 = *(a3 + 24);
  v14 = *(v13 - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v17 = ((v15 + 64 + v8) & v16);
  v18 = v15 + 64 + v9;
  v19 = (v18 & v16) + 15;
  *v17 = *(v18 & v16);

  v20 = ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 &= 0xFFFFFFFFFFFFFFF8;
  *v20 = *v19;

  (*(v14 + 40))((v20 + v15 + 8) & ~v15, (v15 + 8 + v19) & ~v15, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for ListPicker(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v5 = *(*(a3 + 24) - 8);
  v6 = *(v3 + 64);
  v7 = *(v5 + 80);
  if (*(v5 + 84) <= v4)
  {
    v8 = *(v3 + 84);
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v7 | 7;
  if (a2 <= v8)
  {
    goto LABEL_30;
  }

  v10 = *(v5 + 64) - ((-17 - v7) | v7) - ((-65 - (((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + v9)) | v9) - 2;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((a2 - v8 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v14 < 2)
    {
LABEL_30:
      if (v4 == v8)
      {
        return (*(v3 + 48))();
      }

      v18 = (a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v5 + 48))((v7 + ((((v18 + v9 + 64) & ~v9) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7);
      }

      v19 = *(v18 + 24);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_30;
  }

LABEL_17:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (*(v5 + 64) - ((-17 - v7) | v7) - ((-65 - (((v6 + 7) & 0xFFFFFFF8) + v9)) | v9) == 2)
  {
    v17 = 0;
  }

  else
  {
    if (v10 <= 3)
    {
      v16 = *(v5 + 64) - ((-17 - v7) | v7) - ((-65 - (((v6 + 7) & 0xFFFFFFF8) + v9)) | v9) - 2;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  return v8 + (v17 | v15) + 1;
}

double storeEnumTagSinglePayload for ListPicker(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v4 + 64);
  v8 = *(v6 + 80);
  if (*(v6 + 84) <= 0x7FFFFFFFu)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v6 + 84);
  }

  if (v5 <= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(v4 + 84);
  }

  v11 = -2 - (((-17 - v8) | v8) - *(v6 + 64)) - ((((-8 - v7) | 7) - v8 - 64) | v8 | 7);
  if (a3 > v10)
  {
    if (v11 <= 3)
    {
      v17 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
      if (HIWORD(v17))
      {
        v12 = 4;
      }

      else
      {
        if (v17 < 0x100)
        {
          v18 = 1;
        }

        else
        {
          v18 = 2;
        }

        if (v17 >= 2)
        {
          v12 = v18;
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

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v16 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v19 = v13 & ~(-1 << (8 * v11));
        v20 = a1;
        bzero(a1, v11);
        a1 = v20;
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *v20 = v19;
            if (v12 > 1)
            {
LABEL_52:
              if (v12 == 2)
              {
                *&a1[v11] = v16;
              }

              else
              {
                *&a1[v11] = v16;
              }

              return result;
            }
          }

          else
          {
            *v20 = v13;
            if (v12 > 1)
            {
              goto LABEL_52;
            }
          }

          goto LABEL_49;
        }

        *v20 = v19;
        v20[2] = BYTE2(v19);
      }

      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = a1;
      bzero(a1, v11);
      a1 = v14;
      *v14 = v13;
      v16 = 1;
      if (v12 > 1)
      {
        goto LABEL_52;
      }
    }

LABEL_49:
    if (v12)
    {
      a1[v11] = v16;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v5 >= v9)
  {
    v22 = *(v4 + 56);

    v22();
  }

  else
  {
    v21 = &a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8;
    if ((v10 & 0x80000000) != 0)
    {
      v23 = *(v6 + 56);

      v23((v8 + ((((v21 + (v8 | 7) + 64) & ~(v8 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8);
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *(v21 + 56) = 0;
      result = 0.0;
      *(v21 + 40) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 8) = 0u;
      *v21 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v21 + 24) = a2 - 1;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in NavigationPickerButton.DetailView.body.getter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = v1[9];
  v11 = *(type metadata accessor for NavigationPickerButton.DetailView() - 8);
  return closure #1 in NavigationPickerButton.DetailView.body.getter(a1, v1 + ((*(v11 + 80) + 80) & ~*(v11 + 80)), v3, v4, v5, v6, v7, v8, v9, v10);
}

void type metadata accessor for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>)
  {
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for ListStyleWriter<GroupedListStyle>, &type metadata for GroupedListStyle, &protocol witness table for GroupedListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>)
  {
    _s7SwiftUI4FontVSgMaTm_2(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyFormStyleContext>, &type metadata for AnyFormStyleContext, MEMORY[0x1E69808E8]);
    type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(255, &lazy cache variable for type metadata for ListStyleWriter<InsetGroupedListStyle>, &type metadata for InsetGroupedListStyle, &protocol witness table for InsetGroupedListStyle, type metadata accessor for ListStyleWriter);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<AnyFormStyleContext>, ListStyleWriter<InsetGroupedListStyle>, EmptyModifier>);
    }
  }
}

void type metadata accessor for _LabeledContentStyleModifier<AdaptiveLeadingTrailingLabeledContentStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<PresentationModeKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate()
{
  result = lazy protocol witness table cache variable for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate;
  if (!lazy protocol witness table cache variable for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListPickerStyleIsGroupedPredicate and conformance ListPickerStyleIsGroupedPredicate);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<ListPickerStyleIsGroupedPredicate, ListStyleWriter<GroupedListStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    _s7SwiftUI4FontVSgMaTm_2(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<AnyFormStyleContext>, &type metadata for AnyFormStyleContext, MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<AnyFormStyleContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

uint64_t destroy for TableRowView(uint64_t a1)
{
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  outlined consume of Environment<Selector?>.Content(*(a1 + 16), *(a1 + 24));
  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 123);
  if (v2 == 2)
  {

    if (*(a1 + 64))
    {
    }

    if (*(a1 + 120))
    {

      goto LABEL_13;
    }

    v3 = a1 + 80;
  }

  else if (v2 == 1)
  {

    if (*(a1 + 96))
    {
      goto LABEL_13;
    }

    v3 = a1 + 56;
  }

  else
  {
    if (*(a1 + 123))
    {
      goto LABEL_13;
    }

    v3 = a1 + 72;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
LABEL_13:
}

uint64_t initializeWithCopy for TableRowView(uint64_t a1, uint64_t a2)
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
  v9 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  v10 = *(a2 + 123);
  *(a1 + 48) = *(a2 + 48);
  if (v10 == 2)
  {
    v13 = *(a2 + 64);

    if (v13)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = v13;
      *(a1 + 72) = *(a2 + 72);

      LOBYTE(v13) = *(a2 + 120);
      if (v13)
      {
LABEL_7:
        *(a1 + 80) = *(a2 + 80);

LABEL_12:
        *(a1 + 120) = v13;
        *(a1 + 121) = *(a2 + 121);
        goto LABEL_13;
      }
    }

    else
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      v13 = *(a2 + 120);
      if (v13)
      {
        goto LABEL_7;
      }
    }

    v16 = *(a2 + 104);
    *(a1 + 104) = v16;
    (**(v16 - 8))(a1 + 80, a2 + 80);
    goto LABEL_12;
  }

  if (v10 == 1)
  {
    v11 = *(a2 + 96);

    if (v11)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 81) = *(a2 + 81);
    }

    else
    {
      v12 = *(a2 + 80);
      *(a1 + 80) = v12;
      (**(v12 - 8))(a1 + 56, a2 + 56);
      *(a1 + 96) = 0;
    }
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 96);
    *(a1 + 96) = v14;
    v15 = **(v14 - 8);

    v15(a1 + 72, a2 + 72, v14);
  }

LABEL_13:
  *(a1 + 123) = v10;
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t assignWithCopy for TableRowView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 32);
  v13 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  if (a1 != a2)
  {
    outlined destroy of TableRowView.Storage(a1 + 48);
    v16 = *(a2 + 123);
    *(a1 + 48) = *(a2 + 48);
    if (v16 != 2)
    {
      if (v16 == 1)
      {
        v17 = *(a2 + 96);

        if (v17)
        {
          v24 = *(a2 + 56);
          v25 = *(a2 + 72);
          *(a1 + 81) = *(a2 + 81);
          *(a1 + 72) = v25;
          *(a1 + 56) = v24;
        }

        else
        {
          v18 = *(a2 + 80);
          *(a1 + 80) = v18;
          *(a1 + 88) = *(a2 + 88);
          (**(v18 - 8))(a1 + 56, a2 + 56);
          *(a1 + 96) = 0;
        }
      }

      else
      {
        v21 = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 56) = v21;
        v22 = *(a2 + 96);
        *(a1 + 96) = v22;
        v23 = **(v22 - 8);

        v23(a1 + 72, a2 + 72, v22);
      }

      goto LABEL_14;
    }

    v19 = *(a2 + 64);

    if (v19)
    {
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);

      LOBYTE(v20) = *(a2 + 120);
      if (v20)
      {
LABEL_8:
        *(a1 + 80) = *(a2 + 80);

LABEL_13:
        *(a1 + 120) = v20;
        *(a1 + 121) = *(a2 + 121);
        *(a1 + 122) = *(a2 + 122);
LABEL_14:
        *(a1 + 123) = v16;
        goto LABEL_15;
      }
    }

    else
    {
      v26 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v26;
      v20 = *(a2 + 120);
      if (*(a2 + 120))
      {
        goto LABEL_8;
      }
    }

    v27 = *(a2 + 104);
    *(a1 + 104) = v27;
    *(a1 + 112) = *(a2 + 112);
    (**(v27 - 8))(a1 + 80, a2 + 80);
    goto LABEL_13;
  }

LABEL_15:
  *(a1 + 128) = *(a2 + 128);

  return a1;
}

uint64_t assignWithTake for TableRowView(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 24);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v8;
  outlined consume of Environment<Selector?>.Content(v9, v10);
  v11 = *(a2 + 40);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v11;
  outlined consume of Environment<Selector?>.Content(v12, v13);
  if (a1 != a2)
  {
    outlined destroy of TableRowView.Storage(a1 + 48);
    v14 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v14;
    *(a1 + 108) = *(a2 + 108);
    v15 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v15;
  }

  *(a1 + 128) = a2[16];

  return a1;
}

uint64_t getEnumTagSinglePayload for TableRowView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TableRowView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TableRowView.Storage(uint64_t a1)
{
  v2 = *(a1 + 75);
  if (v2 >= 3)
  {
    v2 = *a1 + 3;
  }

  if (v2 != 2)
  {
    if (v2 == 1)
    {

      if (*(a1 + 48))
      {
        return result;
      }

      v4 = a1 + 8;
    }

    else
    {

      v4 = a1 + 24;
    }

    return __swift_destroy_boxed_opaque_existential_1(v4);
  }

  if (*(a1 + 16))
  {
  }

  if ((*(a1 + 72) & 1) == 0)
  {
    v4 = a1 + 32;
    return __swift_destroy_boxed_opaque_existential_1(v4);
  }
}

uint64_t initializeWithCopy for TableRowView.Storage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 75);
  if (v4 >= 3)
  {
    v4 = *a2 + 3;
  }

  v5 = (a2 + 8);
  *a1 = *a2;
  v6 = (a1 + 8);
  if (v4 == 2)
  {
    v10 = *(a2 + 16);

    if (v10)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = v10;
      *(a1 + 24) = *(a2 + 24);

      v11 = *(a2 + 72);
      if (v11)
      {
LABEL_10:
        *(a1 + 32) = *(a2 + 32);

LABEL_15:
        *(a1 + 72) = v11;
        *(a1 + 73) = *(a2 + 73);
        v9 = 2;
        goto LABEL_16;
      }
    }

    else
    {
      *v6 = *v5;
      *(a1 + 24) = *(a2 + 24);
      v11 = *(a2 + 72);
      if (v11)
      {
        goto LABEL_10;
      }
    }

    v15 = *(a2 + 56);
    *(a1 + 56) = v15;
    (**(v15 - 8))(a1 + 32, a2 + 32);
    goto LABEL_15;
  }

  if (v4 == 1)
  {
    v7 = *(a2 + 48);

    if (v7)
    {
      v14 = *(a2 + 24);
      *v6 = *v5;
      *(a1 + 24) = v14;
      *(a1 + 33) = *(a2 + 33);
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 32) = v8;
      (**(v8 - 8))(a1 + 8, a2 + 8);
      *(a1 + 48) = 0;
    }

    v9 = 1;
  }

  else
  {
    *v6 = *v5;
    *(a1 + 16) = *(a2 + 16);
    v12 = *(a2 + 48);
    *(a1 + 48) = v12;
    v13 = **(v12 - 8);

    v13(a1 + 24, a2 + 24, v12);
    v9 = 0;
  }

LABEL_16:
  *(a1 + 75) = v9;
  return a1;
}

uint64_t assignWithCopy for TableRowView.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 75);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4 == 2)
    {

      if (*(a1 + 16))
      {
      }

      if (*(a1 + 72))
      {

        goto LABEL_15;
      }

      v5 = a1 + 32;
    }

    else if (v4 == 1)
    {

      if (*(a1 + 48))
      {
        goto LABEL_15;
      }

      v5 = a1 + 8;
    }

    else
    {

      v5 = a1 + 24;
    }

    __swift_destroy_boxed_opaque_existential_1(v5);
LABEL_15:
    v6 = *(a2 + 75);
    if (v6 >= 3)
    {
      v6 = *a2 + 3;
    }

    v7 = (a2 + 8);
    *a1 = *a2;
    v8 = (a1 + 8);
    if (v6 != 2)
    {
      if (v6 == 1)
      {
        v9 = *(a2 + 48);

        if (v9)
        {
          v17 = *v7;
          v18 = *(a2 + 24);
          *(a1 + 33) = *(a2 + 33);
          *v8 = v17;
          *(a1 + 24) = v18;
        }

        else
        {
          v10 = *(a2 + 32);
          *(a1 + 32) = v10;
          *(a1 + 40) = *(a2 + 40);
          (**(v10 - 8))(a1 + 8, a2 + 8);
          *(a1 + 48) = 0;
        }

        v11 = 1;
      }

      else
      {
        v14 = *v7;
        *(a1 + 16) = *(a2 + 16);
        *v8 = v14;
        v15 = *(a2 + 48);
        *(a1 + 48) = v15;
        v16 = **(v15 - 8);

        v16(a1 + 24, a2 + 24, v15);
        v11 = 0;
      }

      goto LABEL_30;
    }

    v12 = *(a2 + 16);

    if (v12)
    {
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);

      v13 = *(a2 + 72);
      if (v13)
      {
LABEL_24:
        *(a1 + 32) = *(a2 + 32);

LABEL_29:
        *(a1 + 72) = v13;
        *(a1 + 73) = *(a2 + 73);
        *(a1 + 74) = *(a2 + 74);
        v11 = 2;
LABEL_30:
        *(a1 + 75) = v11;
        return a1;
      }
    }

    else
    {
      v19 = *v7;
      *(a1 + 24) = *(a2 + 24);
      *v8 = v19;
      v13 = *(a2 + 72);
      if (v13)
      {
        goto LABEL_24;
      }
    }

    v20 = *(a2 + 56);
    *(a1 + 56) = v20;
    *(a1 + 64) = *(a2 + 64);
    (**(v20 - 8))(a1 + 32, a2 + 32);
    goto LABEL_29;
  }

  return a1;
}

uint64_t assignWithTake for TableRowView.Storage(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v4 = *(a1 + 75);
  if (v4 >= 3)
  {
    v4 = *a1 + 3;
  }

  if (v4 == 2)
  {

    if (*(a1 + 16))
    {
    }

    if ((*(a1 + 72) & 1) == 0)
    {
      v5 = a1 + 32;
      goto LABEL_14;
    }
  }

  else
  {
    if (v4 != 1)
    {

      v5 = a1 + 24;
      goto LABEL_14;
    }

    if (!*(a1 + 48))
    {
      v5 = a1 + 8;
LABEL_14:
      __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  v6 = *(a2 + 75);
  if (v6 >= 3)
  {
    v6 = *a2 + 3;
  }

  if (v6 == 2)
  {
    v8 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v8;
    *(a1 + 59) = *(a2 + 59);
    v9 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v9;
  }

  else if (v6 == 1)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    LOBYTE(v6) = 1;
  }

  else
  {
    LOBYTE(v6) = 0;
    v10 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v10;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  *(a1 + 75) = v6;
  return a1;
}

uint64_t getEnumTagSinglePayload for TableRowView.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 76))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 75);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TableRowView.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 60) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 76) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 76) = 0;
    }

    if (a2)
    {
      *(result + 75) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for TableRowView.Storage(uint64_t a1)
{
  result = *(a1 + 75);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TableRowView.Storage(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 59) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 75) = a2;
  return result;
}

uint64_t specialized View.accessibilityCombinedElement(options:ignoredTraits:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  type metadata accessor for Button<RotatingDisclosureIndicator>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v12);
  type metadata accessor for AccessibilityTableContext?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v7 = swift_allocObject();
  memcpy((v7 + 16), __src, 0x128uLL);

  AccessibilityTraitSet.init(traits:)();
  swift_beginAccess();
  result = closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v7 + 16, 0, v10);
  if (*(v7 + 136))
  {
    v9 = 0x4000000040;
  }

  else
  {
    v9 = *(v7 + 128) | 0x4000000040;
  }

  *(v7 + 128) = v9;
  *(v7 + 136) = 0;
  *a3 = a2;
  a3[1] = v7;
  a3[2] = v6;
  return result;
}

uint64_t specialized View.accessibilityCombinedElement(options:ignoredTraits:)@<X0>(char a1@<W0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  type metadata accessor for Button<RotatingDisclosureIndicator>(0, &lazy cache variable for type metadata for AccessibilityChildBehaviorBox<AccessibilityChildBehavior.Combine>, lazy protocol witness table accessor for type AccessibilityChildBehavior.Combine and conformance AccessibilityChildBehavior.Combine, &type metadata for AccessibilityChildBehavior.Combine, type metadata accessor for AccessibilityChildBehaviorBox);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  AccessibilityProperties.init(reserving:)();
  static AccessibilityAttachment.properties(_:)();
  outlined destroy of AccessibilityProperties(v14);
  type metadata accessor for AccessibilityTableContext?(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v9 = swift_allocObject();
  memcpy((v9 + 16), __src, 0x128uLL);

  AccessibilityTraitSet.init(traits:)();
  swift_beginAccess();
  result = closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v9 + 16, 0, v12);
  if (*(v9 + 136))
  {
    v11 = 0x4000000040;
  }

  else
  {
    v11 = *(v9 + 128) | 0x4000000040;
  }

  *(v9 + 128) = v11;
  *(v9 + 136) = 0;
  *a4 = a2;
  *(a4 + 8) = a3 & 1;
  *(a4 + 16) = v9;
  *(a4 + 24) = v8;
  return result;
}

uint64_t specialized View.tableColumnFrame(_:alignment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v7 = -INFINITY;
    v8 = -INFINITY;
    v9 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v9 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *a1;
  if (*(a1 + 8))
  {
    v8 = *(a1 + 16);
  }

LABEL_10:
  if (v9 > v8 || v8 > v7)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a4 + 56) = v16;
  *(a4 + 72) = v17;
  *(a4 + 88) = v18;
  *(a4 + 104) = v19;
  *(a4 + 8) = v13;
  *(a4 + 24) = v14;
  *a4 = a3;
  *(a4 + 40) = v15;
}

uint64_t specialized View.tableColumnFrame(_:alignment:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = -INFINITY;
    v7 = -INFINITY;
    v8 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

LABEL_10:
  if (v8 > v7 || v7 > v6)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = *(v3 + 80);
  *(a3 + 64) = *(v3 + 64);
  *(a3 + 80) = v11;
  *(a3 + 96) = *(v3 + 96);
  *(a3 + 112) = *(v3 + 112);
  v12 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v12;
  v13 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v13;
  v14 = v21;
  v15 = v22;
  *(a3 + 152) = v23;
  *(a3 + 136) = v15;
  *(a3 + 120) = v14;
  v16 = v24;
  v17 = v25;
  v18 = v26;
  *(a3 + 216) = v27;
  *(a3 + 200) = v18;
  *(a3 + 184) = v17;
  *(a3 + 168) = v16;
  return outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v3, v20, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<AnyView, _TraitWritingModifier<LayoutPriorityTraitKey>>, _ConditionalContent<Image, Image>?)>>, _EnvironmentKeyWritingModifier<Image.Scale>>, _PaddingLayout>);
}

{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = -INFINITY;
    v7 = -INFINITY;
    v8 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

LABEL_10:
  if (v8 > v7 || v7 > v6)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = *(v3 + 48);
  *(a3 + 32) = *(v3 + 32);
  *(a3 + 48) = v11;
  *(a3 + 64) = *(v3 + 64);
  v12 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v12;
  v13 = v22;
  *(a3 + 136) = v21;
  *(a3 + 152) = v13;
  v14 = v24;
  *(a3 + 168) = v23;
  *(a3 + 184) = v14;
  v15 = v19;
  *(a3 + 88) = v18;
  *(a3 + 80) = *(v3 + 80);
  *(a3 + 104) = v15;
  *(a3 + 120) = v20;
  return outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v3, v17, type metadata accessor for ModifiedContent<ModifiedContent<HStack<AnyView>, _DefaultForegroundStyleModifier<AnyShapeStyle>>, _PaddingLayout>);
}

__n128 specialized View.tableColumnFrame(_:alignment:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    static Alignment.leading.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (a2 != 1)
  {
    static Alignment.trailing.getter();
    if ((*(a1 + 32) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_6:
    v6 = -INFINITY;
    v7 = -INFINITY;
    v8 = -INFINITY;
    goto LABEL_10;
  }

  static Alignment.center.getter();
  if (*(a1 + 32))
  {
    goto LABEL_6;
  }

LABEL_8:
  v8 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *a1;
  if (*(a1 + 8))
  {
    v7 = *(a1 + 16);
  }

LABEL_10:
  if (v8 > v7 || v7 > v6)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v3, a3, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(0);
  v12 = (a3 + *(v11 + 36));
  v12[4] = v18;
  v12[5] = v19;
  v12[6] = v20;
  *v12 = v14;
  v12[1] = v15;
  result = v17;
  v12[2] = v16;
  v12[3] = v17;
  return result;
}

uint64_t closure #1 in TableRowView.expandButton(expanded:tinted:)(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    outlined copy of Binding<Int>?(result, a2);

    Transaction.subscript.setter();
    v2 = Transaction.current.getter();
    MEMORY[0x1EEE9AC00](v2);
    withTransaction<A>(_:_:)();
  }

  return result;
}

uint64_t TableRowView.itemView.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for <<opaque return type of View.onTapGesture(count:perform:)>>.0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>(0);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v69 - v11;
  type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TableRowView.Storage(v1 + 48, &v89);
  if (v94)
  {
    v74 = v5;
    if (v94 == 1)
    {
      v19 = v89;
      v79 = v90;
      v80[0] = *v91;
      *(v80 + 9) = *&v91[9];
      if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)))
      {
        _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v79, &v86, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
        if (BYTE8(v87[1]) == 255)
        {
          _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(&v86, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
          memset(v88, 0, 40);
          v88[40] = -1;
        }

        else
        {
          outlined init with copy of AccessibilityTableContext(&v86, v85);
          if (v85[40] == 2)
          {
            *v88 = *v85;
            *&v88[8] = 1;
            v88[40] = 2;
          }

          else
          {
            outlined init with copy of AccessibilityTableContext(&v86, v88);
            outlined destroy of AccessibilityTableContext(v85);
          }

          outlined destroy of AccessibilityTableContext(&v86);
        }
      }

      else
      {
        _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v79, v88, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      }

      memset(v85, 0, 40);
      v85[40] = -1;
      if (v88[40] == 255)
      {
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v88, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      }

      else
      {
        v86 = *v88;
        v87[0] = *&v88[16];
        *(v87 + 9) = *&v88[25];
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v85, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
        *v85 = v86;
        *&v85[16] = v87[0];
        *&v85[25] = *(v87 + 9);
      }

      v86 = *v85;
      v87[0] = *&v85[16];
      *(v87 + 9) = *&v85[25];
      specialized View.accessibilityCombinedElement(options:ignoredTraits:)(0, v19, v84);
      v66 = v84[0];
      v67 = v84[1];
      v68 = v84[2];
      if (BYTE8(v87[1]) == 255)
      {
        goto LABEL_32;
      }

      result = _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v86, v85, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      if (v85[40] != 255)
      {
        *v88 = *v85;
        *&v88[16] = *&v85[16];
        *&v88[25] = *&v85[25];
        swift_beginAccess();
        _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(v88, v83, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
        lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

        AccessibilityProperties.subscript.setter();
        swift_endAccess();
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v88, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

LABEL_32:

        outlined destroy of AccessibilityTableCellModifier<AnyView>(&v86);
        _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(&v79, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

        v88[0] = 1;
        *a1 = v66;
        *(a1 + 8) = v67;
        *(a1 + 16) = v68;
        *(a1 + 96) = 1;
        type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>.Storage, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F948]);
        return swift_storeEnumTagMultiPayload();
      }

      __break(1u);
    }

    else
    {
      v71 = v4;
      v43 = v89;
      v44 = *v91;
      v75 = *(&v90 + 1);
      v76 = v90;
      v72 = v93;
      LODWORD(v73) = v92;
      *v88 = *&v91[8];
      *&v88[16] = *&v91[24];
      *&v88[25] = *&v91[33];
      *v18 = static HorizontalAlignment.center.getter();
      *(v18 + 1) = 0;
      v18[16] = 0;
      if (specialized Environment.wrappedValue.getter(*(v1 + 16), *(v1 + 24)) == 2 || (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)) & 1) != 0 || v72 != 1)
      {
        if (v43)
        {
          v69 = v12;
          v70 = a1;
          v45 = v43;
          KeyPath = swift_getKeyPath();
          v47 = swift_getKeyPath();
          v48 = swift_getKeyPath();
          v83[0] = 0;
          LOBYTE(v84[0]) = 0;
          v83[48] = 0;
          *&v86 = KeyPath;
          BYTE8(v86) = 0;
          *&v87[0] = v47;
          BYTE8(v87[0]) = 0;
          *&v87[1] = v48;
          BYTE8(v87[1]) = 0;
          *&v87[2] = v45;
          WORD4(v87[2]) = v73;
          outlined init with copy of TableColumnCollection(v88, v85);
          v49 = swift_allocObject();
          v50 = *&v85[16];
          *(v49 + 16) = *v85;
          *(v49 + 32) = v50;
          *(v49 + 41) = *&v85[25];
          v51 = v76;
          v52 = v44;
          v53 = v75;
          *(v49 + 64) = v76;
          *(v49 + 72) = v53;
          *(v49 + 80) = v52;
          v73 = v45;
          swift_retain_n();
          outlined copy of Binding<[SwiftUIAnySortComparator]>?(v51, v53);
          type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>();
          lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
          v54 = v78;
          View.onTapGesture(count:perform:)();

          v79 = v86;
          v80[0] = v87[0];
          v80[1] = v87[1];
          *(&v80[1] + 10) = *(&v87[1] + 10);
          outlined destroy of TableColumnCollection.Entry(&v79, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>);
          if (specialized Environment.wrappedValue.getter(*v1, *(v1 + 8)))
          {

            LOBYTE(v55) = 0;
          }

          else
          {
            v62 = specialized Environment.wrappedValue.getter(*(v1 + 32), *(v1 + 40));

            v55 = v72 | ((v62 & 0x10000u) >> 16);
          }

          v63 = v69;
          a1 = v70;
          (*(v74 + 32))(v9, v54, v71);
          v9[*(v77 + 36)] = v55 & 1;
          outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v9, v63, type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>);
          outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v63, v15, type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>);
          type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>.Storage, MEMORY[0x1E697F948]);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
          (*(*(v64 - 8) + 56))(v15, 0, 1, v64);
        }

        else
        {
          type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
          (*(*(v61 - 8) + 56))(v15, 1, 1, v61);
        }
      }

      else
      {
        outlined init with copy of TableColumnCollection(v88, v80 + 8);
        v57 = v75;
        v56 = v76;
        *&v79 = v76;
        *(&v79 + 1) = v75;
        *&v80[0] = v44;
        BYTE1(v80[3]) = 0;
        BYTE2(v80[3]) = v73;
        v58 = v80[2];
        *(v15 + 2) = v80[1];
        *(v15 + 3) = v58;
        *(v15 + 63) = *(&v80[2] + 15);
        v59 = v80[0];
        *v15 = v79;
        *(v15 + 1) = v59;
        type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>.Storage, MEMORY[0x1E697F948]);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
        (*(*(v60 - 8) + 56))(v15, 0, 1, v60);
        outlined copy of Binding<[SwiftUIAnySortComparator]>?(v56, v57);
      }

      type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?);
      outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v15, &v18[*(v65 + 44)], type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?);
      outlined consume of Binding<[A1]>?<A, B, C><A1>(v76, v75);

      outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v18, a1, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>);
      type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>.Storage, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F948]);
      swift_storeEnumTagMultiPayload();
      return outlined destroy of TableColumnCollection(v88);
    }
  }

  else
  {
    v20 = v89;
    v77 = v90;
    LODWORD(v76) = BYTE8(v90);
    outlined init with take of Any(v91, &v86);
    *v85 = *(v1 + 128);
    memset(v88, 0, 17);
    v21 = v1;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v22 = v79;
    v23 = v80[0];
    *v88 = *(v1 + 128);
    *v85 = 0;
    ViewTraitCollection.value<A>(for:defaultValue:)();
    v24 = v79;
    v78 = static VerticalAlignment.center.getter();
    v83[0] = 1;
    if (specialized Environment.wrappedValue.getter(*v21, *(v21 + 8)))
    {
      v25 = 1;
    }

    else
    {
      v25 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v26 = specialized Collection.prefix(_:)(v25, v20);
    v28 = v27;
    v30 = v29;
    v32 = v31;
    *v88 = v26;
    *&v88[8] = v27;
    *&v88[16] = v29;
    *&v88[24] = v31;
    outlined init with copy of Any(&v86, v85);
    outlined init with copy of TableRowView(v21, &v79);
    v33 = swift_allocObject();
    *(v33 + 16) = v26;
    *(v33 + 24) = v28;
    *(v33 + 32) = v30;
    *(v33 + 40) = v32;
    outlined init with take of Any(v85, (v33 + 48));
    *(v33 + 80) = v24;
    *(v33 + 88) = v77;
    *(v33 + 96) = v76;
    *(v33 + 104) = v22;
    *(v33 + 120) = v23;
    v34 = v80[6];
    *(v33 + 224) = v80[5];
    *(v33 + 240) = v34;
    *(v33 + 256) = v81;
    v35 = v80[2];
    *(v33 + 160) = v80[1];
    *(v33 + 176) = v35;
    v36 = v80[4];
    *(v33 + 192) = v80[3];
    *(v33 + 208) = v36;
    v37 = v80[0];
    *(v33 + 128) = v79;
    *(v33 + 144) = v37;
    type metadata accessor for ArraySlice<TableCellFormula>(0);
    type metadata accessor for UUID();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(0);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ArraySlice<TableCellFormula> and conformance ArraySlice<A>, type metadata accessor for ArraySlice<TableCellFormula>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TableCellFormula and conformance TableCellFormula, type metadata accessor for TableCellFormula);
    swift_unknownObjectRetain();
    ForEach<>.init(_:content:)();
    *(v82 + 7) = v79;
    *(&v82[1] + 7) = v80[0];
    *(&v82[2] + 7) = v80[1];
    *(&v82[3] + 7) = v80[2];
    *(&v82[4] + 7) = *&v80[3];
    v38 = v83[0];
    v88[0] = 0;
    *a1 = v78;
    *(a1 + 8) = 0;
    *(a1 + 16) = v38;
    v39 = v82[1];
    *(a1 + 17) = v82[0];
    v40 = v82[2];
    v41 = v82[3];
    *(a1 + 80) = *(&v82[3] + 15);
    *(a1 + 65) = v41;
    *(a1 + 49) = v40;
    *(a1 + 33) = v39;
    *(a1 + 96) = 0;
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>.Storage, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F948]);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_1(&v86);
  }

  return result;
}

uint64_t TableRowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>();
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModifier<ZStack<Modi(0);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi(0);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v53 - v14;
  v67[0] = *(v1 + 128);
  v15 = v67[0];
  v68 = 0uLL;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v16 = v74;
  v67[0] = v15;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  ViewTraitCollection.value<A>(for:defaultValue:)();
  v84[0] = v68;
  v84[1] = v69;
  v84[2] = v70;
  v84[3] = v71;
  outlined destroy of TableRowSwipeActionsTraitKey.Storage(v84);
  v85 = v74;
  v86 = v75;
  v87 = v76;
  v88 = v77;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>();
  TableRowView.itemView.getter(&v4[*(v17 + 44)]);
  v18 = *v1;
  v58 = v1;
  v19 = specialized Environment.wrappedValue.getter(v18, *(v1 + 8));
  KeyPath = swift_getKeyPath();
  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v4, v8, type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>);
  v21 = &v8[*(v6 + 44)];
  *v21 = KeyPath;
  *(v21 + 1) = (v19 & 1) == 0;
  v21[16] = v19 & 1;
  if (v16)
  {
    v22 = *(&v16 + 1) == 0;

    if (*(&v16 + 1))
    {
    }

    v23 = static Alignment.center.getter();
    v25 = v24;

    v57 = *(&v16 + 1);

    v26 = *(&v16 + 1);
  }

  else
  {
    v22 = 1;
    v23 = static Alignment.center.getter();
    v25 = v27;
    v57 = *(&v16 + 1);
    v26 = 0;
  }

  v28 = swift_getKeyPath();
  v83 = 0;
  LODWORD(v68) = 0;
  *(&v68 + 1) = v28;
  LOBYTE(v69) = 0;
  *(&v69 + 1) = *v82;
  DWORD1(v69) = *&v82[3];
  *(&v69 + 1) = v23;
  *&v70 = v25;
  *(&v70 + 1) = v16;
  *&v71 = v26;
  BYTE8(v71) = v22;
  *(&v71 + 9) = *v81;
  HIDWORD(v71) = *&v81[3];
  v72 = 0uLL;
  v73 = -2;
  v29 = v8;
  v30 = v61;
  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v29, v61, type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>);
  v31 = v30 + *(v54 + 36);
  v32 = v71;
  *(v31 + 32) = v70;
  *(v31 + 48) = v32;
  *(v31 + 64) = v72;
  *(v31 + 80) = v73;
  v33 = v69;
  *v31 = v68;
  *(v31 + 16) = v33;
  LODWORD(v74) = 0;
  *(&v74 + 1) = v28;
  LOBYTE(v75) = 0;
  DWORD1(v75) = *&v82[3];
  *(&v75 + 1) = *v82;
  *(&v75 + 1) = v23;
  *&v76 = v25;
  *(&v76 + 1) = v16;
  *&v77 = v26;
  BYTE8(v77) = v22;
  *(&v77 + 9) = *v81;
  HIDWORD(v77) = *&v81[3];
  v78 = 0;
  v79 = 0;
  v80 = -2;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(&v68, v67, type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>);
  outlined destroy of TableColumnCollection.Entry(&v74, type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>);
  v34 = *(&v86 + 1);
  if (*(&v86 + 1))
  {
    v35 = *(&v85 + 1);
    v36 = v85 & 1;
    v66 = BYTE1(v86) & 1;
    v37 = v86 | ((BYTE1(v86) & 1) << 8);
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v35 = 0;
    v38 = 0;
    v36 = 0;
    v37 = 0;
  }

  v39 = v59;
  v40 = v62;
  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v61, v62, type metadata accessor for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModifier<ZStack<Modi);
  v41 = v40 + *(v55 + 36);
  *v41 = v34;
  *(v41 + 8) = v36;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v38;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  *(v41 + 72) = 0u;
  *(v41 + 88) = 0u;
  *(v41 + 104) = 0u;
  v42 = *(&v88 + 1);
  if (*(&v88 + 1))
  {
    v43 = *(&v87 + 1);
    v65 = BYTE1(v88) & 1;
    v44 = v87 & 1 | 0x100;
    v45 = v88 | ((BYTE1(v88) & 1) << 8);
    v46 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v43 = 0;
    v46 = 0;
    v44 = 0;
    v45 = 0;
  }

  outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(v62, v39, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi);
  v47 = v39 + *(v56 + 36);
  *v47 = v42;
  *(v47 + 8) = v44;
  *(v47 + 16) = v43;
  *(v47 + 24) = v45;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0u;
  v64[0] = *(v58 + 128);
  v48 = one-time initialization token for defaultValue;

  if (v48 != -1)
  {
    swift_once();
  }

  ViewTraitCollection.value<A>(for:defaultValue:)();
  v64[3] = &type metadata for DropConfigurationDelegate;
  v64[4] = &protocol witness table for DropConfigurationDelegate;
  v64[0] = swift_allocObject();
  _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(v67, v64[0] + 16, &lazy cache variable for type metadata for DropOntoConfiguration?, &type metadata for DropOntoConfiguration);
  outlined init with copy of _Benchmark(v64, v63);
  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifie();
  v50 = v60;
  v51 = v60 + *(v49 + 36);
  *(v51 + 32) = 0;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  outlined destroy of TableColumnCollection.Entry(v51, type metadata accessor for DropDelegate?);
  outlined init with take of ScrollEnvironmentTransform(v63, v51);
  sub_18C0F69B0(v39, v50);
  __swift_destroy_boxed_opaque_existential_1(v64);
  outlined destroy of TableRowSwipeActionsTraitKey.Storage(&v85);
  outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v16);
  _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v67, &lazy cache variable for type metadata for DropOntoConfiguration?, &type metadata for DropOntoConfiguration);
  return sub_18C0F6A58(v39);
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for TableCellFormula();
    return a2;
  }

  return result;
}

uint64_t closure #1 in closure #1 in TableRowView.rowView(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, __int128 a9, char a10)
{
  LODWORD(v155) = a7;
  v141 = a6;
  v154 = a5;
  v164 = a4;
  v167 = a3;
  v145 = a2;
  v151 = a8;
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>(0);
  v147 = *(v11 - 8);
  v148 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v140 = (&v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
  v137 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v139 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v138 = &v136 - v16;
  type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v149 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v159 = &v136 - v20;
  type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>(0);
  v150 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v160 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v142 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (UUID?, UUID?)();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v153 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v136 - v30;
  type metadata accessor for UUID?();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v157 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v163 = &v136 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v156 = &v136 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v143 = &v136 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v136 - v41;
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v136 - v45;
  v47 = v24[2];
  v168 = a1;
  v165 = v47;
  v166 = v24 + 2;
  (v47)(&v136 - v45, a1, v23, v44);
  v48 = v24[7];
  v49 = 1;
  result = (v48)(v46, 0, 1, v23);
  v161 = v164 >> 1;
  v162 = v24 + 7;
  if (v164 >> 1 != v167)
  {
    if ((v164 >> 1) <= v167)
    {
      __break(1u);
      goto LABEL_37;
    }

    v51 = type metadata accessor for TableCellFormula();
    v165(v42, v145 + *(*(v51 - 8) + 72) * v167, v23);
    v49 = 0;
  }

  v158 = v48;
  v48(v42, v49, 1, v23);
  v152 = v27;
  v52 = *(v27 + 48);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v46, v31, type metadata accessor for UUID?);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v42, &v31[v52], type metadata accessor for UUID?);
  v146 = v24;
  v53 = v24[6];
  v54 = v53(v31, 1, v23);
  v144 = v53;
  if (v54 == 1)
  {
    v55 = type metadata accessor for UUID?;
    outlined destroy of TableColumnCollection.Entry(v42, type metadata accessor for UUID?);
    outlined destroy of TableColumnCollection.Entry(v46, type metadata accessor for UUID?);
    if (v53(&v31[v52], 1, v23) == 1)
    {
      v56 = -1;
    }

    else
    {
      v55 = type metadata accessor for (UUID?, UUID?);
      v56 = 0;
    }

    LODWORD(v164) = v56;
  }

  else
  {
    v57 = v143;
    outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v31, v143, type metadata accessor for UUID?);
    if (v53(&v31[v52], 1, v23) == 1)
    {
      outlined destroy of TableColumnCollection.Entry(v42, type metadata accessor for UUID?);
      outlined destroy of TableColumnCollection.Entry(v46, type metadata accessor for UUID?);
      (v146[1])(v57, v23);
      LODWORD(v164) = 0;
      v55 = type metadata accessor for (UUID?, UUID?);
    }

    else
    {
      v58 = v57;
      v59 = v146;
      v60 = v142;
      (v146[4])(v142, &v31[v52], v23);
      lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      LODWORD(v164) = dispatch thunk of static Equatable.== infix(_:_:)();
      v61 = v59[1];
      v61(v60, v23);
      v55 = type metadata accessor for UUID?;
      outlined destroy of TableColumnCollection.Entry(v42, type metadata accessor for UUID?);
      outlined destroy of TableColumnCollection.Entry(v46, type metadata accessor for UUID?);
      v61(v58, v23);
    }
  }

  v62 = v163;
  outlined destroy of TableColumnCollection.Entry(v31, v55);
  v63 = v156;
  v165(v156, v168, v23);
  v64 = 1;
  v65 = v158;
  result = (v158)(v63, 0, 1, v23);
  v66 = v157;
  v67 = v152;
  if (v161 != v167)
  {
    if (v161 > v167)
    {
      v68 = v161 - 1;
      v69 = type metadata accessor for TableCellFormula();
      v165(v62, v145 + *(*(v69 - 8) + 72) * v68, v23);
      v64 = 0;
      v65 = v158;
      goto LABEL_15;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_15:
  v65(v62, v64, 1, v23);
  v70 = *(v67 + 48);
  v71 = v153;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v63, v153, type metadata accessor for UUID?);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v62, v71 + v70, type metadata accessor for UUID?);
  v72 = v144;
  if (v144(v71, 1, v23) == 1)
  {
    outlined destroy of TableColumnCollection.Entry(v62, type metadata accessor for UUID?);
    outlined destroy of TableColumnCollection.Entry(v63, type metadata accessor for UUID?);
    v73 = v72(v71 + v70, 1, v23);
    v74 = v160;
    v75 = v168;
    if (v73 == 1)
    {
      outlined destroy of TableColumnCollection.Entry(v71, type metadata accessor for UUID?);
      LODWORD(v153) = 0;
      v76 = v155;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v77 = v66;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v71, v66, type metadata accessor for UUID?);
  if (v72(v71 + v70, 1, v23) == 1)
  {
    outlined destroy of TableColumnCollection.Entry(v163, type metadata accessor for UUID?);
    outlined destroy of TableColumnCollection.Entry(v63, type metadata accessor for UUID?);
    (v146[1])(v66, v23);
    v74 = v160;
    v75 = v168;
LABEL_20:
    outlined destroy of TableColumnCollection.Entry(v71, type metadata accessor for (UUID?, UUID?));
    LODWORD(v153) = 1;
    v76 = v155;
    goto LABEL_22;
  }

  v78 = v146;
  v79 = v63;
  v80 = v142;
  (v146[4])(v142, v71 + v70, v23);
  lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v81 = dispatch thunk of static Equatable.== infix(_:_:)();
  v82 = v78[1];
  v82(v80, v23);
  outlined destroy of TableColumnCollection.Entry(v163, type metadata accessor for UUID?);
  outlined destroy of TableColumnCollection.Entry(v79, type metadata accessor for UUID?);
  v82(v77, v23);
  outlined destroy of TableColumnCollection.Entry(v71, type metadata accessor for UUID?);
  LODWORD(v153) = v81 ^ 1;
  v74 = v160;
  v76 = v155;
  v75 = v168;
LABEL_22:
  v83 = type metadata accessor for TableCellFormula();
  v84 = (*(v75 + *(v83 + 36)))(v154);
  *v74 = static VerticalAlignment.center.getter();
  *(v74 + 8) = 0;
  *(v74 + 16) = 1;
  if (v164)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    LODWORD(v163) = 0;
    v165 = v179;
    v161 = v183;
    v162 = v181;
    v176[0] = 1;
    LOBYTE(v170) = v180;
    v169[0] = v182;
    v156 = 1;
    v157 = v180;
    v158 = v184;
    v85 = v182;
    LOBYTE(v177) = 0;
  }

  else
  {
    v165 = 0;
    v161 = 0;
    v162 = 0;
    v157 = 0;
    v158 = 0;
    v85 = 0;
    v156 = 0;
    LODWORD(v163) = 1;
  }

  v86 = (v75 + *(v83 + 40));
  v87 = *v86;
  v88 = *(v86 + 8);
  memset(v176, 0, 40);
  v176[40] = -1;
  if ((v76 & 1) == 0 && (v88 & 1) == 0)
  {
    _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v176, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
    *v176 = v141;
    *&v176[8] = v87;
    v176[40] = 1;
  }

  v177 = *v176;
  *v178 = *&v176[16];
  *&v178[9] = *&v176[25];
  v167 = v84;
  specialized View.accessibilityCombinedElement(options:ignoredTraits:)(0, v84, v164 & 1, &v172);
  v89 = v172;
  LODWORD(v164) = v173;
  v91 = v174;
  v90 = v175;
  v166 = v83;
  if (v178[24] == 255)
  {
    goto LABEL_31;
  }

  result = _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v177, &v170, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  if (BYTE8(v171[1]) == 255)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  *v176 = v170;
  *&v176[16] = v171[0];
  *&v176[25] = *(v171 + 9);
  swift_beginAccess();
  _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(v176, v169, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
  lazy protocol witness table accessor for type AccessibilityProperties.TableContextKey and conformance AccessibilityProperties.TableContextKey();

  AccessibilityProperties.subscript.setter();
  swift_endAccess();
  _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v176, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);

LABEL_31:
  v155 = v85;

  outlined destroy of TableColumnCollection.Entry(&v177, type metadata accessor for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>);
  v154 = v90;

  v92 = 1;
  if (!(v153 & 1 | (*(&a9 + 1) == 0)))
  {
    v93 = swift_allocObject();
    *(v93 + 16) = a9;
    *(v93 + 32) = a10;
    v153 = v89;
    v94 = v138;
    *v138 = 4;
    type metadata accessor for Button<RotatingDisclosureIndicator>(0, &lazy cache variable for type metadata for Button<RotatingDisclosureIndicator>, lazy protocol witness table accessor for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator, &type metadata for RotatingDisclosureIndicator, type metadata accessor for Button);
    v96 = v95;
    v97 = (v94 + *(v95 + 36));
    *v97 = partial apply for closure #1 in TableRowView.expandButton(expanded:tinted:);
    v97[1] = v93;
    v74 = v160;
    type metadata accessor for ButtonAction();
    swift_storeEnumTagMultiPayload();
    v98 = (v94 + *(v96 + 40));
    v177 = a9;
    v178[0] = a10 & 1;
    outlined copy of Binding<Int>?(a9, *(&a9 + 1));
    type metadata accessor for AccessibilityTableContext?(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v100 = v99;

    MEMORY[0x18D00ACC0](v176, v100);
    v101 = v176[0];
    *v98 = 1;
    v98[1] = v101;
    KeyPath = swift_getKeyPath();
    v103 = swift_getKeyPath();
    v104 = v94 + *(v137 + 36);
    *v104 = KeyPath;
    *(v104 + 8) = 0;
    *(v104 + 16) = v103;
    *(v104 + 24) = 0;
    v105 = v139;
    outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v94, v139, type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    v106 = v140;
    *v140 = 0;
    *(v106 + 8) = 1;
    type metadata accessor for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)();
    outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v105, v106 + *(v107 + 48), type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);

    v108 = v94;
    v89 = v153;
    outlined destroy of TableColumnCollection.Entry(v108, type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    outlined destroy of TableColumnCollection.Entry(v105, type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    outlined init with take of TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>(v106, v159, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>);
    v92 = 0;
  }

  v109 = v159;
  (*(v147 + 56))(v159, v92, 1, v148);
  type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(0, &lazy cache variable for type metadata for _VariadicView.Tree<_HStackLayout, TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>);
  v111 = v74 + *(v110 + 44);
  v112 = v149;
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v109, v149, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
  v113 = v156;
  *v111 = 0;
  *(v111 + 8) = v113;
  v114 = v157;
  *(v111 + 16) = v165;
  *(v111 + 24) = v114;
  v116 = v154;
  v115 = v155;
  *(v111 + 32) = v162;
  *(v111 + 40) = v115;
  v117 = v158;
  *(v111 + 48) = v161;
  *(v111 + 56) = v117;
  *(v111 + 64) = v163;
  *(v111 + 72) = v89;
  *(v111 + 80) = v164;
  *(v111 + 88) = v91;
  *(v111 + 96) = v116;
  type metadata accessor for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)(0, &lazy cache variable for type metadata for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?), type metadata accessor for ModifiedContent<Spacer, _FrameLayout>?, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
  outlined init with copy of ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>(v112, v111 + *(v118 + 64), type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);

  outlined destroy of TableColumnCollection.Entry(v109, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
  outlined destroy of TableColumnCollection.Entry(v112, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);

  if (one-time initialization token for tableColumnContentPadding != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v120 = v119;
  v122 = v121;
  v124 = v123;
  v126 = v125;
  type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>(0);
  v128 = v74 + *(v127 + 36);
  *v128 = 2;
  *(v128 + 8) = v120;
  *(v128 + 16) = v122;
  *(v128 + 24) = v124;
  *(v128 + 32) = v126;
  *(v128 + 40) = 0;
  EdgeInsets.init(_all:)();
  v129 = v74 + *(v150 + 36);
  *v129 = 8;
  *(v129 + 8) = v130;
  *(v129 + 16) = v131;
  *(v129 + 24) = v132;
  *(v129 + 32) = v133;
  *(v129 + 40) = 0;
  v134 = (v168 + *(v166 + 7));
  v178[16] = *(v134 + 32);
  v135 = v134[1];
  v177 = *v134;
  *v178 = v135;
  specialized View.tableColumnFrame(_:alignment:)(&v177, *(v168 + *(v166 + 8)), v151);

  return outlined destroy of TableColumnCollection.Entry(v74, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>);
}

uint64_t closure #1 in closure #1 in TableRowView.headerView(_:_:_:_:_:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TableColumnCollection.Entry?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  specialized Collection.first.getter(v9);
  v10 = type metadata accessor for TableColumnCollection.Entry(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of TableColumnCollection.Entry(v9, type metadata accessor for TableColumnCollection.Entry?);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(&v9[*(v10 + 44)], &v12, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
    outlined destroy of TableColumnCollection.Entry(v9, type metadata accessor for TableColumnCollection.Entry);
    if (*(&v13 + 1))
    {
      v20[4] = v16;
      v20[5] = v17;
      v20[6] = v18;
      v21 = v19;
      v20[0] = v12;
      v20[1] = v13;
      v20[2] = v14;
      v20[3] = v15;
      sort(_:comparator:)(a2, a3, a4, v20);
      return outlined destroy of SwiftUIAnySortComparator(v20);
    }
  }

  return _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(&v12, &lazy cache variable for type metadata for SwiftUIAnySortComparator?, &type metadata for SwiftUIAnySortComparator);
}

uint64_t TableRowView.reuseIdentifier.getter()
{
  outlined init with copy of TableRowView.Storage(v0 + 48, &v2);
  if (v6)
  {
    if (v6 == 1)
    {

      _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(v3, &lazy cache variable for type metadata for AccessibilityTableContext?, &type metadata for AccessibilityTableContext);
      return 1;
    }

    else
    {

      outlined consume of Binding<[A1]>?<A, B, C><A1>(v3[0], v3[1]);
      outlined destroy of TableColumnCollection(&v5);
      return 2;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(&v4);
    return 0;
  }
}

unint64_t instantiation function for generic protocol witness table for TableRowView(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TableRowView and conformance TableRowView();
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>()
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>)
  {
    type metadata accessor for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>();
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, MEMORY[0x1E6981910], &type metadata for AccessibilityAttachmentModifier, MEMORY[0x1E697E830]);
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>);
    }
  }
}

void type metadata accessor for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>()
{
  if (!lazy cache variable for type metadata for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>)
  {
    type metadata accessor for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>();
    lazy protocol witness table accessor for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>, type metadata accessor for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>);
    }
  }
}

void type metadata accessor for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>()
{
  if (!lazy cache variable for type metadata for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>)
  {
    type metadata accessor for ArraySlice<TableCellFormula>(255);
    type metadata accessor for UUID();
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(255);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ArraySlice<TableCellFormula> and conformance ArraySlice<A>, type metadata accessor for ArraySlice<TableCellFormula>);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v0 = type metadata accessor for ForEach();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>);
    }
  }
}

void type metadata accessor for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>()
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>)
  {
    type metadata accessor for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)(255, &lazy cache variable for type metadata for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?), type metadata accessor for ModifiedContent<Spacer, _FrameLayout>?, type metadata accessor for ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, type metadata accessor for TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?);
    v0 = type metadata accessor for TupleView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>);
    }
  }
}

void type metadata accessor for ModifiedContent<Spacer, _FrameLayout>?()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Spacer, _FrameLayout>?)
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<Spacer, _FrameLayout>, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Spacer, _FrameLayout>?);
    }
  }
}

void type metadata accessor for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>()
{
  if (!lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>)
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for ModifiedContent<AnyView, TableRowForegroundStyleModifier>, MEMORY[0x1E6981910], &type metadata for TableRowForegroundStyleModifier, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, TableRowForegroundStyleModifier>, &type metadata for TableRowForegroundStyleModifier);
    v0 = type metadata accessor for _UnaryViewAdaptor();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>);
    }
  }
}

void type metadata accessor for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)()
{
  if (!lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>))
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)
  {
    type metadata accessor for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>();
    type metadata accessor for Button<RotatingDisclosureIndicator>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>, lazy protocol witness table accessor for type BorderlessButtonStyle and conformance BorderlessButtonStyle, &type metadata for BorderlessButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>)
  {
    type metadata accessor for Button<RotatingDisclosureIndicator>(255, &lazy cache variable for type metadata for Button<RotatingDisclosureIndicator>, lazy protocol witness table accessor for type RotatingDisclosureIndicator and conformance RotatingDisclosureIndicator, &type metadata for RotatingDisclosureIndicator, type metadata accessor for Button);
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>()
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>)
  {
    type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?();
    lazy protocol witness table accessor for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>(&lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>? and conformance <A> A?, type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?, lazy protocol witness table accessor for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>);
    }
  }
}

void type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?)
  {
    type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(255, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?);
    }
  }
}

void type metadata accessor for <<opaque return type of View.onTapGesture(count:perform:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.onTapGesture(count:perform:)>>.0)
  {
    type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>();
    lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.onTapGesture(count:perform:)>>.0);
    }
  }
}

void type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>)
  {
    type metadata accessor for Button<RotatingDisclosureIndicator>(255, &lazy cache variable for type metadata for _ContentShapeModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E697FD48]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView()
{
  result = lazy protocol witness table cache variable for type TableSectionHeaderView and conformance TableSectionHeaderView;
  if (!lazy protocol witness table cache variable for type TableSectionHeaderView and conformance TableSectionHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableSectionHeaderView and conformance TableSectionHeaderView);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>> and conformance <> ForEach<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(255, &lazy cache variable for type metadata for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type TableHeaderView and conformance TableHeaderView();
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableHeaderView and conformance TableHeaderView()
{
  result = lazy protocol witness table cache variable for type TableHeaderView and conformance TableHeaderView;
  if (!lazy protocol witness table cache variable for type TableHeaderView and conformance TableHeaderView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableHeaderView and conformance TableHeaderView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>(255);
    type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>();
    lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>>, lazy protocol witness table accessor for type TableSectionHeaderView and conformance TableSectionHeaderView, lazy protocol witness table accessor for type _ContentShapeModifier<Rectangle> and conformance _ContentShapeModifier<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>> and conformance HStack<A>, type metadata accessor for HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>);
    lazy protocol witness table accessor for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AnyView, AccessibilityAttachmentModifier>, &type metadata for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AnyView, TableRowForegroundStyleModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, a2, MEMORY[0x1E6981910], a3, MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>)
  {
    type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_6(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>()
{
  if (!lazy cache variable for type metadata for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>)
  {
    type metadata accessor for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>();
    type metadata accessor for AccessibilityTableContext?(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>> and conformance ZStack<A>, type metadata accessor for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>);
    lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
    v0 = type metadata accessor for ContextMenuPreviewModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>);
    }
  }
}

void type metadata accessor for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>()
{
  if (!lazy cache variable for type metadata for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>)
  {
    type metadata accessor for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>();
    lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>, lazy protocol witness table accessor for type AnyView? and conformance <A> A?, lazy protocol witness table accessor for type StyleContextWriter<MenuStyleContext> and conformance StyleContextWriter<A>);
    v0 = type metadata accessor for ZStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>)
  {
    type metadata accessor for AccessibilityTableContext?(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(255, &lazy cache variable for type metadata for StyleContextWriter<MenuStyleContext>, MEMORY[0x1E697EA18], MEMORY[0x1E697EA10], MEMORY[0x1E697F4C8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<TableSectionHeaderView, _ContentShapeModifier<Rectangle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

void type metadata accessor for SwipeActionsModifier<AnyView?>()
{
  if (!lazy cache variable for type metadata for SwipeActionsModifier<AnyView?>)
  {
    type metadata accessor for AccessibilityTableContext?(255, &lazy cache variable for type metadata for AnyView?, MEMORY[0x1E6981910], MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type AnyView? and conformance <A> A?();
    v0 = type metadata accessor for SwipeActionsModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for SwipeActionsModifier<AnyView?>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>()
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>, type metadata accessor for _ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, type metadata accessor for VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>, MEMORY[0x1E697F960]);
    v0 = type metadata accessor for _VariadicView.Tree();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _VariadicView.Tree<_VStackLayout, _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>);
    }
  }
}

_BYTE *TableRowForegroundStyleModifier.ChildEnvironment.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  v6 = *Value;

  result = AGGraphGetValue();
  if ((*result & 1) == 0)
  {

    ShapeStyle.copyStyle(name:in:foregroundStyle:)();

    result = EnvironmentValues.defaultForegroundStyle.setter();
    v4 = v6;
  }

  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static ViewInputsModifier._makeViewInputs(modifier:inputs:) in conformance TableRowForegroundStyleModifier()
{
  swift_beginAccess();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment();
  Attribute.init<A>(body:value:flags:update:)();
  return _GraphInputs.environment.setter();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance TableRowForegroundStyleModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *), uint64_t a4)
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TableRowForegroundStyleModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = lazy protocol witness table accessor for type TableRowForegroundStyleModifier and conformance TableRowForegroundStyleModifier();

  return MEMORY[0x1EEDE0CC8](a1, a2, a3, a4, a5, v10);
}

uint64_t key path getter for EnvironmentValues.activeContextMenu : EnvironmentValues@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t key path setter for EnvironmentValues.activeContextMenu : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ActiveContextMenuKey>, &type metadata for ActiveContextMenuKey, &protocol witness table for ActiveContextMenuKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<ActiveContextMenuKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t outlined init with take of VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of TableColumnCollection.Entry(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI0A19UIAnySortComparatorVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for AccessibilityTableContext?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifie()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKe)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKe);
    }
  }
}

uint64_t _s7SwiftUI25AccessibilityTableContextOSgWOhTm_1(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for AccessibilityTableContext?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>(255);
    v7 = a3(a1, &type metadata for TableHeaderView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t outlined destroy of AccessibilityTableCellModifier<AnyView>(uint64_t a1)
{
  type metadata accessor for ModifiedContent<Spacer, _FrameLayout>(0, &lazy cache variable for type metadata for AccessibilityTableCellModifier<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for AccessibilityTableCellModifier);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>()
{
  if (!lazy cache variable for type metadata for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>)
  {
    type metadata accessor for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>> and conformance _UnaryViewAdaptor<A>, type metadata accessor for _UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>);
    v0 = type metadata accessor for AccessibilityTableCellModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AccessibilityTableCellModifier<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>>);
    }
  }
}

void type metadata accessor for _VariadicView.Tree<_VStackLayout, _ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for _VariadicView.Tree();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModi()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWriti;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWriti)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi, type metadata accessor for SwipeActionsModifier<AnyView?>, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModi,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewM);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWriti);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewM()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPr;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPr)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPreviewModifier<ZStack<Modi(255);
    lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?> and conformance ContextMenuPreviewModifier<A, B>, type metadata accessor for ContextMenuPreviewModifier<ZStack<ModifiedContent<AnyView?, StyleContextWriter<MenuStyleContext>>>, AnyView?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>, ContextMenuPr);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedContent<A()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedCon;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedCon)
  {
    type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>>();
    lazy protocol witness table accessor for type TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_1(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Int?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Int?>, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<HStack<ForEach<ArraySlice<TableCellFormula>, UUID, ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>>>, ModifiedContent<AnyView, AccessibilityAttachmentModifier>>, VStack<_ConditionalContent<TableHeaderView, ModifiedContent<<<opaque return type of View.onTapGesture(count:perform:)>>.0, _AllowsHitTestingModifier>>?>>>, _EnvironmentKeyWritingModifier<Int?>> and conformance <> ModifiedCon);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment()
{
  result = lazy protocol witness table cache variable for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment;
  if (!lazy protocol witness table cache variable for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TableRowForegroundStyleModifier.ChildEnvironment and conformance TableRowForegroundStyleModifier.ChildEnvironment);
  }

  return result;
}

void type metadata accessor for (ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_1(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_6(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for ArraySlice<TableCellFormula>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>?, ModifiedContent<_UnaryViewAdaptor<ModifiedContent<AnyView, TableRowForegroundStyleModifier>>, AccessibilityAttachmentModifier>, TupleView<(Spacer, ModifiedContent<ModifiedContent<Button<RotatingDisclosureIndicator>, StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, EmptyModifier>>, PrimitiveButtonStyleContainerModifier<BorderlessButtonStyle>>)>?)>>, _PaddingLayout>, _PaddingLayout>, _FlexFrameLayout>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t View.badgedViewStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BadgedViewStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t BadgeViewStyleConfiguration.badgeText.getter()
{
  v1 = type metadata accessor for Locale();
  MEMORY[0x1EEE9AC00](v1 - 8);
  type metadata accessor for IntegerFormatStyle<Int>(0, &lazy cache variable for type metadata for IntegerFormatStyle<Int>, lazy protocol witness table accessor for type Int and conformance Int, MEMORY[0x1E69E6530], MEMORY[0x1E6968900]);
  MEMORY[0x1EEE9AC00](v2);
  result = 0;
  v4 = v0[2];
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      v5 = *v0;
      outlined copy of Text.Storage(*v0, v0[1], v4 & 1);

      return v5;
    }

    else
    {
      static Locale.autoupdatingCurrent.getter();
      lazy protocol witness table accessor for type Int and conformance Int();
      IntegerFormatStyle.init(locale:)();
      lazy protocol witness table accessor for type IntegerFormatStyle<Int> and conformance IntegerFormatStyle<A>();
      return Text.init<A>(_:format:)();
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for BadgeViewStyleConfiguration.Content(uint64_t a1)
{
  result = lazy protocol witness table accessor for type BadgeViewStyleConfiguration.Content and conformance BadgeViewStyleConfiguration.Content();
  *(a1 + 8) = result;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance ResolvedBadgedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();

  return MEMORY[0x1EEDDE4C0](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ResolvedBadgedView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView();

  return MEMORY[0x1EEDDE4C8](a1, a2, a3, v6);
}

uint64_t BadgedViewStyleModifier.styleBody(configuration:)(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = a1[1];
  v16[0] = *a1;
  v16[1] = v12;
  (*(v3 + 24))(v16, v4, v3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v11, AssociatedTypeWitness);
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance BadgedViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4B8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance BadgedViewStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

unint64_t lazy protocol witness table accessor for type ResolvedBadgedView and conformance ResolvedBadgedView()
{
  result = lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView;
  if (!lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView;
  if (!lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ResolvedBadgedView and conformance ResolvedBadgedView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>()
{
  result = lazy protocol witness table cache variable for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>;
  if (!lazy protocol witness table cache variable for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>)
  {
    type metadata accessor for IntegerFormatStyle<Int>(255, &lazy cache variable for type metadata for BadgedViewStyleModifier<AutomaticBadgedViewStyle>, lazy protocol witness table accessor for type AutomaticBadgedViewStyle and conformance AutomaticBadgedViewStyle, &type metadata for AutomaticBadgedViewStyle, type metadata accessor for BadgedViewStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedViewStyleModifier<AutomaticBadgedViewStyle> and conformance BadgedViewStyleModifier<A>);
  }

  return result;
}

void type metadata accessor for IntegerFormatStyle<Int>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation()
{
  result = lazy protocol witness table cache variable for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation;
  if (!lazy protocol witness table cache variable for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DragDropPreviewsFormation and conformance DragDropPreviewsFormation);
  }

  return result;
}

uint64_t assignWithCopy for PlatformItemListGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t assignWithTake for PlatformItemListGenerator(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemListGenerator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 108))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemListGenerator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 108) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL specialized Collection.isEmpty.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    AGGraphGetWeakValue();
    WeakValue = AGGraphGetWeakValue();
    if (!WeakValue)
    {
      a1 = MEMORY[0x1E69E7CC0];
      goto LABEL_5;
    }

    a1 = *WeakValue;
  }

LABEL_5:
  v4 = *(a1 + 16);

  return v4 == 0;
}

BOOL specialized Collection.isEmpty.getter()
{
  outlined init with copy of TableColumnCollection.Backing(v0, v8);
  if (v9)
  {
    v1 = *(*&v8[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v8, v5);
    v2 = v6;
    v3 = v7;
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v1 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return v1 == 0;
}

uint64_t specialized RandomAccessCollection<>.indices.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (AGGraphGetWeakValue(), AGGraphGetWeakValue()))
  {
  }

  return 0;
}

uint64_t specialized RandomAccessCollection<>.indices.getter()
{
  outlined init with copy of TableColumnCollection.Backing(v0, v8);
  if (v9 == 1)
  {

    return 0;
  }

  outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v8, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  result = __swift_destroy_boxed_opaque_existential_1(v5);
  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized Collection.count.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  v3 = *(a1 + 36);
  v4 = 1 << *(a1 + 32);

  return specialized Collection.distance(from:to:)(v2, v3, 0, v4, v3, 0, a1);
}

unint64_t specialized Collection.count.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) != 0 || (AGGraphGetWeakValue(), AGGraphGetWeakValue()))
  {
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);

  return specialized RandomAccessCollection<>.distance(from:to:)(0, v5, a1, a2 & 1);
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _HashTable.startBucket.getter();
  v7 = 1 << *(a2 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = result;
  v9 = *(a2 + 36);
  outlined copy of [A : B].Index._Variant<A, B>(result, v9, 0);
  outlined copy of [A : B].Index._Variant<A, B>(v7, v9, 0);
  outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, 0);
  result = outlined consume of Set<UIOpenURLContext>.Index._Variant(v8, v9, 0);
  if (*(a1 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 8) != v9)
  {
    goto LABEL_10;
  }

  v10 = *a1;
  if (*a1 < v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *(a1 + 40);
  if ((v11 & 1) == 0)
  {
    if (v9 == *(a1 + 32))
    {
      v12 = *(a1 + 24);
      if (v7 >= v12)
      {
        v13 = *(a1 + 12);
        v16 = *(a1 + 36);
        v14 = v8;
        v15 = *(a1 + 16);
        outlined consume of Set<UIOpenURLContext>.Index._Variant(v14, v9, 0);
        outlined consume of Set<UIOpenURLContext>.Index._Variant(v7, v9, 0);
        *(a3 + 48) = a2;
        *a3 = v10;
        *(a3 + 8) = v9;
        *(a3 + 12) = v13;
        *(a3 + 16) = v15;
        *(a3 + 24) = v12;
        *(a3 + 32) = v9;
        *(a3 + 36) = v16;
        *(a3 + 40) = v11;

        return outlined init with copy of Range<SpatialEventCollection.Index>(a1, v17);
      }

      goto LABEL_13;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  outlined init with copy of TableColumnCollection.Backing(v3, v15);
  if (v16 == 1)
  {
    v8 = *(*&v15[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v15, v12);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = (*(v11 + 8))(v10, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v8 >= a2)
  {
    result = outlined init with copy of TableColumnCollection(v4, (a3 + 2));
    *a3 = a1;
    a3[1] = a2;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  result = specialized NavigationState.StackContent.Views.ViewsSequence.startIndex.getter(a1);
  if (v12)
  {
    if (v6)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  if (v6)
  {
    goto LABEL_19;
  }

  if (v5 < result)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (result < v5)
  {
    goto LABEL_19;
  }

  if (v8)
  {
    v13 = v11;
    if (v8 != 1)
    {
      goto LABEL_15;
    }

    if (v11 != 1 || v7 >= v10)
    {
      goto LABEL_19;
    }

    __break(1u);
  }

  v13 = v11;
  if (!v11)
  {
    goto LABEL_18;
  }

  if (v11 == 2)
  {
LABEL_19:
    result = _s7SwiftUI16PlatformItemListV0D0VWOcTm_2(v2, a2 + 64, type metadata accessor for NavigationState.StackContent.Views.ViewsSequence<_VariadicView_Children, ModifiedContent<NavigationSearchAdjustmentModifier, ModifiedContent<ModifiedContent<NavigationColumnModifier, InjectKeyModifier>, NavigationBackgroundReaderModifier>>>);
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 9) = *(a1 + 9);
    *(a2 + 12) = *(a1 + 12);
    *(a2 + 16) = v7;
    *(a2 + 24) = v8;
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 41) = *(a1 + 41);
    return result;
  }

  __break(1u);
LABEL_15:
  if (v13 == 2 && !v10)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_18:
  if (v7 >= v10)
  {
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a4)
  {
    goto LABEL_5;
  }

  AGGraphGetWeakValue();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    a3 = *WeakValue;
LABEL_5:

    goto LABEL_6;
  }

  a3 = MEMORY[0x1E69E7CC0];
LABEL_6:
  v7 = *(a3 + 16);

  if (v4 <= v7)
  {
    return v4;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(_:offsetBy:)(uint64_t result, uint64_t a2)
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of TableColumnCollection.Backing(v2, v10);
    if (v11)
    {
      v4 = *(*&v10[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v10, v7);
      v5 = v8;
      v6 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v4 = (*(v6 + 8))(v5, v6);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
    }

    if ((v3 & 0x8000000000000000) == 0 && v4 >= v3)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized RandomAccessCollection<>.distance(from:to:)(unint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  v4 = a3;
  v6 = result;
  if (a4)
  {
    if (*(a3 + 16) < result)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  AGGraphGetWeakValue();
  if (AGGraphGetWeakValue())
  {
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = *(v7 + 16);

  if (v8 < v6)
  {
    goto LABEL_14;
  }

  AGGraphGetWeakValue();
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v4 = *WeakValue;
LABEL_10:

    goto LABEL_11;
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_11:
  v10 = *(v4 + 16);

  if (v10 >= a2)
  {
    return a2 - v6;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  outlined init with copy of TableColumnCollection.Backing(v2, v16);
  if (v17)
  {
    v6 = *(*&v16[0] + 16);
  }

  else
  {
    outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v13);
    v8 = v14;
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v6 = (*(v9 + 8))(v8, v9);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  if (a1 < 0 || v6 < a1)
  {
    __break(1u);
  }

  else
  {
    outlined init with copy of TableColumnCollection.Backing(v3, v16);
    if (v17)
    {
      v10 = *(*&v16[0] + 16);
    }

    else
    {
      outlined init with take of any Sequence<Self.Sequence.Element == ViewResponder>(v16, v13);
      v11 = v14;
      v12 = v15;
      __swift_project_boxed_opaque_existential_1(v13, v14);
      v10 = (*(v12 + 8))(v11, v12);
      result = __swift_destroy_boxed_opaque_existential_1(v13);
    }

    if ((a2 & 0x8000000000000000) == 0 && v10 >= a2)
    {
      return a2 - a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type PlatformItemCollection and conformance PlatformItemCollection()
{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection;
  if (!lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PlatformItemCollection and conformance PlatformItemCollection);
  }

  return result;
}

uint64_t *protocol witness for BidirectionalCollection.index(before:) in conformance PlatformItemCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  if ((*(v2 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFSUB__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 - 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.formIndex(before:) in conformance PlatformItemCollection(void *result)
{
  v2 = result;
  v3 = *result;
  if ((*(v1 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *v2 = v3 - 1;
  }

  return result;
}

uint64_t protocol witness for Collection.startIndex.getter in conformance PlatformItemCollection@<X0>(void *a1@<X8>)
{
  if ((*(v1 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  *a1 = 0;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance PlatformItemCollection@<X0>(void *a1@<X8>)
{
  if ((*(v1 + 8) & 1) != 0 || AGGraphGetWeakValue())
  {
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  v4 = *(v3 + 16);

  *a1 = v4;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance PlatformItemCollection(uint64_t *a1, unint64_t *a2))(uint64_t *a1)
{
  v5 = *(type metadata accessor for PlatformItemList.Item() - 8);
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  v7 = v6;
  *a1 = v6;
  v8 = *a2;
  v9 = *v2;
  if (v2[1])
  {
LABEL_7:

    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = AGGraphGetWeakValue();
  if (result)
  {
    v9 = *result;
    goto LABEL_7;
  }

  v9 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  if (v8 < *(v9 + 16))
  {
    _s7SwiftUI16PlatformItemListV0D0VWOcTm_2(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, type metadata accessor for PlatformItemList.Item);

    return protocol witness for Collection.subscript.read in conformance PlatformItemCollection;
  }

LABEL_12:
  __break(1u);
  return result;
}

void protocol witness for Collection.subscript.read in conformance PlatformItemCollection(uint64_t *a1)
{
  v1 = *a1;
  outlined destroy of PlatformItemList.Item(*a1);

  free(v1);
}

uint64_t protocol witness for Collection.subscript.getter in conformance PlatformItemCollection@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = specialized Collection<>.subscript.getter(*a1, a1[1], *v2, *(v2 + 8));
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6 & 1;

  return outlined copy of PlatformItemCollection.Storage(v5, v6 & 1);
}

uint64_t protocol witness for Collection.indices.getter in conformance PlatformItemCollection@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RandomAccessCollection<>.indices.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance PlatformItemCollection@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *v4;
  v9 = *(v4 + 8);
  v10 = specialized RandomAccessCollection<>.distance(from:to:)(*a1, *a3, *v4, v9);
  if (a2 < 1)
  {
    if (v10 <= 0 && v10 > a2)
    {
      goto LABEL_4;
    }

LABEL_10:
    result = specialized RandomAccessCollection<>.index(_:offsetBy:)(v7, a2, v8, v9);
    v12 = 0;
    goto LABEL_11;
  }

  if (v10 < 0 || v10 >= a2)
  {
    goto LABEL_10;
  }

LABEL_4:
  result = 0;
  v12 = 1;
LABEL_11:
  *a4 = result;
  *(a4 + 8) = v12;
  return result;
}

uint64_t *protocol witness for Collection.index(after:) in conformance PlatformItemCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *result;
  if ((*(v2 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = v4 + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance PlatformItemCollection(void *result)
{
  v2 = result;
  v3 = *result;
  if ((*(v1 + 8) & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *v2 = v3 + 1;
  }

  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance PlatformItemCollection@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if ((v4 & 1) == 0)
  {
    result = AGGraphGetWeakValue();
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance PlatformItemCollection()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = specialized Collection.count.getter(v1, v2);
  if (!v3)
  {
    outlined consume of PlatformItemCollection.Storage(v1, v2);
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI16PlatformItemListV0K0V_Tt1g5(v3, 0);
  v6 = *(type metadata accessor for PlatformItemList.Item() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  outlined copy of PlatformItemCollection.Storage(v1, v2);
  specialized Sequence._copySequenceContents(initializing:)(&v11, v5 + v7, v4, v1, v2);
  v9 = v8;
  result = outlined consume of PlatformItemCollection.Storage(v11, v12);
  if (v9 == v4)
  {
    outlined consume of PlatformItemCollection.Storage(v1, v2);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<PlatformItemCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<PlatformItemCollection>(255, a2, lazy protocol witness table accessor for type PlatformItemCollection and conformance PlatformItemCollection, &type metadata for PlatformItemCollection, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sSnySiGSnyxGSlsSxRzSZ6StrideRpzrlWlTm_5(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_5(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PlatformItemCollection> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<PlatformItemCollection>(255, &lazy cache variable for type metadata for Slice<PlatformItemCollection>, lazy protocol witness table accessor for type PlatformItemCollection and conformance PlatformItemCollection, &type metadata for PlatformItemCollection, MEMORY[0x1E69E74D0]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized Collection<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) != 0 || (AGGraphGetWeakValue(), AGGraphGetWeakValue()))
  {
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v6 + 16);

  if ((a1 & 0x8000000000000000) == 0 && v7 >= a2)
  {
    return a1;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of Range<SpatialEventCollection.Index>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IndexingIterator<PlatformItemCollection>(0, &lazy cache variable for type metadata for Range<SpatialEventCollection.Index>, lazy protocol witness table accessor for type SpatialEventCollection.Index and conformance SpatialEventCollection.Index, &type metadata for SpatialEventCollection.Index, MEMORY[0x1E69E66A8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for IndexingIterator<PlatformItemCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t assignWithCopy for PlatformItemCollection(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of PlatformItemCollection.Storage(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of PlatformItemCollection.Storage(v5, v6);
  return a1;
}

void type metadata accessor for ViewDestinationNavigationDestinationModifier<EmptyView>()
{
  if (!lazy cache variable for type metadata for ViewDestinationNavigationDestinationModifier<EmptyView>)
  {
    v0 = type metadata accessor for ViewDestinationNavigationDestinationModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewDestinationNavigationDestinationModifier<EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>)
  {
    type metadata accessor for ViewDestinationNavigationDestinationModifier<EmptyView>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewDestinationNavigationDestinationModifier<EmptyView> and conformance ViewDestinationNavigationDestinationModifier<A>);
  }

  return result;
}

uint64_t AccessibilityQuickActionProxy.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t AccessibilityQuickActionProxy.init(style:)(char a1)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Published<AccessibilityQuickActionState>, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E695C070]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13[-v6];
  v8 = OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy__state;
  v13[15] = 0;
  Published.init(initialValue:)();
  (*(v5 + 32))(v1 + v8, v7, v4);
  v9 = (v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label);
  *v9 = 0;
  v9[1] = 0;
  v10 = v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = (v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) = a1 & 1;
  return v1;
}

uint64_t closure #1 in AccessibilityQuickActionProxy.start()(uint64_t result)
{
  if (*(result + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t AccessibilityQuickActionProxy.stop()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v1)
  {

    static Update.enqueueAction(reason:_:)();
  }

  return result;
}

uint64_t closure #1 in AccessibilityQuickActionProxy.stop()(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  result = static Published.subscript.setter();
  if (*(a1 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8))
  {

    dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t AccessibilityQuickActionProxy.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy__state;
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Published<AccessibilityQuickActionState>, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E695C070]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  outlined consume of Binding<NavigationSplitViewColumn>?(*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive), *(v0 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8));
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(*(v0 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance AccessibilityQuickActionProxy@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AccessibilityQuickActionProxy();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a3;
  v47 = a4;
  v45 = a7;
  v89 = *MEMORY[0x1E69E9840];
  v9 = a2[3];
  v10 = a2[1];
  v85 = a2[2];
  v86 = v9;
  v11 = a2[3];
  v87 = a2[4];
  v12 = a2[1];
  v83 = *a2;
  v84 = v12;
  v79 = v85;
  v80 = v11;
  v81 = a2[4];
  v13 = *a1;
  v88 = *(a2 + 20);
  v82 = *(a2 + 20);
  v77 = v83;
  v78 = v10;
  v14 = v83;
  v15 = v12;
  v16 = *(&v85 + 1);
  swift_beginAccess();
  LODWORD(v69[0]) = *(v15 + 16);
  v53 = type metadata accessor for AccessibilityQuickActionModifier.ChildEnvironment();
  WitnessTable = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(&v83, &v71);
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Attribute<EnvironmentValues>, MEMORY[0x1E697F230], MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v69, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_10, &v52, v53, MEMORY[0x1E69E73E0], v17, MEMORY[0x1E69E7410], v18);
  _GraphInputs.environment.setter();
  v43 = v13;
  v51 = v13;
  type metadata accessor for AccessibilityQuickActionModifier();
  v39 = type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  v19 = *(*(a5 - 8) + 64);
  v44 = v14;
  v41 = v15;
  v42 = v16;
  if (v19)
  {
    closure #1 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(1, a5);
  }

  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v67[2] = v79;
  v67[3] = v80;
  v67[4] = v81;
  v68 = v82;
  v67[0] = v77;
  v67[1] = v78;
  v73 = v79;
  v74 = v80;
  v75 = v81;
  LODWORD(v76[0]) = v82;
  v71 = v77;
  v72 = v78;
  v21 = PlatformItemListGenerator.init(flags:content:inputs:inputsIncludeGeometry:)(OffsetAttribute2, &v71, 1, v69);
  v37 = &v36;
  v65 = v69[4];
  v66[0] = v70[0];
  *(v66 + 12) = *(v70 + 12);
  v61 = v69[0];
  v62 = v69[1];
  v63 = v69[2];
  v64 = v69[3];
  MEMORY[0x1EEE9AC00](v21);
  *&v71 = &type metadata for ActionPlatformItemListFlags;
  *(&v71 + 1) = a5;
  *&v72 = &protocol witness table for ActionPlatformItemListFlags;
  *(&v72 + 1) = a6;
  v22 = type metadata accessor for PlatformItemListGenerator();
  v35[2] = v22;
  v35[3] = swift_getWitnessTable();
  outlined init with copy of _ViewInputs(v67, &v71);
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v71, v69, v22);
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Attribute<PlatformItemList>, &type metadata for PlatformItemList, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v61, closure #1 in Attribute.init<A>(_:)partial apply, v35, v22, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  v38 = 0;
  v75 = v65;
  v76[0] = v66[0];
  *(v76 + 12) = *(v66 + 12);
  v71 = v61;
  v72 = v62;
  v73 = v63;
  v74 = v64;
  v40 = *(v23 + 8);
  v40(&v71, v22);
  LODWORD(v37) = v55;
  v26 = v43;
  v50 = v43;
  _GraphValue.value.getter();
  closure #2 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(1);
  HIDWORD(v36) = AGGraphCreateOffsetAttribute2();
  v49 = v26;
  _GraphValue.value.getter();
  closure #3 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(1);
  v43 = AGGraphCreateOffsetAttribute2();
  v63 = v85;
  v64 = v86;
  v65 = v87;
  LODWORD(v66[0]) = v88;
  v61 = v83;
  v62 = v84;
  v27 = _ViewInputs.isEnabled.getter();
  v28 = one-time initialization token for accessibilityQuickActionsEnabled;

  if (v28 != -1)
  {
    swift_once();
  }

  v48 = static CachedEnvironment.ID.accessibilityQuickActionsEnabled;
  swift_beginAccess();
  v29 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  *&v61 = __PAIR64__(HIDWORD(v36), v37);
  *(&v61 + 1) = __PAIR64__(v27, v43);
  LODWORD(v62) = v29;
  MEMORY[0x1EEE9AC00](v30);
  v31 = type metadata accessor for AccessibilityQuickActionModifier.ProxyTransform();
  v35[-2] = v31;
  v35[-1] = swift_getWitnessTable();
  type metadata accessor for Attribute<AccessibilityQuickActionProxy>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v61, closure #1 in Attribute.init<A>(_:)partial apply, &v35[-4], v31, MEMORY[0x1E69E73E0], v32, MEMORY[0x1E69E7410], v33);
  LODWORD(v61) = v55;
  type metadata accessor for AccessibilityQuickActionModifier.ProxyModifier();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  v57 = v85;
  v58 = v86;
  v59 = v87;
  v60 = v88;
  v55 = v83;
  v56 = v84;
  lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier();
  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();
  v40(v69, v22);
  v63 = v79;
  v64 = v80;
  v65 = v81;
  LODWORD(v66[0]) = v82;
  v61 = v77;
  v62 = v78;
  return outlined destroy of _ViewInputs(&v61);
}

uint64_t closure #1 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for AccessibilityQuickActionModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t closure #2 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityQuickActionModifier();
  v3 = *(v2 + 36);
  v9[2] = v2;
  type metadata accessor for Binding<Bool>?();
  v5 = v4;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, closure #1 in static PointerOffset.of(_:)partial apply, v9, v5, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t closure #3 in static AccessibilityQuickActionModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityQuickActionModifier();
  v3 = *(v2 + 40);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_25, v7, &type metadata for _AccessibilityQuickActionStyle.RawValue, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t protocol witness for Rule.value.getter in conformance AccessibilityQuickActionModifier<A>.ProxyModifier@<X0>(uint64_t *a1@<X8>)
{
  *a1 = specialized AccessibilityQuickActionModifier.ProxyModifier.value.getter();
  a1[1] = v2;
}

uint64_t AccessibilityQuickActionModifier.ChildEnvironment.updateValue()()
{
  result = *(AGGraphGetValue() + 8);
  if (v1)
  {

    EnvironmentValues.isEnabled.setter();

    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t *AccessibilityQuickActionModifier.ProxyTransform.updateValue()()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for PlatformItemList.Item();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for AccessibilityQuickActionProxy();
  if (!AGGraphGetOutputValue())
  {
    v3 = *AGGraphGetValue();
    swift_allocObject();
    v28[0] = AccessibilityQuickActionProxy.init(style:)(v3);
    AGGraphSetOutputValue();
  }

  result = AGGraphGetValue();
  if (*result == 1)
  {
    type metadata accessor for Binding<Bool>?();
    Value = AGGraphGetValue();
    v7 = *Value;
    v6 = *(Value + 8);
    v8 = *(Value + 16);
    if (v9)
    {
      result = AGGraphGetOutputValue();
      if (!result)
      {
        __break(1u);
        goto LABEL_35;
      }

      outlined copy of Binding<Int>?(v7, v6);

      specialized AccessibilityQuickActionProxy.isActive.setter(v7, v6, v8);
    }

    else
    {
      outlined copy of Binding<Int>?(*Value, v6);
    }

    v10 = AGGraphGetValue();
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = *v10;
    result = AGGraphGetOutputValue();
    if (result)
    {
      v13 = *result;
      v14 = *(*result + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled);
      *(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled) = v12;
      if (!*(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8))
      {
        if (v12)
        {
          if ((v14 & 1) == 0 && (*(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1) && *(v13 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
          {
            LOBYTE(v28[0]) = 17;
            swift_retain_n();
            static Update.enqueueAction(reason:_:)();
          }
        }

        else if (v14)
        {

          AccessibilityQuickActionProxy.stop()();
        }
      }

LABEL_11:
      AGGraphGetValue();
      if ((v15 & 1) == 0)
      {
        return outlined consume of Binding<NavigationSplitViewColumn>?(v7, v6);
      }

      PlatformItemList.mergedContentItem.getter(v16, v2);

      result = AGGraphGetOutputValue();
      if (result)
      {
        v17 = *result;
        v18 = *v2;
        if (*v2)
        {

          v19 = [v18 string];
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
        }

        else
        {

          v21 = 0;
        }

        v22 = (v17 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label);
        *v22 = v18;
        v22[1] = v21;

        result = AGGraphGetOutputValue();
        if (result)
        {
          v23 = *result;
          v24 = v2[52];
          if (v24 == 1)
          {
            v24 = 0;
            v25 = 0;
          }

          else
          {
            v25 = v2[53];
            outlined copy of AppIntentExecutor?(v2[52]);
          }

          v26 = (v23 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action);
          v27 = *(v23 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action);

          outlined copy of AppIntentExecutor?(v24);
          *v26 = v24;
          v26[1] = v25;
          outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v27);
          if (v24)
          {

            outlined consume of Binding<NavigationSplitViewColumn>?(v7, v6);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v24);
            outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v24);
          }

          else
          {
            AccessibilityQuickActionProxy.stop()();

            outlined consume of Binding<NavigationSplitViewColumn>?(v7, v6);
          }

          return _s7SwiftUI16PlatformItemListV0D0VWOhTm_2(v2, type metadata accessor for PlatformItemList.Item);
        }

LABEL_37:
        __break(1u);
        return result;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance AccessibilityQuickActionModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double AccessibilityQuickActionProxyModifier.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_retain_n();
  static Published.subscript.getter();

  *a3 = partial apply for closure #1 in AccessibilityQuickActionProxyModifier.body(content:);
  *(a3 + 8) = v6;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = partial apply for closure #2 in AccessibilityQuickActionProxyModifier.body(content:);
  *(a3 + 56) = v7;
  *(a3 + 64) = v9;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  return result;
}

void closure #1 in AccessibilityQuickActionProxyModifier.body(content:)(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive);
  v4 = *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive + 8);
  if (v4)
  {
    v5 = *(v3 + 16);
    v9 = *v3;
    v10 = v4;
    v11 = v5 & 1;
    type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    v7 = v6;

    MEMORY[0x18D00ACC0](&v8, v7);
    if ((v8 & 1) != 0 && (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1))
    {
      if (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
      {
        LOBYTE(v9) = 17;

        static Update.enqueueAction(reason:_:)();
      }
    }

    goto LABEL_8;
  }

  if ((*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isEnabled) & 1) != 0 && (*(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1) && *(a2 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
  {
    LOBYTE(v9) = 17;

    static Update.enqueueAction(reason:_:)();
LABEL_8:
  }
}

uint64_t one-time initialization function for pulse()
{
  result = static Animation.easeInOut(duration:)();
  static AnimationCurve.pulse = result;
  return result;
}

uint64_t one-time initialization function for press()
{
  result = static Animation.easeInOut(duration:)();
  static AnimationCurve.press = result;
  return result;
}

double AccessibilityQuickActionAnimationModifier.FocusRing.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = specialized Environment.wrappedValue.getter(*(v1 + 40), *(v1 + 48));
  if (!v3)
  {
    v3 = static Color.accentColor.getter();
  }

  v4 = v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  outlined copy of Path.Storage(v5, v6, v7, v8, v9);
  v10 = static Alignment.center.getter();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = 0x4008000000000000;
  result = *&v13;
  *(a1 + 48) = v13;
  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  *(a1 + 88) = v4;
  *(a1 + 96) = 256;
  *(a1 + 104) = v10;
  *(a1 + 112) = v12;
  return result;
}

uint64_t protocol witness for Shape.path(in:) in conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v20 = *(v5 + 16);
  v24[0] = *v5;
  v21 = v24[0];
  v24[1] = v20;
  v11 = *(v5 + 32);
  v25 = v11;
  v12 = *(v5 + 40);
  v26[0] = v24[0];
  v26[1] = v20;
  v27 = v11;
  outlined init with copy of Path.Storage(v26, v22);
  result = Path.isEmpty.getter();
  v15 = v20;
  v14 = v21;
  if (result)
  {
    outlined destroy of Path(v24);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    v29 = CGRectInset(v28, v12 * -0.5, v12 * -0.5);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    CGRectGetHeight(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGRectGetWidth(v30);
    result = Path.init(roundedRect:cornerRadius:style:)();
    v15 = v22[1];
    v14 = v22[0];
    v11 = v23;
  }

  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v11;
  return result;
}

uint64_t protocol witness for View.body.getter in conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v7 = *(v1 + 32);
  *(a1 + 32) = v7;
  *(a1 + 40) = v6;
  *(a1 + 48) = 256;
  return outlined copy of Path.Storage(v2, v3, v4, v5, v7);
}

uint64_t AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier.body(content:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v12)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = Animation.repeatForever(autoreverses:)();
  State.wrappedValue.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v12;
  *(a4 + 24) = partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier.body(content:);
  *(a4 + 32) = v10;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
}

uint64_t closure #1 in AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  result = State.wrappedValue.getter();
  if (a3)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t AccessibilityQuickActionAnimationModifier.ActivateModifier.body(content:)@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (v16)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.0;
  }

  State.wrappedValue.getter();
  if (v16)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 1.2;
  }

  static UnitPoint.center.getter();
  v11 = v10;
  v13 = v12;
  State.wrappedValue.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *a4 = v8;
  *(a4 + 8) = v9;
  *(a4 + 16) = v9;
  *(a4 + 24) = v11;
  *(a4 + 32) = v13;
  *(a4 + 40) = a1;
  *(a4 + 48) = v16;
  *(a4 + 56) = partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.ActivateModifier.body(content:);
  *(a4 + 64) = v14;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;

  return swift_retain_n();
}

double AccessibilityQuickActionAnimationModifier.body(content:)@<D0>(char a1@<W1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;

  v9 = static Alignment.center.getter();
  v11 = v10;
  LOBYTE(v25) = a2;
  *(&v25 + 1) = a3;
  type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.wrappedValue.getter();
  if (LOBYTE(v24[0]))
  {
    v12 = 0.93;
  }

  else
  {
    v12 = 1.0;
  }

  static UnitPoint.center.getter();
  *&v20 = partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.body(content:);
  *(&v20 + 1) = v8;
  *&v21 = v9;
  *(&v21 + 1) = v11;
  *&v22 = v12;
  *(&v22 + 1) = v12;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>(0);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>);
  lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState();

  View.onChange<A>(of:initial:_:)();

  v24[0] = v20;
  v24[1] = v21;
  v24[2] = v22;
  v24[3] = v23;
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_2(v24, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>);
  v16 = v30;
  *(a4 + 64) = v29;
  *(a4 + 80) = v16;
  *(a4 + 96) = v31;
  *(a4 + 112) = v32;
  v17 = v26;
  *a4 = v25;
  *(a4 + 16) = v17;
  result = *&v27;
  v19 = v28;
  *(a4 + 32) = v27;
  *(a4 + 48) = v19;
  return result;
}

uint64_t closure #1 in AccessibilityQuickActionAnimationModifier.body(content:)@<X0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v19 = *a1 >> 62;
  if (v19)
  {
LABEL_29:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v4 & 0xC000000000000001;

  v7 = 0;
  while (v5 != v7)
  {
    if (v6)
    {
      MEMORY[0x18D00E9C0](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v41 = 0u;
    v42 = 0u;
    v43 = 6;
    v8 = Path.isEmpty.getter();

    if ((v8 & 1) == 0)
    {
      v5 = v7;
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_28;
    }
  }

  if (v19)
  {
    goto LABEL_21;
  }

  for (result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); v5 != result; result = __CocoaSet.count.getter())
  {
    if (v6)
    {
      v5 = MEMORY[0x18D00E9C0](v5, v4);
    }

    else
    {
      if (v5 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v5 = *(v4 + 32 + 8 * v5);
    }

    v38 = 0u;
    v39 = 0u;
    v40 = 6;
    v11 = Path.isEmpty.getter();

    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }

    __break(1u);
LABEL_21:
    ;
  }

LABEL_23:
  memset(v37, 0, 32);
  v37[32] = 6;
  v12 = static HorizontalAlignment.center.getter();
  v28 = 1;
  closure #2 in closure #1 in AccessibilityQuickActionAnimationModifier.body(content:)(a2, v37, &v21);
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v29 = v21;
  v30 = v22;
  v36 = v26;
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v35[0] = v21;
  v35[1] = v22;
  outlined init with copy of _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(&v29, v20);
  _s7SwiftUI16PlatformItemListV0D0VWOhTm_2(v35, type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>);
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[87] = v34;
  *&v27[7] = v29;
  *&v27[23] = v30;
  if (a2)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v28;
  v15 = static Animation.default.getter();
  result = outlined consume of Path.Storage(0, 0, 0, 0, 6u);
  v16 = *&v27[48];
  *(a3 + 49) = *&v27[32];
  *(a3 + 65) = v16;
  *(a3 + 81) = *&v27[64];
  *(a3 + 90) = *&v27[73];
  v17 = *&v27[16];
  *(a3 + 17) = *v27;
  *a3 = v12;
  *(a3 + 8) = 0;
  *(a3 + 16) = v14;
  *(a3 + 33) = v17;
  *(a3 + 112) = v13;
  *(a3 + 120) = v15;
  *(a3 + 128) = a2 == 0;
  *(a3 + 129) = 0;
  return result;
}

uint64_t closure #2 in closure #1 in AccessibilityQuickActionAnimationModifier.body(content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v11 = result;
  if (result > 1u)
  {
    v16 = *(a2 + 16);
    v18 = *a2;
    if (result == 2)
    {
      KeyPath = swift_getKeyPath();
      v13 = *(a2 + 16);
      v21 = *a2;
      v22 = v13;
      v23 = *(a2 + 32);
      outlined init with copy of Path.Storage(&v21, v20);
      if (one-time initialization token for pulse != -1)
      {
        swift_once();
      }

      LOBYTE(v24[0]) = 0;
      v12 = 1;
      v20[0] = 1;

      v3 = 0;
      v11 = 0;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v14 = *(a2 + 16);
      v21 = *a2;
      v22 = v14;
      v23 = *(a2 + 32);
      outlined init with copy of Path.Storage(&v21, v20);
      if (one-time initialization token for press != -1)
      {
        swift_once();
      }

      result = Animation.delay(_:)();
      v3 = 0;
      v11 = 1;
      LOBYTE(v24[0]) = 1;
      v20[0] = 1;
      v12 = 1;
    }

    v9 = v16;
    v8 = v18;
  }

  else if (result)
  {
    v17 = *(a2 + 16);
    v19 = *a2;
    KeyPath = swift_getKeyPath();
    LOBYTE(v24[0]) = 0;
    v5 = 1;
    LOBYTE(v25) = 1;
    v20[0] = 0;
    result = outlined init with copy of Path(a2, &v21);
    v9 = v17;
    v8 = v19;
    v3 = 0;
    v12 = 0;
  }

  else
  {
    v5 = 0;
    v12 = 0;
    v20[0] = 0;
    LOBYTE(v21) = 0;
  }

  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 33) = *v20;
  *(a3 + 36) = *&v20[3];
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v3;
  *(a3 + 49) = v5;
  *(a3 + 50) = v25;
  *(a3 + 54) = v26;
  *(a3 + 56) = result;
  *(a3 + 64) = 1;
  v15 = v24[0];
  *(a3 + 68) = *(v24 + 3);
  *(a3 + 65) = v15;
  *(a3 + 72) = 0;
  *(a3 + 80) = v11;
  *(a3 + 81) = v12;
  return result;
}

uint64_t closure #2 in AccessibilityQuickActionAnimationModifier.body(content:)(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 > 1u)
  {
    if (*a2 != 2)
    {
      if (one-time initialization token for press != -1)
      {
        result = swift_once();
      }

      MEMORY[0x1EEE9AC00](result);
      withAnimation<A>(_:_:)();
      v5 = Animation.delay(_:)();
      MEMORY[0x1EEE9AC00](v5);
      withAnimation<A>(_:_:)();
    }
  }

  else if (*a2)
  {
    if (one-time initialization token for press != -1)
    {
      swift_once();
    }

    Animation.speed(_:)();
    Animation.repeatCount(_:autoreverses:)();

    Animation.delay(_:)();

    MEMORY[0x1EEE9AC00](v6);
    withAnimation<A>(_:_:)();

    Animation.speed(_:)();
    Animation.delay(_:)();

    MEMORY[0x1EEE9AC00](v7);
    withAnimation<A>(_:_:)();
  }

  else if (a5)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t EnvironmentValues.accessibilityQuickActionsEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v1 = v3;
  if (v3 == 2)
  {
    v1 = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  return v1 & 1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t EnvironmentValues._accessibilityQuickActionsEnabled.setter()
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path setter for EnvironmentValues.accessibilityQuickActionsEnabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues._accessibilityQuickActionsEnabled.modify(uint64_t a1))(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();
  if (v4)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v5 = *(a1 + 25);
  if (v5 == 2)
  {
    LOBYTE(v5) = EnvironmentValues.accessibilitySettingEnabled(_:)();
  }

  *(a1 + 24) = v5 & 1;
  return EnvironmentValues._accessibilityQuickActionsEnabled.modify;
}

uint64_t EnvironmentValues._accessibilityQuickActionsEnabled.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 25) = *(a1 + 24);
  type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityQuickActionsKey>, &unk_1EFFFF7F8, &protocol witness table for AccessibilityQuickActionsKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityQuickActionsKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t type metadata accessor for AccessibilityQuickActionProxy()
{
  result = type metadata singleton initialization cache for AccessibilityQuickActionProxy;
  if (!type metadata singleton initialization cache for AccessibilityQuickActionProxy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AccessibilityQuickActionProxy()
{
  type metadata accessor for Published<AccessibilityQuickActionState>(319, &lazy cache variable for type metadata for Published<AccessibilityQuickActionState>, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t lazy protocol witness table accessor for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>;
  if (!lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for StyleContextWriter<AccessibilityQuickActionStyleContext>, MEMORY[0x1E6980BE8], MEMORY[0x1E6980BE0], MEMORY[0x1E697F4C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextWriter<AccessibilityQuickActionStyleContext> and conformance StyleContextWriter<A>);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityQuickActionModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for AccessibilityQuickActionModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 18 > 0x18)
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
    if (*(v11 + 8) < 0xFFFFFFFFuLL)
    {
      v12 = *v11;
      *(v10 + 16) = *(v11 + 16);
      *v10 = v12;
    }

    else
    {
      *v10 = *v11;
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 16) = *(v11 + 16);
    }

    *(v10 + 17) = *(v11 + 17);
  }

  return v3;
}

uint64_t destroy for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  result = (*v3)();
  if (*(((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v8 + 8) < 0xFFFFFFFFuLL)
  {
    v9 = *v8;
    *(v7 + 16) = *(v8 + 16);
    *v7 = v9;
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 16) = *(v8 + 16);
  }

  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 8);
  if (*(v7 + 8) < 0xFFFFFFFFuLL)
  {
    if (v9 >= 0xFFFFFFFF)
    {
      *v7 = *v8;
      *(v7 + 8) = *(v8 + 8);
      *(v7 + 16) = *(v8 + 16);

      goto LABEL_8;
    }

LABEL_7:
    v10 = *v8;
    *(v7 + 16) = *(v8 + 16);
    *v7 = v10;
    goto LABEL_8;
  }

  if (v9 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
LABEL_8:
  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t initializeWithTake for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v8 + 16);
  *v7 = *v8;
  *(v7 + 16) = v9;
  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  if (*(v7 + 8) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*(v8 + 8) < 0xFFFFFFFFuLL)
  {

LABEL_5:
    v9 = *v8;
    *(v7 + 16) = *(v8 + 16);
    *v7 = v9;
    goto LABEL_6;
  }

  *v7 = *v8;

  *(v7 + 8) = *(v8 + 8);

  *(v7 + 16) = *(v8 + 16);
LABEL_6:
  *(v7 + 17) = *(v8 + 17);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityQuickActionModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
  v9 = (a2 - v7 + 0xFFFF) >> 16;
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
      v13 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *(a1 + v8);
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
    v13 = *(a1 + v8);
    if (*(a1 + v8))
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
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

void storeEnumTagSinglePayload for AccessibilityQuickActionModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18;
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
    v11 = (a3 - v8 + 0xFFFF) >> 16;
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
      if (v7 < 0x7FFFFFFE)
      {
        v18 = &a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8;
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *(v18 + 8) = a2;
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
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18);
  if (v10 <= 3)
  {
    v16 = HIWORD(v15) + 1;
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

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue()
{
  result = lazy protocol witness table cache variable for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue;
  if (!lazy protocol witness table cache variable for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _AccessibilityQuickActionStyle.RawValue and conformance _AccessibilityQuickActionStyle.RawValue);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.accessibilityQuickActionsEnabled.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = EnvironmentValues.accessibilityQuickActionsEnabled.getter(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t key path getter for AccessibilityQuickActionProxy.state : AccessibilityQuickActionProxy@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t key path setter for AccessibilityQuickActionProxy.state : AccessibilityQuickActionProxy()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void type metadata accessor for Attribute<AccessibilityQuickActionProxy>()
{
  if (!lazy cache variable for type metadata for Attribute<AccessibilityQuickActionProxy>)
  {
    type metadata accessor for AccessibilityQuickActionProxy();
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<AccessibilityQuickActionProxy>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier);
  }

  return result;
}

void *assignWithCopy for AccessibilityQuickActionProxyModifier(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void *assignWithTake for AccessibilityQuickActionProxyModifier(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t specialized AccessibilityQuickActionProxy.isActive.setter(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v5 = (v3 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive);
  v6 = *(v3 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_isActive);
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  *(v5 + 16) = a3;
  outlined copy of Binding<Int>?(a1, a2);
  result = outlined consume of Binding<NavigationSplitViewColumn>?(v6, v7);
  v9 = v5[1];
  if (v9)
  {
    v10 = *(v5 + 16);
    v13 = *v5;
    v14 = v9;
    v15 = v10 & 1;
    type metadata accessor for Published<AccessibilityQuickActionState>(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v12);
    v11 = v12;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v13)
    {
      if (v11)
      {
        return result;
      }

      return AccessibilityQuickActionProxy.stop()();
    }

    if ((v11 & 1) == 0)
    {
      return AccessibilityQuickActionProxy.stop()();
    }

    if (*(v4 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_label + 8) || *(v4 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_style) == 1)
    {
      if (*(v4 + OBJC_IVAR____TtC7SwiftUIP33_B8D2E4520F2964BB14185EE65411F68529AccessibilityQuickActionProxy_action))
      {
        LOBYTE(v13) = 17;

        static Update.enqueueAction(reason:_:)();
      }
    }
  }

  return result;
}

uint64_t specialized AccessibilityQuickActionModifier.ProxyModifier.value.getter()
{
  type metadata accessor for AccessibilityQuickActionProxy();
  AGGraphGetValue();
  return 0;
}

uint64_t initializeBufferWithCopyOfBuffer for AccessibilityQuickActionAnimationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionAnimationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionAnimationModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier>, AccessibilityQuickActionAnimationModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier, &unk_1EFFFF870, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionProxyModifier and conformance AccessibilityQuickActionProxyModifier, &unk_1EFFFF870, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionProxyModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier);
  }

  return result;
}

void type metadata accessor for Published<AccessibilityQuickActionState>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier, &unk_1EFFFF998, MEMORY[0x1E697FDE8]);
    type metadata accessor for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>);
    }
  }
}

void type metadata accessor for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>()
{
  if (!lazy cache variable for type metadata for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>(255);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
    v0 = type metadata accessor for _OverlayPreferenceModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>()
{
  if (!lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>();
    lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, MEMORY[0x1E6981E70], &unk_1EFFFFB68, MEMORY[0x1E697F960]);
    type metadata accessor for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>();
    v0 = type metadata accessor for _ConditionalContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>);
    }
  }
}

void type metadata accessor for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>()
{
  if (!lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>)
  {
    v0 = MEMORY[0x1E697E830];
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, &unk_1EFFFFB68, &unk_1EFFFFAE8, MEMORY[0x1E697E830]);
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>, &unk_1EFFFFB68, &unk_1EFFFFA68, v0);
    v1 = type metadata accessor for _ConditionalContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>();
    lazy protocol witness table accessor for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, MEMORY[0x1E6981E70], &unk_1EFFFFB68, MEMORY[0x1E697F960]);
    lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>)
  {
    type metadata accessor for _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>();
    lazy protocol witness table accessor for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, &unk_1EFFFFAE8, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier);
    lazy protocol witness table accessor for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>, &unk_1EFFFFA68, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, a2, &unk_1EFFFFB68, a3, MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing and conformance AccessibilityQuickActionAnimationModifier.FocusRing();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier);
  }

  return result;
}

void type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>);
    lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>(255);
    lazy protocol witness table accessor for type _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>> and conformance VStack<A>, type metadata accessor for VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle> and conformance _ShapeView<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle> and conformance _ShapeView<A, B>(&lazy protocol witness table cache variable for type _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>> and conformance _OverlayPreferenceModifier<A, B>, type metadata accessor for _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier and conformance AccessibilityQuickActionAnimationModifier, &unk_1EFFFF998, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t partial apply for closure #3 in closure #2 in AccessibilityQuickActionAnimationModifier.body(content:)()
{
  return partial apply for closure #3 in closure #2 in AccessibilityQuickActionAnimationModifier.body(content:)();
}

{
  if (*(v0 + 32))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t outlined init with copy of _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1)
{
  outlined consume of Path.Storage(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return outlined consume of Environment<Color?>.Content(v2, v3);
}

uint64_t initializeWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of Environment<Color?>.Content(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  v14 = *(a2 + 40);
  v15 = *(a2 + 48);
  outlined copy of Environment<Color?>.Content(v14, v15);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  outlined consume of Environment<Color?>.Content(v16, v17);
  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  v11 = *(a2 + 48);
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v11;
  outlined consume of Environment<Color?>.Content(v12, v13);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>(255);
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ValueActionModifier2<AccessibilityQuickActionState>, lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E697FDD0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier>, _OverlayPreferenceModifier<ViewRespondersKey, ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>>>, _ScaleEffect>, _ValueActionModifier2<AccessibilityQuickActionState>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>()
{
  result = lazy protocol witness table cache variable for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>;
  if (!lazy protocol witness table cache variable for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ValueActionModifier2<AccessibilityQuickActionState>, lazy protocol witness table accessor for type AccessibilityQuickActionState and conformance AccessibilityQuickActionState, &type metadata for AccessibilityQuickActionState, MEMORY[0x1E697FDD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ValueActionModifier2<AccessibilityQuickActionState> and conformance _ValueActionModifier2<A>);
  }

  return result;
}

uint64_t partial apply for closure #1 in AccessibilityQuickActionAnimationModifier.ActivateModifier.body(content:)()
{
  if (*(v0 + 32))
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

uint64_t initializeWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithCopy for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  v13 = *(a1 + 32);
  *(a1 + 32) = v8;
  outlined consume of Path.Storage(v9, v10, v11, v12, v13);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  v10 = *(a1 + 32);
  *(a1 + 32) = v4;
  outlined consume of Path.Storage(v5, v6, v7, v8, v10);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 48))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void type metadata accessor for StrokeShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, Color, EmptyView>()
{
  if (!lazy cache variable for type metadata for StrokeShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, Color, EmptyView>)
  {
    lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
    v0 = type metadata accessor for StrokeShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StrokeShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, Color, EmptyView>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline()
{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline;
  if (!lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier, &unk_1EFFFFAE8);
    type metadata accessor for EnvironmentPropertyKey<AccessibilityQuickActionsKey>(255, &lazy cache variable for type metadata for _AnimationModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388], MEMORY[0x1E697F540]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>);
    }
  }
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, a3, a4, a5, MEMORY[0x1E697FDE8]);
    v6 = type metadata accessor for ModifiedContent();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier, &unk_1EFFFFAE8);
    lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier and conformance AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier, &unk_1EFFFFAE8, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<VStack<_ConditionalContent<_ConditionalContent<EmptyView, AccessibilityQuickActionAnimationModifier.FocusRing>, _ConditionalContent<ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ContinuousOpacityModifier>, ModifiedContent<AccessibilityQuickActionAnimationModifier.FocusRing, AccessibilityQuickActionAnimationModifier.ActivateModifier>>>>, _OpacityEffect>, _AnimationModifier<Bool>>, _AllowsHitTestingModifier>(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(255, a3, a4);
    v5 = type metadata accessor for ModifiedContent();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier, &unk_1EFFFFA68);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionProxyModifier>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, _ScaleEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>(255, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect>, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier, &unk_1EFFFFA68);
    lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<AccessibilityQuickActionProxyModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier>, lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.ActivateModifier and conformance AccessibilityQuickActionAnimationModifier.ActivateModifier, &unk_1EFFFFA68, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<AccessibilityQuickActionAnimationModifier.ActivateModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<AccessibilityQuickActionAnimationModifier.FocusRing.Outline, ForegroundStyle>);
    }
  }
}

unint64_t instantiation function for generic protocol witness table for AccessibilityQuickActionAnimationModifier.FocusRing.Outline(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
  result = lazy protocol witness table accessor for type AccessibilityQuickActionAnimationModifier.FocusRing.Outline and conformance AccessibilityQuickActionAnimationModifier.FocusRing.Outline();
  *(a1 + 16) = result;
  return result;
}

void *assignWithTake for AccessibilityNodeList(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  return a1;
}

uint64_t UIView.constrainToView(_:exceptEdges:identifier:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = MEMORY[0x1E69E7CC0];
  v30 = MEMORY[0x1E69E7CC0];
  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v10 = [v5 topAnchor];
    v11 = [a1 topAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    [v12 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      v13 = MEMORY[0x18D00C850](762343284, 0xE400000000000000);
    }

    else
    {
      v13 = 0;
    }

    [v12 setIdentifier_];

    v14 = v12;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v30;
  }

  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v15 = [v5 leadingAnchor];
    v16 = [a1 leadingAnchor];
    v17 = [v15 constraintEqualToAnchor_];

    [v17 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      v18 = MEMORY[0x18D00C850](0x2D676E696461656CLL, 0xE800000000000000);
    }

    else
    {
      v18 = 0;
    }

    [v17 setIdentifier_];

    v19 = v17;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v30;
  }

  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v20 = [v5 bottomAnchor];
    v21 = [a1 bottomAnchor];
    v22 = [v20 constraintEqualToAnchor_];

    [v22 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      v23 = MEMORY[0x18D00C850](0x2D6D6F74746F62, 0xE700000000000000);
    }

    else
    {
      v23 = 0;
    }

    [v22 setIdentifier_];

    v24 = v22;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v9 = v30;
  }

  if ((Edge.Set.contains(_:)() & 1) == 0)
  {
    v25 = [v5 trailingAnchor];
    v26 = [a1 trailingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    [v27 setActive_];
    if (a4)
    {
      MEMORY[0x18D00C9B0](a3, a4);
      a4 = MEMORY[0x18D00C850](0x676E696C69617274, 0xE90000000000002DLL);
    }

    [v27 setIdentifier_];

    v28 = v27;
    MEMORY[0x18D00CC30]();
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return v30;
  }

  return v9;
}

Swift::Void __swiftcall UIView.setHoverEffectEnabled(_:)(Swift::Bool a1)
{
  v3 = [v1 hoverStyle];
  if (v3)
  {
    v4 = v3;
    [v3 copy];

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIHoverStyle);
    if (swift_dynamicCast())
    {
      [v5 setEnabled_];
      [v1 setHoverStyle_];
    }
  }
}

void *specialized UIView.firstDescendantWhere(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PortalGroupMarkerView();
  v6 = swift_dynamicCastClass();
  if (v6 && *(v6 + OBJC_IVAR____TtC7SwiftUIP33_5DAB09131F46EF4FA69B417F7F09D60321PortalGroupMarkerView_id) == a2 && (a3 & ~*(v6 + OBJC_IVAR____TtC7SwiftUIP33_5DAB09131F46EF4FA69B417F7F09D60321PortalGroupMarkerView_kind)) == 0)
  {
    v7 = a1;
  }

  else
  {
    v8 = [a1 subviews];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v9 >> 62)
    {
LABEL_20:
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (i = 0; v10 != i; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x18D00E9C0](i, v9);
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v12 = *(v9 + 8 * i + 32);
      }

      v13 = v12;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      a1 = specialized UIView.firstDescendantWhere(_:)(v12, a2, a3);

      if (a1)
      {

        return a1;
      }
    }

    return 0;
  }

  return a1;
}

id specialized implicit closure #1 in UIView.ancestors.getter@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 superview];
  *a2 = result;
  return result;
}

void specialized UIView.forEachDescendant(_:)(void *a1, void (*a2)(void), uint64_t a3)
{
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v6 = a1;
    a2();
  }

  v7 = [a1 subviews];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x18D00E9C0](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    specialized UIView.forEachDescendant(_:)(v11, a2, a3);
  }

LABEL_13:
}

double KeyPress.init(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of _Benchmark(a1, v18);
  type metadata accessor for EventType();
  if ((swift_dynamicCast() & 1) == 0)
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    outlined destroy of KeyEvent?(&v11);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0;
    goto LABEL_6;
  }

  v23 = v15;
  v24 = v16;
  v25 = v17;
  v21 = v13;
  v22 = v14;
  v19 = v11;
  v20 = v12;
  if (!*(&v13 + 1))
  {
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(a1);
    outlined destroy of KeyEvent?(&v19);
    goto LABEL_7;
  }

  v30 = v23;
  v31 = v24;
  v32 = v25;
  v26 = v19;
  v27 = v20;
  v28 = v21;
  v29 = v22;
  outlined init with copy of KeyEvent(&v26, &v19);
  v4 = specialized Collection.first.getter(v21, *(&v21 + 1));
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1(a1);
  outlined destroy of KeyEvent(&v19);
  if (v6)
  {
    v7 = qword_18CDE8488[v26];
    v8 = v28;
    v9 = *(&v27 + 1);

    outlined destroy of KeyEvent(&v26);
    *a2 = v7;
    *(a2 + 8) = v4;
    *(a2 + 16) = v6;
    *(a2 + 24) = v8;
    *(a2 + 40) = v9;
    return result;
  }

  outlined destroy of KeyEvent(&v26);
LABEL_7:
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t View.onKeyPress(_:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = a1[1];
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyEquivalent>, &type metadata for KeyEquivalent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = v12;
  v15 = inited + 32;
  *(inited + 40) = v13;
  v16 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI13KeyEquivalentV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of KeyEquivalent(v15);
  *v11 = v16;
  swift_storeEnumTagMultiPayload();
  v21 = 3;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;

  View.onKeyPress(subject:phases:action:)(v11, &v21, partial apply for closure #1 in View.onKeyPress(_:action:), v17, a4, v20);

  return outlined destroy of KeyPress.Handler.Subject(v11, type metadata accessor for KeyPress.Handler.Subject);
}

uint64_t View.onKeyPress(subject:phases:action:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for KeyPressModifier(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  outlined init with copy of KeyPress.Handler(a1, v14, type metadata accessor for KeyPress.Handler.Subject);
  v16 = type metadata accessor for KeyPress.Handler(0);
  *&v14[*(v16 + 20)] = v15;
  v17 = &v14[*(v16 + 24)];
  *v17 = a3;
  *(v17 + 1) = a4;

  MEMORY[0x18D00A570](v14, a5, v12, a6);
  return outlined destroy of KeyPress.Handler.Subject(v14, type metadata accessor for KeyPressModifier);
}

uint64_t View.onKeyPress(_:phases:action:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v20 = a5;
  v10 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  v14 = a1[1];
  v15 = *a2;
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<KeyEquivalent>, &type metadata for KeyEquivalent, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18CD63400;
  *(inited + 32) = v13;
  v17 = inited + 32;
  *(inited + 40) = v14;
  v18 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI13KeyEquivalentV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();

  outlined destroy of KeyEquivalent(v17);
  *v12 = v18;
  swift_storeEnumTagMultiPayload();
  v22 = v15;
  View.onKeyPress(subject:phases:action:)(v12, &v22, a3, a4, v20, v21);
  return outlined destroy of KeyPress.Handler.Subject(v12, type metadata accessor for KeyPress.Handler.Subject);
}

uint64_t View.onKeyPress(phases:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  swift_storeEnumTagMultiPayload();
  v16 = v13;
  View.onKeyPress(subject:phases:action:)(v12, &v16, a2, a3, a4, a5);
  return outlined destroy of KeyPress.Handler.Subject(v12, type metadata accessor for KeyPress.Handler.Subject);
}

uint64_t KeyPress.key.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t KeyPress.characters.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t KeyPress.Phases.debugDescription.getter()
{
  v1 = *v0;
  if (*v0 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    v5 = v4 + 1;
    if (v4 >= v3 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v5;
    v6 = &v2[16 * v4];
    v7 = 1819042094;
    v8 = 0xE400000000000000;
    goto LABEL_23;
  }

  if (v1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = *(v2 + 2);
    v13 = *(v2 + 3);
    if (v14 >= v13 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v2);
    }

    *(v2 + 2) = v14 + 1;
    v15 = &v2[16 * v14];
    *(v15 + 4) = 0x6E776F642ELL;
    *(v15 + 5) = 0xE500000000000000;
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 4) == 0)
      {
        goto LABEL_8;
      }

LABEL_18:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v20 = *(v2 + 2);
      v19 = *(v2 + 3);
      v5 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v2);
      }

      *(v2 + 2) = v5;
      v6 = &v2[16 * v20];
      v7 = 7370030;
      v8 = 0xE300000000000000;
LABEL_23:
      *(v6 + 4) = v7;
      *(v6 + 5) = v8;
      if (v5 == 1)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_7;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v17 = *(v2 + 2);
  v16 = *(v2 + 3);
  if (v17 >= v16 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v2);
  }

  *(v2 + 2) = v17 + 1;
  v18 = &v2[16 * v17];
  *(v18 + 4) = 0x7461657065722ELL;
  *(v18 + 5) = 0xE700000000000000;
  if ((v1 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (*(v2 + 2) == 1)
  {
LABEL_24:
    v12 = *(v2 + 4);

    return v12;
  }

LABEL_9:
  type metadata accessor for _ContiguousArrayStorage<SafeAreaInsets.Element>(0, &lazy cache variable for type metadata for [String], MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [String] and conformance [A]();

  v9 = BidirectionalCollection<>.joined(separator:)();
  v11 = v10;

  MEMORY[0x18D00C9B0](v9, v11);

  MEMORY[0x18D00C9B0](93, 0xE100000000000000);

  return 91;
}

Swift::Int KeyPress.Result.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](v1);
  return Hasher._finalize()();
}

uint64_t KeyPress.debugDescription.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  _StringGuts.grow(_:)(18);
  MEMORY[0x18D00C9B0](0x737365725079654BLL, 0xE900000000000028);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18D00C9B0](2236460, 0xE300000000000000);
  MEMORY[0x18D00C9B0](v1, v2);
  MEMORY[0x18D00C9B0](10530, 0xE200000000000000);
  return 0;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance KeyPressModifier(int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
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

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance KeyPressModifier(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance KeyPressModifier();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t protocol witness for static _GraphInputsModifier._makeInputs(modifier:inputs:) in conformance KeyPressModifier()
{
  lazy protocol witness table accessor for type UIGestureRecognizer and conformance NSObject(&lazy protocol witness table cache variable for type KeyPressModifier and conformance KeyPressModifier, type metadata accessor for KeyPressModifier);

  return static EnvironmentModifier._makeInputs(modifier:inputs:)();
}

uint64_t specialized implicit closure #1 in _GraphInputs.keyPressHandlers.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey>, &type metadata for EnvironmentValues.KeyPressHandlersKey, &protocol witness table for EnvironmentValues.KeyPressHandlersKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.KeyPressHandlersKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t View.onKeyPress(keys:phases:action:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a2;
  *v14 = a1;
  swift_storeEnumTagMultiPayload();
  v18 = v15;

  View.onKeyPress(subject:phases:action:)(v14, &v18, a3, a4, a5, a6);
  return outlined destroy of KeyPress.Handler.Subject(v14, type metadata accessor for KeyPress.Handler.Subject);
}

uint64_t View.onKeyPress(characters:phases:action:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for KeyPress.Handler.Subject(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a2;
  v16 = type metadata accessor for CharacterSet();
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  swift_storeEnumTagMultiPayload();
  v19 = v15;
  View.onKeyPress(subject:phases:action:)(v14, &v19, a3, a4, a5, a6);
  return outlined destroy of KeyPress.Handler.Subject(v14, type metadata accessor for KeyPress.Handler.Subject);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _SetStorage<String>(0, &lazy cache variable for type metadata for _SetStorage<String>, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168], MEMORY[0x1E69E6A10]);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _SetStorage<NSURLResourceKey>();
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v27 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
        if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo19UIGestureRecognizerC_Tt0g5Tf4g_n(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_3:
      type metadata accessor for _SetStorage<UIGestureRecognizer>();
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = __CocoaSet.count.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x18D00E9C0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for UIGestureRecognizer();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v3 + 40);
      v24 = *(v1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *(v6 + 8 * (v27 >> 6));
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for UIGestureRecognizer();
        while (1)
        {
          v32 = *(*(v3 + 48) + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *(v6 + 8 * (v27 >> 6));
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v28) = v30 | v29;
        *(*(v3 + 48) + 8 * v27) = v24;
        v34 = *(v3 + 16);
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v35;
      }

      if (++v22 == v38)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7SwiftUI18PresentationDetentV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    _ss11_SetStorageCy7SwiftUI16ToolbarPlacementV4RoleOGMaTm_0(0, &lazy cache variable for type metadata for _SetStorage<PresentationDetent>, lazy protocol witness table accessor for type PresentationDetent and conformance PresentationDetent);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v34 = a1 + 32;
    while (1)
    {
      v10 = v34 + 16 * v4;
      v11 = *v10;
      v12 = *(v10 + 8);
      Hasher.init(_seed:)();
      v13 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v13 == 2)
        {
          MEMORY[0x18D00F6F0](4);
          v15 = *&v11;
        }

        else if (*&v11 | v12 ^ 0xC000000000000000)
        {
          v17 = v12 == 0xC000000000000000 && *&v11 == 1;
          v15 = v17 ? 1 : 5;
        }

        else
        {
          v15 = 0;
        }

        MEMORY[0x18D00F6F0](v15);
      }

      else
      {
        v14 = v13 ? 3 : 2;
        MEMORY[0x18D00F6F0](v14);
        v16 = (*&v11 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? *&v11 : 0;
        MEMORY[0x18D00F730](v16);
      }

      result = Hasher._finalize()();
      v19 = -1 << *(v3 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      v22 = *(v5 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      v24 = *(v3 + 48);
      if (((1 << v20) & v22) != 0)
      {
        break;
      }

LABEL_3:
      *(v5 + 8 * v21) = v22 | v23;
      v6 = v24 + 16 * v20;
      *v6 = v11;
      *(v6 + 8) = v12;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v9;
LABEL_5:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v25 = ~v19;
    v26 = *&v11 != 2;
    v27 = *&v11 != 1;
    v28 = *&v11 != 0;
    if (v12 != 0xC000000000000000)
    {
      v26 = 1;
      v27 = 1;
      v28 = 1;
    }

    if (v13 != 3)
    {
      v26 = 1;
      v27 = 1;
      v28 = 1;
    }

    while (1)
    {
      v29 = v24 + 16 * v20;
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = v31 >> 62;
      if ((v31 >> 62) > 1)
      {
        if (v32 == 2)
        {
          if (v13 == 2 && *&v30 == *&v11)
          {
            goto LABEL_5;
          }
        }

        else if (*&v30 | v31 ^ 0xC000000000000000)
        {
          if (v31 == 0xC000000000000000 && *&v30 == 1)
          {
            if (!v27)
            {
              goto LABEL_5;
            }
          }

          else if (!v26)
          {
            goto LABEL_5;
          }
        }

        else if (!v28)
        {
          goto LABEL_5;
        }
      }

      else if (v32)
      {
        if (v13 == 1)
        {
LABEL_31:
          if (v30 == v11)
          {
            goto LABEL_5;
          }
        }
      }

      else if (!v13)
      {
        goto LABEL_31;
      }

      v20 = (v20 + 1) & v25;
      v21 = v20 >> 6;
      v22 = *(v5 + 8 * (v20 >> 6));
      v23 = 1 << v20;
      if ((v22 & (1 << v20)) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}