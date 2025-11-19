uint64_t static AccessibilityLabeledContentLabelModifier._makeView(modifier:inputs:body:)@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, void *a3@<X8>)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = *(a1 + 64);
  v21[3] = *(a1 + 48);
  v21[4] = v7;
  v8 = *(a1 + 16);
  v21[0] = *a1;
  v22 = *(a1 + 80);
  v21[1] = v8;
  v21[2] = v6;
  *&v15 = *(a1 + 48);
  DWORD2(v15) = *(a1 + 56);
  if ((PreferencesInputs.contains<A>(_:includeHostPreferences:)() & 1) == 0)
  {
    return a2();
  }

  v9 = *(a1 + 48);
  v17 = *(a1 + 32);
  v18 = v9;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v10 = *(a1 + 16);
  v15 = *a1;
  v16 = v10;
  (a2)(&v13);
  lazy protocol witness table accessor for type AccessibilityPresentation and conformance AccessibilityPresentation();
  result = PropertyList.subscript.getter();
  if (v15 != *MEMORY[0x1E698D3F8])
  {
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform();
    v12 = Attribute.init<A>(body:value:flags:update:)();
    _s7SwiftUI25AccessibilityViewModifierPAAE04makeC19PropertiesTransform8modifier6inputs7outputs14AttributeGraph0L0VyAA0C8NodeListVGSgAA01_M5ValueVyxG_AA01_D6InputsVAA01_D7OutputsVtFZAA0c10AttachmentE0V_Tt2B5(v12, v21, v13, v14);
    result = PreferencesOutputs.subscript.setter();
  }

  *a3 = v13;
  a3[1] = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform()
{
  result = lazy protocol witness table cache variable for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform;
  if (!lazy protocol witness table cache variable for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityLabeledContentLabelModifier.Transform and conformance AccessibilityLabeledContentLabelModifier.Transform);
  }

  return result;
}

uint64_t LabelGroupChildEnvironmentModifier.ChildEnvironment.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for LabelGroupChildEnvironmentModifier();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v25 - v16;
  v28 = a1;
  _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter(a4);
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(v14);
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(v11);
  v18 = *&v11[*(v8 + 36)];
  v19 = *(v9 + 8);
  v29 = v9 + 8;
  v30 = v19;
  v19(v11, v8);
  (*(a3 + 32))(v18, a2, a3);
  v20 = *(a2 - 8);
  v26 = *(v20 + 8);
  v27 = v20 + 8;
  v26(v14, a2);
  v25 = a4;
  v22 = *a4;
  v21 = a4[1];
  v33 = v22;
  v34 = v21;
  swift_getAssociatedConformanceWitness();

  v32 = 0;
  ShapeStyle.copyStyle(name:in:foregroundStyle:)();

  (*(v31 + 8))(v17, AssociatedTypeWitness);
  EnvironmentValues.defaultForegroundStyle.setter();
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(v14);
  LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter(v11);
  v23 = *&v11[*(v8 + 36)];
  v30(v11, v8);
  (*(a3 + 24))(v23, a2, a3);
  v26(v14, a2);
  return EnvironmentValues.defaultFont.setter();
}

uint64_t _DiscreteSymbolEffectModifier.EffectEnvironment.environment.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;
}

uint64_t LabelGroupChildEnvironmentModifier.ChildEnvironment.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LabelGroupChildEnvironmentModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t LabelGroupStyleModifier.styleBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for <<opaque return type of MappedViewElement.view>>.0();
  v5 = *(a1 + 16);
  v24 = *(a1 + 24);
  v25 = v5;
  type metadata accessor for LabelGroupChildEnvironmentModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for LabelGroupStyleModifier<BodyLabelGroupStyle>(255, &lazy cache variable for type metadata for PlatformItemListTransformModifier<LabelPlatformItemListFlags>, &type metadata for LabelPlatformItemListFlags, &protocol witness table for LabelPlatformItemListFlags, type metadata accessor for PlatformItemListTransformModifier);
  v6 = type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = &protocol witness table for LabelGroupChildEnvironmentModifier<A>;
  WitnessTable = swift_getWitnessTable();
  v33 = &protocol witness table for PlatformItemListTransformModifier<A>;
  v23[0] = v6;
  v7 = swift_getWitnessTable();
  v28 = &type metadata for LabelGroupStyleConfiguration.Content;
  v29 = v6;
  v30 = &protocol witness table for LabelGroupStyleConfiguration.Content;
  v31 = v7;
  v23[1] = MEMORY[0x1E6981180];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v23 - v14;
  (*(v3 + 16))(v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26, a1, v13);
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  v18 = v24;
  *(v17 + 16) = v25;
  *(v17 + 24) = v18;
  (*(v3 + 32))(v17 + v16, v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v19 = swift_checkMetadataState();
  View.enumerated<A>(_:)();

  v28 = &type metadata for LabelGroupStyleConfiguration.Content;
  v29 = v19;
  v30 = &protocol witness table for LabelGroupStyleConfiguration.Content;
  v31 = v7;
  v20 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)(v11, OpaqueTypeMetadata2, v20);
  v21 = *(v9 + 8);
  v21(v11, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)(v15, OpaqueTypeMetadata2, v20);
  return (v21)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_18BE33EDC()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for LabelGroupStyleModifier() - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in LabelGroupStyleModifier.styleBody(configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(type metadata accessor for LabelGroupStyleModifier() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return closure #1 in LabelGroupStyleModifier.styleBody(configuration:)(a1, v7, v5, a2);
}

uint64_t View.transformPlatformItemList<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a2;
  v10[1] = a3;
  v8 = type metadata accessor for PlatformItemListTransformModifier();

  MEMORY[0x18D00A570](v10, a4, v8, a6);
}

BOOL TitleAndContentLayout.useHorizontalLayout(_:_:proposal:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  result = (a8 >> 8) & 1;
  if ((a8 & 0x100) == 0 && (a8 & 1) == 0)
  {
    static ProposedViewSize.unspecified.getter();
    LayoutSubview.dimensions(in:)();
    if (a5)
    {
      v12 = INFINITY;
    }

    else
    {
      v12 = *&a4;
    }

    static ProposedViewSize.unspecified.getter();
    LayoutSubview.dimensions(in:)();
    ViewDimensions.width.getter();
    v14 = v13;
    ViewDimensions.width.getter();
    v16 = v15;

    return v14 + v16 + a1 <= v12;
  }

  return result;
}

uint64_t protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ActionsLayout(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ActionsLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981820]);
}

{
  return protocol witness for Layout.explicitAlignment(of:in:proposal:subviews:cache:) in conformance ActionsLayout(a1, a2, a3, a4, a5, a6, a7, a8, a9, MEMORY[0x1E6981828]);
}

uint64_t _LabeledContentStyleModifier.styleBody(configuration:)(char *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-v11];
  v17 = *a1;
  (*(v3 + 24))(&v17, v4, v3, v10);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  static ViewBuilder.buildExpression<A>(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v14 = *(v6 + 8);
  v14(v8, AssociatedTypeWitness);
  static ViewBuilder.buildExpression<A>(_:)(v12, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (v14)(v12, AssociatedTypeWitness);
}

uint64_t sub_18BE3449C()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

void type metadata accessor for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>()
{
  if (!lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>)
  {
    _s7SwiftUI23InterfaceIdiomPredicateVyAA06VisioncD0VGMaTm_0(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
    type metadata accessor for HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>();
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<InterfaceIdiomPredicate<VisionInterfaceIdiom>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>, HStack<TupleView<(ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, LabelIconPlatformItemModifier>, _FrameLayout>, ModifiedContent<LabelStyleConfiguration.Title, _EnvironmentKeyWritingModifier<TextAlignment>>)>>>);
    }
  }
}

void type metadata accessor for FocusGroupIdentifier?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for RootEntityGestureResponderFilter(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t View.platformItemSelector(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  View.transformPlatformItemList<A>(_:_:)(v11, a5, v11, a2, a6, a3);
}

unint64_t protocol witness for LabelGroupStyle_v0.foregroundStyle(at:) in conformance BodyLabelGroupStyle@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (result > 2)
  {
    *a2 = 2;
  }

  else
  {
    *a2 = dword_18CDB9ACC[result];
  }

  return result;
}

uint64_t protocol witness for LabelGroupStyle_v0.font(at:) in conformance BodyLabelGroupStyle(uint64_t a1)
{
  if (a1 == 2)
  {
    return static Font.footnote.getter();
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      return static Font.body.getter();
    }

    return static Font.footnote.getter();
  }

  return static Font.subheadline.getter();
}

double TitleAndContentLayout.horizontalLayoutSize(_:_:alignment:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  ViewDimensions.width.getter();
  v11 = v7;
  ViewDimensions.width.getter();
  v10 = v8;
  if ((a5 & 0x10000) != 0)
  {
    ViewDimensions.height.getter();
  }

  else
  {
    MEMORY[0x18D004E70](a4);
    MEMORY[0x18D004E70](a4);
    ViewDimensions.height.getter();
    MEMORY[0x18D004E70](a4);
    ViewDimensions.height.getter();
    MEMORY[0x18D004E70](a4);
  }

  return v11 + v10 + a1;
}

uint64_t protocol witness for Layout.placeSubviews(in:proposal:subviews:cache:) in conformance TitleAndContentLayout(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = a2 & 1;
  v12 = a4 & 1;
  if (*(v10 + 25))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | *(v10 + 24);
  if (*(v10 + 26))
  {
    v15 = 0x10000;
  }

  else
  {
    v15 = 0;
  }

  return TitleAndContentLayout.placeSubviews(in:proposal:subviews:cache:)(a1, v11, a3, v12, a5, a7, a8, a9, a10, *v10, a6, v14 | v15);
}

uint64_t TitleAndContentLayout.placeSubviews(in:proposal:subviews:cache:)(uint64_t a1, char a2, uint64_t a3, char a4, int *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, uint64_t a11, int a12)
{
  v21 = *a5;
  v22 = *(a5 + 1);
  v23 = *(a5 + 16);
  v24 = *(a5 + 17);
  LODWORD(v72) = *a5;
  *(&v72 + 1) = v22;
  LOBYTE(v73) = v23;
  BYTE1(v73) = v24;
  v25 = LayoutSubviews.endIndex.getter();
  if (LayoutSubviews.endIndex.getter() < 0)
  {
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  result = LayoutSubviews.endIndex.getter();
  if (v25 < 0 || result < v25)
  {
    goto LABEL_29;
  }

  if (!v25)
  {
    return result;
  }

  if (v25 != 2)
  {
    if (v25 == 1)
    {
      LODWORD(v72) = v21;
      *(&v72 + 1) = v22;
      LOBYTE(v73) = v23;
      BYTE1(v73) = v24;
      LayoutSubviews.subscript.getter();
      static UnitPoint.topLeading.getter();
      v71 = a2 & 1;
      return LayoutSubview.place(at:anchor:proposal:)();
    }

    goto LABEL_30;
  }

  LayoutSubviews.subscript.getter();
  LODWORD(v72) = v21;
  *(&v72 + 1) = v22;
  LOBYTE(v73) = v23;
  BYTE1(v73) = v24;
  LayoutSubviews.subscript.getter();
  v64 = DWORD1(v68);
  v66 = v68;
  v67 = DWORD2(v68);
  v27 = v68;
  v60 = v69;
  LOBYTE(v72) = a2 & 1;
  LayoutSubview.dimensions(in:)();
  v28 = v73;
  v29 = v74;
  v62 = HIDWORD(v68);
  v63 = v69;
  LayoutSubview.dimensions(in:)();
  v30 = static VerticalAlignment.firstTextBaseline.getter();
  v58 = *(&v74 + 1);
  v31 = MEMORY[0x18D004E20](v30);
  v59 = v72;
  if (v32 & 1) != 0 || (v33 = *&v31, v34 = static VerticalAlignment.lastTextBaseline.getter(), v35 = COERCE_DOUBLE(MEMORY[0x18D004E20](v34)), (v36) || vabdd_f64(v33, v35) >= 0.5 || (v37 = static VerticalAlignment.firstTextBaseline.getter(), *(&v72 + 1) = v22, v38 = MEMORY[0x18D004E20](v37), (v39) || (v40 = *&v38, v41 = static VerticalAlignment.lastTextBaseline.getter(), *(&v72 + 1) = v22, v42 = COERCE_DOUBLE(MEMORY[0x18D004E20](v41)), (v43) || vabdd_f64(v40, v42) >= 0.5)
  {
    v44 = static VerticalAlignment.center.getter();
  }

  else
  {
    v44 = static VerticalAlignment.firstTextBaseline.getter();
  }

  v57 = v44;
  v72 = v68;
  LOBYTE(v73) = v69;
  v45 = DWORD1(v68);
  v71 = a4 & 1;
  if (TitleAndContentLayout.useHorizontalLayout(_:_:proposal:)(a10, &v72, &v68, a1, a2 & 1, a3, a4 & 1, a12 & 0x10101))
  {
    *&v68 = __PAIR64__(v45, v66);
    *(&v68 + 1) = __PAIR64__(v62, v67);
    LOBYTE(v69) = v63;
    v71 = a4 & 1;
    LayoutSubview.dimensions(in:)();
    if (!(a2 & 1 | ((~a1 & 0x7FF0000000000000) == 0)))
    {
      v68 = v72;
      v69 = v73;
      v70 = v74;
      ViewDimensions.width.getter();
    }

    LOBYTE(v68) = a2 & 1;
    v71 = a4 & 1;
    LayoutSubview.dimensions(in:)();
    v46 = v68;
    v47 = v69;
    v48 = v70;
    if (a2)
    {
      v50 = *(&v72 + 1);
      v49 = v72;
      v51 = v73;
      v52 = v74;
    }

    else
    {
      ViewDimensions.width.getter();
      v54 = v53;
      v50 = *(&v72 + 1);
      v49 = v72;
      v56 = v73;
      v61 = v74;
      ViewDimensions.width.getter();
      if (v54 + v55 >= *&a1)
      {
LABEL_25:
        v68 = v46;
        v69 = v47;
        v70 = v48;
        MEMORY[0x18D004E70](v57);
        *&v68 = v49;
        *(&v68 + 1) = v50;
        v69 = v56;
        v70 = v61;
        MEMORY[0x18D004E70](v57);
        v68 = v27;
        LOBYTE(v69) = v60;
        v79.origin.x = a6;
        v79.origin.y = a7;
        v79.size.width = a8;
        v79.size.height = a9;
        CGRectGetMinX(v79);
        v80.origin.x = a6;
        v80.origin.y = a7;
        v80.size.width = a8;
        v80.size.height = a9;
        CGRectGetMinY(v80);
        static UnitPoint.topLeading.getter();
        v71 = a4 & 1;
        LayoutSubview.place(at:anchor:proposal:)();
        *&v68 = __PAIR64__(v64, v66);
        *(&v68 + 1) = __PAIR64__(v62, v67);
        LOBYTE(v69) = v63;
        v81.origin.x = a6;
        v81.origin.y = a7;
        v81.size.width = a8;
        v81.size.height = a9;
        CGRectGetMaxX(v81);
        v82.origin.x = a6;
        v82.origin.y = a7;
        v82.size.width = a8;
        v82.size.height = a9;
        CGRectGetMinY(v82);
        static UnitPoint.topTrailing.getter();
        v71 = a4 & 1;
        LayoutSubview.place(at:anchor:proposal:)();

        goto LABEL_26;
      }

      v68 = v46;
      v69 = v47;
      v70 = v48;
      ViewDimensions.width.getter();
      LOBYTE(v68) = 0;
      v71 = a4 & 1;
      LayoutSubview.dimensions(in:)();

      v50 = *(&v68 + 1);
      v49 = v68;
      v51 = v69;
      v52 = v70;
    }

    v61 = v52;
    v56 = v51;
    goto LABEL_25;
  }

  v72 = v27;
  LOBYTE(v73) = v60;
  v75.origin.x = a6;
  v75.origin.y = a7;
  v75.size.width = a8;
  v75.size.height = a9;
  CGRectGetMinX(v75);
  v76.origin.x = a6;
  v76.origin.y = a7;
  v76.size.width = a8;
  v76.size.height = a9;
  CGRectGetMinY(v76);
  static UnitPoint.topLeading.getter();
  LOBYTE(v68) = a2 & 1;
  LayoutSubview.place(at:anchor:proposal:)();
  *&v68 = __PAIR64__(v45, v66);
  *(&v68 + 1) = __PAIR64__(v62, v67);
  LOBYTE(v69) = v63;
  v77.origin.x = a6;
  v77.origin.y = a7;
  v77.size.width = a8;
  v77.size.height = a9;
  CGRectGetMinX(v77);
  v78.origin.x = a6;
  v78.origin.y = a7;
  v78.size.width = a8;
  v78.size.height = a9;
  CGRectGetMinY(v78);
  *&v72 = v59;
  *(&v72 + 1) = v22;
  v73 = v28;
  *&v74 = v29;
  *(&v74 + 1) = v58;
  ViewDimensions.height.getter();
  static UnitPoint.topLeading.getter();
  LOBYTE(v72) = a2 & 1;
  LayoutSubview.place(at:anchor:proposal:)();
LABEL_26:
}

unint64_t lazy protocol witness table accessor for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented()
{
  result = lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented;
  if (!lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented;
  if (!lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented;
  if (!lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationMode.FromIsPresented and conformance PresentationMode.FromIsPresented);
  }

  return result;
}

UISplitViewControllerColumn_optional __swiftcall UISplitViewController.column(forViewController:)(UIViewController *forViewController)
{
  if ([v1 style])
  {
    v3 = [v1 viewControllerForColumn_];
    if (v3)
    {
      v4 = v3;
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();

      if (v5 && v5 == forViewController)
      {
        v11 = UISplitViewControllerColumnPrimary;
        v10 = 0;
        goto LABEL_25;
      }
    }
  }

  if ([v1 style] && (v7 = objc_msgSend(v1, sel_viewControllerForColumn_, 2)) != 0 && (v8 = v7, objc_opt_self(), v9 = swift_dynamicCastObjCClass(), v8, v9) && v9 == forViewController)
  {
    v10 = 0;
    v11 = UISplitViewControllerColumnSecondary;
  }

  else
  {
    if (![v1 style] || (v12 = objc_msgSend(v1, sel_viewControllerForColumn_, 1)) == 0 || (v13 = v12, objc_opt_self(), v14 = swift_dynamicCastObjCClass(), v13, !v14) || v14 != forViewController)
    {
      if ([v1 style])
      {
        v15 = [v1 viewControllerForColumn_];
        if (v15)
        {
          v16 = v15;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIViewController);
            v17 = forViewController;
            v18 = static NSObject.== infix(_:_:)();

            if (v18)
            {
              v10 = 0;
              v11 = UISplitViewControllerColumnCompact;
              goto LABEL_25;
            }
          }

          else
          {
          }
        }
      }

      v11 = UISplitViewControllerColumnPrimary;
      v10 = 1;
      goto LABEL_25;
    }

    v10 = 0;
    v11 = UISplitViewControllerColumnSupplementary;
  }

LABEL_25:
  result.value = v11;
  result.is_nil = v10;
  return result;
}

double ScrollViewAdjustedSafeArea.value.getter()
{
  v0 = *AGGraphGetValue();
  static Semantics.v6.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    AGGraphGetValue();
    type metadata accessor for CGSize(0);
    AGGraphGetValue();
    if (Axis.Set.contains(_:)())
    {
      EdgeInsets.subscript.getter();
      EdgeInsets.subscript.setter();
    }

    if (Axis.Set.contains(_:)())
    {
      EdgeInsets.subscript.getter();
      EdgeInsets.subscript.setter();
    }
  }

  return v0;
}

double ScrollViewContentFrame.value.getter@<D0>(int a1@<W2>, _OWORD *a2@<X8>)
{
  AGGraphGetValue();
  Value = AGGraphGetValue();
  v5 = Value[1];
  v13 = *Value;
  v14 = v5;
  MEMORY[0x18D00B390]();
  CGSize.inset(by:)();
  if (*MEMORY[0x1E698D3F8] == a1)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = *(AGGraphGetValue() + 8);
  }

  v12[0] = v6;
  v12[1] = v7;
  v8 = AGGraphGetValue();
  static ScrollViewUtilities.contentFrame(in:contentComputer:axes:)(v12, *v8);

  v9 = AGGraphGetValue();
  MEMORY[0x18D00BD30](*v9);
  v10 = v14;
  *a2 = v13;
  a2[1] = v10;
  result = *&v15;
  a2[2] = v15;
  return result;
}

double MainThreadRequiringScrollPhase.value.getter(uint64_t a1)
{
  v4 = a1;
  v2[1] = a1;
  MainThreadRequiringScrollPhase.state.getter(v3);
  if (ScrollPhaseState.phase.getter() > 2u)
  {
    return MainThreadRequiringScrollPhase.time.getter(v2);
  }

  return result;
}

__n128 MainThreadRequiringScrollPhase.state.getter@<Q0>(uint64_t a1@<X8>)
{
  Value = AGGraphGetValue();
  *a1 = *Value;
  result = *(Value + 8);
  *(a1 + 8) = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_7SwiftUI19PinnedBarPortalViewCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  type metadata accessor for _DictionaryStorage<ObjectIdentifier, PinnedBarPortalView>();
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v16 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v15 = v5;
    return v3;
  }

  v7 = (a1 + 48);
  v8 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v9 = *(&v16 + 1);
    *(v3[6] + 8 * result) = v16;
    *(v3[7] + 8 * result) = *(&v16 + 1);
    v10 = v3[2];
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v5 = *(&v16 + 1);
    v3[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;
    v13 = v9;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id HostingScrollView.PlatformGroupContainer.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBounds] = 0;
  *&v4[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableFillerBounds] = 0;
  *&v4[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBorder] = 0;
  *&v4[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__environmentPixelLength] = 0;
  *&v4[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_fillerItems] = MEMORY[0x1E69E7CC0];
  *&v4[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer_requestedFocusItem] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t ScrollViewAdjustedState.resetIfNeeded(state:reason:)(double *a1, char *a2)
{
  v5 = *(v2 + 116);
  v6 = *AGGraphGetValue() >> 1;
  if (v5 == v6 && AGGraphGetOutputValue())
  {
    return 0;
  }

  v8 = COERCE_DOUBLE(ScrollViewAdjustedState.initialPositionOffset()());
  if (v10)
  {
    v8 = ScrollViewAdjustedState.initialOffset()();
    v9 = v11;
    v12 = 3;
  }

  else
  {
    v12 = 4;
  }

  *a1 = v8;
  *(a1 + 1) = v9;
  *a2 = v12;
  if (v5 != v6)
  {
    *(v2 + 116) = *AGGraphGetValue() >> 1;
    *(v2 + 112) = 0;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  return 1;
}

uint64_t ScrollViewAdjustedBehaviorProperties.updateValue()()
{
  v1 = v0;
  v40 = *MEMORY[0x1E69E9840];
  outlined init with copy of ScrollViewAdjustedBehaviorProperties(v0, &v23);
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  v3 = v2;
  v4 = lazy protocol witness table accessor for type ScrollViewAdjustedBehaviorProperties and conformance ScrollViewAdjustedBehaviorProperties();
  MEMORY[0x18D000B40](&unk_1F001A390, v3, v4);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined destroy of ScrollViewAdjustedBehaviorProperties(&v23);
  if (!*(&v31 + 1))
  {
    v10 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    outlined destroy of ResolvedScrollBehavior?(v0 + 24, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v10);
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 81) = 0u;
    LOWORD(v23) = 0;
    BYTE2(v23) = 0;
    return AGGraphSetOutputValue();
  }

  v37 = v32;
  v38 = v33;
  v39 = v34;
  v35 = v30;
  v36 = v31;
  AGGraphGetValue();
  v6 = v5;
  outlined init with copy of ResolvedScrollBehavior(&v35, &v30);
  v7 = MEMORY[0x1E69E6720];
  outlined init with copy of ScrollPosition?(v1 + 24, v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  outlined init with copy of ScrollPosition?(&v30, &v23, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v7);
  outlined init with copy of ScrollPosition?(v29, v27, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v7);
  if (v26)
  {
    outlined init with copy of ScrollPosition?(&v23, v22, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    if (v28)
    {
      v8 = specialized static ResolvedScrollBehavior.== infix(_:_:)(v22, v27);

      outlined destroy of AccessibilityRelationshipScope.Key(v27);
      v9 = MEMORY[0x1E69E6720];
      outlined destroy of ResolvedScrollBehavior?(v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
      outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v9);
      outlined destroy of AccessibilityRelationshipScope.Key(v22);
      outlined destroy of ResolvedScrollBehavior?(&v23, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v9);
      goto LABEL_10;
    }

    v13 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v13);
    outlined destroy of AccessibilityRelationshipScope.Key(v22);
  }

  else
  {

    v12 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(v29, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
    outlined destroy of ResolvedScrollBehavior?(&v30, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, v12);
    if (!v28)
    {
      outlined destroy of ResolvedScrollBehavior?(&v23, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
      v8 = 1;
      goto LABEL_10;
    }
  }

  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(&v23);
  v8 = 0;
LABEL_10:
  v14 = *AGGraphGetValue();
  v15 = *(v1 + 96);
  if (v6)
  {

    v16 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

    if ((v8 & ~v16 & 1) == 0 || v14 != v15)
    {
      goto LABEL_16;
    }
  }

  else if (!v8 || v14 != v15)
  {
LABEL_16:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    v17 = v23;
    v18 = v24;
    v19 = *(&v36 + 1);
    v20 = v37;
    __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    v23 = v17;
    v24 = v18;
    v25 = v14;
    v21 = *(v20 + 16);

    v21(&v30, &v23, v19, v20);
    LOWORD(v23) = v30;
    BYTE2(v23) = BYTE2(v30);
    AGGraphSetOutputValue();

    goto LABEL_17;
  }

LABEL_17:

  *(v1 + 96) = v14;
  outlined destroy of ResolvedScrollBehavior?(v1 + 24, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  outlined init with copy of ResolvedScrollBehavior(&v35, v1 + 24);
  return outlined destroy of AccessibilityRelationshipScope.Key(&v35);
}

uint64_t closure #1 in ScrollViewAdjustedBehaviorProperties.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of ScrollViewAdjustedBehaviorProperties(a1, v13);
  type metadata accessor for ScrollEnvironmentStorage();
  v3 = *AGGraphGetValue();

  outlined destroy of ScrollViewAdjustedBehaviorProperties(v13);
  swift_getKeyPath();
  v11 = v3;
  lazy protocol witness table accessor for type CGSize and conformance CGSize(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v3 + 16, &v11);
  swift_getKeyPath();
  v10[0] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v3 + 280, v10, type metadata accessor for ScrollEnvironmentTransform?);
  if (v10[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v10, v7);
    v4 = v8;
    v5 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v5 + 8))(&v11, v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  outlined init with copy of ScrollPosition?(&v12, a2, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  return outlined destroy of ScrollEnvironmentProperties(&v11);
}

uint64_t assignWithCopy for ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v4 = (a1 + 48);
  v6 = (a2 + 48);
  v5 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (v5)
    {
      v7 = *(a2 + 56);
      *(a1 + 48) = v5;
      *(a1 + 56) = v7;

      goto LABEL_8;
    }

    outlined destroy of ScrollToTopGestureAction(a1 + 48);
  }

  else if (v5)
  {
    v8 = *(a2 + 56);
    *(a1 + 48) = v5;
    *(a1 + 56) = v8;

    goto LABEL_8;
  }

  *v4 = *v6;
LABEL_8:
  swift_unknownObjectWeakCopyAssign();
  v10 = (a1 + 80);
  v9 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  v12 = (a2 + 80);
  v11 = *(a2 + 80);
  if (v9)
  {
    if (v11)
    {
      v13 = *(a2 + 88);
      *(a1 + 80) = v11;
      *(a1 + 88) = v13;

      *(a1 + 96) = *(a2 + 96);
    }

    else
    {
      outlined destroy of RefreshAction(a1 + 80);
      v15 = *(a2 + 96);
      *v10 = *v12;
      *(a1 + 96) = v15;
    }
  }

  else if (v11)
  {
    v14 = *(a2 + 88);
    *(a1 + 80) = v11;
    *(a1 + 88) = v14;
    *(a1 + 96) = *(a2 + 96);
  }

  else
  {
    v16 = *v12;
    *(a1 + 96) = *(a2 + 96);
    *v10 = v16;
  }

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);

  return a1;
}

Swift::Void __swiftcall UIScrollView.updateDeceleration(_:)(SwiftUI::ScrollDecelerationRate a1)
{
  v2 = *a1.role;
  v3 = MEMORY[0x1E69DE3A0];
  if (v2 == 3)
  {
    v4 = 1;
  }

  else
  {
    v3 = MEMORY[0x1E69DE3A8];
    v4 = 0;
  }

  v5 = v2 >= 2;
  v6 = MEMORY[0x1E69DE3A0];
  if (!v5)
  {
    v6 = MEMORY[0x1E69DE3A8];
  }

  if (*a1.role <= 2u)
  {
    v7 = 0;
  }

  else
  {
    v6 = v3;
    v7 = v4;
  }

  [v1 setDecelerationRate_];

  [v1 setPagingEnabled_];
}

uint64_t getEnumTagSinglePayload for ScrollEnvironmentProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 264))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

id specialized HostingScrollView.PlatformContainer.init(scrollView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_safeAreaHelper;
  type metadata accessor for PlatformSafeAreaHelper();
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 1;
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 1;
  *&v1[v4] = v5;
  v1[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_isInitialSafeAreaUpdate] = 1;
  v6 = &v1[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer__safeAreaInsets];
  v7 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  *v6 = v7;
  v6[1] = v7;
  *&v1[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView] = a1;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v8 = a1;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v9 addSubview_];
  swift_unknownObjectWeakAssign();

  return v9;
}

void type metadata accessor for EnvironmentPropertyKey<ScrollContentBackgroundKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>);
    }
  }
}

uint64_t outlined destroy of HostingScrollViewUpdateContext?(uint64_t a1)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for HostingScrollViewUpdateContext?);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #6 in static SystemScrollView._makeView(view:inputs:)(uint64_t a1)
{
  result = PreferencesOutputs.subscript.getter();
  v3 = *MEMORY[0x1E698D3F8];
  if ((result & 0x100000000) == 0)
  {
    v3 = result;
  }

  *(a1 + 12) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer()
{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer);
  }

  return result;
}

uint64_t sub_18BE36C40(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  v4 = v3;
  return a1;
}

unint64_t lazy protocol witness table accessor for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView()
{
  result = lazy protocol witness table cache variable for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView;
  if (!lazy protocol witness table cache variable for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdatedHostingScrollView and conformance UpdatedHostingScrollView);
  }

  return result;
}

uint64_t destroy for UpdatedHostingScrollView(uint64_t a1)
{

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 64);
  }
}

uint64_t initializeWithCopy for UpdatedHostingScrollView(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    v6 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v6;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 108) = *(a2 + 108);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = v7;
    *(a1 + 128) = *(a2 + 128);
    v8 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v8;
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  v9 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v9;
  *(a1 + 168) = *(a2 + 168);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 176) = v10;
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 224);
  v11 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v11;
  v12 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v12;
  v13 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v13;
  v14 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v14;
  v15 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v15;
  v16 = *(a2 + 432);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v16;
  v17 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v17;
  v18 = *(a2 + 496);
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = v18;
  v19 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v19;
  *(a1 + 553) = *(a2 + 553);
  v20 = *(a2 + 544);
  *(a1 + 528) = *(a2 + 528);
  *(a1 + 544) = v20;
  *(a1 + 512) = *(a2 + 512);

  return a1;
}

unint64_t lazy protocol witness table accessor for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition()
{
  result = lazy protocol witness table cache variable for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition;
  if (!lazy protocol witness table cache variable for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewResponderPosition and conformance ScrollViewResponderPosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewResponderSize and conformance ScrollViewResponderSize()
{
  result = lazy protocol witness table cache variable for type ScrollViewResponderSize and conformance ScrollViewResponderSize;
  if (!lazy protocol witness table cache variable for type ScrollViewResponderSize and conformance ScrollViewResponderSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewResponderSize and conformance ScrollViewResponderSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewResponder and conformance ScrollViewResponder()
{
  result = lazy protocol witness table cache variable for type ScrollViewResponder and conformance ScrollViewResponder;
  if (!lazy protocol witness table cache variable for type ScrollViewResponder and conformance ScrollViewResponder)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewResponder and conformance ScrollViewResponder);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewResponder(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  swift_weakCopyInit();
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t destroy for ScrollViewResponder()
{

  swift_weakDestroy();
}

unint64_t lazy protocol witness table accessor for type ScrollViewDisplayList and conformance ScrollViewDisplayList()
{
  result = lazy protocol witness table cache variable for type ScrollViewDisplayList and conformance ScrollViewDisplayList;
  if (!lazy protocol witness table cache variable for type ScrollViewDisplayList and conformance ScrollViewDisplayList)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewDisplayList and conformance ScrollViewDisplayList);
  }

  return result;
}

uint64_t implicit closure #4 in static SystemScrollView._makeView(view:inputs:)()
{
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox);
  lazy protocol witness table accessor for type ContentScrollViewProvider and conformance ContentScrollViewProvider();
  return Attribute.init<A>(body:value:flags:update:)();
}

uint64_t type metadata accessor for (_:)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a2;
  if (!*a2)
  {
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

{
  result = *a2;
  if (!*a2)
  {
    type metadata accessor for [ContentScrollViewBox](255, a3, a4, MEMORY[0x1E69E62F8]);
    result = swift_getFunctionTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t MakeHostingScrollView.init(inputs:outputs:layoutState:phaseState:prefetchState:containerSize:hasScrollPosition:viewGraph:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = a1[3];
  v23 = a1[2];
  v24 = v15;
  v25 = a1[4];
  v26 = *(a1 + 20);
  v16 = a1[1];
  v21 = *a1;
  v22 = v16;
  v17 = *a2;
  swift_weakInit();
  *(a8 + 48) = 0;
  *(a8 + 56) = 0;
  *a8 = a3;
  *(a8 + 4) = a4;
  *(a8 + 8) = a5;
  *(a8 + 12) = a6;
  outlined init with copy of _GraphInputs(&v21, v20);
  outlined destroy of _ViewInputs(&v21);
  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  v18 = _GraphInputs.pixelLength.getter();
  outlined destroy of _GraphInputs(&v21);
  *(a8 + 16) = v18;
  *(a8 + 20) = a7;
  *(a8 + 21) = 0;
  *(a8 + 24) = v17;
  *(a8 + 32) = a2[1];
  swift_weakAssign();
}

uint64_t initializeWithCopy for MakeHostingScrollView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 21) = *(a2 + 21);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  swift_weakCopyInit();
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  v6 = v4;
  v7 = v5;
  return a1;
}

void destroy for MakeHostingScrollView(uint64_t a1)
{

  swift_weakDestroy();

  v2 = *(a1 + 56);
}

unint64_t lazy protocol witness table accessor for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer()
{
  result = lazy protocol witness table cache variable for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer;
  if (!lazy protocol witness table cache variable for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UpdatedScrollViewContainer and conformance UpdatedScrollViewContainer);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame()
{
  result = lazy protocol witness table cache variable for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame;
  if (!lazy protocol witness table cache variable for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewDisplayListFrame and conformance ScrollViewDisplayListFrame);
  }

  return result;
}

__n128 __swift_memcpy36_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ContentScrollViewProvider and conformance ContentScrollViewProvider()
{
  result = lazy protocol witness table cache variable for type ContentScrollViewProvider and conformance ContentScrollViewProvider;
  if (!lazy protocol witness table cache variable for type ContentScrollViewProvider and conformance ContentScrollViewProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContentScrollViewProvider and conformance ContentScrollViewProvider);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollGeometryProvider and conformance ScrollGeometryProvider()
{
  result = lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider;
  if (!lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollGeometryProvider and conformance ScrollGeometryProvider);
  }

  return result;
}

uint64_t ScrollView.body.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for SystemScrollViewContainer();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-v11 - 8];
  outlined init with copy of ScrollViewConfiguration(v2 + *(a1 + 36), v17);
  outlined init with take of ScrollViewConfiguration(v17, v9);
  closure #1 in ScrollView.body.getter(v2, v4, v5);
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t static SystemScrollViewContainer.EnvironmentAxesModifier.makeEnvironment(modifier:environment:)()
{
  closure #1 in static SystemScrollViewContainer.EnvironmentAxesModifier.makeEnvironment(modifier:environment:)(1);
  AGGraphCreateOffsetAttribute2();
  v0 = *AGGraphGetValue();
  EnvironmentValues.nearestScrollableAxes.setter();
  v1 = EnvironmentValues.allScrollableAxes.modify();
  *v2 |= v0;
  return v1(&v4, 0);
}

void type metadata accessor for [ScrollableCollection](uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for CVarArg(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(255, a2, a3, a4, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t closure #1 in ScrollEnvironmentStorage.transform.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  outlined assign with copy of ScrollEnvironmentTransform?(a2, a1 + 280);
  return swift_endAccess();
}

uint64_t closure #1 in static SystemScrollViewContainer.EnvironmentAxesModifier.makeEnvironment(modifier:environment:)(uint64_t a1)
{
  v6[2] = type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier();
  v2 = MEMORY[0x1E6980D08];
  v3 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_13, v6, v2, MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  return v6[5];
}

uint64_t specialized static ResetContentMarginModifier.makeEnvironment(modifier:environment:)(uint64_t a1, uint64_t a2)
{
  result = AGGraphGetValue();
  v4 = *result;
  v5 = *(*result + 16);
  if (v5)
  {

    for (i = 32; ; ++i)
    {
      if (*(v4 + i) > 1u)
      {
        if (*(v4 + i) != 2)
        {
          MEMORY[0x18D007050](&v11, v6);
          type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>);
          v9 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey> and conformance EnvironmentPropertyKey<A>;
          v10 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ToolbarMarginKey>;
          goto LABEL_12;
        }

        MEMORY[0x18D007050](&v11, v6);
        v8 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey>);
        v9 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollIndicatorContentMarginKey> and conformance EnvironmentPropertyKey<A>;
      }

      else if (*(v4 + i))
      {
        MEMORY[0x18D007050](&v11, v6);
        v8 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey>);
        v9 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollContentContentMarginKey> and conformance EnvironmentPropertyKey<A>;
      }

      else
      {
        MEMORY[0x18D007050](&v11, v6);
        v8 = &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>;
        type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey>);
        v9 = &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.AutomaticContentMarginKey> and conformance EnvironmentPropertyKey<A>;
      }

      v10 = v8;
LABEL_12:
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_sliderThumbVisibility> and conformance EnvironmentPropertyKey<A>(v9, v10);

      PropertyList.subscript.setter();
      if (*(a2 + 8))
      {
        PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
      }

      if (!--v5)
      {
      }
    }
  }

  return result;
}

uint64_t outlined assign with copy of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ResolvedScrollBehavior?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t ScrollViewDefaultAnchors.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);

  v7 = *AGGraphGetValue();
  if (v6 == 1)
  {

    ScrollViewDefaultAnchors.defaultValue(axes:)(v7);
    v4 = v8;
    v5 = v9;
  }

  if (!AGGraphGetOutputValue() || (, , v10 = static ScrollAnchorStorage.== infix(_:_:)(), , , (v10 & 1) == 0) || v7 != *(v1 + 33))
  {
    AGGraphSetOutputValue();
  }

  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  *(v1 + 32) = 0;
  *(v1 + 33) = v7;
  return result;
}

uint64_t ScrollViewDefaultAnchors.defaultValue(axes:)(char a1)
{
  static Semantics.v5.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) != 0 && a1 == 3)
  {
LABEL_3:

    return static UnitPoint.topLeading.getter();
  }

  static Semantics.v4.getter();
  if (isLinkedOnOrAfter(_:)())
  {
    if (a1 != 1)
    {
      if (a1 == 3)
      {

        return static UnitPoint.center.getter();
      }

      goto LABEL_14;
    }
  }

  else if (a1 != 1)
  {
    if (a1 == 3)
    {
      goto LABEL_3;
    }

LABEL_14:

    return static UnitPoint.top.getter();
  }

  return static UnitPoint.leading.getter();
}

uint64_t static ScrollViewUtilities.contentFrame(in:contentComputer:axes:)(uint64_t *a1, char a2)
{
  v3 = *a1;
  _ProposedSize.init(_:)();
  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.width.getter();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.height.getter();
  }

  _ProposedSize.init(width:height:)();
  if (a2)
  {
    if (!v3)
    {
      static LayoutComputer.defaultValue.getter();
    }

    LayoutComputer.sizeThatFits(_:)();

    Axis.Set.contains(_:)();
    Axis.Set.contains(_:)();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0 || (Axis.Set.contains(_:)() & 1) == 0)
  {
    Axis.Set.contains(_:)();
    Axis.Set.contains(_:)();
  }

  ViewSize.init(_:proposal:)();
  return ViewFrame.init(origin:size:)();
}

void ContentScrollViewProvider.updateValue()()
{
  v15 = *MEMORY[0x1E69E9840];
  type metadata accessor for HostingScrollView();
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = *AGGraphGetValue();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v14 = 0;
  swift_unknownObjectWeakAssign();
  v10[16] = v5;
  v6 = v4;
  v11 = AGCreateWeakAttribute();
  v12 = AGCreateWeakAttribute();
  v7 = AGCreateWeakAttribute();

  v13 = v7;
  type metadata accessor for (_:)(0, &lazy cache variable for type metadata for (_:), &lazy cache variable for type metadata for [ContentScrollViewBox], &type metadata for ContentScrollViewBox);
  if (AGGraphGetOutputValue() && (v3 & 1) == 0 && *(v0 + 20) == v5)
  {
    outlined destroy of ContentScrollViewBox(v10);
  }

  else
  {
    outlined init with copy of ContentScrollViewBox(v10, v9);
    v8 = swift_allocObject();
    outlined init with take of ContentScrollViewBox(v9, v8 + 16);
    AGGraphSetOutputValue();

    outlined destroy of ContentScrollViewBox(v10);
  }

  *(v0 + 20) = v5;
}

uint64_t sub_18BE3864C()
{
  MEMORY[0x18D011290](v0 + 16);
  MEMORY[0x18D011290](v0 + 24);

  return swift_deallocObject();
}

_BYTE *MakeHostingScrollView.makeScrollView()(uint64_t a1)
{
  v2 = v1;
  v4 = AGCreateWeakAttribute();
  v5 = AGCreateWeakAttribute();
  v6 = AGCreateWeakAttribute();
  v7 = AGCreateWeakAttribute();
  v8 = objc_allocWithZone(type metadata accessor for ScrollViewHelper());
  v9 = ScrollViewHelper.init(layoutState:phaseState:prefetchState:containerSize:axes:)(v4, 0, v5, 0, v6, 0, v7, 0, 0);
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 1;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = *(v2 + 20);
  v10 = *(a1 + 16);
  v11 = objc_allocWithZone(type metadata accessor for HostingScrollView());
  v34 = v9;
  v12 = HostingScrollView.init(viewType:helper:)(v10, v34);
  v13 = AGSubgraphGetCurrent();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    swift_beginAccess();
    v16 = *(v15 + 24);
    v17 = v12;
    v18 = v16;
  }

  else
  {
    v19 = v12;
    v18 = 0;
  }

  AGSubgraphSetCurrent();

  PreferencesOutputs.subscript.getter();
  PreferencesOutputs.subscript.getter();
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for FocusableBorder?, MEMORY[0x1E697E768], MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type ScrollViewFocusableBorder and conformance ScrollViewFocusableBorder();
  Attribute.init<A>(body:value:flags:update:)();
  v20 = OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host;
  v21 = *&v12[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_host];
  v22 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBounds;
  swift_beginAccess();
  v23 = v21;
  *&v21[v22] = AGCreateWeakAttribute();
  swift_endAccess();

  v24 = *&v12[v20];
  v25 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableFillerBounds;
  swift_beginAccess();
  v26 = v24;
  *&v24[v25] = AGCreateWeakAttribute();
  swift_endAccess();

  v27 = *&v12[v20];
  v28 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__focusableBorder;
  swift_beginAccess();
  v29 = v27;
  *&v27[v28] = AGCreateWeakAttribute();
  swift_endAccess();

  v30 = *&v12[v20];
  v31 = OBJC_IVAR____TtCC7SwiftUI17HostingScrollView22PlatformGroupContainer__environmentPixelLength;
  swift_beginAccess();
  v32 = v30;
  *&v30[v31] = AGCreateWeakAttribute();
  swift_endAccess();

  swift_weakLoadStrong();
  swift_weakAssign();

  AGSubgraphSetCurrent();

  return v34;
}

uint64_t ScrollViewAdjustedState.updateValue()()
{
  v42 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = v2;
  v4 = *Value;
  v5 = Value[2];
  v40[1] = Value[1];
  v40[2] = v5;
  v40[0] = v4;
  v6 = Value[3];
  v7 = Value[4];
  v8 = Value[5];
  *(v41 + 12) = *(Value + 92);
  v40[4] = v7;
  v41[0] = v8;
  v40[3] = v6;
  v9 = Value[1];
  v34 = *Value;
  v35 = v9;
  v10 = Value[2];
  v11 = Value[3];
  *(v39 + 12) = *(Value + 92);
  v12 = Value[5];
  v38 = Value[4];
  v39[0] = v12;
  v36 = v10;
  v37 = v11;
  v13 = v2 & (*&v39[1] == 0x8000000000000000);
  v14 = v40[0];
  v27 = 5;
  outlined init with copy of SystemScrollLayoutState(v40, &v28);
  v15 = ScrollViewAdjustedState.resetIfNeeded(state:reason:)(&v34, &v27);
  v16 = ScrollViewAdjustedState.adjustOffsetIfNeeded(state:stateChanged:reason:)(&v34, v3 & 1, &v27);
  v17 = v34;
  if (*(&v34 + 1) != *(&v14 + 1) || *&v34 != *&v14)
  {
    v19 = v27;
    if (v27 != 5)
    {
      v20 = DWORD2(v41[1]);
      v21 = *(v0 + 120);
      v13 = 1;
      swift_beginAccess();
      v22 = (*(v21 + 16) + 1);
      *(v21 + 16) = v22;
      outlined consume of SystemScrollLayoutState.ContentOffsetMode(*&v39[1]);
      *&v39[1] = v19;
      if (v20 != -1)
      {
        if (v20)
        {
          v22 = merge32(_:_:)(v20, v22);
        }

        DWORD2(v39[1]) = v22;
        if (v22 != -1)
        {
          v23 = v19 + 1;
          if (v22)
          {
            v23 = merge32(_:_:)(v22, v23);
          }

          DWORD2(v39[1]) = v23;
        }

        v13 = 1;
      }
    }
  }

  v24 = v3 | v15;
  v25 = *(v0 + 104) == *(&v17 + 1) && *(v0 + 96) == *&v17;
  if (!v25 && v13)
  {
    *(v0 + 96) = v17;
  }

  if ((AGGraphGetOutputValue() == 0) | v16 & 1 | v24 & 1)
  {
    v32 = v38;
    v33[0] = v39[0];
    *(v33 + 12) = *(v39 + 12);
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    AGGraphSetOutputValue();
  }

  v32 = v38;
  v33[0] = v39[0];
  *(v33 + 12) = *(v39 + 12);
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v31 = v37;
  return outlined destroy of SystemScrollLayoutState(&v28);
}

uint64_t outlined init with copy of SystemScrollLayoutState(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v4;
  v5 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v5;
  *(a2 + 80) = *(a1 + 80);
  v6 = *(a1 + 96);
  outlined copy of SystemScrollLayoutState.ContentOffsetMode(v6);
  *(a2 + 96) = v6;
  *(a2 + 104) = *(a1 + 104);
  return a2;
}

double ScrollViewRTLAlignmentAdjustment.value.getter()
{
  static Semantics.v6.getter();
  v0 = 0.0;
  if (isLinkedOnOrAfter(_:)())
  {
    AGGraphGetValue();
    if ((Axis.Set.contains(_:)() & 1) != 0 && *AGGraphGetValue() == 1)
    {
      AGGraphGetValue();

      ScrollAnchorStorage.alignment.getter();
      v2 = v1;

      if (v2 == 0.0)
      {
        AGGraphGetValue();
        ViewSize.width.getter();
        v4 = v3;
        AGGraphGetValue();
        ViewSize.width.getter();
        if (v4 < v5)
        {
          return v5 - v4;
        }
      }
    }
  }

  return v0;
}

uint64_t ScrollViewAlignmentAdjustment.value.getter()
{
  static Semantics.v6.getter();
  result = isLinkedOnOrAfter(_:)();
  if (result)
  {
    v1 = *AGGraphGetValue();
    AGGraphGetValue();

    ScrollAnchorStorage.alignment.getter();

    if (v1)
    {
      result = UnitPoint.subscript.getter();
      if (v2 != 0.0)
      {
        AGGraphGetValue();
        ViewSize.subscript.getter();
        v4 = v3;
        AGGraphGetValue();
        result = ViewSize.subscript.getter();
        if (v4 < v5)
        {
          result = UnitPoint.subscript.getter();
        }
      }
    }

    if ((v1 & 2) != 0)
    {
      result = UnitPoint.subscript.getter();
      if (v6 != 0.0)
      {
        AGGraphGetValue();
        ViewSize.subscript.getter();
        v8 = v7;
        AGGraphGetValue();
        result = ViewSize.subscript.getter();
        if (v8 < v9)
        {
          return UnitPoint.subscript.getter();
        }
      }
    }
  }

  return result;
}

id ScrollViewHelper.init(layoutState:phaseState:prefetchState:containerSize:axes:)(unint64_t a1, unsigned int a2, unint64_t a3, unsigned int a4, unint64_t a5, char a6, unint64_t a7, char a8, char a9)
{
  v60 = __PAIR64__(a4, a2);
  ObjectType = swift_getObjectType();
  v13 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__layoutState] = 0;
  v14 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__phaseState] = 0;
  v15 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__prefetchState] = 0;
  v16 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize];
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper__containerSize] = 0;
  EnvironmentValues.init()();
  v17 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties];
  *v17 = 257;
  *(v17 + 21) = 0;
  *(v17 + 8) = 0u;
  *(v17 + 24) = 0u;
  *(v17 + 40) = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 67) = 0u;
  *(v17 + 44) = 4;
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 12) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_AC06ScrollE11EffectStyleVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v17 + 13) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4EdgeO_SbTt0g5Tf4g_n(v18);
  v17[112] = 0;
  v17[120] = 0;
  *(v17 + 16) = 0;
  *(v17 + 68) = 0;
  v17[144] = 0;
  *(v17 + 19) = 0;
  *(v17 + 158) = 0;
  v17[166] = 1;
  *(v17 + 167) = 0u;
  *(v17 + 183) = 0u;
  v17[199] = 0;
  static EdgeInsets.zero.getter();
  *(v17 + 25) = v19;
  *(v17 + 26) = v20;
  *(v17 + 27) = v21;
  *(v17 + 28) = v22;
  v23 = static EdgeInsets.zero.getter();
  *(v17 + 29) = v24;
  *(v17 + 30) = v25;
  *(v17 + 31) = v26;
  *(v17 + 32) = v27;
  v28 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_contentMargins];
  v29 = MEMORY[0x18D007050](v66, v23);
  v30 = MEMORY[0x18D007050](v68, v29);
  v31 = MEMORY[0x18D007050](v70, v30);
  MEMORY[0x18D007050](v72, v31);
  v32 = v66[1];
  *v28 = v66[0];
  v28[1] = v32;
  v28[2] = v67[0];
  *(v28 + 41) = *(v67 + 9);
  v33 = v68[1];
  v28[4] = v68[0];
  v28[5] = v33;
  v28[6] = v69[0];
  *(v28 + 105) = *(v69 + 9);
  v34 = v70[0];
  v35 = v70[1];
  v36 = v71[0];
  *(v28 + 169) = *(v71 + 9);
  v28[9] = v35;
  v28[10] = v36;
  v28[8] = v34;
  v37 = v72[1];
  v28[12] = v72[0];
  v28[13] = v37;
  v28[14] = v73[0];
  *(v28 + 233) = *(v73 + 9);
  v38 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_scrollContentBackground];
  *v38 = 0;
  *(v38 + 4) = 0;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_options] = 6;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_updateFlags] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_hasScrollPosition] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_defaultDismissKeyboardMode] = 3;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v39 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastScrollOffset];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_decelerationBias];
  *v40 = 0;
  v40[1] = 0;
  v41 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_beginPanningOffset];
  *v41 = 0;
  *(v41 + 1) = 0;
  v41[16] = 1;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_isAnimationCheckPending] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingTargetOffsetRequest] = 0;
  v42 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastTargetOffsetState];
  *v42 = 0u;
  *(v42 + 1) = 0u;
  *(v42 + 2) = 0u;
  *(v42 + 3) = 0u;
  v42[66] = 0;
  *(v42 + 32) = 512;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastPhase] = 0;
  v43 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastVelocity];
  *v43 = 0;
  v43[1] = 0;
  v44 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastOffsetChange];
  *v44 = 0;
  v44[1] = 0;
  v45 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_lastBoundsSize];
  *v45 = 0;
  *(v45 + 1) = 0;
  v45[16] = 1;
  *&v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_ignoreUpdates] = 0;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_pendingUpdate] = 2;
  v46 = &v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_accessoryPlacementInsets];
  static EdgeInsets.zero.getter();
  *v46 = v47;
  v46[1] = v48;
  v46[2] = v49;
  v46[3] = v50;
  v51 = HIDWORD(a1);
  if (v60)
  {
    v52 = 0;
  }

  else
  {
    v52 = a1;
  }

  if (v60)
  {
    LODWORD(v51) = 0;
  }

  *v13 = v52;
  v13[1] = v51;
  v53 = HIDWORD(a3);
  if ((v60 & 0x100000000) != 0)
  {
    v54 = 0;
  }

  else
  {
    v54 = a3;
  }

  if ((v60 & 0x100000000) != 0)
  {
    LODWORD(v53) = 0;
  }

  *v14 = v54;
  v14[1] = v53;
  v55 = HIDWORD(a5);
  if (a6)
  {
    v56 = 0;
  }

  else
  {
    v56 = a5;
  }

  if (a6)
  {
    LODWORD(v55) = 0;
  }

  *v15 = v56;
  v15[1] = v55;
  v57 = HIDWORD(a7);
  if (a8)
  {
    v58 = 0;
  }

  else
  {
    v58 = a7;
  }

  if (a8)
  {
    LODWORD(v57) = 0;
  }

  *v16 = v58;
  v16[1] = v57;
  v9[OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes] = a9;
  v65.receiver = v9;
  v65.super_class = ObjectType;
  return objc_msgSendSuper2(&v65, sel_init, v60);
}

uint64_t ScrollViewAdjustedState.initialPositionOffset()()
{
  static Semantics.v6_4.getter();
  if ((isLinkedOnOrAfter(_:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  AGGraphClearUpdate();
  v1 = *AGGraphGetValue();
  AGGraphSetUpdate();
  AGGraphClearUpdate();
  if (*(v0 + 40) == *MEMORY[0x1E698D3F8])
  {
    memset(v48, 0, 88);
  }

  else
  {
    v2 = MEMORY[0x1E697E4E0];
    v3 = MEMORY[0x1E6981948];
    _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for Binding<ScrollPosition>, MEMORY[0x1E697E4E0], MEMORY[0x1E6981948]);
    v5 = v4;
    Value = AGGraphGetValue();
    outlined init with copy of ScrollPosition?(Value, v41, &lazy cache variable for type metadata for Binding<ScrollPosition>, v2, v3);
    MEMORY[0x18D00ACC0](v48, v5);
    outlined destroy of ResolvedScrollBehavior?(v41, &lazy cache variable for type metadata for Binding<ScrollPosition>, v2, v3);
  }

  AGGraphSetUpdate();
  outlined init with copy of ScrollPosition?(v48, v41, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
  if (!v42)
  {
    v22 = MEMORY[0x1E697E4E0];
    v23 = MEMORY[0x1E69E6720];
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    v24 = v41;
    v25 = v22;
    v26 = v23;
LABEL_27:
    outlined destroy of ResolvedScrollBehavior?(v24, &lazy cache variable for type metadata for ScrollPosition?, v25, v26);
    goto LABEL_28;
  }

  outlined init with copy of ScrollPosition.Storage(v41, &v43);
  outlined destroy of ScrollPosition(v41);
  v46[0] = v43;
  v46[1] = v44;
  v47[0] = *v45;
  *(v47 + 10) = *&v45[10];
  v7 = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(v7, v41);
  v8 = AGGraphGetValue();
  v9 = v8[1];
  v43 = *v8;
  v44 = v9;
  v10 = MEMORY[0x18D00B390]();
  v12 = v11;
  v13 = AGGraphGetValue();
  v14 = v13[1];
  v43 = *v13;
  v15 = v13[2];
  v44 = v14;
  *v45 = v15;
  CGRect.init(_:)();
  v17 = v16;
  v19 = v18;
  outlined init with copy of ScrollPosition.Storage(v46, &v43);
  v20 = v43;
  if (v45[25] > 2u)
  {
    if (v45[25] != 3)
    {
      if (v45[25] == 4)
      {
        v27 = Axis.Set.contains(_:)();
        outlined destroy of ScrollViewConfiguration(v41);
        outlined destroy of ScrollPosition.Storage(v46);
        outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
        if (v27)
        {
          *&result = 0.0;
          return result;
        }

        goto LABEL_28;
      }

      goto LABEL_26;
    }

    v29 = *&v43;
    if ((Axis.Set.contains(_:)() & 1) == 0)
    {
LABEL_26:
      outlined destroy of ScrollViewConfiguration(v41);
      outlined destroy of ScrollPosition.Storage(v46);
      v25 = MEMORY[0x1E697E4E0];
      v26 = MEMORY[0x1E69E6720];
      v24 = v48;
      goto LABEL_27;
    }

    if (!v1)
    {
      outlined destroy of ScrollViewConfiguration(v41);
      outlined destroy of ScrollPosition.Storage(v46);
      outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
      *&result = v29;
      return result;
    }

    v30 = 0;
    v31 = v20;
LABEL_25:
    v33 = v10;
    v34 = v12;
    MaxX = CGRectGetMaxX(*&v31);
    outlined destroy of ScrollViewConfiguration(v41);
    outlined destroy of ScrollPosition.Storage(v46);
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    *&result = v17 - MaxX;
    return result;
  }

  if (!v45[25])
  {
    outlined destroy of ScrollViewConfiguration(v41);
    outlined destroy of ScrollPosition.Storage(v46);
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    outlined destroy of ScrollPosition.Storage(&v43);
    goto LABEL_28;
  }

  if (v45[25] != 1)
  {
    v32 = v43;
    if (Axis.Set.contains(_:)())
    {
      if (!v1)
      {
        outlined destroy of ScrollViewConfiguration(v41);
        outlined destroy of ScrollPosition.Storage(v46);
        outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
        return *&v32;
      }

      v31 = v20;
      v30 = *(&v32 + 1);
      goto LABEL_25;
    }

    v36 = Axis.Set.contains(_:)();
    outlined destroy of ScrollViewConfiguration(v41);
    outlined destroy of ScrollPosition.Storage(v46);
    outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
    if (v36)
    {
      *&result = 0.0;
      return result;
    }

LABEL_28:
    *&result = 0.0;
    return result;
  }

  v21 = v43;
  if ((Axis.Set.contains(_:)() & 1) == 0 || v21 != 3)
  {
    if ((Axis.Set.contains(_:)() & 1) != 0 && v21 == 2)
    {
      static UnitPoint.bottom.getter();
      UnitPoint.in(_:)(__PAIR128__(v19, *&v17));
      UnitPoint.in(_:)(__PAIR128__(v12, *&v10));
      outlined destroy of ScrollViewConfiguration(v41);
      outlined destroy of ScrollPosition.Storage(v46);
      outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
      *&result = 0.0;
      return result;
    }

    goto LABEL_26;
  }

  if (v1)
  {
    static UnitPoint.leading.getter();
  }

  else
  {
    static UnitPoint.trailing.getter();
  }

  x = UnitPoint.in(_:)(__PAIR128__(v19, *&v17)).x;
  v38 = UnitPoint.in(_:)(__PAIR128__(v12, *&v10)).x;
  outlined destroy of ScrollViewConfiguration(v41);
  outlined destroy of ScrollPosition.Storage(v46);
  outlined destroy of ResolvedScrollBehavior?(v48, &lazy cache variable for type metadata for ScrollPosition?, MEMORY[0x1E697E4E0], MEMORY[0x1E69E6720]);
  v39 = x - v38;
  v40 = v17 - v10;
  if (v17 - v10 <= 0.0)
  {
    v40 = 0.0;
  }

  if (v39 < 0.0)
  {
    v39 = 0.0;
  }

  if (v40 < v39)
  {
    v39 = v40;
  }

  *&result = v39;
  return result;
}

uint64_t outlined init with copy of ScrollPosition?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t outlined destroy of ResolvedScrollBehavior?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

double ScrollViewAdjustedState.initialOffset()()
{
  AGGraphClearUpdate();
  AGGraphGetValue();
  AGGraphSetUpdate();
  AGGraphGetValue();

  ScrollAnchorStorage.adjustedAnchor(role:layoutDirection:)();

  AGGraphGetValue();
  v0 = 0.0;
  if (Axis.Set.contains(_:)())
  {
    AGGraphGetValue();
    CGRect.init(_:)();
    v2 = v1;
    v4 = v3;
    Value = AGGraphGetValue();
    v11 = MEMORY[0x18D00B390](Value, v6, v7, v8, v9, v10);
    v13 = v12;
    x = UnitPoint.in(_:)(__PAIR128__(v4, *&v2)).x;
    v15 = x - UnitPoint.in(_:)(__PAIR128__(v13, *&v11)).x;
    v16 = v2 - v11;
    if (v2 - v11 <= 0.0)
    {
      v16 = 0.0;
    }

    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    if (v16 >= v15)
    {
      v0 = v15;
    }

    else
    {
      v0 = v16;
    }
  }

  AGGraphGetValue();
  if (Axis.Set.contains(_:)())
  {
    AGGraphGetValue();
    CGRect.init(_:)();
    v18 = v17;
    v20 = v19;
    v21 = AGGraphGetValue();
    v27 = MEMORY[0x18D00B390](v21, v22, v23, v24, v25, v26);
    v29 = v28;
    UnitPoint.in(_:)(__PAIR128__(v20, v18));
    UnitPoint.in(_:)(__PAIR128__(v29, *&v27));
  }

  return v0;
}

uint64_t ScrollViewAdjustedProperties.value.getter@<X0>(_BYTE *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(Value, v14);
  v3 = lazy protocol witness table accessor for type ScrollViewAdjustedProperties and conformance ScrollViewAdjustedProperties();
  MEMORY[0x18D000B90](&unk_1F001A300, &type metadata for ScrollEnvironmentProperties, v3);
  Rule.withObservation<A>(observationCenter:do:)();

  a1[81] = *AGGraphGetValue();
  if (*AGGraphGetValue() != 1 || (v4 = *(AGGraphGetValue() + 40), v4 != 2) && (v4 & 1) == 0)
  {
    *a1 = 0;
    goto LABEL_8;
  }

  if (*a1 != 1)
  {
LABEL_8:
    v5 = 3;
    a1[120] = 3;
    goto LABEL_9;
  }

  if (v14[1] == 1)
  {
    v5 = a1[144];
  }

  else
  {
    v12 = a1[120];
    v13 = v14[0];
    if (((v12 == 0) & (v14[0] >> 1)) != 0)
    {
      v12 = 3;
    }

    a1[120] = v12;
    v5 = a1[144];
    if ((v13 & (v5 == 0)) != 0)
    {
      v5 = 3;
    }
  }

LABEL_9:
  a1[144] = v5;
  v6 = AGGraphGetValue();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  result = outlined destroy of ScrollViewConfiguration(v14);
  if (v8 & v9)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (!v7)
  {
    v11 = 4;
  }

  a1[80] = v11;
  return result;
}

uint64_t outlined init with copy of ScrollEnvironmentTransform?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static ContentMarginProxy.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v4 = a1[1];
  v17 = *a1;
  v18 = v4;
  v19[0] = a1[2];
  *(v19 + 9) = *(a1 + 41);
  v5 = a2[1];
  v14 = *a2;
  v15 = v5;
  v16[0] = a2[2];
  *(v16 + 9) = *(a2 + 41);
  if (MEMORY[0x18D006FC0](&v17, &v14) & 1) != 0 && (v6 = a1[5], v17 = a1[4], v18 = v6, v19[0] = a1[6], *(v19 + 9) = *(a1 + 105), v7 = a2[5], v14 = a2[4], v15 = v7, v16[0] = a2[6], *(v16 + 9) = *(a2 + 105), (MEMORY[0x18D006FC0](&v17, &v14)) && (v8 = a1[9], v17 = a1[8], v18 = v8, v19[0] = a1[10], *(v19 + 9) = *(a1 + 169), v9 = a2[9], v14 = a2[8], v15 = v9, v16[0] = a2[10], *(v16 + 9) = *(a2 + 169), (MEMORY[0x18D006FC0](&v17, &v14)))
  {
    v10 = a1[13];
    v17 = a1[12];
    v18 = v10;
    v19[0] = a1[14];
    *(v19 + 9) = *(a1 + 233);
    v11 = a2[13];
    v14 = a2[12];
    v15 = v11;
    v16[0] = a2[14];
    *(v16 + 9) = *(a2 + 233);
    v12 = MEMORY[0x18D006FC0](&v17, &v14);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t ScrollViewHelper.updateAxesConfiguration()()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    UIScrollView.updateAxesConfiguration(axes:)(*(v1 + OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_axes));
    if (Axis.Set.contains(_:)())
    {
      v4 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
      swift_beginAccess();
      outlined init with copy of ScrollEnvironmentProperties(v1 + v4, v9);
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
    }

    UIScrollView.updateVerticalConfiguration(properties:)(v9);
    if (Axis.Set.contains(_:)())
    {
      v5 = OBJC_IVAR____TtC7SwiftUI16ScrollViewHelper_properties;
      swift_beginAccess();
      outlined init with copy of ScrollEnvironmentProperties(v1 + v5, v7);
    }

    else
    {
      v8 = 0;
      memset(v7, 0, sizeof(v7));
    }

    UIScrollView.updateHorizontalConfiguration(properties:)(v7);

    v6 = MEMORY[0x1E69E6720];
    outlined destroy of ScrollEnvironmentProperties?(v7, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties, MEMORY[0x1E69E6720], type metadata accessor for ScrollEnvironmentProperties?);
    return outlined destroy of ScrollEnvironmentProperties?(v9, &lazy cache variable for type metadata for ScrollEnvironmentProperties?, &type metadata for ScrollEnvironmentProperties, v6, type metadata accessor for ScrollEnvironmentProperties?);
  }

  return result;
}

uint64_t outlined init with copy of ScrollEnvironmentProperties?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for ScrollEnvironmentProperties?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for ScrollEnvironmentProperties?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void @objc HostingScrollView.PlatformContainer.frame.setter(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7, SEL *a8)
{
  v16.receiver = a1;
  v16.super_class = swift_getObjectType();
  v14 = *a7;
  v15 = v16.receiver;
  objc_msgSendSuper2(&v16, v14, a2, a3, a4, a5);
  HostingScrollView.PlatformContainer.frame.didset(a8);
}

uint64_t HostingScrollView.PlatformContainer.updateSafeArea(_:layoutDirection:)(_BYTE *a1, double a2, double a3, double a4, double a5)
{
  v8 = *&v5[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_safeAreaHelper];
  if (*a1)
  {
    v9 = a3;
  }

  else
  {
    v9 = a5;
  }

  if (*a1)
  {
    v10 = a5;
  }

  else
  {
    v10 = a3;
  }

  v11 = *&v5[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer_scrollView];
  if (([v11 isTracking] & 1) == 0 && !objc_msgSend(v11, sel_isDecelerating) && (objc_msgSend(v11, sel_isScrollAnimating) & 1) == 0)
  {
    v12 = *&v11[OBJC_IVAR____TtC7SwiftUI17HostingScrollView_safeAreaTransitionState + 8];
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    swift_unknownObjectRetain();
    v14(ObjectType, v12);
    swift_unknownObjectRelease();
  }

  v15 = &v5[OBJC_IVAR____TtCC7SwiftUI17HostingScrollView17PlatformContainer__safeAreaInsets];
  swift_beginAccess();
  if ((*(v8 + 48) & 1) != 0 || (*(v8 + 16) == a2 ? (v16 = *(v8 + 24) == v10) : (v16 = 0), v16 ? (v17 = *(v8 + 32) == a4) : (v17 = 0), !v17 || *(v8 + 40) != v9))
  {
    v18 = *v15;
    v19 = v15[1];
    v20 = v15[2];
    v22 = *v15 == a2 && v19 == v10 && v20 == a4;
    if (v22 && (v18 = v15[3], v18 == v9))
    {
      *(v8 + 16) = 0u;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 1;
    }

    else
    {
      *(v8 + 16) = a2;
      *(v8 + 24) = v10;
      *(v8 + 32) = a4;
      *(v8 + 40) = v9;
      *(v8 + 48) = 0;
      v23 = [v5 superview];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 layer];

        [v25 setNeedsLayout];
      }
    }
  }

  return swift_endAccess();
}

uint64_t initializeWithCopy for ScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  *(v7 + 40) = *(v8 + 40);
  v10 = *(v8 + 48);
  if (v10)
  {
    v11 = *(v8 + 56);
    *(v7 + 48) = v10;
    *(v7 + 56) = v11;
  }

  else
  {
    *(v7 + 48) = *(v8 + 48);
  }

  swift_unknownObjectWeakCopyInit();
  *(v7 + 72) = *(v8 + 72);
  v12 = *(v8 + 80);
  if (v12)
  {
    v13 = *(v8 + 88);
    *(v7 + 80) = v12;
    *(v7 + 88) = v13;
    *(v7 + 96) = *(v8 + 96);
  }

  else
  {
    v14 = *(v8 + 80);
    *(v7 + 96) = *(v8 + 96);
    *(v7 + 80) = v14;
  }

  *(v7 + 104) = *(v8 + 104);
  *(v7 + 112) = *(v8 + 112);

  return a1;
}

uint64_t destroy for ScrollView(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;
  if (*(v4 + 48))
  {
  }

  MEMORY[0x18D011290](v4 + 64);
  if (*(v4 + 80))
  {
  }
}

uint64_t initializeWithTake for ScrollView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 1) = *(v8 + 1);
  v9 = *(v8 + 24);
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 24) = v9;
  *(v7 + 40) = *(v8 + 40);
  *(v7 + 48) = *(v8 + 48);
  swift_unknownObjectWeakTakeInit();
  *(v7 + 72) = *(v8 + 72);
  v10 = *(v8 + 80);
  *(v7 + 96) = *(v8 + 96);
  *(v7 + 80) = v10;
  *(v7 + 104) = *(v8 + 104);
  return a1;
}

uint64_t initializeWithCopy for ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = *(a2 + 56);
    *(a1 + 48) = v4;
    *(a1 + 56) = v5;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
  }

  swift_unknownObjectWeakCopyInit();
  v6 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (v6)
  {
    v7 = *(a2 + 88);
    v8 = *(a2 + 96);
    *(a1 + 80) = v6;
    *(a1 + 88) = v7;
    *(a1 + 96) = v8;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;

  return a1;
}

uint64_t closure #1 in ScrollView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ViewBuilder.buildExpression<A>(_:)(v6, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t outlined init with take of ScrollViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = *(a1 + 48);
  swift_unknownObjectWeakTakeInit();
  *(a2 + 72) = *(a1 + 72);
  v5 = *(a1 + 96);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 96) = v5;
  *(a2 + 104) = *(a1 + 104);
  return a2;
}

uint64_t initializeWithCopy for SystemScrollViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v6 = *(a2 + 48);
  if (v6)
  {
    v7 = *(a2 + 56);
    *(a1 + 48) = v6;
    *(a1 + 56) = v7;
  }

  else
  {
    *(a1 + 48) = *(a2 + 48);
  }

  swift_unknownObjectWeakCopyInit();
  v8 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  if (v8)
  {
    v9 = *(a2 + 88);
    v10 = *(a2 + 96);
    *(a1 + 80) = v8;
    *(a1 + 88) = v9;
    *(a1 + 96) = v10;
  }

  else
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
  }

  v11 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v11;
  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v15 = *(v13 + 80);

  v14((v15 + 120 + a1) & ~v15, (v15 + 120 + a2) & ~v15, v12);
  return a1;
}

uint64_t destroy for SystemScrollViewContainer(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
  }

  MEMORY[0x18D011290](a1 + 64);
  if (*(a1 + 80))
  {
  }

  v4 = *(*(a2 + 16) - 8);
  v5 = *(v4 + 8);
  v6 = (a1 + *(v4 + 80) + 120) & ~*(v4 + 80);

  return v5(v6);
}

uint64_t initializeWithTake for SystemScrollViewContainer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  swift_unknownObjectWeakTakeInit();
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 32))((*(v6 + 80) + 120 + a1) & ~*(v6 + 80), (*(v6 + 80) + 120 + a2) & ~*(v6 + 80));
  return a1;
}

uint64_t SystemScrollViewContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v4 = *(a1 + 16);
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  v5 = *(a1 + 24);
  type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired();
  type metadata accessor for StaticIf();
  type metadata accessor for ModifiedContent();
  v40 = v5;
  v41 = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  WitnessTable = swift_getWitnessTable();
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier);
  v36 = swift_getWitnessTable();
  v37 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v6 = swift_getWitnessTable();
  v33 = swift_getWitnessTable();
  v34 = MEMORY[0x1E697E5D8];
  v35 = MEMORY[0x1E697E100];
  v31 = v6;
  v32 = swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier();
  type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = &protocol witness table for ResetContentMarginModifier;
  v25 = swift_getWitnessTable();
  v26 = &protocol witness table for SystemScrollViewContainer<A>.EnvironmentAxesModifier;
  swift_getWitnessTable();
  type metadata accessor for SystemScrollView();
  type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  v7 = type metadata accessor for ModifiedContent();
  v23 = &protocol witness table for SystemScrollView<A>;
  v24 = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v21 = swift_getWitnessTable();
  v22 = &protocol witness table for ResolvedScrollBehaviorModifier;
  v8 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v29 = v7;
  v30 = v8;
  swift_getOpaqueTypeConformance2();
  v9 = type metadata accessor for _UnaryViewAdaptor();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - v14;
  v19[4] = v4;
  v19[5] = v5;
  v20 = v2;
  _UnaryViewAdaptor.init(content:)();
  v16 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v12, v9, v16);
  v17 = *(v10 + 8);
  v17(v12, v9);
  static ViewBuilder.buildExpression<A>(_:)(v15, v9, v16);
  return (v17)(v15, v9);
}

uint64_t closure #1 in SystemScrollViewContainer.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a1;
  v53 = a4;
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>();
  type metadata accessor for ModifiedContent();
  v51 = a2;
  type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired();
  type metadata accessor for StaticIf();
  v6 = type metadata accessor for ModifiedContent();
  v73 = a3;
  v74 = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  v50 = a3;
  WitnessTable = swift_getWitnessTable();
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier);
  v69 = swift_getWitnessTable();
  v70 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v7 = swift_getWitnessTable();
  v66 = swift_getWitnessTable();
  v67 = MEMORY[0x1E697E5D8];
  v68 = MEMORY[0x1E697E100];
  v64 = v7;
  v65 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier();
  v9 = type metadata accessor for ModifiedContent();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v54 = v6;
  v55 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = &protocol witness table for ResetContentMarginModifier;
  v60 = swift_getWitnessTable();
  v61 = &protocol witness table for SystemScrollViewContainer<A>.EnvironmentAxesModifier;
  v48 = v9;
  v47 = swift_getWitnessTable();
  v44 = type metadata accessor for SystemScrollView();
  v49 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v37 - v12;
  type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>();
  v14 = type metadata accessor for ModifiedContent();
  v46 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v40 = v14;
  v17 = type metadata accessor for ModifiedContent();
  v45 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v37 - v18;
  v19 = lazy protocol witness table accessor for type StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
  v58 = &protocol witness table for SystemScrollView<A>;
  v59 = v19;
  v39 = swift_getWitnessTable();
  v56 = v39;
  v57 = &protocol witness table for ResolvedScrollBehaviorModifier;
  v38 = swift_getWitnessTable();
  v54 = v17;
  v55 = v38;
  v41 = MEMORY[0x1E69813B8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v26 = v52;
  outlined init with copy of ScrollViewConfiguration(v52, &v54);
  v27 = type metadata accessor for SystemScrollViewContainer();
  SystemScrollViewContainer.adjustedContent.getter(v27, v11);
  v28 = v13;
  SystemScrollView.init(configuration:content:)(&v54, v11, v48, v13);
  v29 = v16;
  v30 = v44;
  View.inferredToolbarScope()();
  (*(v49 + 8))(v28, v30);
  LOBYTE(v54) = *v26;
  v31 = v43;
  v32 = v40;
  MEMORY[0x18D00A570](&v54, v40, &unk_1EFFE3778, v39);
  (*(v46 + 8))(v29, v32);
  v33 = v38;
  View.configuresScrollPhaseState()();
  (*(v45 + 8))(v31, v17);
  v54 = v17;
  v55 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  static ViewBuilder.buildExpression<A>(_:)(v22, OpaqueTypeMetadata2, v34);
  v35 = *(v42 + 8);
  v35(v22, OpaqueTypeMetadata2);
  static ViewBuilder.buildExpression<A>(_:)(v25, OpaqueTypeMetadata2, v34);
  return (v35)(v25, OpaqueTypeMetadata2);
}

uint64_t SystemScrollViewContainer.adjustedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(255, &lazy cache variable for type metadata for StyleContextWriter<ScrollViewStyleContext>, MEMORY[0x1E697FEF8], MEMORY[0x1E697FEF0], MEMORY[0x1E697F4C8]);
  v3 = type metadata accessor for ModifiedContent();
  v76 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v71 = v49 - v4;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>();
  v65 = v3;
  v5 = type metadata accessor for ModifiedContent();
  v74 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = v49 - v6;
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>();
  v72 = v7;
  v63 = v5;
  v8 = type metadata accessor for ModifiedContent();
  v75 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v69 = v49 - v9;
  v10 = *(a1 + 24);
  v49[1] = a1;
  type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired();
  v11 = type metadata accessor for StaticIf();
  v64 = v8;
  v56 = v11;
  v12 = type metadata accessor for ModifiedContent();
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v68 = v49 - v13;
  v14 = lazy protocol witness table accessor for type StyleContextWriter<ScrollViewStyleContext> and conformance StyleContextWriter<A>();
  v99 = v10;
  v100 = v14;
  v15 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v60 = WitnessTable;
  refreshed = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier);
  v97 = WitnessTable;
  v98 = refreshed;
  v18 = swift_getWitnessTable();
  v57 = v18;
  v19 = lazy protocol witness table accessor for type StaticIf<_SemanticFeature<Semantics_v4>, RefreshScopeModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(&lazy protocol witness table cache variable for type StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>, type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, ResetScrollEnvironmentModifier, EmptyModifier>, lazy protocol witness table accessor for type _SemanticFeature<Semantics_v5> and conformance _SemanticFeature<A>, lazy protocol witness table accessor for type ResetScrollEnvironmentModifier and conformance ResetScrollEnvironmentModifier);
  v95 = v18;
  v96 = v19;
  v66 = v15;
  v20 = swift_getWitnessTable();
  v53 = v20;
  v92 = swift_getWitnessTable();
  v93 = MEMORY[0x1E697E5D8];
  v94 = MEMORY[0x1E697E100];
  v21 = swift_getWitnessTable();
  v90 = v20;
  v91 = v21;
  v55 = v12;
  v54 = swift_getWitnessTable();
  v86 = v12;
  *&v87 = v54;
  v58 = MEMORY[0x1E6981320];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v23 = v49 - v22;
  v24 = type metadata accessor for ModifiedContent();
  v62 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v49 - v25;
  v52 = type metadata accessor for SystemScrollViewContainer.EnvironmentAxesModifier();
  v27 = type metadata accessor for ModifiedContent();
  v61 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v51 = v49 - v31;
  v32 = v67;
  v33 = v71;
  View.styleContext<A>(_:)();
  type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  v34 = v70;
  v35 = v65;
  View.refreshScope<A>(if:)();
  (*(v76 + 8))(v33, v35);
  LOBYTE(v86) = *v32;
  v36 = v69;
  v37 = v63;
  MEMORY[0x18D00A570](&v86, v63, v72, v57);
  (*(v74 + 8))(v34, v37);
  SystemScrollViewContainer.inertPaddingModifier.getter();
  v82[0] = v86;
  v83 = v87;
  v84 = v88;
  v85 = v89;
  v38 = v68;
  v39 = v64;
  MEMORY[0x18D00A570](v82, v64, v56, v53);
  (*(v75 + 8))(v36, v39);
  v40 = v55;
  v41 = v54;
  View.resetScrollInputs()();
  (*(v73 + 8))(v38, v40);
  v86 = v40;
  *&v87 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = OpaqueTypeMetadata2;
  View.resetContentMargin(placements:)(&outlined read-only object #0 of SystemScrollViewContainer.placementsToReset.getter, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  (*(v59 + 8))(v23, v43);
  LOBYTE(v86) = *v32;
  v80 = OpaqueTypeConformance2;
  v81 = &protocol witness table for ResetContentMarginModifier;
  v44 = swift_getWitnessTable();
  MEMORY[0x18D00A570](&v86, v24, v52, v44);
  (*(v62 + 8))(v26, v24);
  v78 = v44;
  v79 = &protocol witness table for SystemScrollViewContainer<A>.EnvironmentAxesModifier;
  v45 = swift_getWitnessTable();
  v46 = v51;
  static ViewBuilder.buildExpression<A>(_:)(v29, v27, v45);
  v47 = *(v61 + 8);
  v47(v29, v27);
  static ViewBuilder.buildExpression<A>(_:)(v46, v27, v45);
  return (v47)(v46, v27);
}

void View.refreshScope<A>(if:)()
{
  lazy protocol witness table accessor for type RefreshScopeModifier and conformance RefreshScopeModifier();
  StaticIf<>.init<>(_:then:)();
  type metadata accessor for StaticIf();

  JUMPOUT(0x18D00A570);
}

uint64_t SystemScrollViewContainer.inertPaddingModifier.getter()
{
  type metadata accessor for SystemScrollViewContainer.InertPaddingLayoutRequired();
  static EdgeInsets.zero.getter();
  static Edge.Set.all.getter();
  swift_getWitnessTable();
  return StaticIf<>.init<>(_:then:)();
}

uint64_t View.resetContentMargin(placements:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v14 = MEMORY[0x1E69E7CC0];
    v7 = a2;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = v14;
    v8 = (a1 + 32);
    v9 = *(v14 + 16);
    do
    {
      v11 = *v8++;
      v10 = v11;
      v14 = v5;
      v12 = *(v5 + 24);
      if (v9 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
        v5 = v14;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + v9++ + 32) = v10;
      --v4;
    }

    while (v4);
    a2 = v7;
  }

  v14 = v5;
  MEMORY[0x18D00A570](&v14, a2, &type metadata for ResetContentMarginModifier, a3);
}

uint64_t SystemScrollView.init(configuration:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of ScrollViewConfiguration(a1, a4);
  v7 = type metadata accessor for SystemScrollView();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

void View.inferredToolbarScope()()
{
  type metadata accessor for StaticIf<BothFeatures<_SemanticFeature<Semantics_v4>, InferredToolbarUserDefaultFeature>, ToolbarScopeModifier, EmptyModifier>();

  JUMPOUT(0x18D00A570);
}

uint64_t ScrollViewLayoutComputer.updateValue()()
{
  v1 = *AGGraphGetValue();
  AGGraphGetValue();
  AGGraphGetValue();
  EdgeInsets.adding(_:)();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v10 = *Value;
    v11 = Value[1];
  }

  default argument 0 of ViewSizeCache.init(cache:)();
  ViewSizeCache.init(cache:)();
  v14 = v1;
  v15 = v3;
  v16 = v5;
  v17 = v7;
  v18 = v9;
  v19 = v10;
  v20 = v11;
  lazy protocol witness table accessor for type ScrollViewLayoutComputer and conformance ScrollViewLayoutComputer();
  lazy protocol witness table accessor for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine();
  lazy protocol witness table accessor for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine();
  StatefulRule<>.updateIfNotEqual<A>(to:)();
  return outlined destroy of ListLabelLayout.Child(&v14);
}

uint64_t ScrollViewAdjustedConfiguration.value.getter@<X0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  outlined init with copy of ScrollViewConfiguration(Value, a1);
  v3 = MEMORY[0x1E69E6720];
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v4 = AGGraphGetValue();
  v6 = *v4;
  v5 = v4[1];

  a1[13] = v6;
  a1[14] = v5;
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for ScrollToTopGestureAction?, &type metadata for ScrollToTopGestureAction, v3);
  v7 = AGGraphGetValue();
  v8 = *v7;
  v9 = v7[1];
  v10 = a1[6];
  v11 = a1[7];
  outlined copy of AppIntentExecutor?(*v7);
  outlined consume of TriggerSubmitAction?(v10, v11);
  a1[6] = v8;
  a1[7] = v9;
  _s7SwiftUI10MutableBoxCys6UInt32VGMaTm_0(0, &lazy cache variable for type metadata for RefreshAction?, &type metadata for RefreshAction, v3);
  v12 = AGGraphGetValue();
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[2];
  v16 = a1[10];
  outlined copy of AppIntentExecutor?(*v12);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v16);
  a1[10] = v13;
  a1[11] = v14;
  a1[12] = v15;
  type metadata accessor for SafeAreaTransitionState?();
  a1[9] = *(AGGraphGetValue() + 8);
  swift_unknownObjectWeakAssign();
  static EdgeInsets.zero.getter();
  result = static EdgeInsets.== infix(_:_:)();
  if (result)
  {
    v18 = AGGraphGetValue();
    v19 = v18[1];
    v30 = *v18;
    v31 = v19;
    v32[0] = v18[2];
    *(v32 + 9) = *(v18 + 41);
    v20 = v18[5];
    v33 = v18[4];
    v34 = v20;
    v35[0] = v18[6];
    *(v35 + 9) = *(v18 + 105);
    static Edge.Set.all.getter();
    v21 = MEMORY[0x18D007050](&v27);
    v27 = v33;
    v28 = v34;
    v29[0] = v35[0];
    *(v29 + 9) = *(v35 + 9);
    MEMORY[0x18D007000](v26, v21);
    if (MEMORY[0x18D006FC0](&v33, v26))
    {
      v27 = v30;
      v28 = v31;
      v29[0] = v32[0];
      *(v29 + 9) = *(v32 + 9);
    }

    result = OptionalEdgeInsets.in(edges:)();
    a1[1] = v22;
    a1[2] = v23;
    a1[3] = v24;
    a1[4] = v25;
  }

  return result;
}

uint64_t specialized TransformScrollStorageEnvironment.updateValue()()
{
  v1 = v0;
  v28 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v4 = v3;
  v6 = *Value;
  v5 = Value[1];
  *&v27 = v6;
  *(&v27 + 1) = v5;

  v7 = AGGraphGetValue();
  v9 = v8;
  outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(v7, v26);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform>, &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform, &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform, type metadata accessor for TransformScrollStorageEnvironment);
  v11 = v10;
  v12 = lazy protocol witness table accessor for type TransformScrollStorageEnvironment<ResolvedScrollBehaviorModifier.BehaviorTransform> and conformance TransformScrollStorageEnvironment<A>();
  MEMORY[0x18D000B40](v11, &type metadata for ScrollEnvironmentProperties, v12);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined init with copy of ScrollEnvironmentProperties(v1 + 16, __src);
  v13 = specialized static ScrollEnvironmentProperties.== infix(_:_:)(v25, __src);
  outlined destroy of ScrollEnvironmentProperties(__src);
  v14 = *(v1 + 8);
  if (!v14)
  {
    outlined init with copy of ScrollEnvironmentProperties(v25, __src);
    *(&v20 + 1) = &type metadata for ResolvedScrollBehaviorModifier.BehaviorTransform;
    *&v21 = &protocol witness table for ResolvedScrollBehaviorModifier.BehaviorTransform;
    *&v19 = swift_allocObject();
    outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(v26, v19 + 16);
    type metadata accessor for ScrollEnvironmentStorage();
    swift_allocObject();
    v14 = ScrollEnvironmentStorage.init(_:transform:)(__src, &v19);
    *(v1 + 8) = v14;
  }

  if (AGGraphGetOutputValue() && (v13 & ((v9 & 1) == 0)) == 0)
  {
    outlined init with copy of ScrollEnvironmentProperties(v25, __src);
    outlined init with copy of ResolvedScrollBehaviorModifier.BehaviorTransform(v26, &v19);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    memcpy((v15 + 24), __src, 0x108uLL);
    v16 = v22;
    *(v15 + 320) = v21;
    *(v15 + 336) = v16;
    *(v15 + 352) = v23;
    v17 = v20;
    *(v15 + 288) = v19;
    *(v15 + 304) = v17;

    static Update.enqueueAction(reason:_:)();
  }

  if (!AGGraphGetOutputValue() || (v4 & 1) != 0)
  {
    *__src = v14;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();
    swift_retain_n();

    PropertyList.subscript.setter();
    if (*(&v27 + 1))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    *__src = v27;
    AGGraphSetOutputValue();
  }

  outlined destroy of ResolvedScrollBehaviorModifier.BehaviorTransform(v26);
  outlined assign with take of ScrollEnvironmentProperties(v25, v1 + 16);
}

uint64_t sub_18BE3D280()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_18BE3D2C0()
{

  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  }

  if (*(v0 + 312))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 288);
  }

  return swift_deallocObject();
}

char *ResolvedScrollBehaviorModifier.MakeBehavior.updateValue()()
{
  v1 = v0;
  v20 = *MEMORY[0x1E69E9840];
  type metadata accessor for ResolvedScrollBehavior?();
  v3 = v2;
  OutputValue = AGGraphGetOutputValue();
  outlined init with copy of ResolvedScrollBehaviorModifier.MakeBehavior(v0, v14);
  Behavior = lazy protocol witness table accessor for type ResolvedScrollBehaviorModifier.MakeBehavior and conformance ResolvedScrollBehaviorModifier.MakeBehavior();
  MEMORY[0x18D000B40](&unk_1EFFE38E8, v3, Behavior);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined destroy of ResolvedScrollBehaviorModifier.MakeBehavior(v14);
  outlined init with copy of ResolvedScrollBehavior?(v19, v14, type metadata accessor for ResolvedScrollBehavior?);
  v6 = AGCompareValues() ^ 1;
  if (OutputValue)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  outlined init with copy of ResolvedScrollBehavior?(v14, v12, type metadata accessor for ResolvedScrollBehavior?);
  v8 = v13;
  outlined destroy of ResolvedScrollBehavior?(v12);
  if (!v8)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  AGGraphGetValue();
  v10 = v9;
  result = AGGraphGetValue();
  if (v15)
  {
    v16 = *result;
    v17 = 0;
    v18 = AGCreateWeakAttribute();
    if (((v7 | v10) & 1) == 0)
    {
LABEL_8:
      outlined assign with take of ResolvedScrollBehavior?(v19, v1 + 8);
      return outlined destroy of ResolvedScrollBehavior?(v14);
    }

LABEL_7:
    outlined init with copy of ResolvedScrollBehavior?(v14, v12, type metadata accessor for ResolvedScrollBehavior?);
    AGGraphSetOutputValue();
    outlined destroy of ResolvedScrollBehavior?(v12);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in ResolvedScrollBehaviorModifier.MakeBehavior.updateValue()@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of ResolvedScrollBehaviorModifier.MakeBehavior(*(v1 + 16), v4);
  ResolvedScrollBehaviorModifier.MakeBehavior.defaultBehavior.getter(a1);
  return outlined destroy of ResolvedScrollBehaviorModifier.MakeBehavior(v4);
}

_BYTE *ResolvedScrollBehaviorModifier.MakeBehavior.defaultBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  result = AGGraphGetValue();
  if (*result)
  {
    if (*(AGGraphGetValue() + 8))
    {
      type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      swift_retain_n();
      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      type metadata accessor for StyleContextWriter<ScrollViewStyleContext>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
      lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>();

      PropertyList.subscript.getter();
    }

    v3 = v10;
    swift_getKeyPath();
    _s7SwiftUI24ScrollEnvironmentStorageCAC11Observation10ObservableAAWlTm_0(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ScrollEnvironmentProperties(v10 + 16, &v10);
    swift_getKeyPath();
    v9[0] = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    outlined init with copy of ResolvedScrollBehavior?(v3 + 280, v9, type metadata accessor for ScrollEnvironmentTransform?);
    if (v9[3])
    {
      outlined init with take of ScrollEnvironmentTransform(v9, v6);
      v4 = v7;
      v5 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v5 + 8))(&v10, v4, v5);
      __swift_destroy_boxed_opaque_existential_1(v6);
    }

    outlined init with copy of ResolvedScrollBehavior?(&v11, a1, type metadata accessor for ResolvedScrollBehavior?);
    return outlined destroy of ScrollEnvironmentProperties(&v10);
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t ResolvedScrollBehaviorModifier.TrackedEnvironment.updateValue()()
{
  AGGraphGetValue();
  v1 = v0;
  result = AGGraphGetOutputValue();
  if (!result)
  {

LABEL_8:
    PropertyList.Tracker.reset()();

    EnvironmentValues.init(_:tracker:)();
    AGGraphSetOutputValue();
  }

  if ((v1 & 1) == 0)
  {
    return result;
  }

  swift_retain_n();
  v3 = PropertyList.Tracker.hasDifferentUsedValues(_:)();

  if (v3)
  {
    goto LABEL_8;
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>, &type metadata for EnvironmentValues.ScrollEnvironmentKey, &protocol witness table for EnvironmentValues.ScrollEnvironmentKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.ScrollEnvironmentKey@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static EnvironmentValues.ScrollEnvironmentKey.defaultValue;
}

uint64_t ScrollEnvironmentStorage.init(_:transform:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 312) = 0;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  ObservationRegistrar.init()();
  outlined init with copy of ScrollEnvironmentProperties(a1, v2 + 16);
  outlined init with copy of ScrollEnvironmentTransform?(a2, v6);
  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(a2, type metadata accessor for ScrollEnvironmentTransform?);
  outlined destroy of ScrollEnvironmentProperties(a1);
  outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v6, type metadata accessor for ScrollEnvironmentTransform?);
  return v2;
}

uint64_t outlined init with copy of ScrollEnvironmentTransform?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [ScrollableCollection](0, &lazy cache variable for type metadata for ScrollEnvironmentTransform?, &lazy cache variable for type metadata for ScrollEnvironmentTransform, &protocol descriptor for ScrollEnvironmentTransform, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for ScrollEnvironmentProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 8;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    (**(v5 - 8))(v4, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v7 = *(a2 + 24);
    v8 = *(a2 + 56);
    *(v4 + 32) = *(a2 + 40);
    *(v4 + 48) = v8;
    *(v4 + 64) = *(a2 + 72);
    *v4 = *(a2 + 8);
    *(v4 + 16) = v7;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  v9 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v9;
  *(a1 + 112) = *(a2 + 112);
  v10 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v10;
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v11 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v11;
  v12 = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 200) = v12;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = *(a2 + 232);

  return a1;
}

uint64_t outlined assign with copy of ScrollEnvironmentTransform?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScrollEnvironmentTransform?();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ScrollEnvironmentTransform?()
{
  if (!lazy cache variable for type metadata for ScrollEnvironmentTransform?)
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for ScrollEnvironmentTransform);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ScrollEnvironmentTransform?);
    }
  }
}

uint64_t outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for ScrollEnvironmentProperties(uint64_t a1)
{
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }
}

uint64_t outlined init with copy of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for ActionSheet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t outlined destroy of ResolvedScrollBehavior?(uint64_t a1)
{
  type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<ResolvedScrollBehavior>(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Attribute<ResolvedScrollBehavior>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 initializeWithCopy for ResolvedScrollBehaviorModifier.BehaviorTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 32);
    *(a1 + 24) = v2;
    *(a1 + 32) = v3;
    (**(v2 - 8))();
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 44) = *(a2 + 44);
    result = *(a2 + 48);
    *(a1 + 48) = result;
    *(a1 + 64) = *(a2 + 64);
  }

  else
  {
    v7 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v7;
    *(a1 + 64) = *(a2 + 64);
    result = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t closure #1 in TransformScrollStorageEnvironment.updateValue()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
    PropertyList.subscript.getter();
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type ScrollEnvironmentStorage and conformance ScrollEnvironmentStorage, type metadata accessor for ScrollEnvironmentStorage);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentProperties(v9[0] + 16, a2);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  outlined init with copy of ScrollEnvironmentTransform?(v9[0] + 280, v9);
  if (v9[3])
  {
    outlined init with take of ScrollEnvironmentTransform(v9, v6);
    v3 = v7;
    v4 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v4 + 8))(a2, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
    }
  }
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t specialized static ScrollEnvironmentProperties.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2] || a1[3] != a2[3])
  {
    return 0;
  }

  v23 = v2;
  v24 = v3;
  outlined init with copy of ResolvedScrollBehavior?((a1 + 8), v19);
  v6 = a2;
  outlined init with copy of ResolvedScrollBehavior?((a2 + 8), v21);
  if (!v20)
  {
    if (!v22)
    {
      outlined destroy of ResolvedScrollBehavior?(v19);
      goto LABEL_12;
    }

LABEL_20:
    outlined destroy of (ResolvedScrollBehavior?, ResolvedScrollBehavior?)(v19, type metadata accessor for (ResolvedScrollBehavior?, ResolvedScrollBehavior?));
    goto LABEL_21;
  }

  outlined init with copy of ResolvedScrollBehavior?(v19, v18);
  if (!v22)
  {
    outlined destroy of AccessibilityRelationshipScope.Key(v18);
    goto LABEL_20;
  }

  v7 = specialized static ResolvedScrollBehavior.== infix(_:_:)(v18, v21);
  outlined destroy of AccessibilityRelationshipScope.Key(v21);
  outlined destroy of AccessibilityRelationshipScope.Key(v18);
  outlined destroy of ResolvedScrollBehavior?(v19);
  if (!v7)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (a1[80] != v6[80] || a1[81] != v6[81] || a1[82] != v6[82] || *(a1 + 21) != *(v6 + 21))
  {
    goto LABEL_21;
  }

  v9 = a1[88];
  v10 = v6[88];
  if (v9 == 4)
  {
    if (v10 != 4)
    {
      goto LABEL_21;
    }
  }

  else if (v9 != v10)
  {
    goto LABEL_21;
  }

  if (a1[89] != v6[89] || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_AC06ScrollD11EffectStyleVTt1g5(*(a1 + 12), *(v6 + 12)) & 1) == 0 || (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_SbTt1g5(*(a1 + 13), *(v6 + 13)) & 1) == 0 || a1[112] != v6[112])
  {
    goto LABEL_21;
  }

  v11 = 0;
  if (a1[120] != v6[120] || *(a1 + 16) != *(v6 + 16) || a1[136] != v6[136])
  {
    return v11 & 1;
  }

  if (a1[137] != v6[137])
  {
    goto LABEL_21;
  }

  v11 = 0;
  if (a1[144] != v6[144] || *(a1 + 19) != *(v6 + 19) || a1[160] != v6[160])
  {
    return v11 & 1;
  }

  if (a1[161] != v6[161])
  {
    goto LABEL_21;
  }

  v12 = v6[163];
  if (a1[163])
  {
    if (!v6[163])
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (a1[162] != v6[162])
    {
      v12 = 1;
    }

    if (v12)
    {
      goto LABEL_21;
    }
  }

  if (a1[164] != v6[164] || a1[165] != v6[165])
  {
    goto LABEL_21;
  }

  v13 = a1[166];
  v14 = v6[166];
  if (v13 == 2)
  {
    if (v14 != 2)
    {
      goto LABEL_21;
    }
  }

  else if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a1[167] == v6[167])
  {
    v15 = *(v6 + 24);
    if (*(a1 + 24))
    {
      v11 = 0;
      if (!v15 || *(a1 + 21) != *(v6 + 21) || *(a1 + 22) != *(v6 + 22) || *(a1 + 23) != *(v6 + 23))
      {
        return v11 & 1;
      }

      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ScrollTargetV_Tt1g5(v16, v15);

      if ((v17 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (v15)
    {
      goto LABEL_21;
    }

    if (static EdgeInsets.== infix(_:_:)())
    {
      v11 = static EdgeInsets.== infix(_:_:)();
      return v11 & 1;
    }
  }

LABEL_21:
  v11 = 0;
  return v11 & 1;
}

uint64_t outlined init with copy of ResolvedScrollBehavior?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Attribute<AccessibilityNodeList>(0, &lazy cache variable for type metadata for ResolvedScrollBehavior?, &type metadata for ResolvedScrollBehavior, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t assignWithTake for ScrollEnvironmentProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  if (!*(a2 + 32))
  {
    outlined destroy of AccessibilityRelationshipScope.Key(a1 + 8);
LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 8) = *(a2 + 8);
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
LABEL_6:
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 167) = *(a2 + 167);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<UserInteractionActivityKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UserInteractionActivityKey>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type _EnvironmentKeyTransformModifier<String?> and conformance _EnvironmentKeyTransformModifier<A>(unint64_t *a1, void (*a2)(uint64_t))
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

void type metadata accessor for EnvironmentPropertyKey<RefreshAction.Key>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<RefreshAction.Key>);
    }
  }
}

void protocol witness for static StatefulRule.initialValue.getter in conformance WindowSceneList<A>.MakeList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 __swift_memcpy249_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 233) = *(a2 + 233);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine()
{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScrollViewLayoutComputer.Engine and conformance ScrollViewLayoutComputer.Engine);
  }

  return result;
}

uint64_t initializeWithCopy for ScrollViewLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v3 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v3;
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  return a1;
}

__n128 __swift_memcpy217_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 201) = *(a2 + 201);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t specialized static ScrollViewUtilities.sizeThatFits(in:contentComputer:axes:)(uint64_t a1, void *a2, char a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!*a2)
  {
    static LayoutComputer.defaultValue.getter();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.width.getter();
  }

  if ((Axis.Set.contains(_:)() & 1) == 0)
  {
    _ProposedSize.height.getter();
  }

  _ProposedSize.init(width:height:)();
  LayoutComputer.sizeThatFits(_:)();
  v5 = v4;

  v6 = _ProposedSize.width.getter();
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    if (Axis.Set.contains(_:)())
    {
      v5 = v8;
    }
  }

  _ProposedSize.height.getter();
  if ((v9 & 1) == 0)
  {
    Axis.Set.contains(_:)();
  }

  return v5;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance RefreshScopeModifier@<X0>(uint64_t *a1@<X8>)
{
  KeyPath = swift_getKeyPath();

  outlined copy of AppIntentExecutor?(0);

  result = outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(0);
  *a1 = KeyPath;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  return result;
}

Swift::Void __swiftcall TransformScrollStorageEnvironment.updateValue()()
{
  v2 = v1;
  v3 = v0;
  v36 = *MEMORY[0x1E69E9840];
  v4 = *(v0 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (MEMORY[0x1EEE9AC00])();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  Value = AGGraphGetValue();
  v28 = v12;
  v14 = *Value;
  v13 = Value[1];
  *&v35 = v14;
  *(&v35 + 1) = v13;

  v15 = AGGraphGetValue();
  v26 = v16;
  v29 = v5;
  v30 = v10;
  v27 = *(v5 + 16);
  v27(v10, v15, v4);
  v31 = &v35;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x18D000B40](v3, &type metadata for ScrollEnvironmentProperties, WitnessTable);
  StatefulRule.withObservation<A>(observationCenter:do:)();

  outlined init with copy of ScrollEnvironmentProperties(v2 + 16, v33);
  v18 = specialized static ScrollEnvironmentProperties.== infix(_:_:)(v34, v33);
  outlined destroy of ScrollEnvironmentProperties(v33);
  v19 = *(v2 + 8);
  if (!v19)
  {
    outlined init with copy of ScrollEnvironmentProperties(v34, v33);
    v20 = *(v3 + 24);
    v32[3] = v4;
    v32[4] = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
    v27(boxed_opaque_existential_1, v30, v4);
    type metadata accessor for ScrollEnvironmentStorage();
    v19 = swift_allocObject();
    ScrollEnvironmentStorage.init(_:transform:)(v33, v32);
    *(v2 + 8) = v19;
  }

  if (AGGraphGetOutputValue() && (v18 & ((v26 & 1) == 0)) == 0)
  {
    LOBYTE(v32[0]) = 17;
    outlined init with copy of ScrollEnvironmentProperties(v34, v33);
    v27(v7, v30, v4);
    v22 = v29;
    v23 = (*(v29 + 80) + 304) & ~*(v29 + 80);
    v24 = swift_allocObject();
    v25 = *(v3 + 24);
    *(v24 + 2) = v4;
    *(v24 + 3) = v25;
    *(v24 + 4) = v19;
    memcpy(v24 + 40, v33, 0x108uLL);
    (*(v22 + 32))(&v24[v23], v7, v4);

    static Update.enqueueAction(reason:_:)();
  }

  if (!AGGraphGetOutputValue() || (v28 & 1) != 0)
  {
    *v33 = v19;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey> and conformance EnvironmentPropertyKey<A>, type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>);
    swift_retain_n();

    PropertyList.subscript.setter();
    if (*(&v35 + 1))
    {
      PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
    }

    *v33 = v35;
    AGGraphSetOutputValue();
  }

  outlined assign with copy of ScrollEnvironmentProperties(v34, v2 + 16);
  outlined destroy of ScrollEnvironmentProperties(v34);
  (*(v29 + 8))(v30, v4);
}

uint64_t sub_18BE3F93C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 48);
  }

  (*(v2 + 8))(v0 + ((v3 + 304) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t assignWithCopy for ScrollEnvironmentProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v4 = *(a2 + 32);
  if (*(a1 + 32))
  {
    v5 = (a1 + 8);
    if (v4)
    {
      __swift_assign_boxed_opaque_existential_1(v5, (a2 + 8));
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 60) = *(a2 + 60);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 68) = *(a2 + 68);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
    }

    else
    {
      outlined destroy of AccessibilityRelationshipScope.Key(v5);
      *(a1 + 8) = *(a2 + 8);
      v6 = *(a2 + 40);
      v7 = *(a2 + 56);
      v8 = *(a2 + 72);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 72) = v8;
      *(a1 + 56) = v7;
      *(a1 + 40) = v6;
    }
  }

  else if (v4)
  {
    *(a1 + 32) = v4;
    *(a1 + 40) = *(a2 + 40);
    (**(v4 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 52) = *(a2 + 52);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    v9 = *(a2 + 24);
    v10 = *(a2 + 40);
    v11 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v11;
    *(a1 + 40) = v10;
    *(a1 + 24) = v9;
  }

  *(a1 + 80) = *(a2 + 80);
  *(a1 + 81) = *(a2 + 81);
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);

  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 162) = *(a2 + 162);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 166) = *(a2 + 166);
  *(a1 + 167) = *(a2 + 167);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  return a1;
}

uint64_t specialized static ResetScrollEnvironmentModifier.AdditionalResetModifier.makeEnvironment(modifier:environment:)(uint64_t a1)
{
  ScrollAnchorStorage.init()();
  EnvironmentValues.scrollAnchors.setter();
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollToTopGestureActionKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollToTopGestureActionKey>, &unk_1EFFD7F80, &protocol witness table for ScrollToTopGestureActionKey);

  PropertyList.subscript.setter();
  v2 = *(a1 + 8);
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<ScrollContentBackgroundKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<ScrollContentBackgroundKey>, &type metadata for ScrollContentBackgroundKey, &protocol witness table for ScrollContentBackgroundKey);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.ScrollEnvironmentKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, MEMORY[0x1E697FE38]);
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesV06ScrollcE033_574BFBFAD68871B7FB9A4D49488469C1LLVGACyxGAA0dE0AAWlTm_0(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView>, &type metadata for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView, &protocol witness table for EnvironmentValues.__Key_popoverAutomaticallyDismissesWhenScrolledOutOfView);

  PropertyList.subscript.setter();
  if (v2)
  {
    PropertyList.Tracker.invalidateValue<A>(for:from:to:)();
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ScrollContentBackground(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.__deallocating_deinit()
{
  outlined consume of NavigationPath.Representation(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t ScrollView.init(_:showsIndicators:content:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v7 = a4 + *(type metadata accessor for ScrollView() + 36);
  *v7 = a1;
  *(v7 + 1) = a2;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 2;
  *(v7 + 72) = 0;
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  v8 = swift_unknownObjectWeakInit();
  *(v7 + 112) = 0;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  return a3(v8);
}

uint64_t destroy for ScrollViewConfiguration(uint64_t a1)
{
  if (*(a1 + 48))
  {
  }

  MEMORY[0x18D011290](a1 + 64);
  if (*(a1 + 80))
  {
  }
}

double closure #1 in ScrollViewLayoutComputer.Engine.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  _ProposedSize.inset(by:)();
  v20[1] = a6;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v20[0] = a5;
  v14 = specialized static ScrollViewUtilities.sizeThatFits(in:contentComputer:axes:)(&v21, v20, a7);
  if (v15)
  {
    v25 = a1;
    v26 = a2 & 1;
    v27 = a3;
    v28 = a4 & 1;
    *&v16 = *&_ProposedSize.fixingUnspecifiedDimensions()();
  }

  else
  {
    v16 = *&v14;
  }

  EdgeInsets.horizontal.getter();
  v18 = v16 + v17;
  EdgeInsets.vertical.getter();
  return v18;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance DividerStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t static UIViewControllerRepresentable._makeView(view:inputs:)@<X0>(__int128 *a1@<X1>, void *a2@<X8>)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1[3];
  v24 = a1[2];
  v25 = v3;
  v26 = a1[4];
  v27 = *(a1 + 20);
  v4 = a1[1];
  v22 = *a1;
  v23 = v4;
  v28[0] = v22;
  v28[1] = v4;
  v28[2] = v24;
  outlined init with copy of _GraphInputs(v28, &v16);
  lazy protocol witness table accessor for type IsInHostingConfiguration and conformance IsInHostingConfiguration();
  PropertyList.subscript.getter();
  outlined destroy of _GraphInputs(v28);
  if (v16 == 1)
  {
    *&v16 = 0;
    *(&v16 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(119);
    v5 = _typeName(_:qualified:)();
    MEMORY[0x18D00C9B0](v5);

    MEMORY[0x18D00C9B0](0xD000000000000075, 0x800000018CD4E1C0);
    MEMORY[0x18D009810](v16, *(&v16 + 1));

    _ViewOutputs.init()();
    *&v16 = v25;
    DWORD2(v16) = DWORD2(v25);
    result = PreferencesInputs.contains<A>(_:includeHostPreferences:)();
    if (result)
    {
      _DisplayList_Identity.init()();
      v7 = v16;
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16 = v22;
      v17 = v23;
      LODWORD(v14) = v7;
      _ViewInputs.pushIdentity(_:)();
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16 = v22;
      v17 = v23;
      v8 = _ViewInputs.animatedPosition()();
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16 = v22;
      v17 = v23;
      swift_beginAccess();
      v9 = CachedEnvironment.animatedSize(for:)();
      swift_endAccess();
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16 = v22;
      v17 = v23;
      v10 = _ViewInputs.containerPosition.getter();
      *&v16 = __PAIR64__(v8, v7);
      *(&v16 + 1) = __PAIR64__(v10, v9);
      protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
      lazy protocol witness table accessor for type UnsupportedDisplayList and conformance UnsupportedDisplayList();
      Attribute.init<A>(body:value:flags:update:)();
      LOBYTE(v16) = 0;
      result = PreferencesOutputs.subscript.setter();
    }

    *a2 = v13[0];
    a2[1] = v13[1];
  }

  else
  {
    static Semantics.v4.getter();
    if ((isLinkedOnOrAfter(_:)() & 1) != 0 && (AGTypeID.isValueType.getter() & 1) == 0)
    {
      *&v16 = 0;
      *(&v16 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x18D00C9B0](0xD000000000000034, 0x800000018CD4E180);
      v12 = _typeName(_:qualified:)();
      MEMORY[0x18D00C9B0](v12);

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      type metadata accessor for PlatformViewControllerRepresentableAdaptor();
      type metadata accessor for _GraphValue();
      Attribute.unsafeBitCast<A>(to:)();
      _GraphValue.init(_:)();
      v18 = v24;
      v19 = v25;
      v20 = v26;
      v21 = v27;
      v16 = v22;
      v17 = v23;
      v11 = static View.makeDebuggableView(view:inputs:)();
      *&v16 = v25;
      DWORD2(v16) = DWORD2(v25);
      v14 = v25;
      v15 = DWORD2(v25);
      MEMORY[0x1EEE9AC00](v11);
      outlined init with copy of PreferencesInputs(&v16, v13);
      PreferencesOutputs.makePreferenceWriter<A>(inputs:key:value:)();
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for ItemProviderDropAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemProviderDropAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t partial apply for closure #1 in View.onOpenURL(perform:)(uint64_t a1)
{
  return partial apply for closure #1 in View.onOpenURL(perform:)(a1, closure #1 in View.onOpenURL(perform:));
}

{
  return partial apply for closure #1 in View.onOpenURL(perform:)(a1, closure #1 in View.onOpenURL(perform:));
}

uint64_t View.dividerStyle<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DividerStyleModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

void type metadata accessor for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>()
{
  if (!lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>)
  {
    v0 = type metadata accessor for _PreferenceTransformModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _PreferenceTransformModifier<PresentationOptionsPreferenceKey>);
    }
  }
}

double one-time initialization function for confirmationAction()
{
  static ToolbarItemPlacement.confirmationAction = 5;
  result = 0.0;
  unk_1EAA08F50 = 0u;
  unk_1EAA08F60 = 0u;
  byte_1EAA08F70 = 2;
  return result;
}

uint64_t closure #1 in SheetPresentationModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  (*(v10 + 40))();
  static ViewBuilder.buildExpression<A>(_:)(v9, a2, a4);
  v13 = *(v6 + 8);
  v13(v9, a2);
  static ViewBuilder.buildExpression<A>(_:)(v12, a2, a4);
  return (v13)(v12, a2);
}

unint64_t lazy protocol witness table accessor for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>()
{
  result = lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>;
  if (!lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Binding<PresentationMode>>, &lazy cache variable for type metadata for Binding<PresentationMode>, &type metadata for PresentationMode, MEMORY[0x1E6981948]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<Binding<PresentationMode>> and conformance _EnvironmentKeyWritingModifier<A>);
  }

  return result;
}

uint64_t outlined init with copy of AnyHashable?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<PresentationMode>(0, &lazy cache variable for type metadata for AnyHashable?, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *assignWithCopy for SceneBridgeReader(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<AnyShapeStyle?>.Content(v6, v7);
  v8 = a2[3];
  a1[2] = a2[2];
  a1[3] = v8;

  return a1;
}

uint64_t assignWithCopy for SubscriptionView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40);
  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = v7 + v10;
  v12 = (v11 + a1) & ~v10;
  v13 = (v11 + a2) & ~v10;
  (*(v8 + 24))(v12, v13);
  v14 = *(v9 + 40) + 7;
  v15 = ((v14 + v12) & 0xFFFFFFFFFFFFFFF8);
  v16 = ((v14 + v13) & 0xFFFFFFFFFFFFFFF8);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;

  return a1;
}

uint64_t UIViewControllerRepresentableContext.coordinator.getter@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 16);

  return v4(a1, v1, AssociatedTypeWitness);
}

uint64_t PlatformViewControllerRepresentableAdaptor.sizeThatFits(_:provider:context:)(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a5;
  v24 = a2;
  v25 = a4;
  v26 = a1;
  v27 = a3;
  swift_getWitnessTable();
  v9 = type metadata accessor for PlatformViewRepresentableContext();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = *(a7 + 24);
  v14 = type metadata accessor for UIViewControllerRepresentableContext();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  (*(v10 + 16))(v12, a6, v9, v16);
  swift_getWitnessTable();
  v19 = UIViewControllerRepresentableContext.init<A>(_:)(v12, v18);
  v20 = *(v13 + 72);
  v30 = v24 & 1;
  v29 = v25 & 1;
  v21 = v20(v26, v19);
  (*(v15 + 8))(v18, v14);
  return v21;
}

id specialized PlatformViewControllerRepresentableAdaptor.overrideLayoutTraits(_:for:)(int a1, id a2)
{
  result = [a2 preferredContentSize];
  v5 = v4;
  if (v3 > 0.0)
  {
    v6 = v3;
    v7 = _LayoutTraits.idealSize.modify();
    *v8 = v6;
    result = v7(v11, 0);
  }

  if (v5 > 0.0)
  {
    v9 = _LayoutTraits.idealSize.modify();
    *(v10 + 8) = v5;
    return v9(v11, 0);
  }

  return result;
}

void *assignWithCopy for CoreSheetPresentationModifier(void *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v5 = a2 + 15;
  *a1 = v6;
  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (v5 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v7 = *(v5 & 0xFFFFFFFFFFFFFFF8);

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v8 & 0xFFFFFFFFFFFFFFF8);
  if (*v9 < 0xFFFFFFFFuLL)
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v13 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v13;

      goto LABEL_8;
    }
  }

  else
  {
    if (v11 >= 0xFFFFFFFF)
    {
      v12 = *(v10 + 8);
      *v9 = v11;
      *(v9 + 8) = v12;

      goto LABEL_8;
    }
  }

  *v9 = *v10;
LABEL_8:
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 17) = *(v10 + 17);
  v14 = (v9 + 25) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v10 + 25) & 0xFFFFFFFFFFFFFFF8;
  v16 = *(v15 + 24);
  if (*(v14 + 24) < 0xFFFFFFFFuLL)
  {
    if (v16 >= 0xFFFFFFFF)
    {
      *(v14 + 24) = v16;
      *(v14 + 32) = *(v15 + 32);
      (**(v16 - 8))((v9 + 25) & 0xFFFFFFFFFFFFFFF8, v15);
      goto LABEL_15;
    }

LABEL_14:
    v18 = *v15;
    v19 = *(v15 + 16);
    *(v14 + 32) = *(v15 + 32);
    *v14 = v18;
    *(v14 + 16) = v19;
    goto LABEL_15;
  }

  v17 = ((v9 + 25) & 0xFFFFFFFFFFFFFFF8);
  if (v16 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    goto LABEL_14;
  }

  __swift_assign_boxed_opaque_existential_1(v17, v15);
LABEL_15:
  v20 = *(*(a3 + 16) - 8);
  v21 = v20 + 24;
  v22 = *(v20 + 80);
  v23 = (v14 + v22 + 40) & ~v22;
  v24 = (v15 + v22 + 40) & ~v22;
  (*(v20 + 24))(v23, v24);
  *(v23 + *(v21 + 40)) = *(v24 + *(v21 + 40));
  return a1;
}

void *_sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFxq0_q_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_lyxs5NeverOqd_0_Isgnrzr_xSgAb2ERsd__Ri_d_0_r_0_lIetMgnrzo_Tpq5Si_7SwiftUI15AnyFontModifierCTg5Tm(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t View.hoverEffect<A>(_:isEnabled:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a5;
  v22 = a2;
  v8 = a1;
  v23 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for CustomHoverEffectModifier();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v21[-v15];
  (*(v9 + 16))(v11, v8, a4, v14);
  LOBYTE(v8) = a3 == MEMORY[0x1E6981748];
  v17 = default argument 2 of CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)();
  v19 = v18;
  default argument 3 of CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)(&v28);
  v25 = v28;
  v26 = v29;
  v27 = v30;
  CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)(v11, v22, v17, v19 & 1, &v25, v8, 0, 1, v16, 0, 1, 2, a4);
  MEMORY[0x18D00A570](v16, a3, v12, v24);
  return (*(v13 + 8))(v16, v12);
}

uint64_t default argument 3 of CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

double sub_18BE419E0@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.hoverEffectState.getter();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t CustomHoverEffectModifier.init(effect:isEnabled:isEnabledInEnvironment:hoverEffectState:isModifyingImageView:namespace:accessibilityID:background:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, __int128 *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, uint64_t a13)
{
  v27 = *a5;
  v18 = *(a5 + 2);
  v19 = *(a5 + 24);
  (*(*(a13 - 8) + 32))(a9, a1, a13);
  v20 = type metadata accessor for CustomHoverEffectModifier();
  *(a9 + v20[9]) = a2;
  v21 = a9 + v20[10];
  *v21 = a3;
  *(v21 + 8) = a4 & 1;
  v22 = a9 + v20[11];
  *v22 = v27;
  *(v22 + 16) = v18;
  *(v22 + 24) = v19;
  *(a9 + v20[12]) = a6;
  v23 = a9 + v20[13];
  *v23 = a7;
  *(v23 + 8) = a8 & 1;
  v24 = a9 + v20[14];
  *v24 = a10;
  *(v24 + 8) = a11 & 1;
  *(a9 + v20[15]) = a12;
  *(a9 + v20[16]) = 0;
  v25 = a9 + v20[17];
  result = swift_getKeyPath();
  *v25 = result;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  return result;
}

uint64_t sub_18BE41BDC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.sceneIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t type metadata completion function for CustomHoverEffectModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18BE41D38()
{
  type metadata accessor for CustomHoverEffectModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  type metadata accessor for CustomHoverEffectPrimitiveViewModifier();
  type metadata accessor for ModifiedContent();
  type metadata accessor for StaticIf();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t closure #2 in static CustomHoverEffectPrimitiveViewModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for CustomHoverEffectPrimitiveViewModifier();
  v3 = *(v2 + 36);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v7, &unk_1EFF9C6E8, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

double _makeCustomHoverEffectView<A>(effect:context:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X2>, void (*a3)(void)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>)
{
  v13 = *a1;
  v14 = a2[3];
  v31[2] = a2[2];
  v31[3] = v14;
  v31[4] = a2[4];
  v32 = *(a2 + 20);
  v15 = a2[1];
  v31[0] = *a2;
  v31[1] = v15;
  if (static UserDefaultKeyedFeature.isEnabled.getter())
  {
    v16 = a2[3];
    v28 = a2[2];
    v29 = v16;
    *v30 = a2[4];
    *&v30[16] = *(a2 + 20);
    v17 = a2[1];
    v26 = *a2;
    v27 = v17;
    a3();
  }

  else
  {
    outlined init with copy of _ViewInputs(v31, &v26);
    _CustomHoverEffectInputs.init(base:context:inheritedTransform:)();
    v23 = v13;
    v21[2] = v28;
    v21[3] = v29;
    *v22 = *v30;
    *&v22[12] = *&v30[12];
    v21[0] = v26;
    v21[1] = v27;
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    v20 = *(a6 + 32);

    v20(&v24, &v23, v21, partial apply for closure #1 in _makeCustomHoverEffectView<A>(effect:context:inputs:body:), v19, a5, a6);

    outlined destroy of _CustomHoverEffectInputs(&v26);
    *a7 = v24;
    result = v25;
    a7[1] = v25;
  }

  return result;
}

uint64_t sub_18BE42108()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    type metadata accessor for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>();
    lazy protocol witness table accessor for type SupportsHoverEffects and conformance SupportsHoverEffects();
    lazy protocol witness table accessor for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

void type metadata accessor for InvertedViewInputPredicate<CreatesToolbarSafeAreaInsetPredicate>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI26InvertedViewInputPredicateVyAA027CreatesToolbarSafeAreaInsetF0VGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t type metadata completion function for CustomHoverEffectPrimitiveViewModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance CustomHoverEffectModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE0720](a1, a2, a3, a4, a5, WitnessTable);
}

double static CustomHoverEffectPrimitiveViewModifier._makeView(modifier:inputs:body:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v12 = *a1;
  v13 = *(a2 + 48);
  v30[2] = *(a2 + 32);
  v30[3] = v13;
  v30[4] = *(a2 + 64);
  v31 = *(a2 + 80);
  v14 = *(a2 + 16);
  v30[0] = *a2;
  v30[1] = v14;
  v28 = a5;
  v29 = a6;
  v22[1] = v12;
  type metadata accessor for CustomHoverEffectPrimitiveViewModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v26 = a5;
  v27 = a6;
  _GraphValue.subscript.getter();
  _DisplayList_Identity.init()();
  v21 = v19;
  v18[0] = v20;
  v18[1] = v19;
  RootContext = type metadata accessor for CustomHoverEffectPrimitiveViewModifier.MakeRootContext();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<HoverEffectContext>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v18, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_5, v23, RootContext, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  return _makeCustomHoverEffectView<A>(effect:context:inputs:body:)(v22, v30, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance CustomHoverEffectPrimitiveViewModifier<A>.MakeRootContext(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void type metadata accessor for Attribute<HoverEffectContext>()
{
  if (!lazy cache variable for type metadata for Attribute<HoverEffectContext>)
  {
    v0 = type metadata accessor for Attribute();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Attribute<HoverEffectContext>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyHoverEffect, HoverEffect> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<EmptyHoverEffect, HoverEffect>(255, a2, MEMORY[0x1E697E988], a3, MEMORY[0x1E697E830]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect()
{
  result = lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect;
  if (!lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect;
  if (!lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>)
  {
    type metadata accessor for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>();
    lazy protocol witness table accessor for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>()
{
  if (!lazy cache variable for type metadata for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>)
  {
    type metadata accessor for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>();
    lazy protocol witness table accessor for type StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    v0 = type metadata accessor for _CustomViewModifierHoverEffect();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>);
    }
  }
}

void type metadata accessor for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>()
{
  if (!lazy cache variable for type metadata for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>)
  {
    type metadata accessor for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>();
    v0 = type metadata accessor for ModifiedContent();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ModifiedContent<EmptyHoverEffect, _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>>);
    }
  }
}

void type metadata accessor for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>()
{
  if (!lazy cache variable for type metadata for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>)
  {
    v0 = type metadata accessor for StaticIf();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type SupportsHoverEffects and conformance SupportsHoverEffects()
{
  result = lazy protocol witness table cache variable for type SupportsHoverEffects and conformance SupportsHoverEffects;
  if (!lazy protocol witness table cache variable for type SupportsHoverEffects and conformance SupportsHoverEffects)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SupportsHoverEffects and conformance SupportsHoverEffects);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier()
{
  result = lazy protocol witness table cache variable for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier;
  if (!lazy protocol witness table cache variable for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SystemHoverEffectViewModifier and conformance SystemHoverEffectViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>()
{
  result = lazy protocol witness table cache variable for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>;
  if (!lazy protocol witness table cache variable for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>)
  {
    type metadata accessor for _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _CustomViewModifierHoverEffect<StaticIf<SupportsHoverEffects, SystemHoverEffectViewModifier, EmptyModifier>> and conformance _CustomViewModifierHoverEffect<A>);
  }

  return result;
}

double static _CustomViewModifierHoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double *a5@<X8>)
{
  v8 = *a1;
  v9 = a2[3];
  v28 = a2[2];
  v29 = v9;
  *v30 = a2[4];
  *&v30[12] = *(a2 + 76);
  v10 = a2[1];
  v26 = *a2;
  v27 = v10;
  v23 = v8;
  type metadata accessor for _CustomViewModifierHoverEffect();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  v19 = v28;
  v20 = v29;
  v21 = *v30;
  v22 = *&v30[16];
  v17 = v26;
  v18 = v27;
  v11 = swift_allocObject();
  v12 = v29;
  *(v11 + 48) = v28;
  *(v11 + 64) = v12;
  *(v11 + 80) = *v30;
  *(v11 + 92) = *&v30[12];
  v13 = v27;
  *(v11 + 16) = v26;
  *(v11 + 32) = v13;
  *(v11 + 112) = a3;
  *(v11 + 120) = a4;
  outlined init with copy of _CustomHoverEffectInputs(&v26, v15);
  outlined init with copy of _CustomHoverEffectInputs(&v26, v15);

  static ViewModifier.makeDebuggableView(modifier:inputs:body:)();

  v15[2] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v16 = v22;
  v15[0] = v17;
  v15[1] = v18;
  outlined destroy of _ViewInputs(v15);
  *a5 = v24;
  result = v25;
  a5[1] = v25;
  return result;
}

uint64_t sub_18BE42D5C()
{

  return swift_deallocObject();
}

uint64_t closure #1 in static _CustomViewModifierHoverEffect._makeCustomHoverEffect(effect:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for _CustomViewModifierHoverEffect();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t specialized static SupportsHoverEffects.evaluate(inputs:)()
{
  _GraphInputs.interfaceIdiom.getter();
  if (AnyInterfaceIdiom.accepts<A>(_:)() & 1) != 0 || (_GraphInputs.interfaceIdiom.getter(), (AnyInterfaceIdiom.accepts<A>(_:)()))
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

uint64_t closure #2 in static _CustomViewModifierHoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, void (*a3)(void *__return_ptr, __int128 *)@<X3>, void *a4@<X8>)
{
  v6 = a1[3];
  v20 = a1[2];
  v21 = v6;
  v22 = a1[4];
  v23 = *(a1 + 20);
  v7 = a1[1];
  v18 = *a1;
  v19 = v7;
  v8 = *(a2 + 48);
  v15 = *(a2 + 32);
  v16 = v8;
  *v17 = *(a2 + 64);
  v9 = *v17;
  *&v17[12] = *(a2 + 76);
  v10 = *(a2 + 16);
  v13 = *a2;
  v14 = v10;
  v24[0] = v13;
  v24[1] = v10;
  v25 = *(a2 + 80);
  v24[3] = v8;
  v24[4] = v9;
  v24[2] = v15;
  outlined init with copy of _CustomHoverEffectInputs(a2, &v30);
  outlined init with copy of _ViewInputs(&v18, &v30);
  outlined destroy of _ViewInputs(v24);
  v13 = v18;
  v14 = v19;
  *&v17[16] = v23;
  v16 = v21;
  *v17 = v22;
  v15 = v20;
  v26[0] = v18;
  v26[1] = v19;
  *(v27 + 12) = *&v17[12];
  v26[3] = v21;
  v27[0] = v22;
  v26[2] = v20;
  v32 = v20;
  v33 = v21;
  v34[0] = v22;
  *(v34 + 12) = *&v17[12];
  v30 = v18;
  v31 = v19;
  outlined init with copy of _CustomHoverEffectInputs(v26, v28);
  a3(v12, &v30);
  v28[2] = v32;
  v28[3] = v33;
  v29[0] = v34[0];
  *(v29 + 12) = *(v34 + 12);
  v28[0] = v30;
  v28[1] = v31;
  outlined destroy of _CustomHoverEffectInputs(v28);
  *a4 = v12[0];
  a4[1] = v12[1];
  v32 = v15;
  v33 = v16;
  v34[0] = *v17;
  *(v34 + 12) = *&v17[12];
  v30 = v13;
  v31 = v14;
  return outlined destroy of _CustomHoverEffectInputs(&v30);
}

double closure #1 in _makeCustomHoverEffectView<A>(effect:context:inputs:body:)@<D0>(_OWORD *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X1>, double *a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[1];
  v25 = a1[2];
  v26 = v5;
  v7 = a1[3];
  v27[0] = a1[4];
  *(v27 + 12) = *(a1 + 76);
  v8 = a1[1];
  v24[0] = *a1;
  v24[1] = v8;
  v21 = v25;
  v22 = v7;
  *v23 = a1[4];
  *&v23[12] = *(a1 + 76);
  v19 = v24[0];
  v20 = v6;
  outlined init with copy of _CustomHoverEffectInputs(v24, v32);
  _CustomHoverEffectInputs.removeContextFromEnvironment()();
  v28[2] = v21;
  v28[3] = v22;
  v28[4] = *v23;
  v29 = *&v23[16];
  v28[0] = v19;
  v28[1] = v20;
  v13 = v21;
  v14 = v22;
  v15 = *v23;
  v16 = *&v23[16];
  v11 = v19;
  v12 = v20;
  v9 = outlined init with copy of _ViewInputs(v28, v32);
  a2(&v17, v9, &v11);
  v30[2] = v13;
  v30[3] = v14;
  v30[4] = v15;
  v31 = v16;
  v30[0] = v11;
  v30[1] = v12;
  outlined destroy of _ViewInputs(v30);
  v32[2] = v21;
  v32[3] = v22;
  v33[0] = *v23;
  *(v33 + 12) = *&v23[12];
  v32[0] = v19;
  v32[1] = v20;
  outlined destroy of _CustomHoverEffectInputs(v32);
  *a3 = v17;
  result = v18;
  a3[1] = v18;
  return result;
}

void type metadata accessor for ModifiedContent<EmptyHoverEffect, HoverEffect>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

uint64_t initializeWithCopy for CustomHoverEffectModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  *v7 = *v8;
  v9 = v7 & 0xFFFFFFFFFFFFFFF8;
  v10 = v8 & 0xFFFFFFFFFFFFFFF8;
  v11 = *((v8 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v5) = *((v8 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<Bool>.Content(v11, v5);
  *(v9 + 8) = v11;
  *(v9 + 16) = v5;
  v12 = *(v10 + 24);
  v13 = *(v10 + 32);
  v14 = *(v10 + 40);
  v15 = *(v10 + 48);
  outlined copy of Environment<HoverEffectContext.State>.Content(v12, v13, v14, v15);
  *(v9 + 24) = v12;
  *(v9 + 32) = v13;
  *(v9 + 40) = v14;
  *(v9 + 48) = v15;
  *(v9 + 49) = *(v10 + 49);
  v16 = (v9 + 57) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v10 + 57) & 0xFFFFFFFFFFFFFFF8;
  v18 = *v17;
  *(v16 + 8) = *(v17 + 8);
  *v16 = v18;
  v19 = (v9 + 73) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v10 + 73) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 8) = *(v20 + 8);
  *v19 = v21;
  *(v19 + 9) = *(v20 + 9);
  v22 = ((v19 + 17) & 0xFFFFFFFFFFFFFFF8);
  v23 = (v20 + 17) & 0xFFFFFFFFFFFFFFF8;
  v24 = *v23;
  v23 += 15;
  *v22 = v24;
  v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v23 & 0xFFFFFFFFFFFFFFF8);
  v27 = *((v23 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v14) = *((v23 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of Environment<String?>.Content(v26, v27, v14);
  *v25 = v26;
  *(v25 + 8) = v27;
  *(v25 + 16) = v14;
  return a1;
}

uint64_t outlined copy of Environment<HoverEffectContext.State>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t outlined copy of Environment<String?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t destroy for CustomHoverEffectModifier(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (*(v3 + 56) + a1) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Bool>.Content(*(v4 + 8), *(v4 + 16));
  outlined consume of Environment<HoverEffectContext.State>.Content(*(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48));
  v5 = (((((v4 + 73) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return outlined consume of Environment<String?>.Content(v6, v7, v8);
}

uint64_t outlined consume of Environment<HoverEffectContext.State>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t outlined consume of Environment<String?>.Content(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

double key path getter for EnvironmentValues.hoverEffectState : EnvironmentValues@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.hoverEffectState.getter();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  return result;
}

uint64_t EnvironmentValues.sceneIdentifier.getter()
{
  if (*(v0 + 8))
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();

    if (v6)
    {
LABEL_3:
      outlined destroy of WeakBox<UIWindowScene>?(&v5);
      return 0;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<WindowSceneKey>();
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowSceneKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  outlined destroy of WeakBox<UIWindowScene>(&v5);
  if (Strong)
  {
    v2 = [Strong _sceneIdentifier];

    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v3;
  }

  return 0;
}

double CustomHoverEffectPrimitiveViewModifier.MakeRootContext.value.getter@<D0>(uint64_t a1@<X8>)
{
  v13 = *v1;
  Value = AGGraphGetValue();
  v4 = *(Value + 16);
  v15[0] = *Value;
  v15[1] = v4;
  v6 = *(Value + 48);
  v5 = *(Value + 64);
  v7 = *(Value + 32);
  v16 = *(Value + 80);
  v15[3] = v6;
  v15[4] = v5;
  v15[2] = v7;
  v8 = *(Value + 48);
  v11[2] = *(Value + 32);
  v11[3] = v8;
  v11[4] = *(Value + 64);
  v12 = *(Value + 80);
  v9 = *(Value + 16);
  v11[0] = *Value;
  v11[1] = v9;
  outlined init with copy of HoverEffectContext.RootContextOptions(v15, v14);
  *&result = HoverEffectContext.init(identity:options:)(&v13, v11, a1).n128_u64[0];
  return result;
}

uint64_t CustomHoverEffectModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for CustomHoverEffectPrimitiveViewModifier();
  type metadata accessor for ModifiedContent();
  v6 = type metadata accessor for StaticIf();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - v11;
  v21 = v4;
  v22 = v5;
  v19[4] = v4;
  v19[5] = v5;
  v20 = v2;
  WitnessTable = swift_getWitnessTable();
  v26 = WitnessTable;
  v27 = &protocol witness table for CustomHoverEffectPrimitiveViewModifier<A>;
  v18 = swift_getWitnessTable();
  v14 = MEMORY[0x1E697F9B0];
  StaticIf<>.init(_:then:else:)();
  v23 = v14;
  v24 = WitnessTable;
  v25 = v18;
  v15 = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v9, v6, v15);
  v16 = *(v7 + 8);
  v16(v9, v6);
  static ViewBuilder.buildExpression<A>(_:)(v12, v6, v15);
  return (v16)(v12, v6);
}

uint64_t closure #1 in CustomHoverEffectModifier.body(content:)()
{
  type metadata accessor for CustomHoverEffectModifier();
  swift_getWitnessTable();
  v0 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v2 = static ViewBuilder.buildExpression<A>(_:)(WitnessTable, v0, WitnessTable);

  return static ViewBuilder.buildExpression<A>(_:)(v2, v0, WitnessTable);
}

uint64_t closure #2 in CustomHoverEffectModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for CustomHoverEffectPrimitiveViewModifier();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v38[-v9];
  v10 = type metadata accessor for CustomHoverEffectModifier();
  swift_getWitnessTable();
  v47 = type metadata accessor for _ViewModifier_Content();
  v53 = v8;
  v40 = type metadata accessor for ModifiedContent();
  v51 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v48 = &v38[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v49 = &v38[-v14];
  v50 = v7;
  v52 = v5;
  v15 = *(v5 + 16);
  v41 = a2;
  v15(v7, a1, a2, v13);
  v46 = Namespace.wrappedValue.getter();
  v16 = v10[13];
  v45 = *(a1 + v10[12]);
  v44 = *(a1 + v16);
  v17 = *(a1 + v16 + 8);
  v18 = (a1 + v10[14]);
  v42 = *v18;
  v19 = *(v18 + 8);
  if (*(a1 + v10[9]) == 1)
  {
    v20 = specialized Environment.wrappedValue.getter(*(a1 + v10[10]), *(a1 + v10[10] + 8));
  }

  else
  {
    v20 = 0;
  }

  v39 = *(a1 + v10[15]);
  specialized Environment.wrappedValue.getter(*(a1 + v10[11]), *(a1 + v10[11] + 8), *(a1 + v10[11] + 16), *(a1 + v10[11] + 24), v58);
  v21 = v58[0];
  v22 = v59;
  v23 = v60;
  v24 = specialized Environment.wrappedValue.getter(*(a1 + v10[17]), *(a1 + v10[17] + 8), *(a1 + v10[17] + 16));
  v26 = v25;
  v62 = v17;
  v61 = v19;
  v27 = v43;
  (*(v52 + 32))(v43, v50, v41);
  v28 = v53;
  v29 = &v27[*(v53 + 36)];
  *v29 = v46;
  v29[8] = v45;
  *(v29 + 2) = v44;
  v29[24] = v17;
  *(v29 + 4) = v42;
  v29[40] = v19;
  v29[41] = v20 & 1;
  v29[42] = v39;
  v29[48] = v21;
  *(v29 + 7) = v22;
  *(v29 + 8) = v23;
  *(v29 + 9) = v24;
  *(v29 + 10) = v26;
  v30 = v47;
  WitnessTable = swift_getWitnessTable();
  v32 = v48;
  MEMORY[0x18D00A570](v27, v30, v28, WitnessTable);
  (*(v54 + 8))(v27, v28);
  v56 = WitnessTable;
  v57 = &protocol witness table for CustomHoverEffectPrimitiveViewModifier<A>;
  v33 = v40;
  v34 = swift_getWitnessTable();
  v35 = v49;
  static ViewBuilder.buildExpression<A>(_:)(v32, v33, v34);
  v36 = *(v51 + 8);
  v36(v32, v33);
  static ViewBuilder.buildExpression<A>(_:)(v35, v33, v34);
  return (v36)(v35, v33);
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (a4)
  {
    *a5 = a1 & 1;
    *(a5 + 8) = a2;
    *(a5 + 16) = a3;

    return outlined copy of Environment<HoverEffectContext.State>.Content(a1, a2, a3, 1);
  }

  else
  {
    v15[10] = v5;
    v15[11] = v6;
    outlined copy of Environment<HoverEffectContext.State>.Content(a1, a2, a3, 0);
    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574617453, 0xE500000000000000, v15);
      _os_log_impl(&dword_18BD4A000, v12, v11, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x18D0110E0](v14, -1, -1);
      MEMORY[0x18D0110E0](v13, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<HoverEffectContext.State>.Content(a1, a2, a3, 0);
  }
}

uint64_t specialized Environment.wrappedValue.getter(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x800000018CD3F330, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<String?>.Content(a1, a2, 0);

    return v10;
  }

  return a1;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of AppIntentExecutor?(a1);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000025, 0x800000018CD3F300, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of TriggerSubmitAction?);

    return v10;
  }

  return v4;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of AppIntentExecutor?(a1);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, 0x800000018CD3F180, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of TriggerSubmitAction?);

    return v10;
  }

  return v4;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of AppIntentExecutor?(a1);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x800000018CD3F1C0, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?);

    return v10;
  }

  return v4;
}

{
  v4 = a1;
  if (a3)
  {
    outlined copy of (Color, Color)?(a1);
  }

  else
  {

    v5 = static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v10 = v8;
      *v7 = 136315138;
      *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x800000018CD3F440, &v10);
      _os_log_impl(&dword_18BD4A000, v6, v5, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x18D0110E0](v8, -1, -1);
      MEMORY[0x18D0110E0](v7, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<AppIntentExecutor?>.Content(v4, a2, 0, outlined consume of ModifiedContent<ModifiedContent<LabelStyleConfiguration.Icon, _EnvironmentKeyWritingModifier<Font?>>, _ForegroundStyleModifier<HierarchicalShapeStyle>>?);

    return v10;
  }

  return v4;
}

uint64_t initializeWithCopy for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  v9 = *(v8 + 24);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = v9;
  v10 = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v10;
  *(v7 + 41) = *(v8 + 41);
  *(v7 + 42) = *(v8 + 42);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);
  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);

  return a1;
}

uint64_t destroy for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

__n128 HoverEffectContext.init(identity:options:)@<Q0>(unsigned int *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 41);
  v7 = *(a2 + 42);
  v8 = *(a2 + 48);
  v10 = a2[7];
  v9 = a2[8];
  v12 = a2[9];
  v11 = a2[10];
  v18.n128_u64[0] = *a1;
  v18.n128_u8[8] = 0;
  *&v19 = v4;
  BYTE8(v19) = v5;
  BYTE9(v19) = v7;
  v20 = v8;
  v21 = v10;
  v22 = v9;
  v16 = v18;
  v17 = v19;
  if (v11)
  {

    outlined destroy of HoverEffectContext(&v18);

    v13 = v20;
    v10 = v12;
    v9 = v11;
  }

  else
  {

    v13 = v8;
  }

  if ((v6 | v13))
  {
    v14 = v8;
  }

  else
  {
    v14 = 1;
  }

  result = v16;
  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v14;
  *(a3 + 40) = v10;
  *(a3 + 48) = v9;
  return result;
}

uint64_t initializeWithCopy for HoverEffectContext.RootContextOptions(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 48) = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v3;
  v4 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v4;

  return a1;
}

uint64_t ActionDispatcherSubscriber.respond(to:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v14 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!pthread_main_np())
  {
    static os_log_type_t.fault.getter();
    v22 = v5;
    v15 = static Log.runtimeIssuesLog.getter();
    v21 = v3;
    v16 = v15;
    v5 = v22;
    os_log(_:dso:log:_:_:)();

    v3 = v21;
  }

  (*(v11 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a2);
  (*(v7 + 16))(&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v6);
  v17 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v18 = (v12 + v17 + *(v7 + 80)) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v6;
  (*(v11 + 32))(v19 + v17, v14, a2);
  (*(v7 + 32))(v19 + v18, v9, v6);
  onMainThread(do:)();
}

uint64_t sub_18BE44710()
{
  v1 = *(v0 + 16);
  v2 = (type metadata accessor for ActionDispatcherSubscriber() - 8);
  v3 = (*(*v2 + 80) + 24) & ~*(*v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(*v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + v3;

  v7 = v2[9];
  v8 = type metadata accessor for CombineIdentifier();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t ActionDispatcherSubscriber.receive(_:)(uint64_t a1, uint64_t a2)
{
  v2 = ActionDispatcherSubscriber.respond(to:)(a1, a2);

  return MEMORY[0x1EEDB5BB8](v2);
}

uint64_t partial apply for closure #1 in ActionDispatcherSubscriber.respond(to:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(type metadata accessor for ActionDispatcherSubscriber() - 8);
  v4 = (((*(v3 + 80) + 24) & ~*(v3 + 80)) + *(v3 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  MEMORY[0x18D002800](&v6);
  v6(v1 + v4);
}

uint64_t partial apply for closure #1 in SubscriptionView.Subscriber.updateValue()(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = *(type metadata accessor for SubscriptionView() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return closure #1 in SubscriptionView.Subscriber.updateValue()(a1, v8, v3, v4, v5, v6);
}

uint64_t closure #1 in SubscriptionView.Subscriber.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a6;
  v33 = a2;
  v34 = a1;
  v29 = a3;
  v30 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v27 - v11;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v13 = type metadata accessor for SubscriptionView();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v27 - v17;
  LOBYTE(v35) = 17;
  (*(v14 + 16))(&v27 - v17, v33, v13, v16);
  v19 = AssociatedTypeWitness;
  (*(v10 + 16))(v12, v34, AssociatedTypeWitness);
  v20 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v21 = (v15 + v20 + *(v10 + 80)) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v24 = v30;
  v23 = v31;
  *(v22 + 2) = v29;
  *(v22 + 3) = v23;
  v25 = v32;
  *(v22 + 4) = v24;
  *(v22 + 5) = v25;
  (*(v14 + 32))(&v22[v20], v18, v13);
  (*(v10 + 32))(&v22[v21], v12, v19);
  static Update.enqueueAction(reason:_:)();
}

uint64_t sub_18BE44CB0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for SubscriptionView() - 8);
  v4 = (*(*v3 + 80) + 48) & ~*(*v3 + 80);
  v5 = v4 + *(*v3 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(*(v2 - 8) + 8))(v0 + v4, v2);
  (*(*(v1 - 8) + 8))(v0 + v4 + v3[15], v1);

  (*(v7 + 8))(v0 + v8, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t initializeWithCopy for UIKitSystemButtonConfigurationModifier(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UIButton.Configuration();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t closure #1 in static CustomHoverEffectPrimitiveViewModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v7[2] = type metadata accessor for CustomHoverEffectPrimitiveViewModifier();
  v7[3] = a2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v7, a2, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

uint64_t static HoverEffect._makeCustomHoverEffect(effect:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a2[3];
  v9 = a2[1];
  v27 = a2[2];
  v28 = v8;
  v10 = a2[3];
  v29[0] = a2[4];
  *(v29 + 12) = *(a2 + 76);
  v11 = a2[1];
  v25 = *a2;
  v26 = v11;
  *&v20[32] = v27;
  *&v20[48] = v10;
  *&v20[64] = a2[4];
  v12 = *a1;
  *&v20[80] = *(a2 + 20);
  *v20 = v25;
  *&v20[16] = v9;
  outlined init with copy of _ViewInputs(&v25, v19);
  _ViewInputs.makeIndirectOutputs()();
  v30[2] = *&v20[32];
  v30[3] = *&v20[48];
  v30[4] = *&v20[64];
  v31 = *&v20[80];
  v30[0] = *v20;
  v30[1] = *&v20[16];
  outlined destroy of _ViewInputs(v30);
  *&v24[36] = v27;
  *&v24[52] = v28;
  *&v24[68] = v29[0];
  *&v24[80] = *(v29 + 12);
  *&v24[4] = v25;
  v13 = *&v19[0];
  v14 = DWORD2(v19[0]);
  v15 = HIDWORD(v19[0]);
  *&v24[20] = v26;
  v16 = AGSubgraphGetCurrent();
  if (!v16)
  {
    __break(1u);
  }

  *&v20[84] = *&v24[80];
  *&v20[36] = *&v24[32];
  *v20 = v12;
  *&v20[52] = *&v24[48];
  *&v20[68] = *&v24[64];
  *&v20[4] = *v24;
  *&v20[20] = *&v24[16];
  *&v20[104] = v13;
  *&v21 = __PAIR64__(v15, v14);
  *(&v21 + 1) = a3;
  *&v22 = a4;
  v23 = 0uLL;
  *(&v22 + 1) = v16;
  v19[6] = *&v20[96];
  v19[7] = v21;
  v19[8] = v22;
  v19[9] = 0uLL;
  v19[2] = *&v20[32];
  v19[3] = *&v20[48];
  v19[4] = *&v20[64];
  v19[5] = *&v20[80];
  v19[0] = *v20;
  v19[1] = *&v20[16];
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _CustomHoverEffectInputs(&v25, v18);
  lazy protocol witness table accessor for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer();

  Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of AnyHoverEffectContainer(v20);
  *&v19[0] = v13;
  *(&v19[0] + 1) = __PAIR64__(v15, v14);

  v18[0] = 0;
  _ViewOutputs.setIndirectDependency(_:)();

  *a5 = v13;
  *(a5 + 8) = v14;
  *(a5 + 12) = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for ModifiedContent<EmptyHoverEffect, HoverEffect>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey>, &type metadata for EnvironmentValues.DefaultHoverEffectKey, &protocol witness table for EnvironmentValues.DefaultHoverEffectKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.DefaultHoverEffectKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t AutomaticHoverEffect.body(content:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = specialized Environment.wrappedValue.getter(*v1, v4, &v9);
  if (v9 && ((*(*v9 + 96))(v8, v5), , v8[0] != 3) && !v8[0] || (specialized Environment.wrappedValue.getter(v3, v4, &v9), (result = v9) == 0))
  {
    KeyPath = swift_getKeyPath();
    LOBYTE(v9) = 0;
    type metadata accessor for _InternalHoverEffectBox<SystemCustomHoverEffect>();
    result = swift_allocObject();
    *(result + 16) = KeyPath;
    *(result + 72) = 0;
    *(result + 73) = 256;
  }

  *a1 = result;
  return result;
}

void protocol witness for _RendererEffect.effectValue(size:) in conformance IgnoreColorInvertEffect(uint64_t a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = swift_allocObject();
    _s7SwiftUI14GraphicsFilterOWOi24_(v8);
    v4 = v8[5];
    v3[5] = v8[4];
    v3[6] = v4;
    v3[7] = v9[0];
    *(v3 + 124) = *(v9 + 12);
    v5 = v8[1];
    v3[1] = v8[0];
    v3[2] = v5;
    v6 = v8[3];
    v7 = 10;
    v3[3] = v8[2];
    v3[4] = v6;
  }

  else
  {
    v3 = 0;
    v7 = 20;
  }

  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 12) = v7;
}

uint64_t sub_18BE454C0()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in SubscriptionView.Subscriber.updateValue()()
{
  v1 = *(type metadata accessor for SubscriptionView() - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = type metadata accessor for SubscriptionView();
  return (*(v0 + *(v6 + 56) + v2))(v0 + v5);
}

uint64_t assignWithCopy for CustomHoverEffectPrimitiveViewModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  LOBYTE(v6) = *(v8 + 24);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = v6;
  LOBYTE(v6) = *(v8 + 40);
  *(v7 + 32) = *(v8 + 32);
  *(v7 + 40) = v6;
  *(v7 + 41) = *(v8 + 41);
  *(v7 + 42) = *(v8 + 42);
  *(v7 + 48) = *(v8 + 48);
  *(v7 + 56) = *(v8 + 56);
  *(v7 + 64) = *(v8 + 64);

  *(v7 + 72) = *(v8 + 72);
  *(v7 + 80) = *(v8 + 80);

  return a1;
}

uint64_t *assignWithCopy for ToolbarItemTintColorModifier(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v4);
  v5 = *a1;
  v6 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  outlined consume of Environment<Color?>.Content(v5, v6);
  return a1;
}

{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Environment<Color?>.Content(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Environment<Color?>.Content(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t initializeWithCopy for DragGesture(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(a2 + 48))
  {
    v3 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v3;
    *(result + 33) = *(a2 + 33);
  }

  else
  {
    v4 = *(a2 + 32);
    *(result + 32) = v4;
    v5 = result;
    (**(v4 - 8))(result + 8, a2 + 8);
    result = v5;
    *(v5 + 48) = 0;
  }

  *(result + 49) = *(a2 + 49);
  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t DragGesture.init<A>(minimumDistance:coordinateSpace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *(a4 + 49) = 15;
  *a4 = a5;
  (*(a3 + 8))(a2, a3);
  v7 = *(*(a2 - 8) + 8);

  return v7(a1, a2);
}

uint64_t assignWithCopy for NavigationLinkLabel(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  LOBYTE(v5) = *(v8 + 8);
  outlined copy of Environment<Bool>.Content(*v8, v5);
  v10 = *v7;
  v11 = *(v7 + 8);
  *v7 = v9;
  *(v7 + 8) = v5;
  outlined consume of Environment<Bool>.Content(v10, v11);
  return a1;
}

uint64_t assignWithCopy for ResolvedButtonStyleBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

uint64_t SharingActivityPickerBridge.__deallocating_deinit()
{
  outlined destroy of weak FallbackResponderProvider?(v0 + 16);
  MEMORY[0x18D011290](v0 + 48);
  MEMORY[0x18D011290](v0 + 56);
  v1 = *(v0 + 176);
  v6[6] = *(v0 + 160);
  v6[7] = v1;
  v6[8] = *(v0 + 192);
  v7 = *(v0 + 208);
  v2 = *(v0 + 112);
  v6[2] = *(v0 + 96);
  v6[3] = v2;
  v3 = *(v0 + 144);
  v6[4] = *(v0 + 128);
  v6[5] = v3;
  v4 = *(v0 + 80);
  v6[0] = *(v0 + 64);
  v6[1] = v4;
  outlined destroy of AnyShareConfiguration?(v6, &lazy cache variable for type metadata for SharingActivityPickerPresentation?, &type metadata for SharingActivityPickerPresentation);

  return swift_deallocClassInstance();
}

uint64_t outlined destroy of AnyShareConfiguration?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for ViewTransform?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for SharingActivityPickerPresentation(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 148))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

void destroy for AnyHoverEffectContainer(uint64_t a1)
{

  if (*(a1 + 144))
  {

    v2 = *(a1 + 152);
  }
}

uint64_t type metadata completion function for ViewThatFits()
{
  result = type metadata accessor for _VariadicView.Tree();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HoverEffect and conformance HoverEffect()
{
  result = lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect;
  if (!lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect;
  if (!lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverEffect and conformance HoverEffect);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer()
{
  result = lazy protocol witness table cache variable for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer;
  if (!lazy protocol witness table cache variable for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnyHoverEffectContainer and conformance AnyHoverEffectContainer);
  }

  return result;
}

uint64_t initializeWithCopy for AnyHoverEffectContainer(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  v7 = (a2 + 144);
  v6 = *(a2 + 144);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v8;
  v9 = *(a2 + 136);
  *(a1 + 136) = v9;

  v10 = v9;
  if (v6)
  {
    v11 = *(a2 + 152);
    *(a1 + 144) = v6;
    *(a1 + 152) = v11;

    v12 = v11;
  }

  else
  {
    *(a1 + 144) = *v7;
  }

  return a1;
}

uint64_t AnyHoverEffectContainer.updateValue()()
{
  v1 = v0;
  v49 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 144);
  if (v2)
  {
    v3 = *(v1 + 152);

    v4 = v3;
    Value = AGGraphGetValue();
    if ((*(*v2 + 80))(*Value))
    {
      v6 = *AGGraphGetValue();

      goto LABEL_8;
    }

    outlined consume of AnyHoverEffectContainer.ChildEffect?(v2, v3);
    v7 = *(v1 + 144);
    if (v7)
    {
      v8 = *(v1 + 152);
      v47 = *(v1 + 104);
      outlined copy of AnyHoverEffectContainer.ChildEffect?(v7, v8);

      _ViewOutputs.detachIndirectOutputs()();

      AGSubgraphRef.willInvalidate(isInserted:)(1);
      AGSubgraphInvalidate();
      outlined consume of AnyHoverEffectContainer.ChildEffect?(v7, v8);
    }
  }

  v6 = *AGGraphGetValue();
  v10 = *(v1 + 120);
  v9 = *(v1 + 128);
  v11 = AGSubgraphGetGraph();

  v12 = AGSubgraphCreate();

  AGSubgraphAddChild();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v28 = CurrentAttribute;
  AGGraphClearUpdate();
  v29 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  v14 = *(v1 + 40);
  v38 = *(v1 + 24);
  v39 = v14;
  v15 = *(v1 + 72);
  v40 = *(v1 + 56);
  v41[0] = v15;
  *(v41 + 12) = *(v1 + 84);
  v36 = *(v1 + 8);
  v37 = v36;
  v16 = *(v1 + 32);
  v17 = *(v1 + 48);
  v18 = *(v1 + 64);
  v19 = *(v1 + 80);
  v35 = *(v1 + 96);
  v33 = v18;
  v34 = v19;
  v31 = v16;
  v32 = v17;
  swift_beginAccess();
  v20 = *(v38 + 48);
  v42[1] = *(v38 + 32);
  v42[2] = v20;
  v21 = *(v38 + 80);
  v42[3] = *(v38 + 64);
  v42[4] = v21;
  v42[0] = *(v38 + 16);
  type metadata accessor for HoverEffect?(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, MEMORY[0x1E697ECC0], MEMORY[0x1E697DAC0]);
  v22 = swift_allocObject();
  memmove((v22 + 16), (v38 + 16), 0x50uLL);
  outlined init with copy of _CustomHoverEffectInputs(&v37, &v47);
  outlined init with copy of CachedEnvironment(v42, &v47);

  *v44 = v22;
  *&v44[8] = v31;
  *&v44[56] = v34;
  *&v44[40] = v33;
  *&v44[24] = v32;
  *&v48[16] = *&v44[16];
  *&v48[32] = *&v44[32];
  *&v44[72] = v35;
  *&v48[48] = *&v44[48];
  *&v48[60] = *&v44[60];
  v43 = v36;
  v47 = v36;
  *v48 = *v44;
  v23 = *(*v6 + 88);
  outlined init with copy of _CustomHoverEffectInputs(&v43, v45);
  v23(v30, v28, &v47, v10, v9);
  v45[2] = *&v48[16];
  v45[3] = *&v48[32];
  v46[0] = *&v48[48];
  *(v46 + 12) = *&v48[60];
  v45[0] = v47;
  v45[1] = *v48;
  outlined destroy of _CustomHoverEffectInputs(v45);
  v30[0] = *(v1 + 104);
  v30[1] = *(v1 + 112);

  _ViewOutputs.attachIndirectOutputs(to:)();

  v47 = v36;
  *v48 = v22;
  *&v48[24] = v32;
  *&v48[40] = v33;
  *&v48[56] = v34;
  *&v48[72] = v35;
  *&v48[8] = v31;
  outlined destroy of _CustomHoverEffectInputs(&v47);

  v4 = v12;
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();

LABEL_8:
  *&v47 = v6;
  AGGraphSetOutputValue();
  v24 = *(v1 + 144);
  v25 = *(v1 + 152);

  v26 = v4;
  outlined consume of AnyHoverEffectContainer.ChildEffect?(v24, v25);
  *(v1 + 144) = v6;
  *(v1 + 152) = v4;
}

uint64_t specialized Environment.wrappedValue.getter@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;

    return outlined copy of Environment<Color?>.Content(a1, 1);
  }

  else
  {
    v11[8] = v3;
    v11[9] = v4;
    outlined copy of Environment<Color?>.Content(a1, 0);
    v7 = static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x800000018CD3F670, v11);
      _os_log_impl(&dword_18BD4A000, v8, v7, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x18D0110E0](v10, -1, -1);
      MEMORY[0x18D0110E0](v9, -1, -1);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    outlined consume of Environment<Color?>.Content(a1, 0);
  }
}

void type metadata accessor for _InternalHoverEffectBox<SystemCustomHoverEffect>()
{
  if (!lazy cache variable for type metadata for _InternalHoverEffectBox<SystemCustomHoverEffect>)
  {
    lazy protocol witness table accessor for type SystemCustomHoverEffect and conformance SystemCustomHoverEffect();
    v0 = type metadata accessor for _InternalHoverEffectBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _InternalHoverEffectBox<SystemCustomHoverEffect>);
    }
  }
}

void type metadata accessor for HoverEffect?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _AnyHoverEffectBox.makeChild(container:inputs:body:)(int a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  v8 = a2[1];
  v35 = a2[2];
  v36 = v7;
  v9 = a2[3];
  v37[0] = a2[4];
  *(v37 + 12) = *(a2 + 76);
  v10 = a2[1];
  v34[0] = *a2;
  v34[1] = v10;
  v31 = v35;
  v32 = v9;
  v33[0] = a2[4];
  *(v33 + 12) = *(a2 + 76);
  v11 = *v4;
  v29 = v34[0];
  v30 = v8;
  v12 = *(v11 + 112);
  outlined init with copy of _CustomHoverEffectInputs(v34, v42);
  _GraphInputs.pushStableType(_:)();
  v13 = *(v11 + 120);
  LODWORD(v42[0]) = a1;
  v21 = v12;
  v22 = type metadata accessor for AnyHoverEffectChild();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v42, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v20, v22, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);
  _GraphValue.init(_:)();
  v38[2] = v31;
  v38[3] = v32;
  v39[0] = v33[0];
  *(v39 + 12) = *(v33 + 12);
  v38[0] = v29;
  v38[1] = v30;
  v26 = v31;
  v27 = v32;
  v28[0] = v33[0];
  *(v28 + 12) = *(v33 + 12);
  v24 = v29;
  v25 = v30;
  v16 = *(v13 + 32);
  outlined init with copy of _CustomHoverEffectInputs(v38, v42);
  v16(v19, &v24, a3, a4, v12, v13);
  v40[2] = v26;
  v40[3] = v27;
  v41[0] = v28[0];
  *(v41 + 12) = *(v28 + 12);
  v40[0] = v24;
  v40[1] = v25;
  outlined destroy of _CustomHoverEffectInputs(v40);
  v42[2] = v31;
  v42[3] = v32;
  v43[0] = v33[0];
  *(v43 + 12) = *(v33 + 12);
  v42[0] = v29;
  v42[1] = v30;
  return outlined destroy of _CustomHoverEffectInputs(v42);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance AnyHoverEffectChild<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDDE9B8](a1, WitnessTable);
}

void outlined consume of AnyHoverEffectContainer.ChildEffect?(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance ViewThatFits<A>()
{
  swift_getWitnessTable();

  return static UnaryView._makeViewList(view:inputs:)();
}

uint64_t static ViewThatFits._makeView(view:inputs:)()
{
  type metadata accessor for _VariadicView.Tree();
  type metadata accessor for ViewThatFits();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter();
  swift_getWitnessTable();
  return static View.makeDebuggableView(view:inputs:)();
}

uint64_t closure #1 in static ViewThatFits._makeView(view:inputs:)(uint64_t a1)
{
  v5[2] = type metadata accessor for ViewThatFits();
  v6 = type metadata accessor for _VariadicView.Tree();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v5, v6, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v7;
}

double static _SizeFittingRoot._makeView(root:inputs:body:)@<D0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, double *a4@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a2[1];
  v7 = a2[3];
  v43 = a2[2];
  v44 = v7;
  v45 = a2[4];
  v8 = a2[1];
  v41 = *a2;
  v42 = v8;
  v49 = v41;
  v50 = v6;
  v9 = *a1;
  v46 = *(a2 + 20);
  v51 = v43;
  outlined init with copy of _GraphInputs(&v41, v40);
  v10 = _ViewListInputs.init(_:)();
  v51 = v43;
  v52 = v44;
  v53 = v45;
  v54 = v46;
  v49 = v41;
  v50 = v42;
  a3(v47, v10, &v49);
  v11 = _ViewListOutputs.makeAttribute(inputs:)();
  outlined destroy of _ViewListOutputs(v47);
  v12 = BYTE4(v43);
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v39 = v46;
  v34 = v41;
  v35 = v42;
  DWORD1(v36) = DWORD1(v43) & 0xFFFFFFFD;
  outlined init with copy of _ViewInputs(&v41, &v49);
  PreferenceKeys.remove(_:)();
  v47[2] = v36;
  v47[3] = v37;
  v47[4] = v38;
  v48 = v39;
  v47[0] = v34;
  v47[1] = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  outlined init with copy of _ViewInputs(v47, &v49);
  _ViewInputs.makeIndirectOutputs()();
  v51 = v36;
  v52 = v37;
  v53 = v38;
  v54 = v39;
  v49 = v34;
  v50 = v35;
  outlined destroy of _ViewInputs(&v49);
  v13 = v24;
  v14 = LODWORD(v25);
  v15 = HIDWORD(v25);
  type metadata accessor for SizeFittingState();
  v16 = swift_allocObject();
  v17 = AGSubgraphGetCurrent();
  if (!v17)
  {
    __break(1u);
  }

  v18 = v44;
  *(v16 + 56) = v43;
  *(v16 + 72) = v18;
  *(v16 + 88) = v45;
  v19 = v42;
  *(v16 + 24) = v41;
  v20 = MEMORY[0x1E69E7CC8];
  *(v16 + 128) = v17;
  *(v16 + 136) = v20;
  *(v16 + 144) = 0;
  *(v16 + 16) = v9;
  *(v16 + 20) = v11;
  *(v16 + 104) = v46;
  *(v16 + 40) = v19;
  *(v16 + 112) = v13;
  *(v16 + 120) = v14;
  *(v16 + 124) = v15;
  *&v26[0] = v16;
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  outlined init with copy of _ViewInputs(&v41, &v28);
  lazy protocol witness table accessor for type SizeFittingMux and conformance SizeFittingMux();

  Attribute.init<A>(body:value:flags:update:)();

  *&v28 = v13;
  *(&v28 + 1) = __PAIR64__(v15, v14);

  LOBYTE(v26[0]) = 0;
  _ViewOutputs.setIndirectDependency(_:)();

  if ((v12 & 2) != 0)
  {
    *&v28 = v16;
    protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
    lazy protocol witness table accessor for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer();

    Attribute.init<A>(body:value:flags:update:)();

    LOBYTE(v28) = 0;
    _ViewOutputs.layoutComputer.setter();
  }

  lazy protocol witness table accessor for type _GraphInputs.ViewThatFitsRepresentationKey and conformance _GraphInputs.ViewThatFitsRepresentationKey();
  PropertyList.subscript.getter();
  v21 = v28;
  if (v28)
  {
    v22 = *(&v28 + 1);
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v28 = v41;
    v29 = v42;
    if ((*(v22 + 8))(&v28, v21, v22))
    {
      v26[2] = v43;
      v26[3] = v44;
      v26[4] = v45;
      v27 = v46;
      v26[0] = v41;
      v26[1] = v42;
      (*(v22 + 16))(v26, v16, &v24, v21, v22);
    }
  }

  v30 = v36;
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v28 = v34;
  v29 = v35;
  outlined destroy of _ViewInputs(&v28);
  outlined destroy of _ViewListInputs(v40);
  *a4 = v24;
  result = v25;
  a4[1] = v25;
  return result;
}

unint64_t lazy protocol witness table accessor for type SizeFittingMux and conformance SizeFittingMux()
{
  result = lazy protocol witness table cache variable for type SizeFittingMux and conformance SizeFittingMux;
  if (!lazy protocol witness table cache variable for type SizeFittingMux and conformance SizeFittingMux)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingMux and conformance SizeFittingMux);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer()
{
  result = lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer;
  if (!lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer;
  if (!lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer);
  }

  return result;
}

__n128 __swift_memcpy177_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical()
{
  result = lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical;
  if (!lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical);
  }

  return result;
}

BOOL _SizeFittingRoot.size(_:fits:)(double a1, double a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v7 = COERCE_DOUBLE(_ProposedSize.width.getter());
    if ((v8 & 1) == 0 && v7 < a1)
    {
      return 0;
    }
  }

  if ((a4 & 2) == 0)
  {
    return 1;
  }

  v10 = COERCE_DOUBLE(_ProposedSize.height.getter());
  if (v11)
  {
    v10 = INFINITY;
  }

  return v10 >= a2;
}

uint64_t closure #1 in SizeFittingState.applyChildren(selectLast:to:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *, BOOL))
{
  v9 = *(a1 + 8);
  if (v9 < 0)
  {
    goto LABEL_65;
  }

  if (!v9)
  {
    return 1;
  }

  v10 = a5;
  v12 = a2;
  v7 = 0;
  v105 = a3 - 1;
  v99 = *(a1 + 8);
  while (v7 != 0x80000000)
  {
    v6 = *(a1 + 20);
    v13 = *(a1 + 24);
    v14 = *(v13 + 16);
    swift_bridgeObjectRetain_n();
    if (v14)
    {
      v8 = *(v13 + 32);
      v15 = *(v13 + 52);

      swift_bridgeObjectRelease_n();
      if (v15)
      {
        v6 = 0xFFFFFFFFLL;
      }

      else
      {
        v6 = v6;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v8 = 0;
    }

    v16 = *v12;
    swift_beginAccess();
    v17 = *(a4 + 136);
    if (*(v17 + 16))
    {
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
      if (v19)
      {
        v20 = (*(v17 + 56) + 48 * v18);
        v22 = *v20;
        v21 = v20[1];
        *&v122[9] = *(v20 + 25);
        v121 = v22;
        *v122 = v21;
        v23 = v122[24];
        v107 = *v20;
        v103 = v21;
        v101 = *&v122[8];
        swift_endAccess();
        v24 = v23;
        if ((v23 & 1) != 0 || *(v10 + 8) == 1)
        {
          v25 = v16;
          v26 = *(a4 + 144);
          if (*&v122[16] == v26)
          {
            goto LABEL_67;
          }

          v114 = v107;
          *v115 = v103;
          *&v115[8] = v101;
          *&v115[16] = v26;
          *&v115[20] = v25;
          v98 = v24;
          v115[24] = v24;
          swift_beginAccess();
          outlined init with copy of SizeFittingState.Child(&v121, &v126);

          outlined init with copy of SizeFittingState.Child(&v114, &v126);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = *(a4 + 136);
          v28 = v109;
          *(a4 + 136) = 0x8000000000000000;
          v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
          v31 = v28[2];
          v32 = (v30 & 1) == 0;
          v33 = __OFADD__(v31, v32);
          v34 = v31 + v32;
          if (v33)
          {
            goto LABEL_62;
          }

          v35 = v30;
          if (v28[3] >= v34)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_36;
            }

            v86 = v29;
            specialized _NativeDictionary.copy()();
            v29 = v86;
            v10 = a5;
            if ((v35 & 1) == 0)
            {
              goto LABEL_48;
            }

LABEL_37:
            v71 = v109;
            v72 = (v109[7] + 48 * v29);
            v73 = *(v72 + 25);
            v74 = v72[1];
            v126 = *v72;
            *v127 = v74;
            *&v127[9] = v73;
            v75 = v114;
            v76 = *v115;
            *(v72 + 25) = *&v115[9];
            *v72 = v75;
            v72[1] = v76;
            outlined destroy of SizeFittingState.Child(&v126);
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, isUniquelyReferenced_nonNull_native);
            v29 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
            if ((v35 & 1) != (v36 & 1))
            {
              goto LABEL_66;
            }

LABEL_36:
            v10 = a5;
            if (v35)
            {
              goto LABEL_37;
            }

LABEL_48:
            v71 = v109;
            v109[(v29 >> 6) + 8] |= 1 << v29;
            v87 = v71[6] + 16 * v29;
            *v87 = v7;
            *(v87 + 4) = v6;
            *(v87 + 8) = v8;
            v88 = (v71[7] + 48 * v29);
            v89 = *&v115[9];
            v90 = *v115;
            *v88 = v114;
            v88[1] = v90;
            *(v88 + 25) = v89;
            v91 = v71[2];
            v33 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v33)
            {
              goto LABEL_64;
            }

            v71[2] = v92;
          }

          LODWORD(v6) = v101;
          *(a4 + 136) = v71;
          swift_endAccess();
          v12 = a2;
          if (*(v10 + 8))
          {
            *&v110 = v103;
            *(&v110 + 1) = v101;

            v93 = a6(&v110, v25 == v105);

            v126 = v107;
            *v127 = v103;
            *&v127[8] = v101;
            *&v127[16] = v26;
            v16 = v25;
            *&v127[20] = v25;
            v127[24] = v98;
            outlined destroy of SizeFittingState.Child(&v126);
            v9 = v99;
            v10 = a5;
            if (v93)
            {
              *a5 = *a2;
              *(a5 + 8) = 0;
            }

            goto LABEL_55;
          }

          v126 = v107;
          *v127 = v103;
          *&v127[8] = v101;
          *&v127[16] = v26;
          v16 = v25;
          *&v127[20] = v25;
          v127[24] = v98;
          v77 = &v126;
        }

        else
        {
          v114 = v107;
          *v115 = v103;
          *&v115[8] = v101;
          v115[24] = v23;
          outlined init with copy of SizeFittingState.Child(&v121, &v126);
          v77 = &v114;
        }

        outlined destroy of SizeFittingState.Child(v77);

        v9 = v99;
        goto LABEL_55;
      }
    }

    swift_endAccess();
    if ((*(v10 + 8) & 1) == 0)
    {

      goto LABEL_55;
    }

    v104 = v16;
    v37 = AGSubgraphGetGraph();
    v38 = AGSubgraphCreate();

    AGGraphClearUpdate();
    v102 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v39 = *(a4 + 56);
    *v122 = *(a4 + 40);
    *&v122[16] = v39;
    v40 = *(a4 + 88);
    v123 = *(a4 + 72);
    v124 = v40;
    v125 = *(a4 + 104);
    v41 = *v122;
    v120 = *(a4 + 24);
    v121 = v120;
    v42 = *(a4 + 48);
    v43 = *(a4 + 64);
    v44 = *(a4 + 80);
    *(v119 + 12) = *(a4 + 92);
    v118 = v43;
    v119[0] = v44;
    v117 = v42;
    swift_beginAccess();
    v45 = v41[3];
    *v127 = v41[2];
    *&v127[16] = v45;
    v46 = v41[5];
    v128 = v41[4];
    v129 = v46;
    v126 = v41[1];
    type metadata accessor for MutableBox<CachedEnvironment>();
    v47 = swift_allocObject();
    memmove((v47 + 16), v41 + 1, 0x50uLL);
    outlined init with copy of _ViewInputs(&v121, &v114);
    outlined init with copy of CachedEnvironment(&v126, &v114);

    outlined init with copy of _ViewList_SubgraphElements(a1 + 32, &v110);
    v109 = v7;
    *&v114 = *&v111[24];
    v48 = 0;
    v49 = 0;
    if (_ViewList_SublistSubgraphStorage.isValid.getter())
    {
      v50 = *&v111[8];
      v51 = *&v111[16];
      __swift_project_boxed_opaque_existential_1(&v110, *&v111[8]);
      v114 = v120;
      *v115 = v47;
      *&v115[8] = v117;
      *&v115[24] = v118;
      v116[0] = v119[0];
      *(v116 + 12) = *(v119 + 12);
      (*(v51 + 16))(&v107, &v109, &v114, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeOneElement(at:inputs:indirectMap:body:), 0, v50, v51);
      v48 = *(&v107 + 1);
      v49 = v107;
    }

    if (swift_isEscapingClosureAtFileLocation())
    {
      goto LABEL_60;
    }

    outlined destroy of _ViewList_SubgraphElements(&v110);
    if (v49)
    {
      v112 = v49;
      v52 = HIDWORD(v48);
      v113 = v48;
    }

    else
    {
      _ViewOutputs.init()();
      v49 = v112;
      LODWORD(v48) = v113;
      LODWORD(v52) = HIDWORD(v113);
    }

    *&v107 = *(a1 + 72);

    v53 = _ViewList_SublistSubgraphStorage.retain()();

    v114 = v120;
    *v115 = v47;
    *&v115[8] = v117;
    *&v115[24] = v118;
    v116[0] = v119[0];
    *(v116 + 12) = *(v119 + 12);
    outlined destroy of _ViewInputs(&v114);
    v54 = *(a4 + 144);
    v55 = v38;
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *&v110 = v55;
    *(&v110 + 1) = v53;
    *v111 = v49;
    *&v111[8] = v48;
    *&v111[12] = v52;
    *&v111[16] = v54;
    *&v111[20] = v104;
    v111[24] = 0;
    swift_beginAccess();

    outlined init with copy of SizeFittingState.Child(&v110, &v107);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(a4 + 136);
    *(a4 + 136) = 0x8000000000000000;
    v58 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
    v60 = v57[2];
    v61 = (v59 & 1) == 0;
    v33 = __OFADD__(v60, v61);
    v62 = v60 + v61;
    if (v33)
    {
      goto LABEL_61;
    }

    v63 = v59;
    if (v57[3] >= v62)
    {
      v9 = v99;
      v10 = a5;
      if (v56)
      {
        if ((v59 & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v78 = v58;
        specialized _NativeDictionary.copy()();
        v58 = v78;
        if ((v63 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v62, v56);
      v58 = specialized __RawDictionaryStorage.find<A>(_:)(&v7[0x20000000 * v6], v8);
      v9 = v99;
      if ((v63 & 1) != (v64 & 1))
      {
        goto LABEL_66;
      }

      v10 = a5;
      if ((v63 & 1) == 0)
      {
LABEL_40:
        v65 = v57;
        v57[(v58 >> 6) + 8] |= 1 << v58;
        v79 = v57[6] + 16 * v58;
        *v79 = v7;
        *(v79 + 4) = v6;
        *(v79 + 8) = v8;
        v80 = (v57[7] + 48 * v58);
        v81 = *&v111[9];
        v82 = *v111;
        *v80 = v110;
        v80[1] = v82;
        *(v80 + 25) = v81;
        v83 = v57[2];
        v33 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v33)
        {
          goto LABEL_63;
        }

        v57[2] = v84;
        goto LABEL_42;
      }
    }

    v65 = v57;
    v66 = (v57[7] + 48 * v58);
    v67 = *(v66 + 25);
    v68 = v66[1];
    v107 = *v66;
    v108[0] = v68;
    *(v108 + 9) = v67;
    v69 = v110;
    v70 = *v111;
    *(v66 + 25) = *&v111[9];
    *v66 = v69;
    v66[1] = v70;
    outlined destroy of SizeFittingState.Child(&v107);

LABEL_42:
    *(a4 + 136) = v65;
    swift_endAccess();
    if (*(v10 + 8) == 1)
    {
      v107 = *v111;

      v85 = a6(&v107, v104 == v105);

      outlined destroy of SizeFittingState.Child(&v110);

      if (v85)
      {
        v12 = a2;
        *v10 = *a2;
        *(v10 + 8) = 0;
        v16 = v104;
        goto LABEL_55;
      }
    }

    else
    {

      outlined destroy of SizeFittingState.Child(&v110);
    }

    v12 = a2;
    v16 = v104;
LABEL_55:
    if (v16 != v105)
    {
      v7 = (v7 + 1);
      ++*v12;
      if (v9 != v7)
      {
        continue;
      }
    }

    return v16 != v105;
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_67:
  *&v126 = 0;
  *(&v126 + 1) = 0xE000000000000000;
  outlined init with copy of SizeFittingState.Child(&v121, &v114);
  _StringGuts.grow(_:)(33);

  *&v114 = 0xD00000000000001FLL;
  *(&v114 + 1) = 0x800000018CD4E8E0;
  *&v126 = __PAIR64__(v6, v7);
  *(&v126 + 1) = v8;
  v95 = _ViewList_ID.Canonical.description.getter();
  MEMORY[0x18D00C9B0](v95);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t destroy for SizeFittingState.Child(id *a1)
{
}

uint64_t outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)()
{
  if (!lazy cache variable for type metadata for (key: _ViewList_ID.Canonical, value: SizeFittingState.Child))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (key: _ViewList_ID.Canonical, value: SizeFittingState.Child));
    }
  }
}

uint64_t View.accessibilityLabel(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v8 = Text.init(_:tableName:bundle:comment:)();
  v10 = v9;
  v12 = v11;
  View.accessibilityLabel(_:)(v8, v9, v11 & 1, v13, a5, a6);
  outlined consume of Text.Storage(v8, v10, v12 & 1);
}

uint64_t SizeFittingLayoutComputer.updateValue()()
{
  v1 = *v0;
  Value = AGGraphGetValue();
  result = AGGraphGetCurrentAttribute();
  if (result == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *Value;

    default argument 0 of ViewSizeCache.init(cache:)();
    ViewSizeCache.init(cache:)();
    LOBYTE(v6) = v5;
    DWORD1(v6) = v4;
    *(&v6 + 1) = v1;
    lazy protocol witness table accessor for type SizeFittingLayoutComputer and conformance SizeFittingLayoutComputer();
    lazy protocol witness table accessor for type SizeFittingLayoutComputer.Engine and conformance SizeFittingLayoutComputer.Engine();
    StatefulRule<>.update<A>(to:)();
    v18[8] = v14;
    v18[9] = v15;
    v18[10] = v16;
    v19 = v17;
    v18[4] = v10;
    v18[5] = v11;
    v18[6] = v12;
    v18[7] = v13;
    v18[0] = v6;
    v18[1] = v7;
    v18[2] = v8;
    v18[3] = v9;
    return outlined destroy of SizeFittingLayoutComputer.Engine(v18);
  }

  return result;
}

uint64_t closure #1 in ViewThatFits.init(in:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  static ViewBuilder.buildExpression<A>(_:)(v9, a3, a4);
  v13 = *(v6 + 8);
  v13(v9, a3);
  static ViewBuilder.buildExpression<A>(_:)(v12, a3, a4);
  return (v13)(v12, a3);
}

unint64_t lazy protocol witness table accessor for type SizeFittingLayoutComputer.Engine and conformance SizeFittingLayoutComputer.Engine()
{
  result = lazy protocol witness table cache variable for type SizeFittingLayoutComputer.Engine and conformance SizeFittingLayoutComputer.Engine;
  if (!lazy protocol witness table cache variable for type SizeFittingLayoutComputer.Engine and conformance SizeFittingLayoutComputer.Engine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SizeFittingLayoutComputer.Engine and conformance SizeFittingLayoutComputer.Engine);
  }

  return result;
}

uint64_t initializeWithCopy for SizeFittingLayoutComputer.Engine(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v3;
  *(a1 + 176) = *(a2 + 176);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  v5 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v5;
  v6 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v6;
  v7 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v7;

  return a1;
}

uint64_t initializeWithCopy for SpatialTapGesture(uint64_t result, uint64_t a2)
{
  *result = *a2;
  if (*(a2 + 48))
  {
    v2 = *(a2 + 24);
    *(result + 8) = *(a2 + 8);
    *(result + 24) = v2;
    *(result + 33) = *(a2 + 33);
  }

  else
  {
    v3 = *(a2 + 32);
    *(result + 32) = v3;
    v4 = result;
    (**(v3 - 8))(result + 8, a2 + 8);
    result = v4;
    *(v4 + 48) = 0;
  }

  return result;
}

uint64_t outlined destroy of SpatialTapGesture(uint64_t result)
{
  if (!*(result + 48))
  {
    v1 = result;
    __swift_destroy_boxed_opaque_existential_1(result + 8);
    return v1;
  }

  return result;
}

uint64_t static CustomHoverEffect<>.automatic.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

BOOL closure #1 in closure #1 in closure #1 in SizeFittingLayoutComputer.Engine.sizeThatFits(_:)(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, char a5, uint64_t a6, char a7, void *a8)
{
  v25 = *a1;
  v26 = a1[1];
  if ((_ViewOutputs.layoutComputer.getter() & 0x100000000) != 0)
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  v25 = a4;
  LOBYTE(v26) = a5 & 1;
  v27 = a6;
  v28 = a7 & 1;
  if (Axis.Set.contains(_:)())
  {
    _ProposedSize.width.setter();
  }

  if (Axis.Set.contains(_:)())
  {
    _ProposedSize.height.setter();
  }

  LayoutComputer.sizeThatFits(_:)();
  v15 = v14;
  v17 = v16;
  v25 = a4;
  v18 = a5 & 1;
  LOBYTE(v26) = v18;
  v27 = a6;
  v19 = a7 & 1;
  v28 = v19;
  LayoutComputer.sizeThatFits(_:)();
  *a8 = v20;
  a8[1] = v21;
  v22 = *a3;
  v25 = a4;
  LOBYTE(v26) = v18;
  v27 = a6;
  v28 = v19;
  v23 = _SizeFittingRoot.size(_:fits:)(v15, v17, &v25, v22);

  return v23;
}

uint64_t SizeFittingState.applyChildren(selectLast:to:)(char a1)
{
  v2 = v1;
  ++*(v1 + 144);
  v77 = 0;
  v78 = 0;
  v75 = 0;
  v76 = 1;
  type metadata accessor for CVarArg(0, &lazy cache variable for type metadata for ViewList);
  Value = AGGraphGetValue();
  outlined init with copy of _Benchmark(Value, v72);
  __swift_project_boxed_opaque_existential_1(v72, *(&v73 + 1));
  ViewList.count.getter();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v5 = AGGraphGetValue();
  outlined init with copy of _Benchmark(v5, v72);
  __swift_project_boxed_opaque_existential_1(v72, *(&v73 + 1));
  LOBYTE(v67) = 0;
  ViewList.applySublists(from:list:to:)();
  __swift_destroy_boxed_opaque_existential_1(v72);
  swift_beginAccess();

  v7 = specialized _NativeDictionary.filter(_:)(v6, v1);

  *(v1 + 136) = v7;

  if ((v76 & 1) != 0 || (a1 & 1) == 0)
  {
    return result;
  }

  v9 = *(v1 + 136);
  v12 = *(v9 + 64);
  v11 = v9 + 64;
  v10 = v12;
  v13 = v75;
  v14 = 1 << *(*(v1 + 136) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v10;
  v17 = (v14 + 63) >> 6;
  v59 = *(v2 + 136);
  swift_bridgeObjectRetain_n();
  v18 = 0;
  v57 = v17;
  v58 = v13;
  v56 = v11;
  while (v16)
  {
LABEL_13:
    v25 = __clz(__rbit64(v16)) | (v18 << 6);
    v26 = (*(v59 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v26 + 1);
    v30 = (*(v59 + 56) + 48 * v25);
    v31 = *(v30 + 25);
    v32 = v30[1];
    v70 = *v30;
    *v71 = v32;
    *&v71[9] = v31;
    v62 = v28;
    v63 = v27;
    v72[0] = __PAIR64__(v28, v27);
    v72[1] = v29;
    v73 = v70;
    v74[0] = *v71;
    *(v74 + 9) = v31;
    v69 = v70;
    v33 = v32;
    v34 = *&v71[8];
    v64 = v31 >> 24;
    v35 = v31 >> 56;
    v61 = *&v71[8];
    if (HIBYTE(v31) == (v13 == (*(&v31 + 1) >> 24)))
    {
      v37 = v71[24];

      outlined init with copy of SizeFittingState.Child(&v70, &v67);
      outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v72, &v67);
    }

    else
    {
      v36 = *&v71[16];
      if (v13 == *&v71[20])
      {

        outlined init with copy of SizeFittingState.Child(&v70, &v67);
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v72, &v67);
        v34 = v61;
        AGSubgraphAddChild();
        AGSubgraphRef.didReinsert()();
        v67 = *(v2 + 112);
        *&v65 = v33;
        *(&v65 + 1) = __PAIR64__(v64, v61);

        _ViewOutputs.attachIndirectOutputs(to:)();

        v37 = 1;
      }

      else
      {

        outlined init with copy of SizeFittingState.Child(&v70, &v67);
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v72, &v67);
        AGSubgraphRef.willRemove()();
        AGSubgraphRemoveChild();
        v37 = 0;
      }

      v35 = v36;
    }

    v67 = v69;
    *v68 = v33;
    *&v68[8] = v34;
    *&v68[12] = v64;
    v38 = v35;
    *&v68[16] = v35;
    v60 = v37;
    v68[24] = v37;
    swift_beginAccess();

    outlined init with copy of SizeFittingState.Child(&v67, &v65);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v2 + 136);
    *(v2 + 136) = 0x8000000000000000;
    v41 = specialized __RawDictionaryStorage.find<A>(_:)(v63 | (v62 << 32), v29);
    v43 = v40[2];
    v44 = (v42 & 1) == 0;
    v45 = __OFADD__(v43, v44);
    v46 = v43 + v44;
    if (v45)
    {
      goto LABEL_32;
    }

    v47 = v42;
    if (v40[3] >= v46)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = v41;
        specialized _NativeDictionary.copy()();
        v41 = v55;
      }

      v13 = v58;
      if (v47)
      {
        goto LABEL_6;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, isUniquelyReferenced_nonNull_native);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v63 | (v62 << 32), v29);
      if ((v47 & 1) != (v48 & 1))
      {
        goto LABEL_34;
      }

      v13 = v58;
      if (v47)
      {
LABEL_6:
        v19 = (v40[7] + 48 * v41);
        v20 = *(v19 + 25);
        v21 = v19[1];
        v65 = *v19;
        *v66 = v21;
        *&v66[9] = v20;
        v22 = v67;
        v23 = *v68;
        *(v19 + 25) = *&v68[9];
        *v19 = v22;
        v19[1] = v23;
        outlined destroy of SizeFittingState.Child(&v65);

        goto LABEL_7;
      }
    }

    v40[(v41 >> 6) + 8] |= 1 << v41;
    v49 = v40[6] + 16 * v41;
    *v49 = v63;
    *(v49 + 4) = v62;
    *(v49 + 8) = v29;
    v50 = (v40[7] + 48 * v41);
    v51 = *&v68[9];
    v52 = *v68;
    *v50 = v67;
    v50[1] = v52;
    *(v50 + 25) = v51;
    v53 = v40[2];
    v45 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v45)
    {
      goto LABEL_33;
    }

    v40[2] = v54;
LABEL_7:
    v16 &= v16 - 1;
    *(v2 + 136) = v40;
    swift_endAccess();
    outlined destroy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v72);

    v65 = v69;
    *v66 = v33;
    *&v66[8] = v61;
    *&v66[12] = v64;
    *&v66[16] = v38;
    v66[24] = v60;
    outlined destroy of SizeFittingState.Child(&v65);
    v11 = v56;
    v17 = v57;
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= v17)
    {
    }

    v16 = *(v11 + 8 * v24);
    ++v18;
    if (v16)
    {
      v18 = v24;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in SizeFittingLayoutComputer.Engine.explicitAlignment(_:at:)()
{

  SizeFittingState.applyChildren(selectLast:to:)(0);
}

uint64_t closure #1 in closure #1 in SizeFittingLayoutComputer.Engine.explicitAlignment(_:at:)(double *a1, char a2, char *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v26 = *a1;
  v27 = a1[1];
  if ((_ViewOutputs.layoutComputer.getter() & 0x100000000) != 0)
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  v27 = a6;
  v29 = a8;
  ViewSize.proposal.getter();
  v26 = v22;
  LOBYTE(v27) = v23;
  v28 = v24;
  LOBYTE(v29) = v25;
  if (Axis.Set.contains(_:)())
  {
    _ProposedSize.width.setter();
  }

  if (Axis.Set.contains(_:)())
  {
    _ProposedSize.height.setter();
  }

  LayoutComputer.sizeThatFits(_:)();
  if ((a2 & 1) != 0 || (v16 = *a3, v26 = v22, LOBYTE(v27) = v23, v28 = v24, LOBYTE(v29) = v25, _SizeFittingRoot.size(_:fits:)(v14, v15, &v26, v16)))
  {
    v26 = a5;
    v27 = a6;
    v28 = a7;
    v29 = a8;
    v17 = LayoutComputer.explicitAlignment(_:at:)();
    v19 = v18;

    *a4 = v17;
    *(a4 + 8) = v19 & 1;
    return 1;
  }

  else
  {

    return 0;
  }
}

BOOL closure #1 in SizeFittingMux.updateValue()(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7)
{
  v19 = *a1;
  v20 = a1[1];
  if ((_ViewOutputs.layoutComputer.getter() & 0x100000000) != 0)
  {
    static LayoutComputer.defaultValue.getter();
  }

  else
  {
    AGGraphGetValue();
  }

  AGGraphGetValue();

  v19 = a4;
  LOBYTE(v20) = a5 & 1;
  v21 = a6;
  v22 = a7 & 1;
  if (Axis.Set.contains(_:)())
  {
    _ProposedSize.width.setter();
  }

  if (Axis.Set.contains(_:)())
  {
    _ProposedSize.height.setter();
  }

  LayoutComputer.sizeThatFits(_:)();
  if (a2)
  {

    return 1;
  }

  else
  {
    v15 = v12;
    v16 = v13;

    v17 = *AGGraphGetValue();

    v19 = a4;
    LOBYTE(v20) = a5 & 1;
    v21 = a6;
    v22 = a7 & 1;
    v14 = _SizeFittingRoot.size(_:fits:)(v15, v16, &v19, v17);
  }

  return v14;
}

uint64_t outlined destroy of _EndedGesture<SpatialTapGesture>(uint64_t a1)
{
  type metadata accessor for SingleTapGesture<TappableSpatialEvent>(0, &lazy cache variable for type metadata for _EndedGesture<SpatialTapGesture>, &type metadata for SpatialTapGesture, &protocol witness table for SpatialTapGesture, MEMORY[0x1E697E230]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.accessibilitySortPriority(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a3;
  v5 = 0;
  return View.accessibility<A>(_:_:isEnabled:)(MEMORY[0x1E6980040], &v4, 1, a1, MEMORY[0x1E6980040], a2);
}

uint64_t initializeWithCopy for SizeFittingState.Child(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v5 = v3;

  return a1;
}

uint64_t View.coordinateSpace<A>(name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _CoordinateSpaceModifier();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  MEMORY[0x18D00A570](v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

_BYTE *initializeWithCopy for TextInputSuggestionsModifier(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 16))(&a1[*(v4 + 80) + 1] & ~*(v4 + 80), &a2[*(v4 + 80) + 1] & ~*(v4 + 80));
  return a1;
}

uint64_t View.onTapGesture<A>(count:coordinateSpace:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(a6 - 8);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v14);
  v20 = a1;
  (*(a8 + 8))(v21, a6, a8);
  (*(v13 + 8))(v16, a6);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;

  Gesture.onEnded(_:)();

  outlined destroy of SpatialTapGesture(&v20);
  type metadata accessor for SingleTapGesture<TappableSpatialEvent>(0, &lazy cache variable for type metadata for _EndedGesture<SpatialTapGesture>, &type metadata for SpatialTapGesture, &protocol witness table for SpatialTapGesture, MEMORY[0x1E697E230]);
  lazy protocol witness table accessor for type _EndedGesture<SpatialTapGesture> and conformance _EndedGesture<A>();
  View.gesture<A>(_:including:)();
  return outlined destroy of _EndedGesture<SpatialTapGesture>(v22);
}

uint64_t sub_18BE49CAC()
{

  return swift_deallocObject();
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v29 = v8;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v10);
    v31 = v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v9);
    v8 = a1 + 64;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v3 = v12 & *(a1 + 64);
    v13 = (v11 + 63) >> 6;

    v32 = 0;
    v14 = 0;
    while (v3)
    {
      v15 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v9 = v15 | (v14 << 6);
      v18 = (*(a1 + 48) + 16 * v9);
      v19 = v18[1];
      v20 = (*(a1 + 56) + 48 * v9);
      v21 = *v18;
      v22 = *(v20 + 25);
      v23 = v20[1];
      v34 = *v20;
      *v35 = v23;
      *&v35[9] = v22;
      v36[0] = v21;
      v36[1] = v19;
      *(v38 + 9) = v22;
      v37 = v34;
      v38[0] = *v35;
      if ((v22 >> 56) == *(a2 + 144))
      {
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v36, v33);
        outlined destroy of SizeFittingState.Child(&v34);

        *&v31[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
        }

        ++v32;
      }

      else
      {
        v9 = v34;
        v24 = v35[24];
        outlined init with copy of (key: _ViewList_ID.Canonical, value: SizeFittingState.Child)(v36, v33);
        outlined init with copy of SizeFittingState.Child(&v34, v33);
        AGSubgraphRef.willInvalidate(isInserted:)(v24);
        AGSubgraphInvalidate();
        outlined destroy of SizeFittingState.Child(&v34);
        outlined destroy of SizeFittingState.Child(&v34);
      }
    }

    v16 = v14;
    while (1)
    {
      v14 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        v25 = specialized _NativeDictionary.extractDictionary(using:count:)(v31, v29, v32, a1);

        return v25;
      }

      v17 = *(v8 + 8 * v14);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v3 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI12_ViewList_IDV9CanonicalVAH16SizeFittingStateC5ChildVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i5UI12_kl5_IDV9n6V_AI16opq2C5R4VTG5AQxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAlPIsgnndzo_Tf1nc_n03_s7i4UI16opq42C13applyChildren10selectLast2toySb_SbAA12_k25OutputsV_SbtXEtFSbAA01_K7l5_IDV9n9V3key_AC5R16V5valuet_tXEfU0_ANTf1nnc_n(v27, v8, a1, a2);
  MEMORY[0x18D0110E0](v27, -1, -1);

  return v25;
}

{
  v3 = a1;
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_18;
  }

  while (1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v7 = v23 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = OBJC_IVAR____TtC7SwiftUI17AccessibilityNode_version;
    while (v12)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v16 = v15 | (v9 << 6);
LABEL_12:
      if (*(*(*(v3 + 56) + 16 * v16) + v14) == a2)
      {
        *&v7[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v7, v5, v8, v3);
        }
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return specialized _NativeDictionary.extractDictionary(using:count:)(v7, v5, v8, v3);
      }

      v18 = *(v3 + 64 + 8 * v9);
      ++v17;
      if (v18)
      {
        v12 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v9 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_18:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();
  v22 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI11DisplayListV5IndexV2IDVAjHE20AccessibilityUpdaterC10CacheValue33_F67A5B088801B75514018BB348F773CDLLVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i4UI11kl2V5m12V2IDV_AkIE20op3C10q8Value33_stuvwX8CDLLVTG5ATxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAnSIsgnndzo_Tf1nc_n03_s7i4UI11kl6VAAE20op87C6update4list4size9transform15geometryChangedSbAC_So6CGSizeVAA13ViewTransformVSbtFSbAC5m14V2IDV3key_AE10q8Value33_stuvwX19CDLLV5valuet_tXEfU_AJ7VersionVTf1nnc_n(v21, v5, v3, a2);
  MEMORY[0x18D0110E0](v21, -1, -1);
  return v22;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, SizeFittingState.Child>();
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = (*(v4 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = (*(v4 + 56) + 48 * v16);
    v20 = *v17;
    v21 = *(v19 + 25);
    v22 = v19[1];
    v40 = *v19;
    v41[0] = v22;
    *(v41 + 9) = v21;
    v38 = v20;
    v39 = v18;
    Hasher.init(_seed:)();

    outlined init with copy of SizeFittingState.Child(&v40, v37);
    _ViewList_ID.Canonical.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    v32 = v39;
    *v31 = v38;
    v31[1] = v32;
    v33 = (*(v9 + 56) + 48 * v26);
    v34 = *(v41 + 9);
    v35 = v41[0];
    *v33 = v40;
    v33[1] = v35;
    *(v33 + 25) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
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
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<ViewIdentity, AlertStorage>();
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v54 = v4;
  if (v10)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v16 = v13 | (v11 << 6);
      v17 = *(v4 + 56);
      v18 = *(*(v4 + 48) + 4 * v16);
      v19 = (v17 + 248 * v16);
      v21 = *v19;
      v20 = v19[1];
      v22 = v19[3];
      v58 = v19[2];
      v59 = v22;
      v23 = v19[7];
      v25 = v19[4];
      v24 = v19[5];
      v62 = v19[6];
      v63 = v23;
      v60 = v25;
      v61 = v24;
      v26 = v19[11];
      v28 = v19[8];
      v27 = v19[9];
      v66 = v19[10];
      v67 = v26;
      v64 = v28;
      v65 = v27;
      v30 = v19[13];
      v29 = v19[14];
      v31 = v19[12];
      v71 = *(v19 + 30);
      v69 = v30;
      v70 = v29;
      v68 = v31;
      v56 = v21;
      v57 = v20;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v32 = -1 << *(v9 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        break;
      }

      v35 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v12 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      *(*(v9 + 48) + 4 * v35) = v18;
      v40 = *(v9 + 56) + 248 * v35;
      v41 = v56;
      v42 = v57;
      v43 = v59;
      *(v40 + 32) = v58;
      *(v40 + 48) = v43;
      *v40 = v41;
      *(v40 + 16) = v42;
      v44 = v60;
      v45 = v61;
      v46 = v63;
      *(v40 + 96) = v62;
      *(v40 + 112) = v46;
      *(v40 + 64) = v44;
      *(v40 + 80) = v45;
      v47 = v64;
      v48 = v65;
      v49 = v67;
      *(v40 + 160) = v66;
      *(v40 + 176) = v49;
      *(v40 + 128) = v47;
      *(v40 + 144) = v48;
      v50 = v68;
      v51 = v69;
      v52 = v70;
      *(v40 + 240) = v71;
      *(v40 + 208) = v51;
      *(v40 + 224) = v52;
      *(v40 + 192) = v50;
      ++*(v9 + 16);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_34;
      }

      if (!v5)
      {
        outlined init with copy of AlertStorage(&v56, v55);
        return v9;
      }

      result = outlined init with copy of AlertStorage(&v56, v55);
      v4 = v54;
      if (!v10)
      {
        goto LABEL_10;
      }
    }

    v36 = 0;
    v37 = (63 - v32) >> 6;
    while (++v34 != v37 || (v36 & 1) == 0)
    {
      v38 = v34 == v37;
      if (v34 == v37)
      {
        v34 = 0;
      }

      v36 |= v38;
      v39 = *(v12 + 8 * v34);
      if (v39 != -1)
      {
        v35 = __clz(__rbit64(~v39)) + (v34 << 6);
        goto LABEL_25;
      }
    }
  }

  else
  {
LABEL_10:
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
        return v9;
      }

      v15 = a1[v11];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<ViewIdentity, ConfirmationDialog>();
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 4 * v16);
    outlined init with copy of ConfirmationDialog(*(v4 + 56) + 184 * v16, v28);
    outlined init with take of ConfirmationDialog(v28, v27);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 4 * v21) = v17;
    result = outlined init with take of ConfirmationDialog(v27, *(v9 + 56) + 184 * v21);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
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
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<Namespace.ID, NavigationDestinationPresentation>();
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(*(v4 + 48) + 8 * v16);
    outlined init with copy of NavigationDestinationPresentation(v17 + 96 * v16, v35);
    v32 = v35[2];
    v33 = v35[3];
    *v34 = v36[0];
    *&v34[9] = *(v36 + 9);
    v30 = v35[0];
    v31 = v35[1];
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v18);
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    v27 = (*(v9 + 56) + 96 * v22);
    v27[2] = v32;
    v27[3] = v33;
    v27[4] = *v34;
    *(v27 + 73) = *&v34[9];
    *v27 = v30;
    v27[1] = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
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
      return v9;
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
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<DisplayList.Index.ID, DisplayList.AccessibilityUpdater.CacheValue>();
  result = static _DictionaryStorage.allocate(capacity:)();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 64;
  v36 = v4;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v37 = (v9 - 1) & v9;
LABEL_16:
    v15 = 16 * (v12 | (v10 << 6));
    v16 = *(v4 + 56);
    v17 = (*(v4 + 48) + v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v38 = *(v16 + v15);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v19);
    Hasher._combine(_:)(v18);
    Hasher._combine(_:)(v20);
    Hasher._combine(_:)(v21);
    result = Hasher._finalize()();
    v22 = -1 << *(v8 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v22) >> 6;
      v26 = v38;
      while (++v24 != v28 || (v27 & 1) == 0)
      {
        v29 = v24 == v28;
        if (v24 == v28)
        {
          v24 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v24);
        if (v30 != -1)
        {
          v25 = __clz(__rbit64(~v30)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
    v26 = v38;
LABEL_26:
    *(v11 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v31 = 16 * v25;
    v32 = (*(v8 + 48) + v31);
    *v32 = v19;
    v32[1] = v18;
    v32[2] = v20;
    v32[3] = v21;
    *(*(v8 + 56) + v31) = v26;
    ++*(v8 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v34 = v26;

    v4 = v36;
    v9 = v37;
    if (!v5)
    {
      return v8;
    }
  }

  v13 = v10;
  while (1)
  {
    v10 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      return v8;
    }

    v14 = a1[v10];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v37 = (v14 - 1) & v14;
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
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<TabCustomizationID, TabCustomizationEntry>();
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  v34 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v35 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = *(v4 + 48) + 24 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = (v17 + 2 * v16);
    v36 = v22[1];
    v37 = *v22;
    Hasher.init(_seed:)();
    MEMORY[0x18D00F6F0](v21);

    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 24 * v26;
    *v31 = v19;
    *(v31 + 8) = v20;
    *(v31 + 16) = v21;
    v32 = (*(v9 + 56) + 2 * v26);
    *v32 = v37;
    v32[1] = v36;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v10 = v35;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
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
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  type metadata accessor for _DictionaryStorage<AccessibilityEnabledTechnology, AccessibilityFocus.Target>();
  result = static _DictionaryStorage.allocate(capacity:)();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    outlined init with copy of AccessibilityFocus.Target(*(v4 + 56) + 8 * v16, v28);
    outlined init with take of AccessibilityFocus.Target(v28, v27);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    result = Hasher._finalize()();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    result = outlined init with take of AccessibilityFocus.Target(v27, *(v9 + 56) + 8 * v21);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
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