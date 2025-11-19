__n128 ResolvedContentUnavailableView.marginModifier.getter@<Q0>(uint64_t a1@<X8>)
{
  specialized Environment.wrappedValue.getter(*v1, *(v1 + 8), &v10);
  v3 = xmmword_18CD69C50;
  v4 = xmmword_18CD69C50;
  if (v10 >= 7u)
  {
    EdgeInsets.init(_all:)();
    *(&v4 + 1) = v5;
    *(&v3 + 1) = v6;
  }

  v8 = v4;
  v9 = v3;
  *a1 = static Edge.Set.all.getter();
  result = v9;
  *(a1 + 24) = v8;
  *(a1 + 8) = v9;
  *(a1 + 40) = 0;
  return result;
}

__n128 ResolvedContentUnavailableView.macFrameModifier.getter@<Q0>(_OWORD *a1@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t (*implicit closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = a1[16];
  v15 = *(a1 + 5);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7;
  *(v16 + 64) = v12;
  *(v16 + 72) = v13;
  *(v16 + 80) = v14;
  *(v16 + 84) = v15;
  outlined copy of Environment<Bool>.Content(v13, v14);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter;
}

uint64_t Layout.callAsFunction<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _LayoutRoot();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  _LayoutRoot.init(_:)();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

uint64_t closure #1 in ResolvedContentUnavailableView.resolvedActions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t (*a10)(_BYTE *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a11)
{
  v33 = a8;
  v35 = a1;
  v38 = a9;
  v37 = a11;
  type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>();
  v36 = type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v17 = type metadata accessor for _VariadicView.Tree();
  v34 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v32 = &v31 - v21;
  KeyPath = swift_getKeyPath();
  v51[0] = v33;
  v52 = KeyPath;
  v53 = 0;
  v54 = 1;
  v23 = a10(v51, a2, a3, a4, a5, a6, a7);
  outlined consume of Environment<Bool>.Content(v52, v53);
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v44 = a6;
  v45 = a7;
  v46 = v35;
  v23(v37, v39);

  v24 = lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>();
  v25 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate);
  v49 = a7;
  v50 = v25;
  WitnessTable = swift_getWitnessTable();
  v47 = v24;
  v48 = WitnessTable;
  v27 = swift_getWitnessTable();
  v28 = v32;
  static ViewBuilder.buildExpression<A>(_:)(v19, v17, v27);
  v29 = *(v34 + 8);
  v29(v19, v17);
  static ViewBuilder.buildExpression<A>(_:)(v28, v17, v27);
  return (v29)(v28, v17);
}

uint64_t (*implicit closure #1 in closure #2 in ResolvedContentUnavailableView.resolvedActions.getter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))()
{
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = a1[16];
  v15 = *(a1 + 5);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = a7;
  *(v16 + 64) = v12;
  *(v16 + 72) = v13;
  *(v16 + 80) = v14;
  *(v16 + 84) = v15;
  outlined copy of Environment<Bool>.Content(v13, v14);
  return partial apply for implicit closure #2 in implicit closure #1 in closure #2 in ResolvedContentUnavailableView.resolvedActions.getter;
}

uint64_t implicit closure #2 in implicit closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>();
  v6 = type metadata accessor for ModifiedContent();
  v7 = lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout();
  lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate);
  WitnessTable = swift_getWitnessTable();
  return Layout.callAsFunction<A>(_:)(a1, a2, &unk_1EFF93EF8, v6, v7, WitnessTable, a3);
}

uint64_t closure #1 in closure #1 in ResolvedContentUnavailableView.resolvedActions.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - v11;
  v13 = lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate);
  v16[0] = a7;
  v16[1] = v13;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(a1, v9, WitnessTable);
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, WitnessTable);
  return (*(v10 + 8))(v12, v9);
}

uint64_t ResolvedContentUnavailableView.init(label:description:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 12) = 1;
  v14 = type metadata accessor for ResolvedContentUnavailableView();
  (*(*(a4 - 8) + 32))(a7 + v14[17], a1, a4);
  (*(*(a5 - 8) + 32))(a7 + v14[18], a2, a5);
  return (*(*(a6 - 8) + 32))(a7 + v14[19], a3, a6);
}

unint64_t lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle()
{
  result = lazy protocol witness table cache variable for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle;
  if (!lazy protocol witness table cache variable for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout()
{
  result = lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout;
  if (!lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout;
  if (!lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ActionsLayout and conformance ActionsLayout);
  }

  return result;
}

void type metadata accessor for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for ButtonStyleModifier<FlexibleBorderedButtonStyle>, lazy protocol witness table accessor for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle, &unk_1EFF93E60, type metadata accessor for ButtonStyleModifier);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<CUVFlexibleButtonPredicate, ButtonStyleModifier<FlexibleBorderedButtonStyle>, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle()
{
  result = lazy protocol witness table cache variable for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle;
  if (!lazy protocol witness table cache variable for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FlexibleBorderedButtonStyle and conformance FlexibleBorderedButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>()
{
  result = lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>;
  if (!lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _LayoutRoot<ActionsLayout>, lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout, &unk_1EFF93EF8, MEMORY[0x1E697DDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _LayoutRoot<ActionsLayout> and conformance _LayoutRoot<A>);
  }

  return result;
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    v3 = type metadata accessor for StaticIf();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<MacInterfaceIdiom>, MEMORY[0x1E697F248], MEMORY[0x1E697F240], MEMORY[0x1E69801E0]);
    v3 = type metadata accessor for StaticIf();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout>);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, EmptyModifier, _PaddingLayout> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate()
{
  result = lazy protocol witness table cache variable for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate;
  if (!lazy protocol witness table cache variable for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CUVFlexibleFramePredicate and conformance CUVFlexibleFramePredicate);
  }

  return result;
}

uint64_t closure #1 in ContentUnavailableLabelStyle.makeBody(configuration:)@<X0>(unint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = HIDWORD(a1);
    LOBYTE(v10) = 2;
    MEMORY[0x18D009A90](0, 0xE000000000000000, &v10, 48.0);
    View.symbolFont(_:)();

    v5 = *(&v10 + 1);
    v4 = v10;
  }

  static Font.Weight.bold.getter();
  View.fontWeight(_:)();
  v7 = v11;
  v8 = v10;
  *a3 = v4;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v8;
  *(a3 + 40) = v7;
  outlined copy of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v4);
  return outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v4);
}

__n128 protocol witness for LabelStyle.makeBody(configuration:) in conformance ContentUnavailableLabelStyle@<Q0>(__n128 *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 12);
  v6 = static HorizontalAlignment.center.getter();
  v18 = 0;
  LOBYTE(v14[0]) = v3;
  closure #1 in ContentUnavailableLabelStyle.makeBody(configuration:)(v3 | (v5 << 32), v4, v14);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v15;
  v10 = v17;
  outlined copy of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v14[0]);
  v13 = v16;

  outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(v7);

  v11 = v18;
  a1->n128_u64[0] = v6;
  a1->n128_u64[1] = 0x402E000000000000;
  a1[1].n128_u8[0] = v11;
  a1[1].n128_u64[1] = v7;
  a1[2].n128_u64[0] = v8;
  a1[2].n128_u32[2] = v9;
  result = v13;
  a1[3] = v13;
  a1[4].n128_u64[0] = v10;
  return result;
}

__n128 WidgetLabelModifier.body(content:)@<Q0>(__n128 *a1@<X8>)
{
  static Font.headline.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.fontWeight(_:)();

  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u64[0] = v6;
  return result;
}

__n128 closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:)@<Q0>(_OWORD *a1@<X8>)
{
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double protocol witness for PrimitiveButtonStyle.makeBody(configuration:) in conformance FlexibleBorderedButtonStyle@<D0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for PrimitiveButtonStyleConfiguration(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  outlined init with copy of PrimitiveButtonStyleConfiguration(a1, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  outlined init with take of PrimitiveButtonStyleConfiguration(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *a2 = v7;
  type metadata accessor for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>();
  v11 = v10;
  v12 = &a2[*(v10 + 36)];
  *v12 = partial apply for implicit closure #2 in implicit closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:);
  v12[1] = v9;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  *&result = closure #1 in FlexibleBorderedButtonStyle.makeBody(configuration:)(&a2[*(v11 + 40)]).n128_u64[0];
  return result;
}

uint64_t ActionsLayout.sizeThatFits(proposal:subviews:cache:)()
{
  v1 = *v0;
  ActionsLayout.maxSize(subviews:proposal:)();
  v2 = ActionsLayout.spacing(subviews:)();
  v3 = *(v2 + 16);
  if (!v3)
  {

    if (v1)
    {
      goto LABEL_15;
    }

    goto LABEL_5;
  }

  if (v3 <= 3)
  {
    v4 = 0;
    v5 = 0.0;
LABEL_12:
    v10 = v3 - v4;
    v11 = (v2 + 8 * v4 + 32);
    do
    {
      v12 = *v11++;
      v5 = v5 + v12;
      --v10;
    }

    while (v10);
    goto LABEL_14;
  }

  v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v8 = (v2 + 48);
  v5 = 0.0;
  v9 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v5 = v5 + *(v8 - 2) + *(v8 - 1) + *v8 + v8[1];
    v8 += 4;
    v9 -= 4;
  }

  while (v9);
  if (v3 != v4)
  {
    goto LABEL_12;
  }

LABEL_14:

  if (v1)
  {
LABEL_15:
    v13 = LayoutSubviews.endIndex.getter();
    result = LayoutSubviews.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      result = LayoutSubviews.endIndex.getter();
      if ((v13 & 0x8000000000000000) == 0 && result >= v13)
      {
        return result;
      }

LABEL_22:
      __break(1u);
      return result;
    }

    goto LABEL_20;
  }

LABEL_5:
  v6 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v6 < 0 || result < v6)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t ActionsLayout.maxSize(subviews:proposal:)()
{
  v0 = LayoutSubviews.endIndex.getter();
  result = LayoutSubviews.endIndex.getter();
  if (result < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v0 < 0 || result < v0)
  {
    goto LABEL_20;
  }

  v2 = MEMORY[0x1E69E7CC0];
  if (v0)
  {
    v17 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v0, 0);
    v3 = 0;
    v2 = v17;
    while (1)
    {
      LayoutSubviews.subscript.getter();
      static ProposedViewSize.unspecified.getter();
      LayoutSubview.sizeThatFits(_:)();
      v5 = v4;
      v7 = v6;
      LayoutSubview.sizeThatFits(_:)();
      if (v8 < v5)
      {
        v5 = v8;
      }

      if (v7 <= v9)
      {
        v7 = v9;
      }

      v11 = *(v17 + 16);
      v10 = *(v17 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v17 + 16) = v11 + 1;
      v12 = v17 + 16 * v11;
      *(v12 + 32) = v5;
      *(v12 + 40) = v7;
      result = LayoutSubviews.endIndex.getter();
      if (v3 >= result)
      {
        break;
      }

      if (v0 == ++v3)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_14:
  v13 = *(v2 + 16);
  if (v13)
  {
    v14 = (v2 + 32);
    v15 = 0uLL;
    do
    {
      v16 = *v14++;
      v15 = vbslq_s8(vcgeq_f64(v16, v15), v16, v15);
      --v13;
    }

    while (v13);
  }
}

int64_t ActionsLayout.spacing(subviews:)()
{
  result = LayoutSubviews.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x1E69E7CC0];
    if (!result)
    {
      return v2;
    }

    v8 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
    v3 = 0;
    v2 = v8;
    while (1)
    {
      v4 = LayoutSubviews.endIndex.getter();
      result = LayoutSubviews.endIndex.getter();
      if (result < 0)
      {
        break;
      }

      result = LayoutSubviews.endIndex.getter();
      if (v4 < 0 || result < v4)
      {
        goto LABEL_15;
      }

      if (v3 >= v4 - 1)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = 15.0;
      }

      v7 = *(v8 + 16);
      v6 = *(v8 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
      }

      ++v3;
      *(v8 + 16) = v7 + 1;
      *(v8 + 8 * v7 + 32) = v5;
      if (v1 == v3)
      {
        return v2;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t ActionsLayout.placeSubviews(in:proposal:subviews:cache:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *v4;
  ActionsLayout.maxSize(subviews:proposal:)();
  v11 = v10;
  v13 = v12;
  v14 = ActionsLayout.spacing(subviews:)();
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  if (v9 == 1)
  {
    MinY = CGRectGetMinY(*&v15);
    result = LayoutSubviews.endIndex.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      v21 = result;
      if (!result)
      {
        goto LABEL_13;
      }

      if (result <= *(v14 + 16))
      {
        v22 = 0;
        v23 = v13 * 0.5 + MinY;
        do
        {
          LayoutSubviews.subscript.getter();
          v29.origin.x = a1;
          v29.origin.y = a2;
          v29.size.width = a3;
          v29.size.height = a4;
          CGRectGetMidX(v29);
          static UnitPoint.center.getter();
          LayoutSubview.place(at:anchor:proposal:)();
          v23 = v23 + v13 + *(v14 + 8 * v22++ + 32);
        }

        while (v21 != v22);
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  MinX = CGRectGetMinX(*&v15);
  result = LayoutSubviews.endIndex.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v25 = result;
  if (!result)
  {
    goto LABEL_13;
  }

  if (result > *(v14 + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v26 = 0;
  v27 = v11 * 0.5 + MinX;
  do
  {
    LayoutSubviews.subscript.getter();
    v30.origin.x = a1;
    v30.origin.y = a2;
    v30.size.width = a3;
    v30.size.height = a4;
    CGRectGetMidY(v30);
    static UnitPoint.center.getter();
    LayoutSubview.place(at:anchor:proposal:)();
    v27 = v27 + v11 + *(v14 + 8 * v26++ + 32);
  }

  while (v25 != v26);
LABEL_13:
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance WidgetLabelModifier(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(int *, _OWORD *))
{
  v7 = *a1;
  v8 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v8;
  v11[4] = *(a2 + 64);
  v12 = *(a2 + 80);
  v9 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v9;
  v13 = v7;
  return a7(&v13, v11);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance CUVFlexibleFramePredicate(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v5 = a1[1];
  v12[0] = *a1;
  v12[1] = v5;
  v7 = *a1;
  v6 = a1[1];
  v12[2] = a1[2];
  v9 = v7;
  v10 = v6;
  v11 = a1[2];
  outlined init with copy of _GraphInputs(v12, v13);
  LOBYTE(a4) = a4(&v9);
  v13[0] = v9;
  v13[1] = v10;
  v13[2] = v11;
  outlined destroy of _GraphInputs(v13);
  return a4 & 1;
}

unint64_t lazy protocol witness table accessor for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for LabelStyleWritingModifier<ContentUnavailableLabelStyle>, lazy protocol witness table accessor for type ContentUnavailableLabelStyle and conformance ContentUnavailableLabelStyle, &unk_1EFF93F98, type metadata accessor for LabelStyleWritingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LabelStyleWritingModifier<ContentUnavailableLabelStyle> and conformance LabelStyleWritingModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>(255, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier>);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, WidgetLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier()
{
  result = lazy protocol witness table cache variable for type WidgetLabelModifier and conformance WidgetLabelModifier;
  if (!lazy protocol witness table cache variable for type WidgetLabelModifier and conformance WidgetLabelModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetLabelModifier and conformance WidgetLabelModifier);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ControlSize> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Font?(255, a2, a3, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<MacInterfaceIdiom>, _FixedSizeLayout, EmptyModifier>(255, a2);
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<MacInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type StaticIf<CUVFlexibleFramePredicate, _FlexFrameLayout, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate()
{
  result = lazy protocol witness table cache variable for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate;
  if (!lazy protocol witness table cache variable for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CUVFlexibleButtonPredicate and conformance CUVFlexibleButtonPredicate);
  }

  return result;
}

uint64_t closure #1 in Layout.callAsFunction<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  static ViewBuilder.buildExpression<A>(_:)(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  static ViewBuilder.buildExpression<A>(_:)(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t initializeBufferWithCopyOfBuffer for ActionsLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v4, v5);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithCopy for ActionsLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content(v4, v5);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t assignWithTake for ActionsLayout(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t getEnumTagSinglePayload for ActionsLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionsLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentUnavailableLabelStyle(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t *assignWithCopy for ContentUnavailableLabelStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t *assignWithTake for ContentUnavailableLabelStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentUnavailableLabelStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ContentUnavailableLabelStyle(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ContentUnavailableViewSpecs(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 12) = *(a2 + 3);
  return a1;
}

uint64_t *assignWithCopy for ContentUnavailableViewSpecs(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Bool>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

uint64_t *assignWithTake for ContentUnavailableViewSpecs(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v6, v7);
  *(a1 + 3) = *(a2 + 3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentUnavailableViewSpecs(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ContentUnavailableViewSpecs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ActionsLayout(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ActionsLayout and conformance ActionsLayout();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined copy of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void type metadata accessor for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>()
{
  if (!lazy cache variable for type metadata for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>, &type metadata for PrimitiveButtonStyleConfiguration.Label, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout>, &type metadata for PrimitiveButtonStyleConfiguration.Label, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PrimitiveButtonStyleConfiguration.Label, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized static CUVFlexibleFramePredicate.evaluate(inputs:)()
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)())
  {
    v0 = 1;
  }

  else
  {
    _GraphInputs.interfaceIdiom.getter();
    v0 = AnyInterfaceIdiom.accepts<A>(_:)();
  }

  return v0 & 1;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WidgetLabelModifier>, lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier, &unk_1EFF93F20, MEMORY[0x1E697FDE8]);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVySiSgGACyxGAA04ViewF0AAWlTm_0(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for LabelStyleWritingModifier<ContentUnavailableLabelStyle>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WidgetLabelModifier>, lazy protocol witness table accessor for type WidgetLabelModifier and conformance WidgetLabelModifier, &unk_1EFF93F20, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WidgetLabelModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

uint64_t specialized static CUVFlexibleButtonPredicate.evaluate(inputs:)()
{
  lazy protocol witness table accessor for type EffectiveButtonStyleInput and conformance EffectiveButtonStyleInput();
  PropertyList.subscript.getter();
  lazy protocol witness table accessor for type BorderedButtonStyle and conformance BorderedButtonStyle();
  if (v4 == &type metadata for BorderedButtonStyle)
  {
    v0 = 1;
  }

  else
  {
    lazy protocol witness table accessor for type BorderedProminentButtonStyle and conformance BorderedProminentButtonStyle();
    v0 = v4 == &type metadata for BorderedProminentButtonStyle;
  }

  lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle();
  _GraphInputs.interfaceIdiom.getter();
  v1 = AnyInterfaceIdiom.accepts<A>(_:)();
  v2 = v4 == &type metadata for DefaultButtonStyle || v0;
  if (v1)
  {
    return v2;
  }

  else
  {
    return v0;
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for VStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>>)
  {
    type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>(255);
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>);
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)()
{
  if (!lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>))
  {
    _sSay7SwiftUI15AnyFontModifierCGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>, MEMORY[0x1E69E6720]);
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>));
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>)
  {
    type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>();
    type metadata accessor for InterfaceIdiomPredicate<WidgetInterfaceIdiom>(255, &lazy cache variable for type metadata for _ForegroundStyleModifier<HierarchicalShapeStyle>, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>)
  {
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA4FontVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)
  {
    type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>(255);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>();
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyTransformModifier<[AnyFontModifier]> and conformance _EnvironmentKeyTransformModifier<A>, type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>();
    type metadata accessor for _EnvironmentKeyTransformModifier<[AnyFontModifier]>(255);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<_ViewModifier_Content<WidgetLabelModifier>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyTransformModifier<[AnyFontModifier]>>);
    }
  }
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA019EnabledTechnologiesD033_E3F97FE8C846010147E7A62076265464LLV_Tt1B5(int a1, unsigned int a2)
{
  v3 = (a2 & 0x10000) == 0 && a1 == a2;
  if ((a1 & 0x10000) != 0)
  {
    return HIWORD(a2) & 1;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA18TextInputDictationV0D033_358223D01E778F87FED5B25B5CFE864DLLV_Tt1B5(unsigned int a1, int a2)
{
  v2 = ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000) >> 16);
  if (((a2 & 0xFFFFFF ^ a1) >> 8))
  {
    v2 = 0;
  }

  if ((a1 ^ a2))
  {
    v2 = 0;
  }

  if (a2 == 2)
  {
    v2 = 0;
  }

  if (a1 == 2)
  {
    return a2 == 2;
  }

  else
  {
    return v2;
  }
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV026FileDialogDefaultDirectoryD033_32C407AD02CC1B67BCA8437EDE8ACBC6LLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for URL?();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (URL?, URL?)();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  outlined init with copy of URL?(a1, v13);
  outlined init with copy of URL?(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    v17 = v16(&v13[v15], 1, v4);
    if (v17 == 1)
    {
      v18 = type metadata accessor for URL?;
    }

    else
    {
      v18 = type metadata accessor for (URL?, URL?);
    }

    if (v17 == 1)
    {
      v19 = -1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    outlined init with copy of URL?(v13, v10);
    if (v16(&v13[v15], 1, v4) == 1)
    {
      (*(v5 + 8))(v10, v4);
      v19 = 0;
      v20 = type metadata accessor for (URL?, URL?);
    }

    else
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      lazy protocol witness table accessor for type URL and conformance URL();
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      v20 = type metadata accessor for URL?;
    }

    v18 = v20;
  }

  outlined destroy of (URL?, URL?)(v13, v18);
  return v19 & 1;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV024FileDialogBrowserOptionsD033_32C407AD02CC1B67BCA8437EDE8ACBC6LLV_Tt1B5(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = (a1 == a3) & ~a4;
  if (a2)
  {
    v4 = a4;
  }

  return v4 & 1;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA29TableColumnCustomizationIDKey33_AD0B7B82D3360F70EB1ED1A484B203ACLLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v19 = *(a1 + 24);
  v11 = *(a1 + 32);
  if (v11 == 255)
  {
    if (v7 == 255)
    {
      return 1;
    }

LABEL_14:
    outlined init with copy of AnyAccessibilityValue?(a2, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?);
    outlined consume of TableColumnCustomizationID?(v9, v8, v10, v19, v11);
    outlined consume of TableColumnCustomizationID?(v4, v3, v6, v5, v7);
    return 0;
  }

  if (v7 == 255)
  {
    outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?);
    outlined copy of TableColumnCustomizationID.Base(v9, v8, v10, v19, v11 & 1);
    outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, v11 & 1);
    goto LABEL_14;
  }

  if ((v11 & 1) == 0)
  {
    if ((v7 & 1) == 0)
    {
      if (v9 == v4 && v8 == v3)
      {
        outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?);
        outlined consume of TableColumnCustomizationID.Base(v4, v3, v10, v19, 0);
        return 1;
      }

      v15 = a1;
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined init with copy of AnyAccessibilityValue?(v15, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?);
      outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, 0);
      return (v16 & 1) != 0;
    }

LABEL_16:
    outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?);
    outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, v11 & 1);
    return 0;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_16;
  }

  if (v9 != v4 || v8 != v3)
  {
    v12 = a1;
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a1 = v12;
    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (v10 == v6 && v19 == v5)
  {
    outlined init with copy of AnyAccessibilityValue?(a1, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?);
    outlined consume of TableColumnCustomizationID.Base(v9, v8, v6, v5, 1);
    return 1;
  }

  v17 = a1;
  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined init with copy of AnyAccessibilityValue?(v17, v20, &lazy cache variable for type metadata for TableColumnCustomizationID?);
  outlined consume of TableColumnCustomizationID.Base(v9, v8, v10, v19, 1);
  result = 1;
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return result;
}

BOOL _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA0C6ValuesV02__D17_barConfiguration33_2144E363A5C573328950F48844B228C4LLV_Tt1g5(uint64_t a1, char a2, uint64_t a3, char a4)
{
  result = (a1 | a3) == 0;
  if (a1 && a3)
  {

    if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI20ContentScrollViewBoxV_Tt1g5(v9, a3) & 1) == 0)
    {

      return 0;
    }

    if (a2 == 4)
    {

      if (a4 != 4)
      {
        return 0;
      }
    }

    else
    {

      if (a4 == 4 || a2 != a4)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018ToolbarItemMetricsD0V_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) & *(a2 + 32);
  if ((*(a1 + 32) & 1) == 0 && (*(a2 + 32) & 1) == 0)
  {
    v2 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16)))));
  }

  return v2 & 1;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance AssistiveAccessKey@<X0>(_BYTE *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static AssistiveAccessKey.defaultValue;
  return result;
}

uint64_t EnvironmentValues.accessibilityAssistiveAccessEnabled.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t key path getter for EnvironmentValues.accessibilityAssistiveAccessEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.accessibilityAssistiveAccessEnabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<AssistiveAccessKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<AssistiveAccessKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.accessibilityEnabledTechnologies.getter@<X0>(_WORD *a1@<X8>)
{
  if (!*(v1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);
    result = PropertyList.subscript.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    *a1 = v6;
    return result;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);

  PropertyList.Tracker.value<A>(_:for:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  result = EnvironmentValues.accessibilitySettingsDefinition.getter();
  if (v5 == 1 || (type metadata accessor for PlatformAccessibilitySettingsDefinition(), (result = static PlatformAccessibilitySettingsDefinition.for (system:)()) == 0))
  {
    *a1 = 0;
  }

  else
  {
    v4 = PlatformAccessibilitySettingsDefinition.enabledTechnologies.getter();
    AccessibilityTechnologies.init(list:)(v4, a1);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.accessibilityEnabledTechnologies : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.accessibilityEnabledTechnologies.setter()
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);

  PropertyList.subscript.setter();
  if (*(v0 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t (*EnvironmentValues.accessibilityEnabledTechnologies.modify(uint64_t a1))(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  EnvironmentValues.accessibilityEnabledTechnologies.getter((a1 + 28));
  return EnvironmentValues.accessibilityEnabledTechnologies.modify;
}

uint64_t EnvironmentValues.accessibilityEnabledTechnologies.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  *(a1 + 24) = *(a1 + 28);
  *(a1 + 26) = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);

  PropertyList.subscript.setter();
  if (v1)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

BOOL EnvironmentValues.isEnabled(for:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v6 = *v1;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v5);
  v3 = 1 << (v2 & 0xF);
  if (v2 > 0xF)
  {
    v3 = 0;
  }

  return (v3 & (v5 ^ 0xFFFF)) == 0;
}

uint64_t EnvironmentValues.setIsEnabled(_:for:)(char a1, unsigned __int8 *a2)
{
  v4 = a1 & 1;
  v5 = *a2;
  v6 = *v2;
  v7 = v2[1];

  v14 = v6;
  v15 = v7;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v13);
  if (v5 <= 0xF)
  {
    v8 = 1 << (v5 & 0xF);
  }

  else
  {
    v8 = 0;
  }

  v9 = (v8 & (v13 ^ 0xFFFF)) == 0;

  if (v9 == v4)
  {
    return result;
  }

  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v13);
  if (v5 < 0x11)
  {
    if (v5 == 16)
    {
      v11 = 0;
    }

    else
    {
      v11 = 1 << (v5 & 0xF);
    }

    if ((a1 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if ((a1 & 1) == 0)
    {
LABEL_7:
      v12 = v13 & ~v11;
LABEL_14:
      v13 = v12;
      goto LABEL_15;
    }
  }

  v12 = v13;
  if ((v11 & ~v13) != 0)
  {
    v12 = v13 | v11;
    goto LABEL_14;
  }

LABEL_15:
  LOWORD(v14) = v12;
  BYTE2(v14) = 0;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnabledTechnologiesKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnabledTechnologiesKey>);

  PropertyList.subscript.setter();
  if (v7)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t EnvironmentValues.accessibilityFullKeyboardAccessEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 2) & 1;
}

uint64_t EnvironmentValues.accessibilityVoiceControlEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 3) & 1;
}

uint64_t EnvironmentValues.accessibilityHoverTextEnabled.getter()
{
  v3 = *v0;
  EnvironmentValues.accessibilityEnabledTechnologies.getter(&v2);
  return (v2 >> 4) & 1;
}

uint64_t outlined consume of TableColumnCustomizationID?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return outlined consume of TableColumnCustomizationID.Base(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t outlined destroy of (URL?, URL?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t outlined destroy of (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  type metadata accessor for (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for (Toolbar.UpdateContext?, Toolbar.UpdateContext?)(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for AnyAccessibilityValue?(255, a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t key path getter for EnvironmentValues.isEnabled : EnvironmentValues@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t key path getter for EnvironmentValues.isToggleOn : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.isToggleOn : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.automaticButtonStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a4;
  v21 = a5;
  v22 = a2;
  v20 = a1;
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WrappedButtonStyle();
  swift_getWitnessTable();
  v9 = type metadata accessor for ButtonStyleModifier();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - v11;
  swift_getWitnessTable();
  v13 = type metadata accessor for AutomaticStyleOverrideModifier();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(v6 + 16))(v8, v20, a3, v15);
  ButtonStyleModifier.init<A>(style:)(v8, a3);
  (*(v10 + 32))(v17, v12, v9);
  MEMORY[0x18D00A570](v17, v22, v13, v23);
  return (*(v14 + 8))(v17, v13);
}

uint64_t View.automaticButtonStyle<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v25 = a4;
  v23 = a6;
  v24 = a2;
  v22 = a1;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ButtonStyleModifier();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - v13;
  swift_getWitnessTable();
  v15 = type metadata accessor for AutomaticStyleOverrideModifier();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v21 - v18;
  (*(v8 + 16))(v10, v22, a3, v17);
  FormatInputToString.init(format:)(v10, a3, a5);
  (*(v12 + 32))(v19, v14, v11);
  MEMORY[0x18D00A570](v19, v24, v15, v25);
  return (*(v16 + 8))(v19, v15);
}

uint64_t key path getter for EnvironmentValues.tintColor : EnvironmentValues@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t key path getter for EnvironmentValues.toolbarItemPlacement : EnvironmentValues(uint64_t a1)
{
  if (*(a1 + 8))
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ToolbarItemPlacementKey>, &type metadata for ToolbarItemPlacementKey, &protocol witness table for ToolbarItemPlacementKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ToolbarItemPlacementKey> and conformance EnvironmentPropertyKey<A>();

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.displayMenuAsPalette : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.displayMenuAsPalette : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayMenuAsPaletteKey>, &type metadata for DisplayMenuAsPaletteKey, &protocol witness table for DisplayMenuAsPaletteKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<DisplayMenuAsPaletteKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues.menuActionDismissBehavior : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.menuActionDismissBehavior : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MenuActionDismissBehaviorKey>, &type metadata for MenuActionDismissBehaviorKey, &protocol witness table for MenuActionDismissBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<MenuActionDismissBehaviorKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

double key path getter for EnvironmentValues.triggerSubmission : EnvironmentValues@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.triggerSubmission : EnvironmentValues(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);

  outlined copy of AppIntentExecutor?(v3);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>();
  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t key path getter for EnvironmentValues.paletteSelectionEffect : EnvironmentValues@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.paletteSelectionEffect : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Button<PrimitiveButtonStyleConfiguration.Label>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<PaletteSelectionEffectKey>, &type metadata for PaletteSelectionEffectKey, &protocol witness table for PaletteSelectionEffectKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<PaletteSelectionEffectKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitiv()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContex)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitive,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
    type metadata accessor for ContainerContextPredicate<ListContainerContext>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlatformFallbackButtonStyle>, lazy protocol witness table accessor for type PlatformFallbackButtonStyle and conformance PlatformFallbackButtonStyle, &type metadata for PlatformFallbackButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContex);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primi()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>,;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>,)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier>>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInp( 255,  &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, Primitive,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationCo( &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButton,  type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<De,  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier,  lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<AccessibilityRepresentableStyleContext>, ButtonStyleContainerModifier<AccessibilityButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
    lazy protocol witness table accessor for type StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>, PrimitiveButtonStyleContainerModifier<DefaultListButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<InterfaceIdiomPredicate<ClarityUIInterfaceIdiom>, ButtonStyleContainerModifier<PlatterButtonStyle>, EmptyModifier>, lazy protocol witness table accessor for type InterfaceIdiomPredicate<ClarityUIInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>, lazy protocol witness table accessor for type ButtonStyleContainerModifier<PlatterButtonStyle> and conformance ButtonStyleContainerModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationContext}>>>,);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<PrimitiveButtonStyleConfiguration.Label>, StaticIf<AndOperationViewInputPredicate<OrOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>, ContainerContextPredicate<ListContainerContext>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>, AndOperationViewInputPredicate<InvertedViewInputPredicate<AndOperationViewInputPredicate<InvertedViewInputPredicate<ContainerContextStylingDisabled>, ContainerContextStylingFeatureEnabled>>, StyleContextAcceptsPredicate<GroupedFormStyleContext>>>, InvertedViewInputPredicate<StyleContextAcceptsAnyPredicate<Pack{HostingConfigurationCo(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

uint64_t static WheelPickerStyle._makeView<A>(value:inputs:)()
{
  type metadata accessor for WheelPicker();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for WheelPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t static WheelPickerStyle._makeViewList<A>(value:inputs:)()
{
  type metadata accessor for WheelPicker();
  type metadata accessor for _PickerValue();
  type metadata accessor for _GraphValue();
  _GraphValue.value.getter();
  type metadata accessor for WheelPickerStyle.Body();
  swift_getWitnessTable();
  _GraphValue.init<A>(_:)();
  swift_getWitnessTable();
  return static View.makeDebuggableViewList(view:inputs:)();
}

uint64_t WheelPickerStyle.Body.base.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _PickerValue();
  Value = AGGraphGetValue();
  return (*(*(v2 - 8) + 16))(a1, Value, v2);
}

uint64_t WheelPickerStyle.Body.value.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PickerStyleConfiguration();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  v15[0] = &type metadata for WheelPickerStyle;
  v15[1] = a1;
  v15[2] = &protocol witness table for WheelPickerStyle;
  v15[3] = a2;
  v10 = type metadata accessor for _PickerValue();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v15 - v11;
  WheelPickerStyle.Body.base.getter(v15 - v11);
  v13 = *(v7 + 32);
  v13(v9, v12, v6);
  return (v13)(a3, v9, v6);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance WheelPickerStyle.Body<A>@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WheelPicker();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t *initializeBufferWithCopyOfBuffer for WheelPicker(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ((v6 + 16) & ~v6) + *(v5 + 64);
  v8 = *(v5 + 80) & 0x100000;
  v9 = *a2;
  *a1 = *a2;
  if (v6 > 7 || v8 != 0 || ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 9 > 0x18)
  {
    a1 = (v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16)));
  }

  else
  {
    v12 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v12 = *v13;
    v14 = *(v5 + 16);

    v14(v12 + 1, v13 + 1, v4);
    v16 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v17 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    *v16 = *v17;
    *(v16 + 8) = *(v17 + 8);
  }

  return a1;
}

void *initializeWithTake for WheelPicker(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *v6;
  v7 = *(*(a3 + 16) - 8);
  v8 = v7 + 32;
  v9 = *(v7 + 80);
  (*(v7 + 32))((v5 + v9 + 8) & ~v9, (v6 + v9 + 8) & ~v9);
  v10 = ((v9 + 16) & ~v9) + *(v8 + 32) + 7;
  v11 = (a1 + v10) & 0xFFFFFFFFFFFFFFF8;
  v12 = (a2 + v10) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 8) = *(v12 + 8);
  return a1;
}

void *assignWithTake for WheelPicker(void *a1, void *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 40;
  v10 = *(v8 + 80);
  (*(v8 + 40))((v7 + v10 + 8) & ~v10, (v10 + 8 + v6) & ~v10);
  v11 = ((v10 + 16) & ~v10) + *(v9 + 24) + 7;
  v12 = (a1 + v11) & 0xFFFFFFFFFFFFFFF8;
  v13 = (a2 + v11) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;

  *(v12 + 8) = *(v13 + 8);
  return a1;
}

uint64_t getEnumTagSinglePayload for WheelPicker(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((v17 + v6 + 8) & ~v6);
    }

    v18 = *v17;
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    return (v18 + 1);
  }

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

void storeEnumTagSinglePayload for WheelPicker(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + ((v9 + 16) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
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
      v17 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);

        v19((v17 + v9 + 8) & ~v9);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *v17 = v18;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
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

uint64_t WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v2 = *(a1 + 16);
  v30 = *(a1 + 24);
  v29 = type metadata accessor for PickerStyleConfiguration.Content();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v4 = v2;
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  type metadata accessor for LabeledContent();
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>();
  v5 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v47 = lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  WitnessTable = swift_getWitnessTable();
  v45 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v42 = swift_getWitnessTable();
  v43 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v7 = OpaqueTypeMetadata2;
  v28 = OpaqueTypeMetadata2;
  v38 = OpaqueTypeMetadata2;
  v39 = v5;
  v40 = OpaqueTypeConformance2;
  v41 = swift_getWitnessTable();
  type metadata accessor for GroupElementsOfContent();
  type metadata accessor for Group();
  v37 = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = type metadata accessor for _UnaryViewAdaptor();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = v4;
  v20 = v4;
  v21 = v30;
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(v20, v30, v22, v23);
  swift_checkMetadataState();
  View.verticalStackOrientation()();
  v33 = v19;
  v34 = v21;
  v35 = v18;
  v36 = v31;
  _UnaryViewAdaptor.init(content:)();
  v24 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v11, v8, v24);
  v25 = *(v9 + 8);
  v25(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)(v14, v8, v24);
  v25(v14, v8);
  return (*(v15 + 8))(v18, v28);
}

uint64_t closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v47 = a1;
  v48 = a2;
  v49 = a5;
  v46 = type metadata accessor for WheelPicker();
  v44 = *(v46 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v8 = v38 - v7;
  v42 = a3;
  v43 = a4;
  v9 = type metadata accessor for PickerStyleConfiguration.Content();
  v51 = v9;
  v52 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v13 = v38 - v12;
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  type metadata accessor for LabeledContent();
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>();
  v14 = type metadata accessor for ModifiedContent();
  v51 = v9;
  v52 = &protocol witness table for PickerStyleConfiguration<A>.Content;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = OpaqueTypeConformance2;
  v16 = lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  v59 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v60 = v16;
  WitnessTable = swift_getWitnessTable();
  v18 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v57 = WitnessTable;
  v58 = v18;
  v19 = swift_getWitnessTable();
  v20 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v55 = v19;
  v56 = v20;
  v41 = v14;
  v39 = swift_getWitnessTable();
  v38[1] = OpaqueTypeMetadata2;
  v51 = OpaqueTypeMetadata2;
  v52 = v14;
  v53 = OpaqueTypeConformance2;
  v54 = v39;
  v38[2] = type metadata accessor for GroupElementsOfContent();
  v21 = type metadata accessor for Group();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v38 - v27;
  (*(v11 + 16))(v13, v47, OpaqueTypeMetadata2, v26);
  v29 = v44;
  v30 = v8;
  v31 = v46;
  (*(v44 + 16))(v8, v48, v46);
  v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v33 = swift_allocObject();
  v34 = v43;
  *(v33 + 16) = v42;
  *(v33 + 24) = v34;
  (*(v29 + 32))(v33 + v32, v30, v31);
  Group.init<A, B>(subviews:transform:)();
  v50 = swift_getWitnessTable();
  v35 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v24, v21, v35);
  v36 = *(v22 + 8);
  v36(v24, v21);
  static ViewBuilder.buildExpression<A>(_:)(v28, v21, v35);
  return (v36)(v28, v21);
}

uint64_t closure #1 in closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a2;
  v33 = a5;
  v32 = type metadata accessor for Binding();
  v8 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v10 = &v30 - v9;
  type metadata accessor for PickerStyleConfiguration();
  PickerStyleConfiguration.$selection.getter();
  v11 = _VariadicView_Children.tagIndex<A>(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v8 + 8))(v10, v32);
  v37 = a1;
  v38 = v11;
  v39 = v13;
  v40 = v15;
  v41 = v17 & 1;
  v34 = a3;
  v35 = a4;
  v36 = v31;
  type metadata accessor for PickerStyleConfiguration.Label();
  type metadata accessor for WheelPicker_Phone<DataSource>(0, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
  v18 = lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>();
  LabeledContent<>.init(content:label:)(partial apply for closure #1 in closure #1 in closure #1 in WheelPicker.body.getter, partial apply for closure #2 in closure #1 in closure #1 in WheelPicker.body.getter, v48);
  v19 = type metadata accessor for LabeledContent();
  v46 = &protocol witness table for PickerStyleConfiguration<A>.Label;
  v47 = v18;
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent();
  View.input<A>(_:)();
  (*(*(v19 - 8) + 8))(v48, v19);
  type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityCombinedLabeledContent>, lazy protocol witness table accessor for type AccessibilityCombinedLabeledContent and conformance AccessibilityCombinedLabeledContent, &type metadata for AccessibilityCombinedLabeledContent, MEMORY[0x1E697FD28]);
  v21 = type metadata accessor for ModifiedContent();
  v22 = lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityCombinedLabeledContent> and conformance ViewInputFlagModifier<A>();
  v44 = WitnessTable;
  v45 = v22;
  v23 = swift_getWitnessTable();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>();
  MEMORY[0x18D00A570](v48, v24, v21, v24, v23);

  (*(*(v21 - 8) + 8))(v49, v21);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>();
  v25 = type metadata accessor for ModifiedContent();
  v26 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v42 = v23;
  v43 = v26;
  v27 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v48, v25, v27);
  v28 = *(*(v25 - 8) + 8);
  v28(v48, v25);
  static ViewBuilder.buildExpression<A>(_:)(v49, v25, v27);
  return v28(v49, v25);
}

double closure #1 in closure #1 in closure #1 in WheelPicker.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  outlined init with copy of SubviewsCollection(a1, a6);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a2;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = a5 & 1;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  *(v15 + 32) = a2;
  *(v15 + 40) = a3;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5 & 1;
  type metadata accessor for [Int](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E62F8]);
  Binding.init(get:set:)();
  *(a6 + 64) = v17;
  result = *&v18;
  *(a6 + 72) = v18;
  return result;
}

void *closure #1 in closure #1 in closure #1 in closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char a4@<W5>, uint64_t *a5@<X8>)
{
  type metadata accessor for [Int](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18CD63400;
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4 & 1;
  type metadata accessor for Binding<Int?>();
  result = MEMORY[0x18D00ACC0](&v13);
  if (v14)
  {
    v12 = 0;
  }

  else
  {
    v12 = v13;
  }

  *(v10 + 32) = v12;
  *a5 = v10;
  return result;
}

uint64_t closure #2 in closure #1 in closure #1 in WheelPicker.body.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(a2, a3, a3, a4);
  v4 = type metadata accessor for PickerStyleConfiguration.Label();
  v5 = static ViewBuilder.buildExpression<A>(_:)(v4, v4, &protocol witness table for PickerStyleConfiguration<A>.Label);

  return static ViewBuilder.buildExpression<A>(_:)(v5, v4, &protocol witness table for PickerStyleConfiguration<A>.Label);
}

unint64_t lazy protocol witness table accessor for type DataSource and conformance DataSource()
{
  result = lazy protocol witness table cache variable for type DataSource and conformance DataSource;
  if (!lazy protocol witness table cache variable for type DataSource and conformance DataSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataSource and conformance DataSource);
  }

  return result;
}

void type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>)
  {
    type metadata accessor for _SemanticFeature<Semantics_v2>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>);
    }
  }
}

void type metadata accessor for _SemanticFeature<Semantics_v2>()
{
  if (!lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>)
  {
    v0 = type metadata accessor for _SemanticFeature();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v2>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>()
{
  result = lazy protocol witness table cache variable for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>;
  if (!lazy protocol witness table cache variable for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>)
  {
    type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for WheelPicker_Phone<DataSource>, lazy protocol witness table accessor for type DataSource and conformance DataSource, &unk_1EFF94338, type metadata accessor for WheelPicker_Phone);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WheelPicker_Phone<DataSource> and conformance WheelPicker_Phone<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier>();
    lazy protocol witness table accessor for type WheelPickerRow<AnyHashable, Subview> and conformance WheelPickerRow<A, B>(&lazy protocol witness table cache variable for type _SemanticFeature<Semantics_v2> and conformance _SemanticFeature<A>, type metadata accessor for _SemanticFeature<Semantics_v2>);
    lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v2>, WheelPickerLabelsHiddenModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type WheelPickerRow<AnyHashable, Subview> and conformance WheelPickerRow<A, B>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier()
{
  result = lazy protocol witness table cache variable for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier;
  if (!lazy protocol witness table cache variable for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier);
  }

  return result;
}

uint64_t protocol witness for CustomWheelPickerDataSource.rows(in:) in conformance DataSource@<X0>(uint64_t *a1@<X8>)
{
  result = specialized DataSource.rows(in:)();
  *a1 = result;
  return result;
}

uint64_t partial apply for closure #1 in closure #1 in WheelPicker.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for WheelPicker() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return closure #1 in closure #1 in WheelPicker.body.getter(a1, v8, v5, v6, a2);
}

uint64_t objectdestroy_8Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void type metadata accessor for Binding<Int?>()
{
  if (!lazy cache variable for type metadata for Binding<Int?>)
  {
    type metadata accessor for [Int](255, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Int?>);
    }
  }
}

void type metadata accessor for [Int](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6530]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t destroy for DataSource(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t initializeWithCopy for DataSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = v5;

  return a1;
}

uint64_t *assignWithCopy for DataSource(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a2[5];
  v5 = a1[5];
  a1[5] = v4;
  v6 = v4;

  a1[6] = a2[6];

  a1[7] = a2[7];
  return a1;
}

uint64_t assignWithTake for DataSource(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  v6 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t getEnumTagSinglePayload for DataSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for DataSource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for WheelPickerRow<AnyHashable, Subview>()
{
  if (!lazy cache variable for type metadata for WheelPickerRow<AnyHashable, Subview>)
  {
    v0 = type metadata accessor for WheelPickerRow();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for WheelPickerRow<AnyHashable, Subview>);
    }
  }
}

uint64_t specialized DataSource.rows(in:)()
{
  outlined init with copy of SubviewsCollection(v0, v23);
  v1 = SubviewsCollection.endIndex.getter();
  result = SubviewsCollection.endIndex.getter();
  if (result < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  result = SubviewsCollection.endIndex.getter();
  if (v1 < 0 || result < v1)
  {
    goto LABEL_17;
  }

  if (v1)
  {
    v22 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = 0;
    v4 = v22;
    while (1)
    {
      result = _VariadicView_Children.subscript.getter();
      if (v17 < 0xFFFFFFFF80000000)
      {
        break;
      }

      if (v17 > 0x7FFFFFFF)
      {
        goto LABEL_15;
      }

      lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();

      AnyHashable.init<A>(_:)();
      outlined init with copy of Subview(v16, v20 + 8);
      ViewTraitCollection.value<A>(for:defaultValue:)();
      outlined destroy of Subview(v16);
      v21 = (v15 & 1) == 0;
      v22 = v4;
      v6 = *(v4 + 16);
      v5 = *(v4 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v4 = v22;
      }

      *(v4 + 16) = v6 + 1;
      v7 = v4 + 152 * v6;
      v8 = v19;
      *(v7 + 32) = v18;
      *(v7 + 48) = v8;
      v9 = v20[0];
      v10 = v20[1];
      v11 = v20[3];
      *(v7 + 96) = v20[2];
      *(v7 + 112) = v11;
      *(v7 + 64) = v9;
      *(v7 + 80) = v10;
      v12 = v20[4];
      v13 = v20[5];
      v14 = v20[6];
      *(v7 + 176) = v21;
      *(v7 + 144) = v13;
      *(v7 + 160) = v14;
      *(v7 + 128) = v12;
      v3 = SubviewsCollection.index(after:)(v3);
      if (!--v1)
      {
        outlined destroy of LazySequence<SubviewsCollection>(v23);
        return v4;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  outlined destroy of LazySequence<SubviewsCollection>(v23);
  return MEMORY[0x1E69E7CC0];
}

uint64_t outlined destroy of LazySequence<SubviewsCollection>(uint64_t a1)
{
  type metadata accessor for WheelPicker_Phone<DataSource>(0, &lazy cache variable for type metadata for LazySequence<SubviewsCollection>, lazy protocol witness table accessor for type SubviewsCollection and conformance SubviewsCollection, MEMORY[0x1E697F4E8], MEMORY[0x1E69E6A48]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>();
    lazy protocol witness table accessor for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>();
    lazy protocol witness table accessor for type LabelsHiddenModifier and conformance LabelsHiddenModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>)
  {
    type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WheelPickerLabelsHiddenModifier>, lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier, &unk_1EFF942C0, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<WheelPickerLabelsHiddenModifier>, LabelsHiddenModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for WheelPicker_Phone<DataSource>(255, &lazy cache variable for type metadata for _ViewModifier_Content<WheelPickerLabelsHiddenModifier>, lazy protocol witness table accessor for type WheelPickerLabelsHiddenModifier and conformance WheelPickerLabelsHiddenModifier, &unk_1EFF942C0, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<WheelPickerLabelsHiddenModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = ~v5;
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-2 - v5) | v5) - *(*(*(a3 + 16) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    (*(v4 + 16))(&a1[v5 + 1] & v6, &a2[v5 + 1] & v6);
  }

  else
  {
    v9 = *a2;
    *v3 = *a2;
    v3 = (v9 + ((v5 + 16) & v6));
  }

  return v3;
}

_BYTE *initializeWithTake for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for TextInputSuggestionsModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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
    goto LABEL_26;
  }

  v9 = ((v6 + 1) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 1] & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
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
        LODWORD(v9) = *a1 | (a1[2] << 16);
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

void storeEnumTagSinglePayload for TextInputSuggestionsModifier(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(v6 + 80);
  v10 = ((v9 + 1) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
LABEL_44:
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
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
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
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 1] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for OnChangeOfSuggestionsModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t assignWithCopy for OnChangeOfSuggestionsModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for OnChangeOfSuggestionsModifier(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for OnChangeOfSuggestionsModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OnChangeOfSuggestionsModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *assignWithTake for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 40))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t TextInputSuggestionsModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v29 = a2;
  swift_getWitnessTable();
  v3 = type metadata accessor for _ViewModifier_Content();
  v26 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v27 = lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
  v42 = *(a1 + 24);
  v5 = v42;
  WitnessTable = swift_getWitnessTable();
  v38 = &type metadata for EnvironmentValues.TextInputSuggestions;
  v39 = v4;
  v40 = v27;
  v41 = WitnessTable;
  type metadata accessor for StaticSourceWriter();
  v6 = v3;
  v7 = type metadata accessor for ModifiedContent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>();
  v11 = type metadata accessor for ModifiedContent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  v31 = v26;
  v32 = v5;
  v33 = v28;
  v18 = swift_getWitnessTable();
  View.viewAlias<A, B>(_:_:)(&type metadata for EnvironmentValues.TextInputSuggestions, partial apply for closure #1 in TextInputSuggestionsModifier.body(content:), v30, v6, &type metadata for EnvironmentValues.TextInputSuggestions, v4, v18);
  v36 = v18;
  v37 = &protocol witness table for StaticSourceWriter<A, B>;
  v19 = swift_getWitnessTable();
  lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions();
  View.input<A>(_:)();
  (*(v8 + 8))(v10, v7);
  HasTextInput = lazy protocol witness table accessor for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>(&lazy protocol witness table cache variable for type ViewInputFlagModifier<HasTextInputSuggestions> and conformance ViewInputFlagModifier<A>, type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>);
  v34 = v19;
  v35 = HasTextInput;
  v21 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v14, v11, v21);
  v22 = *(v12 + 8);
  v22(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)(v17, v11, v21);
  return (v22)(v17, v11);
}

uint64_t closure #1 in TextInputSuggestionsModifier.body(content:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[0] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  if (*a1 == 1)
  {
    v20 = type metadata accessor for TextInputSuggestionsModifier();
    static ViewBuilder.buildExpression<A>(_:)(&a1[*(v20 + 36)], a2, a3);
    static ViewBuilder.buildExpression<A>(_:)(v12, a2, a3);
    (*(v7 + 8))(v12, a2);
    (*(v7 + 32))(v16, v9, a2);
    (*(v7 + 56))(v16, 0, 1, a2);
  }

  else
  {
    (*(v7 + 56))(v16, 1, 1, a2);
  }

  static ToolbarContentBuilder.buildIf<A>(_:)(v16, v19);
  v21 = *(v14 + 8);
  v21(v16, v13);
  v24[1] = a3;
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v19, v13, WitnessTable);
  return (v21)(v19, v13);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance HasTextInputSuggestions()
{
  lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions();
  PropertyList.subscript.getter();
  return v1;
}

uint64_t TextInputSuggestions.platformItemContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = *(a1 + 16);
  type metadata accessor for MergePlatformItemsView<ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>>();
  v4 = *(a1 + 24);
  v18 = v3;
  v19 = v5;
  v20 = v4;
  v21 = &protocol witness table for MergePlatformItemsView<A>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v7 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  v13 = swift_checkMetadataState();
  View.map<A>(_:)();
  v18 = v3;
  v19 = v13;
  v20 = v4;
  v21 = &protocol witness table for MergePlatformItemsView<A>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)(v9, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v15 = *(v7 + 8);
  v15(v9, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v15)(v12, OpaqueTypeMetadata2);
}

void closure #1 in TextInputSuggestions.platformItemContent.getter(uint64_t a1@<X8>)
{
  MappedViewElement.view.getter();
  type metadata accessor for ModifiedContent<<<opaque return type of MappedViewElement.view>>.0, _PreferenceTransformModifier<PlatformItemList.Key>>();
  v3 = (a1 + *(v2 + 36));
  *v3 = closure #1 in View.forcePlatformItem();
  v3[1] = 0;
}

uint64_t static OnChangeOfSuggestionsModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v6);
  v4 = _GraphInputs.pushStyleContext<A>(_:)();
  a3(v4, v6);
  _ViewListOutputs.makeAttribute(inputs:)();
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  swift_beginAccess();

  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding();
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t OnChangeOfSuggestionsModifier.UpdateBinding.updateValue()()
{
  v1 = v0;
  if (*(v0 + 16) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 16) = *AGGraphGetValue() >> 1;
    *(v0 + 24) = 0xFFFFFFFFLL;
    *(v0 + 32) = 0;
  }

  type metadata accessor for ViewList();
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v16 = 2;
  v5 = (*(v4 + 16))(&v16, v3, v4) == 0;
  __swift_destroy_boxed_opaque_existential_1(v13);
  v6 = *(v0 + 12);
  result = AGGraphGetOutputValue();
  if (!result || v6 == 2 || ((v5 ^ v6) & 1) != 0)
  {
    result = UpdateCycleDetector.dispatch(label:isDebug:)();
    if (result)
    {
      AGGraphClearUpdate();
      v8 = AGGraphGetValue();
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);

      AGGraphSetUpdate();
      LOBYTE(v13[0]) = 17;
      v12 = swift_allocObject();
      *(v12 + 16) = v9;
      *(v12 + 24) = v10;
      *(v12 + 32) = v11;
      *(v12 + 33) = v5;

      static Update.enqueueAction(reason:_:)();
    }
  }

  *(v1 + 12) = v5;
  return result;
}

void *closure #2 in OnChangeOfSuggestionsModifier.UpdateBinding.updateValue()(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  type metadata accessor for Binding<Bool?>();
  result = MEMORY[0x18D00ACC0](&v6);
  if (v6 == 2 || ((v6 ^ a4) & 1) == 0)
  {
    return dispatch thunk of AnyLocation.set(_:transaction:)();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding()
{
  result = lazy protocol witness table cache variable for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding;
  if (!lazy protocol witness table cache variable for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OnChangeOfSuggestionsModifier.UpdateBinding and conformance OnChangeOfSuggestionsModifier.UpdateBinding);
  }

  return result;
}

void type metadata accessor for Binding<Bool?>()
{
  if (!lazy cache variable for type metadata for Binding<Bool?>)
  {
    type metadata accessor for Bool?(255, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<Bool?>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions);
  }

  return result;
}

void type metadata accessor for ViewInputFlagModifier<HasTextInputSuggestions>()
{
  if (!lazy cache variable for type metadata for ViewInputFlagModifier<HasTextInputSuggestions>)
  {
    lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions();
    v0 = type metadata accessor for ViewInputFlagModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ViewInputFlagModifier<HasTextInputSuggestions>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type HasTextInputSuggestions and conformance HasTextInputSuggestions()
{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions;
  if (!lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HasTextInputSuggestions and conformance HasTextInputSuggestions);
  }

  return result;
}

__n128 __swift_memcpy33_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for OnChangeOfSuggestionsModifier.UpdateBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OnChangeOfSuggestionsModifier.UpdateBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for EnvironmentValues.TextInputSuggestions(uint64_t a1)
{
  result = lazy protocol witness table accessor for type EnvironmentValues.TextInputSuggestions and conformance EnvironmentValues.TextInputSuggestions();
  *(a1 + 8) = result;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSbTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 2;
  }

  v6 = a3;
  result = a1(&var1, &v6);
  if (!v4)
  {
    return var1;
  }

  __break(1u);
  return result;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSiSgTg5(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    result = 0;
    v7 = 256;
  }

  else
  {
    v8 = a3;
    result = a1(&v6, &v8);
    if (v4)
    {
      __break(1u);
    }

    else
    {
      HIBYTE(v7) = 0;
      return v6;
    }
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI12SwipeActionsO13ConfigurationV_s5NeverOSo07UISwipefG0CTB5(void (*a1)(uint64_t *__return_ptr, __int128 *))
{
  if (!*(v1 + 3))
  {
    return 0;
  }

  v4 = v1[5];
  v13 = v1[4];
  v14 = v4;
  v15 = v1[6];
  v5 = v1[1];
  v9 = *v1;
  v10 = v5;
  v6 = v1[3];
  v11 = v1[2];
  v12 = v6;
  v16[0] = v9;
  v16[1] = v5;
  v16[2] = v11;
  v16[3] = v6;
  v16[4] = v13;
  v16[5] = v4;
  v16[6] = v15;
  outlined init with copy of SwipeActions.Configuration(v16, v8);
  a1(&v17, &v9);
  v8[4] = v13;
  v8[5] = v14;
  v8[6] = v15;
  v8[0] = v9;
  v8[1] = v10;
  v8[2] = v11;
  v8[3] = v12;
  if (v2)
  {
    result = outlined destroy of SwipeActions.Configuration(v8);
    __break(1u);
  }

  else
  {
    outlined destroy of SwipeActions.Configuration(v8);
    return v17;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF5UIKit24UICellConfigurationStateV_s5NeverOAD012UIBackgroundE0VTg5@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69DC0B8];
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for UICellConfigurationState?, MEMORY[0x1E69DC0B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v19 - v13;
  outlined init with copy of TextSelection??(v5, v19 - v13, &lazy cache variable for type metadata for UICellConfigurationState?, v11);
  v15 = 1;
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v16 = a3;
LABEL_5:
    v17 = type metadata accessor for UIBackgroundConfiguration();
    return (*(*(v17 - 8) + 56))(v16, v15, 1, v17);
  }

  (*(v8 + 32))(v10, v14, v7);
  v16 = a3;
  v20(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v15 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI7BindingVySbG_s5NeverOytTg5(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a4)
  {
    return a4 == 0;
  }

  v9[0] = a3;
  v9[1] = a4;
  v10 = a5 & 1;

  a1(&v11, v9);
  if (!v5)
  {

    return a4 == 0;
  }

  __break(1u);
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI23RootEnvironmentModifier33_4475FD12FD59DEBA453321BD91F6EA04LLV_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, _BYTE *))
{
  outlined init with copy of AnyAccessibilityValue?(v1, v6, &lazy cache variable for type metadata for RootEnvironmentModifier?);
  if (v7 == 1)
  {
    return 2;
  }

  outlined init with take of RootEnvironmentModifier(v6, v5);
  a1(&v8, v5);
  if (v2)
  {
    result = outlined destroy of RootEnvironmentModifier(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of RootEnvironmentModifier(v5);
    return v8;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI21DropOntoConfigurationV_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, _OWORD *))
{
  outlined init with copy of AnyAccessibilityValue?(v1, v6, &lazy cache variable for type metadata for DropOntoConfiguration?);
  if (!*&v6[0])
  {
    return 2;
  }

  v5[0] = v6[0];
  v5[1] = v6[1];
  v5[2] = v6[2];
  a1(&v7, v5);
  if (v2)
  {
    result = outlined destroy of DropOntoConfiguration(v5);
    __break(1u);
  }

  else
  {
    outlined destroy of DropOntoConfiguration(v5);
    return v7;
  }

  return result;
}

void _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI24AccessibilitySliderValueV_s5NeverOytTB5(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a3)
  {
    v21 = a3;
    v22 = a4;
    v23 = a5;
    v24 = a6;
    v11 = a6;
    v12 = a3;
    v13 = a4;
    v14 = a5;
    a1(&v25, &v21);
    if (v6)
    {
      v18 = v22;
      v19 = v23;
      v20 = v24;

      __break(1u);
    }

    else
    {
      v15 = v22;
      v16 = v23;
      v17 = v24;
    }
  }
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI16BridgedListStateVG_s5NeverOytTg5Tm(void *(*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x100000000) != 0)
  {
    return ((a3 & 0x100000000uLL) >> 32);
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v3)
  {
    return ((a3 & 0x100000000uLL) >> 32);
  }

  __break(1u);
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI13TextSelectionVSg_s5NeverOSbTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v13 = a1;
  type metadata accessor for TextSelection?(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  outlined init with copy of TextSelection??(v1, &v12 - v9, &lazy cache variable for type metadata for TextSelection??, type metadata accessor for TextSelection?);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return 2;
  }

  outlined init with take of Binding<SearchFieldState>(v10, v7, type metadata accessor for TextSelection?);
  v13(&v14, v7);
  if (v2)
  {
    result = outlined destroy of SearchFieldState(v7, type metadata accessor for TextSelection?);
    __break(1u);
  }

  else
  {
    outlined destroy of SearchFieldState(v7, type metadata accessor for TextSelection?);
    return v14;
  }

  return result;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF14AttributeGraph0C0Vy7SwiftUI16PreferenceValuesVG_s5NeverOytSgTg5(void *(*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = BYTE4(a3);
  if ((a3 & 0x100000000) != 0)
  {
    v5 = 0;
LABEL_5:
    v8 = v4 & 1;
    return (v5 | ((v4 & 1) << 8));
  }

  v7 = a3;
  result = a1(&v9, &v7);
  if (!v3)
  {
    v5 = v9;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t static FocusStore.Key.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for FocusStore.Entry();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t (*FocusStoreLocation.wasRead.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + *(*v1 + class metadata base offset for FocusStoreLocation + 72));
  return FocusStoreLocation.wasRead.modify;
}

uint64_t FocusStoreLocation.__ivar_destroyer()
{
  v1 = *v0;

  swift_weakDestroy();
  (*(*(*(v1 + class metadata base offset for FocusStoreLocation) - 8) + 8))(&v0[*(*v0 + class metadata base offset for FocusStoreLocation + 32)], *(v1 + class metadata base offset for FocusStoreLocation));
  v2 = *(*v0 + class metadata base offset for FocusStoreLocation + 48);
  swift_getTupleTypeMetadata2();
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + class metadata base offset for FocusStoreLocation + 56);
  type metadata accessor for FocusStore.Entry();
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 8);

  return v6(&v0[v4], v5);
}

uint64_t sub_18C191738()
{
}

uint64_t assignWithTake for FocusStore(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t getEnumTagSinglePayload for FocusStore(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FocusStore(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t initializeBufferWithCopyOfBuffer for FocusStore.Entry(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(*(type metadata accessor for AttributedString() - 8) + 80);
  v7 = *(v5 + 80);
  *a1 = *a2;
  v8 = (v7 | v6) & 0xF8 | 7u;
  return  + ((v8 + 16) & ~v8);
}

uint64_t assignWithCopy for FocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = type metadata accessor for AttributedString();
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v11 + 8;
  v13 = *(v10 + 80) & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v7 + v11 + 8) & v13);
  v15 = ((v8 + v11 + 8) & v13);
  if (v14 == v15)
  {
    return a1;
  }

  v16 = v9;
  v17 = *(v9 - 8);
  v18 = v11 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v19 = *(v10 + 64);
  v51 = v19;
  if (((v11 + 16) & v18) + ((v19 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v20 = 16;
  }

  else
  {
    v20 = ((v11 + 16) & v18) + ((v19 + ((v11 + 9) & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v21 = v14[v20];
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        goto LABEL_19;
      }

      v24 = *v14;
    }

    else if (v23 == 2)
    {
      v24 = *v14;
    }

    else if (v23 == 3)
    {
      v24 = *v14 | (v14[2] << 16);
    }

    else
    {
      v24 = *v14;
    }

    v25 = (v24 | (v22 << (8 * v20))) + 2;
    v21 = v24 + 2;
    if (v20 < 4)
    {
      v21 = v25;
    }
  }

LABEL_19:
  v26 = ~v11;
  if (v21 == 1)
  {
    v50 = *(v9 - 8);
    v27 = a1;
    v28 = v9;

    v26 = ~v11;
    v18 = v11 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
    v16 = v28;
    a1 = v27;
    v17 = v50;
    (*(v50 + 8))((v11 + ((((v12 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)) & v18) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v11, v16);
  }

  else
  {
    swift_weakDestroy();
    swift_weakDestroy();
  }

  v29 = v15[v20];
  v30 = v29 - 2;
  if (v29 >= 2)
  {
    if (v20 <= 3)
    {
      v31 = v20;
    }

    else
    {
      v31 = 4;
    }

    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v32 = *v15;
      }

      else if (v31 == 3)
      {
        v32 = *v15 | (v15[2] << 16);
      }

      else
      {
        v32 = *v15;
      }

LABEL_34:
      v33 = (v32 | (v30 << (8 * v20))) + 2;
      v29 = v32 + 2;
      if (v20 < 4)
      {
        v29 = v33;
      }

      goto LABEL_36;
    }

    if (v31)
    {
      v32 = *v15;
      goto LABEL_34;
    }
  }

LABEL_36:
  if (v29 == 1)
  {
    *v14 = *v15;
    v34 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v35 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v34 = *v35;
    v36 = ((v34 + v12) & v18);
    v37 = ((v35 + v12) & v18);
    *v36 = *v37;
    v36[1] = v37[1];
    v36[2] = v37[2];
    v36[3] = v37[3];
    v38 = (v36 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = (v37 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v40 = *v39;
    *(v38 + 4) = *(v39 + 4);
    *v38 = v40;
    v41 = v11 + 5;
    v42 = (v11 + 5 + v38) & v26;
    v43 = (v41 + v39) & v26;
    v44 = *(v17 + 16);

    v44(v42, v43, v16);
    *(v51 + v42) = *(v51 + v43);
    v45 = (v51 + v42) & 0xFFFFFFFFFFFFFFFCLL;
    v46 = (v51 + v43) & 0xFFFFFFFFFFFFFFFCLL;
    v47 = *(v46 + 4);
    *(v45 + 8) = *(v46 + 8);
    *(v45 + 4) = v47;
    v48 = 1;
  }

  else
  {
    swift_weakCopyInit();
    swift_weakCopyInit();
    v48 = 0;
  }

  v14[v20] = v48;
  return a1;
}

void *initializeBufferWithCopyOfBuffer for FocusStore.Entry.Target(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v18 = *a2;
    *a1 = *a2;
    a1 = (v18 + ((v5 + 16) & ~v5));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = a2[1];
      *a1 = *a2;
      a1[1] = v6;
      type metadata accessor for Binding<SearchFieldState>(0);
      v8 = *(v7 + 32);
      v9 = a1 + v8;
      v10 = a2 + v8;
      *v9 = *(a2 + v8);
      v9[1] = *(a2 + v8 + 1);
      *(v9 + 1) = *(a2 + v8 + 2);
      v9[8] = *(a2 + v8 + 8);
      *(v9 + 1) = *(a2 + v8 + 4);
      v11 = type metadata accessor for SearchFieldState(0);
      v12 = v11[9];
      v13 = type metadata accessor for AttributedString();
      v14 = *(*(v13 - 8) + 16);

      v14(&v9[v12], &v10[v12], v13);
      v9[v11[10]] = v10[v11[10]];
      v15 = v11[11];
      v16 = &v9[v15];
      v17 = &v10[v15];
      v16[4] = v17[4];
      *v16 = *v17;
    }

    else
    {
      swift_weakCopyInit();
      swift_weakCopyInit();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *assignWithCopy for FocusStore.Entry.Target(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      type metadata accessor for Binding<SearchFieldState>(0);
      v6 = *(v5 + 32);
      v7 = a1 + v6;
      v8 = a2 + v6;
      *v7 = *(a2 + v6);
      v7[1] = *(a2 + v6 + 1);
      v7[2] = *(a2 + v6 + 2);
      v7[3] = *(a2 + v6 + 3);
      LODWORD(v6) = *(a2 + v6 + 4);
      v7[8] = v8[8];
      *(v7 + 1) = v6;
      v9 = type metadata accessor for SearchFieldState(0);
      v10 = v9[9];
      v11 = type metadata accessor for AttributedString();
      v12 = *(*(v11 - 8) + 16);

      v12(&v7[v10], &v8[v10], v11);
      v7[v9[10]] = v8[v9[10]];
      v13 = v9[11];
      v14 = &v7[v13];
      v15 = &v8[v13];
      v16 = v15[4];
      *v14 = *v15;
      v14[4] = v16;
    }

    else
    {
      swift_weakCopyInit();
      swift_weakCopyInit();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void *assignWithTake for FocusStore.Entry.Target(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = a2[1];
      *a1 = *a2;
      a1[1] = v5;
      type metadata accessor for Binding<SearchFieldState>(0);
      v7 = *(v6 + 32);
      v8 = a1 + v7;
      v9 = a2 + v7;
      *v8 = *(a2 + v7);
      v8[1] = *(a2 + v7 + 1);
      *(v8 + 1) = *(a2 + v7 + 2);
      v8[8] = *(a2 + v7 + 8);
      *(v8 + 1) = *(a2 + v7 + 4);
      v10 = type metadata accessor for SearchFieldState(0);
      v11 = v10[9];
      v12 = type metadata accessor for AttributedString();
      (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
      v8[v10[10]] = v9[v10[10]];
      v13 = v10[11];
      v14 = &v8[v13];
      v15 = &v9[v13];
      v14[4] = v15[4];
      *v14 = *v15;
    }

    else
    {
      swift_weakTakeInit();
      swift_weakTakeInit();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t (*protocol witness for Location.wasRead.modify in conformance FocusStoreLocation<A>(uint64_t a1))(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 8) = FocusStoreLocation.wasRead.getter() & 1;
  return protocol witness for Location.wasRead.modify in conformance FocusStoreLocation<A>;
}

uint64_t outlined init with copy of TextSelection??(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Binding<SearchFieldState>(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t NavigationSelectionHost.selectionSeedByStackKey.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSelectionHost and conformance NavigationSelectionHost, type metadata accessor for NavigationSelectionHost);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t NavigationSelectionHost.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC7SwiftUI23NavigationSelectionHost___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t NavigationSeedHost.seeds.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost, type metadata accessor for NavigationSeedHost);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t NavigationSeedHost.seeds.setter(uint64_t result)
{
  if (*(v1 + 16) == result && *(v1 + 20) == HIDWORD(result))
  {
    *(v1 + 16) = result;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    lazy protocol witness table accessor for type NavigationSelectionHost and conformance NavigationSelectionHost(&lazy protocol witness table cache variable for type NavigationSeedHost and conformance NavigationSeedHost, type metadata accessor for NavigationSeedHost);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t NavigationSeedHost.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUI18NavigationSeedHost___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall UIHostingController.runTest(_:options:)(Swift::String _, Swift::OpaquePointer options)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  if (specialized UIHostingController.testBridge.getter())
  {
    v5 = ++static PPTTestCase.lastTestSeed;
    swift_weakInit();
    v7 = countAndFlagsBits;
    v8 = object;
    rawValue = options._rawValue;
    v10 = v5;

    PPTTestBridge.testCase.setter(v6);
  }
}

double static ListRowInsetsTraitKey.defaultValue.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

uint64_t View.listRowInsets(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3 & 1;
  return MEMORY[0x18D00A570](v6, a4, &type metadata for ListRowInsetTransformerModifier, a5);
}

uint64_t static ListRowInsetTransformerModifier._makeViewList(modifier:inputs:body:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *))
{
  v7 = *MEMORY[0x1E69E9840];
  outlined init with copy of _ViewListInputs(a2, v6);
  _ViewListInputs.traits.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits();
  Attribute.init<A>(body:value:flags:update:)();
  v4 = _ViewListInputs.traits.setter();
  a3(v4, v6);
  return outlined destroy of _ViewListInputs(v6);
}

uint64_t ListRowInsetTransformerModifier.TransformTraits.value.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    ViewTraitCollection.init()();
  }

  else
  {
    v4 = *AGGraphGetValue();
  }

  ViewTraitCollection.listRowInsets.getter();
  if (*AGGraphGetValue())
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  if ((*AGGraphGetValue() & 2) != 0)
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  if ((*AGGraphGetValue() & 4) != 0)
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  if ((*AGGraphGetValue() & 8) != 0)
  {
    AGGraphGetValue();
    OptionalEdgeInsets.subscript.setter();
  }

  ViewTraitCollection.subscript.setter();
  result = ViewTraitCollection.subscript.setter();
  *a2 = v4;
  return result;
}

double EnvironmentValues.listRowInsets.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for _TraitWritingModifier<ListRowInsetsTraitKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ListRowInsetsKey>, &type metadata for ListRowInsetsKey, &protocol witness table for ListRowInsetsKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ListRowInsetsKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

unint64_t lazy protocol witness table accessor for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits()
{
  result = lazy protocol witness table cache variable for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits;
  if (!lazy protocol witness table cache variable for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ListRowInsetTransformerModifier.TransformTraits and conformance ListRowInsetTransformerModifier.TransformTraits);
  }

  return result;
}

uint64_t protocol witness for BadgedViewStyle.makeBody(configuration:) in conformance MultimodalBadgedViewStyle@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  KeyPath = swift_getKeyPath();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;

  return outlined copy of BadgeLabel?(v3, v4, v5);
}

__n128 BadgedViewStyleView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v35 = *v1;
  v36 = *(v1 + 8);
  outlined copy of BadgeLabel?(*v1, v36, v3);
  v8 = static Alignment.center.getter();
  v10 = v9;
  v37 = v3 & 0xFFFFFFFFFFFFFFFELL;
  if ((specialized Environment.wrappedValue.getter(v4, v5) & 1) == 0 || (v3 & 0xFFFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL)
  {
    _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAGyAA5Badge33_582D9E508E536DEAC67BC3C87B3CFE52LLV_AItGGtGGAA31AccessibilityAttachmentModifierVGSgWOi0_(&v90);
  }

  else
  {
    v11 = static VerticalAlignment.center.getter();
    closure #1 in closure #1 in BadgedViewStyleView.body.getter(__src);
    v43 = __src[4];
    v44[0] = __src[5];
    *(v44 + 9) = *(&__src[5] + 9);
    v39 = __src[0];
    v40 = __src[1];
    v41 = __src[2];
    v42 = __src[3];
    v45[0] = __src[0];
    v45[1] = __src[1];
    v45[2] = __src[2];
    v45[3] = __src[3];
    v45[4] = __src[4];
    v46[0] = __src[5];
    *(v46 + 9) = *(&__src[5] + 9);
    outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v39, v50, type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>);
    outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(v45, type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>);
    *&v38[55] = v42;
    *&v38[71] = v43;
    *&v38[87] = v44[0];
    *&v38[7] = v39;
    *&v38[23] = v40;
    *&v38[39] = v41;
    *&v48[97] = *(v44 + 9);
    *&v48[49] = *&v38[48];
    *&v48[65] = *&v38[64];
    *&v48[33] = *&v38[32];
    *&v48[17] = *&v38[16];
    *&v48[1] = *v38;
    v47 = v11;
    v48[0] = 0;
    *&v48[81] = *&v38[80];
    AccessibilityProperties.init()();
    *&v52 = 0x400000004;
    BYTE8(v52) = 0;
    static AccessibilityAttachment.properties(_:)();
    outlined destroy of AccessibilityProperties(v50);
    type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
    v12 = swift_allocObject();
    memcpy((v12 + 16), __src, 0x128uLL);
    v62 = *&v48[80];
    v63 = *&v48[96];
    v58 = *&v48[16];
    v59 = *&v48[32];
    v61 = *&v48[64];
    v60 = *&v48[48];
    v57 = *v48;
    v56 = v47;
    v73 = *&v48[80];
    v74 = *&v48[96];
    v69 = *&v48[16];
    v70 = *&v48[32];
    LOBYTE(v64) = v48[112];
    v72 = *&v48[64];
    v71 = *&v48[48];
    v68 = *v48;
    v67 = v47;
    *&v75 = v64;
    *(&v75 + 1) = v12;
    v76 = 0;
    swift_beginAccess();
    closure #1 in ModifiedContent<>.accessibilityTraits(_:)(v12 + 16, 0x80000, 0x80000);
    v51[2] = v62;
    v52 = v63;
    v50[2] = v58;
    v50[3] = v59;
    v51[0] = v60;
    v51[1] = v61;
    v50[0] = v56;
    v50[1] = v57;
    v53 = v64;
    v54 = v12;
    v55 = 0;
    outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v47, __src, type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>);
    outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v67, __src, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>);
    outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(v50, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>);
    swift_beginAccess();

    closure #1 in ModifiedContent<>.accessibilityIdentifier(_:placement:)(v12 + 16, 0x6567646162, 0xE500000000000000, 2);
    swift_endAccess();

    outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v47, type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>);
    __src[6] = v73;
    __src[7] = v74;
    __src[8] = v75;
    *&__src[9] = v76;
    __src[2] = v69;
    __src[3] = v70;
    __src[4] = v71;
    __src[5] = v72;
    __src[0] = v67;
    __src[1] = v68;
    destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation(__src, v13, v14, v15);
    v96 = __src[6];
    v97 = __src[7];
    v98 = __src[8];
    v99 = *&__src[9];
    v92 = __src[2];
    v93 = __src[3];
    v94 = __src[4];
    v95 = __src[5];
    v90 = __src[0];
    v91 = __src[1];
  }

  v62 = v96;
  v63 = v97;
  v64 = v98;
  v58 = v92;
  v59 = v93;
  v60 = v94;
  v61 = v95;
  v56 = v90;
  v57 = v91;
  v85 = v96;
  v86 = v97;
  v81 = v92;
  v82 = v93;
  *&v65 = v99;
  *(&v65 + 1) = v8;
  v83 = v94;
  v84 = v95;
  v79 = v90;
  v80 = v91;
  v87 = v98;
  v88 = v65;
  v73 = v96;
  v74 = v97;
  v75 = v98;
  v69 = v92;
  v70 = v93;
  v66 = v10;
  v89 = v10;
  v71 = v94;
  v72 = v95;
  v67 = v90;
  v68 = v91;
  v76 = v99;
  v77 = v8;
  v78 = v10;
  outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v56, __src, type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>);
  outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v67, type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>);
  v16 = v6;
  LOBYTE(v50[0]) = v6;
  *(&v50[0] + 1) = v7;
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  State.projectedValue.getter();
  v33 = *(&__src[0] + 1);
  v34 = *&__src[0];
  v17 = __src[1];
  if ((specialized Environment.wrappedValue.getter(v4, v5) & 1) == 0 || v37 == 0x1FFFFFFFELL)
  {
    LOBYTE(__src[0]) = v16;
    *(&__src[0] + 1) = v7;
    State.wrappedValue.getter();
    outlined consume of BadgeLabel?(v35, v36, v3);
    v18 = v50[0];
  }

  else
  {
    outlined consume of BadgeLabel?(v35, v36, v3);
    v18 = 1;
  }

  if ((specialized Environment.wrappedValue.getter(v4, v5) & 1) == 0 || v37 == 0x1FFFFFFFELL)
  {
    LocalizedStringKey.init(stringLiteral:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    type metadata accessor for SwiftUIClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
  }

  v21 = Text.init(_:tableName:bundle:comment:)();
  v23 = v22;
  v25 = v24 & 1;
  outlined copy of Text.Storage(v21, v22, v24 & 1);

  AccessibilityValueStorage.init(description:)();
  AccessibilityProperties.init()();
  outlined destroy of AccessibilityValueStorage?(v51);
  outlined init with copy of AccessibilityValueStorage(&v47, v51);
  static AccessibilityAttachment.properties(_:)();
  outlined consume of Text.Storage(v21, v23, v25);

  outlined destroy of AccessibilityValueStorage(&v47);
  outlined destroy of AccessibilityProperties(v50);
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for MutableBox<AccessibilityAttachment>, MEMORY[0x1E697FFF0], MEMORY[0x1E697DAC0]);
  v26 = swift_allocObject();
  memcpy((v26 + 16), __src, 0x128uLL);
  v27 = v88;
  *(a1 + 128) = v87;
  *(a1 + 144) = v27;
  v28 = v89;
  v29 = v84;
  *(a1 + 64) = v83;
  *(a1 + 80) = v29;
  v30 = v86;
  *(a1 + 96) = v85;
  *(a1 + 112) = v30;
  v31 = v80;
  *a1 = v79;
  *(a1 + 16) = v31;
  result = v82;
  *(a1 + 32) = v81;
  *(a1 + 48) = result;
  *(a1 + 160) = v28;
  *(a1 + 168) = v34;
  *(a1 + 176) = v33;
  *(a1 + 184) = v17;
  *(a1 + 192) = v18;
  *(a1 + 200) = 0x403B000000000000;
  *(a1 + 208) = v26;
  *(a1 + 216) = 0;
  return result;
}

uint64_t closure #1 in closure #1 in BadgedViewStyleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v10[0] = 0;
  closure #1 in closure #1 in closure #1 in BadgedViewStyleView.body.getter(&v23);
  v16 = *&v24[16];
  v17 = *&v24[32];
  v18 = v24[48];
  v14 = v23;
  v15 = *v24;
  v19[2] = *&v24[16];
  v19[3] = *&v24[32];
  v20 = v24[48];
  v19[0] = v23;
  v19[1] = *v24;
  outlined init with copy of TupleView<(Badge, Spacer)>(&v14, &v21);
  outlined destroy of TupleView<(Badge, Spacer)>(v19);
  v13[71] = v18;
  *&v13[55] = v17;
  *&v13[39] = v16;
  *&v13[23] = v15;
  *&v13[7] = v14;
  v12 = 0;
  v3 = *&v13[64];
  *&v22[65] = *&v13[64];
  *(a1 + 8) = 0;
  v4 = v10[0];
  v21 = v2;
  v22[0] = v10[0];
  *&v22[1] = *v13;
  *&v22[49] = *&v13[48];
  *&v22[33] = *&v13[32];
  *&v22[17] = *&v13[16];
  *&v11[23] = *v22;
  *&v11[7] = v2;
  *&v11[80] = *&v22[57];
  *&v11[71] = *&v22[48];
  *&v11[55] = *&v22[32];
  *&v11[39] = *&v22[16];
  *a1 = 0;
  v5 = *v11;
  *(a1 + 25) = *&v11[16];
  *(a1 + 9) = v5;
  v6 = *&v11[32];
  v7 = *&v11[48];
  v8 = *&v11[64];
  *(a1 + 89) = *&v11[80];
  *(a1 + 73) = v8;
  *(a1 + 57) = v7;
  *(a1 + 41) = v6;
  v23 = v2;
  v24[0] = v4;
  *&v24[1] = *v13;
  v26 = v3;
  v25 = *&v13[48];
  *&v24[33] = *&v13[32];
  *&v24[17] = *&v13[16];
  outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v21, v10, type metadata accessor for VStack<TupleView<(Badge, Spacer)>>);
  return outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(&v23, type metadata accessor for VStack<TupleView<(Badge, Spacer)>>);
}

uint64_t closure #1 in closure #1 in closure #1 in BadgedViewStyleView.body.getter@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for standardSpacing != -1)
  {
    v6 = KeyPath;
    swift_once();
    KeyPath = v6;
  }

  v3 = *&static ClarityUIMetrics.standardSpacing + -3.0;
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v3;
  *(a1 + 24) = xmmword_18CD6AC60;
  *(a1 + 40) = 0x401C000000000000;
  *(a1 + 48) = 1;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v4 = KeyPath;
  outlined copy of Environment<Selector?>.Content(KeyPath, 0);

  return outlined consume of Environment<Selector?>.Content(v4, 0);
}

uint64_t key path getter for EnvironmentValues.areMultimodalBadgesEnabled : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.areMultimodalBadgesEnabled : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BadgesEnabledKey>, &type metadata for BadgesEnabledKey, &protocol witness table for BadgesEnabledKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<BadgesEnabledKey> and conformance EnvironmentPropertyKey<A>();

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t Badge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v43 = *(v1 + 24);
  v44 = *(v1 + 16);
  v42 = *(v1 + 48);
  v41 = static VerticalAlignment.center.getter();
  closure #1 in Badge.body.getter(&v45);
  v39 = v46;
  v40 = v45;
  v3 = v48;
  v37 = v49;
  v38 = v47;
  v52 = 1;
  v51 = v48;
  v36 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v50 = 0;
  v35 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  LOBYTE(v45) = 0;
  v34 = static Font.body.getter();
  KeyPath = swift_getKeyPath();
  v32 = static Color.white.getter();
  v31 = swift_getKeyPath();
  static Color.blue.getter();
  v20 = Color.opacity(_:)();

  v21 = static Edge.Set.all.getter();
  static Material.thin.getter();
  v22 = v45;
  v23 = v46;
  v24 = HIDWORD(v46);
  v25 = static Edge.Set.all.getter();
  outlined copy of Material.ID(v22, v23);
  outlined consume of Material.ID(v22, v23);
  v26 = static Alignment.center.getter();
  v28 = v27;
  if (one-time initialization token for clarityUIButtonShadowColor != -1)
  {
    swift_once();
  }

  v29 = static Color.clarityUIButtonShadowColor;
  *a1 = v41;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v40;
  *(a1 + 32) = v39;
  *(a1 + 40) = v38;
  *(a1 + 48) = v3;
  *(a1 + 56) = v37;
  *(a1 + 64) = v36;
  *(a1 + 72) = v5;
  *(a1 + 80) = v7;
  *(a1 + 88) = v9;
  *(a1 + 96) = v11;
  *(a1 + 104) = 0;
  *(a1 + 112) = v35;
  *(a1 + 120) = v13;
  *(a1 + 128) = v15;
  *(a1 + 136) = v17;
  *(a1 + 144) = v19;
  *(a1 + 152) = 0;
  *(a1 + 160) = KeyPath;
  *(a1 + 168) = v34;
  *(a1 + 176) = v31;
  *(a1 + 184) = v32;
  *(a1 + 192) = v20;
  *(a1 + 200) = v21;
  *(a1 + 208) = v22;
  *(a1 + 216) = v23;
  *(a1 + 220) = v24;
  *(a1 + 224) = v25;
  *(a1 + 225) = v42;
  *(a1 + 226) = 256;
  *(a1 + 232) = v42 | 0x3FF0000000000000;
  *(a1 + 240) = v29;
  *(a1 + 248) = xmmword_18CD6AC70;
  *(a1 + 264) = 0x4008000000000000;
  *(a1 + 272) = v26;
  *(a1 + 280) = v28;
  *(a1 + 288) = v44;
  *(a1 + 296) = v43;
}

uint64_t closure #1 in Badge.body.getter@<X0>(uint64_t a1@<X8>)
{
  specialized Image.init(systemName:)(0x6461622E6C6C6562, 0xEF6C6C69662E6567);
  v3 = v2;
  LocalizedStringKey.init(stringLiteral:)();
  type metadata accessor for SwiftUIClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  *a1 = v3;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  v10 = v9 & 1;
  *(a1 + 24) = v9 & 1;
  *(a1 + 32) = v11;

  outlined copy of Text.Storage(v6, v8, v10);

  outlined consume of Text.Storage(v6, v8, v10);
}

uint64_t static BadgeInfoWriterModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = a2[1];
  v4 = *(a2 + 6);
  v5 = *(a2 + 14);
  v6 = *(a2 + 15);
  v7 = *(a2 + 8);
  v8 = *(a2 + 18);
  v9 = *(a2 + 76);
  v12 = *a2;
  v13 = v3;
  v14 = a2[2];
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  a3(a1, &v12);
  v10 = _ViewInputs.position.getter();
  v21 = 1;
  *&v12 = __PAIR64__(v10, v8);
  DWORD2(v12) = v6;
  v13 = 0u;
  v14 = 0u;
  LOBYTE(v15) = 1;

  PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
}

uint64_t implicit closure #1 in static BadgeInfoWriterModifier._makeView(modifier:inputs:body:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t MultimodalBadgeInfoProvider.updateValue()()
{
  v10 = *MEMORY[0x1E69E9840];
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = *(Value + 8);
  AGGraphGetValue();
  v7 = MEMORY[0x18D00B390]();
  v8 = v4;
  lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace();
  AnyHashable.init<A>(_:)();
  v9[40] = 0;
  AGGraphGetValue();

  CGRect.convert(to:transform:)();

  outlined destroy of CoordinateSpace(v9);
  if ((*(v0 + 48) & 1) != 0 || (v11.origin.x = v2, v11.origin.y = v3, v11.size.width = v7, v11.size.height = v8, result = CGRectEqualToRect(*(v0 + 16), v11), (result & 1) == 0))
  {
    type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<MultimodalBadgeInfo>, &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_18CD63400;
    *(v6 + 32) = v2;
    *(v6 + 40) = v3;
    *(v6 + 48) = v7;
    *(v6 + 56) = v8;
    type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
    AGGraphSetOutputValue();
  }

  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  *(v0 + 32) = v7;
  *(v0 + 40) = v8;
  *(v0 + 48) = 0;
  return result;
}

uint64_t protocol witness for static PreferenceKey.defaultValue.getter in conformance MultimodalBadgeInfoKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static MultimodalBadgeInfoKey.defaultValue;
}

uint64_t protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance MultimodalBadgeInfoKey(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  v3 = *a1;
  a2(&v6);
  v4 = v6;
  v6 = v3;
  result = specialized Array.append<A>(contentsOf:)(v4);
  *a1 = v6;
  return result;
}

uint64_t outlined copy of BadgeLabel?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined copy of BadgeLabel(result, a2, a3);
  }

  return result;
}

uint64_t outlined copy of BadgeLabel(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    outlined copy of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t destroy for BadgedViewStyleView(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of BadgeLabel(*a1, *(a1 + 8), v2);
  }

  outlined consume of Environment<Selector?>.Content(*(a1 + 32), *(a1 + 40));
}

uint64_t outlined consume of BadgeLabel(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

uint64_t initializeWithCopy for BadgedViewStyleView(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v5;
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    outlined copy of BadgeLabel(*a2, v7, v4);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v4;
    *(a1 + 24) = v8;
  }

  v9 = a2[4];
  v10 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v9, v10);
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = a2[7];

  return a1;
}

uint64_t assignWithCopy for BadgedViewStyleView(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 16) >> 1 == 0xFFFFFFFFLL)
  {
    if (v5 == 0x1FFFFFFFELL)
    {
      v6 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 16) = v6;
    }

    else
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a2[3];
      outlined copy of BadgeLabel(*a2, v9, v4);
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v4;
      *(a1 + 24) = v10;
    }
  }

  else if (v5 == 0x1FFFFFFFELL)
  {
    outlined destroy of BadgeLabel(a1);
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v7;
  }

  else
  {
    v11 = *a2;
    v12 = a2[1];
    v13 = a2[3];
    outlined copy of BadgeLabel(*a2, v12, v4);
    v14 = *a1;
    v15 = *(a1 + 8);
    v16 = *(a1 + 16);
    *a1 = v11;
    *(a1 + 8) = v12;
    *(a1 + 16) = v4;
    *(a1 + 24) = v13;
    outlined consume of BadgeLabel(v14, v15, v16);
  }

  v17 = a2[4];
  v18 = *(a2 + 40);
  outlined copy of Environment<Selector?>.Content(v17, v18);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  outlined consume of Environment<Selector?>.Content(v19, v20);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = a2[7];

  return a1;
}

uint64_t assignWithTake for BadgedViewStyleView(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >> 1 != 0xFFFFFFFF)
  {
    v5 = *(a2 + 16);
    if (v5 >> 1 != 0xFFFFFFFF)
    {
      v7 = *(a2 + 24);
      v8 = *a1;
      v9 = *(a1 + 8);
      *a1 = *a2;
      *(a1 + 16) = v5;
      *(a1 + 24) = v7;
      outlined consume of BadgeLabel(v8, v9, v4);
      goto LABEL_6;
    }

    outlined destroy of BadgeLabel(a1);
  }

  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
LABEL_6:
  v10 = *(a2 + 40);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v10;
  outlined consume of Environment<Selector?>.Content(v11, v12);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for BadgedViewStyleView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BadgedViewStyleView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * ~a2;
      *(result + 24) = 0;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>, lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue()
{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue;
  if (!lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BadgedViewStyleView and conformance BadgedViewStyleView()
{
  result = lazy protocol witness table cache variable for type BadgedViewStyleView and conformance BadgedViewStyleView;
  if (!lazy protocol witness table cache variable for type BadgedViewStyleView and conformance BadgedViewStyleView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BadgedViewStyleView and conformance BadgedViewStyleView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>, lazy protocol witness table accessor for type AccessibilityBadgedViewProvidesOwnValue and conformance AccessibilityBadgedViewProvidesOwnValue, &type metadata for AccessibilityBadgedViewProvidesOwnValue, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

uint64_t static NeedsTopPaddingForGridBadgesModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, unint64_t *)@<X2>, void *a4@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v23 = *a1;
  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v27 = *(a2 + 28);
  v28 = *(a2 + 36);
  v8 = *(a2 + 40);
  v25 = *(a2 + 48);
  v9 = *(a2 + 60);
  v26 = *(a2 + 56);
  v10 = *(a2 + 64);
  v11 = *(a2 + 72);
  v20 = *(a2 + 76);
  v12 = one-time initialization token for multimodalListGridBadgeInfos;

  if (v12 != -1)
  {
    swift_once();
  }

  v29[0] = static CachedEnvironment.ID.multimodalListGridBadgeInfos;
  swift_beginAccess();
  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  v19 = CachedEnvironment.attribute<A>(id:_:)();
  swift_endAccess();

  v30 = v5;
  v31 = v4;
  v32 = v6;
  v33 = v7;
  v34 = v27;
  v35 = v28;
  v36 = v8;
  v37 = v25;
  v38 = v26;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v20;
  a3(v29, v13, &v30);
  v22 = v29[0];
  v14 = v29[1];
  v30 = v5;
  v31 = v4;
  v32 = v6;
  v33 = v7;
  v34 = v27;
  v35 = v28;
  v36 = v8;
  v37 = v25;
  v38 = v26;
  v39 = v9;
  v40 = v10;
  v41 = v11;
  v42 = v20;
  v15 = _ViewInputs.position.getter();
  type metadata accessor for GraphHost();
  v16 = MEMORY[0x18D00B7D0]();
  swift_beginAccess();
  v17 = *(v16 + 64);

  v30 = __PAIR64__(v19, v23);
  v31 = __PAIR64__(v11, v15);
  v32 = __PAIR64__(v7, v9);
  v33 = v17;
  v34 = 0xFFFFFFFFLL;
  LOBYTE(v35) = 0;
  LODWORD(v36) = 0;
  BYTE4(v36) = 2;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding();
  Attribute.init<A>(body:value:flags:update:)();
  result = AGGraphSetFlags();
  *a4 = v22;
  a4[1] = v14;
  return result;
}

void GridBadgeInfosActionBinding.updateValue()()
{
  if (*(v0 + 40) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 40) = *AGGraphGetValue() >> 1;
    *(v0 + 28) = 0xFFFFFFFFLL;
    *(v0 + 36) = 0;
    *(v0 + 44) = 2;
  }

  type metadata accessor for State<Bool>(0, &lazy cache variable for type metadata for [MultimodalBadgeInfo], &type metadata for MultimodalBadgeInfo, MEMORY[0x1E69E62F8]);
  v1 = *AGGraphGetValue();
  type metadata accessor for CGPoint(0);

  Value = AGGraphGetValue();
  v31 = *(Value + 8);
  v32 = *Value;
  v3 = AGGraphGetValue();
  v4 = v3[1];
  v36 = *v3;
  v37 = v4;
  v5 = MEMORY[0x18D00B390]();
  v29 = v6;
  v30 = v5;
  AGGraphGetValue();
  v7 = *(v1 + 16);
  if (v7)
  {

    v8 = 0;
    v9 = (v1 + 56);
    while (v8 < *(v1 + 16))
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v9 - 3);
      v12 = *(v9 - 2);
      v35.origin.x = v32;
      v35.origin.y = v31;
      v35.size.width = v30;
      v35.size.height = v29;
      lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace();
      AnyHashable.init<A>(_:)();
      v34[40] = 0;
      CGRect.convert(to:transform:)();
      outlined destroy of CoordinateSpace(v34);
      v38.origin.x = v13;
      rect = v12;
      v38.origin.y = v12;
      v14 = v11;
      v38.size.width = v11;
      v15 = v10;
      v38.size.height = v10;
      MaxY = CGRectGetMaxY(v38);
      x = v35.origin.x;
      y = v35.origin.y;
      width = v35.size.width;
      height = v35.size.height;
      if (CGRectGetMinY(v35) < MaxY)
      {
        v39.origin.x = v13;
        v39.origin.y = rect;
        v39.size.width = v14;
        v39.size.height = v15;
        v21 = CGRectGetMaxY(v39);
        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        if (v21 <= CGRectGetMaxY(v40))
        {

          v22 = 1;
          goto LABEL_12;
        }
      }

      ++v8;
      v9 += 4;
      if (v7 == v8)
      {

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    v22 = 0;
LABEL_12:
    v23 = *(v0 + 44);
    if (v23 == 2 || ((v22 ^ v23)) && (UpdateCycleDetector.dispatch(label:isDebug:)())
    {
      *(v0 + 44) = v22;
      AGGraphClearUpdate();
      v24 = AGGraphGetValue();
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);

      AGGraphSetUpdate();
      v28 = swift_allocObject();
      *(v28 + 16) = v25;
      *(v28 + 24) = v26;
      *(v28 + 32) = v27;
      *(v28 + 33) = v22;

      static Update.enqueueAction(reason:_:)();
    }
  }
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance TopPaddingForBadgeModifier@<X0>(uint64_t a1@<X8>)
{
  result = EdgeInsets.init(_all:)();
  *a1 = 1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = 0;
  return result;
}

double _s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyAA6SpacerV_AA6VStackVyAGyAA5Badge33_582D9E508E536DEAC67BC3C87B3CFE52LLV_AItGGtGGAA31AccessibilityAttachmentModifierVGSgWOi0_(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>()
{
  if (!lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?(255, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?();
    v0 = type metadata accessor for _OverlayModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>)
  {
    type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>(255);
    lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)> and conformance TupleView<A>, type metadata accessor for TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>);
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for (Spacer, VStack<TupleView<(Badge, Spacer)>>)()
{
  if (!lazy cache variable for type metadata for (Spacer, VStack<TupleView<(Badge, Spacer)>>))
  {
    type metadata accessor for VStack<TupleView<(Badge, Spacer)>>();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Spacer, VStack<TupleView<(Badge, Spacer)>>));
    }
  }
}

void type metadata accessor for VStack<TupleView<(Badge, Spacer)>>()
{
  if (!lazy cache variable for type metadata for VStack<TupleView<(Badge, Spacer)>>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer));
    lazy protocol witness table accessor for type TupleView<(Badge, Spacer)> and conformance TupleView<A>();
    v0 = type metadata accessor for VStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for VStack<TupleView<(Badge, Spacer)>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(Badge, Spacer)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(Badge, Spacer)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(Badge, Spacer)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer));
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Badge, Spacer)> and conformance TupleView<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?(255, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?, type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>, MEMORY[0x1E69E6720]);
    lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>(255);
    lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of BadgeLabel?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of BadgeLabel(result, a2, a3);
  }

  return result;
}

uint64_t outlined init with copy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of TupleView<(Badge, Spacer)>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TupleView<(Badge, Spacer)>(0, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer));
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TupleView<(Badge, Spacer)>(uint64_t a1)
{
  type metadata accessor for TupleView<(Badge, Spacer)>(0, &lazy cache variable for type metadata for TupleView<(Badge, Spacer)>, &lazy cache variable for type metadata for (Badge, Spacer));
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeWithCopy for Badge(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithCopy for Badge(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for Badge(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Selector?>.Content(v6, v7);
  v8 = *(a2 + 2);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = v8;
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for Badge(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for Badge(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>)
  {
    type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>);
    }
  }
}

void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>)
  {
    type metadata accessor for State<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E69808E8]);
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, type metadata accessor for ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>();
    lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?> and conformance _OverlayModifier<A>, type metadata accessor for _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>();
    lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>();
    lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>()
{
  result = lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>;
  if (!lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>)
  {
    type metadata accessor for State<Bool>(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<MultimodalListContext>, MEMORY[0x1E697FC90], MEMORY[0x1E69808E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StyleContextAcceptsPredicate<MultimodalListContext> and conformance StyleContextAcceptsPredicate<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier()
{
  result = lazy protocol witness table cache variable for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier;
  if (!lazy protocol witness table cache variable for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding()
{
  result = lazy protocol witness table cache variable for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding;
  if (!lazy protocol witness table cache variable for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GridBadgeInfosActionBinding and conformance GridBadgeInfosActionBinding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace()
{
  result = lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace;
  if (!lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalListStyleGridContentCoordinateSpace and conformance MultimodalListStyleGridContentCoordinateSpace);
  }

  return result;
}

__n128 __swift_memcpy45_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for GridBadgeInfosActionBinding(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 45))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 36);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for GridBadgeInfosActionBinding(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *(result + 36) = a2 + 1;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<TopPaddingForBadgeModifier>, _PaddingLayout>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TopPaddingForBadgeModifier>, _PaddingLayout>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TopPaddingForBadgeModifier>, lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier, &unk_1EFF94B78, MEMORY[0x1E697FDE8]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<TopPaddingForBadgeModifier>, _PaddingLayout>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ViewModifier_Content<TopPaddingForBadgeModifier>, lazy protocol witness table accessor for type TopPaddingForBadgeModifier and conformance TopPaddingForBadgeModifier, &unk_1EFF94B78, MEMORY[0x1E697FDE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<TopPaddingForBadgeModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, _OffsetEffect>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, _OffsetEffect>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, _OffsetEffect>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>();
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ClipEffect<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697DDA0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>();
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Material>, MEMORY[0x1E6981C98], MEMORY[0x1E6981AD0], MEMORY[0x1E6980460]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>();
    type metadata accessor for EnvironmentPropertyKey<BadgesEnabledKey>(255, &lazy cache variable for type metadata for _BackgroundStyleModifier<Color>, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>();
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>(255);
    _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>);
    }
  }
}

void type metadata accessor for HStack<TupleView<(Image, Text)>>()
{
  if (!lazy cache variable for type metadata for HStack<TupleView<(Image, Text)>>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Image, Text)>, &lazy cache variable for type metadata for (Image, Text));
    lazy protocol witness table accessor for type TupleView<(Image, Text)> and conformance TupleView<A>();
    v0 = type metadata accessor for HStack();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for HStack<TupleView<(Image, Text)>>);
    }
  }
}

void type metadata accessor for TupleView<(Badge, Spacer)>(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    type metadata accessor for (Badge, Spacer)(255, a3);
    v4 = type metadata accessor for TupleView();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type TupleView<(Image, Text)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(Image, Text)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(Image, Text)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(Badge, Spacer)>(255, &lazy cache variable for type metadata for TupleView<(Image, Text)>, &lazy cache variable for type metadata for (Image, Text));
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(Image, Text)> and conformance TupleView<A>);
  }

  return result;
}

void _s7SwiftUI30_EnvironmentKeyWritingModifierVyAA5ColorVSgGMaTm_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for State<Bool>(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>()
{
  if (!lazy cache variable for type metadata for _BackgroundModifier<_ShadowView<Capsule._Inset>>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ShadowView<Capsule._Inset>, lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset, MEMORY[0x1E6981968], type metadata accessor for _ShadowView);
    v0 = type metadata accessor for _BackgroundModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _BackgroundModifier<_ShadowView<Capsule._Inset>>);
    }
  }
}

void type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t lazy protocol witness table accessor for type Capsule._Inset and conformance Capsule._Inset()
{
  result = lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset;
  if (!lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Capsule._Inset and conformance Capsule._Inset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>);
    lazy protocol witness table accessor for type ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>, lazy protocol witness table accessor for type _ClipEffect<Capsule> and conformance _ClipEffect<A>);
    lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>, type metadata accessor for _BackgroundModifier<_ShadowView<Capsule._Inset>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>, _BackgroundStyleModifier<Color>>, _BackgroundStyleModifier<Material>>, _ClipEffect<Capsule>>, _BackgroundModifier<_ShadowView<Capsule._Inset>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<BadgedViewStyleView, ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Color?>, &lazy cache variable for type metadata for Color?, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>, _EnvironmentKeyWritingModifier<Color?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>>();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<BadgeViewStyleConfiguration.Content, _OverlayModifier<ModifiedContent<HStack<TupleView<(Spacer, VStack<TupleView<(Badge, Spacer)>>)>>, AccessibilityAttachmentModifier>?>>, NeedsTopPaddingForGridBadgesModifier>, StaticIf<StyleContextAcceptsPredicate<MultimodalListContext>, TopPaddingForBadgeModifier, EmptyModifier>>, AccessibilityAttachmentModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Color?> and conformance _EnvironmentKeyWritingModifier<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Font?> and conformance _EnvironmentKeyWritingModifier<A>, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Font?>, &lazy cache variable for type metadata for Font?, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>, _PaddingLayout>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout>(255);
    lazy protocol witness table accessor for type _BackgroundModifier<_ShadowView<Capsule._Inset>> and conformance _BackgroundModifier<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(Image, Text)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(Image, Text)>>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(Image, Text)>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ClipEffect<Capsule> and conformance _ClipEffect<A>()
{
  result = lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>;
  if (!lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>)
  {
    type metadata accessor for ViewInputFlagModifier<AccessibilityBadgedViewProvidesOwnValue>(255, &lazy cache variable for type metadata for _ClipEffect<Capsule>, lazy protocol witness table accessor for type Capsule and conformance Capsule, MEMORY[0x1E69819A8], MEMORY[0x1E697DDA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ClipEffect<Capsule> and conformance _ClipEffect<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider()
{
  result = lazy protocol witness table cache variable for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider;
  if (!lazy protocol witness table cache variable for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MultimodalBadgeInfoProvider and conformance MultimodalBadgeInfoProvider);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MultimodalBadgeInfoProvider(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 49))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MultimodalBadgeInfoProvider(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 49) = v3;
  return result;
}

uint64_t View.dialogColorScheme(_:)()
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t EnvironmentValues.dialogColorScheme.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);

    return PropertyList.subscript.getter();
  }
}

uint64_t key path getter for EnvironmentValues.dialogColorScheme : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
    result = PropertyList.subscript.getter();
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.dialogColorScheme : EnvironmentValues(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<DialogColorSchemeKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<DialogColorSchemeKey>);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t View.dialogIcon(_:)()
{
  return View.dialogIcon(_:)();
}

{
  swift_getKeyPath();
  View.environment<A>(_:_:)();
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance DialogIconKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return static Image.== infix(_:_:)();
  }
}

uint64_t EnvironmentValues.dialogIcon.getter(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t *a4)
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

uint64_t key path getter for EnvironmentValues.dialogIcon : EnvironmentValues@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X3>, unint64_t *a3@<X6>, void *a4@<X8>)
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

uint64_t key path setter for EnvironmentValues.dialogIcon : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, a5);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(a8, a5);

  PropertyList.subscript.setter();
  if (*(a2 + 8))
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance DialogTintColorKey(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (v2 | *a2) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return v4;
  }

  if (v2 == v3)
  {
    return 1;
  }

  return dispatch thunk of AnyShapeStyleBox.isEqual(to:)() & 1;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA11ColorSchemeOSgGGAaBHPxAaBHD1__AjA0cI0HPyHCHCTm(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, unint64_t *a5)
{
  type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, a2, a3);
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(a5, a2, a3);
  return swift_getWitnessTable();
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<ColorScheme?> and conformance _EnvironmentKeyWritingModifier<A>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<ColorScheme?>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static Alert.Button.cancel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = static Text.System.cancel.getter();
  *(a3 + 16) = v6;
  *(a3 + 24) = v7 & 1;
  *a3 = 1;
  *(a3 + 32) = v8;
  *(a3 + 40) = a1;
  *(a3 + 48) = a2;

  return outlined copy of AppIntentExecutor?(a1);
}

double Alert.init(title:message:dismissButton:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v15 = *a10;
  v16 = a10[1];
  v18 = a10[2];
  v17 = a10[3];
  v19 = a10[4];
  v20 = a10[5];
  v21 = a10[6];
  v30 = a3 & 1;
  if (!v19)
  {
    v16 = static Text.System.ok.getter();
    v18 = v22;
    v19 = v23;
    v21 = 0;
    LOBYTE(v15) = 0;
    v20 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
  }

  v29 = v17 & 1;
  outlined consume of Alert.Button?(0, 0, 0, 0, 0, 0);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v30;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v15;
  *(a9 + 72) = v16;
  *(a9 + 80) = v18;
  *(a9 + 88) = v29;
  *(a9 + 96) = v19;
  *(a9 + 104) = v20;
  *(a9 + 112) = v21;
  result = 0.0;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 161) = 0u;
  return result;
}

__n128 Alert.init(title:message:primaryButton:secondaryButton:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, __n128 *a11)
{
  v12 = *a10;
  v13 = a10[24];
  v14 = *(a10 + 4);
  v15 = a11->n128_u8[0];
  v16 = a11->n128_u64[1];
  v17 = a11[1].n128_u64[0];
  v18 = a11[1].n128_u8[8];
  v21 = a11[2];
  v19 = a11[3].n128_u64[0];
  *(a9 + 176) = 0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v12;
  *(a9 + 72) = *(a10 + 8);
  *(a9 + 88) = v13;
  *(a9 + 96) = v14;
  *(a9 + 104) = *(a10 + 40);
  outlined consume of Alert.Button?(0, 0, 0, 0, 0, 0);
  *(a9 + 120) = v15;
  *(a9 + 128) = v16;
  *(a9 + 136) = v17;
  *(a9 + 144) = v18;
  result = v21;
  *(a9 + 152) = v21;
  *(a9 + 168) = v19;
  return result;
}

void outlined consume of Alert.Button?(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    outlined consume of Text.Storage(a2, a3, a4 & 1);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(a6);
  }
}

uint64_t static Alert.Button.default(_:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  *(a8 + 8) = a1;
  *(a8 + 16) = a2;
  v9 = a3 & 1;
  *(a8 + 24) = v9;
  *a8 = a7;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = a6;
  outlined copy of Text.Storage(a1, a2, v9);

  return outlined copy of AppIntentExecutor?(a5);
}

void *protocol witness for static PreferenceKey.reduce(value:nextValue:) in conformance Alert.Presentation.Key(void *__src, void (*a2)(void *__return_ptr))
{
  if (*(__src + 3))
  {
    memcpy(__dst, __src, sizeof(__dst));
  }

  else
  {
    a2(__dst);
  }

  return memcpy(__src, __dst, 0x118uLL);
}

uint64_t View.alert<A>(item:content:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v46 = a8;
  v40 = a4;
  v41 = a6;
  v42 = a2;
  v43 = a3;
  v13 = type metadata accessor for Optional();
  v38 = type metadata accessor for Binding();
  v44 = *(v38 - 8);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v47 = &v36 - v14;
  v48 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v36 - v17;
  v37 = &v36 - v17;
  MEMORY[0x18D00ACC0](v16);
  v50[2] = a4;
  v50[3] = a5;
  v50[4] = a6;
  v50[5] = a7;
  v19 = a7;
  v50[6] = v42;
  v50[7] = v43;
  v39 = v13;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in View.actionSheet<A>(item:content:), v50, MEMORY[0x1E69E73E0], &type metadata for Alert, v20, v64);
  v21 = *(v48 + 8);
  v48 += 8;
  v42 = v21;
  v43 = 0;
  v21(v18, v13);
  v60 = v64[8];
  v61 = v64[9];
  v62 = v64[10];
  v63 = v65;
  v56 = v64[4];
  v57 = v64[5];
  v58 = v64[6];
  v59 = v64[7];
  v52 = v64[0];
  v53 = v64[1];
  v54 = v64[2];
  v55 = v64[3];
  v22 = v44;
  v23 = v38;
  (*(v44 + 16))(v47, a1, v38);
  v24 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v27 = v40;
  v26 = v41;
  v25[2] = v40;
  v25[3] = a5;
  v25[4] = v26;
  v25[5] = v19;
  v28 = v25 + v24;
  v29 = v23;
  (*(v22 + 32))(v28, v47, v23);
  v30 = v37;
  MEMORY[0x18D00ACC0](v29);
  v49[2] = v27;
  v49[3] = a5;
  v49[4] = v26;
  v49[5] = v19;
  v31 = v26;
  v32 = MEMORY[0x1E69E69B8];
  v33 = v39;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #3 in View.alert<A>(item:content:), v49, MEMORY[0x1E69E73E0], MEMORY[0x1E69E69B8], v34, v51);
  v42(v30, v33);
  View.presentationCommon(_:onDismiss:id:)(&v52, partial apply for closure #2 in View.alert<A>(item:content:), v25, v51, v27, v31);

  _ss11AnyHashableVSgWOhTm_0(v51, &lazy cache variable for type metadata for AnyHashable?, v32);
  v66[8] = v60;
  v66[9] = v61;
  v66[10] = v62;
  v67 = v63;
  v66[4] = v56;
  v66[5] = v57;
  v66[6] = v58;
  v66[7] = v59;
  v66[0] = v52;
  v66[1] = v53;
  v66[2] = v54;
  v66[3] = v55;
  return _ss11AnyHashableVSgWOhTm_0(v66, &lazy cache variable for type metadata for Alert?, &type metadata for Alert);
}

uint64_t closure #2 in View.alert<A>(item:content:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - v7;
  (*(*(a3 - 8) + 56))(&v10 - v7, 1, 1, a3, v6);
  type metadata accessor for Binding();
  specialized Binding.wrappedValue.setter();
  return (*(v5 + 8))(v8, v4);
}

uint64_t partial apply for closure #2 in View.alert<A>(item:content:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for Optional();
  v3 = *(type metadata accessor for Binding() - 8);
  v4 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return closure #2 in View.alert<A>(item:content:)(v4, v1, v2);
}

uint64_t closure #3 in View.alert<A>(item:content:)()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v3 = &v5 - v2;
  dispatch thunk of Identifiable.id.getter();
  swift_getAssociatedConformanceWitness();
  _convertToAnyHashable<A>(_:)();
  return (*(v1 + 8))(v3, AssociatedTypeWitness);
}

uint64_t destroy for Alert(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));

  if (*(a1 + 104))
  {
  }

  if (*(a1 + 152))
  {
    outlined consume of Text.Storage(*(a1 + 128), *(a1 + 136), *(a1 + 144));

    if (*(a1 + 160))
    {
    }
  }

  return result;
}

uint64_t initializeWithCopy for Alert(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  *(a1 + 64) = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  outlined copy of Text.Storage(v12, v13, v14);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  v15 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);

  if (v15)
  {
    v16 = *(a2 + 112);
    *(a1 + 104) = v15;
    *(a1 + 112) = v16;

    v17 = *(a2 + 152);
    if (v17)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    goto LABEL_11;
  }

  *(a1 + 104) = *(a2 + 104);
  v17 = *(a2 + 152);
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(a1 + 120) = *(a2 + 120);
  v18 = *(a2 + 128);
  v19 = *(a2 + 136);
  v20 = *(a2 + 144);
  outlined copy of Text.Storage(v18, v19, v20);
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  *(a1 + 144) = v20;
  *(a1 + 152) = v17;
  v21 = *(a2 + 160);

  if (v21)
  {
    v22 = *(a2 + 168);
    *(a1 + 160) = v21;
    *(a1 + 168) = v22;
  }

  else
  {
    *(a1 + 160) = *(a2 + 160);
  }

LABEL_11:
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithCopy for Alert(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);
  v22 = *(a2 + 72);
  v23 = *(a2 + 80);
  v24 = *(a2 + 88);
  outlined copy of Text.Storage(v22, v23, v24);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  *(a1 + 72) = v22;
  *(a1 + 80) = v23;
  *(a1 + 88) = v24;
  outlined consume of Text.Storage(v25, v26, v27);
  *(a1 + 96) = *(a2 + 96);

  v28 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v28)
    {
      v29 = *(a2 + 112);
      *(a1 + 104) = v28;
      *(a1 + 112) = v29;

      goto LABEL_15;
    }
  }

  else if (v28)
  {
    v30 = *(a2 + 112);
    *(a1 + 104) = v28;
    *(a1 + 112) = v30;

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
LABEL_15:
  v31 = *(a2 + 152);
  if (!*(a1 + 152))
  {
    if (!v31)
    {
      v48 = *(a2 + 120);
      v49 = *(a2 + 136);
      v50 = *(a2 + 152);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 152) = v50;
      *(a1 + 136) = v49;
      *(a1 + 120) = v48;
      goto LABEL_31;
    }

    *(a1 + 120) = *(a2 + 120);
    v40 = *(a2 + 128);
    v41 = *(a2 + 136);
    v42 = *(a2 + 144);
    outlined copy of Text.Storage(v40, v41, v42);
    *(a1 + 128) = v40;
    *(a1 + 136) = v41;
    *(a1 + 144) = v42;
    *(a1 + 152) = *(a2 + 152);
    v43 = *(a2 + 160);

    if (!v43)
    {
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_31;
    }

    v44 = *(a2 + 168);
    *(a1 + 160) = v43;
    goto LABEL_26;
  }

  if (!v31)
  {
    outlined destroy of Alert.Button(a1 + 120);
    v45 = *(a2 + 136);
    v46 = *(a2 + 152);
    v47 = *(a2 + 168);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 168) = v47;
    *(a1 + 152) = v46;
    *(a1 + 136) = v45;
    goto LABEL_31;
  }

  *(a1 + 120) = *(a2 + 120);
  v32 = *(a2 + 128);
  v33 = *(a2 + 136);
  v34 = *(a2 + 144);
  outlined copy of Text.Storage(v32, v33, v34);
  v35 = *(a1 + 128);
  v36 = *(a1 + 136);
  v37 = *(a1 + 144);
  *(a1 + 128) = v32;
  *(a1 + 136) = v33;
  *(a1 + 144) = v34;
  outlined consume of Text.Storage(v35, v36, v37);
  *(a1 + 152) = *(a2 + 152);

  v38 = *(a2 + 160);
  if (!*(a1 + 160))
  {
    if (!v38)
    {
LABEL_29:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_31;
    }

    v44 = *(a2 + 168);
    *(a1 + 160) = v38;
LABEL_26:
    *(a1 + 168) = v44;

    goto LABEL_31;
  }

  if (!v38)
  {

    goto LABEL_29;
  }

  v39 = *(a2 + 168);
  *(a1 + 160) = v38;
  *(a1 + 168) = v39;

LABEL_31:
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t assignWithTake for Alert(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    v8 = *(a2 + 56);
    if (v8)
    {
      v9 = *(a2 + 48);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v9;
      outlined consume of Text.Storage(v10, v11, v12);
      *(a1 + 56) = v8;

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 32);
  }

  v13 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v13;
LABEL_6:
  *(a1 + 64) = *(a2 + 64);
  v14 = *(a2 + 88);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v17 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(a1 + 96) = *(a2 + 96);

  v18 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v18)
    {
      v19 = *(a2 + 112);
      *(a1 + 104) = v18;
      *(a1 + 112) = v19;

      if (!*(a1 + 152))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else if (v18)
  {
    v20 = *(a2 + 112);
    *(a1 + 104) = v18;
    *(a1 + 112) = v20;
    if (!*(a1 + 152))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
  if (!*(a1 + 152))
  {
LABEL_20:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    goto LABEL_21;
  }

LABEL_15:
  v21 = *(a2 + 152);
  if (!v21)
  {
    outlined destroy of Alert.Button(a1 + 120);
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  v22 = *(a2 + 144);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v22;
  outlined consume of Text.Storage(v23, v24, v25);
  *(a1 + 152) = v21;

  v26 = *(a2 + 160);
  if (!*(a1 + 160))
  {
    if (v26)
    {
      v29 = *(a2 + 168);
      *(a1 + 160) = v26;
      *(a1 + 168) = v29;
      goto LABEL_21;
    }

LABEL_25:
    *(a1 + 160) = *(a2 + 160);
    goto LABEL_21;
  }

  if (!v26)
  {

    goto LABEL_25;
  }

  v27 = *(a2 + 168);
  *(a1 + 160) = v26;
  *(a1 + 168) = v27;

LABEL_21:
  *(a1 + 176) = *(a2 + 176);
  return a1;
}

uint64_t storeEnumTagSinglePayload for Alert(uint64_t result, int a2, int a3)
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
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Alert.Button(uint64_t a1)
{
  outlined consume of Text.Storage(*(a1 + 8), *(a1 + 16), *(a1 + 24));

  if (*(a1 + 40))
  {
  }

  return result;
}

uint64_t initializeWithCopy for Alert.Button(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of Text.Storage(v4, v5, v6);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);

  if (v7)
  {
    v8 = *(a2 + 48);
    *(a1 + 40) = v7;
    *(a1 + 48) = v8;
  }

  else
  {
    *(a1 + 40) = *(a2 + 40);
  }

  return a1;
}

uint64_t assignWithCopy for Alert.Button(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of Text.Storage(v4, v5, v6);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 32) = *(a2 + 32);

  v10 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v10)
    {
      v12 = *(a2 + 48);
      *(a1 + 40) = v10;
      *(a1 + 48) = v12;

      return a1;
    }

LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v10)
  {

    goto LABEL_7;
  }

  v11 = *(a2 + 48);
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;

  return a1;
}

uint64_t assignWithTake for Alert.Button(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 24);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 32) = *(a2 + 32);

  v8 = *(a2 + 40);
  if (!*(a1 + 40))
  {
    if (v8)
    {
      v10 = *(a2 + 48);
      *(a1 + 40) = v8;
      *(a1 + 48) = v10;
      return a1;
    }

LABEL_7:
    *(a1 + 40) = *(a2 + 40);
    return a1;
  }

  if (!v8)
  {

    goto LABEL_7;
  }

  v9 = *(a2 + 48);
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;

  return a1;
}

uint64_t getEnumTagSinglePayload for Alert.Button(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Alert.Button(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for Alert.Presentation(uint64_t a1)
{
  outlined consume of Text.Storage(*a1, *(a1 + 8), *(a1 + 16));

  if (*(a1 + 56))
  {
    outlined consume of Text.Storage(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  }

  outlined consume of Text.Storage(*(a1 + 72), *(a1 + 80), *(a1 + 88));

  if (*(a1 + 104))
  {
  }

  if (*(a1 + 152))
  {
    outlined consume of Text.Storage(*(a1 + 128), *(a1 + 136), *(a1 + 144));

    if (*(a1 + 160))
    {
    }
  }

  if (*(a1 + 184))
  {
  }

  if (*(a1 + 232))
  {

    return __swift_destroy_boxed_opaque_existential_1(a1 + 208);
  }

  return result;
}

uint64_t initializeWithCopy for Alert.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  v7 = *(a2 + 56);

  if (v7)
  {
    v8 = *(a2 + 32);
    v9 = *(a2 + 40);
    v10 = *(a2 + 48);
    outlined copy of Text.Storage(v8, v9, v10);
    *(a1 + 32) = v8;
    *(a1 + 40) = v9;
    *(a1 + 48) = v10;
    *(a1 + 56) = v7;
  }

  else
  {
    v11 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v11;
  }

  *(a1 + 64) = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  outlined copy of Text.Storage(v12, v13, v14);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  v15 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);

  if (v15)
  {
    v16 = *(a2 + 112);
    *(a1 + 104) = v15;
    *(a1 + 112) = v16;

    v17 = *(a2 + 152);
    if (v17)
    {
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 104) = *(a2 + 104);
    v17 = *(a2 + 152);
    if (v17)
    {
LABEL_6:
      *(a1 + 120) = *(a2 + 120);
      v18 = *(a2 + 128);
      v19 = *(a2 + 136);
      v20 = *(a2 + 144);
      outlined copy of Text.Storage(v18, v19, v20);
      *(a1 + 128) = v18;
      *(a1 + 136) = v19;
      *(a1 + 144) = v20;
      *(a1 + 152) = v17;
      v21 = *(a2 + 160);

      if (v21)
      {
        v22 = *(a2 + 168);
        *(a1 + 160) = v21;
        *(a1 + 168) = v22;
      }

      else
      {
        *(a1 + 160) = *(a2 + 160);
      }

      goto LABEL_11;
    }
  }

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
LABEL_11:
  v23 = *(a2 + 184);
  *(a1 + 176) = *(a2 + 176);
  if (v23)
  {
    v24 = *(a2 + 192);
    *(a1 + 184) = v23;
    *(a1 + 192) = v24;
  }

  else
  {
    *(a1 + 184) = *(a2 + 184);
  }

  *(a1 + 200) = *(a2 + 200);
  v25 = *(a2 + 232);
  if (v25)
  {
    v26 = *(a2 + 240);
    *(a1 + 232) = v25;
    *(a1 + 240) = v26;
    (**(v25 - 8))(a1 + 208, a2 + 208);
  }

  else
  {
    v27 = *(a2 + 224);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 224) = v27;
    *(a1 + 240) = *(a2 + 240);
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  return a1;
}

uint64_t assignWithCopy for Alert.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  v10 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v10)
    {
      v11 = *(a2 + 32);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of Text.Storage(v11, v12, v13);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      outlined consume of Text.Storage(v14, v15, v16);
      *(a1 + 56) = *(a2 + 56);
    }

    else
    {
      outlined destroy of Text(a1 + 32);
      v20 = *(a2 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v20;
    }
  }

  else if (v10)
  {
    v17 = *(a2 + 32);
    v18 = *(a2 + 40);
    v19 = *(a2 + 48);
    outlined copy of Text.Storage(v17, v18, v19);
    *(a1 + 32) = v17;
    *(a1 + 40) = v18;
    *(a1 + 48) = v19;
    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
  }

  *(a1 + 64) = *(a2 + 64);
  v22 = *(a2 + 72);
  v23 = *(a2 + 80);
  v24 = *(a2 + 88);
  outlined copy of Text.Storage(v22, v23, v24);
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  v27 = *(a1 + 88);
  *(a1 + 72) = v22;
  *(a1 + 80) = v23;
  *(a1 + 88) = v24;
  outlined consume of Text.Storage(v25, v26, v27);
  *(a1 + 96) = *(a2 + 96);

  v28 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v28)
    {
      v29 = *(a2 + 112);
      *(a1 + 104) = v28;
      *(a1 + 112) = v29;

      goto LABEL_15;
    }
  }

  else if (v28)
  {
    v30 = *(a2 + 112);
    *(a1 + 104) = v28;
    *(a1 + 112) = v30;

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
LABEL_15:
  v31 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (!v31)
    {
      outlined destroy of Alert.Button(a1 + 120);
      v45 = *(a2 + 136);
      v46 = *(a2 + 152);
      v47 = *(a2 + 168);
      *(a1 + 120) = *(a2 + 120);
      *(a1 + 168) = v47;
      *(a1 + 152) = v46;
      *(a1 + 136) = v45;
      goto LABEL_31;
    }

    *(a1 + 120) = *(a2 + 120);
    v32 = *(a2 + 128);
    v33 = *(a2 + 136);
    v34 = *(a2 + 144);
    outlined copy of Text.Storage(v32, v33, v34);
    v35 = *(a1 + 128);
    v36 = *(a1 + 136);
    v37 = *(a1 + 144);
    *(a1 + 128) = v32;
    *(a1 + 136) = v33;
    *(a1 + 144) = v34;
    outlined consume of Text.Storage(v35, v36, v37);
    *(a1 + 152) = *(a2 + 152);

    v38 = *(a2 + 160);
    if (*(a1 + 160))
    {
      if (v38)
      {
        v39 = *(a2 + 168);
        *(a1 + 160) = v38;
        *(a1 + 168) = v39;

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (!v38)
    {
LABEL_29:
      *(a1 + 160) = *(a2 + 160);
      goto LABEL_31;
    }

    v44 = *(a2 + 168);
    *(a1 + 160) = v38;
LABEL_26:
    *(a1 + 168) = v44;

    goto LABEL_31;
  }

  if (!v31)
  {
    v48 = *(a2 + 120);
    v49 = *(a2 + 136);
    v50 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v50;
    *(a1 + 136) = v49;
    *(a1 + 120) = v48;
    goto LABEL_31;
  }

  *(a1 + 120) = *(a2 + 120);
  v40 = *(a2 + 128);
  v41 = *(a2 + 136);
  v42 = *(a2 + 144);
  outlined copy of Text.Storage(v40, v41, v42);
  *(a1 + 128) = v40;
  *(a1 + 136) = v41;
  *(a1 + 144) = v42;
  *(a1 + 152) = *(a2 + 152);
  v43 = *(a2 + 160);

  if (v43)
  {
    v44 = *(a2 + 168);
    *(a1 + 160) = v43;
    goto LABEL_26;
  }

  *(a1 + 160) = *(a2 + 160);
LABEL_31:
  v51 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  v52 = *(a2 + 184);
  if (v51)
  {
    if (v52)
    {
      v53 = *(a2 + 192);
      *(a1 + 184) = v52;
      *(a1 + 192) = v53;

      goto LABEL_38;
    }
  }

  else if (v52)
  {
    v54 = *(a2 + 192);
    *(a1 + 184) = v52;
    *(a1 + 192) = v54;

    goto LABEL_38;
  }

  *(a1 + 184) = *(a2 + 184);
LABEL_38:
  *(a1 + 200) = *(a2 + 200);
  v55 = *(a2 + 232);
  if (*(a1 + 232))
  {
    v56 = (a1 + 208);
    if (v55)
    {
      __swift_assign_boxed_opaque_existential_1(v56, (a2 + 208));
    }

    else
    {
      outlined destroy of AnyHashable(v56);
      v57 = *(a2 + 240);
      v58 = *(a2 + 224);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = v58;
      *(a1 + 240) = v57;
    }
  }

  else if (v55)
  {
    *(a1 + 232) = v55;
    *(a1 + 240) = *(a2 + 240);
    (**(v55 - 8))(a1 + 208, a2 + 208);
  }

  else
  {
    v59 = *(a2 + 208);
    v60 = *(a2 + 224);
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 208) = v59;
    *(a1 + 224) = v60;
  }

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  return a1;
}

uint64_t assignWithTake for Alert.Presentation(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  if (*(a1 + 56))
  {
    if (*(a2 + 56))
    {
      v8 = *(a2 + 48);
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 48) = v8;
      outlined consume of Text.Storage(v9, v10, v11);
      *(a1 + 56) = *(a2 + 56);

      goto LABEL_6;
    }

    outlined destroy of Text(a1 + 32);
  }

  v12 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v12;
LABEL_6:
  *(a1 + 64) = *(a2 + 64);
  v13 = *(a2 + 88);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = v13;
  outlined consume of Text.Storage(v14, v15, v16);
  *(a1 + 96) = *(a2 + 96);

  v17 = *(a2 + 104);
  if (*(a1 + 104))
  {
    if (v17)
    {
      v18 = *(a2 + 112);
      *(a1 + 104) = v17;
      *(a1 + 112) = v18;

      if (!*(a1 + 152))
      {
        goto LABEL_20;
      }

      goto LABEL_15;
    }
  }

  else if (v17)
  {
    v19 = *(a2 + 112);
    *(a1 + 104) = v17;
    *(a1 + 112) = v19;
    if (!*(a1 + 152))
    {
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(a1 + 104) = *(a2 + 104);
  if (!*(a1 + 152))
  {
LABEL_20:
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    goto LABEL_21;
  }

LABEL_15:
  if (!*(a2 + 152))
  {
    outlined destroy of Alert.Button(a1 + 120);
    goto LABEL_20;
  }

  *(a1 + 120) = *(a2 + 120);
  v20 = *(a2 + 144);
  v21 = *(a1 + 128);
  v22 = *(a1 + 136);
  v23 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v20;
  outlined consume of Text.Storage(v21, v22, v23);
  *(a1 + 152) = *(a2 + 152);

  v24 = *(a2 + 160);
  if (*(a1 + 160))
  {
    if (v24)
    {
      v25 = *(a2 + 168);
      *(a1 + 160) = v24;
      *(a1 + 168) = v25;

      goto LABEL_21;
    }
  }

  else if (v24)
  {
    v32 = *(a2 + 168);
    *(a1 + 160) = v24;
    *(a1 + 168) = v32;
    goto LABEL_21;
  }

  *(a1 + 160) = *(a2 + 160);
LABEL_21:
  v26 = *(a2 + 184);
  v27 = *(a1 + 184);
  *(a1 + 176) = *(a2 + 176);
  if (v27)
  {
    if (v26)
    {
      v28 = *(a2 + 192);
      *(a1 + 184) = v26;
      *(a1 + 192) = v28;

      goto LABEL_28;
    }
  }

  else if (v26)
  {
    v29 = *(a2 + 192);
    *(a1 + 184) = v26;
    *(a1 + 192) = v29;
    goto LABEL_28;
  }

  *(a1 + 184) = *(a2 + 184);
LABEL_28:
  *(a1 + 200) = *(a2 + 200);
  if (*(a1 + 232))
  {
    if (*(a2 + 232))
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 208);
    }

    else
    {
      outlined destroy of AnyHashable(a1 + 208);
    }
  }

  v30 = *(a2 + 224);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 224) = v30;
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *&v30 = *(a2 + 272);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = v30;
  return a1;
}

unint64_t lazy protocol witness table accessor for type Alert.Button.Style and conformance Alert.Button.Style()
{
  result = lazy protocol witness table cache variable for type Alert.Button.Style and conformance Alert.Button.Style;
  if (!lazy protocol witness table cache variable for type Alert.Button.Style and conformance Alert.Button.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Alert.Button.Style and conformance Alert.Button.Style);
  }

  return result;
}

uint64_t specialized implicit closure #1 in _GraphInputs.safeAreaTransitionState.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();

    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SafeAreaTransitionStateKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SafeAreaTransitionStateKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.subscript.getter();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v6[1];
  outlined destroy of weak FallbackResponderProvider?(v6);

  *a2 = Strong;
  a2[1] = v4;
  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance SafeAreaTransitionStateKey@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (one-time initialization token for defaultValue != -1)
  {
    swift_once();
    v2 = a1;
  }

  return outlined init with copy of SafeAreaTransitionStateKey.Value(&static SafeAreaTransitionStateKey.defaultValue, v2);
}

uint64_t assignWithCopy for ContentScrollViewBox(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t assignWithTake for ContentScrollViewBox(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t getEnumTagSinglePayload for ContentScrollViewBox(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 45))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentScrollViewBox(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SafeAreaTransitionStateKey.Value(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SafeAreaTransitionStateKey.Value(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t protocol witness for Rule.value.getter in conformance PlatformItemEnabledModifier.PlatformItemListTransform@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = *AGGraphGetValue();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in PlatformItemEnabledModifier.PlatformItemListTransform.value.getter;
  *(result + 24) = v3;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@inout PlatformItemList) -> ();
  a1[1] = result;
  return result;
}

uint64_t EnvironmentValues.isToggleOn.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultToggleIsOnKey>, &type metadata for DefaultToggleIsOnKey, &protocol witness table for DefaultToggleIsOnKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultToggleIsOnKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  return v2;
}

uint64_t ButtonToggleStyle.init()@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return result;
}

void ButtonToggleStyle.makeBody(configuration:)(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v2 = a1;
  v4 = a1[3];
  v22 = a1[2];
  v23 = v4;
  v5 = a1[5];
  v24 = a1[4];
  v25 = v5;
  v6 = a1[1];
  v20 = *a1;
  v21 = v6;
  v7 = swift_allocObject();
  v8 = v2[3];
  *(v7 + 3) = v2[2];
  *(v7 + 4) = v8;
  v9 = v2[5];
  *(v7 + 5) = v2[4];
  *(v7 + 6) = v9;
  v10 = v2[1];
  *(v7 + 1) = *v2;
  *(v7 + 2) = v10;
  *a2 = 4;
  type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>();
  v12 = &a2[*(v11 + 36)];
  *v12 = partial apply for toggleState #1 () in ButtonToggleStyle.makeBody(configuration:);
  v12[1] = v7;
  type metadata accessor for ButtonAction();
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v19 = 2;
  outlined init with copy of ToggleStyleConfiguration(&v20, &v16);
  type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>();
  lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();

  View.falseInput<A>(_:)();

  v13 = swift_getKeyPath();
  v16 = v20;
  v17 = v21;
  _sSbSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&KeyPath);
  LOBYTE(v2) = KeyPath;
  type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(0, &lazy cache variable for type metadata for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
  v15 = &a2[*(v14 + 36)];
  *v15 = v13;
  v15[8] = v2;
}

uint64_t toggleState #1 () in ButtonToggleStyle.makeBody(configuration:)()
{
  _sSbSgMaTm_0(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v1);
  return dispatch thunk of AnyLocation.set(_:transaction:)();
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance IsToggleButton()
{
  lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
  PropertyList.subscript.getter();
  return v1;
}

void type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>()
{
  if (!lazy cache variable for type metadata for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>)
  {
    type metadata accessor for <<opaque return type of View.falseInput<A>(_:)>>.0();
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>();
    lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    swift_getOpaqueTypeConformance2();
    v0 = type metadata accessor for Button();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>);
    }
  }
}

void type metadata accessor for <<opaque return type of View.falseInput<A>(_:)>>.0()
{
  if (!lazy cache variable for type metadata for <<opaque return type of View.falseInput<A>(_:)>>.0)
  {
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>();
    lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &lazy cache variable for type metadata for <<opaque return type of View.falseInput<A>(_:)>>.0);
    }
  }
}

void type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>>();
    lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ToggleStyleConfiguration.Label, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *assignWithTake for ButtonToggleStyle(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  a1[2] = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for ButtonToggleStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ButtonToggleStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void type metadata accessor for ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>)
  {
    type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsToggleButton>, lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton, &type metadata for IsToggleButton, MEMORY[0x1E697FD28]);
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>);
    }
  }
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>)
  {
    type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<WidgetInterfaceIdiom>, MEMORY[0x1E697FAD8], MEMORY[0x1E697FAD0], MEMORY[0x1E69801E0]);
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<DefaultToggleIsOnKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ButtonStylePredicate<DefaultButtonStyle>, lazy protocol witness table accessor for type DefaultButtonStyle and conformance DefaultButtonStyle, &type metadata for DefaultButtonStyle, type metadata accessor for ButtonStylePredicate);
    type metadata accessor for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>);
    }
  }
}

void type metadata accessor for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>()
{
  if (!lazy cache variable for type metadata for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for WrappedButtonStyle<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for WrappedButtonStyle);
    lazy protocol witness table accessor for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>();
    v0 = type metadata accessor for ButtonStyleModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle()
{
  result = lazy protocol witness table cache variable for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle;
  if (!lazy protocol witness table cache variable for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>()
{
  result = lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>;
  if (!lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for WrappedButtonStyle<WidgetBorderedProminentButtonStyle>, lazy protocol witness table accessor for type WidgetBorderedProminentButtonStyle and conformance WidgetBorderedProminentButtonStyle, &type metadata for WidgetBorderedProminentButtonStyle, type metadata accessor for WrappedButtonStyle);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WrappedButtonStyle<WidgetBorderedProminentButtonStyle> and conformance WrappedButtonStyle<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, ViewInputFlagModifier<IsToggleButton>>, StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>(255, &lazy cache variable for type metadata for ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
    lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(&lazy protocol witness table cache variable for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>, type metadata accessor for Button<<<opaque return type of View.falseInput<A>(_:)>>.0>);
    lazy protocol witness table accessor for type Button<<<opaque return type of View.falseInput<A>(_:)>>.0> and conformance Button<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Bool?> and conformance _EnvironmentKeyWritingModifier<A>, type metadata accessor for _EnvironmentKeyWritingModifier<Bool?>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<<<opaque return type of View.falseInput<A>(_:)>>.0>, _EnvironmentKeyWritingModifier<Bool?>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>()
{
  result = lazy protocol witness table cache variable for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>;
  if (!lazy protocol witness table cache variable for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>)
  {
    type metadata accessor for ViewInputFlagModifier<IsToggleButton>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<IsToggleButton>, lazy protocol witness table accessor for type IsToggleButton and conformance IsToggleButton, &type metadata for IsToggleButton, MEMORY[0x1E697FD28]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewInputFlagModifier<IsToggleButton> and conformance ViewInputFlagModifier<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier>();
    lazy protocol witness table accessor for type InterfaceIdiomPredicate<WidgetInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
    lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<InterfaceIdiomPredicate<WidgetInterfaceIdiom>, StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier>();
    lazy protocol witness table accessor for type ButtonStylePredicate<DefaultButtonStyle> and conformance ButtonStylePredicate<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<ButtonStylePredicate<DefaultButtonStyle>, ButtonStyleModifier<WrappedButtonStyle<WidgetBorderedProminentButtonStyle>>, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 80);
  if (v5 <= 7 && (*(v4 + 80) & 0x100000) == 0 && ((-25 - v5) | v5) - *(*(*(a3 + 24) - 8) + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    *a1 = *a2;
    *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
    v9 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    v10 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v10;
    (*(v4 + 16))(v9 + 1, v10 + 1);
  }

  else
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + ((v5 & 0xF8 ^ 0x1F8) & (v5 + 16)));
  }

  return v3;
}

unint64_t initializeWithTake for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 32))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

unint64_t assignWithTake for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 40))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

uint64_t getEnumTagSinglePayload for LazyPlatformItemWriter(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
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

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
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
      v15 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((v15 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 8) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
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