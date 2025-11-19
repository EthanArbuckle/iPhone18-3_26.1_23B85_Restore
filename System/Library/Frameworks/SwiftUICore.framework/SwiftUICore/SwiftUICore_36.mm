uint64_t protocol witness for static View._makeView(view:inputs:) in conformance LinearGradient@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA14LinearGradientVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v26 = a3;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(a2 + 8);
    v9 = *(a2 + 16);
    v11 = *(a2 + 24);
    v10 = *(a2 + 28);
    v12 = *(a2 + 36);
    swift_beginAccess();
    v13 = *(v9 + 16);
    v14 = *(a2 + 48);
    v32 = *(a2 + 32);
    v33 = v14;
    v34 = *(a2 + 64);
    v35 = *(a2 + 80);
    v15 = *(a2 + 16);
    v30 = *a2;
    v31 = v15;
    _ViewInputs.materialSubstrate.getter(&v36 + 13);
    v16 = a1;
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for PropertyList.Tracker();
    v18 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC8];
    *(v19 + 24) = 0;
    *(v19 + 32) = v20;
    v21 = MEMORY[0x1E69E7CC0];
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    *(v19 + 56) = 0;
    *(v18 + 16) = v19;
    *&v36 = __PAIR64__(v17, OffsetAttribute2);
    DWORD2(v36) = v13;
    BYTE12(v36) = 0;
    BYTE14(v36) = v12 & 1;
    *&v37 = __PAIR64__(v25, v11);
    DWORD2(v37) = v10;
    *&v38 = 0;
    BYTE8(v38) = 0;
    *&v39 = 0;
    DWORD2(v39) = 0;
    v40 = v18;
    v32 = v38;
    v33 = v39;
    *&v34 = v18;
    v30 = v36;
    v31 = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ShapeStyleResolver);
    lazy protocol witness table accessor for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>();
    LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ShapeStyleResolver<LinearGradient>(&v36);
    AGGraphSetFlags();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA14LinearGradientVG_Tt5B5(v16, a2, v18, 0, &v27);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v22 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v22)
    {
      goto LABEL_13;
    }

    if ((v12 & 2) != 0)
    {
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, LinearGradient>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, LinearGradient>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, LinearGradient>>);
      result = Attribute.init<A>(body:value:flags:update:)();
      v23 = v28 | 0x80;
LABEL_14:
      *v26 = v27;
      *(v26 + 8) = v23;
      *(v26 + 12) = result;
      return result;
    }

LABEL_13:
    v23 = v28;
    result = v29;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v24;
  return result;
}

unint64_t lazy protocol witness table accessor for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>()
{
  result = lazy protocol witness table cache variable for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>;
  if (!lazy protocol witness table cache variable for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ShapeStyleResolver<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ShapeStyleResolver);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>);
  }

  return result;
}

uint64_t outlined destroy of ShapeStyleResolver<LinearGradient>(uint64_t a1)
{
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ShapeStyleResolver);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA14LinearGradientVG_Tt5B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  LODWORD(v57) = 0;
  HIDWORD(v57) = *MEMORY[0x1E698D3F8];
  v52 = *MEMORY[0x1E698D3F8];
  v55 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v55) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v13;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v14 = *(a2 + 16);
    v59 = *a2;
    v60 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v59);
    v16 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v16;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v17 = *(a2 + 16);
    v59 = *a2;
    v60 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v59);
    v51 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v47 = v21;
    v48 = *(a2 + 60);
    v49 = *(a2 + 68);
    v50 = *(a2 + 76);
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v19);
    LOBYTE(v62) = v21;
    WORD1(v62) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v22);
    LOBYTE(v62) = v47;
    WORD1(v62) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v59, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>);
    LOBYTE(v58[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v51;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 16);
    v61 = *(a2 + 32);
    v62 = v24;
    v63 = v25;
    v64 = *(a2 + 80);
    v59 = *a2;
    v60 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v59);
    v28 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v28;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v29 = *(a2 + 16);
    v59 = *a2;
    v60 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v31 = *(a2 + 60);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0;
    *(v32 + 160) = v8;
    *(v32 + 24) = 0;
    *(v32 + 168) = 0u;
    *(v32 + 184) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v55;
    *&v59 = v55;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v55 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v55 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v59 = __PAIR64__(a3, a1);
        *(&v59 + 1) = __PAIR64__(v30, v27);
        LODWORD(v60) = v31;
        *(&v60 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, LinearGradient>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, LinearGradient>>);
        v35 = v55;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 64);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v59 = __PAIR64__(v40, v31);
    *(&v59 + 1) = __PAIR64__(a1, v41);
    LODWORD(v60) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, LinearGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, LinearGradient>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, LinearGradient>>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v55 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v59) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v56;
      a5[1] = v57;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v59);
  result = AGWeakAttributeGetAttribute();
  if (result != v52)
  {
    v58[0] = v9;
    v46 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v58);
    v46(&v59, 0);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

void type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t View.onTapGesture(count:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  return View.modifier<A>(_:)(v5, a4, &type metadata for TapGestureModifier);
}

void *initializeBufferWithCopyOfBuffer for DelayedGesture(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = v4;

  return a1;
}

void *assignWithCopy for _AlignmentWritingModifier(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

unint64_t lazy protocol witness table accessor for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>()
{
  result = lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>;
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlendModeEffect>, &type metadata for _BlendModeEffect, &protocol witness table for _BlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SimultaneousGestureCombiner and conformance SimultaneousGestureCombiner()
{
  result = lazy protocol witness table cache variable for type SimultaneousGestureCombiner and conformance SimultaneousGestureCombiner;
  if (!lazy protocol witness table cache variable for type SimultaneousGestureCombiner and conformance SimultaneousGestureCombiner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SimultaneousGestureCombiner and conformance SimultaneousGestureCombiner);
  }

  return result;
}

uint64_t View.gesture<A>(_:including:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28 = a5;
  v26 = a8;
  v27 = a3;
  v25 = a2;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v16(v13);
  v29 = a4;
  v30 = a7;
  v31 = a6;
  v32 = v17;
  v18 = type metadata accessor for AddGestureModifier();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24[-v21];
  (*(v12 + 16))(v15, a1, a4, v20);
  AddGestureModifier.init(_:name:gestureMask:)(v15, 0, 0, v25, a4, v22);
  View.modifier<A>(_:)(v22, v27, v18);
  return (*(v19 + 8))(v22, v18);
}

uint64_t AddGestureModifier.init(_:name:gestureMask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for AddGestureModifier();
  v13 = (a6 + *(v12 + 52));
  result = (*(*(a5 - 8) + 32))(a6, a1, a5);
  *v13 = a2;
  v13[1] = a3;
  *(a6 + *(v12 + 56)) = a4;
  return result;
}

uint64_t initializeWithCopy for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for AddGestureModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t Font.ModifierProvider.resolveDescriptor(in:)(_OWORD *a1, uint64_t a2)
{
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  v6 = *a1;
  v5 = a1[1];
  v10[2] = a1[2];
  v11[0] = v6;
  v7 = *v2;
  v8 = a1[2];
  v11[1] = v5;
  v11[2] = v8;
  *&v11[0] = (*(*v7 + 96))(v11);
  (*(*(a2 + 24) + 32))(v11, v10, *(a2 + 16));
  return *&v11[0];
}

uint64_t key path getter for EnvironmentValues.minimumScaleFactor : EnvironmentValues@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 1.0;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.minimumScaleFactor : EnvironmentValues(double *a1, uint64_t *a2)
{
  if (*a1 <= 1.0 && *a1 > 0.0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(v5, *a2);
  }
}

double *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(uint64_t *a1, double a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(*a1);
  if (!result || result[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>();
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>);
    }
  }
}

uint64_t type metadata completion function for ContentShapeKindResponder()
{
  type metadata accessor for _ContentShapeKindModifier();
  result = type metadata accessor for ContentResponderHelper();
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

id ContentShapeKindResponder.init(inputs:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v3;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  *(v1 + 27) = 1;
  v5 = *(v2 + 424);
  v6 = type metadata accessor for _ContentShapeKindModifier();
  ContentResponderHelper.init()(v6, &v1[v5]);
  return DefaultLayoutViewResponder.init(inputs:)(v8);
}

uint64_t implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:)(int a1)
{
  v2[1] = a1;
  type metadata accessor for _ContentShapeKindModifier();
  type metadata accessor for _GraphValue();
  _GraphValue.subscript.getter(partial apply for closure #1 in implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:), &type metadata for ContentShapeKinds, v2);
  return v2[0];
}

uint64_t closure #1 in implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v2 = type metadata accessor for _ContentShapeKindModifier();
  v3 = *(v2 + 40);
  v7[2] = v2;
  v4 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v3, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_7, v7, &type metadata for ContentShapeKinds, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  return v7[5];
}

_DWORD *storeEnumTagSinglePayload for _ContentShapeKindModifier(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
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

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    *(result + v8) = a2 + 1;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t Font.weight(_:)(uint64_t a1, void (*a2)(void), double a3)
{
  a2(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;

  return v5;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.WeightModifier>>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.WeightModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for Font.ModifierProvider);
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.WeightModifier>>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for Font.ScalePointSizeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier()
{
  result = lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier;
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier;
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier;
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier;
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }

  return result;
}

uint64_t Gesture.onEnded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for EndedCallbacks();
  swift_getWitnessTable();
  type metadata accessor for CallbacksGesture();
  v15[2] = swift_getWitnessTable();
  v15[3] = a4;
  v11 = type metadata accessor for ModifierGesture();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v15 - v12;
  v15[0] = a1;
  v15[1] = a2;

  Gesture.callbacks<A>(_:)(v15, a3, v10, v13);

  return _EndedGesture.init(_body:)(v13, a5);
}

uint64_t Gesture.callbacks<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CallbacksGesture();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, a3, v13);
  (*(v8 + 32))(v15, v10, a3);
  swift_getWitnessTable();
  Gesture.modifier<A>(_:)(v15, a2, v11, a4);
  return (*(v12 + 8))(v15, v11);
}

uint64_t _EndedGesture.init(_body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for EndedCallbacks();
  swift_getWitnessTable();
  type metadata accessor for CallbacksGesture();
  swift_getWitnessTable();
  v4 = type metadata accessor for ModifierGesture();
  return (*(*(v4 - 8) + 32))(a2, a1, v4);
}

unint64_t lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner()
{
  result = lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner;
  if (!lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner);
  }

  return result;
}

void FontProvider.resolveTraits(in:)(_OWORD *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = a1[2];
  v5 = (*(a2 + 32))(v6);

  Font.ResolvedTraits.init(_:)(v5, a3);
}

void Font.ResolvedTraits.init(_:)(const __CTFontDescriptor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  if (CTFontDescriptorCopyAttribute(a1, *MEMORY[0x1E6965848]) && (swift_dynamicCast() & 1) != 0)
  {
    v4 = v7;
  }

  CTFontDescriptorGetWeight();
  v6 = v5;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
}

uint64_t specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, double a4)
{
  v12 = *(a2 + 24);
  if (v12 <= 2)
  {
    v53 = v11;
    v54 = v10;
    v55 = v9;
    v56 = v8;
    v57 = v7;
    v58 = v6;
    v59 = v4;
    v60 = v5;
    v14 = *a2;
    if (v12)
    {
      if (v12 == 1)
      {
        v15 = *(a2 + 8);
        if (v15 == *(a2 + 16))
        {
          return result;
        }

        v46 = *(a2 + 48);
        v16 = result;
        v18 = (*(*a3 + 112))(&v46);
        v20 = v19;
        v22 = v21;
        v23 = a4;
        v25 = v24 * v23;
        v26 = *(a2 + 56);
        *&v46 = *(a2 + 48);
        *(&v46 + 1) = v26;
        v27 = *(*v16 + 168);

        LODWORD(a4) = v27(v15, &v46);

        *&v46 = __PAIR64__(v20, LODWORD(v18));
        DWORD2(v46) = v22;
        *(&v46 + 3) = v25 * *&a4;
        v47 = 2143289344;
        v48 = 0;
        v49 = 1065353216;
        v50 = 0;
        v51 = -1;
        v28 = MEMORY[0x1E69E7CC0];
        v52 = MEMORY[0x1E69E7CC0];
        v45 = v14;
        if (*(a2 + 40) == 1)
        {
          v28 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v46, &v45, v15);
        result = outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v28;
        v30 = 1;
      }

      else
      {
        v38 = result;
        if (v14 >= 1)
        {
          v39 = *(a2 + 56);
          *&v46 = *(a2 + 48);
          *(&v46 + 1) = v39;
          v40 = *(*result + 168);
          v41 = result;

          v42 = v40(v14, &v46);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v38 = swift_allocObject();
          *(v38 + 16) = v41;
          *(v38 + 24) = v42;
        }

        v43 = *(a2 + 32);
        v44 = *(a2 + 40);

        result = outlined consume of _ShapeStyle_Shape.Result(v43, v44);
        *(a2 + 32) = v38;
        v30 = 3;
      }

      *(a2 + 40) = v30;
    }

    else
    {
      v31 = result;
      if (v14 >= 1)
      {
        v32 = *(a2 + 56);
        *&v46 = *(a2 + 48);
        *(&v46 + 1) = v32;
        v33 = *(*result + 168);
        v34 = result;

        v35 = v33(v14, &v46);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v31 = swift_allocObject();
        *(v31 + 16) = v34;
        *(v31 + 24) = v35;
      }

      v36 = *(a2 + 32);
      v37 = *(a2 + 40);

      result = outlined consume of _ShapeStyle_Shape.Result(v36, v37);
      *(a2 + 32) = v31;
      *(a2 + 40) = 0;
    }
  }

  return result;
}

uint64_t View.overlay<A>(alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a6;
  v21 = a7;
  v22 = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for _OverlayModifier();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  a3(v16);
  (*(v11 + 32))(v18, v13, a5);
  v19 = &v18[*(v14 + 36)];
  *v19 = a1;
  *(v19 + 1) = a2;
  View.modifier<A>(_:)(v18, v22, v14);
  return (*(v15 + 8))(v18, v14);
}

uint64_t static ViewModifier<>._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

double static _ContentShapeKindModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v54 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v48 = *(a2 + 32);
  v49 = v10;
  v12 = *(a2 + 48);
  v50 = *(a2 + 64);
  v13 = *(a2 + 16);
  v46 = *a2;
  v47 = v13;
  v42 = v48;
  v43 = v12;
  v44 = *(a2 + 64);
  v14 = *a1;
  v51 = *(a2 + 80);
  v45 = *(a2 + 80);
  v40 = v46;
  v41 = v11;
  v15 = outlined init with copy of _ViewInputs(&v46, v52);
  a3(&v37, v15, &v40);
  v52[2] = v42;
  v52[3] = v43;
  v52[4] = v44;
  v53 = v45;
  v52[0] = v40;
  v52[1] = v41;
  outlined destroy of _ViewInputs(v52);
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v49);
  if (v16)
  {
    v35 = v46;
    v36 = a6;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    swift_beginAccess();
    v17 = CachedEnvironment.animatedPosition(for:)(&v40);
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    v18 = CachedEnvironment.animatedSize(for:)(&v40);
    swift_endAccess();
    v19 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v37);
    v20 = v19;
    if ((v19 & 0x100000000) != 0)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      type metadata accessor for [ViewResponder](0);
      v20 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v21, 0);
    }

    v22 = HIDWORD(v49);
    type metadata accessor for ContentShapeKindResponder();
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    outlined init with copy of _ViewInputs(&v46, v39);
    swift_allocObject();
    v23 = ContentShapeKindResponder.init(inputs:)(&v40);
    *&v40 = __PAIR64__(v17, v14);
    *(&v40 + 1) = __PAIR64__(v22, v18);
    LODWORD(v41) = v20;
    *(&v41 + 1) = v23;
    MEMORY[0x1EEE9AC00](v23);
    v33 = type metadata accessor for ContentShapeKindResponderFilter();
    WitnessTable = swift_getWitnessTable();
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v40, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v31, v33, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);

    LOBYTE(v40) = 0;
    PreferencesOutputs.subscript.setter(v39[0], &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    v26 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v35);
    MEMORY[0x1EEE9AC00](v26);
    v31 = a4;
    v32 = a5;
    LODWORD(v33) = v14;
    v42 = v48;
    v43 = v49;
    v44 = v50;
    v45 = v51;
    v40 = v46;
    v41 = v47;
    v16 = (*(v27 + 8))(partial apply for implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:));
    a6 = v36;
  }

  v42 = v48;
  v43 = v49;
  v44 = v50;
  v45 = v51;
  v40 = v46;
  v41 = v47;
  MEMORY[0x1EEE9AC00](v16);
  v31 = a4;
  v32 = a5;
  LODWORD(v33) = v14;
  type metadata accessor for _ContentShapeKindModifier();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _ViewOutputs.appendContentShapePreference<A>(inputs:shape:kinds:)(&v40, partial apply for implicit closure #2 in static _ContentShapeModifier._makeView(modifier:inputs:body:), &v30, OffsetAttribute2);
  *a6 = v37;
  result = v38;
  a6[1] = v38;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA20BackgroundProminenceVAAE0V0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA20BackgroundProminenceVAAE0V0VG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA20BackgroundProminenceVAAE0V0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA20BackgroundProminenceVAAE0F0VG_Tt2B5(uint64_t *a1, char a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(*a1);
  if (!result || *(result + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>();
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

uint64_t EnvironmentValues.backgroundProminence.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA20BackgroundProminenceVAAE0F0VG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA20BackgroundProminenceVAAE0K0VG_Ttg5(v4, *v2);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>);
    }
  }
}

uint64_t LayoutProxy.requiresSpacingProjection.getter()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_12:
    v4 = (*(*v2 + 104))();

    return v4 & 1;
  }

  return result;
}

uint64_t one-time initialization function for sharedPrimary()
{
  type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<HierarchicalShapeStyle>, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, type metadata accessor for ShapeStyleBox);
  result = swift_allocObject();
  *(result + 16) = 0;
  static HierarchicalShapeStyle.sharedPrimary = result;
  return result;
}

{
  if (one-time initialization token for primary != -1)
  {
    swift_once();
  }

  v0 = static Color.primary;
  type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<LegacyContentStyle>, &type metadata for LegacyContentStyle, &protocol witness table for LegacyContentStyle, type metadata accessor for ShapeStyleBox);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = v0;
  static LegacyContentStyle.sharedPrimary = v1;
}

uint64_t AccessibilityAttachment.init(properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v9);
  v4 = v9[7];
  *(a2 + 224) = v9[6];
  *(a2 + 240) = v4;
  *(a2 + 256) = v9[8];
  *(a2 + 272) = v10;
  v5 = v9[3];
  *(a2 + 160) = v9[2];
  *(a2 + 176) = v5;
  v6 = v9[5];
  *(a2 + 192) = v9[4];
  *(a2 + 208) = v6;
  v7 = v9[1];
  *(a2 + 128) = v9[0];
  *(a2 + 144) = v7;
  *(a2 + 280) = MEMORY[0x1E69E7CC8];
  *(a2 + 288) = 0;
  return outlined assign with take of AccessibilityProperties(a1, a2);
}

uint64_t getEnumTagSinglePayload for AccessibilityValueStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t View.defaultForegroundColor(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v8 = a1;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

{
  return View.defaultForegroundColor(_:)(a1, a2, a3);
}

uint64_t one-time initialization function for textToText()
{
  result = AGMakeUniqueID();
  static Spacing.Category.textToText = result;
  return result;
}

char *static CALayerPlatformViewDefinition.makeDrawingView(options:)(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[2];
  v5 = *(a1 + 12);
  if ((v4 & 1) != 0 && [objc_opt_self() isSupported])
  {
    LODWORD(v12) = v1;
    BYTE4(v12) = v2;
    BYTE5(v12) = v3;
    LODWORD(v13) = v4;
    BYTE4(v13) = v5;
    v6 = objc_allocWithZone(type metadata accessor for RBDrawingLayer());
    v7 = RBDrawingLayer.init(options:)(&v12);
  }

  else
  {
    LODWORD(v12) = v1;
    BYTE4(v12) = v2;
    BYTE5(v12) = v3;
    LODWORD(v13) = v4;
    BYTE4(v13) = v5;
    v8 = objc_allocWithZone(type metadata accessor for CGDrawingLayer());
    v7 = CGDrawingLayer.init(options:)(&v12);
  }

  v9 = *MEMORY[0x1E6979E08];
  v10 = v7;
  [v10 setContentsGravity_];
  [v10 setCoordinatedAnimationDelegate];
  [v10 setAnchorPoint_];

  return v10;
}

char *CGDrawingLayer.init(options:)(int *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = a1[2];
  v7 = *(a1 + 12);
  v8 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v8[40] = 5;
  v9 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state];
  *v9 = 3;
  *(v9 + 1) = 0;
  v10 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
  *v10 = v4;
  *(v10 + 2) = v5;
  *(v10 + 2) = v6;
  v10[12] = v7;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v20, sel_init);
  v12 = &v11[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
  v13 = (*&v11[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 8] >> 1) & 1;
  v14 = v11;
  [v14 setOpaque_];
  v15 = *(v12 + 2);
  v16 = MEMORY[0x1E6979658];
  if ((v15 & 0x100) != 0)
  {
    v16 = MEMORY[0x1E6979660];
  }

  if ((v15 & 0x40) != 0)
  {
    v17 = MEMORY[0x1E6979648];
  }

  else
  {
    v17 = v16;
  }

  v18 = *v17;
  [v14 setContentsFormat_];

  return v14;
}

uint64_t protocol witness for PlatformDrawable.update(content:required:) in conformance CGDrawingLayer(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 != 255)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 32);
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = *a1;
    v8 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
    v9 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
    v10 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 8];
    v11 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 16];
    v12 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 24];
    v13 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 32];
    *v8 = v7;
    *(v8 + 1) = v5;
    *(v8 + 2) = v6;
    *(v8 + 3) = v3;
    *(v8 + 4) = v4;
    v14 = v8[40];
    v8[40] = v2;
    outlined copy of PlatformDrawableContent.Storage(v7, v5, v6, v3, v4, v2);
    outlined consume of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  }

  [v1 setNeedsDisplay];
  return 1;
}

uint64_t DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)(uint64_t *a1, int *a2, double a3)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = a2[2];
  v10 = *(a2 + 12);
  v11 = *v3;
  v12 = *a1;
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  v27 = v11;
  if (v14)
  {
    swift_unknownObjectRelease();
    LODWORD(v32) = v6;
    BYTE4(v32) = v7;
    BYTE5(v32) = v8;
    v33 = v9;
    v34 = v10;
    v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 120))(&v32);
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v16 + 8))(&v32, ObjectType, v16);
  swift_unknownObjectRelease();
  v18 = v32;
  v19 = WORD2(v32);
  v20 = v33;
  v21 = v34;
  LODWORD(v32) = v6;
  BYTE4(v32) = v7;
  BYTE5(v32) = v8;
  v33 = v9;
  v34 = v10;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  if (!specialized static RasterizationOptions.== infix(_:_:)(&v32, &v28))
  {
    LODWORD(v32) = v6;
    BYTE4(v32) = v7;
    BYTE5(v32) = v8;
    v33 = v9;
    v34 = v10;
    if ((v9 ^ ((v20 & 1) == 0)))
    {
      (*(v16 + 16))(&v32, ObjectType, v16);
    }

    else
    {
      v22 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 120))(&v32);
      v16 = v23;
      swift_unknownObjectRelease();
      v12 = v22;
    }
  }

  v24 = swift_getObjectType();
  v25 = *(v16 + 56);
  swift_unknownObjectRetain_n();
  v25(v24, v16, a3);
  swift_unknownObjectRelease();
  *a1 = v12;
  return v12;
}

void protocol witness for PlatformDrawable.options.getter in conformance CGDrawingLayer(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v3;
}

BOOL specialized static RasterizationOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v5 = *(a2 + 5);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || v4 != v5)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12);
}

id outlined copy of PlatformDrawableContent.Storage(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  switch(a6)
  {
    case 2u:

    case 3u:
      return swift_unknownObjectRetain();
    case 4u:
      return result;
  }

  return result;
}

void outlined consume of PlatformDrawableContent.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  else
  {
    switch(a6)
    {
      case 2u:

        break;
      case 3u:
        swift_unknownObjectRelease();
        break;
      case 4u:

        break;
    }
  }
}

void outlined consume of PlatformDrawableContent?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    outlined consume of PlatformDrawableContent.Storage(a1, a2, a3, a4, a5, a6);
  }
}

void type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for ShapeStyledDisplayList();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(uint64_t a1, char a2, unsigned __int8 *a3, uint64_t *a4, uint64_t a5)
{
  v13 = v5;
  v16 = &v326;
  v355 = *MEMORY[0x1E69E9840];
  v17 = *a1;
  v18 = *(a1 + 29);
  v19 = *a3;
  v20 = *a4;
  *aBlock = *a4;
  v248 = v19;
  LOBYTE(v326.a) = v19;
  _ShapeStyle_Pack.Slice.init(pack:name:)(aBlock, &v326, &v290);
  v21 = dword_18DDD0D14[a2];
  v252 = v18;
  if (v18)
  {
    *&v22 = v21;
  }

  else
  {
    *&v22 = v21 | 0x20;
  }

  v242 = v20;

  v239 = v17;
  v23 = [v17 beginUpdateWithRenderingMode:255 position:v13 + 112 size:v13 + 128 flags:*&v22];
  RBSymbolUpdateNextTime();
  v246 = v24;
  v249 = *(&v291 + 1) >> 1;
  v250 = v291;
  v25 = (*(&v291 + 1) >> 1) - v291;
  if (__OFSUB__(*(&v291 + 1) >> 1, v291))
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (__OFADD__(v292, v25))
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v6 = &v333;
  v247 = *(&v290 + 1);
  v253 = (v292 + v25);
  v256 = v23;
  v257 = v292;
  if (!((v253 == v292) | v252 & 1))
  {
    v26 = RBSymbolUpdateTemplateImage();
    if (v26)
    {
      v17 = v26;
      Width = CGImageGetWidth(v26);
      Height = CGImageGetHeight(v17);
      v22 = *&v257;
      v287 = v17;
      outlined consume of GraphicsImage.Contents?(0, 0xFFu);
      aBlock[0] = 0;
      v23 = 0;
      v27 = *(v13 + 80);
      v324 = *(v13 + 64);
      v325[0] = v27;
      *(v325 + 12) = *(v13 + 92);
      v28 = *(v13 + 16);
      v320 = *v13;
      v321 = v28;
      v29 = *(v13 + 48);
      v322 = *(v13 + 32);
      v323 = v29;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v320);
      *v13 = v17;
      *(v13 + 8) = 0;
      *(v13 + 16) = 0x3FF0000000000000;
      *(v13 + 24) = Width;
      *(v13 + 32) = Height;
      *(v13 + 40) = a2;
      __asm { FMOV            V0.4S, #1.0 }

      *(v13 + 44) = _Q0;
      *(v13 + 60) = 2143289344;
      *(v13 + 64) = 0;
      *(v13 + 72) = 0u;
      *(v13 + 88) = 0u;
      *(v13 + 104) = 1610678530;
      if ((v250 + *&v22 < 0) ^ __OFADD__(v250, *&v22) | (v250 + *&v22 == 0) && v249 > -v257)
      {
        v34 = (v247 - (v257 << 7));
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[3];
        *&aBlock[32] = v34[2];
        *&aBlock[48] = v37;
        *aBlock = v35;
        *&aBlock[16] = v36;
        v38 = v34[4];
        v39 = v34[5];
        v40 = v34[7];
        *&aBlock[96] = v34[6];
        *&aBlock[112] = v40;
        *&aBlock[64] = v38;
        *&aBlock[80] = v39;
        v41 = *(v34 + 8);
        v42 = *(v34 + 40);
        v43 = *(v34 + 56);
        *&v294.c = *(v34 + 24);
        *&v294.tx = v42;
        *&v294.a = v41;
        v44 = *(v34 + 72);
        v45 = *(v34 + 88);
        v46 = *(v34 + 104);
        v299 = *(v34 + 15);
        v297 = v45;
        v298 = v46;
        v295 = v43;
        v296 = v44;
        outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(aBlock, &v326, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        _ShapeStyle_Pack.Style.modifyStyle(for:)(v256, 0, 0);
        _ShapeStyle_Pack.Style.applyOpacity(_:)(1.0);
        *&v345.a = v248;
        LOBYTE(v345.c) = 0;
        v335 = v296;
        v336[0] = v297;
        v336[1] = v298;
        v337 = v299;
        v333 = v294;
        v334 = v295;
        outlined init with copy of _ShapeStyle_Pack.Style(&v333, &v326);
        _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v345, &v294, v13);
        *&v339[48] = v296;
        *&v339[64] = v297;
        *&v339[80] = v298;
        v340 = v299;
        v338 = *&v294.a;
        *v339 = *&v294.c;
        *&v339[16] = *&v294.tx;
        *&v339[32] = v295;
        outlined destroy of _ShapeStyle_Pack.Style?(&v338, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
        *&v342[48] = v296;
        *&v342[64] = v297;
        v343 = v298;
        v341 = *&v294.a;
        *v342 = *&v294.c;
        *&v342[16] = *&v294.tx;
        *&v342[32] = v295;
        v328 = v296;
        v329[0] = v297;
        v329[1] = v298;
        v326 = v294;
        v344 = v299;
        *&v330 = v299;
        v327 = v295;
        outlined init with copy of _ShapeStyle_Pack.Style(&v341, &v345);
        _ShapeStyle_RenderedShape.render(style:)(&v326);
        *v347 = v328;
        *&v347[16] = v329[0];
        v348 = v329[1];
        v349 = v330;
        v345 = v326;
        v346 = v327;
        outlined destroy of _ShapeStyle_Pack.Style(&v345);
        _ShapeStyle_RenderedLayers.endLayer(shape:)(v13);

        v328 = v296;
        v329[0] = v297;
        v329[1] = v298;
        *&v330 = v299;
        v326 = v294;
        v327 = v295;
        outlined destroy of _ShapeStyle_Pack.Style(&v326);
        [v239 endUpdate_];
LABEL_169:
        outlined destroy of _ShapeStyle_Pack.Slice(&v290);
        v68 = 0;
        return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v68);
      }

      goto LABEL_179;
    }
  }

  updated = RBSymbolUpdateGroupCount();
  v281 = a5;
  if ((MEMORY[0x193AC3780](v23) & 0x1000) == 0 && updated == 1 && RBSymbolUpdateGroupSize() == 1)
  {
LABEL_35:
    v241 = updated;
    v255 = 0;
    v69 = 0.0;
    v17 = &v345;
    v70 = v253;
    v240 = v20 + 33;
    v9 = 0.0;
    while (1)
    {
      if (__OFADD__(*&v69, 1))
      {
        goto LABEL_174;
      }

      *&v245 = *&v69 + 1;
      v269 = v69;
      v71 = RBSymbolUpdateGroupSize();
      if (v71 < 0)
      {
        break;
      }

      if (v71)
      {
        v22 = 0.0;
        v263 = v71;
        do
        {
          *aBlock = v23;
          *&aBlock[8] = v269;
          *&aBlock[16] = v22;
          RBSymbolUpdateLayerDrawingOpacity();
          LODWORD(v12) = v73;
          *aBlock = v23;
          *&aBlock[8] = v269;
          v282 = v22;
          *&aBlock[16] = v22;
          v74 = RBSymbolUpdateLayerStyle();
          if (*&v12 <= 0.0 || v74 == 10)
          {
            goto LABEL_44;
          }

          if (v74 > 6)
          {
            switch(v74)
            {
              case 7:
                if (v70 == v257)
                {
                  goto LABEL_44;
                }

                v76 = 3;
                break;
              case 8:
                if (v70 == v257)
                {
                  goto LABEL_44;
                }

                v76 = 4;
                break;
              case 9:
                *aBlock = v23;
                *&aBlock[8] = v269;
                *&aBlock[16] = v22;
                v77 = RBSymbolUpdateLayerColorName();
                if (!v77)
                {
                  goto LABEL_44;
                }

                v78 = v77;
                *&v286 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                *(&v286 + 1) = v79;

                v80 = *(v242 + 16);
                if (v80)
                {
                  v81 = 0;
                  v82 = v240;
                  while (1)
                  {
                    v83 = *(v82 - 1);
                    if (v83 == 2 && *v82 == 0)
                    {
                      v215 = *(v82 + 63);
                      v216 = *(v82 + 79);
                      v217 = *(v82 + 111);
                      *&aBlock[96] = *(v82 + 95);
                      *&aBlock[112] = v217;
                      v218 = *(v82 - 1);
                      v219 = *(v82 + 15);
                      v220 = *(v82 + 31);
                      v221 = *(v82 + 47);
LABEL_150:
                      *&aBlock[32] = v220;
                      *&aBlock[48] = v221;
                      *aBlock = v218;
                      *&aBlock[16] = v219;
                      *&aBlock[64] = v215;
                      *&aBlock[80] = v216;
                      LODWORD(Width) = *&aBlock[96];
                      v285 = *&aBlock[104];
                      v225 = aBlock[112];
                      v226 = *&aBlock[120];
                      outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(aBlock, &v326, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
                      *&v345.tx = *&aBlock[40];
                      v346 = *&aBlock[56];
                      *v347 = *&aBlock[72];
                      *&v347[14] = *&aBlock[86];
                      v227 = *&aBlock[8];
                      v228 = *&aBlock[24];
                      goto LABEL_154;
                    }

                    v85 = *v82 && v83 == 2;
                    if (v83 > 2 || v85)
                    {
                      break;
                    }

                    ++v81;
                    v82 += 128;
                    if (v80 == v81)
                    {
                      goto LABEL_151;
                    }
                  }

                  if (v81)
                  {
                    v223 = *(v82 - 129);
                    v222 = (v82 - 129);
                    if (v223 == 2)
                    {
                      v215 = v222[4];
                      v216 = v222[5];
                      v224 = v222[7];
                      *&aBlock[96] = v222[6];
                      *&aBlock[112] = v224;
                      v218 = *v222;
                      v219 = v222[1];
                      v220 = v222[2];
                      v221 = v222[3];
                      goto LABEL_150;
                    }
                  }
                }

LABEL_151:
                if (one-time initialization token for clear != -1)
                {
                  swift_once();
                }

                *&aBlock[80] = xmmword_1ED51ECC0;
                *&aBlock[96] = xmmword_1ED51ECD0;
                v226 = qword_1ED51ECE0;
                *&aBlock[112] = qword_1ED51ECE0;
                *aBlock = static _ShapeStyle_Pack.Style.clear;
                *&aBlock[16] = *&dword_1ED51EC80;
                *&aBlock[32] = xmmword_1ED51EC90;
                *&aBlock[48] = unk_1ED51ECA0;
                *&aBlock[64] = xmmword_1ED51ECB0;
                v285 = xmmword_1ED51ECD0;
                v225 = BYTE8(xmmword_1ED51ECD0);
                LODWORD(Width) = DWORD2(xmmword_1ED51ECC0);
                outlined init with copy of _ShapeStyle_Pack.Style(aBlock, &v326);
                *&v345.tx = *&aBlock[32];
                v346 = *&aBlock[48];
                *v347 = *&aBlock[64];
                *&v347[14] = *&aBlock[78];
                v227 = *aBlock;
                v228 = *&aBlock[16];
LABEL_154:
                *&v345.a = v227;
                *&v345.c = v228;
                *&aBlock[32] = *&v345.tx;
                *&aBlock[48] = v346;
                *&aBlock[64] = *v347;
                *&aBlock[78] = *&v347[14];
                *aBlock = v227;
                *&aBlock[16] = v228;
                *&aBlock[88] = LODWORD(Width);
                *&aBlock[96] = v285;
                aBlock[104] = v225;
                *&aBlock[112] = v226;
                outlined init with copy of _ShapeStyle_Pack.Fill(&v345, &v326);
                outlined destroy of _ShapeStyle_Pack.Style(aBlock);
                if (v347[21] == 6)
                {
                  *&v326.a = *&v345.a;
                  *&v326.c = *&v345.c;
                  v268 = ResolvedMulticolorStyle.resolveHDR(name:)(v286, *(&v286 + 1));
                  v264 = v229;
                  v231 = v230;
                  outlined destroy of _ShapeStyle_Pack.Fill(&v345);
                  v70 = v253;
                  v17 = &v345;
                  if ((v231 & 0x100000000) == 0)
                  {
                    LODWORD(b) = v231;
LABEL_165:
                    v265 = 0;
                    v259 = 0;
                    v262 = HIDWORD(v264);
                    LODWORD(Width) = 1.0;
                    v284 = 2;
                    v258 = -1;
                    v266 = MEMORY[0x1E69E7CC0];
                    goto LABEL_89;
                  }
                }

                else
                {
                  outlined destroy of _ShapeStyle_Pack.Fill(&v345);
                  v70 = v253;
                  v17 = &v345;
                }

                *&v326.a = v23;
                v326.b = v269;
                v326.c = v282;
                v232 = RBSymbolUpdateLayerDefaultColor();
                if (!v232)
                {

                  goto LABEL_44;
                }

                v233 = v232;
                v268 = specialized Color.Resolved.init(failableCGColor:)(v233);
                v264 = v234;
                if (v235)
                {

                  goto LABEL_44;
                }

                CGColorGetContentHeadroom();
                v237 = v236;

                if (v237 == 0.0)
                {
                  *&b = NAN;
                }

                else
                {
                  *&b = v237;
                }

                goto LABEL_165;
              default:
                goto LABEL_44;
            }
          }

          else if (v74)
          {
            if (v74 == 5)
            {
              if (v70 == v257)
              {
                goto LABEL_44;
              }

              v76 = 1;
            }

            else
            {
              if (v74 != 6 || v70 == v257)
              {
                goto LABEL_44;
              }

              v76 = 2;
            }
          }

          else
          {
            if (v70 == v257)
            {
              goto LABEL_44;
            }

            v76 = 0;
          }

          if (v70 < v257)
          {
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          v87 = v253 + ~v257;
          if (v87 >= v76)
          {
            v87 = v76;
          }

          v88 = v87 - v257;
          if (v88 < v250 || v88 >= v249)
          {
            goto LABEL_172;
          }

          v89 = v247 + (v88 << 7);
          v90 = *(v89 + 64);
          v91 = *(v89 + 80);
          v92 = *(v89 + 112);
          *&aBlock[96] = *(v89 + 96);
          *&aBlock[112] = v92;
          v93 = *(v89 + 32);
          v94 = *(v89 + 48);
          v95 = *(v89 + 16);
          *aBlock = *v89;
          *&aBlock[16] = v95;
          *&aBlock[32] = v93;
          *&aBlock[48] = v94;
          *&aBlock[64] = v90;
          *&aBlock[80] = v91;
          LODWORD(Width) = *&aBlock[96];
          v266 = *&aBlock[120];
          v268 = *&aBlock[8];
          LODWORD(v264) = v95;
          LODWORD(v262) = DWORD1(v95);
          LODWORD(b) = DWORD2(v95);
          v96 = *(v89 + 28);
          v97 = *(v89 + 44);
          v98 = *(v89 + 60);
          v99 = *(v89 + 76);
          v354 = *(v89 + 92);
          v352 = v98;
          v353 = v99;
          v350 = v96;
          v351 = v97;
          v265 = aBlock[93];
          v260 = *&aBlock[100];
          v261 = *&aBlock[94];
          v259 = *&aBlock[104];
          v258 = aBlock[112];
          v100 = *(v89 + 113);
          *(v293 + 3) = *(v89 + 116);
          v286 = v248 | (v76 << 16);
          v293[0] = v100;
          outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(aBlock, &v326, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          v284 = 0;
LABEL_89:
          v101 = v269;
          *aBlock = v23;
          *&aBlock[8] = v269;
          *&aBlock[16] = v282;
          if (RBSymbolUpdateLayerGetFillType() == 2 && !v265)
          {
            *&v288 = v268;
            *(&v288 + 1) = __PAIR64__(v262, v264);
            v289 = LODWORD(b);
            *&v326.a = v23;
            v326.b = v269;
            v326.c = v282;
            RBSymbolUpdateLayerGetGradientAxis();
            v283 = LODWORD(Width);
            v103 = v102;
            v105 = v104;
            v107 = v106;
            v109 = v108;
            *&v326.a = v23;
            v326.b = v269;
            v326.c = v282;
            RBSymbolUpdateLayerFillRect();
            point = v111 + v105 * v110;
            v274 = v113 + v107 * v112;
            v270 = v113 + v103 * v112;
            v272 = v111 + v109 * v110;
            *&v345.a = v23;
            v345.b = v269;
            v345.c = v282;
            RBSymbolUpdateLayerFillTransform();
            LODWORD(v105) = LODWORD(b);
            a = v326.a;
            b = v326.b;
            c = v326.c;
            d = v326.d;
            tx = v326.tx;
            Width = v326.ty;
            LOBYTE(v265) = 1;
            ResolvedGradient.init(standardColor:style:)(&v288, &v326);
            v117 = v326.a;
            b_low = LOBYTE(v326.b);
            b_high = HIDWORD(v326.b);
            c_low = LOBYTE(v326.c);
            v326.a = a;
            v326.b = b;
            v326.c = c;
            v326.d = d;
            v326.tx = tx;
            v326.ty = Width;
            v356.x = v270;
            v356.y = point;
            v121 = CGPointApplyAffineTransform(v356, &v326);
            v326.a = a;
            v326.b = b;
            v9 = 0.0;
            LODWORD(b) = LODWORD(v105);
            v326.c = c;
            v326.d = d;
            v326.tx = tx;
            v326.ty = Width;
            LODWORD(Width) = v283;
            v357.y = v272;
            v357.x = v274;
            v122 = CGPointApplyAffineTransform(v357, &v326);
            Height = v122.x;
            LOBYTE(v326.a) = c_low;
            _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
            v123 = swift_allocObject();
            *(v123 + 16) = v117;
            v101 = v269;
            *(v123 + 24) = b_low;
            v17 = &v345;
            *(v123 + 28) = b_high;
            *(v123 + 32) = c_low;
            v23 = v256;
            *(v123 + 40) = v121;
            *(v123 + 56) = v122;
            *(v123 + 72) = 0;
            *aBlock = v268;
            *&aBlock[8] = __PAIR64__(v262, v264);
            *&aBlock[16] = LODWORD(v105);
            *&aBlock[36] = v351;
            *&aBlock[52] = v352;
            *&aBlock[68] = v353;
            *&aBlock[84] = v354;
            *&aBlock[20] = v350;
            outlined destroy of _ShapeStyle_Pack.Fill(aBlock);
            v268 = v123;
          }

          v124 = v266;
          v22 = *(v266 + 16);
          if (v22 != 0.0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v124 = v266;
            }

            else
            {
              v124 = specialized _ArrayBuffer._consumeAndCreateNew()(v266);
            }

            if (*&v22 > *(v124 + 2))
            {
              goto LABEL_173;
            }

            v125 = 0;
            v126 = *&v22 - 1;
            if (*&v22 == 1)
            {
              goto LABEL_97;
            }

            v204 = !is_mul_ok(v126, 0x50uLL);
            if (&v124[80 * v126 + 88] < v124 + 88)
            {
              goto LABEL_97;
            }

            if (v204)
            {
              goto LABEL_97;
            }

            v125 = *&v22 & 0x7FFFFFFFFFFFFFFELL;
            v205 = (v124 + 168);
            v206 = *&v22 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v207 = *&v12 * *v205;
              *(v205 - 20) = *&v12 * *(v205 - 20);
              *v205 = v207;
              v205 += 40;
              v206 -= 2;
            }

            while (v206);
            if (*&v22 != v125)
            {
LABEL_97:
              v127 = (*&v22 - v125);
              v128 = 80 * v125 + 88;
              do
              {
                *&v124[v128] = *&v12 * *&v124[v128];
                v128 += 80;
                --v127;
              }

              while (v127);
            }
          }

          *&c = *&v12 * *&Width;
          *&v341 = v268;
          *(&v341 + 1) = __PAIR64__(v262, v264);
          *v342 = LODWORD(b);
          v342[68] = v354;
          *&v342[52] = v353;
          *&v342[36] = v352;
          *&v342[20] = v351;
          *&v342[4] = v350;
          v342[69] = v265;
          *&v342[70] = v261;
          *&v342[72] = *&v12 * *&Width;
          *&v342[76] = v260;
          *&v343 = v259;
          BYTE8(v343) = v258;
          HIDWORD(v343) = *(v293 + 3);
          *(&v343 + 9) = v293[0];
          v344 = v124;
          *&v345.tx = *&v342[16];
          v346 = *&v342[32];
          *&v345.a = v341;
          *&v345.c = *v342;
          v267 = v124;
          v349 = v124;
          *&v347[16] = *&v342[64];
          v348 = v343;
          *v347 = *&v342[48];
          if (*a5)
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v341, aBlock);

            while (1)
            {
              *&v333.a = v286;
              LOBYTE(v333.c) = v284;
              *&v339[48] = *v347;
              *&v339[64] = *&v347[16];
              *&v339[80] = v348;
              v340 = v349;
              v338 = *&v345.a;
              *v339 = *&v345.c;
              *&v339[16] = *&v345.tx;
              *&v339[32] = v346;
              _ShapeStyle_InterpolatorGroup.addLayer(id:style:)(&v333, &v338, &v326);
              *&aBlock[96] = v329[1];
              *&aBlock[112] = v330;
              *&aBlock[128] = v331;
              *aBlock = v326;
              *&aBlock[48] = v327;
              *&aBlock[64] = v328;
              *&aBlock[80] = v329[0];
              if (_s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOg(aBlock) != 1)
              {
                break;
              }

              v148 = sub_18D130FB8(aBlock);
              v149 = *(v148 + 120);
              v150 = *(v148 + 128);
              v151 = *(v13 + 80);
              v324 = *(v13 + 64);
              v325[0] = v151;
              *(v325 + 12) = *(v13 + 92);
              v152 = *(v13 + 16);
              v320 = *v13;
              v321 = v152;
              v153 = *(v13 + 48);
              v322 = *(v13 + 32);
              v323 = v153;
              *&v333.a = v320;
              *&v333.c = v152;
              *&v333.tx = v322;
              *(v336 + 12) = *(v325 + 12);
              v335 = v324;
              v336[0] = v151;
              v334 = v153;
              *(v13 + 96) = 0;
              *(v13 + 64) = 0u;
              *(v13 + 80) = 0u;
              *(v13 + 32) = 0u;
              *(v13 + 48) = 0u;
              *v13 = 0u;
              *(v13 + 16) = 0u;
              *(v13 + 104) = -1610612736;

              outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v320, &v338);
              outlined destroy of _ShapeStyle_RenderedShape.Shape(&v333);

              *(v13 + 144) = v149;
              *(v13 + 152) = v150;
              v154 = *(v148 + 112);
              if (v154)
              {
                *&v339[32] = *(v148 + 48);
                *&v339[48] = *(v148 + 64);
                *&v339[64] = *(v148 + 80);
                *&v339[80] = *(v148 + 96);
                v338 = *v148;
                *v339 = *(v148 + 16);
                *&v339[16] = *(v148 + 32);
                v340 = v154;
                _ShapeStyle_RenderedShape.render(style:)(&v338);
              }

              _ShapeStyle_RenderedShape.commitItem()(&v312);
              v155 = *(a5 + 8);
              *&v319[12] = *(a5 + 68);
              v156 = *(a5 + 24);
              v316 = v155;
              v317 = v156;
              v157 = *(a5 + 56);
              v318 = *(a5 + 40);
              *v319 = v157;
              v158 = v155;
              v159 = (*&v319[16] >> 28) & 3;
              if (v159)
              {
                if (v159 == 1)
                {
                  v312 = vsubq_f64(v312, *(v13 + 112));
                  *&v315[24] = 0;
                  *&v339[16] = v314;
                  *&v339[32] = *v315;
                  *&v339[44] = *&v315[12];
                  v338 = v312;
                  *v339 = v313;
                  outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v316, &v308);
                  outlined init with copy of DisplayList.Item(&v338, &v308);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v158 + 2) + 1, 1, v158);
                  }

                  v161 = *(v158 + 2);
                  v160 = *(v158 + 3);
                  if (v161 >= v160 >> 1)
                  {
                    v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v160 > 1), v161 + 1, 1, v158);
                  }

                  v306 = v314;
                  *v307 = *v315;
                  *&v307[12] = *&v315[12];
                  v304 = v312;
                  v305 = v313;
                  outlined destroy of DisplayList.Item(&v304);
                  *(v158 + 2) = v161 + 1;
                  v162 = &v158[80 * v161];
                  *(v162 + 2) = v338;
                  v164 = *&v339[16];
                  v163 = *&v339[32];
                  v165 = *v339;
                  *(v162 + 92) = *&v339[44];
                  *(v162 + 4) = v164;
                  *(v162 + 5) = v163;
                  *(v162 + 3) = v165;
                  a5 = v281;
                  *(v311 + 12) = *(v281 + 68);
                  v166 = *(v281 + 56);
                  v310 = *(v281 + 40);
                  v311[0] = v166;
                  v167 = *(v281 + 24);
                  v308 = *(v281 + 8);
                  v309 = v167;
                  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v308);

                  outlined destroy of _ShapeStyle_Pack.Style?(v148, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

                  *(v281 + 8) = v158;
                  v277 = v277 & 0xFFFFFFFFC000FFFFLL | 0x10000000;
                  v278 &= 0x1FFFFFFFFFuLL;
                  *(v281 + 56) = v278;
                  *(v281 + 72) = v277;
                  v16 = &v326;
                }

                else
                {
                  v168 = *(&v314 + 1);
                  v276 = v314;
                  v169 = *&v315[8];
                  v170 = *&v315[24];
                  v171 = *v315 & 0x1FFFFFFFFFLL;
                  v172 = *&v315[16] & 0xFFFFFFFFC000FFFFLL;
                  v173 = *(a5 + 24);
                  v174 = *(a5 + 56);
                  *&v339[16] = *(a5 + 40);
                  *&v339[32] = v174;
                  *&v339[44] = *(a5 + 68);
                  v338 = *(a5 + 8);
                  *v339 = v173;
                  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v338);

                  outlined destroy of _ShapeStyle_Pack.Style?(v148, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

                  v175 = v312;
                  *(a5 + 24) = v313;
                  *(a5 + 8) = v175;
                  *(a5 + 40) = v276;
                  *(a5 + 48) = v168;
                  *(a5 + 56) = v171;
                  *(a5 + 64) = v169;
                  *(a5 + 72) = v172;
                  v16 = &v326;
                  *(a5 + 80) = v170;
                  v6 = &v333;
                }
              }

              else
              {
                v273 = *v319;
                v275 = *&v319[8];
                v271 = *(&v318 + 1);
                v129 = v318;
                v130 = *(&v317 + 1);
                v131 = v317;
                v132 = *&v319[16] & 0xFFFFFFFFCFFFFFFFLL;
                v133 = *(v13 + 112);
                Width = *&v155 - v133.f64[0];
                Height = *(&v316 + 1) - *(v13 + 120);
                v312 = vsubq_f64(v312, v133);
                *&v315[24] = 0;
                type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
                v134 = swift_allocObject();
                *v300 = Width;
                *(v300 + 1) = Height;
                v300[1] = __PAIR128__(v130, v131);
                v300[2] = __PAIR128__(v271, v129);
                *v301 = v273;
                *&v301[8] = v275;
                *&v301[16] = v132;
                *&v301[24] = 0;
                v135 = *v301;
                v136 = v300[0];
                v134[3] = __PAIR128__(v130, v131);
                v134[4] = __PAIR128__(v271, v129);
                v134[5] = v135;
                *(v134 + 92) = *&v301[12];
                v134[1] = xmmword_18DDAB4C0;
                v134[2] = v136;
                v302[0] = v312;
                *(v303 + 12) = *&v315[12];
                v302[2] = v314;
                v303[0] = *v315;
                v302[1] = v313;
                v137 = v312;
                v138 = v313;
                *(v134 + 172) = *&v315[12];
                v139 = *v315;
                v134[9] = v314;
                v134[10] = v139;
                v134[7] = v137;
                v134[8] = v138;
                v304.f64[0] = Width;
                v304.f64[1] = Height;
                v305 = __PAIR128__(v130, v131);
                a5 = v281;
                v16 = &v326;
                v306 = __PAIR128__(v271, v129);
                v6 = &v333;
                *v307 = v273;
                *&v307[8] = v275;
                *&v307[16] = v132;
                *&v307[24] = 0;
                outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v316, &v338);
                outlined init with copy of DisplayList.Item(v300, &v338);
                outlined init with copy of DisplayList.Item(v302, &v338);
                outlined destroy of DisplayList.Item(&v304);
                v310 = v314;
                v311[0] = *v315;
                *(v311 + 12) = *&v315[12];
                v308 = v312;
                v309 = v313;
                outlined destroy of DisplayList.Item(&v308);
                v140 = *(v281 + 24);
                v141 = *(v281 + 56);
                *&v339[16] = *(v281 + 40);
                *&v339[32] = v141;
                *&v339[44] = *(v281 + 68);
                v338 = *(v281 + 8);
                *v339 = v140;
                outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v338);

                outlined destroy of _ShapeStyle_Pack.Style?(v148, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

                *(v281 + 8) = v134;
                v279 = v279 & 0xFFFFFFFFC000FFFFLL | 0x10000000;
                v280 &= 0x1FFFFFFFFFuLL;
                *(v281 + 56) = v280;
                *(v281 + 72) = v279;
              }

              v142 = *(v13 + 80);
              *&v339[48] = *(v13 + 64);
              *&v339[64] = v142;
              *&v339[76] = *(v13 + 92);
              v143 = *(v13 + 16);
              v338 = *v13;
              *v339 = v143;
              v144 = *(v13 + 48);
              *&v339[16] = *(v13 + 32);
              *&v339[32] = v144;
              outlined destroy of _ShapeStyle_RenderedShape.Shape(&v338);
              v145 = v325[0];
              *(v13 + 64) = v324;
              *(v13 + 80) = v145;
              *(v13 + 92) = *(v325 + 12);
              v146 = v321;
              *v13 = v320;
              *(v13 + 16) = v146;
              v147 = v323;
              *(v13 + 32) = v322;
              *(v13 + 48) = v147;
            }

            v176 = sub_18D130FB8(aBlock);
            v177 = *v176;
            v178 = *(v176 + 8);
            outlined destroy of _ShapeStyle_Pack.Style(&v341);
            outlined consume of _ShapeStyle_LayerID(v286, *(&v286 + 1), v284);

            *(v13 + 144) = v177;
            *(v13 + 152) = v178;
            v23 = v256;
            v101 = v269;
            if (v252)
            {
LABEL_115:
              v179 = v255;
              if (!v255)
              {
                goto LABEL_120;
              }

              goto LABEL_122;
            }
          }

          else
          {
            outlined consume of _ShapeStyle_LayerID(v286, *(&v286 + 1), v284);
            if (v252)
            {
              goto LABEL_115;
            }
          }

          memset(&v326, 0, sizeof(v326));
          *aBlock = v23;
          *&aBlock[8] = v101;
          *&aBlock[16] = v282;
          v180 = RBSymbolUpdateLayerPath();
          if (!RBPathIsNull(v180, v181))
          {
            *aBlock = v326;
            v208 = RBPathCopyTransformedPath();
            v210 = v209;
            type metadata accessor for Path.PathBox();
            v211 = swift_allocObject();
            *(v211 + 40) = 0u;
            *(v211 + 56) = 0u;
            *(v211 + 72) = 0u;
            *(v211 + 88) = 0u;
            *(v211 + 104) = 0u;
            *(v211 + 16) = 1;
            *(v211 + 24) = v208;
            *(v211 + 32) = v210;
            v212 = *(v13 + 80);
            *&aBlock[64] = *(v13 + 64);
            *&aBlock[80] = v212;
            *&aBlock[92] = *(v13 + 92);
            v213 = *(v13 + 16);
            *aBlock = *v13;
            *&aBlock[16] = v213;
            v214 = *(v13 + 48);
            *&aBlock[32] = *(v13 + 32);
            *&aBlock[48] = v214;
            outlined destroy of _ShapeStyle_RenderedShape.Shape(aBlock);
            *v13 = v211;
            *(v13 + 8) = 0;
            v17 = &v345;
            *(v13 + 16) = 0;
            *(v13 + 24) = 0;
            *(v13 + 32) = 65541;
            v244 &= 0xFFFFFFFFC000FFFFLL;
            *(v13 + 64) = v244;
            v243 &= 0x30301FFu;
            *(v13 + 104) = v243;
            goto LABEL_42;
          }

          v101 = v269;
          v179 = v255;
          if (!v255)
          {
LABEL_120:
            v182 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
            if (!v182)
            {
              __break(1u);
            }

            v179 = v182;
          }

LABEL_122:
          RBDisplayListGetState();
          *&v326.a = v23;
          v326.b = v101;
          v326.c = v282;
          RBSymbolUpdateLayerDraw();
          memcpy(aBlock, v13, sizeof(aBlock));
          outlined init with copy of _ShapeStyle_RenderedShape(aBlock, &v326);
          v255 = v179;
          v183 = [v179 moveContents];
          [v183 boundingRect];
          x = v360.origin.x;
          y = v360.origin.y;
          v186 = v360.size.width;
          v187 = v360.size.height;
          IsNull = CGRectIsNull(v360);
          if (IsNull)
          {
            v189 = 0.0;
          }

          else
          {
            v189 = x;
          }

          if (IsNull)
          {
            v190 = 0.0;
          }

          else
          {
            v190 = y;
          }

          if (IsNull)
          {
            v191 = 0.0;
          }

          else
          {
            v191 = v186;
          }

          if (IsNull)
          {
            v192 = 0.0;
          }

          else
          {
            v192 = v187;
          }

          v193 = *&aBlock[108];
          v194 = *&aBlock[192];
          v361 = CGRectIntegral(*&v189);
          v195 = v361.origin.x;
          v196 = v361.origin.y;
          v12 = v361.size.width;
          v197 = v361.size.height;
          v198 = swift_allocObject();
          *(v198 + 16) = v183;
          *(v198 + 24) = v195;
          *(v198 + 32) = v196;
          v199 = one-time initialization token for defaultFlags;
          swift_unknownObjectRetain();
          if (v199 != -1)
          {
            swift_once();
          }

          v200 = static RasterizationOptions.Flags.defaultFlags;
          swift_unknownObjectRelease();
          outlined destroy of _ShapeStyle_RenderedShape(aBlock);
          *(v198 + 40) = -1;
          *(v198 + 44) = 768;
          *(v198 + 48) = v200 | 0x40;
          *(v198 + 52) = 3;
          Height = v195 + 0.0;
          Width = v196 + 0.0;
          v201 = *(v13 + 80);
          v328 = *(v13 + 64);
          v329[0] = v201;
          *(v329 + 12) = *(v13 + 92);
          v202 = *(v13 + 16);
          *&v326.a = *v13;
          *&v326.c = v202;
          v203 = *(v13 + 48);
          *&v326.tx = *(v13 + 32);
          v327 = v203;
          outlined destroy of _ShapeStyle_RenderedShape.Shape(&v326);
          *v13 = v195 + 0.0;
          *(v13 + 8) = Width;
          *(v13 + 16) = v12;
          *(v13 + 24) = v197;
          *(v13 + 32) = v194;
          *(v13 + 40) = v198 | 0xC000000000000000;
          *(v13 + 48) = v193;
          *(v13 + 56) = 0;
          *(v13 + 64) = 0;
          *(v13 + 72) = 0x100000000;
          v254 = v254 & 0x30301FF | 0x80000000;
          *(v13 + 104) = v254;
          if ((v246 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v6 = &v333;
            v17 = &v345;
            v72 = v267;
            if ((aBlock[264] & 1) == 0)
            {
              *(v13 + 264) = aBlock[264] | 1;
            }

            goto LABEL_43;
          }

          v6 = &v333;
          v17 = &v345;
LABEL_42:
          v72 = v267;
LABEL_43:
          *&v338.f64[0] = v268;
          *&v338.f64[1] = __PAIR64__(v262, v264);
          *v339 = LODWORD(b);
          v339[68] = v354;
          *&v339[52] = v353;
          *&v339[36] = v352;
          *&v339[20] = v351;
          *&v339[4] = v350;
          v339[69] = v265;
          *&v339[70] = v261;
          *&v339[72] = LODWORD(c);
          *&v339[76] = v260;
          *&v339[80] = v259;
          v339[88] = v258;
          *&v339[89] = v293[0];
          *&v339[92] = *(v293 + 3);
          v340 = v72;
          v335 = *&v339[48];
          v336[0] = *&v339[64];
          v336[1] = *&v339[80];
          v337 = v72;
          *&v333.a = v338;
          *&v333.c = *v339;
          *&v333.tx = *&v339[16];
          v334 = *&v339[32];
          outlined init with copy of _ShapeStyle_Pack.Style(&v338, &v326);
          _ShapeStyle_RenderedShape.render(style:)(&v333);
          v328 = v335;
          v329[0] = v336[0];
          v329[1] = v336[1];
          *&v330 = v337;
          v326 = v333;
          v327 = v334;
          outlined destroy of _ShapeStyle_Pack.Style(&v326);
          _ShapeStyle_RenderedLayers.endLayer(shape:)(v13);
          *&aBlock[16] = LODWORD(b);
          *&aBlock[36] = v351;
          *&aBlock[52] = v352;
          *&aBlock[68] = v353;
          *aBlock = v268;
          *&aBlock[8] = __PAIR64__(v262, v264);
          aBlock[84] = v354;
          *&aBlock[20] = v350;
          aBlock[85] = v265;
          *&aBlock[86] = v261;
          *&aBlock[88] = __PAIR64__(v260, LODWORD(c));
          *&aBlock[96] = v259;
          aBlock[104] = v258;
          *&aBlock[108] = *(v293 + 3);
          *&aBlock[105] = v293[0];
          *&aBlock[112] = v267;
          outlined destroy of _ShapeStyle_Pack.Style(aBlock);
          v70 = v253;
          v23 = v256;
LABEL_44:
          *&v22 = *&v282 + 1;
        }

        while (*&v282 + 1 != v263);
      }

      v69 = v245;
      if (*&v245 == v241)
      {

        goto LABEL_168;
      }
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v17 = updated;
  *aBlock = v290;
  *&aBlock[16] = v291;
  aBlock[32] = v292;
  v22 = COERCE_DOUBLE(aBlock);
  _ShapeStyle_Pack.Slice.allColors.getter();
  if ((v48 & 1) == 0)
  {
    if (updated < 0)
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (!updated)
    {
LABEL_168:
      [v239 endUpdate_];
      goto LABEL_169;
    }

    goto LABEL_35;
  }

  v49 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  RBDisplayListGetState();
  v50 = swift_allocObject();
  v51 = v291;
  *(v50 + 16) = v290;
  *(v50 + 32) = v51;
  *(v50 + 48) = v292;
  v6 = v242;
  *(v50 + 56) = v242;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:);
  *(v17 + 24) = v50;
  *&aBlock[32] = partial apply for thunk for @callee_guaranteed (@unowned RBSymbolStyle, @guaranteed String?) -> (@unowned RBColor);
  *&aBlock[40] = v17;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = thunk for @escaping @callee_guaranteed (@unowned RBSymbolStyle, @guaranteed String?) -> (@unowned RBColor);
  *&aBlock[24] = &block_descriptor_11;
  v23 = _Block_copy(aBlock);
  v22 = COERCE_DOUBLE(&v326);
  v16 = *&aBlock[40];

  outlined init with copy of _ShapeStyle_Pack.Slice(&v290, &v326);

  RBSymbolUpdateDrawWithStyleResolver();
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v6 = &v312;
    v326.a = 0.0;
    v326.b = 0.0;
    LOBYTE(v326.c) = 3;
    memset(aBlock, 0, 120);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v326, aBlock, v13);
    memcpy(aBlock, v13, sizeof(aBlock));
    outlined init with copy of _ShapeStyle_RenderedShape(aBlock, &v326);
    v23 = v49;
    v53 = [v49 moveContents];
    [v53 boundingRect];
    v54 = v358.origin.x;
    v55 = v358.origin.y;
    v56 = v358.size.width;
    v57 = v358.size.height;
    v58 = CGRectIsNull(v358);
    v59 = 0.0;
    if (v58)
    {
      v60 = 0.0;
    }

    else
    {
      v60 = v54;
    }

    if (v58)
    {
      v61 = 0.0;
    }

    else
    {
      v61 = v55;
    }

    if (v58)
    {
      v62 = 0.0;
    }

    else
    {
      v62 = v56;
    }

    if (!v58)
    {
      v59 = v57;
    }

    v12 = *&aBlock[168];
    Width = *&aBlock[160];
    v16 = *&aBlock[108];
    a5 = *&aBlock[192];
    v359 = CGRectIntegral(*(&v59 - 3));
    b = v359.origin.x;
    c = v359.origin.y;
    Height = v359.size.width;
    v9 = v359.size.height;
    v17 = swift_allocObject();
    *(v17 + 16) = v53;
    *(v17 + 24) = b;
    *(v17 + 32) = c;
    v63 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v63 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_181;
  }

LABEL_180:
  __break(1u);
LABEL_181:
  swift_once();
LABEL_29:
  v64 = static RasterizationOptions.Flags.defaultFlags;
  swift_unknownObjectRelease();
  outlined destroy of _ShapeStyle_RenderedShape(aBlock);
  v65 = *(v13 + 192);
  v66 = *(v13 + 208);
  v67 = *(v13 + 160);
  *&v6[6].a = *(v13 + 176);
  *&v6[6].c = v65;
  *(v17 + 40) = -1;
  *(v17 + 44) = 768;
  *(v17 + 48) = v64;
  *(v17 + 52) = 3;
  *&v6[6].tx = v66;
  *(*&v22 + 60) = *(v13 + 220);
  **&v22 = v67;
  outlined destroy of DisplayList.Item(&v326);
  *(v13 + 160) = Width + b;
  *(v13 + 168) = v12 + c;
  *(v13 + 176) = Height;
  *(v13 + 184) = v9;
  *(v13 + 192) = a5;
  *(v13 + 200) = v17 | 0xC000000000000000;
  *(v13 + 216) = 0;
  *(v13 + 224) = 0;
  *(v13 + 208) = v16;
  *(v13 + 232) = 0;
  if ((v246 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (aBlock[264] & 1) == 0)
  {
    *(v13 + 264) = aBlock[264] | 1;
  }

  _ShapeStyle_RenderedLayers.endLayer(shape:)(v13);

  [v239 endUpdate_];
  outlined destroy of _ShapeStyle_Pack.Slice(&v290);
  v68 = partial apply for closure #1 in _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:);
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v68);
}

uint64_t sub_18D214FF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t _ShapeStyle_Pack.Slice.init(pack:name:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v13 = *a1;
  v12 = v5;
  result = _ShapeStyle_Pack.indices(of:)(&v12);
  if (result == v7)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = 0;
    v9 = *(v4 + 16);
LABEL_7:
    if (v9 >= result)
    {
      v11 = __OFSUB__(v9, v7);
      v10 = (v9 - v7) < 0;
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    if (v10 == v11)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = v4 + 32;
        *(a3 + 16) = result;
        *(a3 + 24) = (2 * v7) | 1;
        *(a3 + 32) = v8;
        return result;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v4 + 16);
  if (result < v9)
  {
    v8 = *(v4 + (result << 7) + 33);
    goto LABEL_7;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpeedAnimation()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v1);
}

uint64_t _FrameLayout.spacing(in:child:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *a2;
  v16 = *(a2 + 1);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_10:
      if (v16 == *MEMORY[0x1E698D3F8])
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        InputValue = &static LayoutComputer.defaultValue;
      }

      else
      {
        InputValue = AGGraphGetInputValue();
      }

      v8 = *InputValue;
      v9 = one-time initialization token for lockAssertionsAreEnabled;

      if (v9 != -1)
      {
        swift_once();
      }

      if (!lockAssertionsAreEnabled)
      {
        goto LABEL_21;
      }

      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock))
      {
LABEL_21:
        (*(*v8 + 112))();
      }

      goto LABEL_34;
    }
  }

  else if (static Semantics.forced < v6)
  {
    goto LABEL_10;
  }

  v17 = v5;
  v18 = v16;
  if (LayoutProxy.requiresSpacingProjection.getter())
  {
    goto LABEL_10;
  }

  if (v16 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v11 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v11 = AGGraphGetInputValue();
  }

  v12 = *v11;
  v13 = one-time initialization token for lockAssertionsAreEnabled;

  if (v13 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_33:
    (*(*v12 + 112))(&v19);

    KeyPath = swift_getKeyPath();
    v20 = v4;
    v21 = KeyPath;
    type metadata accessor for EnvironmentFetch<LayoutDirection>();
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    LOBYTE(v17) = 0;
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>);
    v15 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    LOBYTE(v17) = v15;
    AbsoluteEdge.Set.init(_:layoutDirection:)(&v17, &v20);
    result = Spacing.reset(_:)(&v20);
    *a3 = v19;
    return result;
  }

LABEL_34:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t LayoutEngineBox.requiresSpacingProjection()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v8 - v5;
  (*(v4 + 16))(&v8 - v5, v1 + *(v2 + 192), v3);
  LOBYTE(v2) = (*(*(v2 + 184) + 24))(v3);
  (*(v4 + 8))(v6, v3);
  return v2 & 1;
}

void type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>()
{
  if (!lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>)
  {
    v0 = type metadata accessor for KeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>);
    }
  }
}

void type metadata accessor for EnvironmentFetch<LayoutDirection>()
{
  if (!lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>)
  {
    v0 = type metadata accessor for EnvironmentFetch();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>);
    }
  }
}

uint64_t key path setter for EnvironmentValues.multilineTextAlignment : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a2;
  v10 = *a1;
  swift_retain_n();
  a5(a2, v10, &v12);

  if (a2[1])
  {
    a6(v9, *a2);
  }
}

void ResolvedStyledText.StringDrawing.draw(in:with:applyingMarginOffsets:containsResolvable:context:renderer:)(char a1, char a2, uint64_t a3, CGFloat a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 27);
  if (!v10)
  {
    return;
  }

  v11 = v9;
  swift_beginAccess();
  v18 = v9[21];
  v19 = v9[22];
  v21 = v9[23];
  v20 = v9[24];
  swift_beginAccess();
  v22 = one-time initialization token for shared;
  v23 = v10;
  if (v22 != -1)
  {
    swift_once();
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v85, a8, a9, v18, v19, v21, v20);
  swift_endAccess();
  v24 = v11 + 25;
  swift_beginAccess();
  if (*(v11 + 208) != 1)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v25 = 1.0;
  if (v11[6] != 1.0)
  {
    v24 = v86;
LABEL_7:
    v25 = *v24;
  }

  v26 = 0;
  if (v25 == 1.0 && (a2 & 1) == 0)
  {
    v26 = *(v11 + 44);
    swift_unknownObjectRetain();
  }

  v28 = *v85;
  v27 = *&v85[1];
  v29 = v86[3] + a5;
  swift_beginAccess();
  v30 = v28 + v11[13];
  if (a1)
  {
    v31 = CGRect.inset(by:)(v11[21], v11[22], v11[23], v11[24], a4, v29, v30, v27);
    v33 = v32;
    v30 = v34;
    v27 = v35;
    ResolvedStyledText.StringDrawing.drawingMargins.getter();
    a4 = v31 + v36 - v11[22];
    ResolvedStyledText.StringDrawing.drawingMargins.getter();
    v29 = v33 + v37 - v11[21];
  }

  if (*(v11 + 425) == 1)
  {
    v38 = v87;
    if (v87 != INFINITY)
    {
      if (*(v11 + 42))
      {
        if (*(v11 + 42) == 1)
        {
          v65 = (v30 - v87) * 0.5;
LABEL_51:
          a4 = a4 + v65;
          goto LABEL_16;
        }

        v65 = 0.0;
        if (*(v11 + 43))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v65 = 0.0;
        if ((*(v11 + 43) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      v65 = v30 - v87;
      goto LABEL_51;
    }
  }

  v38 = v30;
LABEL_16:
  v39 = [objc_opt_self() current];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 CGContext];

    if (v41)
    {
      v42 = MEMORY[0x193AC3360](v41, 0, 0);

      if (!v42)
      {
        v75 = 0;
        v76 = 0;
        goto LABEL_23;
      }

      v43 = RBDrawingStateGetDisplayList();
      if (v43)
      {
        v44 = v43;
        v45 = [v43 CGStyleHandler];
        if (v45)
        {
          v46 = v45;
          v47 = swift_allocObject();
          *(v47 + 16) = v46;
          v75 = v47;
          v76 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RBDrawingState, @unowned Int) -> ();
        }

        else
        {
          v75 = 0;
          v76 = 0;
        }

        v66 = *(v11 + 34);
        v42 = v44;
        if (*(v66 + 16))
        {
          v67 = v23;
          v68 = *(v11 + 43);
          v69 = *(v11 + 44);
          v70 = swift_allocObject();
          *(v70 + 16) = v66;
          *(v70 + 24) = v69;
          *(v70 + 25) = v68;
          v23 = v67;
          v82 = partial apply for closure #1 in ResolvedStyledText.cgStyleHandler.getter;
          v83 = v70;
          aBlock = MEMORY[0x1E69E9820];
          v79 = 1107296256;
          v80 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
          v81 = &block_descriptor_15_0;
          v71 = _Block_copy(&aBlock);
          v72 = v42;
        }

        else
        {
          v73 = v44;
          v71 = 0;
        }

        [v42 setCGStyleHandler_];
        _Block_release(v71);

        goto LABEL_23;
      }
    }
  }

  v75 = 0;
  v76 = 0;
  v42 = 0;
LABEL_23:
  v48 = *(v11 + 2);
  v74 = *(v11 + 24);
  v84 = 0;
  if (one-time initialization token for kitLink != -1)
  {
    swift_once();
  }

  v49 = static NSAttributedStringKey.kitLink;
  v50 = [v23 length];
  v51 = swift_allocObject();
  *(v51 + 16) = &v84;
  v52 = swift_allocObject();
  *(v52 + 16) = partial apply for closure #1 in NSAttributedString.hasLinkAttributes.getter;
  *(v52 + 24) = v51;
  v82 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  v83 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v81 = &block_descriptor_17;
  v53 = _Block_copy(&aBlock);

  [v23 enumerateAttribute:v49 inRange:0 options:v50 usingBlock:{0, v53}];
  _Block_release(v53);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v55 = v84;

    v56 = *(a3 + 16);

    os_unfair_lock_lock((v56 + 16));
    v57 = *(v56 + 24);
    [v57 setMinimumScaleFactor_];
    [v57 setScaledLineHeight_];
    [v57 setScaledBaselineOffset_];
    if (v48 <= 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = v48;
    }

    if (v74)
    {
      v59 = 0;
    }

    else
    {
      v59 = v58;
    }

    [v57 setMaximumNumberOfLines_];
    [v57 setCachesLayout_];
    [v57 setLayout_];
    [v57 setWantsNumberOfLineFragments_];
    if (v55)
    {
      v60 = 8;
    }

    else
    {
      v60 = 0;
    }

    [v57 setActiveRenderers_];
    v82 = closure #2 in closure #1 in TextDrawingContext.withStringDrawingContext<A>(minScaleFactor:lineLimit:kitCache:useNSLayoutManager:do:);
    v83 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any]?, @unowned Int) -> (@owned [NSAttributedStringKey : Any]?);
    v81 = &block_descriptor_6_0;
    v61 = _Block_copy(&aBlock);
    [v57 setLinkTextAttributesProvider_];
    _Block_release(v61);
    if (v25 == 1.0)
    {
      v62 = v23;
    }

    else
    {
      v62 = [v23 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
    }

    v63 = v62;
    [v62 drawWithRect:1048577 options:v57 context:{a4, v29, v38, v27}];

    os_unfair_lock_unlock((v56 + 16));

    if (v42)
    {
      if (v76)
      {
        v82 = v76;
        v83 = v75;
        aBlock = MEMORY[0x1E69E9820];
        v79 = 1107296256;
        v80 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
        v81 = &block_descriptor_9;
        v64 = _Block_copy(&aBlock);
      }

      else
      {
        v64 = 0;
      }

      [v42 setCGStyleHandler_];

      swift_unknownObjectRelease();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v76);
      _Block_release(v64);
    }

    else
    {
      swift_unknownObjectRelease();

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v76);
    }
  }
}

uint64_t sub_18D2161E8()
{

  return swift_deallocObject();
}

uint64_t sub_18D216220()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void PlatformDrawableContent.draw(in:size:contentsScale:state:)(CGContext *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      swift_unknownObjectRetain();
      CGContextTranslateCTM(a1, COERCE_CGFLOAT(v9 ^ 0x8000000000000000), COERCE_CGFLOAT(v11 ^ 0x8000000000000000));
      type metadata accessor for _ContiguousArrayStorage<(RBDisplayListRenderKey, Any)>();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18DDA6EB0;
      v28 = *MEMORY[0x1E69C7160];
      *(inited + 32) = *MEMORY[0x1E69C7160];
      *(inited + 64) = MEMORY[0x1E69E7DE0];
      *(inited + 40) = a5;
      v29 = v28;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22RBDisplayListRenderKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (RBDisplayListRenderKey, Any)(inited + 32);
      type metadata accessor for RBDisplayListRenderKey(0);
      lazy protocol witness table accessor for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v8 renderInContext:a1 options:isa];

      outlined consume of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 3u);
      return;
    }

    if (v13 != 4)
    {
      return;
    }

    outlined copy of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 4u);
    EnvironmentValues.init()(&v33);
    v32 = v33;
    specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a1, &v32, *&a5, 0, v8, *&v11, *&v10, *&v9);
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = 4;
    goto LABEL_13;
  }

  if (!*(v5 + 40))
  {
    outlined copy of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 0);
    EnvironmentValues.init()(&v33);
    v32 = v33;
    specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a1, &v32, *&a5, 0, v8, a3, a4);
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = 0;
LABEL_13:
    outlined consume of PlatformDrawableContent.Storage(v18, v19, v20, v21, v22, v23);

    return;
  }

  if (v13 != 1)
  {
    outlined copy of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 2u);
    EnvironmentValues.init()(&v33);
    v32 = v33;
    specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a1, &v32, *&a5, 0, a2, v8, v9 & 0xFFFFFFFF0000FFFFLL, *&v11, *&v10, *&v12);
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = 2;
    goto LABEL_13;
  }

  v16 = objc_allocWithZone(CoreGraphicsContext);

  v17 = [v16 initWithCGContext_];
  (v8)([v17 push], a3, a4);
  [v17 pop];

  outlined consume of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 1u);
}

uint64_t closure #1 in DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static TextDrawingContext.shared;
  if (a1[27])
  {
    v13 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v13 = 0;
  }

  return (*(*a1 + 296))(1, v13, v12, a2, 0.0, 0.0, a3, a4, a5, a6);
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.WeightModifier(void **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v3 = *v2;
    v4 = *a1;
    v6 = CTFontDescriptorRef.weight(_:)(v3);

    *a1 = v6;
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x10101, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x10101, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * result;
    *v24 = *a1;
    *(v24 + 13) = *(a1 + 13);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3 & 0x10101, a4, a1, v23);
  }

  return result;
}

SwiftUI::BlendMode __swiftcall BlendMode.init(_:)(CGBlendMode a1)
{
  if ((a1 - 1) > 0x1A)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_18DDD8CB6[a1 - 1];
  }

  return a1;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3 & 1;
  *(v6 + 9) = BYTE1(a3) & 1;
  *(v6 + 10) = BYTE2(a3) & 1;
  *(v6 + 16) = a4;
  v7 = a6[7] + 24 * result;
  *v7 = *a5;
  *(v7 + 13) = *(a5 + 13);
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t one-time initialization function for topLeading()
{
  if (one-time initialization token for leading != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.leading;
  if (one-time initialization token for top != -1)
  {
    result = swift_once();
  }

  *&static Alignment.topLeading = v0;
  *(&static Alignment.topLeading + 1) = static VerticalAlignment.top;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_HStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

BOOL OptionalEdgeInsets.init(_:edges:)@<W0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = Edge.Set.contains(_:)(SwiftUI_Edge_top);
  if (v6)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v16 = a2 & 1 | !v6;
  v8 = Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  if (v8)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v15 = a2 & 1 | !v8;
  v10 = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  if (v10)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  v14 = a2 & 1 | !v10;
  result = Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  if (result)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v16;
  *(a3 + 16) = v9;
  *(a3 + 24) = v15;
  *(a3 + 32) = v11;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;
  *(a3 + 56) = a2 & 1 | !result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

SwiftUI::LocalizedStringKey::StringInterpolation __swiftcall LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v2[3] = 0;
  if (interpolationCount + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = __OFADD__(literalCapacity, 2 * interpolationCount);
  literalCapacity += 2 * interpolationCount;
  if (v5)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  MEMORY[0x193ABED40](literalCapacity);
  literalCapacity = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, interpolationCount & ~(interpolationCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  v3[2] = literalCapacity;
LABEL_6:
  result.seed.nextID = v7;
  result.arguments._rawValue = v6;
  result.key._object = interpolationCount;
  result.key._countAndFlagsBits = literalCapacity;
  return result;
}

uint64_t type metadata completion function for LocalizedStringKey.FormatArgument()
{
  result = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LocalizedStringKey.FormatArgument.Storage()
{
  result = type metadata accessor for AttributedString();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocalizedStringResource();
    if (v2 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall LocalizedStringKey.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v1);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  type metadata accessor for AttachmentTextStorage();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2, 0, 1, MEMORY[0x1E69E7CC0]);
}

{
  v3 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for AttributedString();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v9, v6, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v11);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v9, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11[2] = v13 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v1 + 16) = v11;
  return result;
}

{
  v3 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for LocalizedStringResource();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v9, v6);
  v11 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v11);
  }

  outlined destroy of LocalizedStringKey.FormatArgument(v9, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11[2] = v13 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13);
  *(v1 + 16) = v11;
  return result;
}

{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>();
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v16, type metadata accessor for ClosedRange<Date>);
  v17 = *(v3 + 16);
  v17(v8, v16, v2);
  v17(v5, &v16[*(v14 + 44)], v2);
  DateInterval.init(start:end:)();
  outlined destroy of ClosedRange<Date>(v16, type metadata accessor for ClosedRange<Date>);
  type metadata accessor for DateTextStorage(0);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v12, v9);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18, 0, 1, MEMORY[0x1E69E7CC0]);
}

{
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  type metadata accessor for DateTextStorage(0);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v6, v2);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v7, 0, 1, MEMORY[0x1E69E7CC0]);
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = *(v4 + 24);
  *(v4 + 24) = v16 + 1;
  *v15 = a1;
  *(v15 + 1) = a2;
  a3 &= 1u;
  v15[16] = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v16;
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();
  outlined copy of Text.Storage(a1, a2, a3);

  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v15, v12, type metadata accessor for LocalizedStringKey.FormatArgument);
  v17 = *(v4 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1, v17);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v15, type metadata accessor for LocalizedStringKey.FormatArgument);
  v17[2] = v19 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v12, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v4 + 16) = v17;
  return result;
}

uint64_t outlined init with copy of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for AttributedString();
    }

    else
    {
      v8 = type metadata accessor for LocalizedStringResource();
    }

    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v10, v11);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    v12 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v12;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    v6 = *(a2 + 40);
    *(a1 + 40) = v6;
    v7 = v6;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t outlined init with take of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v16 = MEMORY[0x1E69E6158];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *&v15 = countAndFlagsBits;
  *(&v15 + 1) = object;
  outlined init with take of AnyTrackedValue(&v15, v10);
  *(v10 + 5) = 0;
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();

  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v10, v7, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
  }

  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12 > 1, v13 + 1, 1, v11);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v10, type metadata accessor for LocalizedStringKey.FormatArgument);
  v11[2] = v13 + 1;
  outlined init with take of LocalizedStringKey.FormatArgument(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v1 + 16) = v11;
}

uint64_t MakeScrapeableResolvedRepresentation.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for UncheckedSendable();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10[-v7];
  closure #1 in MakeScrapeableResolvedRepresentation.value.getter(v4, v3, &v10[-v7]);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v8, AssociatedTypeWitness);
}

uint64_t closure #1 in MakeScrapeableResolvedRepresentation.value.getter@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v16 - v7;
  v9 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(type metadata accessor for MakeScrapeableResolvedRepresentation() + 16);
  Value = AGGraphGetValue();
  (*(*(v13 - 8) + 16))(v12, Value, v13);
  (*(v5 + 48))(a1, v5);
  (*(v9 + 8))(v12, a1);
  return UncheckedSendable.init(_:)(v8, AssociatedTypeWitness, a3);
}

uint64_t closure #1 in View.staticIf<A, B, C>(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(a6 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  v18(v17);
  static ViewBuilder.buildExpression<A>(_:)(v14, a6, a10);
  v19 = *(v11 + 8);
  v19(v14, a6);
  static ViewBuilder.buildExpression<A>(_:)(v16, a6, a10);
  return (v19)(v16, a6);
}

uint64_t View.staticIf<A, B, C>(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  closure #1 in View.staticIf<A, B, C>(_:then:else:)(a2, a3, v13, a6, a7, a8, a9, a10, a11, a12);
  type metadata accessor for StaticIf();
  return closure #2 in View.staticIf<A, B, C>(_:then:else:)(a4, a5, v13, a6, a7, a8, a9, a10, a11, a12, a13);
}

{
  closure #1 in View.staticIf<A, B, C>(_:then:else:)(a2, a3, v13, a6, a7, a8, a9, a10, a11, a12);
  type metadata accessor for StaticIf();
  return closure #2 in View.staticIf<A, B, C>(_:then:else:)(a4, a5, v13, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t closure #2 in View.staticIf<A, B, C>(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *(a7 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v19(v18);
  static ViewBuilder.buildExpression<A>(_:)(v15, a7, a11);
  v20 = *(v12 + 8);
  v20(v15, a7);
  static ViewBuilder.buildExpression<A>(_:)(v17, a7, a11);
  return (v20)(v17, a7);
}

uint64_t StaticIf<>.init<A>(idiom:then:else:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  (*(*(a8 - 8) + 8))(a1, a8);
  type metadata accessor for InterfaceIdiomPredicate();
  a2();
  type metadata accessor for StaticIf();
  return a4();
}

uint64_t specialized static ImprovedButtonGestureFeature.isEnabled.getter()
{
  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    v0 = 1;
  }

  else
  {
    swift_beginAccess();
    v0 = static GestureContainerFeature.isEnabledOverride;
    if (static GestureContainerFeature.isEnabledOverride == 2)
    {
      if (one-time initialization token for envValue != -1)
      {
        swift_once();
      }

      v0 = static GestureContainerFeature.envValue;
      if (static GestureContainerFeature.envValue == 2)
      {
        if (one-time initialization token for userDefaultsValue != -1)
        {
          swift_once();
        }

        v0 = static GestureContainerFeature.userDefaultsValue;
        if (static GestureContainerFeature.userDefaultsValue == 2)
        {
          v5 = &type metadata for GestureContainerFeature.IOSFeature;
          v6 = lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
          v1 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v4);
          if (v1)
          {
            if (one-time initialization token for v6 != -1)
            {
              swift_once();
            }

            v2 = static Semantics.v6;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C)
            {
              v0 = dyld_program_sdk_at_least();
            }

            else
            {
              v0 = static Semantics.forced >= v2;
            }
          }

          else
          {
            v0 = 0;
          }
        }
      }
    }
  }

  return v0 & 1;
}

uint64_t Gesture.debugLabel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  v10[0] = a1;
  v10[1] = a2;
  v8 = type metadata accessor for GestureLabelModifier();
  swift_getWitnessTable();
  return Gesture.modifier<A>(_:)(v10, a3, v8, a4);
}

uint64_t Gesture.modifier<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16, a2, v12);
  (*(v8 + 16))(v10, a1, a3);
  return ModifierGesture.init(content:modifier:)(v14, v10, a3, a2, a4);
}

uint64_t initializeWithCopy for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t ModifierGesture.init(content:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  v8 = type metadata accessor for ModifierGesture();
  return (*(*(a3 - 8) + 32))(a5 + *(v8 + 52), a2, a3);
}

void *sub_18D218ADC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t destroy for ModifierGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(v3, *a2);
  }
}

uint64_t View.dynamicTypeSize(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);
}

uint64_t View.dynamicTypeSize<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a6;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  KeyPath = swift_getKeyPath();
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  (*(v11 + 32))(&v15[v14], &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.dynamicTypeSize<A>(_:), v15, a2);
}

uint64_t sub_18D218E54()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t DynamicTypeSize.clamped<A>(to:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  lazy protocol witness table accessor for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v4 = v10;
  result = dispatch thunk of RangeExpression.contains(_:)();
  if ((result & 1) == 0)
  {
    result = specialized Collection<>.firstIndex(of:)(v10, &outlined read-only object #0 of static DynamicTypeSize.allCases.getter);
    if ((v6 & 1) == 0)
    {
      v7 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else if (v7 <= 11)
      {
        v4 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + (v7 & ~(v7 >> 63)) + 32);
        goto LABEL_6;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_6:
  if (v3 <= v9)
  {
    v8 = v9;
  }

  else
  {
    v8 = v3;
  }

  if (v4 < v8)
  {
    LOBYTE(v8) = v4;
  }

  *a1 = v8;
  return result;
}

uint64_t partial apply for closure #1 in View.dynamicTypeSize<A>(_:)(_BYTE *a1)
{
  result = DynamicTypeSize.clamped<A>(to:)(&v3);
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection()
{
  result = lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection;
  if (!lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection;
  if (!lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection);
  }

  return result;
}

uint64_t DynamicTypeSizeCollection.index(after:)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static DynamicTypeSize.allCases.getter);
  if (v4)
  {
    goto LABEL_9;
  }

  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v5 >= 0xB)
  {
    v5 = 11;
  }

  *a2 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v5 + 32);
  return result;
}

uint64_t specialized Collection<>.firstIndex(of:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for [DynamicTypeSize](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for DynamicTypeSize);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t closure #1 in static _ShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v7 = type metadata accessor for _ShapeView();
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13;
}

char *storeEnumTagSinglePayload for _OverlayShapeModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 2;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
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
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
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
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else if (a2 > 0xFE)
    {
      *&result[v11] = a2 - 255;
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

uint64_t one-time initialization function for oversizedScalars()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for CharacterSet?, 255, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  __swift_allocate_value_buffer(v0, static NSAttributedString.oversizedScalars);
  v7 = __swift_project_value_buffer(v0, static NSAttributedString.oversizedScalars);
  v8 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v8)
  {
    v9 = v8;
    static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = *(v1 + 32);
    v10(v6, v3, v0);
    (*(v1 + 56))(v6, 0, 1, v0);
    return (v10)(v7, v6, v0);
  }

  else
  {
    (*(v1 + 56))(v6, 1, 1, v0);
    CharacterSet.init()();
    result = (*(v1 + 48))(v6, 1, v0);
    if (result != 1)
    {
      return outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v6, &lazy cache variable for type metadata for CharacterSet?, MEMORY[0x1E69680B8]);
    }
  }

  return result;
}

void type metadata accessor for AtomicBuffer<NSStringDrawingContext>()
{
  if (!lazy cache variable for type metadata for AtomicBuffer<NSStringDrawingContext>)
  {
    type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for NSStringDrawingContext);
    v0 = type metadata accessor for AtomicBuffer();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AtomicBuffer<NSStringDrawingContext>);
    }
  }
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for TextDrawingContext();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
  [v1 setWrapsForTruncationMode_];
  [v1 setWantsBaselineOffset_];
  [v1 setWantsScaledLineHeight_];
  [v1 setWantsScaledBaselineOffset_];
  [v1 setCachesLayout_];
  type metadata accessor for AtomicBuffer<NSStringDrawingContext>();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(v0 + 16) = result;
  static TextDrawingContext.shared = v0;
  return result;
}

{
  type metadata accessor for ShapeStyleBox<BackgroundStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<BackgroundStyle>, &type metadata for BackgroundStyle, &protocol witness table for BackgroundStyle, type metadata accessor for ShapeStyleBox);
  result = swift_allocObject();
  static BackgroundStyle.shared = result;
  return result;
}

{
  type metadata accessor for ShapeStyleBox<ForegroundStyle>();
  result = swift_allocObject();
  static ForegroundStyle.shared = result;
  return result;
}

{
  type metadata accessor for _ImpossibleActor();
  result = swift_allocObject();
  static _ImpossibleActor.shared = result;
  return result;
}

void type metadata accessor for (AGSubgraphRef, Int)(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t type metadata accessor for TimelineSchedule()
{
  result = lazy cache variable for type metadata for TimelineSchedule;
  if (!lazy cache variable for type metadata for TimelineSchedule)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TimelineSchedule);
  }

  return result;
}

uint64_t type metadata completion function for ResolvableTextSegmentAttribute.Value()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for updateSchedule()
{
  result = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD7A0B0);
  static NSAttributedStringKey.updateSchedule = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t one-time initialization function for resolvableTextSegment()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD7C830);
  static NSAttributedStringKey.resolvableTextSegment = result;
  return result;
}

id specialized @nonobjc CUICatalog.init(name:from:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x193ABEC20]();

  v10[0] = 0;
  v6 = [v3 initWithName:v5 fromBundle:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void one-time initialization function for systemAssetManager()
{
  v0 = [objc_opt_self() public];
  if (v0)
  {
    v1 = v0;
    v2 = v0;
    v3 = nofill_to_fill.getter();
    v4 = name_aliases.getter();
    v5 = symbol_order.getter();
    v6 = objc_allocWithZone(MEMORY[0x1E6999368]);
    v7 = specialized @nonobjc CUICatalog.init(name:from:error:)(0x737465737341, 0xE600000000000000, v1);

    static Image.Location.systemAssetManager = v7;
    off_1ED530E10 = v3;
    off_1ED530E18 = v4;
    unk_1ED530E20 = v5;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t one-time initialization function for v2_1()
{
  result = swiftUI_v2_1_os_versions();
  static Semantics.v2_1 = HIDWORD(result);
  return result;
}

void type metadata accessor for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>)
  {
    type metadata accessor for NamedImage.VectorKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NamedImage.VectorKey and conformance NamedImage.VectorKey, type metadata accessor for NamedImage.VectorKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t one-time initialization function for preferredIfEnabled()
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v0;
  }

  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  static SymbolRenderingMode.preferredIfEnabled = v2;
  return result;
}

void Image.LayoutMetrics.init(glyph:flipsRightToLeft:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  [a1 baselineOffset];
  v7 = v6;
  [a1 capHeight];
  v9 = v8;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v10 = static Semantics_v2_1.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v10)
  {
LABEL_7:
    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_11:
        v11 = -v7;
        [a1 alignmentRect];
        v13 = v12;

        v14 = 0.0;
        v15 = v9;
        goto LABEL_18;
      }
    }

    else if (static Semantics.forced < static Semantics_v2.semantic)
    {
      goto LABEL_11;
    }

    [a1 alignmentRect];
    v13 = v25;
    v15 = v26;

    v14 = 0.0;
    v11 = 0.0;
    goto LABEL_18;
  }

  [a1 alignmentRect];
  v14 = v16;
  v11 = v17;
  v19 = v18;
  v21 = v20;
  [a1 contentBounds];
  v13 = v22;
  v15 = v23;
  if (a2)
  {
    v27.origin.x = v14;
    v27.origin.y = v11;
    v27.size.width = v19;
    v27.size.height = v21;
    MaxX = CGRectGetMaxX(v27);

    v14 = v13 - MaxX;
  }

  else
  {
  }

LABEL_18:
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v14;
  *(a3 + 40) = v11;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(void *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result + 16;
  if ((*(result + 16) & 0xFF00) == 0x300)
  {
    v5 = *a2;
    if (*(a2 + 8))
    {

      v6 = v10;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v10);

      v7 = v10[1];
      LOBYTE(v5) = v10[2];
    }

    else
    {
      v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a2);
      if (v9)
      {
        v6 = (v9 + 9);
        v7 = *(v9 + 73);
        LOBYTE(v5) = *(v9 + 74);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v6 = &static SymbolRenderingOptionsKey.defaultValue;
        v7 = HIBYTE(static SymbolRenderingOptionsKey.defaultValue);
        LOBYTE(v5) = byte_1ED52FC63;
      }
    }

    v8 = *v6;
    result = swift_beginAccess();
    *(v4 + 2) = v5;
    *v4 = v8 | (v7 << 8);
  }

  else
  {
    LOBYTE(v8) = *(result + 16);
    LOBYTE(v7) = HIBYTE(*(result + 16));
    LODWORD(v5) = (*(result + 16) | (*(result + 18) << 16)) >> 16;
  }

  *a3 = v8;
  a3[1] = v7;
  a3[2] = v5;
  return result;
}

uint64_t ImageResolutionContext.updateSymbolAnimator(_:)(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 18) = 0;
  *(v4 + 16) = 768;
  v5 = type metadata accessor for ImageResolutionContext();
  v6 = v2 + *(v5 + 32);
  v7 = *v6;
  if (v7 != 8)
  {
    goto LABEL_11;
  }

  v8 = v5;
  getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)(v4, v2, v18);
  LOBYTE(v7) = v18[0];
  if (v18[0] != 8)
  {
    goto LABEL_11;
  }

  if (!specialized ShapeStyle.isMultiLevel(in:)(*v2, v2[1]))
  {
    if ((*(v2 + *(v8 + 40)) & 1) == 0)
    {
      v9 = 255;
      goto LABEL_12;
    }

    if (one-time initialization token for preferredIfEnabled != -1)
    {
      swift_once();
    }

    LOBYTE(v7) = static SymbolRenderingMode.preferredIfEnabled;
    if (static SymbolRenderingMode.preferredIfEnabled == 8)
    {
      v9 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v9 = dword_18DDD6FA4[v7];
    goto LABEL_12;
  }

  v9 = 4;
LABEL_12:
  [a1 setRenderingMode_];
  v10 = v6[2];
  if (v10 == 2 && (getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)(v4, v2, v16), LOBYTE(v10) = v17, v17 == 2))
  {
    v11 = 0;
  }

  else if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = v6[1];
  if (v12 != 2 || (getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)(v4, v2, &v14), LOBYTE(v12) = v15, v15 != 2))
  {
    if (v12)
    {
      v11 = v11 | 0x20;
    }

    else
    {
      v11 = v11 | 0x10;
    }
  }

  [a1 setRenderingOptions_];
}

uint64_t initializeWithCopy for NamedImage.VectorInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  v6 = v3;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t initializeWithTake for NamedImage.VectorInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t storeEnumTagSinglePayload for NamedImage.VectorInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022SymbolRenderingOptionsV0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022SymbolRenderingOptionsV0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

BOOL specialized ShapeStyle.isMultiLevel(in:)(uint64_t a1, uint64_t a2)
{
  v11[27] = 0;
  *&v7 = 0;
  v6 = 0uLL;
  BYTE8(v7) = 5;
  *&v8 = 0;
  BYTE8(v8) = 5;
  *&v9 = a1;
  *(&v9 + 1) = a2;
  v10 = 0u;
  memset(v11, 0, 24);
  v11[24] = 1;
  *&v11[25] = 768;

  ForegroundStyle._apply(to:)(&v6);
  v2 = BYTE8(v8) == 4 && (v8 & 1) != 0;
  v4[4] = v10;
  v5[0] = *v11;
  *(v5 + 12) = *&v11[12];
  v4[0] = v6;
  v4[1] = v7;
  v4[2] = v8;
  v4[3] = v9;
  outlined destroy of _ShapeStyle_Shape(v4);
  return v2;
}

void *initializeWithCopy for ImageResolutionContext(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[2];
  a1[2] = v5;
  v6 = a3[6];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for Text.Style(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  v12 = v5;
  if (v11(v8, 1, v9))
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    memcpy(v7, v8, *(*(v13 - 8) + 64));
    v14 = a3;
  }

  else
  {
    v69 = v10;
    v71 = v9;
    v15 = *v8;
    if (*v8 >= 2uLL)
    {
    }

    v16 = v8[1];
    v17 = v8[2];
    *v7 = v15;
    v7[1] = v16;

    outlined copy of Text.Style.TextStyleColor(v17);
    v18 = v8[4];
    v7[3] = v8[3];
    v7[4] = v18;
    *(v7 + 40) = *(v8 + 40);
    v7[6] = v8[6];
    *(v7 + 56) = *(v8 + 56);
    v7[8] = v8[8];
    *(v7 + 72) = *(v8 + 72);
    v19 = v8[11];
    v7[2] = v17;

    v20 = v9;
    if ((v19 - 1) >= 2)
    {
      v7[10] = v8[10];
      v7[11] = v19;
    }

    else
    {
      *(v7 + 5) = *(v8 + 5);
    }

    v21 = v8[13];
    if ((v21 - 1) >= 2)
    {
      v7[12] = v8[12];
      v7[13] = v21;
    }

    else
    {
      *(v7 + 6) = *(v8 + 6);
    }

    v22 = v8[22];
    if (v22 == 1)
    {
      v23 = *(v8 + 12);
      *(v7 + 11) = *(v8 + 11);
      *(v7 + 12) = v23;
      *(v7 + 208) = *(v8 + 208);
      v24 = *(v8 + 8);
      *(v7 + 7) = *(v8 + 7);
      *(v7 + 8) = v24;
      v25 = *(v8 + 10);
      *(v7 + 9) = *(v8 + 9);
      *(v7 + 10) = v25;
    }

    else
    {
      v7[14] = v8[14];
      *(v7 + 120) = *(v8 + 120);
      v7[16] = v8[16];
      *(v7 + 136) = *(v8 + 136);
      v7[18] = v8[18];
      *(v7 + 152) = *(v8 + 152);
      *(v7 + 168) = *(v8 + 168);
      v7[20] = v8[20];
      *(v7 + 192) = *(v8 + 192);
      v26 = v8[23];
      v7[22] = v22;
      v7[23] = v26;
      *(v7 + 208) = *(v8 + 208);
      v7[25] = v8[25];
    }

    v27 = v8[31];
    if (v27 == 1)
    {
      *(v7 + 27) = *(v8 + 27);
      *(v7 + 29) = *(v8 + 29);
      v7[31] = v8[31];
    }

    else
    {
      *(v7 + 108) = *(v8 + 108);
      v7[28] = v8[28];
      *(v7 + 116) = *(v8 + 116);
      v7[30] = v8[30];
      v7[31] = v27;
    }

    v28 = v8[36];
    v70 = v3;
    if (v28 == 1)
    {
      v29 = *(v8 + 17);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 17) = v29;
      v7[36] = v8[36];
    }

    else
    {
      *(v7 + 256) = *(v8 + 256);
      *(v7 + 257) = *(v8 + 257);
      if (v28)
      {
        v30 = v8[33];
        v31 = v8[34];
        v32 = *(v8 + 280);
        outlined copy of Text.Storage(v30, v31, v32);
        v7[33] = v30;
        v7[34] = v31;
        *(v7 + 280) = v32;
        v20 = v9;
        v7[36] = v8[36];
      }

      else
      {
        v33 = *(v8 + 35);
        *(v7 + 33) = *(v8 + 33);
        *(v7 + 35) = v33;
      }
    }

    v34 = v8[37];
    v35 = v8[38];
    v7[37] = v34;
    v7[38] = v35;
    v7[39] = v8[39];
    *(v7 + 160) = *(v8 + 160);
    v36 = *(v20 + 84);
    __dst = v7 + v36;
    v37 = v8 + v36;
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)();
    v39 = v38;
    v40 = *(v38 - 8);
    v41 = *(v40 + 48);
    v42 = v34;

    if (v41(v37, 2, v39))
    {
      v43 = type metadata accessor for TypesettingLanguage.Storage(0);
      v44 = __dst;
      memcpy(__dst, v37, *(*(v43 - 8) + 64));
    }

    else
    {
      v45 = type metadata accessor for Locale.Language();
      v44 = __dst;
      (*(*(v45 - 8) + 16))(__dst, v37, v45);
      __dst[*(v39 + 48)] = v37[*(v39 + 48)];
      (*(v40 + 56))(__dst, 0, 2, v39);
    }

    v14 = a3;
    v46 = *(type metadata accessor for TypesettingConfiguration() + 20);
    v47 = &v44[v46];
    v48 = &v37[v46];
    *v47 = *v48;
    v47[8] = v48[8];
    *(v7 + v71[22]) = *(v8 + v71[22]);
    v49 = v71[23];
    v50 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);

    if (v52(v8 + v49, 1, v50))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
      memcpy(v7 + v49, v8 + v49, *(*(v53 - 8) + 64));
    }

    else
    {
      (*(v51 + 16))(v7 + v49, v8 + v49, v50);
      (*(v51 + 56))(v7 + v49, 0, 1, v50);
    }

    v54 = v71[24];
    v55 = type metadata accessor for AttributedString.TextAlignment();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v8 + v54, 1, v55))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      memcpy(v7 + v54, v8 + v54, *(*(v57 - 8) + 64));
    }

    else
    {
      (*(v56 + 16))(v7 + v54, v8 + v54, v55);
      (*(v56 + 56))(v7 + v54, 0, 1, v55);
    }

    *(v7 + v71[25]) = *(v8 + v71[25]);
    v58 = v71[26];
    v59 = type metadata accessor for AttributedString.LineHeight();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v8 + v58, 1, v59))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      memcpy(v7 + v58, v8 + v58, *(*(v61 - 8) + 64));
    }

    else
    {
      (*(v60 + 16))(v7 + v58, v8 + v58, v59);
      (*(v60 + 56))(v7 + v58, 0, 1, v59);
    }

    *(v7 + v71[27]) = *(v8 + v71[27]);
    v62 = *(v69 + 56);

    v62(v7, 0, 1, v71);
    v3 = v70;
  }

  v63 = v14[8];
  result = a1;
  *(a1 + v14[7]) = *(v3 + v14[7]);
  v65 = a1 + v63;
  v66 = v3 + v63;
  *v65 = *v66;
  v65[2] = v66[2];
  v67 = v14[10];
  *(a1 + v14[9]) = *(v3 + v14[9]);
  *(a1 + v67) = *(v3 + v67);
  return result;
}

uint64_t initializeWithCopy for NamedImage.VectorKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = a3[8];
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v12 = *(a2 + v11);
  if (v12 >= 2)
  {
    v13 = v12;
  }

  *(a1 + v11) = v12;
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

id *outlined destroy of NamedImage.VectorInfo(id *a1)
{
  v2 = a1 + 10;

  MEMORY[0x193AC4950](v2);
  return a1;
}

uint64_t one-time initialization function for textBaseline()
{
  result = AGMakeUniqueID();
  static Spacing.Category.textBaseline = result;
  return result;
}

SwiftUI::Spacing ResolvedImageLayoutEngine.spacing()@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 152);
  if (*(v1 + 104) == 2 && v2 != 0 && *(v1 + 161) == 3)
  {
    v7 = v2[2];
    v8 = v2[7];
    type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>, type metadata accessor for (Spacing.Key, Spacing.Value), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDAC2E0;
    if (one-time initialization token for textToText != -1)
    {
      v15 = inited;
      swift_once();
      inited = v15;
    }

    v10 = static Spacing.Category.textToText;
    *(inited + 32) = static Spacing.Category.textToText;
    *(inited + 40) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
    *(inited + 80) = 0;
    *(inited + 88) = v10;
    *(inited + 96) = 2;
    *(inited + 104) = 0u;
    *(inited + 120) = 0u;
    *(inited + 136) = 0;
    if (one-time initialization token for edgeAboveText != -1)
    {
      v16 = inited;
      swift_once();
      inited = v16;
    }

    *(inited + 144) = static Spacing.Category.edgeAboveText;
    *(inited + 152) = 0;
    v11 = *(v2 + 2);
    *(inited + 192) = 0;
    *(inited + 176) = 0;
    *(inited + 184) = 0;
    *(inited + 160) = v11;
    *(inited + 168) = 0;
    if (one-time initialization token for edgeBelowText != -1)
    {
      v17 = inited;
      swift_once();
      inited = v17;
    }

    v12 = v7 + v8;
    *(inited + 200) = static Spacing.Category.edgeBelowText;
    *(inited + 208) = 2;
    *(inited + 216) = v2[2] + 1.0;
    *(inited + 248) = 0;
    *(inited + 232) = 0;
    *(inited + 240) = 0;
    *(inited + 224) = 0;
    if (one-time initialization token for textBaseline != -1)
    {
      v18 = inited;
      swift_once();
      inited = v18;
    }

    v13 = static Spacing.Category.textBaseline;
    *(inited + 256) = static Spacing.Category.textBaseline;
    *(inited + 264) = 2;
    *(inited + 272) = -v12;
    *(inited + 288) = 0;
    *(inited + 296) = 0;
    *(inited + 280) = 0;
    *(inited + 304) = 0;
    *(inited + 312) = v13;
    *(inited + 320) = 0;
    *(inited + 328) = -(v2[5] - v12);
    *(inited + 360) = 0;
    *(inited + 344) = 0;
    *(inited + 352) = 0;
    *(inited + 336) = 0;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
    result.minima._rawValue = swift_setDeallocating();
    *a1 = v14;
  }

  else
  {

    return Spacing.init()();
  }

  return result;
}

uint64_t outlined destroy of ImageResolutionContext(uint64_t a1)
{
  v2 = type metadata accessor for ImageResolutionContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<RBDisplayListRenderKey, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListRenderKey, Any>)
  {
    type metadata accessor for RBDisplayListRenderKey(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey, type metadata accessor for RBDisplayListRenderKey);
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListRenderKey, Any>);
    }
  }
}

uint64_t outlined destroy of (RBDisplayListRenderKey, Any)(uint64_t a1)
{
  type metadata accessor for (RBDisplayListRenderKey, Any)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  if (_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(a1, v4))
  {
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for [_SymbolEffect.Identified], &type metadata for _SymbolEffect.Identified, MEMORY[0x1E69E62F8]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    *&v14[0] = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    v15[0] = *&v14[0];

    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v14[0];
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(result[3]);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void RBSymbolAnimator.updateSymbolEffects(_:effects:transaction:animationsDisabled:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(*a1 + 16) && !*(a1 + 2) && (*(a1 + 42) & 1) == 0 && !*(a2 + 16))
  {
    *(a1 + 61) = 0;
    return;
  }

  AGGraphClearUpdate();
  v7 = *AGGraphGetValue();

  v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v8);
  if (v9)
  {
    v187 = *(v9 + 72);
  }

  else
  {
    v187 = 0;
  }

  v186 = a4;
  v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v7);
  if (v10)
  {
    v11 = v10[9];
  }

  else
  {
    v11 = 0;
  }

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v7);
  if (v12)
  {
    v13 = v12[9];
  }

  else
  {
    v13 = 0;
  }

  AGGraphSetUpdate();
  v14 = a1[1];
  v234[0] = *a1;
  v234[1] = v14;
  v16 = *a1;
  v15 = a1[1];
  *v235 = a1[2];
  *&v235[14] = *(a1 + 46);
  v17 = *&v234[0];
  v228 = v16;
  v229 = v15;
  *v230 = a1[2];
  *&v230[14] = *(a1 + 46);
  outlined init with copy of _SymbolEffect.Phase(v234, &aBlock);
  _SymbolEffect.Phase.init(previously:)(&v228, &v231);
  v197 = v17;
  v18 = *(v17 + 16);
  v193 = v18;
  if (v18 < 0x41)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = __OFADD__(v18, 63);
    v20 = v18 + 63;
    if (v19)
    {
      goto LABEL_177;
    }

    v21 = _sSa9repeating5countSayxGx_SitcfC7SwiftUI11BitVector64V_Tt1B5(0, v20 >> 6);
    v18 = v193;
  }

  *&v185 = v13;
  *(&v185 + 1) = v11;
  v220 = v18 > 0x40;
  v22 = v193;
  v221 = 0;
  v222 = v21;
  v223 = v193;
  v199 = *(a2 + 16);
  v184 = a1;
  if (!v199)
  {
    goto LABEL_116;
  }

  v23 = 0;
  v198 = a2 + 32;
  v24 = 0.0;
  v192 = (v17 + 32);
  v183 = &v225;
  v25 = v186;
  while (2)
  {
    v26 = (v198 + (v23 << 6));
    *v230 = v26[2];
    *&v230[13] = *(v26 + 45);
    v27 = v26[1];
    v228 = *v26;
    v229 = v27;
    v28 = *(&v27 + 1);
    v29 = v27;
    v30 = *v230;
    v31 = *&v230[8];
    v32 = *&v230[12];
    v33 = *&v230[24];
    v34 = v230[28];
    v35 = *&v230[8] >> 12;
    v200 = v230[20];
    v201 = *&v230[16];
    if (v35 < 6)
    {
      outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
      v36 = v29;
    }

    else
    {
      v36 = 0xF000000000000006;
      if (v35 != 8)
      {
        if (v35 == 7)
        {
          *&v233[4] = v27;
          *&v233[8] = WORD2(v27) & 0x101;
          v233[10] = BYTE6(v27) & 1;
          *&v233[12] = *&v230[12];
          *&v233[16] = *&v230[16];
          v233[20] = v230[20];
          *&v233[24] = *&v230[24];
          v233[28] = v230[28];
        }

        else
        {
          DWORD2(v231) = v27;
          BYTE12(v231) = BYTE4(v27) & 1;
          *&v232 = *&v230[12];
          BYTE8(v232) = v230[20];
          HIDWORD(v232) = *&v230[24];
          v233[0] = v230[28];
        }

        goto LABEL_22;
      }
    }

    v37 = *(v197 + 16);
    v203 = v30;
    v204 = v28;
    v194 = v33;
    if (!v37)
    {
      v202 = v36;
      outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
      v41 = 1;
      v42 = *(&v228 + 1);
      v43 = v228;
      if (v25)
      {
        goto LABEL_48;
      }

LABEL_37:
      if (v202 & 0xF000000000000006) != 0xF000000000000006 && ((v41 | v187))
      {
        goto LABEL_41;
      }

      if (v35 <= 3)
      {
        v196 = v34;
        if (v35 > 1)
        {
          if (v35 != 2)
          {
            v190 = *MEMORY[0x1E69C7280];
            *(&v217 + 1) = MEMORY[0x1E69E7668];
            LODWORD(v216) = HIDWORD(v203);
            outlined init with take of Any(&v216, &v212);
            outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
            v90 = MEMORY[0x1E69E7CC8];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v90;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v212, v190, isUniquelyReferenced_nonNull_native);
            v92 = aBlock;
            if ((v203 & 1) == 0)
            {
              v93 = *MEMORY[0x1E69C7278];
              *(&v225 + 1) = MEMORY[0x1E69E63B0];
              *&aBlock = v204;
              outlined init with take of Any(&aBlock, &v216);
              v94 = swift_isUniquelyReferenced_nonNull_native();
              *&v212 = v92;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v93, v94);
              v92 = v212;
            }

            v95 = MEMORY[0x1E69E6448];
            v96 = *MEMORY[0x1E69C7218];
            *(&v225 + 1) = MEMORY[0x1E69E6370];
            LOBYTE(aBlock) = v31 & 1;
            outlined init with take of Any(&aBlock, &v216);
            v97 = swift_isUniquelyReferenced_nonNull_native();
            *&v212 = v92;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v96, v97);
            v71 = v212;
            v191 = 10;
            goto LABEL_77;
          }

          v73 = *MEMORY[0x1E69C7208];
          *(&v217 + 1) = MEMORY[0x1E69E7668];
          LODWORD(v216) = v28;
          outlined init with take of Any(&v216, &v212);
          outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
          v74 = MEMORY[0x1E69E7CC8];
          v75 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v74;
          BYTE4(v74) = BYTE4(v28);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v212, v73, v75);
          v76 = aBlock;
          v77 = *MEMORY[0x1E69C7218];
          *(&v225 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(aBlock) = BYTE4(v74) & 1;
          outlined init with take of Any(&aBlock, &v216);
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *&v212 = v76;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v77, v78);
          v71 = v212;
          v72 = 3;
        }

        else
        {
          v68 = *MEMORY[0x1E69C7218];
          *(&v217 + 1) = MEMORY[0x1E69E6370];
          if (v35)
          {
            LOBYTE(v216) = BYTE4(v28) & 1;
            outlined init with take of Any(&v216, &v212);
            outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
            v85 = MEMORY[0x1E69E7CC8];
            v86 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v85;
            LODWORD(v85) = v28;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v212, v68, v86);
            v87 = aBlock;
            v88 = *MEMORY[0x1E69C7210];
            *(&v225 + 1) = MEMORY[0x1E69E7668];
            LODWORD(aBlock) = v85;
            outlined init with take of Any(&aBlock, &v216);
            v89 = swift_isUniquelyReferenced_nonNull_native();
            *&v212 = v87;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v88, v89);
            v71 = v212;
            v72 = 12;
          }

          else
          {
            LOBYTE(v216) = v28 & 1;
            outlined init with take of Any(&v216, &v212);
            outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
            v69 = MEMORY[0x1E69E7CC8];
            v70 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v69;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v212, v68, v70);
            v71 = aBlock;
            v72 = 2;
          }
        }
      }

      else
      {
        if ((v35 - 6) < 3)
        {
LABEL_41:
          v44 = 0;
          *&v45 = NAN;
          v30 = v203;
          goto LABEL_49;
        }

        v196 = v34;
        if (v35 == 4)
        {
          v79 = *MEMORY[0x1E69C7258];
          *(&v217 + 1) = MEMORY[0x1E69E7668];
          LODWORD(v216) = v28;
          outlined init with take of Any(&v216, &v212);
          outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
          v80 = MEMORY[0x1E69E7CC8];
          v81 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v80;
          BYTE4(v80) = BYTE4(v28);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v212, v79, v81);
          v82 = aBlock;
          v83 = *MEMORY[0x1E69C7218];
          *(&v225 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(aBlock) = BYTE4(v80) & 1;
          outlined init with take of Any(&aBlock, &v216);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          *&v212 = v82;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v83, v84);
          v71 = v212;
          v72 = 11;
        }

        else
        {
          v98 = *MEMORY[0x1E69C7270];
          *(&v217 + 1) = MEMORY[0x1E69E7668];
          LODWORD(v216) = v28;
          outlined init with take of Any(&v216, &v212);
          outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
          v99 = MEMORY[0x1E69E7CC8];
          v100 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v99;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v212, v98, v100);
          v71 = aBlock;
          v72 = 1;
        }
      }

      v191 = v72;
      v95 = MEMORY[0x1E69E6448];
LABEL_77:
      v101 = *MEMORY[0x1E69C7260];
      *(&v225 + 1) = v95;
      LODWORD(aBlock) = v32;
      outlined init with take of Any(&aBlock, &v216);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      *&v212 = v71;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v101, v102);
      v103 = v212;
      v104 = *MEMORY[0x1E69C7240];
      *(&v225 + 1) = v95;
      if ((v202 & 0xF000000000000006) == 0xF000000000000006)
      {
        v105 = 2139095040;
      }

      else
      {
        v105 = 1065353216;
      }

      if (!v200)
      {
        v105 = v201;
      }

      LODWORD(aBlock) = v105;
      outlined init with take of Any(&aBlock, &v216);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v212 = v103;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v104, v106);
      outlined destroy of _SymbolEffect.Added(&v228);
      v107 = v212;
      if ((v196 & 1) == 0)
      {
        v108 = *MEMORY[0x1E69C7248];
        *(&v225 + 1) = v95;
        LODWORD(aBlock) = v194;
        outlined init with take of Any(&aBlock, &v216);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        *&v212 = v107;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v108, v109);
        v107 = v212;
      }

      v110 = *MEMORY[0x1E69C7238];
      *(&v225 + 1) = v95;
      *&aBlock = v24;
      outlined init with take of Any(&aBlock, &v216);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *&v212 = v107;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v110, v111);
      v112 = v212;
      if (v185 != 0)
      {
        v113 = swift_allocObject();
        *(v113 + 16) = *(&v185 + 1);
        *(v113 + 24) = v185;
        *&v226 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
        *(&v226 + 1) = v113;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v225 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
        *(&v225 + 1) = &block_descriptor_73;
        v114 = _Block_copy(&aBlock);

        v25 = v186;

        v115 = *MEMORY[0x1E69C7230];
        *(&v225 + 1) = swift_getObjectType();
        *&aBlock = v114;
        outlined init with take of Any(&aBlock, &v216);
        _Block_copy(v114);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        *&v212 = v112;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v216, v115, v116);
        _Block_release(v114);
      }

      type metadata accessor for RBSymbolAnimationOptionKey(0);
      lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v44 = [v188 addAnimation:v191 options:isa];

      if (v44)
      {
        if (*(&v185 + 1))
        {
          v118 = (*(**(&v185 + 1) + 88))();
        }

        v30 = v203;
        if (v185)
        {
          (*(*v185 + 88))(v118);
        }

        *&v45 = v24;
        v24 = v24 + 1.0;
        v28 = v204;
      }

      else
      {
        *&v45 = NAN;
        v30 = v203;
        v28 = v204;
      }

      goto LABEL_49;
    }

    v195 = v34;
    v38 = 0;
    v39 = v192;
    do
    {
      if (*v39 == v228 && *(v39 + 1) == *(&v228 + 1))
      {
        v46 = *v39;
        v47 = *(v39 + 12);
        v48 = v39[2];
        v217 = v39[1];
        v218 = v48;
        v219 = v47;
        v216 = v46;
        v189 = HIDWORD(v48);
        v212 = *v39;
        v213 = v39[1];
        v214 = v39[2];
        v215 = *(v39 + 12);
        outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
        outlined init with copy of _SymbolEffect.Added(&v216, &aBlock);
        BitVector.subscript.setter(1, v38);
        --v193;
        if ((~v36 & 0xF000000000000006) == 0)
        {
          *&v205 = v29;
          *(&v205 + 1) = v28;
          *&v206 = v30;
          WORD4(v206) = v31;
          v50 = *(&v213 + 1);
          v49 = v213;
          v51 = v214;
          v52 = WORD4(v214);
          v209 = v213;
          v210 = v214;
          v211 = WORD4(v214);
          outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
          outlined copy of _SymbolEffect.Storage(v49, v50, v51, v52);
          LOBYTE(v49) = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v205, &v209);
          outlined consume of _SymbolEffect.Storage(v209, *(&v209 + 1), v210, v211);
          outlined consume of _SymbolEffect.Storage(v205, *(&v205 + 1), v206, WORD4(v206));
          v54 = v189;
          if ((v49 & 1) == 0)
          {
LABEL_44:
            v202 = v36;
            if (v54)
            {
              [v188 cancelAnimationWithID_];
            }

            aBlock = v212;
            v225 = v213;
            v226 = v214;
            v227 = LODWORD(v215);
            outlined destroy of _SymbolEffect.Added(&aBlock);
            v41 = 0;
            v30 = v203;
            v28 = v204;
            goto LABEL_47;
          }

LABEL_101:
          if (v54)
          {
            if (v219 != v24)
            {
              v215 = v24;
              *&v53 = v24;
              [v188 setPriority:v53 ofAnimationWithID:?];
            }

            v24 = v24 + 1.0;
          }

          *&aBlock = v36;
          outlined copy of _SymbolEffect.Trigger?(v36);
          _SymbolEffect.Storage.trigger.setter(&aBlock);
          aBlock = v212;
          v225 = v213;
          v226 = v214;
          v227 = LODWORD(v215);
          v119 = v231;
          outlined init with copy of _SymbolEffect.Added(&aBlock, &v205);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
          }

          v121 = *(v119 + 2);
          v120 = *(v119 + 3);
          if (v121 >= v120 >> 1)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v119);
          }

          outlined consume of _SymbolEffect.Trigger?(v36);
          outlined destroy of _SymbolEffect.Added(&v228);
          *(v119 + 2) = v121 + 1;
          v122 = &v119[56 * v121];
          v123 = aBlock;
          v124 = v225;
          v125 = v226;
          *(v122 + 20) = v227;
          *(v122 + 3) = v124;
          *(v122 + 4) = v125;
          *(v122 + 2) = v123;
          *&v231 = v119;
          v205 = v212;
          v206 = v213;
          v207 = v214;
          v208 = v215;
          outlined destroy of _SymbolEffect.Added(&v205);
          goto LABEL_22;
        }

        v62 = v213;
        v63 = v214;
        v64 = v36;
        v65 = WORD4(v214);
        v205 = v213;
        *&v206 = v214;
        WORD4(v206) = WORD4(v214);
        *&v209 = v29;
        *(&v209 + 1) = v28;
        v210 = v30;
        v211 = v31;
        outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
        outlined copy of _SymbolEffect.Trigger?(v64);
        outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
        v66 = _SymbolEffect.Storage.matchesType(of:)(&v209);
        outlined consume of _SymbolEffect.Storage(v209, *(&v209 + 1), v210, v211);
        outlined consume of _SymbolEffect.Storage(v205, *(&v205 + 1), v206, WORD4(v206));
        if (v66)
        {
          v67 = v65 >> 12;
          if (v65 >> 12 >= 6)
          {
            v36 = v64;
            if (v67 == 6)
            {
              outlined consume of _SymbolEffect.Trigger?(v64);
              v54 = v189;
              v25 = v186;
            }

            else
            {
              outlined consume of _SymbolEffect.Trigger?(v64);
              v25 = v186;
              v54 = v189;
            }

            goto LABEL_101;
          }

          if ((~v62 & 0xF000000000000006) == 0)
          {
            outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
            v36 = v64;
            outlined consume of _SymbolEffect.Trigger?(v64);
LABEL_100:
            v25 = v186;
            v54 = v189;
            goto LABEL_101;
          }

          if ((v62 & 0x8000000000000000) != 0)
          {
            if (v64 < 0)
            {
              outlined consume of _SymbolEffect.Trigger(v62);
              outlined consume of _SymbolEffect.Trigger(v64);
              outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
              outlined consume of _SymbolEffect.Trigger?(v64);
              v36 = v64;
              v25 = v186;
              v54 = v189;
              if (v62 & 1) == 0 && (v36)
              {
                goto LABEL_44;
              }

              goto LABEL_101;
            }
          }

          else
          {
            if ((v64 & 0x8000000000000000) == 0)
            {
              if (v62 != v64)
              {
                v181 = (*v62 + 88);
                v182 = *v181;
                outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined copy of _SymbolEffect.Trigger?(v64);
                outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined copy of _SymbolEffect.Trigger?(v64);
                outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                v126 = v182(v64);
                outlined consume of _SymbolEffect.Trigger(v62);
                outlined consume of _SymbolEffect.Trigger(v64);
                outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined consume of _SymbolEffect.Trigger?(v64);
                outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined consume of _SymbolEffect.Trigger?(v64);
                v36 = v64;
                v25 = v186;
                v54 = v189;
                if ((v126 & 1) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_101;
              }

              outlined copy of _SymbolEffect.Storage(v64, *(&v62 + 1), v63, v65);
              outlined consume of _SymbolEffect.Trigger(v64);
              outlined consume of _SymbolEffect.Trigger(v64);
              goto LABEL_99;
            }

            outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
            outlined copy of _SymbolEffect.Trigger(v62);
          }

          outlined consume of _SymbolEffect.Trigger(v62);
          outlined consume of _SymbolEffect.Trigger(v64);
          outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
        }

        outlined consume of _SymbolEffect.Trigger?(v64);
LABEL_99:
        v36 = v64;
        goto LABEL_100;
      }

      ++v38;
      v39 = (v39 + 56);
    }

    while (v37 != v38);
    v202 = v36;
    outlined init with copy of _SymbolEffect.Identified(&v228, &aBlock);
    v41 = 1;
LABEL_47:
    v34 = v195;
    v42 = *(&v228 + 1);
    v43 = v228;
    if ((v25 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_48:
    v44 = 0;
    *&v45 = NAN;
LABEL_49:
    *&aBlock = v43;
    *(&aBlock + 1) = v42;
    *&v225 = v29;
    *(&v225 + 1) = v28;
    *&v226 = v30;
    WORD4(v226) = v31;
    HIDWORD(v226) = v44;
    v227 = v45;
    v55 = v231;
    outlined init with copy of _SymbolEffect.Added(&aBlock, &v216);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v55);
    }

    outlined consume of _SymbolEffect.Trigger?(v202);
    *&v216 = v43;
    *(&v216 + 1) = v42;
    *&v217 = v29;
    *(&v217 + 1) = v204;
    *&v218 = v203;
    WORD4(v218) = v31;
    HIDWORD(v218) = v44;
    v219 = *&v45;
    outlined destroy of _SymbolEffect.Added(&v216);
    *(v55 + 2) = v57 + 1;
    v58 = &v55[56 * v57];
    v60 = v225;
    v59 = v226;
    v61 = aBlock;
    *(v58 + 20) = v227;
    *(v58 + 3) = v60;
    *(v58 + 4) = v59;
    *(v58 + 2) = v61;
    *&v231 = v55;
LABEL_22:
    if (++v23 != v199)
    {
      continue;
    }

    break;
  }

  v22 = v193;
LABEL_116:
  if (v22 < 1)
  {
    goto LABEL_127;
  }

  v127 = v223;
  if ((v223 & 0x8000000000000000) != 0)
  {
    goto LABEL_176;
  }

  if (!v223)
  {
LABEL_127:
    v133 = DWORD2(v234[0]);
    v134 = v235[10];
    v135 = DWORD2(v231);
    if (DWORD2(v231) == DWORD2(v234[0]) && ((v235[10] ^ v233[10]) & 1) == 0)
    {

      v136 = v184[1];
      v228 = *v184;
      v229 = v136;
      *v230 = v184[2];
      *&v230[14] = *(v184 + 46);
      outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(&v228);
      v137 = v232;
      *v184 = v231;
      v184[1] = v137;
      v184[2] = *v233;
      *(v184 + 46) = *&v233[14];
      return;
    }

    if (v187 & 1) != 0 || (v186 & 1) != 0 || (v235[29])
    {

LABEL_134:
      [v188 setScaleLevel_];
      [v188 setHidden_];

      v138 = v184[1];
      v228 = *v184;
      v229 = v138;
      *v230 = v184[2];
      *&v230[14] = *(v184 + 46);
      outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(&v228);
      v139 = v232;
      *v184 = v231;
      v184[1] = v139;
      v184[2] = *v233;
      *(v184 + 46) = *&v233[14];
      return;
    }

    if (DWORD2(v231) == DWORD2(v234[0]) && BYTE12(v234[0]) == BYTE12(v231))
    {

      goto LABEL_160;
    }

    v143 = *MEMORY[0x1E69C7218];
    *(&v229 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v228) = BYTE12(v231);
    outlined init with take of Any(&v228, &aBlock);
    v144 = MEMORY[0x1E69E7CC8];
    v145 = swift_isUniquelyReferenced_nonNull_native();
    *&v216 = v144;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v143, v145);
    v146 = v216;
    v147 = *MEMORY[0x1E69C7260];
    *(&v229 + 1) = MEMORY[0x1E69E6448];
    LODWORD(v228) = v232;
    outlined init with take of Any(&v228, &aBlock);
    v148 = swift_isUniquelyReferenced_nonNull_native();
    *&v216 = v146;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v147, v148);
    v149 = v216;
    if (v135)
    {
    }

    else
    {

      if (!v133)
      {

LABEL_160:
        v157 = v233[10];
        if (v134 != v233[10])
        {
          if (v233[8])
          {
            v158 = *MEMORY[0x1E69C7220];
            *(&v229 + 1) = MEMORY[0x1E69E7668];
            LODWORD(v228) = *&v233[4];
            outlined init with take of Any(&v228, &aBlock);
            v159 = MEMORY[0x1E69E7CC8];
            v160 = swift_isUniquelyReferenced_nonNull_native();
            *&v216 = v159;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v158, v160);
            v161 = v216;
            v162 = 13;
            v163 = 14;
          }

          else
          {
            v164 = *MEMORY[0x1E69C7200];
            *(&v229 + 1) = MEMORY[0x1E69E7668];
            LODWORD(v228) = *&v233[4];
            outlined init with take of Any(&v228, &aBlock);
            v165 = MEMORY[0x1E69E7CC8];
            v166 = swift_isUniquelyReferenced_nonNull_native();
            *&v216 = v165;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v164, v166);
            v161 = v216;
            v162 = 5;
            v163 = 9;
          }

          v167 = *MEMORY[0x1E69C7218];
          *(&v229 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v228) = v233[9];
          outlined init with take of Any(&v228, &aBlock);
          v168 = swift_isUniquelyReferenced_nonNull_native();
          *&v216 = v161;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v167, v168);
          v169 = v216;
          v170 = *MEMORY[0x1E69C7260];
          *(&v229 + 1) = MEMORY[0x1E69E6448];
          LODWORD(v228) = *&v233[12];
          outlined init with take of Any(&v228, &aBlock);
          v171 = swift_isUniquelyReferenced_nonNull_native();
          *&v216 = v169;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v170, v171);
          v172 = v216;
          if (v157)
          {
            v173 = v163;
          }

          else
          {
            v173 = v162;
          }

          if (v185 != 0)
          {
            v174 = swift_allocObject();
            *(v174 + 16) = *(&v185 + 1);
            *(v174 + 24) = v185;
            *v230 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
            *&v230[8] = v174;
            *&v228 = MEMORY[0x1E69E9820];
            *(&v228 + 1) = 1107296256;
            *&v229 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
            *(&v229 + 1) = &block_descriptor_59;
            v175 = _Block_copy(&v228);

            v176 = *MEMORY[0x1E69C7230];
            *(&v229 + 1) = swift_getObjectType();
            *&v228 = v175;
            outlined init with take of Any(&v228, &aBlock);
            _Block_copy(v175);
            v177 = swift_isUniquelyReferenced_nonNull_native();
            *&v216 = v172;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v176, v177);
            _Block_release(v175);
          }

          type metadata accessor for RBSymbolAnimationOptionKey(0);
          lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
          v178 = Dictionary._bridgeToObjectiveC()().super.isa;

          v179 = [v188 addAnimation:v173 options:v178];

          if (v179)
          {
            if (*(&v185 + 1))
            {
              v180 = (*(**(&v185 + 1) + 88))();
            }

            if (v185)
            {
              (*(*v185 + 88))(v180);
            }
          }
        }

        goto LABEL_134;
      }
    }

    if (v185 != 0)
    {
      v150 = swift_allocObject();
      *(v150 + 16) = *(&v185 + 1);
      *(v150 + 24) = v185;
      *v230 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
      *&v230[8] = v150;
      *&v228 = MEMORY[0x1E69E9820];
      *(&v228 + 1) = 1107296256;
      *&v229 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
      *(&v229 + 1) = &block_descriptor_66;
      v151 = _Block_copy(&v228);

      v152 = *MEMORY[0x1E69C7230];
      *(&v229 + 1) = swift_getObjectType();
      *&v228 = v151;
      outlined init with take of Any(&v228, &aBlock);
      _Block_copy(v151);
      v153 = swift_isUniquelyReferenced_nonNull_native();
      *&v216 = v149;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v152, v153);
      _Block_release(v151);
    }

    type metadata accessor for RBSymbolAnimationOptionKey(0);
    lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
    v154 = Dictionary._bridgeToObjectiveC()().super.isa;

    v155 = [v188 addAnimation:4 options:v154];

    if (v155)
    {
      if (*(&v185 + 1))
      {
        v156 = (*(**(&v185 + 1) + 88))();
      }

      if (v185)
      {
        (*(*v185 + 88))(v156);
      }
    }

    goto LABEL_160;
  }

  v128 = v220;
  v129 = v221;
  v130 = v222;
  v131 = (v222 + 32);
  LOBYTE(v132) = v221;
  if (!v220)
  {
    goto LABEL_122;
  }

  if (!*(v222 + 16))
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v132 = *v131;
LABEL_122:
  if (v132)
  {
LABEL_126:
    if (v127 == 1)
    {
      goto LABEL_127;
    }

    v140 = (v197 + 132);
    v141 = 1;
    while (1)
    {
      if (v128)
      {
        if (v141 >> 6 >= *(v130 + 16))
        {
          goto LABEL_174;
        }

        if ((v131[v141 >> 6] & (1 << v141)) != 0)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v142 = 1 << v141;
        if (v141 >= 0x40)
        {
          v142 = 0;
        }

        if ((v142 & v129) != 0)
        {
          goto LABEL_139;
        }
      }

      if (v141 >= *(v197 + 16))
      {
        goto LABEL_175;
      }

      if (*v140)
      {
        [v188 cancelAnimationWithID_];
      }

LABEL_139:
      ++v141;
      v140 += 14;
      if (v127 == v141)
      {
        goto LABEL_127;
      }
    }
  }

  if (*(v197 + 16))
  {
    if (*(v197 + 76))
    {
      [v188 cancelAnimationWithID_];
    }

    goto LABEL_126;
  }

LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014TruncationModeF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = *(result + 72);
  if (v3 == 3)
  {
    if (v5 == 3)
    {
      return result;
    }

LABEL_9:
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TruncationModeKey>>();
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
    v9 = v8;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v9, 0, v7);
  }

  if (v5 == 3 || v5 != v3)
  {
    goto LABEL_9;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TruncationModeKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TruncationModeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TruncationModeKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TruncationModeKey>>);
    }
  }
}

uint64_t EnvironmentValues.truncationMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014TruncationModeI033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014TruncationModeS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(v3);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }
  }

  if (v5 == 3)
  {
    LOBYTE(v5) = 1;
  }

  *a1 = v5;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TruncationModeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TruncationModeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TruncationModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TruncationModeKey>, &type metadata for TruncationModeKey, &protocol witness table for TruncationModeKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TruncationModeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013TextAlignmentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013TextAlignmentS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_9;
  }

  v5 = *(result + 72);
  if (v3 == 3)
  {
    if (v5 == 3)
    {
      return result;
    }

LABEL_9:
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TextAlignmentKey>>();
    *(swift_allocObject() + 72) = v3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
    v9 = v8;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v9, 0, v7);
  }

  if (v5 == 3 || v5 != v3)
  {
    goto LABEL_9;
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TextAlignmentKey>>()
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextAlignmentKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TypedElement();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TextAlignmentKey>>);
    }
  }
}

double Font.SystemProvider.effectiveSize(in:)(unsigned __int8 *a1)
{
  v2 = *v1;
  if (*(v1 + 18) == 14)
  {
    return *v1;
  }

  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *a1;
  v9 = *(v1 + 18);
  v8 = v5;
  v6 = round(v2 * specialized static Font.scaleFactor(textStyle:in:)(&v9, &v8));
  if ((v4 & 1) != 0 || v3 >= v6)
  {
    return v6;
  }

  return v3;
}

void Font.SystemProvider.resolveTraits(in:)(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v12[2] = a1[2];
  v5 = *v2;
  v6 = *(v2 + 1);
  v7 = *(v2 + 16);
  v8 = *(v2 + 17);
  v9 = v2[3];
  v10 = *(v2 + 32);
  v14 = v6;
  if (v7)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = v6;
  }

  v13 = v5;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  *a2 = Font.SystemProvider.effectiveSize(in:)(v12);
  *(a2 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
}

unint64_t lazy protocol witness table accessor for type TranslationElement and conformance TranslationElement()
{
  result = lazy protocol witness table cache variable for type TranslationElement and conformance TranslationElement;
  if (!lazy protocol witness table cache variable for type TranslationElement and conformance TranslationElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranslationElement and conformance TranslationElement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TranslationElement and conformance TranslationElement;
  if (!lazy protocol witness table cache variable for type TranslationElement and conformance TranslationElement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TranslationElement and conformance TranslationElement);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for TranslationElement(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TranslationElement and conformance TranslationElement();
  *(a1 + 8) = result;
  return result;
}

void NamedImage.VectorKey.symbolSizeScale(for:)(void *a1)
{
  v2 = v1;
  v42 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NamedImage.VectorKey(0);
  v5 = v4[10];
  v39.i8[0] = *(v1 + v5);
  v6 = Image.HashableScale.allowedScaleRange.getter();
  if (v6 < v7)
  {
    v8 = [a1 monochromeLayers];
    if (v8)
    {
      v9 = v8;
      type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for CUIVectorGlyphLayer);
      v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      [a1 metricCenter];
      v35 = v12;
      v36 = v11;
      [a1 scale];
      *&v13.f64[0] = v36;
      *&v13.f64[1] = v35;
      *&v14 = 1.0 / v14;
      v39 = vcvt_f32_f64(v13);
      v40 = LODWORD(v14);
      v41 = 0;
      if (v10 >> 62)
      {
        v15 = __CocoaSet.count.getter();
        if (v15)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_5:
          v34 = v5;
          *&v35 = v4;
          *&v36 = v2;
          if (v15 < 1)
          {
            __break(1u);
          }

          for (i = 0; i != v15; ++i)
          {
            if ((v10 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x193AC03C0](i, v10);
            }

            else
            {
              v17 = *(v10 + 8 * i + 32);
            }

            v18 = v17;
            [v17 opacity];
            if (v19 > 0.0)
            {
              v20 = [v18 tags];
              if (!v20 || (v21 = v20, v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v37 = 0x6873616C735FLL, v38 = 0xE600000000000000, MEMORY[0x1EEE9AC00](v23), v33 = &v37, LOBYTE(v21) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v32, v22), , (v21 & 1) == 0))
              {
                v24 = [v18 tags];
                if (!v24 || (v25 = v24, v26 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v25, v37 = 0x65676461625FLL, v38 = 0xE600000000000000, MEMORY[0x1EEE9AC00](v27), v33 = &v37, LOBYTE(v25) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v32, v26), , (v25 & 1) == 0))
                {
                  v28 = [v18 shape];
                  if (v28)
                  {
                    v29 = v28;
                    RBPathApplyLines();
                  }
                }
              }
            }
          }

          v2 = v36;
          v5 = v34;
          v4 = v35;
          goto LABEL_21;
        }
      }

LABEL_21:
      v30 = *(v2 + v5);
      LOBYTE(v37) = v30;
      v31 = Image.HashableScale.circleDotFillSize(pointSize:weight:)(*(v2 + v4[11]), *(v2 + v4[9]));
      LOBYTE(v37) = v30;
      Image.HashableScale.maxRadius(diameter:)(v31);
    }
  }
}

double Image.HashableScale.allowedScaleRange.getter()
{
  v1 = *v0;
  v2 = v1 >= 3;
  v3 = v1 - 3;
  if (v2)
  {
    if (v3 >= 3)
    {
      return 0.75;
    }

    v4 = objc_opt_self();
    v5 = [v4 standardUserDefaults];
    v6 = MEMORY[0x193ABEC20](0xD000000000000019, 0x800000018DD7CAE0);
    v7 = [v5 valueForKey_];

    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    v9 = MEMORY[0x1E69E7CA0];
    if (*(&v17 + 1))
    {
      if (swift_dynamicCast())
      {
        v8 = v15;
        goto LABEL_12;
      }
    }

    else
    {
      _sypSgWOhTm_9(&v18, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    }

    v8 = 0.0;
LABEL_12:
    v10 = [v4 standardUserDefaults];
    v11 = MEMORY[0x193ABEC20](0xD000000000000019, 0x800000018DD7CB00);
    v12 = [v10 valueForKey_];

    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v18 = v16;
    v19 = v17;
    if (*(&v17 + 1))
    {
      if (swift_dynamicCast())
      {
        v13 = v15;
LABEL_20:
        if (v8 <= v13)
        {
          return v8;
        }

        __break(1u);
        return 0.75;
      }
    }

    else
    {
      _sypSgWOhTm_9(&v18, &lazy cache variable for type metadata for Any?, v9 + 8, MEMORY[0x1E69E6720]);
    }

    v13 = 1.79769313e308;
    goto LABEL_20;
  }

  return 1.0;
}

uint64_t specialized Dictionary.subscript.setter(void *a1, uint64_t a2)
{
  if (*a1)
  {
    outlined init with take of NamedImage.VectorInfo(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);
    result = _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a2, type metadata accessor for NamedImage.VectorKey);
    *v2 = v6;
  }

  else
  {
    outlined destroy of NamedImage.VectorInfo?(a1, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);
    _s7SwiftUI11DisplayListV10ArchiveIDsVSgWOhTm_0(a2, type metadata accessor for NamedImage.VectorKey);
    return outlined destroy of NamedImage.VectorInfo?(v7, &lazy cache variable for type metadata for NamedImage.VectorInfo?, &type metadata for NamedImage.VectorInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey()
{
  result = lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey;
  if (!lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey)
  {
    type metadata accessor for RBDisplayListRenderKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props()
{
  result = lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props;
  if (!lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props;
  if (!lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey()
{
  result = lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey;
  if (!lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey;
  if (!lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CUIDesignLibraryCacheKey and conformance CUIDesignLibraryCacheKey);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(RBDisplayListRenderKey, Any)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(RBDisplayListRenderKey, Any)>)
  {
    type metadata accessor for (RBDisplayListRenderKey, Any)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(RBDisplayListRenderKey, Any)>);
    }
  }
}

void type metadata accessor for (RBDisplayListRenderKey, Any)()
{
  if (!lazy cache variable for type metadata for (RBDisplayListRenderKey, Any))
  {
    type metadata accessor for RBDisplayListRenderKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (RBDisplayListRenderKey, Any));
    }
  }
}

const __CTFontDescriptor *CTFontDescriptorRef.weight(_:)(double a1)
{
  v2 = *MEMORY[0x1E6965898];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (CTFontDescriptorIsSystemUIFont())
  {
    type metadata accessor for _ContiguousArrayStorage<(String, [String : CGFloat])>();
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    *(inited + 32) = v3;
    *(inited + 40) = v5;
    type metadata accessor for _ContiguousArrayStorage<(String, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(String, CGFloat)>, &lazy cache variable for type metadata for (String, CGFloat));
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_18DDA6EB0;
    *(v10 + 32) = v6;
    v11 = v10 + 32;
    *(v10 + 40) = v8;
    *(v10 + 48) = a1;
    v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v10);
    swift_setDeallocating();
    outlined destroy of (String, CGFloat)(v11);
    *(inited + 48) = v12;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (String, [String : CGFloat])(inited + 32);
    type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : CGFloat]);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(original, isa);

    return CopyWithAttributes;
  }

  v15 = CTFontDescriptorCopyAttribute(original, *MEMORY[0x1E6965790]);
  if (v15)
  {
    v16 = v15;
    v17 = CTFontDescriptorCopyAttributes(original);
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v37 = 0;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v39 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    specialized Dictionary._Variant.removeValue(forKey:)(v22, v23, &v37);

    outlined destroy of (CFStringRef, CGFloat)(&v37, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
    ObjectType = swift_getObjectType();
    *&v37 = v16;
    outlined init with take of Any(&v37, v36);
    swift_unknownObjectRetain();
    v27 = v39;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v24, v26, isUniquelyReferenced_nonNull_native);

    v39 = v27;
    v29 = CTFontDescriptorCopyAttribute(original, v2);
    if (v29 && (*&v37 = v29, type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any]), (swift_dynamicCast() & 1) != 0))
    {
      v30 = *&v36[0];
    }

    else
    {
      v30 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    ObjectType = MEMORY[0x1E69E7DE0];
    *&v37 = a1;
    outlined init with take of Any(&v37, v36);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v6, v8, v31);

    type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any]);
    ObjectType = v32;
    *&v37 = v30;
    outlined init with take of Any(&v37, v36);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v3, v5, v33);

    v34 = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateWithAttributes(v34);

    swift_unknownObjectRelease();
    return CopyWithAttributes;
  }

  _sypSgMaTm_7(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_18DDA6EB0;
  _StringGuts.grow(_:)(38);
  _StringGuts.grow(_:)(51);
  MEMORY[0x193ABEDD0](0xD00000000000002DLL, 0x800000018DD7D540);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
  type metadata accessor for CTFontDescriptorRef(0);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
  v19 = StaticString.description.getter();
  MEMORY[0x193ABEDD0](v19);

  MEMORY[0x193ABEDD0](58, 0xE100000000000000);
  *&v36[0] = 84;
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 32) = 0;
  *(v18 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  return original;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, CGFloat>();
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void type metadata accessor for _DictionaryStorage<String, CGFloat>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, CGFloat>);
    }
  }
}

uint64_t outlined destroy of (String, CGFloat)(uint64_t a1)
{
  type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (String, CGFloat));
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySS12CoreGraphics7CGFloatVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, [String : CGFloat]>(0, &lazy cache variable for type metadata for _DictionaryStorage<String, [String : CGFloat]>, type metadata accessor for [String : CGFloat]);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

uint64_t AnyDynamicFontModifier.modify(descriptor:in:)(uint64_t a1, _OWORD *a2)
{
  v3 = *v2;
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  return (*(*(v3 + 144) + 32))(a1, v6, *(v3 + 136));
}

uint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t AnimationBox.velocity<A>(value:time:context:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v18 = a1;
  v7 = *v5;
  v8 = *(*v5 + 160);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - v10;
  v14 = *v12;
  v13 = v12[1];
  v15 = *(v12 + 16);
  v16 = *(v12 + 17);
  (*(v9 + 16))(&v18 - v10, v5 + *(v7 + 176), v8);
  v21[0] = v14;
  v21[1] = v13;
  v22 = v15;
  v23 = v16;
  (*(*(v7 + 168) + 24))(v18, v21, v19, v20, v8, a2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t Animation.velocity<A>(value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v9[0] = *a2;
  v9[1] = v5;
  v10 = v6;
  v11 = v7;
  return (*(*a3 + 128))(a1, v9, a4, a5);
}

uint64_t FluidSpringAnimation.velocity<A>(value:time:context:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for SpringState();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 17);
  v15[1] = *a1;
  v15[2] = v10;
  v16 = v11;
  v17 = v12;
  type metadata accessor for AnimationContext();
  AnimationContext.springState.getter();
  v13 = *(a2 - 8);
  (*(v13 + 16))(a3, &v9[*(v6 + 36)], a2);
  (*(v7 + 8))(v9, v6);
  return (*(v13 + 56))(a3, 0, 1, a2);
}

uint64_t storeEnumTagSinglePayload for Font.DynamicModifierTag(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t outlined destroy of NamedImage.VectorInfo?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  type metadata accessor for Any?(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for Font.DynamicModifierTag(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type Font and conformance Font()
{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Font and conformance Font;
  if (!lazy protocol witness table cache variable for type Font and conformance Font)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Font and conformance Font);
  }

  return result;
}

void *assignWithTake for _EnvironmentKeyWritingModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  v6 = *(*(a3 + 16) - 8);
  (*(v6 + 40))((a1 + *(v6 + 80) + 8) & ~*(v6 + 80), (a2 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void one-time initialization function for identity()
{
  static ContentTransition.identity = 0x8000000001;
  LOBYTE(word_1EAB144D4) = 3;
  dword_1EAB144D0 = 0x2000000;
  *(&word_1EAB144D4 + 1) = 0;
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance _DefaultForegroundStyleModifier<A>.DefaultForegroundStyleEnvironment()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

uint64_t static ContentTransition.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v2 = static ContentTransition.identity;
  v3 = word_1EAB144D4;
  v4 = dword_1EAB144D0;
  v5 = dword_1EAB144D0 | (word_1EAB144D4 << 32);
  v6 = byte_1EAB144D6;
  *a1 = static ContentTransition.identity;
  *(a1 + 12) = v3;
  *(a1 + 8) = v4;
  v7 = HIBYTE(word_1EAB144D4);
  *(a1 + 13) = HIBYTE(word_1EAB144D4);
  *(a1 + 14) = v6;

  return outlined copy of ContentTransition.Storage(v2, v5, v7);
}

uint64_t static _DefaultForegroundStyleModifier._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return static _DefaultForegroundStyleModifier._makeViewInputs(modifier:inputs:)(a1, a2, a3, a4, type metadata accessor for _DefaultForegroundStyleModifier.DefaultForegroundStyleEnvironment, &protocol conformance descriptor for _DefaultForegroundStyleModifier<A>.DefaultForegroundStyleEnvironment, closure #1 in Attribute.init<A>(_:)partial apply);
}

uint64_t protocol witness for LayoutEngine.lengthThatFits(_:in:) in conformance ResolvedImageLayoutEngine(uint64_t *a1)
{
  v2 = v1[9];
  v3 = v1[7];
  v40 = v1[8];
  v41 = v2;
  v4 = v1[9];
  v42[0] = v1[10];
  *(v42 + 11) = *(v1 + 171);
  v5 = v1[5];
  v6 = v1[3];
  v36 = v1[4];
  v37 = v5;
  v7 = v1[5];
  v8 = v1[7];
  v38 = v1[6];
  v39 = v8;
  v9 = v1[1];
  v33[0] = *v1;
  v33[1] = v9;
  v10 = v1[3];
  v12 = *v1;
  v11 = v1[1];
  v34 = v1[2];
  v35 = v10;
  v30 = v40;
  v31 = v4;
  v32[0] = v1[10];
  *(v32 + 11) = *(v1 + 171);
  v26 = v36;
  v27 = v7;
  v28 = v38;
  v29 = v3;
  v22 = v12;
  v23 = v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = a1[2];
  v16 = *(a1 + 24);
  v24 = v34;
  v25 = v6;
  v18[24] = v13;
  v19 = v14;
  v20 = v15;
  v21 = v16;
  Image.Resolved.sizeThatFits(in:)();
  v43[8] = v40;
  v43[9] = v31;
  v44[0] = v32[0];
  *(v44 + 11) = *(v32 + 11);
  v43[4] = v36;
  v43[5] = v27;
  v43[6] = v38;
  v43[7] = v29;
  v43[0] = v22;
  v43[1] = v23;
  v43[2] = v34;
  v43[3] = v25;
  outlined init with copy of Image.Resolved(v33, v18);
  return outlined destroy of Image.Resolved(v43);
}

uint64_t instantiation function for generic protocol witness table for _DefaultForegroundStyleModifier<A>.DefaultForegroundStyleEnvironment(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey> and conformance DerivedEnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t one-time initialization function for leading()
{
  if (one-time initialization token for leading != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.leading;
  if (one-time initialization token for center != -1)
  {
    result = swift_once();
  }

  static Alignment.leading = v0;
  unk_1ED52C508 = static VerticalAlignment.center;
  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t outlined destroy of AnyAccessibilityPropertiesEntry?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI31AnyAccessibilityPropertiesEntry_pSgWOhTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t static Color.accentColor.getter()
{
  _s7SwiftUI8ColorBoxCyAA0C0V06AccentC8ProviderVGMaTm_0(0, &lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>, lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider);

  return swift_allocObject();
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey);
  }

  return result;
}

void sub_18D221308(double a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (*(a3 + 8))
  {
    v3 = INFINITY;
  }

  if (v3 <= a1)
  {
    a1 = v3;
  }

  *a3 = a1;
  *(a3 + 8) = 0;
}

void protocol witness for static AlignmentID._combineExplicit(childValue:_:into:) in conformance VerticalAlignment.LastTextBaseline(double a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  if (*(a3 + 8))
  {
    v3 = -INFINITY;
  }

  if (v3 > a1)
  {
    a1 = v3;
  }

  *a3 = a1;
  *(a3 + 8) = 0;
}

uint64_t sub_18D221364(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for AttributedStringTextStorage()
{
  result = type metadata accessor for AttributedString();
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

unsigned int *storeEnumTagSinglePayload for _OverlayModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t Animation.speed(_:)(uint64_t a1, double a2)
{
  v5 = a2;
  v2 = *(*a1 + 144);
  v3 = lazy protocol witness table accessor for type SpeedAnimation and conformance SpeedAnimation();
  return v2(&v5, &type metadata for SpeedAnimation, v3);
}

unint64_t lazy protocol witness table accessor for type SpeedAnimation and conformance SpeedAnimation()
{
  result = lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation;
  if (!lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation;
  if (!lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation;
  if (!lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeedAnimation and conformance SpeedAnimation);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SpeedAnimation(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SpeedAnimation and conformance SpeedAnimation();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _OverlayModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

uint64_t ScaledMetric.init(wrappedValue:relativeTo:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  *(a4 + 16) = swift_getKeyPath();
  *(a4 + 24) = 0;
  v8 = type metadata accessor for ScaledMetric();
  result = (*(*(a3 - 8) + 32))(a4 + *(v8 + 40), a1, a3);
  *(a4 + *(v8 + 44)) = v7;
  return result;
}

uint64_t ScaledMetric.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18 = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  LOBYTE(v19) = *(v3 + *(v12 + 44));
  specialized Environment.wrappedValue.getter(*v3, *(v3 + 8), &v20);
  v19 = specialized static Font.scaleFactor(textStyle:in:)(&v19, &v20);
  v13 = *(a1 + 24);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  v14 = *(v13 + 16);
  dispatch thunk of static Numeric.* infix(_:_:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  v19 = specialized Environment.wrappedValue.getter(*(v3 + 16), *(v3 + 24));
  dispatch thunk of BinaryFloatingPoint.init<A>(_:)();
  FloatingPoint.rounded(toMultipleOf:)(v8, v5, v14, v18);
  v15(v8, v5);
  return (v15)(v11, v5);
}

double specialized static Font.scaleFactor(textStyle:in:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  if (one-time initialization token for ratioCache != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static Font.ratioCache;
  if (*(static Font.ratioCache + 2) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v2 | (v3 << 8)), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
  }

  else
  {
    swift_endAccess();
    v17 = 0.0;
    v18 = 0.0;
    v20 = v2;
    specialized Font.TextStyle.ctTextStyle.getter();
    specialized DynamicTypeSize.ctTextSize.getter();
    CTFontDescriptorGetTextStyleSize();
    v19 = v2;
    v8 = specialized Font.TextStyle.ctTextStyle.getter();
    v9 = one-time initialization token for shared;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = *((*MEMORY[0x1E69E7D40] & *static CoreGlue2.shared) + 0x78);
    v12 = static CoreGlue2.shared;
    v11(&v16);

    v13 = specialized DynamicTypeSize.ctTextSize.getter();
    CTFontDescriptorGetTextStyleSize();

    v7 = v18 / v17;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = static Font.ratioCache;
    static Font.ratioCache = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2 | (v3 << 8), isUniquelyReferenced_nonNull_native, v7);
    static Font.ratioCache = v16;
  }

  swift_endAccess();
  return v7;
}

void *one-time initialization function for ratioCache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4FontV8RatioKey33_3D5D82E35921924EBCD40D1BFB222CC3LLV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static Font.ratioCache = result;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI4FontV8RatioKey33_3D5D82E35921924EBCD40D1BFB222CC3LLV_12CoreGraphics7CGFloatVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<GestureDependency, Int>(0, &lazy cache variable for type metadata for _DictionaryStorage<Font.RatioKey, CGFloat>, lazy protocol witness table accessor for type Font.RatioKey and conformance Font.RatioKey);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    while (1)
    {
      v5 = *v4;
      v6 = v4[1];
      v7 = *(v4 + 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5 | (v6 << 8));
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 2 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 16;
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
    outlined copy of Environment<ButtonSizing>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v7 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x5463696D616E7944, 0xEF657A6953657079, v10);
      _os_log_impl(&dword_18D018000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193AC4820](v9, -1, -1);
      MEMORY[0x193AC4820](v8, -1, -1);
    }

    EnvironmentValues.init()(v10);
    swift_getAtKeyPath();
    outlined consume of Environment<ButtonSizing>.Content(v5, 0);
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
    outlined copy of Environment<ButtonSizing>.Content(result, 0);
    v6 = static os_log_type_t.fault.getter();
    if (one-time initialization token for runtimeIssuesLog != -1)
    {
      swift_once();
    }

    v7 = static Log.runtimeIssuesLog;
    if (os_log_type_enabled(static Log.runtimeIssuesLog, v6))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x69536E6F74747542, 0xEC000000676E697ALL, v10);
      _os_log_impl(&dword_18D018000, v7, v6, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x193AC4820](v9, -1, -1);
      MEMORY[0x193AC4820](v8, -1, -1);
    }

    EnvironmentValues.init()(v10);
    swift_getAtKeyPath();
    outlined consume of Environment<ButtonSizing>.Content(v5, 0);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int16 a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a2 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a1, v19, a3);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(__int16 a1)
{
  Hasher.init(_seed:)();
  v2 = a1;
  switch(a1)
  {
    case 1:
      v2 = 1;
      break;
    case 2:
      v2 = 2;
      break;
    case 3:
      v2 = 3;
      break;
    case 4:
      v2 = 4;
      break;
    case 5:
      v2 = 5;
      break;
    case 6:
      v2 = 6;
      break;
    case 7:
      v2 = 7;
      break;
    case 8:
      v2 = 8;
      break;
    case 9:
      v2 = 9;
      break;
    case 10:
      v2 = 10;
      break;
    case 11:
    case 12:
    case 13:
      _diagnoseUnavailableCodeReached()();
      __break(1u);
      JUMPOUT(0x18D22225CLL);
    default:
      break;
  }

  MEMORY[0x193AC11A0](v2);
  MEMORY[0x193AC11A0](HIBYTE(a1));
  v3 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}